; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!285138 () Bool)

(assert start!285138)

(declare-fun b!2932931 () Bool)

(assert (=> b!2932931 true))

(assert (=> b!2932931 true))

(assert (=> b!2932931 true))

(declare-fun lambda!109226 () Int)

(declare-fun lambda!109225 () Int)

(assert (=> b!2932931 (not (= lambda!109226 lambda!109225))))

(assert (=> b!2932931 true))

(assert (=> b!2932931 true))

(assert (=> b!2932931 true))

(declare-fun b!2932918 () Bool)

(declare-fun e!1849202 () Bool)

(declare-fun e!1849203 () Bool)

(assert (=> b!2932918 (= e!1849202 e!1849203)))

(declare-fun res!1210815 () Bool)

(assert (=> b!2932918 (=> res!1210815 e!1849203)))

(declare-datatypes ((C!18302 0))(
  ( (C!18303 (val!11187 Int)) )
))
(declare-datatypes ((Regex!9058 0))(
  ( (ElementMatch!9058 (c!479055 C!18302)) (Concat!14379 (regOne!18628 Regex!9058) (regTwo!18628 Regex!9058)) (EmptyExpr!9058) (Star!9058 (reg!9387 Regex!9058)) (EmptyLang!9058) (Union!9058 (regOne!18629 Regex!9058) (regTwo!18629 Regex!9058)) )
))
(declare-fun lt!1028366 () Regex!9058)

(declare-fun lt!1028368 () Regex!9058)

(assert (=> b!2932918 (= res!1210815 (not (= lt!1028366 (Star!9058 lt!1028368))))))

(declare-datatypes ((List!34923 0))(
  ( (Nil!34799) (Cons!34799 (h!40219 C!18302) (t!233988 List!34923)) )
))
(declare-datatypes ((tuple2!33766 0))(
  ( (tuple2!33767 (_1!20015 List!34923) (_2!20015 List!34923)) )
))
(declare-fun lt!1028361 () tuple2!33766)

(declare-fun matchR!3940 (Regex!9058 List!34923) Bool)

(assert (=> b!2932918 (matchR!3940 lt!1028366 (_2!20015 lt!1028361))))

(declare-fun lt!1028362 () Regex!9058)

(declare-fun simplify!65 (Regex!9058) Regex!9058)

(assert (=> b!2932918 (= lt!1028366 (simplify!65 lt!1028362))))

(declare-datatypes ((Unit!48471 0))(
  ( (Unit!48472) )
))
(declare-fun lt!1028372 () Unit!48471)

(declare-fun lemmaSimplifySound!61 (Regex!9058 List!34923) Unit!48471)

(assert (=> b!2932918 (= lt!1028372 (lemmaSimplifySound!61 lt!1028362 (_2!20015 lt!1028361)))))

(declare-fun lt!1028373 () Unit!48471)

(declare-fun e!1849201 () Unit!48471)

(assert (=> b!2932918 (= lt!1028373 e!1849201)))

(declare-fun c!479054 () Bool)

(declare-fun s!11993 () List!34923)

(declare-fun size!26454 (List!34923) Int)

(assert (=> b!2932918 (= c!479054 (= (size!26454 (_2!20015 lt!1028361)) (size!26454 s!11993)))))

(assert (=> b!2932918 (matchR!3940 lt!1028368 (_1!20015 lt!1028361))))

(declare-fun r!17423 () Regex!9058)

(assert (=> b!2932918 (= lt!1028368 (simplify!65 (reg!9387 r!17423)))))

(declare-fun lt!1028367 () Unit!48471)

(assert (=> b!2932918 (= lt!1028367 (lemmaSimplifySound!61 (reg!9387 r!17423) (_1!20015 lt!1028361)))))

(declare-fun b!2932919 () Bool)

(declare-fun Unit!48473 () Unit!48471)

(assert (=> b!2932919 (= e!1849201 Unit!48473)))

(declare-fun b!2932920 () Bool)

(declare-fun e!1849197 () Bool)

(declare-fun tp!939654 () Bool)

(declare-fun tp!939658 () Bool)

(assert (=> b!2932920 (= e!1849197 (and tp!939654 tp!939658))))

(declare-fun b!2932921 () Bool)

(declare-fun res!1210819 () Bool)

(declare-fun e!1849198 () Bool)

(assert (=> b!2932921 (=> res!1210819 e!1849198)))

(declare-fun isEmpty!19054 (List!34923) Bool)

(assert (=> b!2932921 (= res!1210819 (isEmpty!19054 s!11993))))

(declare-fun b!2932922 () Bool)

(declare-fun tp!939657 () Bool)

(declare-fun tp!939659 () Bool)

(assert (=> b!2932922 (= e!1849197 (and tp!939657 tp!939659))))

(declare-fun b!2932923 () Bool)

(declare-fun e!1849199 () Bool)

(assert (=> b!2932923 (= e!1849199 e!1849202)))

(declare-fun res!1210816 () Bool)

(assert (=> b!2932923 (=> res!1210816 e!1849202)))

(assert (=> b!2932923 (= res!1210816 (not (matchR!3940 (reg!9387 r!17423) (_1!20015 lt!1028361))))))

(declare-datatypes ((Option!6615 0))(
  ( (None!6614) (Some!6614 (v!34748 tuple2!33766)) )
))
(declare-fun lt!1028363 () Option!6615)

(declare-fun get!10636 (Option!6615) tuple2!33766)

(assert (=> b!2932923 (= lt!1028361 (get!10636 lt!1028363))))

(declare-fun b!2932925 () Bool)

(declare-fun res!1210818 () Bool)

(assert (=> b!2932925 (=> res!1210818 e!1849202)))

(assert (=> b!2932925 (= res!1210818 (not (matchR!3940 lt!1028362 (_2!20015 lt!1028361))))))

(declare-fun b!2932926 () Bool)

(declare-fun e!1849196 () Bool)

(assert (=> b!2932926 (= e!1849196 (not e!1849198))))

(declare-fun res!1210813 () Bool)

(assert (=> b!2932926 (=> res!1210813 e!1849198)))

(declare-fun lt!1028365 () Bool)

(assert (=> b!2932926 (= res!1210813 (or (not lt!1028365) (is-Concat!14379 r!17423) (is-Union!9058 r!17423) (not (is-Star!9058 r!17423))))))

(declare-fun matchRSpec!1195 (Regex!9058 List!34923) Bool)

(assert (=> b!2932926 (= lt!1028365 (matchRSpec!1195 r!17423 s!11993))))

(assert (=> b!2932926 (= lt!1028365 (matchR!3940 r!17423 s!11993))))

(declare-fun lt!1028364 () Unit!48471)

(declare-fun mainMatchTheorem!1195 (Regex!9058 List!34923) Unit!48471)

(assert (=> b!2932926 (= lt!1028364 (mainMatchTheorem!1195 r!17423 s!11993))))

(declare-fun b!2932927 () Bool)

(declare-fun tp!939656 () Bool)

(assert (=> b!2932927 (= e!1849197 tp!939656)))

(declare-fun b!2932928 () Bool)

(declare-fun e!1849200 () Bool)

(declare-fun tp_is_empty!15679 () Bool)

(declare-fun tp!939655 () Bool)

(assert (=> b!2932928 (= e!1849200 (and tp_is_empty!15679 tp!939655))))

(declare-fun b!2932929 () Bool)

(declare-fun validRegex!3791 (Regex!9058) Bool)

(assert (=> b!2932929 (= e!1849203 (validRegex!3791 (reg!9387 r!17423)))))

(declare-fun res!1210814 () Bool)

(assert (=> start!285138 (=> (not res!1210814) (not e!1849196))))

(assert (=> start!285138 (= res!1210814 (validRegex!3791 r!17423))))

(assert (=> start!285138 e!1849196))

(assert (=> start!285138 e!1849197))

(assert (=> start!285138 e!1849200))

(declare-fun b!2932924 () Bool)

(declare-fun Unit!48474 () Unit!48471)

(assert (=> b!2932924 (= e!1849201 Unit!48474)))

(declare-fun lt!1028370 () Unit!48471)

(assert (=> b!2932924 (= lt!1028370 (mainMatchTheorem!1195 (reg!9387 r!17423) (_1!20015 lt!1028361)))))

(assert (=> b!2932924 false))

(declare-fun b!2932930 () Bool)

(assert (=> b!2932930 (= e!1849197 tp_is_empty!15679)))

(assert (=> b!2932931 (= e!1849198 e!1849199)))

(declare-fun res!1210817 () Bool)

(assert (=> b!2932931 (=> res!1210817 e!1849199)))

(declare-fun lt!1028371 () Bool)

(assert (=> b!2932931 (= res!1210817 (not lt!1028371))))

(declare-fun Exists!1420 (Int) Bool)

(assert (=> b!2932931 (= (Exists!1420 lambda!109225) (Exists!1420 lambda!109226))))

(declare-fun lt!1028360 () Unit!48471)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!231 (Regex!9058 List!34923) Unit!48471)

(assert (=> b!2932931 (= lt!1028360 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!231 (reg!9387 r!17423) s!11993))))

(assert (=> b!2932931 (= lt!1028371 (Exists!1420 lambda!109225))))

(declare-fun isDefined!5166 (Option!6615) Bool)

(assert (=> b!2932931 (= lt!1028371 (isDefined!5166 lt!1028363))))

(declare-fun findConcatSeparation!1009 (Regex!9058 Regex!9058 List!34923 List!34923 List!34923) Option!6615)

(assert (=> b!2932931 (= lt!1028363 (findConcatSeparation!1009 (reg!9387 r!17423) lt!1028362 Nil!34799 s!11993 s!11993))))

(declare-fun lt!1028369 () Unit!48471)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!791 (Regex!9058 Regex!9058 List!34923) Unit!48471)

(assert (=> b!2932931 (= lt!1028369 (lemmaFindConcatSeparationEquivalentToExists!791 (reg!9387 r!17423) lt!1028362 s!11993))))

(assert (=> b!2932931 (= lt!1028362 (Star!9058 (reg!9387 r!17423)))))

(assert (= (and start!285138 res!1210814) b!2932926))

(assert (= (and b!2932926 (not res!1210813)) b!2932921))

(assert (= (and b!2932921 (not res!1210819)) b!2932931))

(assert (= (and b!2932931 (not res!1210817)) b!2932923))

(assert (= (and b!2932923 (not res!1210816)) b!2932925))

(assert (= (and b!2932925 (not res!1210818)) b!2932918))

(assert (= (and b!2932918 c!479054) b!2932924))

(assert (= (and b!2932918 (not c!479054)) b!2932919))

(assert (= (and b!2932918 (not res!1210815)) b!2932929))

(assert (= (and start!285138 (is-ElementMatch!9058 r!17423)) b!2932930))

(assert (= (and start!285138 (is-Concat!14379 r!17423)) b!2932922))

(assert (= (and start!285138 (is-Star!9058 r!17423)) b!2932927))

(assert (= (and start!285138 (is-Union!9058 r!17423)) b!2932920))

(assert (= (and start!285138 (is-Cons!34799 s!11993)) b!2932928))

(declare-fun m!3322077 () Bool)

(assert (=> b!2932918 m!3322077))

(declare-fun m!3322079 () Bool)

(assert (=> b!2932918 m!3322079))

(declare-fun m!3322081 () Bool)

(assert (=> b!2932918 m!3322081))

(declare-fun m!3322083 () Bool)

(assert (=> b!2932918 m!3322083))

(declare-fun m!3322085 () Bool)

(assert (=> b!2932918 m!3322085))

(declare-fun m!3322087 () Bool)

(assert (=> b!2932918 m!3322087))

(declare-fun m!3322089 () Bool)

(assert (=> b!2932918 m!3322089))

(declare-fun m!3322091 () Bool)

(assert (=> b!2932918 m!3322091))

(declare-fun m!3322093 () Bool)

(assert (=> start!285138 m!3322093))

(declare-fun m!3322095 () Bool)

(assert (=> b!2932924 m!3322095))

(declare-fun m!3322097 () Bool)

(assert (=> b!2932926 m!3322097))

(declare-fun m!3322099 () Bool)

(assert (=> b!2932926 m!3322099))

(declare-fun m!3322101 () Bool)

(assert (=> b!2932926 m!3322101))

(declare-fun m!3322103 () Bool)

(assert (=> b!2932929 m!3322103))

(declare-fun m!3322105 () Bool)

(assert (=> b!2932921 m!3322105))

(declare-fun m!3322107 () Bool)

(assert (=> b!2932923 m!3322107))

(declare-fun m!3322109 () Bool)

(assert (=> b!2932923 m!3322109))

(declare-fun m!3322111 () Bool)

(assert (=> b!2932931 m!3322111))

(declare-fun m!3322113 () Bool)

(assert (=> b!2932931 m!3322113))

(declare-fun m!3322115 () Bool)

(assert (=> b!2932931 m!3322115))

(declare-fun m!3322117 () Bool)

(assert (=> b!2932931 m!3322117))

(declare-fun m!3322119 () Bool)

(assert (=> b!2932931 m!3322119))

(declare-fun m!3322121 () Bool)

(assert (=> b!2932931 m!3322121))

(assert (=> b!2932931 m!3322115))

(declare-fun m!3322123 () Bool)

(assert (=> b!2932925 m!3322123))

(push 1)

(assert (not b!2932924))

(assert (not b!2932922))

(assert (not b!2932918))

(assert (not b!2932931))

(assert (not b!2932929))

(assert (not b!2932926))

(assert (not b!2932923))

(assert tp_is_empty!15679)

(assert (not b!2932928))

(assert (not b!2932927))

(assert (not start!285138))

(assert (not b!2932925))

(assert (not b!2932920))

(assert (not b!2932921))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2933024 () Bool)

(declare-fun e!1849253 () Bool)

(declare-fun head!6522 (List!34923) C!18302)

(assert (=> b!2933024 (= e!1849253 (= (head!6522 (_1!20015 lt!1028361)) (c!479055 (reg!9387 r!17423))))))

(declare-fun b!2933025 () Bool)

(declare-fun e!1849248 () Bool)

(declare-fun lt!1028418 () Bool)

(declare-fun call!192581 () Bool)

(assert (=> b!2933025 (= e!1849248 (= lt!1028418 call!192581))))

(declare-fun b!2933026 () Bool)

(declare-fun e!1849251 () Bool)

(declare-fun e!1849249 () Bool)

(assert (=> b!2933026 (= e!1849251 e!1849249)))

(declare-fun res!1210876 () Bool)

(assert (=> b!2933026 (=> res!1210876 e!1849249)))

(assert (=> b!2933026 (= res!1210876 call!192581)))

(declare-fun b!2933027 () Bool)

(declare-fun e!1849252 () Bool)

(declare-fun nullable!2852 (Regex!9058) Bool)

(assert (=> b!2933027 (= e!1849252 (nullable!2852 (reg!9387 r!17423)))))

(declare-fun b!2933028 () Bool)

(assert (=> b!2933028 (= e!1849249 (not (= (head!6522 (_1!20015 lt!1028361)) (c!479055 (reg!9387 r!17423)))))))

(declare-fun b!2933029 () Bool)

(declare-fun derivativeStep!2463 (Regex!9058 C!18302) Regex!9058)

(declare-fun tail!4748 (List!34923) List!34923)

(assert (=> b!2933029 (= e!1849252 (matchR!3940 (derivativeStep!2463 (reg!9387 r!17423) (head!6522 (_1!20015 lt!1028361))) (tail!4748 (_1!20015 lt!1028361))))))

(declare-fun d!839543 () Bool)

(assert (=> d!839543 e!1849248))

(declare-fun c!479067 () Bool)

(assert (=> d!839543 (= c!479067 (is-EmptyExpr!9058 (reg!9387 r!17423)))))

(assert (=> d!839543 (= lt!1028418 e!1849252)))

(declare-fun c!479066 () Bool)

(assert (=> d!839543 (= c!479066 (isEmpty!19054 (_1!20015 lt!1028361)))))

(assert (=> d!839543 (validRegex!3791 (reg!9387 r!17423))))

(assert (=> d!839543 (= (matchR!3940 (reg!9387 r!17423) (_1!20015 lt!1028361)) lt!1028418)))

(declare-fun b!2933030 () Bool)

(declare-fun e!1849250 () Bool)

(assert (=> b!2933030 (= e!1849250 (not lt!1028418))))

(declare-fun b!2933031 () Bool)

(declare-fun res!1210871 () Bool)

(declare-fun e!1849254 () Bool)

(assert (=> b!2933031 (=> res!1210871 e!1849254)))

(assert (=> b!2933031 (= res!1210871 e!1849253)))

(declare-fun res!1210872 () Bool)

(assert (=> b!2933031 (=> (not res!1210872) (not e!1849253))))

(assert (=> b!2933031 (= res!1210872 lt!1028418)))

(declare-fun bm!192576 () Bool)

(assert (=> bm!192576 (= call!192581 (isEmpty!19054 (_1!20015 lt!1028361)))))

(declare-fun b!2933032 () Bool)

(declare-fun res!1210877 () Bool)

(assert (=> b!2933032 (=> res!1210877 e!1849254)))

(assert (=> b!2933032 (= res!1210877 (not (is-ElementMatch!9058 (reg!9387 r!17423))))))

(assert (=> b!2933032 (= e!1849250 e!1849254)))

(declare-fun b!2933033 () Bool)

(declare-fun res!1210875 () Bool)

(assert (=> b!2933033 (=> (not res!1210875) (not e!1849253))))

(assert (=> b!2933033 (= res!1210875 (not call!192581))))

(declare-fun b!2933034 () Bool)

(declare-fun res!1210873 () Bool)

(assert (=> b!2933034 (=> res!1210873 e!1849249)))

(assert (=> b!2933034 (= res!1210873 (not (isEmpty!19054 (tail!4748 (_1!20015 lt!1028361)))))))

(declare-fun b!2933035 () Bool)

(assert (=> b!2933035 (= e!1849254 e!1849251)))

(declare-fun res!1210878 () Bool)

(assert (=> b!2933035 (=> (not res!1210878) (not e!1849251))))

(assert (=> b!2933035 (= res!1210878 (not lt!1028418))))

(declare-fun b!2933036 () Bool)

(assert (=> b!2933036 (= e!1849248 e!1849250)))

(declare-fun c!479068 () Bool)

(assert (=> b!2933036 (= c!479068 (is-EmptyLang!9058 (reg!9387 r!17423)))))

(declare-fun b!2933037 () Bool)

(declare-fun res!1210874 () Bool)

(assert (=> b!2933037 (=> (not res!1210874) (not e!1849253))))

(assert (=> b!2933037 (= res!1210874 (isEmpty!19054 (tail!4748 (_1!20015 lt!1028361))))))

(assert (= (and d!839543 c!479066) b!2933027))

(assert (= (and d!839543 (not c!479066)) b!2933029))

(assert (= (and d!839543 c!479067) b!2933025))

(assert (= (and d!839543 (not c!479067)) b!2933036))

(assert (= (and b!2933036 c!479068) b!2933030))

(assert (= (and b!2933036 (not c!479068)) b!2933032))

(assert (= (and b!2933032 (not res!1210877)) b!2933031))

(assert (= (and b!2933031 res!1210872) b!2933033))

(assert (= (and b!2933033 res!1210875) b!2933037))

(assert (= (and b!2933037 res!1210874) b!2933024))

(assert (= (and b!2933031 (not res!1210871)) b!2933035))

(assert (= (and b!2933035 res!1210878) b!2933026))

(assert (= (and b!2933026 (not res!1210876)) b!2933034))

(assert (= (and b!2933034 (not res!1210873)) b!2933028))

(assert (= (or b!2933025 b!2933026 b!2933033) bm!192576))

(declare-fun m!3322173 () Bool)

(assert (=> b!2933028 m!3322173))

(declare-fun m!3322175 () Bool)

(assert (=> d!839543 m!3322175))

(assert (=> d!839543 m!3322103))

(assert (=> b!2933029 m!3322173))

(assert (=> b!2933029 m!3322173))

(declare-fun m!3322177 () Bool)

(assert (=> b!2933029 m!3322177))

(declare-fun m!3322179 () Bool)

(assert (=> b!2933029 m!3322179))

(assert (=> b!2933029 m!3322177))

(assert (=> b!2933029 m!3322179))

(declare-fun m!3322181 () Bool)

(assert (=> b!2933029 m!3322181))

(assert (=> b!2933037 m!3322179))

(assert (=> b!2933037 m!3322179))

(declare-fun m!3322183 () Bool)

(assert (=> b!2933037 m!3322183))

(assert (=> b!2933024 m!3322173))

(declare-fun m!3322185 () Bool)

(assert (=> b!2933027 m!3322185))

(assert (=> bm!192576 m!3322175))

(assert (=> b!2933034 m!3322179))

(assert (=> b!2933034 m!3322179))

(assert (=> b!2933034 m!3322183))

(assert (=> b!2932923 d!839543))

(declare-fun d!839547 () Bool)

(assert (=> d!839547 (= (get!10636 lt!1028363) (v!34748 lt!1028363))))

(assert (=> b!2932923 d!839547))

(declare-fun c!479074 () Bool)

(declare-fun c!479073 () Bool)

(declare-fun bm!192583 () Bool)

(declare-fun call!192588 () Bool)

(assert (=> bm!192583 (= call!192588 (validRegex!3791 (ite c!479073 (reg!9387 r!17423) (ite c!479074 (regOne!18629 r!17423) (regTwo!18628 r!17423)))))))

(declare-fun b!2933056 () Bool)

(declare-fun res!1210893 () Bool)

(declare-fun e!1849271 () Bool)

(assert (=> b!2933056 (=> (not res!1210893) (not e!1849271))))

(declare-fun call!192590 () Bool)

(assert (=> b!2933056 (= res!1210893 call!192590)))

(declare-fun e!1849269 () Bool)

(assert (=> b!2933056 (= e!1849269 e!1849271)))

(declare-fun bm!192584 () Bool)

(declare-fun call!192589 () Bool)

(assert (=> bm!192584 (= call!192589 (validRegex!3791 (ite c!479074 (regTwo!18629 r!17423) (regOne!18628 r!17423))))))

(declare-fun b!2933057 () Bool)

(declare-fun e!1849270 () Bool)

(declare-fun e!1849272 () Bool)

(assert (=> b!2933057 (= e!1849270 e!1849272)))

(declare-fun res!1210891 () Bool)

(assert (=> b!2933057 (=> (not res!1210891) (not e!1849272))))

(assert (=> b!2933057 (= res!1210891 call!192589)))

(declare-fun d!839549 () Bool)

(declare-fun res!1210890 () Bool)

(declare-fun e!1849273 () Bool)

(assert (=> d!839549 (=> res!1210890 e!1849273)))

(assert (=> d!839549 (= res!1210890 (is-ElementMatch!9058 r!17423))))

(assert (=> d!839549 (= (validRegex!3791 r!17423) e!1849273)))

(declare-fun b!2933058 () Bool)

(assert (=> b!2933058 (= e!1849271 call!192589)))

(declare-fun b!2933059 () Bool)

(declare-fun e!1849275 () Bool)

(declare-fun e!1849274 () Bool)

(assert (=> b!2933059 (= e!1849275 e!1849274)))

(declare-fun res!1210892 () Bool)

(assert (=> b!2933059 (= res!1210892 (not (nullable!2852 (reg!9387 r!17423))))))

(assert (=> b!2933059 (=> (not res!1210892) (not e!1849274))))

(declare-fun b!2933060 () Bool)

(assert (=> b!2933060 (= e!1849274 call!192588)))

(declare-fun b!2933061 () Bool)

(assert (=> b!2933061 (= e!1849275 e!1849269)))

(assert (=> b!2933061 (= c!479074 (is-Union!9058 r!17423))))

(declare-fun bm!192585 () Bool)

(assert (=> bm!192585 (= call!192590 call!192588)))

(declare-fun b!2933062 () Bool)

(assert (=> b!2933062 (= e!1849273 e!1849275)))

(assert (=> b!2933062 (= c!479073 (is-Star!9058 r!17423))))

(declare-fun b!2933063 () Bool)

(declare-fun res!1210889 () Bool)

(assert (=> b!2933063 (=> res!1210889 e!1849270)))

(assert (=> b!2933063 (= res!1210889 (not (is-Concat!14379 r!17423)))))

(assert (=> b!2933063 (= e!1849269 e!1849270)))

(declare-fun b!2933064 () Bool)

(assert (=> b!2933064 (= e!1849272 call!192590)))

(assert (= (and d!839549 (not res!1210890)) b!2933062))

(assert (= (and b!2933062 c!479073) b!2933059))

(assert (= (and b!2933062 (not c!479073)) b!2933061))

(assert (= (and b!2933059 res!1210892) b!2933060))

(assert (= (and b!2933061 c!479074) b!2933056))

(assert (= (and b!2933061 (not c!479074)) b!2933063))

(assert (= (and b!2933056 res!1210893) b!2933058))

(assert (= (and b!2933063 (not res!1210889)) b!2933057))

(assert (= (and b!2933057 res!1210891) b!2933064))

(assert (= (or b!2933056 b!2933064) bm!192585))

(assert (= (or b!2933058 b!2933057) bm!192584))

(assert (= (or b!2933060 bm!192585) bm!192583))

(declare-fun m!3322187 () Bool)

(assert (=> bm!192583 m!3322187))

(declare-fun m!3322189 () Bool)

(assert (=> bm!192584 m!3322189))

(assert (=> b!2933059 m!3322185))

(assert (=> start!285138 d!839549))

(declare-fun c!479076 () Bool)

(declare-fun bm!192586 () Bool)

(declare-fun c!479075 () Bool)

(declare-fun call!192591 () Bool)

(assert (=> bm!192586 (= call!192591 (validRegex!3791 (ite c!479075 (reg!9387 (reg!9387 r!17423)) (ite c!479076 (regOne!18629 (reg!9387 r!17423)) (regTwo!18628 (reg!9387 r!17423))))))))

(declare-fun b!2933065 () Bool)

(declare-fun res!1210898 () Bool)

(declare-fun e!1849278 () Bool)

(assert (=> b!2933065 (=> (not res!1210898) (not e!1849278))))

(declare-fun call!192593 () Bool)

(assert (=> b!2933065 (= res!1210898 call!192593)))

(declare-fun e!1849276 () Bool)

(assert (=> b!2933065 (= e!1849276 e!1849278)))

(declare-fun bm!192587 () Bool)

(declare-fun call!192592 () Bool)

(assert (=> bm!192587 (= call!192592 (validRegex!3791 (ite c!479076 (regTwo!18629 (reg!9387 r!17423)) (regOne!18628 (reg!9387 r!17423)))))))

(declare-fun b!2933066 () Bool)

(declare-fun e!1849277 () Bool)

(declare-fun e!1849279 () Bool)

(assert (=> b!2933066 (= e!1849277 e!1849279)))

(declare-fun res!1210896 () Bool)

(assert (=> b!2933066 (=> (not res!1210896) (not e!1849279))))

(assert (=> b!2933066 (= res!1210896 call!192592)))

(declare-fun d!839551 () Bool)

(declare-fun res!1210895 () Bool)

(declare-fun e!1849280 () Bool)

(assert (=> d!839551 (=> res!1210895 e!1849280)))

(assert (=> d!839551 (= res!1210895 (is-ElementMatch!9058 (reg!9387 r!17423)))))

(assert (=> d!839551 (= (validRegex!3791 (reg!9387 r!17423)) e!1849280)))

(declare-fun b!2933067 () Bool)

(assert (=> b!2933067 (= e!1849278 call!192592)))

(declare-fun b!2933068 () Bool)

(declare-fun e!1849282 () Bool)

(declare-fun e!1849281 () Bool)

(assert (=> b!2933068 (= e!1849282 e!1849281)))

(declare-fun res!1210897 () Bool)

(assert (=> b!2933068 (= res!1210897 (not (nullable!2852 (reg!9387 (reg!9387 r!17423)))))))

(assert (=> b!2933068 (=> (not res!1210897) (not e!1849281))))

(declare-fun b!2933069 () Bool)

(assert (=> b!2933069 (= e!1849281 call!192591)))

(declare-fun b!2933070 () Bool)

(assert (=> b!2933070 (= e!1849282 e!1849276)))

(assert (=> b!2933070 (= c!479076 (is-Union!9058 (reg!9387 r!17423)))))

(declare-fun bm!192588 () Bool)

(assert (=> bm!192588 (= call!192593 call!192591)))

(declare-fun b!2933071 () Bool)

(assert (=> b!2933071 (= e!1849280 e!1849282)))

(assert (=> b!2933071 (= c!479075 (is-Star!9058 (reg!9387 r!17423)))))

(declare-fun b!2933072 () Bool)

(declare-fun res!1210894 () Bool)

(assert (=> b!2933072 (=> res!1210894 e!1849277)))

(assert (=> b!2933072 (= res!1210894 (not (is-Concat!14379 (reg!9387 r!17423))))))

(assert (=> b!2933072 (= e!1849276 e!1849277)))

(declare-fun b!2933073 () Bool)

(assert (=> b!2933073 (= e!1849279 call!192593)))

(assert (= (and d!839551 (not res!1210895)) b!2933071))

(assert (= (and b!2933071 c!479075) b!2933068))

(assert (= (and b!2933071 (not c!479075)) b!2933070))

(assert (= (and b!2933068 res!1210897) b!2933069))

(assert (= (and b!2933070 c!479076) b!2933065))

(assert (= (and b!2933070 (not c!479076)) b!2933072))

(assert (= (and b!2933065 res!1210898) b!2933067))

(assert (= (and b!2933072 (not res!1210894)) b!2933066))

(assert (= (and b!2933066 res!1210896) b!2933073))

(assert (= (or b!2933065 b!2933073) bm!192588))

(assert (= (or b!2933067 b!2933066) bm!192587))

(assert (= (or b!2933069 bm!192588) bm!192586))

(declare-fun m!3322191 () Bool)

(assert (=> bm!192586 m!3322191))

(declare-fun m!3322193 () Bool)

(assert (=> bm!192587 m!3322193))

(declare-fun m!3322195 () Bool)

(assert (=> b!2933068 m!3322195))

(assert (=> b!2932929 d!839551))

(declare-fun b!2933074 () Bool)

(declare-fun e!1849288 () Bool)

(assert (=> b!2933074 (= e!1849288 (= (head!6522 (_2!20015 lt!1028361)) (c!479055 lt!1028366)))))

(declare-fun b!2933075 () Bool)

(declare-fun e!1849283 () Bool)

(declare-fun lt!1028419 () Bool)

(declare-fun call!192594 () Bool)

(assert (=> b!2933075 (= e!1849283 (= lt!1028419 call!192594))))

(declare-fun b!2933076 () Bool)

(declare-fun e!1849286 () Bool)

(declare-fun e!1849284 () Bool)

(assert (=> b!2933076 (= e!1849286 e!1849284)))

(declare-fun res!1210904 () Bool)

(assert (=> b!2933076 (=> res!1210904 e!1849284)))

(assert (=> b!2933076 (= res!1210904 call!192594)))

(declare-fun b!2933077 () Bool)

(declare-fun e!1849287 () Bool)

(assert (=> b!2933077 (= e!1849287 (nullable!2852 lt!1028366))))

(declare-fun b!2933078 () Bool)

(assert (=> b!2933078 (= e!1849284 (not (= (head!6522 (_2!20015 lt!1028361)) (c!479055 lt!1028366))))))

(declare-fun b!2933079 () Bool)

(assert (=> b!2933079 (= e!1849287 (matchR!3940 (derivativeStep!2463 lt!1028366 (head!6522 (_2!20015 lt!1028361))) (tail!4748 (_2!20015 lt!1028361))))))

(declare-fun d!839553 () Bool)

(assert (=> d!839553 e!1849283))

(declare-fun c!479078 () Bool)

(assert (=> d!839553 (= c!479078 (is-EmptyExpr!9058 lt!1028366))))

(assert (=> d!839553 (= lt!1028419 e!1849287)))

(declare-fun c!479077 () Bool)

(assert (=> d!839553 (= c!479077 (isEmpty!19054 (_2!20015 lt!1028361)))))

(assert (=> d!839553 (validRegex!3791 lt!1028366)))

(assert (=> d!839553 (= (matchR!3940 lt!1028366 (_2!20015 lt!1028361)) lt!1028419)))

(declare-fun b!2933080 () Bool)

(declare-fun e!1849285 () Bool)

(assert (=> b!2933080 (= e!1849285 (not lt!1028419))))

(declare-fun b!2933081 () Bool)

(declare-fun res!1210899 () Bool)

(declare-fun e!1849289 () Bool)

(assert (=> b!2933081 (=> res!1210899 e!1849289)))

(assert (=> b!2933081 (= res!1210899 e!1849288)))

(declare-fun res!1210900 () Bool)

(assert (=> b!2933081 (=> (not res!1210900) (not e!1849288))))

(assert (=> b!2933081 (= res!1210900 lt!1028419)))

(declare-fun bm!192589 () Bool)

(assert (=> bm!192589 (= call!192594 (isEmpty!19054 (_2!20015 lt!1028361)))))

(declare-fun b!2933082 () Bool)

(declare-fun res!1210905 () Bool)

(assert (=> b!2933082 (=> res!1210905 e!1849289)))

(assert (=> b!2933082 (= res!1210905 (not (is-ElementMatch!9058 lt!1028366)))))

(assert (=> b!2933082 (= e!1849285 e!1849289)))

(declare-fun b!2933083 () Bool)

(declare-fun res!1210903 () Bool)

(assert (=> b!2933083 (=> (not res!1210903) (not e!1849288))))

(assert (=> b!2933083 (= res!1210903 (not call!192594))))

(declare-fun b!2933084 () Bool)

(declare-fun res!1210901 () Bool)

(assert (=> b!2933084 (=> res!1210901 e!1849284)))

(assert (=> b!2933084 (= res!1210901 (not (isEmpty!19054 (tail!4748 (_2!20015 lt!1028361)))))))

(declare-fun b!2933085 () Bool)

(assert (=> b!2933085 (= e!1849289 e!1849286)))

(declare-fun res!1210906 () Bool)

(assert (=> b!2933085 (=> (not res!1210906) (not e!1849286))))

(assert (=> b!2933085 (= res!1210906 (not lt!1028419))))

(declare-fun b!2933086 () Bool)

(assert (=> b!2933086 (= e!1849283 e!1849285)))

(declare-fun c!479079 () Bool)

(assert (=> b!2933086 (= c!479079 (is-EmptyLang!9058 lt!1028366))))

(declare-fun b!2933087 () Bool)

(declare-fun res!1210902 () Bool)

(assert (=> b!2933087 (=> (not res!1210902) (not e!1849288))))

(assert (=> b!2933087 (= res!1210902 (isEmpty!19054 (tail!4748 (_2!20015 lt!1028361))))))

(assert (= (and d!839553 c!479077) b!2933077))

(assert (= (and d!839553 (not c!479077)) b!2933079))

(assert (= (and d!839553 c!479078) b!2933075))

(assert (= (and d!839553 (not c!479078)) b!2933086))

(assert (= (and b!2933086 c!479079) b!2933080))

(assert (= (and b!2933086 (not c!479079)) b!2933082))

(assert (= (and b!2933082 (not res!1210905)) b!2933081))

(assert (= (and b!2933081 res!1210900) b!2933083))

(assert (= (and b!2933083 res!1210903) b!2933087))

(assert (= (and b!2933087 res!1210902) b!2933074))

(assert (= (and b!2933081 (not res!1210899)) b!2933085))

(assert (= (and b!2933085 res!1210906) b!2933076))

(assert (= (and b!2933076 (not res!1210904)) b!2933084))

(assert (= (and b!2933084 (not res!1210901)) b!2933078))

(assert (= (or b!2933075 b!2933076 b!2933083) bm!192589))

(declare-fun m!3322197 () Bool)

(assert (=> b!2933078 m!3322197))

(declare-fun m!3322199 () Bool)

(assert (=> d!839553 m!3322199))

(declare-fun m!3322201 () Bool)

(assert (=> d!839553 m!3322201))

(assert (=> b!2933079 m!3322197))

(assert (=> b!2933079 m!3322197))

(declare-fun m!3322203 () Bool)

(assert (=> b!2933079 m!3322203))

(declare-fun m!3322205 () Bool)

(assert (=> b!2933079 m!3322205))

(assert (=> b!2933079 m!3322203))

(assert (=> b!2933079 m!3322205))

(declare-fun m!3322207 () Bool)

(assert (=> b!2933079 m!3322207))

(assert (=> b!2933087 m!3322205))

(assert (=> b!2933087 m!3322205))

(declare-fun m!3322209 () Bool)

(assert (=> b!2933087 m!3322209))

(assert (=> b!2933074 m!3322197))

(declare-fun m!3322211 () Bool)

(assert (=> b!2933077 m!3322211))

(assert (=> bm!192589 m!3322199))

(assert (=> b!2933084 m!3322205))

(assert (=> b!2933084 m!3322205))

(assert (=> b!2933084 m!3322209))

(assert (=> b!2932918 d!839553))

(declare-fun b!2933148 () Bool)

(declare-fun c!479107 () Bool)

(declare-fun call!192611 () Bool)

(assert (=> b!2933148 (= c!479107 call!192611)))

(declare-fun e!1849330 () Regex!9058)

(declare-fun e!1849331 () Regex!9058)

(assert (=> b!2933148 (= e!1849330 e!1849331)))

(declare-fun d!839555 () Bool)

(declare-fun e!1849322 () Bool)

(assert (=> d!839555 e!1849322))

(declare-fun res!1210924 () Bool)

(assert (=> d!839555 (=> (not res!1210924) (not e!1849322))))

(declare-fun lt!1028437 () Regex!9058)

(assert (=> d!839555 (= res!1210924 (validRegex!3791 lt!1028437))))

(declare-fun e!1849334 () Regex!9058)

(assert (=> d!839555 (= lt!1028437 e!1849334)))

(declare-fun c!479111 () Bool)

(assert (=> d!839555 (= c!479111 (is-EmptyLang!9058 (reg!9387 r!17423)))))

(assert (=> d!839555 (validRegex!3791 (reg!9387 r!17423))))

(assert (=> d!839555 (= (simplify!65 (reg!9387 r!17423)) lt!1028437)))

(declare-fun b!2933149 () Bool)

(declare-fun e!1849332 () Regex!9058)

(declare-fun lt!1028438 () Regex!9058)

(assert (=> b!2933149 (= e!1849332 lt!1028438)))

(declare-fun call!192615 () Bool)

(declare-fun lt!1028435 () Regex!9058)

(declare-fun bm!192604 () Bool)

(declare-fun c!479109 () Bool)

(declare-fun lt!1028439 () Regex!9058)

(declare-fun c!479106 () Bool)

(declare-fun lt!1028440 () Regex!9058)

(declare-fun isEmptyLang!197 (Regex!9058) Bool)

(assert (=> bm!192604 (= call!192615 (isEmptyLang!197 (ite c!479106 lt!1028440 (ite c!479109 lt!1028435 lt!1028439))))))

(declare-fun b!2933150 () Bool)

(assert (=> b!2933150 (= e!1849322 (= (nullable!2852 lt!1028437) (nullable!2852 (reg!9387 r!17423))))))

(declare-fun b!2933151 () Bool)

(declare-fun e!1849323 () Regex!9058)

(assert (=> b!2933151 (= e!1849323 (reg!9387 r!17423))))

(declare-fun b!2933152 () Bool)

(declare-fun e!1849327 () Regex!9058)

(declare-fun lt!1028436 () Regex!9058)

(assert (=> b!2933152 (= e!1849327 (Union!9058 lt!1028436 lt!1028435))))

(declare-fun b!2933153 () Bool)

(assert (=> b!2933153 (= c!479109 (is-Union!9058 (reg!9387 r!17423)))))

(declare-fun e!1849329 () Regex!9058)

(declare-fun e!1849333 () Regex!9058)

(assert (=> b!2933153 (= e!1849329 e!1849333)))

(declare-fun b!2933154 () Bool)

(declare-fun e!1849325 () Regex!9058)

(assert (=> b!2933154 (= e!1849333 e!1849325)))

(declare-fun call!192610 () Regex!9058)

(assert (=> b!2933154 (= lt!1028436 call!192610)))

(declare-fun call!192614 () Regex!9058)

(assert (=> b!2933154 (= lt!1028435 call!192614)))

(declare-fun c!479104 () Bool)

(declare-fun call!192612 () Bool)

(assert (=> b!2933154 (= c!479104 call!192612)))

(declare-fun b!2933155 () Bool)

(declare-fun c!479112 () Bool)

(assert (=> b!2933155 (= c!479112 (is-EmptyExpr!9058 (reg!9387 r!17423)))))

(declare-fun e!1849335 () Regex!9058)

(assert (=> b!2933155 (= e!1849323 e!1849335)))

(declare-fun b!2933156 () Bool)

(declare-fun c!479103 () Bool)

(declare-fun e!1849326 () Bool)

(assert (=> b!2933156 (= c!479103 e!1849326)))

(declare-fun res!1210925 () Bool)

(assert (=> b!2933156 (=> res!1210925 e!1849326)))

(assert (=> b!2933156 (= res!1210925 call!192615)))

(declare-fun call!192609 () Regex!9058)

(assert (=> b!2933156 (= lt!1028440 call!192609)))

(declare-fun e!1849324 () Regex!9058)

(assert (=> b!2933156 (= e!1849329 e!1849324)))

(declare-fun b!2933157 () Bool)

(assert (=> b!2933157 (= e!1849332 (Concat!14379 lt!1028438 lt!1028439))))

(declare-fun bm!192605 () Bool)

(assert (=> bm!192605 (= call!192610 (simplify!65 (ite c!479109 (regOne!18629 (reg!9387 r!17423)) (regTwo!18628 (reg!9387 r!17423)))))))

(declare-fun b!2933158 () Bool)

(assert (=> b!2933158 (= e!1849331 e!1849332)))

(declare-fun c!479105 () Bool)

(declare-fun isEmptyExpr!282 (Regex!9058) Bool)

(assert (=> b!2933158 (= c!479105 (isEmptyExpr!282 lt!1028439))))

(declare-fun bm!192606 () Bool)

(declare-fun call!192613 () Bool)

(assert (=> bm!192606 (= call!192613 call!192615)))

(declare-fun b!2933159 () Bool)

(assert (=> b!2933159 (= e!1849324 (Star!9058 lt!1028440))))

(declare-fun b!2933160 () Bool)

(assert (=> b!2933160 (= e!1849333 e!1849330)))

(assert (=> b!2933160 (= lt!1028438 call!192614)))

(assert (=> b!2933160 (= lt!1028439 call!192610)))

(declare-fun res!1210923 () Bool)

(assert (=> b!2933160 (= res!1210923 call!192612)))

(declare-fun e!1849328 () Bool)

(assert (=> b!2933160 (=> res!1210923 e!1849328)))

(declare-fun c!479102 () Bool)

(assert (=> b!2933160 (= c!479102 e!1849328)))

(declare-fun bm!192607 () Bool)

(assert (=> bm!192607 (= call!192609 (simplify!65 (ite c!479106 (reg!9387 (reg!9387 r!17423)) (ite c!479109 (regTwo!18629 (reg!9387 r!17423)) (regOne!18628 (reg!9387 r!17423))))))))

(declare-fun b!2933161 () Bool)

(assert (=> b!2933161 (= e!1849335 e!1849329)))

(assert (=> b!2933161 (= c!479106 (is-Star!9058 (reg!9387 r!17423)))))

(declare-fun bm!192608 () Bool)

(assert (=> bm!192608 (= call!192611 (isEmptyExpr!282 (ite c!479106 lt!1028440 lt!1028438)))))

(declare-fun b!2933162 () Bool)

(assert (=> b!2933162 (= e!1849331 lt!1028439)))

(declare-fun b!2933163 () Bool)

(assert (=> b!2933163 (= e!1849324 EmptyExpr!9058)))

(declare-fun b!2933164 () Bool)

(assert (=> b!2933164 (= e!1849335 EmptyExpr!9058)))

(declare-fun b!2933165 () Bool)

(assert (=> b!2933165 (= e!1849334 EmptyLang!9058)))

(declare-fun b!2933166 () Bool)

(assert (=> b!2933166 (= e!1849330 EmptyLang!9058)))

(declare-fun bm!192609 () Bool)

(assert (=> bm!192609 (= call!192612 (isEmptyLang!197 (ite c!479109 lt!1028436 lt!1028438)))))

(declare-fun b!2933167 () Bool)

(assert (=> b!2933167 (= e!1849327 lt!1028436)))

(declare-fun bm!192610 () Bool)

(assert (=> bm!192610 (= call!192614 call!192609)))

(declare-fun b!2933168 () Bool)

(assert (=> b!2933168 (= e!1849325 lt!1028435)))

(declare-fun b!2933169 () Bool)

(assert (=> b!2933169 (= e!1849326 call!192611)))

(declare-fun b!2933170 () Bool)

(assert (=> b!2933170 (= e!1849328 call!192613)))

(declare-fun b!2933171 () Bool)

(declare-fun c!479110 () Bool)

(assert (=> b!2933171 (= c!479110 call!192613)))

(assert (=> b!2933171 (= e!1849325 e!1849327)))

(declare-fun b!2933172 () Bool)

(assert (=> b!2933172 (= e!1849334 e!1849323)))

(declare-fun c!479108 () Bool)

(assert (=> b!2933172 (= c!479108 (is-ElementMatch!9058 (reg!9387 r!17423)))))

(assert (= (and d!839555 c!479111) b!2933165))

(assert (= (and d!839555 (not c!479111)) b!2933172))

(assert (= (and b!2933172 c!479108) b!2933151))

(assert (= (and b!2933172 (not c!479108)) b!2933155))

(assert (= (and b!2933155 c!479112) b!2933164))

(assert (= (and b!2933155 (not c!479112)) b!2933161))

(assert (= (and b!2933161 c!479106) b!2933156))

(assert (= (and b!2933161 (not c!479106)) b!2933153))

(assert (= (and b!2933156 (not res!1210925)) b!2933169))

(assert (= (and b!2933156 c!479103) b!2933163))

(assert (= (and b!2933156 (not c!479103)) b!2933159))

(assert (= (and b!2933153 c!479109) b!2933154))

(assert (= (and b!2933153 (not c!479109)) b!2933160))

(assert (= (and b!2933154 c!479104) b!2933168))

(assert (= (and b!2933154 (not c!479104)) b!2933171))

(assert (= (and b!2933171 c!479110) b!2933167))

(assert (= (and b!2933171 (not c!479110)) b!2933152))

(assert (= (and b!2933160 (not res!1210923)) b!2933170))

(assert (= (and b!2933160 c!479102) b!2933166))

(assert (= (and b!2933160 (not c!479102)) b!2933148))

(assert (= (and b!2933148 c!479107) b!2933162))

(assert (= (and b!2933148 (not c!479107)) b!2933158))

(assert (= (and b!2933158 c!479105) b!2933149))

(assert (= (and b!2933158 (not c!479105)) b!2933157))

(assert (= (or b!2933154 b!2933160) bm!192605))

(assert (= (or b!2933154 b!2933160) bm!192610))

(assert (= (or b!2933171 b!2933170) bm!192606))

(assert (= (or b!2933154 b!2933160) bm!192609))

(assert (= (or b!2933169 b!2933148) bm!192608))

(assert (= (or b!2933156 bm!192610) bm!192607))

(assert (= (or b!2933156 bm!192606) bm!192604))

(assert (= (and d!839555 res!1210924) b!2933150))

(declare-fun m!3322213 () Bool)

(assert (=> b!2933158 m!3322213))

(declare-fun m!3322215 () Bool)

(assert (=> bm!192604 m!3322215))

(declare-fun m!3322217 () Bool)

(assert (=> b!2933150 m!3322217))

(assert (=> b!2933150 m!3322185))

(declare-fun m!3322219 () Bool)

(assert (=> bm!192605 m!3322219))

(declare-fun m!3322221 () Bool)

(assert (=> d!839555 m!3322221))

(assert (=> d!839555 m!3322103))

(declare-fun m!3322223 () Bool)

(assert (=> bm!192609 m!3322223))

(declare-fun m!3322225 () Bool)

(assert (=> bm!192608 m!3322225))

(declare-fun m!3322227 () Bool)

(assert (=> bm!192607 m!3322227))

(assert (=> b!2932918 d!839555))

(declare-fun d!839557 () Bool)

(assert (=> d!839557 (= (matchR!3940 lt!1028362 (_2!20015 lt!1028361)) (matchR!3940 (simplify!65 lt!1028362) (_2!20015 lt!1028361)))))

(declare-fun lt!1028443 () Unit!48471)

(declare-fun choose!17341 (Regex!9058 List!34923) Unit!48471)

(assert (=> d!839557 (= lt!1028443 (choose!17341 lt!1028362 (_2!20015 lt!1028361)))))

(assert (=> d!839557 (validRegex!3791 lt!1028362)))

(assert (=> d!839557 (= (lemmaSimplifySound!61 lt!1028362 (_2!20015 lt!1028361)) lt!1028443)))

(declare-fun bs!525315 () Bool)

(assert (= bs!525315 d!839557))

(assert (=> bs!525315 m!3322091))

(declare-fun m!3322239 () Bool)

(assert (=> bs!525315 m!3322239))

(declare-fun m!3322241 () Bool)

(assert (=> bs!525315 m!3322241))

(assert (=> bs!525315 m!3322123))

(assert (=> bs!525315 m!3322091))

(declare-fun m!3322243 () Bool)

(assert (=> bs!525315 m!3322243))

(assert (=> b!2932918 d!839557))

(declare-fun b!2933173 () Bool)

(declare-fun c!479118 () Bool)

(declare-fun call!192618 () Bool)

(assert (=> b!2933173 (= c!479118 call!192618)))

(declare-fun e!1849344 () Regex!9058)

(declare-fun e!1849345 () Regex!9058)

(assert (=> b!2933173 (= e!1849344 e!1849345)))

(declare-fun d!839565 () Bool)

(declare-fun e!1849336 () Bool)

(assert (=> d!839565 e!1849336))

(declare-fun res!1210927 () Bool)

(assert (=> d!839565 (=> (not res!1210927) (not e!1849336))))

(declare-fun lt!1028446 () Regex!9058)

(assert (=> d!839565 (= res!1210927 (validRegex!3791 lt!1028446))))

(declare-fun e!1849348 () Regex!9058)

(assert (=> d!839565 (= lt!1028446 e!1849348)))

(declare-fun c!479122 () Bool)

(assert (=> d!839565 (= c!479122 (is-EmptyLang!9058 lt!1028362))))

(assert (=> d!839565 (validRegex!3791 lt!1028362)))

(assert (=> d!839565 (= (simplify!65 lt!1028362) lt!1028446)))

(declare-fun b!2933174 () Bool)

(declare-fun e!1849346 () Regex!9058)

(declare-fun lt!1028447 () Regex!9058)

(assert (=> b!2933174 (= e!1849346 lt!1028447)))

(declare-fun call!192622 () Bool)

(declare-fun c!479117 () Bool)

(declare-fun lt!1028449 () Regex!9058)

(declare-fun c!479120 () Bool)

(declare-fun bm!192611 () Bool)

(declare-fun lt!1028444 () Regex!9058)

(declare-fun lt!1028448 () Regex!9058)

(assert (=> bm!192611 (= call!192622 (isEmptyLang!197 (ite c!479117 lt!1028449 (ite c!479120 lt!1028444 lt!1028448))))))

(declare-fun b!2933175 () Bool)

(assert (=> b!2933175 (= e!1849336 (= (nullable!2852 lt!1028446) (nullable!2852 lt!1028362)))))

(declare-fun b!2933176 () Bool)

(declare-fun e!1849337 () Regex!9058)

(assert (=> b!2933176 (= e!1849337 lt!1028362)))

(declare-fun b!2933177 () Bool)

(declare-fun e!1849341 () Regex!9058)

(declare-fun lt!1028445 () Regex!9058)

(assert (=> b!2933177 (= e!1849341 (Union!9058 lt!1028445 lt!1028444))))

(declare-fun b!2933178 () Bool)

(assert (=> b!2933178 (= c!479120 (is-Union!9058 lt!1028362))))

(declare-fun e!1849343 () Regex!9058)

(declare-fun e!1849347 () Regex!9058)

(assert (=> b!2933178 (= e!1849343 e!1849347)))

(declare-fun b!2933179 () Bool)

(declare-fun e!1849339 () Regex!9058)

(assert (=> b!2933179 (= e!1849347 e!1849339)))

(declare-fun call!192617 () Regex!9058)

(assert (=> b!2933179 (= lt!1028445 call!192617)))

(declare-fun call!192621 () Regex!9058)

(assert (=> b!2933179 (= lt!1028444 call!192621)))

(declare-fun c!479115 () Bool)

(declare-fun call!192619 () Bool)

(assert (=> b!2933179 (= c!479115 call!192619)))

(declare-fun b!2933180 () Bool)

(declare-fun c!479123 () Bool)

(assert (=> b!2933180 (= c!479123 (is-EmptyExpr!9058 lt!1028362))))

(declare-fun e!1849349 () Regex!9058)

(assert (=> b!2933180 (= e!1849337 e!1849349)))

(declare-fun b!2933181 () Bool)

(declare-fun c!479114 () Bool)

(declare-fun e!1849340 () Bool)

(assert (=> b!2933181 (= c!479114 e!1849340)))

(declare-fun res!1210928 () Bool)

(assert (=> b!2933181 (=> res!1210928 e!1849340)))

(assert (=> b!2933181 (= res!1210928 call!192622)))

(declare-fun call!192616 () Regex!9058)

(assert (=> b!2933181 (= lt!1028449 call!192616)))

(declare-fun e!1849338 () Regex!9058)

(assert (=> b!2933181 (= e!1849343 e!1849338)))

(declare-fun b!2933182 () Bool)

(assert (=> b!2933182 (= e!1849346 (Concat!14379 lt!1028447 lt!1028448))))

(declare-fun bm!192612 () Bool)

(assert (=> bm!192612 (= call!192617 (simplify!65 (ite c!479120 (regOne!18629 lt!1028362) (regTwo!18628 lt!1028362))))))

(declare-fun b!2933183 () Bool)

(assert (=> b!2933183 (= e!1849345 e!1849346)))

(declare-fun c!479116 () Bool)

(assert (=> b!2933183 (= c!479116 (isEmptyExpr!282 lt!1028448))))

(declare-fun bm!192613 () Bool)

(declare-fun call!192620 () Bool)

(assert (=> bm!192613 (= call!192620 call!192622)))

(declare-fun b!2933184 () Bool)

(assert (=> b!2933184 (= e!1849338 (Star!9058 lt!1028449))))

(declare-fun b!2933185 () Bool)

(assert (=> b!2933185 (= e!1849347 e!1849344)))

(assert (=> b!2933185 (= lt!1028447 call!192621)))

(assert (=> b!2933185 (= lt!1028448 call!192617)))

(declare-fun res!1210926 () Bool)

(assert (=> b!2933185 (= res!1210926 call!192619)))

(declare-fun e!1849342 () Bool)

(assert (=> b!2933185 (=> res!1210926 e!1849342)))

(declare-fun c!479113 () Bool)

(assert (=> b!2933185 (= c!479113 e!1849342)))

(declare-fun bm!192614 () Bool)

(assert (=> bm!192614 (= call!192616 (simplify!65 (ite c!479117 (reg!9387 lt!1028362) (ite c!479120 (regTwo!18629 lt!1028362) (regOne!18628 lt!1028362)))))))

(declare-fun b!2933186 () Bool)

(assert (=> b!2933186 (= e!1849349 e!1849343)))

(assert (=> b!2933186 (= c!479117 (is-Star!9058 lt!1028362))))

(declare-fun bm!192615 () Bool)

(assert (=> bm!192615 (= call!192618 (isEmptyExpr!282 (ite c!479117 lt!1028449 lt!1028447)))))

(declare-fun b!2933187 () Bool)

(assert (=> b!2933187 (= e!1849345 lt!1028448)))

(declare-fun b!2933188 () Bool)

(assert (=> b!2933188 (= e!1849338 EmptyExpr!9058)))

(declare-fun b!2933189 () Bool)

(assert (=> b!2933189 (= e!1849349 EmptyExpr!9058)))

(declare-fun b!2933190 () Bool)

(assert (=> b!2933190 (= e!1849348 EmptyLang!9058)))

(declare-fun b!2933191 () Bool)

(assert (=> b!2933191 (= e!1849344 EmptyLang!9058)))

(declare-fun bm!192616 () Bool)

(assert (=> bm!192616 (= call!192619 (isEmptyLang!197 (ite c!479120 lt!1028445 lt!1028447)))))

(declare-fun b!2933192 () Bool)

(assert (=> b!2933192 (= e!1849341 lt!1028445)))

(declare-fun bm!192617 () Bool)

(assert (=> bm!192617 (= call!192621 call!192616)))

(declare-fun b!2933193 () Bool)

(assert (=> b!2933193 (= e!1849339 lt!1028444)))

(declare-fun b!2933194 () Bool)

(assert (=> b!2933194 (= e!1849340 call!192618)))

(declare-fun b!2933195 () Bool)

(assert (=> b!2933195 (= e!1849342 call!192620)))

(declare-fun b!2933196 () Bool)

(declare-fun c!479121 () Bool)

(assert (=> b!2933196 (= c!479121 call!192620)))

(assert (=> b!2933196 (= e!1849339 e!1849341)))

(declare-fun b!2933197 () Bool)

(assert (=> b!2933197 (= e!1849348 e!1849337)))

(declare-fun c!479119 () Bool)

(assert (=> b!2933197 (= c!479119 (is-ElementMatch!9058 lt!1028362))))

(assert (= (and d!839565 c!479122) b!2933190))

(assert (= (and d!839565 (not c!479122)) b!2933197))

(assert (= (and b!2933197 c!479119) b!2933176))

(assert (= (and b!2933197 (not c!479119)) b!2933180))

(assert (= (and b!2933180 c!479123) b!2933189))

(assert (= (and b!2933180 (not c!479123)) b!2933186))

(assert (= (and b!2933186 c!479117) b!2933181))

(assert (= (and b!2933186 (not c!479117)) b!2933178))

(assert (= (and b!2933181 (not res!1210928)) b!2933194))

(assert (= (and b!2933181 c!479114) b!2933188))

(assert (= (and b!2933181 (not c!479114)) b!2933184))

(assert (= (and b!2933178 c!479120) b!2933179))

(assert (= (and b!2933178 (not c!479120)) b!2933185))

(assert (= (and b!2933179 c!479115) b!2933193))

(assert (= (and b!2933179 (not c!479115)) b!2933196))

(assert (= (and b!2933196 c!479121) b!2933192))

(assert (= (and b!2933196 (not c!479121)) b!2933177))

(assert (= (and b!2933185 (not res!1210926)) b!2933195))

(assert (= (and b!2933185 c!479113) b!2933191))

(assert (= (and b!2933185 (not c!479113)) b!2933173))

(assert (= (and b!2933173 c!479118) b!2933187))

(assert (= (and b!2933173 (not c!479118)) b!2933183))

(assert (= (and b!2933183 c!479116) b!2933174))

(assert (= (and b!2933183 (not c!479116)) b!2933182))

(assert (= (or b!2933179 b!2933185) bm!192612))

(assert (= (or b!2933179 b!2933185) bm!192617))

(assert (= (or b!2933196 b!2933195) bm!192613))

(assert (= (or b!2933179 b!2933185) bm!192616))

(assert (= (or b!2933194 b!2933173) bm!192615))

(assert (= (or b!2933181 bm!192617) bm!192614))

(assert (= (or b!2933181 bm!192613) bm!192611))

(assert (= (and d!839565 res!1210927) b!2933175))

(declare-fun m!3322245 () Bool)

(assert (=> b!2933183 m!3322245))

(declare-fun m!3322247 () Bool)

(assert (=> bm!192611 m!3322247))

(declare-fun m!3322249 () Bool)

(assert (=> b!2933175 m!3322249))

(declare-fun m!3322251 () Bool)

(assert (=> b!2933175 m!3322251))

(declare-fun m!3322253 () Bool)

(assert (=> bm!192612 m!3322253))

(declare-fun m!3322255 () Bool)

(assert (=> d!839565 m!3322255))

(assert (=> d!839565 m!3322241))

(declare-fun m!3322257 () Bool)

(assert (=> bm!192616 m!3322257))

(declare-fun m!3322259 () Bool)

(assert (=> bm!192615 m!3322259))

(declare-fun m!3322261 () Bool)

(assert (=> bm!192614 m!3322261))

(assert (=> b!2932918 d!839565))

(declare-fun d!839567 () Bool)

(declare-fun lt!1028452 () Int)

(assert (=> d!839567 (>= lt!1028452 0)))

(declare-fun e!1849352 () Int)

(assert (=> d!839567 (= lt!1028452 e!1849352)))

(declare-fun c!479126 () Bool)

(assert (=> d!839567 (= c!479126 (is-Nil!34799 s!11993))))

(assert (=> d!839567 (= (size!26454 s!11993) lt!1028452)))

(declare-fun b!2933202 () Bool)

(assert (=> b!2933202 (= e!1849352 0)))

(declare-fun b!2933203 () Bool)

(assert (=> b!2933203 (= e!1849352 (+ 1 (size!26454 (t!233988 s!11993))))))

(assert (= (and d!839567 c!479126) b!2933202))

(assert (= (and d!839567 (not c!479126)) b!2933203))

(declare-fun m!3322263 () Bool)

(assert (=> b!2933203 m!3322263))

(assert (=> b!2932918 d!839567))

(declare-fun d!839569 () Bool)

(declare-fun lt!1028453 () Int)

(assert (=> d!839569 (>= lt!1028453 0)))

(declare-fun e!1849353 () Int)

(assert (=> d!839569 (= lt!1028453 e!1849353)))

(declare-fun c!479127 () Bool)

(assert (=> d!839569 (= c!479127 (is-Nil!34799 (_2!20015 lt!1028361)))))

(assert (=> d!839569 (= (size!26454 (_2!20015 lt!1028361)) lt!1028453)))

(declare-fun b!2933204 () Bool)

(assert (=> b!2933204 (= e!1849353 0)))

(declare-fun b!2933205 () Bool)

(assert (=> b!2933205 (= e!1849353 (+ 1 (size!26454 (t!233988 (_2!20015 lt!1028361)))))))

(assert (= (and d!839569 c!479127) b!2933204))

(assert (= (and d!839569 (not c!479127)) b!2933205))

(declare-fun m!3322265 () Bool)

(assert (=> b!2933205 m!3322265))

(assert (=> b!2932918 d!839569))

(declare-fun d!839571 () Bool)

(assert (=> d!839571 (= (matchR!3940 (reg!9387 r!17423) (_1!20015 lt!1028361)) (matchR!3940 (simplify!65 (reg!9387 r!17423)) (_1!20015 lt!1028361)))))

(declare-fun lt!1028454 () Unit!48471)

(assert (=> d!839571 (= lt!1028454 (choose!17341 (reg!9387 r!17423) (_1!20015 lt!1028361)))))

(assert (=> d!839571 (validRegex!3791 (reg!9387 r!17423))))

(assert (=> d!839571 (= (lemmaSimplifySound!61 (reg!9387 r!17423) (_1!20015 lt!1028361)) lt!1028454)))

(declare-fun bs!525316 () Bool)

(assert (= bs!525316 d!839571))

(assert (=> bs!525316 m!3322083))

(declare-fun m!3322267 () Bool)

(assert (=> bs!525316 m!3322267))

(assert (=> bs!525316 m!3322103))

(assert (=> bs!525316 m!3322107))

(assert (=> bs!525316 m!3322083))

(declare-fun m!3322269 () Bool)

(assert (=> bs!525316 m!3322269))

(assert (=> b!2932918 d!839571))

(declare-fun b!2933206 () Bool)

(declare-fun e!1849359 () Bool)

(assert (=> b!2933206 (= e!1849359 (= (head!6522 (_1!20015 lt!1028361)) (c!479055 lt!1028368)))))

(declare-fun b!2933207 () Bool)

(declare-fun e!1849354 () Bool)

(declare-fun lt!1028455 () Bool)

(declare-fun call!192623 () Bool)

(assert (=> b!2933207 (= e!1849354 (= lt!1028455 call!192623))))

(declare-fun b!2933208 () Bool)

(declare-fun e!1849357 () Bool)

(declare-fun e!1849355 () Bool)

(assert (=> b!2933208 (= e!1849357 e!1849355)))

(declare-fun res!1210934 () Bool)

(assert (=> b!2933208 (=> res!1210934 e!1849355)))

(assert (=> b!2933208 (= res!1210934 call!192623)))

(declare-fun b!2933209 () Bool)

(declare-fun e!1849358 () Bool)

(assert (=> b!2933209 (= e!1849358 (nullable!2852 lt!1028368))))

(declare-fun b!2933210 () Bool)

(assert (=> b!2933210 (= e!1849355 (not (= (head!6522 (_1!20015 lt!1028361)) (c!479055 lt!1028368))))))

(declare-fun b!2933211 () Bool)

(assert (=> b!2933211 (= e!1849358 (matchR!3940 (derivativeStep!2463 lt!1028368 (head!6522 (_1!20015 lt!1028361))) (tail!4748 (_1!20015 lt!1028361))))))

(declare-fun d!839573 () Bool)

(assert (=> d!839573 e!1849354))

(declare-fun c!479129 () Bool)

(assert (=> d!839573 (= c!479129 (is-EmptyExpr!9058 lt!1028368))))

(assert (=> d!839573 (= lt!1028455 e!1849358)))

(declare-fun c!479128 () Bool)

(assert (=> d!839573 (= c!479128 (isEmpty!19054 (_1!20015 lt!1028361)))))

(assert (=> d!839573 (validRegex!3791 lt!1028368)))

(assert (=> d!839573 (= (matchR!3940 lt!1028368 (_1!20015 lt!1028361)) lt!1028455)))

(declare-fun b!2933212 () Bool)

(declare-fun e!1849356 () Bool)

(assert (=> b!2933212 (= e!1849356 (not lt!1028455))))

(declare-fun b!2933213 () Bool)

(declare-fun res!1210929 () Bool)

(declare-fun e!1849360 () Bool)

(assert (=> b!2933213 (=> res!1210929 e!1849360)))

(assert (=> b!2933213 (= res!1210929 e!1849359)))

(declare-fun res!1210930 () Bool)

(assert (=> b!2933213 (=> (not res!1210930) (not e!1849359))))

(assert (=> b!2933213 (= res!1210930 lt!1028455)))

(declare-fun bm!192618 () Bool)

(assert (=> bm!192618 (= call!192623 (isEmpty!19054 (_1!20015 lt!1028361)))))

(declare-fun b!2933214 () Bool)

(declare-fun res!1210935 () Bool)

(assert (=> b!2933214 (=> res!1210935 e!1849360)))

(assert (=> b!2933214 (= res!1210935 (not (is-ElementMatch!9058 lt!1028368)))))

(assert (=> b!2933214 (= e!1849356 e!1849360)))

(declare-fun b!2933215 () Bool)

(declare-fun res!1210933 () Bool)

(assert (=> b!2933215 (=> (not res!1210933) (not e!1849359))))

(assert (=> b!2933215 (= res!1210933 (not call!192623))))

(declare-fun b!2933216 () Bool)

(declare-fun res!1210931 () Bool)

(assert (=> b!2933216 (=> res!1210931 e!1849355)))

(assert (=> b!2933216 (= res!1210931 (not (isEmpty!19054 (tail!4748 (_1!20015 lt!1028361)))))))

(declare-fun b!2933217 () Bool)

(assert (=> b!2933217 (= e!1849360 e!1849357)))

(declare-fun res!1210936 () Bool)

(assert (=> b!2933217 (=> (not res!1210936) (not e!1849357))))

(assert (=> b!2933217 (= res!1210936 (not lt!1028455))))

(declare-fun b!2933218 () Bool)

(assert (=> b!2933218 (= e!1849354 e!1849356)))

(declare-fun c!479130 () Bool)

(assert (=> b!2933218 (= c!479130 (is-EmptyLang!9058 lt!1028368))))

(declare-fun b!2933219 () Bool)

(declare-fun res!1210932 () Bool)

(assert (=> b!2933219 (=> (not res!1210932) (not e!1849359))))

(assert (=> b!2933219 (= res!1210932 (isEmpty!19054 (tail!4748 (_1!20015 lt!1028361))))))

(assert (= (and d!839573 c!479128) b!2933209))

(assert (= (and d!839573 (not c!479128)) b!2933211))

(assert (= (and d!839573 c!479129) b!2933207))

(assert (= (and d!839573 (not c!479129)) b!2933218))

(assert (= (and b!2933218 c!479130) b!2933212))

(assert (= (and b!2933218 (not c!479130)) b!2933214))

(assert (= (and b!2933214 (not res!1210935)) b!2933213))

(assert (= (and b!2933213 res!1210930) b!2933215))

(assert (= (and b!2933215 res!1210933) b!2933219))

(assert (= (and b!2933219 res!1210932) b!2933206))

(assert (= (and b!2933213 (not res!1210929)) b!2933217))

(assert (= (and b!2933217 res!1210936) b!2933208))

(assert (= (and b!2933208 (not res!1210934)) b!2933216))

(assert (= (and b!2933216 (not res!1210931)) b!2933210))

(assert (= (or b!2933207 b!2933208 b!2933215) bm!192618))

(assert (=> b!2933210 m!3322173))

(assert (=> d!839573 m!3322175))

(declare-fun m!3322271 () Bool)

(assert (=> d!839573 m!3322271))

(assert (=> b!2933211 m!3322173))

(assert (=> b!2933211 m!3322173))

(declare-fun m!3322273 () Bool)

(assert (=> b!2933211 m!3322273))

(assert (=> b!2933211 m!3322179))

(assert (=> b!2933211 m!3322273))

(assert (=> b!2933211 m!3322179))

(declare-fun m!3322275 () Bool)

(assert (=> b!2933211 m!3322275))

(assert (=> b!2933219 m!3322179))

(assert (=> b!2933219 m!3322179))

(assert (=> b!2933219 m!3322183))

(assert (=> b!2933206 m!3322173))

(declare-fun m!3322277 () Bool)

(assert (=> b!2933209 m!3322277))

(assert (=> bm!192618 m!3322175))

(assert (=> b!2933216 m!3322179))

(assert (=> b!2933216 m!3322179))

(assert (=> b!2933216 m!3322183))

(assert (=> b!2932918 d!839573))

(declare-fun d!839575 () Bool)

(assert (=> d!839575 (= (matchR!3940 (reg!9387 r!17423) (_1!20015 lt!1028361)) (matchRSpec!1195 (reg!9387 r!17423) (_1!20015 lt!1028361)))))

(declare-fun lt!1028458 () Unit!48471)

(declare-fun choose!17342 (Regex!9058 List!34923) Unit!48471)

(assert (=> d!839575 (= lt!1028458 (choose!17342 (reg!9387 r!17423) (_1!20015 lt!1028361)))))

(assert (=> d!839575 (validRegex!3791 (reg!9387 r!17423))))

(assert (=> d!839575 (= (mainMatchTheorem!1195 (reg!9387 r!17423) (_1!20015 lt!1028361)) lt!1028458)))

(declare-fun bs!525317 () Bool)

(assert (= bs!525317 d!839575))

(assert (=> bs!525317 m!3322107))

(declare-fun m!3322279 () Bool)

(assert (=> bs!525317 m!3322279))

(declare-fun m!3322281 () Bool)

(assert (=> bs!525317 m!3322281))

(assert (=> bs!525317 m!3322103))

(assert (=> b!2932924 d!839575))

(declare-fun b!2933220 () Bool)

(declare-fun e!1849366 () Bool)

(assert (=> b!2933220 (= e!1849366 (= (head!6522 (_2!20015 lt!1028361)) (c!479055 lt!1028362)))))

(declare-fun b!2933221 () Bool)

(declare-fun e!1849361 () Bool)

(declare-fun lt!1028459 () Bool)

(declare-fun call!192624 () Bool)

(assert (=> b!2933221 (= e!1849361 (= lt!1028459 call!192624))))

(declare-fun b!2933222 () Bool)

(declare-fun e!1849364 () Bool)

(declare-fun e!1849362 () Bool)

(assert (=> b!2933222 (= e!1849364 e!1849362)))

(declare-fun res!1210942 () Bool)

(assert (=> b!2933222 (=> res!1210942 e!1849362)))

(assert (=> b!2933222 (= res!1210942 call!192624)))

(declare-fun b!2933223 () Bool)

(declare-fun e!1849365 () Bool)

(assert (=> b!2933223 (= e!1849365 (nullable!2852 lt!1028362))))

(declare-fun b!2933224 () Bool)

(assert (=> b!2933224 (= e!1849362 (not (= (head!6522 (_2!20015 lt!1028361)) (c!479055 lt!1028362))))))

(declare-fun b!2933225 () Bool)

(assert (=> b!2933225 (= e!1849365 (matchR!3940 (derivativeStep!2463 lt!1028362 (head!6522 (_2!20015 lt!1028361))) (tail!4748 (_2!20015 lt!1028361))))))

(declare-fun d!839577 () Bool)

(assert (=> d!839577 e!1849361))

(declare-fun c!479132 () Bool)

(assert (=> d!839577 (= c!479132 (is-EmptyExpr!9058 lt!1028362))))

(assert (=> d!839577 (= lt!1028459 e!1849365)))

(declare-fun c!479131 () Bool)

(assert (=> d!839577 (= c!479131 (isEmpty!19054 (_2!20015 lt!1028361)))))

(assert (=> d!839577 (validRegex!3791 lt!1028362)))

(assert (=> d!839577 (= (matchR!3940 lt!1028362 (_2!20015 lt!1028361)) lt!1028459)))

(declare-fun b!2933226 () Bool)

(declare-fun e!1849363 () Bool)

(assert (=> b!2933226 (= e!1849363 (not lt!1028459))))

(declare-fun b!2933227 () Bool)

(declare-fun res!1210937 () Bool)

(declare-fun e!1849367 () Bool)

(assert (=> b!2933227 (=> res!1210937 e!1849367)))

(assert (=> b!2933227 (= res!1210937 e!1849366)))

(declare-fun res!1210938 () Bool)

(assert (=> b!2933227 (=> (not res!1210938) (not e!1849366))))

(assert (=> b!2933227 (= res!1210938 lt!1028459)))

(declare-fun bm!192619 () Bool)

(assert (=> bm!192619 (= call!192624 (isEmpty!19054 (_2!20015 lt!1028361)))))

(declare-fun b!2933228 () Bool)

(declare-fun res!1210943 () Bool)

(assert (=> b!2933228 (=> res!1210943 e!1849367)))

(assert (=> b!2933228 (= res!1210943 (not (is-ElementMatch!9058 lt!1028362)))))

(assert (=> b!2933228 (= e!1849363 e!1849367)))

(declare-fun b!2933229 () Bool)

(declare-fun res!1210941 () Bool)

(assert (=> b!2933229 (=> (not res!1210941) (not e!1849366))))

(assert (=> b!2933229 (= res!1210941 (not call!192624))))

(declare-fun b!2933230 () Bool)

(declare-fun res!1210939 () Bool)

(assert (=> b!2933230 (=> res!1210939 e!1849362)))

(assert (=> b!2933230 (= res!1210939 (not (isEmpty!19054 (tail!4748 (_2!20015 lt!1028361)))))))

(declare-fun b!2933231 () Bool)

(assert (=> b!2933231 (= e!1849367 e!1849364)))

(declare-fun res!1210944 () Bool)

(assert (=> b!2933231 (=> (not res!1210944) (not e!1849364))))

(assert (=> b!2933231 (= res!1210944 (not lt!1028459))))

(declare-fun b!2933232 () Bool)

(assert (=> b!2933232 (= e!1849361 e!1849363)))

(declare-fun c!479133 () Bool)

(assert (=> b!2933232 (= c!479133 (is-EmptyLang!9058 lt!1028362))))

(declare-fun b!2933233 () Bool)

(declare-fun res!1210940 () Bool)

(assert (=> b!2933233 (=> (not res!1210940) (not e!1849366))))

(assert (=> b!2933233 (= res!1210940 (isEmpty!19054 (tail!4748 (_2!20015 lt!1028361))))))

(assert (= (and d!839577 c!479131) b!2933223))

(assert (= (and d!839577 (not c!479131)) b!2933225))

(assert (= (and d!839577 c!479132) b!2933221))

(assert (= (and d!839577 (not c!479132)) b!2933232))

(assert (= (and b!2933232 c!479133) b!2933226))

(assert (= (and b!2933232 (not c!479133)) b!2933228))

(assert (= (and b!2933228 (not res!1210943)) b!2933227))

(assert (= (and b!2933227 res!1210938) b!2933229))

(assert (= (and b!2933229 res!1210941) b!2933233))

(assert (= (and b!2933233 res!1210940) b!2933220))

(assert (= (and b!2933227 (not res!1210937)) b!2933231))

(assert (= (and b!2933231 res!1210944) b!2933222))

(assert (= (and b!2933222 (not res!1210942)) b!2933230))

(assert (= (and b!2933230 (not res!1210939)) b!2933224))

(assert (= (or b!2933221 b!2933222 b!2933229) bm!192619))

(assert (=> b!2933224 m!3322197))

(assert (=> d!839577 m!3322199))

(assert (=> d!839577 m!3322241))

(assert (=> b!2933225 m!3322197))

(assert (=> b!2933225 m!3322197))

(declare-fun m!3322283 () Bool)

(assert (=> b!2933225 m!3322283))

(assert (=> b!2933225 m!3322205))

(assert (=> b!2933225 m!3322283))

(assert (=> b!2933225 m!3322205))

(declare-fun m!3322285 () Bool)

(assert (=> b!2933225 m!3322285))

(assert (=> b!2933233 m!3322205))

(assert (=> b!2933233 m!3322205))

(assert (=> b!2933233 m!3322209))

(assert (=> b!2933220 m!3322197))

(assert (=> b!2933223 m!3322251))

(assert (=> bm!192619 m!3322199))

(assert (=> b!2933230 m!3322205))

(assert (=> b!2933230 m!3322205))

(assert (=> b!2933230 m!3322209))

(assert (=> b!2932925 d!839577))

(declare-fun d!839579 () Bool)

(declare-fun choose!17346 (Int) Bool)

(assert (=> d!839579 (= (Exists!1420 lambda!109226) (choose!17346 lambda!109226))))

(declare-fun bs!525318 () Bool)

(assert (= bs!525318 d!839579))

(declare-fun m!3322287 () Bool)

(assert (=> bs!525318 m!3322287))

(assert (=> b!2932931 d!839579))

(declare-fun b!2933256 () Bool)

(declare-fun e!1849384 () Bool)

(declare-fun lt!1028471 () Option!6615)

(assert (=> b!2933256 (= e!1849384 (not (isDefined!5166 lt!1028471)))))

(declare-fun b!2933257 () Bool)

(declare-fun e!1849383 () Bool)

(assert (=> b!2933257 (= e!1849383 (matchR!3940 lt!1028362 s!11993))))

(declare-fun b!2933259 () Bool)

(declare-fun res!1210962 () Bool)

(declare-fun e!1849380 () Bool)

(assert (=> b!2933259 (=> (not res!1210962) (not e!1849380))))

(assert (=> b!2933259 (= res!1210962 (matchR!3940 (reg!9387 r!17423) (_1!20015 (get!10636 lt!1028471))))))

(declare-fun b!2933260 () Bool)

(declare-fun e!1849382 () Option!6615)

(declare-fun e!1849381 () Option!6615)

(assert (=> b!2933260 (= e!1849382 e!1849381)))

(declare-fun c!479139 () Bool)

(assert (=> b!2933260 (= c!479139 (is-Nil!34799 s!11993))))

(declare-fun b!2933261 () Bool)

(assert (=> b!2933261 (= e!1849382 (Some!6614 (tuple2!33767 Nil!34799 s!11993)))))

(declare-fun b!2933262 () Bool)

(declare-fun lt!1028469 () Unit!48471)

(declare-fun lt!1028470 () Unit!48471)

(assert (=> b!2933262 (= lt!1028469 lt!1028470)))

(declare-fun ++!8304 (List!34923 List!34923) List!34923)

(assert (=> b!2933262 (= (++!8304 (++!8304 Nil!34799 (Cons!34799 (h!40219 s!11993) Nil!34799)) (t!233988 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!935 (List!34923 C!18302 List!34923 List!34923) Unit!48471)

(assert (=> b!2933262 (= lt!1028470 (lemmaMoveElementToOtherListKeepsConcatEq!935 Nil!34799 (h!40219 s!11993) (t!233988 s!11993) s!11993))))

(assert (=> b!2933262 (= e!1849381 (findConcatSeparation!1009 (reg!9387 r!17423) lt!1028362 (++!8304 Nil!34799 (Cons!34799 (h!40219 s!11993) Nil!34799)) (t!233988 s!11993) s!11993))))

(declare-fun b!2933258 () Bool)

(assert (=> b!2933258 (= e!1849381 None!6614)))

(declare-fun d!839581 () Bool)

(assert (=> d!839581 e!1849384))

(declare-fun res!1210963 () Bool)

(assert (=> d!839581 (=> res!1210963 e!1849384)))

(assert (=> d!839581 (= res!1210963 e!1849380)))

(declare-fun res!1210961 () Bool)

(assert (=> d!839581 (=> (not res!1210961) (not e!1849380))))

(assert (=> d!839581 (= res!1210961 (isDefined!5166 lt!1028471))))

(assert (=> d!839581 (= lt!1028471 e!1849382)))

(declare-fun c!479138 () Bool)

(assert (=> d!839581 (= c!479138 e!1849383)))

(declare-fun res!1210959 () Bool)

(assert (=> d!839581 (=> (not res!1210959) (not e!1849383))))

(assert (=> d!839581 (= res!1210959 (matchR!3940 (reg!9387 r!17423) Nil!34799))))

(assert (=> d!839581 (validRegex!3791 (reg!9387 r!17423))))

(assert (=> d!839581 (= (findConcatSeparation!1009 (reg!9387 r!17423) lt!1028362 Nil!34799 s!11993 s!11993) lt!1028471)))

(declare-fun b!2933263 () Bool)

(assert (=> b!2933263 (= e!1849380 (= (++!8304 (_1!20015 (get!10636 lt!1028471)) (_2!20015 (get!10636 lt!1028471))) s!11993))))

(declare-fun b!2933264 () Bool)

(declare-fun res!1210960 () Bool)

(assert (=> b!2933264 (=> (not res!1210960) (not e!1849380))))

(assert (=> b!2933264 (= res!1210960 (matchR!3940 lt!1028362 (_2!20015 (get!10636 lt!1028471))))))

(assert (= (and d!839581 res!1210959) b!2933257))

(assert (= (and d!839581 c!479138) b!2933261))

(assert (= (and d!839581 (not c!479138)) b!2933260))

(assert (= (and b!2933260 c!479139) b!2933258))

(assert (= (and b!2933260 (not c!479139)) b!2933262))

(assert (= (and d!839581 res!1210961) b!2933259))

(assert (= (and b!2933259 res!1210962) b!2933264))

(assert (= (and b!2933264 res!1210960) b!2933263))

(assert (= (and d!839581 (not res!1210963)) b!2933256))

(declare-fun m!3322295 () Bool)

(assert (=> b!2933262 m!3322295))

(assert (=> b!2933262 m!3322295))

(declare-fun m!3322297 () Bool)

(assert (=> b!2933262 m!3322297))

(declare-fun m!3322299 () Bool)

(assert (=> b!2933262 m!3322299))

(assert (=> b!2933262 m!3322295))

(declare-fun m!3322301 () Bool)

(assert (=> b!2933262 m!3322301))

(declare-fun m!3322303 () Bool)

(assert (=> b!2933256 m!3322303))

(declare-fun m!3322305 () Bool)

(assert (=> b!2933263 m!3322305))

(declare-fun m!3322307 () Bool)

(assert (=> b!2933263 m!3322307))

(assert (=> d!839581 m!3322303))

(declare-fun m!3322309 () Bool)

(assert (=> d!839581 m!3322309))

(assert (=> d!839581 m!3322103))

(assert (=> b!2933264 m!3322305))

(declare-fun m!3322311 () Bool)

(assert (=> b!2933264 m!3322311))

(assert (=> b!2933259 m!3322305))

(declare-fun m!3322313 () Bool)

(assert (=> b!2933259 m!3322313))

(declare-fun m!3322315 () Bool)

(assert (=> b!2933257 m!3322315))

(assert (=> b!2932931 d!839581))

(declare-fun d!839585 () Bool)

(declare-fun isEmpty!19056 (Option!6615) Bool)

(assert (=> d!839585 (= (isDefined!5166 lt!1028363) (not (isEmpty!19056 lt!1028363)))))

(declare-fun bs!525322 () Bool)

(assert (= bs!525322 d!839585))

(declare-fun m!3322317 () Bool)

(assert (=> bs!525322 m!3322317))

(assert (=> b!2932931 d!839585))

(declare-fun bs!525323 () Bool)

(declare-fun d!839587 () Bool)

(assert (= bs!525323 (and d!839587 b!2932931)))

(declare-fun lambda!109248 () Int)

(assert (=> bs!525323 (= (= (Star!9058 (reg!9387 r!17423)) lt!1028362) (= lambda!109248 lambda!109225))))

(assert (=> bs!525323 (not (= lambda!109248 lambda!109226))))

(assert (=> d!839587 true))

(assert (=> d!839587 true))

(declare-fun lambda!109249 () Int)

(assert (=> bs!525323 (not (= lambda!109249 lambda!109225))))

(assert (=> bs!525323 (= (= (Star!9058 (reg!9387 r!17423)) lt!1028362) (= lambda!109249 lambda!109226))))

(declare-fun bs!525324 () Bool)

(assert (= bs!525324 d!839587))

(assert (=> bs!525324 (not (= lambda!109249 lambda!109248))))

(assert (=> d!839587 true))

(assert (=> d!839587 true))

(assert (=> d!839587 (= (Exists!1420 lambda!109248) (Exists!1420 lambda!109249))))

(declare-fun lt!1028474 () Unit!48471)

(declare-fun choose!17347 (Regex!9058 List!34923) Unit!48471)

(assert (=> d!839587 (= lt!1028474 (choose!17347 (reg!9387 r!17423) s!11993))))

(assert (=> d!839587 (validRegex!3791 (reg!9387 r!17423))))

(assert (=> d!839587 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!231 (reg!9387 r!17423) s!11993) lt!1028474)))

(declare-fun m!3322319 () Bool)

(assert (=> bs!525324 m!3322319))

(declare-fun m!3322321 () Bool)

(assert (=> bs!525324 m!3322321))

(declare-fun m!3322323 () Bool)

(assert (=> bs!525324 m!3322323))

(assert (=> bs!525324 m!3322103))

(assert (=> b!2932931 d!839587))

(declare-fun bs!525325 () Bool)

(declare-fun d!839589 () Bool)

(assert (= bs!525325 (and d!839589 b!2932931)))

(declare-fun lambda!109252 () Int)

(assert (=> bs!525325 (= lambda!109252 lambda!109225)))

(assert (=> bs!525325 (not (= lambda!109252 lambda!109226))))

(declare-fun bs!525326 () Bool)

(assert (= bs!525326 (and d!839589 d!839587)))

(assert (=> bs!525326 (= (= lt!1028362 (Star!9058 (reg!9387 r!17423))) (= lambda!109252 lambda!109248))))

(assert (=> bs!525326 (not (= lambda!109252 lambda!109249))))

(assert (=> d!839589 true))

(assert (=> d!839589 true))

(assert (=> d!839589 true))

(assert (=> d!839589 (= (isDefined!5166 (findConcatSeparation!1009 (reg!9387 r!17423) lt!1028362 Nil!34799 s!11993 s!11993)) (Exists!1420 lambda!109252))))

(declare-fun lt!1028483 () Unit!48471)

(declare-fun choose!17348 (Regex!9058 Regex!9058 List!34923) Unit!48471)

(assert (=> d!839589 (= lt!1028483 (choose!17348 (reg!9387 r!17423) lt!1028362 s!11993))))

(assert (=> d!839589 (validRegex!3791 (reg!9387 r!17423))))

(assert (=> d!839589 (= (lemmaFindConcatSeparationEquivalentToExists!791 (reg!9387 r!17423) lt!1028362 s!11993) lt!1028483)))

(declare-fun bs!525327 () Bool)

(assert (= bs!525327 d!839589))

(declare-fun m!3322325 () Bool)

(assert (=> bs!525327 m!3322325))

(assert (=> bs!525327 m!3322103))

(assert (=> bs!525327 m!3322119))

(assert (=> bs!525327 m!3322119))

(declare-fun m!3322327 () Bool)

(assert (=> bs!525327 m!3322327))

(declare-fun m!3322329 () Bool)

(assert (=> bs!525327 m!3322329))

(assert (=> b!2932931 d!839589))

(declare-fun d!839591 () Bool)

(assert (=> d!839591 (= (Exists!1420 lambda!109225) (choose!17346 lambda!109225))))

(declare-fun bs!525328 () Bool)

(assert (= bs!525328 d!839591))

(declare-fun m!3322331 () Bool)

(assert (=> bs!525328 m!3322331))

(assert (=> b!2932931 d!839591))

(declare-fun d!839593 () Bool)

(assert (=> d!839593 (= (isEmpty!19054 s!11993) (is-Nil!34799 s!11993))))

(assert (=> b!2932921 d!839593))

(declare-fun bs!525330 () Bool)

(declare-fun b!2933343 () Bool)

(assert (= bs!525330 (and b!2933343 b!2932931)))

(declare-fun lambda!109257 () Int)

(assert (=> bs!525330 (= (= r!17423 lt!1028362) (= lambda!109257 lambda!109226))))

(assert (=> bs!525330 (not (= lambda!109257 lambda!109225))))

(declare-fun bs!525331 () Bool)

(assert (= bs!525331 (and b!2933343 d!839587)))

(assert (=> bs!525331 (not (= lambda!109257 lambda!109248))))

(assert (=> bs!525331 (= (= r!17423 (Star!9058 (reg!9387 r!17423))) (= lambda!109257 lambda!109249))))

(declare-fun bs!525332 () Bool)

(assert (= bs!525332 (and b!2933343 d!839589)))

(assert (=> bs!525332 (not (= lambda!109257 lambda!109252))))

(assert (=> b!2933343 true))

(assert (=> b!2933343 true))

(declare-fun bs!525333 () Bool)

(declare-fun b!2933348 () Bool)

(assert (= bs!525333 (and b!2933348 b!2932931)))

(declare-fun lambda!109258 () Int)

(assert (=> bs!525333 (not (= lambda!109258 lambda!109226))))

(assert (=> bs!525333 (not (= lambda!109258 lambda!109225))))

(declare-fun bs!525334 () Bool)

(assert (= bs!525334 (and b!2933348 d!839587)))

(assert (=> bs!525334 (not (= lambda!109258 lambda!109248))))

(assert (=> bs!525334 (not (= lambda!109258 lambda!109249))))

(declare-fun bs!525335 () Bool)

(assert (= bs!525335 (and b!2933348 d!839589)))

(assert (=> bs!525335 (not (= lambda!109258 lambda!109252))))

(declare-fun bs!525336 () Bool)

(assert (= bs!525336 (and b!2933348 b!2933343)))

(assert (=> bs!525336 (not (= lambda!109258 lambda!109257))))

(assert (=> b!2933348 true))

(assert (=> b!2933348 true))

(declare-fun b!2933338 () Bool)

(declare-fun e!1849429 () Bool)

(declare-fun e!1849425 () Bool)

(assert (=> b!2933338 (= e!1849429 e!1849425)))

(declare-fun res!1211011 () Bool)

(assert (=> b!2933338 (= res!1211011 (matchRSpec!1195 (regOne!18629 r!17423) s!11993))))

(assert (=> b!2933338 (=> res!1211011 e!1849425)))

(declare-fun b!2933339 () Bool)

(declare-fun c!479154 () Bool)

(assert (=> b!2933339 (= c!479154 (is-ElementMatch!9058 r!17423))))

(declare-fun e!1849427 () Bool)

(declare-fun e!1849428 () Bool)

(assert (=> b!2933339 (= e!1849427 e!1849428)))

(declare-fun b!2933340 () Bool)

(assert (=> b!2933340 (= e!1849428 (= s!11993 (Cons!34799 (c!479055 r!17423) Nil!34799)))))

(declare-fun b!2933341 () Bool)

(declare-fun e!1849426 () Bool)

(assert (=> b!2933341 (= e!1849426 e!1849427)))

(declare-fun res!1211010 () Bool)

(assert (=> b!2933341 (= res!1211010 (not (is-EmptyLang!9058 r!17423)))))

(assert (=> b!2933341 (=> (not res!1211010) (not e!1849427))))

(declare-fun b!2933342 () Bool)

(assert (=> b!2933342 (= e!1849425 (matchRSpec!1195 (regTwo!18629 r!17423) s!11993))))

(declare-fun d!839595 () Bool)

(declare-fun c!479155 () Bool)

(assert (=> d!839595 (= c!479155 (is-EmptyExpr!9058 r!17423))))

(assert (=> d!839595 (= (matchRSpec!1195 r!17423 s!11993) e!1849426)))

(declare-fun e!1849430 () Bool)

(declare-fun call!192630 () Bool)

(assert (=> b!2933343 (= e!1849430 call!192630)))

(declare-fun b!2933344 () Bool)

(declare-fun res!1211009 () Bool)

(assert (=> b!2933344 (=> res!1211009 e!1849430)))

(declare-fun call!192629 () Bool)

(assert (=> b!2933344 (= res!1211009 call!192629)))

(declare-fun e!1849424 () Bool)

(assert (=> b!2933344 (= e!1849424 e!1849430)))

(declare-fun b!2933345 () Bool)

(assert (=> b!2933345 (= e!1849429 e!1849424)))

(declare-fun c!479156 () Bool)

(assert (=> b!2933345 (= c!479156 (is-Star!9058 r!17423))))

(declare-fun b!2933346 () Bool)

(assert (=> b!2933346 (= e!1849426 call!192629)))

(declare-fun b!2933347 () Bool)

(declare-fun c!479157 () Bool)

(assert (=> b!2933347 (= c!479157 (is-Union!9058 r!17423))))

(assert (=> b!2933347 (= e!1849428 e!1849429)))

(declare-fun bm!192624 () Bool)

(assert (=> bm!192624 (= call!192630 (Exists!1420 (ite c!479156 lambda!109257 lambda!109258)))))

(declare-fun bm!192625 () Bool)

(assert (=> bm!192625 (= call!192629 (isEmpty!19054 s!11993))))

(assert (=> b!2933348 (= e!1849424 call!192630)))

(assert (= (and d!839595 c!479155) b!2933346))

(assert (= (and d!839595 (not c!479155)) b!2933341))

(assert (= (and b!2933341 res!1211010) b!2933339))

(assert (= (and b!2933339 c!479154) b!2933340))

(assert (= (and b!2933339 (not c!479154)) b!2933347))

(assert (= (and b!2933347 c!479157) b!2933338))

(assert (= (and b!2933347 (not c!479157)) b!2933345))

(assert (= (and b!2933338 (not res!1211011)) b!2933342))

(assert (= (and b!2933345 c!479156) b!2933344))

(assert (= (and b!2933345 (not c!479156)) b!2933348))

(assert (= (and b!2933344 (not res!1211009)) b!2933343))

(assert (= (or b!2933343 b!2933348) bm!192624))

(assert (= (or b!2933346 b!2933344) bm!192625))

(declare-fun m!3322357 () Bool)

(assert (=> b!2933338 m!3322357))

(declare-fun m!3322359 () Bool)

(assert (=> b!2933342 m!3322359))

(declare-fun m!3322361 () Bool)

(assert (=> bm!192624 m!3322361))

(assert (=> bm!192625 m!3322105))

(assert (=> b!2932926 d!839595))

(declare-fun b!2933349 () Bool)

(declare-fun e!1849436 () Bool)

(assert (=> b!2933349 (= e!1849436 (= (head!6522 s!11993) (c!479055 r!17423)))))

(declare-fun b!2933350 () Bool)

(declare-fun e!1849431 () Bool)

(declare-fun lt!1028487 () Bool)

(declare-fun call!192631 () Bool)

(assert (=> b!2933350 (= e!1849431 (= lt!1028487 call!192631))))

(declare-fun b!2933351 () Bool)

(declare-fun e!1849434 () Bool)

(declare-fun e!1849432 () Bool)

(assert (=> b!2933351 (= e!1849434 e!1849432)))

(declare-fun res!1211017 () Bool)

(assert (=> b!2933351 (=> res!1211017 e!1849432)))

(assert (=> b!2933351 (= res!1211017 call!192631)))

(declare-fun b!2933352 () Bool)

(declare-fun e!1849435 () Bool)

(assert (=> b!2933352 (= e!1849435 (nullable!2852 r!17423))))

(declare-fun b!2933353 () Bool)

(assert (=> b!2933353 (= e!1849432 (not (= (head!6522 s!11993) (c!479055 r!17423))))))

(declare-fun b!2933354 () Bool)

(assert (=> b!2933354 (= e!1849435 (matchR!3940 (derivativeStep!2463 r!17423 (head!6522 s!11993)) (tail!4748 s!11993)))))

(declare-fun d!839601 () Bool)

(assert (=> d!839601 e!1849431))

(declare-fun c!479159 () Bool)

(assert (=> d!839601 (= c!479159 (is-EmptyExpr!9058 r!17423))))

(assert (=> d!839601 (= lt!1028487 e!1849435)))

(declare-fun c!479158 () Bool)

(assert (=> d!839601 (= c!479158 (isEmpty!19054 s!11993))))

(assert (=> d!839601 (validRegex!3791 r!17423)))

(assert (=> d!839601 (= (matchR!3940 r!17423 s!11993) lt!1028487)))

(declare-fun b!2933355 () Bool)

(declare-fun e!1849433 () Bool)

(assert (=> b!2933355 (= e!1849433 (not lt!1028487))))

(declare-fun b!2933356 () Bool)

(declare-fun res!1211012 () Bool)

(declare-fun e!1849437 () Bool)

(assert (=> b!2933356 (=> res!1211012 e!1849437)))

(assert (=> b!2933356 (= res!1211012 e!1849436)))

(declare-fun res!1211013 () Bool)

(assert (=> b!2933356 (=> (not res!1211013) (not e!1849436))))

(assert (=> b!2933356 (= res!1211013 lt!1028487)))

(declare-fun bm!192626 () Bool)

(assert (=> bm!192626 (= call!192631 (isEmpty!19054 s!11993))))

(declare-fun b!2933357 () Bool)

(declare-fun res!1211018 () Bool)

(assert (=> b!2933357 (=> res!1211018 e!1849437)))

(assert (=> b!2933357 (= res!1211018 (not (is-ElementMatch!9058 r!17423)))))

(assert (=> b!2933357 (= e!1849433 e!1849437)))

(declare-fun b!2933358 () Bool)

(declare-fun res!1211016 () Bool)

(assert (=> b!2933358 (=> (not res!1211016) (not e!1849436))))

(assert (=> b!2933358 (= res!1211016 (not call!192631))))

(declare-fun b!2933359 () Bool)

(declare-fun res!1211014 () Bool)

(assert (=> b!2933359 (=> res!1211014 e!1849432)))

(assert (=> b!2933359 (= res!1211014 (not (isEmpty!19054 (tail!4748 s!11993))))))

(declare-fun b!2933360 () Bool)

(assert (=> b!2933360 (= e!1849437 e!1849434)))

(declare-fun res!1211019 () Bool)

(assert (=> b!2933360 (=> (not res!1211019) (not e!1849434))))

(assert (=> b!2933360 (= res!1211019 (not lt!1028487))))

(declare-fun b!2933361 () Bool)

(assert (=> b!2933361 (= e!1849431 e!1849433)))

(declare-fun c!479160 () Bool)

(assert (=> b!2933361 (= c!479160 (is-EmptyLang!9058 r!17423))))

(declare-fun b!2933362 () Bool)

(declare-fun res!1211015 () Bool)

(assert (=> b!2933362 (=> (not res!1211015) (not e!1849436))))

(assert (=> b!2933362 (= res!1211015 (isEmpty!19054 (tail!4748 s!11993)))))

(assert (= (and d!839601 c!479158) b!2933352))

(assert (= (and d!839601 (not c!479158)) b!2933354))

(assert (= (and d!839601 c!479159) b!2933350))

(assert (= (and d!839601 (not c!479159)) b!2933361))

(assert (= (and b!2933361 c!479160) b!2933355))

(assert (= (and b!2933361 (not c!479160)) b!2933357))

(assert (= (and b!2933357 (not res!1211018)) b!2933356))

(assert (= (and b!2933356 res!1211013) b!2933358))

(assert (= (and b!2933358 res!1211016) b!2933362))

(assert (= (and b!2933362 res!1211015) b!2933349))

(assert (= (and b!2933356 (not res!1211012)) b!2933360))

(assert (= (and b!2933360 res!1211019) b!2933351))

(assert (= (and b!2933351 (not res!1211017)) b!2933359))

(assert (= (and b!2933359 (not res!1211014)) b!2933353))

(assert (= (or b!2933350 b!2933351 b!2933358) bm!192626))

(declare-fun m!3322363 () Bool)

(assert (=> b!2933353 m!3322363))

(assert (=> d!839601 m!3322105))

(assert (=> d!839601 m!3322093))

(assert (=> b!2933354 m!3322363))

(assert (=> b!2933354 m!3322363))

(declare-fun m!3322365 () Bool)

(assert (=> b!2933354 m!3322365))

(declare-fun m!3322367 () Bool)

(assert (=> b!2933354 m!3322367))

(assert (=> b!2933354 m!3322365))

(assert (=> b!2933354 m!3322367))

(declare-fun m!3322369 () Bool)

(assert (=> b!2933354 m!3322369))

(assert (=> b!2933362 m!3322367))

(assert (=> b!2933362 m!3322367))

(declare-fun m!3322371 () Bool)

(assert (=> b!2933362 m!3322371))

(assert (=> b!2933349 m!3322363))

(declare-fun m!3322373 () Bool)

(assert (=> b!2933352 m!3322373))

(assert (=> bm!192626 m!3322105))

(assert (=> b!2933359 m!3322367))

(assert (=> b!2933359 m!3322367))

(assert (=> b!2933359 m!3322371))

(assert (=> b!2932926 d!839601))

(declare-fun d!839603 () Bool)

(assert (=> d!839603 (= (matchR!3940 r!17423 s!11993) (matchRSpec!1195 r!17423 s!11993))))

(declare-fun lt!1028488 () Unit!48471)

(assert (=> d!839603 (= lt!1028488 (choose!17342 r!17423 s!11993))))

(assert (=> d!839603 (validRegex!3791 r!17423)))

(assert (=> d!839603 (= (mainMatchTheorem!1195 r!17423 s!11993) lt!1028488)))

(declare-fun bs!525337 () Bool)

(assert (= bs!525337 d!839603))

(assert (=> bs!525337 m!3322099))

(assert (=> bs!525337 m!3322097))

(declare-fun m!3322375 () Bool)

(assert (=> bs!525337 m!3322375))

(assert (=> bs!525337 m!3322093))

(assert (=> b!2932926 d!839603))

(declare-fun b!2933374 () Bool)

(declare-fun e!1849440 () Bool)

(declare-fun tp!939692 () Bool)

(declare-fun tp!939690 () Bool)

(assert (=> b!2933374 (= e!1849440 (and tp!939692 tp!939690))))

(declare-fun b!2933376 () Bool)

(declare-fun tp!939688 () Bool)

(declare-fun tp!939689 () Bool)

(assert (=> b!2933376 (= e!1849440 (and tp!939688 tp!939689))))

(declare-fun b!2933375 () Bool)

(declare-fun tp!939691 () Bool)

(assert (=> b!2933375 (= e!1849440 tp!939691)))

(declare-fun b!2933373 () Bool)

(assert (=> b!2933373 (= e!1849440 tp_is_empty!15679)))

(assert (=> b!2932927 (= tp!939656 e!1849440)))

(assert (= (and b!2932927 (is-ElementMatch!9058 (reg!9387 r!17423))) b!2933373))

(assert (= (and b!2932927 (is-Concat!14379 (reg!9387 r!17423))) b!2933374))

(assert (= (and b!2932927 (is-Star!9058 (reg!9387 r!17423))) b!2933375))

(assert (= (and b!2932927 (is-Union!9058 (reg!9387 r!17423))) b!2933376))

(declare-fun b!2933378 () Bool)

(declare-fun e!1849441 () Bool)

(declare-fun tp!939697 () Bool)

(declare-fun tp!939695 () Bool)

(assert (=> b!2933378 (= e!1849441 (and tp!939697 tp!939695))))

(declare-fun b!2933380 () Bool)

(declare-fun tp!939693 () Bool)

(declare-fun tp!939694 () Bool)

(assert (=> b!2933380 (= e!1849441 (and tp!939693 tp!939694))))

(declare-fun b!2933379 () Bool)

(declare-fun tp!939696 () Bool)

(assert (=> b!2933379 (= e!1849441 tp!939696)))

(declare-fun b!2933377 () Bool)

(assert (=> b!2933377 (= e!1849441 tp_is_empty!15679)))

(assert (=> b!2932922 (= tp!939657 e!1849441)))

(assert (= (and b!2932922 (is-ElementMatch!9058 (regOne!18628 r!17423))) b!2933377))

(assert (= (and b!2932922 (is-Concat!14379 (regOne!18628 r!17423))) b!2933378))

(assert (= (and b!2932922 (is-Star!9058 (regOne!18628 r!17423))) b!2933379))

(assert (= (and b!2932922 (is-Union!9058 (regOne!18628 r!17423))) b!2933380))

(declare-fun b!2933382 () Bool)

(declare-fun e!1849442 () Bool)

(declare-fun tp!939702 () Bool)

(declare-fun tp!939700 () Bool)

(assert (=> b!2933382 (= e!1849442 (and tp!939702 tp!939700))))

(declare-fun b!2933384 () Bool)

(declare-fun tp!939698 () Bool)

(declare-fun tp!939699 () Bool)

(assert (=> b!2933384 (= e!1849442 (and tp!939698 tp!939699))))

(declare-fun b!2933383 () Bool)

(declare-fun tp!939701 () Bool)

(assert (=> b!2933383 (= e!1849442 tp!939701)))

(declare-fun b!2933381 () Bool)

(assert (=> b!2933381 (= e!1849442 tp_is_empty!15679)))

(assert (=> b!2932922 (= tp!939659 e!1849442)))

(assert (= (and b!2932922 (is-ElementMatch!9058 (regTwo!18628 r!17423))) b!2933381))

(assert (= (and b!2932922 (is-Concat!14379 (regTwo!18628 r!17423))) b!2933382))

(assert (= (and b!2932922 (is-Star!9058 (regTwo!18628 r!17423))) b!2933383))

(assert (= (and b!2932922 (is-Union!9058 (regTwo!18628 r!17423))) b!2933384))

(declare-fun b!2933389 () Bool)

(declare-fun e!1849445 () Bool)

(declare-fun tp!939705 () Bool)

(assert (=> b!2933389 (= e!1849445 (and tp_is_empty!15679 tp!939705))))

(assert (=> b!2932928 (= tp!939655 e!1849445)))

(assert (= (and b!2932928 (is-Cons!34799 (t!233988 s!11993))) b!2933389))

(declare-fun b!2933391 () Bool)

(declare-fun e!1849446 () Bool)

(declare-fun tp!939710 () Bool)

(declare-fun tp!939708 () Bool)

(assert (=> b!2933391 (= e!1849446 (and tp!939710 tp!939708))))

(declare-fun b!2933393 () Bool)

(declare-fun tp!939706 () Bool)

(declare-fun tp!939707 () Bool)

(assert (=> b!2933393 (= e!1849446 (and tp!939706 tp!939707))))

(declare-fun b!2933392 () Bool)

(declare-fun tp!939709 () Bool)

(assert (=> b!2933392 (= e!1849446 tp!939709)))

(declare-fun b!2933390 () Bool)

(assert (=> b!2933390 (= e!1849446 tp_is_empty!15679)))

(assert (=> b!2932920 (= tp!939654 e!1849446)))

(assert (= (and b!2932920 (is-ElementMatch!9058 (regOne!18629 r!17423))) b!2933390))

(assert (= (and b!2932920 (is-Concat!14379 (regOne!18629 r!17423))) b!2933391))

(assert (= (and b!2932920 (is-Star!9058 (regOne!18629 r!17423))) b!2933392))

(assert (= (and b!2932920 (is-Union!9058 (regOne!18629 r!17423))) b!2933393))

(declare-fun b!2933395 () Bool)

(declare-fun e!1849447 () Bool)

(declare-fun tp!939715 () Bool)

(declare-fun tp!939713 () Bool)

(assert (=> b!2933395 (= e!1849447 (and tp!939715 tp!939713))))

(declare-fun b!2933397 () Bool)

(declare-fun tp!939711 () Bool)

(declare-fun tp!939712 () Bool)

(assert (=> b!2933397 (= e!1849447 (and tp!939711 tp!939712))))

(declare-fun b!2933396 () Bool)

(declare-fun tp!939714 () Bool)

(assert (=> b!2933396 (= e!1849447 tp!939714)))

(declare-fun b!2933394 () Bool)

(assert (=> b!2933394 (= e!1849447 tp_is_empty!15679)))

(assert (=> b!2932920 (= tp!939658 e!1849447)))

(assert (= (and b!2932920 (is-ElementMatch!9058 (regTwo!18629 r!17423))) b!2933394))

(assert (= (and b!2932920 (is-Concat!14379 (regTwo!18629 r!17423))) b!2933395))

(assert (= (and b!2932920 (is-Star!9058 (regTwo!18629 r!17423))) b!2933396))

(assert (= (and b!2932920 (is-Union!9058 (regTwo!18629 r!17423))) b!2933397))

(push 1)

(assert (not bm!192625))

(assert (not b!2933256))

(assert (not b!2933230))

(assert (not b!2933362))

(assert (not bm!192624))

(assert tp_is_empty!15679)

(assert (not b!2933379))

(assert (not b!2933353))

(assert (not b!2933233))

(assert (not b!2933257))

(assert (not b!2933375))

(assert (not d!839555))

(assert (not b!2933349))

(assert (not d!839601))

(assert (not b!2933352))

(assert (not bm!192589))

(assert (not b!2933211))

(assert (not bm!192604))

(assert (not d!839573))

(assert (not b!2933382))

(assert (not bm!192586))

(assert (not d!839575))

(assert (not d!839543))

(assert (not b!2933175))

(assert (not bm!192619))

(assert (not bm!192607))

(assert (not b!2933391))

(assert (not b!2933354))

(assert (not b!2933034))

(assert (not b!2933206))

(assert (not b!2933037))

(assert (not d!839557))

(assert (not d!839579))

(assert (not bm!192609))

(assert (not bm!192608))

(assert (not b!2933219))

(assert (not bm!192584))

(assert (not b!2933203))

(assert (not d!839587))

(assert (not b!2933087))

(assert (not d!839581))

(assert (not b!2933059))

(assert (not b!2933224))

(assert (not b!2933028))

(assert (not bm!192611))

(assert (not d!839577))

(assert (not b!2933150))

(assert (not d!839585))

(assert (not b!2933393))

(assert (not b!2933210))

(assert (not b!2933223))

(assert (not b!2933225))

(assert (not b!2933079))

(assert (not d!839553))

(assert (not b!2933384))

(assert (not bm!192615))

(assert (not bm!192576))

(assert (not b!2933396))

(assert (not b!2933259))

(assert (not b!2933209))

(assert (not b!2933078))

(assert (not bm!192626))

(assert (not d!839565))

(assert (not b!2933378))

(assert (not b!2933027))

(assert (not d!839603))

(assert (not bm!192612))

(assert (not b!2933374))

(assert (not b!2933183))

(assert (not b!2933029))

(assert (not b!2933068))

(assert (not b!2933380))

(assert (not bm!192614))

(assert (not b!2933262))

(assert (not b!2933392))

(assert (not b!2933084))

(assert (not b!2933077))

(assert (not b!2933220))

(assert (not bm!192587))

(assert (not b!2933389))

(assert (not bm!192618))

(assert (not b!2933074))

(assert (not bm!192616))

(assert (not d!839571))

(assert (not b!2933158))

(assert (not b!2933395))

(assert (not bm!192605))

(assert (not b!2933024))

(assert (not d!839591))

(assert (not b!2933397))

(assert (not b!2933359))

(assert (not b!2933264))

(assert (not bm!192583))

(assert (not b!2933376))

(assert (not b!2933216))

(assert (not b!2933205))

(assert (not b!2933263))

(assert (not b!2933383))

(assert (not d!839589))

(assert (not b!2933342))

(assert (not b!2933338))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

