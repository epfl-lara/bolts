; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!238102 () Bool)

(assert start!238102)

(declare-fun b!2431898 () Bool)

(assert (=> b!2431898 true))

(assert (=> b!2431898 true))

(declare-fun b!2431895 () Bool)

(declare-fun e!1546137 () Bool)

(declare-fun tp!772414 () Bool)

(declare-fun tp!772420 () Bool)

(assert (=> b!2431895 (= e!1546137 (and tp!772414 tp!772420))))

(declare-fun res!1032431 () Bool)

(declare-fun e!1546136 () Bool)

(assert (=> start!238102 (=> (not res!1032431) (not e!1546136))))

(declare-datatypes ((C!14454 0))(
  ( (C!14455 (val!8469 Int)) )
))
(declare-datatypes ((Regex!7148 0))(
  ( (ElementMatch!7148 (c!387984 C!14454)) (Concat!11784 (regOne!14808 Regex!7148) (regTwo!14808 Regex!7148)) (EmptyExpr!7148) (Star!7148 (reg!7477 Regex!7148)) (EmptyLang!7148) (Union!7148 (regOne!14809 Regex!7148) (regTwo!14809 Regex!7148)) )
))
(declare-datatypes ((List!28532 0))(
  ( (Nil!28434) (Cons!28434 (h!33835 Regex!7148) (t!208509 List!28532)) )
))
(declare-fun l!9164 () List!28532)

(declare-fun lambda!91696 () Int)

(declare-fun forall!5782 (List!28532 Int) Bool)

(assert (=> start!238102 (= res!1032431 (forall!5782 l!9164 lambda!91696))))

(assert (=> start!238102 e!1546136))

(declare-fun e!1546134 () Bool)

(assert (=> start!238102 e!1546134))

(assert (=> start!238102 e!1546137))

(declare-fun e!1546133 () Bool)

(assert (=> start!238102 e!1546133))

(declare-fun b!2431896 () Bool)

(declare-fun tp_is_empty!11709 () Bool)

(assert (=> b!2431896 (= e!1546137 tp_is_empty!11709)))

(declare-fun b!2431897 () Bool)

(declare-fun tp!772418 () Bool)

(assert (=> b!2431897 (= e!1546137 tp!772418)))

(declare-fun e!1546135 () Bool)

(declare-fun r!13927 () Regex!7148)

(declare-fun validRegex!2865 (Regex!7148) Bool)

(assert (=> b!2431898 (= e!1546135 (validRegex!2865 (regOne!14808 r!13927)))))

(declare-datatypes ((List!28533 0))(
  ( (Nil!28435) (Cons!28435 (h!33836 C!14454) (t!208510 List!28533)) )
))
(declare-fun s!9460 () List!28533)

(declare-fun lambda!91697 () Int)

(declare-datatypes ((tuple2!28052 0))(
  ( (tuple2!28053 (_1!16567 List!28533) (_2!16567 List!28533)) )
))
(declare-datatypes ((Option!5637 0))(
  ( (None!5636) (Some!5636 (v!31044 tuple2!28052)) )
))
(declare-fun isDefined!4463 (Option!5637) Bool)

(declare-fun findConcatSeparation!745 (Regex!7148 Regex!7148 List!28533 List!28533 List!28533) Option!5637)

(declare-fun Exists!1184 (Int) Bool)

(assert (=> b!2431898 (= (isDefined!4463 (findConcatSeparation!745 (regOne!14808 r!13927) (regTwo!14808 r!13927) Nil!28435 s!9460 s!9460)) (Exists!1184 lambda!91697))))

(declare-datatypes ((Unit!41679 0))(
  ( (Unit!41680) )
))
(declare-fun lt!876924 () Unit!41679)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!683 (Regex!7148 Regex!7148 List!28533) Unit!41679)

(assert (=> b!2431898 (= lt!876924 (lemmaFindConcatSeparationEquivalentToExists!683 (regOne!14808 r!13927) (regTwo!14808 r!13927) s!9460))))

(declare-fun b!2431899 () Bool)

(declare-fun tp!772421 () Bool)

(declare-fun tp!772417 () Bool)

(assert (=> b!2431899 (= e!1546137 (and tp!772421 tp!772417))))

(declare-fun b!2431900 () Bool)

(declare-fun res!1032430 () Bool)

(assert (=> b!2431900 (=> (not res!1032430) (not e!1546136))))

(declare-fun generalisedConcat!249 (List!28532) Regex!7148)

(assert (=> b!2431900 (= res!1032430 (= r!13927 (generalisedConcat!249 l!9164)))))

(declare-fun b!2431901 () Bool)

(declare-fun tp!772415 () Bool)

(declare-fun tp!772419 () Bool)

(assert (=> b!2431901 (= e!1546134 (and tp!772415 tp!772419))))

(declare-fun b!2431902 () Bool)

(declare-fun tp!772416 () Bool)

(assert (=> b!2431902 (= e!1546133 (and tp_is_empty!11709 tp!772416))))

(declare-fun b!2431903 () Bool)

(assert (=> b!2431903 (= e!1546136 (not e!1546135))))

(declare-fun res!1032429 () Bool)

(assert (=> b!2431903 (=> res!1032429 e!1546135)))

(assert (=> b!2431903 (= res!1032429 (not (is-Concat!11784 r!13927)))))

(declare-fun matchR!3263 (Regex!7148 List!28533) Bool)

(declare-fun matchRSpec!995 (Regex!7148 List!28533) Bool)

(assert (=> b!2431903 (= (matchR!3263 r!13927 s!9460) (matchRSpec!995 r!13927 s!9460))))

(declare-fun lt!876923 () Unit!41679)

(declare-fun mainMatchTheorem!995 (Regex!7148 List!28533) Unit!41679)

(assert (=> b!2431903 (= lt!876923 (mainMatchTheorem!995 r!13927 s!9460))))

(assert (= (and start!238102 res!1032431) b!2431900))

(assert (= (and b!2431900 res!1032430) b!2431903))

(assert (= (and b!2431903 (not res!1032429)) b!2431898))

(assert (= (and start!238102 (is-Cons!28434 l!9164)) b!2431901))

(assert (= (and start!238102 (is-ElementMatch!7148 r!13927)) b!2431896))

(assert (= (and start!238102 (is-Concat!11784 r!13927)) b!2431895))

(assert (= (and start!238102 (is-Star!7148 r!13927)) b!2431897))

(assert (= (and start!238102 (is-Union!7148 r!13927)) b!2431899))

(assert (= (and start!238102 (is-Cons!28435 s!9460)) b!2431902))

(declare-fun m!2813793 () Bool)

(assert (=> start!238102 m!2813793))

(declare-fun m!2813795 () Bool)

(assert (=> b!2431898 m!2813795))

(declare-fun m!2813797 () Bool)

(assert (=> b!2431898 m!2813797))

(declare-fun m!2813799 () Bool)

(assert (=> b!2431898 m!2813799))

(assert (=> b!2431898 m!2813795))

(declare-fun m!2813801 () Bool)

(assert (=> b!2431898 m!2813801))

(declare-fun m!2813803 () Bool)

(assert (=> b!2431898 m!2813803))

(declare-fun m!2813805 () Bool)

(assert (=> b!2431900 m!2813805))

(declare-fun m!2813807 () Bool)

(assert (=> b!2431903 m!2813807))

(declare-fun m!2813809 () Bool)

(assert (=> b!2431903 m!2813809))

(declare-fun m!2813811 () Bool)

(assert (=> b!2431903 m!2813811))

(push 1)

(assert (not b!2431902))

(assert (not b!2431900))

(assert (not b!2431895))

(assert (not b!2431897))

(assert tp_is_empty!11709)

(assert (not b!2431898))

(assert (not b!2431903))

(assert (not start!238102))

(assert (not b!2431899))

(assert (not b!2431901))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!703327 () Bool)

(declare-fun isEmpty!16470 (Option!5637) Bool)

(assert (=> d!703327 (= (isDefined!4463 (findConcatSeparation!745 (regOne!14808 r!13927) (regTwo!14808 r!13927) Nil!28435 s!9460 s!9460)) (not (isEmpty!16470 (findConcatSeparation!745 (regOne!14808 r!13927) (regTwo!14808 r!13927) Nil!28435 s!9460 s!9460))))))

(declare-fun bs!464201 () Bool)

(assert (= bs!464201 d!703327))

(assert (=> bs!464201 m!2813795))

(declare-fun m!2813833 () Bool)

(assert (=> bs!464201 m!2813833))

(assert (=> b!2431898 d!703327))

(declare-fun bs!464202 () Bool)

(declare-fun d!703329 () Bool)

(assert (= bs!464202 (and d!703329 b!2431898)))

(declare-fun lambda!91706 () Int)

(assert (=> bs!464202 (= lambda!91706 lambda!91697)))

(assert (=> d!703329 true))

(assert (=> d!703329 true))

(assert (=> d!703329 true))

(assert (=> d!703329 (= (isDefined!4463 (findConcatSeparation!745 (regOne!14808 r!13927) (regTwo!14808 r!13927) Nil!28435 s!9460 s!9460)) (Exists!1184 lambda!91706))))

(declare-fun lt!876933 () Unit!41679)

(declare-fun choose!14410 (Regex!7148 Regex!7148 List!28533) Unit!41679)

(assert (=> d!703329 (= lt!876933 (choose!14410 (regOne!14808 r!13927) (regTwo!14808 r!13927) s!9460))))

(assert (=> d!703329 (validRegex!2865 (regOne!14808 r!13927))))

(assert (=> d!703329 (= (lemmaFindConcatSeparationEquivalentToExists!683 (regOne!14808 r!13927) (regTwo!14808 r!13927) s!9460) lt!876933)))

(declare-fun bs!464203 () Bool)

(assert (= bs!464203 d!703329))

(declare-fun m!2813835 () Bool)

(assert (=> bs!464203 m!2813835))

(assert (=> bs!464203 m!2813795))

(assert (=> bs!464203 m!2813797))

(assert (=> bs!464203 m!2813801))

(assert (=> bs!464203 m!2813795))

(declare-fun m!2813837 () Bool)

(assert (=> bs!464203 m!2813837))

(assert (=> b!2431898 d!703329))

(declare-fun b!2431969 () Bool)

(declare-fun e!1546181 () Bool)

(declare-fun call!148904 () Bool)

(assert (=> b!2431969 (= e!1546181 call!148904)))

(declare-fun bm!148898 () Bool)

(declare-fun call!148905 () Bool)

(assert (=> bm!148898 (= call!148904 call!148905)))

(declare-fun b!2431970 () Bool)

(declare-fun e!1546175 () Bool)

(declare-fun e!1546178 () Bool)

(assert (=> b!2431970 (= e!1546175 e!1546178)))

(declare-fun res!1032467 () Bool)

(declare-fun nullable!2180 (Regex!7148) Bool)

(assert (=> b!2431970 (= res!1032467 (not (nullable!2180 (reg!7477 (regOne!14808 r!13927)))))))

(assert (=> b!2431970 (=> (not res!1032467) (not e!1546178))))

(declare-fun b!2431971 () Bool)

(declare-fun e!1546180 () Bool)

(assert (=> b!2431971 (= e!1546180 e!1546181)))

(declare-fun res!1032463 () Bool)

(assert (=> b!2431971 (=> (not res!1032463) (not e!1546181))))

(declare-fun call!148903 () Bool)

(assert (=> b!2431971 (= res!1032463 call!148903)))

(declare-fun b!2431972 () Bool)

(declare-fun res!1032466 () Bool)

(assert (=> b!2431972 (=> res!1032466 e!1546180)))

(assert (=> b!2431972 (= res!1032466 (not (is-Concat!11784 (regOne!14808 r!13927))))))

(declare-fun e!1546176 () Bool)

(assert (=> b!2431972 (= e!1546176 e!1546180)))

(declare-fun bm!148899 () Bool)

(declare-fun c!387991 () Bool)

(assert (=> bm!148899 (= call!148903 (validRegex!2865 (ite c!387991 (regTwo!14809 (regOne!14808 r!13927)) (regOne!14808 (regOne!14808 r!13927)))))))

(declare-fun c!387990 () Bool)

(declare-fun bm!148900 () Bool)

(assert (=> bm!148900 (= call!148905 (validRegex!2865 (ite c!387990 (reg!7477 (regOne!14808 r!13927)) (ite c!387991 (regOne!14809 (regOne!14808 r!13927)) (regTwo!14808 (regOne!14808 r!13927))))))))

(declare-fun b!2431973 () Bool)

(assert (=> b!2431973 (= e!1546175 e!1546176)))

(assert (=> b!2431973 (= c!387991 (is-Union!7148 (regOne!14808 r!13927)))))

(declare-fun b!2431974 () Bool)

(declare-fun res!1032465 () Bool)

(declare-fun e!1546179 () Bool)

(assert (=> b!2431974 (=> (not res!1032465) (not e!1546179))))

(assert (=> b!2431974 (= res!1032465 call!148904)))

(assert (=> b!2431974 (= e!1546176 e!1546179)))

(declare-fun b!2431975 () Bool)

(assert (=> b!2431975 (= e!1546178 call!148905)))

(declare-fun b!2431976 () Bool)

(declare-fun e!1546177 () Bool)

(assert (=> b!2431976 (= e!1546177 e!1546175)))

(assert (=> b!2431976 (= c!387990 (is-Star!7148 (regOne!14808 r!13927)))))

(declare-fun d!703331 () Bool)

(declare-fun res!1032464 () Bool)

(assert (=> d!703331 (=> res!1032464 e!1546177)))

(assert (=> d!703331 (= res!1032464 (is-ElementMatch!7148 (regOne!14808 r!13927)))))

(assert (=> d!703331 (= (validRegex!2865 (regOne!14808 r!13927)) e!1546177)))

(declare-fun b!2431977 () Bool)

(assert (=> b!2431977 (= e!1546179 call!148903)))

(assert (= (and d!703331 (not res!1032464)) b!2431976))

(assert (= (and b!2431976 c!387990) b!2431970))

(assert (= (and b!2431976 (not c!387990)) b!2431973))

(assert (= (and b!2431970 res!1032467) b!2431975))

(assert (= (and b!2431973 c!387991) b!2431974))

(assert (= (and b!2431973 (not c!387991)) b!2431972))

(assert (= (and b!2431974 res!1032465) b!2431977))

(assert (= (and b!2431972 (not res!1032466)) b!2431971))

(assert (= (and b!2431971 res!1032463) b!2431969))

(assert (= (or b!2431974 b!2431969) bm!148898))

(assert (= (or b!2431977 b!2431971) bm!148899))

(assert (= (or b!2431975 bm!148898) bm!148900))

(declare-fun m!2813839 () Bool)

(assert (=> b!2431970 m!2813839))

(declare-fun m!2813841 () Bool)

(assert (=> bm!148899 m!2813841))

(declare-fun m!2813843 () Bool)

(assert (=> bm!148900 m!2813843))

(assert (=> b!2431898 d!703331))

(declare-fun b!2431998 () Bool)

(declare-fun lt!876941 () Unit!41679)

(declare-fun lt!876942 () Unit!41679)

(assert (=> b!2431998 (= lt!876941 lt!876942)))

(declare-fun ++!7056 (List!28533 List!28533) List!28533)

(assert (=> b!2431998 (= (++!7056 (++!7056 Nil!28435 (Cons!28435 (h!33836 s!9460) Nil!28435)) (t!208510 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!682 (List!28533 C!14454 List!28533 List!28533) Unit!41679)

(assert (=> b!2431998 (= lt!876942 (lemmaMoveElementToOtherListKeepsConcatEq!682 Nil!28435 (h!33836 s!9460) (t!208510 s!9460) s!9460))))

(declare-fun e!1546194 () Option!5637)

(assert (=> b!2431998 (= e!1546194 (findConcatSeparation!745 (regOne!14808 r!13927) (regTwo!14808 r!13927) (++!7056 Nil!28435 (Cons!28435 (h!33836 s!9460) Nil!28435)) (t!208510 s!9460) s!9460))))

(declare-fun d!703335 () Bool)

(declare-fun e!1546196 () Bool)

(assert (=> d!703335 e!1546196))

(declare-fun res!1032483 () Bool)

(assert (=> d!703335 (=> res!1032483 e!1546196)))

(declare-fun e!1546195 () Bool)

(assert (=> d!703335 (= res!1032483 e!1546195)))

(declare-fun res!1032484 () Bool)

(assert (=> d!703335 (=> (not res!1032484) (not e!1546195))))

(declare-fun lt!876940 () Option!5637)

(assert (=> d!703335 (= res!1032484 (isDefined!4463 lt!876940))))

(declare-fun e!1546198 () Option!5637)

(assert (=> d!703335 (= lt!876940 e!1546198)))

(declare-fun c!387996 () Bool)

(declare-fun e!1546197 () Bool)

(assert (=> d!703335 (= c!387996 e!1546197)))

(declare-fun res!1032480 () Bool)

(assert (=> d!703335 (=> (not res!1032480) (not e!1546197))))

(assert (=> d!703335 (= res!1032480 (matchR!3263 (regOne!14808 r!13927) Nil!28435))))

(assert (=> d!703335 (validRegex!2865 (regOne!14808 r!13927))))

(assert (=> d!703335 (= (findConcatSeparation!745 (regOne!14808 r!13927) (regTwo!14808 r!13927) Nil!28435 s!9460 s!9460) lt!876940)))

(declare-fun b!2431999 () Bool)

(declare-fun get!8762 (Option!5637) tuple2!28052)

(assert (=> b!2431999 (= e!1546195 (= (++!7056 (_1!16567 (get!8762 lt!876940)) (_2!16567 (get!8762 lt!876940))) s!9460))))

(declare-fun b!2432000 () Bool)

(assert (=> b!2432000 (= e!1546197 (matchR!3263 (regTwo!14808 r!13927) s!9460))))

(declare-fun b!2432001 () Bool)

(assert (=> b!2432001 (= e!1546194 None!5636)))

(declare-fun b!2432002 () Bool)

(assert (=> b!2432002 (= e!1546196 (not (isDefined!4463 lt!876940)))))

(declare-fun b!2432003 () Bool)

(declare-fun res!1032482 () Bool)

(assert (=> b!2432003 (=> (not res!1032482) (not e!1546195))))

(assert (=> b!2432003 (= res!1032482 (matchR!3263 (regOne!14808 r!13927) (_1!16567 (get!8762 lt!876940))))))

(declare-fun b!2432004 () Bool)

(assert (=> b!2432004 (= e!1546198 e!1546194)))

(declare-fun c!387997 () Bool)

(assert (=> b!2432004 (= c!387997 (is-Nil!28435 s!9460))))

(declare-fun b!2432005 () Bool)

(declare-fun res!1032481 () Bool)

(assert (=> b!2432005 (=> (not res!1032481) (not e!1546195))))

(assert (=> b!2432005 (= res!1032481 (matchR!3263 (regTwo!14808 r!13927) (_2!16567 (get!8762 lt!876940))))))

(declare-fun b!2432006 () Bool)

(assert (=> b!2432006 (= e!1546198 (Some!5636 (tuple2!28053 Nil!28435 s!9460)))))

(assert (= (and d!703335 res!1032480) b!2432000))

(assert (= (and d!703335 c!387996) b!2432006))

(assert (= (and d!703335 (not c!387996)) b!2432004))

(assert (= (and b!2432004 c!387997) b!2432001))

(assert (= (and b!2432004 (not c!387997)) b!2431998))

(assert (= (and d!703335 res!1032484) b!2432003))

(assert (= (and b!2432003 res!1032482) b!2432005))

(assert (= (and b!2432005 res!1032481) b!2431999))

(assert (= (and d!703335 (not res!1032483)) b!2432002))

(declare-fun m!2813851 () Bool)

(assert (=> b!2432000 m!2813851))

(declare-fun m!2813853 () Bool)

(assert (=> b!2432002 m!2813853))

(declare-fun m!2813855 () Bool)

(assert (=> b!2431999 m!2813855))

(declare-fun m!2813857 () Bool)

(assert (=> b!2431999 m!2813857))

(assert (=> b!2432003 m!2813855))

(declare-fun m!2813859 () Bool)

(assert (=> b!2432003 m!2813859))

(declare-fun m!2813861 () Bool)

(assert (=> b!2431998 m!2813861))

(assert (=> b!2431998 m!2813861))

(declare-fun m!2813863 () Bool)

(assert (=> b!2431998 m!2813863))

(declare-fun m!2813865 () Bool)

(assert (=> b!2431998 m!2813865))

(assert (=> b!2431998 m!2813861))

(declare-fun m!2813867 () Bool)

(assert (=> b!2431998 m!2813867))

(assert (=> b!2432005 m!2813855))

(declare-fun m!2813869 () Bool)

(assert (=> b!2432005 m!2813869))

(assert (=> d!703335 m!2813853))

(declare-fun m!2813871 () Bool)

(assert (=> d!703335 m!2813871))

(assert (=> d!703335 m!2813801))

(assert (=> b!2431898 d!703335))

(declare-fun d!703341 () Bool)

(declare-fun choose!14411 (Int) Bool)

(assert (=> d!703341 (= (Exists!1184 lambda!91697) (choose!14411 lambda!91697))))

(declare-fun bs!464205 () Bool)

(assert (= bs!464205 d!703341))

(declare-fun m!2813873 () Bool)

(assert (=> bs!464205 m!2813873))

(assert (=> b!2431898 d!703341))

(declare-fun b!2432039 () Bool)

(declare-fun e!1546216 () Bool)

(declare-fun e!1546221 () Bool)

(assert (=> b!2432039 (= e!1546216 e!1546221)))

(declare-fun res!1032505 () Bool)

(assert (=> b!2432039 (=> res!1032505 e!1546221)))

(declare-fun call!148908 () Bool)

(assert (=> b!2432039 (= res!1032505 call!148908)))

(declare-fun b!2432040 () Bool)

(declare-fun e!1546218 () Bool)

(declare-fun lt!876948 () Bool)

(assert (=> b!2432040 (= e!1546218 (= lt!876948 call!148908))))

(declare-fun b!2432041 () Bool)

(declare-fun res!1032509 () Bool)

(declare-fun e!1546215 () Bool)

(assert (=> b!2432041 (=> (not res!1032509) (not e!1546215))))

(declare-fun isEmpty!16471 (List!28533) Bool)

(declare-fun tail!3772 (List!28533) List!28533)

(assert (=> b!2432041 (= res!1032509 (isEmpty!16471 (tail!3772 s!9460)))))

(declare-fun b!2432042 () Bool)

(declare-fun e!1546217 () Bool)

(assert (=> b!2432042 (= e!1546218 e!1546217)))

(declare-fun c!388004 () Bool)

(assert (=> b!2432042 (= c!388004 (is-EmptyLang!7148 r!13927))))

(declare-fun b!2432043 () Bool)

(declare-fun e!1546220 () Bool)

(assert (=> b!2432043 (= e!1546220 (nullable!2180 r!13927))))

(declare-fun d!703343 () Bool)

(assert (=> d!703343 e!1546218))

(declare-fun c!388005 () Bool)

(assert (=> d!703343 (= c!388005 (is-EmptyExpr!7148 r!13927))))

(assert (=> d!703343 (= lt!876948 e!1546220)))

(declare-fun c!388006 () Bool)

(assert (=> d!703343 (= c!388006 (isEmpty!16471 s!9460))))

(assert (=> d!703343 (validRegex!2865 r!13927)))

(assert (=> d!703343 (= (matchR!3263 r!13927 s!9460) lt!876948)))

(declare-fun b!2432044 () Bool)

(declare-fun res!1032511 () Bool)

(assert (=> b!2432044 (=> res!1032511 e!1546221)))

(assert (=> b!2432044 (= res!1032511 (not (isEmpty!16471 (tail!3772 s!9460))))))

(declare-fun b!2432045 () Bool)

(declare-fun head!5499 (List!28533) C!14454)

(assert (=> b!2432045 (= e!1546215 (= (head!5499 s!9460) (c!387984 r!13927)))))

(declare-fun b!2432046 () Bool)

(declare-fun e!1546219 () Bool)

(assert (=> b!2432046 (= e!1546219 e!1546216)))

(declare-fun res!1032507 () Bool)

(assert (=> b!2432046 (=> (not res!1032507) (not e!1546216))))

(assert (=> b!2432046 (= res!1032507 (not lt!876948))))

(declare-fun b!2432047 () Bool)

(assert (=> b!2432047 (= e!1546217 (not lt!876948))))

(declare-fun b!2432048 () Bool)

(assert (=> b!2432048 (= e!1546221 (not (= (head!5499 s!9460) (c!387984 r!13927))))))

(declare-fun b!2432049 () Bool)

(declare-fun res!1032510 () Bool)

(assert (=> b!2432049 (=> (not res!1032510) (not e!1546215))))

(assert (=> b!2432049 (= res!1032510 (not call!148908))))

(declare-fun bm!148903 () Bool)

(assert (=> bm!148903 (= call!148908 (isEmpty!16471 s!9460))))

(declare-fun b!2432050 () Bool)

(declare-fun res!1032508 () Bool)

(assert (=> b!2432050 (=> res!1032508 e!1546219)))

(assert (=> b!2432050 (= res!1032508 (not (is-ElementMatch!7148 r!13927)))))

(assert (=> b!2432050 (= e!1546217 e!1546219)))

(declare-fun b!2432051 () Bool)

(declare-fun res!1032512 () Bool)

(assert (=> b!2432051 (=> res!1032512 e!1546219)))

(assert (=> b!2432051 (= res!1032512 e!1546215)))

(declare-fun res!1032506 () Bool)

(assert (=> b!2432051 (=> (not res!1032506) (not e!1546215))))

(assert (=> b!2432051 (= res!1032506 lt!876948)))

(declare-fun b!2432052 () Bool)

(declare-fun derivativeStep!1835 (Regex!7148 C!14454) Regex!7148)

(assert (=> b!2432052 (= e!1546220 (matchR!3263 (derivativeStep!1835 r!13927 (head!5499 s!9460)) (tail!3772 s!9460)))))

(assert (= (and d!703343 c!388006) b!2432043))

(assert (= (and d!703343 (not c!388006)) b!2432052))

(assert (= (and d!703343 c!388005) b!2432040))

(assert (= (and d!703343 (not c!388005)) b!2432042))

(assert (= (and b!2432042 c!388004) b!2432047))

(assert (= (and b!2432042 (not c!388004)) b!2432050))

(assert (= (and b!2432050 (not res!1032508)) b!2432051))

(assert (= (and b!2432051 res!1032506) b!2432049))

(assert (= (and b!2432049 res!1032510) b!2432041))

(assert (= (and b!2432041 res!1032509) b!2432045))

(assert (= (and b!2432051 (not res!1032512)) b!2432046))

(assert (= (and b!2432046 res!1032507) b!2432039))

(assert (= (and b!2432039 (not res!1032505)) b!2432044))

(assert (= (and b!2432044 (not res!1032511)) b!2432048))

(assert (= (or b!2432040 b!2432039 b!2432049) bm!148903))

(declare-fun m!2813881 () Bool)

(assert (=> b!2432052 m!2813881))

(assert (=> b!2432052 m!2813881))

(declare-fun m!2813883 () Bool)

(assert (=> b!2432052 m!2813883))

(declare-fun m!2813885 () Bool)

(assert (=> b!2432052 m!2813885))

(assert (=> b!2432052 m!2813883))

(assert (=> b!2432052 m!2813885))

(declare-fun m!2813887 () Bool)

(assert (=> b!2432052 m!2813887))

(assert (=> b!2432044 m!2813885))

(assert (=> b!2432044 m!2813885))

(declare-fun m!2813889 () Bool)

(assert (=> b!2432044 m!2813889))

(declare-fun m!2813891 () Bool)

(assert (=> b!2432043 m!2813891))

(declare-fun m!2813893 () Bool)

(assert (=> bm!148903 m!2813893))

(assert (=> b!2432045 m!2813881))

(assert (=> b!2432041 m!2813885))

(assert (=> b!2432041 m!2813885))

(assert (=> b!2432041 m!2813889))

(assert (=> d!703343 m!2813893))

(declare-fun m!2813895 () Bool)

(assert (=> d!703343 m!2813895))

(assert (=> b!2432048 m!2813881))

(assert (=> b!2431903 d!703343))

(declare-fun bs!464209 () Bool)

(declare-fun b!2432118 () Bool)

(assert (= bs!464209 (and b!2432118 b!2431898)))

(declare-fun lambda!91714 () Int)

(assert (=> bs!464209 (not (= lambda!91714 lambda!91697))))

(declare-fun bs!464210 () Bool)

(assert (= bs!464210 (and b!2432118 d!703329)))

(assert (=> bs!464210 (not (= lambda!91714 lambda!91706))))

(assert (=> b!2432118 true))

(assert (=> b!2432118 true))

(declare-fun bs!464211 () Bool)

(declare-fun b!2432121 () Bool)

(assert (= bs!464211 (and b!2432121 b!2431898)))

(declare-fun lambda!91715 () Int)

(assert (=> bs!464211 (not (= lambda!91715 lambda!91697))))

(declare-fun bs!464212 () Bool)

(assert (= bs!464212 (and b!2432121 d!703329)))

(assert (=> bs!464212 (not (= lambda!91715 lambda!91706))))

(declare-fun bs!464213 () Bool)

(assert (= bs!464213 (and b!2432121 b!2432118)))

(assert (=> bs!464213 (not (= lambda!91715 lambda!91714))))

(assert (=> b!2432121 true))

(assert (=> b!2432121 true))

(declare-fun b!2432112 () Bool)

(declare-fun e!1546262 () Bool)

(assert (=> b!2432112 (= e!1546262 (matchRSpec!995 (regTwo!14809 r!13927) s!9460))))

(declare-fun b!2432113 () Bool)

(declare-fun e!1546266 () Bool)

(declare-fun call!148923 () Bool)

(assert (=> b!2432113 (= e!1546266 call!148923)))

(declare-fun b!2432114 () Bool)

(declare-fun res!1032545 () Bool)

(declare-fun e!1546265 () Bool)

(assert (=> b!2432114 (=> res!1032545 e!1546265)))

(assert (=> b!2432114 (= res!1032545 call!148923)))

(declare-fun e!1546263 () Bool)

(assert (=> b!2432114 (= e!1546263 e!1546265)))

(declare-fun b!2432115 () Bool)

(declare-fun c!388023 () Bool)

(assert (=> b!2432115 (= c!388023 (is-Union!7148 r!13927))))

(declare-fun e!1546264 () Bool)

(declare-fun e!1546261 () Bool)

(assert (=> b!2432115 (= e!1546264 e!1546261)))

(declare-fun bm!148917 () Bool)

(assert (=> bm!148917 (= call!148923 (isEmpty!16471 s!9460))))

(declare-fun b!2432116 () Bool)

(assert (=> b!2432116 (= e!1546261 e!1546263)))

(declare-fun c!388021 () Bool)

(assert (=> b!2432116 (= c!388021 (is-Star!7148 r!13927))))

(declare-fun b!2432117 () Bool)

(assert (=> b!2432117 (= e!1546264 (= s!9460 (Cons!28435 (c!387984 r!13927) Nil!28435)))))

(declare-fun call!148922 () Bool)

(assert (=> b!2432118 (= e!1546265 call!148922)))

(declare-fun b!2432119 () Bool)

(declare-fun c!388022 () Bool)

(assert (=> b!2432119 (= c!388022 (is-ElementMatch!7148 r!13927))))

(declare-fun e!1546267 () Bool)

(assert (=> b!2432119 (= e!1546267 e!1546264)))

(declare-fun bm!148918 () Bool)

(assert (=> bm!148918 (= call!148922 (Exists!1184 (ite c!388021 lambda!91714 lambda!91715)))))

(assert (=> b!2432121 (= e!1546263 call!148922)))

(declare-fun b!2432122 () Bool)

(assert (=> b!2432122 (= e!1546261 e!1546262)))

(declare-fun res!1032544 () Bool)

(assert (=> b!2432122 (= res!1032544 (matchRSpec!995 (regOne!14809 r!13927) s!9460))))

(assert (=> b!2432122 (=> res!1032544 e!1546262)))

(declare-fun b!2432120 () Bool)

(assert (=> b!2432120 (= e!1546266 e!1546267)))

(declare-fun res!1032546 () Bool)

(assert (=> b!2432120 (= res!1032546 (not (is-EmptyLang!7148 r!13927)))))

(assert (=> b!2432120 (=> (not res!1032546) (not e!1546267))))

(declare-fun d!703349 () Bool)

(declare-fun c!388024 () Bool)

(assert (=> d!703349 (= c!388024 (is-EmptyExpr!7148 r!13927))))

(assert (=> d!703349 (= (matchRSpec!995 r!13927 s!9460) e!1546266)))

(assert (= (and d!703349 c!388024) b!2432113))

(assert (= (and d!703349 (not c!388024)) b!2432120))

(assert (= (and b!2432120 res!1032546) b!2432119))

(assert (= (and b!2432119 c!388022) b!2432117))

(assert (= (and b!2432119 (not c!388022)) b!2432115))

(assert (= (and b!2432115 c!388023) b!2432122))

(assert (= (and b!2432115 (not c!388023)) b!2432116))

(assert (= (and b!2432122 (not res!1032544)) b!2432112))

(assert (= (and b!2432116 c!388021) b!2432114))

(assert (= (and b!2432116 (not c!388021)) b!2432121))

(assert (= (and b!2432114 (not res!1032545)) b!2432118))

(assert (= (or b!2432118 b!2432121) bm!148918))

(assert (= (or b!2432113 b!2432114) bm!148917))

(declare-fun m!2813903 () Bool)

(assert (=> b!2432112 m!2813903))

(assert (=> bm!148917 m!2813893))

(declare-fun m!2813905 () Bool)

(assert (=> bm!148918 m!2813905))

(declare-fun m!2813907 () Bool)

(assert (=> b!2432122 m!2813907))

(assert (=> b!2431903 d!703349))

(declare-fun d!703353 () Bool)

(assert (=> d!703353 (= (matchR!3263 r!13927 s!9460) (matchRSpec!995 r!13927 s!9460))))

(declare-fun lt!876951 () Unit!41679)

(declare-fun choose!14412 (Regex!7148 List!28533) Unit!41679)

(assert (=> d!703353 (= lt!876951 (choose!14412 r!13927 s!9460))))

(assert (=> d!703353 (validRegex!2865 r!13927)))

(assert (=> d!703353 (= (mainMatchTheorem!995 r!13927 s!9460) lt!876951)))

(declare-fun bs!464214 () Bool)

(assert (= bs!464214 d!703353))

(assert (=> bs!464214 m!2813807))

(assert (=> bs!464214 m!2813809))

(declare-fun m!2813909 () Bool)

(assert (=> bs!464214 m!2813909))

(assert (=> bs!464214 m!2813895))

(assert (=> b!2431903 d!703353))

(declare-fun d!703355 () Bool)

(declare-fun res!1032551 () Bool)

(declare-fun e!1546272 () Bool)

(assert (=> d!703355 (=> res!1032551 e!1546272)))

(assert (=> d!703355 (= res!1032551 (is-Nil!28434 l!9164))))

(assert (=> d!703355 (= (forall!5782 l!9164 lambda!91696) e!1546272)))

(declare-fun b!2432127 () Bool)

(declare-fun e!1546273 () Bool)

(assert (=> b!2432127 (= e!1546272 e!1546273)))

(declare-fun res!1032552 () Bool)

(assert (=> b!2432127 (=> (not res!1032552) (not e!1546273))))

(declare-fun dynLambda!12238 (Int Regex!7148) Bool)

(assert (=> b!2432127 (= res!1032552 (dynLambda!12238 lambda!91696 (h!33835 l!9164)))))

(declare-fun b!2432128 () Bool)

(assert (=> b!2432128 (= e!1546273 (forall!5782 (t!208509 l!9164) lambda!91696))))

(assert (= (and d!703355 (not res!1032551)) b!2432127))

(assert (= (and b!2432127 res!1032552) b!2432128))

(declare-fun b_lambda!74813 () Bool)

(assert (=> (not b_lambda!74813) (not b!2432127)))

(declare-fun m!2813911 () Bool)

(assert (=> b!2432127 m!2813911))

(declare-fun m!2813913 () Bool)

(assert (=> b!2432128 m!2813913))

(assert (=> start!238102 d!703355))

(declare-fun bs!464215 () Bool)

(declare-fun d!703357 () Bool)

(assert (= bs!464215 (and d!703357 start!238102)))

(declare-fun lambda!91718 () Int)

(assert (=> bs!464215 (= lambda!91718 lambda!91696)))

(declare-fun b!2432149 () Bool)

(declare-fun e!1546286 () Bool)

(declare-fun e!1546288 () Bool)

(assert (=> b!2432149 (= e!1546286 e!1546288)))

(declare-fun c!388033 () Bool)

(declare-fun isEmpty!16472 (List!28532) Bool)

(assert (=> b!2432149 (= c!388033 (isEmpty!16472 l!9164))))

(declare-fun b!2432150 () Bool)

(declare-fun lt!876954 () Regex!7148)

(declare-fun isEmptyExpr!198 (Regex!7148) Bool)

(assert (=> b!2432150 (= e!1546288 (isEmptyExpr!198 lt!876954))))

(declare-fun b!2432151 () Bool)

(declare-fun e!1546290 () Regex!7148)

(assert (=> b!2432151 (= e!1546290 EmptyExpr!7148)))

(declare-fun b!2432152 () Bool)

(declare-fun e!1546287 () Bool)

(assert (=> b!2432152 (= e!1546288 e!1546287)))

(declare-fun c!388036 () Bool)

(declare-fun tail!3773 (List!28532) List!28532)

(assert (=> b!2432152 (= c!388036 (isEmpty!16472 (tail!3773 l!9164)))))

(declare-fun b!2432153 () Bool)

(assert (=> b!2432153 (= e!1546290 (Concat!11784 (h!33835 l!9164) (generalisedConcat!249 (t!208509 l!9164))))))

(declare-fun b!2432154 () Bool)

(declare-fun isConcat!198 (Regex!7148) Bool)

(assert (=> b!2432154 (= e!1546287 (isConcat!198 lt!876954))))

(declare-fun b!2432155 () Bool)

(declare-fun e!1546289 () Regex!7148)

(assert (=> b!2432155 (= e!1546289 (h!33835 l!9164))))

(assert (=> d!703357 e!1546286))

(declare-fun res!1032558 () Bool)

(assert (=> d!703357 (=> (not res!1032558) (not e!1546286))))

(assert (=> d!703357 (= res!1032558 (validRegex!2865 lt!876954))))

(assert (=> d!703357 (= lt!876954 e!1546289)))

(declare-fun c!388034 () Bool)

(declare-fun e!1546291 () Bool)

(assert (=> d!703357 (= c!388034 e!1546291)))

(declare-fun res!1032557 () Bool)

(assert (=> d!703357 (=> (not res!1032557) (not e!1546291))))

(assert (=> d!703357 (= res!1032557 (is-Cons!28434 l!9164))))

(assert (=> d!703357 (forall!5782 l!9164 lambda!91718)))

(assert (=> d!703357 (= (generalisedConcat!249 l!9164) lt!876954)))

(declare-fun b!2432156 () Bool)

(assert (=> b!2432156 (= e!1546289 e!1546290)))

(declare-fun c!388035 () Bool)

(assert (=> b!2432156 (= c!388035 (is-Cons!28434 l!9164))))

(declare-fun b!2432157 () Bool)

(assert (=> b!2432157 (= e!1546291 (isEmpty!16472 (t!208509 l!9164)))))

(declare-fun b!2432158 () Bool)

(declare-fun head!5500 (List!28532) Regex!7148)

(assert (=> b!2432158 (= e!1546287 (= lt!876954 (head!5500 l!9164)))))

(assert (= (and d!703357 res!1032557) b!2432157))

(assert (= (and d!703357 c!388034) b!2432155))

(assert (= (and d!703357 (not c!388034)) b!2432156))

(assert (= (and b!2432156 c!388035) b!2432153))

(assert (= (and b!2432156 (not c!388035)) b!2432151))

(assert (= (and d!703357 res!1032558) b!2432149))

(assert (= (and b!2432149 c!388033) b!2432150))

(assert (= (and b!2432149 (not c!388033)) b!2432152))

(assert (= (and b!2432152 c!388036) b!2432158))

(assert (= (and b!2432152 (not c!388036)) b!2432154))

(declare-fun m!2813915 () Bool)

(assert (=> b!2432152 m!2813915))

(assert (=> b!2432152 m!2813915))

(declare-fun m!2813917 () Bool)

(assert (=> b!2432152 m!2813917))

(declare-fun m!2813919 () Bool)

(assert (=> b!2432153 m!2813919))

(declare-fun m!2813921 () Bool)

(assert (=> b!2432149 m!2813921))

(declare-fun m!2813923 () Bool)

(assert (=> b!2432154 m!2813923))

(declare-fun m!2813925 () Bool)

(assert (=> b!2432158 m!2813925))

(declare-fun m!2813927 () Bool)

(assert (=> b!2432157 m!2813927))

(declare-fun m!2813929 () Bool)

(assert (=> b!2432150 m!2813929))

(declare-fun m!2813931 () Bool)

(assert (=> d!703357 m!2813931))

(declare-fun m!2813933 () Bool)

(assert (=> d!703357 m!2813933))

(assert (=> b!2431900 d!703357))

(declare-fun b!2432171 () Bool)

(declare-fun e!1546294 () Bool)

(declare-fun tp!772459 () Bool)

(assert (=> b!2432171 (= e!1546294 tp!772459)))

(declare-fun b!2432169 () Bool)

(assert (=> b!2432169 (= e!1546294 tp_is_empty!11709)))

(assert (=> b!2431899 (= tp!772421 e!1546294)))

(declare-fun b!2432170 () Bool)

(declare-fun tp!772456 () Bool)

(declare-fun tp!772458 () Bool)

(assert (=> b!2432170 (= e!1546294 (and tp!772456 tp!772458))))

(declare-fun b!2432172 () Bool)

(declare-fun tp!772457 () Bool)

(declare-fun tp!772460 () Bool)

(assert (=> b!2432172 (= e!1546294 (and tp!772457 tp!772460))))

(assert (= (and b!2431899 (is-ElementMatch!7148 (regOne!14809 r!13927))) b!2432169))

(assert (= (and b!2431899 (is-Concat!11784 (regOne!14809 r!13927))) b!2432170))

(assert (= (and b!2431899 (is-Star!7148 (regOne!14809 r!13927))) b!2432171))

(assert (= (and b!2431899 (is-Union!7148 (regOne!14809 r!13927))) b!2432172))

(declare-fun b!2432175 () Bool)

(declare-fun e!1546295 () Bool)

(declare-fun tp!772464 () Bool)

(assert (=> b!2432175 (= e!1546295 tp!772464)))

(declare-fun b!2432173 () Bool)

(assert (=> b!2432173 (= e!1546295 tp_is_empty!11709)))

(assert (=> b!2431899 (= tp!772417 e!1546295)))

(declare-fun b!2432174 () Bool)

(declare-fun tp!772461 () Bool)

(declare-fun tp!772463 () Bool)

(assert (=> b!2432174 (= e!1546295 (and tp!772461 tp!772463))))

(declare-fun b!2432176 () Bool)

(declare-fun tp!772462 () Bool)

(declare-fun tp!772465 () Bool)

(assert (=> b!2432176 (= e!1546295 (and tp!772462 tp!772465))))

(assert (= (and b!2431899 (is-ElementMatch!7148 (regTwo!14809 r!13927))) b!2432173))

(assert (= (and b!2431899 (is-Concat!11784 (regTwo!14809 r!13927))) b!2432174))

(assert (= (and b!2431899 (is-Star!7148 (regTwo!14809 r!13927))) b!2432175))

(assert (= (and b!2431899 (is-Union!7148 (regTwo!14809 r!13927))) b!2432176))

(declare-fun b!2432179 () Bool)

(declare-fun e!1546296 () Bool)

(declare-fun tp!772469 () Bool)

(assert (=> b!2432179 (= e!1546296 tp!772469)))

(declare-fun b!2432177 () Bool)

(assert (=> b!2432177 (= e!1546296 tp_is_empty!11709)))

(assert (=> b!2431901 (= tp!772415 e!1546296)))

(declare-fun b!2432178 () Bool)

(declare-fun tp!772466 () Bool)

(declare-fun tp!772468 () Bool)

(assert (=> b!2432178 (= e!1546296 (and tp!772466 tp!772468))))

(declare-fun b!2432180 () Bool)

(declare-fun tp!772467 () Bool)

(declare-fun tp!772470 () Bool)

(assert (=> b!2432180 (= e!1546296 (and tp!772467 tp!772470))))

(assert (= (and b!2431901 (is-ElementMatch!7148 (h!33835 l!9164))) b!2432177))

(assert (= (and b!2431901 (is-Concat!11784 (h!33835 l!9164))) b!2432178))

(assert (= (and b!2431901 (is-Star!7148 (h!33835 l!9164))) b!2432179))

(assert (= (and b!2431901 (is-Union!7148 (h!33835 l!9164))) b!2432180))

(declare-fun b!2432185 () Bool)

(declare-fun e!1546299 () Bool)

(declare-fun tp!772475 () Bool)

(declare-fun tp!772476 () Bool)

(assert (=> b!2432185 (= e!1546299 (and tp!772475 tp!772476))))

(assert (=> b!2431901 (= tp!772419 e!1546299)))

(assert (= (and b!2431901 (is-Cons!28434 (t!208509 l!9164))) b!2432185))

(declare-fun b!2432188 () Bool)

(declare-fun e!1546300 () Bool)

(declare-fun tp!772480 () Bool)

(assert (=> b!2432188 (= e!1546300 tp!772480)))

(declare-fun b!2432186 () Bool)

(assert (=> b!2432186 (= e!1546300 tp_is_empty!11709)))

(assert (=> b!2431895 (= tp!772414 e!1546300)))

(declare-fun b!2432187 () Bool)

(declare-fun tp!772477 () Bool)

(declare-fun tp!772479 () Bool)

(assert (=> b!2432187 (= e!1546300 (and tp!772477 tp!772479))))

(declare-fun b!2432189 () Bool)

(declare-fun tp!772478 () Bool)

(declare-fun tp!772481 () Bool)

(assert (=> b!2432189 (= e!1546300 (and tp!772478 tp!772481))))

(assert (= (and b!2431895 (is-ElementMatch!7148 (regOne!14808 r!13927))) b!2432186))

(assert (= (and b!2431895 (is-Concat!11784 (regOne!14808 r!13927))) b!2432187))

(assert (= (and b!2431895 (is-Star!7148 (regOne!14808 r!13927))) b!2432188))

(assert (= (and b!2431895 (is-Union!7148 (regOne!14808 r!13927))) b!2432189))

(declare-fun b!2432192 () Bool)

(declare-fun e!1546301 () Bool)

(declare-fun tp!772485 () Bool)

(assert (=> b!2432192 (= e!1546301 tp!772485)))

(declare-fun b!2432190 () Bool)

(assert (=> b!2432190 (= e!1546301 tp_is_empty!11709)))

(assert (=> b!2431895 (= tp!772420 e!1546301)))

(declare-fun b!2432191 () Bool)

(declare-fun tp!772482 () Bool)

(declare-fun tp!772484 () Bool)

(assert (=> b!2432191 (= e!1546301 (and tp!772482 tp!772484))))

(declare-fun b!2432193 () Bool)

(declare-fun tp!772483 () Bool)

(declare-fun tp!772486 () Bool)

(assert (=> b!2432193 (= e!1546301 (and tp!772483 tp!772486))))

(assert (= (and b!2431895 (is-ElementMatch!7148 (regTwo!14808 r!13927))) b!2432190))

(assert (= (and b!2431895 (is-Concat!11784 (regTwo!14808 r!13927))) b!2432191))

(assert (= (and b!2431895 (is-Star!7148 (regTwo!14808 r!13927))) b!2432192))

(assert (= (and b!2431895 (is-Union!7148 (regTwo!14808 r!13927))) b!2432193))

(declare-fun b!2432198 () Bool)

(declare-fun e!1546304 () Bool)

(declare-fun tp!772489 () Bool)

(assert (=> b!2432198 (= e!1546304 (and tp_is_empty!11709 tp!772489))))

(assert (=> b!2431902 (= tp!772416 e!1546304)))

(assert (= (and b!2431902 (is-Cons!28435 (t!208510 s!9460))) b!2432198))

(declare-fun b!2432201 () Bool)

(declare-fun e!1546305 () Bool)

(declare-fun tp!772493 () Bool)

(assert (=> b!2432201 (= e!1546305 tp!772493)))

(declare-fun b!2432199 () Bool)

(assert (=> b!2432199 (= e!1546305 tp_is_empty!11709)))

(assert (=> b!2431897 (= tp!772418 e!1546305)))

(declare-fun b!2432200 () Bool)

(declare-fun tp!772490 () Bool)

(declare-fun tp!772492 () Bool)

(assert (=> b!2432200 (= e!1546305 (and tp!772490 tp!772492))))

(declare-fun b!2432202 () Bool)

(declare-fun tp!772491 () Bool)

(declare-fun tp!772494 () Bool)

(assert (=> b!2432202 (= e!1546305 (and tp!772491 tp!772494))))

(assert (= (and b!2431897 (is-ElementMatch!7148 (reg!7477 r!13927))) b!2432199))

(assert (= (and b!2431897 (is-Concat!11784 (reg!7477 r!13927))) b!2432200))

(assert (= (and b!2431897 (is-Star!7148 (reg!7477 r!13927))) b!2432201))

(assert (= (and b!2431897 (is-Union!7148 (reg!7477 r!13927))) b!2432202))

(declare-fun b_lambda!74815 () Bool)

(assert (= b_lambda!74813 (or start!238102 b_lambda!74815)))

(declare-fun bs!464216 () Bool)

(declare-fun d!703359 () Bool)

(assert (= bs!464216 (and d!703359 start!238102)))

(assert (=> bs!464216 (= (dynLambda!12238 lambda!91696 (h!33835 l!9164)) (validRegex!2865 (h!33835 l!9164)))))

(declare-fun m!2813935 () Bool)

(assert (=> bs!464216 m!2813935))

(assert (=> b!2432127 d!703359))

(push 1)

(assert (not b!2432002))

(assert (not b!2432176))

(assert (not b!2432000))

(assert (not b!2432041))

(assert (not b!2432175))

(assert (not b!2432170))

(assert (not b!2432172))

(assert (not b!2432149))

(assert (not b!2432043))

(assert (not b!2432191))

(assert (not b!2432200))

(assert (not b!2432005))

(assert (not b!2432171))

(assert (not b!2431970))

(assert (not b_lambda!74815))

(assert (not d!703327))

(assert (not bm!148918))

(assert (not b!2432122))

(assert (not b!2432185))

(assert (not b!2432152))

(assert (not b!2432052))

(assert tp_is_empty!11709)

(assert (not b!2432044))

(assert (not b!2432187))

(assert (not d!703357))

(assert (not b!2432198))

(assert (not b!2432189))

(assert (not b!2432174))

(assert (not b!2431999))

(assert (not d!703329))

(assert (not b!2432048))

(assert (not bm!148900))

(assert (not b!2432112))

(assert (not d!703335))

(assert (not bm!148899))

(assert (not bs!464216))

(assert (not b!2432202))

(assert (not b!2432193))

(assert (not b!2432188))

(assert (not b!2432179))

(assert (not b!2432003))

(assert (not b!2432178))

(assert (not b!2432158))

(assert (not b!2432180))

(assert (not b!2432045))

(assert (not b!2432192))

(assert (not b!2432128))

(assert (not d!703343))

(assert (not b!2432150))

(assert (not d!703341))

(assert (not b!2432154))

(assert (not bm!148917))

(assert (not bm!148903))

(assert (not b!2432157))

(assert (not b!2432153))

(assert (not b!2431998))

(assert (not d!703353))

(assert (not b!2432201))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

