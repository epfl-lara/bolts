; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!274430 () Bool)

(assert start!274430)

(declare-fun b_free!81075 () Bool)

(declare-fun b_next!81779 () Bool)

(assert (=> start!274430 (= b_free!81075 (not b_next!81779))))

(declare-fun tp!902930 () Bool)

(declare-fun b_and!206649 () Bool)

(assert (=> start!274430 (= tp!902930 b_and!206649)))

(declare-fun b!2826947 () Bool)

(declare-fun res!1176595 () Bool)

(declare-fun e!1789217 () Bool)

(assert (=> b!2826947 (=> (not res!1176595) (not e!1789217))))

(declare-datatypes ((B!2461 0))(
  ( (B!2462 (val!10450 Int)) )
))
(declare-datatypes ((List!33339 0))(
  ( (Nil!33215) (Cons!33215 (h!38635 B!2461) (t!231066 List!33339)) )
))
(declare-fun l1!953 () List!33339)

(declare-fun l2!930 () List!33339)

(declare-fun subseq!469 (List!33339 List!33339) Bool)

(assert (=> b!2826947 (= res!1176595 (subseq!469 l1!953 l2!930))))

(declare-fun res!1176596 () Bool)

(assert (=> start!274430 (=> (not res!1176596) (not e!1789217))))

(declare-fun p!1912 () Int)

(declare-fun forall!6815 (List!33339 Int) Bool)

(assert (=> start!274430 (= res!1176596 (forall!6815 l2!930 p!1912))))

(assert (=> start!274430 e!1789217))

(declare-fun e!1789219 () Bool)

(assert (=> start!274430 e!1789219))

(assert (=> start!274430 tp!902930))

(declare-fun e!1789218 () Bool)

(assert (=> start!274430 e!1789218))

(declare-fun b!2826948 () Bool)

(declare-fun tp_is_empty!14511 () Bool)

(declare-fun tp!902929 () Bool)

(assert (=> b!2826948 (= e!1789218 (and tp_is_empty!14511 tp!902929))))

(declare-fun b!2826949 () Bool)

(declare-fun res!1176593 () Bool)

(assert (=> b!2826949 (=> (not res!1176593) (not e!1789217))))

(get-info :version)

(assert (=> b!2826949 (= res!1176593 (and (not ((_ is Nil!33215) l1!953)) ((_ is Cons!33215) l2!930)))))

(declare-fun b!2826950 () Bool)

(assert (=> b!2826950 (= e!1789217 (not (subseq!469 l1!953 (t!231066 l2!930))))))

(declare-fun b!2826951 () Bool)

(declare-fun res!1176594 () Bool)

(assert (=> b!2826951 (=> (not res!1176594) (not e!1789217))))

(declare-fun e!1789220 () Bool)

(assert (=> b!2826951 (= res!1176594 e!1789220)))

(declare-fun res!1176597 () Bool)

(assert (=> b!2826951 (=> res!1176597 e!1789220)))

(assert (=> b!2826951 (= res!1176597 (not (= (h!38635 l1!953) (h!38635 l2!930))))))

(declare-fun b!2826952 () Bool)

(declare-fun tp!902928 () Bool)

(assert (=> b!2826952 (= e!1789219 (and tp_is_empty!14511 tp!902928))))

(declare-fun b!2826953 () Bool)

(assert (=> b!2826953 (= e!1789220 (not (subseq!469 (t!231066 l1!953) (t!231066 l2!930))))))

(assert (= (and start!274430 res!1176596) b!2826947))

(assert (= (and b!2826947 res!1176595) b!2826949))

(assert (= (and b!2826949 res!1176593) b!2826951))

(assert (= (and b!2826951 (not res!1176597)) b!2826953))

(assert (= (and b!2826951 res!1176594) b!2826950))

(assert (= (and start!274430 ((_ is Cons!33215) l2!930)) b!2826952))

(assert (= (and start!274430 ((_ is Cons!33215) l1!953)) b!2826948))

(declare-fun m!3256919 () Bool)

(assert (=> b!2826947 m!3256919))

(declare-fun m!3256921 () Bool)

(assert (=> start!274430 m!3256921))

(declare-fun m!3256923 () Bool)

(assert (=> b!2826950 m!3256923))

(declare-fun m!3256925 () Bool)

(assert (=> b!2826953 m!3256925))

(check-sat b_and!206649 (not b!2826953) (not b!2826947) (not b!2826950) (not b_next!81779) (not b!2826948) tp_is_empty!14511 (not b!2826952) (not start!274430))
(check-sat b_and!206649 (not b_next!81779))
(get-model)

(declare-fun b!2826980 () Bool)

(declare-fun e!1789245 () Bool)

(assert (=> b!2826980 (= e!1789245 (subseq!469 (t!231066 l1!953) (t!231066 (t!231066 l2!930))))))

(declare-fun b!2826979 () Bool)

(declare-fun e!1789247 () Bool)

(declare-fun e!1789248 () Bool)

(assert (=> b!2826979 (= e!1789247 e!1789248)))

(declare-fun res!1176623 () Bool)

(assert (=> b!2826979 (=> res!1176623 e!1789248)))

(assert (=> b!2826979 (= res!1176623 e!1789245)))

(declare-fun res!1176624 () Bool)

(assert (=> b!2826979 (=> (not res!1176624) (not e!1789245))))

(assert (=> b!2826979 (= res!1176624 (= (h!38635 l1!953) (h!38635 (t!231066 l2!930))))))

(declare-fun b!2826981 () Bool)

(assert (=> b!2826981 (= e!1789248 (subseq!469 l1!953 (t!231066 (t!231066 l2!930))))))

(declare-fun b!2826978 () Bool)

(declare-fun e!1789246 () Bool)

(assert (=> b!2826978 (= e!1789246 e!1789247)))

(declare-fun res!1176622 () Bool)

(assert (=> b!2826978 (=> (not res!1176622) (not e!1789247))))

(assert (=> b!2826978 (= res!1176622 ((_ is Cons!33215) (t!231066 l2!930)))))

(declare-fun d!820468 () Bool)

(declare-fun res!1176625 () Bool)

(assert (=> d!820468 (=> res!1176625 e!1789246)))

(assert (=> d!820468 (= res!1176625 ((_ is Nil!33215) l1!953))))

(assert (=> d!820468 (= (subseq!469 l1!953 (t!231066 l2!930)) e!1789246)))

(assert (= (and d!820468 (not res!1176625)) b!2826978))

(assert (= (and b!2826978 res!1176622) b!2826979))

(assert (= (and b!2826979 res!1176624) b!2826980))

(assert (= (and b!2826979 (not res!1176623)) b!2826981))

(declare-fun m!3256933 () Bool)

(assert (=> b!2826980 m!3256933))

(declare-fun m!3256935 () Bool)

(assert (=> b!2826981 m!3256935))

(assert (=> b!2826950 d!820468))

(declare-fun b!2826988 () Bool)

(declare-fun e!1789253 () Bool)

(assert (=> b!2826988 (= e!1789253 (subseq!469 (t!231066 l1!953) (t!231066 l2!930)))))

(declare-fun b!2826987 () Bool)

(declare-fun e!1789255 () Bool)

(declare-fun e!1789256 () Bool)

(assert (=> b!2826987 (= e!1789255 e!1789256)))

(declare-fun res!1176631 () Bool)

(assert (=> b!2826987 (=> res!1176631 e!1789256)))

(assert (=> b!2826987 (= res!1176631 e!1789253)))

(declare-fun res!1176632 () Bool)

(assert (=> b!2826987 (=> (not res!1176632) (not e!1789253))))

(assert (=> b!2826987 (= res!1176632 (= (h!38635 l1!953) (h!38635 l2!930)))))

(declare-fun b!2826989 () Bool)

(assert (=> b!2826989 (= e!1789256 (subseq!469 l1!953 (t!231066 l2!930)))))

(declare-fun b!2826986 () Bool)

(declare-fun e!1789254 () Bool)

(assert (=> b!2826986 (= e!1789254 e!1789255)))

(declare-fun res!1176630 () Bool)

(assert (=> b!2826986 (=> (not res!1176630) (not e!1789255))))

(assert (=> b!2826986 (= res!1176630 ((_ is Cons!33215) l2!930))))

(declare-fun d!820474 () Bool)

(declare-fun res!1176633 () Bool)

(assert (=> d!820474 (=> res!1176633 e!1789254)))

(assert (=> d!820474 (= res!1176633 ((_ is Nil!33215) l1!953))))

(assert (=> d!820474 (= (subseq!469 l1!953 l2!930) e!1789254)))

(assert (= (and d!820474 (not res!1176633)) b!2826986))

(assert (= (and b!2826986 res!1176630) b!2826987))

(assert (= (and b!2826987 res!1176632) b!2826988))

(assert (= (and b!2826987 (not res!1176631)) b!2826989))

(assert (=> b!2826988 m!3256925))

(assert (=> b!2826989 m!3256923))

(assert (=> b!2826947 d!820474))

(declare-fun b!2826992 () Bool)

(declare-fun e!1789257 () Bool)

(assert (=> b!2826992 (= e!1789257 (subseq!469 (t!231066 (t!231066 l1!953)) (t!231066 (t!231066 l2!930))))))

(declare-fun b!2826991 () Bool)

(declare-fun e!1789259 () Bool)

(declare-fun e!1789260 () Bool)

(assert (=> b!2826991 (= e!1789259 e!1789260)))

(declare-fun res!1176635 () Bool)

(assert (=> b!2826991 (=> res!1176635 e!1789260)))

(assert (=> b!2826991 (= res!1176635 e!1789257)))

(declare-fun res!1176636 () Bool)

(assert (=> b!2826991 (=> (not res!1176636) (not e!1789257))))

(assert (=> b!2826991 (= res!1176636 (= (h!38635 (t!231066 l1!953)) (h!38635 (t!231066 l2!930))))))

(declare-fun b!2826993 () Bool)

(assert (=> b!2826993 (= e!1789260 (subseq!469 (t!231066 l1!953) (t!231066 (t!231066 l2!930))))))

(declare-fun b!2826990 () Bool)

(declare-fun e!1789258 () Bool)

(assert (=> b!2826990 (= e!1789258 e!1789259)))

(declare-fun res!1176634 () Bool)

(assert (=> b!2826990 (=> (not res!1176634) (not e!1789259))))

(assert (=> b!2826990 (= res!1176634 ((_ is Cons!33215) (t!231066 l2!930)))))

(declare-fun d!820476 () Bool)

(declare-fun res!1176637 () Bool)

(assert (=> d!820476 (=> res!1176637 e!1789258)))

(assert (=> d!820476 (= res!1176637 ((_ is Nil!33215) (t!231066 l1!953)))))

(assert (=> d!820476 (= (subseq!469 (t!231066 l1!953) (t!231066 l2!930)) e!1789258)))

(assert (= (and d!820476 (not res!1176637)) b!2826990))

(assert (= (and b!2826990 res!1176634) b!2826991))

(assert (= (and b!2826991 res!1176636) b!2826992))

(assert (= (and b!2826991 (not res!1176635)) b!2826993))

(declare-fun m!3256937 () Bool)

(assert (=> b!2826992 m!3256937))

(assert (=> b!2826993 m!3256933))

(assert (=> b!2826953 d!820476))

(declare-fun d!820478 () Bool)

(declare-fun res!1176648 () Bool)

(declare-fun e!1789275 () Bool)

(assert (=> d!820478 (=> res!1176648 e!1789275)))

(assert (=> d!820478 (= res!1176648 ((_ is Nil!33215) l2!930))))

(assert (=> d!820478 (= (forall!6815 l2!930 p!1912) e!1789275)))

(declare-fun b!2827010 () Bool)

(declare-fun e!1789276 () Bool)

(assert (=> b!2827010 (= e!1789275 e!1789276)))

(declare-fun res!1176649 () Bool)

(assert (=> b!2827010 (=> (not res!1176649) (not e!1789276))))

(declare-fun dynLambda!13962 (Int B!2461) Bool)

(assert (=> b!2827010 (= res!1176649 (dynLambda!13962 p!1912 (h!38635 l2!930)))))

(declare-fun b!2827011 () Bool)

(assert (=> b!2827011 (= e!1789276 (forall!6815 (t!231066 l2!930) p!1912))))

(assert (= (and d!820478 (not res!1176648)) b!2827010))

(assert (= (and b!2827010 res!1176649) b!2827011))

(declare-fun b_lambda!84823 () Bool)

(assert (=> (not b_lambda!84823) (not b!2827010)))

(declare-fun t!231070 () Bool)

(declare-fun tb!154087 () Bool)

(assert (=> (and start!274430 (= p!1912 p!1912) t!231070) tb!154087))

(declare-fun result!191994 () Bool)

(assert (=> tb!154087 (= result!191994 true)))

(assert (=> b!2827010 t!231070))

(declare-fun b_and!206653 () Bool)

(assert (= b_and!206649 (and (=> t!231070 result!191994) b_and!206653)))

(declare-fun m!3256943 () Bool)

(assert (=> b!2827010 m!3256943))

(declare-fun m!3256945 () Bool)

(assert (=> b!2827011 m!3256945))

(assert (=> start!274430 d!820478))

(declare-fun b!2827016 () Bool)

(declare-fun e!1789279 () Bool)

(declare-fun tp!902937 () Bool)

(assert (=> b!2827016 (= e!1789279 (and tp_is_empty!14511 tp!902937))))

(assert (=> b!2826952 (= tp!902928 e!1789279)))

(assert (= (and b!2826952 ((_ is Cons!33215) (t!231066 l2!930))) b!2827016))

(declare-fun b!2827017 () Bool)

(declare-fun e!1789280 () Bool)

(declare-fun tp!902938 () Bool)

(assert (=> b!2827017 (= e!1789280 (and tp_is_empty!14511 tp!902938))))

(assert (=> b!2826948 (= tp!902929 e!1789280)))

(assert (= (and b!2826948 ((_ is Cons!33215) (t!231066 l1!953))) b!2827017))

(declare-fun b_lambda!84825 () Bool)

(assert (= b_lambda!84823 (or (and start!274430 b_free!81075) b_lambda!84825)))

(check-sat (not b!2827011) (not b!2826988) (not b!2826980) (not b!2827017) (not b_next!81779) b_and!206653 (not b!2826993) (not b!2827016) (not b!2826989) (not b!2826992) (not b_lambda!84825) (not b!2826981) tp_is_empty!14511)
(check-sat b_and!206653 (not b_next!81779))
