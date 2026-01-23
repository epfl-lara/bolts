; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!704020 () Bool)

(assert start!704020)

(declare-fun b!7243054 () Bool)

(assert (=> b!7243054 true))

(declare-fun b!7243048 () Bool)

(assert (=> b!7243048 true))

(declare-fun b!7243043 () Bool)

(declare-fun e!4342670 () Bool)

(declare-fun e!4342667 () Bool)

(assert (=> b!7243043 (= e!4342670 e!4342667)))

(declare-fun res!2938159 () Bool)

(assert (=> b!7243043 (=> res!2938159 e!4342667)))

(declare-datatypes ((C!37432 0))(
  ( (C!37433 (val!28664 Int)) )
))
(declare-datatypes ((Regex!18579 0))(
  ( (ElementMatch!18579 (c!1345205 C!37432)) (Concat!27424 (regOne!37670 Regex!18579) (regTwo!37670 Regex!18579)) (EmptyExpr!18579) (Star!18579 (reg!18908 Regex!18579)) (EmptyLang!18579) (Union!18579 (regOne!37671 Regex!18579) (regTwo!37671 Regex!18579)) )
))
(declare-datatypes ((List!70334 0))(
  ( (Nil!70210) (Cons!70210 (h!76658 Regex!18579) (t!384385 List!70334)) )
))
(declare-fun lt!2580934 () List!70334)

(declare-fun isEmpty!40448 (List!70334) Bool)

(assert (=> b!7243043 (= res!2938159 (isEmpty!40448 lt!2580934))))

(declare-fun lambda!442415 () Int)

(declare-datatypes ((Context!15038 0))(
  ( (Context!15039 (exprs!8019 List!70334)) )
))
(declare-fun ct1!232 () Context!15038)

(declare-datatypes ((Unit!163744 0))(
  ( (Unit!163745) )
))
(declare-fun lt!2580945 () Unit!163744)

(declare-fun ct2!328 () Context!15038)

(declare-fun lemmaConcatPreservesForall!1388 (List!70334 List!70334 Int) Unit!163744)

(assert (=> b!7243043 (= lt!2580945 (lemmaConcatPreservesForall!1388 (exprs!8019 ct1!232) (exprs!8019 ct2!328) lambda!442415))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2580938 () (InoxSet Context!15038))

(declare-fun lt!2580933 () Context!15038)

(declare-datatypes ((List!70335 0))(
  ( (Nil!70211) (Cons!70211 (h!76659 C!37432) (t!384386 List!70335)) )
))
(declare-fun s1!1971 () List!70335)

(declare-fun derivationStepZipperUp!2433 (Context!15038 C!37432) (InoxSet Context!15038))

(assert (=> b!7243043 (= lt!2580938 (derivationStepZipperUp!2433 lt!2580933 (h!76659 s1!1971)))))

(declare-fun lt!2580944 () Unit!163744)

(assert (=> b!7243043 (= lt!2580944 (lemmaConcatPreservesForall!1388 (exprs!8019 ct1!232) (exprs!8019 ct2!328) lambda!442415))))

(declare-fun lt!2580941 () Context!15038)

(declare-fun lt!2580935 () (InoxSet Context!15038))

(declare-fun derivationStepZipperDown!2603 (Regex!18579 Context!15038 C!37432) (InoxSet Context!15038))

(assert (=> b!7243043 (= lt!2580935 (derivationStepZipperDown!2603 (h!76658 (exprs!8019 ct1!232)) lt!2580941 (h!76659 s1!1971)))))

(declare-fun tail!14241 (List!70334) List!70334)

(assert (=> b!7243043 (= lt!2580941 (Context!15039 (tail!14241 (exprs!8019 ct1!232))))))

(declare-fun b!7243044 () Bool)

(declare-fun e!4342666 () Bool)

(declare-fun e!4342662 () Bool)

(assert (=> b!7243044 (= e!4342666 e!4342662)))

(declare-fun res!2938160 () Bool)

(assert (=> b!7243044 (=> (not res!2938160) (not e!4342662))))

(get-info :version)

(assert (=> b!7243044 (= res!2938160 (and (not ((_ is Nil!70210) (exprs!8019 ct1!232))) ((_ is Cons!70211) s1!1971)))))

(declare-fun lt!2580949 () (InoxSet Context!15038))

(assert (=> b!7243044 (= lt!2580949 (store ((as const (Array Context!15038 Bool)) false) lt!2580933 true))))

(assert (=> b!7243044 (= lt!2580933 (Context!15039 lt!2580934))))

(declare-fun ++!16442 (List!70334 List!70334) List!70334)

(assert (=> b!7243044 (= lt!2580934 (++!16442 (exprs!8019 ct1!232) (exprs!8019 ct2!328)))))

(declare-fun lt!2580942 () Unit!163744)

(assert (=> b!7243044 (= lt!2580942 (lemmaConcatPreservesForall!1388 (exprs!8019 ct1!232) (exprs!8019 ct2!328) lambda!442415))))

(declare-fun b!7243045 () Bool)

(declare-fun e!4342664 () Bool)

(declare-fun tp_is_empty!46623 () Bool)

(declare-fun tp!2035804 () Bool)

(assert (=> b!7243045 (= e!4342664 (and tp_is_empty!46623 tp!2035804))))

(declare-fun b!7243046 () Bool)

(declare-fun e!4342663 () Bool)

(declare-fun tp!2035801 () Bool)

(assert (=> b!7243046 (= e!4342663 tp!2035801)))

(declare-fun b!7243047 () Bool)

(declare-fun e!4342661 () Bool)

(declare-fun tp!2035803 () Bool)

(assert (=> b!7243047 (= e!4342661 tp!2035803)))

(declare-fun e!4342665 () Bool)

(assert (=> b!7243048 (= e!4342667 e!4342665)))

(declare-fun res!2938164 () Bool)

(assert (=> b!7243048 (=> res!2938164 e!4342665)))

(declare-fun nullable!7872 (Regex!18579) Bool)

(assert (=> b!7243048 (= res!2938164 (not (nullable!7872 (h!76658 (exprs!8019 ct1!232)))))))

(declare-fun lambda!442417 () Int)

(declare-fun flatMap!2767 ((InoxSet Context!15038) Int) (InoxSet Context!15038))

(assert (=> b!7243048 (= (flatMap!2767 lt!2580949 lambda!442417) (derivationStepZipperUp!2433 lt!2580933 (h!76659 s1!1971)))))

(declare-fun lt!2580936 () Unit!163744)

(declare-fun lemmaFlatMapOnSingletonSet!2190 ((InoxSet Context!15038) Context!15038 Int) Unit!163744)

(assert (=> b!7243048 (= lt!2580936 (lemmaFlatMapOnSingletonSet!2190 lt!2580949 lt!2580933 lambda!442417))))

(declare-fun lt!2580947 () Unit!163744)

(assert (=> b!7243048 (= lt!2580947 (lemmaConcatPreservesForall!1388 (exprs!8019 ct1!232) (exprs!8019 ct2!328) lambda!442415))))

(declare-fun lt!2580950 () (InoxSet Context!15038))

(assert (=> b!7243048 (= (flatMap!2767 lt!2580950 lambda!442417) (derivationStepZipperUp!2433 ct1!232 (h!76659 s1!1971)))))

(declare-fun lt!2580939 () Unit!163744)

(assert (=> b!7243048 (= lt!2580939 (lemmaFlatMapOnSingletonSet!2190 lt!2580950 ct1!232 lambda!442417))))

(declare-fun lt!2580932 () (InoxSet Context!15038))

(assert (=> b!7243048 (= lt!2580932 (derivationStepZipperDown!2603 (h!76658 (exprs!8019 ct1!232)) (Context!15039 (tail!14241 lt!2580934)) (h!76659 s1!1971)))))

(declare-fun b!7243049 () Bool)

(declare-fun e!4342669 () Bool)

(declare-fun tp!2035802 () Bool)

(assert (=> b!7243049 (= e!4342669 (and tp_is_empty!46623 tp!2035802))))

(declare-fun b!7243050 () Bool)

(declare-fun res!2938158 () Bool)

(assert (=> b!7243050 (=> res!2938158 e!4342665)))

(declare-fun lt!2580952 () (InoxSet Context!15038))

(assert (=> b!7243050 (= res!2938158 (not (= lt!2580952 ((_ map or) lt!2580935 (derivationStepZipperUp!2433 lt!2580941 (h!76659 s1!1971))))))))

(declare-fun b!7243051 () Bool)

(declare-fun res!2938157 () Bool)

(assert (=> b!7243051 (=> (not res!2938157) (not e!4342666))))

(declare-fun s2!1849 () List!70335)

(declare-fun matchZipper!3489 ((InoxSet Context!15038) List!70335) Bool)

(assert (=> b!7243051 (= res!2938157 (matchZipper!3489 (store ((as const (Array Context!15038 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7243052 () Bool)

(declare-fun lt!2580937 () (InoxSet Context!15038))

(assert (=> b!7243052 (= e!4342665 (= lt!2580937 lt!2580952))))

(declare-fun res!2938156 () Bool)

(assert (=> start!704020 (=> (not res!2938156) (not e!4342666))))

(assert (=> start!704020 (= res!2938156 (matchZipper!3489 lt!2580950 s1!1971))))

(assert (=> start!704020 (= lt!2580950 (store ((as const (Array Context!15038 Bool)) false) ct1!232 true))))

(assert (=> start!704020 e!4342666))

(declare-fun inv!89457 (Context!15038) Bool)

(assert (=> start!704020 (and (inv!89457 ct1!232) e!4342661)))

(assert (=> start!704020 e!4342664))

(assert (=> start!704020 e!4342669))

(assert (=> start!704020 (and (inv!89457 ct2!328) e!4342663)))

(declare-fun b!7243053 () Bool)

(declare-fun e!4342671 () Bool)

(assert (=> b!7243053 (= e!4342662 e!4342671)))

(declare-fun res!2938161 () Bool)

(assert (=> b!7243053 (=> (not res!2938161) (not e!4342671))))

(assert (=> b!7243053 (= res!2938161 (matchZipper!3489 lt!2580937 (t!384386 s1!1971)))))

(declare-fun derivationStepZipper!3367 ((InoxSet Context!15038) C!37432) (InoxSet Context!15038))

(assert (=> b!7243053 (= lt!2580937 (derivationStepZipper!3367 lt!2580950 (h!76659 s1!1971)))))

(declare-fun e!4342668 () Bool)

(assert (=> b!7243054 (= e!4342671 (not e!4342668))))

(declare-fun res!2938163 () Bool)

(assert (=> b!7243054 (=> res!2938163 e!4342668)))

(declare-fun lambda!442416 () Int)

(declare-fun exists!4277 ((InoxSet Context!15038) Int) Bool)

(assert (=> b!7243054 (= res!2938163 (not (exists!4277 lt!2580937 lambda!442416)))))

(declare-datatypes ((List!70336 0))(
  ( (Nil!70212) (Cons!70212 (h!76660 Context!15038) (t!384387 List!70336)) )
))
(declare-fun lt!2580940 () List!70336)

(declare-fun exists!4278 (List!70336 Int) Bool)

(assert (=> b!7243054 (exists!4278 lt!2580940 lambda!442416)))

(declare-fun lt!2580931 () Unit!163744)

(declare-fun lemmaZipperMatchesExistsMatchingContext!706 (List!70336 List!70335) Unit!163744)

(assert (=> b!7243054 (= lt!2580931 (lemmaZipperMatchesExistsMatchingContext!706 lt!2580940 (t!384386 s1!1971)))))

(declare-fun toList!11425 ((InoxSet Context!15038)) List!70336)

(assert (=> b!7243054 (= lt!2580940 (toList!11425 lt!2580937))))

(declare-fun b!7243055 () Bool)

(assert (=> b!7243055 (= e!4342668 e!4342670)))

(declare-fun res!2938162 () Bool)

(assert (=> b!7243055 (=> res!2938162 e!4342670)))

(assert (=> b!7243055 (= res!2938162 (isEmpty!40448 (exprs!8019 ct1!232)))))

(assert (=> b!7243055 (= lt!2580952 (derivationStepZipperUp!2433 ct1!232 (h!76659 s1!1971)))))

(declare-fun lt!2580948 () Context!15038)

(declare-fun lt!2580951 () Unit!163744)

(assert (=> b!7243055 (= lt!2580951 (lemmaConcatPreservesForall!1388 (exprs!8019 lt!2580948) (exprs!8019 ct2!328) lambda!442415))))

(declare-fun ++!16443 (List!70335 List!70335) List!70335)

(assert (=> b!7243055 (matchZipper!3489 (store ((as const (Array Context!15038 Bool)) false) (Context!15039 (++!16442 (exprs!8019 lt!2580948) (exprs!8019 ct2!328))) true) (++!16443 (t!384386 s1!1971) s2!1849))))

(declare-fun lt!2580946 () Unit!163744)

(assert (=> b!7243055 (= lt!2580946 (lemmaConcatPreservesForall!1388 (exprs!8019 lt!2580948) (exprs!8019 ct2!328) lambda!442415))))

(declare-fun lt!2580943 () Unit!163744)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!352 (Context!15038 Context!15038 List!70335 List!70335) Unit!163744)

(assert (=> b!7243055 (= lt!2580943 (lemmaConcatenateContextMatchesConcatOfStrings!352 lt!2580948 ct2!328 (t!384386 s1!1971) s2!1849))))

(declare-fun getWitness!2125 ((InoxSet Context!15038) Int) Context!15038)

(assert (=> b!7243055 (= lt!2580948 (getWitness!2125 lt!2580937 lambda!442416))))

(assert (= (and start!704020 res!2938156) b!7243051))

(assert (= (and b!7243051 res!2938157) b!7243044))

(assert (= (and b!7243044 res!2938160) b!7243053))

(assert (= (and b!7243053 res!2938161) b!7243054))

(assert (= (and b!7243054 (not res!2938163)) b!7243055))

(assert (= (and b!7243055 (not res!2938162)) b!7243043))

(assert (= (and b!7243043 (not res!2938159)) b!7243048))

(assert (= (and b!7243048 (not res!2938164)) b!7243050))

(assert (= (and b!7243050 (not res!2938158)) b!7243052))

(assert (= start!704020 b!7243047))

(assert (= (and start!704020 ((_ is Cons!70211) s1!1971)) b!7243045))

(assert (= (and start!704020 ((_ is Cons!70211) s2!1849)) b!7243049))

(assert (= start!704020 b!7243046))

(declare-fun m!7918208 () Bool)

(assert (=> b!7243055 m!7918208))

(declare-fun m!7918210 () Bool)

(assert (=> b!7243055 m!7918210))

(declare-fun m!7918212 () Bool)

(assert (=> b!7243055 m!7918212))

(declare-fun m!7918214 () Bool)

(assert (=> b!7243055 m!7918214))

(declare-fun m!7918216 () Bool)

(assert (=> b!7243055 m!7918216))

(declare-fun m!7918218 () Bool)

(assert (=> b!7243055 m!7918218))

(assert (=> b!7243055 m!7918216))

(declare-fun m!7918220 () Bool)

(assert (=> b!7243055 m!7918220))

(assert (=> b!7243055 m!7918220))

(assert (=> b!7243055 m!7918214))

(declare-fun m!7918222 () Bool)

(assert (=> b!7243055 m!7918222))

(declare-fun m!7918224 () Bool)

(assert (=> b!7243055 m!7918224))

(declare-fun m!7918226 () Bool)

(assert (=> b!7243053 m!7918226))

(declare-fun m!7918228 () Bool)

(assert (=> b!7243053 m!7918228))

(declare-fun m!7918230 () Bool)

(assert (=> start!704020 m!7918230))

(declare-fun m!7918232 () Bool)

(assert (=> start!704020 m!7918232))

(declare-fun m!7918234 () Bool)

(assert (=> start!704020 m!7918234))

(declare-fun m!7918236 () Bool)

(assert (=> start!704020 m!7918236))

(declare-fun m!7918238 () Bool)

(assert (=> b!7243051 m!7918238))

(assert (=> b!7243051 m!7918238))

(declare-fun m!7918240 () Bool)

(assert (=> b!7243051 m!7918240))

(declare-fun m!7918242 () Bool)

(assert (=> b!7243048 m!7918242))

(declare-fun m!7918244 () Bool)

(assert (=> b!7243048 m!7918244))

(declare-fun m!7918246 () Bool)

(assert (=> b!7243048 m!7918246))

(declare-fun m!7918248 () Bool)

(assert (=> b!7243048 m!7918248))

(declare-fun m!7918250 () Bool)

(assert (=> b!7243048 m!7918250))

(assert (=> b!7243048 m!7918222))

(declare-fun m!7918252 () Bool)

(assert (=> b!7243048 m!7918252))

(declare-fun m!7918254 () Bool)

(assert (=> b!7243048 m!7918254))

(declare-fun m!7918256 () Bool)

(assert (=> b!7243048 m!7918256))

(declare-fun m!7918258 () Bool)

(assert (=> b!7243048 m!7918258))

(declare-fun m!7918260 () Bool)

(assert (=> b!7243050 m!7918260))

(declare-fun m!7918262 () Bool)

(assert (=> b!7243044 m!7918262))

(declare-fun m!7918264 () Bool)

(assert (=> b!7243044 m!7918264))

(assert (=> b!7243044 m!7918252))

(declare-fun m!7918266 () Bool)

(assert (=> b!7243043 m!7918266))

(assert (=> b!7243043 m!7918252))

(declare-fun m!7918268 () Bool)

(assert (=> b!7243043 m!7918268))

(assert (=> b!7243043 m!7918258))

(assert (=> b!7243043 m!7918252))

(declare-fun m!7918270 () Bool)

(assert (=> b!7243043 m!7918270))

(declare-fun m!7918272 () Bool)

(assert (=> b!7243054 m!7918272))

(declare-fun m!7918274 () Bool)

(assert (=> b!7243054 m!7918274))

(declare-fun m!7918276 () Bool)

(assert (=> b!7243054 m!7918276))

(declare-fun m!7918278 () Bool)

(assert (=> b!7243054 m!7918278))

(check-sat (not b!7243049) (not b!7243047) (not b!7243048) (not start!704020) (not b!7243050) (not b!7243045) (not b!7243054) (not b!7243051) (not b!7243046) (not b!7243053) (not b!7243043) (not b!7243044) (not b!7243055) tp_is_empty!46623)
(check-sat)
(get-model)

(declare-fun b!7243070 () Bool)

(declare-fun e!4342680 () (InoxSet Context!15038))

(declare-fun e!4342678 () (InoxSet Context!15038))

(assert (=> b!7243070 (= e!4342680 e!4342678)))

(declare-fun c!1345210 () Bool)

(assert (=> b!7243070 (= c!1345210 ((_ is Cons!70210) (exprs!8019 lt!2580941)))))

(declare-fun b!7243071 () Bool)

(declare-fun call!659573 () (InoxSet Context!15038))

(assert (=> b!7243071 (= e!4342678 call!659573)))

(declare-fun b!7243072 () Bool)

(assert (=> b!7243072 (= e!4342680 ((_ map or) call!659573 (derivationStepZipperUp!2433 (Context!15039 (t!384385 (exprs!8019 lt!2580941))) (h!76659 s1!1971))))))

(declare-fun b!7243073 () Bool)

(assert (=> b!7243073 (= e!4342678 ((as const (Array Context!15038 Bool)) false))))

(declare-fun b!7243074 () Bool)

(declare-fun e!4342679 () Bool)

(assert (=> b!7243074 (= e!4342679 (nullable!7872 (h!76658 (exprs!8019 lt!2580941))))))

(declare-fun d!2250474 () Bool)

(declare-fun c!1345211 () Bool)

(assert (=> d!2250474 (= c!1345211 e!4342679)))

(declare-fun res!2938167 () Bool)

(assert (=> d!2250474 (=> (not res!2938167) (not e!4342679))))

(assert (=> d!2250474 (= res!2938167 ((_ is Cons!70210) (exprs!8019 lt!2580941)))))

(assert (=> d!2250474 (= (derivationStepZipperUp!2433 lt!2580941 (h!76659 s1!1971)) e!4342680)))

(declare-fun bm!659568 () Bool)

(assert (=> bm!659568 (= call!659573 (derivationStepZipperDown!2603 (h!76658 (exprs!8019 lt!2580941)) (Context!15039 (t!384385 (exprs!8019 lt!2580941))) (h!76659 s1!1971)))))

(assert (= (and d!2250474 res!2938167) b!7243074))

(assert (= (and d!2250474 c!1345211) b!7243072))

(assert (= (and d!2250474 (not c!1345211)) b!7243070))

(assert (= (and b!7243070 c!1345210) b!7243071))

(assert (= (and b!7243070 (not c!1345210)) b!7243073))

(assert (= (or b!7243072 b!7243071) bm!659568))

(declare-fun m!7918280 () Bool)

(assert (=> b!7243072 m!7918280))

(declare-fun m!7918282 () Bool)

(assert (=> b!7243074 m!7918282))

(declare-fun m!7918284 () Bool)

(assert (=> bm!659568 m!7918284))

(assert (=> b!7243050 d!2250474))

(declare-fun d!2250476 () Bool)

(declare-fun e!4342683 () Bool)

(assert (=> d!2250476 e!4342683))

(declare-fun res!2938170 () Bool)

(assert (=> d!2250476 (=> (not res!2938170) (not e!4342683))))

(declare-fun lt!2580955 () Context!15038)

(declare-fun dynLambda!28660 (Int Context!15038) Bool)

(assert (=> d!2250476 (= res!2938170 (dynLambda!28660 lambda!442416 lt!2580955))))

(declare-fun getWitness!2126 (List!70336 Int) Context!15038)

(assert (=> d!2250476 (= lt!2580955 (getWitness!2126 (toList!11425 lt!2580937) lambda!442416))))

(assert (=> d!2250476 (exists!4277 lt!2580937 lambda!442416)))

(assert (=> d!2250476 (= (getWitness!2125 lt!2580937 lambda!442416) lt!2580955)))

(declare-fun b!7243077 () Bool)

(assert (=> b!7243077 (= e!4342683 (select lt!2580937 lt!2580955))))

(assert (= (and d!2250476 res!2938170) b!7243077))

(declare-fun b_lambda!277911 () Bool)

(assert (=> (not b_lambda!277911) (not d!2250476)))

(declare-fun m!7918286 () Bool)

(assert (=> d!2250476 m!7918286))

(assert (=> d!2250476 m!7918278))

(assert (=> d!2250476 m!7918278))

(declare-fun m!7918288 () Bool)

(assert (=> d!2250476 m!7918288))

(assert (=> d!2250476 m!7918272))

(declare-fun m!7918290 () Bool)

(assert (=> b!7243077 m!7918290))

(assert (=> b!7243055 d!2250476))

(declare-fun d!2250478 () Bool)

(assert (=> d!2250478 (= (isEmpty!40448 (exprs!8019 ct1!232)) ((_ is Nil!70210) (exprs!8019 ct1!232)))))

(assert (=> b!7243055 d!2250478))

(declare-fun b!7243078 () Bool)

(declare-fun e!4342686 () (InoxSet Context!15038))

(declare-fun e!4342684 () (InoxSet Context!15038))

(assert (=> b!7243078 (= e!4342686 e!4342684)))

(declare-fun c!1345212 () Bool)

(assert (=> b!7243078 (= c!1345212 ((_ is Cons!70210) (exprs!8019 ct1!232)))))

(declare-fun b!7243079 () Bool)

(declare-fun call!659574 () (InoxSet Context!15038))

(assert (=> b!7243079 (= e!4342684 call!659574)))

(declare-fun b!7243080 () Bool)

(assert (=> b!7243080 (= e!4342686 ((_ map or) call!659574 (derivationStepZipperUp!2433 (Context!15039 (t!384385 (exprs!8019 ct1!232))) (h!76659 s1!1971))))))

(declare-fun b!7243081 () Bool)

(assert (=> b!7243081 (= e!4342684 ((as const (Array Context!15038 Bool)) false))))

(declare-fun b!7243082 () Bool)

(declare-fun e!4342685 () Bool)

(assert (=> b!7243082 (= e!4342685 (nullable!7872 (h!76658 (exprs!8019 ct1!232))))))

(declare-fun d!2250480 () Bool)

(declare-fun c!1345213 () Bool)

(assert (=> d!2250480 (= c!1345213 e!4342685)))

(declare-fun res!2938171 () Bool)

(assert (=> d!2250480 (=> (not res!2938171) (not e!4342685))))

(assert (=> d!2250480 (= res!2938171 ((_ is Cons!70210) (exprs!8019 ct1!232)))))

(assert (=> d!2250480 (= (derivationStepZipperUp!2433 ct1!232 (h!76659 s1!1971)) e!4342686)))

(declare-fun bm!659569 () Bool)

(assert (=> bm!659569 (= call!659574 (derivationStepZipperDown!2603 (h!76658 (exprs!8019 ct1!232)) (Context!15039 (t!384385 (exprs!8019 ct1!232))) (h!76659 s1!1971)))))

(assert (= (and d!2250480 res!2938171) b!7243082))

(assert (= (and d!2250480 c!1345213) b!7243080))

(assert (= (and d!2250480 (not c!1345213)) b!7243078))

(assert (= (and b!7243078 c!1345212) b!7243079))

(assert (= (and b!7243078 (not c!1345212)) b!7243081))

(assert (= (or b!7243080 b!7243079) bm!659569))

(declare-fun m!7918292 () Bool)

(assert (=> b!7243080 m!7918292))

(assert (=> b!7243082 m!7918250))

(declare-fun m!7918294 () Bool)

(assert (=> bm!659569 m!7918294))

(assert (=> b!7243055 d!2250480))

(declare-fun d!2250482 () Bool)

(declare-fun forall!17421 (List!70334 Int) Bool)

(assert (=> d!2250482 (forall!17421 (++!16442 (exprs!8019 lt!2580948) (exprs!8019 ct2!328)) lambda!442415)))

(declare-fun lt!2580958 () Unit!163744)

(declare-fun choose!55834 (List!70334 List!70334 Int) Unit!163744)

(assert (=> d!2250482 (= lt!2580958 (choose!55834 (exprs!8019 lt!2580948) (exprs!8019 ct2!328) lambda!442415))))

(assert (=> d!2250482 (forall!17421 (exprs!8019 lt!2580948) lambda!442415)))

(assert (=> d!2250482 (= (lemmaConcatPreservesForall!1388 (exprs!8019 lt!2580948) (exprs!8019 ct2!328) lambda!442415) lt!2580958)))

(declare-fun bs!1904503 () Bool)

(assert (= bs!1904503 d!2250482))

(assert (=> bs!1904503 m!7918210))

(assert (=> bs!1904503 m!7918210))

(declare-fun m!7918296 () Bool)

(assert (=> bs!1904503 m!7918296))

(declare-fun m!7918298 () Bool)

(assert (=> bs!1904503 m!7918298))

(declare-fun m!7918300 () Bool)

(assert (=> bs!1904503 m!7918300))

(assert (=> b!7243055 d!2250482))

(declare-fun e!4342692 () Bool)

(declare-fun lt!2580964 () List!70334)

(declare-fun b!7243096 () Bool)

(assert (=> b!7243096 (= e!4342692 (or (not (= (exprs!8019 ct2!328) Nil!70210)) (= lt!2580964 (exprs!8019 lt!2580948))))))

(declare-fun d!2250484 () Bool)

(assert (=> d!2250484 e!4342692))

(declare-fun res!2938176 () Bool)

(assert (=> d!2250484 (=> (not res!2938176) (not e!4342692))))

(declare-fun content!14515 (List!70334) (InoxSet Regex!18579))

(assert (=> d!2250484 (= res!2938176 (= (content!14515 lt!2580964) ((_ map or) (content!14515 (exprs!8019 lt!2580948)) (content!14515 (exprs!8019 ct2!328)))))))

(declare-fun e!4342691 () List!70334)

(assert (=> d!2250484 (= lt!2580964 e!4342691)))

(declare-fun c!1345216 () Bool)

(assert (=> d!2250484 (= c!1345216 ((_ is Nil!70210) (exprs!8019 lt!2580948)))))

(assert (=> d!2250484 (= (++!16442 (exprs!8019 lt!2580948) (exprs!8019 ct2!328)) lt!2580964)))

(declare-fun b!7243095 () Bool)

(declare-fun res!2938177 () Bool)

(assert (=> b!7243095 (=> (not res!2938177) (not e!4342692))))

(declare-fun size!41646 (List!70334) Int)

(assert (=> b!7243095 (= res!2938177 (= (size!41646 lt!2580964) (+ (size!41646 (exprs!8019 lt!2580948)) (size!41646 (exprs!8019 ct2!328)))))))

(declare-fun b!7243093 () Bool)

(assert (=> b!7243093 (= e!4342691 (exprs!8019 ct2!328))))

(declare-fun b!7243094 () Bool)

(assert (=> b!7243094 (= e!4342691 (Cons!70210 (h!76658 (exprs!8019 lt!2580948)) (++!16442 (t!384385 (exprs!8019 lt!2580948)) (exprs!8019 ct2!328))))))

(assert (= (and d!2250484 c!1345216) b!7243093))

(assert (= (and d!2250484 (not c!1345216)) b!7243094))

(assert (= (and d!2250484 res!2938176) b!7243095))

(assert (= (and b!7243095 res!2938177) b!7243096))

(declare-fun m!7918308 () Bool)

(assert (=> d!2250484 m!7918308))

(declare-fun m!7918310 () Bool)

(assert (=> d!2250484 m!7918310))

(declare-fun m!7918312 () Bool)

(assert (=> d!2250484 m!7918312))

(declare-fun m!7918314 () Bool)

(assert (=> b!7243095 m!7918314))

(declare-fun m!7918316 () Bool)

(assert (=> b!7243095 m!7918316))

(declare-fun m!7918318 () Bool)

(assert (=> b!7243095 m!7918318))

(declare-fun m!7918320 () Bool)

(assert (=> b!7243094 m!7918320))

(assert (=> b!7243055 d!2250484))

(declare-fun bs!1904515 () Bool)

(declare-fun d!2250492 () Bool)

(assert (= bs!1904515 (and d!2250492 b!7243044)))

(declare-fun lambda!442430 () Int)

(assert (=> bs!1904515 (= lambda!442430 lambda!442415)))

(assert (=> d!2250492 (matchZipper!3489 (store ((as const (Array Context!15038 Bool)) false) (Context!15039 (++!16442 (exprs!8019 lt!2580948) (exprs!8019 ct2!328))) true) (++!16443 (t!384386 s1!1971) s2!1849))))

(declare-fun lt!2580978 () Unit!163744)

(assert (=> d!2250492 (= lt!2580978 (lemmaConcatPreservesForall!1388 (exprs!8019 lt!2580948) (exprs!8019 ct2!328) lambda!442430))))

(declare-fun lt!2580977 () Unit!163744)

(declare-fun choose!55836 (Context!15038 Context!15038 List!70335 List!70335) Unit!163744)

(assert (=> d!2250492 (= lt!2580977 (choose!55836 lt!2580948 ct2!328 (t!384386 s1!1971) s2!1849))))

(assert (=> d!2250492 (matchZipper!3489 (store ((as const (Array Context!15038 Bool)) false) lt!2580948 true) (t!384386 s1!1971))))

(assert (=> d!2250492 (= (lemmaConcatenateContextMatchesConcatOfStrings!352 lt!2580948 ct2!328 (t!384386 s1!1971) s2!1849) lt!2580977)))

(declare-fun bs!1904517 () Bool)

(assert (= bs!1904517 d!2250492))

(assert (=> bs!1904517 m!7918210))

(declare-fun m!7918376 () Bool)

(assert (=> bs!1904517 m!7918376))

(assert (=> bs!1904517 m!7918214))

(assert (=> bs!1904517 m!7918216))

(assert (=> bs!1904517 m!7918218))

(declare-fun m!7918378 () Bool)

(assert (=> bs!1904517 m!7918378))

(assert (=> bs!1904517 m!7918214))

(assert (=> bs!1904517 m!7918376))

(declare-fun m!7918380 () Bool)

(assert (=> bs!1904517 m!7918380))

(declare-fun m!7918382 () Bool)

(assert (=> bs!1904517 m!7918382))

(assert (=> bs!1904517 m!7918216))

(assert (=> b!7243055 d!2250492))

(declare-fun lt!2580982 () List!70335)

(declare-fun e!4342726 () Bool)

(declare-fun b!7243156 () Bool)

(assert (=> b!7243156 (= e!4342726 (or (not (= s2!1849 Nil!70211)) (= lt!2580982 (t!384386 s1!1971))))))

(declare-fun b!7243153 () Bool)

(declare-fun e!4342725 () List!70335)

(assert (=> b!7243153 (= e!4342725 s2!1849)))

(declare-fun b!7243154 () Bool)

(assert (=> b!7243154 (= e!4342725 (Cons!70211 (h!76659 (t!384386 s1!1971)) (++!16443 (t!384386 (t!384386 s1!1971)) s2!1849)))))

(declare-fun d!2250512 () Bool)

(assert (=> d!2250512 e!4342726))

(declare-fun res!2938191 () Bool)

(assert (=> d!2250512 (=> (not res!2938191) (not e!4342726))))

(declare-fun content!14516 (List!70335) (InoxSet C!37432))

(assert (=> d!2250512 (= res!2938191 (= (content!14516 lt!2580982) ((_ map or) (content!14516 (t!384386 s1!1971)) (content!14516 s2!1849))))))

(assert (=> d!2250512 (= lt!2580982 e!4342725)))

(declare-fun c!1345241 () Bool)

(assert (=> d!2250512 (= c!1345241 ((_ is Nil!70211) (t!384386 s1!1971)))))

(assert (=> d!2250512 (= (++!16443 (t!384386 s1!1971) s2!1849) lt!2580982)))

(declare-fun b!7243155 () Bool)

(declare-fun res!2938190 () Bool)

(assert (=> b!7243155 (=> (not res!2938190) (not e!4342726))))

(declare-fun size!41648 (List!70335) Int)

(assert (=> b!7243155 (= res!2938190 (= (size!41648 lt!2580982) (+ (size!41648 (t!384386 s1!1971)) (size!41648 s2!1849))))))

(assert (= (and d!2250512 c!1345241) b!7243153))

(assert (= (and d!2250512 (not c!1345241)) b!7243154))

(assert (= (and d!2250512 res!2938191) b!7243155))

(assert (= (and b!7243155 res!2938190) b!7243156))

(declare-fun m!7918384 () Bool)

(assert (=> b!7243154 m!7918384))

(declare-fun m!7918386 () Bool)

(assert (=> d!2250512 m!7918386))

(declare-fun m!7918388 () Bool)

(assert (=> d!2250512 m!7918388))

(declare-fun m!7918390 () Bool)

(assert (=> d!2250512 m!7918390))

(declare-fun m!7918392 () Bool)

(assert (=> b!7243155 m!7918392))

(declare-fun m!7918394 () Bool)

(assert (=> b!7243155 m!7918394))

(declare-fun m!7918396 () Bool)

(assert (=> b!7243155 m!7918396))

(assert (=> b!7243055 d!2250512))

(declare-fun d!2250514 () Bool)

(declare-fun c!1345253 () Bool)

(declare-fun isEmpty!40450 (List!70335) Bool)

(assert (=> d!2250514 (= c!1345253 (isEmpty!40450 (++!16443 (t!384386 s1!1971) s2!1849)))))

(declare-fun e!4342741 () Bool)

(assert (=> d!2250514 (= (matchZipper!3489 (store ((as const (Array Context!15038 Bool)) false) (Context!15039 (++!16442 (exprs!8019 lt!2580948) (exprs!8019 ct2!328))) true) (++!16443 (t!384386 s1!1971) s2!1849)) e!4342741)))

(declare-fun b!7243182 () Bool)

(declare-fun nullableZipper!2869 ((InoxSet Context!15038)) Bool)

(assert (=> b!7243182 (= e!4342741 (nullableZipper!2869 (store ((as const (Array Context!15038 Bool)) false) (Context!15039 (++!16442 (exprs!8019 lt!2580948) (exprs!8019 ct2!328))) true)))))

(declare-fun b!7243185 () Bool)

(declare-fun head!14856 (List!70335) C!37432)

(declare-fun tail!14243 (List!70335) List!70335)

(assert (=> b!7243185 (= e!4342741 (matchZipper!3489 (derivationStepZipper!3367 (store ((as const (Array Context!15038 Bool)) false) (Context!15039 (++!16442 (exprs!8019 lt!2580948) (exprs!8019 ct2!328))) true) (head!14856 (++!16443 (t!384386 s1!1971) s2!1849))) (tail!14243 (++!16443 (t!384386 s1!1971) s2!1849))))))

(assert (= (and d!2250514 c!1345253) b!7243182))

(assert (= (and d!2250514 (not c!1345253)) b!7243185))

(assert (=> d!2250514 m!7918216))

(declare-fun m!7918432 () Bool)

(assert (=> d!2250514 m!7918432))

(assert (=> b!7243182 m!7918214))

(declare-fun m!7918434 () Bool)

(assert (=> b!7243182 m!7918434))

(assert (=> b!7243185 m!7918216))

(declare-fun m!7918436 () Bool)

(assert (=> b!7243185 m!7918436))

(assert (=> b!7243185 m!7918214))

(assert (=> b!7243185 m!7918436))

(declare-fun m!7918438 () Bool)

(assert (=> b!7243185 m!7918438))

(assert (=> b!7243185 m!7918216))

(declare-fun m!7918440 () Bool)

(assert (=> b!7243185 m!7918440))

(assert (=> b!7243185 m!7918438))

(assert (=> b!7243185 m!7918440))

(declare-fun m!7918442 () Bool)

(assert (=> b!7243185 m!7918442))

(assert (=> b!7243055 d!2250514))

(declare-fun d!2250532 () Bool)

(declare-fun c!1345256 () Bool)

(assert (=> d!2250532 (= c!1345256 (isEmpty!40450 s2!1849))))

(declare-fun e!4342746 () Bool)

(assert (=> d!2250532 (= (matchZipper!3489 (store ((as const (Array Context!15038 Bool)) false) ct2!328 true) s2!1849) e!4342746)))

(declare-fun b!7243192 () Bool)

(assert (=> b!7243192 (= e!4342746 (nullableZipper!2869 (store ((as const (Array Context!15038 Bool)) false) ct2!328 true)))))

(declare-fun b!7243193 () Bool)

(assert (=> b!7243193 (= e!4342746 (matchZipper!3489 (derivationStepZipper!3367 (store ((as const (Array Context!15038 Bool)) false) ct2!328 true) (head!14856 s2!1849)) (tail!14243 s2!1849)))))

(assert (= (and d!2250532 c!1345256) b!7243192))

(assert (= (and d!2250532 (not c!1345256)) b!7243193))

(declare-fun m!7918444 () Bool)

(assert (=> d!2250532 m!7918444))

(assert (=> b!7243192 m!7918238))

(declare-fun m!7918446 () Bool)

(assert (=> b!7243192 m!7918446))

(declare-fun m!7918448 () Bool)

(assert (=> b!7243193 m!7918448))

(assert (=> b!7243193 m!7918238))

(assert (=> b!7243193 m!7918448))

(declare-fun m!7918450 () Bool)

(assert (=> b!7243193 m!7918450))

(declare-fun m!7918452 () Bool)

(assert (=> b!7243193 m!7918452))

(assert (=> b!7243193 m!7918450))

(assert (=> b!7243193 m!7918452))

(declare-fun m!7918454 () Bool)

(assert (=> b!7243193 m!7918454))

(assert (=> b!7243051 d!2250532))

(declare-fun d!2250534 () Bool)

(declare-fun c!1345258 () Bool)

(assert (=> d!2250534 (= c!1345258 (isEmpty!40450 s1!1971))))

(declare-fun e!4342749 () Bool)

(assert (=> d!2250534 (= (matchZipper!3489 lt!2580950 s1!1971) e!4342749)))

(declare-fun b!7243198 () Bool)

(assert (=> b!7243198 (= e!4342749 (nullableZipper!2869 lt!2580950))))

(declare-fun b!7243199 () Bool)

(assert (=> b!7243199 (= e!4342749 (matchZipper!3489 (derivationStepZipper!3367 lt!2580950 (head!14856 s1!1971)) (tail!14243 s1!1971)))))

(assert (= (and d!2250534 c!1345258) b!7243198))

(assert (= (and d!2250534 (not c!1345258)) b!7243199))

(declare-fun m!7918470 () Bool)

(assert (=> d!2250534 m!7918470))

(declare-fun m!7918472 () Bool)

(assert (=> b!7243198 m!7918472))

(declare-fun m!7918474 () Bool)

(assert (=> b!7243199 m!7918474))

(assert (=> b!7243199 m!7918474))

(declare-fun m!7918476 () Bool)

(assert (=> b!7243199 m!7918476))

(declare-fun m!7918478 () Bool)

(assert (=> b!7243199 m!7918478))

(assert (=> b!7243199 m!7918476))

(assert (=> b!7243199 m!7918478))

(declare-fun m!7918480 () Bool)

(assert (=> b!7243199 m!7918480))

(assert (=> start!704020 d!2250534))

(declare-fun bs!1904523 () Bool)

(declare-fun d!2250540 () Bool)

(assert (= bs!1904523 (and d!2250540 b!7243044)))

(declare-fun lambda!442433 () Int)

(assert (=> bs!1904523 (= lambda!442433 lambda!442415)))

(declare-fun bs!1904524 () Bool)

(assert (= bs!1904524 (and d!2250540 d!2250492)))

(assert (=> bs!1904524 (= lambda!442433 lambda!442430)))

(assert (=> d!2250540 (= (inv!89457 ct1!232) (forall!17421 (exprs!8019 ct1!232) lambda!442433))))

(declare-fun bs!1904525 () Bool)

(assert (= bs!1904525 d!2250540))

(declare-fun m!7918488 () Bool)

(assert (=> bs!1904525 m!7918488))

(assert (=> start!704020 d!2250540))

(declare-fun bs!1904526 () Bool)

(declare-fun d!2250544 () Bool)

(assert (= bs!1904526 (and d!2250544 b!7243044)))

(declare-fun lambda!442434 () Int)

(assert (=> bs!1904526 (= lambda!442434 lambda!442415)))

(declare-fun bs!1904527 () Bool)

(assert (= bs!1904527 (and d!2250544 d!2250492)))

(assert (=> bs!1904527 (= lambda!442434 lambda!442430)))

(declare-fun bs!1904528 () Bool)

(assert (= bs!1904528 (and d!2250544 d!2250540)))

(assert (=> bs!1904528 (= lambda!442434 lambda!442433)))

(assert (=> d!2250544 (= (inv!89457 ct2!328) (forall!17421 (exprs!8019 ct2!328) lambda!442434))))

(declare-fun bs!1904529 () Bool)

(assert (= bs!1904529 d!2250544))

(declare-fun m!7918490 () Bool)

(assert (=> bs!1904529 m!7918490))

(assert (=> start!704020 d!2250544))

(declare-fun d!2250546 () Bool)

(declare-fun dynLambda!28662 (Int Context!15038) (InoxSet Context!15038))

(assert (=> d!2250546 (= (flatMap!2767 lt!2580950 lambda!442417) (dynLambda!28662 lambda!442417 ct1!232))))

(declare-fun lt!2580999 () Unit!163744)

(declare-fun choose!55837 ((InoxSet Context!15038) Context!15038 Int) Unit!163744)

(assert (=> d!2250546 (= lt!2580999 (choose!55837 lt!2580950 ct1!232 lambda!442417))))

(assert (=> d!2250546 (= lt!2580950 (store ((as const (Array Context!15038 Bool)) false) ct1!232 true))))

(assert (=> d!2250546 (= (lemmaFlatMapOnSingletonSet!2190 lt!2580950 ct1!232 lambda!442417) lt!2580999)))

(declare-fun b_lambda!277919 () Bool)

(assert (=> (not b_lambda!277919) (not d!2250546)))

(declare-fun bs!1904530 () Bool)

(assert (= bs!1904530 d!2250546))

(assert (=> bs!1904530 m!7918246))

(declare-fun m!7918492 () Bool)

(assert (=> bs!1904530 m!7918492))

(declare-fun m!7918494 () Bool)

(assert (=> bs!1904530 m!7918494))

(assert (=> bs!1904530 m!7918232))

(assert (=> b!7243048 d!2250546))

(declare-fun d!2250548 () Bool)

(declare-fun nullableFct!3087 (Regex!18579) Bool)

(assert (=> d!2250548 (= (nullable!7872 (h!76658 (exprs!8019 ct1!232))) (nullableFct!3087 (h!76658 (exprs!8019 ct1!232))))))

(declare-fun bs!1904535 () Bool)

(assert (= bs!1904535 d!2250548))

(declare-fun m!7918504 () Bool)

(assert (=> bs!1904535 m!7918504))

(assert (=> b!7243048 d!2250548))

(declare-fun d!2250552 () Bool)

(assert (=> d!2250552 (= (tail!14241 lt!2580934) (t!384385 lt!2580934))))

(assert (=> b!7243048 d!2250552))

(declare-fun d!2250556 () Bool)

(declare-fun choose!55838 ((InoxSet Context!15038) Int) (InoxSet Context!15038))

(assert (=> d!2250556 (= (flatMap!2767 lt!2580949 lambda!442417) (choose!55838 lt!2580949 lambda!442417))))

(declare-fun bs!1904536 () Bool)

(assert (= bs!1904536 d!2250556))

(declare-fun m!7918516 () Bool)

(assert (=> bs!1904536 m!7918516))

(assert (=> b!7243048 d!2250556))

(assert (=> b!7243048 d!2250480))

(declare-fun d!2250558 () Bool)

(assert (=> d!2250558 (forall!17421 (++!16442 (exprs!8019 ct1!232) (exprs!8019 ct2!328)) lambda!442415)))

(declare-fun lt!2581003 () Unit!163744)

(assert (=> d!2250558 (= lt!2581003 (choose!55834 (exprs!8019 ct1!232) (exprs!8019 ct2!328) lambda!442415))))

(assert (=> d!2250558 (forall!17421 (exprs!8019 ct1!232) lambda!442415)))

(assert (=> d!2250558 (= (lemmaConcatPreservesForall!1388 (exprs!8019 ct1!232) (exprs!8019 ct2!328) lambda!442415) lt!2581003)))

(declare-fun bs!1904537 () Bool)

(assert (= bs!1904537 d!2250558))

(assert (=> bs!1904537 m!7918264))

(assert (=> bs!1904537 m!7918264))

(declare-fun m!7918518 () Bool)

(assert (=> bs!1904537 m!7918518))

(declare-fun m!7918520 () Bool)

(assert (=> bs!1904537 m!7918520))

(declare-fun m!7918522 () Bool)

(assert (=> bs!1904537 m!7918522))

(assert (=> b!7243048 d!2250558))

(declare-fun b!7243211 () Bool)

(declare-fun e!4342759 () (InoxSet Context!15038))

(declare-fun e!4342757 () (InoxSet Context!15038))

(assert (=> b!7243211 (= e!4342759 e!4342757)))

(declare-fun c!1345262 () Bool)

(assert (=> b!7243211 (= c!1345262 ((_ is Cons!70210) (exprs!8019 lt!2580933)))))

(declare-fun b!7243212 () Bool)

(declare-fun call!659598 () (InoxSet Context!15038))

(assert (=> b!7243212 (= e!4342757 call!659598)))

(declare-fun b!7243213 () Bool)

(assert (=> b!7243213 (= e!4342759 ((_ map or) call!659598 (derivationStepZipperUp!2433 (Context!15039 (t!384385 (exprs!8019 lt!2580933))) (h!76659 s1!1971))))))

(declare-fun b!7243214 () Bool)

(assert (=> b!7243214 (= e!4342757 ((as const (Array Context!15038 Bool)) false))))

(declare-fun b!7243215 () Bool)

(declare-fun e!4342758 () Bool)

(assert (=> b!7243215 (= e!4342758 (nullable!7872 (h!76658 (exprs!8019 lt!2580933))))))

(declare-fun d!2250560 () Bool)

(declare-fun c!1345263 () Bool)

(assert (=> d!2250560 (= c!1345263 e!4342758)))

(declare-fun res!2938206 () Bool)

(assert (=> d!2250560 (=> (not res!2938206) (not e!4342758))))

(assert (=> d!2250560 (= res!2938206 ((_ is Cons!70210) (exprs!8019 lt!2580933)))))

(assert (=> d!2250560 (= (derivationStepZipperUp!2433 lt!2580933 (h!76659 s1!1971)) e!4342759)))

(declare-fun bm!659593 () Bool)

(assert (=> bm!659593 (= call!659598 (derivationStepZipperDown!2603 (h!76658 (exprs!8019 lt!2580933)) (Context!15039 (t!384385 (exprs!8019 lt!2580933))) (h!76659 s1!1971)))))

(assert (= (and d!2250560 res!2938206) b!7243215))

(assert (= (and d!2250560 c!1345263) b!7243213))

(assert (= (and d!2250560 (not c!1345263)) b!7243211))

(assert (= (and b!7243211 c!1345262) b!7243212))

(assert (= (and b!7243211 (not c!1345262)) b!7243214))

(assert (= (or b!7243213 b!7243212) bm!659593))

(declare-fun m!7918524 () Bool)

(assert (=> b!7243213 m!7918524))

(declare-fun m!7918526 () Bool)

(assert (=> b!7243215 m!7918526))

(declare-fun m!7918528 () Bool)

(assert (=> bm!659593 m!7918528))

(assert (=> b!7243048 d!2250560))

(declare-fun c!1345287 () Bool)

(declare-fun bm!659612 () Bool)

(declare-fun c!1345286 () Bool)

(declare-fun call!659622 () List!70334)

(declare-fun c!1345288 () Bool)

(declare-fun call!659621 () (InoxSet Context!15038))

(assert (=> bm!659612 (= call!659621 (derivationStepZipperDown!2603 (ite c!1345288 (regTwo!37671 (h!76658 (exprs!8019 ct1!232))) (ite c!1345286 (regTwo!37670 (h!76658 (exprs!8019 ct1!232))) (ite c!1345287 (regOne!37670 (h!76658 (exprs!8019 ct1!232))) (reg!18908 (h!76658 (exprs!8019 ct1!232)))))) (ite (or c!1345288 c!1345286) (Context!15039 (tail!14241 lt!2580934)) (Context!15039 call!659622)) (h!76659 s1!1971)))))

(declare-fun b!7243275 () Bool)

(declare-fun e!4342796 () (InoxSet Context!15038))

(declare-fun call!659617 () (InoxSet Context!15038))

(assert (=> b!7243275 (= e!4342796 ((_ map or) call!659617 call!659621))))

(declare-fun b!7243276 () Bool)

(declare-fun e!4342795 () Bool)

(assert (=> b!7243276 (= e!4342795 (nullable!7872 (regOne!37670 (h!76658 (exprs!8019 ct1!232)))))))

(declare-fun b!7243277 () Bool)

(declare-fun e!4342797 () (InoxSet Context!15038))

(declare-fun call!659620 () (InoxSet Context!15038))

(assert (=> b!7243277 (= e!4342797 call!659620)))

(declare-fun b!7243278 () Bool)

(declare-fun e!4342794 () (InoxSet Context!15038))

(declare-fun call!659618 () (InoxSet Context!15038))

(assert (=> b!7243278 (= e!4342794 ((_ map or) call!659617 call!659618))))

(declare-fun bm!659613 () Bool)

(assert (=> bm!659613 (= call!659618 call!659621)))

(declare-fun bm!659614 () Bool)

(declare-fun call!659619 () List!70334)

(assert (=> bm!659614 (= call!659622 call!659619)))

(declare-fun d!2250562 () Bool)

(declare-fun c!1345285 () Bool)

(assert (=> d!2250562 (= c!1345285 (and ((_ is ElementMatch!18579) (h!76658 (exprs!8019 ct1!232))) (= (c!1345205 (h!76658 (exprs!8019 ct1!232))) (h!76659 s1!1971))))))

(declare-fun e!4342793 () (InoxSet Context!15038))

(assert (=> d!2250562 (= (derivationStepZipperDown!2603 (h!76658 (exprs!8019 ct1!232)) (Context!15039 (tail!14241 lt!2580934)) (h!76659 s1!1971)) e!4342793)))

(declare-fun b!7243279 () Bool)

(assert (=> b!7243279 (= e!4342793 (store ((as const (Array Context!15038 Bool)) false) (Context!15039 (tail!14241 lt!2580934)) true))))

(declare-fun b!7243280 () Bool)

(assert (=> b!7243280 (= c!1345286 e!4342795)))

(declare-fun res!2938216 () Bool)

(assert (=> b!7243280 (=> (not res!2938216) (not e!4342795))))

(assert (=> b!7243280 (= res!2938216 ((_ is Concat!27424) (h!76658 (exprs!8019 ct1!232))))))

(assert (=> b!7243280 (= e!4342796 e!4342794)))

(declare-fun b!7243281 () Bool)

(declare-fun e!4342792 () (InoxSet Context!15038))

(assert (=> b!7243281 (= e!4342792 call!659620)))

(declare-fun b!7243282 () Bool)

(declare-fun c!1345284 () Bool)

(assert (=> b!7243282 (= c!1345284 ((_ is Star!18579) (h!76658 (exprs!8019 ct1!232))))))

(assert (=> b!7243282 (= e!4342792 e!4342797)))

(declare-fun b!7243283 () Bool)

(assert (=> b!7243283 (= e!4342797 ((as const (Array Context!15038 Bool)) false))))

(declare-fun bm!659615 () Bool)

(assert (=> bm!659615 (= call!659617 (derivationStepZipperDown!2603 (ite c!1345288 (regOne!37671 (h!76658 (exprs!8019 ct1!232))) (regOne!37670 (h!76658 (exprs!8019 ct1!232)))) (ite c!1345288 (Context!15039 (tail!14241 lt!2580934)) (Context!15039 call!659619)) (h!76659 s1!1971)))))

(declare-fun b!7243284 () Bool)

(assert (=> b!7243284 (= e!4342793 e!4342796)))

(assert (=> b!7243284 (= c!1345288 ((_ is Union!18579) (h!76658 (exprs!8019 ct1!232))))))

(declare-fun bm!659616 () Bool)

(assert (=> bm!659616 (= call!659620 call!659618)))

(declare-fun bm!659617 () Bool)

(declare-fun $colon$colon!2897 (List!70334 Regex!18579) List!70334)

(assert (=> bm!659617 (= call!659619 ($colon$colon!2897 (exprs!8019 (Context!15039 (tail!14241 lt!2580934))) (ite (or c!1345286 c!1345287) (regTwo!37670 (h!76658 (exprs!8019 ct1!232))) (h!76658 (exprs!8019 ct1!232)))))))

(declare-fun b!7243285 () Bool)

(assert (=> b!7243285 (= e!4342794 e!4342792)))

(assert (=> b!7243285 (= c!1345287 ((_ is Concat!27424) (h!76658 (exprs!8019 ct1!232))))))

(assert (= (and d!2250562 c!1345285) b!7243279))

(assert (= (and d!2250562 (not c!1345285)) b!7243284))

(assert (= (and b!7243284 c!1345288) b!7243275))

(assert (= (and b!7243284 (not c!1345288)) b!7243280))

(assert (= (and b!7243280 res!2938216) b!7243276))

(assert (= (and b!7243280 c!1345286) b!7243278))

(assert (= (and b!7243280 (not c!1345286)) b!7243285))

(assert (= (and b!7243285 c!1345287) b!7243281))

(assert (= (and b!7243285 (not c!1345287)) b!7243282))

(assert (= (and b!7243282 c!1345284) b!7243277))

(assert (= (and b!7243282 (not c!1345284)) b!7243283))

(assert (= (or b!7243281 b!7243277) bm!659614))

(assert (= (or b!7243281 b!7243277) bm!659616))

(assert (= (or b!7243278 bm!659614) bm!659617))

(assert (= (or b!7243278 bm!659616) bm!659613))

(assert (= (or b!7243275 bm!659613) bm!659612))

(assert (= (or b!7243275 b!7243278) bm!659615))

(declare-fun m!7918588 () Bool)

(assert (=> bm!659617 m!7918588))

(declare-fun m!7918590 () Bool)

(assert (=> bm!659615 m!7918590))

(declare-fun m!7918592 () Bool)

(assert (=> b!7243276 m!7918592))

(declare-fun m!7918594 () Bool)

(assert (=> bm!659612 m!7918594))

(declare-fun m!7918596 () Bool)

(assert (=> b!7243279 m!7918596))

(assert (=> b!7243048 d!2250562))

(declare-fun d!2250584 () Bool)

(assert (=> d!2250584 (= (flatMap!2767 lt!2580949 lambda!442417) (dynLambda!28662 lambda!442417 lt!2580933))))

(declare-fun lt!2581008 () Unit!163744)

(assert (=> d!2250584 (= lt!2581008 (choose!55837 lt!2580949 lt!2580933 lambda!442417))))

(assert (=> d!2250584 (= lt!2580949 (store ((as const (Array Context!15038 Bool)) false) lt!2580933 true))))

(assert (=> d!2250584 (= (lemmaFlatMapOnSingletonSet!2190 lt!2580949 lt!2580933 lambda!442417) lt!2581008)))

(declare-fun b_lambda!277927 () Bool)

(assert (=> (not b_lambda!277927) (not d!2250584)))

(declare-fun bs!1904544 () Bool)

(assert (= bs!1904544 d!2250584))

(assert (=> bs!1904544 m!7918244))

(declare-fun m!7918598 () Bool)

(assert (=> bs!1904544 m!7918598))

(declare-fun m!7918600 () Bool)

(assert (=> bs!1904544 m!7918600))

(assert (=> bs!1904544 m!7918262))

(assert (=> b!7243048 d!2250584))

(declare-fun d!2250586 () Bool)

(assert (=> d!2250586 (= (flatMap!2767 lt!2580950 lambda!442417) (choose!55838 lt!2580950 lambda!442417))))

(declare-fun bs!1904545 () Bool)

(assert (= bs!1904545 d!2250586))

(declare-fun m!7918602 () Bool)

(assert (=> bs!1904545 m!7918602))

(assert (=> b!7243048 d!2250586))

(declare-fun d!2250588 () Bool)

(declare-fun c!1345289 () Bool)

(assert (=> d!2250588 (= c!1345289 (isEmpty!40450 (t!384386 s1!1971)))))

(declare-fun e!4342798 () Bool)

(assert (=> d!2250588 (= (matchZipper!3489 lt!2580937 (t!384386 s1!1971)) e!4342798)))

(declare-fun b!7243286 () Bool)

(assert (=> b!7243286 (= e!4342798 (nullableZipper!2869 lt!2580937))))

(declare-fun b!7243287 () Bool)

(assert (=> b!7243287 (= e!4342798 (matchZipper!3489 (derivationStepZipper!3367 lt!2580937 (head!14856 (t!384386 s1!1971))) (tail!14243 (t!384386 s1!1971))))))

(assert (= (and d!2250588 c!1345289) b!7243286))

(assert (= (and d!2250588 (not c!1345289)) b!7243287))

(declare-fun m!7918604 () Bool)

(assert (=> d!2250588 m!7918604))

(declare-fun m!7918606 () Bool)

(assert (=> b!7243286 m!7918606))

(declare-fun m!7918608 () Bool)

(assert (=> b!7243287 m!7918608))

(assert (=> b!7243287 m!7918608))

(declare-fun m!7918610 () Bool)

(assert (=> b!7243287 m!7918610))

(declare-fun m!7918612 () Bool)

(assert (=> b!7243287 m!7918612))

(assert (=> b!7243287 m!7918610))

(assert (=> b!7243287 m!7918612))

(declare-fun m!7918614 () Bool)

(assert (=> b!7243287 m!7918614))

(assert (=> b!7243053 d!2250588))

(declare-fun bs!1904546 () Bool)

(declare-fun d!2250590 () Bool)

(assert (= bs!1904546 (and d!2250590 b!7243048)))

(declare-fun lambda!442443 () Int)

(assert (=> bs!1904546 (= lambda!442443 lambda!442417)))

(assert (=> d!2250590 true))

(assert (=> d!2250590 (= (derivationStepZipper!3367 lt!2580950 (h!76659 s1!1971)) (flatMap!2767 lt!2580950 lambda!442443))))

(declare-fun bs!1904547 () Bool)

(assert (= bs!1904547 d!2250590))

(declare-fun m!7918616 () Bool)

(assert (=> bs!1904547 m!7918616))

(assert (=> b!7243053 d!2250590))

(declare-fun d!2250592 () Bool)

(declare-fun lt!2581011 () Bool)

(assert (=> d!2250592 (= lt!2581011 (exists!4278 (toList!11425 lt!2580937) lambda!442416))))

(declare-fun choose!55839 ((InoxSet Context!15038) Int) Bool)

(assert (=> d!2250592 (= lt!2581011 (choose!55839 lt!2580937 lambda!442416))))

(assert (=> d!2250592 (= (exists!4277 lt!2580937 lambda!442416) lt!2581011)))

(declare-fun bs!1904548 () Bool)

(assert (= bs!1904548 d!2250592))

(assert (=> bs!1904548 m!7918278))

(assert (=> bs!1904548 m!7918278))

(declare-fun m!7918618 () Bool)

(assert (=> bs!1904548 m!7918618))

(declare-fun m!7918620 () Bool)

(assert (=> bs!1904548 m!7918620))

(assert (=> b!7243054 d!2250592))

(declare-fun bs!1904549 () Bool)

(declare-fun d!2250594 () Bool)

(assert (= bs!1904549 (and d!2250594 b!7243054)))

(declare-fun lambda!442446 () Int)

(assert (=> bs!1904549 (not (= lambda!442446 lambda!442416))))

(assert (=> d!2250594 true))

(declare-fun order!28913 () Int)

(declare-fun dynLambda!28663 (Int Int) Int)

(assert (=> d!2250594 (< (dynLambda!28663 order!28913 lambda!442416) (dynLambda!28663 order!28913 lambda!442446))))

(declare-fun forall!17422 (List!70336 Int) Bool)

(assert (=> d!2250594 (= (exists!4278 lt!2580940 lambda!442416) (not (forall!17422 lt!2580940 lambda!442446)))))

(declare-fun bs!1904550 () Bool)

(assert (= bs!1904550 d!2250594))

(declare-fun m!7918622 () Bool)

(assert (=> bs!1904550 m!7918622))

(assert (=> b!7243054 d!2250594))

(declare-fun bs!1904551 () Bool)

(declare-fun d!2250596 () Bool)

(assert (= bs!1904551 (and d!2250596 b!7243054)))

(declare-fun lambda!442449 () Int)

(assert (=> bs!1904551 (= lambda!442449 lambda!442416)))

(declare-fun bs!1904552 () Bool)

(assert (= bs!1904552 (and d!2250596 d!2250594)))

(assert (=> bs!1904552 (not (= lambda!442449 lambda!442446))))

(assert (=> d!2250596 true))

(assert (=> d!2250596 (exists!4278 lt!2580940 lambda!442449)))

(declare-fun lt!2581014 () Unit!163744)

(declare-fun choose!55840 (List!70336 List!70335) Unit!163744)

(assert (=> d!2250596 (= lt!2581014 (choose!55840 lt!2580940 (t!384386 s1!1971)))))

(declare-fun content!14518 (List!70336) (InoxSet Context!15038))

(assert (=> d!2250596 (matchZipper!3489 (content!14518 lt!2580940) (t!384386 s1!1971))))

(assert (=> d!2250596 (= (lemmaZipperMatchesExistsMatchingContext!706 lt!2580940 (t!384386 s1!1971)) lt!2581014)))

(declare-fun bs!1904553 () Bool)

(assert (= bs!1904553 d!2250596))

(declare-fun m!7918624 () Bool)

(assert (=> bs!1904553 m!7918624))

(declare-fun m!7918626 () Bool)

(assert (=> bs!1904553 m!7918626))

(declare-fun m!7918628 () Bool)

(assert (=> bs!1904553 m!7918628))

(assert (=> bs!1904553 m!7918628))

(declare-fun m!7918630 () Bool)

(assert (=> bs!1904553 m!7918630))

(assert (=> b!7243054 d!2250596))

(declare-fun d!2250598 () Bool)

(declare-fun e!4342801 () Bool)

(assert (=> d!2250598 e!4342801))

(declare-fun res!2938219 () Bool)

(assert (=> d!2250598 (=> (not res!2938219) (not e!4342801))))

(declare-fun lt!2581017 () List!70336)

(declare-fun noDuplicate!2962 (List!70336) Bool)

(assert (=> d!2250598 (= res!2938219 (noDuplicate!2962 lt!2581017))))

(declare-fun choose!55841 ((InoxSet Context!15038)) List!70336)

(assert (=> d!2250598 (= lt!2581017 (choose!55841 lt!2580937))))

(assert (=> d!2250598 (= (toList!11425 lt!2580937) lt!2581017)))

(declare-fun b!7243294 () Bool)

(assert (=> b!7243294 (= e!4342801 (= (content!14518 lt!2581017) lt!2580937))))

(assert (= (and d!2250598 res!2938219) b!7243294))

(declare-fun m!7918632 () Bool)

(assert (=> d!2250598 m!7918632))

(declare-fun m!7918634 () Bool)

(assert (=> d!2250598 m!7918634))

(declare-fun m!7918636 () Bool)

(assert (=> b!7243294 m!7918636))

(assert (=> b!7243054 d!2250598))

(declare-fun d!2250600 () Bool)

(assert (=> d!2250600 (= (tail!14241 (exprs!8019 ct1!232)) (t!384385 (exprs!8019 ct1!232)))))

(assert (=> b!7243043 d!2250600))

(declare-fun c!1345298 () Bool)

(declare-fun c!1345297 () Bool)

(declare-fun bm!659618 () Bool)

(declare-fun call!659628 () List!70334)

(declare-fun call!659627 () (InoxSet Context!15038))

(declare-fun c!1345296 () Bool)

(assert (=> bm!659618 (= call!659627 (derivationStepZipperDown!2603 (ite c!1345298 (regTwo!37671 (h!76658 (exprs!8019 ct1!232))) (ite c!1345296 (regTwo!37670 (h!76658 (exprs!8019 ct1!232))) (ite c!1345297 (regOne!37670 (h!76658 (exprs!8019 ct1!232))) (reg!18908 (h!76658 (exprs!8019 ct1!232)))))) (ite (or c!1345298 c!1345296) lt!2580941 (Context!15039 call!659628)) (h!76659 s1!1971)))))

(declare-fun b!7243295 () Bool)

(declare-fun e!4342806 () (InoxSet Context!15038))

(declare-fun call!659623 () (InoxSet Context!15038))

(assert (=> b!7243295 (= e!4342806 ((_ map or) call!659623 call!659627))))

(declare-fun b!7243296 () Bool)

(declare-fun e!4342805 () Bool)

(assert (=> b!7243296 (= e!4342805 (nullable!7872 (regOne!37670 (h!76658 (exprs!8019 ct1!232)))))))

(declare-fun b!7243297 () Bool)

(declare-fun e!4342807 () (InoxSet Context!15038))

(declare-fun call!659626 () (InoxSet Context!15038))

(assert (=> b!7243297 (= e!4342807 call!659626)))

(declare-fun b!7243298 () Bool)

(declare-fun e!4342804 () (InoxSet Context!15038))

(declare-fun call!659624 () (InoxSet Context!15038))

(assert (=> b!7243298 (= e!4342804 ((_ map or) call!659623 call!659624))))

(declare-fun bm!659619 () Bool)

(assert (=> bm!659619 (= call!659624 call!659627)))

(declare-fun bm!659620 () Bool)

(declare-fun call!659625 () List!70334)

(assert (=> bm!659620 (= call!659628 call!659625)))

(declare-fun d!2250602 () Bool)

(declare-fun c!1345295 () Bool)

(assert (=> d!2250602 (= c!1345295 (and ((_ is ElementMatch!18579) (h!76658 (exprs!8019 ct1!232))) (= (c!1345205 (h!76658 (exprs!8019 ct1!232))) (h!76659 s1!1971))))))

(declare-fun e!4342803 () (InoxSet Context!15038))

(assert (=> d!2250602 (= (derivationStepZipperDown!2603 (h!76658 (exprs!8019 ct1!232)) lt!2580941 (h!76659 s1!1971)) e!4342803)))

(declare-fun b!7243299 () Bool)

(assert (=> b!7243299 (= e!4342803 (store ((as const (Array Context!15038 Bool)) false) lt!2580941 true))))

(declare-fun b!7243300 () Bool)

(assert (=> b!7243300 (= c!1345296 e!4342805)))

(declare-fun res!2938220 () Bool)

(assert (=> b!7243300 (=> (not res!2938220) (not e!4342805))))

(assert (=> b!7243300 (= res!2938220 ((_ is Concat!27424) (h!76658 (exprs!8019 ct1!232))))))

(assert (=> b!7243300 (= e!4342806 e!4342804)))

(declare-fun b!7243301 () Bool)

(declare-fun e!4342802 () (InoxSet Context!15038))

(assert (=> b!7243301 (= e!4342802 call!659626)))

(declare-fun b!7243302 () Bool)

(declare-fun c!1345294 () Bool)

(assert (=> b!7243302 (= c!1345294 ((_ is Star!18579) (h!76658 (exprs!8019 ct1!232))))))

(assert (=> b!7243302 (= e!4342802 e!4342807)))

(declare-fun b!7243303 () Bool)

(assert (=> b!7243303 (= e!4342807 ((as const (Array Context!15038 Bool)) false))))

(declare-fun bm!659621 () Bool)

(assert (=> bm!659621 (= call!659623 (derivationStepZipperDown!2603 (ite c!1345298 (regOne!37671 (h!76658 (exprs!8019 ct1!232))) (regOne!37670 (h!76658 (exprs!8019 ct1!232)))) (ite c!1345298 lt!2580941 (Context!15039 call!659625)) (h!76659 s1!1971)))))

(declare-fun b!7243304 () Bool)

(assert (=> b!7243304 (= e!4342803 e!4342806)))

(assert (=> b!7243304 (= c!1345298 ((_ is Union!18579) (h!76658 (exprs!8019 ct1!232))))))

(declare-fun bm!659622 () Bool)

(assert (=> bm!659622 (= call!659626 call!659624)))

(declare-fun bm!659623 () Bool)

(assert (=> bm!659623 (= call!659625 ($colon$colon!2897 (exprs!8019 lt!2580941) (ite (or c!1345296 c!1345297) (regTwo!37670 (h!76658 (exprs!8019 ct1!232))) (h!76658 (exprs!8019 ct1!232)))))))

(declare-fun b!7243305 () Bool)

(assert (=> b!7243305 (= e!4342804 e!4342802)))

(assert (=> b!7243305 (= c!1345297 ((_ is Concat!27424) (h!76658 (exprs!8019 ct1!232))))))

(assert (= (and d!2250602 c!1345295) b!7243299))

(assert (= (and d!2250602 (not c!1345295)) b!7243304))

(assert (= (and b!7243304 c!1345298) b!7243295))

(assert (= (and b!7243304 (not c!1345298)) b!7243300))

(assert (= (and b!7243300 res!2938220) b!7243296))

(assert (= (and b!7243300 c!1345296) b!7243298))

(assert (= (and b!7243300 (not c!1345296)) b!7243305))

(assert (= (and b!7243305 c!1345297) b!7243301))

(assert (= (and b!7243305 (not c!1345297)) b!7243302))

(assert (= (and b!7243302 c!1345294) b!7243297))

(assert (= (and b!7243302 (not c!1345294)) b!7243303))

(assert (= (or b!7243301 b!7243297) bm!659620))

(assert (= (or b!7243301 b!7243297) bm!659622))

(assert (= (or b!7243298 bm!659620) bm!659623))

(assert (= (or b!7243298 bm!659622) bm!659619))

(assert (= (or b!7243295 bm!659619) bm!659618))

(assert (= (or b!7243295 b!7243298) bm!659621))

(declare-fun m!7918638 () Bool)

(assert (=> bm!659623 m!7918638))

(declare-fun m!7918640 () Bool)

(assert (=> bm!659621 m!7918640))

(assert (=> b!7243296 m!7918592))

(declare-fun m!7918642 () Bool)

(assert (=> bm!659618 m!7918642))

(declare-fun m!7918644 () Bool)

(assert (=> b!7243299 m!7918644))

(assert (=> b!7243043 d!2250602))

(declare-fun d!2250604 () Bool)

(assert (=> d!2250604 (= (isEmpty!40448 lt!2580934) ((_ is Nil!70210) lt!2580934))))

(assert (=> b!7243043 d!2250604))

(assert (=> b!7243043 d!2250558))

(assert (=> b!7243043 d!2250560))

(declare-fun b!7243309 () Bool)

(declare-fun e!4342809 () Bool)

(declare-fun lt!2581018 () List!70334)

(assert (=> b!7243309 (= e!4342809 (or (not (= (exprs!8019 ct2!328) Nil!70210)) (= lt!2581018 (exprs!8019 ct1!232))))))

(declare-fun d!2250606 () Bool)

(assert (=> d!2250606 e!4342809))

(declare-fun res!2938221 () Bool)

(assert (=> d!2250606 (=> (not res!2938221) (not e!4342809))))

(assert (=> d!2250606 (= res!2938221 (= (content!14515 lt!2581018) ((_ map or) (content!14515 (exprs!8019 ct1!232)) (content!14515 (exprs!8019 ct2!328)))))))

(declare-fun e!4342808 () List!70334)

(assert (=> d!2250606 (= lt!2581018 e!4342808)))

(declare-fun c!1345299 () Bool)

(assert (=> d!2250606 (= c!1345299 ((_ is Nil!70210) (exprs!8019 ct1!232)))))

(assert (=> d!2250606 (= (++!16442 (exprs!8019 ct1!232) (exprs!8019 ct2!328)) lt!2581018)))

(declare-fun b!7243308 () Bool)

(declare-fun res!2938222 () Bool)

(assert (=> b!7243308 (=> (not res!2938222) (not e!4342809))))

(assert (=> b!7243308 (= res!2938222 (= (size!41646 lt!2581018) (+ (size!41646 (exprs!8019 ct1!232)) (size!41646 (exprs!8019 ct2!328)))))))

(declare-fun b!7243306 () Bool)

(assert (=> b!7243306 (= e!4342808 (exprs!8019 ct2!328))))

(declare-fun b!7243307 () Bool)

(assert (=> b!7243307 (= e!4342808 (Cons!70210 (h!76658 (exprs!8019 ct1!232)) (++!16442 (t!384385 (exprs!8019 ct1!232)) (exprs!8019 ct2!328))))))

(assert (= (and d!2250606 c!1345299) b!7243306))

(assert (= (and d!2250606 (not c!1345299)) b!7243307))

(assert (= (and d!2250606 res!2938221) b!7243308))

(assert (= (and b!7243308 res!2938222) b!7243309))

(declare-fun m!7918646 () Bool)

(assert (=> d!2250606 m!7918646))

(declare-fun m!7918648 () Bool)

(assert (=> d!2250606 m!7918648))

(assert (=> d!2250606 m!7918312))

(declare-fun m!7918650 () Bool)

(assert (=> b!7243308 m!7918650))

(declare-fun m!7918652 () Bool)

(assert (=> b!7243308 m!7918652))

(assert (=> b!7243308 m!7918318))

(declare-fun m!7918654 () Bool)

(assert (=> b!7243307 m!7918654))

(assert (=> b!7243044 d!2250606))

(assert (=> b!7243044 d!2250558))

(declare-fun b!7243314 () Bool)

(declare-fun e!4342812 () Bool)

(declare-fun tp!2035819 () Bool)

(assert (=> b!7243314 (= e!4342812 (and tp_is_empty!46623 tp!2035819))))

(assert (=> b!7243045 (= tp!2035804 e!4342812)))

(assert (= (and b!7243045 ((_ is Cons!70211) (t!384386 s1!1971))) b!7243314))

(declare-fun b!7243319 () Bool)

(declare-fun e!4342815 () Bool)

(declare-fun tp!2035824 () Bool)

(declare-fun tp!2035825 () Bool)

(assert (=> b!7243319 (= e!4342815 (and tp!2035824 tp!2035825))))

(assert (=> b!7243046 (= tp!2035801 e!4342815)))

(assert (= (and b!7243046 ((_ is Cons!70210) (exprs!8019 ct2!328))) b!7243319))

(declare-fun b!7243320 () Bool)

(declare-fun e!4342816 () Bool)

(declare-fun tp!2035826 () Bool)

(declare-fun tp!2035827 () Bool)

(assert (=> b!7243320 (= e!4342816 (and tp!2035826 tp!2035827))))

(assert (=> b!7243047 (= tp!2035803 e!4342816)))

(assert (= (and b!7243047 ((_ is Cons!70210) (exprs!8019 ct1!232))) b!7243320))

(declare-fun b!7243321 () Bool)

(declare-fun e!4342817 () Bool)

(declare-fun tp!2035828 () Bool)

(assert (=> b!7243321 (= e!4342817 (and tp_is_empty!46623 tp!2035828))))

(assert (=> b!7243049 (= tp!2035802 e!4342817)))

(assert (= (and b!7243049 ((_ is Cons!70211) (t!384386 s2!1849))) b!7243321))

(declare-fun b_lambda!277929 () Bool)

(assert (= b_lambda!277927 (or b!7243048 b_lambda!277929)))

(declare-fun bs!1904554 () Bool)

(declare-fun d!2250608 () Bool)

(assert (= bs!1904554 (and d!2250608 b!7243048)))

(assert (=> bs!1904554 (= (dynLambda!28662 lambda!442417 lt!2580933) (derivationStepZipperUp!2433 lt!2580933 (h!76659 s1!1971)))))

(assert (=> bs!1904554 m!7918258))

(assert (=> d!2250584 d!2250608))

(declare-fun b_lambda!277931 () Bool)

(assert (= b_lambda!277919 (or b!7243048 b_lambda!277931)))

(declare-fun bs!1904555 () Bool)

(declare-fun d!2250610 () Bool)

(assert (= bs!1904555 (and d!2250610 b!7243048)))

(assert (=> bs!1904555 (= (dynLambda!28662 lambda!442417 ct1!232) (derivationStepZipperUp!2433 ct1!232 (h!76659 s1!1971)))))

(assert (=> bs!1904555 m!7918222))

(assert (=> d!2250546 d!2250610))

(declare-fun b_lambda!277933 () Bool)

(assert (= b_lambda!277911 (or b!7243054 b_lambda!277933)))

(declare-fun bs!1904556 () Bool)

(declare-fun d!2250612 () Bool)

(assert (= bs!1904556 (and d!2250612 b!7243054)))

(assert (=> bs!1904556 (= (dynLambda!28660 lambda!442416 lt!2580955) (matchZipper!3489 (store ((as const (Array Context!15038 Bool)) false) lt!2580955 true) (t!384386 s1!1971)))))

(declare-fun m!7918656 () Bool)

(assert (=> bs!1904556 m!7918656))

(assert (=> bs!1904556 m!7918656))

(declare-fun m!7918658 () Bool)

(assert (=> bs!1904556 m!7918658))

(assert (=> d!2250476 d!2250612))

(check-sat (not b!7243276) (not bm!659623) (not b!7243287) (not bs!1904555) (not b!7243321) (not bm!659568) (not d!2250556) (not b!7243314) (not d!2250512) (not bm!659621) (not b!7243215) (not d!2250594) (not b!7243182) (not d!2250484) (not b!7243296) (not d!2250514) (not b_lambda!277933) (not d!2250492) (not b!7243320) (not b!7243198) (not b!7243213) (not d!2250588) (not d!2250540) (not b_lambda!277931) (not b!7243185) (not b!7243319) (not b!7243307) (not b!7243199) (not d!2250534) (not d!2250544) (not d!2250586) (not bm!659615) (not b!7243072) (not b_lambda!277929) (not bm!659593) (not d!2250596) (not b!7243308) (not bm!659618) (not b!7243074) (not bm!659569) (not bm!659612) (not d!2250558) (not d!2250606) (not b!7243080) (not b!7243286) (not b!7243294) (not d!2250590) (not b!7243154) tp_is_empty!46623 (not d!2250546) (not b!7243155) (not bs!1904556) (not b!7243082) (not b!7243094) (not d!2250548) (not d!2250598) (not b!7243095) (not d!2250476) (not d!2250592) (not b!7243193) (not bs!1904554) (not d!2250584) (not d!2250482) (not d!2250532) (not b!7243192) (not bm!659617))
(check-sat)
