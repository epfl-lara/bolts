; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73220 () Bool)

(assert start!73220)

(declare-fun b!820363 () Bool)

(declare-fun e!541977 () Bool)

(declare-fun tp_is_empty!3769 () Bool)

(declare-fun tp!256540 () Bool)

(assert (=> b!820363 (= e!541977 (and tp_is_empty!3769 tp!256540))))

(declare-fun b!820364 () Bool)

(declare-fun e!541979 () Bool)

(declare-fun tp!256539 () Bool)

(assert (=> b!820364 (= e!541979 (and tp_is_empty!3769 tp!256539))))

(declare-fun b!820361 () Bool)

(declare-datatypes ((B!1197 0))(
  ( (B!1198 (val!2556 Int)) )
))
(declare-datatypes ((List!8827 0))(
  ( (Nil!8811) (Cons!8811 (h!14212 B!1197) (t!92939 List!8827)) )
))
(declare-fun l1!1535 () List!8827)

(declare-fun l2!1504 () List!8827)

(declare-fun e!541978 () Bool)

(declare-fun b!25421 () B!1197)

(declare-fun e!541980 () Bool)

(declare-fun contains!1616 (List!8827 B!1197) Bool)

(declare-fun ++!2255 (List!8827 List!8827) List!8827)

(assert (=> b!820361 (= e!541978 (not (= (contains!1616 (++!2255 l1!1535 l2!1504) b!25421) e!541980)))))

(declare-fun res!378666 () Bool)

(assert (=> b!820361 (=> res!378666 e!541980)))

(assert (=> b!820361 (= res!378666 (contains!1616 l1!1535 b!25421))))

(declare-fun b!820362 () Bool)

(assert (=> b!820362 (= e!541980 (contains!1616 l2!1504 b!25421))))

(declare-fun res!378665 () Bool)

(assert (=> start!73220 (=> (not res!378665) (not e!541978))))

(get-info :version)

(assert (=> start!73220 (= res!378665 (and ((_ is Cons!8811) l1!1535) (= (h!14212 l1!1535) b!25421)))))

(assert (=> start!73220 e!541978))

(assert (=> start!73220 e!541977))

(assert (=> start!73220 tp_is_empty!3769))

(assert (=> start!73220 e!541979))

(assert (= (and start!73220 res!378665) b!820361))

(assert (= (and b!820361 (not res!378666)) b!820362))

(assert (= (and start!73220 ((_ is Cons!8811) l1!1535)) b!820363))

(assert (= (and start!73220 ((_ is Cons!8811) l2!1504)) b!820364))

(declare-fun m!1061363 () Bool)

(assert (=> b!820361 m!1061363))

(assert (=> b!820361 m!1061363))

(declare-fun m!1061365 () Bool)

(assert (=> b!820361 m!1061365))

(declare-fun m!1061367 () Bool)

(assert (=> b!820361 m!1061367))

(declare-fun m!1061369 () Bool)

(assert (=> b!820362 m!1061369))

(check-sat tp_is_empty!3769 (not b!820363) (not b!820362) (not b!820364) (not b!820361))
(check-sat)
(get-model)

(declare-fun d!258354 () Bool)

(declare-fun lt!317040 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1273 (List!8827) (InoxSet B!1197))

(assert (=> d!258354 (= lt!317040 (select (content!1273 (++!2255 l1!1535 l2!1504)) b!25421))))

(declare-fun e!541986 () Bool)

(assert (=> d!258354 (= lt!317040 e!541986)))

(declare-fun res!378672 () Bool)

(assert (=> d!258354 (=> (not res!378672) (not e!541986))))

(assert (=> d!258354 (= res!378672 ((_ is Cons!8811) (++!2255 l1!1535 l2!1504)))))

(assert (=> d!258354 (= (contains!1616 (++!2255 l1!1535 l2!1504) b!25421) lt!317040)))

(declare-fun b!820369 () Bool)

(declare-fun e!541985 () Bool)

(assert (=> b!820369 (= e!541986 e!541985)))

(declare-fun res!378671 () Bool)

(assert (=> b!820369 (=> res!378671 e!541985)))

(assert (=> b!820369 (= res!378671 (= (h!14212 (++!2255 l1!1535 l2!1504)) b!25421))))

(declare-fun b!820370 () Bool)

(assert (=> b!820370 (= e!541985 (contains!1616 (t!92939 (++!2255 l1!1535 l2!1504)) b!25421))))

(assert (= (and d!258354 res!378672) b!820369))

(assert (= (and b!820369 (not res!378671)) b!820370))

(assert (=> d!258354 m!1061363))

(declare-fun m!1061371 () Bool)

(assert (=> d!258354 m!1061371))

(declare-fun m!1061373 () Bool)

(assert (=> d!258354 m!1061373))

(declare-fun m!1061375 () Bool)

(assert (=> b!820370 m!1061375))

(assert (=> b!820361 d!258354))

(declare-fun b!820385 () Bool)

(declare-fun e!541998 () List!8827)

(assert (=> b!820385 (= e!541998 l2!1504)))

(declare-fun b!820386 () Bool)

(assert (=> b!820386 (= e!541998 (Cons!8811 (h!14212 l1!1535) (++!2255 (t!92939 l1!1535) l2!1504)))))

(declare-fun d!258358 () Bool)

(declare-fun e!541997 () Bool)

(assert (=> d!258358 e!541997))

(declare-fun res!378684 () Bool)

(assert (=> d!258358 (=> (not res!378684) (not e!541997))))

(declare-fun lt!317046 () List!8827)

(assert (=> d!258358 (= res!378684 (= (content!1273 lt!317046) ((_ map or) (content!1273 l1!1535) (content!1273 l2!1504))))))

(assert (=> d!258358 (= lt!317046 e!541998)))

(declare-fun c!132933 () Bool)

(assert (=> d!258358 (= c!132933 ((_ is Nil!8811) l1!1535))))

(assert (=> d!258358 (= (++!2255 l1!1535 l2!1504) lt!317046)))

(declare-fun b!820387 () Bool)

(declare-fun res!378683 () Bool)

(assert (=> b!820387 (=> (not res!378683) (not e!541997))))

(declare-fun size!7462 (List!8827) Int)

(assert (=> b!820387 (= res!378683 (= (size!7462 lt!317046) (+ (size!7462 l1!1535) (size!7462 l2!1504))))))

(declare-fun b!820388 () Bool)

(assert (=> b!820388 (= e!541997 (or (not (= l2!1504 Nil!8811)) (= lt!317046 l1!1535)))))

(assert (= (and d!258358 c!132933) b!820385))

(assert (= (and d!258358 (not c!132933)) b!820386))

(assert (= (and d!258358 res!378684) b!820387))

(assert (= (and b!820387 res!378683) b!820388))

(declare-fun m!1061383 () Bool)

(assert (=> b!820386 m!1061383))

(declare-fun m!1061385 () Bool)

(assert (=> d!258358 m!1061385))

(declare-fun m!1061387 () Bool)

(assert (=> d!258358 m!1061387))

(declare-fun m!1061389 () Bool)

(assert (=> d!258358 m!1061389))

(declare-fun m!1061391 () Bool)

(assert (=> b!820387 m!1061391))

(declare-fun m!1061393 () Bool)

(assert (=> b!820387 m!1061393))

(declare-fun m!1061395 () Bool)

(assert (=> b!820387 m!1061395))

(assert (=> b!820361 d!258358))

(declare-fun d!258362 () Bool)

(declare-fun lt!317049 () Bool)

(assert (=> d!258362 (= lt!317049 (select (content!1273 l1!1535) b!25421))))

(declare-fun e!542002 () Bool)

(assert (=> d!258362 (= lt!317049 e!542002)))

(declare-fun res!378686 () Bool)

(assert (=> d!258362 (=> (not res!378686) (not e!542002))))

(assert (=> d!258362 (= res!378686 ((_ is Cons!8811) l1!1535))))

(assert (=> d!258362 (= (contains!1616 l1!1535 b!25421) lt!317049)))

(declare-fun b!820393 () Bool)

(declare-fun e!542001 () Bool)

(assert (=> b!820393 (= e!542002 e!542001)))

(declare-fun res!378685 () Bool)

(assert (=> b!820393 (=> res!378685 e!542001)))

(assert (=> b!820393 (= res!378685 (= (h!14212 l1!1535) b!25421))))

(declare-fun b!820394 () Bool)

(assert (=> b!820394 (= e!542001 (contains!1616 (t!92939 l1!1535) b!25421))))

(assert (= (and d!258362 res!378686) b!820393))

(assert (= (and b!820393 (not res!378685)) b!820394))

(assert (=> d!258362 m!1061387))

(declare-fun m!1061397 () Bool)

(assert (=> d!258362 m!1061397))

(declare-fun m!1061399 () Bool)

(assert (=> b!820394 m!1061399))

(assert (=> b!820361 d!258362))

(declare-fun d!258364 () Bool)

(declare-fun lt!317050 () Bool)

(assert (=> d!258364 (= lt!317050 (select (content!1273 l2!1504) b!25421))))

(declare-fun e!542006 () Bool)

(assert (=> d!258364 (= lt!317050 e!542006)))

(declare-fun res!378692 () Bool)

(assert (=> d!258364 (=> (not res!378692) (not e!542006))))

(assert (=> d!258364 (= res!378692 ((_ is Cons!8811) l2!1504))))

(assert (=> d!258364 (= (contains!1616 l2!1504 b!25421) lt!317050)))

(declare-fun b!820399 () Bool)

(declare-fun e!542005 () Bool)

(assert (=> b!820399 (= e!542006 e!542005)))

(declare-fun res!378691 () Bool)

(assert (=> b!820399 (=> res!378691 e!542005)))

(assert (=> b!820399 (= res!378691 (= (h!14212 l2!1504) b!25421))))

(declare-fun b!820400 () Bool)

(assert (=> b!820400 (= e!542005 (contains!1616 (t!92939 l2!1504) b!25421))))

(assert (= (and d!258364 res!378692) b!820399))

(assert (= (and b!820399 (not res!378691)) b!820400))

(assert (=> d!258364 m!1061389))

(declare-fun m!1061401 () Bool)

(assert (=> d!258364 m!1061401))

(declare-fun m!1061403 () Bool)

(assert (=> b!820400 m!1061403))

(assert (=> b!820362 d!258364))

(declare-fun b!820405 () Bool)

(declare-fun e!542009 () Bool)

(declare-fun tp!256543 () Bool)

(assert (=> b!820405 (= e!542009 (and tp_is_empty!3769 tp!256543))))

(assert (=> b!820364 (= tp!256539 e!542009)))

(assert (= (and b!820364 ((_ is Cons!8811) (t!92939 l2!1504))) b!820405))

(declare-fun b!820406 () Bool)

(declare-fun e!542010 () Bool)

(declare-fun tp!256544 () Bool)

(assert (=> b!820406 (= e!542010 (and tp_is_empty!3769 tp!256544))))

(assert (=> b!820363 (= tp!256540 e!542010)))

(assert (= (and b!820363 ((_ is Cons!8811) (t!92939 l1!1535))) b!820406))

(check-sat (not d!258364) (not d!258354) (not b!820370) (not b!820400) (not b!820405) (not b!820386) (not d!258362) (not b!820406) (not b!820394) (not b!820387) (not d!258358) tp_is_empty!3769)
(check-sat)
