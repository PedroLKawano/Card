import { Response, Router, Request } from 'express';
import { CreateCardController } from "./controllers/card/CreateCardController";
import { CheckCardController } from './controllers/card/CheckCardController';
import { AuthorizeOrderController } from './controllers/card/AuthorizeOrderController';
import { isAuthorezed } from './middlewares/isAuthorezed';

const router = Router();

router.post('/cartao', new CreateCardController().handle);

router.post("/authcartao", new CheckCardController().handle);

router.get("/authPedido", isAuthorezed, new AuthorizeOrderController().handle);

export { router }