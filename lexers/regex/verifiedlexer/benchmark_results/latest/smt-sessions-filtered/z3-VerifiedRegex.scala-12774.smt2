; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!706240 () Bool)

(assert start!706240)

(declare-fun b!7253933 () Bool)

(assert (=> b!7253933 true))

(declare-fun b!7253927 () Bool)

(assert (=> b!7253927 true))

(declare-fun b!7253923 () Bool)

(declare-fun e!4349570 () Bool)

(declare-fun e!4349571 () Bool)

(assert (=> b!7253923 (= e!4349570 e!4349571)))

(declare-fun res!2941815 () Bool)

(assert (=> b!7253923 (=> res!2941815 e!4349571)))

(declare-datatypes ((C!37588 0))(
  ( (C!37589 (val!28742 Int)) )
))
(declare-datatypes ((Regex!18657 0))(
  ( (ElementMatch!18657 (c!1348463 C!37588)) (Concat!27502 (regOne!37826 Regex!18657) (regTwo!37826 Regex!18657)) (EmptyExpr!18657) (Star!18657 (reg!18986 Regex!18657)) (EmptyLang!18657) (Union!18657 (regOne!37827 Regex!18657) (regTwo!37827 Regex!18657)) )
))
(declare-datatypes ((List!70551 0))(
  ( (Nil!70427) (Cons!70427 (h!76875 Regex!18657) (t!384611 List!70551)) )
))
(declare-datatypes ((Context!15194 0))(
  ( (Context!15195 (exprs!8097 List!70551)) )
))
(declare-fun ct1!232 () Context!15194)

(declare-fun isEmpty!40557 (List!70551) Bool)

(assert (=> b!7253923 (= res!2941815 (isEmpty!40557 (exprs!8097 ct1!232)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2586269 () (InoxSet Context!15194))

(declare-datatypes ((List!70552 0))(
  ( (Nil!70428) (Cons!70428 (h!76876 C!37588) (t!384612 List!70552)) )
))
(declare-fun s1!1971 () List!70552)

(declare-fun derivationStepZipperUp!2481 (Context!15194 C!37588) (InoxSet Context!15194))

(assert (=> b!7253923 (= lt!2586269 (derivationStepZipperUp!2481 ct1!232 (h!76876 s1!1971)))))

(declare-fun lt!2586274 () Context!15194)

(declare-fun lambda!444764 () Int)

(declare-datatypes ((Unit!163903 0))(
  ( (Unit!163904) )
))
(declare-fun lt!2586289 () Unit!163903)

(declare-fun ct2!328 () Context!15194)

(declare-fun lemmaConcatPreservesForall!1464 (List!70551 List!70551 Int) Unit!163903)

(assert (=> b!7253923 (= lt!2586289 (lemmaConcatPreservesForall!1464 (exprs!8097 lt!2586274) (exprs!8097 ct2!328) lambda!444764))))

(declare-fun s2!1849 () List!70552)

(declare-fun matchZipper!3567 ((InoxSet Context!15194) List!70552) Bool)

(declare-fun ++!16576 (List!70551 List!70551) List!70551)

(declare-fun ++!16577 (List!70552 List!70552) List!70552)

(assert (=> b!7253923 (matchZipper!3567 (store ((as const (Array Context!15194 Bool)) false) (Context!15195 (++!16576 (exprs!8097 lt!2586274) (exprs!8097 ct2!328))) true) (++!16577 (t!384612 s1!1971) s2!1849))))

(declare-fun lt!2586288 () Unit!163903)

(assert (=> b!7253923 (= lt!2586288 (lemmaConcatPreservesForall!1464 (exprs!8097 lt!2586274) (exprs!8097 ct2!328) lambda!444764))))

(declare-fun lt!2586284 () Unit!163903)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!402 (Context!15194 Context!15194 List!70552 List!70552) Unit!163903)

(assert (=> b!7253923 (= lt!2586284 (lemmaConcatenateContextMatchesConcatOfStrings!402 lt!2586274 ct2!328 (t!384612 s1!1971) s2!1849))))

(declare-fun lt!2586268 () (InoxSet Context!15194))

(declare-fun lambda!444765 () Int)

(declare-fun getWitness!2222 ((InoxSet Context!15194) Int) Context!15194)

(assert (=> b!7253923 (= lt!2586274 (getWitness!2222 lt!2586268 lambda!444765))))

(declare-fun b!7253924 () Bool)

(declare-fun e!4349569 () Bool)

(declare-fun lt!2586276 () (InoxSet Context!15194))

(assert (=> b!7253924 (= e!4349569 (matchZipper!3567 lt!2586276 (t!384612 s1!1971)))))

(declare-fun b!7253925 () Bool)

(declare-fun res!2941824 () Bool)

(declare-fun e!4349568 () Bool)

(assert (=> b!7253925 (=> res!2941824 e!4349568)))

(declare-fun lt!2586266 () (InoxSet Context!15194))

(declare-fun lt!2586287 () (InoxSet Context!15194))

(declare-fun derivationStepZipper!3435 ((InoxSet Context!15194) C!37588) (InoxSet Context!15194))

(assert (=> b!7253925 (= res!2941824 (not (= (derivationStepZipper!3435 lt!2586287 (h!76876 s1!1971)) lt!2586266)))))

(declare-fun b!7253926 () Bool)

(declare-fun e!4349565 () Bool)

(declare-fun tp!2037898 () Bool)

(assert (=> b!7253926 (= e!4349565 tp!2037898)))

(declare-fun e!4349562 () Bool)

(declare-fun e!4349561 () Bool)

(assert (=> b!7253927 (= e!4349562 e!4349561)))

(declare-fun res!2941822 () Bool)

(assert (=> b!7253927 (=> res!2941822 e!4349561)))

(declare-fun nullable!7917 (Regex!18657) Bool)

(assert (=> b!7253927 (= res!2941822 (not (nullable!7917 (h!76875 (exprs!8097 ct1!232)))))))

(declare-fun lambda!444766 () Int)

(declare-fun lt!2586291 () Context!15194)

(declare-fun flatMap!2822 ((InoxSet Context!15194) Int) (InoxSet Context!15194))

(assert (=> b!7253927 (= (flatMap!2822 lt!2586287 lambda!444766) (derivationStepZipperUp!2481 lt!2586291 (h!76876 s1!1971)))))

(declare-fun lt!2586278 () Unit!163903)

(declare-fun lemmaFlatMapOnSingletonSet!2226 ((InoxSet Context!15194) Context!15194 Int) Unit!163903)

(assert (=> b!7253927 (= lt!2586278 (lemmaFlatMapOnSingletonSet!2226 lt!2586287 lt!2586291 lambda!444766))))

(declare-fun lt!2586267 () Unit!163903)

(assert (=> b!7253927 (= lt!2586267 (lemmaConcatPreservesForall!1464 (exprs!8097 ct1!232) (exprs!8097 ct2!328) lambda!444764))))

(declare-fun lt!2586271 () (InoxSet Context!15194))

(assert (=> b!7253927 (= (flatMap!2822 lt!2586271 lambda!444766) (derivationStepZipperUp!2481 ct1!232 (h!76876 s1!1971)))))

(declare-fun lt!2586273 () Unit!163903)

(assert (=> b!7253927 (= lt!2586273 (lemmaFlatMapOnSingletonSet!2226 lt!2586271 ct1!232 lambda!444766))))

(declare-fun lt!2586285 () Context!15194)

(declare-fun lt!2586286 () (InoxSet Context!15194))

(declare-fun derivationStepZipperDown!2651 (Regex!18657 Context!15194 C!37588) (InoxSet Context!15194))

(assert (=> b!7253927 (= lt!2586286 (derivationStepZipperDown!2651 (h!76875 (exprs!8097 ct1!232)) lt!2586285 (h!76876 s1!1971)))))

(declare-fun lt!2586277 () List!70551)

(declare-fun tail!14339 (List!70551) List!70551)

(assert (=> b!7253927 (= lt!2586285 (Context!15195 (tail!14339 lt!2586277)))))

(declare-fun b!7253928 () Bool)

(declare-fun e!4349566 () Bool)

(declare-fun tp_is_empty!46779 () Bool)

(declare-fun tp!2037897 () Bool)

(assert (=> b!7253928 (= e!4349566 (and tp_is_empty!46779 tp!2037897))))

(declare-fun b!7253929 () Bool)

(assert (=> b!7253929 (= e!4349568 true)))

(declare-fun lt!2586282 () Unit!163903)

(assert (=> b!7253929 (= lt!2586282 (lemmaConcatPreservesForall!1464 (exprs!8097 ct1!232) (exprs!8097 ct2!328) lambda!444764))))

(declare-fun lt!2586265 () (InoxSet Context!15194))

(assert (=> b!7253929 (= (matchZipper!3567 lt!2586265 (t!384612 s1!1971)) e!4349569)))

(declare-fun res!2941821 () Bool)

(assert (=> b!7253929 (=> res!2941821 e!4349569)))

(declare-fun lt!2586264 () (InoxSet Context!15194))

(assert (=> b!7253929 (= res!2941821 (matchZipper!3567 lt!2586264 (t!384612 s1!1971)))))

(declare-fun lt!2586280 () Unit!163903)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1712 ((InoxSet Context!15194) (InoxSet Context!15194) List!70552) Unit!163903)

(assert (=> b!7253929 (= lt!2586280 (lemmaZipperConcatMatchesSameAsBothZippers!1712 lt!2586264 lt!2586276 (t!384612 s1!1971)))))

(declare-fun b!7253930 () Bool)

(declare-fun e!4349573 () Bool)

(assert (=> b!7253930 (= e!4349561 e!4349573)))

(declare-fun res!2941816 () Bool)

(assert (=> b!7253930 (=> res!2941816 e!4349573)))

(assert (=> b!7253930 (= res!2941816 (or (not (= lt!2586269 lt!2586265)) (not (= lt!2586268 lt!2586269))))))

(assert (=> b!7253930 (= lt!2586265 ((_ map or) lt!2586264 lt!2586276))))

(declare-fun lt!2586270 () Context!15194)

(assert (=> b!7253930 (= lt!2586276 (derivationStepZipperUp!2481 lt!2586270 (h!76876 s1!1971)))))

(declare-fun b!7253931 () Bool)

(declare-fun e!4349564 () Bool)

(declare-fun e!4349567 () Bool)

(assert (=> b!7253931 (= e!4349564 e!4349567)))

(declare-fun res!2941814 () Bool)

(assert (=> b!7253931 (=> (not res!2941814) (not e!4349567))))

(get-info :version)

(assert (=> b!7253931 (= res!2941814 (and (not ((_ is Nil!70427) (exprs!8097 ct1!232))) ((_ is Cons!70428) s1!1971)))))

(assert (=> b!7253931 (= lt!2586287 (store ((as const (Array Context!15194 Bool)) false) lt!2586291 true))))

(assert (=> b!7253931 (= lt!2586291 (Context!15195 lt!2586277))))

(assert (=> b!7253931 (= lt!2586277 (++!16576 (exprs!8097 ct1!232) (exprs!8097 ct2!328)))))

(declare-fun lt!2586290 () Unit!163903)

(assert (=> b!7253931 (= lt!2586290 (lemmaConcatPreservesForall!1464 (exprs!8097 ct1!232) (exprs!8097 ct2!328) lambda!444764))))

(declare-fun b!7253932 () Bool)

(declare-fun e!4349563 () Bool)

(declare-fun tp!2037896 () Bool)

(assert (=> b!7253932 (= e!4349563 (and tp_is_empty!46779 tp!2037896))))

(declare-fun b!7253934 () Bool)

(assert (=> b!7253934 (= e!4349573 e!4349568)))

(declare-fun res!2941817 () Bool)

(assert (=> b!7253934 (=> res!2941817 e!4349568)))

(assert (=> b!7253934 (= res!2941817 (not (= lt!2586266 ((_ map or) lt!2586286 (derivationStepZipperUp!2481 lt!2586285 (h!76876 s1!1971))))))))

(declare-fun lt!2586279 () Unit!163903)

(assert (=> b!7253934 (= lt!2586279 (lemmaConcatPreservesForall!1464 (exprs!8097 ct1!232) (exprs!8097 ct2!328) lambda!444764))))

(declare-fun b!7253935 () Bool)

(declare-fun res!2941823 () Bool)

(assert (=> b!7253935 (=> (not res!2941823) (not e!4349564))))

(assert (=> b!7253935 (= res!2941823 (matchZipper!3567 (store ((as const (Array Context!15194 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7253936 () Bool)

(declare-fun e!4349574 () Bool)

(assert (=> b!7253936 (= e!4349567 e!4349574)))

(declare-fun res!2941818 () Bool)

(assert (=> b!7253936 (=> (not res!2941818) (not e!4349574))))

(assert (=> b!7253936 (= res!2941818 (matchZipper!3567 lt!2586268 (t!384612 s1!1971)))))

(assert (=> b!7253936 (= lt!2586268 (derivationStepZipper!3435 lt!2586271 (h!76876 s1!1971)))))

(declare-fun b!7253937 () Bool)

(assert (=> b!7253937 (= e!4349571 e!4349562)))

(declare-fun res!2941813 () Bool)

(assert (=> b!7253937 (=> res!2941813 e!4349562)))

(assert (=> b!7253937 (= res!2941813 (isEmpty!40557 lt!2586277))))

(declare-fun lt!2586272 () Unit!163903)

(assert (=> b!7253937 (= lt!2586272 (lemmaConcatPreservesForall!1464 (exprs!8097 ct1!232) (exprs!8097 ct2!328) lambda!444764))))

(assert (=> b!7253937 (= lt!2586266 (derivationStepZipperUp!2481 lt!2586291 (h!76876 s1!1971)))))

(declare-fun lt!2586283 () Unit!163903)

(assert (=> b!7253937 (= lt!2586283 (lemmaConcatPreservesForall!1464 (exprs!8097 ct1!232) (exprs!8097 ct2!328) lambda!444764))))

(assert (=> b!7253937 (= lt!2586264 (derivationStepZipperDown!2651 (h!76875 (exprs!8097 ct1!232)) lt!2586270 (h!76876 s1!1971)))))

(assert (=> b!7253937 (= lt!2586270 (Context!15195 (tail!14339 (exprs!8097 ct1!232))))))

(declare-fun b!7253938 () Bool)

(declare-fun e!4349572 () Bool)

(declare-fun tp!2037895 () Bool)

(assert (=> b!7253938 (= e!4349572 tp!2037895)))

(declare-fun res!2941820 () Bool)

(assert (=> start!706240 (=> (not res!2941820) (not e!4349564))))

(assert (=> start!706240 (= res!2941820 (matchZipper!3567 lt!2586271 s1!1971))))

(assert (=> start!706240 (= lt!2586271 (store ((as const (Array Context!15194 Bool)) false) ct1!232 true))))

(assert (=> start!706240 e!4349564))

(declare-fun inv!89652 (Context!15194) Bool)

(assert (=> start!706240 (and (inv!89652 ct1!232) e!4349572)))

(assert (=> start!706240 e!4349563))

(assert (=> start!706240 e!4349566))

(assert (=> start!706240 (and (inv!89652 ct2!328) e!4349565)))

(assert (=> b!7253933 (= e!4349574 (not e!4349570))))

(declare-fun res!2941819 () Bool)

(assert (=> b!7253933 (=> res!2941819 e!4349570)))

(declare-fun exists!4392 ((InoxSet Context!15194) Int) Bool)

(assert (=> b!7253933 (= res!2941819 (not (exists!4392 lt!2586268 lambda!444765)))))

(declare-datatypes ((List!70553 0))(
  ( (Nil!70429) (Cons!70429 (h!76877 Context!15194) (t!384613 List!70553)) )
))
(declare-fun lt!2586281 () List!70553)

(declare-fun exists!4393 (List!70553 Int) Bool)

(assert (=> b!7253933 (exists!4393 lt!2586281 lambda!444765)))

(declare-fun lt!2586275 () Unit!163903)

(declare-fun lemmaZipperMatchesExistsMatchingContext!760 (List!70553 List!70552) Unit!163903)

(assert (=> b!7253933 (= lt!2586275 (lemmaZipperMatchesExistsMatchingContext!760 lt!2586281 (t!384612 s1!1971)))))

(declare-fun toList!11486 ((InoxSet Context!15194)) List!70553)

(assert (=> b!7253933 (= lt!2586281 (toList!11486 lt!2586268))))

(assert (= (and start!706240 res!2941820) b!7253935))

(assert (= (and b!7253935 res!2941823) b!7253931))

(assert (= (and b!7253931 res!2941814) b!7253936))

(assert (= (and b!7253936 res!2941818) b!7253933))

(assert (= (and b!7253933 (not res!2941819)) b!7253923))

(assert (= (and b!7253923 (not res!2941815)) b!7253937))

(assert (= (and b!7253937 (not res!2941813)) b!7253927))

(assert (= (and b!7253927 (not res!2941822)) b!7253930))

(assert (= (and b!7253930 (not res!2941816)) b!7253934))

(assert (= (and b!7253934 (not res!2941817)) b!7253925))

(assert (= (and b!7253925 (not res!2941824)) b!7253929))

(assert (= (and b!7253929 (not res!2941821)) b!7253924))

(assert (= start!706240 b!7253938))

(assert (= (and start!706240 ((_ is Cons!70428) s1!1971)) b!7253932))

(assert (= (and start!706240 ((_ is Cons!70428) s2!1849)) b!7253928))

(assert (= start!706240 b!7253926))

(declare-fun m!7934086 () Bool)

(assert (=> b!7253937 m!7934086))

(declare-fun m!7934088 () Bool)

(assert (=> b!7253937 m!7934088))

(declare-fun m!7934090 () Bool)

(assert (=> b!7253937 m!7934090))

(declare-fun m!7934092 () Bool)

(assert (=> b!7253937 m!7934092))

(assert (=> b!7253937 m!7934088))

(declare-fun m!7934094 () Bool)

(assert (=> b!7253937 m!7934094))

(declare-fun m!7934096 () Bool)

(assert (=> b!7253933 m!7934096))

(declare-fun m!7934098 () Bool)

(assert (=> b!7253933 m!7934098))

(declare-fun m!7934100 () Bool)

(assert (=> b!7253933 m!7934100))

(declare-fun m!7934102 () Bool)

(assert (=> b!7253933 m!7934102))

(declare-fun m!7934104 () Bool)

(assert (=> b!7253925 m!7934104))

(declare-fun m!7934106 () Bool)

(assert (=> b!7253931 m!7934106))

(declare-fun m!7934108 () Bool)

(assert (=> b!7253931 m!7934108))

(assert (=> b!7253931 m!7934088))

(declare-fun m!7934110 () Bool)

(assert (=> b!7253923 m!7934110))

(declare-fun m!7934112 () Bool)

(assert (=> b!7253923 m!7934112))

(declare-fun m!7934114 () Bool)

(assert (=> b!7253923 m!7934114))

(declare-fun m!7934116 () Bool)

(assert (=> b!7253923 m!7934116))

(assert (=> b!7253923 m!7934110))

(declare-fun m!7934118 () Bool)

(assert (=> b!7253923 m!7934118))

(declare-fun m!7934120 () Bool)

(assert (=> b!7253923 m!7934120))

(declare-fun m!7934122 () Bool)

(assert (=> b!7253923 m!7934122))

(declare-fun m!7934124 () Bool)

(assert (=> b!7253923 m!7934124))

(assert (=> b!7253923 m!7934120))

(assert (=> b!7253923 m!7934122))

(declare-fun m!7934126 () Bool)

(assert (=> b!7253923 m!7934126))

(declare-fun m!7934128 () Bool)

(assert (=> b!7253935 m!7934128))

(assert (=> b!7253935 m!7934128))

(declare-fun m!7934130 () Bool)

(assert (=> b!7253935 m!7934130))

(declare-fun m!7934132 () Bool)

(assert (=> start!706240 m!7934132))

(declare-fun m!7934134 () Bool)

(assert (=> start!706240 m!7934134))

(declare-fun m!7934136 () Bool)

(assert (=> start!706240 m!7934136))

(declare-fun m!7934138 () Bool)

(assert (=> start!706240 m!7934138))

(declare-fun m!7934140 () Bool)

(assert (=> b!7253934 m!7934140))

(assert (=> b!7253934 m!7934088))

(assert (=> b!7253929 m!7934088))

(declare-fun m!7934142 () Bool)

(assert (=> b!7253929 m!7934142))

(declare-fun m!7934144 () Bool)

(assert (=> b!7253929 m!7934144))

(declare-fun m!7934146 () Bool)

(assert (=> b!7253929 m!7934146))

(declare-fun m!7934148 () Bool)

(assert (=> b!7253936 m!7934148))

(declare-fun m!7934150 () Bool)

(assert (=> b!7253936 m!7934150))

(declare-fun m!7934152 () Bool)

(assert (=> b!7253930 m!7934152))

(declare-fun m!7934154 () Bool)

(assert (=> b!7253924 m!7934154))

(declare-fun m!7934156 () Bool)

(assert (=> b!7253927 m!7934156))

(declare-fun m!7934158 () Bool)

(assert (=> b!7253927 m!7934158))

(declare-fun m!7934160 () Bool)

(assert (=> b!7253927 m!7934160))

(declare-fun m!7934162 () Bool)

(assert (=> b!7253927 m!7934162))

(assert (=> b!7253927 m!7934116))

(assert (=> b!7253927 m!7934092))

(assert (=> b!7253927 m!7934088))

(declare-fun m!7934164 () Bool)

(assert (=> b!7253927 m!7934164))

(declare-fun m!7934166 () Bool)

(assert (=> b!7253927 m!7934166))

(declare-fun m!7934168 () Bool)

(assert (=> b!7253927 m!7934168))

(check-sat (not b!7253924) (not b!7253930) (not b!7253934) (not b!7253938) (not b!7253929) (not b!7253936) (not b!7253931) (not b!7253937) tp_is_empty!46779 (not start!706240) (not b!7253935) (not b!7253928) (not b!7253923) (not b!7253926) (not b!7253925) (not b!7253933) (not b!7253932) (not b!7253927))
(check-sat)
