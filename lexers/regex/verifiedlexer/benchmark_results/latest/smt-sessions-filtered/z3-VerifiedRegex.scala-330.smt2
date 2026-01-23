; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!10918 () Bool)

(assert start!10918)

(declare-fun b_free!3233 () Bool)

(declare-fun b_next!3233 () Bool)

(assert (=> start!10918 (= b_free!3233 (not b_next!3233))))

(declare-fun tp!59110 () Bool)

(declare-fun b_and!4867 () Bool)

(assert (=> start!10918 (= tp!59110 b_and!4867)))

(declare-fun b_free!3235 () Bool)

(declare-fun b_next!3235 () Bool)

(assert (=> start!10918 (= b_free!3235 (not b_next!3235))))

(declare-fun tp!59112 () Bool)

(declare-fun b_and!4869 () Bool)

(assert (=> start!10918 (= tp!59112 b_and!4869)))

(assert (=> start!10918 true))

(declare-fun order!899 () Int)

(declare-fun lambda!2292 () Int)

(declare-fun order!897 () Int)

(declare-fun f!927 () Int)

(declare-fun dynLambda!577 (Int Int) Int)

(declare-fun dynLambda!578 (Int Int) Int)

(assert (=> start!10918 (< (dynLambda!577 order!897 f!927) (dynLambda!578 order!899 lambda!2292))))

(assert (=> start!10918 true))

(declare-fun g!9 () Int)

(assert (=> start!10918 (< (dynLambda!577 order!897 g!9) (dynLambda!578 order!899 lambda!2292))))

(declare-fun b!108926 () Bool)

(declare-fun e!60535 () Bool)

(declare-datatypes ((A!219 0))(
  ( (A!220 (val!524 Int)) )
))
(declare-datatypes ((List!1733 0))(
  ( (Nil!1727) (Cons!1727 (h!7124 A!219) (t!21664 List!1733)) )
))
(declare-fun lt!30718 () List!1733)

(assert (=> b!108926 (= e!60535 (not (= lt!30718 Nil!1727)))))

(declare-fun size!1525 (List!1733) Int)

(declare-fun tail!178 (List!1733) List!1733)

(assert (=> b!108926 (> (size!1525 lt!30718) (size!1525 (tail!178 lt!30718)))))

(declare-datatypes ((Unit!1168 0))(
  ( (Unit!1169) )
))
(declare-fun lt!30719 () Unit!1168)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun s!1451 () (InoxSet A!219))

(declare-fun lemmaToListSizeBiggerThanTailContentSize!2 ((InoxSet A!219)) Unit!1168)

(assert (=> b!108926 (= lt!30719 (lemmaToListSizeBiggerThanTailContentSize!2 s!1451))))

(declare-fun lt!30720 () Unit!1168)

(declare-fun forallContained!6 (List!1733 Int A!219) Unit!1168)

(assert (=> b!108926 (= lt!30720 (forallContained!6 lt!30718 lambda!2292 (h!7124 lt!30718)))))

(declare-fun b!108927 () Bool)

(declare-fun e!60533 () Bool)

(declare-fun e!60534 () Bool)

(assert (=> b!108927 (= e!60533 (not e!60534))))

(declare-fun res!52168 () Bool)

(assert (=> b!108927 (=> res!52168 e!60534)))

(declare-fun forall!241 (List!1733 Int) Bool)

(assert (=> b!108927 (= res!52168 (not (forall!241 (t!21664 lt!30718) lambda!2292)))))

(declare-fun lt!30716 () (InoxSet A!219))

(declare-fun lt!30717 () (InoxSet A!219))

(declare-fun lt!30715 () (InoxSet A!219))

(declare-datatypes ((B!515 0))(
  ( (B!516 (val!525 Int)) )
))
(declare-fun flatMap!19 ((InoxSet A!219) Int) (InoxSet B!515))

(assert (=> b!108927 (= ((_ map or) (flatMap!19 lt!30716 g!9) (flatMap!19 lt!30717 g!9)) (flatMap!19 lt!30715 g!9))))

(declare-fun lt!30712 () Unit!1168)

(declare-fun lemmaFlatMapAssociative!8 ((InoxSet A!219) (InoxSet A!219) Int) Unit!1168)

(assert (=> b!108927 (= lt!30712 (lemmaFlatMapAssociative!8 lt!30716 lt!30717 g!9))))

(assert (=> b!108927 (= ((_ map or) (flatMap!19 lt!30716 f!927) (flatMap!19 lt!30717 f!927)) (flatMap!19 lt!30715 f!927))))

(declare-fun lt!30713 () Unit!1168)

(assert (=> b!108927 (= lt!30713 (lemmaFlatMapAssociative!8 lt!30716 lt!30717 f!927))))

(declare-fun b!108928 () Bool)

(declare-fun e!60536 () Bool)

(assert (=> b!108928 (= e!60536 e!60533)))

(declare-fun res!52170 () Bool)

(assert (=> b!108928 (=> (not res!52170) (not e!60533))))

(assert (=> b!108928 (= res!52170 (= s!1451 lt!30715))))

(assert (=> b!108928 (= lt!30715 ((_ map or) lt!30716 lt!30717))))

(declare-fun content!159 (List!1733) (InoxSet A!219))

(assert (=> b!108928 (= lt!30717 (content!159 (t!21664 lt!30718)))))

(assert (=> b!108928 (= lt!30716 (store ((as const (Array A!219 Bool)) false) (h!7124 lt!30718) true))))

(declare-fun b!108929 () Bool)

(assert (=> b!108929 (= e!60534 e!60535)))

(declare-fun res!52167 () Bool)

(assert (=> b!108929 (=> res!52167 e!60535)))

(declare-fun dynLambda!579 (Int A!219) (InoxSet B!515))

(assert (=> b!108929 (= res!52167 (not (= (dynLambda!579 f!927 (h!7124 lt!30718)) (dynLambda!579 g!9 (h!7124 lt!30718)))))))

(declare-fun forall!242 ((InoxSet A!219) Int) Bool)

(assert (=> b!108929 (forall!242 lt!30717 lambda!2292)))

(declare-fun lt!30714 () Unit!1168)

(declare-fun lemmaForallThenOnContent!6 (List!1733 Int) Unit!1168)

(assert (=> b!108929 (= lt!30714 (lemmaForallThenOnContent!6 (t!21664 lt!30718) lambda!2292))))

(declare-fun b!108930 () Bool)

(declare-fun e!60537 () Bool)

(assert (=> b!108930 (= e!60537 e!60536)))

(declare-fun res!52166 () Bool)

(assert (=> b!108930 (=> (not res!52166) (not e!60536))))

(get-info :version)

(assert (=> b!108930 (= res!52166 ((_ is Cons!1727) lt!30718))))

(declare-fun toList!212 ((InoxSet A!219)) List!1733)

(assert (=> b!108930 (= lt!30718 (toList!212 s!1451))))

(declare-fun setNonEmpty!1363 () Bool)

(declare-fun setRes!1363 () Bool)

(declare-fun tp!59111 () Bool)

(declare-fun tp_is_empty!809 () Bool)

(assert (=> setNonEmpty!1363 (= setRes!1363 (and tp!59111 tp_is_empty!809))))

(declare-fun setElem!1363 () A!219)

(declare-fun setRest!1363 () (InoxSet A!219))

(assert (=> setNonEmpty!1363 (= s!1451 ((_ map or) (store ((as const (Array A!219 Bool)) false) setElem!1363 true) setRest!1363))))

(declare-fun b!108931 () Bool)

(declare-fun res!52169 () Bool)

(assert (=> b!108931 (=> res!52169 e!60535)))

(assert (=> b!108931 (= res!52169 (not (forall!242 lt!30717 lambda!2292)))))

(declare-fun res!52165 () Bool)

(assert (=> start!10918 (=> (not res!52165) (not e!60537))))

(assert (=> start!10918 (= res!52165 (forall!242 s!1451 lambda!2292))))

(assert (=> start!10918 e!60537))

(declare-fun condSetEmpty!1363 () Bool)

(assert (=> start!10918 (= condSetEmpty!1363 (= s!1451 ((as const (Array A!219 Bool)) false)))))

(assert (=> start!10918 setRes!1363))

(assert (=> start!10918 tp!59110))

(assert (=> start!10918 tp!59112))

(declare-fun setIsEmpty!1363 () Bool)

(assert (=> setIsEmpty!1363 setRes!1363))

(assert (= (and start!10918 res!52165) b!108930))

(assert (= (and b!108930 res!52166) b!108928))

(assert (= (and b!108928 res!52170) b!108927))

(assert (= (and b!108927 (not res!52168)) b!108929))

(assert (= (and b!108929 (not res!52167)) b!108931))

(assert (= (and b!108931 (not res!52169)) b!108926))

(assert (= (and start!10918 condSetEmpty!1363) setIsEmpty!1363))

(assert (= (and start!10918 (not condSetEmpty!1363)) setNonEmpty!1363))

(declare-fun b_lambda!1249 () Bool)

(assert (=> (not b_lambda!1249) (not b!108929)))

(declare-fun t!21657 () Bool)

(declare-fun tb!3191 () Bool)

(assert (=> (and start!10918 (= f!927 f!927) t!21657) tb!3191))

(assert (=> b!108929 t!21657))

(declare-fun result!4708 () Bool)

(declare-fun b_and!4871 () Bool)

(assert (= b_and!4867 (and (=> t!21657 result!4708) b_and!4871)))

(declare-fun t!21659 () Bool)

(declare-fun tb!3193 () Bool)

(assert (=> (and start!10918 (= g!9 f!927) t!21659) tb!3193))

(assert (=> b!108929 t!21659))

(declare-fun result!4710 () Bool)

(declare-fun b_and!4873 () Bool)

(assert (= b_and!4869 (and (=> t!21659 result!4710) b_and!4873)))

(declare-fun b_lambda!1251 () Bool)

(assert (=> (not b_lambda!1251) (not b!108929)))

(declare-fun tb!3195 () Bool)

(declare-fun t!21661 () Bool)

(assert (=> (and start!10918 (= f!927 g!9) t!21661) tb!3195))

(assert (=> b!108929 t!21661))

(declare-fun result!4712 () Bool)

(declare-fun b_and!4875 () Bool)

(assert (= b_and!4871 (and (=> t!21661 result!4712) b_and!4875)))

(declare-fun t!21663 () Bool)

(declare-fun tb!3197 () Bool)

(assert (=> (and start!10918 (= g!9 g!9) t!21663) tb!3197))

(assert (=> b!108929 t!21663))

(declare-fun result!4714 () Bool)

(declare-fun b_and!4877 () Bool)

(assert (= b_and!4873 (and (=> t!21663 result!4714) b_and!4877)))

(declare-fun m!97818 () Bool)

(assert (=> b!108928 m!97818))

(declare-fun m!97820 () Bool)

(assert (=> b!108928 m!97820))

(declare-fun m!97822 () Bool)

(assert (=> b!108931 m!97822))

(declare-fun m!97824 () Bool)

(assert (=> b!108929 m!97824))

(declare-fun m!97826 () Bool)

(assert (=> b!108929 m!97826))

(assert (=> b!108929 m!97822))

(declare-fun m!97828 () Bool)

(assert (=> b!108929 m!97828))

(declare-fun m!97830 () Bool)

(assert (=> b!108927 m!97830))

(declare-fun m!97832 () Bool)

(assert (=> b!108927 m!97832))

(declare-fun m!97834 () Bool)

(assert (=> b!108927 m!97834))

(declare-fun m!97836 () Bool)

(assert (=> b!108927 m!97836))

(declare-fun m!97838 () Bool)

(assert (=> b!108927 m!97838))

(declare-fun m!97840 () Bool)

(assert (=> b!108927 m!97840))

(declare-fun m!97842 () Bool)

(assert (=> b!108927 m!97842))

(declare-fun m!97844 () Bool)

(assert (=> b!108927 m!97844))

(declare-fun m!97846 () Bool)

(assert (=> b!108927 m!97846))

(declare-fun m!97848 () Bool)

(assert (=> b!108930 m!97848))

(declare-fun m!97850 () Bool)

(assert (=> start!10918 m!97850))

(declare-fun m!97852 () Bool)

(assert (=> b!108926 m!97852))

(declare-fun m!97854 () Bool)

(assert (=> b!108926 m!97854))

(declare-fun m!97856 () Bool)

(assert (=> b!108926 m!97856))

(assert (=> b!108926 m!97854))

(declare-fun m!97858 () Bool)

(assert (=> b!108926 m!97858))

(declare-fun m!97860 () Bool)

(assert (=> b!108926 m!97860))

(check-sat (not b_lambda!1251) (not b_lambda!1249) (not setNonEmpty!1363) (not tb!3197) b_and!4877 (not b!108930) (not tb!3195) (not b_next!3235) (not b!108929) (not b!108931) (not b!108928) (not b!108927) (not b_next!3233) tp_is_empty!809 (not b!108926) b_and!4875 (not tb!3191) (not tb!3193) (not start!10918))
(check-sat b_and!4875 b_and!4877 (not b_next!3235) (not b_next!3233))
