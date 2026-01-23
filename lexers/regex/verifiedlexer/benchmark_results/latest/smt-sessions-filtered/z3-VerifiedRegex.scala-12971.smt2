; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!713492 () Bool)

(assert start!713492)

(declare-fun b_free!134061 () Bool)

(declare-fun b_next!134851 () Bool)

(assert (=> start!713492 (= b_free!134061 (not b_next!134851))))

(declare-fun tp!2078032 () Bool)

(declare-fun b_and!351469 () Bool)

(assert (=> start!713492 (= tp!2078032 b_and!351469)))

(declare-fun setNonEmpty!54908 () Bool)

(declare-fun setRes!54909 () Bool)

(declare-fun tp!2078034 () Bool)

(declare-fun tp_is_empty!47707 () Bool)

(assert (=> setNonEmpty!54908 (= setRes!54909 (and tp!2078034 tp_is_empty!47707))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!907 0))(
  ( (A!908 (val!29227 Int)) )
))
(declare-fun s2!427 () (InoxSet A!907))

(declare-fun setElem!54908 () A!907)

(declare-fun setRest!54908 () (InoxSet A!907))

(assert (=> setNonEmpty!54908 (= s2!427 ((_ map or) (store ((as const (Array A!907 Bool)) false) setElem!54908 true) setRest!54908))))

(declare-fun b!7317872 () Bool)

(declare-fun e!4381029 () Bool)

(declare-fun tp_is_empty!47705 () Bool)

(declare-fun tp!2078033 () Bool)

(assert (=> b!7317872 (= e!4381029 (and tp_is_empty!47705 tp!2078033))))

(declare-fun setIsEmpty!54908 () Bool)

(assert (=> setIsEmpty!54908 setRes!54909))

(declare-fun b!7317873 () Bool)

(declare-fun res!2957056 () Bool)

(declare-fun e!4381028 () Bool)

(assert (=> b!7317873 (=> (not res!2957056) (not e!4381028))))

(declare-datatypes ((B!3609 0))(
  ( (B!3610 (val!29228 Int)) )
))
(declare-datatypes ((List!71368 0))(
  ( (Nil!71244) (Cons!71244 (h!77692 B!3609) (t!385600 List!71368)) )
))
(declare-fun l2!808 () List!71368)

(get-info :version)

(assert (=> b!7317873 (= res!2957056 ((_ is Cons!71244) l2!808))))

(declare-fun b!7317874 () Bool)

(declare-fun e!4381030 () Bool)

(assert (=> b!7317874 (= e!4381030 e!4381028)))

(declare-fun res!2957054 () Bool)

(assert (=> b!7317874 (=> (not res!2957054) (not e!4381028))))

(declare-fun lt!2602973 () List!71368)

(declare-fun subseq!865 (List!71368 List!71368) Bool)

(assert (=> b!7317874 (= res!2957054 (subseq!865 l2!808 lt!2602973))))

(declare-fun lt!2602969 () (InoxSet B!3609))

(declare-fun toList!11655 ((InoxSet B!3609)) List!71368)

(assert (=> b!7317874 (= lt!2602973 (toList!11655 lt!2602969))))

(declare-fun s1!456 () (InoxSet A!907))

(declare-fun f!803 () Int)

(declare-fun flatMap!3073 ((InoxSet A!907) Int) (InoxSet B!3609))

(assert (=> b!7317874 (= lt!2602969 (flatMap!3073 ((_ map or) s1!456 s2!427) f!803))))

(declare-fun setIsEmpty!54909 () Bool)

(declare-fun setRes!54908 () Bool)

(assert (=> setIsEmpty!54909 setRes!54908))

(declare-fun res!2957055 () Bool)

(assert (=> start!713492 (=> (not res!2957055) (not e!4381030))))

(declare-fun l1!819 () List!71368)

(declare-fun lt!2602971 () (InoxSet B!3609))

(assert (=> start!713492 (= res!2957055 (= l1!819 (toList!11655 lt!2602971)))))

(assert (=> start!713492 (= lt!2602971 ((_ map or) (flatMap!3073 s1!456 f!803) (flatMap!3073 s2!427 f!803)))))

(assert (=> start!713492 e!4381030))

(assert (=> start!713492 e!4381029))

(declare-fun condSetEmpty!54909 () Bool)

(assert (=> start!713492 (= condSetEmpty!54909 (= s1!456 ((as const (Array A!907 Bool)) false)))))

(assert (=> start!713492 setRes!54908))

(assert (=> start!713492 tp!2078032))

(declare-fun e!4381031 () Bool)

(assert (=> start!713492 e!4381031))

(declare-fun condSetEmpty!54908 () Bool)

(assert (=> start!713492 (= condSetEmpty!54908 (= s2!427 ((as const (Array A!907 Bool)) false)))))

(assert (=> start!713492 setRes!54909))

(declare-fun b!7317875 () Bool)

(declare-fun tp!2078031 () Bool)

(assert (=> b!7317875 (= e!4381031 (and tp_is_empty!47705 tp!2078031))))

(declare-fun b!7317876 () Bool)

(assert (=> b!7317876 (= e!4381028 (not true))))

(declare-datatypes ((Unit!164727 0))(
  ( (Unit!164728) )
))
(declare-fun lt!2602970 () Unit!164727)

(declare-fun subseqTail!88 (List!71368 List!71368) Unit!164727)

(assert (=> b!7317876 (= lt!2602970 (subseqTail!88 l2!808 lt!2602973))))

(assert (=> b!7317876 (= (select lt!2602971 (h!77692 l2!808)) (select lt!2602969 (h!77692 l2!808)))))

(declare-fun lt!2602972 () Unit!164727)

(declare-fun lemmaFlatMapAssociativeElem!4 ((InoxSet A!907) (InoxSet A!907) Int B!3609) Unit!164727)

(assert (=> b!7317876 (= lt!2602972 (lemmaFlatMapAssociativeElem!4 s1!456 s2!427 f!803 (h!77692 l2!808)))))

(declare-fun setNonEmpty!54909 () Bool)

(declare-fun tp!2078035 () Bool)

(assert (=> setNonEmpty!54909 (= setRes!54908 (and tp!2078035 tp_is_empty!47707))))

(declare-fun setElem!54909 () A!907)

(declare-fun setRest!54909 () (InoxSet A!907))

(assert (=> setNonEmpty!54909 (= s1!456 ((_ map or) (store ((as const (Array A!907 Bool)) false) setElem!54909 true) setRest!54909))))

(assert (= (and start!713492 res!2957055) b!7317874))

(assert (= (and b!7317874 res!2957054) b!7317873))

(assert (= (and b!7317873 res!2957056) b!7317876))

(assert (= (and start!713492 ((_ is Cons!71244) l2!808)) b!7317872))

(assert (= (and start!713492 condSetEmpty!54909) setIsEmpty!54909))

(assert (= (and start!713492 (not condSetEmpty!54909)) setNonEmpty!54909))

(assert (= (and start!713492 ((_ is Cons!71244) l1!819)) b!7317875))

(assert (= (and start!713492 condSetEmpty!54908) setIsEmpty!54908))

(assert (= (and start!713492 (not condSetEmpty!54908)) setNonEmpty!54908))

(declare-fun m!7982622 () Bool)

(assert (=> b!7317874 m!7982622))

(declare-fun m!7982624 () Bool)

(assert (=> b!7317874 m!7982624))

(declare-fun m!7982626 () Bool)

(assert (=> b!7317874 m!7982626))

(declare-fun m!7982628 () Bool)

(assert (=> start!713492 m!7982628))

(declare-fun m!7982630 () Bool)

(assert (=> start!713492 m!7982630))

(declare-fun m!7982632 () Bool)

(assert (=> start!713492 m!7982632))

(declare-fun m!7982634 () Bool)

(assert (=> b!7317876 m!7982634))

(declare-fun m!7982636 () Bool)

(assert (=> b!7317876 m!7982636))

(declare-fun m!7982638 () Bool)

(assert (=> b!7317876 m!7982638))

(declare-fun m!7982640 () Bool)

(assert (=> b!7317876 m!7982640))

(check-sat (not b!7317875) (not setNonEmpty!54908) (not setNonEmpty!54909) b_and!351469 (not b!7317876) tp_is_empty!47707 tp_is_empty!47705 (not start!713492) (not b!7317874) (not b_next!134851) (not b!7317872))
(check-sat b_and!351469 (not b_next!134851))
