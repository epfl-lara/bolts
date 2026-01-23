; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!712800 () Bool)

(assert start!712800)

(declare-fun b_free!134017 () Bool)

(declare-fun b_next!134807 () Bool)

(assert (=> start!712800 (= b_free!134017 (not b_next!134807))))

(declare-fun tp!2075911 () Bool)

(declare-fun b_and!351419 () Bool)

(assert (=> start!712800 (= tp!2075911 b_and!351419)))

(declare-fun b!7314871 () Bool)

(assert (=> b!7314871 true))

(declare-fun b!7314868 () Bool)

(assert (=> b!7314868 true))

(declare-fun order!29139 () Int)

(declare-fun order!29137 () Int)

(declare-fun f!883 () Int)

(declare-fun lambda!451938 () Int)

(declare-fun dynLambda!29141 (Int Int) Int)

(declare-fun dynLambda!29142 (Int Int) Int)

(assert (=> b!7314868 (< (dynLambda!29141 order!29137 f!883) (dynLambda!29142 order!29139 lambda!451938))))

(assert (=> b!7314868 true))

(declare-fun b!7314867 () Bool)

(declare-fun e!4378808 () Bool)

(declare-datatypes ((B!3565 0))(
  ( (B!3566 (val!29121 Int)) )
))
(declare-datatypes ((List!71196 0))(
  ( (Nil!71072) (Cons!71072 (h!77520 B!3565) (t!385424 List!71196)) )
))
(declare-fun lRes!18 () List!71196)

(declare-fun lambda!451937 () Int)

(declare-fun forall!17756 (List!71196 Int) Bool)

(assert (=> b!7314867 (= e!4378808 (forall!17756 (t!385424 lRes!18) lambda!451937))))

(declare-fun e!4378806 () Bool)

(declare-fun e!4378804 () Bool)

(assert (=> b!7314868 (= e!4378806 e!4378804)))

(declare-fun res!2955855 () Bool)

(assert (=> b!7314868 (=> res!2955855 e!4378804)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!863 0))(
  ( (A!864 (val!29122 Int)) )
))
(declare-fun s!1437 () (InoxSet A!863))

(declare-fun exists!4533 ((InoxSet A!863) Int) Bool)

(assert (=> b!7314868 (= res!2955855 (not (exists!4533 s!1437 lambda!451938)))))

(declare-fun empty!3159 () A!863)

(declare-fun flatMapPost!110 ((InoxSet A!863) Int B!3565) A!863)

(assert (=> b!7314868 (= (flatMapPost!110 s!1437 f!883 (h!77520 lRes!18)) empty!3159)))

(assert (=> b!7314868 true))

(declare-fun tp_is_empty!47521 () Bool)

(assert (=> b!7314868 tp_is_empty!47521))

(declare-fun b!7314869 () Bool)

(declare-fun e!4378807 () Bool)

(declare-fun tp_is_empty!47523 () Bool)

(declare-fun tp!2075913 () Bool)

(assert (=> b!7314869 (= e!4378807 (and tp_is_empty!47523 tp!2075913))))

(declare-fun setNonEmpty!54217 () Bool)

(declare-fun setRes!54217 () Bool)

(declare-fun tp!2075912 () Bool)

(assert (=> setNonEmpty!54217 (= setRes!54217 (and tp!2075912 tp_is_empty!47521))))

(declare-fun setElem!54217 () A!863)

(declare-fun setRest!54217 () (InoxSet A!863))

(assert (=> setNonEmpty!54217 (= s!1437 ((_ map or) (store ((as const (Array A!863 Bool)) false) setElem!54217 true) setRest!54217))))

(declare-fun b!7314870 () Bool)

(declare-fun res!2955853 () Bool)

(declare-fun e!4378802 () Bool)

(assert (=> b!7314870 (=> res!2955853 e!4378802)))

(declare-fun lt!2601719 () A!863)

(declare-fun elmt!118 () A!863)

(assert (=> b!7314870 (= res!2955853 (not (= lt!2601719 elmt!118)))))

(declare-fun e!4378801 () Bool)

(assert (=> b!7314871 (= e!4378801 (not e!4378806))))

(declare-fun res!2955858 () Bool)

(assert (=> b!7314871 (=> res!2955858 e!4378806)))

(declare-fun lt!2601720 () (InoxSet B!3565))

(assert (=> b!7314871 (= res!2955858 (not (select lt!2601720 (h!77520 lRes!18))))))

(declare-datatypes ((Unit!164571 0))(
  ( (Unit!164572) )
))
(declare-fun lt!2601723 () Unit!164571)

(declare-fun lt!2601724 () List!71196)

(declare-fun subseqContains!50 (List!71196 List!71196 B!3565) Unit!164571)

(assert (=> b!7314871 (= lt!2601723 (subseqContains!50 lRes!18 lt!2601724 (h!77520 lRes!18)))))

(assert (=> b!7314871 e!4378808))

(declare-fun res!2955859 () Bool)

(assert (=> b!7314871 (=> (not res!2955859) (not e!4378808))))

(assert (=> b!7314871 (= res!2955859 (forall!17756 (t!385424 lRes!18) lambda!451937))))

(declare-fun lt!2601721 () List!71196)

(declare-fun toList!11605 ((InoxSet B!3565)) List!71196)

(declare-fun dynLambda!29143 (Int A!863) (InoxSet B!3565))

(assert (=> b!7314871 (= lt!2601721 (toList!11605 (dynLambda!29143 f!883 elmt!118)))))

(declare-fun lt!2601722 () Unit!164571)

(declare-fun lemmaFlatMapOnSingletonSetList1!28 ((InoxSet A!863) A!863 Int List!71196) Unit!164571)

(assert (=> b!7314871 (= lt!2601722 (lemmaFlatMapOnSingletonSetList1!28 s!1437 elmt!118 f!883 (t!385424 lRes!18)))))

(declare-fun lt!2601718 () Unit!164571)

(declare-fun subseqTail!86 (List!71196 List!71196) Unit!164571)

(assert (=> b!7314871 (= lt!2601718 (subseqTail!86 lRes!18 lt!2601724))))

(declare-fun b!7314872 () Bool)

(declare-fun e!4378805 () Bool)

(assert (=> b!7314872 (= e!4378802 e!4378805)))

(declare-fun res!2955857 () Bool)

(assert (=> b!7314872 (=> res!2955857 e!4378805)))

(assert (=> b!7314872 (= res!2955857 (not (forall!17756 lRes!18 lambda!451937)))))

(declare-fun contains!20794 (List!71196 B!3565) Bool)

(assert (=> b!7314872 (contains!20794 lt!2601721 (h!77520 lRes!18))))

(declare-fun b!7314873 () Bool)

(declare-fun res!2955860 () Bool)

(assert (=> b!7314873 (=> (not res!2955860) (not e!4378801))))

(get-info :version)

(assert (=> b!7314873 (= res!2955860 ((_ is Cons!71072) lRes!18))))

(declare-fun setIsEmpty!54217 () Bool)

(assert (=> setIsEmpty!54217 setRes!54217))

(declare-fun res!2955854 () Bool)

(declare-fun e!4378803 () Bool)

(assert (=> start!712800 (=> (not res!2955854) (not e!4378803))))

(assert (=> start!712800 (= res!2955854 (= s!1437 (store ((as const (Array A!863 Bool)) false) elmt!118 true)))))

(assert (=> start!712800 e!4378803))

(declare-fun condSetEmpty!54217 () Bool)

(assert (=> start!712800 (= condSetEmpty!54217 (= s!1437 ((as const (Array A!863 Bool)) false)))))

(assert (=> start!712800 setRes!54217))

(assert (=> start!712800 tp_is_empty!47521))

(assert (=> start!712800 tp!2075911))

(assert (=> start!712800 e!4378807))

(declare-fun b!7314874 () Bool)

(assert (=> b!7314874 (= e!4378805 (forall!17756 lRes!18 lambda!451937))))

(declare-fun b!7314875 () Bool)

(assert (=> b!7314875 (= e!4378804 e!4378802)))

(declare-fun res!2955856 () Bool)

(assert (=> b!7314875 (=> res!2955856 e!4378802)))

(declare-datatypes ((List!71197 0))(
  ( (Nil!71073) (Cons!71073 (h!77521 A!863) (t!385425 List!71197)) )
))
(declare-fun contains!20795 (List!71197 A!863) Bool)

(declare-fun toList!11606 ((InoxSet A!863)) List!71197)

(assert (=> b!7314875 (= res!2955856 (not (contains!20795 (toList!11606 s!1437) lt!2601719)))))

(declare-fun getWitness!2288 ((InoxSet A!863) Int) A!863)

(assert (=> b!7314875 (= lt!2601719 (getWitness!2288 s!1437 lambda!451938))))

(declare-fun b!7314876 () Bool)

(assert (=> b!7314876 (= e!4378803 e!4378801)))

(declare-fun res!2955852 () Bool)

(assert (=> b!7314876 (=> (not res!2955852) (not e!4378801))))

(declare-fun subseq!843 (List!71196 List!71196) Bool)

(assert (=> b!7314876 (= res!2955852 (subseq!843 lRes!18 lt!2601724))))

(assert (=> b!7314876 (= lt!2601724 (toList!11605 lt!2601720))))

(declare-fun flatMap!3042 ((InoxSet A!863) Int) (InoxSet B!3565))

(assert (=> b!7314876 (= lt!2601720 (flatMap!3042 s!1437 f!883))))

(assert (= (and start!712800 res!2955854) b!7314876))

(assert (= (and b!7314876 res!2955852) b!7314873))

(assert (= (and b!7314873 res!2955860) b!7314871))

(assert (= (and b!7314871 res!2955859) b!7314867))

(assert (= (and b!7314871 (not res!2955858)) b!7314868))

(assert (= (and b!7314868 (not res!2955855)) b!7314875))

(assert (= (and b!7314875 (not res!2955856)) b!7314870))

(assert (= (and b!7314870 (not res!2955853)) b!7314872))

(assert (= (and b!7314872 (not res!2955857)) b!7314874))

(assert (= (and start!712800 condSetEmpty!54217) setIsEmpty!54217))

(assert (= (and start!712800 (not condSetEmpty!54217)) setNonEmpty!54217))

(assert (= (and start!712800 ((_ is Cons!71072) lRes!18)) b!7314869))

(declare-fun b_lambda!282489 () Bool)

(assert (=> (not b_lambda!282489) (not b!7314871)))

(declare-fun t!385423 () Bool)

(declare-fun tb!262245 () Bool)

(assert (=> (and start!712800 (= f!883 f!883) t!385423) tb!262245))

(assert (=> b!7314871 t!385423))

(declare-fun result!352984 () Bool)

(declare-fun b_and!351421 () Bool)

(assert (= b_and!351419 (and (=> t!385423 result!352984) b_and!351421)))

(declare-fun m!7978930 () Bool)

(assert (=> b!7314874 m!7978930))

(declare-fun m!7978932 () Bool)

(assert (=> b!7314875 m!7978932))

(assert (=> b!7314875 m!7978932))

(declare-fun m!7978934 () Bool)

(assert (=> b!7314875 m!7978934))

(declare-fun m!7978936 () Bool)

(assert (=> b!7314875 m!7978936))

(assert (=> b!7314872 m!7978930))

(declare-fun m!7978938 () Bool)

(assert (=> b!7314872 m!7978938))

(declare-fun m!7978940 () Bool)

(assert (=> b!7314867 m!7978940))

(declare-fun m!7978942 () Bool)

(assert (=> b!7314876 m!7978942))

(declare-fun m!7978944 () Bool)

(assert (=> b!7314876 m!7978944))

(declare-fun m!7978946 () Bool)

(assert (=> b!7314876 m!7978946))

(assert (=> b!7314871 m!7978940))

(declare-fun m!7978948 () Bool)

(assert (=> b!7314871 m!7978948))

(declare-fun m!7978950 () Bool)

(assert (=> b!7314871 m!7978950))

(declare-fun m!7978952 () Bool)

(assert (=> b!7314871 m!7978952))

(assert (=> b!7314871 m!7978948))

(declare-fun m!7978954 () Bool)

(assert (=> b!7314871 m!7978954))

(declare-fun m!7978956 () Bool)

(assert (=> b!7314871 m!7978956))

(declare-fun m!7978958 () Bool)

(assert (=> b!7314871 m!7978958))

(declare-fun m!7978960 () Bool)

(assert (=> start!712800 m!7978960))

(declare-fun m!7978962 () Bool)

(assert (=> b!7314868 m!7978962))

(declare-fun m!7978964 () Bool)

(assert (=> b!7314868 m!7978964))

(check-sat (not setNonEmpty!54217) (not b!7314869) (not b!7314872) tp_is_empty!47521 (not b!7314871) (not b!7314874) (not b_lambda!282489) b_and!351421 (not b!7314876) (not b_next!134807) tp_is_empty!47523 (not b!7314868) (not b!7314875) (not tb!262245) (not b!7314867))
(check-sat b_and!351421 (not b_next!134807))
