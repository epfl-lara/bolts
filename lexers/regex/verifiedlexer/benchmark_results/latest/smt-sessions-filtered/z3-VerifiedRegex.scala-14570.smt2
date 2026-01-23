; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755444 () Bool)

(assert start!755444)

(declare-fun b!8024581 () Bool)

(declare-fun e!4727263 () Bool)

(declare-fun tp_is_empty!54185 () Bool)

(declare-fun tp!2401530 () Bool)

(assert (=> b!8024581 (= e!4727263 (and tp_is_empty!54185 tp!2401530))))

(declare-fun b!8024580 () Bool)

(declare-fun e!4727262 () Bool)

(declare-fun tp!2401531 () Bool)

(assert (=> b!8024580 (= e!4727262 (and tp_is_empty!54185 tp!2401531))))

(declare-fun res!3173404 () Bool)

(declare-fun e!4727261 () Bool)

(assert (=> start!755444 (=> (not res!3173404) (not e!4727261))))

(declare-datatypes ((B!4297 0))(
  ( (B!4298 (val!32538 Int)) )
))
(declare-datatypes ((List!75050 0))(
  ( (Nil!74926) (Cons!74926 (h!81374 B!4297) (t!390793 List!75050)) )
))
(declare-fun l1!1007 () List!75050)

(declare-fun l2!976 () List!75050)

(get-info :version)

(assert (=> start!755444 (= res!3173404 (and (= l1!1007 l2!976) ((_ is Cons!74926) l1!1007)))))

(assert (=> start!755444 e!4727261))

(assert (=> start!755444 e!4727262))

(assert (=> start!755444 e!4727263))

(declare-fun b!8024578 () Bool)

(declare-fun res!3173403 () Bool)

(assert (=> b!8024578 (=> (not res!3173403) (not e!4727261))))

(declare-fun tail!15987 (List!75050) List!75050)

(assert (=> b!8024578 (= res!3173403 (= (t!390793 l1!1007) (tail!15987 l2!976)))))

(declare-fun b!8024579 () Bool)

(declare-fun ListPrimitiveSize!511 (List!75050) Int)

(assert (=> b!8024579 (= e!4727261 (>= (ListPrimitiveSize!511 (t!390793 l1!1007)) (ListPrimitiveSize!511 l1!1007)))))

(assert (= (and start!755444 res!3173404) b!8024578))

(assert (= (and b!8024578 res!3173403) b!8024579))

(assert (= (and start!755444 ((_ is Cons!74926) l1!1007)) b!8024580))

(assert (= (and start!755444 ((_ is Cons!74926) l2!976)) b!8024581))

(declare-fun m!8386936 () Bool)

(assert (=> b!8024578 m!8386936))

(declare-fun m!8386938 () Bool)

(assert (=> b!8024579 m!8386938))

(declare-fun m!8386940 () Bool)

(assert (=> b!8024579 m!8386940))

(check-sat (not b!8024581) tp_is_empty!54185 (not b!8024578) (not b!8024579) (not b!8024580))
(check-sat)
(get-model)

(declare-fun d!2392781 () Bool)

(declare-fun lt!2720639 () Int)

(assert (=> d!2392781 (>= lt!2720639 0)))

(declare-fun e!4727270 () Int)

(assert (=> d!2392781 (= lt!2720639 e!4727270)))

(declare-fun c!1472450 () Bool)

(assert (=> d!2392781 (= c!1472450 ((_ is Nil!74926) (t!390793 l1!1007)))))

(assert (=> d!2392781 (= (ListPrimitiveSize!511 (t!390793 l1!1007)) lt!2720639)))

(declare-fun b!8024594 () Bool)

(assert (=> b!8024594 (= e!4727270 0)))

(declare-fun b!8024595 () Bool)

(assert (=> b!8024595 (= e!4727270 (+ 1 (ListPrimitiveSize!511 (t!390793 (t!390793 l1!1007)))))))

(assert (= (and d!2392781 c!1472450) b!8024594))

(assert (= (and d!2392781 (not c!1472450)) b!8024595))

(declare-fun m!8386944 () Bool)

(assert (=> b!8024595 m!8386944))

(assert (=> b!8024579 d!2392781))

(declare-fun d!2392789 () Bool)

(declare-fun lt!2720640 () Int)

(assert (=> d!2392789 (>= lt!2720640 0)))

(declare-fun e!4727271 () Int)

(assert (=> d!2392789 (= lt!2720640 e!4727271)))

(declare-fun c!1472451 () Bool)

(assert (=> d!2392789 (= c!1472451 ((_ is Nil!74926) l1!1007))))

(assert (=> d!2392789 (= (ListPrimitiveSize!511 l1!1007) lt!2720640)))

(declare-fun b!8024596 () Bool)

(assert (=> b!8024596 (= e!4727271 0)))

(declare-fun b!8024597 () Bool)

(assert (=> b!8024597 (= e!4727271 (+ 1 (ListPrimitiveSize!511 (t!390793 l1!1007))))))

(assert (= (and d!2392789 c!1472451) b!8024596))

(assert (= (and d!2392789 (not c!1472451)) b!8024597))

(assert (=> b!8024597 m!8386938))

(assert (=> b!8024579 d!2392789))

(declare-fun d!2392791 () Bool)

(assert (=> d!2392791 (= (tail!15987 l2!976) (t!390793 l2!976))))

(assert (=> b!8024578 d!2392791))

(declare-fun b!8024608 () Bool)

(declare-fun e!4727278 () Bool)

(declare-fun tp!2401538 () Bool)

(assert (=> b!8024608 (= e!4727278 (and tp_is_empty!54185 tp!2401538))))

(assert (=> b!8024581 (= tp!2401530 e!4727278)))

(assert (= (and b!8024581 ((_ is Cons!74926) (t!390793 l2!976))) b!8024608))

(declare-fun b!8024609 () Bool)

(declare-fun e!4727279 () Bool)

(declare-fun tp!2401539 () Bool)

(assert (=> b!8024609 (= e!4727279 (and tp_is_empty!54185 tp!2401539))))

(assert (=> b!8024580 (= tp!2401531 e!4727279)))

(assert (= (and b!8024580 ((_ is Cons!74926) (t!390793 l1!1007))) b!8024609))

(check-sat (not b!8024609) (not b!8024608) (not b!8024595) (not b!8024597) tp_is_empty!54185)
(check-sat)
