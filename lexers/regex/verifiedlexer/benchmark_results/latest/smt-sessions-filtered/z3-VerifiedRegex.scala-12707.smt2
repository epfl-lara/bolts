; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!702568 () Bool)

(assert start!702568)

(declare-fun b!7236111 () Bool)

(assert (=> b!7236111 true))

(declare-fun b!7236101 () Bool)

(assert (=> b!7236101 true))

(declare-fun b!7236098 () Bool)

(declare-fun e!4338128 () Bool)

(declare-fun e!4338125 () Bool)

(assert (=> b!7236098 (= e!4338128 e!4338125)))

(declare-fun res!2935623 () Bool)

(assert (=> b!7236098 (=> res!2935623 e!4338125)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!37320 0))(
  ( (C!37321 (val!28608 Int)) )
))
(declare-datatypes ((Regex!18523 0))(
  ( (ElementMatch!18523 (c!1343063 C!37320)) (Concat!27368 (regOne!37558 Regex!18523) (regTwo!37558 Regex!18523)) (EmptyExpr!18523) (Star!18523 (reg!18852 Regex!18523)) (EmptyLang!18523) (Union!18523 (regOne!37559 Regex!18523) (regTwo!37559 Regex!18523)) )
))
(declare-datatypes ((List!70177 0))(
  ( (Nil!70053) (Cons!70053 (h!76501 Regex!18523) (t!384228 List!70177)) )
))
(declare-datatypes ((Context!14926 0))(
  ( (Context!14927 (exprs!7963 List!70177)) )
))
(declare-fun lt!2575726 () (InoxSet Context!14926))

(declare-fun lt!2575736 () Context!14926)

(declare-datatypes ((List!70178 0))(
  ( (Nil!70054) (Cons!70054 (h!76502 C!37320) (t!384229 List!70178)) )
))
(declare-fun s1!1971 () List!70178)

(declare-fun lt!2575733 () (InoxSet Context!14926))

(declare-fun derivationStepZipperUp!2397 (Context!14926 C!37320) (InoxSet Context!14926))

(assert (=> b!7236098 (= res!2935623 (not (= lt!2575726 ((_ map or) lt!2575733 (derivationStepZipperUp!2397 lt!2575736 (h!76502 s1!1971))))))))

(declare-fun ct1!232 () Context!14926)

(declare-fun lambda!440391 () Int)

(declare-datatypes ((Unit!163584 0))(
  ( (Unit!163585) )
))
(declare-fun lt!2575724 () Unit!163584)

(declare-fun ct2!328 () Context!14926)

(declare-fun lemmaConcatPreservesForall!1332 (List!70177 List!70177 Int) Unit!163584)

(assert (=> b!7236098 (= lt!2575724 (lemmaConcatPreservesForall!1332 (exprs!7963 ct1!232) (exprs!7963 ct2!328) lambda!440391))))

(declare-fun b!7236099 () Bool)

(declare-fun e!4338124 () Bool)

(declare-fun tp_is_empty!46511 () Bool)

(declare-fun tp!2034598 () Bool)

(assert (=> b!7236099 (= e!4338124 (and tp_is_empty!46511 tp!2034598))))

(declare-fun b!7236100 () Bool)

(declare-fun res!2935616 () Bool)

(assert (=> b!7236100 (=> res!2935616 e!4338128)))

(declare-fun lt!2575737 () (InoxSet Context!14926))

(declare-fun lt!2575730 () Context!14926)

(declare-fun lt!2575739 () (InoxSet Context!14926))

(assert (=> b!7236100 (= res!2935616 (not (= lt!2575737 ((_ map or) lt!2575739 (derivationStepZipperUp!2397 lt!2575730 (h!76502 s1!1971))))))))

(declare-fun e!4338119 () Bool)

(assert (=> b!7236101 (= e!4338119 e!4338128)))

(declare-fun res!2935615 () Bool)

(assert (=> b!7236101 (=> res!2935615 e!4338128)))

(declare-fun nullable!7836 (Regex!18523) Bool)

(assert (=> b!7236101 (= res!2935615 (not (nullable!7836 (h!76501 (exprs!7963 ct1!232)))))))

(declare-fun lt!2575718 () Context!14926)

(declare-fun lt!2575722 () (InoxSet Context!14926))

(declare-fun lambda!440393 () Int)

(declare-fun flatMap!2727 ((InoxSet Context!14926) Int) (InoxSet Context!14926))

(assert (=> b!7236101 (= (flatMap!2727 lt!2575722 lambda!440393) (derivationStepZipperUp!2397 lt!2575718 (h!76502 s1!1971)))))

(declare-fun lt!2575717 () Unit!163584)

(declare-fun lemmaFlatMapOnSingletonSet!2154 ((InoxSet Context!14926) Context!14926 Int) Unit!163584)

(assert (=> b!7236101 (= lt!2575717 (lemmaFlatMapOnSingletonSet!2154 lt!2575722 lt!2575718 lambda!440393))))

(declare-fun lt!2575728 () Unit!163584)

(assert (=> b!7236101 (= lt!2575728 (lemmaConcatPreservesForall!1332 (exprs!7963 ct1!232) (exprs!7963 ct2!328) lambda!440391))))

(declare-fun lt!2575731 () (InoxSet Context!14926))

(assert (=> b!7236101 (= (flatMap!2727 lt!2575731 lambda!440393) (derivationStepZipperUp!2397 ct1!232 (h!76502 s1!1971)))))

(declare-fun lt!2575719 () Unit!163584)

(assert (=> b!7236101 (= lt!2575719 (lemmaFlatMapOnSingletonSet!2154 lt!2575731 ct1!232 lambda!440393))))

(declare-fun derivationStepZipperDown!2567 (Regex!18523 Context!14926 C!37320) (InoxSet Context!14926))

(assert (=> b!7236101 (= lt!2575733 (derivationStepZipperDown!2567 (h!76501 (exprs!7963 ct1!232)) lt!2575736 (h!76502 s1!1971)))))

(declare-fun lt!2575735 () List!70177)

(declare-fun tail!14160 (List!70177) List!70177)

(assert (=> b!7236101 (= lt!2575736 (Context!14927 (tail!14160 lt!2575735)))))

(declare-fun b!7236102 () Bool)

(declare-fun e!4338123 () Bool)

(declare-fun e!4338130 () Bool)

(assert (=> b!7236102 (= e!4338123 e!4338130)))

(declare-fun res!2935626 () Bool)

(assert (=> b!7236102 (=> (not res!2935626) (not e!4338130))))

(get-info :version)

(assert (=> b!7236102 (= res!2935626 (and (not ((_ is Nil!70053) (exprs!7963 ct1!232))) ((_ is Cons!70054) s1!1971)))))

(assert (=> b!7236102 (= lt!2575722 (store ((as const (Array Context!14926 Bool)) false) lt!2575718 true))))

(assert (=> b!7236102 (= lt!2575718 (Context!14927 lt!2575735))))

(declare-fun ++!16346 (List!70177 List!70177) List!70177)

(assert (=> b!7236102 (= lt!2575735 (++!16346 (exprs!7963 ct1!232) (exprs!7963 ct2!328)))))

(declare-fun lt!2575732 () Unit!163584)

(assert (=> b!7236102 (= lt!2575732 (lemmaConcatPreservesForall!1332 (exprs!7963 ct1!232) (exprs!7963 ct2!328) lambda!440391))))

(declare-fun b!7236103 () Bool)

(declare-fun res!2935617 () Bool)

(assert (=> b!7236103 (=> res!2935617 e!4338128)))

(declare-fun lt!2575723 () (InoxSet Context!14926))

(assert (=> b!7236103 (= res!2935617 (not (= lt!2575723 lt!2575737)))))

(declare-fun b!7236104 () Bool)

(declare-fun e!4338122 () Bool)

(declare-fun tp!2034599 () Bool)

(assert (=> b!7236104 (= e!4338122 tp!2034599)))

(declare-fun b!7236105 () Bool)

(declare-fun e!4338126 () Bool)

(declare-fun e!4338127 () Bool)

(assert (=> b!7236105 (= e!4338126 e!4338127)))

(declare-fun res!2935620 () Bool)

(assert (=> b!7236105 (=> res!2935620 e!4338127)))

(declare-fun isEmpty!40374 (List!70177) Bool)

(assert (=> b!7236105 (= res!2935620 (isEmpty!40374 (exprs!7963 ct1!232)))))

(assert (=> b!7236105 (= lt!2575737 (derivationStepZipperUp!2397 ct1!232 (h!76502 s1!1971)))))

(declare-fun lt!2575725 () Unit!163584)

(declare-fun lt!2575716 () Context!14926)

(assert (=> b!7236105 (= lt!2575725 (lemmaConcatPreservesForall!1332 (exprs!7963 lt!2575716) (exprs!7963 ct2!328) lambda!440391))))

(declare-fun s2!1849 () List!70178)

(declare-fun matchZipper!3433 ((InoxSet Context!14926) List!70178) Bool)

(declare-fun ++!16347 (List!70178 List!70178) List!70178)

(assert (=> b!7236105 (matchZipper!3433 (store ((as const (Array Context!14926 Bool)) false) (Context!14927 (++!16346 (exprs!7963 lt!2575716) (exprs!7963 ct2!328))) true) (++!16347 (t!384229 s1!1971) s2!1849))))

(declare-fun lt!2575721 () Unit!163584)

(assert (=> b!7236105 (= lt!2575721 (lemmaConcatPreservesForall!1332 (exprs!7963 lt!2575716) (exprs!7963 ct2!328) lambda!440391))))

(declare-fun lt!2575738 () Unit!163584)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!314 (Context!14926 Context!14926 List!70178 List!70178) Unit!163584)

(assert (=> b!7236105 (= lt!2575738 (lemmaConcatenateContextMatchesConcatOfStrings!314 lt!2575716 ct2!328 (t!384229 s1!1971) s2!1849))))

(declare-fun lambda!440392 () Int)

(declare-fun getWitness!2058 ((InoxSet Context!14926) Int) Context!14926)

(assert (=> b!7236105 (= lt!2575716 (getWitness!2058 lt!2575723 lambda!440392))))

(declare-fun b!7236106 () Bool)

(assert (=> b!7236106 (= e!4338125 (not (= (exprs!7963 ct1!232) Nil!70053)))))

(declare-fun res!2935621 () Bool)

(assert (=> start!702568 (=> (not res!2935621) (not e!4338123))))

(assert (=> start!702568 (= res!2935621 (matchZipper!3433 lt!2575731 s1!1971))))

(assert (=> start!702568 (= lt!2575731 (store ((as const (Array Context!14926 Bool)) false) ct1!232 true))))

(assert (=> start!702568 e!4338123))

(declare-fun inv!89317 (Context!14926) Bool)

(assert (=> start!702568 (and (inv!89317 ct1!232) e!4338122)))

(declare-fun e!4338120 () Bool)

(assert (=> start!702568 e!4338120))

(assert (=> start!702568 e!4338124))

(declare-fun e!4338129 () Bool)

(assert (=> start!702568 (and (inv!89317 ct2!328) e!4338129)))

(declare-fun b!7236107 () Bool)

(declare-fun tp!2034597 () Bool)

(assert (=> b!7236107 (= e!4338120 (and tp_is_empty!46511 tp!2034597))))

(declare-fun b!7236108 () Bool)

(declare-fun tp!2034600 () Bool)

(assert (=> b!7236108 (= e!4338129 tp!2034600)))

(declare-fun b!7236109 () Bool)

(assert (=> b!7236109 (= e!4338127 e!4338119)))

(declare-fun res!2935622 () Bool)

(assert (=> b!7236109 (=> res!2935622 e!4338119)))

(assert (=> b!7236109 (= res!2935622 (isEmpty!40374 lt!2575735))))

(declare-fun lt!2575734 () Unit!163584)

(assert (=> b!7236109 (= lt!2575734 (lemmaConcatPreservesForall!1332 (exprs!7963 ct1!232) (exprs!7963 ct2!328) lambda!440391))))

(assert (=> b!7236109 (= lt!2575726 (derivationStepZipperUp!2397 lt!2575718 (h!76502 s1!1971)))))

(declare-fun lt!2575727 () Unit!163584)

(assert (=> b!7236109 (= lt!2575727 (lemmaConcatPreservesForall!1332 (exprs!7963 ct1!232) (exprs!7963 ct2!328) lambda!440391))))

(assert (=> b!7236109 (= lt!2575739 (derivationStepZipperDown!2567 (h!76501 (exprs!7963 ct1!232)) lt!2575730 (h!76502 s1!1971)))))

(assert (=> b!7236109 (= lt!2575730 (Context!14927 (tail!14160 (exprs!7963 ct1!232))))))

(declare-fun b!7236110 () Bool)

(declare-fun e!4338121 () Bool)

(assert (=> b!7236110 (= e!4338130 e!4338121)))

(declare-fun res!2935624 () Bool)

(assert (=> b!7236110 (=> (not res!2935624) (not e!4338121))))

(assert (=> b!7236110 (= res!2935624 (matchZipper!3433 lt!2575723 (t!384229 s1!1971)))))

(declare-fun derivationStepZipper!3315 ((InoxSet Context!14926) C!37320) (InoxSet Context!14926))

(assert (=> b!7236110 (= lt!2575723 (derivationStepZipper!3315 lt!2575731 (h!76502 s1!1971)))))

(assert (=> b!7236111 (= e!4338121 (not e!4338126))))

(declare-fun res!2935619 () Bool)

(assert (=> b!7236111 (=> res!2935619 e!4338126)))

(declare-fun exists!4189 ((InoxSet Context!14926) Int) Bool)

(assert (=> b!7236111 (= res!2935619 (not (exists!4189 lt!2575723 lambda!440392)))))

(declare-datatypes ((List!70179 0))(
  ( (Nil!70055) (Cons!70055 (h!76503 Context!14926) (t!384230 List!70179)) )
))
(declare-fun lt!2575720 () List!70179)

(declare-fun exists!4190 (List!70179 Int) Bool)

(assert (=> b!7236111 (exists!4190 lt!2575720 lambda!440392)))

(declare-fun lt!2575729 () Unit!163584)

(declare-fun lemmaZipperMatchesExistsMatchingContext!666 (List!70179 List!70178) Unit!163584)

(assert (=> b!7236111 (= lt!2575729 (lemmaZipperMatchesExistsMatchingContext!666 lt!2575720 (t!384229 s1!1971)))))

(declare-fun toList!11380 ((InoxSet Context!14926)) List!70179)

(assert (=> b!7236111 (= lt!2575720 (toList!11380 lt!2575723))))

(declare-fun b!7236112 () Bool)

(declare-fun res!2935618 () Bool)

(assert (=> b!7236112 (=> (not res!2935618) (not e!4338123))))

(assert (=> b!7236112 (= res!2935618 (matchZipper!3433 (store ((as const (Array Context!14926 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7236113 () Bool)

(declare-fun res!2935625 () Bool)

(assert (=> b!7236113 (=> res!2935625 e!4338125)))

(assert (=> b!7236113 (= res!2935625 (not (= (derivationStepZipper!3315 lt!2575722 (h!76502 s1!1971)) lt!2575726)))))

(assert (= (and start!702568 res!2935621) b!7236112))

(assert (= (and b!7236112 res!2935618) b!7236102))

(assert (= (and b!7236102 res!2935626) b!7236110))

(assert (= (and b!7236110 res!2935624) b!7236111))

(assert (= (and b!7236111 (not res!2935619)) b!7236105))

(assert (= (and b!7236105 (not res!2935620)) b!7236109))

(assert (= (and b!7236109 (not res!2935622)) b!7236101))

(assert (= (and b!7236101 (not res!2935615)) b!7236100))

(assert (= (and b!7236100 (not res!2935616)) b!7236103))

(assert (= (and b!7236103 (not res!2935617)) b!7236098))

(assert (= (and b!7236098 (not res!2935623)) b!7236113))

(assert (= (and b!7236113 (not res!2935625)) b!7236106))

(assert (= start!702568 b!7236104))

(assert (= (and start!702568 ((_ is Cons!70054) s1!1971)) b!7236107))

(assert (= (and start!702568 ((_ is Cons!70054) s2!1849)) b!7236099))

(assert (= start!702568 b!7236108))

(declare-fun m!7906940 () Bool)

(assert (=> b!7236100 m!7906940))

(declare-fun m!7906942 () Bool)

(assert (=> b!7236111 m!7906942))

(declare-fun m!7906944 () Bool)

(assert (=> b!7236111 m!7906944))

(declare-fun m!7906946 () Bool)

(assert (=> b!7236111 m!7906946))

(declare-fun m!7906948 () Bool)

(assert (=> b!7236111 m!7906948))

(declare-fun m!7906950 () Bool)

(assert (=> b!7236109 m!7906950))

(declare-fun m!7906952 () Bool)

(assert (=> b!7236109 m!7906952))

(declare-fun m!7906954 () Bool)

(assert (=> b!7236109 m!7906954))

(declare-fun m!7906956 () Bool)

(assert (=> b!7236109 m!7906956))

(declare-fun m!7906958 () Bool)

(assert (=> b!7236109 m!7906958))

(assert (=> b!7236109 m!7906950))

(declare-fun m!7906960 () Bool)

(assert (=> b!7236113 m!7906960))

(declare-fun m!7906962 () Bool)

(assert (=> b!7236112 m!7906962))

(assert (=> b!7236112 m!7906962))

(declare-fun m!7906964 () Bool)

(assert (=> b!7236112 m!7906964))

(declare-fun m!7906966 () Bool)

(assert (=> b!7236105 m!7906966))

(declare-fun m!7906968 () Bool)

(assert (=> b!7236105 m!7906968))

(declare-fun m!7906970 () Bool)

(assert (=> b!7236105 m!7906970))

(declare-fun m!7906972 () Bool)

(assert (=> b!7236105 m!7906972))

(declare-fun m!7906974 () Bool)

(assert (=> b!7236105 m!7906974))

(declare-fun m!7906976 () Bool)

(assert (=> b!7236105 m!7906976))

(declare-fun m!7906978 () Bool)

(assert (=> b!7236105 m!7906978))

(assert (=> b!7236105 m!7906974))

(declare-fun m!7906980 () Bool)

(assert (=> b!7236105 m!7906980))

(declare-fun m!7906982 () Bool)

(assert (=> b!7236105 m!7906982))

(assert (=> b!7236105 m!7906978))

(assert (=> b!7236105 m!7906976))

(declare-fun m!7906984 () Bool)

(assert (=> b!7236102 m!7906984))

(declare-fun m!7906986 () Bool)

(assert (=> b!7236102 m!7906986))

(assert (=> b!7236102 m!7906950))

(declare-fun m!7906988 () Bool)

(assert (=> b!7236101 m!7906988))

(declare-fun m!7906990 () Bool)

(assert (=> b!7236101 m!7906990))

(declare-fun m!7906992 () Bool)

(assert (=> b!7236101 m!7906992))

(assert (=> b!7236101 m!7906954))

(declare-fun m!7906994 () Bool)

(assert (=> b!7236101 m!7906994))

(declare-fun m!7906996 () Bool)

(assert (=> b!7236101 m!7906996))

(assert (=> b!7236101 m!7906972))

(declare-fun m!7906998 () Bool)

(assert (=> b!7236101 m!7906998))

(declare-fun m!7907000 () Bool)

(assert (=> b!7236101 m!7907000))

(assert (=> b!7236101 m!7906950))

(declare-fun m!7907002 () Bool)

(assert (=> start!702568 m!7907002))

(declare-fun m!7907004 () Bool)

(assert (=> start!702568 m!7907004))

(declare-fun m!7907006 () Bool)

(assert (=> start!702568 m!7907006))

(declare-fun m!7907008 () Bool)

(assert (=> start!702568 m!7907008))

(declare-fun m!7907010 () Bool)

(assert (=> b!7236098 m!7907010))

(assert (=> b!7236098 m!7906950))

(declare-fun m!7907012 () Bool)

(assert (=> b!7236110 m!7907012))

(declare-fun m!7907014 () Bool)

(assert (=> b!7236110 m!7907014))

(check-sat (not b!7236100) (not b!7236110) (not b!7236113) (not b!7236112) (not b!7236101) (not b!7236109) (not b!7236102) (not b!7236107) (not b!7236105) (not b!7236099) tp_is_empty!46511 (not b!7236104) (not b!7236111) (not b!7236108) (not start!702568) (not b!7236098))
(check-sat)
