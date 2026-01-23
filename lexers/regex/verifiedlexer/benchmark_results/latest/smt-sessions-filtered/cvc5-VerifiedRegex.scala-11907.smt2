; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667616 () Bool)

(assert start!667616)

(declare-fun b!6957274 () Bool)

(assert (=> b!6957274 true))

(assert (=> b!6957274 true))

(declare-fun bs!1858148 () Bool)

(declare-fun b!6957272 () Bool)

(assert (= bs!1858148 (and b!6957272 b!6957274)))

(declare-fun lambda!396894 () Int)

(declare-fun lambda!396893 () Int)

(assert (=> bs!1858148 (not (= lambda!396894 lambda!396893))))

(assert (=> b!6957272 true))

(assert (=> b!6957272 true))

(declare-fun b!6957268 () Bool)

(declare-fun res!2838848 () Bool)

(declare-fun e!4183462 () Bool)

(assert (=> b!6957268 (=> (not res!2838848) (not e!4183462))))

(declare-fun Exists!4056 (Int) Bool)

(assert (=> b!6957268 (= res!2838848 (not (Exists!4056 lambda!396893)))))

(declare-fun b!6957269 () Bool)

(declare-fun e!4183461 () Bool)

(declare-fun tp!1917907 () Bool)

(declare-fun tp!1917909 () Bool)

(assert (=> b!6957269 (= e!4183461 (and tp!1917907 tp!1917909))))

(declare-fun b!6957270 () Bool)

(declare-fun e!4183463 () Bool)

(declare-fun tp_is_empty!43345 () Bool)

(declare-fun tp!1917906 () Bool)

(assert (=> b!6957270 (= e!4183463 (and tp_is_empty!43345 tp!1917906))))

(declare-fun b!6957271 () Bool)

(declare-fun tp!1917911 () Bool)

(assert (=> b!6957271 (= e!4183461 tp!1917911)))

(declare-fun res!2838851 () Bool)

(assert (=> b!6957272 (=> (not res!2838851) (not e!4183462))))

(assert (=> b!6957272 (= res!2838851 (Exists!4056 lambda!396894))))

(declare-fun res!2838847 () Bool)

(assert (=> start!667616 (=> (not res!2838847) (not e!4183462))))

(declare-datatypes ((C!34390 0))(
  ( (C!34391 (val!26897 Int)) )
))
(declare-datatypes ((Regex!17060 0))(
  ( (ElementMatch!17060 (c!1290160 C!34390)) (Concat!25905 (regOne!34632 Regex!17060) (regTwo!34632 Regex!17060)) (EmptyExpr!17060) (Star!17060 (reg!17389 Regex!17060)) (EmptyLang!17060) (Union!17060 (regOne!34633 Regex!17060) (regTwo!34633 Regex!17060)) )
))
(declare-fun rInner!765 () Regex!17060)

(declare-fun validRegex!8766 (Regex!17060) Bool)

(assert (=> start!667616 (= res!2838847 (validRegex!8766 rInner!765))))

(assert (=> start!667616 e!4183462))

(assert (=> start!667616 e!4183461))

(assert (=> start!667616 e!4183463))

(declare-fun b!6957273 () Bool)

(assert (=> b!6957273 (= e!4183462 (not (validRegex!8766 (Star!17060 rInner!765))))))

(declare-datatypes ((List!66813 0))(
  ( (Nil!66689) (Cons!66689 (h!73137 C!34390) (t!380556 List!66813)) )
))
(declare-datatypes ((tuple2!67822 0))(
  ( (tuple2!67823 (_1!37214 List!66813) (_2!37214 List!66813)) )
))
(declare-fun lt!2478623 () tuple2!67822)

(declare-fun matchR!9170 (Regex!17060 List!66813) Bool)

(declare-fun matchRSpec!4085 (Regex!17060 List!66813) Bool)

(assert (=> b!6957273 (= (matchR!9170 rInner!765 (_1!37214 lt!2478623)) (matchRSpec!4085 rInner!765 (_1!37214 lt!2478623)))))

(declare-datatypes ((Unit!160788 0))(
  ( (Unit!160789) )
))
(declare-fun lt!2478622 () Unit!160788)

(declare-fun mainMatchTheorem!4079 (Regex!17060 List!66813) Unit!160788)

(assert (=> b!6957273 (= lt!2478622 (mainMatchTheorem!4079 rInner!765 (_1!37214 lt!2478623)))))

(declare-fun pickWitness!383 (Int) tuple2!67822)

(assert (=> b!6957273 (= lt!2478623 (pickWitness!383 lambda!396894))))

(declare-fun res!2838849 () Bool)

(assert (=> b!6957274 (=> (not res!2838849) (not e!4183462))))

(assert (=> b!6957274 (= res!2838849 (not (Exists!4056 lambda!396893)))))

(declare-fun b!6957275 () Bool)

(assert (=> b!6957275 (= e!4183461 tp_is_empty!43345)))

(declare-fun b!6957276 () Bool)

(declare-fun tp!1917910 () Bool)

(declare-fun tp!1917908 () Bool)

(assert (=> b!6957276 (= e!4183461 (and tp!1917910 tp!1917908))))

(declare-fun b!6957277 () Bool)

(declare-fun res!2838850 () Bool)

(assert (=> b!6957277 (=> (not res!2838850) (not e!4183462))))

(declare-fun nullable!6873 (Regex!17060) Bool)

(assert (=> b!6957277 (= res!2838850 (not (nullable!6873 rInner!765)))))

(assert (= (and start!667616 res!2838847) b!6957277))

(assert (= (and b!6957277 res!2838850) b!6957274))

(assert (= (and b!6957274 res!2838849) b!6957268))

(assert (= (and b!6957268 res!2838848) b!6957272))

(assert (= (and b!6957272 res!2838851) b!6957273))

(assert (= (and start!667616 (is-ElementMatch!17060 rInner!765)) b!6957275))

(assert (= (and start!667616 (is-Concat!25905 rInner!765)) b!6957276))

(assert (= (and start!667616 (is-Star!17060 rInner!765)) b!6957271))

(assert (= (and start!667616 (is-Union!17060 rInner!765)) b!6957269))

(declare-fun s!10388 () List!66813)

(assert (= (and start!667616 (is-Cons!66689 s!10388)) b!6957270))

(declare-fun m!7654836 () Bool)

(assert (=> start!667616 m!7654836))

(declare-fun m!7654838 () Bool)

(assert (=> b!6957273 m!7654838))

(declare-fun m!7654840 () Bool)

(assert (=> b!6957273 m!7654840))

(declare-fun m!7654842 () Bool)

(assert (=> b!6957273 m!7654842))

(declare-fun m!7654844 () Bool)

(assert (=> b!6957273 m!7654844))

(declare-fun m!7654846 () Bool)

(assert (=> b!6957273 m!7654846))

(declare-fun m!7654848 () Bool)

(assert (=> b!6957274 m!7654848))

(declare-fun m!7654850 () Bool)

(assert (=> b!6957277 m!7654850))

(assert (=> b!6957268 m!7654848))

(declare-fun m!7654852 () Bool)

(assert (=> b!6957272 m!7654852))

(push 1)

(assert tp_is_empty!43345)

(assert (not b!6957277))

(assert (not b!6957269))

(assert (not b!6957271))

(assert (not b!6957272))

(assert (not b!6957276))

(assert (not start!667616))

(assert (not b!6957270))

(assert (not b!6957268))

(assert (not b!6957273))

(assert (not b!6957274))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2169702 () Bool)

(declare-fun nullableFct!2583 (Regex!17060) Bool)

(assert (=> d!2169702 (= (nullable!6873 rInner!765) (nullableFct!2583 rInner!765))))

(declare-fun bs!1858150 () Bool)

(assert (= bs!1858150 d!2169702))

(declare-fun m!7654872 () Bool)

(assert (=> bs!1858150 m!7654872))

(assert (=> b!6957277 d!2169702))

(declare-fun bm!631809 () Bool)

(declare-fun call!631815 () Bool)

(declare-fun call!631814 () Bool)

(assert (=> bm!631809 (= call!631815 call!631814)))

(declare-fun b!6957354 () Bool)

(declare-fun e!4183501 () Bool)

(declare-fun e!4183497 () Bool)

(assert (=> b!6957354 (= e!4183501 e!4183497)))

(declare-fun c!1290166 () Bool)

(assert (=> b!6957354 (= c!1290166 (is-Star!17060 rInner!765))))

(declare-fun bm!631810 () Bool)

(declare-fun c!1290167 () Bool)

(assert (=> bm!631810 (= call!631814 (validRegex!8766 (ite c!1290166 (reg!17389 rInner!765) (ite c!1290167 (regOne!34633 rInner!765) (regTwo!34632 rInner!765)))))))

(declare-fun b!6957355 () Bool)

(declare-fun res!2838900 () Bool)

(declare-fun e!4183495 () Bool)

(assert (=> b!6957355 (=> res!2838900 e!4183495)))

(assert (=> b!6957355 (= res!2838900 (not (is-Concat!25905 rInner!765)))))

(declare-fun e!4183499 () Bool)

(assert (=> b!6957355 (= e!4183499 e!4183495)))

(declare-fun d!2169704 () Bool)

(declare-fun res!2838899 () Bool)

(assert (=> d!2169704 (=> res!2838899 e!4183501)))

(assert (=> d!2169704 (= res!2838899 (is-ElementMatch!17060 rInner!765))))

(assert (=> d!2169704 (= (validRegex!8766 rInner!765) e!4183501)))

(declare-fun b!6957356 () Bool)

(declare-fun e!4183498 () Bool)

(assert (=> b!6957356 (= e!4183498 call!631814)))

(declare-fun b!6957357 () Bool)

(declare-fun e!4183500 () Bool)

(assert (=> b!6957357 (= e!4183495 e!4183500)))

(declare-fun res!2838897 () Bool)

(assert (=> b!6957357 (=> (not res!2838897) (not e!4183500))))

(declare-fun call!631816 () Bool)

(assert (=> b!6957357 (= res!2838897 call!631816)))

(declare-fun b!6957358 () Bool)

(assert (=> b!6957358 (= e!4183497 e!4183498)))

(declare-fun res!2838898 () Bool)

(assert (=> b!6957358 (= res!2838898 (not (nullable!6873 (reg!17389 rInner!765))))))

(assert (=> b!6957358 (=> (not res!2838898) (not e!4183498))))

(declare-fun b!6957359 () Bool)

(declare-fun e!4183496 () Bool)

(assert (=> b!6957359 (= e!4183496 call!631816)))

(declare-fun b!6957360 () Bool)

(assert (=> b!6957360 (= e!4183500 call!631815)))

(declare-fun b!6957361 () Bool)

(assert (=> b!6957361 (= e!4183497 e!4183499)))

(assert (=> b!6957361 (= c!1290167 (is-Union!17060 rInner!765))))

(declare-fun b!6957362 () Bool)

(declare-fun res!2838901 () Bool)

(assert (=> b!6957362 (=> (not res!2838901) (not e!4183496))))

(assert (=> b!6957362 (= res!2838901 call!631815)))

(assert (=> b!6957362 (= e!4183499 e!4183496)))

(declare-fun bm!631811 () Bool)

(assert (=> bm!631811 (= call!631816 (validRegex!8766 (ite c!1290167 (regTwo!34633 rInner!765) (regOne!34632 rInner!765))))))

(assert (= (and d!2169704 (not res!2838899)) b!6957354))

(assert (= (and b!6957354 c!1290166) b!6957358))

(assert (= (and b!6957354 (not c!1290166)) b!6957361))

(assert (= (and b!6957358 res!2838898) b!6957356))

(assert (= (and b!6957361 c!1290167) b!6957362))

(assert (= (and b!6957361 (not c!1290167)) b!6957355))

(assert (= (and b!6957362 res!2838901) b!6957359))

(assert (= (and b!6957355 (not res!2838900)) b!6957357))

(assert (= (and b!6957357 res!2838897) b!6957360))

(assert (= (or b!6957362 b!6957360) bm!631809))

(assert (= (or b!6957359 b!6957357) bm!631811))

(assert (= (or b!6957356 bm!631809) bm!631810))

(declare-fun m!7654876 () Bool)

(assert (=> bm!631810 m!7654876))

(declare-fun m!7654878 () Bool)

(assert (=> b!6957358 m!7654878))

(declare-fun m!7654880 () Bool)

(assert (=> bm!631811 m!7654880))

(assert (=> start!667616 d!2169704))

(declare-fun d!2169710 () Bool)

(declare-fun choose!51859 (Int) Bool)

(assert (=> d!2169710 (= (Exists!4056 lambda!396894) (choose!51859 lambda!396894))))

(declare-fun bs!1858152 () Bool)

(assert (= bs!1858152 d!2169710))

(declare-fun m!7654882 () Bool)

(assert (=> bs!1858152 m!7654882))

(assert (=> b!6957272 d!2169710))

(declare-fun d!2169712 () Bool)

(assert (=> d!2169712 (= (Exists!4056 lambda!396893) (choose!51859 lambda!396893))))

(declare-fun bs!1858153 () Bool)

(assert (= bs!1858153 d!2169712))

(declare-fun m!7654884 () Bool)

(assert (=> bs!1858153 m!7654884))

(assert (=> b!6957274 d!2169712))

(declare-fun bs!1858156 () Bool)

(declare-fun b!6957418 () Bool)

(assert (= bs!1858156 (and b!6957418 b!6957274)))

(declare-fun lambda!396909 () Int)

(assert (=> bs!1858156 (not (= lambda!396909 lambda!396893))))

(declare-fun bs!1858157 () Bool)

(assert (= bs!1858157 (and b!6957418 b!6957272)))

(assert (=> bs!1858157 (= (and (= (_1!37214 lt!2478623) s!10388) (= (reg!17389 rInner!765) rInner!765) (= rInner!765 (Star!17060 rInner!765))) (= lambda!396909 lambda!396894))))

(assert (=> b!6957418 true))

(assert (=> b!6957418 true))

(declare-fun bs!1858158 () Bool)

(declare-fun b!6957414 () Bool)

(assert (= bs!1858158 (and b!6957414 b!6957274)))

(declare-fun lambda!396910 () Int)

(assert (=> bs!1858158 (not (= lambda!396910 lambda!396893))))

(declare-fun bs!1858159 () Bool)

(assert (= bs!1858159 (and b!6957414 b!6957272)))

(assert (=> bs!1858159 (not (= lambda!396910 lambda!396894))))

(declare-fun bs!1858160 () Bool)

(assert (= bs!1858160 (and b!6957414 b!6957418)))

(assert (=> bs!1858160 (not (= lambda!396910 lambda!396909))))

(assert (=> b!6957414 true))

(assert (=> b!6957414 true))

(declare-fun b!6957413 () Bool)

(declare-fun e!4183540 () Bool)

(assert (=> b!6957413 (= e!4183540 (= (_1!37214 lt!2478623) (Cons!66689 (c!1290160 rInner!765) Nil!66689)))))

(declare-fun bm!631822 () Bool)

(declare-fun c!1290183 () Bool)

(declare-fun call!631828 () Bool)

(assert (=> bm!631822 (= call!631828 (Exists!4056 (ite c!1290183 lambda!396909 lambda!396910)))))

(declare-fun e!4183538 () Bool)

(assert (=> b!6957414 (= e!4183538 call!631828)))

(declare-fun b!6957415 () Bool)

(declare-fun res!2838929 () Bool)

(declare-fun e!4183537 () Bool)

(assert (=> b!6957415 (=> res!2838929 e!4183537)))

(declare-fun call!631827 () Bool)

(assert (=> b!6957415 (= res!2838929 call!631827)))

(assert (=> b!6957415 (= e!4183538 e!4183537)))

(declare-fun bm!631823 () Bool)

(declare-fun isEmpty!38925 (List!66813) Bool)

(assert (=> bm!631823 (= call!631827 (isEmpty!38925 (_1!37214 lt!2478623)))))

(declare-fun b!6957416 () Bool)

(declare-fun e!4183535 () Bool)

(assert (=> b!6957416 (= e!4183535 call!631827)))

(declare-fun d!2169714 () Bool)

(declare-fun c!1290180 () Bool)

(assert (=> d!2169714 (= c!1290180 (is-EmptyExpr!17060 rInner!765))))

(assert (=> d!2169714 (= (matchRSpec!4085 rInner!765 (_1!37214 lt!2478623)) e!4183535)))

(declare-fun b!6957417 () Bool)

(declare-fun c!1290181 () Bool)

(assert (=> b!6957417 (= c!1290181 (is-ElementMatch!17060 rInner!765))))

(declare-fun e!4183539 () Bool)

(assert (=> b!6957417 (= e!4183539 e!4183540)))

(assert (=> b!6957418 (= e!4183537 call!631828)))

(declare-fun b!6957419 () Bool)

(declare-fun c!1290182 () Bool)

(assert (=> b!6957419 (= c!1290182 (is-Union!17060 rInner!765))))

(declare-fun e!4183534 () Bool)

(assert (=> b!6957419 (= e!4183540 e!4183534)))

(declare-fun b!6957420 () Bool)

(assert (=> b!6957420 (= e!4183535 e!4183539)))

(declare-fun res!2838928 () Bool)

(assert (=> b!6957420 (= res!2838928 (not (is-EmptyLang!17060 rInner!765)))))

(assert (=> b!6957420 (=> (not res!2838928) (not e!4183539))))

(declare-fun b!6957421 () Bool)

(assert (=> b!6957421 (= e!4183534 e!4183538)))

(assert (=> b!6957421 (= c!1290183 (is-Star!17060 rInner!765))))

(declare-fun b!6957422 () Bool)

(declare-fun e!4183536 () Bool)

(assert (=> b!6957422 (= e!4183536 (matchRSpec!4085 (regTwo!34633 rInner!765) (_1!37214 lt!2478623)))))

(declare-fun b!6957423 () Bool)

(assert (=> b!6957423 (= e!4183534 e!4183536)))

(declare-fun res!2838930 () Bool)

(assert (=> b!6957423 (= res!2838930 (matchRSpec!4085 (regOne!34633 rInner!765) (_1!37214 lt!2478623)))))

(assert (=> b!6957423 (=> res!2838930 e!4183536)))

(assert (= (and d!2169714 c!1290180) b!6957416))

(assert (= (and d!2169714 (not c!1290180)) b!6957420))

(assert (= (and b!6957420 res!2838928) b!6957417))

(assert (= (and b!6957417 c!1290181) b!6957413))

(assert (= (and b!6957417 (not c!1290181)) b!6957419))

(assert (= (and b!6957419 c!1290182) b!6957423))

(assert (= (and b!6957419 (not c!1290182)) b!6957421))

(assert (= (and b!6957423 (not res!2838930)) b!6957422))

(assert (= (and b!6957421 c!1290183) b!6957415))

(assert (= (and b!6957421 (not c!1290183)) b!6957414))

(assert (= (and b!6957415 (not res!2838929)) b!6957418))

(assert (= (or b!6957418 b!6957414) bm!631822))

(assert (= (or b!6957416 b!6957415) bm!631823))

(declare-fun m!7654896 () Bool)

(assert (=> bm!631822 m!7654896))

(declare-fun m!7654898 () Bool)

(assert (=> bm!631823 m!7654898))

(declare-fun m!7654900 () Bool)

(assert (=> b!6957422 m!7654900))

(declare-fun m!7654902 () Bool)

(assert (=> b!6957423 m!7654902))

(assert (=> b!6957273 d!2169714))

(declare-fun bm!631827 () Bool)

(declare-fun call!631833 () Bool)

(declare-fun call!631832 () Bool)

(assert (=> bm!631827 (= call!631833 call!631832)))

(declare-fun b!6957433 () Bool)

(declare-fun e!4183554 () Bool)

(declare-fun e!4183550 () Bool)

(assert (=> b!6957433 (= e!4183554 e!4183550)))

(declare-fun c!1290186 () Bool)

(assert (=> b!6957433 (= c!1290186 (is-Star!17060 (Star!17060 rInner!765)))))

(declare-fun c!1290187 () Bool)

(declare-fun bm!631828 () Bool)

(assert (=> bm!631828 (= call!631832 (validRegex!8766 (ite c!1290186 (reg!17389 (Star!17060 rInner!765)) (ite c!1290187 (regOne!34633 (Star!17060 rInner!765)) (regTwo!34632 (Star!17060 rInner!765))))))))

(declare-fun b!6957434 () Bool)

(declare-fun res!2838939 () Bool)

(declare-fun e!4183548 () Bool)

(assert (=> b!6957434 (=> res!2838939 e!4183548)))

(assert (=> b!6957434 (= res!2838939 (not (is-Concat!25905 (Star!17060 rInner!765))))))

(declare-fun e!4183552 () Bool)

(assert (=> b!6957434 (= e!4183552 e!4183548)))

(declare-fun d!2169722 () Bool)

(declare-fun res!2838938 () Bool)

(assert (=> d!2169722 (=> res!2838938 e!4183554)))

(assert (=> d!2169722 (= res!2838938 (is-ElementMatch!17060 (Star!17060 rInner!765)))))

(assert (=> d!2169722 (= (validRegex!8766 (Star!17060 rInner!765)) e!4183554)))

(declare-fun b!6957435 () Bool)

(declare-fun e!4183551 () Bool)

(assert (=> b!6957435 (= e!4183551 call!631832)))

(declare-fun b!6957436 () Bool)

(declare-fun e!4183553 () Bool)

(assert (=> b!6957436 (= e!4183548 e!4183553)))

(declare-fun res!2838936 () Bool)

(assert (=> b!6957436 (=> (not res!2838936) (not e!4183553))))

(declare-fun call!631834 () Bool)

(assert (=> b!6957436 (= res!2838936 call!631834)))

(declare-fun b!6957437 () Bool)

(assert (=> b!6957437 (= e!4183550 e!4183551)))

(declare-fun res!2838937 () Bool)

(assert (=> b!6957437 (= res!2838937 (not (nullable!6873 (reg!17389 (Star!17060 rInner!765)))))))

(assert (=> b!6957437 (=> (not res!2838937) (not e!4183551))))

(declare-fun b!6957438 () Bool)

(declare-fun e!4183549 () Bool)

(assert (=> b!6957438 (= e!4183549 call!631834)))

(declare-fun b!6957439 () Bool)

(assert (=> b!6957439 (= e!4183553 call!631833)))

(declare-fun b!6957440 () Bool)

(assert (=> b!6957440 (= e!4183550 e!4183552)))

(assert (=> b!6957440 (= c!1290187 (is-Union!17060 (Star!17060 rInner!765)))))

(declare-fun b!6957441 () Bool)

(declare-fun res!2838940 () Bool)

(assert (=> b!6957441 (=> (not res!2838940) (not e!4183549))))

(assert (=> b!6957441 (= res!2838940 call!631833)))

(assert (=> b!6957441 (= e!4183552 e!4183549)))

(declare-fun bm!631829 () Bool)

(assert (=> bm!631829 (= call!631834 (validRegex!8766 (ite c!1290187 (regTwo!34633 (Star!17060 rInner!765)) (regOne!34632 (Star!17060 rInner!765)))))))

(assert (= (and d!2169722 (not res!2838938)) b!6957433))

(assert (= (and b!6957433 c!1290186) b!6957437))

(assert (= (and b!6957433 (not c!1290186)) b!6957440))

(assert (= (and b!6957437 res!2838937) b!6957435))

(assert (= (and b!6957440 c!1290187) b!6957441))

(assert (= (and b!6957440 (not c!1290187)) b!6957434))

(assert (= (and b!6957441 res!2838940) b!6957438))

(assert (= (and b!6957434 (not res!2838939)) b!6957436))

(assert (= (and b!6957436 res!2838936) b!6957439))

(assert (= (or b!6957441 b!6957439) bm!631827))

(assert (= (or b!6957438 b!6957436) bm!631829))

(assert (= (or b!6957435 bm!631827) bm!631828))

(declare-fun m!7654904 () Bool)

(assert (=> bm!631828 m!7654904))

(declare-fun m!7654906 () Bool)

(assert (=> b!6957437 m!7654906))

(declare-fun m!7654908 () Bool)

(assert (=> bm!631829 m!7654908))

(assert (=> b!6957273 d!2169722))

(declare-fun d!2169724 () Bool)

(assert (=> d!2169724 (= (matchR!9170 rInner!765 (_1!37214 lt!2478623)) (matchRSpec!4085 rInner!765 (_1!37214 lt!2478623)))))

(declare-fun lt!2478632 () Unit!160788)

(declare-fun choose!51860 (Regex!17060 List!66813) Unit!160788)

(assert (=> d!2169724 (= lt!2478632 (choose!51860 rInner!765 (_1!37214 lt!2478623)))))

(assert (=> d!2169724 (validRegex!8766 rInner!765)))

(assert (=> d!2169724 (= (mainMatchTheorem!4079 rInner!765 (_1!37214 lt!2478623)) lt!2478632)))

(declare-fun bs!1858161 () Bool)

(assert (= bs!1858161 d!2169724))

(assert (=> bs!1858161 m!7654842))

(assert (=> bs!1858161 m!7654846))

(declare-fun m!7654910 () Bool)

(assert (=> bs!1858161 m!7654910))

(assert (=> bs!1858161 m!7654836))

(assert (=> b!6957273 d!2169724))

(declare-fun b!6957470 () Bool)

(declare-fun e!4183570 () Bool)

(declare-fun head!13954 (List!66813) C!34390)

(assert (=> b!6957470 (= e!4183570 (= (head!13954 (_1!37214 lt!2478623)) (c!1290160 rInner!765)))))

(declare-fun b!6957471 () Bool)

(declare-fun e!4183573 () Bool)

(declare-fun lt!2478638 () Bool)

(declare-fun call!631837 () Bool)

(assert (=> b!6957471 (= e!4183573 (= lt!2478638 call!631837))))

(declare-fun b!6957472 () Bool)

(declare-fun e!4183575 () Bool)

(assert (=> b!6957472 (= e!4183575 (not lt!2478638))))

(declare-fun b!6957473 () Bool)

(declare-fun res!2838960 () Bool)

(assert (=> b!6957473 (=> (not res!2838960) (not e!4183570))))

(declare-fun tail!13006 (List!66813) List!66813)

(assert (=> b!6957473 (= res!2838960 (isEmpty!38925 (tail!13006 (_1!37214 lt!2478623))))))

(declare-fun b!6957474 () Bool)

(declare-fun e!4183569 () Bool)

(declare-fun e!4183571 () Bool)

(assert (=> b!6957474 (= e!4183569 e!4183571)))

(declare-fun res!2838961 () Bool)

(assert (=> b!6957474 (=> res!2838961 e!4183571)))

(assert (=> b!6957474 (= res!2838961 call!631837)))

(declare-fun b!6957475 () Bool)

(declare-fun res!2838962 () Bool)

(assert (=> b!6957475 (=> res!2838962 e!4183571)))

(assert (=> b!6957475 (= res!2838962 (not (isEmpty!38925 (tail!13006 (_1!37214 lt!2478623)))))))

(declare-fun d!2169726 () Bool)

(assert (=> d!2169726 e!4183573))

(declare-fun c!1290195 () Bool)

(assert (=> d!2169726 (= c!1290195 (is-EmptyExpr!17060 rInner!765))))

(declare-fun e!4183572 () Bool)

(assert (=> d!2169726 (= lt!2478638 e!4183572)))

(declare-fun c!1290194 () Bool)

(assert (=> d!2169726 (= c!1290194 (isEmpty!38925 (_1!37214 lt!2478623)))))

(assert (=> d!2169726 (validRegex!8766 rInner!765)))

(assert (=> d!2169726 (= (matchR!9170 rInner!765 (_1!37214 lt!2478623)) lt!2478638)))

(declare-fun b!6957476 () Bool)

(declare-fun res!2838959 () Bool)

(assert (=> b!6957476 (=> (not res!2838959) (not e!4183570))))

(assert (=> b!6957476 (= res!2838959 (not call!631837))))

(declare-fun b!6957477 () Bool)

(assert (=> b!6957477 (= e!4183571 (not (= (head!13954 (_1!37214 lt!2478623)) (c!1290160 rInner!765))))))

(declare-fun b!6957478 () Bool)

(declare-fun derivativeStep!5501 (Regex!17060 C!34390) Regex!17060)

(assert (=> b!6957478 (= e!4183572 (matchR!9170 (derivativeStep!5501 rInner!765 (head!13954 (_1!37214 lt!2478623))) (tail!13006 (_1!37214 lt!2478623))))))

(declare-fun b!6957479 () Bool)

(declare-fun e!4183574 () Bool)

(assert (=> b!6957479 (= e!4183574 e!4183569)))

(declare-fun res!2838958 () Bool)

(assert (=> b!6957479 (=> (not res!2838958) (not e!4183569))))

(assert (=> b!6957479 (= res!2838958 (not lt!2478638))))

(declare-fun b!6957480 () Bool)

(declare-fun res!2838957 () Bool)

(assert (=> b!6957480 (=> res!2838957 e!4183574)))

(assert (=> b!6957480 (= res!2838957 (not (is-ElementMatch!17060 rInner!765)))))

(assert (=> b!6957480 (= e!4183575 e!4183574)))

(declare-fun b!6957481 () Bool)

(declare-fun res!2838963 () Bool)

(assert (=> b!6957481 (=> res!2838963 e!4183574)))

(assert (=> b!6957481 (= res!2838963 e!4183570)))

(declare-fun res!2838964 () Bool)

(assert (=> b!6957481 (=> (not res!2838964) (not e!4183570))))

(assert (=> b!6957481 (= res!2838964 lt!2478638)))

(declare-fun b!6957482 () Bool)

(assert (=> b!6957482 (= e!4183572 (nullable!6873 rInner!765))))

(declare-fun b!6957483 () Bool)

(assert (=> b!6957483 (= e!4183573 e!4183575)))

(declare-fun c!1290196 () Bool)

(assert (=> b!6957483 (= c!1290196 (is-EmptyLang!17060 rInner!765))))

(declare-fun bm!631832 () Bool)

(assert (=> bm!631832 (= call!631837 (isEmpty!38925 (_1!37214 lt!2478623)))))

(assert (= (and d!2169726 c!1290194) b!6957482))

(assert (= (and d!2169726 (not c!1290194)) b!6957478))

(assert (= (and d!2169726 c!1290195) b!6957471))

(assert (= (and d!2169726 (not c!1290195)) b!6957483))

(assert (= (and b!6957483 c!1290196) b!6957472))

(assert (= (and b!6957483 (not c!1290196)) b!6957480))

(assert (= (and b!6957480 (not res!2838957)) b!6957481))

(assert (= (and b!6957481 res!2838964) b!6957476))

(assert (= (and b!6957476 res!2838959) b!6957473))

(assert (= (and b!6957473 res!2838960) b!6957470))

(assert (= (and b!6957481 (not res!2838963)) b!6957479))

(assert (= (and b!6957479 res!2838958) b!6957474))

(assert (= (and b!6957474 (not res!2838961)) b!6957475))

(assert (= (and b!6957475 (not res!2838962)) b!6957477))

(assert (= (or b!6957471 b!6957474 b!6957476) bm!631832))

(declare-fun m!7654914 () Bool)

(assert (=> b!6957470 m!7654914))

(assert (=> b!6957482 m!7654850))

(assert (=> b!6957478 m!7654914))

(assert (=> b!6957478 m!7654914))

(declare-fun m!7654916 () Bool)

(assert (=> b!6957478 m!7654916))

(declare-fun m!7654918 () Bool)

(assert (=> b!6957478 m!7654918))

(assert (=> b!6957478 m!7654916))

(assert (=> b!6957478 m!7654918))

(declare-fun m!7654920 () Bool)

(assert (=> b!6957478 m!7654920))

(assert (=> b!6957475 m!7654918))

(assert (=> b!6957475 m!7654918))

(declare-fun m!7654922 () Bool)

(assert (=> b!6957475 m!7654922))

(assert (=> b!6957473 m!7654918))

(assert (=> b!6957473 m!7654918))

(assert (=> b!6957473 m!7654922))

(assert (=> b!6957477 m!7654914))

(assert (=> d!2169726 m!7654898))

(assert (=> d!2169726 m!7654836))

(assert (=> bm!631832 m!7654898))

(assert (=> b!6957273 d!2169726))

(declare-fun d!2169730 () Bool)

(declare-fun lt!2478641 () tuple2!67822)

(declare-fun dynLambda!26600 (Int tuple2!67822) Bool)

(assert (=> d!2169730 (dynLambda!26600 lambda!396894 lt!2478641)))

(declare-fun choose!51861 (Int) tuple2!67822)

(assert (=> d!2169730 (= lt!2478641 (choose!51861 lambda!396894))))

(assert (=> d!2169730 (Exists!4056 lambda!396894)))

(assert (=> d!2169730 (= (pickWitness!383 lambda!396894) lt!2478641)))

(declare-fun b_lambda!260489 () Bool)

(assert (=> (not b_lambda!260489) (not d!2169730)))

(declare-fun bs!1858163 () Bool)

(assert (= bs!1858163 d!2169730))

(declare-fun m!7654924 () Bool)

(assert (=> bs!1858163 m!7654924))

(declare-fun m!7654926 () Bool)

(assert (=> bs!1858163 m!7654926))

(assert (=> bs!1858163 m!7654852))

(assert (=> b!6957273 d!2169730))

(assert (=> b!6957268 d!2169712))

(declare-fun b!6957494 () Bool)

(declare-fun e!4183578 () Bool)

(assert (=> b!6957494 (= e!4183578 tp_is_empty!43345)))

(assert (=> b!6957271 (= tp!1917911 e!4183578)))

(declare-fun b!6957495 () Bool)

(declare-fun tp!1917943 () Bool)

(declare-fun tp!1917940 () Bool)

(assert (=> b!6957495 (= e!4183578 (and tp!1917943 tp!1917940))))

(declare-fun b!6957496 () Bool)

(declare-fun tp!1917944 () Bool)

(assert (=> b!6957496 (= e!4183578 tp!1917944)))

(declare-fun b!6957497 () Bool)

(declare-fun tp!1917941 () Bool)

(declare-fun tp!1917942 () Bool)

(assert (=> b!6957497 (= e!4183578 (and tp!1917941 tp!1917942))))

(assert (= (and b!6957271 (is-ElementMatch!17060 (reg!17389 rInner!765))) b!6957494))

(assert (= (and b!6957271 (is-Concat!25905 (reg!17389 rInner!765))) b!6957495))

(assert (= (and b!6957271 (is-Star!17060 (reg!17389 rInner!765))) b!6957496))

(assert (= (and b!6957271 (is-Union!17060 (reg!17389 rInner!765))) b!6957497))

(declare-fun b!6957498 () Bool)

(declare-fun e!4183579 () Bool)

(assert (=> b!6957498 (= e!4183579 tp_is_empty!43345)))

(assert (=> b!6957276 (= tp!1917910 e!4183579)))

(declare-fun b!6957499 () Bool)

(declare-fun tp!1917948 () Bool)

(declare-fun tp!1917945 () Bool)

(assert (=> b!6957499 (= e!4183579 (and tp!1917948 tp!1917945))))

(declare-fun b!6957500 () Bool)

(declare-fun tp!1917949 () Bool)

(assert (=> b!6957500 (= e!4183579 tp!1917949)))

(declare-fun b!6957501 () Bool)

(declare-fun tp!1917946 () Bool)

(declare-fun tp!1917947 () Bool)

(assert (=> b!6957501 (= e!4183579 (and tp!1917946 tp!1917947))))

(assert (= (and b!6957276 (is-ElementMatch!17060 (regOne!34632 rInner!765))) b!6957498))

(assert (= (and b!6957276 (is-Concat!25905 (regOne!34632 rInner!765))) b!6957499))

(assert (= (and b!6957276 (is-Star!17060 (regOne!34632 rInner!765))) b!6957500))

(assert (= (and b!6957276 (is-Union!17060 (regOne!34632 rInner!765))) b!6957501))

(declare-fun b!6957504 () Bool)

(declare-fun e!4183580 () Bool)

(assert (=> b!6957504 (= e!4183580 tp_is_empty!43345)))

(assert (=> b!6957276 (= tp!1917908 e!4183580)))

(declare-fun b!6957505 () Bool)

(declare-fun tp!1917953 () Bool)

(declare-fun tp!1917950 () Bool)

(assert (=> b!6957505 (= e!4183580 (and tp!1917953 tp!1917950))))

(declare-fun b!6957506 () Bool)

(declare-fun tp!1917954 () Bool)

(assert (=> b!6957506 (= e!4183580 tp!1917954)))

(declare-fun b!6957507 () Bool)

(declare-fun tp!1917951 () Bool)

(declare-fun tp!1917952 () Bool)

(assert (=> b!6957507 (= e!4183580 (and tp!1917951 tp!1917952))))

(assert (= (and b!6957276 (is-ElementMatch!17060 (regTwo!34632 rInner!765))) b!6957504))

(assert (= (and b!6957276 (is-Concat!25905 (regTwo!34632 rInner!765))) b!6957505))

(assert (= (and b!6957276 (is-Star!17060 (regTwo!34632 rInner!765))) b!6957506))

(assert (= (and b!6957276 (is-Union!17060 (regTwo!34632 rInner!765))) b!6957507))

(declare-fun b!6957514 () Bool)

(declare-fun e!4183585 () Bool)

(declare-fun tp!1917957 () Bool)

(assert (=> b!6957514 (= e!4183585 (and tp_is_empty!43345 tp!1917957))))

(assert (=> b!6957270 (= tp!1917906 e!4183585)))

(assert (= (and b!6957270 (is-Cons!66689 (t!380556 s!10388))) b!6957514))

(declare-fun b!6957515 () Bool)

(declare-fun e!4183586 () Bool)

(assert (=> b!6957515 (= e!4183586 tp_is_empty!43345)))

(assert (=> b!6957269 (= tp!1917907 e!4183586)))

(declare-fun b!6957516 () Bool)

(declare-fun tp!1917961 () Bool)

(declare-fun tp!1917958 () Bool)

(assert (=> b!6957516 (= e!4183586 (and tp!1917961 tp!1917958))))

(declare-fun b!6957517 () Bool)

(declare-fun tp!1917962 () Bool)

(assert (=> b!6957517 (= e!4183586 tp!1917962)))

(declare-fun b!6957518 () Bool)

(declare-fun tp!1917959 () Bool)

(declare-fun tp!1917960 () Bool)

(assert (=> b!6957518 (= e!4183586 (and tp!1917959 tp!1917960))))

(assert (= (and b!6957269 (is-ElementMatch!17060 (regOne!34633 rInner!765))) b!6957515))

(assert (= (and b!6957269 (is-Concat!25905 (regOne!34633 rInner!765))) b!6957516))

(assert (= (and b!6957269 (is-Star!17060 (regOne!34633 rInner!765))) b!6957517))

(assert (= (and b!6957269 (is-Union!17060 (regOne!34633 rInner!765))) b!6957518))

(declare-fun b!6957521 () Bool)

(declare-fun e!4183589 () Bool)

(assert (=> b!6957521 (= e!4183589 tp_is_empty!43345)))

(assert (=> b!6957269 (= tp!1917909 e!4183589)))

(declare-fun b!6957522 () Bool)

(declare-fun tp!1917966 () Bool)

(declare-fun tp!1917963 () Bool)

(assert (=> b!6957522 (= e!4183589 (and tp!1917966 tp!1917963))))

(declare-fun b!6957523 () Bool)

(declare-fun tp!1917967 () Bool)

(assert (=> b!6957523 (= e!4183589 tp!1917967)))

(declare-fun b!6957524 () Bool)

(declare-fun tp!1917964 () Bool)

(declare-fun tp!1917965 () Bool)

(assert (=> b!6957524 (= e!4183589 (and tp!1917964 tp!1917965))))

(assert (= (and b!6957269 (is-ElementMatch!17060 (regTwo!34633 rInner!765))) b!6957521))

(assert (= (and b!6957269 (is-Concat!25905 (regTwo!34633 rInner!765))) b!6957522))

(assert (= (and b!6957269 (is-Star!17060 (regTwo!34633 rInner!765))) b!6957523))

(assert (= (and b!6957269 (is-Union!17060 (regTwo!34633 rInner!765))) b!6957524))

(declare-fun b_lambda!260491 () Bool)

(assert (= b_lambda!260489 (or b!6957272 b_lambda!260491)))

(declare-fun bs!1858164 () Bool)

(declare-fun d!2169732 () Bool)

(assert (= bs!1858164 (and d!2169732 b!6957272)))

(declare-fun res!2838967 () Bool)

(declare-fun e!4183592 () Bool)

(assert (=> bs!1858164 (=> (not res!2838967) (not e!4183592))))

(declare-fun ++!15089 (List!66813 List!66813) List!66813)

(assert (=> bs!1858164 (= res!2838967 (= (++!15089 (_1!37214 lt!2478641) (_2!37214 lt!2478641)) s!10388))))

(assert (=> bs!1858164 (= (dynLambda!26600 lambda!396894 lt!2478641) e!4183592)))

(declare-fun b!6957531 () Bool)

(declare-fun res!2838968 () Bool)

(assert (=> b!6957531 (=> (not res!2838968) (not e!4183592))))

(assert (=> b!6957531 (= res!2838968 (not (isEmpty!38925 (_1!37214 lt!2478641))))))

(declare-fun b!6957532 () Bool)

(declare-fun res!2838969 () Bool)

(assert (=> b!6957532 (=> (not res!2838969) (not e!4183592))))

(assert (=> b!6957532 (= res!2838969 (matchRSpec!4085 rInner!765 (_1!37214 lt!2478641)))))

(declare-fun b!6957533 () Bool)

(assert (=> b!6957533 (= e!4183592 (matchRSpec!4085 (Star!17060 rInner!765) (_2!37214 lt!2478641)))))

(assert (= (and bs!1858164 res!2838967) b!6957531))

(assert (= (and b!6957531 res!2838968) b!6957532))

(assert (= (and b!6957532 res!2838969) b!6957533))

(declare-fun m!7654928 () Bool)

(assert (=> bs!1858164 m!7654928))

(declare-fun m!7654930 () Bool)

(assert (=> b!6957531 m!7654930))

(declare-fun m!7654932 () Bool)

(assert (=> b!6957532 m!7654932))

(declare-fun m!7654934 () Bool)

(assert (=> b!6957533 m!7654934))

(assert (=> d!2169730 d!2169732))

(push 1)

(assert tp_is_empty!43345)

(assert (not b!6957482))

(assert (not b_lambda!260491))

(assert (not d!2169712))

(assert (not b!6957518))

(assert (not bm!631822))

(assert (not b!6957516))

(assert (not b!6957495))

(assert (not b!6957473))

(assert (not b!6957500))

(assert (not b!6957524))

(assert (not b!6957423))

(assert (not d!2169702))

(assert (not bm!631829))

(assert (not b!6957477))

(assert (not bm!631832))

(assert (not bs!1858164))

(assert (not b!6957501))

(assert (not b!6957533))

(assert (not b!6957522))

(assert (not b!6957478))

(assert (not d!2169724))

(assert (not b!6957532))

(assert (not b!6957437))

(assert (not b!6957506))

(assert (not b!6957531))

(assert (not d!2169710))

(assert (not b!6957496))

(assert (not b!6957505))

(assert (not bm!631828))

(assert (not b!6957523))

(assert (not b!6957517))

(assert (not b!6957497))

(assert (not b!6957470))

(assert (not b!6957507))

(assert (not d!2169726))

(assert (not bm!631810))

(assert (not d!2169730))

(assert (not b!6957475))

(assert (not b!6957514))

(assert (not b!6957422))

(assert (not b!6957499))

(assert (not bm!631823))

(assert (not b!6957358))

(assert (not bm!631811))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

