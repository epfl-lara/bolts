; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!734102 () Bool)

(assert start!734102)

(declare-fun b!7621466 () Bool)

(assert (=> b!7621466 true))

(assert (=> b!7621466 true))

(declare-fun bs!1943405 () Bool)

(declare-fun b!7621475 () Bool)

(assert (= bs!1943405 (and b!7621475 b!7621466)))

(declare-fun lambda!468459 () Int)

(declare-fun lambda!468458 () Int)

(assert (=> bs!1943405 (not (= lambda!468459 lambda!468458))))

(assert (=> b!7621475 true))

(assert (=> b!7621475 true))

(declare-fun b!7621464 () Bool)

(declare-fun res!3051430 () Bool)

(declare-fun e!4531866 () Bool)

(assert (=> b!7621464 (=> (not res!3051430) (not e!4531866))))

(declare-datatypes ((C!40950 0))(
  ( (C!40951 (val!30915 Int)) )
))
(declare-datatypes ((Regex!20312 0))(
  ( (ElementMatch!20312 (c!1404634 C!40950)) (Concat!29157 (regOne!41136 Regex!20312) (regTwo!41136 Regex!20312)) (EmptyExpr!20312) (Star!20312 (reg!20641 Regex!20312)) (EmptyLang!20312) (Union!20312 (regOne!41137 Regex!20312) (regTwo!41137 Regex!20312)) )
))
(declare-fun r!14126 () Regex!20312)

(assert (=> b!7621464 (= res!3051430 (and (not (is-EmptyExpr!20312 r!14126)) (not (is-EmptyLang!20312 r!14126)) (not (is-ElementMatch!20312 r!14126)) (not (is-Union!20312 r!14126)) (is-Star!20312 r!14126)))))

(declare-fun b!7621465 () Bool)

(declare-fun e!4531867 () Bool)

(declare-fun tp!2225261 () Bool)

(assert (=> b!7621465 (= e!4531867 tp!2225261)))

(declare-fun e!4531868 () Bool)

(assert (=> b!7621466 (= e!4531866 (not e!4531868))))

(declare-fun res!3051426 () Bool)

(assert (=> b!7621466 (=> res!3051426 e!4531868)))

(declare-fun lt!2656869 () Bool)

(assert (=> b!7621466 (= res!3051426 (not lt!2656869))))

(declare-fun Exists!4468 (Int) Bool)

(assert (=> b!7621466 (= lt!2656869 (Exists!4468 lambda!468458))))

(declare-datatypes ((List!73165 0))(
  ( (Nil!73041) (Cons!73041 (h!79489 C!40950) (t!387900 List!73165)) )
))
(declare-datatypes ((tuple2!69186 0))(
  ( (tuple2!69187 (_1!37896 List!73165) (_2!37896 List!73165)) )
))
(declare-datatypes ((Option!17387 0))(
  ( (None!17386) (Some!17386 (v!54521 tuple2!69186)) )
))
(declare-fun lt!2656867 () Option!17387)

(declare-fun isDefined!14003 (Option!17387) Bool)

(assert (=> b!7621466 (= lt!2656869 (isDefined!14003 lt!2656867))))

(declare-fun s!9605 () List!73165)

(declare-fun findConcatSeparation!3417 (Regex!20312 Regex!20312 List!73165 List!73165 List!73165) Option!17387)

(assert (=> b!7621466 (= lt!2656867 (findConcatSeparation!3417 (reg!20641 r!14126) r!14126 Nil!73041 s!9605 s!9605))))

(declare-datatypes ((Unit!167496 0))(
  ( (Unit!167497) )
))
(declare-fun lt!2656870 () Unit!167496)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3175 (Regex!20312 Regex!20312 List!73165) Unit!167496)

(assert (=> b!7621466 (= lt!2656870 (lemmaFindConcatSeparationEquivalentToExists!3175 (reg!20641 r!14126) r!14126 s!9605))))

(declare-fun b!7621467 () Bool)

(declare-fun e!4531865 () Bool)

(assert (=> b!7621467 (= e!4531865 false)))

(declare-fun b!7621468 () Bool)

(declare-fun e!4531872 () Bool)

(assert (=> b!7621468 (= e!4531868 e!4531872)))

(declare-fun res!3051429 () Bool)

(assert (=> b!7621468 (=> res!3051429 e!4531872)))

(assert (=> b!7621468 (= res!3051429 (not (Exists!4468 lambda!468458)))))

(declare-fun lt!2656868 () Unit!167496)

(declare-fun e!4531864 () Unit!167496)

(assert (=> b!7621468 (= lt!2656868 e!4531864)))

(declare-fun c!1404633 () Bool)

(declare-fun matchR!9819 (Regex!20312 List!73165) Bool)

(assert (=> b!7621468 (= c!1404633 (not (matchR!9819 r!14126 s!9605)))))

(declare-fun lt!2656880 () tuple2!69186)

(declare-fun matchRSpec!4511 (Regex!20312 List!73165) Bool)

(assert (=> b!7621468 (= (matchR!9819 r!14126 (_2!37896 lt!2656880)) (matchRSpec!4511 r!14126 (_2!37896 lt!2656880)))))

(declare-fun lt!2656872 () Unit!167496)

(declare-fun mainMatchTheorem!4505 (Regex!20312 List!73165) Unit!167496)

(assert (=> b!7621468 (= lt!2656872 (mainMatchTheorem!4505 r!14126 (_2!37896 lt!2656880)))))

(assert (=> b!7621468 (= (matchR!9819 (reg!20641 r!14126) (_1!37896 lt!2656880)) (matchRSpec!4511 (reg!20641 r!14126) (_1!37896 lt!2656880)))))

(declare-fun lt!2656875 () Unit!167496)

(assert (=> b!7621468 (= lt!2656875 (mainMatchTheorem!4505 (reg!20641 r!14126) (_1!37896 lt!2656880)))))

(declare-fun get!25780 (Option!17387) tuple2!69186)

(assert (=> b!7621468 (= lt!2656880 (get!25780 lt!2656867))))

(declare-fun b!7621470 () Bool)

(declare-fun e!4531870 () Bool)

(declare-fun validRegex!10732 (Regex!20312) Bool)

(assert (=> b!7621470 (= e!4531870 (validRegex!10732 (reg!20641 r!14126)))))

(declare-fun b!7621471 () Bool)

(declare-fun e!4531869 () Bool)

(assert (=> b!7621471 (= e!4531872 e!4531869)))

(declare-fun res!3051432 () Bool)

(assert (=> b!7621471 (=> res!3051432 e!4531869)))

(declare-fun nullable!8879 (Regex!20312) Bool)

(assert (=> b!7621471 (= res!3051432 (nullable!8879 (reg!20641 r!14126)))))

(declare-fun lt!2656879 () tuple2!69186)

(assert (=> b!7621471 (= (matchR!9819 r!14126 (_2!37896 lt!2656879)) (matchRSpec!4511 r!14126 (_2!37896 lt!2656879)))))

(declare-fun lt!2656871 () Unit!167496)

(assert (=> b!7621471 (= lt!2656871 (mainMatchTheorem!4505 r!14126 (_2!37896 lt!2656879)))))

(assert (=> b!7621471 (= (matchR!9819 (reg!20641 r!14126) (_1!37896 lt!2656879)) (matchRSpec!4511 (reg!20641 r!14126) (_1!37896 lt!2656879)))))

(declare-fun lt!2656874 () Unit!167496)

(assert (=> b!7621471 (= lt!2656874 (mainMatchTheorem!4505 (reg!20641 r!14126) (_1!37896 lt!2656879)))))

(declare-fun pickWitness!443 (Int) tuple2!69186)

(assert (=> b!7621471 (= lt!2656879 (pickWitness!443 lambda!468458))))

(declare-fun b!7621472 () Bool)

(declare-fun tp_is_empty!50979 () Bool)

(assert (=> b!7621472 (= e!4531867 tp_is_empty!50979)))

(declare-fun b!7621473 () Bool)

(declare-fun tp!2225263 () Bool)

(declare-fun tp!2225258 () Bool)

(assert (=> b!7621473 (= e!4531867 (and tp!2225263 tp!2225258))))

(declare-fun b!7621474 () Bool)

(declare-fun e!4531871 () Bool)

(declare-fun tp!2225256 () Bool)

(assert (=> b!7621474 (= e!4531871 (and tp_is_empty!50979 tp!2225256))))

(assert (=> b!7621475 (= e!4531869 e!4531870)))

(declare-fun res!3051425 () Bool)

(assert (=> b!7621475 (=> res!3051425 e!4531870)))

(declare-fun cut!7 () tuple2!69186)

(declare-fun ++!17622 (List!73165 List!73165) List!73165)

(assert (=> b!7621475 (= res!3051425 (not (= (++!17622 (_1!37896 cut!7) (_2!37896 cut!7)) s!9605)))))

(declare-fun lt!2656878 () Unit!167496)

(declare-fun ExistsThe!41 (tuple2!69186 Int) Unit!167496)

(assert (=> b!7621475 (= lt!2656878 (ExistsThe!41 lt!2656879 lambda!468459))))

(declare-fun b!7621476 () Bool)

(declare-fun Unit!167498 () Unit!167496)

(assert (=> b!7621476 (= e!4531864 Unit!167498)))

(declare-fun b!7621477 () Bool)

(declare-fun res!3051431 () Bool)

(assert (=> b!7621477 (=> (not res!3051431) (not e!4531866))))

(declare-fun isEmpty!41661 (List!73165) Bool)

(assert (=> b!7621477 (= res!3051431 (not (isEmpty!41661 s!9605)))))

(declare-fun b!7621478 () Bool)

(declare-fun Unit!167499 () Unit!167496)

(assert (=> b!7621478 (= e!4531864 Unit!167499)))

(declare-fun lt!2656876 () Unit!167496)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!139 (Regex!20312 Regex!20312 List!73165 List!73165 List!73165) Unit!167496)

(assert (=> b!7621478 (= lt!2656876 (lemmaFindSeparationIsDefinedThenConcatMatches!139 (reg!20641 r!14126) r!14126 (_1!37896 lt!2656880) (_2!37896 lt!2656880) s!9605))))

(declare-fun lt!2656873 () List!73165)

(assert (=> b!7621478 (= lt!2656873 (++!17622 (_1!37896 lt!2656880) (_2!37896 lt!2656880)))))

(assert (=> b!7621478 (matchR!9819 (Concat!29157 (reg!20641 r!14126) r!14126) lt!2656873)))

(declare-fun lt!2656877 () Unit!167496)

(declare-fun lemmaStarApp!193 (Regex!20312 List!73165 List!73165) Unit!167496)

(assert (=> b!7621478 (= lt!2656877 (lemmaStarApp!193 (reg!20641 r!14126) (_1!37896 lt!2656880) (_2!37896 lt!2656880)))))

(declare-fun res!3051434 () Bool)

(assert (=> b!7621478 (= res!3051434 (matchR!9819 r!14126 lt!2656873))))

(assert (=> b!7621478 (=> (not res!3051434) (not e!4531865))))

(assert (=> b!7621478 e!4531865))

(declare-fun b!7621469 () Bool)

(declare-fun tp!2225259 () Bool)

(declare-fun tp!2225262 () Bool)

(assert (=> b!7621469 (= e!4531867 (and tp!2225259 tp!2225262))))

(declare-fun res!3051433 () Bool)

(assert (=> start!734102 (=> (not res!3051433) (not e!4531866))))

(assert (=> start!734102 (= res!3051433 (validRegex!10732 r!14126))))

(assert (=> start!734102 e!4531866))

(assert (=> start!734102 e!4531867))

(declare-fun e!4531863 () Bool)

(assert (=> start!734102 e!4531863))

(declare-fun e!4531862 () Bool)

(assert (=> start!734102 (and e!4531871 e!4531862)))

(declare-fun b!7621479 () Bool)

(declare-fun tp!2225260 () Bool)

(assert (=> b!7621479 (= e!4531863 (and tp_is_empty!50979 tp!2225260))))

(declare-fun b!7621480 () Bool)

(declare-fun tp!2225257 () Bool)

(assert (=> b!7621480 (= e!4531862 (and tp_is_empty!50979 tp!2225257))))

(declare-fun b!7621481 () Bool)

(declare-fun res!3051427 () Bool)

(assert (=> b!7621481 (=> res!3051427 e!4531869)))

(assert (=> b!7621481 (= res!3051427 (isEmpty!41661 (_1!37896 lt!2656879)))))

(declare-fun b!7621482 () Bool)

(declare-fun res!3051428 () Bool)

(assert (=> b!7621482 (=> res!3051428 e!4531870)))

(assert (=> b!7621482 (= res!3051428 (isEmpty!41661 (_1!37896 cut!7)))))

(assert (= (and start!734102 res!3051433) b!7621464))

(assert (= (and b!7621464 res!3051430) b!7621477))

(assert (= (and b!7621477 res!3051431) b!7621466))

(assert (= (and b!7621466 (not res!3051426)) b!7621468))

(assert (= (and b!7621468 c!1404633) b!7621478))

(assert (= (and b!7621468 (not c!1404633)) b!7621476))

(assert (= (and b!7621478 res!3051434) b!7621467))

(assert (= (and b!7621468 (not res!3051429)) b!7621471))

(assert (= (and b!7621471 (not res!3051432)) b!7621481))

(assert (= (and b!7621481 (not res!3051427)) b!7621475))

(assert (= (and b!7621475 (not res!3051425)) b!7621482))

(assert (= (and b!7621482 (not res!3051428)) b!7621470))

(assert (= (and start!734102 (is-ElementMatch!20312 r!14126)) b!7621472))

(assert (= (and start!734102 (is-Concat!29157 r!14126)) b!7621469))

(assert (= (and start!734102 (is-Star!20312 r!14126)) b!7621465))

(assert (= (and start!734102 (is-Union!20312 r!14126)) b!7621473))

(assert (= (and start!734102 (is-Cons!73041 s!9605)) b!7621479))

(assert (= (and start!734102 (is-Cons!73041 (_1!37896 cut!7))) b!7621474))

(assert (= (and start!734102 (is-Cons!73041 (_2!37896 cut!7))) b!7621480))

(declare-fun m!8153054 () Bool)

(assert (=> b!7621482 m!8153054))

(declare-fun m!8153056 () Bool)

(assert (=> b!7621477 m!8153056))

(declare-fun m!8153058 () Bool)

(assert (=> start!734102 m!8153058))

(declare-fun m!8153060 () Bool)

(assert (=> b!7621481 m!8153060))

(declare-fun m!8153062 () Bool)

(assert (=> b!7621468 m!8153062))

(declare-fun m!8153064 () Bool)

(assert (=> b!7621468 m!8153064))

(declare-fun m!8153066 () Bool)

(assert (=> b!7621468 m!8153066))

(declare-fun m!8153068 () Bool)

(assert (=> b!7621468 m!8153068))

(declare-fun m!8153070 () Bool)

(assert (=> b!7621468 m!8153070))

(declare-fun m!8153072 () Bool)

(assert (=> b!7621468 m!8153072))

(declare-fun m!8153074 () Bool)

(assert (=> b!7621468 m!8153074))

(declare-fun m!8153076 () Bool)

(assert (=> b!7621468 m!8153076))

(declare-fun m!8153078 () Bool)

(assert (=> b!7621468 m!8153078))

(declare-fun m!8153080 () Bool)

(assert (=> b!7621478 m!8153080))

(declare-fun m!8153082 () Bool)

(assert (=> b!7621478 m!8153082))

(declare-fun m!8153084 () Bool)

(assert (=> b!7621478 m!8153084))

(declare-fun m!8153086 () Bool)

(assert (=> b!7621478 m!8153086))

(declare-fun m!8153088 () Bool)

(assert (=> b!7621478 m!8153088))

(declare-fun m!8153090 () Bool)

(assert (=> b!7621471 m!8153090))

(declare-fun m!8153092 () Bool)

(assert (=> b!7621471 m!8153092))

(declare-fun m!8153094 () Bool)

(assert (=> b!7621471 m!8153094))

(declare-fun m!8153096 () Bool)

(assert (=> b!7621471 m!8153096))

(declare-fun m!8153098 () Bool)

(assert (=> b!7621471 m!8153098))

(declare-fun m!8153100 () Bool)

(assert (=> b!7621471 m!8153100))

(declare-fun m!8153102 () Bool)

(assert (=> b!7621471 m!8153102))

(declare-fun m!8153104 () Bool)

(assert (=> b!7621471 m!8153104))

(declare-fun m!8153106 () Bool)

(assert (=> b!7621470 m!8153106))

(assert (=> b!7621466 m!8153062))

(declare-fun m!8153108 () Bool)

(assert (=> b!7621466 m!8153108))

(declare-fun m!8153110 () Bool)

(assert (=> b!7621466 m!8153110))

(declare-fun m!8153112 () Bool)

(assert (=> b!7621466 m!8153112))

(declare-fun m!8153114 () Bool)

(assert (=> b!7621475 m!8153114))

(declare-fun m!8153116 () Bool)

(assert (=> b!7621475 m!8153116))

(push 1)

(assert (not b!7621479))

(assert (not b!7621481))

(assert (not b!7621466))

(assert (not start!734102))

(assert (not b!7621475))

(assert (not b!7621465))

(assert (not b!7621480))

(assert (not b!7621478))

(assert (not b!7621473))

(assert (not b!7621471))

(assert (not b!7621482))

(assert (not b!7621470))

(assert tp_is_empty!50979)

(assert (not b!7621474))

(assert (not b!7621477))

(assert (not b!7621468))

(assert (not b!7621469))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2323284 () Bool)

(assert (=> d!2323284 (= (isEmpty!41661 s!9605) (is-Nil!73041 s!9605))))

(assert (=> b!7621477 d!2323284))

(declare-fun d!2323286 () Bool)

(assert (=> d!2323286 (matchR!9819 (Concat!29157 (reg!20641 r!14126) r!14126) (++!17622 (_1!37896 lt!2656880) (_2!37896 lt!2656880)))))

(declare-fun lt!2656925 () Unit!167496)

(declare-fun choose!58807 (Regex!20312 Regex!20312 List!73165 List!73165 List!73165) Unit!167496)

(assert (=> d!2323286 (= lt!2656925 (choose!58807 (reg!20641 r!14126) r!14126 (_1!37896 lt!2656880) (_2!37896 lt!2656880) s!9605))))

(assert (=> d!2323286 (validRegex!10732 (reg!20641 r!14126))))

(assert (=> d!2323286 (= (lemmaFindSeparationIsDefinedThenConcatMatches!139 (reg!20641 r!14126) r!14126 (_1!37896 lt!2656880) (_2!37896 lt!2656880) s!9605) lt!2656925)))

(declare-fun bs!1943407 () Bool)

(assert (= bs!1943407 d!2323286))

(assert (=> bs!1943407 m!8153084))

(assert (=> bs!1943407 m!8153084))

(declare-fun m!8153182 () Bool)

(assert (=> bs!1943407 m!8153182))

(declare-fun m!8153184 () Bool)

(assert (=> bs!1943407 m!8153184))

(assert (=> bs!1943407 m!8153106))

(assert (=> b!7621478 d!2323286))

(declare-fun d!2323288 () Bool)

(assert (=> d!2323288 (matchR!9819 (Star!20312 (reg!20641 r!14126)) (++!17622 (_1!37896 lt!2656880) (_2!37896 lt!2656880)))))

(declare-fun lt!2656928 () Unit!167496)

(declare-fun choose!58808 (Regex!20312 List!73165 List!73165) Unit!167496)

(assert (=> d!2323288 (= lt!2656928 (choose!58808 (reg!20641 r!14126) (_1!37896 lt!2656880) (_2!37896 lt!2656880)))))

(assert (=> d!2323288 (validRegex!10732 (Star!20312 (reg!20641 r!14126)))))

(assert (=> d!2323288 (= (lemmaStarApp!193 (reg!20641 r!14126) (_1!37896 lt!2656880) (_2!37896 lt!2656880)) lt!2656928)))

(declare-fun bs!1943408 () Bool)

(assert (= bs!1943408 d!2323288))

(assert (=> bs!1943408 m!8153084))

(assert (=> bs!1943408 m!8153084))

(declare-fun m!8153186 () Bool)

(assert (=> bs!1943408 m!8153186))

(declare-fun m!8153188 () Bool)

(assert (=> bs!1943408 m!8153188))

(declare-fun m!8153190 () Bool)

(assert (=> bs!1943408 m!8153190))

(assert (=> b!7621478 d!2323288))

(declare-fun b!7621594 () Bool)

(declare-fun res!3051499 () Bool)

(declare-fun e!4531928 () Bool)

(assert (=> b!7621594 (=> (not res!3051499) (not e!4531928))))

(declare-fun call!699963 () Bool)

(assert (=> b!7621594 (= res!3051499 (not call!699963))))

(declare-fun b!7621595 () Bool)

(declare-fun e!4531930 () Bool)

(assert (=> b!7621595 (= e!4531930 (nullable!8879 r!14126))))

(declare-fun b!7621596 () Bool)

(declare-fun e!4531929 () Bool)

(declare-fun head!15657 (List!73165) C!40950)

(assert (=> b!7621596 (= e!4531929 (not (= (head!15657 lt!2656873) (c!1404634 r!14126))))))

(declare-fun b!7621597 () Bool)

(declare-fun res!3051505 () Bool)

(declare-fun e!4531932 () Bool)

(assert (=> b!7621597 (=> res!3051505 e!4531932)))

(assert (=> b!7621597 (= res!3051505 e!4531928)))

(declare-fun res!3051506 () Bool)

(assert (=> b!7621597 (=> (not res!3051506) (not e!4531928))))

(declare-fun lt!2656931 () Bool)

(assert (=> b!7621597 (= res!3051506 lt!2656931)))

(declare-fun d!2323290 () Bool)

(declare-fun e!4531933 () Bool)

(assert (=> d!2323290 e!4531933))

(declare-fun c!1404646 () Bool)

(assert (=> d!2323290 (= c!1404646 (is-EmptyExpr!20312 r!14126))))

(assert (=> d!2323290 (= lt!2656931 e!4531930)))

(declare-fun c!1404647 () Bool)

(assert (=> d!2323290 (= c!1404647 (isEmpty!41661 lt!2656873))))

(assert (=> d!2323290 (validRegex!10732 r!14126)))

(assert (=> d!2323290 (= (matchR!9819 r!14126 lt!2656873) lt!2656931)))

(declare-fun b!7621598 () Bool)

(declare-fun res!3051500 () Bool)

(assert (=> b!7621598 (=> res!3051500 e!4531929)))

(declare-fun tail!15197 (List!73165) List!73165)

(assert (=> b!7621598 (= res!3051500 (not (isEmpty!41661 (tail!15197 lt!2656873))))))

(declare-fun b!7621599 () Bool)

(declare-fun res!3051501 () Bool)

(assert (=> b!7621599 (=> (not res!3051501) (not e!4531928))))

(assert (=> b!7621599 (= res!3051501 (isEmpty!41661 (tail!15197 lt!2656873)))))

(declare-fun b!7621600 () Bool)

(declare-fun res!3051502 () Bool)

(assert (=> b!7621600 (=> res!3051502 e!4531932)))

(assert (=> b!7621600 (= res!3051502 (not (is-ElementMatch!20312 r!14126)))))

(declare-fun e!4531931 () Bool)

(assert (=> b!7621600 (= e!4531931 e!4531932)))

(declare-fun b!7621601 () Bool)

(assert (=> b!7621601 (= e!4531931 (not lt!2656931))))

(declare-fun bm!699958 () Bool)

(assert (=> bm!699958 (= call!699963 (isEmpty!41661 lt!2656873))))

(declare-fun b!7621602 () Bool)

(assert (=> b!7621602 (= e!4531928 (= (head!15657 lt!2656873) (c!1404634 r!14126)))))

(declare-fun b!7621603 () Bool)

(assert (=> b!7621603 (= e!4531933 (= lt!2656931 call!699963))))

(declare-fun b!7621604 () Bool)

(declare-fun derivativeStep!5857 (Regex!20312 C!40950) Regex!20312)

(assert (=> b!7621604 (= e!4531930 (matchR!9819 (derivativeStep!5857 r!14126 (head!15657 lt!2656873)) (tail!15197 lt!2656873)))))

(declare-fun b!7621605 () Bool)

(declare-fun e!4531934 () Bool)

(assert (=> b!7621605 (= e!4531934 e!4531929)))

(declare-fun res!3051503 () Bool)

(assert (=> b!7621605 (=> res!3051503 e!4531929)))

(assert (=> b!7621605 (= res!3051503 call!699963)))

(declare-fun b!7621606 () Bool)

(assert (=> b!7621606 (= e!4531933 e!4531931)))

(declare-fun c!1404645 () Bool)

(assert (=> b!7621606 (= c!1404645 (is-EmptyLang!20312 r!14126))))

(declare-fun b!7621607 () Bool)

(assert (=> b!7621607 (= e!4531932 e!4531934)))

(declare-fun res!3051504 () Bool)

(assert (=> b!7621607 (=> (not res!3051504) (not e!4531934))))

(assert (=> b!7621607 (= res!3051504 (not lt!2656931))))

(assert (= (and d!2323290 c!1404647) b!7621595))

(assert (= (and d!2323290 (not c!1404647)) b!7621604))

(assert (= (and d!2323290 c!1404646) b!7621603))

(assert (= (and d!2323290 (not c!1404646)) b!7621606))

(assert (= (and b!7621606 c!1404645) b!7621601))

(assert (= (and b!7621606 (not c!1404645)) b!7621600))

(assert (= (and b!7621600 (not res!3051502)) b!7621597))

(assert (= (and b!7621597 res!3051506) b!7621594))

(assert (= (and b!7621594 res!3051499) b!7621599))

(assert (= (and b!7621599 res!3051501) b!7621602))

(assert (= (and b!7621597 (not res!3051505)) b!7621607))

(assert (= (and b!7621607 res!3051504) b!7621605))

(assert (= (and b!7621605 (not res!3051503)) b!7621598))

(assert (= (and b!7621598 (not res!3051500)) b!7621596))

(assert (= (or b!7621603 b!7621594 b!7621605) bm!699958))

(declare-fun m!8153192 () Bool)

(assert (=> b!7621602 m!8153192))

(assert (=> b!7621596 m!8153192))

(declare-fun m!8153194 () Bool)

(assert (=> b!7621599 m!8153194))

(assert (=> b!7621599 m!8153194))

(declare-fun m!8153196 () Bool)

(assert (=> b!7621599 m!8153196))

(assert (=> b!7621604 m!8153192))

(assert (=> b!7621604 m!8153192))

(declare-fun m!8153198 () Bool)

(assert (=> b!7621604 m!8153198))

(assert (=> b!7621604 m!8153194))

(assert (=> b!7621604 m!8153198))

(assert (=> b!7621604 m!8153194))

(declare-fun m!8153200 () Bool)

(assert (=> b!7621604 m!8153200))

(declare-fun m!8153202 () Bool)

(assert (=> d!2323290 m!8153202))

(assert (=> d!2323290 m!8153058))

(declare-fun m!8153204 () Bool)

(assert (=> b!7621595 m!8153204))

(assert (=> bm!699958 m!8153202))

(assert (=> b!7621598 m!8153194))

(assert (=> b!7621598 m!8153194))

(assert (=> b!7621598 m!8153196))

(assert (=> b!7621478 d!2323290))

(declare-fun b!7621614 () Bool)

(declare-fun res!3051509 () Bool)

(declare-fun e!4531939 () Bool)

(assert (=> b!7621614 (=> (not res!3051509) (not e!4531939))))

(declare-fun call!699964 () Bool)

(assert (=> b!7621614 (= res!3051509 (not call!699964))))

(declare-fun b!7621615 () Bool)

(declare-fun e!4531941 () Bool)

(assert (=> b!7621615 (= e!4531941 (nullable!8879 (Concat!29157 (reg!20641 r!14126) r!14126)))))

(declare-fun b!7621616 () Bool)

(declare-fun e!4531940 () Bool)

(assert (=> b!7621616 (= e!4531940 (not (= (head!15657 lt!2656873) (c!1404634 (Concat!29157 (reg!20641 r!14126) r!14126)))))))

(declare-fun b!7621617 () Bool)

(declare-fun res!3051515 () Bool)

(declare-fun e!4531943 () Bool)

(assert (=> b!7621617 (=> res!3051515 e!4531943)))

(assert (=> b!7621617 (= res!3051515 e!4531939)))

(declare-fun res!3051516 () Bool)

(assert (=> b!7621617 (=> (not res!3051516) (not e!4531939))))

(declare-fun lt!2656932 () Bool)

(assert (=> b!7621617 (= res!3051516 lt!2656932)))

(declare-fun d!2323294 () Bool)

(declare-fun e!4531944 () Bool)

(assert (=> d!2323294 e!4531944))

(declare-fun c!1404651 () Bool)

(assert (=> d!2323294 (= c!1404651 (is-EmptyExpr!20312 (Concat!29157 (reg!20641 r!14126) r!14126)))))

(assert (=> d!2323294 (= lt!2656932 e!4531941)))

(declare-fun c!1404652 () Bool)

(assert (=> d!2323294 (= c!1404652 (isEmpty!41661 lt!2656873))))

(assert (=> d!2323294 (validRegex!10732 (Concat!29157 (reg!20641 r!14126) r!14126))))

(assert (=> d!2323294 (= (matchR!9819 (Concat!29157 (reg!20641 r!14126) r!14126) lt!2656873) lt!2656932)))

(declare-fun b!7621618 () Bool)

(declare-fun res!3051510 () Bool)

(assert (=> b!7621618 (=> res!3051510 e!4531940)))

(assert (=> b!7621618 (= res!3051510 (not (isEmpty!41661 (tail!15197 lt!2656873))))))

(declare-fun b!7621619 () Bool)

(declare-fun res!3051511 () Bool)

(assert (=> b!7621619 (=> (not res!3051511) (not e!4531939))))

(assert (=> b!7621619 (= res!3051511 (isEmpty!41661 (tail!15197 lt!2656873)))))

(declare-fun b!7621620 () Bool)

(declare-fun res!3051512 () Bool)

(assert (=> b!7621620 (=> res!3051512 e!4531943)))

(assert (=> b!7621620 (= res!3051512 (not (is-ElementMatch!20312 (Concat!29157 (reg!20641 r!14126) r!14126))))))

(declare-fun e!4531942 () Bool)

(assert (=> b!7621620 (= e!4531942 e!4531943)))

(declare-fun b!7621621 () Bool)

(assert (=> b!7621621 (= e!4531942 (not lt!2656932))))

(declare-fun bm!699959 () Bool)

(assert (=> bm!699959 (= call!699964 (isEmpty!41661 lt!2656873))))

(declare-fun b!7621622 () Bool)

(assert (=> b!7621622 (= e!4531939 (= (head!15657 lt!2656873) (c!1404634 (Concat!29157 (reg!20641 r!14126) r!14126))))))

(declare-fun b!7621623 () Bool)

(assert (=> b!7621623 (= e!4531944 (= lt!2656932 call!699964))))

(declare-fun b!7621624 () Bool)

(assert (=> b!7621624 (= e!4531941 (matchR!9819 (derivativeStep!5857 (Concat!29157 (reg!20641 r!14126) r!14126) (head!15657 lt!2656873)) (tail!15197 lt!2656873)))))

(declare-fun b!7621625 () Bool)

(declare-fun e!4531945 () Bool)

(assert (=> b!7621625 (= e!4531945 e!4531940)))

(declare-fun res!3051513 () Bool)

(assert (=> b!7621625 (=> res!3051513 e!4531940)))

(assert (=> b!7621625 (= res!3051513 call!699964)))

(declare-fun b!7621626 () Bool)

(assert (=> b!7621626 (= e!4531944 e!4531942)))

(declare-fun c!1404650 () Bool)

(assert (=> b!7621626 (= c!1404650 (is-EmptyLang!20312 (Concat!29157 (reg!20641 r!14126) r!14126)))))

(declare-fun b!7621627 () Bool)

(assert (=> b!7621627 (= e!4531943 e!4531945)))

(declare-fun res!3051514 () Bool)

(assert (=> b!7621627 (=> (not res!3051514) (not e!4531945))))

(assert (=> b!7621627 (= res!3051514 (not lt!2656932))))

(assert (= (and d!2323294 c!1404652) b!7621615))

(assert (= (and d!2323294 (not c!1404652)) b!7621624))

(assert (= (and d!2323294 c!1404651) b!7621623))

(assert (= (and d!2323294 (not c!1404651)) b!7621626))

(assert (= (and b!7621626 c!1404650) b!7621621))

(assert (= (and b!7621626 (not c!1404650)) b!7621620))

(assert (= (and b!7621620 (not res!3051512)) b!7621617))

(assert (= (and b!7621617 res!3051516) b!7621614))

(assert (= (and b!7621614 res!3051509) b!7621619))

(assert (= (and b!7621619 res!3051511) b!7621622))

(assert (= (and b!7621617 (not res!3051515)) b!7621627))

(assert (= (and b!7621627 res!3051514) b!7621625))

(assert (= (and b!7621625 (not res!3051513)) b!7621618))

(assert (= (and b!7621618 (not res!3051510)) b!7621616))

(assert (= (or b!7621623 b!7621614 b!7621625) bm!699959))

(assert (=> b!7621622 m!8153192))

(assert (=> b!7621616 m!8153192))

(assert (=> b!7621619 m!8153194))

(assert (=> b!7621619 m!8153194))

(assert (=> b!7621619 m!8153196))

(assert (=> b!7621624 m!8153192))

(assert (=> b!7621624 m!8153192))

(declare-fun m!8153206 () Bool)

(assert (=> b!7621624 m!8153206))

(assert (=> b!7621624 m!8153194))

(assert (=> b!7621624 m!8153206))

(assert (=> b!7621624 m!8153194))

(declare-fun m!8153208 () Bool)

(assert (=> b!7621624 m!8153208))

(assert (=> d!2323294 m!8153202))

(declare-fun m!8153210 () Bool)

(assert (=> d!2323294 m!8153210))

(declare-fun m!8153212 () Bool)

(assert (=> b!7621615 m!8153212))

(assert (=> bm!699959 m!8153202))

(assert (=> b!7621618 m!8153194))

(assert (=> b!7621618 m!8153194))

(assert (=> b!7621618 m!8153196))

(assert (=> b!7621478 d!2323294))

(declare-fun b!7621649 () Bool)

(declare-fun e!4531961 () List!73165)

(assert (=> b!7621649 (= e!4531961 (Cons!73041 (h!79489 (_1!37896 lt!2656880)) (++!17622 (t!387900 (_1!37896 lt!2656880)) (_2!37896 lt!2656880))))))

(declare-fun b!7621648 () Bool)

(assert (=> b!7621648 (= e!4531961 (_2!37896 lt!2656880))))

(declare-fun b!7621650 () Bool)

(declare-fun res!3051530 () Bool)

(declare-fun e!4531960 () Bool)

(assert (=> b!7621650 (=> (not res!3051530) (not e!4531960))))

(declare-fun lt!2656935 () List!73165)

(declare-fun size!42537 (List!73165) Int)

(assert (=> b!7621650 (= res!3051530 (= (size!42537 lt!2656935) (+ (size!42537 (_1!37896 lt!2656880)) (size!42537 (_2!37896 lt!2656880)))))))

(declare-fun b!7621651 () Bool)

(assert (=> b!7621651 (= e!4531960 (or (not (= (_2!37896 lt!2656880) Nil!73041)) (= lt!2656935 (_1!37896 lt!2656880))))))

(declare-fun d!2323296 () Bool)

(assert (=> d!2323296 e!4531960))

(declare-fun res!3051529 () Bool)

(assert (=> d!2323296 (=> (not res!3051529) (not e!4531960))))

(declare-fun content!15444 (List!73165) (Set C!40950))

(assert (=> d!2323296 (= res!3051529 (= (content!15444 lt!2656935) (set.union (content!15444 (_1!37896 lt!2656880)) (content!15444 (_2!37896 lt!2656880)))))))

(assert (=> d!2323296 (= lt!2656935 e!4531961)))

(declare-fun c!1404657 () Bool)

(assert (=> d!2323296 (= c!1404657 (is-Nil!73041 (_1!37896 lt!2656880)))))

(assert (=> d!2323296 (= (++!17622 (_1!37896 lt!2656880) (_2!37896 lt!2656880)) lt!2656935)))

(assert (= (and d!2323296 c!1404657) b!7621648))

(assert (= (and d!2323296 (not c!1404657)) b!7621649))

(assert (= (and d!2323296 res!3051529) b!7621650))

(assert (= (and b!7621650 res!3051530) b!7621651))

(declare-fun m!8153214 () Bool)

(assert (=> b!7621649 m!8153214))

(declare-fun m!8153216 () Bool)

(assert (=> b!7621650 m!8153216))

(declare-fun m!8153218 () Bool)

(assert (=> b!7621650 m!8153218))

(declare-fun m!8153220 () Bool)

(assert (=> b!7621650 m!8153220))

(declare-fun m!8153222 () Bool)

(assert (=> d!2323296 m!8153222))

(declare-fun m!8153224 () Bool)

(assert (=> d!2323296 m!8153224))

(declare-fun m!8153226 () Bool)

(assert (=> d!2323296 m!8153226))

(assert (=> b!7621478 d!2323296))

(declare-fun d!2323298 () Bool)

(assert (=> d!2323298 (= (isEmpty!41661 (_1!37896 lt!2656879)) (is-Nil!73041 (_1!37896 lt!2656879)))))

(assert (=> b!7621481 d!2323298))

(declare-fun b!7621679 () Bool)

(declare-fun e!4531988 () Bool)

(declare-fun e!4531989 () Bool)

(assert (=> b!7621679 (= e!4531988 e!4531989)))

(declare-fun res!3051548 () Bool)

(assert (=> b!7621679 (= res!3051548 (not (nullable!8879 (reg!20641 r!14126))))))

(assert (=> b!7621679 (=> (not res!3051548) (not e!4531989))))

(declare-fun b!7621680 () Bool)

(declare-fun e!4531983 () Bool)

(declare-fun call!699981 () Bool)

(assert (=> b!7621680 (= e!4531983 call!699981)))

(declare-fun b!7621681 () Bool)

(declare-fun e!4531986 () Bool)

(assert (=> b!7621681 (= e!4531986 e!4531988)))

(declare-fun c!1404665 () Bool)

(assert (=> b!7621681 (= c!1404665 (is-Star!20312 r!14126))))

(declare-fun b!7621682 () Bool)

(declare-fun res!3051547 () Bool)

(declare-fun e!4531987 () Bool)

(assert (=> b!7621682 (=> res!3051547 e!4531987)))

(assert (=> b!7621682 (= res!3051547 (not (is-Concat!29157 r!14126)))))

(declare-fun e!4531984 () Bool)

(assert (=> b!7621682 (= e!4531984 e!4531987)))

(declare-fun bm!699975 () Bool)

(declare-fun call!699980 () Bool)

(assert (=> bm!699975 (= call!699981 call!699980)))

(declare-fun d!2323300 () Bool)

(declare-fun res!3051549 () Bool)

(assert (=> d!2323300 (=> res!3051549 e!4531986)))

(assert (=> d!2323300 (= res!3051549 (is-ElementMatch!20312 r!14126))))

(assert (=> d!2323300 (= (validRegex!10732 r!14126) e!4531986)))

(declare-fun bm!699976 () Bool)

(declare-fun call!699982 () Bool)

(declare-fun c!1404664 () Bool)

(assert (=> bm!699976 (= call!699982 (validRegex!10732 (ite c!1404664 (regOne!41137 r!14126) (regOne!41136 r!14126))))))

(declare-fun b!7621683 () Bool)

(declare-fun res!3051546 () Bool)

(declare-fun e!4531985 () Bool)

(assert (=> b!7621683 (=> (not res!3051546) (not e!4531985))))

(assert (=> b!7621683 (= res!3051546 call!699982)))

(assert (=> b!7621683 (= e!4531984 e!4531985)))

(declare-fun b!7621684 () Bool)

(assert (=> b!7621684 (= e!4531985 call!699981)))

(declare-fun b!7621685 () Bool)

(assert (=> b!7621685 (= e!4531987 e!4531983)))

(declare-fun res!3051550 () Bool)

(assert (=> b!7621685 (=> (not res!3051550) (not e!4531983))))

(assert (=> b!7621685 (= res!3051550 call!699982)))

(declare-fun b!7621686 () Bool)

(assert (=> b!7621686 (= e!4531989 call!699980)))

(declare-fun bm!699977 () Bool)

(assert (=> bm!699977 (= call!699980 (validRegex!10732 (ite c!1404665 (reg!20641 r!14126) (ite c!1404664 (regTwo!41137 r!14126) (regTwo!41136 r!14126)))))))

(declare-fun b!7621687 () Bool)

(assert (=> b!7621687 (= e!4531988 e!4531984)))

(assert (=> b!7621687 (= c!1404664 (is-Union!20312 r!14126))))

(assert (= (and d!2323300 (not res!3051549)) b!7621681))

(assert (= (and b!7621681 c!1404665) b!7621679))

(assert (= (and b!7621681 (not c!1404665)) b!7621687))

(assert (= (and b!7621679 res!3051548) b!7621686))

(assert (= (and b!7621687 c!1404664) b!7621683))

(assert (= (and b!7621687 (not c!1404664)) b!7621682))

(assert (= (and b!7621683 res!3051546) b!7621684))

(assert (= (and b!7621682 (not res!3051547)) b!7621685))

(assert (= (and b!7621685 res!3051550) b!7621680))

(assert (= (or b!7621683 b!7621685) bm!699976))

(assert (= (or b!7621684 b!7621680) bm!699975))

(assert (= (or b!7621686 bm!699975) bm!699977))

(assert (=> b!7621679 m!8153090))

(declare-fun m!8153232 () Bool)

(assert (=> bm!699976 m!8153232))

(declare-fun m!8153234 () Bool)

(assert (=> bm!699977 m!8153234))

(assert (=> start!734102 d!2323300))

(declare-fun d!2323308 () Bool)

(declare-fun lt!2656938 () tuple2!69186)

(declare-fun dynLambda!29917 (Int tuple2!69186) Bool)

(assert (=> d!2323308 (dynLambda!29917 lambda!468458 lt!2656938)))

(declare-fun choose!58809 (Int) tuple2!69186)

(assert (=> d!2323308 (= lt!2656938 (choose!58809 lambda!468458))))

(assert (=> d!2323308 (Exists!4468 lambda!468458)))

(assert (=> d!2323308 (= (pickWitness!443 lambda!468458) lt!2656938)))

(declare-fun b_lambda!289003 () Bool)

(assert (=> (not b_lambda!289003) (not d!2323308)))

(declare-fun bs!1943409 () Bool)

(assert (= bs!1943409 d!2323308))

(declare-fun m!8153236 () Bool)

(assert (=> bs!1943409 m!8153236))

(declare-fun m!8153238 () Bool)

(assert (=> bs!1943409 m!8153238))

(assert (=> bs!1943409 m!8153062))

(assert (=> b!7621471 d!2323308))

(declare-fun d!2323310 () Bool)

(declare-fun nullableFct!3546 (Regex!20312) Bool)

(assert (=> d!2323310 (= (nullable!8879 (reg!20641 r!14126)) (nullableFct!3546 (reg!20641 r!14126)))))

(declare-fun bs!1943410 () Bool)

(assert (= bs!1943410 d!2323310))

(declare-fun m!8153240 () Bool)

(assert (=> bs!1943410 m!8153240))

(assert (=> b!7621471 d!2323310))

(declare-fun b!7621688 () Bool)

(declare-fun res!3051551 () Bool)

(declare-fun e!4531990 () Bool)

(assert (=> b!7621688 (=> (not res!3051551) (not e!4531990))))

(declare-fun call!699983 () Bool)

(assert (=> b!7621688 (= res!3051551 (not call!699983))))

(declare-fun b!7621689 () Bool)

(declare-fun e!4531992 () Bool)

(assert (=> b!7621689 (= e!4531992 (nullable!8879 r!14126))))

(declare-fun b!7621690 () Bool)

(declare-fun e!4531991 () Bool)

(assert (=> b!7621690 (= e!4531991 (not (= (head!15657 (_2!37896 lt!2656879)) (c!1404634 r!14126))))))

(declare-fun b!7621691 () Bool)

(declare-fun res!3051557 () Bool)

(declare-fun e!4531994 () Bool)

(assert (=> b!7621691 (=> res!3051557 e!4531994)))

(assert (=> b!7621691 (= res!3051557 e!4531990)))

(declare-fun res!3051558 () Bool)

(assert (=> b!7621691 (=> (not res!3051558) (not e!4531990))))

(declare-fun lt!2656939 () Bool)

(assert (=> b!7621691 (= res!3051558 lt!2656939)))

(declare-fun d!2323312 () Bool)

(declare-fun e!4531995 () Bool)

(assert (=> d!2323312 e!4531995))

(declare-fun c!1404667 () Bool)

(assert (=> d!2323312 (= c!1404667 (is-EmptyExpr!20312 r!14126))))

(assert (=> d!2323312 (= lt!2656939 e!4531992)))

(declare-fun c!1404668 () Bool)

(assert (=> d!2323312 (= c!1404668 (isEmpty!41661 (_2!37896 lt!2656879)))))

(assert (=> d!2323312 (validRegex!10732 r!14126)))

(assert (=> d!2323312 (= (matchR!9819 r!14126 (_2!37896 lt!2656879)) lt!2656939)))

(declare-fun b!7621692 () Bool)

(declare-fun res!3051552 () Bool)

(assert (=> b!7621692 (=> res!3051552 e!4531991)))

(assert (=> b!7621692 (= res!3051552 (not (isEmpty!41661 (tail!15197 (_2!37896 lt!2656879)))))))

(declare-fun b!7621693 () Bool)

(declare-fun res!3051553 () Bool)

(assert (=> b!7621693 (=> (not res!3051553) (not e!4531990))))

(assert (=> b!7621693 (= res!3051553 (isEmpty!41661 (tail!15197 (_2!37896 lt!2656879))))))

(declare-fun b!7621694 () Bool)

(declare-fun res!3051554 () Bool)

(assert (=> b!7621694 (=> res!3051554 e!4531994)))

(assert (=> b!7621694 (= res!3051554 (not (is-ElementMatch!20312 r!14126)))))

(declare-fun e!4531993 () Bool)

(assert (=> b!7621694 (= e!4531993 e!4531994)))

(declare-fun b!7621695 () Bool)

(assert (=> b!7621695 (= e!4531993 (not lt!2656939))))

(declare-fun bm!699978 () Bool)

(assert (=> bm!699978 (= call!699983 (isEmpty!41661 (_2!37896 lt!2656879)))))

(declare-fun b!7621696 () Bool)

(assert (=> b!7621696 (= e!4531990 (= (head!15657 (_2!37896 lt!2656879)) (c!1404634 r!14126)))))

(declare-fun b!7621697 () Bool)

(assert (=> b!7621697 (= e!4531995 (= lt!2656939 call!699983))))

(declare-fun b!7621698 () Bool)

(assert (=> b!7621698 (= e!4531992 (matchR!9819 (derivativeStep!5857 r!14126 (head!15657 (_2!37896 lt!2656879))) (tail!15197 (_2!37896 lt!2656879))))))

(declare-fun b!7621699 () Bool)

(declare-fun e!4531996 () Bool)

(assert (=> b!7621699 (= e!4531996 e!4531991)))

(declare-fun res!3051555 () Bool)

(assert (=> b!7621699 (=> res!3051555 e!4531991)))

(assert (=> b!7621699 (= res!3051555 call!699983)))

(declare-fun b!7621700 () Bool)

(assert (=> b!7621700 (= e!4531995 e!4531993)))

(declare-fun c!1404666 () Bool)

(assert (=> b!7621700 (= c!1404666 (is-EmptyLang!20312 r!14126))))

(declare-fun b!7621701 () Bool)

(assert (=> b!7621701 (= e!4531994 e!4531996)))

(declare-fun res!3051556 () Bool)

(assert (=> b!7621701 (=> (not res!3051556) (not e!4531996))))

(assert (=> b!7621701 (= res!3051556 (not lt!2656939))))

(assert (= (and d!2323312 c!1404668) b!7621689))

(assert (= (and d!2323312 (not c!1404668)) b!7621698))

(assert (= (and d!2323312 c!1404667) b!7621697))

(assert (= (and d!2323312 (not c!1404667)) b!7621700))

(assert (= (and b!7621700 c!1404666) b!7621695))

(assert (= (and b!7621700 (not c!1404666)) b!7621694))

(assert (= (and b!7621694 (not res!3051554)) b!7621691))

(assert (= (and b!7621691 res!3051558) b!7621688))

(assert (= (and b!7621688 res!3051551) b!7621693))

(assert (= (and b!7621693 res!3051553) b!7621696))

(assert (= (and b!7621691 (not res!3051557)) b!7621701))

(assert (= (and b!7621701 res!3051556) b!7621699))

(assert (= (and b!7621699 (not res!3051555)) b!7621692))

(assert (= (and b!7621692 (not res!3051552)) b!7621690))

(assert (= (or b!7621697 b!7621688 b!7621699) bm!699978))

(declare-fun m!8153242 () Bool)

(assert (=> b!7621696 m!8153242))

(assert (=> b!7621690 m!8153242))

(declare-fun m!8153244 () Bool)

(assert (=> b!7621693 m!8153244))

(assert (=> b!7621693 m!8153244))

(declare-fun m!8153246 () Bool)

(assert (=> b!7621693 m!8153246))

(assert (=> b!7621698 m!8153242))

(assert (=> b!7621698 m!8153242))

(declare-fun m!8153248 () Bool)

(assert (=> b!7621698 m!8153248))

(assert (=> b!7621698 m!8153244))

(assert (=> b!7621698 m!8153248))

(assert (=> b!7621698 m!8153244))

(declare-fun m!8153250 () Bool)

(assert (=> b!7621698 m!8153250))

(declare-fun m!8153252 () Bool)

(assert (=> d!2323312 m!8153252))

(assert (=> d!2323312 m!8153058))

(assert (=> b!7621689 m!8153204))

(assert (=> bm!699978 m!8153252))

(assert (=> b!7621692 m!8153244))

(assert (=> b!7621692 m!8153244))

(assert (=> b!7621692 m!8153246))

(assert (=> b!7621471 d!2323312))

(declare-fun d!2323314 () Bool)

(assert (=> d!2323314 (= (matchR!9819 r!14126 (_2!37896 lt!2656879)) (matchRSpec!4511 r!14126 (_2!37896 lt!2656879)))))

(declare-fun lt!2656942 () Unit!167496)

(declare-fun choose!58810 (Regex!20312 List!73165) Unit!167496)

(assert (=> d!2323314 (= lt!2656942 (choose!58810 r!14126 (_2!37896 lt!2656879)))))

(assert (=> d!2323314 (validRegex!10732 r!14126)))

(assert (=> d!2323314 (= (mainMatchTheorem!4505 r!14126 (_2!37896 lt!2656879)) lt!2656942)))

(declare-fun bs!1943411 () Bool)

(assert (= bs!1943411 d!2323314))

(assert (=> bs!1943411 m!8153092))

(assert (=> bs!1943411 m!8153104))

(declare-fun m!8153254 () Bool)

(assert (=> bs!1943411 m!8153254))

(assert (=> bs!1943411 m!8153058))

(assert (=> b!7621471 d!2323314))

(declare-fun bs!1943412 () Bool)

(declare-fun b!7621769 () Bool)

(assert (= bs!1943412 (and b!7621769 b!7621466)))

(declare-fun lambda!468474 () Int)

(assert (=> bs!1943412 (not (= lambda!468474 lambda!468458))))

(declare-fun bs!1943413 () Bool)

(assert (= bs!1943413 (and b!7621769 b!7621475)))

(assert (=> bs!1943413 (= (= (_2!37896 lt!2656879) s!9605) (= lambda!468474 lambda!468459))))

(assert (=> b!7621769 true))

(assert (=> b!7621769 true))

(declare-fun bs!1943414 () Bool)

(declare-fun b!7621762 () Bool)

(assert (= bs!1943414 (and b!7621762 b!7621466)))

(declare-fun lambda!468475 () Int)

(assert (=> bs!1943414 (not (= lambda!468475 lambda!468458))))

(declare-fun bs!1943415 () Bool)

(assert (= bs!1943415 (and b!7621762 b!7621475)))

(assert (=> bs!1943415 (not (= lambda!468475 lambda!468459))))

(declare-fun bs!1943416 () Bool)

(assert (= bs!1943416 (and b!7621762 b!7621769)))

(assert (=> bs!1943416 (not (= lambda!468475 lambda!468474))))

(assert (=> b!7621762 true))

(assert (=> b!7621762 true))

(declare-fun e!4532032 () Bool)

(declare-fun call!699990 () Bool)

(assert (=> b!7621762 (= e!4532032 call!699990)))

(declare-fun bm!699985 () Bool)

(declare-fun call!699991 () Bool)

(assert (=> bm!699985 (= call!699991 (isEmpty!41661 (_2!37896 lt!2656879)))))

(declare-fun b!7621763 () Bool)

(declare-fun e!4532035 () Bool)

(assert (=> b!7621763 (= e!4532035 e!4532032)))

(declare-fun c!1404686 () Bool)

(assert (=> b!7621763 (= c!1404686 (is-Star!20312 r!14126))))

(declare-fun b!7621764 () Bool)

(declare-fun e!4532033 () Bool)

(assert (=> b!7621764 (= e!4532035 e!4532033)))

(declare-fun res!3051592 () Bool)

(assert (=> b!7621764 (= res!3051592 (matchRSpec!4511 (regOne!41137 r!14126) (_2!37896 lt!2656879)))))

(assert (=> b!7621764 (=> res!3051592 e!4532033)))

(declare-fun b!7621765 () Bool)

(declare-fun e!4532034 () Bool)

(assert (=> b!7621765 (= e!4532034 call!699991)))

(declare-fun d!2323316 () Bool)

(declare-fun c!1404683 () Bool)

(assert (=> d!2323316 (= c!1404683 (is-EmptyExpr!20312 r!14126))))

(assert (=> d!2323316 (= (matchRSpec!4511 r!14126 (_2!37896 lt!2656879)) e!4532034)))

(declare-fun b!7621766 () Bool)

(declare-fun c!1404685 () Bool)

(assert (=> b!7621766 (= c!1404685 (is-ElementMatch!20312 r!14126))))

(declare-fun e!4532031 () Bool)

(declare-fun e!4532030 () Bool)

(assert (=> b!7621766 (= e!4532031 e!4532030)))

(declare-fun bm!699986 () Bool)

(assert (=> bm!699986 (= call!699990 (Exists!4468 (ite c!1404686 lambda!468474 lambda!468475)))))

(declare-fun b!7621767 () Bool)

(declare-fun res!3051591 () Bool)

(declare-fun e!4532029 () Bool)

(assert (=> b!7621767 (=> res!3051591 e!4532029)))

(assert (=> b!7621767 (= res!3051591 call!699991)))

(assert (=> b!7621767 (= e!4532032 e!4532029)))

(declare-fun b!7621768 () Bool)

(assert (=> b!7621768 (= e!4532033 (matchRSpec!4511 (regTwo!41137 r!14126) (_2!37896 lt!2656879)))))

(assert (=> b!7621769 (= e!4532029 call!699990)))

(declare-fun b!7621770 () Bool)

(assert (=> b!7621770 (= e!4532034 e!4532031)))

(declare-fun res!3051593 () Bool)

(assert (=> b!7621770 (= res!3051593 (not (is-EmptyLang!20312 r!14126)))))

(assert (=> b!7621770 (=> (not res!3051593) (not e!4532031))))

(declare-fun b!7621771 () Bool)

(declare-fun c!1404684 () Bool)

(assert (=> b!7621771 (= c!1404684 (is-Union!20312 r!14126))))

(assert (=> b!7621771 (= e!4532030 e!4532035)))

(declare-fun b!7621772 () Bool)

(assert (=> b!7621772 (= e!4532030 (= (_2!37896 lt!2656879) (Cons!73041 (c!1404634 r!14126) Nil!73041)))))

(assert (= (and d!2323316 c!1404683) b!7621765))

(assert (= (and d!2323316 (not c!1404683)) b!7621770))

(assert (= (and b!7621770 res!3051593) b!7621766))

(assert (= (and b!7621766 c!1404685) b!7621772))

(assert (= (and b!7621766 (not c!1404685)) b!7621771))

(assert (= (and b!7621771 c!1404684) b!7621764))

(assert (= (and b!7621771 (not c!1404684)) b!7621763))

(assert (= (and b!7621764 (not res!3051592)) b!7621768))

(assert (= (and b!7621763 c!1404686) b!7621767))

(assert (= (and b!7621763 (not c!1404686)) b!7621762))

(assert (= (and b!7621767 (not res!3051591)) b!7621769))

(assert (= (or b!7621769 b!7621762) bm!699986))

(assert (= (or b!7621765 b!7621767) bm!699985))

(assert (=> bm!699985 m!8153252))

(declare-fun m!8153256 () Bool)

(assert (=> b!7621764 m!8153256))

(declare-fun m!8153258 () Bool)

(assert (=> bm!699986 m!8153258))

(declare-fun m!8153260 () Bool)

(assert (=> b!7621768 m!8153260))

(assert (=> b!7621471 d!2323316))

(declare-fun b!7621773 () Bool)

(declare-fun res!3051594 () Bool)

(declare-fun e!4532036 () Bool)

(assert (=> b!7621773 (=> (not res!3051594) (not e!4532036))))

(declare-fun call!699992 () Bool)

(assert (=> b!7621773 (= res!3051594 (not call!699992))))

(declare-fun b!7621774 () Bool)

(declare-fun e!4532038 () Bool)

(assert (=> b!7621774 (= e!4532038 (nullable!8879 (reg!20641 r!14126)))))

(declare-fun b!7621775 () Bool)

(declare-fun e!4532037 () Bool)

(assert (=> b!7621775 (= e!4532037 (not (= (head!15657 (_1!37896 lt!2656879)) (c!1404634 (reg!20641 r!14126)))))))

(declare-fun b!7621776 () Bool)

(declare-fun res!3051600 () Bool)

(declare-fun e!4532040 () Bool)

(assert (=> b!7621776 (=> res!3051600 e!4532040)))

(assert (=> b!7621776 (= res!3051600 e!4532036)))

(declare-fun res!3051601 () Bool)

(assert (=> b!7621776 (=> (not res!3051601) (not e!4532036))))

(declare-fun lt!2656945 () Bool)

(assert (=> b!7621776 (= res!3051601 lt!2656945)))

(declare-fun d!2323318 () Bool)

(declare-fun e!4532041 () Bool)

(assert (=> d!2323318 e!4532041))

(declare-fun c!1404688 () Bool)

(assert (=> d!2323318 (= c!1404688 (is-EmptyExpr!20312 (reg!20641 r!14126)))))

(assert (=> d!2323318 (= lt!2656945 e!4532038)))

(declare-fun c!1404689 () Bool)

(assert (=> d!2323318 (= c!1404689 (isEmpty!41661 (_1!37896 lt!2656879)))))

(assert (=> d!2323318 (validRegex!10732 (reg!20641 r!14126))))

(assert (=> d!2323318 (= (matchR!9819 (reg!20641 r!14126) (_1!37896 lt!2656879)) lt!2656945)))

(declare-fun b!7621777 () Bool)

(declare-fun res!3051595 () Bool)

(assert (=> b!7621777 (=> res!3051595 e!4532037)))

(assert (=> b!7621777 (= res!3051595 (not (isEmpty!41661 (tail!15197 (_1!37896 lt!2656879)))))))

(declare-fun b!7621778 () Bool)

(declare-fun res!3051596 () Bool)

(assert (=> b!7621778 (=> (not res!3051596) (not e!4532036))))

(assert (=> b!7621778 (= res!3051596 (isEmpty!41661 (tail!15197 (_1!37896 lt!2656879))))))

(declare-fun b!7621779 () Bool)

(declare-fun res!3051597 () Bool)

(assert (=> b!7621779 (=> res!3051597 e!4532040)))

(assert (=> b!7621779 (= res!3051597 (not (is-ElementMatch!20312 (reg!20641 r!14126))))))

(declare-fun e!4532039 () Bool)

(assert (=> b!7621779 (= e!4532039 e!4532040)))

(declare-fun b!7621780 () Bool)

(assert (=> b!7621780 (= e!4532039 (not lt!2656945))))

(declare-fun bm!699987 () Bool)

(assert (=> bm!699987 (= call!699992 (isEmpty!41661 (_1!37896 lt!2656879)))))

(declare-fun b!7621781 () Bool)

(assert (=> b!7621781 (= e!4532036 (= (head!15657 (_1!37896 lt!2656879)) (c!1404634 (reg!20641 r!14126))))))

(declare-fun b!7621782 () Bool)

(assert (=> b!7621782 (= e!4532041 (= lt!2656945 call!699992))))

(declare-fun b!7621783 () Bool)

(assert (=> b!7621783 (= e!4532038 (matchR!9819 (derivativeStep!5857 (reg!20641 r!14126) (head!15657 (_1!37896 lt!2656879))) (tail!15197 (_1!37896 lt!2656879))))))

(declare-fun b!7621784 () Bool)

(declare-fun e!4532042 () Bool)

(assert (=> b!7621784 (= e!4532042 e!4532037)))

(declare-fun res!3051598 () Bool)

(assert (=> b!7621784 (=> res!3051598 e!4532037)))

(assert (=> b!7621784 (= res!3051598 call!699992)))

(declare-fun b!7621785 () Bool)

(assert (=> b!7621785 (= e!4532041 e!4532039)))

(declare-fun c!1404687 () Bool)

(assert (=> b!7621785 (= c!1404687 (is-EmptyLang!20312 (reg!20641 r!14126)))))

(declare-fun b!7621786 () Bool)

(assert (=> b!7621786 (= e!4532040 e!4532042)))

(declare-fun res!3051599 () Bool)

(assert (=> b!7621786 (=> (not res!3051599) (not e!4532042))))

(assert (=> b!7621786 (= res!3051599 (not lt!2656945))))

(assert (= (and d!2323318 c!1404689) b!7621774))

(assert (= (and d!2323318 (not c!1404689)) b!7621783))

(assert (= (and d!2323318 c!1404688) b!7621782))

(assert (= (and d!2323318 (not c!1404688)) b!7621785))

(assert (= (and b!7621785 c!1404687) b!7621780))

(assert (= (and b!7621785 (not c!1404687)) b!7621779))

(assert (= (and b!7621779 (not res!3051597)) b!7621776))

(assert (= (and b!7621776 res!3051601) b!7621773))

(assert (= (and b!7621773 res!3051594) b!7621778))

(assert (= (and b!7621778 res!3051596) b!7621781))

(assert (= (and b!7621776 (not res!3051600)) b!7621786))

(assert (= (and b!7621786 res!3051599) b!7621784))

(assert (= (and b!7621784 (not res!3051598)) b!7621777))

(assert (= (and b!7621777 (not res!3051595)) b!7621775))

(assert (= (or b!7621782 b!7621773 b!7621784) bm!699987))

(declare-fun m!8153262 () Bool)

(assert (=> b!7621781 m!8153262))

(assert (=> b!7621775 m!8153262))

(declare-fun m!8153264 () Bool)

(assert (=> b!7621778 m!8153264))

(assert (=> b!7621778 m!8153264))

(declare-fun m!8153266 () Bool)

(assert (=> b!7621778 m!8153266))

(assert (=> b!7621783 m!8153262))

(assert (=> b!7621783 m!8153262))

(declare-fun m!8153268 () Bool)

(assert (=> b!7621783 m!8153268))

(assert (=> b!7621783 m!8153264))

(assert (=> b!7621783 m!8153268))

(assert (=> b!7621783 m!8153264))

(declare-fun m!8153270 () Bool)

(assert (=> b!7621783 m!8153270))

(assert (=> d!2323318 m!8153060))

(assert (=> d!2323318 m!8153106))

(assert (=> b!7621774 m!8153090))

(assert (=> bm!699987 m!8153060))

(assert (=> b!7621777 m!8153264))

(assert (=> b!7621777 m!8153264))

(assert (=> b!7621777 m!8153266))

(assert (=> b!7621471 d!2323318))

(declare-fun bs!1943417 () Bool)

(declare-fun b!7621794 () Bool)

(assert (= bs!1943417 (and b!7621794 b!7621466)))

(declare-fun lambda!468476 () Int)

(assert (=> bs!1943417 (not (= lambda!468476 lambda!468458))))

(declare-fun bs!1943418 () Bool)

(assert (= bs!1943418 (and b!7621794 b!7621475)))

(assert (=> bs!1943418 (= (and (= (_1!37896 lt!2656879) s!9605) (= (reg!20641 (reg!20641 r!14126)) (reg!20641 r!14126)) (= (reg!20641 r!14126) r!14126)) (= lambda!468476 lambda!468459))))

(declare-fun bs!1943419 () Bool)

(assert (= bs!1943419 (and b!7621794 b!7621769)))

(assert (=> bs!1943419 (= (and (= (_1!37896 lt!2656879) (_2!37896 lt!2656879)) (= (reg!20641 (reg!20641 r!14126)) (reg!20641 r!14126)) (= (reg!20641 r!14126) r!14126)) (= lambda!468476 lambda!468474))))

(declare-fun bs!1943420 () Bool)

(assert (= bs!1943420 (and b!7621794 b!7621762)))

(assert (=> bs!1943420 (not (= lambda!468476 lambda!468475))))

(assert (=> b!7621794 true))

(assert (=> b!7621794 true))

(declare-fun bs!1943421 () Bool)

(declare-fun b!7621787 () Bool)

(assert (= bs!1943421 (and b!7621787 b!7621769)))

(declare-fun lambda!468477 () Int)

(assert (=> bs!1943421 (not (= lambda!468477 lambda!468474))))

(declare-fun bs!1943422 () Bool)

(assert (= bs!1943422 (and b!7621787 b!7621475)))

(assert (=> bs!1943422 (not (= lambda!468477 lambda!468459))))

(declare-fun bs!1943423 () Bool)

(assert (= bs!1943423 (and b!7621787 b!7621466)))

(assert (=> bs!1943423 (not (= lambda!468477 lambda!468458))))

(declare-fun bs!1943424 () Bool)

(assert (= bs!1943424 (and b!7621787 b!7621762)))

(assert (=> bs!1943424 (= (and (= (_1!37896 lt!2656879) (_2!37896 lt!2656879)) (= (regOne!41136 (reg!20641 r!14126)) (regOne!41136 r!14126)) (= (regTwo!41136 (reg!20641 r!14126)) (regTwo!41136 r!14126))) (= lambda!468477 lambda!468475))))

(declare-fun bs!1943425 () Bool)

(assert (= bs!1943425 (and b!7621787 b!7621794)))

(assert (=> bs!1943425 (not (= lambda!468477 lambda!468476))))

(assert (=> b!7621787 true))

(assert (=> b!7621787 true))

(declare-fun e!4532046 () Bool)

(declare-fun call!699993 () Bool)

(assert (=> b!7621787 (= e!4532046 call!699993)))

(declare-fun bm!699988 () Bool)

(declare-fun call!699994 () Bool)

(assert (=> bm!699988 (= call!699994 (isEmpty!41661 (_1!37896 lt!2656879)))))

(declare-fun b!7621788 () Bool)

(declare-fun e!4532049 () Bool)

(assert (=> b!7621788 (= e!4532049 e!4532046)))

(declare-fun c!1404693 () Bool)

(assert (=> b!7621788 (= c!1404693 (is-Star!20312 (reg!20641 r!14126)))))

(declare-fun b!7621789 () Bool)

(declare-fun e!4532047 () Bool)

(assert (=> b!7621789 (= e!4532049 e!4532047)))

(declare-fun res!3051603 () Bool)

(assert (=> b!7621789 (= res!3051603 (matchRSpec!4511 (regOne!41137 (reg!20641 r!14126)) (_1!37896 lt!2656879)))))

(assert (=> b!7621789 (=> res!3051603 e!4532047)))

(declare-fun b!7621790 () Bool)

(declare-fun e!4532048 () Bool)

(assert (=> b!7621790 (= e!4532048 call!699994)))

(declare-fun d!2323320 () Bool)

(declare-fun c!1404690 () Bool)

(assert (=> d!2323320 (= c!1404690 (is-EmptyExpr!20312 (reg!20641 r!14126)))))

(assert (=> d!2323320 (= (matchRSpec!4511 (reg!20641 r!14126) (_1!37896 lt!2656879)) e!4532048)))

(declare-fun b!7621791 () Bool)

(declare-fun c!1404692 () Bool)

(assert (=> b!7621791 (= c!1404692 (is-ElementMatch!20312 (reg!20641 r!14126)))))

(declare-fun e!4532045 () Bool)

(declare-fun e!4532044 () Bool)

(assert (=> b!7621791 (= e!4532045 e!4532044)))

(declare-fun bm!699989 () Bool)

(assert (=> bm!699989 (= call!699993 (Exists!4468 (ite c!1404693 lambda!468476 lambda!468477)))))

(declare-fun b!7621792 () Bool)

(declare-fun res!3051602 () Bool)

(declare-fun e!4532043 () Bool)

(assert (=> b!7621792 (=> res!3051602 e!4532043)))

(assert (=> b!7621792 (= res!3051602 call!699994)))

(assert (=> b!7621792 (= e!4532046 e!4532043)))

(declare-fun b!7621793 () Bool)

(assert (=> b!7621793 (= e!4532047 (matchRSpec!4511 (regTwo!41137 (reg!20641 r!14126)) (_1!37896 lt!2656879)))))

(assert (=> b!7621794 (= e!4532043 call!699993)))

(declare-fun b!7621795 () Bool)

(assert (=> b!7621795 (= e!4532048 e!4532045)))

(declare-fun res!3051604 () Bool)

(assert (=> b!7621795 (= res!3051604 (not (is-EmptyLang!20312 (reg!20641 r!14126))))))

(assert (=> b!7621795 (=> (not res!3051604) (not e!4532045))))

(declare-fun b!7621796 () Bool)

(declare-fun c!1404691 () Bool)

(assert (=> b!7621796 (= c!1404691 (is-Union!20312 (reg!20641 r!14126)))))

(assert (=> b!7621796 (= e!4532044 e!4532049)))

(declare-fun b!7621797 () Bool)

(assert (=> b!7621797 (= e!4532044 (= (_1!37896 lt!2656879) (Cons!73041 (c!1404634 (reg!20641 r!14126)) Nil!73041)))))

(assert (= (and d!2323320 c!1404690) b!7621790))

(assert (= (and d!2323320 (not c!1404690)) b!7621795))

(assert (= (and b!7621795 res!3051604) b!7621791))

(assert (= (and b!7621791 c!1404692) b!7621797))

(assert (= (and b!7621791 (not c!1404692)) b!7621796))

(assert (= (and b!7621796 c!1404691) b!7621789))

(assert (= (and b!7621796 (not c!1404691)) b!7621788))

(assert (= (and b!7621789 (not res!3051603)) b!7621793))

(assert (= (and b!7621788 c!1404693) b!7621792))

(assert (= (and b!7621788 (not c!1404693)) b!7621787))

(assert (= (and b!7621792 (not res!3051602)) b!7621794))

(assert (= (or b!7621794 b!7621787) bm!699989))

(assert (= (or b!7621790 b!7621792) bm!699988))

(assert (=> bm!699988 m!8153060))

(declare-fun m!8153284 () Bool)

(assert (=> b!7621789 m!8153284))

(declare-fun m!8153286 () Bool)

(assert (=> bm!699989 m!8153286))

(declare-fun m!8153288 () Bool)

(assert (=> b!7621793 m!8153288))

(assert (=> b!7621471 d!2323320))

(declare-fun d!2323324 () Bool)

(assert (=> d!2323324 (= (matchR!9819 (reg!20641 r!14126) (_1!37896 lt!2656879)) (matchRSpec!4511 (reg!20641 r!14126) (_1!37896 lt!2656879)))))

(declare-fun lt!2656947 () Unit!167496)

(assert (=> d!2323324 (= lt!2656947 (choose!58810 (reg!20641 r!14126) (_1!37896 lt!2656879)))))

(assert (=> d!2323324 (validRegex!10732 (reg!20641 r!14126))))

(assert (=> d!2323324 (= (mainMatchTheorem!4505 (reg!20641 r!14126) (_1!37896 lt!2656879)) lt!2656947)))

(declare-fun bs!1943426 () Bool)

(assert (= bs!1943426 d!2323324))

(assert (=> bs!1943426 m!8153094))

(assert (=> bs!1943426 m!8153096))

(declare-fun m!8153290 () Bool)

(assert (=> bs!1943426 m!8153290))

(assert (=> bs!1943426 m!8153106))

(assert (=> b!7621471 d!2323324))

(declare-fun d!2323326 () Bool)

(declare-fun choose!58811 (Int) Bool)

(assert (=> d!2323326 (= (Exists!4468 lambda!468458) (choose!58811 lambda!468458))))

(declare-fun bs!1943427 () Bool)

(assert (= bs!1943427 d!2323326))

(declare-fun m!8153292 () Bool)

(assert (=> bs!1943427 m!8153292))

(assert (=> b!7621466 d!2323326))

(declare-fun d!2323328 () Bool)

(declare-fun isEmpty!41663 (Option!17387) Bool)

(assert (=> d!2323328 (= (isDefined!14003 lt!2656867) (not (isEmpty!41663 lt!2656867)))))

(declare-fun bs!1943428 () Bool)

(assert (= bs!1943428 d!2323328))

(declare-fun m!8153294 () Bool)

(assert (=> bs!1943428 m!8153294))

(assert (=> b!7621466 d!2323328))

(declare-fun b!7621852 () Bool)

(declare-fun e!4532084 () Option!17387)

(assert (=> b!7621852 (= e!4532084 (Some!17386 (tuple2!69187 Nil!73041 s!9605)))))

(declare-fun b!7621853 () Bool)

(declare-fun e!4532083 () Bool)

(declare-fun lt!2656954 () Option!17387)

(assert (=> b!7621853 (= e!4532083 (not (isDefined!14003 lt!2656954)))))

(declare-fun b!7621854 () Bool)

(declare-fun e!4532085 () Option!17387)

(assert (=> b!7621854 (= e!4532084 e!4532085)))

(declare-fun c!1404710 () Bool)

(assert (=> b!7621854 (= c!1404710 (is-Nil!73041 s!9605))))

(declare-fun b!7621855 () Bool)

(declare-fun lt!2656956 () Unit!167496)

(declare-fun lt!2656955 () Unit!167496)

(assert (=> b!7621855 (= lt!2656956 lt!2656955)))

(assert (=> b!7621855 (= (++!17622 (++!17622 Nil!73041 (Cons!73041 (h!79489 s!9605) Nil!73041)) (t!387900 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3220 (List!73165 C!40950 List!73165 List!73165) Unit!167496)

(assert (=> b!7621855 (= lt!2656955 (lemmaMoveElementToOtherListKeepsConcatEq!3220 Nil!73041 (h!79489 s!9605) (t!387900 s!9605) s!9605))))

(assert (=> b!7621855 (= e!4532085 (findConcatSeparation!3417 (reg!20641 r!14126) r!14126 (++!17622 Nil!73041 (Cons!73041 (h!79489 s!9605) Nil!73041)) (t!387900 s!9605) s!9605))))

(declare-fun d!2323330 () Bool)

(assert (=> d!2323330 e!4532083))

(declare-fun res!3051635 () Bool)

(assert (=> d!2323330 (=> res!3051635 e!4532083)))

(declare-fun e!4532086 () Bool)

(assert (=> d!2323330 (= res!3051635 e!4532086)))

(declare-fun res!3051632 () Bool)

(assert (=> d!2323330 (=> (not res!3051632) (not e!4532086))))

(assert (=> d!2323330 (= res!3051632 (isDefined!14003 lt!2656954))))

(assert (=> d!2323330 (= lt!2656954 e!4532084)))

(declare-fun c!1404709 () Bool)

(declare-fun e!4532087 () Bool)

(assert (=> d!2323330 (= c!1404709 e!4532087)))

(declare-fun res!3051634 () Bool)

(assert (=> d!2323330 (=> (not res!3051634) (not e!4532087))))

(assert (=> d!2323330 (= res!3051634 (matchR!9819 (reg!20641 r!14126) Nil!73041))))

(assert (=> d!2323330 (validRegex!10732 (reg!20641 r!14126))))

(assert (=> d!2323330 (= (findConcatSeparation!3417 (reg!20641 r!14126) r!14126 Nil!73041 s!9605 s!9605) lt!2656954)))

(declare-fun b!7621856 () Bool)

(assert (=> b!7621856 (= e!4532087 (matchR!9819 r!14126 s!9605))))

(declare-fun b!7621857 () Bool)

(declare-fun res!3051633 () Bool)

(assert (=> b!7621857 (=> (not res!3051633) (not e!4532086))))

(assert (=> b!7621857 (= res!3051633 (matchR!9819 (reg!20641 r!14126) (_1!37896 (get!25780 lt!2656954))))))

(declare-fun b!7621858 () Bool)

(assert (=> b!7621858 (= e!4532086 (= (++!17622 (_1!37896 (get!25780 lt!2656954)) (_2!37896 (get!25780 lt!2656954))) s!9605))))

(declare-fun b!7621859 () Bool)

(declare-fun res!3051630 () Bool)

(assert (=> b!7621859 (=> (not res!3051630) (not e!4532086))))

(assert (=> b!7621859 (= res!3051630 (matchR!9819 r!14126 (_2!37896 (get!25780 lt!2656954))))))

(declare-fun b!7621860 () Bool)

(assert (=> b!7621860 (= e!4532085 None!17386)))

(assert (= (and d!2323330 res!3051634) b!7621856))

(assert (= (and d!2323330 c!1404709) b!7621852))

(assert (= (and d!2323330 (not c!1404709)) b!7621854))

(assert (= (and b!7621854 c!1404710) b!7621860))

(assert (= (and b!7621854 (not c!1404710)) b!7621855))

(assert (= (and d!2323330 res!3051632) b!7621857))

(assert (= (and b!7621857 res!3051633) b!7621859))

(assert (= (and b!7621859 res!3051630) b!7621858))

(assert (= (and d!2323330 (not res!3051635)) b!7621853))

(declare-fun m!8153296 () Bool)

(assert (=> d!2323330 m!8153296))

(declare-fun m!8153298 () Bool)

(assert (=> d!2323330 m!8153298))

(assert (=> d!2323330 m!8153106))

(declare-fun m!8153300 () Bool)

(assert (=> b!7621855 m!8153300))

(assert (=> b!7621855 m!8153300))

(declare-fun m!8153302 () Bool)

(assert (=> b!7621855 m!8153302))

(declare-fun m!8153304 () Bool)

(assert (=> b!7621855 m!8153304))

(assert (=> b!7621855 m!8153300))

(declare-fun m!8153306 () Bool)

(assert (=> b!7621855 m!8153306))

(declare-fun m!8153308 () Bool)

(assert (=> b!7621857 m!8153308))

(declare-fun m!8153310 () Bool)

(assert (=> b!7621857 m!8153310))

(assert (=> b!7621858 m!8153308))

(declare-fun m!8153312 () Bool)

(assert (=> b!7621858 m!8153312))

(assert (=> b!7621853 m!8153296))

(assert (=> b!7621859 m!8153308))

(declare-fun m!8153314 () Bool)

(assert (=> b!7621859 m!8153314))

(assert (=> b!7621856 m!8153072))

(assert (=> b!7621466 d!2323330))

(declare-fun bs!1943429 () Bool)

(declare-fun d!2323332 () Bool)

(assert (= bs!1943429 (and d!2323332 b!7621769)))

(declare-fun lambda!468484 () Int)

(assert (=> bs!1943429 (not (= lambda!468484 lambda!468474))))

(declare-fun bs!1943430 () Bool)

(assert (= bs!1943430 (and d!2323332 b!7621475)))

(assert (=> bs!1943430 (not (= lambda!468484 lambda!468459))))

(declare-fun bs!1943431 () Bool)

(assert (= bs!1943431 (and d!2323332 b!7621466)))

(assert (=> bs!1943431 (= lambda!468484 lambda!468458)))

(declare-fun bs!1943432 () Bool)

(assert (= bs!1943432 (and d!2323332 b!7621762)))

(assert (=> bs!1943432 (not (= lambda!468484 lambda!468475))))

(declare-fun bs!1943433 () Bool)

(assert (= bs!1943433 (and d!2323332 b!7621787)))

(assert (=> bs!1943433 (not (= lambda!468484 lambda!468477))))

(declare-fun bs!1943434 () Bool)

(assert (= bs!1943434 (and d!2323332 b!7621794)))

(assert (=> bs!1943434 (not (= lambda!468484 lambda!468476))))

(assert (=> d!2323332 true))

(assert (=> d!2323332 true))

(assert (=> d!2323332 true))

(assert (=> d!2323332 (= (isDefined!14003 (findConcatSeparation!3417 (reg!20641 r!14126) r!14126 Nil!73041 s!9605 s!9605)) (Exists!4468 lambda!468484))))

(declare-fun lt!2656959 () Unit!167496)

(declare-fun choose!58812 (Regex!20312 Regex!20312 List!73165) Unit!167496)

(assert (=> d!2323332 (= lt!2656959 (choose!58812 (reg!20641 r!14126) r!14126 s!9605))))

(assert (=> d!2323332 (validRegex!10732 (reg!20641 r!14126))))

(assert (=> d!2323332 (= (lemmaFindConcatSeparationEquivalentToExists!3175 (reg!20641 r!14126) r!14126 s!9605) lt!2656959)))

(declare-fun bs!1943435 () Bool)

(assert (= bs!1943435 d!2323332))

(declare-fun m!8153316 () Bool)

(assert (=> bs!1943435 m!8153316))

(assert (=> bs!1943435 m!8153110))

(declare-fun m!8153318 () Bool)

(assert (=> bs!1943435 m!8153318))

(assert (=> bs!1943435 m!8153110))

(declare-fun m!8153320 () Bool)

(assert (=> bs!1943435 m!8153320))

(assert (=> bs!1943435 m!8153106))

(assert (=> b!7621466 d!2323332))

(declare-fun d!2323334 () Bool)

(assert (=> d!2323334 (= (isEmpty!41661 (_1!37896 cut!7)) (is-Nil!73041 (_1!37896 cut!7)))))

(assert (=> b!7621482 d!2323334))

(declare-fun b!7621876 () Bool)

(declare-fun e!4532093 () List!73165)

(assert (=> b!7621876 (= e!4532093 (Cons!73041 (h!79489 (_1!37896 cut!7)) (++!17622 (t!387900 (_1!37896 cut!7)) (_2!37896 cut!7))))))

(declare-fun b!7621875 () Bool)

(assert (=> b!7621875 (= e!4532093 (_2!37896 cut!7))))

(declare-fun b!7621877 () Bool)

(declare-fun res!3051649 () Bool)

(declare-fun e!4532092 () Bool)

(assert (=> b!7621877 (=> (not res!3051649) (not e!4532092))))

(declare-fun lt!2656960 () List!73165)

(assert (=> b!7621877 (= res!3051649 (= (size!42537 lt!2656960) (+ (size!42537 (_1!37896 cut!7)) (size!42537 (_2!37896 cut!7)))))))

(declare-fun b!7621878 () Bool)

(assert (=> b!7621878 (= e!4532092 (or (not (= (_2!37896 cut!7) Nil!73041)) (= lt!2656960 (_1!37896 cut!7))))))

(declare-fun d!2323336 () Bool)

(assert (=> d!2323336 e!4532092))

(declare-fun res!3051648 () Bool)

(assert (=> d!2323336 (=> (not res!3051648) (not e!4532092))))

(assert (=> d!2323336 (= res!3051648 (= (content!15444 lt!2656960) (set.union (content!15444 (_1!37896 cut!7)) (content!15444 (_2!37896 cut!7)))))))

(assert (=> d!2323336 (= lt!2656960 e!4532093)))

(declare-fun c!1404711 () Bool)

(assert (=> d!2323336 (= c!1404711 (is-Nil!73041 (_1!37896 cut!7)))))

(assert (=> d!2323336 (= (++!17622 (_1!37896 cut!7) (_2!37896 cut!7)) lt!2656960)))

(assert (= (and d!2323336 c!1404711) b!7621875))

(assert (= (and d!2323336 (not c!1404711)) b!7621876))

(assert (= (and d!2323336 res!3051648) b!7621877))

(assert (= (and b!7621877 res!3051649) b!7621878))

(declare-fun m!8153322 () Bool)

(assert (=> b!7621876 m!8153322))

(declare-fun m!8153324 () Bool)

(assert (=> b!7621877 m!8153324))

(declare-fun m!8153326 () Bool)

(assert (=> b!7621877 m!8153326))

(declare-fun m!8153328 () Bool)

(assert (=> b!7621877 m!8153328))

(declare-fun m!8153330 () Bool)

(assert (=> d!2323336 m!8153330))

(declare-fun m!8153332 () Bool)

(assert (=> d!2323336 m!8153332))

(declare-fun m!8153334 () Bool)

(assert (=> d!2323336 m!8153334))

(assert (=> b!7621475 d!2323336))

(declare-fun d!2323338 () Bool)

(assert (=> d!2323338 (Exists!4468 lambda!468459)))

(declare-fun lt!2656963 () Unit!167496)

(declare-fun choose!58813 (tuple2!69186 Int) Unit!167496)

(assert (=> d!2323338 (= lt!2656963 (choose!58813 lt!2656879 lambda!468459))))

(assert (=> d!2323338 (dynLambda!29917 lambda!468459 lt!2656879)))

(assert (=> d!2323338 (= (ExistsThe!41 lt!2656879 lambda!468459) lt!2656963)))

(declare-fun b_lambda!289005 () Bool)

(assert (=> (not b_lambda!289005) (not d!2323338)))

(declare-fun bs!1943436 () Bool)

(assert (= bs!1943436 d!2323338))

(declare-fun m!8153336 () Bool)

(assert (=> bs!1943436 m!8153336))

(declare-fun m!8153338 () Bool)

(assert (=> bs!1943436 m!8153338))

(declare-fun m!8153340 () Bool)

(assert (=> bs!1943436 m!8153340))

(assert (=> b!7621475 d!2323338))

(declare-fun b!7621879 () Bool)

(declare-fun e!4532099 () Bool)

(declare-fun e!4532100 () Bool)

(assert (=> b!7621879 (= e!4532099 e!4532100)))

(declare-fun res!3051652 () Bool)

(assert (=> b!7621879 (= res!3051652 (not (nullable!8879 (reg!20641 (reg!20641 r!14126)))))))

(assert (=> b!7621879 (=> (not res!3051652) (not e!4532100))))

(declare-fun b!7621880 () Bool)

(declare-fun e!4532094 () Bool)

(declare-fun call!700001 () Bool)

(assert (=> b!7621880 (= e!4532094 call!700001)))

(declare-fun b!7621881 () Bool)

(declare-fun e!4532097 () Bool)

(assert (=> b!7621881 (= e!4532097 e!4532099)))

(declare-fun c!1404713 () Bool)

(assert (=> b!7621881 (= c!1404713 (is-Star!20312 (reg!20641 r!14126)))))

(declare-fun b!7621882 () Bool)

(declare-fun res!3051651 () Bool)

(declare-fun e!4532098 () Bool)

(assert (=> b!7621882 (=> res!3051651 e!4532098)))

(assert (=> b!7621882 (= res!3051651 (not (is-Concat!29157 (reg!20641 r!14126))))))

(declare-fun e!4532095 () Bool)

(assert (=> b!7621882 (= e!4532095 e!4532098)))

(declare-fun bm!699995 () Bool)

(declare-fun call!700000 () Bool)

(assert (=> bm!699995 (= call!700001 call!700000)))

(declare-fun d!2323340 () Bool)

(declare-fun res!3051653 () Bool)

(assert (=> d!2323340 (=> res!3051653 e!4532097)))

(assert (=> d!2323340 (= res!3051653 (is-ElementMatch!20312 (reg!20641 r!14126)))))

(assert (=> d!2323340 (= (validRegex!10732 (reg!20641 r!14126)) e!4532097)))

(declare-fun bm!699996 () Bool)

(declare-fun call!700002 () Bool)

(declare-fun c!1404712 () Bool)

(assert (=> bm!699996 (= call!700002 (validRegex!10732 (ite c!1404712 (regOne!41137 (reg!20641 r!14126)) (regOne!41136 (reg!20641 r!14126)))))))

(declare-fun b!7621883 () Bool)

(declare-fun res!3051650 () Bool)

(declare-fun e!4532096 () Bool)

(assert (=> b!7621883 (=> (not res!3051650) (not e!4532096))))

(assert (=> b!7621883 (= res!3051650 call!700002)))

(assert (=> b!7621883 (= e!4532095 e!4532096)))

(declare-fun b!7621884 () Bool)

(assert (=> b!7621884 (= e!4532096 call!700001)))

(declare-fun b!7621885 () Bool)

(assert (=> b!7621885 (= e!4532098 e!4532094)))

(declare-fun res!3051654 () Bool)

(assert (=> b!7621885 (=> (not res!3051654) (not e!4532094))))

(assert (=> b!7621885 (= res!3051654 call!700002)))

(declare-fun b!7621886 () Bool)

(assert (=> b!7621886 (= e!4532100 call!700000)))

(declare-fun bm!699997 () Bool)

(assert (=> bm!699997 (= call!700000 (validRegex!10732 (ite c!1404713 (reg!20641 (reg!20641 r!14126)) (ite c!1404712 (regTwo!41137 (reg!20641 r!14126)) (regTwo!41136 (reg!20641 r!14126))))))))

(declare-fun b!7621887 () Bool)

(assert (=> b!7621887 (= e!4532099 e!4532095)))

(assert (=> b!7621887 (= c!1404712 (is-Union!20312 (reg!20641 r!14126)))))

(assert (= (and d!2323340 (not res!3051653)) b!7621881))

(assert (= (and b!7621881 c!1404713) b!7621879))

(assert (= (and b!7621881 (not c!1404713)) b!7621887))

(assert (= (and b!7621879 res!3051652) b!7621886))

(assert (= (and b!7621887 c!1404712) b!7621883))

(assert (= (and b!7621887 (not c!1404712)) b!7621882))

(assert (= (and b!7621883 res!3051650) b!7621884))

(assert (= (and b!7621882 (not res!3051651)) b!7621885))

(assert (= (and b!7621885 res!3051654) b!7621880))

(assert (= (or b!7621883 b!7621885) bm!699996))

(assert (= (or b!7621884 b!7621880) bm!699995))

(assert (= (or b!7621886 bm!699995) bm!699997))

(declare-fun m!8153342 () Bool)

(assert (=> b!7621879 m!8153342))

(declare-fun m!8153344 () Bool)

(assert (=> bm!699996 m!8153344))

(declare-fun m!8153346 () Bool)

(assert (=> bm!699997 m!8153346))

(assert (=> b!7621470 d!2323340))

(declare-fun b!7621888 () Bool)

(declare-fun res!3051655 () Bool)

(declare-fun e!4532101 () Bool)

(assert (=> b!7621888 (=> (not res!3051655) (not e!4532101))))

(declare-fun call!700003 () Bool)

(assert (=> b!7621888 (= res!3051655 (not call!700003))))

(declare-fun b!7621889 () Bool)

(declare-fun e!4532103 () Bool)

(assert (=> b!7621889 (= e!4532103 (nullable!8879 (reg!20641 r!14126)))))

(declare-fun b!7621890 () Bool)

(declare-fun e!4532102 () Bool)

(assert (=> b!7621890 (= e!4532102 (not (= (head!15657 (_1!37896 lt!2656880)) (c!1404634 (reg!20641 r!14126)))))))

(declare-fun b!7621891 () Bool)

(declare-fun res!3051661 () Bool)

(declare-fun e!4532105 () Bool)

(assert (=> b!7621891 (=> res!3051661 e!4532105)))

(assert (=> b!7621891 (= res!3051661 e!4532101)))

(declare-fun res!3051662 () Bool)

(assert (=> b!7621891 (=> (not res!3051662) (not e!4532101))))

(declare-fun lt!2656964 () Bool)

(assert (=> b!7621891 (= res!3051662 lt!2656964)))

(declare-fun d!2323342 () Bool)

(declare-fun e!4532106 () Bool)

(assert (=> d!2323342 e!4532106))

(declare-fun c!1404715 () Bool)

(assert (=> d!2323342 (= c!1404715 (is-EmptyExpr!20312 (reg!20641 r!14126)))))

(assert (=> d!2323342 (= lt!2656964 e!4532103)))

(declare-fun c!1404716 () Bool)

(assert (=> d!2323342 (= c!1404716 (isEmpty!41661 (_1!37896 lt!2656880)))))

(assert (=> d!2323342 (validRegex!10732 (reg!20641 r!14126))))

(assert (=> d!2323342 (= (matchR!9819 (reg!20641 r!14126) (_1!37896 lt!2656880)) lt!2656964)))

(declare-fun b!7621892 () Bool)

(declare-fun res!3051656 () Bool)

(assert (=> b!7621892 (=> res!3051656 e!4532102)))

(assert (=> b!7621892 (= res!3051656 (not (isEmpty!41661 (tail!15197 (_1!37896 lt!2656880)))))))

(declare-fun b!7621893 () Bool)

(declare-fun res!3051657 () Bool)

(assert (=> b!7621893 (=> (not res!3051657) (not e!4532101))))

(assert (=> b!7621893 (= res!3051657 (isEmpty!41661 (tail!15197 (_1!37896 lt!2656880))))))

(declare-fun b!7621894 () Bool)

(declare-fun res!3051658 () Bool)

(assert (=> b!7621894 (=> res!3051658 e!4532105)))

(assert (=> b!7621894 (= res!3051658 (not (is-ElementMatch!20312 (reg!20641 r!14126))))))

(declare-fun e!4532104 () Bool)

(assert (=> b!7621894 (= e!4532104 e!4532105)))

(declare-fun b!7621895 () Bool)

(assert (=> b!7621895 (= e!4532104 (not lt!2656964))))

(declare-fun bm!699998 () Bool)

(assert (=> bm!699998 (= call!700003 (isEmpty!41661 (_1!37896 lt!2656880)))))

(declare-fun b!7621896 () Bool)

(assert (=> b!7621896 (= e!4532101 (= (head!15657 (_1!37896 lt!2656880)) (c!1404634 (reg!20641 r!14126))))))

(declare-fun b!7621897 () Bool)

(assert (=> b!7621897 (= e!4532106 (= lt!2656964 call!700003))))

(declare-fun b!7621898 () Bool)

(assert (=> b!7621898 (= e!4532103 (matchR!9819 (derivativeStep!5857 (reg!20641 r!14126) (head!15657 (_1!37896 lt!2656880))) (tail!15197 (_1!37896 lt!2656880))))))

(declare-fun b!7621899 () Bool)

(declare-fun e!4532107 () Bool)

(assert (=> b!7621899 (= e!4532107 e!4532102)))

(declare-fun res!3051659 () Bool)

(assert (=> b!7621899 (=> res!3051659 e!4532102)))

(assert (=> b!7621899 (= res!3051659 call!700003)))

(declare-fun b!7621900 () Bool)

(assert (=> b!7621900 (= e!4532106 e!4532104)))

(declare-fun c!1404714 () Bool)

(assert (=> b!7621900 (= c!1404714 (is-EmptyLang!20312 (reg!20641 r!14126)))))

(declare-fun b!7621901 () Bool)

(assert (=> b!7621901 (= e!4532105 e!4532107)))

(declare-fun res!3051660 () Bool)

(assert (=> b!7621901 (=> (not res!3051660) (not e!4532107))))

(assert (=> b!7621901 (= res!3051660 (not lt!2656964))))

(assert (= (and d!2323342 c!1404716) b!7621889))

(assert (= (and d!2323342 (not c!1404716)) b!7621898))

(assert (= (and d!2323342 c!1404715) b!7621897))

(assert (= (and d!2323342 (not c!1404715)) b!7621900))

(assert (= (and b!7621900 c!1404714) b!7621895))

(assert (= (and b!7621900 (not c!1404714)) b!7621894))

(assert (= (and b!7621894 (not res!3051658)) b!7621891))

(assert (= (and b!7621891 res!3051662) b!7621888))

(assert (= (and b!7621888 res!3051655) b!7621893))

(assert (= (and b!7621893 res!3051657) b!7621896))

(assert (= (and b!7621891 (not res!3051661)) b!7621901))

(assert (= (and b!7621901 res!3051660) b!7621899))

(assert (= (and b!7621899 (not res!3051659)) b!7621892))

(assert (= (and b!7621892 (not res!3051656)) b!7621890))

(assert (= (or b!7621897 b!7621888 b!7621899) bm!699998))

(declare-fun m!8153348 () Bool)

(assert (=> b!7621896 m!8153348))

(assert (=> b!7621890 m!8153348))

(declare-fun m!8153350 () Bool)

(assert (=> b!7621893 m!8153350))

(assert (=> b!7621893 m!8153350))

(declare-fun m!8153352 () Bool)

(assert (=> b!7621893 m!8153352))

(assert (=> b!7621898 m!8153348))

(assert (=> b!7621898 m!8153348))

(declare-fun m!8153354 () Bool)

(assert (=> b!7621898 m!8153354))

(assert (=> b!7621898 m!8153350))

(assert (=> b!7621898 m!8153354))

(assert (=> b!7621898 m!8153350))

(declare-fun m!8153356 () Bool)

(assert (=> b!7621898 m!8153356))

(declare-fun m!8153358 () Bool)

(assert (=> d!2323342 m!8153358))

(assert (=> d!2323342 m!8153106))

(assert (=> b!7621889 m!8153090))

(assert (=> bm!699998 m!8153358))

(assert (=> b!7621892 m!8153350))

(assert (=> b!7621892 m!8153350))

(assert (=> b!7621892 m!8153352))

(assert (=> b!7621468 d!2323342))

(declare-fun d!2323344 () Bool)

(assert (=> d!2323344 (= (matchR!9819 (reg!20641 r!14126) (_1!37896 lt!2656880)) (matchRSpec!4511 (reg!20641 r!14126) (_1!37896 lt!2656880)))))

(declare-fun lt!2656965 () Unit!167496)

(assert (=> d!2323344 (= lt!2656965 (choose!58810 (reg!20641 r!14126) (_1!37896 lt!2656880)))))

(assert (=> d!2323344 (validRegex!10732 (reg!20641 r!14126))))

(assert (=> d!2323344 (= (mainMatchTheorem!4505 (reg!20641 r!14126) (_1!37896 lt!2656880)) lt!2656965)))

(declare-fun bs!1943437 () Bool)

(assert (= bs!1943437 d!2323344))

(assert (=> bs!1943437 m!8153076))

(assert (=> bs!1943437 m!8153070))

(declare-fun m!8153360 () Bool)

(assert (=> bs!1943437 m!8153360))

(assert (=> bs!1943437 m!8153106))

(assert (=> b!7621468 d!2323344))

(declare-fun b!7621902 () Bool)

(declare-fun res!3051663 () Bool)

(declare-fun e!4532108 () Bool)

(assert (=> b!7621902 (=> (not res!3051663) (not e!4532108))))

(declare-fun call!700004 () Bool)

(assert (=> b!7621902 (= res!3051663 (not call!700004))))

(declare-fun b!7621903 () Bool)

(declare-fun e!4532110 () Bool)

(assert (=> b!7621903 (= e!4532110 (nullable!8879 r!14126))))

(declare-fun b!7621904 () Bool)

(declare-fun e!4532109 () Bool)

(assert (=> b!7621904 (= e!4532109 (not (= (head!15657 (_2!37896 lt!2656880)) (c!1404634 r!14126))))))

(declare-fun b!7621905 () Bool)

(declare-fun res!3051669 () Bool)

(declare-fun e!4532112 () Bool)

(assert (=> b!7621905 (=> res!3051669 e!4532112)))

(assert (=> b!7621905 (= res!3051669 e!4532108)))

(declare-fun res!3051670 () Bool)

(assert (=> b!7621905 (=> (not res!3051670) (not e!4532108))))

(declare-fun lt!2656966 () Bool)

(assert (=> b!7621905 (= res!3051670 lt!2656966)))

(declare-fun d!2323346 () Bool)

(declare-fun e!4532113 () Bool)

(assert (=> d!2323346 e!4532113))

(declare-fun c!1404718 () Bool)

(assert (=> d!2323346 (= c!1404718 (is-EmptyExpr!20312 r!14126))))

(assert (=> d!2323346 (= lt!2656966 e!4532110)))

(declare-fun c!1404719 () Bool)

(assert (=> d!2323346 (= c!1404719 (isEmpty!41661 (_2!37896 lt!2656880)))))

(assert (=> d!2323346 (validRegex!10732 r!14126)))

(assert (=> d!2323346 (= (matchR!9819 r!14126 (_2!37896 lt!2656880)) lt!2656966)))

(declare-fun b!7621906 () Bool)

(declare-fun res!3051664 () Bool)

(assert (=> b!7621906 (=> res!3051664 e!4532109)))

(assert (=> b!7621906 (= res!3051664 (not (isEmpty!41661 (tail!15197 (_2!37896 lt!2656880)))))))

(declare-fun b!7621907 () Bool)

(declare-fun res!3051665 () Bool)

(assert (=> b!7621907 (=> (not res!3051665) (not e!4532108))))

(assert (=> b!7621907 (= res!3051665 (isEmpty!41661 (tail!15197 (_2!37896 lt!2656880))))))

(declare-fun b!7621908 () Bool)

(declare-fun res!3051666 () Bool)

(assert (=> b!7621908 (=> res!3051666 e!4532112)))

(assert (=> b!7621908 (= res!3051666 (not (is-ElementMatch!20312 r!14126)))))

(declare-fun e!4532111 () Bool)

(assert (=> b!7621908 (= e!4532111 e!4532112)))

(declare-fun b!7621909 () Bool)

(assert (=> b!7621909 (= e!4532111 (not lt!2656966))))

(declare-fun bm!699999 () Bool)

(assert (=> bm!699999 (= call!700004 (isEmpty!41661 (_2!37896 lt!2656880)))))

(declare-fun b!7621910 () Bool)

(assert (=> b!7621910 (= e!4532108 (= (head!15657 (_2!37896 lt!2656880)) (c!1404634 r!14126)))))

(declare-fun b!7621911 () Bool)

(assert (=> b!7621911 (= e!4532113 (= lt!2656966 call!700004))))

(declare-fun b!7621912 () Bool)

(assert (=> b!7621912 (= e!4532110 (matchR!9819 (derivativeStep!5857 r!14126 (head!15657 (_2!37896 lt!2656880))) (tail!15197 (_2!37896 lt!2656880))))))

(declare-fun b!7621913 () Bool)

(declare-fun e!4532114 () Bool)

(assert (=> b!7621913 (= e!4532114 e!4532109)))

(declare-fun res!3051667 () Bool)

(assert (=> b!7621913 (=> res!3051667 e!4532109)))

(assert (=> b!7621913 (= res!3051667 call!700004)))

(declare-fun b!7621914 () Bool)

(assert (=> b!7621914 (= e!4532113 e!4532111)))

(declare-fun c!1404717 () Bool)

(assert (=> b!7621914 (= c!1404717 (is-EmptyLang!20312 r!14126))))

(declare-fun b!7621915 () Bool)

(assert (=> b!7621915 (= e!4532112 e!4532114)))

(declare-fun res!3051668 () Bool)

(assert (=> b!7621915 (=> (not res!3051668) (not e!4532114))))

(assert (=> b!7621915 (= res!3051668 (not lt!2656966))))

(assert (= (and d!2323346 c!1404719) b!7621903))

(assert (= (and d!2323346 (not c!1404719)) b!7621912))

(assert (= (and d!2323346 c!1404718) b!7621911))

(assert (= (and d!2323346 (not c!1404718)) b!7621914))

(assert (= (and b!7621914 c!1404717) b!7621909))

(assert (= (and b!7621914 (not c!1404717)) b!7621908))

(assert (= (and b!7621908 (not res!3051666)) b!7621905))

(assert (= (and b!7621905 res!3051670) b!7621902))

(assert (= (and b!7621902 res!3051663) b!7621907))

(assert (= (and b!7621907 res!3051665) b!7621910))

(assert (= (and b!7621905 (not res!3051669)) b!7621915))

(assert (= (and b!7621915 res!3051668) b!7621913))

(assert (= (and b!7621913 (not res!3051667)) b!7621906))

(assert (= (and b!7621906 (not res!3051664)) b!7621904))

(assert (= (or b!7621911 b!7621902 b!7621913) bm!699999))

(declare-fun m!8153362 () Bool)

(assert (=> b!7621910 m!8153362))

(assert (=> b!7621904 m!8153362))

(declare-fun m!8153364 () Bool)

(assert (=> b!7621907 m!8153364))

(assert (=> b!7621907 m!8153364))

(declare-fun m!8153366 () Bool)

(assert (=> b!7621907 m!8153366))

(assert (=> b!7621912 m!8153362))

(assert (=> b!7621912 m!8153362))

(declare-fun m!8153368 () Bool)

(assert (=> b!7621912 m!8153368))

(assert (=> b!7621912 m!8153364))

(assert (=> b!7621912 m!8153368))

(assert (=> b!7621912 m!8153364))

(declare-fun m!8153370 () Bool)

(assert (=> b!7621912 m!8153370))

(declare-fun m!8153372 () Bool)

(assert (=> d!2323346 m!8153372))

(assert (=> d!2323346 m!8153058))

(assert (=> b!7621903 m!8153204))

(assert (=> bm!699999 m!8153372))

(assert (=> b!7621906 m!8153364))

(assert (=> b!7621906 m!8153364))

(assert (=> b!7621906 m!8153366))

(assert (=> b!7621468 d!2323346))

(assert (=> b!7621468 d!2323326))

(declare-fun d!2323348 () Bool)

(assert (=> d!2323348 (= (get!25780 lt!2656867) (v!54521 lt!2656867))))

(assert (=> b!7621468 d!2323348))

(declare-fun d!2323350 () Bool)

(assert (=> d!2323350 (= (matchR!9819 r!14126 (_2!37896 lt!2656880)) (matchRSpec!4511 r!14126 (_2!37896 lt!2656880)))))

(declare-fun lt!2656967 () Unit!167496)

(assert (=> d!2323350 (= lt!2656967 (choose!58810 r!14126 (_2!37896 lt!2656880)))))

(assert (=> d!2323350 (validRegex!10732 r!14126)))

(assert (=> d!2323350 (= (mainMatchTheorem!4505 r!14126 (_2!37896 lt!2656880)) lt!2656967)))

(declare-fun bs!1943438 () Bool)

(assert (= bs!1943438 d!2323350))

(assert (=> bs!1943438 m!8153066))

(assert (=> bs!1943438 m!8153074))

(declare-fun m!8153374 () Bool)

(assert (=> bs!1943438 m!8153374))

(assert (=> bs!1943438 m!8153058))

(assert (=> b!7621468 d!2323350))

(declare-fun bs!1943439 () Bool)

(declare-fun b!7621923 () Bool)

(assert (= bs!1943439 (and b!7621923 d!2323332)))

(declare-fun lambda!468485 () Int)

(assert (=> bs!1943439 (not (= lambda!468485 lambda!468484))))

(declare-fun bs!1943440 () Bool)

(assert (= bs!1943440 (and b!7621923 b!7621769)))

(assert (=> bs!1943440 (= (and (= (_1!37896 lt!2656880) (_2!37896 lt!2656879)) (= (reg!20641 (reg!20641 r!14126)) (reg!20641 r!14126)) (= (reg!20641 r!14126) r!14126)) (= lambda!468485 lambda!468474))))

(declare-fun bs!1943441 () Bool)

(assert (= bs!1943441 (and b!7621923 b!7621475)))

(assert (=> bs!1943441 (= (and (= (_1!37896 lt!2656880) s!9605) (= (reg!20641 (reg!20641 r!14126)) (reg!20641 r!14126)) (= (reg!20641 r!14126) r!14126)) (= lambda!468485 lambda!468459))))

(declare-fun bs!1943442 () Bool)

(assert (= bs!1943442 (and b!7621923 b!7621466)))

(assert (=> bs!1943442 (not (= lambda!468485 lambda!468458))))

(declare-fun bs!1943443 () Bool)

(assert (= bs!1943443 (and b!7621923 b!7621762)))

(assert (=> bs!1943443 (not (= lambda!468485 lambda!468475))))

(declare-fun bs!1943444 () Bool)

(assert (= bs!1943444 (and b!7621923 b!7621787)))

(assert (=> bs!1943444 (not (= lambda!468485 lambda!468477))))

(declare-fun bs!1943445 () Bool)

(assert (= bs!1943445 (and b!7621923 b!7621794)))

(assert (=> bs!1943445 (= (= (_1!37896 lt!2656880) (_1!37896 lt!2656879)) (= lambda!468485 lambda!468476))))

(assert (=> b!7621923 true))

(assert (=> b!7621923 true))

(declare-fun bs!1943446 () Bool)

(declare-fun b!7621916 () Bool)

(assert (= bs!1943446 (and b!7621916 d!2323332)))

(declare-fun lambda!468487 () Int)

(assert (=> bs!1943446 (not (= lambda!468487 lambda!468484))))

(declare-fun bs!1943447 () Bool)

(assert (= bs!1943447 (and b!7621916 b!7621769)))

(assert (=> bs!1943447 (not (= lambda!468487 lambda!468474))))

(declare-fun bs!1943448 () Bool)

(assert (= bs!1943448 (and b!7621916 b!7621475)))

(assert (=> bs!1943448 (not (= lambda!468487 lambda!468459))))

(declare-fun bs!1943450 () Bool)

(assert (= bs!1943450 (and b!7621916 b!7621466)))

(assert (=> bs!1943450 (not (= lambda!468487 lambda!468458))))

(declare-fun bs!1943451 () Bool)

(assert (= bs!1943451 (and b!7621916 b!7621762)))

(assert (=> bs!1943451 (= (and (= (_1!37896 lt!2656880) (_2!37896 lt!2656879)) (= (regOne!41136 (reg!20641 r!14126)) (regOne!41136 r!14126)) (= (regTwo!41136 (reg!20641 r!14126)) (regTwo!41136 r!14126))) (= lambda!468487 lambda!468475))))

(declare-fun bs!1943452 () Bool)

(assert (= bs!1943452 (and b!7621916 b!7621787)))

(assert (=> bs!1943452 (= (= (_1!37896 lt!2656880) (_1!37896 lt!2656879)) (= lambda!468487 lambda!468477))))

(declare-fun bs!1943454 () Bool)

(assert (= bs!1943454 (and b!7621916 b!7621923)))

(assert (=> bs!1943454 (not (= lambda!468487 lambda!468485))))

(declare-fun bs!1943455 () Bool)

(assert (= bs!1943455 (and b!7621916 b!7621794)))

(assert (=> bs!1943455 (not (= lambda!468487 lambda!468476))))

(assert (=> b!7621916 true))

(assert (=> b!7621916 true))

(declare-fun e!4532118 () Bool)

(declare-fun call!700005 () Bool)

(assert (=> b!7621916 (= e!4532118 call!700005)))

(declare-fun bm!700000 () Bool)

(declare-fun call!700006 () Bool)

(assert (=> bm!700000 (= call!700006 (isEmpty!41661 (_1!37896 lt!2656880)))))

(declare-fun b!7621917 () Bool)

(declare-fun e!4532121 () Bool)

(assert (=> b!7621917 (= e!4532121 e!4532118)))

(declare-fun c!1404723 () Bool)

(assert (=> b!7621917 (= c!1404723 (is-Star!20312 (reg!20641 r!14126)))))

(declare-fun b!7621918 () Bool)

(declare-fun e!4532119 () Bool)

(assert (=> b!7621918 (= e!4532121 e!4532119)))

(declare-fun res!3051672 () Bool)

(assert (=> b!7621918 (= res!3051672 (matchRSpec!4511 (regOne!41137 (reg!20641 r!14126)) (_1!37896 lt!2656880)))))

(assert (=> b!7621918 (=> res!3051672 e!4532119)))

(declare-fun b!7621919 () Bool)

(declare-fun e!4532120 () Bool)

(assert (=> b!7621919 (= e!4532120 call!700006)))

(declare-fun d!2323352 () Bool)

(declare-fun c!1404720 () Bool)

(assert (=> d!2323352 (= c!1404720 (is-EmptyExpr!20312 (reg!20641 r!14126)))))

(assert (=> d!2323352 (= (matchRSpec!4511 (reg!20641 r!14126) (_1!37896 lt!2656880)) e!4532120)))

(declare-fun b!7621920 () Bool)

(declare-fun c!1404722 () Bool)

(assert (=> b!7621920 (= c!1404722 (is-ElementMatch!20312 (reg!20641 r!14126)))))

(declare-fun e!4532117 () Bool)

(declare-fun e!4532116 () Bool)

(assert (=> b!7621920 (= e!4532117 e!4532116)))

(declare-fun bm!700001 () Bool)

(assert (=> bm!700001 (= call!700005 (Exists!4468 (ite c!1404723 lambda!468485 lambda!468487)))))

(declare-fun b!7621921 () Bool)

(declare-fun res!3051671 () Bool)

(declare-fun e!4532115 () Bool)

(assert (=> b!7621921 (=> res!3051671 e!4532115)))

(assert (=> b!7621921 (= res!3051671 call!700006)))

(assert (=> b!7621921 (= e!4532118 e!4532115)))

(declare-fun b!7621922 () Bool)

(assert (=> b!7621922 (= e!4532119 (matchRSpec!4511 (regTwo!41137 (reg!20641 r!14126)) (_1!37896 lt!2656880)))))

(assert (=> b!7621923 (= e!4532115 call!700005)))

(declare-fun b!7621924 () Bool)

(assert (=> b!7621924 (= e!4532120 e!4532117)))

(declare-fun res!3051673 () Bool)

(assert (=> b!7621924 (= res!3051673 (not (is-EmptyLang!20312 (reg!20641 r!14126))))))

(assert (=> b!7621924 (=> (not res!3051673) (not e!4532117))))

(declare-fun b!7621925 () Bool)

(declare-fun c!1404721 () Bool)

(assert (=> b!7621925 (= c!1404721 (is-Union!20312 (reg!20641 r!14126)))))

(assert (=> b!7621925 (= e!4532116 e!4532121)))

(declare-fun b!7621926 () Bool)

(assert (=> b!7621926 (= e!4532116 (= (_1!37896 lt!2656880) (Cons!73041 (c!1404634 (reg!20641 r!14126)) Nil!73041)))))

(assert (= (and d!2323352 c!1404720) b!7621919))

(assert (= (and d!2323352 (not c!1404720)) b!7621924))

(assert (= (and b!7621924 res!3051673) b!7621920))

(assert (= (and b!7621920 c!1404722) b!7621926))

(assert (= (and b!7621920 (not c!1404722)) b!7621925))

(assert (= (and b!7621925 c!1404721) b!7621918))

(assert (= (and b!7621925 (not c!1404721)) b!7621917))

(assert (= (and b!7621918 (not res!3051672)) b!7621922))

(assert (= (and b!7621917 c!1404723) b!7621921))

(assert (= (and b!7621917 (not c!1404723)) b!7621916))

(assert (= (and b!7621921 (not res!3051671)) b!7621923))

(assert (= (or b!7621923 b!7621916) bm!700001))

(assert (= (or b!7621919 b!7621921) bm!700000))

(assert (=> bm!700000 m!8153358))

(declare-fun m!8153376 () Bool)

(assert (=> b!7621918 m!8153376))

(declare-fun m!8153378 () Bool)

(assert (=> bm!700001 m!8153378))

(declare-fun m!8153380 () Bool)

(assert (=> b!7621922 m!8153380))

(assert (=> b!7621468 d!2323352))

(declare-fun bs!1943457 () Bool)

(declare-fun b!7621945 () Bool)

(assert (= bs!1943457 (and b!7621945 d!2323332)))

(declare-fun lambda!468489 () Int)

(assert (=> bs!1943457 (not (= lambda!468489 lambda!468484))))

(declare-fun bs!1943458 () Bool)

(assert (= bs!1943458 (and b!7621945 b!7621769)))

(assert (=> bs!1943458 (= (= (_2!37896 lt!2656880) (_2!37896 lt!2656879)) (= lambda!468489 lambda!468474))))

(declare-fun bs!1943459 () Bool)

(assert (= bs!1943459 (and b!7621945 b!7621475)))

(assert (=> bs!1943459 (= (= (_2!37896 lt!2656880) s!9605) (= lambda!468489 lambda!468459))))

(declare-fun bs!1943461 () Bool)

(assert (= bs!1943461 (and b!7621945 b!7621466)))

(assert (=> bs!1943461 (not (= lambda!468489 lambda!468458))))

(declare-fun bs!1943462 () Bool)

(assert (= bs!1943462 (and b!7621945 b!7621916)))

(assert (=> bs!1943462 (not (= lambda!468489 lambda!468487))))

(declare-fun bs!1943464 () Bool)

(assert (= bs!1943464 (and b!7621945 b!7621762)))

(assert (=> bs!1943464 (not (= lambda!468489 lambda!468475))))

(declare-fun bs!1943465 () Bool)

(assert (= bs!1943465 (and b!7621945 b!7621787)))

(assert (=> bs!1943465 (not (= lambda!468489 lambda!468477))))

(declare-fun bs!1943466 () Bool)

(assert (= bs!1943466 (and b!7621945 b!7621923)))

(assert (=> bs!1943466 (= (and (= (_2!37896 lt!2656880) (_1!37896 lt!2656880)) (= (reg!20641 r!14126) (reg!20641 (reg!20641 r!14126))) (= r!14126 (reg!20641 r!14126))) (= lambda!468489 lambda!468485))))

(declare-fun bs!1943467 () Bool)

(assert (= bs!1943467 (and b!7621945 b!7621794)))

(assert (=> bs!1943467 (= (and (= (_2!37896 lt!2656880) (_1!37896 lt!2656879)) (= (reg!20641 r!14126) (reg!20641 (reg!20641 r!14126))) (= r!14126 (reg!20641 r!14126))) (= lambda!468489 lambda!468476))))

(assert (=> b!7621945 true))

(assert (=> b!7621945 true))

(declare-fun bs!1943468 () Bool)

(declare-fun b!7621938 () Bool)

(assert (= bs!1943468 (and b!7621938 d!2323332)))

(declare-fun lambda!468490 () Int)

(assert (=> bs!1943468 (not (= lambda!468490 lambda!468484))))

(declare-fun bs!1943469 () Bool)

(assert (= bs!1943469 (and b!7621938 b!7621769)))

(assert (=> bs!1943469 (not (= lambda!468490 lambda!468474))))

(declare-fun bs!1943470 () Bool)

(assert (= bs!1943470 (and b!7621938 b!7621475)))

(assert (=> bs!1943470 (not (= lambda!468490 lambda!468459))))

(declare-fun bs!1943471 () Bool)

(assert (= bs!1943471 (and b!7621938 b!7621945)))

(assert (=> bs!1943471 (not (= lambda!468490 lambda!468489))))

(declare-fun bs!1943472 () Bool)

(assert (= bs!1943472 (and b!7621938 b!7621466)))

(assert (=> bs!1943472 (not (= lambda!468490 lambda!468458))))

(declare-fun bs!1943473 () Bool)

(assert (= bs!1943473 (and b!7621938 b!7621916)))

(assert (=> bs!1943473 (= (and (= (_2!37896 lt!2656880) (_1!37896 lt!2656880)) (= (regOne!41136 r!14126) (regOne!41136 (reg!20641 r!14126))) (= (regTwo!41136 r!14126) (regTwo!41136 (reg!20641 r!14126)))) (= lambda!468490 lambda!468487))))

(declare-fun bs!1943474 () Bool)

(assert (= bs!1943474 (and b!7621938 b!7621762)))

(assert (=> bs!1943474 (= (= (_2!37896 lt!2656880) (_2!37896 lt!2656879)) (= lambda!468490 lambda!468475))))

(declare-fun bs!1943475 () Bool)

(assert (= bs!1943475 (and b!7621938 b!7621787)))

(assert (=> bs!1943475 (= (and (= (_2!37896 lt!2656880) (_1!37896 lt!2656879)) (= (regOne!41136 r!14126) (regOne!41136 (reg!20641 r!14126))) (= (regTwo!41136 r!14126) (regTwo!41136 (reg!20641 r!14126)))) (= lambda!468490 lambda!468477))))

(declare-fun bs!1943476 () Bool)

(assert (= bs!1943476 (and b!7621938 b!7621923)))

(assert (=> bs!1943476 (not (= lambda!468490 lambda!468485))))

(declare-fun bs!1943477 () Bool)

(assert (= bs!1943477 (and b!7621938 b!7621794)))

(assert (=> bs!1943477 (not (= lambda!468490 lambda!468476))))

(assert (=> b!7621938 true))

(assert (=> b!7621938 true))

(declare-fun e!4532132 () Bool)

(declare-fun call!700009 () Bool)

(assert (=> b!7621938 (= e!4532132 call!700009)))

(declare-fun bm!700004 () Bool)

(declare-fun call!700010 () Bool)

(assert (=> bm!700004 (= call!700010 (isEmpty!41661 (_2!37896 lt!2656880)))))

(declare-fun b!7621939 () Bool)

(declare-fun e!4532135 () Bool)

(assert (=> b!7621939 (= e!4532135 e!4532132)))

(declare-fun c!1404731 () Bool)

(assert (=> b!7621939 (= c!1404731 (is-Star!20312 r!14126))))

(declare-fun b!7621940 () Bool)

(declare-fun e!4532133 () Bool)

(assert (=> b!7621940 (= e!4532135 e!4532133)))

(declare-fun res!3051678 () Bool)

(assert (=> b!7621940 (= res!3051678 (matchRSpec!4511 (regOne!41137 r!14126) (_2!37896 lt!2656880)))))

(assert (=> b!7621940 (=> res!3051678 e!4532133)))

(declare-fun b!7621941 () Bool)

(declare-fun e!4532134 () Bool)

(assert (=> b!7621941 (= e!4532134 call!700010)))

(declare-fun d!2323354 () Bool)

(declare-fun c!1404728 () Bool)

(assert (=> d!2323354 (= c!1404728 (is-EmptyExpr!20312 r!14126))))

(assert (=> d!2323354 (= (matchRSpec!4511 r!14126 (_2!37896 lt!2656880)) e!4532134)))

(declare-fun b!7621942 () Bool)

(declare-fun c!1404730 () Bool)

(assert (=> b!7621942 (= c!1404730 (is-ElementMatch!20312 r!14126))))

(declare-fun e!4532131 () Bool)

(declare-fun e!4532130 () Bool)

(assert (=> b!7621942 (= e!4532131 e!4532130)))

(declare-fun bm!700005 () Bool)

(assert (=> bm!700005 (= call!700009 (Exists!4468 (ite c!1404731 lambda!468489 lambda!468490)))))

(declare-fun b!7621943 () Bool)

(declare-fun res!3051677 () Bool)

(declare-fun e!4532129 () Bool)

(assert (=> b!7621943 (=> res!3051677 e!4532129)))

(assert (=> b!7621943 (= res!3051677 call!700010)))

(assert (=> b!7621943 (= e!4532132 e!4532129)))

(declare-fun b!7621944 () Bool)

(assert (=> b!7621944 (= e!4532133 (matchRSpec!4511 (regTwo!41137 r!14126) (_2!37896 lt!2656880)))))

(assert (=> b!7621945 (= e!4532129 call!700009)))

(declare-fun b!7621946 () Bool)

(assert (=> b!7621946 (= e!4532134 e!4532131)))

(declare-fun res!3051679 () Bool)

(assert (=> b!7621946 (= res!3051679 (not (is-EmptyLang!20312 r!14126)))))

(assert (=> b!7621946 (=> (not res!3051679) (not e!4532131))))

(declare-fun b!7621947 () Bool)

(declare-fun c!1404729 () Bool)

(assert (=> b!7621947 (= c!1404729 (is-Union!20312 r!14126))))

(assert (=> b!7621947 (= e!4532130 e!4532135)))

(declare-fun b!7621948 () Bool)

(assert (=> b!7621948 (= e!4532130 (= (_2!37896 lt!2656880) (Cons!73041 (c!1404634 r!14126) Nil!73041)))))

(assert (= (and d!2323354 c!1404728) b!7621941))

(assert (= (and d!2323354 (not c!1404728)) b!7621946))

(assert (= (and b!7621946 res!3051679) b!7621942))

(assert (= (and b!7621942 c!1404730) b!7621948))

(assert (= (and b!7621942 (not c!1404730)) b!7621947))

(assert (= (and b!7621947 c!1404729) b!7621940))

(assert (= (and b!7621947 (not c!1404729)) b!7621939))

(assert (= (and b!7621940 (not res!3051678)) b!7621944))

(assert (= (and b!7621939 c!1404731) b!7621943))

(assert (= (and b!7621939 (not c!1404731)) b!7621938))

(assert (= (and b!7621943 (not res!3051677)) b!7621945))

(assert (= (or b!7621945 b!7621938) bm!700005))

(assert (= (or b!7621941 b!7621943) bm!700004))

(assert (=> bm!700004 m!8153372))

(declare-fun m!8153390 () Bool)

(assert (=> b!7621940 m!8153390))

(declare-fun m!8153392 () Bool)

(assert (=> bm!700005 m!8153392))

(declare-fun m!8153394 () Bool)

(assert (=> b!7621944 m!8153394))

(assert (=> b!7621468 d!2323354))

(declare-fun b!7621960 () Bool)

(declare-fun res!3051683 () Bool)

(declare-fun e!4532143 () Bool)

(assert (=> b!7621960 (=> (not res!3051683) (not e!4532143))))

(declare-fun call!700013 () Bool)

(assert (=> b!7621960 (= res!3051683 (not call!700013))))

(declare-fun b!7621961 () Bool)

(declare-fun e!4532145 () Bool)

(assert (=> b!7621961 (= e!4532145 (nullable!8879 r!14126))))

(declare-fun b!7621962 () Bool)

(declare-fun e!4532144 () Bool)

(assert (=> b!7621962 (= e!4532144 (not (= (head!15657 s!9605) (c!1404634 r!14126))))))

(declare-fun b!7621963 () Bool)

(declare-fun res!3051689 () Bool)

(declare-fun e!4532147 () Bool)

(assert (=> b!7621963 (=> res!3051689 e!4532147)))

(assert (=> b!7621963 (= res!3051689 e!4532143)))

(declare-fun res!3051690 () Bool)

(assert (=> b!7621963 (=> (not res!3051690) (not e!4532143))))

(declare-fun lt!2656968 () Bool)

(assert (=> b!7621963 (= res!3051690 lt!2656968)))

(declare-fun d!2323358 () Bool)

(declare-fun e!4532148 () Bool)

(assert (=> d!2323358 e!4532148))

(declare-fun c!1404737 () Bool)

(assert (=> d!2323358 (= c!1404737 (is-EmptyExpr!20312 r!14126))))

(assert (=> d!2323358 (= lt!2656968 e!4532145)))

(declare-fun c!1404738 () Bool)

(assert (=> d!2323358 (= c!1404738 (isEmpty!41661 s!9605))))

(assert (=> d!2323358 (validRegex!10732 r!14126)))

(assert (=> d!2323358 (= (matchR!9819 r!14126 s!9605) lt!2656968)))

(declare-fun b!7621964 () Bool)

(declare-fun res!3051684 () Bool)

(assert (=> b!7621964 (=> res!3051684 e!4532144)))

(assert (=> b!7621964 (= res!3051684 (not (isEmpty!41661 (tail!15197 s!9605))))))

(declare-fun b!7621965 () Bool)

(declare-fun res!3051685 () Bool)

(assert (=> b!7621965 (=> (not res!3051685) (not e!4532143))))

(assert (=> b!7621965 (= res!3051685 (isEmpty!41661 (tail!15197 s!9605)))))

(declare-fun b!7621966 () Bool)

(declare-fun res!3051686 () Bool)

(assert (=> b!7621966 (=> res!3051686 e!4532147)))

(assert (=> b!7621966 (= res!3051686 (not (is-ElementMatch!20312 r!14126)))))

(declare-fun e!4532146 () Bool)

(assert (=> b!7621966 (= e!4532146 e!4532147)))

(declare-fun b!7621967 () Bool)

(assert (=> b!7621967 (= e!4532146 (not lt!2656968))))

(declare-fun bm!700008 () Bool)

(assert (=> bm!700008 (= call!700013 (isEmpty!41661 s!9605))))

(declare-fun b!7621968 () Bool)

(assert (=> b!7621968 (= e!4532143 (= (head!15657 s!9605) (c!1404634 r!14126)))))

(declare-fun b!7621969 () Bool)

(assert (=> b!7621969 (= e!4532148 (= lt!2656968 call!700013))))

(declare-fun b!7621970 () Bool)

(assert (=> b!7621970 (= e!4532145 (matchR!9819 (derivativeStep!5857 r!14126 (head!15657 s!9605)) (tail!15197 s!9605)))))

(declare-fun b!7621971 () Bool)

(declare-fun e!4532149 () Bool)

(assert (=> b!7621971 (= e!4532149 e!4532144)))

(declare-fun res!3051687 () Bool)

(assert (=> b!7621971 (=> res!3051687 e!4532144)))

(assert (=> b!7621971 (= res!3051687 call!700013)))

(declare-fun b!7621972 () Bool)

(assert (=> b!7621972 (= e!4532148 e!4532146)))

(declare-fun c!1404736 () Bool)

(assert (=> b!7621972 (= c!1404736 (is-EmptyLang!20312 r!14126))))

(declare-fun b!7621973 () Bool)

(assert (=> b!7621973 (= e!4532147 e!4532149)))

(declare-fun res!3051688 () Bool)

(assert (=> b!7621973 (=> (not res!3051688) (not e!4532149))))

(assert (=> b!7621973 (= res!3051688 (not lt!2656968))))

(assert (= (and d!2323358 c!1404738) b!7621961))

(assert (= (and d!2323358 (not c!1404738)) b!7621970))

(assert (= (and d!2323358 c!1404737) b!7621969))

(assert (= (and d!2323358 (not c!1404737)) b!7621972))

(assert (= (and b!7621972 c!1404736) b!7621967))

(assert (= (and b!7621972 (not c!1404736)) b!7621966))

(assert (= (and b!7621966 (not res!3051686)) b!7621963))

(assert (= (and b!7621963 res!3051690) b!7621960))

(assert (= (and b!7621960 res!3051683) b!7621965))

(assert (= (and b!7621965 res!3051685) b!7621968))

(assert (= (and b!7621963 (not res!3051689)) b!7621973))

(assert (= (and b!7621973 res!3051688) b!7621971))

(assert (= (and b!7621971 (not res!3051687)) b!7621964))

(assert (= (and b!7621964 (not res!3051684)) b!7621962))

(assert (= (or b!7621969 b!7621960 b!7621971) bm!700008))

(declare-fun m!8153396 () Bool)

(assert (=> b!7621968 m!8153396))

(assert (=> b!7621962 m!8153396))

(declare-fun m!8153398 () Bool)

(assert (=> b!7621965 m!8153398))

(assert (=> b!7621965 m!8153398))

(declare-fun m!8153400 () Bool)

(assert (=> b!7621965 m!8153400))

(assert (=> b!7621970 m!8153396))

(assert (=> b!7621970 m!8153396))

(declare-fun m!8153402 () Bool)

(assert (=> b!7621970 m!8153402))

(assert (=> b!7621970 m!8153398))

(assert (=> b!7621970 m!8153402))

(assert (=> b!7621970 m!8153398))

(declare-fun m!8153404 () Bool)

(assert (=> b!7621970 m!8153404))

(assert (=> d!2323358 m!8153056))

(assert (=> d!2323358 m!8153058))

(assert (=> b!7621961 m!8153204))

(assert (=> bm!700008 m!8153056))

(assert (=> b!7621964 m!8153398))

(assert (=> b!7621964 m!8153398))

(assert (=> b!7621964 m!8153400))

(assert (=> b!7621468 d!2323358))

(declare-fun e!4532152 () Bool)

(assert (=> b!7621465 (= tp!2225261 e!4532152)))

(declare-fun b!7621985 () Bool)

(declare-fun tp!2225300 () Bool)

(declare-fun tp!2225298 () Bool)

(assert (=> b!7621985 (= e!4532152 (and tp!2225300 tp!2225298))))

(declare-fun b!7621986 () Bool)

(declare-fun tp!2225301 () Bool)

(assert (=> b!7621986 (= e!4532152 tp!2225301)))

(declare-fun b!7621984 () Bool)

(assert (=> b!7621984 (= e!4532152 tp_is_empty!50979)))

(declare-fun b!7621987 () Bool)

(declare-fun tp!2225299 () Bool)

(declare-fun tp!2225302 () Bool)

(assert (=> b!7621987 (= e!4532152 (and tp!2225299 tp!2225302))))

(assert (= (and b!7621465 (is-ElementMatch!20312 (reg!20641 r!14126))) b!7621984))

(assert (= (and b!7621465 (is-Concat!29157 (reg!20641 r!14126))) b!7621985))

(assert (= (and b!7621465 (is-Star!20312 (reg!20641 r!14126))) b!7621986))

(assert (= (and b!7621465 (is-Union!20312 (reg!20641 r!14126))) b!7621987))

(declare-fun e!4532153 () Bool)

(assert (=> b!7621469 (= tp!2225259 e!4532153)))

(declare-fun b!7621989 () Bool)

(declare-fun tp!2225305 () Bool)

(declare-fun tp!2225303 () Bool)

(assert (=> b!7621989 (= e!4532153 (and tp!2225305 tp!2225303))))

(declare-fun b!7621990 () Bool)

(declare-fun tp!2225306 () Bool)

(assert (=> b!7621990 (= e!4532153 tp!2225306)))

(declare-fun b!7621988 () Bool)

(assert (=> b!7621988 (= e!4532153 tp_is_empty!50979)))

(declare-fun b!7621991 () Bool)

(declare-fun tp!2225304 () Bool)

(declare-fun tp!2225307 () Bool)

(assert (=> b!7621991 (= e!4532153 (and tp!2225304 tp!2225307))))

(assert (= (and b!7621469 (is-ElementMatch!20312 (regOne!41136 r!14126))) b!7621988))

(assert (= (and b!7621469 (is-Concat!29157 (regOne!41136 r!14126))) b!7621989))

(assert (= (and b!7621469 (is-Star!20312 (regOne!41136 r!14126))) b!7621990))

(assert (= (and b!7621469 (is-Union!20312 (regOne!41136 r!14126))) b!7621991))

(declare-fun e!4532154 () Bool)

(assert (=> b!7621469 (= tp!2225262 e!4532154)))

(declare-fun b!7621993 () Bool)

(declare-fun tp!2225310 () Bool)

(declare-fun tp!2225308 () Bool)

(assert (=> b!7621993 (= e!4532154 (and tp!2225310 tp!2225308))))

(declare-fun b!7621994 () Bool)

(declare-fun tp!2225311 () Bool)

(assert (=> b!7621994 (= e!4532154 tp!2225311)))

(declare-fun b!7621992 () Bool)

(assert (=> b!7621992 (= e!4532154 tp_is_empty!50979)))

(declare-fun b!7621995 () Bool)

(declare-fun tp!2225309 () Bool)

(declare-fun tp!2225312 () Bool)

(assert (=> b!7621995 (= e!4532154 (and tp!2225309 tp!2225312))))

(assert (= (and b!7621469 (is-ElementMatch!20312 (regTwo!41136 r!14126))) b!7621992))

(assert (= (and b!7621469 (is-Concat!29157 (regTwo!41136 r!14126))) b!7621993))

(assert (= (and b!7621469 (is-Star!20312 (regTwo!41136 r!14126))) b!7621994))

(assert (= (and b!7621469 (is-Union!20312 (regTwo!41136 r!14126))) b!7621995))

(declare-fun b!7622000 () Bool)

(declare-fun e!4532157 () Bool)

(declare-fun tp!2225315 () Bool)

(assert (=> b!7622000 (= e!4532157 (and tp_is_empty!50979 tp!2225315))))

(assert (=> b!7621480 (= tp!2225257 e!4532157)))

(assert (= (and b!7621480 (is-Cons!73041 (t!387900 (_2!37896 cut!7)))) b!7622000))

(declare-fun e!4532158 () Bool)

(assert (=> b!7621473 (= tp!2225263 e!4532158)))

(declare-fun b!7622002 () Bool)

(declare-fun tp!2225318 () Bool)

(declare-fun tp!2225316 () Bool)

(assert (=> b!7622002 (= e!4532158 (and tp!2225318 tp!2225316))))

(declare-fun b!7622003 () Bool)

(declare-fun tp!2225319 () Bool)

(assert (=> b!7622003 (= e!4532158 tp!2225319)))

(declare-fun b!7622001 () Bool)

(assert (=> b!7622001 (= e!4532158 tp_is_empty!50979)))

(declare-fun b!7622004 () Bool)

(declare-fun tp!2225317 () Bool)

(declare-fun tp!2225320 () Bool)

(assert (=> b!7622004 (= e!4532158 (and tp!2225317 tp!2225320))))

(assert (= (and b!7621473 (is-ElementMatch!20312 (regOne!41137 r!14126))) b!7622001))

(assert (= (and b!7621473 (is-Concat!29157 (regOne!41137 r!14126))) b!7622002))

(assert (= (and b!7621473 (is-Star!20312 (regOne!41137 r!14126))) b!7622003))

(assert (= (and b!7621473 (is-Union!20312 (regOne!41137 r!14126))) b!7622004))

(declare-fun e!4532159 () Bool)

(assert (=> b!7621473 (= tp!2225258 e!4532159)))

(declare-fun b!7622006 () Bool)

(declare-fun tp!2225323 () Bool)

(declare-fun tp!2225321 () Bool)

(assert (=> b!7622006 (= e!4532159 (and tp!2225323 tp!2225321))))

(declare-fun b!7622007 () Bool)

(declare-fun tp!2225324 () Bool)

(assert (=> b!7622007 (= e!4532159 tp!2225324)))

(declare-fun b!7622005 () Bool)

(assert (=> b!7622005 (= e!4532159 tp_is_empty!50979)))

(declare-fun b!7622008 () Bool)

(declare-fun tp!2225322 () Bool)

(declare-fun tp!2225325 () Bool)

(assert (=> b!7622008 (= e!4532159 (and tp!2225322 tp!2225325))))

(assert (= (and b!7621473 (is-ElementMatch!20312 (regTwo!41137 r!14126))) b!7622005))

(assert (= (and b!7621473 (is-Concat!29157 (regTwo!41137 r!14126))) b!7622006))

(assert (= (and b!7621473 (is-Star!20312 (regTwo!41137 r!14126))) b!7622007))

(assert (= (and b!7621473 (is-Union!20312 (regTwo!41137 r!14126))) b!7622008))

(declare-fun b!7622009 () Bool)

(declare-fun e!4532160 () Bool)

(declare-fun tp!2225326 () Bool)

(assert (=> b!7622009 (= e!4532160 (and tp_is_empty!50979 tp!2225326))))

(assert (=> b!7621479 (= tp!2225260 e!4532160)))

(assert (= (and b!7621479 (is-Cons!73041 (t!387900 s!9605))) b!7622009))

(declare-fun b!7622010 () Bool)

(declare-fun e!4532161 () Bool)

(declare-fun tp!2225327 () Bool)

(assert (=> b!7622010 (= e!4532161 (and tp_is_empty!50979 tp!2225327))))

(assert (=> b!7621474 (= tp!2225256 e!4532161)))

(assert (= (and b!7621474 (is-Cons!73041 (t!387900 (_1!37896 cut!7)))) b!7622010))

(declare-fun b_lambda!289007 () Bool)

(assert (= b_lambda!289003 (or b!7621466 b_lambda!289007)))

(declare-fun bs!1943484 () Bool)

(declare-fun d!2323360 () Bool)

(assert (= bs!1943484 (and d!2323360 b!7621466)))

(declare-fun res!3051691 () Bool)

(declare-fun e!4532162 () Bool)

(assert (=> bs!1943484 (=> (not res!3051691) (not e!4532162))))

(assert (=> bs!1943484 (= res!3051691 (= (++!17622 (_1!37896 lt!2656938) (_2!37896 lt!2656938)) s!9605))))

(assert (=> bs!1943484 (= (dynLambda!29917 lambda!468458 lt!2656938) e!4532162)))

(declare-fun b!7622011 () Bool)

(declare-fun res!3051692 () Bool)

(assert (=> b!7622011 (=> (not res!3051692) (not e!4532162))))

(assert (=> b!7622011 (= res!3051692 (matchR!9819 (reg!20641 r!14126) (_1!37896 lt!2656938)))))

(declare-fun b!7622012 () Bool)

(assert (=> b!7622012 (= e!4532162 (matchR!9819 r!14126 (_2!37896 lt!2656938)))))

(assert (= (and bs!1943484 res!3051691) b!7622011))

(assert (= (and b!7622011 res!3051692) b!7622012))

(declare-fun m!8153406 () Bool)

(assert (=> bs!1943484 m!8153406))

(declare-fun m!8153408 () Bool)

(assert (=> b!7622011 m!8153408))

(declare-fun m!8153410 () Bool)

(assert (=> b!7622012 m!8153410))

(assert (=> d!2323308 d!2323360))

(declare-fun b_lambda!289009 () Bool)

(assert (= b_lambda!289005 (or b!7621475 b_lambda!289009)))

(declare-fun bs!1943486 () Bool)

(declare-fun d!2323362 () Bool)

(assert (= bs!1943486 (and d!2323362 b!7621475)))

(declare-fun res!3051693 () Bool)

(declare-fun e!4532163 () Bool)

(assert (=> bs!1943486 (=> (not res!3051693) (not e!4532163))))

(assert (=> bs!1943486 (= res!3051693 (= (++!17622 (_1!37896 lt!2656879) (_2!37896 lt!2656879)) s!9605))))

(assert (=> bs!1943486 (= (dynLambda!29917 lambda!468459 lt!2656879) e!4532163)))

(declare-fun b!7622013 () Bool)

(declare-fun res!3051694 () Bool)

(assert (=> b!7622013 (=> (not res!3051694) (not e!4532163))))

(assert (=> b!7622013 (= res!3051694 (not (isEmpty!41661 (_1!37896 lt!2656879))))))

(declare-fun b!7622014 () Bool)

(declare-fun res!3051695 () Bool)

(assert (=> b!7622014 (=> (not res!3051695) (not e!4532163))))

(assert (=> b!7622014 (= res!3051695 (matchRSpec!4511 (reg!20641 r!14126) (_1!37896 lt!2656879)))))

(declare-fun b!7622015 () Bool)

(assert (=> b!7622015 (= e!4532163 (matchRSpec!4511 r!14126 (_2!37896 lt!2656879)))))

(assert (= (and bs!1943486 res!3051693) b!7622013))

(assert (= (and b!7622013 res!3051694) b!7622014))

(assert (= (and b!7622014 res!3051695) b!7622015))

(declare-fun m!8153412 () Bool)

(assert (=> bs!1943486 m!8153412))

(assert (=> b!7622013 m!8153060))

(assert (=> b!7622014 m!8153096))

(assert (=> b!7622015 m!8153104))

(assert (=> d!2323338 d!2323362))

(push 1)

(assert (not b!7622003))

(assert (not bm!699997))

(assert (not b!7622012))

(assert (not b!7621783))

(assert (not d!2323330))

(assert (not d!2323286))

(assert (not b!7621893))

(assert (not bm!699985))

(assert (not b!7621910))

(assert (not b!7621698))

(assert (not b!7621995))

(assert (not b!7621898))

(assert (not b!7622010))

(assert (not b!7621789))

(assert (not b!7622011))

(assert (not b!7621855))

(assert (not bm!700004))

(assert (not b!7621595))

(assert (not b!7622002))

(assert (not b!7622007))

(assert (not d!2323310))

(assert (not b!7621622))

(assert (not b!7621781))

(assert (not d!2323294))

(assert tp_is_empty!50979)

(assert (not b!7622009))

(assert (not b!7621690))

(assert (not b!7621775))

(assert (not b!7621892))

(assert (not b!7621970))

(assert (not d!2323312))

(assert (not d!2323342))

(assert (not d!2323328))

(assert (not b!7621940))

(assert (not bm!699986))

(assert (not bm!700005))

(assert (not bm!699988))

(assert (not b!7621922))

(assert (not b!7621596))

(assert (not bm!700008))

(assert (not b!7622013))

(assert (not b!7621619))

(assert (not b_lambda!289009))

(assert (not d!2323290))

(assert (not bm!700000))

(assert (not b!7621689))

(assert (not b!7621876))

(assert (not b!7621693))

(assert (not d!2323338))

(assert (not b!7621879))

(assert (not b!7621877))

(assert (not d!2323296))

(assert (not b!7621696))

(assert (not bs!1943486))

(assert (not d!2323308))

(assert (not b!7621649))

(assert (not b!7622006))

(assert (not b!7621962))

(assert (not b!7621918))

(assert (not b!7621598))

(assert (not b!7621968))

(assert (not d!2323326))

(assert (not bm!699978))

(assert (not b!7621858))

(assert (not bm!699959))

(assert (not bm!699999))

(assert (not b!7621764))

(assert (not b!7621599))

(assert (not b!7621964))

(assert (not b!7622014))

(assert (not bm!699977))

(assert (not b!7621616))

(assert (not b!7621615))

(assert (not d!2323350))

(assert (not b!7621602))

(assert (not b!7621965))

(assert (not b!7622008))

(assert (not b!7621985))

(assert (not b!7621944))

(assert (not d!2323344))

(assert (not bs!1943484))

(assert (not b!7621679))

(assert (not b!7621904))

(assert (not b!7621778))

(assert (not b!7621604))

(assert (not b!7621768))

(assert (not b!7621990))

(assert (not b!7621907))

(assert (not b!7621994))

(assert (not d!2323288))

(assert (not b!7621993))

(assert (not b!7621989))

(assert (not b!7622004))

(assert (not b!7621859))

(assert (not b!7621853))

(assert (not d!2323314))

(assert (not b!7622015))

(assert (not b!7621774))

(assert (not bm!699996))

(assert (not b!7621991))

(assert (not bm!700001))

(assert (not d!2323336))

(assert (not d!2323318))

(assert (not b!7621777))

(assert (not bm!699958))

(assert (not b!7621793))

(assert (not d!2323332))

(assert (not b!7621987))

(assert (not d!2323358))

(assert (not b!7621889))

(assert (not bm!699998))

(assert (not bm!699989))

(assert (not b!7621890))

(assert (not b_lambda!289007))

(assert (not b!7621624))

(assert (not b!7621856))

(assert (not b!7621912))

(assert (not b!7621896))

(assert (not bm!699976))

(assert (not b!7621906))

(assert (not b!7621650))

(assert (not bm!699987))

(assert (not b!7621692))

(assert (not b!7621903))

(assert (not b!7622000))

(assert (not b!7621961))

(assert (not b!7621857))

(assert (not d!2323324))

(assert (not b!7621618))

(assert (not b!7621986))

(assert (not d!2323346))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

