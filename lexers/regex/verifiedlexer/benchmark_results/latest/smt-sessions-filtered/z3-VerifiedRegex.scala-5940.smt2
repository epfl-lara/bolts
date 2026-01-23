; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!290896 () Bool)

(assert start!290896)

(declare-fun b!3033054 () Bool)

(declare-fun e!1902082 () Bool)

(declare-fun tp_is_empty!16425 () Bool)

(assert (=> b!3033054 (= e!1902082 tp_is_empty!16425)))

(declare-fun b!3033055 () Bool)

(declare-fun e!1902086 () Bool)

(declare-fun e!1902087 () Bool)

(assert (=> b!3033055 (= e!1902086 e!1902087)))

(declare-fun res!1247805 () Bool)

(assert (=> b!3033055 (=> res!1247805 e!1902087)))

(declare-fun lt!1046242 () Bool)

(assert (=> b!3033055 (= res!1247805 lt!1046242)))

(declare-fun e!1902083 () Bool)

(assert (=> b!3033055 e!1902083))

(declare-fun res!1247808 () Bool)

(assert (=> b!3033055 (=> res!1247808 e!1902083)))

(assert (=> b!3033055 (= res!1247808 lt!1046242)))

(declare-datatypes ((C!19048 0))(
  ( (C!19049 (val!11560 Int)) )
))
(declare-datatypes ((Regex!9431 0))(
  ( (ElementMatch!9431 (c!501281 C!19048)) (Concat!14752 (regOne!19374 Regex!9431) (regTwo!19374 Regex!9431)) (EmptyExpr!9431) (Star!9431 (reg!9760 Regex!9431)) (EmptyLang!9431) (Union!9431 (regOne!19375 Regex!9431) (regTwo!19375 Regex!9431)) )
))
(declare-fun r!17423 () Regex!9431)

(declare-datatypes ((List!35296 0))(
  ( (Nil!35172) (Cons!35172 (h!40592 C!19048) (t!234361 List!35296)) )
))
(declare-fun s!11993 () List!35296)

(declare-fun matchR!4313 (Regex!9431 List!35296) Bool)

(assert (=> b!3033055 (= lt!1046242 (matchR!4313 (regOne!19375 r!17423) s!11993))))

(declare-datatypes ((Unit!49285 0))(
  ( (Unit!49286) )
))
(declare-fun lt!1046240 () Unit!49285)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!308 (Regex!9431 Regex!9431 List!35296) Unit!49285)

(assert (=> b!3033055 (= lt!1046240 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!308 (regOne!19375 r!17423) (regTwo!19375 r!17423) s!11993))))

(declare-fun b!3033056 () Bool)

(declare-fun res!1247806 () Bool)

(assert (=> b!3033056 (=> res!1247806 e!1902087)))

(declare-fun validRegex!4164 (Regex!9431) Bool)

(assert (=> b!3033056 (= res!1247806 (not (validRegex!4164 (regTwo!19375 r!17423))))))

(declare-fun lt!1046239 () Int)

(declare-fun b!3033057 () Bool)

(declare-fun lt!1046237 () Int)

(declare-fun regexDepth!89 (Regex!9431) Int)

(assert (=> b!3033057 (= e!1902087 (< (+ lt!1046239 lt!1046237) (+ (regexDepth!89 r!17423) lt!1046237)))))

(declare-fun size!26533 (List!35296) Int)

(assert (=> b!3033057 (= lt!1046237 (size!26533 s!11993))))

(assert (=> b!3033057 (= lt!1046239 (regexDepth!89 (regTwo!19375 r!17423)))))

(declare-fun b!3033058 () Bool)

(declare-fun e!1902084 () Bool)

(declare-fun tp!961083 () Bool)

(assert (=> b!3033058 (= e!1902084 (and tp_is_empty!16425 tp!961083))))

(declare-fun b!3033059 () Bool)

(declare-fun tp!961084 () Bool)

(assert (=> b!3033059 (= e!1902082 tp!961084)))

(declare-fun b!3033060 () Bool)

(declare-fun e!1902085 () Bool)

(assert (=> b!3033060 (= e!1902085 (not e!1902086))))

(declare-fun res!1247804 () Bool)

(assert (=> b!3033060 (=> res!1247804 e!1902086)))

(declare-fun lt!1046241 () Bool)

(get-info :version)

(assert (=> b!3033060 (= res!1247804 (or (not lt!1046241) ((_ is Concat!14752) r!17423) (not ((_ is Union!9431) r!17423))))))

(declare-fun matchRSpec!1568 (Regex!9431 List!35296) Bool)

(assert (=> b!3033060 (= lt!1046241 (matchRSpec!1568 r!17423 s!11993))))

(assert (=> b!3033060 (= lt!1046241 (matchR!4313 r!17423 s!11993))))

(declare-fun lt!1046238 () Unit!49285)

(declare-fun mainMatchTheorem!1568 (Regex!9431 List!35296) Unit!49285)

(assert (=> b!3033060 (= lt!1046238 (mainMatchTheorem!1568 r!17423 s!11993))))

(declare-fun b!3033061 () Bool)

(declare-fun tp!961080 () Bool)

(declare-fun tp!961085 () Bool)

(assert (=> b!3033061 (= e!1902082 (and tp!961080 tp!961085))))

(declare-fun b!3033063 () Bool)

(declare-fun tp!961081 () Bool)

(declare-fun tp!961082 () Bool)

(assert (=> b!3033063 (= e!1902082 (and tp!961081 tp!961082))))

(declare-fun res!1247807 () Bool)

(assert (=> start!290896 (=> (not res!1247807) (not e!1902085))))

(assert (=> start!290896 (= res!1247807 (validRegex!4164 r!17423))))

(assert (=> start!290896 e!1902085))

(assert (=> start!290896 e!1902082))

(assert (=> start!290896 e!1902084))

(declare-fun b!3033062 () Bool)

(assert (=> b!3033062 (= e!1902083 (matchR!4313 (regTwo!19375 r!17423) s!11993))))

(assert (= (and start!290896 res!1247807) b!3033060))

(assert (= (and b!3033060 (not res!1247804)) b!3033055))

(assert (= (and b!3033055 (not res!1247808)) b!3033062))

(assert (= (and b!3033055 (not res!1247805)) b!3033056))

(assert (= (and b!3033056 (not res!1247806)) b!3033057))

(assert (= (and start!290896 ((_ is ElementMatch!9431) r!17423)) b!3033054))

(assert (= (and start!290896 ((_ is Concat!14752) r!17423)) b!3033061))

(assert (= (and start!290896 ((_ is Star!9431) r!17423)) b!3033059))

(assert (= (and start!290896 ((_ is Union!9431) r!17423)) b!3033063))

(assert (= (and start!290896 ((_ is Cons!35172) s!11993)) b!3033058))

(declare-fun m!3368811 () Bool)

(assert (=> start!290896 m!3368811))

(declare-fun m!3368813 () Bool)

(assert (=> b!3033057 m!3368813))

(declare-fun m!3368815 () Bool)

(assert (=> b!3033057 m!3368815))

(declare-fun m!3368817 () Bool)

(assert (=> b!3033057 m!3368817))

(declare-fun m!3368819 () Bool)

(assert (=> b!3033060 m!3368819))

(declare-fun m!3368821 () Bool)

(assert (=> b!3033060 m!3368821))

(declare-fun m!3368823 () Bool)

(assert (=> b!3033060 m!3368823))

(declare-fun m!3368825 () Bool)

(assert (=> b!3033055 m!3368825))

(declare-fun m!3368827 () Bool)

(assert (=> b!3033055 m!3368827))

(declare-fun m!3368829 () Bool)

(assert (=> b!3033056 m!3368829))

(declare-fun m!3368831 () Bool)

(assert (=> b!3033062 m!3368831))

(check-sat (not b!3033061) (not b!3033058) (not b!3033057) (not start!290896) (not b!3033056) (not b!3033059) tp_is_empty!16425 (not b!3033062) (not b!3033060) (not b!3033063) (not b!3033055))
(check-sat)
(get-model)

(declare-fun b!3033129 () Bool)

(declare-fun e!1902134 () Int)

(declare-fun e!1902135 () Int)

(assert (=> b!3033129 (= e!1902134 e!1902135)))

(declare-fun c!501305 () Bool)

(assert (=> b!3033129 (= c!501305 ((_ is Concat!14752) r!17423))))

(declare-fun b!3033130 () Bool)

(declare-fun call!206819 () Int)

(assert (=> b!3033130 (= e!1902135 (+ 1 call!206819))))

(declare-fun b!3033132 () Bool)

(declare-fun e!1902131 () Bool)

(declare-fun e!1902138 () Bool)

(assert (=> b!3033132 (= e!1902131 e!1902138)))

(declare-fun c!501304 () Bool)

(assert (=> b!3033132 (= c!501304 ((_ is Union!9431) r!17423))))

(declare-fun b!3033133 () Bool)

(declare-fun e!1902140 () Bool)

(assert (=> b!3033133 (= e!1902138 e!1902140)))

(declare-fun c!501306 () Bool)

(assert (=> b!3033133 (= c!501306 ((_ is Concat!14752) r!17423))))

(declare-fun bm!206811 () Bool)

(declare-fun call!206822 () Int)

(declare-fun call!206821 () Int)

(assert (=> bm!206811 (= call!206822 call!206821)))

(declare-fun b!3033134 () Bool)

(declare-fun c!501308 () Bool)

(assert (=> b!3033134 (= c!501308 ((_ is Union!9431) r!17423))))

(declare-fun e!1902136 () Int)

(assert (=> b!3033134 (= e!1902136 e!1902134)))

(declare-fun bm!206812 () Bool)

(declare-fun c!501310 () Bool)

(assert (=> bm!206812 (= call!206821 (regexDepth!89 (ite c!501310 (reg!9760 r!17423) (ite c!501308 (regTwo!19375 r!17423) (regTwo!19374 r!17423)))))))

(declare-fun call!206820 () Int)

(declare-fun bm!206813 () Bool)

(assert (=> bm!206813 (= call!206820 (regexDepth!89 (ite c!501304 (regTwo!19375 r!17423) (ite c!501306 (regTwo!19374 r!17423) (reg!9760 r!17423)))))))

(declare-fun b!3033135 () Bool)

(assert (=> b!3033135 (= e!1902135 1)))

(declare-fun b!3033136 () Bool)

(declare-fun e!1902132 () Int)

(assert (=> b!3033136 (= e!1902132 e!1902136)))

(assert (=> b!3033136 (= c!501310 ((_ is Star!9431) r!17423))))

(declare-fun b!3033137 () Bool)

(assert (=> b!3033137 (= e!1902132 1)))

(declare-fun b!3033138 () Bool)

(declare-fun e!1902139 () Bool)

(declare-fun lt!1046247 () Int)

(declare-fun call!206816 () Int)

(assert (=> b!3033138 (= e!1902139 (> lt!1046247 call!206816))))

(declare-fun b!3033139 () Bool)

(declare-fun e!1902137 () Bool)

(assert (=> b!3033139 (= e!1902137 (= lt!1046247 1))))

(declare-fun d!851423 () Bool)

(assert (=> d!851423 e!1902131))

(declare-fun res!1247832 () Bool)

(assert (=> d!851423 (=> (not res!1247832) (not e!1902131))))

(assert (=> d!851423 (= res!1247832 (> lt!1046247 0))))

(assert (=> d!851423 (= lt!1046247 e!1902132)))

(declare-fun c!501307 () Bool)

(assert (=> d!851423 (= c!501307 ((_ is ElementMatch!9431) r!17423))))

(assert (=> d!851423 (= (regexDepth!89 r!17423) lt!1046247)))

(declare-fun b!3033131 () Bool)

(assert (=> b!3033131 (= e!1902136 (+ 1 call!206821))))

(declare-fun b!3033140 () Bool)

(declare-fun e!1902133 () Bool)

(assert (=> b!3033140 (= e!1902138 e!1902133)))

(declare-fun res!1247830 () Bool)

(declare-fun call!206817 () Int)

(assert (=> b!3033140 (= res!1247830 (> lt!1046247 call!206817))))

(assert (=> b!3033140 (=> (not res!1247830) (not e!1902133))))

(declare-fun b!3033141 () Bool)

(assert (=> b!3033141 (= e!1902133 (> lt!1046247 call!206820))))

(declare-fun bm!206814 () Bool)

(assert (=> bm!206814 (= call!206816 call!206820)))

(declare-fun b!3033142 () Bool)

(declare-fun res!1247831 () Bool)

(assert (=> b!3033142 (=> (not res!1247831) (not e!1902139))))

(assert (=> b!3033142 (= res!1247831 (> lt!1046247 call!206817))))

(assert (=> b!3033142 (= e!1902140 e!1902139)))

(declare-fun b!3033143 () Bool)

(declare-fun c!501309 () Bool)

(assert (=> b!3033143 (= c!501309 ((_ is Star!9431) r!17423))))

(assert (=> b!3033143 (= e!1902140 e!1902137)))

(declare-fun bm!206815 () Bool)

(declare-fun call!206818 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!206815 (= call!206819 (maxBigInt!0 call!206818 call!206822))))

(declare-fun bm!206816 () Bool)

(assert (=> bm!206816 (= call!206817 (regexDepth!89 (ite c!501304 (regOne!19375 r!17423) (regOne!19374 r!17423))))))

(declare-fun b!3033144 () Bool)

(assert (=> b!3033144 (= e!1902137 (> lt!1046247 call!206816))))

(declare-fun bm!206817 () Bool)

(assert (=> bm!206817 (= call!206818 (regexDepth!89 (ite c!501308 (regOne!19375 r!17423) (regOne!19374 r!17423))))))

(declare-fun b!3033145 () Bool)

(assert (=> b!3033145 (= e!1902134 (+ 1 call!206819))))

(assert (= (and d!851423 c!501307) b!3033137))

(assert (= (and d!851423 (not c!501307)) b!3033136))

(assert (= (and b!3033136 c!501310) b!3033131))

(assert (= (and b!3033136 (not c!501310)) b!3033134))

(assert (= (and b!3033134 c!501308) b!3033145))

(assert (= (and b!3033134 (not c!501308)) b!3033129))

(assert (= (and b!3033129 c!501305) b!3033130))

(assert (= (and b!3033129 (not c!501305)) b!3033135))

(assert (= (or b!3033145 b!3033130) bm!206811))

(assert (= (or b!3033145 b!3033130) bm!206817))

(assert (= (or b!3033145 b!3033130) bm!206815))

(assert (= (or b!3033131 bm!206811) bm!206812))

(assert (= (and d!851423 res!1247832) b!3033132))

(assert (= (and b!3033132 c!501304) b!3033140))

(assert (= (and b!3033132 (not c!501304)) b!3033133))

(assert (= (and b!3033140 res!1247830) b!3033141))

(assert (= (and b!3033133 c!501306) b!3033142))

(assert (= (and b!3033133 (not c!501306)) b!3033143))

(assert (= (and b!3033142 res!1247831) b!3033138))

(assert (= (and b!3033143 c!501309) b!3033144))

(assert (= (and b!3033143 (not c!501309)) b!3033139))

(assert (= (or b!3033138 b!3033144) bm!206814))

(assert (= (or b!3033141 bm!206814) bm!206813))

(assert (= (or b!3033140 b!3033142) bm!206816))

(declare-fun m!3368839 () Bool)

(assert (=> bm!206815 m!3368839))

(declare-fun m!3368841 () Bool)

(assert (=> bm!206813 m!3368841))

(declare-fun m!3368843 () Bool)

(assert (=> bm!206812 m!3368843))

(declare-fun m!3368845 () Bool)

(assert (=> bm!206817 m!3368845))

(declare-fun m!3368847 () Bool)

(assert (=> bm!206816 m!3368847))

(assert (=> b!3033057 d!851423))

(declare-fun d!851429 () Bool)

(declare-fun lt!1046250 () Int)

(assert (=> d!851429 (>= lt!1046250 0)))

(declare-fun e!1902155 () Int)

(assert (=> d!851429 (= lt!1046250 e!1902155)))

(declare-fun c!501317 () Bool)

(assert (=> d!851429 (= c!501317 ((_ is Nil!35172) s!11993))))

(assert (=> d!851429 (= (size!26533 s!11993) lt!1046250)))

(declare-fun b!3033174 () Bool)

(assert (=> b!3033174 (= e!1902155 0)))

(declare-fun b!3033175 () Bool)

(assert (=> b!3033175 (= e!1902155 (+ 1 (size!26533 (t!234361 s!11993))))))

(assert (= (and d!851429 c!501317) b!3033174))

(assert (= (and d!851429 (not c!501317)) b!3033175))

(declare-fun m!3368849 () Bool)

(assert (=> b!3033175 m!3368849))

(assert (=> b!3033057 d!851429))

(declare-fun b!3033176 () Bool)

(declare-fun e!1902159 () Int)

(declare-fun e!1902160 () Int)

(assert (=> b!3033176 (= e!1902159 e!1902160)))

(declare-fun c!501319 () Bool)

(assert (=> b!3033176 (= c!501319 ((_ is Concat!14752) (regTwo!19375 r!17423)))))

(declare-fun b!3033177 () Bool)

(declare-fun call!206828 () Int)

(assert (=> b!3033177 (= e!1902160 (+ 1 call!206828))))

(declare-fun b!3033179 () Bool)

(declare-fun e!1902156 () Bool)

(declare-fun e!1902163 () Bool)

(assert (=> b!3033179 (= e!1902156 e!1902163)))

(declare-fun c!501318 () Bool)

(assert (=> b!3033179 (= c!501318 ((_ is Union!9431) (regTwo!19375 r!17423)))))

(declare-fun b!3033180 () Bool)

(declare-fun e!1902165 () Bool)

(assert (=> b!3033180 (= e!1902163 e!1902165)))

(declare-fun c!501320 () Bool)

(assert (=> b!3033180 (= c!501320 ((_ is Concat!14752) (regTwo!19375 r!17423)))))

(declare-fun bm!206820 () Bool)

(declare-fun call!206831 () Int)

(declare-fun call!206830 () Int)

(assert (=> bm!206820 (= call!206831 call!206830)))

(declare-fun b!3033181 () Bool)

(declare-fun c!501322 () Bool)

(assert (=> b!3033181 (= c!501322 ((_ is Union!9431) (regTwo!19375 r!17423)))))

(declare-fun e!1902161 () Int)

(assert (=> b!3033181 (= e!1902161 e!1902159)))

(declare-fun bm!206821 () Bool)

(declare-fun c!501324 () Bool)

(assert (=> bm!206821 (= call!206830 (regexDepth!89 (ite c!501324 (reg!9760 (regTwo!19375 r!17423)) (ite c!501322 (regTwo!19375 (regTwo!19375 r!17423)) (regTwo!19374 (regTwo!19375 r!17423))))))))

(declare-fun bm!206822 () Bool)

(declare-fun call!206829 () Int)

(assert (=> bm!206822 (= call!206829 (regexDepth!89 (ite c!501318 (regTwo!19375 (regTwo!19375 r!17423)) (ite c!501320 (regTwo!19374 (regTwo!19375 r!17423)) (reg!9760 (regTwo!19375 r!17423))))))))

(declare-fun b!3033182 () Bool)

(assert (=> b!3033182 (= e!1902160 1)))

(declare-fun b!3033183 () Bool)

(declare-fun e!1902157 () Int)

(assert (=> b!3033183 (= e!1902157 e!1902161)))

(assert (=> b!3033183 (= c!501324 ((_ is Star!9431) (regTwo!19375 r!17423)))))

(declare-fun b!3033184 () Bool)

(assert (=> b!3033184 (= e!1902157 1)))

(declare-fun b!3033185 () Bool)

(declare-fun e!1902164 () Bool)

(declare-fun lt!1046251 () Int)

(declare-fun call!206825 () Int)

(assert (=> b!3033185 (= e!1902164 (> lt!1046251 call!206825))))

(declare-fun b!3033186 () Bool)

(declare-fun e!1902162 () Bool)

(assert (=> b!3033186 (= e!1902162 (= lt!1046251 1))))

(declare-fun d!851431 () Bool)

(assert (=> d!851431 e!1902156))

(declare-fun res!1247851 () Bool)

(assert (=> d!851431 (=> (not res!1247851) (not e!1902156))))

(assert (=> d!851431 (= res!1247851 (> lt!1046251 0))))

(assert (=> d!851431 (= lt!1046251 e!1902157)))

(declare-fun c!501321 () Bool)

(assert (=> d!851431 (= c!501321 ((_ is ElementMatch!9431) (regTwo!19375 r!17423)))))

(assert (=> d!851431 (= (regexDepth!89 (regTwo!19375 r!17423)) lt!1046251)))

(declare-fun b!3033178 () Bool)

(assert (=> b!3033178 (= e!1902161 (+ 1 call!206830))))

(declare-fun b!3033187 () Bool)

(declare-fun e!1902158 () Bool)

(assert (=> b!3033187 (= e!1902163 e!1902158)))

(declare-fun res!1247849 () Bool)

(declare-fun call!206826 () Int)

(assert (=> b!3033187 (= res!1247849 (> lt!1046251 call!206826))))

(assert (=> b!3033187 (=> (not res!1247849) (not e!1902158))))

(declare-fun b!3033188 () Bool)

(assert (=> b!3033188 (= e!1902158 (> lt!1046251 call!206829))))

(declare-fun bm!206823 () Bool)

(assert (=> bm!206823 (= call!206825 call!206829)))

(declare-fun b!3033189 () Bool)

(declare-fun res!1247850 () Bool)

(assert (=> b!3033189 (=> (not res!1247850) (not e!1902164))))

(assert (=> b!3033189 (= res!1247850 (> lt!1046251 call!206826))))

(assert (=> b!3033189 (= e!1902165 e!1902164)))

(declare-fun b!3033190 () Bool)

(declare-fun c!501323 () Bool)

(assert (=> b!3033190 (= c!501323 ((_ is Star!9431) (regTwo!19375 r!17423)))))

(assert (=> b!3033190 (= e!1902165 e!1902162)))

(declare-fun bm!206824 () Bool)

(declare-fun call!206827 () Int)

(assert (=> bm!206824 (= call!206828 (maxBigInt!0 call!206827 call!206831))))

(declare-fun bm!206825 () Bool)

(assert (=> bm!206825 (= call!206826 (regexDepth!89 (ite c!501318 (regOne!19375 (regTwo!19375 r!17423)) (regOne!19374 (regTwo!19375 r!17423)))))))

(declare-fun b!3033191 () Bool)

(assert (=> b!3033191 (= e!1902162 (> lt!1046251 call!206825))))

(declare-fun bm!206826 () Bool)

(assert (=> bm!206826 (= call!206827 (regexDepth!89 (ite c!501322 (regOne!19375 (regTwo!19375 r!17423)) (regOne!19374 (regTwo!19375 r!17423)))))))

(declare-fun b!3033192 () Bool)

(assert (=> b!3033192 (= e!1902159 (+ 1 call!206828))))

(assert (= (and d!851431 c!501321) b!3033184))

(assert (= (and d!851431 (not c!501321)) b!3033183))

(assert (= (and b!3033183 c!501324) b!3033178))

(assert (= (and b!3033183 (not c!501324)) b!3033181))

(assert (= (and b!3033181 c!501322) b!3033192))

(assert (= (and b!3033181 (not c!501322)) b!3033176))

(assert (= (and b!3033176 c!501319) b!3033177))

(assert (= (and b!3033176 (not c!501319)) b!3033182))

(assert (= (or b!3033192 b!3033177) bm!206820))

(assert (= (or b!3033192 b!3033177) bm!206826))

(assert (= (or b!3033192 b!3033177) bm!206824))

(assert (= (or b!3033178 bm!206820) bm!206821))

(assert (= (and d!851431 res!1247851) b!3033179))

(assert (= (and b!3033179 c!501318) b!3033187))

(assert (= (and b!3033179 (not c!501318)) b!3033180))

(assert (= (and b!3033187 res!1247849) b!3033188))

(assert (= (and b!3033180 c!501320) b!3033189))

(assert (= (and b!3033180 (not c!501320)) b!3033190))

(assert (= (and b!3033189 res!1247850) b!3033185))

(assert (= (and b!3033190 c!501323) b!3033191))

(assert (= (and b!3033190 (not c!501323)) b!3033186))

(assert (= (or b!3033185 b!3033191) bm!206823))

(assert (= (or b!3033188 bm!206823) bm!206822))

(assert (= (or b!3033187 b!3033189) bm!206825))

(declare-fun m!3368851 () Bool)

(assert (=> bm!206824 m!3368851))

(declare-fun m!3368853 () Bool)

(assert (=> bm!206822 m!3368853))

(declare-fun m!3368855 () Bool)

(assert (=> bm!206821 m!3368855))

(declare-fun m!3368857 () Bool)

(assert (=> bm!206826 m!3368857))

(declare-fun m!3368859 () Bool)

(assert (=> bm!206825 m!3368859))

(assert (=> b!3033057 d!851431))

(declare-fun b!3033255 () Bool)

(declare-fun res!1247891 () Bool)

(declare-fun e!1902205 () Bool)

(assert (=> b!3033255 (=> (not res!1247891) (not e!1902205))))

(declare-fun call!206836 () Bool)

(assert (=> b!3033255 (= res!1247891 (not call!206836))))

(declare-fun b!3033256 () Bool)

(declare-fun head!6737 (List!35296) C!19048)

(assert (=> b!3033256 (= e!1902205 (= (head!6737 s!11993) (c!501281 (regTwo!19375 r!17423))))))

(declare-fun b!3033257 () Bool)

(declare-fun res!1247892 () Bool)

(declare-fun e!1902201 () Bool)

(assert (=> b!3033257 (=> res!1247892 e!1902201)))

(declare-fun isEmpty!19472 (List!35296) Bool)

(declare-fun tail!4963 (List!35296) List!35296)

(assert (=> b!3033257 (= res!1247892 (not (isEmpty!19472 (tail!4963 s!11993))))))

(declare-fun b!3033258 () Bool)

(declare-fun e!1902206 () Bool)

(declare-fun lt!1046259 () Bool)

(assert (=> b!3033258 (= e!1902206 (= lt!1046259 call!206836))))

(declare-fun bm!206831 () Bool)

(assert (=> bm!206831 (= call!206836 (isEmpty!19472 s!11993))))

(declare-fun d!851433 () Bool)

(assert (=> d!851433 e!1902206))

(declare-fun c!501339 () Bool)

(assert (=> d!851433 (= c!501339 ((_ is EmptyExpr!9431) (regTwo!19375 r!17423)))))

(declare-fun e!1902204 () Bool)

(assert (=> d!851433 (= lt!1046259 e!1902204)))

(declare-fun c!501338 () Bool)

(assert (=> d!851433 (= c!501338 (isEmpty!19472 s!11993))))

(assert (=> d!851433 (validRegex!4164 (regTwo!19375 r!17423))))

(assert (=> d!851433 (= (matchR!4313 (regTwo!19375 r!17423) s!11993) lt!1046259)))

(declare-fun b!3033259 () Bool)

(declare-fun res!1247897 () Bool)

(assert (=> b!3033259 (=> (not res!1247897) (not e!1902205))))

(assert (=> b!3033259 (= res!1247897 (isEmpty!19472 (tail!4963 s!11993)))))

(declare-fun b!3033260 () Bool)

(declare-fun derivativeStep!2678 (Regex!9431 C!19048) Regex!9431)

(assert (=> b!3033260 (= e!1902204 (matchR!4313 (derivativeStep!2678 (regTwo!19375 r!17423) (head!6737 s!11993)) (tail!4963 s!11993)))))

(declare-fun b!3033261 () Bool)

(declare-fun e!1902202 () Bool)

(assert (=> b!3033261 (= e!1902202 e!1902201)))

(declare-fun res!1247894 () Bool)

(assert (=> b!3033261 (=> res!1247894 e!1902201)))

(assert (=> b!3033261 (= res!1247894 call!206836)))

(declare-fun b!3033262 () Bool)

(declare-fun res!1247893 () Bool)

(declare-fun e!1902200 () Bool)

(assert (=> b!3033262 (=> res!1247893 e!1902200)))

(assert (=> b!3033262 (= res!1247893 e!1902205)))

(declare-fun res!1247890 () Bool)

(assert (=> b!3033262 (=> (not res!1247890) (not e!1902205))))

(assert (=> b!3033262 (= res!1247890 lt!1046259)))

(declare-fun b!3033263 () Bool)

(declare-fun res!1247895 () Bool)

(assert (=> b!3033263 (=> res!1247895 e!1902200)))

(assert (=> b!3033263 (= res!1247895 (not ((_ is ElementMatch!9431) (regTwo!19375 r!17423))))))

(declare-fun e!1902203 () Bool)

(assert (=> b!3033263 (= e!1902203 e!1902200)))

(declare-fun b!3033264 () Bool)

(assert (=> b!3033264 (= e!1902206 e!1902203)))

(declare-fun c!501337 () Bool)

(assert (=> b!3033264 (= c!501337 ((_ is EmptyLang!9431) (regTwo!19375 r!17423)))))

(declare-fun b!3033265 () Bool)

(assert (=> b!3033265 (= e!1902203 (not lt!1046259))))

(declare-fun b!3033266 () Bool)

(assert (=> b!3033266 (= e!1902200 e!1902202)))

(declare-fun res!1247896 () Bool)

(assert (=> b!3033266 (=> (not res!1247896) (not e!1902202))))

(assert (=> b!3033266 (= res!1247896 (not lt!1046259))))

(declare-fun b!3033267 () Bool)

(declare-fun nullable!3081 (Regex!9431) Bool)

(assert (=> b!3033267 (= e!1902204 (nullable!3081 (regTwo!19375 r!17423)))))

(declare-fun b!3033268 () Bool)

(assert (=> b!3033268 (= e!1902201 (not (= (head!6737 s!11993) (c!501281 (regTwo!19375 r!17423)))))))

(assert (= (and d!851433 c!501338) b!3033267))

(assert (= (and d!851433 (not c!501338)) b!3033260))

(assert (= (and d!851433 c!501339) b!3033258))

(assert (= (and d!851433 (not c!501339)) b!3033264))

(assert (= (and b!3033264 c!501337) b!3033265))

(assert (= (and b!3033264 (not c!501337)) b!3033263))

(assert (= (and b!3033263 (not res!1247895)) b!3033262))

(assert (= (and b!3033262 res!1247890) b!3033255))

(assert (= (and b!3033255 res!1247891) b!3033259))

(assert (= (and b!3033259 res!1247897) b!3033256))

(assert (= (and b!3033262 (not res!1247893)) b!3033266))

(assert (= (and b!3033266 res!1247896) b!3033261))

(assert (= (and b!3033261 (not res!1247894)) b!3033257))

(assert (= (and b!3033257 (not res!1247892)) b!3033268))

(assert (= (or b!3033258 b!3033255 b!3033261) bm!206831))

(declare-fun m!3368885 () Bool)

(assert (=> b!3033268 m!3368885))

(declare-fun m!3368887 () Bool)

(assert (=> b!3033259 m!3368887))

(assert (=> b!3033259 m!3368887))

(declare-fun m!3368889 () Bool)

(assert (=> b!3033259 m!3368889))

(declare-fun m!3368891 () Bool)

(assert (=> bm!206831 m!3368891))

(assert (=> d!851433 m!3368891))

(assert (=> d!851433 m!3368829))

(assert (=> b!3033260 m!3368885))

(assert (=> b!3033260 m!3368885))

(declare-fun m!3368893 () Bool)

(assert (=> b!3033260 m!3368893))

(assert (=> b!3033260 m!3368887))

(assert (=> b!3033260 m!3368893))

(assert (=> b!3033260 m!3368887))

(declare-fun m!3368895 () Bool)

(assert (=> b!3033260 m!3368895))

(assert (=> b!3033257 m!3368887))

(assert (=> b!3033257 m!3368887))

(assert (=> b!3033257 m!3368889))

(assert (=> b!3033256 m!3368885))

(declare-fun m!3368897 () Bool)

(assert (=> b!3033267 m!3368897))

(assert (=> b!3033062 d!851433))

(declare-fun d!851441 () Bool)

(declare-fun res!1247918 () Bool)

(declare-fun e!1902241 () Bool)

(assert (=> d!851441 (=> res!1247918 e!1902241)))

(assert (=> d!851441 (= res!1247918 ((_ is ElementMatch!9431) r!17423))))

(assert (=> d!851441 (= (validRegex!4164 r!17423) e!1902241)))

(declare-fun b!3033309 () Bool)

(declare-fun res!1247917 () Bool)

(declare-fun e!1902239 () Bool)

(assert (=> b!3033309 (=> res!1247917 e!1902239)))

(assert (=> b!3033309 (= res!1247917 (not ((_ is Concat!14752) r!17423)))))

(declare-fun e!1902238 () Bool)

(assert (=> b!3033309 (= e!1902238 e!1902239)))

(declare-fun b!3033310 () Bool)

(declare-fun e!1902237 () Bool)

(declare-fun call!206844 () Bool)

(assert (=> b!3033310 (= e!1902237 call!206844)))

(declare-fun call!206845 () Bool)

(declare-fun bm!206838 () Bool)

(declare-fun c!501352 () Bool)

(declare-fun c!501353 () Bool)

(assert (=> bm!206838 (= call!206845 (validRegex!4164 (ite c!501352 (reg!9760 r!17423) (ite c!501353 (regTwo!19375 r!17423) (regOne!19374 r!17423)))))))

(declare-fun b!3033311 () Bool)

(declare-fun e!1902235 () Bool)

(assert (=> b!3033311 (= e!1902241 e!1902235)))

(assert (=> b!3033311 (= c!501352 ((_ is Star!9431) r!17423))))

(declare-fun bm!206839 () Bool)

(assert (=> bm!206839 (= call!206844 (validRegex!4164 (ite c!501353 (regOne!19375 r!17423) (regTwo!19374 r!17423))))))

(declare-fun b!3033312 () Bool)

(assert (=> b!3033312 (= e!1902235 e!1902238)))

(assert (=> b!3033312 (= c!501353 ((_ is Union!9431) r!17423))))

(declare-fun b!3033313 () Bool)

(declare-fun e!1902240 () Bool)

(declare-fun call!206843 () Bool)

(assert (=> b!3033313 (= e!1902240 call!206843)))

(declare-fun b!3033314 () Bool)

(declare-fun res!1247914 () Bool)

(assert (=> b!3033314 (=> (not res!1247914) (not e!1902240))))

(assert (=> b!3033314 (= res!1247914 call!206844)))

(assert (=> b!3033314 (= e!1902238 e!1902240)))

(declare-fun b!3033315 () Bool)

(declare-fun e!1902236 () Bool)

(assert (=> b!3033315 (= e!1902236 call!206845)))

(declare-fun bm!206840 () Bool)

(assert (=> bm!206840 (= call!206843 call!206845)))

(declare-fun b!3033316 () Bool)

(assert (=> b!3033316 (= e!1902239 e!1902237)))

(declare-fun res!1247915 () Bool)

(assert (=> b!3033316 (=> (not res!1247915) (not e!1902237))))

(assert (=> b!3033316 (= res!1247915 call!206843)))

(declare-fun b!3033317 () Bool)

(assert (=> b!3033317 (= e!1902235 e!1902236)))

(declare-fun res!1247916 () Bool)

(assert (=> b!3033317 (= res!1247916 (not (nullable!3081 (reg!9760 r!17423))))))

(assert (=> b!3033317 (=> (not res!1247916) (not e!1902236))))

(assert (= (and d!851441 (not res!1247918)) b!3033311))

(assert (= (and b!3033311 c!501352) b!3033317))

(assert (= (and b!3033311 (not c!501352)) b!3033312))

(assert (= (and b!3033317 res!1247916) b!3033315))

(assert (= (and b!3033312 c!501353) b!3033314))

(assert (= (and b!3033312 (not c!501353)) b!3033309))

(assert (= (and b!3033314 res!1247914) b!3033313))

(assert (= (and b!3033309 (not res!1247917)) b!3033316))

(assert (= (and b!3033316 res!1247915) b!3033310))

(assert (= (or b!3033314 b!3033310) bm!206839))

(assert (= (or b!3033313 b!3033316) bm!206840))

(assert (= (or b!3033315 bm!206840) bm!206838))

(declare-fun m!3368899 () Bool)

(assert (=> bm!206838 m!3368899))

(declare-fun m!3368901 () Bool)

(assert (=> bm!206839 m!3368901))

(declare-fun m!3368903 () Bool)

(assert (=> b!3033317 m!3368903))

(assert (=> start!290896 d!851441))

(declare-fun b!3033318 () Bool)

(declare-fun res!1247920 () Bool)

(declare-fun e!1902247 () Bool)

(assert (=> b!3033318 (=> (not res!1247920) (not e!1902247))))

(declare-fun call!206846 () Bool)

(assert (=> b!3033318 (= res!1247920 (not call!206846))))

(declare-fun b!3033319 () Bool)

(assert (=> b!3033319 (= e!1902247 (= (head!6737 s!11993) (c!501281 (regOne!19375 r!17423))))))

(declare-fun b!3033320 () Bool)

(declare-fun res!1247921 () Bool)

(declare-fun e!1902243 () Bool)

(assert (=> b!3033320 (=> res!1247921 e!1902243)))

(assert (=> b!3033320 (= res!1247921 (not (isEmpty!19472 (tail!4963 s!11993))))))

(declare-fun b!3033321 () Bool)

(declare-fun e!1902248 () Bool)

(declare-fun lt!1046260 () Bool)

(assert (=> b!3033321 (= e!1902248 (= lt!1046260 call!206846))))

(declare-fun bm!206841 () Bool)

(assert (=> bm!206841 (= call!206846 (isEmpty!19472 s!11993))))

(declare-fun d!851443 () Bool)

(assert (=> d!851443 e!1902248))

(declare-fun c!501356 () Bool)

(assert (=> d!851443 (= c!501356 ((_ is EmptyExpr!9431) (regOne!19375 r!17423)))))

(declare-fun e!1902246 () Bool)

(assert (=> d!851443 (= lt!1046260 e!1902246)))

(declare-fun c!501355 () Bool)

(assert (=> d!851443 (= c!501355 (isEmpty!19472 s!11993))))

(assert (=> d!851443 (validRegex!4164 (regOne!19375 r!17423))))

(assert (=> d!851443 (= (matchR!4313 (regOne!19375 r!17423) s!11993) lt!1046260)))

(declare-fun b!3033322 () Bool)

(declare-fun res!1247926 () Bool)

(assert (=> b!3033322 (=> (not res!1247926) (not e!1902247))))

(assert (=> b!3033322 (= res!1247926 (isEmpty!19472 (tail!4963 s!11993)))))

(declare-fun b!3033323 () Bool)

(assert (=> b!3033323 (= e!1902246 (matchR!4313 (derivativeStep!2678 (regOne!19375 r!17423) (head!6737 s!11993)) (tail!4963 s!11993)))))

(declare-fun b!3033324 () Bool)

(declare-fun e!1902244 () Bool)

(assert (=> b!3033324 (= e!1902244 e!1902243)))

(declare-fun res!1247923 () Bool)

(assert (=> b!3033324 (=> res!1247923 e!1902243)))

(assert (=> b!3033324 (= res!1247923 call!206846)))

(declare-fun b!3033325 () Bool)

(declare-fun res!1247922 () Bool)

(declare-fun e!1902242 () Bool)

(assert (=> b!3033325 (=> res!1247922 e!1902242)))

(assert (=> b!3033325 (= res!1247922 e!1902247)))

(declare-fun res!1247919 () Bool)

(assert (=> b!3033325 (=> (not res!1247919) (not e!1902247))))

(assert (=> b!3033325 (= res!1247919 lt!1046260)))

(declare-fun b!3033326 () Bool)

(declare-fun res!1247924 () Bool)

(assert (=> b!3033326 (=> res!1247924 e!1902242)))

(assert (=> b!3033326 (= res!1247924 (not ((_ is ElementMatch!9431) (regOne!19375 r!17423))))))

(declare-fun e!1902245 () Bool)

(assert (=> b!3033326 (= e!1902245 e!1902242)))

(declare-fun b!3033327 () Bool)

(assert (=> b!3033327 (= e!1902248 e!1902245)))

(declare-fun c!501354 () Bool)

(assert (=> b!3033327 (= c!501354 ((_ is EmptyLang!9431) (regOne!19375 r!17423)))))

(declare-fun b!3033328 () Bool)

(assert (=> b!3033328 (= e!1902245 (not lt!1046260))))

(declare-fun b!3033329 () Bool)

(assert (=> b!3033329 (= e!1902242 e!1902244)))

(declare-fun res!1247925 () Bool)

(assert (=> b!3033329 (=> (not res!1247925) (not e!1902244))))

(assert (=> b!3033329 (= res!1247925 (not lt!1046260))))

(declare-fun b!3033330 () Bool)

(assert (=> b!3033330 (= e!1902246 (nullable!3081 (regOne!19375 r!17423)))))

(declare-fun b!3033331 () Bool)

(assert (=> b!3033331 (= e!1902243 (not (= (head!6737 s!11993) (c!501281 (regOne!19375 r!17423)))))))

(assert (= (and d!851443 c!501355) b!3033330))

(assert (= (and d!851443 (not c!501355)) b!3033323))

(assert (= (and d!851443 c!501356) b!3033321))

(assert (= (and d!851443 (not c!501356)) b!3033327))

(assert (= (and b!3033327 c!501354) b!3033328))

(assert (= (and b!3033327 (not c!501354)) b!3033326))

(assert (= (and b!3033326 (not res!1247924)) b!3033325))

(assert (= (and b!3033325 res!1247919) b!3033318))

(assert (= (and b!3033318 res!1247920) b!3033322))

(assert (= (and b!3033322 res!1247926) b!3033319))

(assert (= (and b!3033325 (not res!1247922)) b!3033329))

(assert (= (and b!3033329 res!1247925) b!3033324))

(assert (= (and b!3033324 (not res!1247923)) b!3033320))

(assert (= (and b!3033320 (not res!1247921)) b!3033331))

(assert (= (or b!3033321 b!3033318 b!3033324) bm!206841))

(assert (=> b!3033331 m!3368885))

(assert (=> b!3033322 m!3368887))

(assert (=> b!3033322 m!3368887))

(assert (=> b!3033322 m!3368889))

(assert (=> bm!206841 m!3368891))

(assert (=> d!851443 m!3368891))

(declare-fun m!3368905 () Bool)

(assert (=> d!851443 m!3368905))

(assert (=> b!3033323 m!3368885))

(assert (=> b!3033323 m!3368885))

(declare-fun m!3368907 () Bool)

(assert (=> b!3033323 m!3368907))

(assert (=> b!3033323 m!3368887))

(assert (=> b!3033323 m!3368907))

(assert (=> b!3033323 m!3368887))

(declare-fun m!3368909 () Bool)

(assert (=> b!3033323 m!3368909))

(assert (=> b!3033320 m!3368887))

(assert (=> b!3033320 m!3368887))

(assert (=> b!3033320 m!3368889))

(assert (=> b!3033319 m!3368885))

(declare-fun m!3368911 () Bool)

(assert (=> b!3033330 m!3368911))

(assert (=> b!3033055 d!851443))

(declare-fun d!851445 () Bool)

(declare-fun e!1902254 () Bool)

(assert (=> d!851445 e!1902254))

(declare-fun res!1247931 () Bool)

(assert (=> d!851445 (=> res!1247931 e!1902254)))

(assert (=> d!851445 (= res!1247931 (matchR!4313 (regOne!19375 r!17423) s!11993))))

(declare-fun lt!1046263 () Unit!49285)

(declare-fun choose!17988 (Regex!9431 Regex!9431 List!35296) Unit!49285)

(assert (=> d!851445 (= lt!1046263 (choose!17988 (regOne!19375 r!17423) (regTwo!19375 r!17423) s!11993))))

(declare-fun e!1902253 () Bool)

(assert (=> d!851445 e!1902253))

(declare-fun res!1247932 () Bool)

(assert (=> d!851445 (=> (not res!1247932) (not e!1902253))))

(assert (=> d!851445 (= res!1247932 (validRegex!4164 (regOne!19375 r!17423)))))

(assert (=> d!851445 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!308 (regOne!19375 r!17423) (regTwo!19375 r!17423) s!11993) lt!1046263)))

(declare-fun b!3033336 () Bool)

(assert (=> b!3033336 (= e!1902253 (validRegex!4164 (regTwo!19375 r!17423)))))

(declare-fun b!3033337 () Bool)

(assert (=> b!3033337 (= e!1902254 (matchR!4313 (regTwo!19375 r!17423) s!11993))))

(assert (= (and d!851445 res!1247932) b!3033336))

(assert (= (and d!851445 (not res!1247931)) b!3033337))

(assert (=> d!851445 m!3368825))

(declare-fun m!3368913 () Bool)

(assert (=> d!851445 m!3368913))

(assert (=> d!851445 m!3368905))

(assert (=> b!3033336 m!3368829))

(assert (=> b!3033337 m!3368831))

(assert (=> b!3033055 d!851445))

(declare-fun b!3033528 () Bool)

(assert (=> b!3033528 true))

(assert (=> b!3033528 true))

(declare-fun bs!530906 () Bool)

(declare-fun b!3033529 () Bool)

(assert (= bs!530906 (and b!3033529 b!3033528)))

(declare-fun lambda!113222 () Int)

(declare-fun lambda!113221 () Int)

(assert (=> bs!530906 (not (= lambda!113222 lambda!113221))))

(assert (=> b!3033529 true))

(assert (=> b!3033529 true))

(declare-fun b!3033527 () Bool)

(declare-fun e!1902351 () Bool)

(assert (=> b!3033527 (= e!1902351 (= s!11993 (Cons!35172 (c!501281 r!17423) Nil!35172)))))

(declare-fun e!1902354 () Bool)

(declare-fun call!206890 () Bool)

(assert (=> b!3033528 (= e!1902354 call!206890)))

(declare-fun e!1902356 () Bool)

(assert (=> b!3033529 (= e!1902356 call!206890)))

(declare-fun bm!206884 () Bool)

(declare-fun c!501405 () Bool)

(declare-fun Exists!1697 (Int) Bool)

(assert (=> bm!206884 (= call!206890 (Exists!1697 (ite c!501405 lambda!113221 lambda!113222)))))

(declare-fun b!3033530 () Bool)

(declare-fun c!501407 () Bool)

(assert (=> b!3033530 (= c!501407 ((_ is Union!9431) r!17423))))

(declare-fun e!1902353 () Bool)

(assert (=> b!3033530 (= e!1902351 e!1902353)))

(declare-fun d!851447 () Bool)

(declare-fun c!501406 () Bool)

(assert (=> d!851447 (= c!501406 ((_ is EmptyExpr!9431) r!17423))))

(declare-fun e!1902355 () Bool)

(assert (=> d!851447 (= (matchRSpec!1568 r!17423 s!11993) e!1902355)))

(declare-fun b!3033531 () Bool)

(declare-fun res!1247987 () Bool)

(assert (=> b!3033531 (=> res!1247987 e!1902354)))

(declare-fun call!206889 () Bool)

(assert (=> b!3033531 (= res!1247987 call!206889)))

(assert (=> b!3033531 (= e!1902356 e!1902354)))

(declare-fun b!3033532 () Bool)

(declare-fun c!501408 () Bool)

(assert (=> b!3033532 (= c!501408 ((_ is ElementMatch!9431) r!17423))))

(declare-fun e!1902357 () Bool)

(assert (=> b!3033532 (= e!1902357 e!1902351)))

(declare-fun b!3033533 () Bool)

(assert (=> b!3033533 (= e!1902355 call!206889)))

(declare-fun b!3033534 () Bool)

(declare-fun e!1902352 () Bool)

(assert (=> b!3033534 (= e!1902353 e!1902352)))

(declare-fun res!1247988 () Bool)

(assert (=> b!3033534 (= res!1247988 (matchRSpec!1568 (regOne!19375 r!17423) s!11993))))

(assert (=> b!3033534 (=> res!1247988 e!1902352)))

(declare-fun bm!206885 () Bool)

(assert (=> bm!206885 (= call!206889 (isEmpty!19472 s!11993))))

(declare-fun b!3033535 () Bool)

(assert (=> b!3033535 (= e!1902353 e!1902356)))

(assert (=> b!3033535 (= c!501405 ((_ is Star!9431) r!17423))))

(declare-fun b!3033536 () Bool)

(assert (=> b!3033536 (= e!1902355 e!1902357)))

(declare-fun res!1247989 () Bool)

(assert (=> b!3033536 (= res!1247989 (not ((_ is EmptyLang!9431) r!17423)))))

(assert (=> b!3033536 (=> (not res!1247989) (not e!1902357))))

(declare-fun b!3033537 () Bool)

(assert (=> b!3033537 (= e!1902352 (matchRSpec!1568 (regTwo!19375 r!17423) s!11993))))

(assert (= (and d!851447 c!501406) b!3033533))

(assert (= (and d!851447 (not c!501406)) b!3033536))

(assert (= (and b!3033536 res!1247989) b!3033532))

(assert (= (and b!3033532 c!501408) b!3033527))

(assert (= (and b!3033532 (not c!501408)) b!3033530))

(assert (= (and b!3033530 c!501407) b!3033534))

(assert (= (and b!3033530 (not c!501407)) b!3033535))

(assert (= (and b!3033534 (not res!1247988)) b!3033537))

(assert (= (and b!3033535 c!501405) b!3033531))

(assert (= (and b!3033535 (not c!501405)) b!3033529))

(assert (= (and b!3033531 (not res!1247987)) b!3033528))

(assert (= (or b!3033528 b!3033529) bm!206884))

(assert (= (or b!3033533 b!3033531) bm!206885))

(declare-fun m!3368957 () Bool)

(assert (=> bm!206884 m!3368957))

(declare-fun m!3368959 () Bool)

(assert (=> b!3033534 m!3368959))

(assert (=> bm!206885 m!3368891))

(declare-fun m!3368961 () Bool)

(assert (=> b!3033537 m!3368961))

(assert (=> b!3033060 d!851447))

(declare-fun b!3033542 () Bool)

(declare-fun res!1247991 () Bool)

(declare-fun e!1902363 () Bool)

(assert (=> b!3033542 (=> (not res!1247991) (not e!1902363))))

(declare-fun call!206891 () Bool)

(assert (=> b!3033542 (= res!1247991 (not call!206891))))

(declare-fun b!3033543 () Bool)

(assert (=> b!3033543 (= e!1902363 (= (head!6737 s!11993) (c!501281 r!17423)))))

(declare-fun b!3033544 () Bool)

(declare-fun res!1247992 () Bool)

(declare-fun e!1902359 () Bool)

(assert (=> b!3033544 (=> res!1247992 e!1902359)))

(assert (=> b!3033544 (= res!1247992 (not (isEmpty!19472 (tail!4963 s!11993))))))

(declare-fun b!3033545 () Bool)

(declare-fun e!1902364 () Bool)

(declare-fun lt!1046275 () Bool)

(assert (=> b!3033545 (= e!1902364 (= lt!1046275 call!206891))))

(declare-fun bm!206886 () Bool)

(assert (=> bm!206886 (= call!206891 (isEmpty!19472 s!11993))))

(declare-fun d!851461 () Bool)

(assert (=> d!851461 e!1902364))

(declare-fun c!501411 () Bool)

(assert (=> d!851461 (= c!501411 ((_ is EmptyExpr!9431) r!17423))))

(declare-fun e!1902362 () Bool)

(assert (=> d!851461 (= lt!1046275 e!1902362)))

(declare-fun c!501410 () Bool)

(assert (=> d!851461 (= c!501410 (isEmpty!19472 s!11993))))

(assert (=> d!851461 (validRegex!4164 r!17423)))

(assert (=> d!851461 (= (matchR!4313 r!17423 s!11993) lt!1046275)))

(declare-fun b!3033546 () Bool)

(declare-fun res!1247997 () Bool)

(assert (=> b!3033546 (=> (not res!1247997) (not e!1902363))))

(assert (=> b!3033546 (= res!1247997 (isEmpty!19472 (tail!4963 s!11993)))))

(declare-fun b!3033547 () Bool)

(assert (=> b!3033547 (= e!1902362 (matchR!4313 (derivativeStep!2678 r!17423 (head!6737 s!11993)) (tail!4963 s!11993)))))

(declare-fun b!3033548 () Bool)

(declare-fun e!1902360 () Bool)

(assert (=> b!3033548 (= e!1902360 e!1902359)))

(declare-fun res!1247994 () Bool)

(assert (=> b!3033548 (=> res!1247994 e!1902359)))

(assert (=> b!3033548 (= res!1247994 call!206891)))

(declare-fun b!3033549 () Bool)

(declare-fun res!1247993 () Bool)

(declare-fun e!1902358 () Bool)

(assert (=> b!3033549 (=> res!1247993 e!1902358)))

(assert (=> b!3033549 (= res!1247993 e!1902363)))

(declare-fun res!1247990 () Bool)

(assert (=> b!3033549 (=> (not res!1247990) (not e!1902363))))

(assert (=> b!3033549 (= res!1247990 lt!1046275)))

(declare-fun b!3033550 () Bool)

(declare-fun res!1247995 () Bool)

(assert (=> b!3033550 (=> res!1247995 e!1902358)))

(assert (=> b!3033550 (= res!1247995 (not ((_ is ElementMatch!9431) r!17423)))))

(declare-fun e!1902361 () Bool)

(assert (=> b!3033550 (= e!1902361 e!1902358)))

(declare-fun b!3033551 () Bool)

(assert (=> b!3033551 (= e!1902364 e!1902361)))

(declare-fun c!501409 () Bool)

(assert (=> b!3033551 (= c!501409 ((_ is EmptyLang!9431) r!17423))))

(declare-fun b!3033552 () Bool)

(assert (=> b!3033552 (= e!1902361 (not lt!1046275))))

(declare-fun b!3033553 () Bool)

(assert (=> b!3033553 (= e!1902358 e!1902360)))

(declare-fun res!1247996 () Bool)

(assert (=> b!3033553 (=> (not res!1247996) (not e!1902360))))

(assert (=> b!3033553 (= res!1247996 (not lt!1046275))))

(declare-fun b!3033554 () Bool)

(assert (=> b!3033554 (= e!1902362 (nullable!3081 r!17423))))

(declare-fun b!3033555 () Bool)

(assert (=> b!3033555 (= e!1902359 (not (= (head!6737 s!11993) (c!501281 r!17423))))))

(assert (= (and d!851461 c!501410) b!3033554))

(assert (= (and d!851461 (not c!501410)) b!3033547))

(assert (= (and d!851461 c!501411) b!3033545))

(assert (= (and d!851461 (not c!501411)) b!3033551))

(assert (= (and b!3033551 c!501409) b!3033552))

(assert (= (and b!3033551 (not c!501409)) b!3033550))

(assert (= (and b!3033550 (not res!1247995)) b!3033549))

(assert (= (and b!3033549 res!1247990) b!3033542))

(assert (= (and b!3033542 res!1247991) b!3033546))

(assert (= (and b!3033546 res!1247997) b!3033543))

(assert (= (and b!3033549 (not res!1247993)) b!3033553))

(assert (= (and b!3033553 res!1247996) b!3033548))

(assert (= (and b!3033548 (not res!1247994)) b!3033544))

(assert (= (and b!3033544 (not res!1247992)) b!3033555))

(assert (= (or b!3033545 b!3033542 b!3033548) bm!206886))

(assert (=> b!3033555 m!3368885))

(assert (=> b!3033546 m!3368887))

(assert (=> b!3033546 m!3368887))

(assert (=> b!3033546 m!3368889))

(assert (=> bm!206886 m!3368891))

(assert (=> d!851461 m!3368891))

(assert (=> d!851461 m!3368811))

(assert (=> b!3033547 m!3368885))

(assert (=> b!3033547 m!3368885))

(declare-fun m!3368963 () Bool)

(assert (=> b!3033547 m!3368963))

(assert (=> b!3033547 m!3368887))

(assert (=> b!3033547 m!3368963))

(assert (=> b!3033547 m!3368887))

(declare-fun m!3368965 () Bool)

(assert (=> b!3033547 m!3368965))

(assert (=> b!3033544 m!3368887))

(assert (=> b!3033544 m!3368887))

(assert (=> b!3033544 m!3368889))

(assert (=> b!3033543 m!3368885))

(declare-fun m!3368967 () Bool)

(assert (=> b!3033554 m!3368967))

(assert (=> b!3033060 d!851461))

(declare-fun d!851463 () Bool)

(assert (=> d!851463 (= (matchR!4313 r!17423 s!11993) (matchRSpec!1568 r!17423 s!11993))))

(declare-fun lt!1046278 () Unit!49285)

(declare-fun choose!17989 (Regex!9431 List!35296) Unit!49285)

(assert (=> d!851463 (= lt!1046278 (choose!17989 r!17423 s!11993))))

(assert (=> d!851463 (validRegex!4164 r!17423)))

(assert (=> d!851463 (= (mainMatchTheorem!1568 r!17423 s!11993) lt!1046278)))

(declare-fun bs!530907 () Bool)

(assert (= bs!530907 d!851463))

(assert (=> bs!530907 m!3368821))

(assert (=> bs!530907 m!3368819))

(declare-fun m!3368969 () Bool)

(assert (=> bs!530907 m!3368969))

(assert (=> bs!530907 m!3368811))

(assert (=> b!3033060 d!851463))

(declare-fun d!851465 () Bool)

(declare-fun res!1248002 () Bool)

(declare-fun e!1902371 () Bool)

(assert (=> d!851465 (=> res!1248002 e!1902371)))

(assert (=> d!851465 (= res!1248002 ((_ is ElementMatch!9431) (regTwo!19375 r!17423)))))

(assert (=> d!851465 (= (validRegex!4164 (regTwo!19375 r!17423)) e!1902371)))

(declare-fun b!3033556 () Bool)

(declare-fun res!1248001 () Bool)

(declare-fun e!1902369 () Bool)

(assert (=> b!3033556 (=> res!1248001 e!1902369)))

(assert (=> b!3033556 (= res!1248001 (not ((_ is Concat!14752) (regTwo!19375 r!17423))))))

(declare-fun e!1902368 () Bool)

(assert (=> b!3033556 (= e!1902368 e!1902369)))

(declare-fun b!3033557 () Bool)

(declare-fun e!1902367 () Bool)

(declare-fun call!206893 () Bool)

(assert (=> b!3033557 (= e!1902367 call!206893)))

(declare-fun c!501412 () Bool)

(declare-fun call!206894 () Bool)

(declare-fun bm!206887 () Bool)

(declare-fun c!501413 () Bool)

(assert (=> bm!206887 (= call!206894 (validRegex!4164 (ite c!501412 (reg!9760 (regTwo!19375 r!17423)) (ite c!501413 (regTwo!19375 (regTwo!19375 r!17423)) (regOne!19374 (regTwo!19375 r!17423))))))))

(declare-fun b!3033558 () Bool)

(declare-fun e!1902365 () Bool)

(assert (=> b!3033558 (= e!1902371 e!1902365)))

(assert (=> b!3033558 (= c!501412 ((_ is Star!9431) (regTwo!19375 r!17423)))))

(declare-fun bm!206888 () Bool)

(assert (=> bm!206888 (= call!206893 (validRegex!4164 (ite c!501413 (regOne!19375 (regTwo!19375 r!17423)) (regTwo!19374 (regTwo!19375 r!17423)))))))

(declare-fun b!3033559 () Bool)

(assert (=> b!3033559 (= e!1902365 e!1902368)))

(assert (=> b!3033559 (= c!501413 ((_ is Union!9431) (regTwo!19375 r!17423)))))

(declare-fun b!3033560 () Bool)

(declare-fun e!1902370 () Bool)

(declare-fun call!206892 () Bool)

(assert (=> b!3033560 (= e!1902370 call!206892)))

(declare-fun b!3033561 () Bool)

(declare-fun res!1247998 () Bool)

(assert (=> b!3033561 (=> (not res!1247998) (not e!1902370))))

(assert (=> b!3033561 (= res!1247998 call!206893)))

(assert (=> b!3033561 (= e!1902368 e!1902370)))

(declare-fun b!3033562 () Bool)

(declare-fun e!1902366 () Bool)

(assert (=> b!3033562 (= e!1902366 call!206894)))

(declare-fun bm!206889 () Bool)

(assert (=> bm!206889 (= call!206892 call!206894)))

(declare-fun b!3033563 () Bool)

(assert (=> b!3033563 (= e!1902369 e!1902367)))

(declare-fun res!1247999 () Bool)

(assert (=> b!3033563 (=> (not res!1247999) (not e!1902367))))

(assert (=> b!3033563 (= res!1247999 call!206892)))

(declare-fun b!3033564 () Bool)

(assert (=> b!3033564 (= e!1902365 e!1902366)))

(declare-fun res!1248000 () Bool)

(assert (=> b!3033564 (= res!1248000 (not (nullable!3081 (reg!9760 (regTwo!19375 r!17423)))))))

(assert (=> b!3033564 (=> (not res!1248000) (not e!1902366))))

(assert (= (and d!851465 (not res!1248002)) b!3033558))

(assert (= (and b!3033558 c!501412) b!3033564))

(assert (= (and b!3033558 (not c!501412)) b!3033559))

(assert (= (and b!3033564 res!1248000) b!3033562))

(assert (= (and b!3033559 c!501413) b!3033561))

(assert (= (and b!3033559 (not c!501413)) b!3033556))

(assert (= (and b!3033561 res!1247998) b!3033560))

(assert (= (and b!3033556 (not res!1248001)) b!3033563))

(assert (= (and b!3033563 res!1247999) b!3033557))

(assert (= (or b!3033561 b!3033557) bm!206888))

(assert (= (or b!3033560 b!3033563) bm!206889))

(assert (= (or b!3033562 bm!206889) bm!206887))

(declare-fun m!3368971 () Bool)

(assert (=> bm!206887 m!3368971))

(declare-fun m!3368973 () Bool)

(assert (=> bm!206888 m!3368973))

(declare-fun m!3368975 () Bool)

(assert (=> b!3033564 m!3368975))

(assert (=> b!3033056 d!851465))

(declare-fun e!1902374 () Bool)

(assert (=> b!3033063 (= tp!961081 e!1902374)))

(declare-fun b!3033578 () Bool)

(declare-fun tp!961134 () Bool)

(declare-fun tp!961137 () Bool)

(assert (=> b!3033578 (= e!1902374 (and tp!961134 tp!961137))))

(declare-fun b!3033576 () Bool)

(declare-fun tp!961138 () Bool)

(declare-fun tp!961135 () Bool)

(assert (=> b!3033576 (= e!1902374 (and tp!961138 tp!961135))))

(declare-fun b!3033577 () Bool)

(declare-fun tp!961136 () Bool)

(assert (=> b!3033577 (= e!1902374 tp!961136)))

(declare-fun b!3033575 () Bool)

(assert (=> b!3033575 (= e!1902374 tp_is_empty!16425)))

(assert (= (and b!3033063 ((_ is ElementMatch!9431) (regOne!19375 r!17423))) b!3033575))

(assert (= (and b!3033063 ((_ is Concat!14752) (regOne!19375 r!17423))) b!3033576))

(assert (= (and b!3033063 ((_ is Star!9431) (regOne!19375 r!17423))) b!3033577))

(assert (= (and b!3033063 ((_ is Union!9431) (regOne!19375 r!17423))) b!3033578))

(declare-fun e!1902375 () Bool)

(assert (=> b!3033063 (= tp!961082 e!1902375)))

(declare-fun b!3033582 () Bool)

(declare-fun tp!961139 () Bool)

(declare-fun tp!961142 () Bool)

(assert (=> b!3033582 (= e!1902375 (and tp!961139 tp!961142))))

(declare-fun b!3033580 () Bool)

(declare-fun tp!961143 () Bool)

(declare-fun tp!961140 () Bool)

(assert (=> b!3033580 (= e!1902375 (and tp!961143 tp!961140))))

(declare-fun b!3033581 () Bool)

(declare-fun tp!961141 () Bool)

(assert (=> b!3033581 (= e!1902375 tp!961141)))

(declare-fun b!3033579 () Bool)

(assert (=> b!3033579 (= e!1902375 tp_is_empty!16425)))

(assert (= (and b!3033063 ((_ is ElementMatch!9431) (regTwo!19375 r!17423))) b!3033579))

(assert (= (and b!3033063 ((_ is Concat!14752) (regTwo!19375 r!17423))) b!3033580))

(assert (= (and b!3033063 ((_ is Star!9431) (regTwo!19375 r!17423))) b!3033581))

(assert (= (and b!3033063 ((_ is Union!9431) (regTwo!19375 r!17423))) b!3033582))

(declare-fun b!3033587 () Bool)

(declare-fun e!1902378 () Bool)

(declare-fun tp!961146 () Bool)

(assert (=> b!3033587 (= e!1902378 (and tp_is_empty!16425 tp!961146))))

(assert (=> b!3033058 (= tp!961083 e!1902378)))

(assert (= (and b!3033058 ((_ is Cons!35172) (t!234361 s!11993))) b!3033587))

(declare-fun e!1902379 () Bool)

(assert (=> b!3033059 (= tp!961084 e!1902379)))

(declare-fun b!3033591 () Bool)

(declare-fun tp!961147 () Bool)

(declare-fun tp!961150 () Bool)

(assert (=> b!3033591 (= e!1902379 (and tp!961147 tp!961150))))

(declare-fun b!3033589 () Bool)

(declare-fun tp!961151 () Bool)

(declare-fun tp!961148 () Bool)

(assert (=> b!3033589 (= e!1902379 (and tp!961151 tp!961148))))

(declare-fun b!3033590 () Bool)

(declare-fun tp!961149 () Bool)

(assert (=> b!3033590 (= e!1902379 tp!961149)))

(declare-fun b!3033588 () Bool)

(assert (=> b!3033588 (= e!1902379 tp_is_empty!16425)))

(assert (= (and b!3033059 ((_ is ElementMatch!9431) (reg!9760 r!17423))) b!3033588))

(assert (= (and b!3033059 ((_ is Concat!14752) (reg!9760 r!17423))) b!3033589))

(assert (= (and b!3033059 ((_ is Star!9431) (reg!9760 r!17423))) b!3033590))

(assert (= (and b!3033059 ((_ is Union!9431) (reg!9760 r!17423))) b!3033591))

(declare-fun e!1902380 () Bool)

(assert (=> b!3033061 (= tp!961080 e!1902380)))

(declare-fun b!3033595 () Bool)

(declare-fun tp!961152 () Bool)

(declare-fun tp!961155 () Bool)

(assert (=> b!3033595 (= e!1902380 (and tp!961152 tp!961155))))

(declare-fun b!3033593 () Bool)

(declare-fun tp!961156 () Bool)

(declare-fun tp!961153 () Bool)

(assert (=> b!3033593 (= e!1902380 (and tp!961156 tp!961153))))

(declare-fun b!3033594 () Bool)

(declare-fun tp!961154 () Bool)

(assert (=> b!3033594 (= e!1902380 tp!961154)))

(declare-fun b!3033592 () Bool)

(assert (=> b!3033592 (= e!1902380 tp_is_empty!16425)))

(assert (= (and b!3033061 ((_ is ElementMatch!9431) (regOne!19374 r!17423))) b!3033592))

(assert (= (and b!3033061 ((_ is Concat!14752) (regOne!19374 r!17423))) b!3033593))

(assert (= (and b!3033061 ((_ is Star!9431) (regOne!19374 r!17423))) b!3033594))

(assert (= (and b!3033061 ((_ is Union!9431) (regOne!19374 r!17423))) b!3033595))

(declare-fun e!1902381 () Bool)

(assert (=> b!3033061 (= tp!961085 e!1902381)))

(declare-fun b!3033599 () Bool)

(declare-fun tp!961157 () Bool)

(declare-fun tp!961160 () Bool)

(assert (=> b!3033599 (= e!1902381 (and tp!961157 tp!961160))))

(declare-fun b!3033597 () Bool)

(declare-fun tp!961161 () Bool)

(declare-fun tp!961158 () Bool)

(assert (=> b!3033597 (= e!1902381 (and tp!961161 tp!961158))))

(declare-fun b!3033598 () Bool)

(declare-fun tp!961159 () Bool)

(assert (=> b!3033598 (= e!1902381 tp!961159)))

(declare-fun b!3033596 () Bool)

(assert (=> b!3033596 (= e!1902381 tp_is_empty!16425)))

(assert (= (and b!3033061 ((_ is ElementMatch!9431) (regTwo!19374 r!17423))) b!3033596))

(assert (= (and b!3033061 ((_ is Concat!14752) (regTwo!19374 r!17423))) b!3033597))

(assert (= (and b!3033061 ((_ is Star!9431) (regTwo!19374 r!17423))) b!3033598))

(assert (= (and b!3033061 ((_ is Union!9431) (regTwo!19374 r!17423))) b!3033599))

(check-sat (not bm!206817) (not b!3033547) (not bm!206824) (not b!3033317) (not b!3033593) (not bm!206812) (not b!3033319) (not bm!206885) (not d!851463) (not bm!206888) (not b!3033544) (not b!3033175) (not b!3033260) (not bm!206813) (not b!3033256) (not b!3033590) (not b!3033580) (not b!3033257) (not bm!206831) (not bm!206887) (not b!3033597) (not bm!206841) (not b!3033599) (not b!3033546) (not b!3033554) (not b!3033576) (not b!3033537) (not bm!206821) (not b!3033320) (not b!3033259) (not d!851445) (not b!3033331) (not b!3033322) (not b!3033534) (not bm!206886) (not bm!206822) (not bm!206815) (not b!3033578) (not d!851461) (not b!3033582) (not d!851443) (not b!3033330) (not bm!206816) (not bm!206839) (not b!3033587) (not b!3033598) (not b!3033591) (not b!3033336) (not bm!206838) (not b!3033595) tp_is_empty!16425 (not bm!206884) (not b!3033543) (not b!3033268) (not b!3033581) (not b!3033555) (not b!3033589) (not bm!206825) (not b!3033337) (not b!3033267) (not b!3033594) (not b!3033564) (not d!851433) (not b!3033323) (not b!3033577) (not bm!206826))
(check-sat)
