; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!80364 () Bool)

(assert start!80364)

(declare-fun b!891032 () Bool)

(declare-fun e!583776 () Bool)

(declare-fun tp!280470 () Bool)

(declare-fun tp!280472 () Bool)

(assert (=> b!891032 (= e!583776 (and tp!280470 tp!280472))))

(declare-fun b!891034 () Bool)

(declare-fun e!583774 () Bool)

(declare-fun tp_is_empty!4263 () Bool)

(declare-fun tp!280473 () Bool)

(assert (=> b!891034 (= e!583774 (and tp_is_empty!4263 tp!280473))))

(declare-fun b!891035 () Bool)

(declare-fun e!583775 () Bool)

(declare-fun e!583777 () Bool)

(assert (=> b!891035 (= e!583775 (not e!583777))))

(declare-fun res!405133 () Bool)

(assert (=> b!891035 (=> res!405133 e!583777)))

(declare-fun lt!332407 () Bool)

(declare-datatypes ((C!5190 0))(
  ( (C!5191 (val!2843 Int)) )
))
(declare-datatypes ((Regex!2310 0))(
  ( (ElementMatch!2310 (c!144191 C!5190)) (Concat!4143 (regOne!5132 Regex!2310) (regTwo!5132 Regex!2310)) (EmptyExpr!2310) (Star!2310 (reg!2639 Regex!2310)) (EmptyLang!2310) (Union!2310 (regOne!5133 Regex!2310) (regTwo!5133 Regex!2310)) )
))
(declare-fun r!15766 () Regex!2310)

(assert (=> b!891035 (= res!405133 (or (not lt!332407) (and (is-Concat!4143 r!15766) (is-EmptyExpr!2310 (regOne!5132 r!15766))) (and (is-Concat!4143 r!15766) (is-EmptyExpr!2310 (regTwo!5132 r!15766))) (is-Concat!4143 r!15766) (not (is-Union!2310 r!15766))))))

(declare-datatypes ((List!9540 0))(
  ( (Nil!9524) (Cons!9524 (h!14925 C!5190) (t!100586 List!9540)) )
))
(declare-fun s!10566 () List!9540)

(declare-fun matchRSpec!111 (Regex!2310 List!9540) Bool)

(assert (=> b!891035 (= lt!332407 (matchRSpec!111 r!15766 s!10566))))

(declare-fun matchR!848 (Regex!2310 List!9540) Bool)

(assert (=> b!891035 (= lt!332407 (matchR!848 r!15766 s!10566))))

(declare-datatypes ((Unit!14199 0))(
  ( (Unit!14200) )
))
(declare-fun lt!332410 () Unit!14199)

(declare-fun mainMatchTheorem!111 (Regex!2310 List!9540) Unit!14199)

(assert (=> b!891035 (= lt!332410 (mainMatchTheorem!111 r!15766 s!10566))))

(declare-fun b!891036 () Bool)

(assert (=> b!891036 (= e!583776 tp_is_empty!4263)))

(declare-fun b!891037 () Bool)

(declare-fun tp!280474 () Bool)

(assert (=> b!891037 (= e!583776 tp!280474)))

(declare-fun b!891038 () Bool)

(declare-fun e!583779 () Bool)

(assert (=> b!891038 (= e!583777 e!583779)))

(declare-fun res!405136 () Bool)

(assert (=> b!891038 (=> res!405136 e!583779)))

(declare-fun lt!332406 () Bool)

(assert (=> b!891038 (= res!405136 lt!332406)))

(declare-fun e!583778 () Bool)

(assert (=> b!891038 e!583778))

(declare-fun res!405135 () Bool)

(assert (=> b!891038 (=> res!405135 e!583778)))

(assert (=> b!891038 (= res!405135 lt!332406)))

(assert (=> b!891038 (= lt!332406 (matchR!848 (regOne!5133 r!15766) s!10566))))

(declare-fun lt!332411 () Unit!14199)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!21 (Regex!2310 Regex!2310 List!9540) Unit!14199)

(assert (=> b!891038 (= lt!332411 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!21 (regOne!5133 r!15766) (regTwo!5133 r!15766) s!10566))))

(declare-fun res!405134 () Bool)

(assert (=> start!80364 (=> (not res!405134) (not e!583775))))

(declare-fun validRegex!779 (Regex!2310) Bool)

(assert (=> start!80364 (= res!405134 (validRegex!779 r!15766))))

(assert (=> start!80364 e!583775))

(assert (=> start!80364 e!583776))

(assert (=> start!80364 e!583774))

(declare-fun b!891033 () Bool)

(assert (=> b!891033 (= e!583778 (matchR!848 (regTwo!5133 r!15766) s!10566))))

(declare-fun b!891039 () Bool)

(declare-fun tp!280469 () Bool)

(declare-fun tp!280471 () Bool)

(assert (=> b!891039 (= e!583776 (and tp!280469 tp!280471))))

(declare-fun b!891040 () Bool)

(declare-fun lt!332409 () Regex!2310)

(assert (=> b!891040 (= e!583779 (validRegex!779 lt!332409))))

(assert (=> b!891040 (= (matchR!848 (regTwo!5133 r!15766) s!10566) (matchR!848 lt!332409 s!10566))))

(declare-fun removeUselessConcat!45 (Regex!2310) Regex!2310)

(assert (=> b!891040 (= lt!332409 (removeUselessConcat!45 (regTwo!5133 r!15766)))))

(declare-fun lt!332408 () Unit!14199)

(declare-fun lemmaRemoveUselessConcatSound!39 (Regex!2310 List!9540) Unit!14199)

(assert (=> b!891040 (= lt!332408 (lemmaRemoveUselessConcatSound!39 (regTwo!5133 r!15766) s!10566))))

(assert (= (and start!80364 res!405134) b!891035))

(assert (= (and b!891035 (not res!405133)) b!891038))

(assert (= (and b!891038 (not res!405135)) b!891033))

(assert (= (and b!891038 (not res!405136)) b!891040))

(assert (= (and start!80364 (is-ElementMatch!2310 r!15766)) b!891036))

(assert (= (and start!80364 (is-Concat!4143 r!15766)) b!891032))

(assert (= (and start!80364 (is-Star!2310 r!15766)) b!891037))

(assert (= (and start!80364 (is-Union!2310 r!15766)) b!891039))

(assert (= (and start!80364 (is-Cons!9524 s!10566)) b!891034))

(declare-fun m!1133993 () Bool)

(assert (=> b!891033 m!1133993))

(declare-fun m!1133995 () Bool)

(assert (=> b!891038 m!1133995))

(declare-fun m!1133997 () Bool)

(assert (=> b!891038 m!1133997))

(declare-fun m!1133999 () Bool)

(assert (=> b!891035 m!1133999))

(declare-fun m!1134001 () Bool)

(assert (=> b!891035 m!1134001))

(declare-fun m!1134003 () Bool)

(assert (=> b!891035 m!1134003))

(assert (=> b!891040 m!1133993))

(declare-fun m!1134005 () Bool)

(assert (=> b!891040 m!1134005))

(declare-fun m!1134007 () Bool)

(assert (=> b!891040 m!1134007))

(declare-fun m!1134009 () Bool)

(assert (=> b!891040 m!1134009))

(declare-fun m!1134011 () Bool)

(assert (=> b!891040 m!1134011))

(declare-fun m!1134013 () Bool)

(assert (=> start!80364 m!1134013))

(push 1)

(assert tp_is_empty!4263)

(assert (not b!891034))

(assert (not b!891038))

(assert (not b!891037))

(assert (not b!891033))

(assert (not start!80364))

(assert (not b!891039))

(assert (not b!891032))

(assert (not b!891035))

(assert (not b!891040))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!891138 () Bool)

(declare-fun e!583836 () Bool)

(declare-fun derivativeStep!414 (Regex!2310 C!5190) Regex!2310)

(declare-fun head!1567 (List!9540) C!5190)

(declare-fun tail!1129 (List!9540) List!9540)

(assert (=> b!891138 (= e!583836 (matchR!848 (derivativeStep!414 (regTwo!5133 r!15766) (head!1567 s!10566)) (tail!1129 s!10566)))))

(declare-fun b!891139 () Bool)

(declare-fun res!405192 () Bool)

(declare-fun e!583838 () Bool)

(assert (=> b!891139 (=> (not res!405192) (not e!583838))))

(declare-fun isEmpty!5724 (List!9540) Bool)

(assert (=> b!891139 (= res!405192 (isEmpty!5724 (tail!1129 s!10566)))))

(declare-fun b!891140 () Bool)

(declare-fun e!583834 () Bool)

(declare-fun e!583835 () Bool)

(assert (=> b!891140 (= e!583834 e!583835)))

(declare-fun res!405189 () Bool)

(assert (=> b!891140 (=> (not res!405189) (not e!583835))))

(declare-fun lt!332435 () Bool)

(assert (=> b!891140 (= res!405189 (not lt!332435))))

(declare-fun b!891141 () Bool)

(declare-fun res!405190 () Bool)

(assert (=> b!891141 (=> res!405190 e!583834)))

(assert (=> b!891141 (= res!405190 (not (is-ElementMatch!2310 (regTwo!5133 r!15766))))))

(declare-fun e!583839 () Bool)

(assert (=> b!891141 (= e!583839 e!583834)))

(declare-fun b!891142 () Bool)

(declare-fun e!583837 () Bool)

(assert (=> b!891142 (= e!583837 e!583839)))

(declare-fun c!144210 () Bool)

(assert (=> b!891142 (= c!144210 (is-EmptyLang!2310 (regTwo!5133 r!15766)))))

(declare-fun b!891143 () Bool)

(declare-fun call!52609 () Bool)

(assert (=> b!891143 (= e!583837 (= lt!332435 call!52609))))

(declare-fun b!891144 () Bool)

(declare-fun e!583833 () Bool)

(assert (=> b!891144 (= e!583833 (not (= (head!1567 s!10566) (c!144191 (regTwo!5133 r!15766)))))))

(declare-fun b!891145 () Bool)

(declare-fun nullable!602 (Regex!2310) Bool)

(assert (=> b!891145 (= e!583836 (nullable!602 (regTwo!5133 r!15766)))))

(declare-fun d!277365 () Bool)

(assert (=> d!277365 e!583837))

(declare-fun c!144208 () Bool)

(assert (=> d!277365 (= c!144208 (is-EmptyExpr!2310 (regTwo!5133 r!15766)))))

(assert (=> d!277365 (= lt!332435 e!583836)))

(declare-fun c!144209 () Bool)

(assert (=> d!277365 (= c!144209 (isEmpty!5724 s!10566))))

(assert (=> d!277365 (validRegex!779 (regTwo!5133 r!15766))))

(assert (=> d!277365 (= (matchR!848 (regTwo!5133 r!15766) s!10566) lt!332435)))

(declare-fun b!891146 () Bool)

(assert (=> b!891146 (= e!583835 e!583833)))

(declare-fun res!405194 () Bool)

(assert (=> b!891146 (=> res!405194 e!583833)))

(assert (=> b!891146 (= res!405194 call!52609)))

(declare-fun b!891147 () Bool)

(declare-fun res!405193 () Bool)

(assert (=> b!891147 (=> res!405193 e!583833)))

(assert (=> b!891147 (= res!405193 (not (isEmpty!5724 (tail!1129 s!10566))))))

(declare-fun b!891148 () Bool)

(assert (=> b!891148 (= e!583838 (= (head!1567 s!10566) (c!144191 (regTwo!5133 r!15766))))))

(declare-fun bm!52604 () Bool)

(assert (=> bm!52604 (= call!52609 (isEmpty!5724 s!10566))))

(declare-fun b!891149 () Bool)

(declare-fun res!405191 () Bool)

(assert (=> b!891149 (=> res!405191 e!583834)))

(assert (=> b!891149 (= res!405191 e!583838)))

(declare-fun res!405195 () Bool)

(assert (=> b!891149 (=> (not res!405195) (not e!583838))))

(assert (=> b!891149 (= res!405195 lt!332435)))

(declare-fun b!891150 () Bool)

(assert (=> b!891150 (= e!583839 (not lt!332435))))

(declare-fun b!891151 () Bool)

(declare-fun res!405196 () Bool)

(assert (=> b!891151 (=> (not res!405196) (not e!583838))))

(assert (=> b!891151 (= res!405196 (not call!52609))))

(assert (= (and d!277365 c!144209) b!891145))

(assert (= (and d!277365 (not c!144209)) b!891138))

(assert (= (and d!277365 c!144208) b!891143))

(assert (= (and d!277365 (not c!144208)) b!891142))

(assert (= (and b!891142 c!144210) b!891150))

(assert (= (and b!891142 (not c!144210)) b!891141))

(assert (= (and b!891141 (not res!405190)) b!891149))

(assert (= (and b!891149 res!405195) b!891151))

(assert (= (and b!891151 res!405196) b!891139))

(assert (= (and b!891139 res!405192) b!891148))

(assert (= (and b!891149 (not res!405191)) b!891140))

(assert (= (and b!891140 res!405189) b!891146))

(assert (= (and b!891146 (not res!405194)) b!891147))

(assert (= (and b!891147 (not res!405193)) b!891144))

(assert (= (or b!891143 b!891146 b!891151) bm!52604))

(declare-fun m!1134053 () Bool)

(assert (=> b!891148 m!1134053))

(declare-fun m!1134055 () Bool)

(assert (=> b!891147 m!1134055))

(assert (=> b!891147 m!1134055))

(declare-fun m!1134057 () Bool)

(assert (=> b!891147 m!1134057))

(assert (=> b!891138 m!1134053))

(assert (=> b!891138 m!1134053))

(declare-fun m!1134059 () Bool)

(assert (=> b!891138 m!1134059))

(assert (=> b!891138 m!1134055))

(assert (=> b!891138 m!1134059))

(assert (=> b!891138 m!1134055))

(declare-fun m!1134061 () Bool)

(assert (=> b!891138 m!1134061))

(assert (=> b!891139 m!1134055))

(assert (=> b!891139 m!1134055))

(assert (=> b!891139 m!1134057))

(declare-fun m!1134063 () Bool)

(assert (=> d!277365 m!1134063))

(declare-fun m!1134065 () Bool)

(assert (=> d!277365 m!1134065))

(assert (=> b!891144 m!1134053))

(assert (=> bm!52604 m!1134063))

(declare-fun m!1134067 () Bool)

(assert (=> b!891145 m!1134067))

(assert (=> b!891033 d!277365))

(declare-fun b!891152 () Bool)

(declare-fun e!583843 () Bool)

(assert (=> b!891152 (= e!583843 (matchR!848 (derivativeStep!414 (regOne!5133 r!15766) (head!1567 s!10566)) (tail!1129 s!10566)))))

(declare-fun b!891153 () Bool)

(declare-fun res!405200 () Bool)

(declare-fun e!583845 () Bool)

(assert (=> b!891153 (=> (not res!405200) (not e!583845))))

(assert (=> b!891153 (= res!405200 (isEmpty!5724 (tail!1129 s!10566)))))

(declare-fun b!891154 () Bool)

(declare-fun e!583841 () Bool)

(declare-fun e!583842 () Bool)

(assert (=> b!891154 (= e!583841 e!583842)))

(declare-fun res!405197 () Bool)

(assert (=> b!891154 (=> (not res!405197) (not e!583842))))

(declare-fun lt!332436 () Bool)

(assert (=> b!891154 (= res!405197 (not lt!332436))))

(declare-fun b!891155 () Bool)

(declare-fun res!405198 () Bool)

(assert (=> b!891155 (=> res!405198 e!583841)))

(assert (=> b!891155 (= res!405198 (not (is-ElementMatch!2310 (regOne!5133 r!15766))))))

(declare-fun e!583846 () Bool)

(assert (=> b!891155 (= e!583846 e!583841)))

(declare-fun b!891156 () Bool)

(declare-fun e!583844 () Bool)

(assert (=> b!891156 (= e!583844 e!583846)))

(declare-fun c!144213 () Bool)

(assert (=> b!891156 (= c!144213 (is-EmptyLang!2310 (regOne!5133 r!15766)))))

(declare-fun b!891157 () Bool)

(declare-fun call!52610 () Bool)

(assert (=> b!891157 (= e!583844 (= lt!332436 call!52610))))

(declare-fun b!891158 () Bool)

(declare-fun e!583840 () Bool)

(assert (=> b!891158 (= e!583840 (not (= (head!1567 s!10566) (c!144191 (regOne!5133 r!15766)))))))

(declare-fun b!891159 () Bool)

(assert (=> b!891159 (= e!583843 (nullable!602 (regOne!5133 r!15766)))))

(declare-fun d!277369 () Bool)

(assert (=> d!277369 e!583844))

(declare-fun c!144211 () Bool)

(assert (=> d!277369 (= c!144211 (is-EmptyExpr!2310 (regOne!5133 r!15766)))))

(assert (=> d!277369 (= lt!332436 e!583843)))

(declare-fun c!144212 () Bool)

(assert (=> d!277369 (= c!144212 (isEmpty!5724 s!10566))))

(assert (=> d!277369 (validRegex!779 (regOne!5133 r!15766))))

(assert (=> d!277369 (= (matchR!848 (regOne!5133 r!15766) s!10566) lt!332436)))

(declare-fun b!891160 () Bool)

(assert (=> b!891160 (= e!583842 e!583840)))

(declare-fun res!405202 () Bool)

(assert (=> b!891160 (=> res!405202 e!583840)))

(assert (=> b!891160 (= res!405202 call!52610)))

(declare-fun b!891161 () Bool)

(declare-fun res!405201 () Bool)

(assert (=> b!891161 (=> res!405201 e!583840)))

(assert (=> b!891161 (= res!405201 (not (isEmpty!5724 (tail!1129 s!10566))))))

(declare-fun b!891162 () Bool)

(assert (=> b!891162 (= e!583845 (= (head!1567 s!10566) (c!144191 (regOne!5133 r!15766))))))

(declare-fun bm!52605 () Bool)

(assert (=> bm!52605 (= call!52610 (isEmpty!5724 s!10566))))

(declare-fun b!891163 () Bool)

(declare-fun res!405199 () Bool)

(assert (=> b!891163 (=> res!405199 e!583841)))

(assert (=> b!891163 (= res!405199 e!583845)))

(declare-fun res!405203 () Bool)

(assert (=> b!891163 (=> (not res!405203) (not e!583845))))

(assert (=> b!891163 (= res!405203 lt!332436)))

(declare-fun b!891164 () Bool)

(assert (=> b!891164 (= e!583846 (not lt!332436))))

(declare-fun b!891165 () Bool)

(declare-fun res!405204 () Bool)

(assert (=> b!891165 (=> (not res!405204) (not e!583845))))

(assert (=> b!891165 (= res!405204 (not call!52610))))

(assert (= (and d!277369 c!144212) b!891159))

(assert (= (and d!277369 (not c!144212)) b!891152))

(assert (= (and d!277369 c!144211) b!891157))

(assert (= (and d!277369 (not c!144211)) b!891156))

(assert (= (and b!891156 c!144213) b!891164))

(assert (= (and b!891156 (not c!144213)) b!891155))

(assert (= (and b!891155 (not res!405198)) b!891163))

(assert (= (and b!891163 res!405203) b!891165))

(assert (= (and b!891165 res!405204) b!891153))

(assert (= (and b!891153 res!405200) b!891162))

(assert (= (and b!891163 (not res!405199)) b!891154))

(assert (= (and b!891154 res!405197) b!891160))

(assert (= (and b!891160 (not res!405202)) b!891161))

(assert (= (and b!891161 (not res!405201)) b!891158))

(assert (= (or b!891157 b!891160 b!891165) bm!52605))

(assert (=> b!891162 m!1134053))

(assert (=> b!891161 m!1134055))

(assert (=> b!891161 m!1134055))

(assert (=> b!891161 m!1134057))

(assert (=> b!891152 m!1134053))

(assert (=> b!891152 m!1134053))

(declare-fun m!1134069 () Bool)

(assert (=> b!891152 m!1134069))

(assert (=> b!891152 m!1134055))

(assert (=> b!891152 m!1134069))

(assert (=> b!891152 m!1134055))

(declare-fun m!1134071 () Bool)

(assert (=> b!891152 m!1134071))

(assert (=> b!891153 m!1134055))

(assert (=> b!891153 m!1134055))

(assert (=> b!891153 m!1134057))

(assert (=> d!277369 m!1134063))

(declare-fun m!1134073 () Bool)

(assert (=> d!277369 m!1134073))

(assert (=> b!891158 m!1134053))

(assert (=> bm!52605 m!1134063))

(declare-fun m!1134075 () Bool)

(assert (=> b!891159 m!1134075))

(assert (=> b!891038 d!277369))

(declare-fun d!277371 () Bool)

(declare-fun e!583865 () Bool)

(assert (=> d!277371 e!583865))

(declare-fun res!405216 () Bool)

(assert (=> d!277371 (=> res!405216 e!583865)))

(assert (=> d!277371 (= res!405216 (matchR!848 (regOne!5133 r!15766) s!10566))))

(declare-fun lt!332439 () Unit!14199)

(declare-fun choose!5326 (Regex!2310 Regex!2310 List!9540) Unit!14199)

(assert (=> d!277371 (= lt!332439 (choose!5326 (regOne!5133 r!15766) (regTwo!5133 r!15766) s!10566))))

(declare-fun e!583866 () Bool)

(assert (=> d!277371 e!583866))

(declare-fun res!405215 () Bool)

(assert (=> d!277371 (=> (not res!405215) (not e!583866))))

(assert (=> d!277371 (= res!405215 (validRegex!779 (regOne!5133 r!15766)))))

(assert (=> d!277371 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!21 (regOne!5133 r!15766) (regTwo!5133 r!15766) s!10566) lt!332439)))

(declare-fun b!891192 () Bool)

(assert (=> b!891192 (= e!583866 (validRegex!779 (regTwo!5133 r!15766)))))

(declare-fun b!891193 () Bool)

(assert (=> b!891193 (= e!583865 (matchR!848 (regTwo!5133 r!15766) s!10566))))

(assert (= (and d!277371 res!405215) b!891192))

(assert (= (and d!277371 (not res!405216)) b!891193))

(assert (=> d!277371 m!1133995))

(declare-fun m!1134077 () Bool)

(assert (=> d!277371 m!1134077))

(assert (=> d!277371 m!1134073))

(assert (=> b!891192 m!1134065))

(assert (=> b!891193 m!1133993))

(assert (=> b!891038 d!277371))

(declare-fun b!891236 () Bool)

(assert (=> b!891236 true))

(assert (=> b!891236 true))

(declare-fun bs!234835 () Bool)

(declare-fun b!891233 () Bool)

(assert (= bs!234835 (and b!891233 b!891236)))

(declare-fun lambda!27556 () Int)

(declare-fun lambda!27555 () Int)

(assert (=> bs!234835 (not (= lambda!27556 lambda!27555))))

(assert (=> b!891233 true))

(assert (=> b!891233 true))

(declare-fun b!891226 () Bool)

(declare-fun c!144231 () Bool)

(assert (=> b!891226 (= c!144231 (is-ElementMatch!2310 r!15766))))

(declare-fun e!583890 () Bool)

(declare-fun e!583891 () Bool)

(assert (=> b!891226 (= e!583890 e!583891)))

(declare-fun b!891227 () Bool)

(declare-fun res!405235 () Bool)

(declare-fun e!583887 () Bool)

(assert (=> b!891227 (=> res!405235 e!583887)))

(declare-fun call!52616 () Bool)

(assert (=> b!891227 (= res!405235 call!52616)))

(declare-fun e!583885 () Bool)

(assert (=> b!891227 (= e!583885 e!583887)))

(declare-fun call!52615 () Bool)

(declare-fun c!144230 () Bool)

(declare-fun bm!52610 () Bool)

(declare-fun Exists!95 (Int) Bool)

(assert (=> bm!52610 (= call!52615 (Exists!95 (ite c!144230 lambda!27555 lambda!27556)))))

(declare-fun b!891228 () Bool)

(declare-fun e!583886 () Bool)

(assert (=> b!891228 (= e!583886 e!583885)))

(assert (=> b!891228 (= c!144230 (is-Star!2310 r!15766))))

(declare-fun b!891229 () Bool)

(declare-fun c!144233 () Bool)

(assert (=> b!891229 (= c!144233 (is-Union!2310 r!15766))))

(assert (=> b!891229 (= e!583891 e!583886)))

(declare-fun b!891230 () Bool)

(declare-fun e!583889 () Bool)

(assert (=> b!891230 (= e!583886 e!583889)))

(declare-fun res!405233 () Bool)

(assert (=> b!891230 (= res!405233 (matchRSpec!111 (regOne!5133 r!15766) s!10566))))

(assert (=> b!891230 (=> res!405233 e!583889)))

(declare-fun b!891231 () Bool)

(assert (=> b!891231 (= e!583891 (= s!10566 (Cons!9524 (c!144191 r!15766) Nil!9524)))))

(declare-fun d!277373 () Bool)

(declare-fun c!144232 () Bool)

(assert (=> d!277373 (= c!144232 (is-EmptyExpr!2310 r!15766))))

(declare-fun e!583888 () Bool)

(assert (=> d!277373 (= (matchRSpec!111 r!15766 s!10566) e!583888)))

(declare-fun bm!52611 () Bool)

(assert (=> bm!52611 (= call!52616 (isEmpty!5724 s!10566))))

(declare-fun b!891232 () Bool)

(assert (=> b!891232 (= e!583888 call!52616)))

(assert (=> b!891233 (= e!583885 call!52615)))

(declare-fun b!891234 () Bool)

(assert (=> b!891234 (= e!583888 e!583890)))

(declare-fun res!405234 () Bool)

(assert (=> b!891234 (= res!405234 (not (is-EmptyLang!2310 r!15766)))))

(assert (=> b!891234 (=> (not res!405234) (not e!583890))))

(declare-fun b!891235 () Bool)

(assert (=> b!891235 (= e!583889 (matchRSpec!111 (regTwo!5133 r!15766) s!10566))))

(assert (=> b!891236 (= e!583887 call!52615)))

(assert (= (and d!277373 c!144232) b!891232))

(assert (= (and d!277373 (not c!144232)) b!891234))

(assert (= (and b!891234 res!405234) b!891226))

(assert (= (and b!891226 c!144231) b!891231))

(assert (= (and b!891226 (not c!144231)) b!891229))

(assert (= (and b!891229 c!144233) b!891230))

(assert (= (and b!891229 (not c!144233)) b!891228))

(assert (= (and b!891230 (not res!405233)) b!891235))

(assert (= (and b!891228 c!144230) b!891227))

(assert (= (and b!891228 (not c!144230)) b!891233))

(assert (= (and b!891227 (not res!405235)) b!891236))

(assert (= (or b!891236 b!891233) bm!52610))

(assert (= (or b!891232 b!891227) bm!52611))

(declare-fun m!1134079 () Bool)

(assert (=> bm!52610 m!1134079))

(declare-fun m!1134081 () Bool)

(assert (=> b!891230 m!1134081))

(assert (=> bm!52611 m!1134063))

(declare-fun m!1134083 () Bool)

(assert (=> b!891235 m!1134083))

(assert (=> b!891035 d!277373))

(declare-fun b!891241 () Bool)

(declare-fun e!583895 () Bool)

(assert (=> b!891241 (= e!583895 (matchR!848 (derivativeStep!414 r!15766 (head!1567 s!10566)) (tail!1129 s!10566)))))

(declare-fun b!891242 () Bool)

(declare-fun res!405239 () Bool)

(declare-fun e!583897 () Bool)

(assert (=> b!891242 (=> (not res!405239) (not e!583897))))

(assert (=> b!891242 (= res!405239 (isEmpty!5724 (tail!1129 s!10566)))))

(declare-fun b!891243 () Bool)

(declare-fun e!583893 () Bool)

(declare-fun e!583894 () Bool)

(assert (=> b!891243 (= e!583893 e!583894)))

(declare-fun res!405236 () Bool)

(assert (=> b!891243 (=> (not res!405236) (not e!583894))))

(declare-fun lt!332440 () Bool)

(assert (=> b!891243 (= res!405236 (not lt!332440))))

(declare-fun b!891244 () Bool)

(declare-fun res!405237 () Bool)

(assert (=> b!891244 (=> res!405237 e!583893)))

(assert (=> b!891244 (= res!405237 (not (is-ElementMatch!2310 r!15766)))))

(declare-fun e!583898 () Bool)

(assert (=> b!891244 (= e!583898 e!583893)))

(declare-fun b!891245 () Bool)

(declare-fun e!583896 () Bool)

(assert (=> b!891245 (= e!583896 e!583898)))

(declare-fun c!144236 () Bool)

(assert (=> b!891245 (= c!144236 (is-EmptyLang!2310 r!15766))))

(declare-fun b!891246 () Bool)

(declare-fun call!52617 () Bool)

(assert (=> b!891246 (= e!583896 (= lt!332440 call!52617))))

(declare-fun b!891247 () Bool)

(declare-fun e!583892 () Bool)

(assert (=> b!891247 (= e!583892 (not (= (head!1567 s!10566) (c!144191 r!15766))))))

(declare-fun b!891248 () Bool)

(assert (=> b!891248 (= e!583895 (nullable!602 r!15766))))

(declare-fun d!277375 () Bool)

(assert (=> d!277375 e!583896))

(declare-fun c!144234 () Bool)

(assert (=> d!277375 (= c!144234 (is-EmptyExpr!2310 r!15766))))

(assert (=> d!277375 (= lt!332440 e!583895)))

(declare-fun c!144235 () Bool)

(assert (=> d!277375 (= c!144235 (isEmpty!5724 s!10566))))

(assert (=> d!277375 (validRegex!779 r!15766)))

(assert (=> d!277375 (= (matchR!848 r!15766 s!10566) lt!332440)))

(declare-fun b!891249 () Bool)

(assert (=> b!891249 (= e!583894 e!583892)))

(declare-fun res!405241 () Bool)

(assert (=> b!891249 (=> res!405241 e!583892)))

(assert (=> b!891249 (= res!405241 call!52617)))

(declare-fun b!891250 () Bool)

(declare-fun res!405240 () Bool)

(assert (=> b!891250 (=> res!405240 e!583892)))

(assert (=> b!891250 (= res!405240 (not (isEmpty!5724 (tail!1129 s!10566))))))

(declare-fun b!891251 () Bool)

(assert (=> b!891251 (= e!583897 (= (head!1567 s!10566) (c!144191 r!15766)))))

(declare-fun bm!52612 () Bool)

(assert (=> bm!52612 (= call!52617 (isEmpty!5724 s!10566))))

(declare-fun b!891252 () Bool)

(declare-fun res!405238 () Bool)

(assert (=> b!891252 (=> res!405238 e!583893)))

(assert (=> b!891252 (= res!405238 e!583897)))

(declare-fun res!405242 () Bool)

(assert (=> b!891252 (=> (not res!405242) (not e!583897))))

(assert (=> b!891252 (= res!405242 lt!332440)))

(declare-fun b!891253 () Bool)

(assert (=> b!891253 (= e!583898 (not lt!332440))))

(declare-fun b!891254 () Bool)

(declare-fun res!405243 () Bool)

(assert (=> b!891254 (=> (not res!405243) (not e!583897))))

(assert (=> b!891254 (= res!405243 (not call!52617))))

(assert (= (and d!277375 c!144235) b!891248))

(assert (= (and d!277375 (not c!144235)) b!891241))

(assert (= (and d!277375 c!144234) b!891246))

(assert (= (and d!277375 (not c!144234)) b!891245))

(assert (= (and b!891245 c!144236) b!891253))

(assert (= (and b!891245 (not c!144236)) b!891244))

(assert (= (and b!891244 (not res!405237)) b!891252))

(assert (= (and b!891252 res!405242) b!891254))

(assert (= (and b!891254 res!405243) b!891242))

(assert (= (and b!891242 res!405239) b!891251))

(assert (= (and b!891252 (not res!405238)) b!891243))

(assert (= (and b!891243 res!405236) b!891249))

(assert (= (and b!891249 (not res!405241)) b!891250))

(assert (= (and b!891250 (not res!405240)) b!891247))

(assert (= (or b!891246 b!891249 b!891254) bm!52612))

(assert (=> b!891251 m!1134053))

(assert (=> b!891250 m!1134055))

(assert (=> b!891250 m!1134055))

(assert (=> b!891250 m!1134057))

(assert (=> b!891241 m!1134053))

(assert (=> b!891241 m!1134053))

(declare-fun m!1134085 () Bool)

(assert (=> b!891241 m!1134085))

(assert (=> b!891241 m!1134055))

(assert (=> b!891241 m!1134085))

(assert (=> b!891241 m!1134055))

(declare-fun m!1134087 () Bool)

(assert (=> b!891241 m!1134087))

(assert (=> b!891242 m!1134055))

(assert (=> b!891242 m!1134055))

(assert (=> b!891242 m!1134057))

(assert (=> d!277375 m!1134063))

(assert (=> d!277375 m!1134013))

(assert (=> b!891247 m!1134053))

(assert (=> bm!52612 m!1134063))

(declare-fun m!1134089 () Bool)

(assert (=> b!891248 m!1134089))

(assert (=> b!891035 d!277375))

(declare-fun d!277377 () Bool)

(assert (=> d!277377 (= (matchR!848 r!15766 s!10566) (matchRSpec!111 r!15766 s!10566))))

(declare-fun lt!332443 () Unit!14199)

(declare-fun choose!5327 (Regex!2310 List!9540) Unit!14199)

(assert (=> d!277377 (= lt!332443 (choose!5327 r!15766 s!10566))))

(assert (=> d!277377 (validRegex!779 r!15766)))

(assert (=> d!277377 (= (mainMatchTheorem!111 r!15766 s!10566) lt!332443)))

(declare-fun bs!234836 () Bool)

(assert (= bs!234836 d!277377))

(assert (=> bs!234836 m!1134001))

(assert (=> bs!234836 m!1133999))

(declare-fun m!1134091 () Bool)

(assert (=> bs!234836 m!1134091))

(assert (=> bs!234836 m!1134013))

(assert (=> b!891035 d!277377))

(declare-fun bm!52623 () Bool)

(declare-fun call!52632 () Regex!2310)

(declare-fun call!52628 () Regex!2310)

(assert (=> bm!52623 (= call!52632 call!52628)))

(declare-fun b!891277 () Bool)

(declare-fun e!583914 () Regex!2310)

(declare-fun call!52630 () Regex!2310)

(declare-fun call!52629 () Regex!2310)

(assert (=> b!891277 (= e!583914 (Concat!4143 call!52630 call!52629))))

(declare-fun b!891278 () Bool)

(declare-fun e!583912 () Regex!2310)

(declare-fun call!52631 () Regex!2310)

(assert (=> b!891278 (= e!583912 (Union!2310 call!52630 call!52631))))

(declare-fun b!891279 () Bool)

(declare-fun e!583916 () Bool)

(declare-fun lt!332446 () Regex!2310)

(assert (=> b!891279 (= e!583916 (= (nullable!602 lt!332446) (nullable!602 (regTwo!5133 r!15766))))))

(declare-fun bm!52624 () Bool)

(assert (=> bm!52624 (= call!52631 call!52629)))

(declare-fun b!891280 () Bool)

(declare-fun c!144250 () Bool)

(assert (=> b!891280 (= c!144250 (is-Star!2310 (regTwo!5133 r!15766)))))

(declare-fun e!583913 () Regex!2310)

(assert (=> b!891280 (= e!583912 e!583913)))

(declare-fun bm!52625 () Bool)

(declare-fun c!144251 () Bool)

(declare-fun c!144249 () Bool)

(declare-fun c!144247 () Bool)

(declare-fun c!144248 () Bool)

(assert (=> bm!52625 (= call!52628 (removeUselessConcat!45 (ite c!144247 (regTwo!5132 (regTwo!5133 r!15766)) (ite c!144248 (regOne!5132 (regTwo!5133 r!15766)) (ite c!144251 (regTwo!5132 (regTwo!5133 r!15766)) (ite c!144249 (regTwo!5133 (regTwo!5133 r!15766)) (reg!2639 (regTwo!5133 r!15766))))))))))

(declare-fun d!277379 () Bool)

(assert (=> d!277379 e!583916))

(declare-fun res!405246 () Bool)

(assert (=> d!277379 (=> (not res!405246) (not e!583916))))

(assert (=> d!277379 (= res!405246 (validRegex!779 lt!332446))))

(declare-fun e!583915 () Regex!2310)

(assert (=> d!277379 (= lt!332446 e!583915)))

(assert (=> d!277379 (= c!144247 (and (is-Concat!4143 (regTwo!5133 r!15766)) (is-EmptyExpr!2310 (regOne!5132 (regTwo!5133 r!15766)))))))

(assert (=> d!277379 (validRegex!779 (regTwo!5133 r!15766))))

(assert (=> d!277379 (= (removeUselessConcat!45 (regTwo!5133 r!15766)) lt!332446)))

(declare-fun bm!52626 () Bool)

(assert (=> bm!52626 (= call!52629 call!52632)))

(declare-fun b!891281 () Bool)

(assert (=> b!891281 (= e!583913 (regTwo!5133 r!15766))))

(declare-fun b!891282 () Bool)

(declare-fun e!583911 () Regex!2310)

(assert (=> b!891282 (= e!583915 e!583911)))

(assert (=> b!891282 (= c!144248 (and (is-Concat!4143 (regTwo!5133 r!15766)) (is-EmptyExpr!2310 (regTwo!5132 (regTwo!5133 r!15766)))))))

(declare-fun b!891283 () Bool)

(assert (=> b!891283 (= e!583913 (Star!2310 call!52631))))

(declare-fun b!891284 () Bool)

(assert (=> b!891284 (= e!583915 call!52628)))

(declare-fun b!891285 () Bool)

(assert (=> b!891285 (= e!583914 e!583912)))

(assert (=> b!891285 (= c!144249 (is-Union!2310 (regTwo!5133 r!15766)))))

(declare-fun bm!52627 () Bool)

(assert (=> bm!52627 (= call!52630 (removeUselessConcat!45 (ite c!144251 (regOne!5132 (regTwo!5133 r!15766)) (regOne!5133 (regTwo!5133 r!15766)))))))

(declare-fun b!891286 () Bool)

(assert (=> b!891286 (= c!144251 (is-Concat!4143 (regTwo!5133 r!15766)))))

(assert (=> b!891286 (= e!583911 e!583914)))

(declare-fun b!891287 () Bool)

(assert (=> b!891287 (= e!583911 call!52632)))

(assert (= (and d!277379 c!144247) b!891284))

(assert (= (and d!277379 (not c!144247)) b!891282))

(assert (= (and b!891282 c!144248) b!891287))

(assert (= (and b!891282 (not c!144248)) b!891286))

(assert (= (and b!891286 c!144251) b!891277))

(assert (= (and b!891286 (not c!144251)) b!891285))

(assert (= (and b!891285 c!144249) b!891278))

(assert (= (and b!891285 (not c!144249)) b!891280))

(assert (= (and b!891280 c!144250) b!891283))

(assert (= (and b!891280 (not c!144250)) b!891281))

(assert (= (or b!891278 b!891283) bm!52624))

(assert (= (or b!891277 bm!52624) bm!52626))

(assert (= (or b!891277 b!891278) bm!52627))

(assert (= (or b!891287 bm!52626) bm!52623))

(assert (= (or b!891284 bm!52623) bm!52625))

(assert (= (and d!277379 res!405246) b!891279))

(declare-fun m!1134093 () Bool)

(assert (=> b!891279 m!1134093))

(assert (=> b!891279 m!1134067))

(declare-fun m!1134095 () Bool)

(assert (=> bm!52625 m!1134095))

(declare-fun m!1134097 () Bool)

(assert (=> d!277379 m!1134097))

(assert (=> d!277379 m!1134065))

(declare-fun m!1134099 () Bool)

(assert (=> bm!52627 m!1134099))

(assert (=> b!891040 d!277379))

(declare-fun d!277381 () Bool)

(assert (=> d!277381 (= (matchR!848 (regTwo!5133 r!15766) s!10566) (matchR!848 (removeUselessConcat!45 (regTwo!5133 r!15766)) s!10566))))

(declare-fun lt!332449 () Unit!14199)

(declare-fun choose!5328 (Regex!2310 List!9540) Unit!14199)

(assert (=> d!277381 (= lt!332449 (choose!5328 (regTwo!5133 r!15766) s!10566))))

(assert (=> d!277381 (validRegex!779 (regTwo!5133 r!15766))))

(assert (=> d!277381 (= (lemmaRemoveUselessConcatSound!39 (regTwo!5133 r!15766) s!10566) lt!332449)))

(declare-fun bs!234837 () Bool)

(assert (= bs!234837 d!277381))

(declare-fun m!1134101 () Bool)

(assert (=> bs!234837 m!1134101))

(assert (=> bs!234837 m!1134011))

(declare-fun m!1134103 () Bool)

(assert (=> bs!234837 m!1134103))

(assert (=> bs!234837 m!1134011))

(assert (=> bs!234837 m!1134065))

(assert (=> bs!234837 m!1133993))

(assert (=> b!891040 d!277381))

(assert (=> b!891040 d!277365))

(declare-fun b!891288 () Bool)

(declare-fun e!583920 () Bool)

(assert (=> b!891288 (= e!583920 (matchR!848 (derivativeStep!414 lt!332409 (head!1567 s!10566)) (tail!1129 s!10566)))))

(declare-fun b!891289 () Bool)

(declare-fun res!405250 () Bool)

(declare-fun e!583922 () Bool)

(assert (=> b!891289 (=> (not res!405250) (not e!583922))))

(assert (=> b!891289 (= res!405250 (isEmpty!5724 (tail!1129 s!10566)))))

(declare-fun b!891290 () Bool)

(declare-fun e!583918 () Bool)

(declare-fun e!583919 () Bool)

(assert (=> b!891290 (= e!583918 e!583919)))

(declare-fun res!405247 () Bool)

(assert (=> b!891290 (=> (not res!405247) (not e!583919))))

(declare-fun lt!332450 () Bool)

(assert (=> b!891290 (= res!405247 (not lt!332450))))

(declare-fun b!891291 () Bool)

(declare-fun res!405248 () Bool)

(assert (=> b!891291 (=> res!405248 e!583918)))

(assert (=> b!891291 (= res!405248 (not (is-ElementMatch!2310 lt!332409)))))

(declare-fun e!583923 () Bool)

(assert (=> b!891291 (= e!583923 e!583918)))

(declare-fun b!891292 () Bool)

(declare-fun e!583921 () Bool)

(assert (=> b!891292 (= e!583921 e!583923)))

(declare-fun c!144254 () Bool)

(assert (=> b!891292 (= c!144254 (is-EmptyLang!2310 lt!332409))))

(declare-fun b!891293 () Bool)

(declare-fun call!52633 () Bool)

(assert (=> b!891293 (= e!583921 (= lt!332450 call!52633))))

(declare-fun b!891294 () Bool)

(declare-fun e!583917 () Bool)

(assert (=> b!891294 (= e!583917 (not (= (head!1567 s!10566) (c!144191 lt!332409))))))

(declare-fun b!891295 () Bool)

(assert (=> b!891295 (= e!583920 (nullable!602 lt!332409))))

(declare-fun d!277383 () Bool)

(assert (=> d!277383 e!583921))

(declare-fun c!144252 () Bool)

(assert (=> d!277383 (= c!144252 (is-EmptyExpr!2310 lt!332409))))

(assert (=> d!277383 (= lt!332450 e!583920)))

(declare-fun c!144253 () Bool)

(assert (=> d!277383 (= c!144253 (isEmpty!5724 s!10566))))

(assert (=> d!277383 (validRegex!779 lt!332409)))

(assert (=> d!277383 (= (matchR!848 lt!332409 s!10566) lt!332450)))

(declare-fun b!891296 () Bool)

(assert (=> b!891296 (= e!583919 e!583917)))

(declare-fun res!405252 () Bool)

(assert (=> b!891296 (=> res!405252 e!583917)))

(assert (=> b!891296 (= res!405252 call!52633)))

(declare-fun b!891297 () Bool)

(declare-fun res!405251 () Bool)

(assert (=> b!891297 (=> res!405251 e!583917)))

(assert (=> b!891297 (= res!405251 (not (isEmpty!5724 (tail!1129 s!10566))))))

(declare-fun b!891298 () Bool)

(assert (=> b!891298 (= e!583922 (= (head!1567 s!10566) (c!144191 lt!332409)))))

(declare-fun bm!52628 () Bool)

(assert (=> bm!52628 (= call!52633 (isEmpty!5724 s!10566))))

(declare-fun b!891299 () Bool)

(declare-fun res!405249 () Bool)

(assert (=> b!891299 (=> res!405249 e!583918)))

(assert (=> b!891299 (= res!405249 e!583922)))

(declare-fun res!405253 () Bool)

(assert (=> b!891299 (=> (not res!405253) (not e!583922))))

(assert (=> b!891299 (= res!405253 lt!332450)))

(declare-fun b!891300 () Bool)

(assert (=> b!891300 (= e!583923 (not lt!332450))))

(declare-fun b!891301 () Bool)

(declare-fun res!405254 () Bool)

(assert (=> b!891301 (=> (not res!405254) (not e!583922))))

(assert (=> b!891301 (= res!405254 (not call!52633))))

(assert (= (and d!277383 c!144253) b!891295))

(assert (= (and d!277383 (not c!144253)) b!891288))

(assert (= (and d!277383 c!144252) b!891293))

(assert (= (and d!277383 (not c!144252)) b!891292))

(assert (= (and b!891292 c!144254) b!891300))

(assert (= (and b!891292 (not c!144254)) b!891291))

(assert (= (and b!891291 (not res!405248)) b!891299))

(assert (= (and b!891299 res!405253) b!891301))

(assert (= (and b!891301 res!405254) b!891289))

(assert (= (and b!891289 res!405250) b!891298))

(assert (= (and b!891299 (not res!405249)) b!891290))

(assert (= (and b!891290 res!405247) b!891296))

(assert (= (and b!891296 (not res!405252)) b!891297))

(assert (= (and b!891297 (not res!405251)) b!891294))

(assert (= (or b!891293 b!891296 b!891301) bm!52628))

(assert (=> b!891298 m!1134053))

(assert (=> b!891297 m!1134055))

(assert (=> b!891297 m!1134055))

(assert (=> b!891297 m!1134057))

(assert (=> b!891288 m!1134053))

(assert (=> b!891288 m!1134053))

(declare-fun m!1134105 () Bool)

(assert (=> b!891288 m!1134105))

(assert (=> b!891288 m!1134055))

(assert (=> b!891288 m!1134105))

(assert (=> b!891288 m!1134055))

(declare-fun m!1134107 () Bool)

(assert (=> b!891288 m!1134107))

(assert (=> b!891289 m!1134055))

(assert (=> b!891289 m!1134055))

(assert (=> b!891289 m!1134057))

(assert (=> d!277383 m!1134063))

(assert (=> d!277383 m!1134007))

(assert (=> b!891294 m!1134053))

(assert (=> bm!52628 m!1134063))

(declare-fun m!1134109 () Bool)

(assert (=> b!891295 m!1134109))

(assert (=> b!891040 d!277383))

(declare-fun c!144259 () Bool)

(declare-fun c!144260 () Bool)

(declare-fun call!52646 () Bool)

(declare-fun bm!52639 () Bool)

(assert (=> bm!52639 (= call!52646 (validRegex!779 (ite c!144260 (reg!2639 lt!332409) (ite c!144259 (regTwo!5133 lt!332409) (regTwo!5132 lt!332409)))))))

(declare-fun b!891330 () Bool)

(declare-fun e!583943 () Bool)

(declare-fun call!52644 () Bool)

(assert (=> b!891330 (= e!583943 call!52644)))

(declare-fun b!891331 () Bool)

(declare-fun e!583942 () Bool)

(declare-fun e!583948 () Bool)

(assert (=> b!891331 (= e!583942 e!583948)))

(declare-fun res!405275 () Bool)

(assert (=> b!891331 (=> (not res!405275) (not e!583948))))

(declare-fun call!52645 () Bool)

(assert (=> b!891331 (= res!405275 call!52645)))

(declare-fun b!891332 () Bool)

(declare-fun res!405279 () Bool)

(assert (=> b!891332 (=> res!405279 e!583942)))

(assert (=> b!891332 (= res!405279 (not (is-Concat!4143 lt!332409)))))

(declare-fun e!583945 () Bool)

(assert (=> b!891332 (= e!583945 e!583942)))

(declare-fun bm!52640 () Bool)

(assert (=> bm!52640 (= call!52645 (validRegex!779 (ite c!144259 (regOne!5133 lt!332409) (regOne!5132 lt!332409))))))

(declare-fun b!891333 () Bool)

(declare-fun e!583944 () Bool)

(assert (=> b!891333 (= e!583944 call!52646)))

(declare-fun b!891334 () Bool)

(assert (=> b!891334 (= e!583948 call!52644)))

(declare-fun b!891335 () Bool)

(declare-fun e!583947 () Bool)

(assert (=> b!891335 (= e!583947 e!583945)))

(assert (=> b!891335 (= c!144259 (is-Union!2310 lt!332409))))

(declare-fun b!891336 () Bool)

(declare-fun e!583946 () Bool)

(assert (=> b!891336 (= e!583946 e!583947)))

(assert (=> b!891336 (= c!144260 (is-Star!2310 lt!332409))))

(declare-fun d!277385 () Bool)

(declare-fun res!405278 () Bool)

(assert (=> d!277385 (=> res!405278 e!583946)))

(assert (=> d!277385 (= res!405278 (is-ElementMatch!2310 lt!332409))))

(assert (=> d!277385 (= (validRegex!779 lt!332409) e!583946)))

(declare-fun b!891337 () Bool)

(assert (=> b!891337 (= e!583947 e!583944)))

(declare-fun res!405277 () Bool)

(assert (=> b!891337 (= res!405277 (not (nullable!602 (reg!2639 lt!332409))))))

(assert (=> b!891337 (=> (not res!405277) (not e!583944))))

(declare-fun b!891338 () Bool)

(declare-fun res!405276 () Bool)

(assert (=> b!891338 (=> (not res!405276) (not e!583943))))

(assert (=> b!891338 (= res!405276 call!52645)))

(assert (=> b!891338 (= e!583945 e!583943)))

(declare-fun bm!52641 () Bool)

(assert (=> bm!52641 (= call!52644 call!52646)))

(assert (= (and d!277385 (not res!405278)) b!891336))

(assert (= (and b!891336 c!144260) b!891337))

(assert (= (and b!891336 (not c!144260)) b!891335))

(assert (= (and b!891337 res!405277) b!891333))

(assert (= (and b!891335 c!144259) b!891338))

(assert (= (and b!891335 (not c!144259)) b!891332))

(assert (= (and b!891338 res!405276) b!891330))

(assert (= (and b!891332 (not res!405279)) b!891331))

(assert (= (and b!891331 res!405275) b!891334))

(assert (= (or b!891330 b!891334) bm!52641))

(assert (= (or b!891338 b!891331) bm!52640))

(assert (= (or b!891333 bm!52641) bm!52639))

(declare-fun m!1134111 () Bool)

(assert (=> bm!52639 m!1134111))

(declare-fun m!1134113 () Bool)

(assert (=> bm!52640 m!1134113))

(declare-fun m!1134115 () Bool)

(assert (=> b!891337 m!1134115))

(assert (=> b!891040 d!277385))

(declare-fun c!144262 () Bool)

(declare-fun bm!52642 () Bool)

(declare-fun call!52649 () Bool)

(declare-fun c!144261 () Bool)

(assert (=> bm!52642 (= call!52649 (validRegex!779 (ite c!144262 (reg!2639 r!15766) (ite c!144261 (regTwo!5133 r!15766) (regTwo!5132 r!15766)))))))

(declare-fun b!891339 () Bool)

(declare-fun e!583950 () Bool)

(declare-fun call!52647 () Bool)

(assert (=> b!891339 (= e!583950 call!52647)))

(declare-fun b!891340 () Bool)

(declare-fun e!583949 () Bool)

(declare-fun e!583955 () Bool)

(assert (=> b!891340 (= e!583949 e!583955)))

(declare-fun res!405280 () Bool)

(assert (=> b!891340 (=> (not res!405280) (not e!583955))))

(declare-fun call!52648 () Bool)

(assert (=> b!891340 (= res!405280 call!52648)))

(declare-fun b!891341 () Bool)

(declare-fun res!405284 () Bool)

(assert (=> b!891341 (=> res!405284 e!583949)))

(assert (=> b!891341 (= res!405284 (not (is-Concat!4143 r!15766)))))

(declare-fun e!583952 () Bool)

(assert (=> b!891341 (= e!583952 e!583949)))

(declare-fun bm!52643 () Bool)

(assert (=> bm!52643 (= call!52648 (validRegex!779 (ite c!144261 (regOne!5133 r!15766) (regOne!5132 r!15766))))))

(declare-fun b!891342 () Bool)

(declare-fun e!583951 () Bool)

(assert (=> b!891342 (= e!583951 call!52649)))

(declare-fun b!891343 () Bool)

(assert (=> b!891343 (= e!583955 call!52647)))

(declare-fun b!891344 () Bool)

(declare-fun e!583954 () Bool)

(assert (=> b!891344 (= e!583954 e!583952)))

(assert (=> b!891344 (= c!144261 (is-Union!2310 r!15766))))

(declare-fun b!891345 () Bool)

(declare-fun e!583953 () Bool)

(assert (=> b!891345 (= e!583953 e!583954)))

(assert (=> b!891345 (= c!144262 (is-Star!2310 r!15766))))

(declare-fun d!277387 () Bool)

(declare-fun res!405283 () Bool)

(assert (=> d!277387 (=> res!405283 e!583953)))

(assert (=> d!277387 (= res!405283 (is-ElementMatch!2310 r!15766))))

(assert (=> d!277387 (= (validRegex!779 r!15766) e!583953)))

(declare-fun b!891346 () Bool)

(assert (=> b!891346 (= e!583954 e!583951)))

(declare-fun res!405282 () Bool)

(assert (=> b!891346 (= res!405282 (not (nullable!602 (reg!2639 r!15766))))))

(assert (=> b!891346 (=> (not res!405282) (not e!583951))))

(declare-fun b!891347 () Bool)

(declare-fun res!405281 () Bool)

(assert (=> b!891347 (=> (not res!405281) (not e!583950))))

(assert (=> b!891347 (= res!405281 call!52648)))

(assert (=> b!891347 (= e!583952 e!583950)))

(declare-fun bm!52644 () Bool)

(assert (=> bm!52644 (= call!52647 call!52649)))

(assert (= (and d!277387 (not res!405283)) b!891345))

(assert (= (and b!891345 c!144262) b!891346))

(assert (= (and b!891345 (not c!144262)) b!891344))

(assert (= (and b!891346 res!405282) b!891342))

(assert (= (and b!891344 c!144261) b!891347))

(assert (= (and b!891344 (not c!144261)) b!891341))

(assert (= (and b!891347 res!405281) b!891339))

(assert (= (and b!891341 (not res!405284)) b!891340))

(assert (= (and b!891340 res!405280) b!891343))

(assert (= (or b!891339 b!891343) bm!52644))

(assert (= (or b!891347 b!891340) bm!52643))

(assert (= (or b!891342 bm!52644) bm!52642))

(declare-fun m!1134117 () Bool)

(assert (=> bm!52642 m!1134117))

(declare-fun m!1134119 () Bool)

(assert (=> bm!52643 m!1134119))

(declare-fun m!1134121 () Bool)

(assert (=> b!891346 m!1134121))

(assert (=> start!80364 d!277387))

(declare-fun b!891370 () Bool)

(declare-fun e!583965 () Bool)

(declare-fun tp!280506 () Bool)

(declare-fun tp!280503 () Bool)

(assert (=> b!891370 (= e!583965 (and tp!280506 tp!280503))))

(declare-fun b!891369 () Bool)

(assert (=> b!891369 (= e!583965 tp_is_empty!4263)))

(declare-fun b!891372 () Bool)

(declare-fun tp!280505 () Bool)

(declare-fun tp!280504 () Bool)

(assert (=> b!891372 (= e!583965 (and tp!280505 tp!280504))))

(assert (=> b!891039 (= tp!280469 e!583965)))

(declare-fun b!891371 () Bool)

(declare-fun tp!280507 () Bool)

(assert (=> b!891371 (= e!583965 tp!280507)))

(assert (= (and b!891039 (is-ElementMatch!2310 (regOne!5133 r!15766))) b!891369))

(assert (= (and b!891039 (is-Concat!4143 (regOne!5133 r!15766))) b!891370))

(assert (= (and b!891039 (is-Star!2310 (regOne!5133 r!15766))) b!891371))

(assert (= (and b!891039 (is-Union!2310 (regOne!5133 r!15766))) b!891372))

(declare-fun b!891374 () Bool)

(declare-fun e!583966 () Bool)

(declare-fun tp!280511 () Bool)

(declare-fun tp!280508 () Bool)

(assert (=> b!891374 (= e!583966 (and tp!280511 tp!280508))))

(declare-fun b!891373 () Bool)

(assert (=> b!891373 (= e!583966 tp_is_empty!4263)))

(declare-fun b!891376 () Bool)

(declare-fun tp!280510 () Bool)

(declare-fun tp!280509 () Bool)

(assert (=> b!891376 (= e!583966 (and tp!280510 tp!280509))))

(assert (=> b!891039 (= tp!280471 e!583966)))

(declare-fun b!891375 () Bool)

(declare-fun tp!280512 () Bool)

(assert (=> b!891375 (= e!583966 tp!280512)))

(assert (= (and b!891039 (is-ElementMatch!2310 (regTwo!5133 r!15766))) b!891373))

(assert (= (and b!891039 (is-Concat!4143 (regTwo!5133 r!15766))) b!891374))

(assert (= (and b!891039 (is-Star!2310 (regTwo!5133 r!15766))) b!891375))

(assert (= (and b!891039 (is-Union!2310 (regTwo!5133 r!15766))) b!891376))

(declare-fun b!891385 () Bool)

(declare-fun e!583969 () Bool)

(declare-fun tp!280515 () Bool)

(assert (=> b!891385 (= e!583969 (and tp_is_empty!4263 tp!280515))))

(assert (=> b!891034 (= tp!280473 e!583969)))

(assert (= (and b!891034 (is-Cons!9524 (t!100586 s!10566))) b!891385))

(declare-fun b!891387 () Bool)

(declare-fun e!583970 () Bool)

(declare-fun tp!280519 () Bool)

(declare-fun tp!280516 () Bool)

(assert (=> b!891387 (= e!583970 (and tp!280519 tp!280516))))

(declare-fun b!891386 () Bool)

(assert (=> b!891386 (= e!583970 tp_is_empty!4263)))

(declare-fun b!891389 () Bool)

(declare-fun tp!280518 () Bool)

(declare-fun tp!280517 () Bool)

(assert (=> b!891389 (= e!583970 (and tp!280518 tp!280517))))

(assert (=> b!891032 (= tp!280470 e!583970)))

(declare-fun b!891388 () Bool)

(declare-fun tp!280520 () Bool)

(assert (=> b!891388 (= e!583970 tp!280520)))

(assert (= (and b!891032 (is-ElementMatch!2310 (regOne!5132 r!15766))) b!891386))

(assert (= (and b!891032 (is-Concat!4143 (regOne!5132 r!15766))) b!891387))

(assert (= (and b!891032 (is-Star!2310 (regOne!5132 r!15766))) b!891388))

(assert (= (and b!891032 (is-Union!2310 (regOne!5132 r!15766))) b!891389))

(declare-fun b!891391 () Bool)

(declare-fun e!583971 () Bool)

(declare-fun tp!280524 () Bool)

(declare-fun tp!280521 () Bool)

(assert (=> b!891391 (= e!583971 (and tp!280524 tp!280521))))

(declare-fun b!891390 () Bool)

(assert (=> b!891390 (= e!583971 tp_is_empty!4263)))

(declare-fun b!891393 () Bool)

(declare-fun tp!280523 () Bool)

(declare-fun tp!280522 () Bool)

(assert (=> b!891393 (= e!583971 (and tp!280523 tp!280522))))

(assert (=> b!891032 (= tp!280472 e!583971)))

(declare-fun b!891392 () Bool)

(declare-fun tp!280525 () Bool)

(assert (=> b!891392 (= e!583971 tp!280525)))

(assert (= (and b!891032 (is-ElementMatch!2310 (regTwo!5132 r!15766))) b!891390))

(assert (= (and b!891032 (is-Concat!4143 (regTwo!5132 r!15766))) b!891391))

(assert (= (and b!891032 (is-Star!2310 (regTwo!5132 r!15766))) b!891392))

(assert (= (and b!891032 (is-Union!2310 (regTwo!5132 r!15766))) b!891393))

(declare-fun b!891395 () Bool)

(declare-fun e!583972 () Bool)

(declare-fun tp!280529 () Bool)

(declare-fun tp!280526 () Bool)

(assert (=> b!891395 (= e!583972 (and tp!280529 tp!280526))))

(declare-fun b!891394 () Bool)

(assert (=> b!891394 (= e!583972 tp_is_empty!4263)))

(declare-fun b!891397 () Bool)

(declare-fun tp!280528 () Bool)

(declare-fun tp!280527 () Bool)

(assert (=> b!891397 (= e!583972 (and tp!280528 tp!280527))))

(assert (=> b!891037 (= tp!280474 e!583972)))

(declare-fun b!891396 () Bool)

(declare-fun tp!280530 () Bool)

(assert (=> b!891396 (= e!583972 tp!280530)))

(assert (= (and b!891037 (is-ElementMatch!2310 (reg!2639 r!15766))) b!891394))

(assert (= (and b!891037 (is-Concat!4143 (reg!2639 r!15766))) b!891395))

(assert (= (and b!891037 (is-Star!2310 (reg!2639 r!15766))) b!891396))

(assert (= (and b!891037 (is-Union!2310 (reg!2639 r!15766))) b!891397))

(push 1)

(assert (not b!891159))

(assert (not b!891161))

(assert (not d!277375))

(assert (not b!891248))

(assert (not b!891193))

(assert (not b!891288))

(assert (not bm!52627))

(assert (not b!891250))

(assert tp_is_empty!4263)

(assert (not b!891148))

(assert (not b!891289))

(assert (not b!891294))

(assert (not b!891295))

(assert (not bm!52639))

(assert (not b!891391))

(assert (not bm!52643))

(assert (not b!891192))

(assert (not b!891392))

(assert (not b!891139))

(assert (not b!891162))

(assert (not b!891297))

(assert (not b!891298))

(assert (not d!277381))

(assert (not b!891346))

(assert (not b!891376))

(assert (not b!891395))

(assert (not b!891387))

(assert (not b!891279))

(assert (not d!277379))

(assert (not b!891337))

(assert (not bm!52612))

(assert (not b!891389))

(assert (not b!891242))

(assert (not b!891152))

(assert (not b!891235))

(assert (not d!277369))

(assert (not b!891388))

(assert (not d!277365))

(assert (not b!891372))

(assert (not b!891393))

(assert (not b!891241))

(assert (not b!891370))

(assert (not b!891371))

(assert (not b!891158))

(assert (not bm!52611))

(assert (not b!891230))

(assert (not d!277377))

(assert (not bm!52604))

(assert (not b!891397))

(assert (not bm!52628))

(assert (not d!277383))

(assert (not bm!52625))

(assert (not b!891147))

(assert (not bm!52640))

(assert (not b!891374))

(assert (not b!891153))

(assert (not d!277371))

(assert (not bm!52642))

(assert (not b!891145))

(assert (not b!891396))

(assert (not b!891138))

(assert (not bm!52610))

(assert (not b!891385))

(assert (not b!891375))

(assert (not bm!52605))

(assert (not b!891247))

(assert (not b!891251))

(assert (not b!891144))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

