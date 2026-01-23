; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!573616 () Bool)

(assert start!573616)

(declare-fun b!5486234 () Bool)

(assert (=> b!5486234 true))

(declare-fun b!5486233 () Bool)

(assert (=> b!5486233 true))

(declare-fun bs!1266949 () Bool)

(assert (= bs!1266949 (and b!5486233 b!5486234)))

(declare-fun lambda!293292 () Int)

(declare-fun lambda!293290 () Int)

(assert (=> bs!1266949 (not (= lambda!293292 lambda!293290))))

(declare-fun e!3394933 () Bool)

(declare-datatypes ((C!31090 0))(
  ( (C!31091 (val!25247 Int)) )
))
(declare-datatypes ((Regex!15410 0))(
  ( (ElementMatch!15410 (c!958352 C!31090)) (Concat!24255 (regOne!31332 Regex!15410) (regTwo!31332 Regex!15410)) (EmptyExpr!15410) (Star!15410 (reg!15739 Regex!15410)) (EmptyLang!15410) (Union!15410 (regOne!31333 Regex!15410) (regTwo!31333 Regex!15410)) )
))
(declare-datatypes ((List!62529 0))(
  ( (Nil!62405) (Cons!62405 (h!68853 Regex!15410) (t!375760 List!62529)) )
))
(declare-datatypes ((Context!9588 0))(
  ( (Context!9589 (exprs!5294 List!62529)) )
))
(declare-fun cc!1 () Context!9588)

(declare-fun forall!14625 (List!62529 Int) Bool)

(assert (=> b!5486233 (= e!3394933 (forall!14625 (exprs!5294 cc!1) lambda!293292))))

(declare-datatypes ((List!62530 0))(
  ( (Nil!62406) (Cons!62406 (h!68854 Context!9588) (t!375761 List!62530)) )
))
(declare-fun zl!343 () List!62530)

(declare-fun lambda!293291 () Int)

(declare-fun exists!2042 (List!62530 Int) Bool)

(assert (=> b!5486233 (exists!2042 zl!343 lambda!293291)))

(declare-datatypes ((Unit!155274 0))(
  ( (Unit!155275) )
))
(declare-fun lt!2240969 () Unit!155274)

(declare-fun lt!2240965 () Regex!15410)

(declare-fun lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!1 (List!62530 Regex!15410) Unit!155274)

(assert (=> b!5486233 (= lt!2240969 (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!1 zl!343 lt!2240965))))

(declare-fun e!3394930 () Bool)

(declare-fun e!3394932 () Bool)

(assert (=> b!5486234 (= e!3394930 e!3394932)))

(declare-fun res!2339563 () Bool)

(assert (=> b!5486234 (=> res!2339563 e!3394932)))

(declare-fun lt!2240964 () Bool)

(assert (=> b!5486234 (= res!2339563 (not lt!2240964))))

(declare-fun lt!2240967 () List!62529)

(declare-fun exists!2043 (List!62529 Int) Bool)

(assert (=> b!5486234 (= lt!2240964 (exists!2043 lt!2240967 lambda!293290))))

(declare-fun lt!2240966 () Unit!155274)

(declare-fun r!7292 () Regex!15410)

(declare-datatypes ((List!62531 0))(
  ( (Nil!62407) (Cons!62407 (h!68855 C!31090) (t!375762 List!62531)) )
))
(declare-fun s!2326 () List!62531)

(declare-fun matchRGenUnionSpec!243 (Regex!15410 List!62529 List!62531) Unit!155274)

(assert (=> b!5486234 (= lt!2240966 (matchRGenUnionSpec!243 r!7292 lt!2240967 s!2326))))

(declare-fun unfocusZipperList!842 (List!62530) List!62529)

(assert (=> b!5486234 (= lt!2240967 (unfocusZipperList!842 zl!343))))

(declare-fun b!5486235 () Bool)

(declare-fun e!3394935 () Bool)

(declare-fun tp_is_empty!40073 () Bool)

(assert (=> b!5486235 (= e!3394935 tp_is_empty!40073)))

(declare-fun e!3394929 () Bool)

(declare-fun b!5486236 () Bool)

(declare-fun e!3394925 () Bool)

(declare-fun tp!1507857 () Bool)

(declare-fun inv!81773 (Context!9588) Bool)

(assert (=> b!5486236 (= e!3394929 (and (inv!81773 (h!68854 zl!343)) e!3394925 tp!1507857))))

(declare-fun b!5486237 () Bool)

(declare-fun e!3394926 () Bool)

(declare-fun isEmpty!34296 (List!62530) Bool)

(assert (=> b!5486237 (= e!3394926 (isEmpty!34296 (t!375761 zl!343)))))

(declare-fun b!5486238 () Bool)

(declare-fun res!2339562 () Bool)

(assert (=> b!5486238 (=> res!2339562 e!3394933)))

(declare-fun matchR!7595 (Regex!15410 List!62531) Bool)

(assert (=> b!5486238 (= res!2339562 (not (matchR!7595 lt!2240965 s!2326)))))

(declare-fun b!5486239 () Bool)

(declare-fun e!3394934 () Bool)

(declare-fun tp!1507856 () Bool)

(assert (=> b!5486239 (= e!3394934 (and tp_is_empty!40073 tp!1507856))))

(declare-fun b!5486240 () Bool)

(declare-fun res!2339568 () Bool)

(assert (=> b!5486240 (=> res!2339568 e!3394930)))

(assert (=> b!5486240 (= res!2339568 (isEmpty!34296 (t!375761 zl!343)))))

(declare-fun b!5486241 () Bool)

(declare-fun e!3394927 () Bool)

(declare-fun tp!1507859 () Bool)

(assert (=> b!5486241 (= e!3394927 tp!1507859)))

(declare-fun b!5486242 () Bool)

(declare-fun res!2339567 () Bool)

(declare-fun e!3394928 () Bool)

(assert (=> b!5486242 (=> (not res!2339567) (not e!3394928))))

(declare-fun unfocusZipper!1152 (List!62530) Regex!15410)

(assert (=> b!5486242 (= res!2339567 (= r!7292 (unfocusZipper!1152 zl!343)))))

(declare-fun setIsEmpty!36186 () Bool)

(declare-fun setRes!36186 () Bool)

(assert (=> setIsEmpty!36186 setRes!36186))

(declare-fun b!5486243 () Bool)

(declare-fun tp!1507850 () Bool)

(assert (=> b!5486243 (= e!3394935 tp!1507850)))

(declare-fun setElem!36186 () Context!9588)

(declare-fun tp!1507851 () Bool)

(declare-fun setNonEmpty!36186 () Bool)

(assert (=> setNonEmpty!36186 (= setRes!36186 (and tp!1507851 (inv!81773 setElem!36186) e!3394927))))

(declare-fun z!1189 () (Set Context!9588))

(declare-fun setRest!36186 () (Set Context!9588))

(assert (=> setNonEmpty!36186 (= z!1189 (set.union (set.insert setElem!36186 (as set.empty (Set Context!9588))) setRest!36186))))

(declare-fun b!5486244 () Bool)

(declare-fun tp!1507855 () Bool)

(declare-fun tp!1507852 () Bool)

(assert (=> b!5486244 (= e!3394935 (and tp!1507855 tp!1507852))))

(declare-fun b!5486245 () Bool)

(declare-fun tp!1507853 () Bool)

(declare-fun tp!1507860 () Bool)

(assert (=> b!5486245 (= e!3394935 (and tp!1507853 tp!1507860))))

(declare-fun b!5486246 () Bool)

(declare-fun tp!1507854 () Bool)

(assert (=> b!5486246 (= e!3394925 tp!1507854)))

(declare-fun b!5486247 () Bool)

(declare-fun res!2339566 () Bool)

(assert (=> b!5486247 (=> (not res!2339566) (not e!3394928))))

(declare-fun toList!9194 ((Set Context!9588)) List!62530)

(assert (=> b!5486247 (= res!2339566 (= (toList!9194 z!1189) zl!343))))

(declare-fun b!5486248 () Bool)

(declare-fun e!3394931 () Bool)

(declare-fun tp!1507858 () Bool)

(assert (=> b!5486248 (= e!3394931 tp!1507858)))

(declare-fun b!5486249 () Bool)

(declare-fun res!2339570 () Bool)

(assert (=> b!5486249 (=> res!2339570 e!3394933)))

(declare-fun validRegex!7146 (Regex!15410) Bool)

(assert (=> b!5486249 (= res!2339570 (not (validRegex!7146 lt!2240965)))))

(declare-fun b!5486250 () Bool)

(declare-fun res!2339572 () Bool)

(assert (=> b!5486250 (=> res!2339572 e!3394932)))

(assert (=> b!5486250 (= res!2339572 (not (exists!2043 lt!2240967 lambda!293290)))))

(declare-fun b!5486251 () Bool)

(assert (=> b!5486251 (= e!3394928 (not e!3394930))))

(declare-fun res!2339571 () Bool)

(assert (=> b!5486251 (=> res!2339571 e!3394930)))

(assert (=> b!5486251 (= res!2339571 e!3394926)))

(declare-fun res!2339564 () Bool)

(assert (=> b!5486251 (=> (not res!2339564) (not e!3394926))))

(assert (=> b!5486251 (= res!2339564 (is-Cons!62406 zl!343))))

(declare-fun matchRSpec!2513 (Regex!15410 List!62531) Bool)

(assert (=> b!5486251 (= lt!2240964 (matchRSpec!2513 r!7292 s!2326))))

(assert (=> b!5486251 (= lt!2240964 (matchR!7595 r!7292 s!2326))))

(declare-fun lt!2240968 () Unit!155274)

(declare-fun mainMatchTheorem!2513 (Regex!15410 List!62531) Unit!155274)

(assert (=> b!5486251 (= lt!2240968 (mainMatchTheorem!2513 r!7292 s!2326))))

(declare-fun b!5486252 () Bool)

(declare-fun res!2339565 () Bool)

(assert (=> b!5486252 (=> res!2339565 e!3394930)))

(assert (=> b!5486252 (= res!2339565 (or (not (is-Cons!62406 zl!343)) (is-Nil!62407 s!2326) (not (= zl!343 (Cons!62406 (h!68854 zl!343) (t!375761 zl!343))))))))

(declare-fun res!2339569 () Bool)

(assert (=> start!573616 (=> (not res!2339569) (not e!3394928))))

(assert (=> start!573616 (= res!2339569 (validRegex!7146 r!7292))))

(assert (=> start!573616 e!3394928))

(assert (=> start!573616 e!3394935))

(assert (=> start!573616 e!3394934))

(declare-fun condSetEmpty!36186 () Bool)

(assert (=> start!573616 (= condSetEmpty!36186 (= z!1189 (as set.empty (Set Context!9588))))))

(assert (=> start!573616 setRes!36186))

(assert (=> start!573616 e!3394929))

(assert (=> start!573616 (and (inv!81773 cc!1) e!3394931)))

(declare-fun b!5486253 () Bool)

(assert (=> b!5486253 (= e!3394932 e!3394933)))

(declare-fun res!2339561 () Bool)

(assert (=> b!5486253 (=> res!2339561 e!3394933)))

(declare-fun contains!19732 (List!62529 Regex!15410) Bool)

(assert (=> b!5486253 (= res!2339561 (not (contains!19732 lt!2240967 lt!2240965)))))

(declare-fun getWitness!865 (List!62529 Int) Regex!15410)

(assert (=> b!5486253 (= lt!2240965 (getWitness!865 lt!2240967 lambda!293290))))

(assert (= (and start!573616 res!2339569) b!5486247))

(assert (= (and b!5486247 res!2339566) b!5486242))

(assert (= (and b!5486242 res!2339567) b!5486251))

(assert (= (and b!5486251 res!2339564) b!5486237))

(assert (= (and b!5486251 (not res!2339571)) b!5486252))

(assert (= (and b!5486252 (not res!2339565)) b!5486240))

(assert (= (and b!5486240 (not res!2339568)) b!5486234))

(assert (= (and b!5486234 (not res!2339563)) b!5486250))

(assert (= (and b!5486250 (not res!2339572)) b!5486253))

(assert (= (and b!5486253 (not res!2339561)) b!5486249))

(assert (= (and b!5486249 (not res!2339570)) b!5486238))

(assert (= (and b!5486238 (not res!2339562)) b!5486233))

(assert (= (and start!573616 (is-ElementMatch!15410 r!7292)) b!5486235))

(assert (= (and start!573616 (is-Concat!24255 r!7292)) b!5486244))

(assert (= (and start!573616 (is-Star!15410 r!7292)) b!5486243))

(assert (= (and start!573616 (is-Union!15410 r!7292)) b!5486245))

(assert (= (and start!573616 (is-Cons!62407 s!2326)) b!5486239))

(assert (= (and start!573616 condSetEmpty!36186) setIsEmpty!36186))

(assert (= (and start!573616 (not condSetEmpty!36186)) setNonEmpty!36186))

(assert (= setNonEmpty!36186 b!5486241))

(assert (= b!5486236 b!5486246))

(assert (= (and start!573616 (is-Cons!62406 zl!343)) b!5486236))

(assert (= start!573616 b!5486248))

(declare-fun m!6501088 () Bool)

(assert (=> b!5486237 m!6501088))

(declare-fun m!6501090 () Bool)

(assert (=> b!5486238 m!6501090))

(declare-fun m!6501092 () Bool)

(assert (=> b!5486253 m!6501092))

(declare-fun m!6501094 () Bool)

(assert (=> b!5486253 m!6501094))

(declare-fun m!6501096 () Bool)

(assert (=> start!573616 m!6501096))

(declare-fun m!6501098 () Bool)

(assert (=> start!573616 m!6501098))

(declare-fun m!6501100 () Bool)

(assert (=> setNonEmpty!36186 m!6501100))

(declare-fun m!6501102 () Bool)

(assert (=> b!5486234 m!6501102))

(declare-fun m!6501104 () Bool)

(assert (=> b!5486234 m!6501104))

(declare-fun m!6501106 () Bool)

(assert (=> b!5486234 m!6501106))

(declare-fun m!6501108 () Bool)

(assert (=> b!5486247 m!6501108))

(assert (=> b!5486250 m!6501102))

(declare-fun m!6501110 () Bool)

(assert (=> b!5486233 m!6501110))

(declare-fun m!6501112 () Bool)

(assert (=> b!5486233 m!6501112))

(declare-fun m!6501114 () Bool)

(assert (=> b!5486233 m!6501114))

(declare-fun m!6501116 () Bool)

(assert (=> b!5486242 m!6501116))

(declare-fun m!6501118 () Bool)

(assert (=> b!5486249 m!6501118))

(declare-fun m!6501120 () Bool)

(assert (=> b!5486236 m!6501120))

(declare-fun m!6501122 () Bool)

(assert (=> b!5486251 m!6501122))

(declare-fun m!6501124 () Bool)

(assert (=> b!5486251 m!6501124))

(declare-fun m!6501126 () Bool)

(assert (=> b!5486251 m!6501126))

(assert (=> b!5486240 m!6501088))

(push 1)

(assert (not b!5486233))

(assert (not b!5486251))

(assert (not b!5486234))

(assert tp_is_empty!40073)

(assert (not b!5486242))

(assert (not b!5486238))

(assert (not b!5486236))

(assert (not b!5486246))

(assert (not b!5486239))

(assert (not b!5486241))

(assert (not b!5486247))

(assert (not b!5486253))

(assert (not b!5486248))

(assert (not b!5486240))

(assert (not start!573616))

(assert (not b!5486249))

(assert (not b!5486245))

(assert (not b!5486244))

(assert (not b!5486237))

(assert (not b!5486243))

(assert (not setNonEmpty!36186))

(assert (not b!5486250))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1741509 () Bool)

(declare-fun e!3394977 () Bool)

(assert (=> d!1741509 e!3394977))

(declare-fun res!2339617 () Bool)

(assert (=> d!1741509 (=> (not res!2339617) (not e!3394977))))

(declare-fun lt!2240990 () List!62530)

(declare-fun noDuplicate!1465 (List!62530) Bool)

(assert (=> d!1741509 (= res!2339617 (noDuplicate!1465 lt!2240990))))

(declare-fun choose!41745 ((Set Context!9588)) List!62530)

(assert (=> d!1741509 (= lt!2240990 (choose!41745 z!1189))))

(assert (=> d!1741509 (= (toList!9194 z!1189) lt!2240990)))

(declare-fun b!5486333 () Bool)

(declare-fun content!11219 (List!62530) (Set Context!9588))

(assert (=> b!5486333 (= e!3394977 (= (content!11219 lt!2240990) z!1189))))

(assert (= (and d!1741509 res!2339617) b!5486333))

(declare-fun m!6501168 () Bool)

(assert (=> d!1741509 m!6501168))

(declare-fun m!6501170 () Bool)

(assert (=> d!1741509 m!6501170))

(declare-fun m!6501172 () Bool)

(assert (=> b!5486333 m!6501172))

(assert (=> b!5486247 d!1741509))

(declare-fun d!1741511 () Bool)

(assert (=> d!1741511 (= (isEmpty!34296 (t!375761 zl!343)) (is-Nil!62406 (t!375761 zl!343)))))

(assert (=> b!5486240 d!1741511))

(declare-fun b!5486356 () Bool)

(declare-fun res!2339636 () Bool)

(declare-fun e!3395000 () Bool)

(assert (=> b!5486356 (=> res!2339636 e!3395000)))

(assert (=> b!5486356 (= res!2339636 (not (is-Concat!24255 lt!2240965)))))

(declare-fun e!3395001 () Bool)

(assert (=> b!5486356 (= e!3395001 e!3395000)))

(declare-fun bm!404695 () Bool)

(declare-fun call!404702 () Bool)

(declare-fun c!958361 () Bool)

(assert (=> bm!404695 (= call!404702 (validRegex!7146 (ite c!958361 (regTwo!31333 lt!2240965) (regTwo!31332 lt!2240965))))))

(declare-fun b!5486357 () Bool)

(declare-fun e!3394999 () Bool)

(declare-fun e!3394998 () Bool)

(assert (=> b!5486357 (= e!3394999 e!3394998)))

(declare-fun c!958360 () Bool)

(assert (=> b!5486357 (= c!958360 (is-Star!15410 lt!2240965))))

(declare-fun b!5486358 () Bool)

(declare-fun e!3394996 () Bool)

(assert (=> b!5486358 (= e!3395000 e!3394996)))

(declare-fun res!2339634 () Bool)

(assert (=> b!5486358 (=> (not res!2339634) (not e!3394996))))

(declare-fun call!404701 () Bool)

(assert (=> b!5486358 (= res!2339634 call!404701)))

(declare-fun bm!404696 () Bool)

(declare-fun call!404700 () Bool)

(assert (=> bm!404696 (= call!404700 (validRegex!7146 (ite c!958360 (reg!15739 lt!2240965) (ite c!958361 (regOne!31333 lt!2240965) (regOne!31332 lt!2240965)))))))

(declare-fun d!1741513 () Bool)

(declare-fun res!2339632 () Bool)

(assert (=> d!1741513 (=> res!2339632 e!3394999)))

(assert (=> d!1741513 (= res!2339632 (is-ElementMatch!15410 lt!2240965))))

(assert (=> d!1741513 (= (validRegex!7146 lt!2240965) e!3394999)))

(declare-fun b!5486359 () Bool)

(declare-fun res!2339635 () Bool)

(declare-fun e!3395002 () Bool)

(assert (=> b!5486359 (=> (not res!2339635) (not e!3395002))))

(assert (=> b!5486359 (= res!2339635 call!404701)))

(assert (=> b!5486359 (= e!3395001 e!3395002)))

(declare-fun b!5486360 () Bool)

(declare-fun e!3394997 () Bool)

(assert (=> b!5486360 (= e!3394998 e!3394997)))

(declare-fun res!2339633 () Bool)

(declare-fun nullable!5495 (Regex!15410) Bool)

(assert (=> b!5486360 (= res!2339633 (not (nullable!5495 (reg!15739 lt!2240965))))))

(assert (=> b!5486360 (=> (not res!2339633) (not e!3394997))))

(declare-fun b!5486361 () Bool)

(assert (=> b!5486361 (= e!3394997 call!404700)))

(declare-fun b!5486362 () Bool)

(assert (=> b!5486362 (= e!3394996 call!404702)))

(declare-fun bm!404697 () Bool)

(assert (=> bm!404697 (= call!404701 call!404700)))

(declare-fun b!5486363 () Bool)

(assert (=> b!5486363 (= e!3395002 call!404702)))

(declare-fun b!5486364 () Bool)

(assert (=> b!5486364 (= e!3394998 e!3395001)))

(assert (=> b!5486364 (= c!958361 (is-Union!15410 lt!2240965))))

(assert (= (and d!1741513 (not res!2339632)) b!5486357))

(assert (= (and b!5486357 c!958360) b!5486360))

(assert (= (and b!5486357 (not c!958360)) b!5486364))

(assert (= (and b!5486360 res!2339633) b!5486361))

(assert (= (and b!5486364 c!958361) b!5486359))

(assert (= (and b!5486364 (not c!958361)) b!5486356))

(assert (= (and b!5486359 res!2339635) b!5486363))

(assert (= (and b!5486356 (not res!2339636)) b!5486358))

(assert (= (and b!5486358 res!2339634) b!5486362))

(assert (= (or b!5486363 b!5486362) bm!404695))

(assert (= (or b!5486359 b!5486358) bm!404697))

(assert (= (or b!5486361 bm!404697) bm!404696))

(declare-fun m!6501174 () Bool)

(assert (=> bm!404695 m!6501174))

(declare-fun m!6501176 () Bool)

(assert (=> bm!404696 m!6501176))

(declare-fun m!6501178 () Bool)

(assert (=> b!5486360 m!6501178))

(assert (=> b!5486249 d!1741513))

(declare-fun bs!1266951 () Bool)

(declare-fun d!1741519 () Bool)

(assert (= bs!1266951 (and d!1741519 b!5486234)))

(declare-fun lambda!293308 () Int)

(assert (=> bs!1266951 (not (= lambda!293308 lambda!293290))))

(declare-fun bs!1266952 () Bool)

(assert (= bs!1266952 (and d!1741519 b!5486233)))

(assert (=> bs!1266952 (not (= lambda!293308 lambda!293292))))

(assert (=> d!1741519 true))

(declare-fun order!27099 () Int)

(declare-fun dynLambda!24446 (Int Int) Int)

(assert (=> d!1741519 (< (dynLambda!24446 order!27099 lambda!293290) (dynLambda!24446 order!27099 lambda!293308))))

(assert (=> d!1741519 (= (exists!2043 lt!2240967 lambda!293290) (not (forall!14625 lt!2240967 lambda!293308)))))

(declare-fun bs!1266953 () Bool)

(assert (= bs!1266953 d!1741519))

(declare-fun m!6501184 () Bool)

(assert (=> bs!1266953 m!6501184))

(assert (=> b!5486250 d!1741519))

(declare-fun d!1741523 () Bool)

(declare-fun lt!2240993 () Regex!15410)

(assert (=> d!1741523 (validRegex!7146 lt!2240993)))

(declare-fun generalisedUnion!1317 (List!62529) Regex!15410)

(assert (=> d!1741523 (= lt!2240993 (generalisedUnion!1317 (unfocusZipperList!842 zl!343)))))

(assert (=> d!1741523 (= (unfocusZipper!1152 zl!343) lt!2240993)))

(declare-fun bs!1266954 () Bool)

(assert (= bs!1266954 d!1741523))

(declare-fun m!6501186 () Bool)

(assert (=> bs!1266954 m!6501186))

(assert (=> bs!1266954 m!6501106))

(assert (=> bs!1266954 m!6501106))

(declare-fun m!6501188 () Bool)

(assert (=> bs!1266954 m!6501188))

(assert (=> b!5486242 d!1741523))

(declare-fun b!5486403 () Bool)

(assert (=> b!5486403 true))

(assert (=> b!5486403 true))

(declare-fun bs!1266960 () Bool)

(declare-fun b!5486409 () Bool)

(assert (= bs!1266960 (and b!5486409 b!5486403)))

(declare-fun lambda!293320 () Int)

(declare-fun lambda!293319 () Int)

(assert (=> bs!1266960 (not (= lambda!293320 lambda!293319))))

(assert (=> b!5486409 true))

(assert (=> b!5486409 true))

(declare-fun e!3395024 () Bool)

(declare-fun call!404707 () Bool)

(assert (=> b!5486403 (= e!3395024 call!404707)))

(declare-fun b!5486404 () Bool)

(declare-fun e!3395025 () Bool)

(declare-fun e!3395026 () Bool)

(assert (=> b!5486404 (= e!3395025 e!3395026)))

(declare-fun c!958375 () Bool)

(assert (=> b!5486404 (= c!958375 (is-Star!15410 r!7292))))

(declare-fun b!5486405 () Bool)

(declare-fun c!958372 () Bool)

(assert (=> b!5486405 (= c!958372 (is-ElementMatch!15410 r!7292))))

(declare-fun e!3395029 () Bool)

(declare-fun e!3395027 () Bool)

(assert (=> b!5486405 (= e!3395029 e!3395027)))

(declare-fun b!5486406 () Bool)

(assert (=> b!5486406 (= e!3395027 (= s!2326 (Cons!62407 (c!958352 r!7292) Nil!62407)))))

(declare-fun bm!404702 () Bool)

(declare-fun Exists!2563 (Int) Bool)

(assert (=> bm!404702 (= call!404707 (Exists!2563 (ite c!958375 lambda!293319 lambda!293320)))))

(declare-fun bm!404703 () Bool)

(declare-fun call!404708 () Bool)

(declare-fun isEmpty!34298 (List!62531) Bool)

(assert (=> bm!404703 (= call!404708 (isEmpty!34298 s!2326))))

(declare-fun b!5486407 () Bool)

(declare-fun res!2339657 () Bool)

(assert (=> b!5486407 (=> res!2339657 e!3395024)))

(assert (=> b!5486407 (= res!2339657 call!404708)))

(assert (=> b!5486407 (= e!3395026 e!3395024)))

(declare-fun b!5486408 () Bool)

(declare-fun e!3395023 () Bool)

(assert (=> b!5486408 (= e!3395023 e!3395029)))

(declare-fun res!2339655 () Bool)

(assert (=> b!5486408 (= res!2339655 (not (is-EmptyLang!15410 r!7292)))))

(assert (=> b!5486408 (=> (not res!2339655) (not e!3395029))))

(declare-fun d!1741525 () Bool)

(declare-fun c!958374 () Bool)

(assert (=> d!1741525 (= c!958374 (is-EmptyExpr!15410 r!7292))))

(assert (=> d!1741525 (= (matchRSpec!2513 r!7292 s!2326) e!3395023)))

(assert (=> b!5486409 (= e!3395026 call!404707)))

(declare-fun b!5486410 () Bool)

(assert (=> b!5486410 (= e!3395023 call!404708)))

(declare-fun b!5486411 () Bool)

(declare-fun e!3395028 () Bool)

(assert (=> b!5486411 (= e!3395028 (matchRSpec!2513 (regTwo!31333 r!7292) s!2326))))

(declare-fun b!5486412 () Bool)

(assert (=> b!5486412 (= e!3395025 e!3395028)))

(declare-fun res!2339656 () Bool)

(assert (=> b!5486412 (= res!2339656 (matchRSpec!2513 (regOne!31333 r!7292) s!2326))))

(assert (=> b!5486412 (=> res!2339656 e!3395028)))

(declare-fun b!5486413 () Bool)

(declare-fun c!958373 () Bool)

(assert (=> b!5486413 (= c!958373 (is-Union!15410 r!7292))))

(assert (=> b!5486413 (= e!3395027 e!3395025)))

(assert (= (and d!1741525 c!958374) b!5486410))

(assert (= (and d!1741525 (not c!958374)) b!5486408))

(assert (= (and b!5486408 res!2339655) b!5486405))

(assert (= (and b!5486405 c!958372) b!5486406))

(assert (= (and b!5486405 (not c!958372)) b!5486413))

(assert (= (and b!5486413 c!958373) b!5486412))

(assert (= (and b!5486413 (not c!958373)) b!5486404))

(assert (= (and b!5486412 (not res!2339656)) b!5486411))

(assert (= (and b!5486404 c!958375) b!5486407))

(assert (= (and b!5486404 (not c!958375)) b!5486409))

(assert (= (and b!5486407 (not res!2339657)) b!5486403))

(assert (= (or b!5486403 b!5486409) bm!404702))

(assert (= (or b!5486410 b!5486407) bm!404703))

(declare-fun m!6501198 () Bool)

(assert (=> bm!404702 m!6501198))

(declare-fun m!6501200 () Bool)

(assert (=> bm!404703 m!6501200))

(declare-fun m!6501202 () Bool)

(assert (=> b!5486411 m!6501202))

(declare-fun m!6501204 () Bool)

(assert (=> b!5486412 m!6501204))

(assert (=> b!5486251 d!1741525))

(declare-fun b!5486468 () Bool)

(declare-fun res!2339686 () Bool)

(declare-fun e!3395062 () Bool)

(assert (=> b!5486468 (=> (not res!2339686) (not e!3395062))))

(declare-fun tail!10844 (List!62531) List!62531)

(assert (=> b!5486468 (= res!2339686 (isEmpty!34298 (tail!10844 s!2326)))))

(declare-fun b!5486469 () Bool)

(declare-fun res!2339680 () Bool)

(declare-fun e!3395064 () Bool)

(assert (=> b!5486469 (=> res!2339680 e!3395064)))

(assert (=> b!5486469 (= res!2339680 e!3395062)))

(declare-fun res!2339687 () Bool)

(assert (=> b!5486469 (=> (not res!2339687) (not e!3395062))))

(declare-fun lt!2240999 () Bool)

(assert (=> b!5486469 (= res!2339687 lt!2240999)))

(declare-fun b!5486470 () Bool)

(declare-fun e!3395060 () Bool)

(declare-fun e!3395061 () Bool)

(assert (=> b!5486470 (= e!3395060 e!3395061)))

(declare-fun res!2339681 () Bool)

(assert (=> b!5486470 (=> res!2339681 e!3395061)))

(declare-fun call!404711 () Bool)

(assert (=> b!5486470 (= res!2339681 call!404711)))

(declare-fun b!5486471 () Bool)

(declare-fun e!3395059 () Bool)

(assert (=> b!5486471 (= e!3395059 (not lt!2240999))))

(declare-fun b!5486472 () Bool)

(declare-fun res!2339682 () Bool)

(assert (=> b!5486472 (=> res!2339682 e!3395064)))

(assert (=> b!5486472 (= res!2339682 (not (is-ElementMatch!15410 r!7292)))))

(assert (=> b!5486472 (= e!3395059 e!3395064)))

(declare-fun b!5486473 () Bool)

(declare-fun res!2339683 () Bool)

(assert (=> b!5486473 (=> res!2339683 e!3395061)))

(assert (=> b!5486473 (= res!2339683 (not (isEmpty!34298 (tail!10844 s!2326))))))

(declare-fun b!5486474 () Bool)

(declare-fun res!2339684 () Bool)

(assert (=> b!5486474 (=> (not res!2339684) (not e!3395062))))

(assert (=> b!5486474 (= res!2339684 (not call!404711))))

(declare-fun b!5486475 () Bool)

(declare-fun e!3395058 () Bool)

(assert (=> b!5486475 (= e!3395058 (nullable!5495 r!7292))))

(declare-fun b!5486477 () Bool)

(declare-fun derivativeStep!4336 (Regex!15410 C!31090) Regex!15410)

(declare-fun head!11747 (List!62531) C!31090)

(assert (=> b!5486477 (= e!3395058 (matchR!7595 (derivativeStep!4336 r!7292 (head!11747 s!2326)) (tail!10844 s!2326)))))

(declare-fun b!5486478 () Bool)

(assert (=> b!5486478 (= e!3395064 e!3395060)))

(declare-fun res!2339685 () Bool)

(assert (=> b!5486478 (=> (not res!2339685) (not e!3395060))))

(assert (=> b!5486478 (= res!2339685 (not lt!2240999))))

(declare-fun b!5486479 () Bool)

(declare-fun e!3395063 () Bool)

(assert (=> b!5486479 (= e!3395063 (= lt!2240999 call!404711))))

(declare-fun b!5486480 () Bool)

(assert (=> b!5486480 (= e!3395061 (not (= (head!11747 s!2326) (c!958352 r!7292))))))

(declare-fun d!1741531 () Bool)

(assert (=> d!1741531 e!3395063))

(declare-fun c!958392 () Bool)

(assert (=> d!1741531 (= c!958392 (is-EmptyExpr!15410 r!7292))))

(assert (=> d!1741531 (= lt!2240999 e!3395058)))

(declare-fun c!958390 () Bool)

(assert (=> d!1741531 (= c!958390 (isEmpty!34298 s!2326))))

(assert (=> d!1741531 (validRegex!7146 r!7292)))

(assert (=> d!1741531 (= (matchR!7595 r!7292 s!2326) lt!2240999)))

(declare-fun b!5486476 () Bool)

(assert (=> b!5486476 (= e!3395063 e!3395059)))

(declare-fun c!958391 () Bool)

(assert (=> b!5486476 (= c!958391 (is-EmptyLang!15410 r!7292))))

(declare-fun b!5486481 () Bool)

(assert (=> b!5486481 (= e!3395062 (= (head!11747 s!2326) (c!958352 r!7292)))))

(declare-fun bm!404706 () Bool)

(assert (=> bm!404706 (= call!404711 (isEmpty!34298 s!2326))))

(assert (= (and d!1741531 c!958390) b!5486475))

(assert (= (and d!1741531 (not c!958390)) b!5486477))

(assert (= (and d!1741531 c!958392) b!5486479))

(assert (= (and d!1741531 (not c!958392)) b!5486476))

(assert (= (and b!5486476 c!958391) b!5486471))

(assert (= (and b!5486476 (not c!958391)) b!5486472))

(assert (= (and b!5486472 (not res!2339682)) b!5486469))

(assert (= (and b!5486469 res!2339687) b!5486474))

(assert (= (and b!5486474 res!2339684) b!5486468))

(assert (= (and b!5486468 res!2339686) b!5486481))

(assert (= (and b!5486469 (not res!2339680)) b!5486478))

(assert (= (and b!5486478 res!2339685) b!5486470))

(assert (= (and b!5486470 (not res!2339681)) b!5486473))

(assert (= (and b!5486473 (not res!2339683)) b!5486480))

(assert (= (or b!5486479 b!5486470 b!5486474) bm!404706))

(declare-fun m!6501206 () Bool)

(assert (=> b!5486477 m!6501206))

(assert (=> b!5486477 m!6501206))

(declare-fun m!6501208 () Bool)

(assert (=> b!5486477 m!6501208))

(declare-fun m!6501210 () Bool)

(assert (=> b!5486477 m!6501210))

(assert (=> b!5486477 m!6501208))

(assert (=> b!5486477 m!6501210))

(declare-fun m!6501212 () Bool)

(assert (=> b!5486477 m!6501212))

(declare-fun m!6501214 () Bool)

(assert (=> b!5486475 m!6501214))

(assert (=> b!5486473 m!6501210))

(assert (=> b!5486473 m!6501210))

(declare-fun m!6501216 () Bool)

(assert (=> b!5486473 m!6501216))

(assert (=> b!5486480 m!6501206))

(assert (=> bm!404706 m!6501200))

(assert (=> d!1741531 m!6501200))

(assert (=> d!1741531 m!6501096))

(assert (=> b!5486481 m!6501206))

(assert (=> b!5486468 m!6501210))

(assert (=> b!5486468 m!6501210))

(assert (=> b!5486468 m!6501216))

(assert (=> b!5486251 d!1741531))

(declare-fun d!1741533 () Bool)

(assert (=> d!1741533 (= (matchR!7595 r!7292 s!2326) (matchRSpec!2513 r!7292 s!2326))))

(declare-fun lt!2241002 () Unit!155274)

(declare-fun choose!41746 (Regex!15410 List!62531) Unit!155274)

(assert (=> d!1741533 (= lt!2241002 (choose!41746 r!7292 s!2326))))

(assert (=> d!1741533 (validRegex!7146 r!7292)))

(assert (=> d!1741533 (= (mainMatchTheorem!2513 r!7292 s!2326) lt!2241002)))

(declare-fun bs!1266961 () Bool)

(assert (= bs!1266961 d!1741533))

(assert (=> bs!1266961 m!6501124))

(assert (=> bs!1266961 m!6501122))

(declare-fun m!6501218 () Bool)

(assert (=> bs!1266961 m!6501218))

(assert (=> bs!1266961 m!6501096))

(assert (=> b!5486251 d!1741533))

(declare-fun d!1741535 () Bool)

(declare-fun res!2339698 () Bool)

(declare-fun e!3395071 () Bool)

(assert (=> d!1741535 (=> res!2339698 e!3395071)))

(assert (=> d!1741535 (= res!2339698 (is-Nil!62405 (exprs!5294 cc!1)))))

(assert (=> d!1741535 (= (forall!14625 (exprs!5294 cc!1) lambda!293292) e!3395071)))

(declare-fun b!5486492 () Bool)

(declare-fun e!3395072 () Bool)

(assert (=> b!5486492 (= e!3395071 e!3395072)))

(declare-fun res!2339699 () Bool)

(assert (=> b!5486492 (=> (not res!2339699) (not e!3395072))))

(declare-fun dynLambda!24447 (Int Regex!15410) Bool)

(assert (=> b!5486492 (= res!2339699 (dynLambda!24447 lambda!293292 (h!68853 (exprs!5294 cc!1))))))

(declare-fun b!5486493 () Bool)

(assert (=> b!5486493 (= e!3395072 (forall!14625 (t!375760 (exprs!5294 cc!1)) lambda!293292))))

(assert (= (and d!1741535 (not res!2339698)) b!5486492))

(assert (= (and b!5486492 res!2339699) b!5486493))

(declare-fun b_lambda!208341 () Bool)

(assert (=> (not b_lambda!208341) (not b!5486492)))

(declare-fun m!6501220 () Bool)

(assert (=> b!5486492 m!6501220))

(declare-fun m!6501222 () Bool)

(assert (=> b!5486493 m!6501222))

(assert (=> b!5486233 d!1741535))

(declare-fun bs!1266962 () Bool)

(declare-fun d!1741537 () Bool)

(assert (= bs!1266962 (and d!1741537 b!5486233)))

(declare-fun lambda!293325 () Int)

(assert (=> bs!1266962 (not (= lambda!293325 lambda!293291))))

(assert (=> d!1741537 true))

(declare-fun order!27103 () Int)

(declare-fun dynLambda!24448 (Int Int) Int)

(assert (=> d!1741537 (< (dynLambda!24448 order!27103 lambda!293291) (dynLambda!24448 order!27103 lambda!293325))))

(declare-fun forall!14627 (List!62530 Int) Bool)

(assert (=> d!1741537 (= (exists!2042 zl!343 lambda!293291) (not (forall!14627 zl!343 lambda!293325)))))

(declare-fun bs!1266963 () Bool)

(assert (= bs!1266963 d!1741537))

(declare-fun m!6501224 () Bool)

(assert (=> bs!1266963 m!6501224))

(assert (=> b!5486233 d!1741537))

(declare-fun bs!1266964 () Bool)

(declare-fun d!1741539 () Bool)

(assert (= bs!1266964 (and d!1741539 b!5486233)))

(declare-fun lambda!293330 () Int)

(assert (=> bs!1266964 (= lambda!293330 lambda!293291)))

(declare-fun bs!1266965 () Bool)

(assert (= bs!1266965 (and d!1741539 d!1741537)))

(assert (=> bs!1266965 (not (= lambda!293330 lambda!293325))))

(assert (=> d!1741539 true))

(assert (=> d!1741539 (exists!2042 zl!343 lambda!293330)))

(declare-fun lt!2241005 () Unit!155274)

(declare-fun choose!41747 (List!62530 Regex!15410) Unit!155274)

(assert (=> d!1741539 (= lt!2241005 (choose!41747 zl!343 lt!2240965))))

(assert (=> d!1741539 (contains!19732 (unfocusZipperList!842 zl!343) lt!2240965)))

(assert (=> d!1741539 (= (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!1 zl!343 lt!2240965) lt!2241005)))

(declare-fun bs!1266966 () Bool)

(assert (= bs!1266966 d!1741539))

(declare-fun m!6501226 () Bool)

(assert (=> bs!1266966 m!6501226))

(declare-fun m!6501228 () Bool)

(assert (=> bs!1266966 m!6501228))

(assert (=> bs!1266966 m!6501106))

(assert (=> bs!1266966 m!6501106))

(declare-fun m!6501230 () Bool)

(assert (=> bs!1266966 m!6501230))

(assert (=> b!5486233 d!1741539))

(assert (=> b!5486234 d!1741519))

(declare-fun bs!1266967 () Bool)

(declare-fun d!1741541 () Bool)

(assert (= bs!1266967 (and d!1741541 b!5486234)))

(declare-fun lambda!293335 () Int)

(assert (=> bs!1266967 (not (= lambda!293335 lambda!293290))))

(declare-fun bs!1266968 () Bool)

(assert (= bs!1266968 (and d!1741541 b!5486233)))

(assert (=> bs!1266968 (= lambda!293335 lambda!293292)))

(declare-fun bs!1266969 () Bool)

(assert (= bs!1266969 (and d!1741541 d!1741519)))

(assert (=> bs!1266969 (not (= lambda!293335 lambda!293308))))

(declare-fun lambda!293336 () Int)

(assert (=> bs!1266967 (= lambda!293336 lambda!293290)))

(assert (=> bs!1266968 (not (= lambda!293336 lambda!293292))))

(assert (=> bs!1266969 (not (= lambda!293336 lambda!293308))))

(declare-fun bs!1266970 () Bool)

(assert (= bs!1266970 d!1741541))

(assert (=> bs!1266970 (not (= lambda!293336 lambda!293335))))

(assert (=> d!1741541 true))

(assert (=> d!1741541 (= (matchR!7595 r!7292 s!2326) (exists!2043 lt!2240967 lambda!293336))))

(declare-fun lt!2241008 () Unit!155274)

(declare-fun choose!41748 (Regex!15410 List!62529 List!62531) Unit!155274)

(assert (=> d!1741541 (= lt!2241008 (choose!41748 r!7292 lt!2240967 s!2326))))

(assert (=> d!1741541 (forall!14625 lt!2240967 lambda!293335)))

(assert (=> d!1741541 (= (matchRGenUnionSpec!243 r!7292 lt!2240967 s!2326) lt!2241008)))

(assert (=> bs!1266970 m!6501124))

(declare-fun m!6501232 () Bool)

(assert (=> bs!1266970 m!6501232))

(declare-fun m!6501234 () Bool)

(assert (=> bs!1266970 m!6501234))

(declare-fun m!6501236 () Bool)

(assert (=> bs!1266970 m!6501236))

(assert (=> b!5486234 d!1741541))

(declare-fun bs!1266971 () Bool)

(declare-fun d!1741543 () Bool)

(assert (= bs!1266971 (and d!1741543 b!5486233)))

(declare-fun lambda!293340 () Int)

(assert (=> bs!1266971 (= lambda!293340 lambda!293292)))

(declare-fun bs!1266972 () Bool)

(assert (= bs!1266972 (and d!1741543 d!1741541)))

(assert (=> bs!1266972 (not (= lambda!293340 lambda!293336))))

(assert (=> bs!1266972 (= lambda!293340 lambda!293335)))

(declare-fun bs!1266973 () Bool)

(assert (= bs!1266973 (and d!1741543 b!5486234)))

(assert (=> bs!1266973 (not (= lambda!293340 lambda!293290))))

(declare-fun bs!1266974 () Bool)

(assert (= bs!1266974 (and d!1741543 d!1741519)))

(assert (=> bs!1266974 (not (= lambda!293340 lambda!293308))))

(declare-fun lt!2241011 () List!62529)

(assert (=> d!1741543 (forall!14625 lt!2241011 lambda!293340)))

(declare-fun e!3395086 () List!62529)

(assert (=> d!1741543 (= lt!2241011 e!3395086)))

(declare-fun c!958401 () Bool)

(assert (=> d!1741543 (= c!958401 (is-Cons!62406 zl!343))))

(assert (=> d!1741543 (= (unfocusZipperList!842 zl!343) lt!2241011)))

(declare-fun b!5486517 () Bool)

(declare-fun generalisedConcat!1057 (List!62529) Regex!15410)

(assert (=> b!5486517 (= e!3395086 (Cons!62405 (generalisedConcat!1057 (exprs!5294 (h!68854 zl!343))) (unfocusZipperList!842 (t!375761 zl!343))))))

(declare-fun b!5486518 () Bool)

(assert (=> b!5486518 (= e!3395086 Nil!62405)))

(assert (= (and d!1741543 c!958401) b!5486517))

(assert (= (and d!1741543 (not c!958401)) b!5486518))

(declare-fun m!6501238 () Bool)

(assert (=> d!1741543 m!6501238))

(declare-fun m!6501240 () Bool)

(assert (=> b!5486517 m!6501240))

(declare-fun m!6501242 () Bool)

(assert (=> b!5486517 m!6501242))

(assert (=> b!5486234 d!1741543))

(declare-fun d!1741545 () Bool)

(declare-fun lt!2241014 () Bool)

(declare-fun content!11220 (List!62529) (Set Regex!15410))

(assert (=> d!1741545 (= lt!2241014 (set.member lt!2240965 (content!11220 lt!2240967)))))

(declare-fun e!3395091 () Bool)

(assert (=> d!1741545 (= lt!2241014 e!3395091)))

(declare-fun res!2339713 () Bool)

(assert (=> d!1741545 (=> (not res!2339713) (not e!3395091))))

(assert (=> d!1741545 (= res!2339713 (is-Cons!62405 lt!2240967))))

(assert (=> d!1741545 (= (contains!19732 lt!2240967 lt!2240965) lt!2241014)))

(declare-fun b!5486527 () Bool)

(declare-fun e!3395092 () Bool)

(assert (=> b!5486527 (= e!3395091 e!3395092)))

(declare-fun res!2339714 () Bool)

(assert (=> b!5486527 (=> res!2339714 e!3395092)))

(assert (=> b!5486527 (= res!2339714 (= (h!68853 lt!2240967) lt!2240965))))

(declare-fun b!5486528 () Bool)

(assert (=> b!5486528 (= e!3395092 (contains!19732 (t!375760 lt!2240967) lt!2240965))))

(assert (= (and d!1741545 res!2339713) b!5486527))

(assert (= (and b!5486527 (not res!2339714)) b!5486528))

(declare-fun m!6501246 () Bool)

(assert (=> d!1741545 m!6501246))

(declare-fun m!6501250 () Bool)

(assert (=> d!1741545 m!6501250))

(declare-fun m!6501252 () Bool)

(assert (=> b!5486528 m!6501252))

(assert (=> b!5486253 d!1741545))

(declare-fun b!5486541 () Bool)

(declare-fun e!3395102 () Bool)

(assert (=> b!5486541 (= e!3395102 (dynLambda!24447 lambda!293290 (h!68853 lt!2240967)))))

(declare-fun b!5486542 () Bool)

(declare-fun e!3395101 () Regex!15410)

(assert (=> b!5486542 (= e!3395101 (getWitness!865 (t!375760 lt!2240967) lambda!293290))))

(declare-fun b!5486543 () Bool)

(declare-fun e!3395103 () Bool)

(declare-fun lt!2241019 () Regex!15410)

(assert (=> b!5486543 (= e!3395103 (contains!19732 lt!2240967 lt!2241019))))

(declare-fun b!5486544 () Bool)

(declare-fun e!3395104 () Regex!15410)

(assert (=> b!5486544 (= e!3395104 (h!68853 lt!2240967))))

(declare-fun b!5486545 () Bool)

(assert (=> b!5486545 (= e!3395104 e!3395101)))

(declare-fun c!958407 () Bool)

(assert (=> b!5486545 (= c!958407 (is-Cons!62405 lt!2240967))))

(declare-fun d!1741547 () Bool)

(assert (=> d!1741547 e!3395103))

(declare-fun res!2339719 () Bool)

(assert (=> d!1741547 (=> (not res!2339719) (not e!3395103))))

(assert (=> d!1741547 (= res!2339719 (dynLambda!24447 lambda!293290 lt!2241019))))

(assert (=> d!1741547 (= lt!2241019 e!3395104)))

(declare-fun c!958406 () Bool)

(assert (=> d!1741547 (= c!958406 e!3395102)))

(declare-fun res!2339720 () Bool)

(assert (=> d!1741547 (=> (not res!2339720) (not e!3395102))))

(assert (=> d!1741547 (= res!2339720 (is-Cons!62405 lt!2240967))))

(assert (=> d!1741547 (exists!2043 lt!2240967 lambda!293290)))

(assert (=> d!1741547 (= (getWitness!865 lt!2240967 lambda!293290) lt!2241019)))

(declare-fun b!5486546 () Bool)

(declare-fun lt!2241020 () Unit!155274)

(declare-fun Unit!155278 () Unit!155274)

(assert (=> b!5486546 (= lt!2241020 Unit!155278)))

(assert (=> b!5486546 false))

(declare-fun head!11748 (List!62529) Regex!15410)

(assert (=> b!5486546 (= e!3395101 (head!11748 lt!2240967))))

(assert (= (and d!1741547 res!2339720) b!5486541))

(assert (= (and d!1741547 c!958406) b!5486544))

(assert (= (and d!1741547 (not c!958406)) b!5486545))

(assert (= (and b!5486545 c!958407) b!5486542))

(assert (= (and b!5486545 (not c!958407)) b!5486546))

(assert (= (and d!1741547 res!2339719) b!5486543))

(declare-fun b_lambda!208343 () Bool)

(assert (=> (not b_lambda!208343) (not b!5486541)))

(declare-fun b_lambda!208345 () Bool)

(assert (=> (not b_lambda!208345) (not d!1741547)))

(declare-fun m!6501258 () Bool)

(assert (=> d!1741547 m!6501258))

(assert (=> d!1741547 m!6501102))

(declare-fun m!6501260 () Bool)

(assert (=> b!5486543 m!6501260))

(declare-fun m!6501262 () Bool)

(assert (=> b!5486541 m!6501262))

(declare-fun m!6501264 () Bool)

(assert (=> b!5486546 m!6501264))

(declare-fun m!6501266 () Bool)

(assert (=> b!5486542 m!6501266))

(assert (=> b!5486253 d!1741547))

(declare-fun bs!1266976 () Bool)

(declare-fun d!1741551 () Bool)

(assert (= bs!1266976 (and d!1741551 b!5486233)))

(declare-fun lambda!293344 () Int)

(assert (=> bs!1266976 (= lambda!293344 lambda!293292)))

(declare-fun bs!1266977 () Bool)

(assert (= bs!1266977 (and d!1741551 d!1741541)))

(assert (=> bs!1266977 (not (= lambda!293344 lambda!293336))))

(assert (=> bs!1266977 (= lambda!293344 lambda!293335)))

(declare-fun bs!1266978 () Bool)

(assert (= bs!1266978 (and d!1741551 d!1741543)))

(assert (=> bs!1266978 (= lambda!293344 lambda!293340)))

(declare-fun bs!1266979 () Bool)

(assert (= bs!1266979 (and d!1741551 b!5486234)))

(assert (=> bs!1266979 (not (= lambda!293344 lambda!293290))))

(declare-fun bs!1266980 () Bool)

(assert (= bs!1266980 (and d!1741551 d!1741519)))

(assert (=> bs!1266980 (not (= lambda!293344 lambda!293308))))

(assert (=> d!1741551 (= (inv!81773 setElem!36186) (forall!14625 (exprs!5294 setElem!36186) lambda!293344))))

(declare-fun bs!1266981 () Bool)

(assert (= bs!1266981 d!1741551))

(declare-fun m!6501268 () Bool)

(assert (=> bs!1266981 m!6501268))

(assert (=> setNonEmpty!36186 d!1741551))

(declare-fun bs!1266982 () Bool)

(declare-fun d!1741553 () Bool)

(assert (= bs!1266982 (and d!1741553 b!5486233)))

(declare-fun lambda!293345 () Int)

(assert (=> bs!1266982 (= lambda!293345 lambda!293292)))

(declare-fun bs!1266983 () Bool)

(assert (= bs!1266983 (and d!1741553 d!1741541)))

(assert (=> bs!1266983 (not (= lambda!293345 lambda!293336))))

(assert (=> bs!1266983 (= lambda!293345 lambda!293335)))

(declare-fun bs!1266984 () Bool)

(assert (= bs!1266984 (and d!1741553 d!1741551)))

(assert (=> bs!1266984 (= lambda!293345 lambda!293344)))

(declare-fun bs!1266985 () Bool)

(assert (= bs!1266985 (and d!1741553 d!1741543)))

(assert (=> bs!1266985 (= lambda!293345 lambda!293340)))

(declare-fun bs!1266986 () Bool)

(assert (= bs!1266986 (and d!1741553 b!5486234)))

(assert (=> bs!1266986 (not (= lambda!293345 lambda!293290))))

(declare-fun bs!1266987 () Bool)

(assert (= bs!1266987 (and d!1741553 d!1741519)))

(assert (=> bs!1266987 (not (= lambda!293345 lambda!293308))))

(assert (=> d!1741553 (= (inv!81773 (h!68854 zl!343)) (forall!14625 (exprs!5294 (h!68854 zl!343)) lambda!293345))))

(declare-fun bs!1266988 () Bool)

(assert (= bs!1266988 d!1741553))

(declare-fun m!6501270 () Bool)

(assert (=> bs!1266988 m!6501270))

(assert (=> b!5486236 d!1741553))

(declare-fun b!5486547 () Bool)

(declare-fun res!2339725 () Bool)

(declare-fun e!3395109 () Bool)

(assert (=> b!5486547 (=> res!2339725 e!3395109)))

(assert (=> b!5486547 (= res!2339725 (not (is-Concat!24255 r!7292)))))

(declare-fun e!3395110 () Bool)

(assert (=> b!5486547 (= e!3395110 e!3395109)))

(declare-fun bm!404713 () Bool)

(declare-fun call!404720 () Bool)

(declare-fun c!958409 () Bool)

(assert (=> bm!404713 (= call!404720 (validRegex!7146 (ite c!958409 (regTwo!31333 r!7292) (regTwo!31332 r!7292))))))

(declare-fun b!5486548 () Bool)

(declare-fun e!3395108 () Bool)

(declare-fun e!3395107 () Bool)

(assert (=> b!5486548 (= e!3395108 e!3395107)))

(declare-fun c!958408 () Bool)

(assert (=> b!5486548 (= c!958408 (is-Star!15410 r!7292))))

(declare-fun b!5486549 () Bool)

(declare-fun e!3395105 () Bool)

(assert (=> b!5486549 (= e!3395109 e!3395105)))

(declare-fun res!2339723 () Bool)

(assert (=> b!5486549 (=> (not res!2339723) (not e!3395105))))

(declare-fun call!404719 () Bool)

(assert (=> b!5486549 (= res!2339723 call!404719)))

(declare-fun call!404718 () Bool)

(declare-fun bm!404714 () Bool)

(assert (=> bm!404714 (= call!404718 (validRegex!7146 (ite c!958408 (reg!15739 r!7292) (ite c!958409 (regOne!31333 r!7292) (regOne!31332 r!7292)))))))

(declare-fun d!1741555 () Bool)

(declare-fun res!2339721 () Bool)

(assert (=> d!1741555 (=> res!2339721 e!3395108)))

(assert (=> d!1741555 (= res!2339721 (is-ElementMatch!15410 r!7292))))

(assert (=> d!1741555 (= (validRegex!7146 r!7292) e!3395108)))

(declare-fun b!5486550 () Bool)

(declare-fun res!2339724 () Bool)

(declare-fun e!3395111 () Bool)

(assert (=> b!5486550 (=> (not res!2339724) (not e!3395111))))

(assert (=> b!5486550 (= res!2339724 call!404719)))

(assert (=> b!5486550 (= e!3395110 e!3395111)))

(declare-fun b!5486551 () Bool)

(declare-fun e!3395106 () Bool)

(assert (=> b!5486551 (= e!3395107 e!3395106)))

(declare-fun res!2339722 () Bool)

(assert (=> b!5486551 (= res!2339722 (not (nullable!5495 (reg!15739 r!7292))))))

(assert (=> b!5486551 (=> (not res!2339722) (not e!3395106))))

(declare-fun b!5486552 () Bool)

(assert (=> b!5486552 (= e!3395106 call!404718)))

(declare-fun b!5486553 () Bool)

(assert (=> b!5486553 (= e!3395105 call!404720)))

(declare-fun bm!404715 () Bool)

(assert (=> bm!404715 (= call!404719 call!404718)))

(declare-fun b!5486554 () Bool)

(assert (=> b!5486554 (= e!3395111 call!404720)))

(declare-fun b!5486555 () Bool)

(assert (=> b!5486555 (= e!3395107 e!3395110)))

(assert (=> b!5486555 (= c!958409 (is-Union!15410 r!7292))))

(assert (= (and d!1741555 (not res!2339721)) b!5486548))

(assert (= (and b!5486548 c!958408) b!5486551))

(assert (= (and b!5486548 (not c!958408)) b!5486555))

(assert (= (and b!5486551 res!2339722) b!5486552))

(assert (= (and b!5486555 c!958409) b!5486550))

(assert (= (and b!5486555 (not c!958409)) b!5486547))

(assert (= (and b!5486550 res!2339724) b!5486554))

(assert (= (and b!5486547 (not res!2339725)) b!5486549))

(assert (= (and b!5486549 res!2339723) b!5486553))

(assert (= (or b!5486554 b!5486553) bm!404713))

(assert (= (or b!5486550 b!5486549) bm!404715))

(assert (= (or b!5486552 bm!404715) bm!404714))

(declare-fun m!6501272 () Bool)

(assert (=> bm!404713 m!6501272))

(declare-fun m!6501274 () Bool)

(assert (=> bm!404714 m!6501274))

(declare-fun m!6501276 () Bool)

(assert (=> b!5486551 m!6501276))

(assert (=> start!573616 d!1741555))

(declare-fun bs!1266989 () Bool)

(declare-fun d!1741557 () Bool)

(assert (= bs!1266989 (and d!1741557 b!5486233)))

(declare-fun lambda!293346 () Int)

(assert (=> bs!1266989 (= lambda!293346 lambda!293292)))

(declare-fun bs!1266990 () Bool)

(assert (= bs!1266990 (and d!1741557 d!1741541)))

(assert (=> bs!1266990 (not (= lambda!293346 lambda!293336))))

(assert (=> bs!1266990 (= lambda!293346 lambda!293335)))

(declare-fun bs!1266991 () Bool)

(assert (= bs!1266991 (and d!1741557 d!1741553)))

(assert (=> bs!1266991 (= lambda!293346 lambda!293345)))

(declare-fun bs!1266992 () Bool)

(assert (= bs!1266992 (and d!1741557 d!1741551)))

(assert (=> bs!1266992 (= lambda!293346 lambda!293344)))

(declare-fun bs!1266993 () Bool)

(assert (= bs!1266993 (and d!1741557 d!1741543)))

(assert (=> bs!1266993 (= lambda!293346 lambda!293340)))

(declare-fun bs!1266994 () Bool)

(assert (= bs!1266994 (and d!1741557 b!5486234)))

(assert (=> bs!1266994 (not (= lambda!293346 lambda!293290))))

(declare-fun bs!1266995 () Bool)

(assert (= bs!1266995 (and d!1741557 d!1741519)))

(assert (=> bs!1266995 (not (= lambda!293346 lambda!293308))))

(assert (=> d!1741557 (= (inv!81773 cc!1) (forall!14625 (exprs!5294 cc!1) lambda!293346))))

(declare-fun bs!1266996 () Bool)

(assert (= bs!1266996 d!1741557))

(declare-fun m!6501278 () Bool)

(assert (=> bs!1266996 m!6501278))

(assert (=> start!573616 d!1741557))

(assert (=> b!5486237 d!1741511))

(declare-fun b!5486556 () Bool)

(declare-fun res!2339732 () Bool)

(declare-fun e!3395116 () Bool)

(assert (=> b!5486556 (=> (not res!2339732) (not e!3395116))))

(assert (=> b!5486556 (= res!2339732 (isEmpty!34298 (tail!10844 s!2326)))))

(declare-fun b!5486557 () Bool)

(declare-fun res!2339726 () Bool)

(declare-fun e!3395118 () Bool)

(assert (=> b!5486557 (=> res!2339726 e!3395118)))

(assert (=> b!5486557 (= res!2339726 e!3395116)))

(declare-fun res!2339733 () Bool)

(assert (=> b!5486557 (=> (not res!2339733) (not e!3395116))))

(declare-fun lt!2241021 () Bool)

(assert (=> b!5486557 (= res!2339733 lt!2241021)))

(declare-fun b!5486558 () Bool)

(declare-fun e!3395114 () Bool)

(declare-fun e!3395115 () Bool)

(assert (=> b!5486558 (= e!3395114 e!3395115)))

(declare-fun res!2339727 () Bool)

(assert (=> b!5486558 (=> res!2339727 e!3395115)))

(declare-fun call!404721 () Bool)

(assert (=> b!5486558 (= res!2339727 call!404721)))

(declare-fun b!5486559 () Bool)

(declare-fun e!3395113 () Bool)

(assert (=> b!5486559 (= e!3395113 (not lt!2241021))))

(declare-fun b!5486560 () Bool)

(declare-fun res!2339728 () Bool)

(assert (=> b!5486560 (=> res!2339728 e!3395118)))

(assert (=> b!5486560 (= res!2339728 (not (is-ElementMatch!15410 lt!2240965)))))

(assert (=> b!5486560 (= e!3395113 e!3395118)))

(declare-fun b!5486561 () Bool)

(declare-fun res!2339729 () Bool)

(assert (=> b!5486561 (=> res!2339729 e!3395115)))

(assert (=> b!5486561 (= res!2339729 (not (isEmpty!34298 (tail!10844 s!2326))))))

(declare-fun b!5486562 () Bool)

(declare-fun res!2339730 () Bool)

(assert (=> b!5486562 (=> (not res!2339730) (not e!3395116))))

(assert (=> b!5486562 (= res!2339730 (not call!404721))))

(declare-fun b!5486563 () Bool)

(declare-fun e!3395112 () Bool)

(assert (=> b!5486563 (= e!3395112 (nullable!5495 lt!2240965))))

(declare-fun b!5486565 () Bool)

(assert (=> b!5486565 (= e!3395112 (matchR!7595 (derivativeStep!4336 lt!2240965 (head!11747 s!2326)) (tail!10844 s!2326)))))

(declare-fun b!5486566 () Bool)

(assert (=> b!5486566 (= e!3395118 e!3395114)))

(declare-fun res!2339731 () Bool)

(assert (=> b!5486566 (=> (not res!2339731) (not e!3395114))))

(assert (=> b!5486566 (= res!2339731 (not lt!2241021))))

(declare-fun b!5486567 () Bool)

(declare-fun e!3395117 () Bool)

(assert (=> b!5486567 (= e!3395117 (= lt!2241021 call!404721))))

(declare-fun b!5486568 () Bool)

(assert (=> b!5486568 (= e!3395115 (not (= (head!11747 s!2326) (c!958352 lt!2240965))))))

(declare-fun d!1741559 () Bool)

(assert (=> d!1741559 e!3395117))

(declare-fun c!958412 () Bool)

(assert (=> d!1741559 (= c!958412 (is-EmptyExpr!15410 lt!2240965))))

(assert (=> d!1741559 (= lt!2241021 e!3395112)))

(declare-fun c!958410 () Bool)

(assert (=> d!1741559 (= c!958410 (isEmpty!34298 s!2326))))

(assert (=> d!1741559 (validRegex!7146 lt!2240965)))

(assert (=> d!1741559 (= (matchR!7595 lt!2240965 s!2326) lt!2241021)))

(declare-fun b!5486564 () Bool)

(assert (=> b!5486564 (= e!3395117 e!3395113)))

(declare-fun c!958411 () Bool)

(assert (=> b!5486564 (= c!958411 (is-EmptyLang!15410 lt!2240965))))

(declare-fun b!5486569 () Bool)

(assert (=> b!5486569 (= e!3395116 (= (head!11747 s!2326) (c!958352 lt!2240965)))))

(declare-fun bm!404716 () Bool)

(assert (=> bm!404716 (= call!404721 (isEmpty!34298 s!2326))))

(assert (= (and d!1741559 c!958410) b!5486563))

(assert (= (and d!1741559 (not c!958410)) b!5486565))

(assert (= (and d!1741559 c!958412) b!5486567))

(assert (= (and d!1741559 (not c!958412)) b!5486564))

(assert (= (and b!5486564 c!958411) b!5486559))

(assert (= (and b!5486564 (not c!958411)) b!5486560))

(assert (= (and b!5486560 (not res!2339728)) b!5486557))

(assert (= (and b!5486557 res!2339733) b!5486562))

(assert (= (and b!5486562 res!2339730) b!5486556))

(assert (= (and b!5486556 res!2339732) b!5486569))

(assert (= (and b!5486557 (not res!2339726)) b!5486566))

(assert (= (and b!5486566 res!2339731) b!5486558))

(assert (= (and b!5486558 (not res!2339727)) b!5486561))

(assert (= (and b!5486561 (not res!2339729)) b!5486568))

(assert (= (or b!5486567 b!5486558 b!5486562) bm!404716))

(assert (=> b!5486565 m!6501206))

(assert (=> b!5486565 m!6501206))

(declare-fun m!6501280 () Bool)

(assert (=> b!5486565 m!6501280))

(assert (=> b!5486565 m!6501210))

(assert (=> b!5486565 m!6501280))

(assert (=> b!5486565 m!6501210))

(declare-fun m!6501282 () Bool)

(assert (=> b!5486565 m!6501282))

(declare-fun m!6501284 () Bool)

(assert (=> b!5486563 m!6501284))

(assert (=> b!5486561 m!6501210))

(assert (=> b!5486561 m!6501210))

(assert (=> b!5486561 m!6501216))

(assert (=> b!5486568 m!6501206))

(assert (=> bm!404716 m!6501200))

(assert (=> d!1741559 m!6501200))

(assert (=> d!1741559 m!6501118))

(assert (=> b!5486569 m!6501206))

(assert (=> b!5486556 m!6501210))

(assert (=> b!5486556 m!6501210))

(assert (=> b!5486556 m!6501216))

(assert (=> b!5486238 d!1741559))

(declare-fun b!5486589 () Bool)

(declare-fun e!3395123 () Bool)

(declare-fun tp!1507905 () Bool)

(declare-fun tp!1507908 () Bool)

(assert (=> b!5486589 (= e!3395123 (and tp!1507905 tp!1507908))))

(declare-fun b!5486588 () Bool)

(declare-fun tp!1507904 () Bool)

(assert (=> b!5486588 (= e!3395123 tp!1507904)))

(declare-fun b!5486587 () Bool)

(declare-fun tp!1507907 () Bool)

(declare-fun tp!1507906 () Bool)

(assert (=> b!5486587 (= e!3395123 (and tp!1507907 tp!1507906))))

(assert (=> b!5486243 (= tp!1507850 e!3395123)))

(declare-fun b!5486586 () Bool)

(assert (=> b!5486586 (= e!3395123 tp_is_empty!40073)))

(assert (= (and b!5486243 (is-ElementMatch!15410 (reg!15739 r!7292))) b!5486586))

(assert (= (and b!5486243 (is-Concat!24255 (reg!15739 r!7292))) b!5486587))

(assert (= (and b!5486243 (is-Star!15410 (reg!15739 r!7292))) b!5486588))

(assert (= (and b!5486243 (is-Union!15410 (reg!15739 r!7292))) b!5486589))

(declare-fun b!5486602 () Bool)

(declare-fun e!3395132 () Bool)

(declare-fun tp!1507913 () Bool)

(declare-fun tp!1507914 () Bool)

(assert (=> b!5486602 (= e!3395132 (and tp!1507913 tp!1507914))))

(assert (=> b!5486248 (= tp!1507858 e!3395132)))

(assert (= (and b!5486248 (is-Cons!62405 (exprs!5294 cc!1))) b!5486602))

(declare-fun b!5486615 () Bool)

(declare-fun e!3395137 () Bool)

(declare-fun tp!1507917 () Bool)

(assert (=> b!5486615 (= e!3395137 (and tp_is_empty!40073 tp!1507917))))

(assert (=> b!5486239 (= tp!1507856 e!3395137)))

(assert (= (and b!5486239 (is-Cons!62407 (t!375762 s!2326))) b!5486615))

(declare-fun condSetEmpty!36192 () Bool)

(assert (=> setNonEmpty!36186 (= condSetEmpty!36192 (= setRest!36186 (as set.empty (Set Context!9588))))))

(declare-fun setRes!36192 () Bool)

(assert (=> setNonEmpty!36186 (= tp!1507851 setRes!36192)))

(declare-fun setIsEmpty!36192 () Bool)

(assert (=> setIsEmpty!36192 setRes!36192))

(declare-fun setNonEmpty!36192 () Bool)

(declare-fun tp!1507922 () Bool)

(declare-fun e!3395144 () Bool)

(declare-fun setElem!36192 () Context!9588)

(assert (=> setNonEmpty!36192 (= setRes!36192 (and tp!1507922 (inv!81773 setElem!36192) e!3395144))))

(declare-fun setRest!36192 () (Set Context!9588))

(assert (=> setNonEmpty!36192 (= setRest!36186 (set.union (set.insert setElem!36192 (as set.empty (Set Context!9588))) setRest!36192))))

(declare-fun b!5486626 () Bool)

(declare-fun tp!1507923 () Bool)

(assert (=> b!5486626 (= e!3395144 tp!1507923)))

(assert (= (and setNonEmpty!36186 condSetEmpty!36192) setIsEmpty!36192))

(assert (= (and setNonEmpty!36186 (not condSetEmpty!36192)) setNonEmpty!36192))

(assert (= setNonEmpty!36192 b!5486626))

(declare-fun m!6501286 () Bool)

(assert (=> setNonEmpty!36192 m!6501286))

(declare-fun b!5486630 () Bool)

(declare-fun e!3395145 () Bool)

(declare-fun tp!1507925 () Bool)

(declare-fun tp!1507928 () Bool)

(assert (=> b!5486630 (= e!3395145 (and tp!1507925 tp!1507928))))

(declare-fun b!5486629 () Bool)

(declare-fun tp!1507924 () Bool)

(assert (=> b!5486629 (= e!3395145 tp!1507924)))

(declare-fun b!5486628 () Bool)

(declare-fun tp!1507927 () Bool)

(declare-fun tp!1507926 () Bool)

(assert (=> b!5486628 (= e!3395145 (and tp!1507927 tp!1507926))))

(assert (=> b!5486244 (= tp!1507855 e!3395145)))

(declare-fun b!5486627 () Bool)

(assert (=> b!5486627 (= e!3395145 tp_is_empty!40073)))

(assert (= (and b!5486244 (is-ElementMatch!15410 (regOne!31332 r!7292))) b!5486627))

(assert (= (and b!5486244 (is-Concat!24255 (regOne!31332 r!7292))) b!5486628))

(assert (= (and b!5486244 (is-Star!15410 (regOne!31332 r!7292))) b!5486629))

(assert (= (and b!5486244 (is-Union!15410 (regOne!31332 r!7292))) b!5486630))

(declare-fun b!5486634 () Bool)

(declare-fun e!3395146 () Bool)

(declare-fun tp!1507930 () Bool)

(declare-fun tp!1507933 () Bool)

(assert (=> b!5486634 (= e!3395146 (and tp!1507930 tp!1507933))))

(declare-fun b!5486633 () Bool)

(declare-fun tp!1507929 () Bool)

(assert (=> b!5486633 (= e!3395146 tp!1507929)))

(declare-fun b!5486632 () Bool)

(declare-fun tp!1507932 () Bool)

(declare-fun tp!1507931 () Bool)

(assert (=> b!5486632 (= e!3395146 (and tp!1507932 tp!1507931))))

(assert (=> b!5486244 (= tp!1507852 e!3395146)))

(declare-fun b!5486631 () Bool)

(assert (=> b!5486631 (= e!3395146 tp_is_empty!40073)))

(assert (= (and b!5486244 (is-ElementMatch!15410 (regTwo!31332 r!7292))) b!5486631))

(assert (= (and b!5486244 (is-Concat!24255 (regTwo!31332 r!7292))) b!5486632))

(assert (= (and b!5486244 (is-Star!15410 (regTwo!31332 r!7292))) b!5486633))

(assert (= (and b!5486244 (is-Union!15410 (regTwo!31332 r!7292))) b!5486634))

(declare-fun b!5486642 () Bool)

(declare-fun e!3395152 () Bool)

(declare-fun tp!1507938 () Bool)

(assert (=> b!5486642 (= e!3395152 tp!1507938)))

(declare-fun e!3395151 () Bool)

(declare-fun b!5486641 () Bool)

(declare-fun tp!1507939 () Bool)

(assert (=> b!5486641 (= e!3395151 (and (inv!81773 (h!68854 (t!375761 zl!343))) e!3395152 tp!1507939))))

(assert (=> b!5486236 (= tp!1507857 e!3395151)))

(assert (= b!5486641 b!5486642))

(assert (= (and b!5486236 (is-Cons!62406 (t!375761 zl!343))) b!5486641))

(declare-fun m!6501288 () Bool)

(assert (=> b!5486641 m!6501288))

(declare-fun b!5486643 () Bool)

(declare-fun e!3395153 () Bool)

(declare-fun tp!1507940 () Bool)

(declare-fun tp!1507941 () Bool)

(assert (=> b!5486643 (= e!3395153 (and tp!1507940 tp!1507941))))

(assert (=> b!5486241 (= tp!1507859 e!3395153)))

(assert (= (and b!5486241 (is-Cons!62405 (exprs!5294 setElem!36186))) b!5486643))

(declare-fun b!5486647 () Bool)

(declare-fun e!3395154 () Bool)

(declare-fun tp!1507943 () Bool)

(declare-fun tp!1507946 () Bool)

(assert (=> b!5486647 (= e!3395154 (and tp!1507943 tp!1507946))))

(declare-fun b!5486646 () Bool)

(declare-fun tp!1507942 () Bool)

(assert (=> b!5486646 (= e!3395154 tp!1507942)))

(declare-fun b!5486645 () Bool)

(declare-fun tp!1507945 () Bool)

(declare-fun tp!1507944 () Bool)

(assert (=> b!5486645 (= e!3395154 (and tp!1507945 tp!1507944))))

(assert (=> b!5486245 (= tp!1507853 e!3395154)))

(declare-fun b!5486644 () Bool)

(assert (=> b!5486644 (= e!3395154 tp_is_empty!40073)))

(assert (= (and b!5486245 (is-ElementMatch!15410 (regOne!31333 r!7292))) b!5486644))

(assert (= (and b!5486245 (is-Concat!24255 (regOne!31333 r!7292))) b!5486645))

(assert (= (and b!5486245 (is-Star!15410 (regOne!31333 r!7292))) b!5486646))

(assert (= (and b!5486245 (is-Union!15410 (regOne!31333 r!7292))) b!5486647))

(declare-fun b!5486651 () Bool)

(declare-fun e!3395155 () Bool)

(declare-fun tp!1507948 () Bool)

(declare-fun tp!1507951 () Bool)

(assert (=> b!5486651 (= e!3395155 (and tp!1507948 tp!1507951))))

(declare-fun b!5486650 () Bool)

(declare-fun tp!1507947 () Bool)

(assert (=> b!5486650 (= e!3395155 tp!1507947)))

(declare-fun b!5486649 () Bool)

(declare-fun tp!1507950 () Bool)

(declare-fun tp!1507949 () Bool)

(assert (=> b!5486649 (= e!3395155 (and tp!1507950 tp!1507949))))

(assert (=> b!5486245 (= tp!1507860 e!3395155)))

(declare-fun b!5486648 () Bool)

(assert (=> b!5486648 (= e!3395155 tp_is_empty!40073)))

(assert (= (and b!5486245 (is-ElementMatch!15410 (regTwo!31333 r!7292))) b!5486648))

(assert (= (and b!5486245 (is-Concat!24255 (regTwo!31333 r!7292))) b!5486649))

(assert (= (and b!5486245 (is-Star!15410 (regTwo!31333 r!7292))) b!5486650))

(assert (= (and b!5486245 (is-Union!15410 (regTwo!31333 r!7292))) b!5486651))

(declare-fun b!5486652 () Bool)

(declare-fun e!3395156 () Bool)

(declare-fun tp!1507952 () Bool)

(declare-fun tp!1507953 () Bool)

(assert (=> b!5486652 (= e!3395156 (and tp!1507952 tp!1507953))))

(assert (=> b!5486246 (= tp!1507854 e!3395156)))

(assert (= (and b!5486246 (is-Cons!62405 (exprs!5294 (h!68854 zl!343)))) b!5486652))

(declare-fun b_lambda!208347 () Bool)

(assert (= b_lambda!208343 (or b!5486234 b_lambda!208347)))

(declare-fun bs!1266997 () Bool)

(declare-fun d!1741561 () Bool)

(assert (= bs!1266997 (and d!1741561 b!5486234)))

(declare-fun res!2339750 () Bool)

(declare-fun e!3395157 () Bool)

(assert (=> bs!1266997 (=> (not res!2339750) (not e!3395157))))

(assert (=> bs!1266997 (= res!2339750 (validRegex!7146 (h!68853 lt!2240967)))))

(assert (=> bs!1266997 (= (dynLambda!24447 lambda!293290 (h!68853 lt!2240967)) e!3395157)))

(declare-fun b!5486653 () Bool)

(assert (=> b!5486653 (= e!3395157 (matchR!7595 (h!68853 lt!2240967) s!2326))))

(assert (= (and bs!1266997 res!2339750) b!5486653))

(declare-fun m!6501290 () Bool)

(assert (=> bs!1266997 m!6501290))

(declare-fun m!6501292 () Bool)

(assert (=> b!5486653 m!6501292))

(assert (=> b!5486541 d!1741561))

(declare-fun b_lambda!208349 () Bool)

(assert (= b_lambda!208341 (or b!5486233 b_lambda!208349)))

(declare-fun bs!1266998 () Bool)

(declare-fun d!1741563 () Bool)

(assert (= bs!1266998 (and d!1741563 b!5486233)))

(assert (=> bs!1266998 (= (dynLambda!24447 lambda!293292 (h!68853 (exprs!5294 cc!1))) (validRegex!7146 (h!68853 (exprs!5294 cc!1))))))

(declare-fun m!6501294 () Bool)

(assert (=> bs!1266998 m!6501294))

(assert (=> b!5486492 d!1741563))

(declare-fun b_lambda!208351 () Bool)

(assert (= b_lambda!208345 (or b!5486234 b_lambda!208351)))

(declare-fun bs!1266999 () Bool)

(declare-fun d!1741565 () Bool)

(assert (= bs!1266999 (and d!1741565 b!5486234)))

(declare-fun res!2339751 () Bool)

(declare-fun e!3395158 () Bool)

(assert (=> bs!1266999 (=> (not res!2339751) (not e!3395158))))

(assert (=> bs!1266999 (= res!2339751 (validRegex!7146 lt!2241019))))

(assert (=> bs!1266999 (= (dynLambda!24447 lambda!293290 lt!2241019) e!3395158)))

(declare-fun b!5486654 () Bool)

(assert (=> b!5486654 (= e!3395158 (matchR!7595 lt!2241019 s!2326))))

(assert (= (and bs!1266999 res!2339751) b!5486654))

(declare-fun m!6501296 () Bool)

(assert (=> bs!1266999 m!6501296))

(declare-fun m!6501298 () Bool)

(assert (=> b!5486654 m!6501298))

(assert (=> d!1741547 d!1741565))

(push 1)

(assert (not bm!404702))

(assert (not d!1741533))

(assert (not setNonEmpty!36192))

(assert (not d!1741531))

(assert (not b!5486475))

(assert (not d!1741545))

(assert (not bs!1266999))

(assert (not b!5486556))

(assert (not b!5486568))

(assert (not b!5486565))

(assert (not b!5486653))

(assert (not d!1741559))

(assert (not bm!404703))

(assert (not d!1741547))

(assert (not b!5486630))

(assert (not bm!404695))

(assert (not bm!404714))

(assert (not b!5486561))

(assert (not b!5486642))

(assert (not b!5486481))

(assert (not d!1741537))

(assert (not d!1741553))

(assert (not b!5486563))

(assert (not b!5486645))

(assert (not b!5486649))

(assert (not b!5486477))

(assert (not b!5486646))

(assert (not b!5486473))

(assert (not d!1741541))

(assert (not d!1741523))

(assert (not b!5486480))

(assert (not b!5486411))

(assert (not b!5486629))

(assert (not b!5486634))

(assert (not b_lambda!208349))

(assert (not b!5486588))

(assert (not b!5486543))

(assert (not b!5486650))

(assert (not b!5486647))

(assert (not d!1741509))

(assert (not b!5486652))

(assert (not b!5486602))

(assert (not bs!1266998))

(assert (not b!5486589))

(assert (not b!5486468))

(assert (not b!5486587))

(assert (not b!5486654))

(assert (not b!5486651))

(assert (not bm!404696))

(assert (not b!5486551))

(assert tp_is_empty!40073)

(assert (not b!5486546))

(assert (not b!5486412))

(assert (not b!5486615))

(assert (not bm!404706))

(assert (not b!5486632))

(assert (not bm!404713))

(assert (not d!1741539))

(assert (not b!5486493))

(assert (not bm!404716))

(assert (not d!1741557))

(assert (not b!5486360))

(assert (not b!5486628))

(assert (not d!1741551))

(assert (not b_lambda!208351))

(assert (not b!5486643))

(assert (not bs!1266997))

(assert (not b!5486517))

(assert (not b!5486626))

(assert (not b!5486569))

(assert (not b_lambda!208347))

(assert (not d!1741519))

(assert (not b!5486633))

(assert (not b!5486542))

(assert (not b!5486333))

(assert (not d!1741543))

(assert (not b!5486528))

(assert (not b!5486641))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

