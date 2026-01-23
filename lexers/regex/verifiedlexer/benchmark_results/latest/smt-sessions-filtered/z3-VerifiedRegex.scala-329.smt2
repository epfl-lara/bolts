; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!10914 () Bool)

(assert start!10914)

(declare-fun b_free!3225 () Bool)

(declare-fun b_next!3225 () Bool)

(assert (=> start!10914 (= b_free!3225 (not b_next!3225))))

(declare-fun tp!59092 () Bool)

(declare-fun b_and!4843 () Bool)

(assert (=> start!10914 (= tp!59092 b_and!4843)))

(declare-fun b_free!3227 () Bool)

(declare-fun b_next!3227 () Bool)

(assert (=> start!10914 (= b_free!3227 (not b_next!3227))))

(declare-fun tp!59094 () Bool)

(declare-fun b_and!4845 () Bool)

(assert (=> start!10914 (= tp!59094 b_and!4845)))

(assert (=> start!10914 true))

(declare-fun lambda!2270 () Int)

(declare-fun order!891 () Int)

(declare-fun order!889 () Int)

(declare-fun f!927 () Int)

(declare-fun dynLambda!571 (Int Int) Int)

(declare-fun dynLambda!572 (Int Int) Int)

(assert (=> start!10914 (< (dynLambda!571 order!889 f!927) (dynLambda!572 order!891 lambda!2270))))

(assert (=> start!10914 true))

(declare-fun g!9 () Int)

(assert (=> start!10914 (< (dynLambda!571 order!889 g!9) (dynLambda!572 order!891 lambda!2270))))

(declare-fun b!108886 () Bool)

(declare-fun e!60505 () Bool)

(assert (=> b!108886 (= e!60505 true)))

(declare-datatypes ((Unit!1164 0))(
  ( (Unit!1165) )
))
(declare-fun lt!30659 () Unit!1164)

(declare-datatypes ((A!215 0))(
  ( (A!216 (val!520 Int)) )
))
(declare-datatypes ((List!1731 0))(
  ( (Nil!1725) (Cons!1725 (h!7122 A!215) (t!21646 List!1731)) )
))
(declare-fun lt!30666 () List!1731)

(declare-fun forallContained!4 (List!1731 Int A!215) Unit!1164)

(assert (=> b!108886 (= lt!30659 (forallContained!4 lt!30666 lambda!2270 (h!7122 lt!30666)))))

(declare-fun b!108887 () Bool)

(declare-fun res!52131 () Bool)

(assert (=> b!108887 (=> res!52131 e!60505)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!30664 () (InoxSet A!215))

(declare-fun forall!237 ((InoxSet A!215) Int) Bool)

(assert (=> b!108887 (= res!52131 (not (forall!237 lt!30664 lambda!2270)))))

(declare-fun b!108888 () Bool)

(declare-fun e!60503 () Bool)

(assert (=> b!108888 (= e!60503 e!60505)))

(declare-fun res!52133 () Bool)

(assert (=> b!108888 (=> res!52133 e!60505)))

(declare-datatypes ((B!511 0))(
  ( (B!512 (val!521 Int)) )
))
(declare-fun dynLambda!573 (Int A!215) (InoxSet B!511))

(assert (=> b!108888 (= res!52133 (not (= (dynLambda!573 f!927 (h!7122 lt!30666)) (dynLambda!573 g!9 (h!7122 lt!30666)))))))

(assert (=> b!108888 (forall!237 lt!30664 lambda!2270)))

(declare-fun lt!30661 () Unit!1164)

(declare-fun lemmaForallThenOnContent!4 (List!1731 Int) Unit!1164)

(assert (=> b!108888 (= lt!30661 (lemmaForallThenOnContent!4 (t!21646 lt!30666) lambda!2270))))

(declare-fun res!52132 () Bool)

(declare-fun e!60506 () Bool)

(assert (=> start!10914 (=> (not res!52132) (not e!60506))))

(declare-fun s!1451 () (InoxSet A!215))

(assert (=> start!10914 (= res!52132 (forall!237 s!1451 lambda!2270))))

(assert (=> start!10914 e!60506))

(declare-fun condSetEmpty!1357 () Bool)

(assert (=> start!10914 (= condSetEmpty!1357 (= s!1451 ((as const (Array A!215 Bool)) false)))))

(declare-fun setRes!1357 () Bool)

(assert (=> start!10914 setRes!1357))

(assert (=> start!10914 tp!59092))

(assert (=> start!10914 tp!59094))

(declare-fun b!108889 () Bool)

(declare-fun e!60504 () Bool)

(declare-fun e!60507 () Bool)

(assert (=> b!108889 (= e!60504 e!60507)))

(declare-fun res!52129 () Bool)

(assert (=> b!108889 (=> (not res!52129) (not e!60507))))

(declare-fun lt!30663 () (InoxSet A!215))

(assert (=> b!108889 (= res!52129 (= s!1451 lt!30663))))

(declare-fun lt!30665 () (InoxSet A!215))

(assert (=> b!108889 (= lt!30663 ((_ map or) lt!30665 lt!30664))))

(declare-fun content!157 (List!1731) (InoxSet A!215))

(assert (=> b!108889 (= lt!30664 (content!157 (t!21646 lt!30666)))))

(assert (=> b!108889 (= lt!30665 (store ((as const (Array A!215 Bool)) false) (h!7122 lt!30666) true))))

(declare-fun b!108890 () Bool)

(assert (=> b!108890 (= e!60507 (not e!60503))))

(declare-fun res!52130 () Bool)

(assert (=> b!108890 (=> res!52130 e!60503)))

(declare-fun forall!238 (List!1731 Int) Bool)

(assert (=> b!108890 (= res!52130 (not (forall!238 (t!21646 lt!30666) lambda!2270)))))

(declare-fun flatMap!17 ((InoxSet A!215) Int) (InoxSet B!511))

(assert (=> b!108890 (= ((_ map or) (flatMap!17 lt!30665 g!9) (flatMap!17 lt!30664 g!9)) (flatMap!17 lt!30663 g!9))))

(declare-fun lt!30660 () Unit!1164)

(declare-fun lemmaFlatMapAssociative!6 ((InoxSet A!215) (InoxSet A!215) Int) Unit!1164)

(assert (=> b!108890 (= lt!30660 (lemmaFlatMapAssociative!6 lt!30665 lt!30664 g!9))))

(assert (=> b!108890 (= ((_ map or) (flatMap!17 lt!30665 f!927) (flatMap!17 lt!30664 f!927)) (flatMap!17 lt!30663 f!927))))

(declare-fun lt!30662 () Unit!1164)

(assert (=> b!108890 (= lt!30662 (lemmaFlatMapAssociative!6 lt!30665 lt!30664 f!927))))

(declare-fun b!108891 () Bool)

(assert (=> b!108891 (= e!60506 e!60504)))

(declare-fun res!52134 () Bool)

(assert (=> b!108891 (=> (not res!52134) (not e!60504))))

(get-info :version)

(assert (=> b!108891 (= res!52134 ((_ is Cons!1725) lt!30666))))

(declare-fun toList!210 ((InoxSet A!215)) List!1731)

(assert (=> b!108891 (= lt!30666 (toList!210 s!1451))))

(declare-fun setNonEmpty!1357 () Bool)

(declare-fun tp!59093 () Bool)

(declare-fun tp_is_empty!805 () Bool)

(assert (=> setNonEmpty!1357 (= setRes!1357 (and tp!59093 tp_is_empty!805))))

(declare-fun setElem!1357 () A!215)

(declare-fun setRest!1357 () (InoxSet A!215))

(assert (=> setNonEmpty!1357 (= s!1451 ((_ map or) (store ((as const (Array A!215 Bool)) false) setElem!1357 true) setRest!1357))))

(declare-fun setIsEmpty!1357 () Bool)

(assert (=> setIsEmpty!1357 setRes!1357))

(assert (= (and start!10914 res!52132) b!108891))

(assert (= (and b!108891 res!52134) b!108889))

(assert (= (and b!108889 res!52129) b!108890))

(assert (= (and b!108890 (not res!52130)) b!108888))

(assert (= (and b!108888 (not res!52133)) b!108887))

(assert (= (and b!108887 (not res!52131)) b!108886))

(assert (= (and start!10914 condSetEmpty!1357) setIsEmpty!1357))

(assert (= (and start!10914 (not condSetEmpty!1357)) setNonEmpty!1357))

(declare-fun b_lambda!1241 () Bool)

(assert (=> (not b_lambda!1241) (not b!108888)))

(declare-fun t!21639 () Bool)

(declare-fun tb!3175 () Bool)

(assert (=> (and start!10914 (= f!927 f!927) t!21639) tb!3175))

(assert (=> b!108888 t!21639))

(declare-fun result!4692 () Bool)

(declare-fun b_and!4847 () Bool)

(assert (= b_and!4843 (and (=> t!21639 result!4692) b_and!4847)))

(declare-fun tb!3177 () Bool)

(declare-fun t!21641 () Bool)

(assert (=> (and start!10914 (= g!9 f!927) t!21641) tb!3177))

(assert (=> b!108888 t!21641))

(declare-fun result!4694 () Bool)

(declare-fun b_and!4849 () Bool)

(assert (= b_and!4845 (and (=> t!21641 result!4694) b_and!4849)))

(declare-fun b_lambda!1243 () Bool)

(assert (=> (not b_lambda!1243) (not b!108888)))

(declare-fun tb!3179 () Bool)

(declare-fun t!21643 () Bool)

(assert (=> (and start!10914 (= f!927 g!9) t!21643) tb!3179))

(assert (=> b!108888 t!21643))

(declare-fun result!4696 () Bool)

(declare-fun b_and!4851 () Bool)

(assert (= b_and!4847 (and (=> t!21643 result!4696) b_and!4851)))

(declare-fun t!21645 () Bool)

(declare-fun tb!3181 () Bool)

(assert (=> (and start!10914 (= g!9 g!9) t!21645) tb!3181))

(assert (=> b!108888 t!21645))

(declare-fun result!4698 () Bool)

(declare-fun b_and!4853 () Bool)

(assert (= b_and!4849 (and (=> t!21645 result!4698) b_and!4853)))

(declare-fun m!97738 () Bool)

(assert (=> b!108888 m!97738))

(declare-fun m!97740 () Bool)

(assert (=> b!108888 m!97740))

(declare-fun m!97742 () Bool)

(assert (=> b!108888 m!97742))

(declare-fun m!97744 () Bool)

(assert (=> b!108888 m!97744))

(declare-fun m!97746 () Bool)

(assert (=> start!10914 m!97746))

(declare-fun m!97748 () Bool)

(assert (=> b!108890 m!97748))

(declare-fun m!97750 () Bool)

(assert (=> b!108890 m!97750))

(declare-fun m!97752 () Bool)

(assert (=> b!108890 m!97752))

(declare-fun m!97754 () Bool)

(assert (=> b!108890 m!97754))

(declare-fun m!97756 () Bool)

(assert (=> b!108890 m!97756))

(declare-fun m!97758 () Bool)

(assert (=> b!108890 m!97758))

(declare-fun m!97760 () Bool)

(assert (=> b!108890 m!97760))

(declare-fun m!97762 () Bool)

(assert (=> b!108890 m!97762))

(declare-fun m!97764 () Bool)

(assert (=> b!108890 m!97764))

(declare-fun m!97766 () Bool)

(assert (=> b!108891 m!97766))

(assert (=> b!108887 m!97742))

(declare-fun m!97768 () Bool)

(assert (=> b!108889 m!97768))

(declare-fun m!97770 () Bool)

(assert (=> b!108889 m!97770))

(declare-fun m!97772 () Bool)

(assert (=> b!108886 m!97772))

(check-sat (not b!108887) (not tb!3175) b_and!4853 (not b_next!3225) tp_is_empty!805 (not setNonEmpty!1357) (not b!108890) (not tb!3179) (not tb!3177) (not b!108889) (not b_lambda!1243) (not tb!3181) (not b_lambda!1241) (not start!10914) (not b!108888) (not b!108886) (not b!108891) (not b_next!3227) b_and!4851)
(check-sat b_and!4851 b_and!4853 (not b_next!3227) (not b_next!3225))
