; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!725392 () Bool)

(assert start!725392)

(declare-fun b!7494957 () Bool)

(assert (=> b!7494957 true))

(assert (=> b!7494957 true))

(assert (=> b!7494957 true))

(declare-fun lambda!464385 () Int)

(declare-fun lambda!464384 () Int)

(assert (=> b!7494957 (not (= lambda!464385 lambda!464384))))

(assert (=> b!7494957 true))

(assert (=> b!7494957 true))

(assert (=> b!7494957 true))

(declare-fun bs!1935600 () Bool)

(declare-fun b!7494958 () Bool)

(assert (= bs!1935600 (and b!7494958 b!7494957)))

(declare-datatypes ((C!39566 0))(
  ( (C!39567 (val!30181 Int)) )
))
(declare-datatypes ((Regex!19646 0))(
  ( (ElementMatch!19646 (c!1383781 C!39566)) (Concat!28491 (regOne!39804 Regex!19646) (regTwo!39804 Regex!19646)) (EmptyExpr!19646) (Star!19646 (reg!19975 Regex!19646)) (EmptyLang!19646) (Union!19646 (regOne!39805 Regex!19646) (regTwo!39805 Regex!19646)) )
))
(declare-fun lt!2630318 () Regex!19646)

(declare-fun lambda!464386 () Int)

(declare-fun r1!5845 () Regex!19646)

(assert (=> bs!1935600 (= (= r1!5845 lt!2630318) (= lambda!464386 lambda!464384))))

(assert (=> bs!1935600 (not (= lambda!464386 lambda!464385))))

(assert (=> b!7494958 true))

(assert (=> b!7494958 true))

(assert (=> b!7494958 true))

(declare-fun lambda!464387 () Int)

(assert (=> bs!1935600 (not (= lambda!464387 lambda!464384))))

(assert (=> bs!1935600 (= (= r1!5845 lt!2630318) (= lambda!464387 lambda!464385))))

(assert (=> b!7494958 (not (= lambda!464387 lambda!464386))))

(assert (=> b!7494958 true))

(assert (=> b!7494958 true))

(assert (=> b!7494958 true))

(declare-fun b!7494946 () Bool)

(declare-fun e!4468940 () Bool)

(declare-fun e!4468939 () Bool)

(assert (=> b!7494946 (= e!4468940 (not e!4468939))))

(declare-fun res!3006445 () Bool)

(assert (=> b!7494946 (=> res!3006445 e!4468939)))

(declare-fun lt!2630307 () Bool)

(assert (=> b!7494946 (= res!3006445 lt!2630307)))

(declare-fun lt!2630305 () Bool)

(declare-fun lt!2630312 () Regex!19646)

(declare-datatypes ((List!72360 0))(
  ( (Nil!72236) (Cons!72236 (h!78684 C!39566) (t!386929 List!72360)) )
))
(declare-fun s!13591 () List!72360)

(declare-fun matchRSpec!4323 (Regex!19646 List!72360) Bool)

(assert (=> b!7494946 (= lt!2630305 (matchRSpec!4323 lt!2630312 s!13591))))

(declare-fun matchR!9408 (Regex!19646 List!72360) Bool)

(assert (=> b!7494946 (= lt!2630305 (matchR!9408 lt!2630312 s!13591))))

(declare-datatypes ((Unit!166123 0))(
  ( (Unit!166124) )
))
(declare-fun lt!2630321 () Unit!166123)

(declare-fun mainMatchTheorem!4317 (Regex!19646 List!72360) Unit!166123)

(assert (=> b!7494946 (= lt!2630321 (mainMatchTheorem!4317 lt!2630312 s!13591))))

(declare-fun lt!2630313 () Regex!19646)

(assert (=> b!7494946 (= lt!2630307 (matchRSpec!4323 lt!2630313 s!13591))))

(assert (=> b!7494946 (= lt!2630307 (matchR!9408 lt!2630313 s!13591))))

(declare-fun lt!2630303 () Unit!166123)

(assert (=> b!7494946 (= lt!2630303 (mainMatchTheorem!4317 lt!2630313 s!13591))))

(declare-fun lt!2630319 () Regex!19646)

(declare-fun lt!2630302 () Regex!19646)

(assert (=> b!7494946 (= lt!2630312 (Union!19646 lt!2630319 lt!2630302))))

(declare-fun r2!5783 () Regex!19646)

(declare-fun rTail!78 () Regex!19646)

(assert (=> b!7494946 (= lt!2630302 (Concat!28491 r2!5783 rTail!78))))

(assert (=> b!7494946 (= lt!2630319 (Concat!28491 r1!5845 rTail!78))))

(assert (=> b!7494946 (= lt!2630313 (Concat!28491 lt!2630318 rTail!78))))

(assert (=> b!7494946 (= lt!2630318 (Union!19646 r1!5845 r2!5783))))

(declare-fun b!7494947 () Bool)

(declare-fun e!4468936 () Bool)

(declare-fun e!4468941 () Bool)

(assert (=> b!7494947 (= e!4468936 e!4468941)))

(declare-fun res!3006442 () Bool)

(assert (=> b!7494947 (=> res!3006442 e!4468941)))

(declare-fun lt!2630316 () Bool)

(declare-fun lt!2630304 () Bool)

(assert (=> b!7494947 (= res!3006442 (or (and (not lt!2630316) (not lt!2630304)) (not lt!2630316)))))

(assert (=> b!7494947 (= lt!2630304 (matchRSpec!4323 lt!2630302 s!13591))))

(assert (=> b!7494947 (= lt!2630304 (matchR!9408 lt!2630302 s!13591))))

(declare-fun lt!2630309 () Unit!166123)

(assert (=> b!7494947 (= lt!2630309 (mainMatchTheorem!4317 lt!2630302 s!13591))))

(assert (=> b!7494947 (= lt!2630316 (matchRSpec!4323 lt!2630319 s!13591))))

(assert (=> b!7494947 (= lt!2630316 (matchR!9408 lt!2630319 s!13591))))

(declare-fun lt!2630311 () Unit!166123)

(assert (=> b!7494947 (= lt!2630311 (mainMatchTheorem!4317 lt!2630319 s!13591))))

(declare-fun b!7494948 () Bool)

(declare-fun e!4468934 () Bool)

(declare-fun tp_is_empty!49581 () Bool)

(declare-fun tp!2175741 () Bool)

(assert (=> b!7494948 (= e!4468934 (and tp_is_empty!49581 tp!2175741))))

(declare-fun b!7494949 () Bool)

(declare-fun e!4468933 () Bool)

(declare-fun tp!2175733 () Bool)

(declare-fun tp!2175740 () Bool)

(assert (=> b!7494949 (= e!4468933 (and tp!2175733 tp!2175740))))

(declare-fun b!7494950 () Bool)

(declare-fun res!3006441 () Bool)

(assert (=> b!7494950 (=> (not res!3006441) (not e!4468940))))

(declare-fun validRegex!10160 (Regex!19646) Bool)

(assert (=> b!7494950 (= res!3006441 (validRegex!10160 rTail!78))))

(declare-fun b!7494951 () Bool)

(declare-fun tp!2175732 () Bool)

(assert (=> b!7494951 (= e!4468933 tp!2175732)))

(declare-fun b!7494952 () Bool)

(declare-fun res!3006446 () Bool)

(assert (=> b!7494952 (=> (not res!3006446) (not e!4468940))))

(assert (=> b!7494952 (= res!3006446 (validRegex!10160 r2!5783))))

(declare-fun b!7494953 () Bool)

(declare-fun e!4468938 () Bool)

(declare-fun tp!2175734 () Bool)

(assert (=> b!7494953 (= e!4468938 tp!2175734)))

(declare-fun b!7494954 () Bool)

(assert (=> b!7494954 (= e!4468938 tp_is_empty!49581)))

(declare-fun b!7494956 () Bool)

(declare-fun e!4468937 () Bool)

(declare-fun tp!2175731 () Bool)

(declare-fun tp!2175728 () Bool)

(assert (=> b!7494956 (= e!4468937 (and tp!2175731 tp!2175728))))

(assert (=> b!7494957 (= e!4468939 e!4468936)))

(declare-fun res!3006448 () Bool)

(assert (=> b!7494957 (=> res!3006448 e!4468936)))

(declare-fun lt!2630310 () Bool)

(assert (=> b!7494957 (= res!3006448 (or lt!2630310 (not lt!2630305)))))

(declare-fun Exists!4263 (Int) Bool)

(assert (=> b!7494957 (= (Exists!4263 lambda!464384) (Exists!4263 lambda!464385))))

(declare-fun lt!2630306 () Unit!166123)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2587 (Regex!19646 Regex!19646 List!72360) Unit!166123)

(assert (=> b!7494957 (= lt!2630306 (lemmaExistCutMatchRandMatchRSpecEquivalent!2587 lt!2630318 rTail!78 s!13591))))

(assert (=> b!7494957 (= lt!2630310 (Exists!4263 lambda!464384))))

(declare-datatypes ((tuple2!68726 0))(
  ( (tuple2!68727 (_1!37666 List!72360) (_2!37666 List!72360)) )
))
(declare-datatypes ((Option!17195 0))(
  ( (None!17194) (Some!17194 (v!54323 tuple2!68726)) )
))
(declare-fun isDefined!13884 (Option!17195) Bool)

(declare-fun findConcatSeparation!3317 (Regex!19646 Regex!19646 List!72360 List!72360 List!72360) Option!17195)

(assert (=> b!7494957 (= lt!2630310 (isDefined!13884 (findConcatSeparation!3317 lt!2630318 rTail!78 Nil!72236 s!13591 s!13591)))))

(declare-fun lt!2630314 () Unit!166123)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3075 (Regex!19646 Regex!19646 List!72360) Unit!166123)

(assert (=> b!7494957 (= lt!2630314 (lemmaFindConcatSeparationEquivalentToExists!3075 lt!2630318 rTail!78 s!13591))))

(declare-fun e!4468935 () Bool)

(assert (=> b!7494958 (= e!4468941 e!4468935)))

(declare-fun res!3006443 () Bool)

(assert (=> b!7494958 (=> res!3006443 e!4468935)))

(declare-fun lt!2630317 () tuple2!68726)

(assert (=> b!7494958 (= res!3006443 (not (matchR!9408 r1!5845 (_1!37666 lt!2630317))))))

(declare-fun lt!2630320 () Option!17195)

(declare-fun get!25325 (Option!17195) tuple2!68726)

(assert (=> b!7494958 (= lt!2630317 (get!25325 lt!2630320))))

(assert (=> b!7494958 (= (Exists!4263 lambda!464386) (Exists!4263 lambda!464387))))

(declare-fun lt!2630308 () Unit!166123)

(assert (=> b!7494958 (= lt!2630308 (lemmaExistCutMatchRandMatchRSpecEquivalent!2587 r1!5845 rTail!78 s!13591))))

(assert (=> b!7494958 (= (isDefined!13884 lt!2630320) (Exists!4263 lambda!464386))))

(assert (=> b!7494958 (= lt!2630320 (findConcatSeparation!3317 r1!5845 rTail!78 Nil!72236 s!13591 s!13591))))

(declare-fun lt!2630315 () Unit!166123)

(assert (=> b!7494958 (= lt!2630315 (lemmaFindConcatSeparationEquivalentToExists!3075 r1!5845 rTail!78 s!13591))))

(declare-fun b!7494959 () Bool)

(declare-fun res!3006447 () Bool)

(assert (=> b!7494959 (=> res!3006447 e!4468935)))

(assert (=> b!7494959 (= res!3006447 (not (matchR!9408 rTail!78 (_2!37666 lt!2630317))))))

(declare-fun b!7494960 () Bool)

(declare-fun tp!2175737 () Bool)

(declare-fun tp!2175729 () Bool)

(assert (=> b!7494960 (= e!4468933 (and tp!2175737 tp!2175729))))

(declare-fun b!7494961 () Bool)

(assert (=> b!7494961 (= e!4468935 (validRegex!10160 lt!2630318))))

(declare-fun b!7494962 () Bool)

(declare-fun tp!2175736 () Bool)

(declare-fun tp!2175730 () Bool)

(assert (=> b!7494962 (= e!4468938 (and tp!2175736 tp!2175730))))

(declare-fun b!7494963 () Bool)

(declare-fun tp!2175735 () Bool)

(assert (=> b!7494963 (= e!4468937 tp!2175735)))

(declare-fun b!7494964 () Bool)

(assert (=> b!7494964 (= e!4468933 tp_is_empty!49581)))

(declare-fun b!7494965 () Bool)

(declare-fun tp!2175726 () Bool)

(declare-fun tp!2175727 () Bool)

(assert (=> b!7494965 (= e!4468938 (and tp!2175726 tp!2175727))))

(declare-fun b!7494966 () Bool)

(declare-fun tp!2175738 () Bool)

(declare-fun tp!2175739 () Bool)

(assert (=> b!7494966 (= e!4468937 (and tp!2175738 tp!2175739))))

(declare-fun b!7494955 () Bool)

(assert (=> b!7494955 (= e!4468937 tp_is_empty!49581)))

(declare-fun res!3006444 () Bool)

(assert (=> start!725392 (=> (not res!3006444) (not e!4468940))))

(assert (=> start!725392 (= res!3006444 (validRegex!10160 r1!5845))))

(assert (=> start!725392 e!4468940))

(assert (=> start!725392 e!4468937))

(assert (=> start!725392 e!4468933))

(assert (=> start!725392 e!4468938))

(assert (=> start!725392 e!4468934))

(assert (= (and start!725392 res!3006444) b!7494952))

(assert (= (and b!7494952 res!3006446) b!7494950))

(assert (= (and b!7494950 res!3006441) b!7494946))

(assert (= (and b!7494946 (not res!3006445)) b!7494957))

(assert (= (and b!7494957 (not res!3006448)) b!7494947))

(assert (= (and b!7494947 (not res!3006442)) b!7494958))

(assert (= (and b!7494958 (not res!3006443)) b!7494959))

(assert (= (and b!7494959 (not res!3006447)) b!7494961))

(assert (= (and start!725392 (is-ElementMatch!19646 r1!5845)) b!7494955))

(assert (= (and start!725392 (is-Concat!28491 r1!5845)) b!7494956))

(assert (= (and start!725392 (is-Star!19646 r1!5845)) b!7494963))

(assert (= (and start!725392 (is-Union!19646 r1!5845)) b!7494966))

(assert (= (and start!725392 (is-ElementMatch!19646 r2!5783)) b!7494964))

(assert (= (and start!725392 (is-Concat!28491 r2!5783)) b!7494960))

(assert (= (and start!725392 (is-Star!19646 r2!5783)) b!7494951))

(assert (= (and start!725392 (is-Union!19646 r2!5783)) b!7494949))

(assert (= (and start!725392 (is-ElementMatch!19646 rTail!78)) b!7494954))

(assert (= (and start!725392 (is-Concat!28491 rTail!78)) b!7494965))

(assert (= (and start!725392 (is-Star!19646 rTail!78)) b!7494953))

(assert (= (and start!725392 (is-Union!19646 rTail!78)) b!7494962))

(assert (= (and start!725392 (is-Cons!72236 s!13591)) b!7494948))

(declare-fun m!8079196 () Bool)

(assert (=> b!7494952 m!8079196))

(declare-fun m!8079198 () Bool)

(assert (=> start!725392 m!8079198))

(declare-fun m!8079200 () Bool)

(assert (=> b!7494959 m!8079200))

(declare-fun m!8079202 () Bool)

(assert (=> b!7494958 m!8079202))

(assert (=> b!7494958 m!8079202))

(declare-fun m!8079204 () Bool)

(assert (=> b!7494958 m!8079204))

(declare-fun m!8079206 () Bool)

(assert (=> b!7494958 m!8079206))

(declare-fun m!8079208 () Bool)

(assert (=> b!7494958 m!8079208))

(declare-fun m!8079210 () Bool)

(assert (=> b!7494958 m!8079210))

(declare-fun m!8079212 () Bool)

(assert (=> b!7494958 m!8079212))

(declare-fun m!8079214 () Bool)

(assert (=> b!7494958 m!8079214))

(declare-fun m!8079216 () Bool)

(assert (=> b!7494958 m!8079216))

(declare-fun m!8079218 () Bool)

(assert (=> b!7494950 m!8079218))

(declare-fun m!8079220 () Bool)

(assert (=> b!7494961 m!8079220))

(declare-fun m!8079222 () Bool)

(assert (=> b!7494947 m!8079222))

(declare-fun m!8079224 () Bool)

(assert (=> b!7494947 m!8079224))

(declare-fun m!8079226 () Bool)

(assert (=> b!7494947 m!8079226))

(declare-fun m!8079228 () Bool)

(assert (=> b!7494947 m!8079228))

(declare-fun m!8079230 () Bool)

(assert (=> b!7494947 m!8079230))

(declare-fun m!8079232 () Bool)

(assert (=> b!7494947 m!8079232))

(declare-fun m!8079234 () Bool)

(assert (=> b!7494946 m!8079234))

(declare-fun m!8079236 () Bool)

(assert (=> b!7494946 m!8079236))

(declare-fun m!8079238 () Bool)

(assert (=> b!7494946 m!8079238))

(declare-fun m!8079240 () Bool)

(assert (=> b!7494946 m!8079240))

(declare-fun m!8079242 () Bool)

(assert (=> b!7494946 m!8079242))

(declare-fun m!8079244 () Bool)

(assert (=> b!7494946 m!8079244))

(declare-fun m!8079246 () Bool)

(assert (=> b!7494957 m!8079246))

(declare-fun m!8079248 () Bool)

(assert (=> b!7494957 m!8079248))

(declare-fun m!8079250 () Bool)

(assert (=> b!7494957 m!8079250))

(declare-fun m!8079252 () Bool)

(assert (=> b!7494957 m!8079252))

(declare-fun m!8079254 () Bool)

(assert (=> b!7494957 m!8079254))

(assert (=> b!7494957 m!8079248))

(declare-fun m!8079256 () Bool)

(assert (=> b!7494957 m!8079256))

(assert (=> b!7494957 m!8079246))

(push 1)

(assert (not b!7494948))

(assert (not b!7494961))

(assert (not b!7494965))

(assert (not b!7494950))

(assert (not b!7494947))

(assert (not b!7494958))

(assert (not b!7494963))

(assert (not b!7494957))

(assert (not b!7494952))

(assert (not b!7494960))

(assert (not b!7494962))

(assert (not b!7494959))

(assert (not start!725392))

(assert (not b!7494956))

(assert tp_is_empty!49581)

(assert (not b!7494953))

(assert (not b!7494951))

(assert (not b!7494966))

(assert (not b!7494946))

(assert (not b!7494949))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7495080 () Bool)

(declare-fun e!4468997 () Bool)

(declare-fun e!4468995 () Bool)

(assert (=> b!7495080 (= e!4468997 e!4468995)))

(declare-fun c!1383787 () Bool)

(assert (=> b!7495080 (= c!1383787 (is-Union!19646 r2!5783))))

(declare-fun bm!688038 () Bool)

(declare-fun call!688043 () Bool)

(assert (=> bm!688038 (= call!688043 (validRegex!10160 (ite c!1383787 (regTwo!39805 r2!5783) (regTwo!39804 r2!5783))))))

(declare-fun b!7495081 () Bool)

(declare-fun e!4468996 () Bool)

(declare-fun e!4468999 () Bool)

(assert (=> b!7495081 (= e!4468996 e!4468999)))

(declare-fun res!3006507 () Bool)

(assert (=> b!7495081 (=> (not res!3006507) (not e!4468999))))

(declare-fun call!688044 () Bool)

(assert (=> b!7495081 (= res!3006507 call!688044)))

(declare-fun b!7495082 () Bool)

(declare-fun e!4469000 () Bool)

(declare-fun call!688045 () Bool)

(assert (=> b!7495082 (= e!4469000 call!688045)))

(declare-fun b!7495083 () Bool)

(declare-fun res!3006511 () Bool)

(assert (=> b!7495083 (=> res!3006511 e!4468996)))

(assert (=> b!7495083 (= res!3006511 (not (is-Concat!28491 r2!5783)))))

(assert (=> b!7495083 (= e!4468995 e!4468996)))

(declare-fun b!7495084 () Bool)

(declare-fun e!4468998 () Bool)

(assert (=> b!7495084 (= e!4468998 call!688043)))

(declare-fun bm!688039 () Bool)

(assert (=> bm!688039 (= call!688044 call!688045)))

(declare-fun b!7495086 () Bool)

(assert (=> b!7495086 (= e!4468999 call!688043)))

(declare-fun c!1383788 () Bool)

(declare-fun bm!688040 () Bool)

(assert (=> bm!688040 (= call!688045 (validRegex!10160 (ite c!1383788 (reg!19975 r2!5783) (ite c!1383787 (regOne!39805 r2!5783) (regOne!39804 r2!5783)))))))

(declare-fun b!7495087 () Bool)

(declare-fun res!3006510 () Bool)

(assert (=> b!7495087 (=> (not res!3006510) (not e!4468998))))

(assert (=> b!7495087 (= res!3006510 call!688044)))

(assert (=> b!7495087 (= e!4468995 e!4468998)))

(declare-fun b!7495088 () Bool)

(declare-fun e!4469001 () Bool)

(assert (=> b!7495088 (= e!4469001 e!4468997)))

(assert (=> b!7495088 (= c!1383788 (is-Star!19646 r2!5783))))

(declare-fun b!7495085 () Bool)

(assert (=> b!7495085 (= e!4468997 e!4469000)))

(declare-fun res!3006509 () Bool)

(declare-fun nullable!8582 (Regex!19646) Bool)

(assert (=> b!7495085 (= res!3006509 (not (nullable!8582 (reg!19975 r2!5783))))))

(assert (=> b!7495085 (=> (not res!3006509) (not e!4469000))))

(declare-fun d!2301649 () Bool)

(declare-fun res!3006508 () Bool)

(assert (=> d!2301649 (=> res!3006508 e!4469001)))

(assert (=> d!2301649 (= res!3006508 (is-ElementMatch!19646 r2!5783))))

(assert (=> d!2301649 (= (validRegex!10160 r2!5783) e!4469001)))

(assert (= (and d!2301649 (not res!3006508)) b!7495088))

(assert (= (and b!7495088 c!1383788) b!7495085))

(assert (= (and b!7495088 (not c!1383788)) b!7495080))

(assert (= (and b!7495085 res!3006509) b!7495082))

(assert (= (and b!7495080 c!1383787) b!7495087))

(assert (= (and b!7495080 (not c!1383787)) b!7495083))

(assert (= (and b!7495087 res!3006510) b!7495084))

(assert (= (and b!7495083 (not res!3006511)) b!7495081))

(assert (= (and b!7495081 res!3006507) b!7495086))

(assert (= (or b!7495084 b!7495086) bm!688038))

(assert (= (or b!7495087 b!7495081) bm!688039))

(assert (= (or b!7495082 bm!688039) bm!688040))

(declare-fun m!8079322 () Bool)

(assert (=> bm!688038 m!8079322))

(declare-fun m!8079324 () Bool)

(assert (=> bm!688040 m!8079324))

(declare-fun m!8079326 () Bool)

(assert (=> b!7495085 m!8079326))

(assert (=> b!7494952 d!2301649))

(declare-fun bs!1935603 () Bool)

(declare-fun d!2301651 () Bool)

(assert (= bs!1935603 (and d!2301651 b!7494957)))

(declare-fun lambda!464412 () Int)

(assert (=> bs!1935603 (= lambda!464412 lambda!464384)))

(assert (=> bs!1935603 (not (= lambda!464412 lambda!464385))))

(declare-fun bs!1935604 () Bool)

(assert (= bs!1935604 (and d!2301651 b!7494958)))

(assert (=> bs!1935604 (= (= lt!2630318 r1!5845) (= lambda!464412 lambda!464386))))

(assert (=> bs!1935604 (not (= lambda!464412 lambda!464387))))

(assert (=> d!2301651 true))

(assert (=> d!2301651 true))

(assert (=> d!2301651 true))

(declare-fun bs!1935605 () Bool)

(assert (= bs!1935605 d!2301651))

(declare-fun lambda!464413 () Int)

(assert (=> bs!1935605 (not (= lambda!464413 lambda!464412))))

(assert (=> bs!1935603 (not (= lambda!464413 lambda!464384))))

(assert (=> bs!1935603 (= lambda!464413 lambda!464385)))

(assert (=> bs!1935604 (= (= lt!2630318 r1!5845) (= lambda!464413 lambda!464387))))

(assert (=> bs!1935604 (not (= lambda!464413 lambda!464386))))

(assert (=> d!2301651 true))

(assert (=> d!2301651 true))

(assert (=> d!2301651 true))

(assert (=> d!2301651 (= (Exists!4263 lambda!464412) (Exists!4263 lambda!464413))))

(declare-fun lt!2630386 () Unit!166123)

(declare-fun choose!57936 (Regex!19646 Regex!19646 List!72360) Unit!166123)

(assert (=> d!2301651 (= lt!2630386 (choose!57936 lt!2630318 rTail!78 s!13591))))

(assert (=> d!2301651 (validRegex!10160 lt!2630318)))

(assert (=> d!2301651 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2587 lt!2630318 rTail!78 s!13591) lt!2630386)))

(declare-fun m!8079328 () Bool)

(assert (=> bs!1935605 m!8079328))

(declare-fun m!8079330 () Bool)

(assert (=> bs!1935605 m!8079330))

(declare-fun m!8079332 () Bool)

(assert (=> bs!1935605 m!8079332))

(assert (=> bs!1935605 m!8079220))

(assert (=> b!7494957 d!2301651))

(declare-fun bs!1935609 () Bool)

(declare-fun d!2301653 () Bool)

(assert (= bs!1935609 (and d!2301653 d!2301651)))

(declare-fun lambda!464418 () Int)

(assert (=> bs!1935609 (= lambda!464418 lambda!464412)))

(declare-fun bs!1935610 () Bool)

(assert (= bs!1935610 (and d!2301653 b!7494957)))

(assert (=> bs!1935610 (= lambda!464418 lambda!464384)))

(assert (=> bs!1935609 (not (= lambda!464418 lambda!464413))))

(assert (=> bs!1935610 (not (= lambda!464418 lambda!464385))))

(declare-fun bs!1935611 () Bool)

(assert (= bs!1935611 (and d!2301653 b!7494958)))

(assert (=> bs!1935611 (not (= lambda!464418 lambda!464387))))

(assert (=> bs!1935611 (= (= lt!2630318 r1!5845) (= lambda!464418 lambda!464386))))

(assert (=> d!2301653 true))

(assert (=> d!2301653 true))

(assert (=> d!2301653 true))

(assert (=> d!2301653 (= (isDefined!13884 (findConcatSeparation!3317 lt!2630318 rTail!78 Nil!72236 s!13591 s!13591)) (Exists!4263 lambda!464418))))

(declare-fun lt!2630390 () Unit!166123)

(declare-fun choose!57937 (Regex!19646 Regex!19646 List!72360) Unit!166123)

(assert (=> d!2301653 (= lt!2630390 (choose!57937 lt!2630318 rTail!78 s!13591))))

(assert (=> d!2301653 (validRegex!10160 lt!2630318)))

(assert (=> d!2301653 (= (lemmaFindConcatSeparationEquivalentToExists!3075 lt!2630318 rTail!78 s!13591) lt!2630390)))

(declare-fun bs!1935612 () Bool)

(assert (= bs!1935612 d!2301653))

(assert (=> bs!1935612 m!8079248))

(assert (=> bs!1935612 m!8079256))

(assert (=> bs!1935612 m!8079248))

(declare-fun m!8079340 () Bool)

(assert (=> bs!1935612 m!8079340))

(declare-fun m!8079342 () Bool)

(assert (=> bs!1935612 m!8079342))

(assert (=> bs!1935612 m!8079220))

(assert (=> b!7494957 d!2301653))

(declare-fun d!2301657 () Bool)

(declare-fun choose!57938 (Int) Bool)

(assert (=> d!2301657 (= (Exists!4263 lambda!464384) (choose!57938 lambda!464384))))

(declare-fun bs!1935613 () Bool)

(assert (= bs!1935613 d!2301657))

(declare-fun m!8079344 () Bool)

(assert (=> bs!1935613 m!8079344))

(assert (=> b!7494957 d!2301657))

(declare-fun b!7495132 () Bool)

(declare-fun res!3006548 () Bool)

(declare-fun e!4469028 () Bool)

(assert (=> b!7495132 (=> (not res!3006548) (not e!4469028))))

(declare-fun lt!2630401 () Option!17195)

(assert (=> b!7495132 (= res!3006548 (matchR!9408 lt!2630318 (_1!37666 (get!25325 lt!2630401))))))

(declare-fun b!7495133 () Bool)

(declare-fun e!4469026 () Bool)

(assert (=> b!7495133 (= e!4469026 (not (isDefined!13884 lt!2630401)))))

(declare-fun b!7495134 () Bool)

(declare-fun res!3006550 () Bool)

(assert (=> b!7495134 (=> (not res!3006550) (not e!4469028))))

(assert (=> b!7495134 (= res!3006550 (matchR!9408 rTail!78 (_2!37666 (get!25325 lt!2630401))))))

(declare-fun b!7495135 () Bool)

(declare-fun e!4469024 () Bool)

(assert (=> b!7495135 (= e!4469024 (matchR!9408 rTail!78 s!13591))))

(declare-fun b!7495136 () Bool)

(declare-fun lt!2630400 () Unit!166123)

(declare-fun lt!2630399 () Unit!166123)

(assert (=> b!7495136 (= lt!2630400 lt!2630399)))

(declare-fun ++!17252 (List!72360 List!72360) List!72360)

(assert (=> b!7495136 (= (++!17252 (++!17252 Nil!72236 (Cons!72236 (h!78684 s!13591) Nil!72236)) (t!386929 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3126 (List!72360 C!39566 List!72360 List!72360) Unit!166123)

(assert (=> b!7495136 (= lt!2630399 (lemmaMoveElementToOtherListKeepsConcatEq!3126 Nil!72236 (h!78684 s!13591) (t!386929 s!13591) s!13591))))

(declare-fun e!4469027 () Option!17195)

(assert (=> b!7495136 (= e!4469027 (findConcatSeparation!3317 lt!2630318 rTail!78 (++!17252 Nil!72236 (Cons!72236 (h!78684 s!13591) Nil!72236)) (t!386929 s!13591) s!13591))))

(declare-fun b!7495137 () Bool)

(assert (=> b!7495137 (= e!4469028 (= (++!17252 (_1!37666 (get!25325 lt!2630401)) (_2!37666 (get!25325 lt!2630401))) s!13591))))

(declare-fun b!7495138 () Bool)

(assert (=> b!7495138 (= e!4469027 None!17194)))

(declare-fun b!7495139 () Bool)

(declare-fun e!4469025 () Option!17195)

(assert (=> b!7495139 (= e!4469025 (Some!17194 (tuple2!68727 Nil!72236 s!13591)))))

(declare-fun b!7495131 () Bool)

(assert (=> b!7495131 (= e!4469025 e!4469027)))

(declare-fun c!1383794 () Bool)

(assert (=> b!7495131 (= c!1383794 (is-Nil!72236 s!13591))))

(declare-fun d!2301659 () Bool)

(assert (=> d!2301659 e!4469026))

(declare-fun res!3006546 () Bool)

(assert (=> d!2301659 (=> res!3006546 e!4469026)))

(assert (=> d!2301659 (= res!3006546 e!4469028)))

(declare-fun res!3006547 () Bool)

(assert (=> d!2301659 (=> (not res!3006547) (not e!4469028))))

(assert (=> d!2301659 (= res!3006547 (isDefined!13884 lt!2630401))))

(assert (=> d!2301659 (= lt!2630401 e!4469025)))

(declare-fun c!1383793 () Bool)

(assert (=> d!2301659 (= c!1383793 e!4469024)))

(declare-fun res!3006549 () Bool)

(assert (=> d!2301659 (=> (not res!3006549) (not e!4469024))))

(assert (=> d!2301659 (= res!3006549 (matchR!9408 lt!2630318 Nil!72236))))

(assert (=> d!2301659 (validRegex!10160 lt!2630318)))

(assert (=> d!2301659 (= (findConcatSeparation!3317 lt!2630318 rTail!78 Nil!72236 s!13591 s!13591) lt!2630401)))

(assert (= (and d!2301659 res!3006549) b!7495135))

(assert (= (and d!2301659 c!1383793) b!7495139))

(assert (= (and d!2301659 (not c!1383793)) b!7495131))

(assert (= (and b!7495131 c!1383794) b!7495138))

(assert (= (and b!7495131 (not c!1383794)) b!7495136))

(assert (= (and d!2301659 res!3006547) b!7495132))

(assert (= (and b!7495132 res!3006548) b!7495134))

(assert (= (and b!7495134 res!3006550) b!7495137))

(assert (= (and d!2301659 (not res!3006546)) b!7495133))

(declare-fun m!8079346 () Bool)

(assert (=> b!7495132 m!8079346))

(declare-fun m!8079348 () Bool)

(assert (=> b!7495132 m!8079348))

(declare-fun m!8079350 () Bool)

(assert (=> b!7495133 m!8079350))

(declare-fun m!8079352 () Bool)

(assert (=> b!7495136 m!8079352))

(assert (=> b!7495136 m!8079352))

(declare-fun m!8079354 () Bool)

(assert (=> b!7495136 m!8079354))

(declare-fun m!8079356 () Bool)

(assert (=> b!7495136 m!8079356))

(assert (=> b!7495136 m!8079352))

(declare-fun m!8079358 () Bool)

(assert (=> b!7495136 m!8079358))

(assert (=> b!7495134 m!8079346))

(declare-fun m!8079360 () Bool)

(assert (=> b!7495134 m!8079360))

(declare-fun m!8079362 () Bool)

(assert (=> b!7495135 m!8079362))

(assert (=> d!2301659 m!8079350))

(declare-fun m!8079364 () Bool)

(assert (=> d!2301659 m!8079364))

(assert (=> d!2301659 m!8079220))

(assert (=> b!7495137 m!8079346))

(declare-fun m!8079366 () Bool)

(assert (=> b!7495137 m!8079366))

(assert (=> b!7494957 d!2301659))

(declare-fun d!2301661 () Bool)

(assert (=> d!2301661 (= (Exists!4263 lambda!464385) (choose!57938 lambda!464385))))

(declare-fun bs!1935616 () Bool)

(assert (= bs!1935616 d!2301661))

(declare-fun m!8079368 () Bool)

(assert (=> bs!1935616 m!8079368))

(assert (=> b!7494957 d!2301661))

(declare-fun d!2301663 () Bool)

(declare-fun isEmpty!41269 (Option!17195) Bool)

(assert (=> d!2301663 (= (isDefined!13884 (findConcatSeparation!3317 lt!2630318 rTail!78 Nil!72236 s!13591 s!13591)) (not (isEmpty!41269 (findConcatSeparation!3317 lt!2630318 rTail!78 Nil!72236 s!13591 s!13591))))))

(declare-fun bs!1935618 () Bool)

(assert (= bs!1935618 d!2301663))

(assert (=> bs!1935618 m!8079248))

(declare-fun m!8079370 () Bool)

(assert (=> bs!1935618 m!8079370))

(assert (=> b!7494957 d!2301663))

(declare-fun b!7495168 () Bool)

(declare-fun e!4469046 () Bool)

(declare-fun lt!2630405 () Bool)

(assert (=> b!7495168 (= e!4469046 (not lt!2630405))))

(declare-fun b!7495169 () Bool)

(declare-fun e!4469044 () Bool)

(assert (=> b!7495169 (= e!4469044 e!4469046)))

(declare-fun c!1383802 () Bool)

(assert (=> b!7495169 (= c!1383802 (is-EmptyLang!19646 lt!2630313))))

(declare-fun b!7495170 () Bool)

(declare-fun call!688048 () Bool)

(assert (=> b!7495170 (= e!4469044 (= lt!2630405 call!688048))))

(declare-fun b!7495171 () Bool)

(declare-fun e!4469048 () Bool)

(assert (=> b!7495171 (= e!4469048 (nullable!8582 lt!2630313))))

(declare-fun b!7495172 () Bool)

(declare-fun res!3006571 () Bool)

(declare-fun e!4469043 () Bool)

(assert (=> b!7495172 (=> res!3006571 e!4469043)))

(assert (=> b!7495172 (= res!3006571 (not (is-ElementMatch!19646 lt!2630313)))))

(assert (=> b!7495172 (= e!4469046 e!4469043)))

(declare-fun b!7495173 () Bool)

(declare-fun res!3006574 () Bool)

(declare-fun e!4469047 () Bool)

(assert (=> b!7495173 (=> (not res!3006574) (not e!4469047))))

(declare-fun isEmpty!41270 (List!72360) Bool)

(declare-fun tail!14948 (List!72360) List!72360)

(assert (=> b!7495173 (= res!3006574 (isEmpty!41270 (tail!14948 s!13591)))))

(declare-fun b!7495174 () Bool)

(declare-fun res!3006570 () Bool)

(assert (=> b!7495174 (=> (not res!3006570) (not e!4469047))))

(assert (=> b!7495174 (= res!3006570 (not call!688048))))

(declare-fun b!7495175 () Bool)

(declare-fun e!4469049 () Bool)

(assert (=> b!7495175 (= e!4469043 e!4469049)))

(declare-fun res!3006573 () Bool)

(assert (=> b!7495175 (=> (not res!3006573) (not e!4469049))))

(assert (=> b!7495175 (= res!3006573 (not lt!2630405))))

(declare-fun b!7495176 () Bool)

(declare-fun e!4469045 () Bool)

(declare-fun head!15379 (List!72360) C!39566)

(assert (=> b!7495176 (= e!4469045 (not (= (head!15379 s!13591) (c!1383781 lt!2630313))))))

(declare-fun d!2301665 () Bool)

(assert (=> d!2301665 e!4469044))

(declare-fun c!1383801 () Bool)

(assert (=> d!2301665 (= c!1383801 (is-EmptyExpr!19646 lt!2630313))))

(assert (=> d!2301665 (= lt!2630405 e!4469048)))

(declare-fun c!1383803 () Bool)

(assert (=> d!2301665 (= c!1383803 (isEmpty!41270 s!13591))))

(assert (=> d!2301665 (validRegex!10160 lt!2630313)))

(assert (=> d!2301665 (= (matchR!9408 lt!2630313 s!13591) lt!2630405)))

(declare-fun b!7495177 () Bool)

(assert (=> b!7495177 (= e!4469049 e!4469045)))

(declare-fun res!3006567 () Bool)

(assert (=> b!7495177 (=> res!3006567 e!4469045)))

(assert (=> b!7495177 (= res!3006567 call!688048)))

(declare-fun bm!688043 () Bool)

(assert (=> bm!688043 (= call!688048 (isEmpty!41270 s!13591))))

(declare-fun b!7495178 () Bool)

(declare-fun res!3006568 () Bool)

(assert (=> b!7495178 (=> res!3006568 e!4469043)))

(assert (=> b!7495178 (= res!3006568 e!4469047)))

(declare-fun res!3006569 () Bool)

(assert (=> b!7495178 (=> (not res!3006569) (not e!4469047))))

(assert (=> b!7495178 (= res!3006569 lt!2630405)))

(declare-fun b!7495179 () Bool)

(declare-fun derivativeStep!5639 (Regex!19646 C!39566) Regex!19646)

(assert (=> b!7495179 (= e!4469048 (matchR!9408 (derivativeStep!5639 lt!2630313 (head!15379 s!13591)) (tail!14948 s!13591)))))

(declare-fun b!7495180 () Bool)

(declare-fun res!3006572 () Bool)

(assert (=> b!7495180 (=> res!3006572 e!4469045)))

(assert (=> b!7495180 (= res!3006572 (not (isEmpty!41270 (tail!14948 s!13591))))))

(declare-fun b!7495181 () Bool)

(assert (=> b!7495181 (= e!4469047 (= (head!15379 s!13591) (c!1383781 lt!2630313)))))

(assert (= (and d!2301665 c!1383803) b!7495171))

(assert (= (and d!2301665 (not c!1383803)) b!7495179))

(assert (= (and d!2301665 c!1383801) b!7495170))

(assert (= (and d!2301665 (not c!1383801)) b!7495169))

(assert (= (and b!7495169 c!1383802) b!7495168))

(assert (= (and b!7495169 (not c!1383802)) b!7495172))

(assert (= (and b!7495172 (not res!3006571)) b!7495178))

(assert (= (and b!7495178 res!3006569) b!7495174))

(assert (= (and b!7495174 res!3006570) b!7495173))

(assert (= (and b!7495173 res!3006574) b!7495181))

(assert (= (and b!7495178 (not res!3006568)) b!7495175))

(assert (= (and b!7495175 res!3006573) b!7495177))

(assert (= (and b!7495177 (not res!3006567)) b!7495180))

(assert (= (and b!7495180 (not res!3006572)) b!7495176))

(assert (= (or b!7495170 b!7495174 b!7495177) bm!688043))

(declare-fun m!8079378 () Bool)

(assert (=> b!7495173 m!8079378))

(assert (=> b!7495173 m!8079378))

(declare-fun m!8079380 () Bool)

(assert (=> b!7495173 m!8079380))

(declare-fun m!8079382 () Bool)

(assert (=> bm!688043 m!8079382))

(declare-fun m!8079384 () Bool)

(assert (=> b!7495179 m!8079384))

(assert (=> b!7495179 m!8079384))

(declare-fun m!8079386 () Bool)

(assert (=> b!7495179 m!8079386))

(assert (=> b!7495179 m!8079378))

(assert (=> b!7495179 m!8079386))

(assert (=> b!7495179 m!8079378))

(declare-fun m!8079388 () Bool)

(assert (=> b!7495179 m!8079388))

(assert (=> d!2301665 m!8079382))

(declare-fun m!8079390 () Bool)

(assert (=> d!2301665 m!8079390))

(declare-fun m!8079392 () Bool)

(assert (=> b!7495171 m!8079392))

(assert (=> b!7495176 m!8079384))

(assert (=> b!7495181 m!8079384))

(assert (=> b!7495180 m!8079378))

(assert (=> b!7495180 m!8079378))

(assert (=> b!7495180 m!8079380))

(assert (=> b!7494946 d!2301665))

(declare-fun bs!1935621 () Bool)

(declare-fun b!7495232 () Bool)

(assert (= bs!1935621 (and b!7495232 d!2301651)))

(declare-fun lambda!464426 () Int)

(assert (=> bs!1935621 (not (= lambda!464426 lambda!464412))))

(declare-fun bs!1935622 () Bool)

(assert (= bs!1935622 (and b!7495232 b!7494957)))

(assert (=> bs!1935622 (not (= lambda!464426 lambda!464384))))

(assert (=> bs!1935621 (not (= lambda!464426 lambda!464413))))

(assert (=> bs!1935622 (not (= lambda!464426 lambda!464385))))

(declare-fun bs!1935623 () Bool)

(assert (= bs!1935623 (and b!7495232 b!7494958)))

(assert (=> bs!1935623 (not (= lambda!464426 lambda!464387))))

(declare-fun bs!1935624 () Bool)

(assert (= bs!1935624 (and b!7495232 d!2301653)))

(assert (=> bs!1935624 (not (= lambda!464426 lambda!464418))))

(assert (=> bs!1935623 (not (= lambda!464426 lambda!464386))))

(assert (=> b!7495232 true))

(assert (=> b!7495232 true))

(declare-fun bs!1935625 () Bool)

(declare-fun b!7495224 () Bool)

(assert (= bs!1935625 (and b!7495224 d!2301651)))

(declare-fun lambda!464427 () Int)

(assert (=> bs!1935625 (not (= lambda!464427 lambda!464412))))

(declare-fun bs!1935626 () Bool)

(assert (= bs!1935626 (and b!7495224 b!7494957)))

(assert (=> bs!1935626 (not (= lambda!464427 lambda!464384))))

(declare-fun bs!1935627 () Bool)

(assert (= bs!1935627 (and b!7495224 b!7495232)))

(assert (=> bs!1935627 (not (= lambda!464427 lambda!464426))))

(assert (=> bs!1935625 (= (and (= (regOne!39804 lt!2630313) lt!2630318) (= (regTwo!39804 lt!2630313) rTail!78)) (= lambda!464427 lambda!464413))))

(assert (=> bs!1935626 (= (and (= (regOne!39804 lt!2630313) lt!2630318) (= (regTwo!39804 lt!2630313) rTail!78)) (= lambda!464427 lambda!464385))))

(declare-fun bs!1935628 () Bool)

(assert (= bs!1935628 (and b!7495224 b!7494958)))

(assert (=> bs!1935628 (= (and (= (regOne!39804 lt!2630313) r1!5845) (= (regTwo!39804 lt!2630313) rTail!78)) (= lambda!464427 lambda!464387))))

(declare-fun bs!1935629 () Bool)

(assert (= bs!1935629 (and b!7495224 d!2301653)))

(assert (=> bs!1935629 (not (= lambda!464427 lambda!464418))))

(assert (=> bs!1935628 (not (= lambda!464427 lambda!464386))))

(assert (=> b!7495224 true))

(assert (=> b!7495224 true))

(declare-fun e!4469074 () Bool)

(declare-fun call!688053 () Bool)

(assert (=> b!7495224 (= e!4469074 call!688053)))

(declare-fun b!7495226 () Bool)

(declare-fun res!3006593 () Bool)

(declare-fun e!4469077 () Bool)

(assert (=> b!7495226 (=> res!3006593 e!4469077)))

(declare-fun call!688054 () Bool)

(assert (=> b!7495226 (= res!3006593 call!688054)))

(assert (=> b!7495226 (= e!4469074 e!4469077)))

(declare-fun b!7495227 () Bool)

(declare-fun e!4469076 () Bool)

(assert (=> b!7495227 (= e!4469076 (matchRSpec!4323 (regTwo!39805 lt!2630313) s!13591))))

(declare-fun b!7495228 () Bool)

(declare-fun c!1383816 () Bool)

(assert (=> b!7495228 (= c!1383816 (is-ElementMatch!19646 lt!2630313))))

(declare-fun e!4469075 () Bool)

(declare-fun e!4469080 () Bool)

(assert (=> b!7495228 (= e!4469075 e!4469080)))

(declare-fun bm!688048 () Bool)

(assert (=> bm!688048 (= call!688054 (isEmpty!41270 s!13591))))

(declare-fun b!7495229 () Bool)

(assert (=> b!7495229 (= e!4469080 (= s!13591 (Cons!72236 (c!1383781 lt!2630313) Nil!72236)))))

(declare-fun b!7495230 () Bool)

(declare-fun e!4469079 () Bool)

(assert (=> b!7495230 (= e!4469079 e!4469075)))

(declare-fun res!3006594 () Bool)

(assert (=> b!7495230 (= res!3006594 (not (is-EmptyLang!19646 lt!2630313)))))

(assert (=> b!7495230 (=> (not res!3006594) (not e!4469075))))

(declare-fun b!7495231 () Bool)

(declare-fun e!4469078 () Bool)

(assert (=> b!7495231 (= e!4469078 e!4469074)))

(declare-fun c!1383818 () Bool)

(assert (=> b!7495231 (= c!1383818 (is-Star!19646 lt!2630313))))

(assert (=> b!7495232 (= e!4469077 call!688053)))

(declare-fun b!7495233 () Bool)

(declare-fun c!1383817 () Bool)

(assert (=> b!7495233 (= c!1383817 (is-Union!19646 lt!2630313))))

(assert (=> b!7495233 (= e!4469080 e!4469078)))

(declare-fun b!7495225 () Bool)

(assert (=> b!7495225 (= e!4469078 e!4469076)))

(declare-fun res!3006595 () Bool)

(assert (=> b!7495225 (= res!3006595 (matchRSpec!4323 (regOne!39805 lt!2630313) s!13591))))

(assert (=> b!7495225 (=> res!3006595 e!4469076)))

(declare-fun d!2301671 () Bool)

(declare-fun c!1383819 () Bool)

(assert (=> d!2301671 (= c!1383819 (is-EmptyExpr!19646 lt!2630313))))

(assert (=> d!2301671 (= (matchRSpec!4323 lt!2630313 s!13591) e!4469079)))

(declare-fun bm!688049 () Bool)

(assert (=> bm!688049 (= call!688053 (Exists!4263 (ite c!1383818 lambda!464426 lambda!464427)))))

(declare-fun b!7495234 () Bool)

(assert (=> b!7495234 (= e!4469079 call!688054)))

(assert (= (and d!2301671 c!1383819) b!7495234))

(assert (= (and d!2301671 (not c!1383819)) b!7495230))

(assert (= (and b!7495230 res!3006594) b!7495228))

(assert (= (and b!7495228 c!1383816) b!7495229))

(assert (= (and b!7495228 (not c!1383816)) b!7495233))

(assert (= (and b!7495233 c!1383817) b!7495225))

(assert (= (and b!7495233 (not c!1383817)) b!7495231))

(assert (= (and b!7495225 (not res!3006595)) b!7495227))

(assert (= (and b!7495231 c!1383818) b!7495226))

(assert (= (and b!7495231 (not c!1383818)) b!7495224))

(assert (= (and b!7495226 (not res!3006593)) b!7495232))

(assert (= (or b!7495232 b!7495224) bm!688049))

(assert (= (or b!7495234 b!7495226) bm!688048))

(declare-fun m!8079394 () Bool)

(assert (=> b!7495227 m!8079394))

(assert (=> bm!688048 m!8079382))

(declare-fun m!8079396 () Bool)

(assert (=> b!7495225 m!8079396))

(declare-fun m!8079398 () Bool)

(assert (=> bm!688049 m!8079398))

(assert (=> b!7494946 d!2301671))

(declare-fun d!2301673 () Bool)

(assert (=> d!2301673 (= (matchR!9408 lt!2630313 s!13591) (matchRSpec!4323 lt!2630313 s!13591))))

(declare-fun lt!2630414 () Unit!166123)

(declare-fun choose!57939 (Regex!19646 List!72360) Unit!166123)

(assert (=> d!2301673 (= lt!2630414 (choose!57939 lt!2630313 s!13591))))

(assert (=> d!2301673 (validRegex!10160 lt!2630313)))

(assert (=> d!2301673 (= (mainMatchTheorem!4317 lt!2630313 s!13591) lt!2630414)))

(declare-fun bs!1935630 () Bool)

(assert (= bs!1935630 d!2301673))

(assert (=> bs!1935630 m!8079244))

(assert (=> bs!1935630 m!8079234))

(declare-fun m!8079400 () Bool)

(assert (=> bs!1935630 m!8079400))

(assert (=> bs!1935630 m!8079390))

(assert (=> b!7494946 d!2301673))

(declare-fun d!2301675 () Bool)

(assert (=> d!2301675 (= (matchR!9408 lt!2630312 s!13591) (matchRSpec!4323 lt!2630312 s!13591))))

(declare-fun lt!2630415 () Unit!166123)

(assert (=> d!2301675 (= lt!2630415 (choose!57939 lt!2630312 s!13591))))

(assert (=> d!2301675 (validRegex!10160 lt!2630312)))

(assert (=> d!2301675 (= (mainMatchTheorem!4317 lt!2630312 s!13591) lt!2630415)))

(declare-fun bs!1935631 () Bool)

(assert (= bs!1935631 d!2301675))

(assert (=> bs!1935631 m!8079236))

(assert (=> bs!1935631 m!8079242))

(declare-fun m!8079402 () Bool)

(assert (=> bs!1935631 m!8079402))

(declare-fun m!8079404 () Bool)

(assert (=> bs!1935631 m!8079404))

(assert (=> b!7494946 d!2301675))

(declare-fun b!7495243 () Bool)

(declare-fun e!4469088 () Bool)

(declare-fun lt!2630416 () Bool)

(assert (=> b!7495243 (= e!4469088 (not lt!2630416))))

(declare-fun b!7495244 () Bool)

(declare-fun e!4469086 () Bool)

(assert (=> b!7495244 (= e!4469086 e!4469088)))

(declare-fun c!1383821 () Bool)

(assert (=> b!7495244 (= c!1383821 (is-EmptyLang!19646 lt!2630312))))

(declare-fun b!7495245 () Bool)

(declare-fun call!688055 () Bool)

(assert (=> b!7495245 (= e!4469086 (= lt!2630416 call!688055))))

(declare-fun b!7495246 () Bool)

(declare-fun e!4469090 () Bool)

(assert (=> b!7495246 (= e!4469090 (nullable!8582 lt!2630312))))

(declare-fun b!7495247 () Bool)

(declare-fun res!3006608 () Bool)

(declare-fun e!4469085 () Bool)

(assert (=> b!7495247 (=> res!3006608 e!4469085)))

(assert (=> b!7495247 (= res!3006608 (not (is-ElementMatch!19646 lt!2630312)))))

(assert (=> b!7495247 (= e!4469088 e!4469085)))

(declare-fun b!7495248 () Bool)

(declare-fun res!3006611 () Bool)

(declare-fun e!4469089 () Bool)

(assert (=> b!7495248 (=> (not res!3006611) (not e!4469089))))

(assert (=> b!7495248 (= res!3006611 (isEmpty!41270 (tail!14948 s!13591)))))

(declare-fun b!7495249 () Bool)

(declare-fun res!3006607 () Bool)

(assert (=> b!7495249 (=> (not res!3006607) (not e!4469089))))

(assert (=> b!7495249 (= res!3006607 (not call!688055))))

(declare-fun b!7495250 () Bool)

(declare-fun e!4469091 () Bool)

(assert (=> b!7495250 (= e!4469085 e!4469091)))

(declare-fun res!3006610 () Bool)

(assert (=> b!7495250 (=> (not res!3006610) (not e!4469091))))

(assert (=> b!7495250 (= res!3006610 (not lt!2630416))))

(declare-fun b!7495251 () Bool)

(declare-fun e!4469087 () Bool)

(assert (=> b!7495251 (= e!4469087 (not (= (head!15379 s!13591) (c!1383781 lt!2630312))))))

(declare-fun d!2301677 () Bool)

(assert (=> d!2301677 e!4469086))

(declare-fun c!1383820 () Bool)

(assert (=> d!2301677 (= c!1383820 (is-EmptyExpr!19646 lt!2630312))))

(assert (=> d!2301677 (= lt!2630416 e!4469090)))

(declare-fun c!1383822 () Bool)

(assert (=> d!2301677 (= c!1383822 (isEmpty!41270 s!13591))))

(assert (=> d!2301677 (validRegex!10160 lt!2630312)))

(assert (=> d!2301677 (= (matchR!9408 lt!2630312 s!13591) lt!2630416)))

(declare-fun b!7495252 () Bool)

(assert (=> b!7495252 (= e!4469091 e!4469087)))

(declare-fun res!3006604 () Bool)

(assert (=> b!7495252 (=> res!3006604 e!4469087)))

(assert (=> b!7495252 (= res!3006604 call!688055)))

(declare-fun bm!688050 () Bool)

(assert (=> bm!688050 (= call!688055 (isEmpty!41270 s!13591))))

(declare-fun b!7495253 () Bool)

(declare-fun res!3006605 () Bool)

(assert (=> b!7495253 (=> res!3006605 e!4469085)))

(assert (=> b!7495253 (= res!3006605 e!4469089)))

(declare-fun res!3006606 () Bool)

(assert (=> b!7495253 (=> (not res!3006606) (not e!4469089))))

(assert (=> b!7495253 (= res!3006606 lt!2630416)))

(declare-fun b!7495254 () Bool)

(assert (=> b!7495254 (= e!4469090 (matchR!9408 (derivativeStep!5639 lt!2630312 (head!15379 s!13591)) (tail!14948 s!13591)))))

(declare-fun b!7495255 () Bool)

(declare-fun res!3006609 () Bool)

(assert (=> b!7495255 (=> res!3006609 e!4469087)))

(assert (=> b!7495255 (= res!3006609 (not (isEmpty!41270 (tail!14948 s!13591))))))

(declare-fun b!7495256 () Bool)

(assert (=> b!7495256 (= e!4469089 (= (head!15379 s!13591) (c!1383781 lt!2630312)))))

(assert (= (and d!2301677 c!1383822) b!7495246))

(assert (= (and d!2301677 (not c!1383822)) b!7495254))

(assert (= (and d!2301677 c!1383820) b!7495245))

(assert (= (and d!2301677 (not c!1383820)) b!7495244))

(assert (= (and b!7495244 c!1383821) b!7495243))

(assert (= (and b!7495244 (not c!1383821)) b!7495247))

(assert (= (and b!7495247 (not res!3006608)) b!7495253))

(assert (= (and b!7495253 res!3006606) b!7495249))

(assert (= (and b!7495249 res!3006607) b!7495248))

(assert (= (and b!7495248 res!3006611) b!7495256))

(assert (= (and b!7495253 (not res!3006605)) b!7495250))

(assert (= (and b!7495250 res!3006610) b!7495252))

(assert (= (and b!7495252 (not res!3006604)) b!7495255))

(assert (= (and b!7495255 (not res!3006609)) b!7495251))

(assert (= (or b!7495245 b!7495249 b!7495252) bm!688050))

(assert (=> b!7495248 m!8079378))

(assert (=> b!7495248 m!8079378))

(assert (=> b!7495248 m!8079380))

(assert (=> bm!688050 m!8079382))

(assert (=> b!7495254 m!8079384))

(assert (=> b!7495254 m!8079384))

(declare-fun m!8079406 () Bool)

(assert (=> b!7495254 m!8079406))

(assert (=> b!7495254 m!8079378))

(assert (=> b!7495254 m!8079406))

(assert (=> b!7495254 m!8079378))

(declare-fun m!8079408 () Bool)

(assert (=> b!7495254 m!8079408))

(assert (=> d!2301677 m!8079382))

(assert (=> d!2301677 m!8079404))

(declare-fun m!8079410 () Bool)

(assert (=> b!7495246 m!8079410))

(assert (=> b!7495251 m!8079384))

(assert (=> b!7495256 m!8079384))

(assert (=> b!7495255 m!8079378))

(assert (=> b!7495255 m!8079378))

(assert (=> b!7495255 m!8079380))

(assert (=> b!7494946 d!2301677))

(declare-fun bs!1935632 () Bool)

(declare-fun b!7495265 () Bool)

(assert (= bs!1935632 (and b!7495265 d!2301651)))

(declare-fun lambda!464428 () Int)

(assert (=> bs!1935632 (not (= lambda!464428 lambda!464412))))

(declare-fun bs!1935633 () Bool)

(assert (= bs!1935633 (and b!7495265 b!7494957)))

(assert (=> bs!1935633 (not (= lambda!464428 lambda!464384))))

(declare-fun bs!1935634 () Bool)

(assert (= bs!1935634 (and b!7495265 b!7495232)))

(assert (=> bs!1935634 (= (and (= (reg!19975 lt!2630312) (reg!19975 lt!2630313)) (= lt!2630312 lt!2630313)) (= lambda!464428 lambda!464426))))

(assert (=> bs!1935632 (not (= lambda!464428 lambda!464413))))

(assert (=> bs!1935633 (not (= lambda!464428 lambda!464385))))

(declare-fun bs!1935635 () Bool)

(assert (= bs!1935635 (and b!7495265 b!7494958)))

(assert (=> bs!1935635 (not (= lambda!464428 lambda!464387))))

(declare-fun bs!1935636 () Bool)

(assert (= bs!1935636 (and b!7495265 d!2301653)))

(assert (=> bs!1935636 (not (= lambda!464428 lambda!464418))))

(assert (=> bs!1935635 (not (= lambda!464428 lambda!464386))))

(declare-fun bs!1935637 () Bool)

(assert (= bs!1935637 (and b!7495265 b!7495224)))

(assert (=> bs!1935637 (not (= lambda!464428 lambda!464427))))

(assert (=> b!7495265 true))

(assert (=> b!7495265 true))

(declare-fun bs!1935638 () Bool)

(declare-fun b!7495257 () Bool)

(assert (= bs!1935638 (and b!7495257 d!2301651)))

(declare-fun lambda!464429 () Int)

(assert (=> bs!1935638 (not (= lambda!464429 lambda!464412))))

(declare-fun bs!1935639 () Bool)

(assert (= bs!1935639 (and b!7495257 b!7494957)))

(assert (=> bs!1935639 (not (= lambda!464429 lambda!464384))))

(declare-fun bs!1935640 () Bool)

(assert (= bs!1935640 (and b!7495257 b!7495232)))

(assert (=> bs!1935640 (not (= lambda!464429 lambda!464426))))

(assert (=> bs!1935638 (= (and (= (regOne!39804 lt!2630312) lt!2630318) (= (regTwo!39804 lt!2630312) rTail!78)) (= lambda!464429 lambda!464413))))

(assert (=> bs!1935639 (= (and (= (regOne!39804 lt!2630312) lt!2630318) (= (regTwo!39804 lt!2630312) rTail!78)) (= lambda!464429 lambda!464385))))

(declare-fun bs!1935641 () Bool)

(assert (= bs!1935641 (and b!7495257 b!7495265)))

(assert (=> bs!1935641 (not (= lambda!464429 lambda!464428))))

(declare-fun bs!1935642 () Bool)

(assert (= bs!1935642 (and b!7495257 b!7494958)))

(assert (=> bs!1935642 (= (and (= (regOne!39804 lt!2630312) r1!5845) (= (regTwo!39804 lt!2630312) rTail!78)) (= lambda!464429 lambda!464387))))

(declare-fun bs!1935643 () Bool)

(assert (= bs!1935643 (and b!7495257 d!2301653)))

(assert (=> bs!1935643 (not (= lambda!464429 lambda!464418))))

(assert (=> bs!1935642 (not (= lambda!464429 lambda!464386))))

(declare-fun bs!1935644 () Bool)

(assert (= bs!1935644 (and b!7495257 b!7495224)))

(assert (=> bs!1935644 (= (and (= (regOne!39804 lt!2630312) (regOne!39804 lt!2630313)) (= (regTwo!39804 lt!2630312) (regTwo!39804 lt!2630313))) (= lambda!464429 lambda!464427))))

(assert (=> b!7495257 true))

(assert (=> b!7495257 true))

(declare-fun e!4469092 () Bool)

(declare-fun call!688056 () Bool)

(assert (=> b!7495257 (= e!4469092 call!688056)))

(declare-fun b!7495259 () Bool)

(declare-fun res!3006612 () Bool)

(declare-fun e!4469095 () Bool)

(assert (=> b!7495259 (=> res!3006612 e!4469095)))

(declare-fun call!688057 () Bool)

(assert (=> b!7495259 (= res!3006612 call!688057)))

(assert (=> b!7495259 (= e!4469092 e!4469095)))

(declare-fun b!7495260 () Bool)

(declare-fun e!4469094 () Bool)

(assert (=> b!7495260 (= e!4469094 (matchRSpec!4323 (regTwo!39805 lt!2630312) s!13591))))

(declare-fun b!7495261 () Bool)

(declare-fun c!1383823 () Bool)

(assert (=> b!7495261 (= c!1383823 (is-ElementMatch!19646 lt!2630312))))

(declare-fun e!4469093 () Bool)

(declare-fun e!4469098 () Bool)

(assert (=> b!7495261 (= e!4469093 e!4469098)))

(declare-fun bm!688051 () Bool)

(assert (=> bm!688051 (= call!688057 (isEmpty!41270 s!13591))))

(declare-fun b!7495262 () Bool)

(assert (=> b!7495262 (= e!4469098 (= s!13591 (Cons!72236 (c!1383781 lt!2630312) Nil!72236)))))

(declare-fun b!7495263 () Bool)

(declare-fun e!4469097 () Bool)

(assert (=> b!7495263 (= e!4469097 e!4469093)))

(declare-fun res!3006613 () Bool)

(assert (=> b!7495263 (= res!3006613 (not (is-EmptyLang!19646 lt!2630312)))))

(assert (=> b!7495263 (=> (not res!3006613) (not e!4469093))))

(declare-fun b!7495264 () Bool)

(declare-fun e!4469096 () Bool)

(assert (=> b!7495264 (= e!4469096 e!4469092)))

(declare-fun c!1383825 () Bool)

(assert (=> b!7495264 (= c!1383825 (is-Star!19646 lt!2630312))))

(assert (=> b!7495265 (= e!4469095 call!688056)))

(declare-fun b!7495266 () Bool)

(declare-fun c!1383824 () Bool)

(assert (=> b!7495266 (= c!1383824 (is-Union!19646 lt!2630312))))

(assert (=> b!7495266 (= e!4469098 e!4469096)))

(declare-fun b!7495258 () Bool)

(assert (=> b!7495258 (= e!4469096 e!4469094)))

(declare-fun res!3006614 () Bool)

(assert (=> b!7495258 (= res!3006614 (matchRSpec!4323 (regOne!39805 lt!2630312) s!13591))))

(assert (=> b!7495258 (=> res!3006614 e!4469094)))

(declare-fun d!2301679 () Bool)

(declare-fun c!1383826 () Bool)

(assert (=> d!2301679 (= c!1383826 (is-EmptyExpr!19646 lt!2630312))))

(assert (=> d!2301679 (= (matchRSpec!4323 lt!2630312 s!13591) e!4469097)))

(declare-fun bm!688052 () Bool)

(assert (=> bm!688052 (= call!688056 (Exists!4263 (ite c!1383825 lambda!464428 lambda!464429)))))

(declare-fun b!7495267 () Bool)

(assert (=> b!7495267 (= e!4469097 call!688057)))

(assert (= (and d!2301679 c!1383826) b!7495267))

(assert (= (and d!2301679 (not c!1383826)) b!7495263))

(assert (= (and b!7495263 res!3006613) b!7495261))

(assert (= (and b!7495261 c!1383823) b!7495262))

(assert (= (and b!7495261 (not c!1383823)) b!7495266))

(assert (= (and b!7495266 c!1383824) b!7495258))

(assert (= (and b!7495266 (not c!1383824)) b!7495264))

(assert (= (and b!7495258 (not res!3006614)) b!7495260))

(assert (= (and b!7495264 c!1383825) b!7495259))

(assert (= (and b!7495264 (not c!1383825)) b!7495257))

(assert (= (and b!7495259 (not res!3006612)) b!7495265))

(assert (= (or b!7495265 b!7495257) bm!688052))

(assert (= (or b!7495267 b!7495259) bm!688051))

(declare-fun m!8079412 () Bool)

(assert (=> b!7495260 m!8079412))

(assert (=> bm!688051 m!8079382))

(declare-fun m!8079416 () Bool)

(assert (=> b!7495258 m!8079416))

(declare-fun m!8079418 () Bool)

(assert (=> bm!688052 m!8079418))

(assert (=> b!7494946 d!2301679))

(declare-fun b!7495278 () Bool)

(declare-fun res!3006622 () Bool)

(declare-fun e!4469108 () Bool)

(assert (=> b!7495278 (=> (not res!3006622) (not e!4469108))))

(declare-fun lt!2630422 () Option!17195)

(assert (=> b!7495278 (= res!3006622 (matchR!9408 r1!5845 (_1!37666 (get!25325 lt!2630422))))))

(declare-fun b!7495279 () Bool)

(declare-fun e!4469106 () Bool)

(assert (=> b!7495279 (= e!4469106 (not (isDefined!13884 lt!2630422)))))

(declare-fun b!7495280 () Bool)

(declare-fun res!3006624 () Bool)

(assert (=> b!7495280 (=> (not res!3006624) (not e!4469108))))

(assert (=> b!7495280 (= res!3006624 (matchR!9408 rTail!78 (_2!37666 (get!25325 lt!2630422))))))

(declare-fun b!7495281 () Bool)

(declare-fun e!4469104 () Bool)

(assert (=> b!7495281 (= e!4469104 (matchR!9408 rTail!78 s!13591))))

(declare-fun b!7495282 () Bool)

(declare-fun lt!2630421 () Unit!166123)

(declare-fun lt!2630420 () Unit!166123)

(assert (=> b!7495282 (= lt!2630421 lt!2630420)))

(assert (=> b!7495282 (= (++!17252 (++!17252 Nil!72236 (Cons!72236 (h!78684 s!13591) Nil!72236)) (t!386929 s!13591)) s!13591)))

(assert (=> b!7495282 (= lt!2630420 (lemmaMoveElementToOtherListKeepsConcatEq!3126 Nil!72236 (h!78684 s!13591) (t!386929 s!13591) s!13591))))

(declare-fun e!4469107 () Option!17195)

(assert (=> b!7495282 (= e!4469107 (findConcatSeparation!3317 r1!5845 rTail!78 (++!17252 Nil!72236 (Cons!72236 (h!78684 s!13591) Nil!72236)) (t!386929 s!13591) s!13591))))

(declare-fun b!7495283 () Bool)

(assert (=> b!7495283 (= e!4469108 (= (++!17252 (_1!37666 (get!25325 lt!2630422)) (_2!37666 (get!25325 lt!2630422))) s!13591))))

(declare-fun b!7495284 () Bool)

(assert (=> b!7495284 (= e!4469107 None!17194)))

(declare-fun b!7495285 () Bool)

(declare-fun e!4469105 () Option!17195)

(assert (=> b!7495285 (= e!4469105 (Some!17194 (tuple2!68727 Nil!72236 s!13591)))))

(declare-fun b!7495277 () Bool)

(assert (=> b!7495277 (= e!4469105 e!4469107)))

(declare-fun c!1383830 () Bool)

(assert (=> b!7495277 (= c!1383830 (is-Nil!72236 s!13591))))

(declare-fun d!2301681 () Bool)

(assert (=> d!2301681 e!4469106))

(declare-fun res!3006620 () Bool)

(assert (=> d!2301681 (=> res!3006620 e!4469106)))

(assert (=> d!2301681 (= res!3006620 e!4469108)))

(declare-fun res!3006621 () Bool)

(assert (=> d!2301681 (=> (not res!3006621) (not e!4469108))))

(assert (=> d!2301681 (= res!3006621 (isDefined!13884 lt!2630422))))

(assert (=> d!2301681 (= lt!2630422 e!4469105)))

(declare-fun c!1383829 () Bool)

(assert (=> d!2301681 (= c!1383829 e!4469104)))

(declare-fun res!3006623 () Bool)

(assert (=> d!2301681 (=> (not res!3006623) (not e!4469104))))

(assert (=> d!2301681 (= res!3006623 (matchR!9408 r1!5845 Nil!72236))))

(assert (=> d!2301681 (validRegex!10160 r1!5845)))

(assert (=> d!2301681 (= (findConcatSeparation!3317 r1!5845 rTail!78 Nil!72236 s!13591 s!13591) lt!2630422)))

(assert (= (and d!2301681 res!3006623) b!7495281))

(assert (= (and d!2301681 c!1383829) b!7495285))

(assert (= (and d!2301681 (not c!1383829)) b!7495277))

(assert (= (and b!7495277 c!1383830) b!7495284))

(assert (= (and b!7495277 (not c!1383830)) b!7495282))

(assert (= (and d!2301681 res!3006621) b!7495278))

(assert (= (and b!7495278 res!3006622) b!7495280))

(assert (= (and b!7495280 res!3006624) b!7495283))

(assert (= (and d!2301681 (not res!3006620)) b!7495279))

(declare-fun m!8079440 () Bool)

(assert (=> b!7495278 m!8079440))

(declare-fun m!8079442 () Bool)

(assert (=> b!7495278 m!8079442))

(declare-fun m!8079444 () Bool)

(assert (=> b!7495279 m!8079444))

(assert (=> b!7495282 m!8079352))

(assert (=> b!7495282 m!8079352))

(assert (=> b!7495282 m!8079354))

(assert (=> b!7495282 m!8079356))

(assert (=> b!7495282 m!8079352))

(declare-fun m!8079448 () Bool)

(assert (=> b!7495282 m!8079448))

(assert (=> b!7495280 m!8079440))

(declare-fun m!8079450 () Bool)

(assert (=> b!7495280 m!8079450))

(assert (=> b!7495281 m!8079362))

(assert (=> d!2301681 m!8079444))

(declare-fun m!8079452 () Bool)

(assert (=> d!2301681 m!8079452))

(assert (=> d!2301681 m!8079198))

(assert (=> b!7495283 m!8079440))

(declare-fun m!8079454 () Bool)

(assert (=> b!7495283 m!8079454))

(assert (=> b!7494958 d!2301681))

(declare-fun bs!1935646 () Bool)

(declare-fun d!2301687 () Bool)

(assert (= bs!1935646 (and d!2301687 d!2301651)))

(declare-fun lambda!464430 () Int)

(assert (=> bs!1935646 (= (= r1!5845 lt!2630318) (= lambda!464430 lambda!464412))))

(declare-fun bs!1935647 () Bool)

(assert (= bs!1935647 (and d!2301687 b!7494957)))

(assert (=> bs!1935647 (= (= r1!5845 lt!2630318) (= lambda!464430 lambda!464384))))

(declare-fun bs!1935648 () Bool)

(assert (= bs!1935648 (and d!2301687 b!7495232)))

(assert (=> bs!1935648 (not (= lambda!464430 lambda!464426))))

(declare-fun bs!1935649 () Bool)

(assert (= bs!1935649 (and d!2301687 b!7495257)))

(assert (=> bs!1935649 (not (= lambda!464430 lambda!464429))))

(assert (=> bs!1935646 (not (= lambda!464430 lambda!464413))))

(assert (=> bs!1935647 (not (= lambda!464430 lambda!464385))))

(declare-fun bs!1935650 () Bool)

(assert (= bs!1935650 (and d!2301687 b!7495265)))

(assert (=> bs!1935650 (not (= lambda!464430 lambda!464428))))

(declare-fun bs!1935651 () Bool)

(assert (= bs!1935651 (and d!2301687 b!7494958)))

(assert (=> bs!1935651 (not (= lambda!464430 lambda!464387))))

(declare-fun bs!1935652 () Bool)

(assert (= bs!1935652 (and d!2301687 d!2301653)))

(assert (=> bs!1935652 (= (= r1!5845 lt!2630318) (= lambda!464430 lambda!464418))))

(assert (=> bs!1935651 (= lambda!464430 lambda!464386)))

(declare-fun bs!1935653 () Bool)

(assert (= bs!1935653 (and d!2301687 b!7495224)))

(assert (=> bs!1935653 (not (= lambda!464430 lambda!464427))))

(assert (=> d!2301687 true))

(assert (=> d!2301687 true))

(assert (=> d!2301687 true))

(assert (=> d!2301687 (= (isDefined!13884 (findConcatSeparation!3317 r1!5845 rTail!78 Nil!72236 s!13591 s!13591)) (Exists!4263 lambda!464430))))

(declare-fun lt!2630423 () Unit!166123)

(assert (=> d!2301687 (= lt!2630423 (choose!57937 r1!5845 rTail!78 s!13591))))

(assert (=> d!2301687 (validRegex!10160 r1!5845)))

(assert (=> d!2301687 (= (lemmaFindConcatSeparationEquivalentToExists!3075 r1!5845 rTail!78 s!13591) lt!2630423)))

(declare-fun bs!1935654 () Bool)

(assert (= bs!1935654 d!2301687))

(assert (=> bs!1935654 m!8079216))

(declare-fun m!8079456 () Bool)

(assert (=> bs!1935654 m!8079456))

(assert (=> bs!1935654 m!8079216))

(declare-fun m!8079458 () Bool)

(assert (=> bs!1935654 m!8079458))

(declare-fun m!8079460 () Bool)

(assert (=> bs!1935654 m!8079460))

(assert (=> bs!1935654 m!8079198))

(assert (=> b!7494958 d!2301687))

(declare-fun d!2301689 () Bool)

(assert (=> d!2301689 (= (get!25325 lt!2630320) (v!54323 lt!2630320))))

(assert (=> b!7494958 d!2301689))

(declare-fun d!2301691 () Bool)

(assert (=> d!2301691 (= (isDefined!13884 lt!2630320) (not (isEmpty!41269 lt!2630320)))))

(declare-fun bs!1935655 () Bool)

(assert (= bs!1935655 d!2301691))

(declare-fun m!8079462 () Bool)

(assert (=> bs!1935655 m!8079462))

(assert (=> b!7494958 d!2301691))

(declare-fun d!2301693 () Bool)

(assert (=> d!2301693 (= (Exists!4263 lambda!464386) (choose!57938 lambda!464386))))

(declare-fun bs!1935656 () Bool)

(assert (= bs!1935656 d!2301693))

(declare-fun m!8079464 () Bool)

(assert (=> bs!1935656 m!8079464))

(assert (=> b!7494958 d!2301693))

(declare-fun bs!1935657 () Bool)

(declare-fun d!2301695 () Bool)

(assert (= bs!1935657 (and d!2301695 d!2301651)))

(declare-fun lambda!464431 () Int)

(assert (=> bs!1935657 (= (= r1!5845 lt!2630318) (= lambda!464431 lambda!464412))))

(declare-fun bs!1935658 () Bool)

(assert (= bs!1935658 (and d!2301695 b!7494957)))

(assert (=> bs!1935658 (= (= r1!5845 lt!2630318) (= lambda!464431 lambda!464384))))

(declare-fun bs!1935659 () Bool)

(assert (= bs!1935659 (and d!2301695 b!7495232)))

(assert (=> bs!1935659 (not (= lambda!464431 lambda!464426))))

(declare-fun bs!1935660 () Bool)

(assert (= bs!1935660 (and d!2301695 b!7495257)))

(assert (=> bs!1935660 (not (= lambda!464431 lambda!464429))))

(assert (=> bs!1935657 (not (= lambda!464431 lambda!464413))))

(assert (=> bs!1935658 (not (= lambda!464431 lambda!464385))))

(declare-fun bs!1935661 () Bool)

(assert (= bs!1935661 (and d!2301695 b!7495265)))

(assert (=> bs!1935661 (not (= lambda!464431 lambda!464428))))

(declare-fun bs!1935662 () Bool)

(assert (= bs!1935662 (and d!2301695 b!7494958)))

(assert (=> bs!1935662 (not (= lambda!464431 lambda!464387))))

(declare-fun bs!1935663 () Bool)

(assert (= bs!1935663 (and d!2301695 d!2301653)))

(assert (=> bs!1935663 (= (= r1!5845 lt!2630318) (= lambda!464431 lambda!464418))))

(assert (=> bs!1935662 (= lambda!464431 lambda!464386)))

(declare-fun bs!1935664 () Bool)

(assert (= bs!1935664 (and d!2301695 b!7495224)))

(assert (=> bs!1935664 (not (= lambda!464431 lambda!464427))))

(declare-fun bs!1935665 () Bool)

(assert (= bs!1935665 (and d!2301695 d!2301687)))

(assert (=> bs!1935665 (= lambda!464431 lambda!464430)))

(assert (=> d!2301695 true))

(assert (=> d!2301695 true))

(assert (=> d!2301695 true))

(declare-fun bs!1935666 () Bool)

(assert (= bs!1935666 d!2301695))

(declare-fun lambda!464432 () Int)

(assert (=> bs!1935666 (not (= lambda!464432 lambda!464431))))

(assert (=> bs!1935657 (not (= lambda!464432 lambda!464412))))

(assert (=> bs!1935658 (not (= lambda!464432 lambda!464384))))

(assert (=> bs!1935659 (not (= lambda!464432 lambda!464426))))

(assert (=> bs!1935660 (= (and (= r1!5845 (regOne!39804 lt!2630312)) (= rTail!78 (regTwo!39804 lt!2630312))) (= lambda!464432 lambda!464429))))

(assert (=> bs!1935657 (= (= r1!5845 lt!2630318) (= lambda!464432 lambda!464413))))

(assert (=> bs!1935658 (= (= r1!5845 lt!2630318) (= lambda!464432 lambda!464385))))

(assert (=> bs!1935661 (not (= lambda!464432 lambda!464428))))

(assert (=> bs!1935662 (= lambda!464432 lambda!464387)))

(assert (=> bs!1935663 (not (= lambda!464432 lambda!464418))))

(assert (=> bs!1935662 (not (= lambda!464432 lambda!464386))))

(assert (=> bs!1935664 (= (and (= r1!5845 (regOne!39804 lt!2630313)) (= rTail!78 (regTwo!39804 lt!2630313))) (= lambda!464432 lambda!464427))))

(assert (=> bs!1935665 (not (= lambda!464432 lambda!464430))))

(assert (=> d!2301695 true))

(assert (=> d!2301695 true))

(assert (=> d!2301695 true))

(assert (=> d!2301695 (= (Exists!4263 lambda!464431) (Exists!4263 lambda!464432))))

(declare-fun lt!2630424 () Unit!166123)

(assert (=> d!2301695 (= lt!2630424 (choose!57936 r1!5845 rTail!78 s!13591))))

(assert (=> d!2301695 (validRegex!10160 r1!5845)))

(assert (=> d!2301695 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2587 r1!5845 rTail!78 s!13591) lt!2630424)))

(declare-fun m!8079466 () Bool)

(assert (=> bs!1935666 m!8079466))

(declare-fun m!8079468 () Bool)

(assert (=> bs!1935666 m!8079468))

(declare-fun m!8079470 () Bool)

(assert (=> bs!1935666 m!8079470))

(assert (=> bs!1935666 m!8079198))

(assert (=> b!7494958 d!2301695))

(declare-fun b!7495304 () Bool)

(declare-fun e!4469126 () Bool)

(declare-fun lt!2630425 () Bool)

(assert (=> b!7495304 (= e!4469126 (not lt!2630425))))

(declare-fun b!7495305 () Bool)

(declare-fun e!4469124 () Bool)

(assert (=> b!7495305 (= e!4469124 e!4469126)))

(declare-fun c!1383836 () Bool)

(assert (=> b!7495305 (= c!1383836 (is-EmptyLang!19646 r1!5845))))

(declare-fun b!7495306 () Bool)

(declare-fun call!688064 () Bool)

(assert (=> b!7495306 (= e!4469124 (= lt!2630425 call!688064))))

(declare-fun b!7495307 () Bool)

(declare-fun e!4469128 () Bool)

(assert (=> b!7495307 (= e!4469128 (nullable!8582 r1!5845))))

(declare-fun b!7495308 () Bool)

(declare-fun res!3006639 () Bool)

(declare-fun e!4469123 () Bool)

(assert (=> b!7495308 (=> res!3006639 e!4469123)))

(assert (=> b!7495308 (= res!3006639 (not (is-ElementMatch!19646 r1!5845)))))

(assert (=> b!7495308 (= e!4469126 e!4469123)))

(declare-fun b!7495309 () Bool)

(declare-fun res!3006642 () Bool)

(declare-fun e!4469127 () Bool)

(assert (=> b!7495309 (=> (not res!3006642) (not e!4469127))))

(assert (=> b!7495309 (= res!3006642 (isEmpty!41270 (tail!14948 (_1!37666 lt!2630317))))))

(declare-fun b!7495310 () Bool)

(declare-fun res!3006638 () Bool)

(assert (=> b!7495310 (=> (not res!3006638) (not e!4469127))))

(assert (=> b!7495310 (= res!3006638 (not call!688064))))

(declare-fun b!7495311 () Bool)

(declare-fun e!4469129 () Bool)

(assert (=> b!7495311 (= e!4469123 e!4469129)))

(declare-fun res!3006641 () Bool)

(assert (=> b!7495311 (=> (not res!3006641) (not e!4469129))))

(assert (=> b!7495311 (= res!3006641 (not lt!2630425))))

(declare-fun b!7495312 () Bool)

(declare-fun e!4469125 () Bool)

(assert (=> b!7495312 (= e!4469125 (not (= (head!15379 (_1!37666 lt!2630317)) (c!1383781 r1!5845))))))

(declare-fun d!2301697 () Bool)

(assert (=> d!2301697 e!4469124))

(declare-fun c!1383835 () Bool)

(assert (=> d!2301697 (= c!1383835 (is-EmptyExpr!19646 r1!5845))))

(assert (=> d!2301697 (= lt!2630425 e!4469128)))

(declare-fun c!1383837 () Bool)

(assert (=> d!2301697 (= c!1383837 (isEmpty!41270 (_1!37666 lt!2630317)))))

(assert (=> d!2301697 (validRegex!10160 r1!5845)))

(assert (=> d!2301697 (= (matchR!9408 r1!5845 (_1!37666 lt!2630317)) lt!2630425)))

(declare-fun b!7495313 () Bool)

(assert (=> b!7495313 (= e!4469129 e!4469125)))

(declare-fun res!3006635 () Bool)

(assert (=> b!7495313 (=> res!3006635 e!4469125)))

(assert (=> b!7495313 (= res!3006635 call!688064)))

(declare-fun bm!688057 () Bool)

(assert (=> bm!688057 (= call!688064 (isEmpty!41270 (_1!37666 lt!2630317)))))

(declare-fun b!7495314 () Bool)

(declare-fun res!3006636 () Bool)

(assert (=> b!7495314 (=> res!3006636 e!4469123)))

(assert (=> b!7495314 (= res!3006636 e!4469127)))

(declare-fun res!3006637 () Bool)

(assert (=> b!7495314 (=> (not res!3006637) (not e!4469127))))

(assert (=> b!7495314 (= res!3006637 lt!2630425)))

(declare-fun b!7495315 () Bool)

(assert (=> b!7495315 (= e!4469128 (matchR!9408 (derivativeStep!5639 r1!5845 (head!15379 (_1!37666 lt!2630317))) (tail!14948 (_1!37666 lt!2630317))))))

(declare-fun b!7495316 () Bool)

(declare-fun res!3006640 () Bool)

(assert (=> b!7495316 (=> res!3006640 e!4469125)))

(assert (=> b!7495316 (= res!3006640 (not (isEmpty!41270 (tail!14948 (_1!37666 lt!2630317)))))))

(declare-fun b!7495317 () Bool)

(assert (=> b!7495317 (= e!4469127 (= (head!15379 (_1!37666 lt!2630317)) (c!1383781 r1!5845)))))

(assert (= (and d!2301697 c!1383837) b!7495307))

(assert (= (and d!2301697 (not c!1383837)) b!7495315))

(assert (= (and d!2301697 c!1383835) b!7495306))

(assert (= (and d!2301697 (not c!1383835)) b!7495305))

(assert (= (and b!7495305 c!1383836) b!7495304))

(assert (= (and b!7495305 (not c!1383836)) b!7495308))

(assert (= (and b!7495308 (not res!3006639)) b!7495314))

(assert (= (and b!7495314 res!3006637) b!7495310))

(assert (= (and b!7495310 res!3006638) b!7495309))

(assert (= (and b!7495309 res!3006642) b!7495317))

(assert (= (and b!7495314 (not res!3006636)) b!7495311))

(assert (= (and b!7495311 res!3006641) b!7495313))

(assert (= (and b!7495313 (not res!3006635)) b!7495316))

(assert (= (and b!7495316 (not res!3006640)) b!7495312))

(assert (= (or b!7495306 b!7495310 b!7495313) bm!688057))

(declare-fun m!8079472 () Bool)

(assert (=> b!7495309 m!8079472))

(assert (=> b!7495309 m!8079472))

(declare-fun m!8079474 () Bool)

(assert (=> b!7495309 m!8079474))

(declare-fun m!8079476 () Bool)

(assert (=> bm!688057 m!8079476))

(declare-fun m!8079478 () Bool)

(assert (=> b!7495315 m!8079478))

(assert (=> b!7495315 m!8079478))

(declare-fun m!8079480 () Bool)

(assert (=> b!7495315 m!8079480))

(assert (=> b!7495315 m!8079472))

(assert (=> b!7495315 m!8079480))

(assert (=> b!7495315 m!8079472))

(declare-fun m!8079482 () Bool)

(assert (=> b!7495315 m!8079482))

(assert (=> d!2301697 m!8079476))

(assert (=> d!2301697 m!8079198))

(declare-fun m!8079484 () Bool)

(assert (=> b!7495307 m!8079484))

(assert (=> b!7495312 m!8079478))

(assert (=> b!7495317 m!8079478))

(assert (=> b!7495316 m!8079472))

(assert (=> b!7495316 m!8079472))

(assert (=> b!7495316 m!8079474))

(assert (=> b!7494958 d!2301697))

(declare-fun d!2301699 () Bool)

(assert (=> d!2301699 (= (Exists!4263 lambda!464387) (choose!57938 lambda!464387))))

(declare-fun bs!1935667 () Bool)

(assert (= bs!1935667 d!2301699))

(declare-fun m!8079486 () Bool)

(assert (=> bs!1935667 m!8079486))

(assert (=> b!7494958 d!2301699))

(declare-fun bs!1935668 () Bool)

(declare-fun b!7495326 () Bool)

(assert (= bs!1935668 (and b!7495326 d!2301695)))

(declare-fun lambda!464433 () Int)

(assert (=> bs!1935668 (not (= lambda!464433 lambda!464431))))

(declare-fun bs!1935669 () Bool)

(assert (= bs!1935669 (and b!7495326 d!2301651)))

(assert (=> bs!1935669 (not (= lambda!464433 lambda!464412))))

(declare-fun bs!1935670 () Bool)

(assert (= bs!1935670 (and b!7495326 b!7494957)))

(assert (=> bs!1935670 (not (= lambda!464433 lambda!464384))))

(declare-fun bs!1935671 () Bool)

(assert (= bs!1935671 (and b!7495326 b!7495232)))

(assert (=> bs!1935671 (= (and (= (reg!19975 lt!2630302) (reg!19975 lt!2630313)) (= lt!2630302 lt!2630313)) (= lambda!464433 lambda!464426))))

(declare-fun bs!1935672 () Bool)

(assert (= bs!1935672 (and b!7495326 b!7495257)))

(assert (=> bs!1935672 (not (= lambda!464433 lambda!464429))))

(assert (=> bs!1935669 (not (= lambda!464433 lambda!464413))))

(assert (=> bs!1935670 (not (= lambda!464433 lambda!464385))))

(assert (=> bs!1935668 (not (= lambda!464433 lambda!464432))))

(declare-fun bs!1935673 () Bool)

(assert (= bs!1935673 (and b!7495326 b!7495265)))

(assert (=> bs!1935673 (= (and (= (reg!19975 lt!2630302) (reg!19975 lt!2630312)) (= lt!2630302 lt!2630312)) (= lambda!464433 lambda!464428))))

(declare-fun bs!1935674 () Bool)

(assert (= bs!1935674 (and b!7495326 b!7494958)))

(assert (=> bs!1935674 (not (= lambda!464433 lambda!464387))))

(declare-fun bs!1935675 () Bool)

(assert (= bs!1935675 (and b!7495326 d!2301653)))

(assert (=> bs!1935675 (not (= lambda!464433 lambda!464418))))

(assert (=> bs!1935674 (not (= lambda!464433 lambda!464386))))

(declare-fun bs!1935676 () Bool)

(assert (= bs!1935676 (and b!7495326 b!7495224)))

(assert (=> bs!1935676 (not (= lambda!464433 lambda!464427))))

(declare-fun bs!1935677 () Bool)

(assert (= bs!1935677 (and b!7495326 d!2301687)))

(assert (=> bs!1935677 (not (= lambda!464433 lambda!464430))))

(assert (=> b!7495326 true))

(assert (=> b!7495326 true))

(declare-fun bs!1935678 () Bool)

(declare-fun b!7495318 () Bool)

(assert (= bs!1935678 (and b!7495318 d!2301651)))

(declare-fun lambda!464434 () Int)

(assert (=> bs!1935678 (not (= lambda!464434 lambda!464412))))

(declare-fun bs!1935679 () Bool)

(assert (= bs!1935679 (and b!7495318 b!7494957)))

(assert (=> bs!1935679 (not (= lambda!464434 lambda!464384))))

(declare-fun bs!1935680 () Bool)

(assert (= bs!1935680 (and b!7495318 b!7495232)))

(assert (=> bs!1935680 (not (= lambda!464434 lambda!464426))))

(declare-fun bs!1935681 () Bool)

(assert (= bs!1935681 (and b!7495318 b!7495257)))

(assert (=> bs!1935681 (= (and (= (regOne!39804 lt!2630302) (regOne!39804 lt!2630312)) (= (regTwo!39804 lt!2630302) (regTwo!39804 lt!2630312))) (= lambda!464434 lambda!464429))))

(assert (=> bs!1935678 (= (and (= (regOne!39804 lt!2630302) lt!2630318) (= (regTwo!39804 lt!2630302) rTail!78)) (= lambda!464434 lambda!464413))))

(assert (=> bs!1935679 (= (and (= (regOne!39804 lt!2630302) lt!2630318) (= (regTwo!39804 lt!2630302) rTail!78)) (= lambda!464434 lambda!464385))))

(declare-fun bs!1935682 () Bool)

(assert (= bs!1935682 (and b!7495318 d!2301695)))

(assert (=> bs!1935682 (= (and (= (regOne!39804 lt!2630302) r1!5845) (= (regTwo!39804 lt!2630302) rTail!78)) (= lambda!464434 lambda!464432))))

(declare-fun bs!1935683 () Bool)

(assert (= bs!1935683 (and b!7495318 b!7495265)))

(assert (=> bs!1935683 (not (= lambda!464434 lambda!464428))))

(declare-fun bs!1935684 () Bool)

(assert (= bs!1935684 (and b!7495318 b!7494958)))

(assert (=> bs!1935684 (= (and (= (regOne!39804 lt!2630302) r1!5845) (= (regTwo!39804 lt!2630302) rTail!78)) (= lambda!464434 lambda!464387))))

(declare-fun bs!1935685 () Bool)

(assert (= bs!1935685 (and b!7495318 d!2301653)))

(assert (=> bs!1935685 (not (= lambda!464434 lambda!464418))))

(assert (=> bs!1935684 (not (= lambda!464434 lambda!464386))))

(declare-fun bs!1935686 () Bool)

(assert (= bs!1935686 (and b!7495318 b!7495224)))

(assert (=> bs!1935686 (= (and (= (regOne!39804 lt!2630302) (regOne!39804 lt!2630313)) (= (regTwo!39804 lt!2630302) (regTwo!39804 lt!2630313))) (= lambda!464434 lambda!464427))))

(declare-fun bs!1935687 () Bool)

(assert (= bs!1935687 (and b!7495318 d!2301687)))

(assert (=> bs!1935687 (not (= lambda!464434 lambda!464430))))

(assert (=> bs!1935682 (not (= lambda!464434 lambda!464431))))

(declare-fun bs!1935688 () Bool)

(assert (= bs!1935688 (and b!7495318 b!7495326)))

(assert (=> bs!1935688 (not (= lambda!464434 lambda!464433))))

(assert (=> b!7495318 true))

(assert (=> b!7495318 true))

(declare-fun e!4469130 () Bool)

(declare-fun call!688065 () Bool)

(assert (=> b!7495318 (= e!4469130 call!688065)))

(declare-fun b!7495320 () Bool)

(declare-fun res!3006643 () Bool)

(declare-fun e!4469133 () Bool)

(assert (=> b!7495320 (=> res!3006643 e!4469133)))

(declare-fun call!688066 () Bool)

(assert (=> b!7495320 (= res!3006643 call!688066)))

(assert (=> b!7495320 (= e!4469130 e!4469133)))

(declare-fun b!7495321 () Bool)

(declare-fun e!4469132 () Bool)

(assert (=> b!7495321 (= e!4469132 (matchRSpec!4323 (regTwo!39805 lt!2630302) s!13591))))

(declare-fun b!7495322 () Bool)

(declare-fun c!1383838 () Bool)

(assert (=> b!7495322 (= c!1383838 (is-ElementMatch!19646 lt!2630302))))

(declare-fun e!4469131 () Bool)

(declare-fun e!4469136 () Bool)

(assert (=> b!7495322 (= e!4469131 e!4469136)))

(declare-fun bm!688060 () Bool)

(assert (=> bm!688060 (= call!688066 (isEmpty!41270 s!13591))))

(declare-fun b!7495323 () Bool)

(assert (=> b!7495323 (= e!4469136 (= s!13591 (Cons!72236 (c!1383781 lt!2630302) Nil!72236)))))

(declare-fun b!7495324 () Bool)

(declare-fun e!4469135 () Bool)

(assert (=> b!7495324 (= e!4469135 e!4469131)))

(declare-fun res!3006644 () Bool)

(assert (=> b!7495324 (= res!3006644 (not (is-EmptyLang!19646 lt!2630302)))))

(assert (=> b!7495324 (=> (not res!3006644) (not e!4469131))))

(declare-fun b!7495325 () Bool)

(declare-fun e!4469134 () Bool)

(assert (=> b!7495325 (= e!4469134 e!4469130)))

(declare-fun c!1383840 () Bool)

(assert (=> b!7495325 (= c!1383840 (is-Star!19646 lt!2630302))))

(assert (=> b!7495326 (= e!4469133 call!688065)))

(declare-fun b!7495327 () Bool)

(declare-fun c!1383839 () Bool)

(assert (=> b!7495327 (= c!1383839 (is-Union!19646 lt!2630302))))

(assert (=> b!7495327 (= e!4469136 e!4469134)))

(declare-fun b!7495319 () Bool)

(assert (=> b!7495319 (= e!4469134 e!4469132)))

(declare-fun res!3006645 () Bool)

(assert (=> b!7495319 (= res!3006645 (matchRSpec!4323 (regOne!39805 lt!2630302) s!13591))))

(assert (=> b!7495319 (=> res!3006645 e!4469132)))

(declare-fun d!2301701 () Bool)

(declare-fun c!1383841 () Bool)

(assert (=> d!2301701 (= c!1383841 (is-EmptyExpr!19646 lt!2630302))))

(assert (=> d!2301701 (= (matchRSpec!4323 lt!2630302 s!13591) e!4469135)))

(declare-fun bm!688061 () Bool)

(assert (=> bm!688061 (= call!688065 (Exists!4263 (ite c!1383840 lambda!464433 lambda!464434)))))

(declare-fun b!7495328 () Bool)

(assert (=> b!7495328 (= e!4469135 call!688066)))

(assert (= (and d!2301701 c!1383841) b!7495328))

(assert (= (and d!2301701 (not c!1383841)) b!7495324))

(assert (= (and b!7495324 res!3006644) b!7495322))

(assert (= (and b!7495322 c!1383838) b!7495323))

(assert (= (and b!7495322 (not c!1383838)) b!7495327))

(assert (= (and b!7495327 c!1383839) b!7495319))

(assert (= (and b!7495327 (not c!1383839)) b!7495325))

(assert (= (and b!7495319 (not res!3006645)) b!7495321))

(assert (= (and b!7495325 c!1383840) b!7495320))

(assert (= (and b!7495325 (not c!1383840)) b!7495318))

(assert (= (and b!7495320 (not res!3006643)) b!7495326))

(assert (= (or b!7495326 b!7495318) bm!688061))

(assert (= (or b!7495328 b!7495320) bm!688060))

(declare-fun m!8079488 () Bool)

(assert (=> b!7495321 m!8079488))

(assert (=> bm!688060 m!8079382))

(declare-fun m!8079490 () Bool)

(assert (=> b!7495319 m!8079490))

(declare-fun m!8079492 () Bool)

(assert (=> bm!688061 m!8079492))

(assert (=> b!7494947 d!2301701))

(declare-fun bs!1935689 () Bool)

(declare-fun b!7495346 () Bool)

(assert (= bs!1935689 (and b!7495346 d!2301651)))

(declare-fun lambda!464435 () Int)

(assert (=> bs!1935689 (not (= lambda!464435 lambda!464412))))

(declare-fun bs!1935690 () Bool)

(assert (= bs!1935690 (and b!7495346 b!7494957)))

(assert (=> bs!1935690 (not (= lambda!464435 lambda!464384))))

(declare-fun bs!1935691 () Bool)

(assert (= bs!1935691 (and b!7495346 b!7495232)))

(assert (=> bs!1935691 (= (and (= (reg!19975 lt!2630319) (reg!19975 lt!2630313)) (= lt!2630319 lt!2630313)) (= lambda!464435 lambda!464426))))

(declare-fun bs!1935692 () Bool)

(assert (= bs!1935692 (and b!7495346 b!7495257)))

(assert (=> bs!1935692 (not (= lambda!464435 lambda!464429))))

(assert (=> bs!1935689 (not (= lambda!464435 lambda!464413))))

(assert (=> bs!1935690 (not (= lambda!464435 lambda!464385))))

(declare-fun bs!1935693 () Bool)

(assert (= bs!1935693 (and b!7495346 d!2301695)))

(assert (=> bs!1935693 (not (= lambda!464435 lambda!464432))))

(declare-fun bs!1935694 () Bool)

(assert (= bs!1935694 (and b!7495346 b!7494958)))

(assert (=> bs!1935694 (not (= lambda!464435 lambda!464387))))

(declare-fun bs!1935695 () Bool)

(assert (= bs!1935695 (and b!7495346 d!2301653)))

(assert (=> bs!1935695 (not (= lambda!464435 lambda!464418))))

(assert (=> bs!1935694 (not (= lambda!464435 lambda!464386))))

(declare-fun bs!1935696 () Bool)

(assert (= bs!1935696 (and b!7495346 b!7495224)))

(assert (=> bs!1935696 (not (= lambda!464435 lambda!464427))))

(declare-fun bs!1935697 () Bool)

(assert (= bs!1935697 (and b!7495346 d!2301687)))

(assert (=> bs!1935697 (not (= lambda!464435 lambda!464430))))

(assert (=> bs!1935693 (not (= lambda!464435 lambda!464431))))

(declare-fun bs!1935698 () Bool)

(assert (= bs!1935698 (and b!7495346 b!7495326)))

(assert (=> bs!1935698 (= (and (= (reg!19975 lt!2630319) (reg!19975 lt!2630302)) (= lt!2630319 lt!2630302)) (= lambda!464435 lambda!464433))))

(declare-fun bs!1935699 () Bool)

(assert (= bs!1935699 (and b!7495346 b!7495318)))

(assert (=> bs!1935699 (not (= lambda!464435 lambda!464434))))

(declare-fun bs!1935700 () Bool)

(assert (= bs!1935700 (and b!7495346 b!7495265)))

(assert (=> bs!1935700 (= (and (= (reg!19975 lt!2630319) (reg!19975 lt!2630312)) (= lt!2630319 lt!2630312)) (= lambda!464435 lambda!464428))))

(assert (=> b!7495346 true))

(assert (=> b!7495346 true))

(declare-fun bs!1935701 () Bool)

(declare-fun b!7495338 () Bool)

(assert (= bs!1935701 (and b!7495338 d!2301651)))

(declare-fun lambda!464436 () Int)

(assert (=> bs!1935701 (not (= lambda!464436 lambda!464412))))

(declare-fun bs!1935702 () Bool)

(assert (= bs!1935702 (and b!7495338 b!7494957)))

(assert (=> bs!1935702 (not (= lambda!464436 lambda!464384))))

(declare-fun bs!1935703 () Bool)

(assert (= bs!1935703 (and b!7495338 b!7495232)))

(assert (=> bs!1935703 (not (= lambda!464436 lambda!464426))))

(declare-fun bs!1935704 () Bool)

(assert (= bs!1935704 (and b!7495338 b!7495257)))

(assert (=> bs!1935704 (= (and (= (regOne!39804 lt!2630319) (regOne!39804 lt!2630312)) (= (regTwo!39804 lt!2630319) (regTwo!39804 lt!2630312))) (= lambda!464436 lambda!464429))))

(assert (=> bs!1935701 (= (and (= (regOne!39804 lt!2630319) lt!2630318) (= (regTwo!39804 lt!2630319) rTail!78)) (= lambda!464436 lambda!464413))))

(assert (=> bs!1935702 (= (and (= (regOne!39804 lt!2630319) lt!2630318) (= (regTwo!39804 lt!2630319) rTail!78)) (= lambda!464436 lambda!464385))))

(declare-fun bs!1935705 () Bool)

(assert (= bs!1935705 (and b!7495338 b!7495346)))

(assert (=> bs!1935705 (not (= lambda!464436 lambda!464435))))

(declare-fun bs!1935706 () Bool)

(assert (= bs!1935706 (and b!7495338 d!2301695)))

(assert (=> bs!1935706 (= (and (= (regOne!39804 lt!2630319) r1!5845) (= (regTwo!39804 lt!2630319) rTail!78)) (= lambda!464436 lambda!464432))))

(declare-fun bs!1935707 () Bool)

(assert (= bs!1935707 (and b!7495338 b!7494958)))

(assert (=> bs!1935707 (= (and (= (regOne!39804 lt!2630319) r1!5845) (= (regTwo!39804 lt!2630319) rTail!78)) (= lambda!464436 lambda!464387))))

(declare-fun bs!1935708 () Bool)

(assert (= bs!1935708 (and b!7495338 d!2301653)))

(assert (=> bs!1935708 (not (= lambda!464436 lambda!464418))))

(assert (=> bs!1935707 (not (= lambda!464436 lambda!464386))))

(declare-fun bs!1935709 () Bool)

(assert (= bs!1935709 (and b!7495338 b!7495224)))

(assert (=> bs!1935709 (= (and (= (regOne!39804 lt!2630319) (regOne!39804 lt!2630313)) (= (regTwo!39804 lt!2630319) (regTwo!39804 lt!2630313))) (= lambda!464436 lambda!464427))))

(declare-fun bs!1935710 () Bool)

(assert (= bs!1935710 (and b!7495338 d!2301687)))

(assert (=> bs!1935710 (not (= lambda!464436 lambda!464430))))

(assert (=> bs!1935706 (not (= lambda!464436 lambda!464431))))

(declare-fun bs!1935711 () Bool)

(assert (= bs!1935711 (and b!7495338 b!7495326)))

(assert (=> bs!1935711 (not (= lambda!464436 lambda!464433))))

(declare-fun bs!1935712 () Bool)

(assert (= bs!1935712 (and b!7495338 b!7495318)))

(assert (=> bs!1935712 (= (and (= (regOne!39804 lt!2630319) (regOne!39804 lt!2630302)) (= (regTwo!39804 lt!2630319) (regTwo!39804 lt!2630302))) (= lambda!464436 lambda!464434))))

(declare-fun bs!1935713 () Bool)

(assert (= bs!1935713 (and b!7495338 b!7495265)))

(assert (=> bs!1935713 (not (= lambda!464436 lambda!464428))))

(assert (=> b!7495338 true))

(assert (=> b!7495338 true))

(declare-fun e!4469144 () Bool)

(declare-fun call!688070 () Bool)

(assert (=> b!7495338 (= e!4469144 call!688070)))

(declare-fun b!7495340 () Bool)

(declare-fun res!3006651 () Bool)

(declare-fun e!4469147 () Bool)

(assert (=> b!7495340 (=> res!3006651 e!4469147)))

(declare-fun call!688071 () Bool)

(assert (=> b!7495340 (= res!3006651 call!688071)))

(assert (=> b!7495340 (= e!4469144 e!4469147)))

(declare-fun b!7495341 () Bool)

(declare-fun e!4469146 () Bool)

(assert (=> b!7495341 (= e!4469146 (matchRSpec!4323 (regTwo!39805 lt!2630319) s!13591))))

(declare-fun b!7495342 () Bool)

(declare-fun c!1383844 () Bool)

(assert (=> b!7495342 (= c!1383844 (is-ElementMatch!19646 lt!2630319))))

(declare-fun e!4469145 () Bool)

(declare-fun e!4469150 () Bool)

(assert (=> b!7495342 (= e!4469145 e!4469150)))

(declare-fun bm!688065 () Bool)

(assert (=> bm!688065 (= call!688071 (isEmpty!41270 s!13591))))

(declare-fun b!7495343 () Bool)

(assert (=> b!7495343 (= e!4469150 (= s!13591 (Cons!72236 (c!1383781 lt!2630319) Nil!72236)))))

(declare-fun b!7495344 () Bool)

(declare-fun e!4469149 () Bool)

(assert (=> b!7495344 (= e!4469149 e!4469145)))

(declare-fun res!3006652 () Bool)

(assert (=> b!7495344 (= res!3006652 (not (is-EmptyLang!19646 lt!2630319)))))

(assert (=> b!7495344 (=> (not res!3006652) (not e!4469145))))

(declare-fun b!7495345 () Bool)

(declare-fun e!4469148 () Bool)

(assert (=> b!7495345 (= e!4469148 e!4469144)))

(declare-fun c!1383846 () Bool)

(assert (=> b!7495345 (= c!1383846 (is-Star!19646 lt!2630319))))

(assert (=> b!7495346 (= e!4469147 call!688070)))

(declare-fun b!7495347 () Bool)

(declare-fun c!1383845 () Bool)

(assert (=> b!7495347 (= c!1383845 (is-Union!19646 lt!2630319))))

(assert (=> b!7495347 (= e!4469150 e!4469148)))

(declare-fun b!7495339 () Bool)

(assert (=> b!7495339 (= e!4469148 e!4469146)))

(declare-fun res!3006653 () Bool)

(assert (=> b!7495339 (= res!3006653 (matchRSpec!4323 (regOne!39805 lt!2630319) s!13591))))

(assert (=> b!7495339 (=> res!3006653 e!4469146)))

(declare-fun d!2301703 () Bool)

(declare-fun c!1383847 () Bool)

(assert (=> d!2301703 (= c!1383847 (is-EmptyExpr!19646 lt!2630319))))

(assert (=> d!2301703 (= (matchRSpec!4323 lt!2630319 s!13591) e!4469149)))

(declare-fun bm!688066 () Bool)

(assert (=> bm!688066 (= call!688070 (Exists!4263 (ite c!1383846 lambda!464435 lambda!464436)))))

(declare-fun b!7495348 () Bool)

(assert (=> b!7495348 (= e!4469149 call!688071)))

(assert (= (and d!2301703 c!1383847) b!7495348))

(assert (= (and d!2301703 (not c!1383847)) b!7495344))

(assert (= (and b!7495344 res!3006652) b!7495342))

(assert (= (and b!7495342 c!1383844) b!7495343))

(assert (= (and b!7495342 (not c!1383844)) b!7495347))

(assert (= (and b!7495347 c!1383845) b!7495339))

(assert (= (and b!7495347 (not c!1383845)) b!7495345))

(assert (= (and b!7495339 (not res!3006653)) b!7495341))

(assert (= (and b!7495345 c!1383846) b!7495340))

(assert (= (and b!7495345 (not c!1383846)) b!7495338))

(assert (= (and b!7495340 (not res!3006651)) b!7495346))

(assert (= (or b!7495346 b!7495338) bm!688066))

(assert (= (or b!7495348 b!7495340) bm!688065))

(declare-fun m!8079506 () Bool)

(assert (=> b!7495341 m!8079506))

(assert (=> bm!688065 m!8079382))

(declare-fun m!8079508 () Bool)

(assert (=> b!7495339 m!8079508))

(declare-fun m!8079510 () Bool)

(assert (=> bm!688066 m!8079510))

(assert (=> b!7494947 d!2301703))

(declare-fun d!2301709 () Bool)

(assert (=> d!2301709 (= (matchR!9408 lt!2630302 s!13591) (matchRSpec!4323 lt!2630302 s!13591))))

(declare-fun lt!2630426 () Unit!166123)

(assert (=> d!2301709 (= lt!2630426 (choose!57939 lt!2630302 s!13591))))

(assert (=> d!2301709 (validRegex!10160 lt!2630302)))

(assert (=> d!2301709 (= (mainMatchTheorem!4317 lt!2630302 s!13591) lt!2630426)))

(declare-fun bs!1935714 () Bool)

(assert (= bs!1935714 d!2301709))

(assert (=> bs!1935714 m!8079222))

(assert (=> bs!1935714 m!8079226))

(declare-fun m!8079512 () Bool)

(assert (=> bs!1935714 m!8079512))

(declare-fun m!8079514 () Bool)

(assert (=> bs!1935714 m!8079514))

(assert (=> b!7494947 d!2301709))

(declare-fun d!2301711 () Bool)

(assert (=> d!2301711 (= (matchR!9408 lt!2630319 s!13591) (matchRSpec!4323 lt!2630319 s!13591))))

(declare-fun lt!2630427 () Unit!166123)

(assert (=> d!2301711 (= lt!2630427 (choose!57939 lt!2630319 s!13591))))

(assert (=> d!2301711 (validRegex!10160 lt!2630319)))

(assert (=> d!2301711 (= (mainMatchTheorem!4317 lt!2630319 s!13591) lt!2630427)))

(declare-fun bs!1935715 () Bool)

(assert (= bs!1935715 d!2301711))

(assert (=> bs!1935715 m!8079230))

(assert (=> bs!1935715 m!8079224))

(declare-fun m!8079516 () Bool)

(assert (=> bs!1935715 m!8079516))

(declare-fun m!8079518 () Bool)

(assert (=> bs!1935715 m!8079518))

(assert (=> b!7494947 d!2301711))

(declare-fun b!7495358 () Bool)

(declare-fun e!4469161 () Bool)

(declare-fun lt!2630428 () Bool)

(assert (=> b!7495358 (= e!4469161 (not lt!2630428))))

(declare-fun b!7495359 () Bool)

(declare-fun e!4469159 () Bool)

(assert (=> b!7495359 (= e!4469159 e!4469161)))

(declare-fun c!1383851 () Bool)

(assert (=> b!7495359 (= c!1383851 (is-EmptyLang!19646 lt!2630319))))

(declare-fun b!7495360 () Bool)

(declare-fun call!688075 () Bool)

(assert (=> b!7495360 (= e!4469159 (= lt!2630428 call!688075))))

(declare-fun b!7495361 () Bool)

(declare-fun e!4469163 () Bool)

(assert (=> b!7495361 (= e!4469163 (nullable!8582 lt!2630319))))

(declare-fun b!7495362 () Bool)

(declare-fun res!3006663 () Bool)

(declare-fun e!4469158 () Bool)

(assert (=> b!7495362 (=> res!3006663 e!4469158)))

(assert (=> b!7495362 (= res!3006663 (not (is-ElementMatch!19646 lt!2630319)))))

(assert (=> b!7495362 (= e!4469161 e!4469158)))

(declare-fun b!7495363 () Bool)

(declare-fun res!3006666 () Bool)

(declare-fun e!4469162 () Bool)

(assert (=> b!7495363 (=> (not res!3006666) (not e!4469162))))

(assert (=> b!7495363 (= res!3006666 (isEmpty!41270 (tail!14948 s!13591)))))

(declare-fun b!7495364 () Bool)

(declare-fun res!3006662 () Bool)

(assert (=> b!7495364 (=> (not res!3006662) (not e!4469162))))

(assert (=> b!7495364 (= res!3006662 (not call!688075))))

(declare-fun b!7495365 () Bool)

(declare-fun e!4469164 () Bool)

(assert (=> b!7495365 (= e!4469158 e!4469164)))

(declare-fun res!3006665 () Bool)

(assert (=> b!7495365 (=> (not res!3006665) (not e!4469164))))

(assert (=> b!7495365 (= res!3006665 (not lt!2630428))))

(declare-fun b!7495366 () Bool)

(declare-fun e!4469160 () Bool)

(assert (=> b!7495366 (= e!4469160 (not (= (head!15379 s!13591) (c!1383781 lt!2630319))))))

(declare-fun d!2301713 () Bool)

(assert (=> d!2301713 e!4469159))

(declare-fun c!1383850 () Bool)

(assert (=> d!2301713 (= c!1383850 (is-EmptyExpr!19646 lt!2630319))))

(assert (=> d!2301713 (= lt!2630428 e!4469163)))

(declare-fun c!1383852 () Bool)

(assert (=> d!2301713 (= c!1383852 (isEmpty!41270 s!13591))))

(assert (=> d!2301713 (validRegex!10160 lt!2630319)))

(assert (=> d!2301713 (= (matchR!9408 lt!2630319 s!13591) lt!2630428)))

(declare-fun b!7495367 () Bool)

(assert (=> b!7495367 (= e!4469164 e!4469160)))

(declare-fun res!3006659 () Bool)

(assert (=> b!7495367 (=> res!3006659 e!4469160)))

(assert (=> b!7495367 (= res!3006659 call!688075)))

(declare-fun bm!688070 () Bool)

(assert (=> bm!688070 (= call!688075 (isEmpty!41270 s!13591))))

(declare-fun b!7495368 () Bool)

(declare-fun res!3006660 () Bool)

(assert (=> b!7495368 (=> res!3006660 e!4469158)))

(assert (=> b!7495368 (= res!3006660 e!4469162)))

(declare-fun res!3006661 () Bool)

(assert (=> b!7495368 (=> (not res!3006661) (not e!4469162))))

(assert (=> b!7495368 (= res!3006661 lt!2630428)))

(declare-fun b!7495369 () Bool)

(assert (=> b!7495369 (= e!4469163 (matchR!9408 (derivativeStep!5639 lt!2630319 (head!15379 s!13591)) (tail!14948 s!13591)))))

(declare-fun b!7495370 () Bool)

(declare-fun res!3006664 () Bool)

(assert (=> b!7495370 (=> res!3006664 e!4469160)))

(assert (=> b!7495370 (= res!3006664 (not (isEmpty!41270 (tail!14948 s!13591))))))

(declare-fun b!7495371 () Bool)

(assert (=> b!7495371 (= e!4469162 (= (head!15379 s!13591) (c!1383781 lt!2630319)))))

(assert (= (and d!2301713 c!1383852) b!7495361))

(assert (= (and d!2301713 (not c!1383852)) b!7495369))

(assert (= (and d!2301713 c!1383850) b!7495360))

(assert (= (and d!2301713 (not c!1383850)) b!7495359))

(assert (= (and b!7495359 c!1383851) b!7495358))

(assert (= (and b!7495359 (not c!1383851)) b!7495362))

(assert (= (and b!7495362 (not res!3006663)) b!7495368))

(assert (= (and b!7495368 res!3006661) b!7495364))

(assert (= (and b!7495364 res!3006662) b!7495363))

(assert (= (and b!7495363 res!3006666) b!7495371))

(assert (= (and b!7495368 (not res!3006660)) b!7495365))

(assert (= (and b!7495365 res!3006665) b!7495367))

(assert (= (and b!7495367 (not res!3006659)) b!7495370))

(assert (= (and b!7495370 (not res!3006664)) b!7495366))

(assert (= (or b!7495360 b!7495364 b!7495367) bm!688070))

(assert (=> b!7495363 m!8079378))

(assert (=> b!7495363 m!8079378))

(assert (=> b!7495363 m!8079380))

(assert (=> bm!688070 m!8079382))

(assert (=> b!7495369 m!8079384))

(assert (=> b!7495369 m!8079384))

(declare-fun m!8079520 () Bool)

(assert (=> b!7495369 m!8079520))

(assert (=> b!7495369 m!8079378))

(assert (=> b!7495369 m!8079520))

(assert (=> b!7495369 m!8079378))

(declare-fun m!8079522 () Bool)

(assert (=> b!7495369 m!8079522))

(assert (=> d!2301713 m!8079382))

(assert (=> d!2301713 m!8079518))

(declare-fun m!8079524 () Bool)

(assert (=> b!7495361 m!8079524))

(assert (=> b!7495366 m!8079384))

(assert (=> b!7495371 m!8079384))

(assert (=> b!7495370 m!8079378))

(assert (=> b!7495370 m!8079378))

(assert (=> b!7495370 m!8079380))

(assert (=> b!7494947 d!2301713))

(declare-fun b!7495372 () Bool)

(declare-fun e!4469168 () Bool)

(declare-fun lt!2630429 () Bool)

(assert (=> b!7495372 (= e!4469168 (not lt!2630429))))

(declare-fun b!7495373 () Bool)

(declare-fun e!4469166 () Bool)

(assert (=> b!7495373 (= e!4469166 e!4469168)))

(declare-fun c!1383854 () Bool)

(assert (=> b!7495373 (= c!1383854 (is-EmptyLang!19646 lt!2630302))))

(declare-fun b!7495374 () Bool)

(declare-fun call!688076 () Bool)

(assert (=> b!7495374 (= e!4469166 (= lt!2630429 call!688076))))

(declare-fun b!7495375 () Bool)

(declare-fun e!4469170 () Bool)

(assert (=> b!7495375 (= e!4469170 (nullable!8582 lt!2630302))))

(declare-fun b!7495376 () Bool)

(declare-fun res!3006671 () Bool)

(declare-fun e!4469165 () Bool)

(assert (=> b!7495376 (=> res!3006671 e!4469165)))

(assert (=> b!7495376 (= res!3006671 (not (is-ElementMatch!19646 lt!2630302)))))

(assert (=> b!7495376 (= e!4469168 e!4469165)))

(declare-fun b!7495377 () Bool)

(declare-fun res!3006674 () Bool)

(declare-fun e!4469169 () Bool)

(assert (=> b!7495377 (=> (not res!3006674) (not e!4469169))))

(assert (=> b!7495377 (= res!3006674 (isEmpty!41270 (tail!14948 s!13591)))))

(declare-fun b!7495378 () Bool)

(declare-fun res!3006670 () Bool)

(assert (=> b!7495378 (=> (not res!3006670) (not e!4469169))))

(assert (=> b!7495378 (= res!3006670 (not call!688076))))

(declare-fun b!7495379 () Bool)

(declare-fun e!4469171 () Bool)

(assert (=> b!7495379 (= e!4469165 e!4469171)))

(declare-fun res!3006673 () Bool)

(assert (=> b!7495379 (=> (not res!3006673) (not e!4469171))))

(assert (=> b!7495379 (= res!3006673 (not lt!2630429))))

(declare-fun b!7495380 () Bool)

(declare-fun e!4469167 () Bool)

(assert (=> b!7495380 (= e!4469167 (not (= (head!15379 s!13591) (c!1383781 lt!2630302))))))

(declare-fun d!2301715 () Bool)

(assert (=> d!2301715 e!4469166))

(declare-fun c!1383853 () Bool)

(assert (=> d!2301715 (= c!1383853 (is-EmptyExpr!19646 lt!2630302))))

(assert (=> d!2301715 (= lt!2630429 e!4469170)))

(declare-fun c!1383855 () Bool)

(assert (=> d!2301715 (= c!1383855 (isEmpty!41270 s!13591))))

(assert (=> d!2301715 (validRegex!10160 lt!2630302)))

(assert (=> d!2301715 (= (matchR!9408 lt!2630302 s!13591) lt!2630429)))

(declare-fun b!7495381 () Bool)

(assert (=> b!7495381 (= e!4469171 e!4469167)))

(declare-fun res!3006667 () Bool)

(assert (=> b!7495381 (=> res!3006667 e!4469167)))

(assert (=> b!7495381 (= res!3006667 call!688076)))

(declare-fun bm!688071 () Bool)

(assert (=> bm!688071 (= call!688076 (isEmpty!41270 s!13591))))

(declare-fun b!7495382 () Bool)

(declare-fun res!3006668 () Bool)

(assert (=> b!7495382 (=> res!3006668 e!4469165)))

(assert (=> b!7495382 (= res!3006668 e!4469169)))

(declare-fun res!3006669 () Bool)

(assert (=> b!7495382 (=> (not res!3006669) (not e!4469169))))

(assert (=> b!7495382 (= res!3006669 lt!2630429)))

(declare-fun b!7495383 () Bool)

(assert (=> b!7495383 (= e!4469170 (matchR!9408 (derivativeStep!5639 lt!2630302 (head!15379 s!13591)) (tail!14948 s!13591)))))

(declare-fun b!7495384 () Bool)

(declare-fun res!3006672 () Bool)

(assert (=> b!7495384 (=> res!3006672 e!4469167)))

(assert (=> b!7495384 (= res!3006672 (not (isEmpty!41270 (tail!14948 s!13591))))))

(declare-fun b!7495385 () Bool)

(assert (=> b!7495385 (= e!4469169 (= (head!15379 s!13591) (c!1383781 lt!2630302)))))

(assert (= (and d!2301715 c!1383855) b!7495375))

(assert (= (and d!2301715 (not c!1383855)) b!7495383))

(assert (= (and d!2301715 c!1383853) b!7495374))

(assert (= (and d!2301715 (not c!1383853)) b!7495373))

(assert (= (and b!7495373 c!1383854) b!7495372))

(assert (= (and b!7495373 (not c!1383854)) b!7495376))

(assert (= (and b!7495376 (not res!3006671)) b!7495382))

(assert (= (and b!7495382 res!3006669) b!7495378))

(assert (= (and b!7495378 res!3006670) b!7495377))

(assert (= (and b!7495377 res!3006674) b!7495385))

(assert (= (and b!7495382 (not res!3006668)) b!7495379))

(assert (= (and b!7495379 res!3006673) b!7495381))

(assert (= (and b!7495381 (not res!3006667)) b!7495384))

(assert (= (and b!7495384 (not res!3006672)) b!7495380))

(assert (= (or b!7495374 b!7495378 b!7495381) bm!688071))

(assert (=> b!7495377 m!8079378))

(assert (=> b!7495377 m!8079378))

(assert (=> b!7495377 m!8079380))

(assert (=> bm!688071 m!8079382))

(assert (=> b!7495383 m!8079384))

(assert (=> b!7495383 m!8079384))

(declare-fun m!8079526 () Bool)

(assert (=> b!7495383 m!8079526))

(assert (=> b!7495383 m!8079378))

(assert (=> b!7495383 m!8079526))

(assert (=> b!7495383 m!8079378))

(declare-fun m!8079528 () Bool)

(assert (=> b!7495383 m!8079528))

(assert (=> d!2301715 m!8079382))

(assert (=> d!2301715 m!8079514))

(declare-fun m!8079530 () Bool)

(assert (=> b!7495375 m!8079530))

(assert (=> b!7495380 m!8079384))

(assert (=> b!7495385 m!8079384))

(assert (=> b!7495384 m!8079378))

(assert (=> b!7495384 m!8079378))

(assert (=> b!7495384 m!8079380))

(assert (=> b!7494947 d!2301715))

(declare-fun b!7495386 () Bool)

(declare-fun e!4469175 () Bool)

(declare-fun lt!2630430 () Bool)

(assert (=> b!7495386 (= e!4469175 (not lt!2630430))))

(declare-fun b!7495387 () Bool)

(declare-fun e!4469173 () Bool)

(assert (=> b!7495387 (= e!4469173 e!4469175)))

(declare-fun c!1383857 () Bool)

(assert (=> b!7495387 (= c!1383857 (is-EmptyLang!19646 rTail!78))))

(declare-fun b!7495388 () Bool)

(declare-fun call!688077 () Bool)

(assert (=> b!7495388 (= e!4469173 (= lt!2630430 call!688077))))

(declare-fun b!7495389 () Bool)

(declare-fun e!4469177 () Bool)

(assert (=> b!7495389 (= e!4469177 (nullable!8582 rTail!78))))

(declare-fun b!7495390 () Bool)

(declare-fun res!3006679 () Bool)

(declare-fun e!4469172 () Bool)

(assert (=> b!7495390 (=> res!3006679 e!4469172)))

(assert (=> b!7495390 (= res!3006679 (not (is-ElementMatch!19646 rTail!78)))))

(assert (=> b!7495390 (= e!4469175 e!4469172)))

(declare-fun b!7495391 () Bool)

(declare-fun res!3006682 () Bool)

(declare-fun e!4469176 () Bool)

(assert (=> b!7495391 (=> (not res!3006682) (not e!4469176))))

(assert (=> b!7495391 (= res!3006682 (isEmpty!41270 (tail!14948 (_2!37666 lt!2630317))))))

(declare-fun b!7495392 () Bool)

(declare-fun res!3006678 () Bool)

(assert (=> b!7495392 (=> (not res!3006678) (not e!4469176))))

(assert (=> b!7495392 (= res!3006678 (not call!688077))))

(declare-fun b!7495393 () Bool)

(declare-fun e!4469178 () Bool)

(assert (=> b!7495393 (= e!4469172 e!4469178)))

(declare-fun res!3006681 () Bool)

(assert (=> b!7495393 (=> (not res!3006681) (not e!4469178))))

(assert (=> b!7495393 (= res!3006681 (not lt!2630430))))

(declare-fun b!7495394 () Bool)

(declare-fun e!4469174 () Bool)

(assert (=> b!7495394 (= e!4469174 (not (= (head!15379 (_2!37666 lt!2630317)) (c!1383781 rTail!78))))))

(declare-fun d!2301717 () Bool)

(assert (=> d!2301717 e!4469173))

(declare-fun c!1383856 () Bool)

(assert (=> d!2301717 (= c!1383856 (is-EmptyExpr!19646 rTail!78))))

(assert (=> d!2301717 (= lt!2630430 e!4469177)))

(declare-fun c!1383858 () Bool)

(assert (=> d!2301717 (= c!1383858 (isEmpty!41270 (_2!37666 lt!2630317)))))

(assert (=> d!2301717 (validRegex!10160 rTail!78)))

(assert (=> d!2301717 (= (matchR!9408 rTail!78 (_2!37666 lt!2630317)) lt!2630430)))

(declare-fun b!7495395 () Bool)

(assert (=> b!7495395 (= e!4469178 e!4469174)))

(declare-fun res!3006675 () Bool)

(assert (=> b!7495395 (=> res!3006675 e!4469174)))

(assert (=> b!7495395 (= res!3006675 call!688077)))

(declare-fun bm!688072 () Bool)

(assert (=> bm!688072 (= call!688077 (isEmpty!41270 (_2!37666 lt!2630317)))))

(declare-fun b!7495396 () Bool)

(declare-fun res!3006676 () Bool)

(assert (=> b!7495396 (=> res!3006676 e!4469172)))

(assert (=> b!7495396 (= res!3006676 e!4469176)))

(declare-fun res!3006677 () Bool)

(assert (=> b!7495396 (=> (not res!3006677) (not e!4469176))))

(assert (=> b!7495396 (= res!3006677 lt!2630430)))

(declare-fun b!7495397 () Bool)

(assert (=> b!7495397 (= e!4469177 (matchR!9408 (derivativeStep!5639 rTail!78 (head!15379 (_2!37666 lt!2630317))) (tail!14948 (_2!37666 lt!2630317))))))

(declare-fun b!7495398 () Bool)

(declare-fun res!3006680 () Bool)

(assert (=> b!7495398 (=> res!3006680 e!4469174)))

(assert (=> b!7495398 (= res!3006680 (not (isEmpty!41270 (tail!14948 (_2!37666 lt!2630317)))))))

(declare-fun b!7495399 () Bool)

(assert (=> b!7495399 (= e!4469176 (= (head!15379 (_2!37666 lt!2630317)) (c!1383781 rTail!78)))))

(assert (= (and d!2301717 c!1383858) b!7495389))

(assert (= (and d!2301717 (not c!1383858)) b!7495397))

(assert (= (and d!2301717 c!1383856) b!7495388))

(assert (= (and d!2301717 (not c!1383856)) b!7495387))

(assert (= (and b!7495387 c!1383857) b!7495386))

(assert (= (and b!7495387 (not c!1383857)) b!7495390))

(assert (= (and b!7495390 (not res!3006679)) b!7495396))

(assert (= (and b!7495396 res!3006677) b!7495392))

(assert (= (and b!7495392 res!3006678) b!7495391))

(assert (= (and b!7495391 res!3006682) b!7495399))

(assert (= (and b!7495396 (not res!3006676)) b!7495393))

(assert (= (and b!7495393 res!3006681) b!7495395))

(assert (= (and b!7495395 (not res!3006675)) b!7495398))

(assert (= (and b!7495398 (not res!3006680)) b!7495394))

(assert (= (or b!7495388 b!7495392 b!7495395) bm!688072))

(declare-fun m!8079532 () Bool)

(assert (=> b!7495391 m!8079532))

(assert (=> b!7495391 m!8079532))

(declare-fun m!8079534 () Bool)

(assert (=> b!7495391 m!8079534))

(declare-fun m!8079536 () Bool)

(assert (=> bm!688072 m!8079536))

(declare-fun m!8079538 () Bool)

(assert (=> b!7495397 m!8079538))

(assert (=> b!7495397 m!8079538))

(declare-fun m!8079540 () Bool)

(assert (=> b!7495397 m!8079540))

(assert (=> b!7495397 m!8079532))

(assert (=> b!7495397 m!8079540))

(assert (=> b!7495397 m!8079532))

(declare-fun m!8079542 () Bool)

(assert (=> b!7495397 m!8079542))

(assert (=> d!2301717 m!8079536))

(assert (=> d!2301717 m!8079218))

(declare-fun m!8079544 () Bool)

(assert (=> b!7495389 m!8079544))

(assert (=> b!7495394 m!8079538))

(assert (=> b!7495399 m!8079538))

(assert (=> b!7495398 m!8079532))

(assert (=> b!7495398 m!8079532))

(assert (=> b!7495398 m!8079534))

(assert (=> b!7494959 d!2301717))

(declare-fun b!7495400 () Bool)

(declare-fun e!4469181 () Bool)

(declare-fun e!4469179 () Bool)

(assert (=> b!7495400 (= e!4469181 e!4469179)))

(declare-fun c!1383859 () Bool)

(assert (=> b!7495400 (= c!1383859 (is-Union!19646 r1!5845))))

(declare-fun bm!688073 () Bool)

(declare-fun call!688078 () Bool)

(assert (=> bm!688073 (= call!688078 (validRegex!10160 (ite c!1383859 (regTwo!39805 r1!5845) (regTwo!39804 r1!5845))))))

(declare-fun b!7495401 () Bool)

(declare-fun e!4469180 () Bool)

(declare-fun e!4469183 () Bool)

(assert (=> b!7495401 (= e!4469180 e!4469183)))

(declare-fun res!3006683 () Bool)

(assert (=> b!7495401 (=> (not res!3006683) (not e!4469183))))

(declare-fun call!688079 () Bool)

(assert (=> b!7495401 (= res!3006683 call!688079)))

(declare-fun b!7495402 () Bool)

(declare-fun e!4469184 () Bool)

(declare-fun call!688080 () Bool)

(assert (=> b!7495402 (= e!4469184 call!688080)))

(declare-fun b!7495403 () Bool)

(declare-fun res!3006687 () Bool)

(assert (=> b!7495403 (=> res!3006687 e!4469180)))

(assert (=> b!7495403 (= res!3006687 (not (is-Concat!28491 r1!5845)))))

(assert (=> b!7495403 (= e!4469179 e!4469180)))

(declare-fun b!7495404 () Bool)

(declare-fun e!4469182 () Bool)

(assert (=> b!7495404 (= e!4469182 call!688078)))

(declare-fun bm!688074 () Bool)

(assert (=> bm!688074 (= call!688079 call!688080)))

(declare-fun b!7495406 () Bool)

(assert (=> b!7495406 (= e!4469183 call!688078)))

(declare-fun c!1383860 () Bool)

(declare-fun bm!688075 () Bool)

(assert (=> bm!688075 (= call!688080 (validRegex!10160 (ite c!1383860 (reg!19975 r1!5845) (ite c!1383859 (regOne!39805 r1!5845) (regOne!39804 r1!5845)))))))

(declare-fun b!7495407 () Bool)

(declare-fun res!3006686 () Bool)

(assert (=> b!7495407 (=> (not res!3006686) (not e!4469182))))

(assert (=> b!7495407 (= res!3006686 call!688079)))

(assert (=> b!7495407 (= e!4469179 e!4469182)))

(declare-fun b!7495408 () Bool)

(declare-fun e!4469185 () Bool)

(assert (=> b!7495408 (= e!4469185 e!4469181)))

(assert (=> b!7495408 (= c!1383860 (is-Star!19646 r1!5845))))

(declare-fun b!7495405 () Bool)

(assert (=> b!7495405 (= e!4469181 e!4469184)))

(declare-fun res!3006685 () Bool)

(assert (=> b!7495405 (= res!3006685 (not (nullable!8582 (reg!19975 r1!5845))))))

(assert (=> b!7495405 (=> (not res!3006685) (not e!4469184))))

(declare-fun d!2301719 () Bool)

(declare-fun res!3006684 () Bool)

(assert (=> d!2301719 (=> res!3006684 e!4469185)))

(assert (=> d!2301719 (= res!3006684 (is-ElementMatch!19646 r1!5845))))

(assert (=> d!2301719 (= (validRegex!10160 r1!5845) e!4469185)))

(assert (= (and d!2301719 (not res!3006684)) b!7495408))

(assert (= (and b!7495408 c!1383860) b!7495405))

(assert (= (and b!7495408 (not c!1383860)) b!7495400))

(assert (= (and b!7495405 res!3006685) b!7495402))

(assert (= (and b!7495400 c!1383859) b!7495407))

(assert (= (and b!7495400 (not c!1383859)) b!7495403))

(assert (= (and b!7495407 res!3006686) b!7495404))

(assert (= (and b!7495403 (not res!3006687)) b!7495401))

(assert (= (and b!7495401 res!3006683) b!7495406))

(assert (= (or b!7495404 b!7495406) bm!688073))

(assert (= (or b!7495407 b!7495401) bm!688074))

(assert (= (or b!7495402 bm!688074) bm!688075))

(declare-fun m!8079546 () Bool)

(assert (=> bm!688073 m!8079546))

(declare-fun m!8079548 () Bool)

(assert (=> bm!688075 m!8079548))

(declare-fun m!8079550 () Bool)

(assert (=> b!7495405 m!8079550))

(assert (=> start!725392 d!2301719))

(declare-fun b!7495409 () Bool)

(declare-fun e!4469188 () Bool)

(declare-fun e!4469186 () Bool)

(assert (=> b!7495409 (= e!4469188 e!4469186)))

(declare-fun c!1383861 () Bool)

(assert (=> b!7495409 (= c!1383861 (is-Union!19646 lt!2630318))))

(declare-fun bm!688076 () Bool)

(declare-fun call!688081 () Bool)

(assert (=> bm!688076 (= call!688081 (validRegex!10160 (ite c!1383861 (regTwo!39805 lt!2630318) (regTwo!39804 lt!2630318))))))

(declare-fun b!7495410 () Bool)

(declare-fun e!4469187 () Bool)

(declare-fun e!4469190 () Bool)

(assert (=> b!7495410 (= e!4469187 e!4469190)))

(declare-fun res!3006688 () Bool)

(assert (=> b!7495410 (=> (not res!3006688) (not e!4469190))))

(declare-fun call!688082 () Bool)

(assert (=> b!7495410 (= res!3006688 call!688082)))

(declare-fun b!7495411 () Bool)

(declare-fun e!4469191 () Bool)

(declare-fun call!688083 () Bool)

(assert (=> b!7495411 (= e!4469191 call!688083)))

(declare-fun b!7495412 () Bool)

(declare-fun res!3006692 () Bool)

(assert (=> b!7495412 (=> res!3006692 e!4469187)))

(assert (=> b!7495412 (= res!3006692 (not (is-Concat!28491 lt!2630318)))))

(assert (=> b!7495412 (= e!4469186 e!4469187)))

(declare-fun b!7495413 () Bool)

(declare-fun e!4469189 () Bool)

(assert (=> b!7495413 (= e!4469189 call!688081)))

(declare-fun bm!688077 () Bool)

(assert (=> bm!688077 (= call!688082 call!688083)))

(declare-fun b!7495415 () Bool)

(assert (=> b!7495415 (= e!4469190 call!688081)))

(declare-fun c!1383862 () Bool)

(declare-fun bm!688078 () Bool)

(assert (=> bm!688078 (= call!688083 (validRegex!10160 (ite c!1383862 (reg!19975 lt!2630318) (ite c!1383861 (regOne!39805 lt!2630318) (regOne!39804 lt!2630318)))))))

(declare-fun b!7495416 () Bool)

(declare-fun res!3006691 () Bool)

(assert (=> b!7495416 (=> (not res!3006691) (not e!4469189))))

(assert (=> b!7495416 (= res!3006691 call!688082)))

(assert (=> b!7495416 (= e!4469186 e!4469189)))

(declare-fun b!7495417 () Bool)

(declare-fun e!4469192 () Bool)

(assert (=> b!7495417 (= e!4469192 e!4469188)))

(assert (=> b!7495417 (= c!1383862 (is-Star!19646 lt!2630318))))

(declare-fun b!7495414 () Bool)

(assert (=> b!7495414 (= e!4469188 e!4469191)))

(declare-fun res!3006690 () Bool)

(assert (=> b!7495414 (= res!3006690 (not (nullable!8582 (reg!19975 lt!2630318))))))

(assert (=> b!7495414 (=> (not res!3006690) (not e!4469191))))

(declare-fun d!2301721 () Bool)

(declare-fun res!3006689 () Bool)

(assert (=> d!2301721 (=> res!3006689 e!4469192)))

(assert (=> d!2301721 (= res!3006689 (is-ElementMatch!19646 lt!2630318))))

(assert (=> d!2301721 (= (validRegex!10160 lt!2630318) e!4469192)))

(assert (= (and d!2301721 (not res!3006689)) b!7495417))

(assert (= (and b!7495417 c!1383862) b!7495414))

(assert (= (and b!7495417 (not c!1383862)) b!7495409))

(assert (= (and b!7495414 res!3006690) b!7495411))

(assert (= (and b!7495409 c!1383861) b!7495416))

(assert (= (and b!7495409 (not c!1383861)) b!7495412))

(assert (= (and b!7495416 res!3006691) b!7495413))

(assert (= (and b!7495412 (not res!3006692)) b!7495410))

(assert (= (and b!7495410 res!3006688) b!7495415))

(assert (= (or b!7495413 b!7495415) bm!688076))

(assert (= (or b!7495416 b!7495410) bm!688077))

(assert (= (or b!7495411 bm!688077) bm!688078))

(declare-fun m!8079552 () Bool)

(assert (=> bm!688076 m!8079552))

(declare-fun m!8079554 () Bool)

(assert (=> bm!688078 m!8079554))

(declare-fun m!8079556 () Bool)

(assert (=> b!7495414 m!8079556))

(assert (=> b!7494961 d!2301721))

(declare-fun b!7495418 () Bool)

(declare-fun e!4469195 () Bool)

(declare-fun e!4469193 () Bool)

(assert (=> b!7495418 (= e!4469195 e!4469193)))

(declare-fun c!1383863 () Bool)

(assert (=> b!7495418 (= c!1383863 (is-Union!19646 rTail!78))))

(declare-fun bm!688079 () Bool)

(declare-fun call!688084 () Bool)

(assert (=> bm!688079 (= call!688084 (validRegex!10160 (ite c!1383863 (regTwo!39805 rTail!78) (regTwo!39804 rTail!78))))))

(declare-fun b!7495419 () Bool)

(declare-fun e!4469194 () Bool)

(declare-fun e!4469197 () Bool)

(assert (=> b!7495419 (= e!4469194 e!4469197)))

(declare-fun res!3006693 () Bool)

(assert (=> b!7495419 (=> (not res!3006693) (not e!4469197))))

(declare-fun call!688085 () Bool)

(assert (=> b!7495419 (= res!3006693 call!688085)))

(declare-fun b!7495420 () Bool)

(declare-fun e!4469198 () Bool)

(declare-fun call!688086 () Bool)

(assert (=> b!7495420 (= e!4469198 call!688086)))

(declare-fun b!7495421 () Bool)

(declare-fun res!3006697 () Bool)

(assert (=> b!7495421 (=> res!3006697 e!4469194)))

(assert (=> b!7495421 (= res!3006697 (not (is-Concat!28491 rTail!78)))))

(assert (=> b!7495421 (= e!4469193 e!4469194)))

(declare-fun b!7495422 () Bool)

(declare-fun e!4469196 () Bool)

(assert (=> b!7495422 (= e!4469196 call!688084)))

(declare-fun bm!688080 () Bool)

(assert (=> bm!688080 (= call!688085 call!688086)))

(declare-fun b!7495424 () Bool)

(assert (=> b!7495424 (= e!4469197 call!688084)))

(declare-fun c!1383864 () Bool)

(declare-fun bm!688081 () Bool)

(assert (=> bm!688081 (= call!688086 (validRegex!10160 (ite c!1383864 (reg!19975 rTail!78) (ite c!1383863 (regOne!39805 rTail!78) (regOne!39804 rTail!78)))))))

(declare-fun b!7495425 () Bool)

(declare-fun res!3006696 () Bool)

(assert (=> b!7495425 (=> (not res!3006696) (not e!4469196))))

(assert (=> b!7495425 (= res!3006696 call!688085)))

(assert (=> b!7495425 (= e!4469193 e!4469196)))

(declare-fun b!7495426 () Bool)

(declare-fun e!4469199 () Bool)

(assert (=> b!7495426 (= e!4469199 e!4469195)))

(assert (=> b!7495426 (= c!1383864 (is-Star!19646 rTail!78))))

(declare-fun b!7495423 () Bool)

(assert (=> b!7495423 (= e!4469195 e!4469198)))

(declare-fun res!3006695 () Bool)

(assert (=> b!7495423 (= res!3006695 (not (nullable!8582 (reg!19975 rTail!78))))))

(assert (=> b!7495423 (=> (not res!3006695) (not e!4469198))))

(declare-fun d!2301723 () Bool)

(declare-fun res!3006694 () Bool)

(assert (=> d!2301723 (=> res!3006694 e!4469199)))

(assert (=> d!2301723 (= res!3006694 (is-ElementMatch!19646 rTail!78))))

(assert (=> d!2301723 (= (validRegex!10160 rTail!78) e!4469199)))

(assert (= (and d!2301723 (not res!3006694)) b!7495426))

(assert (= (and b!7495426 c!1383864) b!7495423))

(assert (= (and b!7495426 (not c!1383864)) b!7495418))

(assert (= (and b!7495423 res!3006695) b!7495420))

(assert (= (and b!7495418 c!1383863) b!7495425))

(assert (= (and b!7495418 (not c!1383863)) b!7495421))

(assert (= (and b!7495425 res!3006696) b!7495422))

(assert (= (and b!7495421 (not res!3006697)) b!7495419))

(assert (= (and b!7495419 res!3006693) b!7495424))

(assert (= (or b!7495422 b!7495424) bm!688079))

(assert (= (or b!7495425 b!7495419) bm!688080))

(assert (= (or b!7495420 bm!688080) bm!688081))

(declare-fun m!8079558 () Bool)

(assert (=> bm!688079 m!8079558))

(declare-fun m!8079560 () Bool)

(assert (=> bm!688081 m!8079560))

(declare-fun m!8079562 () Bool)

(assert (=> b!7495423 m!8079562))

(assert (=> b!7494950 d!2301723))

(declare-fun b!7495438 () Bool)

(declare-fun e!4469202 () Bool)

(declare-fun tp!2175802 () Bool)

(declare-fun tp!2175803 () Bool)

(assert (=> b!7495438 (= e!4469202 (and tp!2175802 tp!2175803))))

(assert (=> b!7494962 (= tp!2175736 e!4469202)))

(declare-fun b!7495440 () Bool)

(declare-fun tp!2175800 () Bool)

(declare-fun tp!2175804 () Bool)

(assert (=> b!7495440 (= e!4469202 (and tp!2175800 tp!2175804))))

(declare-fun b!7495437 () Bool)

(assert (=> b!7495437 (= e!4469202 tp_is_empty!49581)))

(declare-fun b!7495439 () Bool)

(declare-fun tp!2175801 () Bool)

(assert (=> b!7495439 (= e!4469202 tp!2175801)))

(assert (= (and b!7494962 (is-ElementMatch!19646 (regOne!39805 rTail!78))) b!7495437))

(assert (= (and b!7494962 (is-Concat!28491 (regOne!39805 rTail!78))) b!7495438))

(assert (= (and b!7494962 (is-Star!19646 (regOne!39805 rTail!78))) b!7495439))

(assert (= (and b!7494962 (is-Union!19646 (regOne!39805 rTail!78))) b!7495440))

(declare-fun b!7495442 () Bool)

(declare-fun e!4469203 () Bool)

(declare-fun tp!2175807 () Bool)

(declare-fun tp!2175808 () Bool)

(assert (=> b!7495442 (= e!4469203 (and tp!2175807 tp!2175808))))

(assert (=> b!7494962 (= tp!2175730 e!4469203)))

(declare-fun b!7495444 () Bool)

(declare-fun tp!2175805 () Bool)

(declare-fun tp!2175809 () Bool)

(assert (=> b!7495444 (= e!4469203 (and tp!2175805 tp!2175809))))

(declare-fun b!7495441 () Bool)

(assert (=> b!7495441 (= e!4469203 tp_is_empty!49581)))

(declare-fun b!7495443 () Bool)

(declare-fun tp!2175806 () Bool)

(assert (=> b!7495443 (= e!4469203 tp!2175806)))

(assert (= (and b!7494962 (is-ElementMatch!19646 (regTwo!39805 rTail!78))) b!7495441))

(assert (= (and b!7494962 (is-Concat!28491 (regTwo!39805 rTail!78))) b!7495442))

(assert (= (and b!7494962 (is-Star!19646 (regTwo!39805 rTail!78))) b!7495443))

(assert (= (and b!7494962 (is-Union!19646 (regTwo!39805 rTail!78))) b!7495444))

(declare-fun b!7495446 () Bool)

(declare-fun e!4469204 () Bool)

(declare-fun tp!2175812 () Bool)

(declare-fun tp!2175813 () Bool)

(assert (=> b!7495446 (= e!4469204 (and tp!2175812 tp!2175813))))

(assert (=> b!7494951 (= tp!2175732 e!4469204)))

(declare-fun b!7495448 () Bool)

(declare-fun tp!2175810 () Bool)

(declare-fun tp!2175814 () Bool)

(assert (=> b!7495448 (= e!4469204 (and tp!2175810 tp!2175814))))

(declare-fun b!7495445 () Bool)

(assert (=> b!7495445 (= e!4469204 tp_is_empty!49581)))

(declare-fun b!7495447 () Bool)

(declare-fun tp!2175811 () Bool)

(assert (=> b!7495447 (= e!4469204 tp!2175811)))

(assert (= (and b!7494951 (is-ElementMatch!19646 (reg!19975 r2!5783))) b!7495445))

(assert (= (and b!7494951 (is-Concat!28491 (reg!19975 r2!5783))) b!7495446))

(assert (= (and b!7494951 (is-Star!19646 (reg!19975 r2!5783))) b!7495447))

(assert (= (and b!7494951 (is-Union!19646 (reg!19975 r2!5783))) b!7495448))

(declare-fun b!7495457 () Bool)

(declare-fun e!4469209 () Bool)

(declare-fun tp!2175817 () Bool)

(assert (=> b!7495457 (= e!4469209 (and tp_is_empty!49581 tp!2175817))))

(assert (=> b!7494948 (= tp!2175741 e!4469209)))

(assert (= (and b!7494948 (is-Cons!72236 (t!386929 s!13591))) b!7495457))

(declare-fun b!7495459 () Bool)

(declare-fun e!4469210 () Bool)

(declare-fun tp!2175820 () Bool)

(declare-fun tp!2175821 () Bool)

(assert (=> b!7495459 (= e!4469210 (and tp!2175820 tp!2175821))))

(assert (=> b!7494953 (= tp!2175734 e!4469210)))

(declare-fun b!7495461 () Bool)

(declare-fun tp!2175818 () Bool)

(declare-fun tp!2175822 () Bool)

(assert (=> b!7495461 (= e!4469210 (and tp!2175818 tp!2175822))))

(declare-fun b!7495458 () Bool)

(assert (=> b!7495458 (= e!4469210 tp_is_empty!49581)))

(declare-fun b!7495460 () Bool)

(declare-fun tp!2175819 () Bool)

(assert (=> b!7495460 (= e!4469210 tp!2175819)))

(assert (= (and b!7494953 (is-ElementMatch!19646 (reg!19975 rTail!78))) b!7495458))

(assert (= (and b!7494953 (is-Concat!28491 (reg!19975 rTail!78))) b!7495459))

(assert (= (and b!7494953 (is-Star!19646 (reg!19975 rTail!78))) b!7495460))

(assert (= (and b!7494953 (is-Union!19646 (reg!19975 rTail!78))) b!7495461))

(declare-fun b!7495463 () Bool)

(declare-fun e!4469211 () Bool)

(declare-fun tp!2175825 () Bool)

(declare-fun tp!2175826 () Bool)

(assert (=> b!7495463 (= e!4469211 (and tp!2175825 tp!2175826))))

(assert (=> b!7494963 (= tp!2175735 e!4469211)))

(declare-fun b!7495465 () Bool)

(declare-fun tp!2175823 () Bool)

(declare-fun tp!2175827 () Bool)

(assert (=> b!7495465 (= e!4469211 (and tp!2175823 tp!2175827))))

(declare-fun b!7495462 () Bool)

(assert (=> b!7495462 (= e!4469211 tp_is_empty!49581)))

(declare-fun b!7495464 () Bool)

(declare-fun tp!2175824 () Bool)

(assert (=> b!7495464 (= e!4469211 tp!2175824)))

(assert (= (and b!7494963 (is-ElementMatch!19646 (reg!19975 r1!5845))) b!7495462))

(assert (= (and b!7494963 (is-Concat!28491 (reg!19975 r1!5845))) b!7495463))

(assert (= (and b!7494963 (is-Star!19646 (reg!19975 r1!5845))) b!7495464))

(assert (= (and b!7494963 (is-Union!19646 (reg!19975 r1!5845))) b!7495465))

(declare-fun b!7495469 () Bool)

(declare-fun e!4469212 () Bool)

(declare-fun tp!2175830 () Bool)

(declare-fun tp!2175831 () Bool)

(assert (=> b!7495469 (= e!4469212 (and tp!2175830 tp!2175831))))

(assert (=> b!7494960 (= tp!2175737 e!4469212)))

(declare-fun b!7495471 () Bool)

(declare-fun tp!2175828 () Bool)

(declare-fun tp!2175832 () Bool)

(assert (=> b!7495471 (= e!4469212 (and tp!2175828 tp!2175832))))

(declare-fun b!7495468 () Bool)

(assert (=> b!7495468 (= e!4469212 tp_is_empty!49581)))

(declare-fun b!7495470 () Bool)

(declare-fun tp!2175829 () Bool)

(assert (=> b!7495470 (= e!4469212 tp!2175829)))

(assert (= (and b!7494960 (is-ElementMatch!19646 (regOne!39804 r2!5783))) b!7495468))

(assert (= (and b!7494960 (is-Concat!28491 (regOne!39804 r2!5783))) b!7495469))

(assert (= (and b!7494960 (is-Star!19646 (regOne!39804 r2!5783))) b!7495470))

(assert (= (and b!7494960 (is-Union!19646 (regOne!39804 r2!5783))) b!7495471))

(declare-fun b!7495475 () Bool)

(declare-fun e!4469214 () Bool)

(declare-fun tp!2175835 () Bool)

(declare-fun tp!2175836 () Bool)

(assert (=> b!7495475 (= e!4469214 (and tp!2175835 tp!2175836))))

(assert (=> b!7494960 (= tp!2175729 e!4469214)))

(declare-fun b!7495477 () Bool)

(declare-fun tp!2175833 () Bool)

(declare-fun tp!2175837 () Bool)

(assert (=> b!7495477 (= e!4469214 (and tp!2175833 tp!2175837))))

(declare-fun b!7495474 () Bool)

(assert (=> b!7495474 (= e!4469214 tp_is_empty!49581)))

(declare-fun b!7495476 () Bool)

(declare-fun tp!2175834 () Bool)

(assert (=> b!7495476 (= e!4469214 tp!2175834)))

(assert (= (and b!7494960 (is-ElementMatch!19646 (regTwo!39804 r2!5783))) b!7495474))

(assert (= (and b!7494960 (is-Concat!28491 (regTwo!39804 r2!5783))) b!7495475))

(assert (= (and b!7494960 (is-Star!19646 (regTwo!39804 r2!5783))) b!7495476))

(assert (= (and b!7494960 (is-Union!19646 (regTwo!39804 r2!5783))) b!7495477))

(declare-fun b!7495483 () Bool)

(declare-fun e!4469218 () Bool)

(declare-fun tp!2175840 () Bool)

(declare-fun tp!2175841 () Bool)

(assert (=> b!7495483 (= e!4469218 (and tp!2175840 tp!2175841))))

(assert (=> b!7494949 (= tp!2175733 e!4469218)))

(declare-fun b!7495485 () Bool)

(declare-fun tp!2175838 () Bool)

(declare-fun tp!2175842 () Bool)

(assert (=> b!7495485 (= e!4469218 (and tp!2175838 tp!2175842))))

(declare-fun b!7495482 () Bool)

(assert (=> b!7495482 (= e!4469218 tp_is_empty!49581)))

(declare-fun b!7495484 () Bool)

(declare-fun tp!2175839 () Bool)

(assert (=> b!7495484 (= e!4469218 tp!2175839)))

(assert (= (and b!7494949 (is-ElementMatch!19646 (regOne!39805 r2!5783))) b!7495482))

(assert (= (and b!7494949 (is-Concat!28491 (regOne!39805 r2!5783))) b!7495483))

(assert (= (and b!7494949 (is-Star!19646 (regOne!39805 r2!5783))) b!7495484))

(assert (= (and b!7494949 (is-Union!19646 (regOne!39805 r2!5783))) b!7495485))

(declare-fun b!7495489 () Bool)

(declare-fun e!4469221 () Bool)

(declare-fun tp!2175845 () Bool)

(declare-fun tp!2175846 () Bool)

(assert (=> b!7495489 (= e!4469221 (and tp!2175845 tp!2175846))))

(assert (=> b!7494949 (= tp!2175740 e!4469221)))

(declare-fun b!7495491 () Bool)

(declare-fun tp!2175843 () Bool)

(declare-fun tp!2175847 () Bool)

(assert (=> b!7495491 (= e!4469221 (and tp!2175843 tp!2175847))))

(declare-fun b!7495488 () Bool)

(assert (=> b!7495488 (= e!4469221 tp_is_empty!49581)))

(declare-fun b!7495490 () Bool)

(declare-fun tp!2175844 () Bool)

(assert (=> b!7495490 (= e!4469221 tp!2175844)))

(assert (= (and b!7494949 (is-ElementMatch!19646 (regTwo!39805 r2!5783))) b!7495488))

(assert (= (and b!7494949 (is-Concat!28491 (regTwo!39805 r2!5783))) b!7495489))

(assert (= (and b!7494949 (is-Star!19646 (regTwo!39805 r2!5783))) b!7495490))

(assert (= (and b!7494949 (is-Union!19646 (regTwo!39805 r2!5783))) b!7495491))

(declare-fun b!7495499 () Bool)

(declare-fun e!4469224 () Bool)

(declare-fun tp!2175850 () Bool)

(declare-fun tp!2175851 () Bool)

(assert (=> b!7495499 (= e!4469224 (and tp!2175850 tp!2175851))))

(assert (=> b!7494965 (= tp!2175726 e!4469224)))

(declare-fun b!7495501 () Bool)

(declare-fun tp!2175848 () Bool)

(declare-fun tp!2175852 () Bool)

(assert (=> b!7495501 (= e!4469224 (and tp!2175848 tp!2175852))))

(declare-fun b!7495498 () Bool)

(assert (=> b!7495498 (= e!4469224 tp_is_empty!49581)))

(declare-fun b!7495500 () Bool)

(declare-fun tp!2175849 () Bool)

(assert (=> b!7495500 (= e!4469224 tp!2175849)))

(assert (= (and b!7494965 (is-ElementMatch!19646 (regOne!39804 rTail!78))) b!7495498))

(assert (= (and b!7494965 (is-Concat!28491 (regOne!39804 rTail!78))) b!7495499))

(assert (= (and b!7494965 (is-Star!19646 (regOne!39804 rTail!78))) b!7495500))

(assert (= (and b!7494965 (is-Union!19646 (regOne!39804 rTail!78))) b!7495501))

(declare-fun b!7495507 () Bool)

(declare-fun e!4469227 () Bool)

(declare-fun tp!2175855 () Bool)

(declare-fun tp!2175856 () Bool)

(assert (=> b!7495507 (= e!4469227 (and tp!2175855 tp!2175856))))

(assert (=> b!7494965 (= tp!2175727 e!4469227)))

(declare-fun b!7495509 () Bool)

(declare-fun tp!2175853 () Bool)

(declare-fun tp!2175857 () Bool)

(assert (=> b!7495509 (= e!4469227 (and tp!2175853 tp!2175857))))

(declare-fun b!7495506 () Bool)

(assert (=> b!7495506 (= e!4469227 tp_is_empty!49581)))

(declare-fun b!7495508 () Bool)

(declare-fun tp!2175854 () Bool)

(assert (=> b!7495508 (= e!4469227 tp!2175854)))

(assert (= (and b!7494965 (is-ElementMatch!19646 (regTwo!39804 rTail!78))) b!7495506))

(assert (= (and b!7494965 (is-Concat!28491 (regTwo!39804 rTail!78))) b!7495507))

(assert (= (and b!7494965 (is-Star!19646 (regTwo!39804 rTail!78))) b!7495508))

(assert (= (and b!7494965 (is-Union!19646 (regTwo!39804 rTail!78))) b!7495509))

(declare-fun b!7495515 () Bool)

(declare-fun e!4469230 () Bool)

(declare-fun tp!2175860 () Bool)

(declare-fun tp!2175861 () Bool)

(assert (=> b!7495515 (= e!4469230 (and tp!2175860 tp!2175861))))

(assert (=> b!7494956 (= tp!2175731 e!4469230)))

(declare-fun b!7495517 () Bool)

(declare-fun tp!2175858 () Bool)

(declare-fun tp!2175862 () Bool)

(assert (=> b!7495517 (= e!4469230 (and tp!2175858 tp!2175862))))

(declare-fun b!7495514 () Bool)

(assert (=> b!7495514 (= e!4469230 tp_is_empty!49581)))

(declare-fun b!7495516 () Bool)

(declare-fun tp!2175859 () Bool)

(assert (=> b!7495516 (= e!4469230 tp!2175859)))

(assert (= (and b!7494956 (is-ElementMatch!19646 (regOne!39804 r1!5845))) b!7495514))

(assert (= (and b!7494956 (is-Concat!28491 (regOne!39804 r1!5845))) b!7495515))

(assert (= (and b!7494956 (is-Star!19646 (regOne!39804 r1!5845))) b!7495516))

(assert (= (and b!7494956 (is-Union!19646 (regOne!39804 r1!5845))) b!7495517))

(declare-fun b!7495519 () Bool)

(declare-fun e!4469231 () Bool)

(declare-fun tp!2175865 () Bool)

(declare-fun tp!2175866 () Bool)

(assert (=> b!7495519 (= e!4469231 (and tp!2175865 tp!2175866))))

(assert (=> b!7494956 (= tp!2175728 e!4469231)))

(declare-fun b!7495521 () Bool)

(declare-fun tp!2175863 () Bool)

(declare-fun tp!2175867 () Bool)

(assert (=> b!7495521 (= e!4469231 (and tp!2175863 tp!2175867))))

(declare-fun b!7495518 () Bool)

(assert (=> b!7495518 (= e!4469231 tp_is_empty!49581)))

(declare-fun b!7495520 () Bool)

(declare-fun tp!2175864 () Bool)

(assert (=> b!7495520 (= e!4469231 tp!2175864)))

(assert (= (and b!7494956 (is-ElementMatch!19646 (regTwo!39804 r1!5845))) b!7495518))

(assert (= (and b!7494956 (is-Concat!28491 (regTwo!39804 r1!5845))) b!7495519))

(assert (= (and b!7494956 (is-Star!19646 (regTwo!39804 r1!5845))) b!7495520))

(assert (= (and b!7494956 (is-Union!19646 (regTwo!39804 r1!5845))) b!7495521))

(declare-fun b!7495523 () Bool)

(declare-fun e!4469232 () Bool)

(declare-fun tp!2175870 () Bool)

(declare-fun tp!2175871 () Bool)

(assert (=> b!7495523 (= e!4469232 (and tp!2175870 tp!2175871))))

(assert (=> b!7494966 (= tp!2175738 e!4469232)))

(declare-fun b!7495525 () Bool)

(declare-fun tp!2175868 () Bool)

(declare-fun tp!2175872 () Bool)

(assert (=> b!7495525 (= e!4469232 (and tp!2175868 tp!2175872))))

(declare-fun b!7495522 () Bool)

(assert (=> b!7495522 (= e!4469232 tp_is_empty!49581)))

(declare-fun b!7495524 () Bool)

(declare-fun tp!2175869 () Bool)

(assert (=> b!7495524 (= e!4469232 tp!2175869)))

(assert (= (and b!7494966 (is-ElementMatch!19646 (regOne!39805 r1!5845))) b!7495522))

(assert (= (and b!7494966 (is-Concat!28491 (regOne!39805 r1!5845))) b!7495523))

(assert (= (and b!7494966 (is-Star!19646 (regOne!39805 r1!5845))) b!7495524))

(assert (= (and b!7494966 (is-Union!19646 (regOne!39805 r1!5845))) b!7495525))

(declare-fun b!7495527 () Bool)

(declare-fun e!4469233 () Bool)

(declare-fun tp!2175875 () Bool)

(declare-fun tp!2175876 () Bool)

(assert (=> b!7495527 (= e!4469233 (and tp!2175875 tp!2175876))))

(assert (=> b!7494966 (= tp!2175739 e!4469233)))

(declare-fun b!7495529 () Bool)

(declare-fun tp!2175873 () Bool)

(declare-fun tp!2175877 () Bool)

(assert (=> b!7495529 (= e!4469233 (and tp!2175873 tp!2175877))))

(declare-fun b!7495526 () Bool)

(assert (=> b!7495526 (= e!4469233 tp_is_empty!49581)))

(declare-fun b!7495528 () Bool)

(declare-fun tp!2175874 () Bool)

(assert (=> b!7495528 (= e!4469233 tp!2175874)))

(assert (= (and b!7494966 (is-ElementMatch!19646 (regTwo!39805 r1!5845))) b!7495526))

(assert (= (and b!7494966 (is-Concat!28491 (regTwo!39805 r1!5845))) b!7495527))

(assert (= (and b!7494966 (is-Star!19646 (regTwo!39805 r1!5845))) b!7495528))

(assert (= (and b!7494966 (is-Union!19646 (regTwo!39805 r1!5845))) b!7495529))

(push 1)

(assert (not b!7495446))

(assert (not b!7495317))

(assert (not b!7495137))

(assert (not d!2301675))

(assert (not b!7495438))

(assert (not d!2301717))

(assert (not b!7495457))

(assert (not b!7495477))

(assert (not d!2301681))

(assert (not d!2301657))

(assert (not b!7495254))

(assert (not b!7495315))

(assert (not b!7495281))

(assert (not b!7495399))

(assert (not d!2301687))

(assert (not b!7495507))

(assert (not b!7495316))

(assert (not d!2301665))

(assert (not b!7495369))

(assert (not b!7495500))

(assert (not b!7495448))

(assert (not b!7495248))

(assert (not b!7495525))

(assert (not b!7495321))

(assert (not b!7495085))

(assert (not b!7495439))

(assert (not b!7495476))

(assert (not b!7495519))

(assert (not d!2301711))

(assert (not b!7495370))

(assert (not d!2301695))

(assert (not bm!688065))

(assert (not b!7495484))

(assert (not b!7495405))

(assert (not bm!688043))

(assert (not b!7495459))

(assert (not b!7495394))

(assert (not b!7495255))

(assert (not b!7495528))

(assert (not bm!688061))

(assert (not d!2301659))

(assert (not b!7495339))

(assert (not b!7495444))

(assert (not d!2301713))

(assert (not bm!688050))

(assert (not b!7495460))

(assert (not b!7495443))

(assert (not b!7495469))

(assert (not bm!688072))

(assert (not b!7495366))

(assert (not d!2301651))

(assert (not b!7495312))

(assert (not b!7495423))

(assert (not bm!688076))

(assert (not b!7495509))

(assert (not b!7495524))

(assert (not b!7495363))

(assert (not b!7495278))

(assert (not b!7495475))

(assert (not b!7495523))

(assert (not b!7495133))

(assert (not b!7495246))

(assert (not b!7495520))

(assert (not d!2301653))

(assert (not bm!688051))

(assert (not b!7495256))

(assert (not b!7495529))

(assert (not b!7495384))

(assert (not b!7495135))

(assert (not d!2301677))

(assert (not bm!688048))

(assert (not b!7495516))

(assert (not b!7495225))

(assert (not b!7495380))

(assert (not b!7495508))

(assert (not b!7495414))

(assert (not bm!688078))

(assert (not bm!688075))

(assert (not b!7495280))

(assert (not b!7495470))

(assert (not b!7495176))

(assert (not b!7495307))

(assert (not d!2301699))

(assert (not b!7495465))

(assert (not b!7495283))

(assert (not b!7495132))

(assert (not d!2301715))

(assert (not bm!688060))

(assert (not b!7495471))

(assert (not bm!688079))

(assert (not b!7495527))

(assert (not d!2301709))

(assert (not b!7495375))

(assert (not d!2301697))

(assert (not b!7495391))

(assert (not bm!688052))

(assert (not b!7495397))

(assert (not b!7495485))

(assert (not b!7495173))

(assert (not b!7495499))

(assert (not bm!688040))

(assert (not bm!688066))

(assert (not b!7495383))

(assert (not b!7495279))

(assert (not b!7495309))

(assert tp_is_empty!49581)

(assert (not b!7495464))

(assert (not bm!688071))

(assert (not d!2301673))

(assert (not d!2301693))

(assert (not b!7495171))

(assert (not b!7495385))

(assert (not bm!688038))

(assert (not b!7495442))

(assert (not b!7495398))

(assert (not b!7495489))

(assert (not b!7495134))

(assert (not b!7495447))

(assert (not b!7495491))

(assert (not bm!688073))

(assert (not b!7495180))

(assert (not b!7495282))

(assert (not b!7495377))

(assert (not b!7495440))

(assert (not d!2301661))

(assert (not b!7495463))

(assert (not d!2301663))

(assert (not b!7495181))

(assert (not b!7495483))

(assert (not b!7495461))

(assert (not bm!688057))

(assert (not d!2301691))

(assert (not b!7495227))

(assert (not bm!688070))

(assert (not b!7495179))

(assert (not b!7495361))

(assert (not b!7495258))

(assert (not b!7495521))

(assert (not b!7495501))

(assert (not b!7495251))

(assert (not b!7495389))

(assert (not b!7495517))

(assert (not b!7495260))

(assert (not bm!688081))

(assert (not b!7495490))

(assert (not b!7495371))

(assert (not b!7495515))

(assert (not b!7495136))

(assert (not b!7495341))

(assert (not bm!688049))

(assert (not b!7495319))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

