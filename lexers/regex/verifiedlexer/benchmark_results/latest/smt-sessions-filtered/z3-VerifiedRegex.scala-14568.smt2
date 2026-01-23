; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755428 () Bool)

(assert start!755428)

(declare-fun res!3173386 () Bool)

(declare-fun e!4727204 () Bool)

(assert (=> start!755428 (=> (not res!3173386) (not e!4727204))))

(declare-datatypes ((B!4289 0))(
  ( (B!4290 (val!32534 Int)) )
))
(declare-datatypes ((List!75046 0))(
  ( (Nil!74922) (Cons!74922 (h!81370 B!4289) (t!390789 List!75046)) )
))
(declare-fun l1!1007 () List!75046)

(declare-fun l2!976 () List!75046)

(assert (=> start!755428 (= res!3173386 (= l1!1007 l2!976))))

(assert (=> start!755428 e!4727204))

(declare-fun e!4727205 () Bool)

(assert (=> start!755428 e!4727205))

(declare-fun e!4727203 () Bool)

(assert (=> start!755428 e!4727203))

(declare-fun b!8024501 () Bool)

(declare-fun ListPrimitiveSize!509 (List!75046) Int)

(assert (=> b!8024501 (= e!4727204 (< (ListPrimitiveSize!509 l1!1007) 0))))

(declare-fun b!8024502 () Bool)

(declare-fun tp_is_empty!54177 () Bool)

(declare-fun tp!2401490 () Bool)

(assert (=> b!8024502 (= e!4727205 (and tp_is_empty!54177 tp!2401490))))

(declare-fun b!8024503 () Bool)

(declare-fun tp!2401491 () Bool)

(assert (=> b!8024503 (= e!4727203 (and tp_is_empty!54177 tp!2401491))))

(assert (= (and start!755428 res!3173386) b!8024501))

(get-info :version)

(assert (= (and start!755428 ((_ is Cons!74922) l1!1007)) b!8024502))

(assert (= (and start!755428 ((_ is Cons!74922) l2!976)) b!8024503))

(declare-fun m!8386920 () Bool)

(assert (=> b!8024501 m!8386920))

(check-sat (not b!8024501) (not b!8024503) (not b!8024502) tp_is_empty!54177)
(check-sat)
(get-model)

(declare-fun d!2392773 () Bool)

(declare-fun lt!2720632 () Int)

(assert (=> d!2392773 (>= lt!2720632 0)))

(declare-fun e!4727211 () Int)

(assert (=> d!2392773 (= lt!2720632 e!4727211)))

(declare-fun c!1472443 () Bool)

(assert (=> d!2392773 (= c!1472443 ((_ is Nil!74922) l1!1007))))

(assert (=> d!2392773 (= (ListPrimitiveSize!509 l1!1007) lt!2720632)))

(declare-fun b!8024514 () Bool)

(assert (=> b!8024514 (= e!4727211 0)))

(declare-fun b!8024515 () Bool)

(assert (=> b!8024515 (= e!4727211 (+ 1 (ListPrimitiveSize!509 (t!390789 l1!1007))))))

(assert (= (and d!2392773 c!1472443) b!8024514))

(assert (= (and d!2392773 (not c!1472443)) b!8024515))

(declare-fun m!8386924 () Bool)

(assert (=> b!8024515 m!8386924))

(assert (=> b!8024501 d!2392773))

(declare-fun b!8024525 () Bool)

(declare-fun e!4727217 () Bool)

(declare-fun tp!2401497 () Bool)

(assert (=> b!8024525 (= e!4727217 (and tp_is_empty!54177 tp!2401497))))

(assert (=> b!8024503 (= tp!2401491 e!4727217)))

(assert (= (and b!8024503 ((_ is Cons!74922) (t!390789 l2!976))) b!8024525))

(declare-fun b!8024527 () Bool)

(declare-fun e!4727219 () Bool)

(declare-fun tp!2401499 () Bool)

(assert (=> b!8024527 (= e!4727219 (and tp_is_empty!54177 tp!2401499))))

(assert (=> b!8024502 (= tp!2401490 e!4727219)))

(assert (= (and b!8024502 ((_ is Cons!74922) (t!390789 l1!1007))) b!8024527))

(check-sat (not b!8024515) (not b!8024527) (not b!8024525) tp_is_empty!54177)
(check-sat)
