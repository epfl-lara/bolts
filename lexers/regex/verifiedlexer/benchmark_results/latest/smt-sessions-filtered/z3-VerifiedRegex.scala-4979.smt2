; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!252504 () Bool)

(assert start!252504)

(declare-fun b!2599446 () Bool)

(declare-fun res!1094758 () Bool)

(declare-fun e!1640750 () Bool)

(assert (=> b!2599446 (=> (not res!1094758) (not e!1640750))))

(declare-datatypes ((B!2337 0))(
  ( (B!2338 (val!9636 Int)) )
))
(declare-datatypes ((List!30069 0))(
  ( (Nil!29969) (Cons!29969 (h!35389 B!2337) (t!213082 List!30069)) )
))
(declare-fun l!3217 () List!30069)

(declare-fun e!9312 () B!2337)

(declare-fun contains!5517 (List!30069 B!2337) Bool)

(assert (=> b!2599446 (= res!1094758 (contains!5517 l!3217 e!9312))))

(declare-fun res!1094757 () Bool)

(assert (=> start!252504 (=> (not res!1094757) (not e!1640750))))

(declare-fun noDuplicate!517 (List!30069) Bool)

(assert (=> start!252504 (= res!1094757 (noDuplicate!517 l!3217))))

(assert (=> start!252504 e!1640750))

(declare-fun e!1640751 () Bool)

(assert (=> start!252504 e!1640751))

(declare-fun tp_is_empty!13617 () Bool)

(assert (=> start!252504 tp_is_empty!13617))

(declare-fun b!2599449 () Bool)

(declare-fun tp!823660 () Bool)

(assert (=> b!2599449 (= e!1640751 (and tp_is_empty!13617 tp!823660))))

(declare-fun b!2599448 () Bool)

(get-info :version)

(assert (=> b!2599448 (= e!1640750 (not ((_ is Cons!29969) l!3217)))))

(declare-fun b!2599447 () Bool)

(declare-fun res!1094759 () Bool)

(assert (=> b!2599447 (=> (not res!1094759) (not e!1640750))))

(declare-fun head!5914 (List!30069) B!2337)

(assert (=> b!2599447 (= res!1094759 (= (head!5914 l!3217) e!9312))))

(assert (= (and start!252504 res!1094757) b!2599446))

(assert (= (and b!2599446 res!1094758) b!2599447))

(assert (= (and b!2599447 res!1094759) b!2599448))

(assert (= (and start!252504 ((_ is Cons!29969) l!3217)) b!2599449))

(declare-fun m!2935187 () Bool)

(assert (=> b!2599446 m!2935187))

(declare-fun m!2935189 () Bool)

(assert (=> start!252504 m!2935189))

(declare-fun m!2935191 () Bool)

(assert (=> b!2599447 m!2935191))

(check-sat (not b!2599447) tp_is_empty!13617 (not b!2599446) (not b!2599449) (not start!252504))
(check-sat)
(get-model)

(declare-fun d!736510 () Bool)

(declare-fun lt!915147 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4242 (List!30069) (InoxSet B!2337))

(assert (=> d!736510 (= lt!915147 (select (content!4242 l!3217) e!9312))))

(declare-fun e!1640768 () Bool)

(assert (=> d!736510 (= lt!915147 e!1640768)))

(declare-fun res!1094776 () Bool)

(assert (=> d!736510 (=> (not res!1094776) (not e!1640768))))

(assert (=> d!736510 (= res!1094776 ((_ is Cons!29969) l!3217))))

(assert (=> d!736510 (= (contains!5517 l!3217 e!9312) lt!915147)))

(declare-fun b!2599466 () Bool)

(declare-fun e!1640769 () Bool)

(assert (=> b!2599466 (= e!1640768 e!1640769)))

(declare-fun res!1094777 () Bool)

(assert (=> b!2599466 (=> res!1094777 e!1640769)))

(assert (=> b!2599466 (= res!1094777 (= (h!35389 l!3217) e!9312))))

(declare-fun b!2599467 () Bool)

(assert (=> b!2599467 (= e!1640769 (contains!5517 (t!213082 l!3217) e!9312))))

(assert (= (and d!736510 res!1094776) b!2599466))

(assert (= (and b!2599466 (not res!1094777)) b!2599467))

(declare-fun m!2935203 () Bool)

(assert (=> d!736510 m!2935203))

(declare-fun m!2935205 () Bool)

(assert (=> d!736510 m!2935205))

(declare-fun m!2935207 () Bool)

(assert (=> b!2599467 m!2935207))

(assert (=> b!2599446 d!736510))

(declare-fun d!736516 () Bool)

(assert (=> d!736516 (= (head!5914 l!3217) (h!35389 l!3217))))

(assert (=> b!2599447 d!736516))

(declare-fun d!736518 () Bool)

(declare-fun res!1094782 () Bool)

(declare-fun e!1640777 () Bool)

(assert (=> d!736518 (=> res!1094782 e!1640777)))

(assert (=> d!736518 (= res!1094782 ((_ is Nil!29969) l!3217))))

(assert (=> d!736518 (= (noDuplicate!517 l!3217) e!1640777)))

(declare-fun b!2599477 () Bool)

(declare-fun e!1640778 () Bool)

(assert (=> b!2599477 (= e!1640777 e!1640778)))

(declare-fun res!1094783 () Bool)

(assert (=> b!2599477 (=> (not res!1094783) (not e!1640778))))

(assert (=> b!2599477 (= res!1094783 (not (contains!5517 (t!213082 l!3217) (h!35389 l!3217))))))

(declare-fun b!2599478 () Bool)

(assert (=> b!2599478 (= e!1640778 (noDuplicate!517 (t!213082 l!3217)))))

(assert (= (and d!736518 (not res!1094782)) b!2599477))

(assert (= (and b!2599477 res!1094783) b!2599478))

(declare-fun m!2935209 () Bool)

(assert (=> b!2599477 m!2935209))

(declare-fun m!2935211 () Bool)

(assert (=> b!2599478 m!2935211))

(assert (=> start!252504 d!736518))

(declare-fun b!2599483 () Bool)

(declare-fun e!1640781 () Bool)

(declare-fun tp!823666 () Bool)

(assert (=> b!2599483 (= e!1640781 (and tp_is_empty!13617 tp!823666))))

(assert (=> b!2599449 (= tp!823660 e!1640781)))

(assert (= (and b!2599449 ((_ is Cons!29969) (t!213082 l!3217))) b!2599483))

(check-sat (not b!2599477) (not b!2599483) tp_is_empty!13617 (not b!2599478) (not b!2599467) (not d!736510))
(check-sat)
