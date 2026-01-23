; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!714354 () Bool)

(assert start!714354)

(declare-fun b_free!134281 () Bool)

(declare-fun b_next!135071 () Bool)

(assert (=> start!714354 (= b_free!134281 (not b_next!135071))))

(declare-fun tp!2079628 () Bool)

(declare-fun b_and!351795 () Bool)

(assert (=> start!714354 (= tp!2079628 b_and!351795)))

(declare-fun b!7321527 () Bool)

(declare-fun e!4383640 () Bool)

(declare-fun tp_is_empty!48127 () Bool)

(declare-fun tp!2079629 () Bool)

(assert (=> b!7321527 (= e!4383640 (and tp_is_empty!48127 tp!2079629))))

(declare-fun b!7321525 () Bool)

(declare-fun res!2959384 () Bool)

(declare-fun e!4383641 () Bool)

(assert (=> b!7321525 (=> (not res!2959384) (not e!4383641))))

(declare-datatypes ((B!3813 0))(
  ( (B!3814 (val!29438 Int)) )
))
(declare-datatypes ((List!71437 0))(
  ( (Nil!71313) (Cons!71313 (h!77761 B!3813) (t!385784 List!71437)) )
))
(declare-fun l!3043 () List!71437)

(declare-fun e!9239 () B!3813)

(get-info :version)

(assert (=> b!7321525 (= res!2959384 (and (or (not ((_ is Cons!71313) l!3043)) (not (= (h!77761 l!3043) e!9239))) ((_ is Cons!71313) l!3043)))))

(declare-fun b!7321524 () Bool)

(declare-fun res!2959386 () Bool)

(assert (=> b!7321524 (=> (not res!2959386) (not e!4383641))))

(declare-fun p!1874 () Int)

(declare-fun dynLambda!29368 (Int B!3813) Bool)

(assert (=> b!7321524 (= res!2959386 (dynLambda!29368 p!1874 e!9239))))

(declare-fun res!2959385 () Bool)

(assert (=> start!714354 (=> (not res!2959385) (not e!4383641))))

(declare-fun contains!20820 (List!71437 B!3813) Bool)

(assert (=> start!714354 (= res!2959385 (contains!20820 l!3043 e!9239))))

(assert (=> start!714354 e!4383641))

(assert (=> start!714354 e!4383640))

(assert (=> start!714354 tp_is_empty!48127))

(assert (=> start!714354 tp!2079628))

(declare-fun b!7321526 () Bool)

(assert (=> b!7321526 (= e!4383641 false)))

(declare-fun lt!2604746 () Bool)

(assert (=> b!7321526 (= lt!2604746 (contains!20820 (t!385784 l!3043) e!9239))))

(assert (= (and start!714354 res!2959385) b!7321524))

(assert (= (and b!7321524 res!2959386) b!7321525))

(assert (= (and b!7321525 res!2959384) b!7321526))

(assert (= (and start!714354 ((_ is Cons!71313) l!3043)) b!7321527))

(declare-fun b_lambda!283029 () Bool)

(assert (=> (not b_lambda!283029) (not b!7321524)))

(declare-fun t!385783 () Bool)

(declare-fun tb!262357 () Bool)

(assert (=> (and start!714354 (= p!1874 p!1874) t!385783) tb!262357))

(declare-fun result!353552 () Bool)

(assert (=> tb!262357 (= result!353552 true)))

(assert (=> b!7321524 t!385783))

(declare-fun b_and!351797 () Bool)

(assert (= b_and!351795 (and (=> t!385783 result!353552) b_and!351797)))

(declare-fun m!7987308 () Bool)

(assert (=> b!7321524 m!7987308))

(declare-fun m!7987310 () Bool)

(assert (=> start!714354 m!7987310))

(declare-fun m!7987312 () Bool)

(assert (=> b!7321526 m!7987312))

(check-sat (not b_lambda!283029) (not b!7321526) (not b_next!135071) b_and!351797 (not start!714354) (not b!7321527) tp_is_empty!48127)
(check-sat b_and!351797 (not b_next!135071))
