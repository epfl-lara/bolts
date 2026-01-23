; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!294014 () Bool)

(assert start!294014)

(declare-fun b!3097846 () Bool)

(assert (=> b!3097846 true))

(assert (=> b!3097846 true))

(assert (=> b!3097846 true))

(declare-fun lambda!114726 () Int)

(declare-fun lambda!114725 () Int)

(assert (=> b!3097846 (not (= lambda!114726 lambda!114725))))

(assert (=> b!3097846 true))

(assert (=> b!3097846 true))

(assert (=> b!3097846 true))

(declare-fun b!3097838 () Bool)

(declare-fun res!1269019 () Bool)

(declare-fun e!1936201 () Bool)

(assert (=> b!3097838 (=> res!1269019 e!1936201)))

(declare-datatypes ((C!19290 0))(
  ( (C!19291 (val!11681 Int)) )
))
(declare-datatypes ((Regex!9552 0))(
  ( (ElementMatch!9552 (c!517396 C!19290)) (Concat!14873 (regOne!19616 Regex!9552) (regTwo!19616 Regex!9552)) (EmptyExpr!9552) (Star!9552 (reg!9881 Regex!9552)) (EmptyLang!9552) (Union!9552 (regOne!19617 Regex!9552) (regTwo!19617 Regex!9552)) )
))
(declare-fun lt!1055115 () Regex!9552)

(declare-fun isEmptyExpr!609 (Regex!9552) Bool)

(assert (=> b!3097838 (= res!1269019 (isEmptyExpr!609 lt!1055115))))

(declare-fun b!3097839 () Bool)

(declare-fun e!1936197 () Bool)

(declare-fun tp_is_empty!16667 () Bool)

(assert (=> b!3097839 (= e!1936197 tp_is_empty!16667)))

(declare-fun b!3097840 () Bool)

(declare-fun e!1936196 () Bool)

(assert (=> b!3097840 (= e!1936196 e!1936201)))

(declare-fun res!1269020 () Bool)

(assert (=> b!3097840 (=> res!1269020 e!1936201)))

(declare-fun lt!1055123 () Regex!9552)

(declare-fun isEmptyLang!603 (Regex!9552) Bool)

(assert (=> b!3097840 (= res!1269020 (isEmptyLang!603 lt!1055123))))

(declare-fun r!17423 () Regex!9552)

(declare-fun simplify!507 (Regex!9552) Regex!9552)

(assert (=> b!3097840 (= lt!1055115 (simplify!507 (regTwo!19616 r!17423)))))

(assert (=> b!3097840 (= lt!1055123 (simplify!507 (regOne!19616 r!17423)))))

(declare-fun b!3097841 () Bool)

(declare-fun tp!974265 () Bool)

(declare-fun tp!974264 () Bool)

(assert (=> b!3097841 (= e!1936197 (and tp!974265 tp!974264))))

(declare-fun b!3097842 () Bool)

(declare-fun e!1936200 () Bool)

(assert (=> b!3097842 (= e!1936201 e!1936200)))

(declare-fun res!1269022 () Bool)

(assert (=> b!3097842 (=> res!1269022 e!1936200)))

(declare-fun lt!1055126 () Regex!9552)

(declare-datatypes ((List!35417 0))(
  ( (Nil!35293) (Cons!35293 (h!40713 C!19290) (t!234482 List!35417)) )
))
(declare-fun s!11993 () List!35417)

(declare-fun matchR!4434 (Regex!9552 List!35417) Bool)

(assert (=> b!3097842 (= res!1269022 (not (matchR!4434 lt!1055126 s!11993)))))

(assert (=> b!3097842 (= lt!1055126 (Concat!14873 lt!1055123 lt!1055115))))

(declare-fun b!3097843 () Bool)

(declare-fun res!1269016 () Bool)

(assert (=> b!3097843 (=> res!1269016 e!1936201)))

(assert (=> b!3097843 (= res!1269016 (isEmptyLang!603 lt!1055115))))

(declare-fun b!3097844 () Bool)

(declare-fun e!1936199 () Bool)

(assert (=> b!3097844 (= e!1936199 (not e!1936196))))

(declare-fun res!1269018 () Bool)

(assert (=> b!3097844 (=> res!1269018 e!1936196)))

(declare-fun lt!1055120 () Bool)

(assert (=> b!3097844 (= res!1269018 (or lt!1055120 (not (is-Concat!14873 r!17423))))))

(declare-fun matchRSpec!1689 (Regex!9552 List!35417) Bool)

(assert (=> b!3097844 (= lt!1055120 (matchRSpec!1689 r!17423 s!11993))))

(assert (=> b!3097844 (= lt!1055120 (matchR!4434 r!17423 s!11993))))

(declare-datatypes ((Unit!49543 0))(
  ( (Unit!49544) )
))
(declare-fun lt!1055122 () Unit!49543)

(declare-fun mainMatchTheorem!1689 (Regex!9552 List!35417) Unit!49543)

(assert (=> b!3097844 (= lt!1055122 (mainMatchTheorem!1689 r!17423 s!11993))))

(declare-fun b!3097845 () Bool)

(declare-fun tp!974263 () Bool)

(declare-fun tp!974266 () Bool)

(assert (=> b!3097845 (= e!1936197 (and tp!974263 tp!974266))))

(declare-fun res!1269025 () Bool)

(assert (=> start!294014 (=> (not res!1269025) (not e!1936199))))

(declare-fun validRegex!4285 (Regex!9552) Bool)

(assert (=> start!294014 (= res!1269025 (validRegex!4285 r!17423))))

(assert (=> start!294014 e!1936199))

(assert (=> start!294014 e!1936197))

(declare-fun e!1936202 () Bool)

(assert (=> start!294014 e!1936202))

(declare-fun e!1936198 () Bool)

(assert (=> b!3097846 (= e!1936200 e!1936198)))

(declare-fun res!1269024 () Bool)

(assert (=> b!3097846 (=> res!1269024 e!1936198)))

(declare-fun lt!1055119 () Bool)

(assert (=> b!3097846 (= res!1269024 (not lt!1055119))))

(declare-fun Exists!1815 (Int) Bool)

(assert (=> b!3097846 (= (Exists!1815 lambda!114725) (Exists!1815 lambda!114726))))

(declare-fun lt!1055121 () Unit!49543)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!569 (Regex!9552 Regex!9552 List!35417) Unit!49543)

(assert (=> b!3097846 (= lt!1055121 (lemmaExistCutMatchRandMatchRSpecEquivalent!569 lt!1055123 lt!1055115 s!11993))))

(assert (=> b!3097846 (= lt!1055119 (Exists!1815 lambda!114725))))

(declare-datatypes ((tuple2!34214 0))(
  ( (tuple2!34215 (_1!20239 List!35417) (_2!20239 List!35417)) )
))
(declare-datatypes ((Option!6839 0))(
  ( (None!6838) (Some!6838 (v!34972 tuple2!34214)) )
))
(declare-fun lt!1055113 () Option!6839)

(declare-fun isDefined!5390 (Option!6839) Bool)

(assert (=> b!3097846 (= lt!1055119 (isDefined!5390 lt!1055113))))

(declare-fun findConcatSeparation!1233 (Regex!9552 Regex!9552 List!35417 List!35417 List!35417) Option!6839)

(assert (=> b!3097846 (= lt!1055113 (findConcatSeparation!1233 lt!1055123 lt!1055115 Nil!35293 s!11993 s!11993))))

(declare-fun lt!1055125 () Unit!49543)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1003 (Regex!9552 Regex!9552 List!35417) Unit!49543)

(assert (=> b!3097846 (= lt!1055125 (lemmaFindConcatSeparationEquivalentToExists!1003 lt!1055123 lt!1055115 s!11993))))

(assert (=> b!3097846 (matchRSpec!1689 lt!1055126 s!11993)))

(declare-fun lt!1055124 () Unit!49543)

(assert (=> b!3097846 (= lt!1055124 (mainMatchTheorem!1689 lt!1055126 s!11993))))

(declare-fun b!3097847 () Bool)

(declare-fun res!1269021 () Bool)

(declare-fun e!1936203 () Bool)

(assert (=> b!3097847 (=> res!1269021 e!1936203)))

(assert (=> b!3097847 (= res!1269021 (not (validRegex!4285 (regTwo!19616 r!17423))))))

(declare-fun b!3097848 () Bool)

(declare-fun res!1269017 () Bool)

(assert (=> b!3097848 (=> res!1269017 e!1936201)))

(assert (=> b!3097848 (= res!1269017 (isEmptyExpr!609 lt!1055123))))

(declare-fun b!3097849 () Bool)

(declare-fun lt!1055117 () Bool)

(assert (=> b!3097849 (= e!1936203 lt!1055117)))

(declare-fun b!3097850 () Bool)

(declare-fun tp!974267 () Bool)

(assert (=> b!3097850 (= e!1936202 (and tp_is_empty!16667 tp!974267))))

(declare-fun b!3097851 () Bool)

(declare-fun tp!974262 () Bool)

(assert (=> b!3097851 (= e!1936197 tp!974262)))

(declare-fun b!3097852 () Bool)

(declare-fun res!1269015 () Bool)

(assert (=> b!3097852 (=> res!1269015 e!1936196)))

(declare-fun isEmpty!19639 (List!35417) Bool)

(assert (=> b!3097852 (= res!1269015 (isEmpty!19639 s!11993))))

(declare-fun b!3097853 () Bool)

(assert (=> b!3097853 (= e!1936198 e!1936203)))

(declare-fun res!1269023 () Bool)

(assert (=> b!3097853 (=> res!1269023 e!1936203)))

(assert (=> b!3097853 (= res!1269023 (not (validRegex!4285 (regOne!19616 r!17423))))))

(declare-fun lt!1055118 () tuple2!34214)

(assert (=> b!3097853 (= (matchR!4434 (regTwo!19616 r!17423) (_2!20239 lt!1055118)) (matchR!4434 lt!1055115 (_2!20239 lt!1055118)))))

(declare-fun lt!1055116 () Unit!49543)

(declare-fun lemmaSimplifySound!321 (Regex!9552 List!35417) Unit!49543)

(assert (=> b!3097853 (= lt!1055116 (lemmaSimplifySound!321 (regTwo!19616 r!17423) (_2!20239 lt!1055118)))))

(assert (=> b!3097853 (= lt!1055117 (matchR!4434 lt!1055123 (_1!20239 lt!1055118)))))

(assert (=> b!3097853 (= lt!1055117 (matchR!4434 (regOne!19616 r!17423) (_1!20239 lt!1055118)))))

(declare-fun lt!1055114 () Unit!49543)

(assert (=> b!3097853 (= lt!1055114 (lemmaSimplifySound!321 (regOne!19616 r!17423) (_1!20239 lt!1055118)))))

(declare-fun get!11081 (Option!6839) tuple2!34214)

(assert (=> b!3097853 (= lt!1055118 (get!11081 lt!1055113))))

(assert (= (and start!294014 res!1269025) b!3097844))

(assert (= (and b!3097844 (not res!1269018)) b!3097852))

(assert (= (and b!3097852 (not res!1269015)) b!3097840))

(assert (= (and b!3097840 (not res!1269020)) b!3097843))

(assert (= (and b!3097843 (not res!1269016)) b!3097848))

(assert (= (and b!3097848 (not res!1269017)) b!3097838))

(assert (= (and b!3097838 (not res!1269019)) b!3097842))

(assert (= (and b!3097842 (not res!1269022)) b!3097846))

(assert (= (and b!3097846 (not res!1269024)) b!3097853))

(assert (= (and b!3097853 (not res!1269023)) b!3097847))

(assert (= (and b!3097847 (not res!1269021)) b!3097849))

(assert (= (and start!294014 (is-ElementMatch!9552 r!17423)) b!3097839))

(assert (= (and start!294014 (is-Concat!14873 r!17423)) b!3097841))

(assert (= (and start!294014 (is-Star!9552 r!17423)) b!3097851))

(assert (= (and start!294014 (is-Union!9552 r!17423)) b!3097845))

(assert (= (and start!294014 (is-Cons!35293 s!11993)) b!3097850))

(declare-fun m!3399425 () Bool)

(assert (=> b!3097842 m!3399425))

(declare-fun m!3399427 () Bool)

(assert (=> b!3097838 m!3399427))

(declare-fun m!3399429 () Bool)

(assert (=> b!3097846 m!3399429))

(declare-fun m!3399431 () Bool)

(assert (=> b!3097846 m!3399431))

(declare-fun m!3399433 () Bool)

(assert (=> b!3097846 m!3399433))

(declare-fun m!3399435 () Bool)

(assert (=> b!3097846 m!3399435))

(declare-fun m!3399437 () Bool)

(assert (=> b!3097846 m!3399437))

(assert (=> b!3097846 m!3399433))

(declare-fun m!3399439 () Bool)

(assert (=> b!3097846 m!3399439))

(declare-fun m!3399441 () Bool)

(assert (=> b!3097846 m!3399441))

(declare-fun m!3399443 () Bool)

(assert (=> b!3097846 m!3399443))

(declare-fun m!3399445 () Bool)

(assert (=> b!3097840 m!3399445))

(declare-fun m!3399447 () Bool)

(assert (=> b!3097840 m!3399447))

(declare-fun m!3399449 () Bool)

(assert (=> b!3097840 m!3399449))

(declare-fun m!3399451 () Bool)

(assert (=> b!3097847 m!3399451))

(declare-fun m!3399453 () Bool)

(assert (=> b!3097848 m!3399453))

(declare-fun m!3399455 () Bool)

(assert (=> b!3097844 m!3399455))

(declare-fun m!3399457 () Bool)

(assert (=> b!3097844 m!3399457))

(declare-fun m!3399459 () Bool)

(assert (=> b!3097844 m!3399459))

(declare-fun m!3399461 () Bool)

(assert (=> b!3097843 m!3399461))

(declare-fun m!3399463 () Bool)

(assert (=> start!294014 m!3399463))

(declare-fun m!3399465 () Bool)

(assert (=> b!3097853 m!3399465))

(declare-fun m!3399467 () Bool)

(assert (=> b!3097853 m!3399467))

(declare-fun m!3399469 () Bool)

(assert (=> b!3097853 m!3399469))

(declare-fun m!3399471 () Bool)

(assert (=> b!3097853 m!3399471))

(declare-fun m!3399473 () Bool)

(assert (=> b!3097853 m!3399473))

(declare-fun m!3399475 () Bool)

(assert (=> b!3097853 m!3399475))

(declare-fun m!3399477 () Bool)

(assert (=> b!3097853 m!3399477))

(declare-fun m!3399479 () Bool)

(assert (=> b!3097853 m!3399479))

(declare-fun m!3399481 () Bool)

(assert (=> b!3097852 m!3399481))

(push 1)

(assert (not b!3097838))

(assert (not b!3097846))

(assert (not b!3097842))

(assert (not b!3097852))

(assert (not b!3097844))

(assert (not b!3097848))

(assert (not b!3097843))

(assert (not b!3097850))

(assert (not b!3097845))

(assert (not b!3097853))

(assert (not b!3097841))

(assert (not b!3097840))

(assert tp_is_empty!16667)

(assert (not start!294014))

(assert (not b!3097847))

(assert (not b!3097851))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!860640 () Bool)

(assert (=> d!860640 (= (isEmptyExpr!609 lt!1055123) (is-EmptyExpr!9552 lt!1055123))))

(assert (=> b!3097848 d!860640))

(declare-fun d!860642 () Bool)

(assert (=> d!860642 (= (isEmptyLang!603 lt!1055115) (is-EmptyLang!9552 lt!1055115))))

(assert (=> b!3097843 d!860642))

(declare-fun d!860644 () Bool)

(assert (=> d!860644 (= (isEmptyExpr!609 lt!1055115) (is-EmptyExpr!9552 lt!1055115))))

(assert (=> b!3097838 d!860644))

(declare-fun c!517402 () Bool)

(declare-fun bm!218146 () Bool)

(declare-fun c!517403 () Bool)

(declare-fun call!218152 () Bool)

(assert (=> bm!218146 (= call!218152 (validRegex!4285 (ite c!517402 (reg!9881 r!17423) (ite c!517403 (regTwo!19617 r!17423) (regOne!19616 r!17423)))))))

(declare-fun b!3097940 () Bool)

(declare-fun e!1936253 () Bool)

(declare-fun e!1936250 () Bool)

(assert (=> b!3097940 (= e!1936253 e!1936250)))

(declare-fun res!1269084 () Bool)

(assert (=> b!3097940 (=> (not res!1269084) (not e!1936250))))

(declare-fun call!218151 () Bool)

(assert (=> b!3097940 (= res!1269084 call!218151)))

(declare-fun b!3097941 () Bool)

(declare-fun res!1269083 () Bool)

(assert (=> b!3097941 (=> res!1269083 e!1936253)))

(assert (=> b!3097941 (= res!1269083 (not (is-Concat!14873 r!17423)))))

(declare-fun e!1936248 () Bool)

(assert (=> b!3097941 (= e!1936248 e!1936253)))

(declare-fun b!3097942 () Bool)

(declare-fun call!218153 () Bool)

(assert (=> b!3097942 (= e!1936250 call!218153)))

(declare-fun b!3097943 () Bool)

(declare-fun e!1936254 () Bool)

(declare-fun e!1936252 () Bool)

(assert (=> b!3097943 (= e!1936254 e!1936252)))

(declare-fun res!1269085 () Bool)

(declare-fun nullable!3198 (Regex!9552) Bool)

(assert (=> b!3097943 (= res!1269085 (not (nullable!3198 (reg!9881 r!17423))))))

(assert (=> b!3097943 (=> (not res!1269085) (not e!1936252))))

(declare-fun b!3097944 () Bool)

(declare-fun res!1269082 () Bool)

(declare-fun e!1936251 () Bool)

(assert (=> b!3097944 (=> (not res!1269082) (not e!1936251))))

(assert (=> b!3097944 (= res!1269082 call!218153)))

(assert (=> b!3097944 (= e!1936248 e!1936251)))

(declare-fun bm!218147 () Bool)

(assert (=> bm!218147 (= call!218151 call!218152)))

(declare-fun b!3097945 () Bool)

(declare-fun e!1936249 () Bool)

(assert (=> b!3097945 (= e!1936249 e!1936254)))

(assert (=> b!3097945 (= c!517402 (is-Star!9552 r!17423))))

(declare-fun b!3097946 () Bool)

(assert (=> b!3097946 (= e!1936251 call!218151)))

(declare-fun b!3097947 () Bool)

(assert (=> b!3097947 (= e!1936254 e!1936248)))

(assert (=> b!3097947 (= c!517403 (is-Union!9552 r!17423))))

(declare-fun b!3097948 () Bool)

(assert (=> b!3097948 (= e!1936252 call!218152)))

(declare-fun bm!218148 () Bool)

(assert (=> bm!218148 (= call!218153 (validRegex!4285 (ite c!517403 (regOne!19617 r!17423) (regTwo!19616 r!17423))))))

(declare-fun d!860646 () Bool)

(declare-fun res!1269081 () Bool)

(assert (=> d!860646 (=> res!1269081 e!1936249)))

(assert (=> d!860646 (= res!1269081 (is-ElementMatch!9552 r!17423))))

(assert (=> d!860646 (= (validRegex!4285 r!17423) e!1936249)))

(assert (= (and d!860646 (not res!1269081)) b!3097945))

(assert (= (and b!3097945 c!517402) b!3097943))

(assert (= (and b!3097945 (not c!517402)) b!3097947))

(assert (= (and b!3097943 res!1269085) b!3097948))

(assert (= (and b!3097947 c!517403) b!3097944))

(assert (= (and b!3097947 (not c!517403)) b!3097941))

(assert (= (and b!3097944 res!1269082) b!3097946))

(assert (= (and b!3097941 (not res!1269083)) b!3097940))

(assert (= (and b!3097940 res!1269084) b!3097942))

(assert (= (or b!3097944 b!3097942) bm!218148))

(assert (= (or b!3097946 b!3097940) bm!218147))

(assert (= (or b!3097948 bm!218147) bm!218146))

(declare-fun m!3399541 () Bool)

(assert (=> bm!218146 m!3399541))

(declare-fun m!3399543 () Bool)

(assert (=> b!3097943 m!3399543))

(declare-fun m!3399545 () Bool)

(assert (=> bm!218148 m!3399545))

(assert (=> start!294014 d!860646))

(declare-fun bs!535498 () Bool)

(declare-fun b!3098014 () Bool)

(assert (= bs!535498 (and b!3098014 b!3097846)))

(declare-fun lambda!114739 () Int)

(assert (=> bs!535498 (not (= lambda!114739 lambda!114725))))

(assert (=> bs!535498 (not (= lambda!114739 lambda!114726))))

(assert (=> b!3098014 true))

(assert (=> b!3098014 true))

(declare-fun bs!535499 () Bool)

(declare-fun b!3098008 () Bool)

(assert (= bs!535499 (and b!3098008 b!3097846)))

(declare-fun lambda!114740 () Int)

(assert (=> bs!535499 (not (= lambda!114740 lambda!114725))))

(assert (=> bs!535499 (= (and (= (regOne!19616 r!17423) lt!1055123) (= (regTwo!19616 r!17423) lt!1055115)) (= lambda!114740 lambda!114726))))

(declare-fun bs!535500 () Bool)

(assert (= bs!535500 (and b!3098008 b!3098014)))

(assert (=> bs!535500 (not (= lambda!114740 lambda!114739))))

(assert (=> b!3098008 true))

(assert (=> b!3098008 true))

(declare-fun bm!218162 () Bool)

(declare-fun c!517419 () Bool)

(declare-fun call!218167 () Bool)

(assert (=> bm!218162 (= call!218167 (Exists!1815 (ite c!517419 lambda!114739 lambda!114740)))))

(declare-fun e!1936294 () Bool)

(assert (=> b!3098008 (= e!1936294 call!218167)))

(declare-fun d!860654 () Bool)

(declare-fun c!517420 () Bool)

(assert (=> d!860654 (= c!517420 (is-EmptyExpr!9552 r!17423))))

(declare-fun e!1936300 () Bool)

(assert (=> d!860654 (= (matchRSpec!1689 r!17423 s!11993) e!1936300)))

(declare-fun b!3098009 () Bool)

(declare-fun e!1936299 () Bool)

(assert (=> b!3098009 (= e!1936299 (= s!11993 (Cons!35293 (c!517396 r!17423) Nil!35293)))))

(declare-fun b!3098010 () Bool)

(declare-fun e!1936296 () Bool)

(assert (=> b!3098010 (= e!1936300 e!1936296)))

(declare-fun res!1269117 () Bool)

(assert (=> b!3098010 (= res!1269117 (not (is-EmptyLang!9552 r!17423)))))

(assert (=> b!3098010 (=> (not res!1269117) (not e!1936296))))

(declare-fun b!3098011 () Bool)

(declare-fun res!1269118 () Bool)

(declare-fun e!1936295 () Bool)

(assert (=> b!3098011 (=> res!1269118 e!1936295)))

(declare-fun call!218168 () Bool)

(assert (=> b!3098011 (= res!1269118 call!218168)))

(assert (=> b!3098011 (= e!1936294 e!1936295)))

(declare-fun b!3098012 () Bool)

(declare-fun e!1936298 () Bool)

(assert (=> b!3098012 (= e!1936298 e!1936294)))

(assert (=> b!3098012 (= c!517419 (is-Star!9552 r!17423))))

(declare-fun b!3098013 () Bool)

(declare-fun e!1936297 () Bool)

(assert (=> b!3098013 (= e!1936298 e!1936297)))

(declare-fun res!1269119 () Bool)

(assert (=> b!3098013 (= res!1269119 (matchRSpec!1689 (regOne!19617 r!17423) s!11993))))

(assert (=> b!3098013 (=> res!1269119 e!1936297)))

(declare-fun bm!218163 () Bool)

(assert (=> bm!218163 (= call!218168 (isEmpty!19639 s!11993))))

(assert (=> b!3098014 (= e!1936295 call!218167)))

(declare-fun b!3098015 () Bool)

(assert (=> b!3098015 (= e!1936300 call!218168)))

(declare-fun b!3098016 () Bool)

(assert (=> b!3098016 (= e!1936297 (matchRSpec!1689 (regTwo!19617 r!17423) s!11993))))

(declare-fun b!3098017 () Bool)

(declare-fun c!517421 () Bool)

(assert (=> b!3098017 (= c!517421 (is-Union!9552 r!17423))))

(assert (=> b!3098017 (= e!1936299 e!1936298)))

(declare-fun b!3098018 () Bool)

(declare-fun c!517418 () Bool)

(assert (=> b!3098018 (= c!517418 (is-ElementMatch!9552 r!17423))))

(assert (=> b!3098018 (= e!1936296 e!1936299)))

(assert (= (and d!860654 c!517420) b!3098015))

(assert (= (and d!860654 (not c!517420)) b!3098010))

(assert (= (and b!3098010 res!1269117) b!3098018))

(assert (= (and b!3098018 c!517418) b!3098009))

(assert (= (and b!3098018 (not c!517418)) b!3098017))

(assert (= (and b!3098017 c!517421) b!3098013))

(assert (= (and b!3098017 (not c!517421)) b!3098012))

(assert (= (and b!3098013 (not res!1269119)) b!3098016))

(assert (= (and b!3098012 c!517419) b!3098011))

(assert (= (and b!3098012 (not c!517419)) b!3098008))

(assert (= (and b!3098011 (not res!1269118)) b!3098014))

(assert (= (or b!3098014 b!3098008) bm!218162))

(assert (= (or b!3098015 b!3098011) bm!218163))

(declare-fun m!3399553 () Bool)

(assert (=> bm!218162 m!3399553))

(declare-fun m!3399555 () Bool)

(assert (=> b!3098013 m!3399555))

(assert (=> bm!218163 m!3399481))

(declare-fun m!3399557 () Bool)

(assert (=> b!3098016 m!3399557))

(assert (=> b!3097844 d!860654))

(declare-fun b!3098057 () Bool)

(declare-fun res!1269141 () Bool)

(declare-fun e!1936322 () Bool)

(assert (=> b!3098057 (=> res!1269141 e!1936322)))

(assert (=> b!3098057 (= res!1269141 (not (is-ElementMatch!9552 r!17423)))))

(declare-fun e!1936327 () Bool)

(assert (=> b!3098057 (= e!1936327 e!1936322)))

(declare-fun b!3098058 () Bool)

(declare-fun e!1936323 () Bool)

(declare-fun head!6852 (List!35417) C!19290)

(assert (=> b!3098058 (= e!1936323 (not (= (head!6852 s!11993) (c!517396 r!17423))))))

(declare-fun bm!218166 () Bool)

(declare-fun call!218171 () Bool)

(assert (=> bm!218166 (= call!218171 (isEmpty!19639 s!11993))))

(declare-fun b!3098059 () Bool)

(declare-fun res!1269144 () Bool)

(assert (=> b!3098059 (=> res!1269144 e!1936323)))

(declare-fun tail!5078 (List!35417) List!35417)

(assert (=> b!3098059 (= res!1269144 (not (isEmpty!19639 (tail!5078 s!11993))))))

(declare-fun d!860662 () Bool)

(declare-fun e!1936321 () Bool)

(assert (=> d!860662 e!1936321))

(declare-fun c!517433 () Bool)

(assert (=> d!860662 (= c!517433 (is-EmptyExpr!9552 r!17423))))

(declare-fun lt!1055171 () Bool)

(declare-fun e!1936326 () Bool)

(assert (=> d!860662 (= lt!1055171 e!1936326)))

(declare-fun c!517434 () Bool)

(assert (=> d!860662 (= c!517434 (isEmpty!19639 s!11993))))

(assert (=> d!860662 (validRegex!4285 r!17423)))

(assert (=> d!860662 (= (matchR!4434 r!17423 s!11993) lt!1055171)))

(declare-fun b!3098060 () Bool)

(declare-fun derivativeStep!2793 (Regex!9552 C!19290) Regex!9552)

(assert (=> b!3098060 (= e!1936326 (matchR!4434 (derivativeStep!2793 r!17423 (head!6852 s!11993)) (tail!5078 s!11993)))))

(declare-fun b!3098061 () Bool)

(declare-fun res!1269143 () Bool)

(declare-fun e!1936324 () Bool)

(assert (=> b!3098061 (=> (not res!1269143) (not e!1936324))))

(assert (=> b!3098061 (= res!1269143 (not call!218171))))

(declare-fun b!3098062 () Bool)

(assert (=> b!3098062 (= e!1936326 (nullable!3198 r!17423))))

(declare-fun b!3098063 () Bool)

(assert (=> b!3098063 (= e!1936321 e!1936327)))

(declare-fun c!517432 () Bool)

(assert (=> b!3098063 (= c!517432 (is-EmptyLang!9552 r!17423))))

(declare-fun b!3098064 () Bool)

(declare-fun e!1936325 () Bool)

(assert (=> b!3098064 (= e!1936322 e!1936325)))

(declare-fun res!1269145 () Bool)

(assert (=> b!3098064 (=> (not res!1269145) (not e!1936325))))

(assert (=> b!3098064 (= res!1269145 (not lt!1055171))))

(declare-fun b!3098065 () Bool)

(declare-fun res!1269140 () Bool)

(assert (=> b!3098065 (=> (not res!1269140) (not e!1936324))))

(assert (=> b!3098065 (= res!1269140 (isEmpty!19639 (tail!5078 s!11993)))))

(declare-fun b!3098066 () Bool)

(assert (=> b!3098066 (= e!1936324 (= (head!6852 s!11993) (c!517396 r!17423)))))

(declare-fun b!3098067 () Bool)

(assert (=> b!3098067 (= e!1936325 e!1936323)))

(declare-fun res!1269142 () Bool)

(assert (=> b!3098067 (=> res!1269142 e!1936323)))

(assert (=> b!3098067 (= res!1269142 call!218171)))

(declare-fun b!3098068 () Bool)

(declare-fun res!1269138 () Bool)

(assert (=> b!3098068 (=> res!1269138 e!1936322)))

(assert (=> b!3098068 (= res!1269138 e!1936324)))

(declare-fun res!1269139 () Bool)

(assert (=> b!3098068 (=> (not res!1269139) (not e!1936324))))

(assert (=> b!3098068 (= res!1269139 lt!1055171)))

(declare-fun b!3098069 () Bool)

(assert (=> b!3098069 (= e!1936327 (not lt!1055171))))

(declare-fun b!3098070 () Bool)

(assert (=> b!3098070 (= e!1936321 (= lt!1055171 call!218171))))

(assert (= (and d!860662 c!517434) b!3098062))

(assert (= (and d!860662 (not c!517434)) b!3098060))

(assert (= (and d!860662 c!517433) b!3098070))

(assert (= (and d!860662 (not c!517433)) b!3098063))

(assert (= (and b!3098063 c!517432) b!3098069))

(assert (= (and b!3098063 (not c!517432)) b!3098057))

(assert (= (and b!3098057 (not res!1269141)) b!3098068))

(assert (= (and b!3098068 res!1269139) b!3098061))

(assert (= (and b!3098061 res!1269143) b!3098065))

(assert (= (and b!3098065 res!1269140) b!3098066))

(assert (= (and b!3098068 (not res!1269138)) b!3098064))

(assert (= (and b!3098064 res!1269145) b!3098067))

(assert (= (and b!3098067 (not res!1269142)) b!3098059))

(assert (= (and b!3098059 (not res!1269144)) b!3098058))

(assert (= (or b!3098070 b!3098061 b!3098067) bm!218166))

(declare-fun m!3399559 () Bool)

(assert (=> b!3098058 m!3399559))

(assert (=> bm!218166 m!3399481))

(declare-fun m!3399561 () Bool)

(assert (=> b!3098059 m!3399561))

(assert (=> b!3098059 m!3399561))

(declare-fun m!3399563 () Bool)

(assert (=> b!3098059 m!3399563))

(assert (=> b!3098065 m!3399561))

(assert (=> b!3098065 m!3399561))

(assert (=> b!3098065 m!3399563))

(assert (=> b!3098060 m!3399559))

(assert (=> b!3098060 m!3399559))

(declare-fun m!3399565 () Bool)

(assert (=> b!3098060 m!3399565))

(assert (=> b!3098060 m!3399561))

(assert (=> b!3098060 m!3399565))

(assert (=> b!3098060 m!3399561))

(declare-fun m!3399567 () Bool)

(assert (=> b!3098060 m!3399567))

(assert (=> d!860662 m!3399481))

(assert (=> d!860662 m!3399463))

(assert (=> b!3098066 m!3399559))

(declare-fun m!3399569 () Bool)

(assert (=> b!3098062 m!3399569))

(assert (=> b!3097844 d!860662))

(declare-fun d!860664 () Bool)

(assert (=> d!860664 (= (matchR!4434 r!17423 s!11993) (matchRSpec!1689 r!17423 s!11993))))

(declare-fun lt!1055174 () Unit!49543)

(declare-fun choose!18318 (Regex!9552 List!35417) Unit!49543)

(assert (=> d!860664 (= lt!1055174 (choose!18318 r!17423 s!11993))))

(assert (=> d!860664 (validRegex!4285 r!17423)))

(assert (=> d!860664 (= (mainMatchTheorem!1689 r!17423 s!11993) lt!1055174)))

(declare-fun bs!535501 () Bool)

(assert (= bs!535501 d!860664))

(assert (=> bs!535501 m!3399457))

(assert (=> bs!535501 m!3399455))

(declare-fun m!3399571 () Bool)

(assert (=> bs!535501 m!3399571))

(assert (=> bs!535501 m!3399463))

(assert (=> b!3097844 d!860664))

(declare-fun d!860666 () Bool)

(assert (=> d!860666 (= (isEmptyLang!603 lt!1055123) (is-EmptyLang!9552 lt!1055123))))

(assert (=> b!3097840 d!860666))

(declare-fun d!860668 () Bool)

(declare-fun e!1936388 () Bool)

(assert (=> d!860668 e!1936388))

(declare-fun res!1269171 () Bool)

(assert (=> d!860668 (=> (not res!1269171) (not e!1936388))))

(declare-fun lt!1055192 () Regex!9552)

(assert (=> d!860668 (= res!1269171 (validRegex!4285 lt!1055192))))

(declare-fun e!1936376 () Regex!9552)

(assert (=> d!860668 (= lt!1055192 e!1936376)))

(declare-fun c!517467 () Bool)

(assert (=> d!860668 (= c!517467 (is-EmptyLang!9552 (regTwo!19616 r!17423)))))

(assert (=> d!860668 (validRegex!4285 (regTwo!19616 r!17423))))

(assert (=> d!860668 (= (simplify!507 (regTwo!19616 r!17423)) lt!1055192)))

(declare-fun b!3098154 () Bool)

(declare-fun e!1936377 () Regex!9552)

(declare-fun lt!1055191 () Regex!9552)

(assert (=> b!3098154 (= e!1936377 lt!1055191)))

(declare-fun bm!218187 () Bool)

(declare-fun call!218197 () Regex!9552)

(declare-fun c!517465 () Bool)

(assert (=> bm!218187 (= call!218197 (simplify!507 (ite c!517465 (regOne!19617 (regTwo!19616 r!17423)) (regTwo!19616 (regTwo!19616 r!17423)))))))

(declare-fun b!3098155 () Bool)

(declare-fun c!517466 () Bool)

(declare-fun call!218196 () Bool)

(assert (=> b!3098155 (= c!517466 call!218196)))

(declare-fun e!1936381 () Regex!9552)

(declare-fun e!1936380 () Regex!9552)

(assert (=> b!3098155 (= e!1936381 e!1936380)))

(declare-fun b!3098156 () Bool)

(declare-fun lt!1055188 () Regex!9552)

(declare-fun lt!1055187 () Regex!9552)

(assert (=> b!3098156 (= e!1936380 (Union!9552 lt!1055188 lt!1055187))))

(declare-fun b!3098157 () Bool)

(declare-fun e!1936385 () Regex!9552)

(assert (=> b!3098157 (= e!1936385 e!1936381)))

(assert (=> b!3098157 (= lt!1055188 call!218197)))

(declare-fun call!218194 () Regex!9552)

(assert (=> b!3098157 (= lt!1055187 call!218194)))

(declare-fun c!517469 () Bool)

(declare-fun call!218195 () Bool)

(assert (=> b!3098157 (= c!517469 call!218195)))

(declare-fun b!3098158 () Bool)

(declare-fun e!1936382 () Regex!9552)

(assert (=> b!3098158 (= e!1936382 (regTwo!19616 r!17423))))

(declare-fun b!3098159 () Bool)

(assert (=> b!3098159 (= c!517465 (is-Union!9552 (regTwo!19616 r!17423)))))

(declare-fun e!1936375 () Regex!9552)

(assert (=> b!3098159 (= e!1936375 e!1936385)))

(declare-fun b!3098160 () Bool)

(declare-fun e!1936384 () Regex!9552)

(assert (=> b!3098160 (= e!1936385 e!1936384)))

(assert (=> b!3098160 (= lt!1055191 call!218194)))

(declare-fun lt!1055189 () Regex!9552)

(assert (=> b!3098160 (= lt!1055189 call!218197)))

(declare-fun res!1269170 () Bool)

(assert (=> b!3098160 (= res!1269170 call!218196)))

(declare-fun e!1936379 () Bool)

(assert (=> b!3098160 (=> res!1269170 e!1936379)))

(declare-fun c!517474 () Bool)

(assert (=> b!3098160 (= c!517474 e!1936379)))

(declare-fun b!3098161 () Bool)

(assert (=> b!3098161 (= e!1936376 e!1936382)))

(declare-fun c!517473 () Bool)

(assert (=> b!3098161 (= c!517473 (is-ElementMatch!9552 (regTwo!19616 r!17423)))))

(declare-fun b!3098162 () Bool)

(assert (=> b!3098162 (= e!1936381 lt!1055187)))

(declare-fun b!3098163 () Bool)

(assert (=> b!3098163 (= e!1936379 call!218195)))

(declare-fun b!3098164 () Bool)

(declare-fun c!517471 () Bool)

(declare-fun call!218198 () Bool)

(assert (=> b!3098164 (= c!517471 call!218198)))

(declare-fun e!1936387 () Regex!9552)

(assert (=> b!3098164 (= e!1936384 e!1936387)))

(declare-fun b!3098165 () Bool)

(declare-fun e!1936383 () Regex!9552)

(declare-fun lt!1055190 () Regex!9552)

(assert (=> b!3098165 (= e!1936383 (Star!9552 lt!1055190))))

(declare-fun call!218192 () Regex!9552)

(declare-fun c!517472 () Bool)

(declare-fun bm!218188 () Bool)

(assert (=> bm!218188 (= call!218192 (simplify!507 (ite c!517472 (reg!9881 (regTwo!19616 r!17423)) (ite c!517465 (regTwo!19617 (regTwo!19616 r!17423)) (regOne!19616 (regTwo!19616 r!17423))))))))

(declare-fun b!3098166 () Bool)

(assert (=> b!3098166 (= e!1936377 (Concat!14873 lt!1055191 lt!1055189))))

(declare-fun b!3098167 () Bool)

(assert (=> b!3098167 (= e!1936376 EmptyLang!9552)))

(declare-fun bm!218189 () Bool)

(assert (=> bm!218189 (= call!218194 call!218192)))

(declare-fun b!3098168 () Bool)

(declare-fun c!517475 () Bool)

(assert (=> b!3098168 (= c!517475 (is-EmptyExpr!9552 (regTwo!19616 r!17423)))))

(declare-fun e!1936386 () Regex!9552)

(assert (=> b!3098168 (= e!1936382 e!1936386)))

(declare-fun b!3098169 () Bool)

(assert (=> b!3098169 (= e!1936388 (= (nullable!3198 lt!1055192) (nullable!3198 (regTwo!19616 r!17423))))))

(declare-fun b!3098170 () Bool)

(declare-fun e!1936378 () Bool)

(assert (=> b!3098170 (= e!1936378 call!218198)))

(declare-fun bm!218190 () Bool)

(assert (=> bm!218190 (= call!218195 (isEmptyLang!603 (ite c!517465 lt!1055188 lt!1055189)))))

(declare-fun bm!218191 () Bool)

(declare-fun call!218193 () Bool)

(assert (=> bm!218191 (= call!218193 (isEmptyLang!603 (ite c!517472 lt!1055190 (ite c!517465 lt!1055187 lt!1055191))))))

(declare-fun b!3098171 () Bool)

(declare-fun c!517470 () Bool)

(assert (=> b!3098171 (= c!517470 e!1936378)))

(declare-fun res!1269169 () Bool)

(assert (=> b!3098171 (=> res!1269169 e!1936378)))

(assert (=> b!3098171 (= res!1269169 call!218193)))

(assert (=> b!3098171 (= lt!1055190 call!218192)))

(assert (=> b!3098171 (= e!1936375 e!1936383)))

(declare-fun b!3098172 () Bool)

(assert (=> b!3098172 (= e!1936386 e!1936375)))

(assert (=> b!3098172 (= c!517472 (is-Star!9552 (regTwo!19616 r!17423)))))

(declare-fun b!3098173 () Bool)

(assert (=> b!3098173 (= e!1936383 EmptyExpr!9552)))

(declare-fun b!3098174 () Bool)

(assert (=> b!3098174 (= e!1936386 EmptyExpr!9552)))

(declare-fun b!3098175 () Bool)

(assert (=> b!3098175 (= e!1936380 lt!1055188)))

(declare-fun b!3098176 () Bool)

(assert (=> b!3098176 (= e!1936384 EmptyLang!9552)))

(declare-fun bm!218192 () Bool)

(assert (=> bm!218192 (= call!218198 (isEmptyExpr!609 (ite c!517472 lt!1055190 lt!1055191)))))

(declare-fun bm!218193 () Bool)

(assert (=> bm!218193 (= call!218196 call!218193)))

(declare-fun b!3098177 () Bool)

(assert (=> b!3098177 (= e!1936387 lt!1055189)))

(declare-fun b!3098178 () Bool)

(assert (=> b!3098178 (= e!1936387 e!1936377)))

(declare-fun c!517468 () Bool)

(assert (=> b!3098178 (= c!517468 (isEmptyExpr!609 lt!1055189))))

(assert (= (and d!860668 c!517467) b!3098167))

(assert (= (and d!860668 (not c!517467)) b!3098161))

(assert (= (and b!3098161 c!517473) b!3098158))

(assert (= (and b!3098161 (not c!517473)) b!3098168))

(assert (= (and b!3098168 c!517475) b!3098174))

(assert (= (and b!3098168 (not c!517475)) b!3098172))

(assert (= (and b!3098172 c!517472) b!3098171))

(assert (= (and b!3098172 (not c!517472)) b!3098159))

(assert (= (and b!3098171 (not res!1269169)) b!3098170))

(assert (= (and b!3098171 c!517470) b!3098173))

(assert (= (and b!3098171 (not c!517470)) b!3098165))

(assert (= (and b!3098159 c!517465) b!3098157))

(assert (= (and b!3098159 (not c!517465)) b!3098160))

(assert (= (and b!3098157 c!517469) b!3098162))

(assert (= (and b!3098157 (not c!517469)) b!3098155))

(assert (= (and b!3098155 c!517466) b!3098175))

(assert (= (and b!3098155 (not c!517466)) b!3098156))

(assert (= (and b!3098160 (not res!1269170)) b!3098163))

(assert (= (and b!3098160 c!517474) b!3098176))

(assert (= (and b!3098160 (not c!517474)) b!3098164))

(assert (= (and b!3098164 c!517471) b!3098177))

(assert (= (and b!3098164 (not c!517471)) b!3098178))

(assert (= (and b!3098178 c!517468) b!3098154))

(assert (= (and b!3098178 (not c!517468)) b!3098166))

(assert (= (or b!3098157 b!3098160) bm!218187))

(assert (= (or b!3098157 b!3098160) bm!218189))

(assert (= (or b!3098155 b!3098160) bm!218193))

(assert (= (or b!3098157 b!3098163) bm!218190))

(assert (= (or b!3098170 b!3098164) bm!218192))

(assert (= (or b!3098171 bm!218189) bm!218188))

(assert (= (or b!3098171 bm!218193) bm!218191))

(assert (= (and d!860668 res!1269171) b!3098169))

(declare-fun m!3399573 () Bool)

(assert (=> b!3098178 m!3399573))

(declare-fun m!3399575 () Bool)

(assert (=> b!3098169 m!3399575))

(declare-fun m!3399577 () Bool)

(assert (=> b!3098169 m!3399577))

(declare-fun m!3399579 () Bool)

(assert (=> bm!218192 m!3399579))

(declare-fun m!3399581 () Bool)

(assert (=> bm!218187 m!3399581))

(declare-fun m!3399583 () Bool)

(assert (=> bm!218188 m!3399583))

(declare-fun m!3399585 () Bool)

(assert (=> bm!218191 m!3399585))

(declare-fun m!3399587 () Bool)

(assert (=> d!860668 m!3399587))

(assert (=> d!860668 m!3399451))

(declare-fun m!3399589 () Bool)

(assert (=> bm!218190 m!3399589))

(assert (=> b!3097840 d!860668))

(declare-fun d!860670 () Bool)

(declare-fun e!1936402 () Bool)

(assert (=> d!860670 e!1936402))

(declare-fun res!1269174 () Bool)

(assert (=> d!860670 (=> (not res!1269174) (not e!1936402))))

(declare-fun lt!1055198 () Regex!9552)

(assert (=> d!860670 (= res!1269174 (validRegex!4285 lt!1055198))))

(declare-fun e!1936390 () Regex!9552)

(assert (=> d!860670 (= lt!1055198 e!1936390)))

(declare-fun c!517478 () Bool)

(assert (=> d!860670 (= c!517478 (is-EmptyLang!9552 (regOne!19616 r!17423)))))

(assert (=> d!860670 (validRegex!4285 (regOne!19616 r!17423))))

(assert (=> d!860670 (= (simplify!507 (regOne!19616 r!17423)) lt!1055198)))

(declare-fun b!3098179 () Bool)

(declare-fun e!1936391 () Regex!9552)

(declare-fun lt!1055197 () Regex!9552)

(assert (=> b!3098179 (= e!1936391 lt!1055197)))

(declare-fun bm!218194 () Bool)

(declare-fun call!218204 () Regex!9552)

(declare-fun c!517476 () Bool)

(assert (=> bm!218194 (= call!218204 (simplify!507 (ite c!517476 (regOne!19617 (regOne!19616 r!17423)) (regTwo!19616 (regOne!19616 r!17423)))))))

(declare-fun b!3098180 () Bool)

(declare-fun c!517477 () Bool)

(declare-fun call!218203 () Bool)

(assert (=> b!3098180 (= c!517477 call!218203)))

(declare-fun e!1936395 () Regex!9552)

(declare-fun e!1936394 () Regex!9552)

(assert (=> b!3098180 (= e!1936395 e!1936394)))

(declare-fun b!3098181 () Bool)

(declare-fun lt!1055194 () Regex!9552)

(declare-fun lt!1055193 () Regex!9552)

(assert (=> b!3098181 (= e!1936394 (Union!9552 lt!1055194 lt!1055193))))

(declare-fun b!3098182 () Bool)

(declare-fun e!1936399 () Regex!9552)

(assert (=> b!3098182 (= e!1936399 e!1936395)))

(assert (=> b!3098182 (= lt!1055194 call!218204)))

(declare-fun call!218201 () Regex!9552)

(assert (=> b!3098182 (= lt!1055193 call!218201)))

(declare-fun c!517480 () Bool)

(declare-fun call!218202 () Bool)

(assert (=> b!3098182 (= c!517480 call!218202)))

(declare-fun b!3098183 () Bool)

(declare-fun e!1936396 () Regex!9552)

(assert (=> b!3098183 (= e!1936396 (regOne!19616 r!17423))))

(declare-fun b!3098184 () Bool)

(assert (=> b!3098184 (= c!517476 (is-Union!9552 (regOne!19616 r!17423)))))

(declare-fun e!1936389 () Regex!9552)

(assert (=> b!3098184 (= e!1936389 e!1936399)))

(declare-fun b!3098185 () Bool)

(declare-fun e!1936398 () Regex!9552)

(assert (=> b!3098185 (= e!1936399 e!1936398)))

(assert (=> b!3098185 (= lt!1055197 call!218201)))

(declare-fun lt!1055195 () Regex!9552)

(assert (=> b!3098185 (= lt!1055195 call!218204)))

(declare-fun res!1269173 () Bool)

(assert (=> b!3098185 (= res!1269173 call!218203)))

(declare-fun e!1936393 () Bool)

(assert (=> b!3098185 (=> res!1269173 e!1936393)))

(declare-fun c!517485 () Bool)

(assert (=> b!3098185 (= c!517485 e!1936393)))

(declare-fun b!3098186 () Bool)

(assert (=> b!3098186 (= e!1936390 e!1936396)))

(declare-fun c!517484 () Bool)

(assert (=> b!3098186 (= c!517484 (is-ElementMatch!9552 (regOne!19616 r!17423)))))

(declare-fun b!3098187 () Bool)

(assert (=> b!3098187 (= e!1936395 lt!1055193)))

(declare-fun b!3098188 () Bool)

(assert (=> b!3098188 (= e!1936393 call!218202)))

(declare-fun b!3098189 () Bool)

(declare-fun c!517482 () Bool)

(declare-fun call!218205 () Bool)

(assert (=> b!3098189 (= c!517482 call!218205)))

(declare-fun e!1936401 () Regex!9552)

(assert (=> b!3098189 (= e!1936398 e!1936401)))

(declare-fun b!3098190 () Bool)

(declare-fun e!1936397 () Regex!9552)

(declare-fun lt!1055196 () Regex!9552)

(assert (=> b!3098190 (= e!1936397 (Star!9552 lt!1055196))))

(declare-fun c!517483 () Bool)

(declare-fun bm!218195 () Bool)

(declare-fun call!218199 () Regex!9552)

(assert (=> bm!218195 (= call!218199 (simplify!507 (ite c!517483 (reg!9881 (regOne!19616 r!17423)) (ite c!517476 (regTwo!19617 (regOne!19616 r!17423)) (regOne!19616 (regOne!19616 r!17423))))))))

(declare-fun b!3098191 () Bool)

(assert (=> b!3098191 (= e!1936391 (Concat!14873 lt!1055197 lt!1055195))))

(declare-fun b!3098192 () Bool)

(assert (=> b!3098192 (= e!1936390 EmptyLang!9552)))

(declare-fun bm!218196 () Bool)

(assert (=> bm!218196 (= call!218201 call!218199)))

(declare-fun b!3098193 () Bool)

(declare-fun c!517486 () Bool)

(assert (=> b!3098193 (= c!517486 (is-EmptyExpr!9552 (regOne!19616 r!17423)))))

(declare-fun e!1936400 () Regex!9552)

(assert (=> b!3098193 (= e!1936396 e!1936400)))

(declare-fun b!3098194 () Bool)

(assert (=> b!3098194 (= e!1936402 (= (nullable!3198 lt!1055198) (nullable!3198 (regOne!19616 r!17423))))))

(declare-fun b!3098195 () Bool)

(declare-fun e!1936392 () Bool)

(assert (=> b!3098195 (= e!1936392 call!218205)))

(declare-fun bm!218197 () Bool)

(assert (=> bm!218197 (= call!218202 (isEmptyLang!603 (ite c!517476 lt!1055194 lt!1055195)))))

(declare-fun bm!218198 () Bool)

(declare-fun call!218200 () Bool)

(assert (=> bm!218198 (= call!218200 (isEmptyLang!603 (ite c!517483 lt!1055196 (ite c!517476 lt!1055193 lt!1055197))))))

(declare-fun b!3098196 () Bool)

(declare-fun c!517481 () Bool)

(assert (=> b!3098196 (= c!517481 e!1936392)))

(declare-fun res!1269172 () Bool)

(assert (=> b!3098196 (=> res!1269172 e!1936392)))

(assert (=> b!3098196 (= res!1269172 call!218200)))

(assert (=> b!3098196 (= lt!1055196 call!218199)))

(assert (=> b!3098196 (= e!1936389 e!1936397)))

(declare-fun b!3098197 () Bool)

(assert (=> b!3098197 (= e!1936400 e!1936389)))

(assert (=> b!3098197 (= c!517483 (is-Star!9552 (regOne!19616 r!17423)))))

(declare-fun b!3098198 () Bool)

(assert (=> b!3098198 (= e!1936397 EmptyExpr!9552)))

(declare-fun b!3098199 () Bool)

(assert (=> b!3098199 (= e!1936400 EmptyExpr!9552)))

(declare-fun b!3098200 () Bool)

(assert (=> b!3098200 (= e!1936394 lt!1055194)))

(declare-fun b!3098201 () Bool)

(assert (=> b!3098201 (= e!1936398 EmptyLang!9552)))

(declare-fun bm!218199 () Bool)

(assert (=> bm!218199 (= call!218205 (isEmptyExpr!609 (ite c!517483 lt!1055196 lt!1055197)))))

(declare-fun bm!218200 () Bool)

(assert (=> bm!218200 (= call!218203 call!218200)))

(declare-fun b!3098202 () Bool)

(assert (=> b!3098202 (= e!1936401 lt!1055195)))

(declare-fun b!3098203 () Bool)

(assert (=> b!3098203 (= e!1936401 e!1936391)))

(declare-fun c!517479 () Bool)

(assert (=> b!3098203 (= c!517479 (isEmptyExpr!609 lt!1055195))))

(assert (= (and d!860670 c!517478) b!3098192))

(assert (= (and d!860670 (not c!517478)) b!3098186))

(assert (= (and b!3098186 c!517484) b!3098183))

(assert (= (and b!3098186 (not c!517484)) b!3098193))

(assert (= (and b!3098193 c!517486) b!3098199))

(assert (= (and b!3098193 (not c!517486)) b!3098197))

(assert (= (and b!3098197 c!517483) b!3098196))

(assert (= (and b!3098197 (not c!517483)) b!3098184))

(assert (= (and b!3098196 (not res!1269172)) b!3098195))

(assert (= (and b!3098196 c!517481) b!3098198))

(assert (= (and b!3098196 (not c!517481)) b!3098190))

(assert (= (and b!3098184 c!517476) b!3098182))

(assert (= (and b!3098184 (not c!517476)) b!3098185))

(assert (= (and b!3098182 c!517480) b!3098187))

(assert (= (and b!3098182 (not c!517480)) b!3098180))

(assert (= (and b!3098180 c!517477) b!3098200))

(assert (= (and b!3098180 (not c!517477)) b!3098181))

(assert (= (and b!3098185 (not res!1269173)) b!3098188))

(assert (= (and b!3098185 c!517485) b!3098201))

(assert (= (and b!3098185 (not c!517485)) b!3098189))

(assert (= (and b!3098189 c!517482) b!3098202))

(assert (= (and b!3098189 (not c!517482)) b!3098203))

(assert (= (and b!3098203 c!517479) b!3098179))

(assert (= (and b!3098203 (not c!517479)) b!3098191))

(assert (= (or b!3098182 b!3098185) bm!218194))

(assert (= (or b!3098182 b!3098185) bm!218196))

(assert (= (or b!3098180 b!3098185) bm!218200))

(assert (= (or b!3098182 b!3098188) bm!218197))

(assert (= (or b!3098195 b!3098189) bm!218199))

(assert (= (or b!3098196 bm!218196) bm!218195))

(assert (= (or b!3098196 bm!218200) bm!218198))

(assert (= (and d!860670 res!1269174) b!3098194))

(declare-fun m!3399591 () Bool)

(assert (=> b!3098203 m!3399591))

(declare-fun m!3399593 () Bool)

(assert (=> b!3098194 m!3399593))

(declare-fun m!3399595 () Bool)

(assert (=> b!3098194 m!3399595))

(declare-fun m!3399597 () Bool)

(assert (=> bm!218199 m!3399597))

(declare-fun m!3399599 () Bool)

(assert (=> bm!218194 m!3399599))

(declare-fun m!3399601 () Bool)

(assert (=> bm!218195 m!3399601))

(declare-fun m!3399603 () Bool)

(assert (=> bm!218198 m!3399603))

(declare-fun m!3399605 () Bool)

(assert (=> d!860670 m!3399605))

(assert (=> d!860670 m!3399473))

(declare-fun m!3399607 () Bool)

(assert (=> bm!218197 m!3399607))

(assert (=> b!3097840 d!860670))

(declare-fun bs!535505 () Bool)

(declare-fun d!860672 () Bool)

(assert (= bs!535505 (and d!860672 b!3097846)))

(declare-fun lambda!114749 () Int)

(assert (=> bs!535505 (= lambda!114749 lambda!114725)))

(assert (=> bs!535505 (not (= lambda!114749 lambda!114726))))

(declare-fun bs!535506 () Bool)

(assert (= bs!535506 (and d!860672 b!3098014)))

(assert (=> bs!535506 (not (= lambda!114749 lambda!114739))))

(declare-fun bs!535507 () Bool)

(assert (= bs!535507 (and d!860672 b!3098008)))

(assert (=> bs!535507 (not (= lambda!114749 lambda!114740))))

(assert (=> d!860672 true))

(assert (=> d!860672 true))

(assert (=> d!860672 true))

(assert (=> d!860672 (= (isDefined!5390 (findConcatSeparation!1233 lt!1055123 lt!1055115 Nil!35293 s!11993 s!11993)) (Exists!1815 lambda!114749))))

(declare-fun lt!1055201 () Unit!49543)

(declare-fun choose!18319 (Regex!9552 Regex!9552 List!35417) Unit!49543)

(assert (=> d!860672 (= lt!1055201 (choose!18319 lt!1055123 lt!1055115 s!11993))))

(assert (=> d!860672 (validRegex!4285 lt!1055123)))

(assert (=> d!860672 (= (lemmaFindConcatSeparationEquivalentToExists!1003 lt!1055123 lt!1055115 s!11993) lt!1055201)))

(declare-fun bs!535508 () Bool)

(assert (= bs!535508 d!860672))

(declare-fun m!3399615 () Bool)

(assert (=> bs!535508 m!3399615))

(assert (=> bs!535508 m!3399435))

(assert (=> bs!535508 m!3399435))

(declare-fun m!3399617 () Bool)

(assert (=> bs!535508 m!3399617))

(declare-fun m!3399619 () Bool)

(assert (=> bs!535508 m!3399619))

(declare-fun m!3399621 () Bool)

(assert (=> bs!535508 m!3399621))

(assert (=> b!3097846 d!860672))

(declare-fun bs!535509 () Bool)

(declare-fun d!860676 () Bool)

(assert (= bs!535509 (and d!860676 b!3098014)))

(declare-fun lambda!114754 () Int)

(assert (=> bs!535509 (not (= lambda!114754 lambda!114739))))

(declare-fun bs!535510 () Bool)

(assert (= bs!535510 (and d!860676 b!3097846)))

(assert (=> bs!535510 (= lambda!114754 lambda!114725)))

(declare-fun bs!535511 () Bool)

(assert (= bs!535511 (and d!860676 d!860672)))

(assert (=> bs!535511 (= lambda!114754 lambda!114749)))

(declare-fun bs!535512 () Bool)

(assert (= bs!535512 (and d!860676 b!3098008)))

(assert (=> bs!535512 (not (= lambda!114754 lambda!114740))))

(assert (=> bs!535510 (not (= lambda!114754 lambda!114726))))

(assert (=> d!860676 true))

(assert (=> d!860676 true))

(assert (=> d!860676 true))

(declare-fun lambda!114755 () Int)

(assert (=> bs!535509 (not (= lambda!114755 lambda!114739))))

(declare-fun bs!535513 () Bool)

(assert (= bs!535513 d!860676))

(assert (=> bs!535513 (not (= lambda!114755 lambda!114754))))

(assert (=> bs!535510 (not (= lambda!114755 lambda!114725))))

(assert (=> bs!535511 (not (= lambda!114755 lambda!114749))))

(assert (=> bs!535512 (= (and (= lt!1055123 (regOne!19616 r!17423)) (= lt!1055115 (regTwo!19616 r!17423))) (= lambda!114755 lambda!114740))))

(assert (=> bs!535510 (= lambda!114755 lambda!114726)))

(assert (=> d!860676 true))

(assert (=> d!860676 true))

(assert (=> d!860676 true))

(assert (=> d!860676 (= (Exists!1815 lambda!114754) (Exists!1815 lambda!114755))))

(declare-fun lt!1055206 () Unit!49543)

(declare-fun choose!18320 (Regex!9552 Regex!9552 List!35417) Unit!49543)

(assert (=> d!860676 (= lt!1055206 (choose!18320 lt!1055123 lt!1055115 s!11993))))

(assert (=> d!860676 (validRegex!4285 lt!1055123)))

(assert (=> d!860676 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!569 lt!1055123 lt!1055115 s!11993) lt!1055206)))

(declare-fun m!3399623 () Bool)

(assert (=> bs!535513 m!3399623))

(declare-fun m!3399625 () Bool)

(assert (=> bs!535513 m!3399625))

(declare-fun m!3399627 () Bool)

(assert (=> bs!535513 m!3399627))

(assert (=> bs!535513 m!3399621))

(assert (=> b!3097846 d!860676))

(declare-fun b!3098276 () Bool)

(declare-fun res!1269221 () Bool)

(declare-fun e!1936444 () Bool)

(assert (=> b!3098276 (=> (not res!1269221) (not e!1936444))))

(declare-fun lt!1055215 () Option!6839)

(assert (=> b!3098276 (= res!1269221 (matchR!4434 lt!1055123 (_1!20239 (get!11081 lt!1055215))))))

(declare-fun b!3098277 () Bool)

(declare-fun e!1936441 () Bool)

(assert (=> b!3098277 (= e!1936441 (matchR!4434 lt!1055115 s!11993))))

(declare-fun b!3098278 () Bool)

(declare-fun lt!1055216 () Unit!49543)

(declare-fun lt!1055214 () Unit!49543)

(assert (=> b!3098278 (= lt!1055216 lt!1055214)))

(declare-fun ++!8494 (List!35417 List!35417) List!35417)

(assert (=> b!3098278 (= (++!8494 (++!8494 Nil!35293 (Cons!35293 (h!40713 s!11993) Nil!35293)) (t!234482 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1089 (List!35417 C!19290 List!35417 List!35417) Unit!49543)

(assert (=> b!3098278 (= lt!1055214 (lemmaMoveElementToOtherListKeepsConcatEq!1089 Nil!35293 (h!40713 s!11993) (t!234482 s!11993) s!11993))))

(declare-fun e!1936442 () Option!6839)

(assert (=> b!3098278 (= e!1936442 (findConcatSeparation!1233 lt!1055123 lt!1055115 (++!8494 Nil!35293 (Cons!35293 (h!40713 s!11993) Nil!35293)) (t!234482 s!11993) s!11993))))

(declare-fun b!3098279 () Bool)

(declare-fun e!1936440 () Option!6839)

(assert (=> b!3098279 (= e!1936440 e!1936442)))

(declare-fun c!517500 () Bool)

(assert (=> b!3098279 (= c!517500 (is-Nil!35293 s!11993))))

(declare-fun b!3098280 () Bool)

(assert (=> b!3098280 (= e!1936444 (= (++!8494 (_1!20239 (get!11081 lt!1055215)) (_2!20239 (get!11081 lt!1055215))) s!11993))))

(declare-fun b!3098281 () Bool)

(declare-fun res!1269224 () Bool)

(assert (=> b!3098281 (=> (not res!1269224) (not e!1936444))))

(assert (=> b!3098281 (= res!1269224 (matchR!4434 lt!1055115 (_2!20239 (get!11081 lt!1055215))))))

(declare-fun d!860678 () Bool)

(declare-fun e!1936443 () Bool)

(assert (=> d!860678 e!1936443))

(declare-fun res!1269222 () Bool)

(assert (=> d!860678 (=> res!1269222 e!1936443)))

(assert (=> d!860678 (= res!1269222 e!1936444)))

(declare-fun res!1269225 () Bool)

(assert (=> d!860678 (=> (not res!1269225) (not e!1936444))))

(assert (=> d!860678 (= res!1269225 (isDefined!5390 lt!1055215))))

(assert (=> d!860678 (= lt!1055215 e!1936440)))

(declare-fun c!517501 () Bool)

(assert (=> d!860678 (= c!517501 e!1936441)))

(declare-fun res!1269223 () Bool)

(assert (=> d!860678 (=> (not res!1269223) (not e!1936441))))

(assert (=> d!860678 (= res!1269223 (matchR!4434 lt!1055123 Nil!35293))))

(assert (=> d!860678 (validRegex!4285 lt!1055123)))

(assert (=> d!860678 (= (findConcatSeparation!1233 lt!1055123 lt!1055115 Nil!35293 s!11993 s!11993) lt!1055215)))

(declare-fun b!3098282 () Bool)

(assert (=> b!3098282 (= e!1936442 None!6838)))

(declare-fun b!3098283 () Bool)

(assert (=> b!3098283 (= e!1936443 (not (isDefined!5390 lt!1055215)))))

(declare-fun b!3098284 () Bool)

(assert (=> b!3098284 (= e!1936440 (Some!6838 (tuple2!34215 Nil!35293 s!11993)))))

(assert (= (and d!860678 res!1269223) b!3098277))

(assert (= (and d!860678 c!517501) b!3098284))

(assert (= (and d!860678 (not c!517501)) b!3098279))

(assert (= (and b!3098279 c!517500) b!3098282))

(assert (= (and b!3098279 (not c!517500)) b!3098278))

(assert (= (and d!860678 res!1269225) b!3098276))

(assert (= (and b!3098276 res!1269221) b!3098281))

(assert (= (and b!3098281 res!1269224) b!3098280))

(assert (= (and d!860678 (not res!1269222)) b!3098283))

(declare-fun m!3399641 () Bool)

(assert (=> b!3098283 m!3399641))

(declare-fun m!3399643 () Bool)

(assert (=> b!3098280 m!3399643))

(declare-fun m!3399645 () Bool)

(assert (=> b!3098280 m!3399645))

(declare-fun m!3399647 () Bool)

(assert (=> b!3098278 m!3399647))

(assert (=> b!3098278 m!3399647))

(declare-fun m!3399649 () Bool)

(assert (=> b!3098278 m!3399649))

(declare-fun m!3399651 () Bool)

(assert (=> b!3098278 m!3399651))

(assert (=> b!3098278 m!3399647))

(declare-fun m!3399653 () Bool)

(assert (=> b!3098278 m!3399653))

(declare-fun m!3399655 () Bool)

(assert (=> b!3098277 m!3399655))

(assert (=> b!3098276 m!3399643))

(declare-fun m!3399657 () Bool)

(assert (=> b!3098276 m!3399657))

(assert (=> d!860678 m!3399641))

(declare-fun m!3399659 () Bool)

(assert (=> d!860678 m!3399659))

(assert (=> d!860678 m!3399621))

(assert (=> b!3098281 m!3399643))

(declare-fun m!3399661 () Bool)

(assert (=> b!3098281 m!3399661))

(assert (=> b!3097846 d!860678))

(declare-fun d!860682 () Bool)

(declare-fun choose!18321 (Int) Bool)

(assert (=> d!860682 (= (Exists!1815 lambda!114726) (choose!18321 lambda!114726))))

(declare-fun bs!535515 () Bool)

(assert (= bs!535515 d!860682))

(declare-fun m!3399665 () Bool)

(assert (=> bs!535515 m!3399665))

(assert (=> b!3097846 d!860682))

(declare-fun d!860688 () Bool)

(assert (=> d!860688 (= (Exists!1815 lambda!114725) (choose!18321 lambda!114725))))

(declare-fun bs!535516 () Bool)

(assert (= bs!535516 d!860688))

(declare-fun m!3399667 () Bool)

(assert (=> bs!535516 m!3399667))

(assert (=> b!3097846 d!860688))

(declare-fun d!860690 () Bool)

(assert (=> d!860690 (= (matchR!4434 lt!1055126 s!11993) (matchRSpec!1689 lt!1055126 s!11993))))

(declare-fun lt!1055220 () Unit!49543)

(assert (=> d!860690 (= lt!1055220 (choose!18318 lt!1055126 s!11993))))

(assert (=> d!860690 (validRegex!4285 lt!1055126)))

(assert (=> d!860690 (= (mainMatchTheorem!1689 lt!1055126 s!11993) lt!1055220)))

(declare-fun bs!535517 () Bool)

(assert (= bs!535517 d!860690))

(assert (=> bs!535517 m!3399425))

(assert (=> bs!535517 m!3399431))

(declare-fun m!3399669 () Bool)

(assert (=> bs!535517 m!3399669))

(declare-fun m!3399671 () Bool)

(assert (=> bs!535517 m!3399671))

(assert (=> b!3097846 d!860690))

(declare-fun d!860692 () Bool)

(declare-fun isEmpty!19641 (Option!6839) Bool)

(assert (=> d!860692 (= (isDefined!5390 lt!1055113) (not (isEmpty!19641 lt!1055113)))))

(declare-fun bs!535518 () Bool)

(assert (= bs!535518 d!860692))

(declare-fun m!3399673 () Bool)

(assert (=> bs!535518 m!3399673))

(assert (=> b!3097846 d!860692))

(declare-fun bs!535519 () Bool)

(declare-fun b!3098291 () Bool)

(assert (= bs!535519 (and b!3098291 b!3098014)))

(declare-fun lambda!114756 () Int)

(assert (=> bs!535519 (= (and (= (reg!9881 lt!1055126) (reg!9881 r!17423)) (= lt!1055126 r!17423)) (= lambda!114756 lambda!114739))))

(declare-fun bs!535520 () Bool)

(assert (= bs!535520 (and b!3098291 d!860676)))

(assert (=> bs!535520 (not (= lambda!114756 lambda!114754))))

(declare-fun bs!535521 () Bool)

(assert (= bs!535521 (and b!3098291 b!3097846)))

(assert (=> bs!535521 (not (= lambda!114756 lambda!114725))))

(assert (=> bs!535520 (not (= lambda!114756 lambda!114755))))

(declare-fun bs!535522 () Bool)

(assert (= bs!535522 (and b!3098291 d!860672)))

(assert (=> bs!535522 (not (= lambda!114756 lambda!114749))))

(declare-fun bs!535523 () Bool)

(assert (= bs!535523 (and b!3098291 b!3098008)))

(assert (=> bs!535523 (not (= lambda!114756 lambda!114740))))

(assert (=> bs!535521 (not (= lambda!114756 lambda!114726))))

(assert (=> b!3098291 true))

(assert (=> b!3098291 true))

(declare-fun bs!535524 () Bool)

(declare-fun b!3098285 () Bool)

(assert (= bs!535524 (and b!3098285 b!3098014)))

(declare-fun lambda!114757 () Int)

(assert (=> bs!535524 (not (= lambda!114757 lambda!114739))))

(declare-fun bs!535525 () Bool)

(assert (= bs!535525 (and b!3098285 b!3097846)))

(assert (=> bs!535525 (not (= lambda!114757 lambda!114725))))

(declare-fun bs!535526 () Bool)

(assert (= bs!535526 (and b!3098285 d!860676)))

(assert (=> bs!535526 (= (and (= (regOne!19616 lt!1055126) lt!1055123) (= (regTwo!19616 lt!1055126) lt!1055115)) (= lambda!114757 lambda!114755))))

(declare-fun bs!535527 () Bool)

(assert (= bs!535527 (and b!3098285 d!860672)))

(assert (=> bs!535527 (not (= lambda!114757 lambda!114749))))

(assert (=> bs!535526 (not (= lambda!114757 lambda!114754))))

(declare-fun bs!535528 () Bool)

(assert (= bs!535528 (and b!3098285 b!3098291)))

(assert (=> bs!535528 (not (= lambda!114757 lambda!114756))))

(declare-fun bs!535529 () Bool)

(assert (= bs!535529 (and b!3098285 b!3098008)))

(assert (=> bs!535529 (= (and (= (regOne!19616 lt!1055126) (regOne!19616 r!17423)) (= (regTwo!19616 lt!1055126) (regTwo!19616 r!17423))) (= lambda!114757 lambda!114740))))

(assert (=> bs!535525 (= (and (= (regOne!19616 lt!1055126) lt!1055123) (= (regTwo!19616 lt!1055126) lt!1055115)) (= lambda!114757 lambda!114726))))

(assert (=> b!3098285 true))

(assert (=> b!3098285 true))

(declare-fun bm!218204 () Bool)

(declare-fun c!517503 () Bool)

(declare-fun call!218209 () Bool)

(assert (=> bm!218204 (= call!218209 (Exists!1815 (ite c!517503 lambda!114756 lambda!114757)))))

(declare-fun e!1936445 () Bool)

(assert (=> b!3098285 (= e!1936445 call!218209)))

(declare-fun d!860694 () Bool)

(declare-fun c!517504 () Bool)

(assert (=> d!860694 (= c!517504 (is-EmptyExpr!9552 lt!1055126))))

(declare-fun e!1936451 () Bool)

(assert (=> d!860694 (= (matchRSpec!1689 lt!1055126 s!11993) e!1936451)))

(declare-fun b!3098286 () Bool)

(declare-fun e!1936450 () Bool)

(assert (=> b!3098286 (= e!1936450 (= s!11993 (Cons!35293 (c!517396 lt!1055126) Nil!35293)))))

(declare-fun b!3098287 () Bool)

(declare-fun e!1936447 () Bool)

(assert (=> b!3098287 (= e!1936451 e!1936447)))

(declare-fun res!1269226 () Bool)

(assert (=> b!3098287 (= res!1269226 (not (is-EmptyLang!9552 lt!1055126)))))

(assert (=> b!3098287 (=> (not res!1269226) (not e!1936447))))

(declare-fun b!3098288 () Bool)

(declare-fun res!1269227 () Bool)

(declare-fun e!1936446 () Bool)

(assert (=> b!3098288 (=> res!1269227 e!1936446)))

(declare-fun call!218210 () Bool)

(assert (=> b!3098288 (= res!1269227 call!218210)))

(assert (=> b!3098288 (= e!1936445 e!1936446)))

(declare-fun b!3098289 () Bool)

(declare-fun e!1936449 () Bool)

(assert (=> b!3098289 (= e!1936449 e!1936445)))

(assert (=> b!3098289 (= c!517503 (is-Star!9552 lt!1055126))))

(declare-fun b!3098290 () Bool)

(declare-fun e!1936448 () Bool)

(assert (=> b!3098290 (= e!1936449 e!1936448)))

(declare-fun res!1269228 () Bool)

(assert (=> b!3098290 (= res!1269228 (matchRSpec!1689 (regOne!19617 lt!1055126) s!11993))))

(assert (=> b!3098290 (=> res!1269228 e!1936448)))

(declare-fun bm!218205 () Bool)

(assert (=> bm!218205 (= call!218210 (isEmpty!19639 s!11993))))

(assert (=> b!3098291 (= e!1936446 call!218209)))

(declare-fun b!3098292 () Bool)

(assert (=> b!3098292 (= e!1936451 call!218210)))

(declare-fun b!3098293 () Bool)

(assert (=> b!3098293 (= e!1936448 (matchRSpec!1689 (regTwo!19617 lt!1055126) s!11993))))

(declare-fun b!3098294 () Bool)

(declare-fun c!517505 () Bool)

(assert (=> b!3098294 (= c!517505 (is-Union!9552 lt!1055126))))

(assert (=> b!3098294 (= e!1936450 e!1936449)))

(declare-fun b!3098295 () Bool)

(declare-fun c!517502 () Bool)

(assert (=> b!3098295 (= c!517502 (is-ElementMatch!9552 lt!1055126))))

(assert (=> b!3098295 (= e!1936447 e!1936450)))

(assert (= (and d!860694 c!517504) b!3098292))

(assert (= (and d!860694 (not c!517504)) b!3098287))

(assert (= (and b!3098287 res!1269226) b!3098295))

(assert (= (and b!3098295 c!517502) b!3098286))

(assert (= (and b!3098295 (not c!517502)) b!3098294))

(assert (= (and b!3098294 c!517505) b!3098290))

(assert (= (and b!3098294 (not c!517505)) b!3098289))

(assert (= (and b!3098290 (not res!1269228)) b!3098293))

(assert (= (and b!3098289 c!517503) b!3098288))

(assert (= (and b!3098289 (not c!517503)) b!3098285))

(assert (= (and b!3098288 (not res!1269227)) b!3098291))

(assert (= (or b!3098291 b!3098285) bm!218204))

(assert (= (or b!3098292 b!3098288) bm!218205))

(declare-fun m!3399675 () Bool)

(assert (=> bm!218204 m!3399675))

(declare-fun m!3399677 () Bool)

(assert (=> b!3098290 m!3399677))

(assert (=> bm!218205 m!3399481))

(declare-fun m!3399679 () Bool)

(assert (=> b!3098293 m!3399679))

(assert (=> b!3097846 d!860694))

(declare-fun d!860696 () Bool)

(assert (=> d!860696 (= (isEmpty!19639 s!11993) (is-Nil!35293 s!11993))))

(assert (=> b!3097852 d!860696))

(declare-fun call!218212 () Bool)

(declare-fun bm!218206 () Bool)

(declare-fun c!517507 () Bool)

(declare-fun c!517506 () Bool)

(assert (=> bm!218206 (= call!218212 (validRegex!4285 (ite c!517506 (reg!9881 (regTwo!19616 r!17423)) (ite c!517507 (regTwo!19617 (regTwo!19616 r!17423)) (regOne!19616 (regTwo!19616 r!17423))))))))

(declare-fun b!3098296 () Bool)

(declare-fun e!1936457 () Bool)

(declare-fun e!1936454 () Bool)

(assert (=> b!3098296 (= e!1936457 e!1936454)))

(declare-fun res!1269232 () Bool)

(assert (=> b!3098296 (=> (not res!1269232) (not e!1936454))))

(declare-fun call!218211 () Bool)

(assert (=> b!3098296 (= res!1269232 call!218211)))

(declare-fun b!3098297 () Bool)

(declare-fun res!1269231 () Bool)

(assert (=> b!3098297 (=> res!1269231 e!1936457)))

(assert (=> b!3098297 (= res!1269231 (not (is-Concat!14873 (regTwo!19616 r!17423))))))

(declare-fun e!1936452 () Bool)

(assert (=> b!3098297 (= e!1936452 e!1936457)))

(declare-fun b!3098298 () Bool)

(declare-fun call!218213 () Bool)

(assert (=> b!3098298 (= e!1936454 call!218213)))

(declare-fun b!3098299 () Bool)

(declare-fun e!1936458 () Bool)

(declare-fun e!1936456 () Bool)

(assert (=> b!3098299 (= e!1936458 e!1936456)))

(declare-fun res!1269233 () Bool)

(assert (=> b!3098299 (= res!1269233 (not (nullable!3198 (reg!9881 (regTwo!19616 r!17423)))))))

(assert (=> b!3098299 (=> (not res!1269233) (not e!1936456))))

(declare-fun b!3098300 () Bool)

(declare-fun res!1269230 () Bool)

(declare-fun e!1936455 () Bool)

(assert (=> b!3098300 (=> (not res!1269230) (not e!1936455))))

(assert (=> b!3098300 (= res!1269230 call!218213)))

(assert (=> b!3098300 (= e!1936452 e!1936455)))

(declare-fun bm!218207 () Bool)

(assert (=> bm!218207 (= call!218211 call!218212)))

(declare-fun b!3098301 () Bool)

(declare-fun e!1936453 () Bool)

(assert (=> b!3098301 (= e!1936453 e!1936458)))

(assert (=> b!3098301 (= c!517506 (is-Star!9552 (regTwo!19616 r!17423)))))

(declare-fun b!3098302 () Bool)

(assert (=> b!3098302 (= e!1936455 call!218211)))

(declare-fun b!3098303 () Bool)

(assert (=> b!3098303 (= e!1936458 e!1936452)))

(assert (=> b!3098303 (= c!517507 (is-Union!9552 (regTwo!19616 r!17423)))))

(declare-fun b!3098304 () Bool)

(assert (=> b!3098304 (= e!1936456 call!218212)))

(declare-fun bm!218208 () Bool)

(assert (=> bm!218208 (= call!218213 (validRegex!4285 (ite c!517507 (regOne!19617 (regTwo!19616 r!17423)) (regTwo!19616 (regTwo!19616 r!17423)))))))

(declare-fun d!860698 () Bool)

(declare-fun res!1269229 () Bool)

(assert (=> d!860698 (=> res!1269229 e!1936453)))

(assert (=> d!860698 (= res!1269229 (is-ElementMatch!9552 (regTwo!19616 r!17423)))))

(assert (=> d!860698 (= (validRegex!4285 (regTwo!19616 r!17423)) e!1936453)))

(assert (= (and d!860698 (not res!1269229)) b!3098301))

(assert (= (and b!3098301 c!517506) b!3098299))

(assert (= (and b!3098301 (not c!517506)) b!3098303))

(assert (= (and b!3098299 res!1269233) b!3098304))

(assert (= (and b!3098303 c!517507) b!3098300))

(assert (= (and b!3098303 (not c!517507)) b!3098297))

(assert (= (and b!3098300 res!1269230) b!3098302))

(assert (= (and b!3098297 (not res!1269231)) b!3098296))

(assert (= (and b!3098296 res!1269232) b!3098298))

(assert (= (or b!3098300 b!3098298) bm!218208))

(assert (= (or b!3098302 b!3098296) bm!218207))

(assert (= (or b!3098304 bm!218207) bm!218206))

(declare-fun m!3399681 () Bool)

(assert (=> bm!218206 m!3399681))

(declare-fun m!3399683 () Bool)

(assert (=> b!3098299 m!3399683))

(declare-fun m!3399685 () Bool)

(assert (=> bm!218208 m!3399685))

(assert (=> b!3097847 d!860698))

(declare-fun b!3098305 () Bool)

(declare-fun res!1269237 () Bool)

(declare-fun e!1936460 () Bool)

(assert (=> b!3098305 (=> res!1269237 e!1936460)))

(assert (=> b!3098305 (= res!1269237 (not (is-ElementMatch!9552 lt!1055126)))))

(declare-fun e!1936465 () Bool)

(assert (=> b!3098305 (= e!1936465 e!1936460)))

(declare-fun b!3098306 () Bool)

(declare-fun e!1936461 () Bool)

(assert (=> b!3098306 (= e!1936461 (not (= (head!6852 s!11993) (c!517396 lt!1055126))))))

(declare-fun bm!218209 () Bool)

(declare-fun call!218214 () Bool)

(assert (=> bm!218209 (= call!218214 (isEmpty!19639 s!11993))))

(declare-fun b!3098307 () Bool)

(declare-fun res!1269240 () Bool)

(assert (=> b!3098307 (=> res!1269240 e!1936461)))

(assert (=> b!3098307 (= res!1269240 (not (isEmpty!19639 (tail!5078 s!11993))))))

(declare-fun d!860700 () Bool)

(declare-fun e!1936459 () Bool)

(assert (=> d!860700 e!1936459))

(declare-fun c!517509 () Bool)

(assert (=> d!860700 (= c!517509 (is-EmptyExpr!9552 lt!1055126))))

(declare-fun lt!1055221 () Bool)

(declare-fun e!1936464 () Bool)

(assert (=> d!860700 (= lt!1055221 e!1936464)))

(declare-fun c!517510 () Bool)

(assert (=> d!860700 (= c!517510 (isEmpty!19639 s!11993))))

(assert (=> d!860700 (validRegex!4285 lt!1055126)))

(assert (=> d!860700 (= (matchR!4434 lt!1055126 s!11993) lt!1055221)))

(declare-fun b!3098308 () Bool)

(assert (=> b!3098308 (= e!1936464 (matchR!4434 (derivativeStep!2793 lt!1055126 (head!6852 s!11993)) (tail!5078 s!11993)))))

(declare-fun b!3098309 () Bool)

(declare-fun res!1269239 () Bool)

(declare-fun e!1936462 () Bool)

(assert (=> b!3098309 (=> (not res!1269239) (not e!1936462))))

(assert (=> b!3098309 (= res!1269239 (not call!218214))))

(declare-fun b!3098310 () Bool)

(assert (=> b!3098310 (= e!1936464 (nullable!3198 lt!1055126))))

(declare-fun b!3098311 () Bool)

(assert (=> b!3098311 (= e!1936459 e!1936465)))

(declare-fun c!517508 () Bool)

(assert (=> b!3098311 (= c!517508 (is-EmptyLang!9552 lt!1055126))))

(declare-fun b!3098312 () Bool)

(declare-fun e!1936463 () Bool)

(assert (=> b!3098312 (= e!1936460 e!1936463)))

(declare-fun res!1269241 () Bool)

(assert (=> b!3098312 (=> (not res!1269241) (not e!1936463))))

(assert (=> b!3098312 (= res!1269241 (not lt!1055221))))

(declare-fun b!3098313 () Bool)

(declare-fun res!1269236 () Bool)

(assert (=> b!3098313 (=> (not res!1269236) (not e!1936462))))

(assert (=> b!3098313 (= res!1269236 (isEmpty!19639 (tail!5078 s!11993)))))

(declare-fun b!3098314 () Bool)

(assert (=> b!3098314 (= e!1936462 (= (head!6852 s!11993) (c!517396 lt!1055126)))))

(declare-fun b!3098315 () Bool)

(assert (=> b!3098315 (= e!1936463 e!1936461)))

(declare-fun res!1269238 () Bool)

(assert (=> b!3098315 (=> res!1269238 e!1936461)))

(assert (=> b!3098315 (= res!1269238 call!218214)))

(declare-fun b!3098316 () Bool)

(declare-fun res!1269234 () Bool)

(assert (=> b!3098316 (=> res!1269234 e!1936460)))

(assert (=> b!3098316 (= res!1269234 e!1936462)))

(declare-fun res!1269235 () Bool)

(assert (=> b!3098316 (=> (not res!1269235) (not e!1936462))))

(assert (=> b!3098316 (= res!1269235 lt!1055221)))

(declare-fun b!3098317 () Bool)

(assert (=> b!3098317 (= e!1936465 (not lt!1055221))))

(declare-fun b!3098318 () Bool)

(assert (=> b!3098318 (= e!1936459 (= lt!1055221 call!218214))))

(assert (= (and d!860700 c!517510) b!3098310))

(assert (= (and d!860700 (not c!517510)) b!3098308))

(assert (= (and d!860700 c!517509) b!3098318))

(assert (= (and d!860700 (not c!517509)) b!3098311))

(assert (= (and b!3098311 c!517508) b!3098317))

(assert (= (and b!3098311 (not c!517508)) b!3098305))

(assert (= (and b!3098305 (not res!1269237)) b!3098316))

(assert (= (and b!3098316 res!1269235) b!3098309))

(assert (= (and b!3098309 res!1269239) b!3098313))

(assert (= (and b!3098313 res!1269236) b!3098314))

(assert (= (and b!3098316 (not res!1269234)) b!3098312))

(assert (= (and b!3098312 res!1269241) b!3098315))

(assert (= (and b!3098315 (not res!1269238)) b!3098307))

(assert (= (and b!3098307 (not res!1269240)) b!3098306))

(assert (= (or b!3098318 b!3098309 b!3098315) bm!218209))

(assert (=> b!3098306 m!3399559))

(assert (=> bm!218209 m!3399481))

(assert (=> b!3098307 m!3399561))

(assert (=> b!3098307 m!3399561))

(assert (=> b!3098307 m!3399563))

(assert (=> b!3098313 m!3399561))

(assert (=> b!3098313 m!3399561))

(assert (=> b!3098313 m!3399563))

(assert (=> b!3098308 m!3399559))

(assert (=> b!3098308 m!3399559))

(declare-fun m!3399687 () Bool)

(assert (=> b!3098308 m!3399687))

(assert (=> b!3098308 m!3399561))

(assert (=> b!3098308 m!3399687))

(assert (=> b!3098308 m!3399561))

(declare-fun m!3399689 () Bool)

(assert (=> b!3098308 m!3399689))

(assert (=> d!860700 m!3399481))

(assert (=> d!860700 m!3399671))

(assert (=> b!3098314 m!3399559))

(declare-fun m!3399691 () Bool)

(assert (=> b!3098310 m!3399691))

(assert (=> b!3097842 d!860700))

(declare-fun b!3098319 () Bool)

(declare-fun res!1269245 () Bool)

(declare-fun e!1936467 () Bool)

(assert (=> b!3098319 (=> res!1269245 e!1936467)))

(assert (=> b!3098319 (= res!1269245 (not (is-ElementMatch!9552 (regOne!19616 r!17423))))))

(declare-fun e!1936472 () Bool)

(assert (=> b!3098319 (= e!1936472 e!1936467)))

(declare-fun b!3098320 () Bool)

(declare-fun e!1936468 () Bool)

(assert (=> b!3098320 (= e!1936468 (not (= (head!6852 (_1!20239 lt!1055118)) (c!517396 (regOne!19616 r!17423)))))))

(declare-fun bm!218210 () Bool)

(declare-fun call!218215 () Bool)

(assert (=> bm!218210 (= call!218215 (isEmpty!19639 (_1!20239 lt!1055118)))))

(declare-fun b!3098321 () Bool)

(declare-fun res!1269248 () Bool)

(assert (=> b!3098321 (=> res!1269248 e!1936468)))

(assert (=> b!3098321 (= res!1269248 (not (isEmpty!19639 (tail!5078 (_1!20239 lt!1055118)))))))

(declare-fun d!860702 () Bool)

(declare-fun e!1936466 () Bool)

(assert (=> d!860702 e!1936466))

(declare-fun c!517512 () Bool)

(assert (=> d!860702 (= c!517512 (is-EmptyExpr!9552 (regOne!19616 r!17423)))))

(declare-fun lt!1055222 () Bool)

(declare-fun e!1936471 () Bool)

(assert (=> d!860702 (= lt!1055222 e!1936471)))

(declare-fun c!517513 () Bool)

(assert (=> d!860702 (= c!517513 (isEmpty!19639 (_1!20239 lt!1055118)))))

(assert (=> d!860702 (validRegex!4285 (regOne!19616 r!17423))))

(assert (=> d!860702 (= (matchR!4434 (regOne!19616 r!17423) (_1!20239 lt!1055118)) lt!1055222)))

(declare-fun b!3098322 () Bool)

(assert (=> b!3098322 (= e!1936471 (matchR!4434 (derivativeStep!2793 (regOne!19616 r!17423) (head!6852 (_1!20239 lt!1055118))) (tail!5078 (_1!20239 lt!1055118))))))

(declare-fun b!3098323 () Bool)

(declare-fun res!1269247 () Bool)

(declare-fun e!1936469 () Bool)

(assert (=> b!3098323 (=> (not res!1269247) (not e!1936469))))

(assert (=> b!3098323 (= res!1269247 (not call!218215))))

(declare-fun b!3098324 () Bool)

(assert (=> b!3098324 (= e!1936471 (nullable!3198 (regOne!19616 r!17423)))))

(declare-fun b!3098325 () Bool)

(assert (=> b!3098325 (= e!1936466 e!1936472)))

(declare-fun c!517511 () Bool)

(assert (=> b!3098325 (= c!517511 (is-EmptyLang!9552 (regOne!19616 r!17423)))))

(declare-fun b!3098326 () Bool)

(declare-fun e!1936470 () Bool)

(assert (=> b!3098326 (= e!1936467 e!1936470)))

(declare-fun res!1269249 () Bool)

(assert (=> b!3098326 (=> (not res!1269249) (not e!1936470))))

(assert (=> b!3098326 (= res!1269249 (not lt!1055222))))

(declare-fun b!3098327 () Bool)

(declare-fun res!1269244 () Bool)

(assert (=> b!3098327 (=> (not res!1269244) (not e!1936469))))

(assert (=> b!3098327 (= res!1269244 (isEmpty!19639 (tail!5078 (_1!20239 lt!1055118))))))

(declare-fun b!3098328 () Bool)

(assert (=> b!3098328 (= e!1936469 (= (head!6852 (_1!20239 lt!1055118)) (c!517396 (regOne!19616 r!17423))))))

(declare-fun b!3098329 () Bool)

(assert (=> b!3098329 (= e!1936470 e!1936468)))

(declare-fun res!1269246 () Bool)

(assert (=> b!3098329 (=> res!1269246 e!1936468)))

(assert (=> b!3098329 (= res!1269246 call!218215)))

(declare-fun b!3098330 () Bool)

(declare-fun res!1269242 () Bool)

(assert (=> b!3098330 (=> res!1269242 e!1936467)))

(assert (=> b!3098330 (= res!1269242 e!1936469)))

(declare-fun res!1269243 () Bool)

(assert (=> b!3098330 (=> (not res!1269243) (not e!1936469))))

(assert (=> b!3098330 (= res!1269243 lt!1055222)))

(declare-fun b!3098331 () Bool)

(assert (=> b!3098331 (= e!1936472 (not lt!1055222))))

(declare-fun b!3098332 () Bool)

(assert (=> b!3098332 (= e!1936466 (= lt!1055222 call!218215))))

(assert (= (and d!860702 c!517513) b!3098324))

(assert (= (and d!860702 (not c!517513)) b!3098322))

(assert (= (and d!860702 c!517512) b!3098332))

(assert (= (and d!860702 (not c!517512)) b!3098325))

(assert (= (and b!3098325 c!517511) b!3098331))

(assert (= (and b!3098325 (not c!517511)) b!3098319))

(assert (= (and b!3098319 (not res!1269245)) b!3098330))

(assert (= (and b!3098330 res!1269243) b!3098323))

(assert (= (and b!3098323 res!1269247) b!3098327))

(assert (= (and b!3098327 res!1269244) b!3098328))

(assert (= (and b!3098330 (not res!1269242)) b!3098326))

(assert (= (and b!3098326 res!1269249) b!3098329))

(assert (= (and b!3098329 (not res!1269246)) b!3098321))

(assert (= (and b!3098321 (not res!1269248)) b!3098320))

(assert (= (or b!3098332 b!3098323 b!3098329) bm!218210))

(declare-fun m!3399693 () Bool)

(assert (=> b!3098320 m!3399693))

(declare-fun m!3399695 () Bool)

(assert (=> bm!218210 m!3399695))

(declare-fun m!3399697 () Bool)

(assert (=> b!3098321 m!3399697))

(assert (=> b!3098321 m!3399697))

(declare-fun m!3399699 () Bool)

(assert (=> b!3098321 m!3399699))

(assert (=> b!3098327 m!3399697))

(assert (=> b!3098327 m!3399697))

(assert (=> b!3098327 m!3399699))

(assert (=> b!3098322 m!3399693))

(assert (=> b!3098322 m!3399693))

(declare-fun m!3399701 () Bool)

(assert (=> b!3098322 m!3399701))

(assert (=> b!3098322 m!3399697))

(assert (=> b!3098322 m!3399701))

(assert (=> b!3098322 m!3399697))

(declare-fun m!3399703 () Bool)

(assert (=> b!3098322 m!3399703))

(assert (=> d!860702 m!3399695))

(assert (=> d!860702 m!3399473))

(assert (=> b!3098328 m!3399693))

(assert (=> b!3098324 m!3399595))

(assert (=> b!3097853 d!860702))

(declare-fun b!3098333 () Bool)

(declare-fun res!1269253 () Bool)

(declare-fun e!1936474 () Bool)

(assert (=> b!3098333 (=> res!1269253 e!1936474)))

(assert (=> b!3098333 (= res!1269253 (not (is-ElementMatch!9552 lt!1055123)))))

(declare-fun e!1936479 () Bool)

(assert (=> b!3098333 (= e!1936479 e!1936474)))

(declare-fun b!3098334 () Bool)

(declare-fun e!1936475 () Bool)

(assert (=> b!3098334 (= e!1936475 (not (= (head!6852 (_1!20239 lt!1055118)) (c!517396 lt!1055123))))))

(declare-fun bm!218211 () Bool)

(declare-fun call!218216 () Bool)

(assert (=> bm!218211 (= call!218216 (isEmpty!19639 (_1!20239 lt!1055118)))))

(declare-fun b!3098335 () Bool)

(declare-fun res!1269256 () Bool)

(assert (=> b!3098335 (=> res!1269256 e!1936475)))

(assert (=> b!3098335 (= res!1269256 (not (isEmpty!19639 (tail!5078 (_1!20239 lt!1055118)))))))

(declare-fun d!860704 () Bool)

(declare-fun e!1936473 () Bool)

(assert (=> d!860704 e!1936473))

(declare-fun c!517515 () Bool)

(assert (=> d!860704 (= c!517515 (is-EmptyExpr!9552 lt!1055123))))

(declare-fun lt!1055223 () Bool)

(declare-fun e!1936478 () Bool)

(assert (=> d!860704 (= lt!1055223 e!1936478)))

(declare-fun c!517516 () Bool)

(assert (=> d!860704 (= c!517516 (isEmpty!19639 (_1!20239 lt!1055118)))))

(assert (=> d!860704 (validRegex!4285 lt!1055123)))

(assert (=> d!860704 (= (matchR!4434 lt!1055123 (_1!20239 lt!1055118)) lt!1055223)))

(declare-fun b!3098336 () Bool)

(assert (=> b!3098336 (= e!1936478 (matchR!4434 (derivativeStep!2793 lt!1055123 (head!6852 (_1!20239 lt!1055118))) (tail!5078 (_1!20239 lt!1055118))))))

(declare-fun b!3098337 () Bool)

(declare-fun res!1269255 () Bool)

(declare-fun e!1936476 () Bool)

(assert (=> b!3098337 (=> (not res!1269255) (not e!1936476))))

(assert (=> b!3098337 (= res!1269255 (not call!218216))))

(declare-fun b!3098338 () Bool)

(assert (=> b!3098338 (= e!1936478 (nullable!3198 lt!1055123))))

(declare-fun b!3098339 () Bool)

(assert (=> b!3098339 (= e!1936473 e!1936479)))

(declare-fun c!517514 () Bool)

(assert (=> b!3098339 (= c!517514 (is-EmptyLang!9552 lt!1055123))))

(declare-fun b!3098340 () Bool)

(declare-fun e!1936477 () Bool)

(assert (=> b!3098340 (= e!1936474 e!1936477)))

(declare-fun res!1269257 () Bool)

(assert (=> b!3098340 (=> (not res!1269257) (not e!1936477))))

(assert (=> b!3098340 (= res!1269257 (not lt!1055223))))

(declare-fun b!3098341 () Bool)

(declare-fun res!1269252 () Bool)

(assert (=> b!3098341 (=> (not res!1269252) (not e!1936476))))

(assert (=> b!3098341 (= res!1269252 (isEmpty!19639 (tail!5078 (_1!20239 lt!1055118))))))

(declare-fun b!3098342 () Bool)

(assert (=> b!3098342 (= e!1936476 (= (head!6852 (_1!20239 lt!1055118)) (c!517396 lt!1055123)))))

(declare-fun b!3098343 () Bool)

(assert (=> b!3098343 (= e!1936477 e!1936475)))

(declare-fun res!1269254 () Bool)

(assert (=> b!3098343 (=> res!1269254 e!1936475)))

(assert (=> b!3098343 (= res!1269254 call!218216)))

(declare-fun b!3098344 () Bool)

(declare-fun res!1269250 () Bool)

(assert (=> b!3098344 (=> res!1269250 e!1936474)))

(assert (=> b!3098344 (= res!1269250 e!1936476)))

(declare-fun res!1269251 () Bool)

(assert (=> b!3098344 (=> (not res!1269251) (not e!1936476))))

(assert (=> b!3098344 (= res!1269251 lt!1055223)))

(declare-fun b!3098345 () Bool)

(assert (=> b!3098345 (= e!1936479 (not lt!1055223))))

(declare-fun b!3098346 () Bool)

(assert (=> b!3098346 (= e!1936473 (= lt!1055223 call!218216))))

(assert (= (and d!860704 c!517516) b!3098338))

(assert (= (and d!860704 (not c!517516)) b!3098336))

(assert (= (and d!860704 c!517515) b!3098346))

(assert (= (and d!860704 (not c!517515)) b!3098339))

(assert (= (and b!3098339 c!517514) b!3098345))

(assert (= (and b!3098339 (not c!517514)) b!3098333))

(assert (= (and b!3098333 (not res!1269253)) b!3098344))

(assert (= (and b!3098344 res!1269251) b!3098337))

(assert (= (and b!3098337 res!1269255) b!3098341))

(assert (= (and b!3098341 res!1269252) b!3098342))

(assert (= (and b!3098344 (not res!1269250)) b!3098340))

(assert (= (and b!3098340 res!1269257) b!3098343))

(assert (= (and b!3098343 (not res!1269254)) b!3098335))

(assert (= (and b!3098335 (not res!1269256)) b!3098334))

(assert (= (or b!3098346 b!3098337 b!3098343) bm!218211))

(assert (=> b!3098334 m!3399693))

(assert (=> bm!218211 m!3399695))

(assert (=> b!3098335 m!3399697))

(assert (=> b!3098335 m!3399697))

(assert (=> b!3098335 m!3399699))

(assert (=> b!3098341 m!3399697))

(assert (=> b!3098341 m!3399697))

(assert (=> b!3098341 m!3399699))

(assert (=> b!3098336 m!3399693))

(assert (=> b!3098336 m!3399693))

(declare-fun m!3399705 () Bool)

(assert (=> b!3098336 m!3399705))

(assert (=> b!3098336 m!3399697))

(assert (=> b!3098336 m!3399705))

(assert (=> b!3098336 m!3399697))

(declare-fun m!3399707 () Bool)

(assert (=> b!3098336 m!3399707))

(assert (=> d!860704 m!3399695))

(assert (=> d!860704 m!3399621))

(assert (=> b!3098342 m!3399693))

(declare-fun m!3399709 () Bool)

(assert (=> b!3098338 m!3399709))

(assert (=> b!3097853 d!860704))

(declare-fun c!517517 () Bool)

(declare-fun c!517518 () Bool)

(declare-fun call!218218 () Bool)

(declare-fun bm!218212 () Bool)

(assert (=> bm!218212 (= call!218218 (validRegex!4285 (ite c!517517 (reg!9881 (regOne!19616 r!17423)) (ite c!517518 (regTwo!19617 (regOne!19616 r!17423)) (regOne!19616 (regOne!19616 r!17423))))))))

(declare-fun b!3098347 () Bool)

(declare-fun e!1936485 () Bool)

(declare-fun e!1936482 () Bool)

(assert (=> b!3098347 (= e!1936485 e!1936482)))

(declare-fun res!1269261 () Bool)

(assert (=> b!3098347 (=> (not res!1269261) (not e!1936482))))

(declare-fun call!218217 () Bool)

(assert (=> b!3098347 (= res!1269261 call!218217)))

(declare-fun b!3098348 () Bool)

(declare-fun res!1269260 () Bool)

(assert (=> b!3098348 (=> res!1269260 e!1936485)))

(assert (=> b!3098348 (= res!1269260 (not (is-Concat!14873 (regOne!19616 r!17423))))))

(declare-fun e!1936480 () Bool)

(assert (=> b!3098348 (= e!1936480 e!1936485)))

(declare-fun b!3098349 () Bool)

(declare-fun call!218219 () Bool)

(assert (=> b!3098349 (= e!1936482 call!218219)))

(declare-fun b!3098350 () Bool)

(declare-fun e!1936486 () Bool)

(declare-fun e!1936484 () Bool)

(assert (=> b!3098350 (= e!1936486 e!1936484)))

(declare-fun res!1269262 () Bool)

(assert (=> b!3098350 (= res!1269262 (not (nullable!3198 (reg!9881 (regOne!19616 r!17423)))))))

(assert (=> b!3098350 (=> (not res!1269262) (not e!1936484))))

(declare-fun b!3098351 () Bool)

(declare-fun res!1269259 () Bool)

(declare-fun e!1936483 () Bool)

(assert (=> b!3098351 (=> (not res!1269259) (not e!1936483))))

(assert (=> b!3098351 (= res!1269259 call!218219)))

(assert (=> b!3098351 (= e!1936480 e!1936483)))

(declare-fun bm!218213 () Bool)

(assert (=> bm!218213 (= call!218217 call!218218)))

(declare-fun b!3098352 () Bool)

(declare-fun e!1936481 () Bool)

(assert (=> b!3098352 (= e!1936481 e!1936486)))

(assert (=> b!3098352 (= c!517517 (is-Star!9552 (regOne!19616 r!17423)))))

(declare-fun b!3098353 () Bool)

(assert (=> b!3098353 (= e!1936483 call!218217)))

(declare-fun b!3098354 () Bool)

(assert (=> b!3098354 (= e!1936486 e!1936480)))

(assert (=> b!3098354 (= c!517518 (is-Union!9552 (regOne!19616 r!17423)))))

(declare-fun b!3098355 () Bool)

(assert (=> b!3098355 (= e!1936484 call!218218)))

(declare-fun bm!218214 () Bool)

(assert (=> bm!218214 (= call!218219 (validRegex!4285 (ite c!517518 (regOne!19617 (regOne!19616 r!17423)) (regTwo!19616 (regOne!19616 r!17423)))))))

(declare-fun d!860706 () Bool)

(declare-fun res!1269258 () Bool)

(assert (=> d!860706 (=> res!1269258 e!1936481)))

(assert (=> d!860706 (= res!1269258 (is-ElementMatch!9552 (regOne!19616 r!17423)))))

(assert (=> d!860706 (= (validRegex!4285 (regOne!19616 r!17423)) e!1936481)))

(assert (= (and d!860706 (not res!1269258)) b!3098352))

(assert (= (and b!3098352 c!517517) b!3098350))

(assert (= (and b!3098352 (not c!517517)) b!3098354))

(assert (= (and b!3098350 res!1269262) b!3098355))

(assert (= (and b!3098354 c!517518) b!3098351))

(assert (= (and b!3098354 (not c!517518)) b!3098348))

(assert (= (and b!3098351 res!1269259) b!3098353))

(assert (= (and b!3098348 (not res!1269260)) b!3098347))

(assert (= (and b!3098347 res!1269261) b!3098349))

(assert (= (or b!3098351 b!3098349) bm!218214))

(assert (= (or b!3098353 b!3098347) bm!218213))

(assert (= (or b!3098355 bm!218213) bm!218212))

(declare-fun m!3399711 () Bool)

(assert (=> bm!218212 m!3399711))

(declare-fun m!3399713 () Bool)

(assert (=> b!3098350 m!3399713))

(declare-fun m!3399715 () Bool)

(assert (=> bm!218214 m!3399715))

(assert (=> b!3097853 d!860706))

(declare-fun d!860708 () Bool)

(assert (=> d!860708 (= (matchR!4434 (regOne!19616 r!17423) (_1!20239 lt!1055118)) (matchR!4434 (simplify!507 (regOne!19616 r!17423)) (_1!20239 lt!1055118)))))

(declare-fun lt!1055226 () Unit!49543)

(declare-fun choose!18322 (Regex!9552 List!35417) Unit!49543)

(assert (=> d!860708 (= lt!1055226 (choose!18322 (regOne!19616 r!17423) (_1!20239 lt!1055118)))))

(assert (=> d!860708 (validRegex!4285 (regOne!19616 r!17423))))

(assert (=> d!860708 (= (lemmaSimplifySound!321 (regOne!19616 r!17423) (_1!20239 lt!1055118)) lt!1055226)))

(declare-fun bs!535530 () Bool)

(assert (= bs!535530 d!860708))

(assert (=> bs!535530 m!3399473))

(assert (=> bs!535530 m!3399449))

(declare-fun m!3399717 () Bool)

(assert (=> bs!535530 m!3399717))

(assert (=> bs!535530 m!3399471))

(assert (=> bs!535530 m!3399449))

(declare-fun m!3399719 () Bool)

(assert (=> bs!535530 m!3399719))

(assert (=> b!3097853 d!860708))

(declare-fun b!3098356 () Bool)

(declare-fun res!1269266 () Bool)

(declare-fun e!1936488 () Bool)

(assert (=> b!3098356 (=> res!1269266 e!1936488)))

(assert (=> b!3098356 (= res!1269266 (not (is-ElementMatch!9552 (regTwo!19616 r!17423))))))

(declare-fun e!1936493 () Bool)

(assert (=> b!3098356 (= e!1936493 e!1936488)))

(declare-fun b!3098357 () Bool)

(declare-fun e!1936489 () Bool)

(assert (=> b!3098357 (= e!1936489 (not (= (head!6852 (_2!20239 lt!1055118)) (c!517396 (regTwo!19616 r!17423)))))))

(declare-fun bm!218215 () Bool)

(declare-fun call!218220 () Bool)

(assert (=> bm!218215 (= call!218220 (isEmpty!19639 (_2!20239 lt!1055118)))))

(declare-fun b!3098358 () Bool)

(declare-fun res!1269269 () Bool)

(assert (=> b!3098358 (=> res!1269269 e!1936489)))

(assert (=> b!3098358 (= res!1269269 (not (isEmpty!19639 (tail!5078 (_2!20239 lt!1055118)))))))

(declare-fun d!860710 () Bool)

(declare-fun e!1936487 () Bool)

(assert (=> d!860710 e!1936487))

(declare-fun c!517520 () Bool)

(assert (=> d!860710 (= c!517520 (is-EmptyExpr!9552 (regTwo!19616 r!17423)))))

(declare-fun lt!1055227 () Bool)

(declare-fun e!1936492 () Bool)

(assert (=> d!860710 (= lt!1055227 e!1936492)))

(declare-fun c!517521 () Bool)

(assert (=> d!860710 (= c!517521 (isEmpty!19639 (_2!20239 lt!1055118)))))

(assert (=> d!860710 (validRegex!4285 (regTwo!19616 r!17423))))

(assert (=> d!860710 (= (matchR!4434 (regTwo!19616 r!17423) (_2!20239 lt!1055118)) lt!1055227)))

(declare-fun b!3098359 () Bool)

(assert (=> b!3098359 (= e!1936492 (matchR!4434 (derivativeStep!2793 (regTwo!19616 r!17423) (head!6852 (_2!20239 lt!1055118))) (tail!5078 (_2!20239 lt!1055118))))))

(declare-fun b!3098360 () Bool)

(declare-fun res!1269268 () Bool)

(declare-fun e!1936490 () Bool)

(assert (=> b!3098360 (=> (not res!1269268) (not e!1936490))))

(assert (=> b!3098360 (= res!1269268 (not call!218220))))

(declare-fun b!3098361 () Bool)

(assert (=> b!3098361 (= e!1936492 (nullable!3198 (regTwo!19616 r!17423)))))

(declare-fun b!3098362 () Bool)

(assert (=> b!3098362 (= e!1936487 e!1936493)))

(declare-fun c!517519 () Bool)

(assert (=> b!3098362 (= c!517519 (is-EmptyLang!9552 (regTwo!19616 r!17423)))))

(declare-fun b!3098363 () Bool)

(declare-fun e!1936491 () Bool)

(assert (=> b!3098363 (= e!1936488 e!1936491)))

(declare-fun res!1269270 () Bool)

(assert (=> b!3098363 (=> (not res!1269270) (not e!1936491))))

(assert (=> b!3098363 (= res!1269270 (not lt!1055227))))

(declare-fun b!3098364 () Bool)

(declare-fun res!1269265 () Bool)

(assert (=> b!3098364 (=> (not res!1269265) (not e!1936490))))

(assert (=> b!3098364 (= res!1269265 (isEmpty!19639 (tail!5078 (_2!20239 lt!1055118))))))

(declare-fun b!3098365 () Bool)

(assert (=> b!3098365 (= e!1936490 (= (head!6852 (_2!20239 lt!1055118)) (c!517396 (regTwo!19616 r!17423))))))

(declare-fun b!3098366 () Bool)

(assert (=> b!3098366 (= e!1936491 e!1936489)))

(declare-fun res!1269267 () Bool)

(assert (=> b!3098366 (=> res!1269267 e!1936489)))

(assert (=> b!3098366 (= res!1269267 call!218220)))

(declare-fun b!3098367 () Bool)

(declare-fun res!1269263 () Bool)

(assert (=> b!3098367 (=> res!1269263 e!1936488)))

(assert (=> b!3098367 (= res!1269263 e!1936490)))

(declare-fun res!1269264 () Bool)

(assert (=> b!3098367 (=> (not res!1269264) (not e!1936490))))

(assert (=> b!3098367 (= res!1269264 lt!1055227)))

(declare-fun b!3098368 () Bool)

(assert (=> b!3098368 (= e!1936493 (not lt!1055227))))

(declare-fun b!3098369 () Bool)

(assert (=> b!3098369 (= e!1936487 (= lt!1055227 call!218220))))

(assert (= (and d!860710 c!517521) b!3098361))

(assert (= (and d!860710 (not c!517521)) b!3098359))

(assert (= (and d!860710 c!517520) b!3098369))

(assert (= (and d!860710 (not c!517520)) b!3098362))

(assert (= (and b!3098362 c!517519) b!3098368))

(assert (= (and b!3098362 (not c!517519)) b!3098356))

(assert (= (and b!3098356 (not res!1269266)) b!3098367))

(assert (= (and b!3098367 res!1269264) b!3098360))

(assert (= (and b!3098360 res!1269268) b!3098364))

(assert (= (and b!3098364 res!1269265) b!3098365))

(assert (= (and b!3098367 (not res!1269263)) b!3098363))

(assert (= (and b!3098363 res!1269270) b!3098366))

(assert (= (and b!3098366 (not res!1269267)) b!3098358))

(assert (= (and b!3098358 (not res!1269269)) b!3098357))

(assert (= (or b!3098369 b!3098360 b!3098366) bm!218215))

(declare-fun m!3399721 () Bool)

(assert (=> b!3098357 m!3399721))

(declare-fun m!3399723 () Bool)

(assert (=> bm!218215 m!3399723))

(declare-fun m!3399725 () Bool)

(assert (=> b!3098358 m!3399725))

(assert (=> b!3098358 m!3399725))

(declare-fun m!3399727 () Bool)

(assert (=> b!3098358 m!3399727))

(assert (=> b!3098364 m!3399725))

(assert (=> b!3098364 m!3399725))

(assert (=> b!3098364 m!3399727))

(assert (=> b!3098359 m!3399721))

(assert (=> b!3098359 m!3399721))

(declare-fun m!3399729 () Bool)

(assert (=> b!3098359 m!3399729))

(assert (=> b!3098359 m!3399725))

(assert (=> b!3098359 m!3399729))

(assert (=> b!3098359 m!3399725))

(declare-fun m!3399731 () Bool)

(assert (=> b!3098359 m!3399731))

(assert (=> d!860710 m!3399723))

(assert (=> d!860710 m!3399451))

(assert (=> b!3098365 m!3399721))

(assert (=> b!3098361 m!3399577))

(assert (=> b!3097853 d!860710))

(declare-fun d!860712 () Bool)

(assert (=> d!860712 (= (get!11081 lt!1055113) (v!34972 lt!1055113))))

(assert (=> b!3097853 d!860712))

(declare-fun b!3098370 () Bool)

(declare-fun res!1269274 () Bool)

(declare-fun e!1936495 () Bool)

(assert (=> b!3098370 (=> res!1269274 e!1936495)))

(assert (=> b!3098370 (= res!1269274 (not (is-ElementMatch!9552 lt!1055115)))))

(declare-fun e!1936500 () Bool)

(assert (=> b!3098370 (= e!1936500 e!1936495)))

(declare-fun b!3098371 () Bool)

(declare-fun e!1936496 () Bool)

(assert (=> b!3098371 (= e!1936496 (not (= (head!6852 (_2!20239 lt!1055118)) (c!517396 lt!1055115))))))

(declare-fun bm!218216 () Bool)

(declare-fun call!218221 () Bool)

(assert (=> bm!218216 (= call!218221 (isEmpty!19639 (_2!20239 lt!1055118)))))

(declare-fun b!3098372 () Bool)

(declare-fun res!1269277 () Bool)

(assert (=> b!3098372 (=> res!1269277 e!1936496)))

(assert (=> b!3098372 (= res!1269277 (not (isEmpty!19639 (tail!5078 (_2!20239 lt!1055118)))))))

(declare-fun d!860714 () Bool)

(declare-fun e!1936494 () Bool)

(assert (=> d!860714 e!1936494))

(declare-fun c!517523 () Bool)

(assert (=> d!860714 (= c!517523 (is-EmptyExpr!9552 lt!1055115))))

(declare-fun lt!1055228 () Bool)

(declare-fun e!1936499 () Bool)

(assert (=> d!860714 (= lt!1055228 e!1936499)))

(declare-fun c!517524 () Bool)

(assert (=> d!860714 (= c!517524 (isEmpty!19639 (_2!20239 lt!1055118)))))

(assert (=> d!860714 (validRegex!4285 lt!1055115)))

(assert (=> d!860714 (= (matchR!4434 lt!1055115 (_2!20239 lt!1055118)) lt!1055228)))

(declare-fun b!3098373 () Bool)

(assert (=> b!3098373 (= e!1936499 (matchR!4434 (derivativeStep!2793 lt!1055115 (head!6852 (_2!20239 lt!1055118))) (tail!5078 (_2!20239 lt!1055118))))))

(declare-fun b!3098374 () Bool)

(declare-fun res!1269276 () Bool)

(declare-fun e!1936497 () Bool)

(assert (=> b!3098374 (=> (not res!1269276) (not e!1936497))))

(assert (=> b!3098374 (= res!1269276 (not call!218221))))

(declare-fun b!3098375 () Bool)

(assert (=> b!3098375 (= e!1936499 (nullable!3198 lt!1055115))))

(declare-fun b!3098376 () Bool)

(assert (=> b!3098376 (= e!1936494 e!1936500)))

(declare-fun c!517522 () Bool)

(assert (=> b!3098376 (= c!517522 (is-EmptyLang!9552 lt!1055115))))

(declare-fun b!3098377 () Bool)

(declare-fun e!1936498 () Bool)

(assert (=> b!3098377 (= e!1936495 e!1936498)))

(declare-fun res!1269278 () Bool)

(assert (=> b!3098377 (=> (not res!1269278) (not e!1936498))))

(assert (=> b!3098377 (= res!1269278 (not lt!1055228))))

(declare-fun b!3098378 () Bool)

(declare-fun res!1269273 () Bool)

(assert (=> b!3098378 (=> (not res!1269273) (not e!1936497))))

(assert (=> b!3098378 (= res!1269273 (isEmpty!19639 (tail!5078 (_2!20239 lt!1055118))))))

(declare-fun b!3098379 () Bool)

(assert (=> b!3098379 (= e!1936497 (= (head!6852 (_2!20239 lt!1055118)) (c!517396 lt!1055115)))))

(declare-fun b!3098380 () Bool)

(assert (=> b!3098380 (= e!1936498 e!1936496)))

(declare-fun res!1269275 () Bool)

(assert (=> b!3098380 (=> res!1269275 e!1936496)))

(assert (=> b!3098380 (= res!1269275 call!218221)))

(declare-fun b!3098381 () Bool)

(declare-fun res!1269271 () Bool)

(assert (=> b!3098381 (=> res!1269271 e!1936495)))

(assert (=> b!3098381 (= res!1269271 e!1936497)))

(declare-fun res!1269272 () Bool)

(assert (=> b!3098381 (=> (not res!1269272) (not e!1936497))))

(assert (=> b!3098381 (= res!1269272 lt!1055228)))

(declare-fun b!3098382 () Bool)

(assert (=> b!3098382 (= e!1936500 (not lt!1055228))))

(declare-fun b!3098383 () Bool)

(assert (=> b!3098383 (= e!1936494 (= lt!1055228 call!218221))))

(assert (= (and d!860714 c!517524) b!3098375))

(assert (= (and d!860714 (not c!517524)) b!3098373))

(assert (= (and d!860714 c!517523) b!3098383))

(assert (= (and d!860714 (not c!517523)) b!3098376))

(assert (= (and b!3098376 c!517522) b!3098382))

(assert (= (and b!3098376 (not c!517522)) b!3098370))

(assert (= (and b!3098370 (not res!1269274)) b!3098381))

(assert (= (and b!3098381 res!1269272) b!3098374))

(assert (= (and b!3098374 res!1269276) b!3098378))

(assert (= (and b!3098378 res!1269273) b!3098379))

(assert (= (and b!3098381 (not res!1269271)) b!3098377))

(assert (= (and b!3098377 res!1269278) b!3098380))

(assert (= (and b!3098380 (not res!1269275)) b!3098372))

(assert (= (and b!3098372 (not res!1269277)) b!3098371))

(assert (= (or b!3098383 b!3098374 b!3098380) bm!218216))

(assert (=> b!3098371 m!3399721))

(assert (=> bm!218216 m!3399723))

(assert (=> b!3098372 m!3399725))

(assert (=> b!3098372 m!3399725))

(assert (=> b!3098372 m!3399727))

(assert (=> b!3098378 m!3399725))

(assert (=> b!3098378 m!3399725))

(assert (=> b!3098378 m!3399727))

(assert (=> b!3098373 m!3399721))

(assert (=> b!3098373 m!3399721))

(declare-fun m!3399733 () Bool)

(assert (=> b!3098373 m!3399733))

(assert (=> b!3098373 m!3399725))

(assert (=> b!3098373 m!3399733))

(assert (=> b!3098373 m!3399725))

(declare-fun m!3399735 () Bool)

(assert (=> b!3098373 m!3399735))

(assert (=> d!860714 m!3399723))

(declare-fun m!3399737 () Bool)

(assert (=> d!860714 m!3399737))

(assert (=> b!3098379 m!3399721))

(declare-fun m!3399739 () Bool)

(assert (=> b!3098375 m!3399739))

(assert (=> b!3097853 d!860714))

(declare-fun d!860716 () Bool)

(assert (=> d!860716 (= (matchR!4434 (regTwo!19616 r!17423) (_2!20239 lt!1055118)) (matchR!4434 (simplify!507 (regTwo!19616 r!17423)) (_2!20239 lt!1055118)))))

(declare-fun lt!1055229 () Unit!49543)

(assert (=> d!860716 (= lt!1055229 (choose!18322 (regTwo!19616 r!17423) (_2!20239 lt!1055118)))))

(assert (=> d!860716 (validRegex!4285 (regTwo!19616 r!17423))))

(assert (=> d!860716 (= (lemmaSimplifySound!321 (regTwo!19616 r!17423) (_2!20239 lt!1055118)) lt!1055229)))

(declare-fun bs!535531 () Bool)

(assert (= bs!535531 d!860716))

(assert (=> bs!535531 m!3399451))

(assert (=> bs!535531 m!3399447))

(declare-fun m!3399741 () Bool)

(assert (=> bs!535531 m!3399741))

(assert (=> bs!535531 m!3399475))

(assert (=> bs!535531 m!3399447))

(declare-fun m!3399743 () Bool)

(assert (=> bs!535531 m!3399743))

(assert (=> b!3097853 d!860716))

(declare-fun b!3098390 () Bool)

(declare-fun e!1936503 () Bool)

(declare-fun tp!974288 () Bool)

(assert (=> b!3098390 (= e!1936503 (and tp_is_empty!16667 tp!974288))))

(assert (=> b!3097850 (= tp!974267 e!1936503)))

(assert (= (and b!3097850 (is-Cons!35293 (t!234482 s!11993))) b!3098390))

(declare-fun b!3098419 () Bool)

(declare-fun e!1936514 () Bool)

(declare-fun tp!974301 () Bool)

(assert (=> b!3098419 (= e!1936514 tp!974301)))

(declare-fun b!3098420 () Bool)

(declare-fun tp!974299 () Bool)

(declare-fun tp!974302 () Bool)

(assert (=> b!3098420 (= e!1936514 (and tp!974299 tp!974302))))

(declare-fun b!3098418 () Bool)

(declare-fun tp!974303 () Bool)

(declare-fun tp!974300 () Bool)

(assert (=> b!3098418 (= e!1936514 (and tp!974303 tp!974300))))

(declare-fun b!3098417 () Bool)

(assert (=> b!3098417 (= e!1936514 tp_is_empty!16667)))

(assert (=> b!3097845 (= tp!974263 e!1936514)))

(assert (= (and b!3097845 (is-ElementMatch!9552 (regOne!19617 r!17423))) b!3098417))

(assert (= (and b!3097845 (is-Concat!14873 (regOne!19617 r!17423))) b!3098418))

(assert (= (and b!3097845 (is-Star!9552 (regOne!19617 r!17423))) b!3098419))

(assert (= (and b!3097845 (is-Union!9552 (regOne!19617 r!17423))) b!3098420))

(declare-fun b!3098427 () Bool)

(declare-fun e!1936519 () Bool)

(declare-fun tp!974306 () Bool)

(assert (=> b!3098427 (= e!1936519 tp!974306)))

(declare-fun b!3098428 () Bool)

(declare-fun tp!974304 () Bool)

(declare-fun tp!974307 () Bool)

(assert (=> b!3098428 (= e!1936519 (and tp!974304 tp!974307))))

(declare-fun b!3098426 () Bool)

(declare-fun tp!974308 () Bool)

(declare-fun tp!974305 () Bool)

(assert (=> b!3098426 (= e!1936519 (and tp!974308 tp!974305))))

(declare-fun b!3098425 () Bool)

(assert (=> b!3098425 (= e!1936519 tp_is_empty!16667)))

(assert (=> b!3097845 (= tp!974266 e!1936519)))

(assert (= (and b!3097845 (is-ElementMatch!9552 (regTwo!19617 r!17423))) b!3098425))

(assert (= (and b!3097845 (is-Concat!14873 (regTwo!19617 r!17423))) b!3098426))

(assert (= (and b!3097845 (is-Star!9552 (regTwo!19617 r!17423))) b!3098427))

(assert (= (and b!3097845 (is-Union!9552 (regTwo!19617 r!17423))) b!3098428))

(declare-fun b!3098431 () Bool)

(declare-fun e!1936520 () Bool)

(declare-fun tp!974311 () Bool)

(assert (=> b!3098431 (= e!1936520 tp!974311)))

(declare-fun b!3098432 () Bool)

(declare-fun tp!974309 () Bool)

(declare-fun tp!974312 () Bool)

(assert (=> b!3098432 (= e!1936520 (and tp!974309 tp!974312))))

(declare-fun b!3098430 () Bool)

(declare-fun tp!974313 () Bool)

(declare-fun tp!974310 () Bool)

(assert (=> b!3098430 (= e!1936520 (and tp!974313 tp!974310))))

(declare-fun b!3098429 () Bool)

(assert (=> b!3098429 (= e!1936520 tp_is_empty!16667)))

(assert (=> b!3097851 (= tp!974262 e!1936520)))

(assert (= (and b!3097851 (is-ElementMatch!9552 (reg!9881 r!17423))) b!3098429))

(assert (= (and b!3097851 (is-Concat!14873 (reg!9881 r!17423))) b!3098430))

(assert (= (and b!3097851 (is-Star!9552 (reg!9881 r!17423))) b!3098431))

(assert (= (and b!3097851 (is-Union!9552 (reg!9881 r!17423))) b!3098432))

(declare-fun b!3098435 () Bool)

(declare-fun e!1936521 () Bool)

(declare-fun tp!974316 () Bool)

(assert (=> b!3098435 (= e!1936521 tp!974316)))

(declare-fun b!3098436 () Bool)

(declare-fun tp!974314 () Bool)

(declare-fun tp!974317 () Bool)

(assert (=> b!3098436 (= e!1936521 (and tp!974314 tp!974317))))

(declare-fun b!3098434 () Bool)

(declare-fun tp!974318 () Bool)

(declare-fun tp!974315 () Bool)

(assert (=> b!3098434 (= e!1936521 (and tp!974318 tp!974315))))

(declare-fun b!3098433 () Bool)

(assert (=> b!3098433 (= e!1936521 tp_is_empty!16667)))

(assert (=> b!3097841 (= tp!974265 e!1936521)))

(assert (= (and b!3097841 (is-ElementMatch!9552 (regOne!19616 r!17423))) b!3098433))

(assert (= (and b!3097841 (is-Concat!14873 (regOne!19616 r!17423))) b!3098434))

(assert (= (and b!3097841 (is-Star!9552 (regOne!19616 r!17423))) b!3098435))

(assert (= (and b!3097841 (is-Union!9552 (regOne!19616 r!17423))) b!3098436))

(declare-fun b!3098443 () Bool)

(declare-fun e!1936524 () Bool)

(declare-fun tp!974321 () Bool)

(assert (=> b!3098443 (= e!1936524 tp!974321)))

(declare-fun b!3098444 () Bool)

(declare-fun tp!974319 () Bool)

(declare-fun tp!974322 () Bool)

(assert (=> b!3098444 (= e!1936524 (and tp!974319 tp!974322))))

(declare-fun b!3098442 () Bool)

(declare-fun tp!974323 () Bool)

(declare-fun tp!974320 () Bool)

(assert (=> b!3098442 (= e!1936524 (and tp!974323 tp!974320))))

(declare-fun b!3098441 () Bool)

(assert (=> b!3098441 (= e!1936524 tp_is_empty!16667)))

(assert (=> b!3097841 (= tp!974264 e!1936524)))

(assert (= (and b!3097841 (is-ElementMatch!9552 (regTwo!19616 r!17423))) b!3098441))

(assert (= (and b!3097841 (is-Concat!14873 (regTwo!19616 r!17423))) b!3098442))

(assert (= (and b!3097841 (is-Star!9552 (regTwo!19616 r!17423))) b!3098443))

(assert (= (and b!3097841 (is-Union!9552 (regTwo!19616 r!17423))) b!3098444))

(push 1)

(assert (not bm!218166))

(assert (not d!860676))

(assert (not b!3098338))

(assert (not b!3098350))

(assert (not d!860710))

(assert (not b!3098341))

(assert (not b!3098278))

(assert (not b!3098390))

(assert (not b!3098418))

(assert (not b!3098299))

(assert (not b!3098361))

(assert (not bm!218192))

(assert (not d!860662))

(assert (not d!860672))

(assert (not bm!218190))

(assert (not bm!218205))

(assert (not d!860690))

(assert (not b!3098379))

(assert (not b!3098320))

(assert (not d!860700))

(assert (not b!3098431))

(assert (not b!3098062))

(assert (not b!3098359))

(assert (not b!3098058))

(assert (not bm!218195))

(assert (not d!860682))

(assert (not b!3098307))

(assert (not b!3098436))

(assert (not b!3098290))

(assert (not d!860716))

(assert (not bm!218146))

(assert (not bm!218206))

(assert (not b!3098365))

(assert (not b!3098378))

(assert (not d!860678))

(assert (not bm!218194))

(assert (not b!3098314))

(assert (not b!3098420))

(assert (not d!860668))

(assert (not b!3098016))

(assert (not b!3098276))

(assert (not b!3098169))

(assert (not b!3098322))

(assert (not b!3098428))

(assert (not b!3098313))

(assert (not bm!218198))

(assert (not d!860692))

(assert (not bm!218211))

(assert (not b!3098375))

(assert (not b!3098336))

(assert (not b!3098203))

(assert (not b!3098430))

(assert (not bm!218191))

(assert (not b!3098293))

(assert (not bm!218214))

(assert (not b!3098358))

(assert (not bm!218208))

(assert (not b!3098178))

(assert (not b!3098324))

(assert (not b!3098364))

(assert (not d!860714))

(assert (not b!3098432))

(assert (not b!3097943))

(assert (not b!3098327))

(assert (not b!3098306))

(assert (not b!3098444))

(assert (not bm!218163))

(assert (not bm!218162))

(assert (not b!3098059))

(assert (not b!3098308))

(assert (not b!3098442))

(assert (not bm!218204))

(assert (not bm!218209))

(assert (not b!3098066))

(assert (not bm!218187))

(assert (not b!3098443))

(assert (not b!3098194))

(assert (not d!860704))

(assert (not b!3098426))

(assert (not bm!218212))

(assert (not d!860702))

(assert (not b!3098434))

(assert (not b!3098335))

(assert (not d!860670))

(assert (not b!3098321))

(assert (not bm!218197))

(assert (not bm!218215))

(assert (not bm!218199))

(assert tp_is_empty!16667)

(assert (not b!3098373))

(assert (not b!3098357))

(assert (not bm!218216))

(assert (not b!3098372))

(assert (not b!3098371))

(assert (not d!860664))

(assert (not b!3098277))

(assert (not d!860688))

(assert (not d!860708))

(assert (not b!3098435))

(assert (not b!3098419))

(assert (not b!3098013))

(assert (not b!3098310))

(assert (not b!3098334))

(assert (not b!3098280))

(assert (not b!3098065))

(assert (not b!3098283))

(assert (not b!3098342))

(assert (not b!3098328))

(assert (not b!3098060))

(assert (not b!3098281))

(assert (not bm!218148))

(assert (not bm!218188))

(assert (not b!3098427))

(assert (not bm!218210))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

