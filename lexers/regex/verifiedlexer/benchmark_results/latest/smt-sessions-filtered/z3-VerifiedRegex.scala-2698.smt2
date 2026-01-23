; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!145232 () Bool)

(assert start!145232)

(declare-fun res!696800 () Bool)

(declare-fun e!1003974 () Bool)

(assert (=> start!145232 (=> (not res!696800) (not e!1003974))))

(declare-datatypes ((B!1409 0))(
  ( (B!1410 (val!4968 Int)) )
))
(declare-datatypes ((List!17035 0))(
  ( (Nil!16965) (Cons!16965 (h!22366 B!1409) (t!141614 List!17035)) )
))
(declare-fun l!3627 () List!17035)

(declare-fun noDuplicate!228 (List!17035) Bool)

(assert (=> start!145232 (= res!696800 (noDuplicate!228 l!3627))))

(assert (=> start!145232 e!1003974))

(declare-fun e!1003973 () Bool)

(assert (=> start!145232 e!1003973))

(declare-fun tp_is_empty!7105 () Bool)

(assert (=> start!145232 tp_is_empty!7105))

(declare-fun b!1563349 () Bool)

(declare-fun res!696801 () Bool)

(assert (=> b!1563349 (=> (not res!696801) (not e!1003974))))

(declare-fun elmt!170 () B!1409)

(declare-fun contains!2986 (List!17035 B!1409) Bool)

(assert (=> b!1563349 (= res!696801 (not (contains!2986 l!3627 elmt!170)))))

(declare-fun b!1563350 () Bool)

(declare-fun ListPrimitiveSize!104 (List!17035) Int)

(assert (=> b!1563350 (= e!1003974 (< (ListPrimitiveSize!104 l!3627) 0))))

(declare-fun b!1563351 () Bool)

(declare-fun tp!460552 () Bool)

(assert (=> b!1563351 (= e!1003973 (and tp_is_empty!7105 tp!460552))))

(assert (= (and start!145232 res!696800) b!1563349))

(assert (= (and b!1563349 res!696801) b!1563350))

(get-info :version)

(assert (= (and start!145232 ((_ is Cons!16965) l!3627)) b!1563351))

(declare-fun m!1834753 () Bool)

(assert (=> start!145232 m!1834753))

(declare-fun m!1834755 () Bool)

(assert (=> b!1563349 m!1834755))

(declare-fun m!1834757 () Bool)

(assert (=> b!1563350 m!1834757))

(check-sat tp_is_empty!7105 (not b!1563351) (not start!145232) (not b!1563350) (not b!1563349))
(check-sat)
(get-model)

(declare-fun d!462943 () Bool)

(declare-fun res!696810 () Bool)

(declare-fun e!1003983 () Bool)

(assert (=> d!462943 (=> res!696810 e!1003983)))

(assert (=> d!462943 (= res!696810 ((_ is Nil!16965) l!3627))))

(assert (=> d!462943 (= (noDuplicate!228 l!3627) e!1003983)))

(declare-fun b!1563360 () Bool)

(declare-fun e!1003984 () Bool)

(assert (=> b!1563360 (= e!1003983 e!1003984)))

(declare-fun res!696811 () Bool)

(assert (=> b!1563360 (=> (not res!696811) (not e!1003984))))

(assert (=> b!1563360 (= res!696811 (not (contains!2986 (t!141614 l!3627) (h!22366 l!3627))))))

(declare-fun b!1563361 () Bool)

(assert (=> b!1563361 (= e!1003984 (noDuplicate!228 (t!141614 l!3627)))))

(assert (= (and d!462943 (not res!696810)) b!1563360))

(assert (= (and b!1563360 res!696811) b!1563361))

(declare-fun m!1834759 () Bool)

(assert (=> b!1563360 m!1834759))

(declare-fun m!1834761 () Bool)

(assert (=> b!1563361 m!1834761))

(assert (=> start!145232 d!462943))

(declare-fun d!462947 () Bool)

(declare-fun lt!541371 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2347 (List!17035) (InoxSet B!1409))

(assert (=> d!462947 (= lt!541371 (select (content!2347 l!3627) elmt!170))))

(declare-fun e!1003995 () Bool)

(assert (=> d!462947 (= lt!541371 e!1003995)))

(declare-fun res!696818 () Bool)

(assert (=> d!462947 (=> (not res!696818) (not e!1003995))))

(assert (=> d!462947 (= res!696818 ((_ is Cons!16965) l!3627))))

(assert (=> d!462947 (= (contains!2986 l!3627 elmt!170) lt!541371)))

(declare-fun b!1563374 () Bool)

(declare-fun e!1003994 () Bool)

(assert (=> b!1563374 (= e!1003995 e!1003994)))

(declare-fun res!696819 () Bool)

(assert (=> b!1563374 (=> res!696819 e!1003994)))

(assert (=> b!1563374 (= res!696819 (= (h!22366 l!3627) elmt!170))))

(declare-fun b!1563375 () Bool)

(assert (=> b!1563375 (= e!1003994 (contains!2986 (t!141614 l!3627) elmt!170))))

(assert (= (and d!462947 res!696818) b!1563374))

(assert (= (and b!1563374 (not res!696819)) b!1563375))

(declare-fun m!1834771 () Bool)

(assert (=> d!462947 m!1834771))

(declare-fun m!1834773 () Bool)

(assert (=> d!462947 m!1834773))

(declare-fun m!1834775 () Bool)

(assert (=> b!1563375 m!1834775))

(assert (=> b!1563349 d!462947))

(declare-fun d!462953 () Bool)

(declare-fun lt!541374 () Int)

(assert (=> d!462953 (>= lt!541374 0)))

(declare-fun e!1004006 () Int)

(assert (=> d!462953 (= lt!541374 e!1004006)))

(declare-fun c!253422 () Bool)

(assert (=> d!462953 (= c!253422 ((_ is Nil!16965) l!3627))))

(assert (=> d!462953 (= (ListPrimitiveSize!104 l!3627) lt!541374)))

(declare-fun b!1563390 () Bool)

(assert (=> b!1563390 (= e!1004006 0)))

(declare-fun b!1563391 () Bool)

(assert (=> b!1563391 (= e!1004006 (+ 1 (ListPrimitiveSize!104 (t!141614 l!3627))))))

(assert (= (and d!462953 c!253422) b!1563390))

(assert (= (and d!462953 (not c!253422)) b!1563391))

(declare-fun m!1834781 () Bool)

(assert (=> b!1563391 m!1834781))

(assert (=> b!1563350 d!462953))

(declare-fun b!1563397 () Bool)

(declare-fun e!1004010 () Bool)

(declare-fun tp!460558 () Bool)

(assert (=> b!1563397 (= e!1004010 (and tp_is_empty!7105 tp!460558))))

(assert (=> b!1563351 (= tp!460552 e!1004010)))

(assert (= (and b!1563351 ((_ is Cons!16965) (t!141614 l!3627))) b!1563397))

(check-sat (not d!462947) (not b!1563360) tp_is_empty!7105 (not b!1563397) (not b!1563391) (not b!1563361) (not b!1563375))
(check-sat)
