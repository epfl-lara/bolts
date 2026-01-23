; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!723706 () Bool)

(assert start!723706)

(declare-fun b!7458103 () Bool)

(assert (=> b!7458103 true))

(assert (=> b!7458103 true))

(assert (=> b!7458103 true))

(declare-fun lambda!461419 () Int)

(declare-fun lambda!461418 () Int)

(assert (=> b!7458103 (not (= lambda!461419 lambda!461418))))

(assert (=> b!7458103 true))

(assert (=> b!7458103 true))

(assert (=> b!7458103 true))

(declare-fun b!7458096 () Bool)

(declare-fun e!4451224 () Bool)

(declare-fun tp!2161286 () Bool)

(declare-fun tp!2161280 () Bool)

(assert (=> b!7458096 (= e!4451224 (and tp!2161286 tp!2161280))))

(declare-fun b!7458097 () Bool)

(declare-fun e!4451220 () Bool)

(declare-fun e!4451223 () Bool)

(assert (=> b!7458097 (= e!4451220 e!4451223)))

(declare-fun res!2991630 () Bool)

(assert (=> b!7458097 (=> res!2991630 e!4451223)))

(declare-fun lt!2622099 () Bool)

(declare-fun lt!2622106 () Bool)

(declare-fun lt!2622109 () Bool)

(assert (=> b!7458097 (= res!2991630 (not (= lt!2622106 (or lt!2622099 lt!2622109))))))

(declare-datatypes ((C!39312 0))(
  ( (C!39313 (val!30054 Int)) )
))
(declare-datatypes ((Regex!19519 0))(
  ( (ElementMatch!19519 (c!1378876 C!39312)) (Concat!28364 (regOne!39550 Regex!19519) (regTwo!39550 Regex!19519)) (EmptyExpr!19519) (Star!19519 (reg!19848 Regex!19519)) (EmptyLang!19519) (Union!19519 (regOne!39551 Regex!19519) (regTwo!39551 Regex!19519)) )
))
(declare-fun lt!2622091 () Regex!19519)

(declare-datatypes ((List!72235 0))(
  ( (Nil!72111) (Cons!72111 (h!78559 C!39312) (t!386804 List!72235)) )
))
(declare-fun s!13591 () List!72235)

(declare-fun matchRSpec!4198 (Regex!19519 List!72235) Bool)

(assert (=> b!7458097 (= lt!2622109 (matchRSpec!4198 lt!2622091 s!13591))))

(declare-fun matchR!9283 (Regex!19519 List!72235) Bool)

(assert (=> b!7458097 (= lt!2622109 (matchR!9283 lt!2622091 s!13591))))

(declare-datatypes ((Unit!165873 0))(
  ( (Unit!165874) )
))
(declare-fun lt!2622094 () Unit!165873)

(declare-fun mainMatchTheorem!4192 (Regex!19519 List!72235) Unit!165873)

(assert (=> b!7458097 (= lt!2622094 (mainMatchTheorem!4192 lt!2622091 s!13591))))

(declare-fun lt!2622088 () Regex!19519)

(assert (=> b!7458097 (= lt!2622099 (matchRSpec!4198 lt!2622088 s!13591))))

(assert (=> b!7458097 (= lt!2622099 (matchR!9283 lt!2622088 s!13591))))

(declare-fun lt!2622103 () Unit!165873)

(assert (=> b!7458097 (= lt!2622103 (mainMatchTheorem!4192 lt!2622088 s!13591))))

(declare-fun b!7458098 () Bool)

(declare-fun e!4451228 () Bool)

(assert (=> b!7458098 (= e!4451223 e!4451228)))

(declare-fun res!2991636 () Bool)

(assert (=> b!7458098 (=> res!2991636 e!4451228)))

(assert (=> b!7458098 (= res!2991636 (not lt!2622106))))

(declare-fun lt!2622100 () Unit!165873)

(declare-fun e!4451222 () Unit!165873)

(assert (=> b!7458098 (= lt!2622100 e!4451222)))

(declare-fun c!1378875 () Bool)

(declare-fun lt!2622090 () Bool)

(assert (=> b!7458098 (= c!1378875 lt!2622090)))

(declare-fun b!7458099 () Bool)

(declare-fun lt!2622110 () Regex!19519)

(declare-fun validRegex!10033 (Regex!19519) Bool)

(assert (=> b!7458099 (= e!4451228 (validRegex!10033 lt!2622110))))

(declare-fun b!7458100 () Bool)

(declare-fun e!4451226 () Bool)

(declare-fun tp_is_empty!49327 () Bool)

(assert (=> b!7458100 (= e!4451226 tp_is_empty!49327)))

(declare-fun b!7458101 () Bool)

(declare-fun lt!2622107 () Unit!165873)

(assert (=> b!7458101 (= e!4451222 lt!2622107)))

(declare-fun call!685166 () Unit!165873)

(assert (=> b!7458101 (= lt!2622107 call!685166)))

(declare-fun call!685164 () Bool)

(assert (=> b!7458101 call!685164))

(declare-fun b!7458102 () Bool)

(declare-fun res!2991638 () Bool)

(declare-fun e!4451227 () Bool)

(assert (=> b!7458102 (=> res!2991638 e!4451227)))

(declare-fun rTail!78 () Regex!19519)

(declare-datatypes ((tuple2!68492 0))(
  ( (tuple2!68493 (_1!37549 List!72235) (_2!37549 List!72235)) )
))
(declare-fun lt!2622105 () tuple2!68492)

(assert (=> b!7458102 (= res!2991638 (not (matchR!9283 rTail!78 (_2!37549 lt!2622105))))))

(declare-fun bm!685159 () Bool)

(declare-fun call!685165 () List!72235)

(assert (=> bm!685159 (= call!685164 (matchR!9283 (ite c!1378875 lt!2622088 lt!2622091) call!685165))))

(declare-fun e!4451218 () Bool)

(assert (=> b!7458103 (= e!4451218 e!4451227)))

(declare-fun res!2991634 () Bool)

(assert (=> b!7458103 (=> res!2991634 e!4451227)))

(declare-fun lt!2622098 () Regex!19519)

(assert (=> b!7458103 (= res!2991634 (not (matchR!9283 lt!2622098 (_1!37549 lt!2622105))))))

(declare-datatypes ((Option!17078 0))(
  ( (None!17077) (Some!17077 (v!54206 tuple2!68492)) )
))
(declare-fun lt!2622093 () Option!17078)

(declare-fun get!25162 (Option!17078) tuple2!68492)

(assert (=> b!7458103 (= lt!2622105 (get!25162 lt!2622093))))

(declare-fun Exists!4140 (Int) Bool)

(assert (=> b!7458103 (= (Exists!4140 lambda!461418) (Exists!4140 lambda!461419))))

(declare-fun lt!2622095 () Unit!165873)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2476 (Regex!19519 Regex!19519 List!72235) Unit!165873)

(assert (=> b!7458103 (= lt!2622095 (lemmaExistCutMatchRandMatchRSpecEquivalent!2476 lt!2622098 rTail!78 s!13591))))

(declare-fun isDefined!13767 (Option!17078) Bool)

(assert (=> b!7458103 (= (isDefined!13767 lt!2622093) (Exists!4140 lambda!461418))))

(declare-fun findConcatSeparation!3200 (Regex!19519 Regex!19519 List!72235 List!72235 List!72235) Option!17078)

(assert (=> b!7458103 (= lt!2622093 (findConcatSeparation!3200 lt!2622098 rTail!78 Nil!72111 s!13591 s!13591))))

(declare-fun lt!2622089 () Unit!165873)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2958 (Regex!19519 Regex!19519 List!72235) Unit!165873)

(assert (=> b!7458103 (= lt!2622089 (lemmaFindConcatSeparationEquivalentToExists!2958 lt!2622098 rTail!78 s!13591))))

(declare-fun b!7458104 () Bool)

(declare-fun e!4451225 () Bool)

(declare-fun tp!2161278 () Bool)

(declare-fun tp!2161288 () Bool)

(assert (=> b!7458104 (= e!4451225 (and tp!2161278 tp!2161288))))

(declare-fun b!7458105 () Bool)

(declare-fun tp!2161287 () Bool)

(assert (=> b!7458105 (= e!4451226 tp!2161287)))

(declare-fun b!7458106 () Bool)

(declare-fun e!4451221 () Bool)

(assert (=> b!7458106 (= e!4451221 (not e!4451218))))

(declare-fun res!2991633 () Bool)

(assert (=> b!7458106 (=> res!2991633 e!4451218)))

(declare-fun lt!2622108 () Bool)

(assert (=> b!7458106 (= res!2991633 (not lt!2622108))))

(assert (=> b!7458106 (= lt!2622106 (matchRSpec!4198 lt!2622110 s!13591))))

(assert (=> b!7458106 (= lt!2622106 (matchR!9283 lt!2622110 s!13591))))

(declare-fun lt!2622096 () Unit!165873)

(assert (=> b!7458106 (= lt!2622096 (mainMatchTheorem!4192 lt!2622110 s!13591))))

(declare-fun lt!2622101 () Regex!19519)

(assert (=> b!7458106 (= lt!2622108 (matchRSpec!4198 lt!2622101 s!13591))))

(assert (=> b!7458106 (= lt!2622108 (matchR!9283 lt!2622101 s!13591))))

(declare-fun lt!2622097 () Unit!165873)

(assert (=> b!7458106 (= lt!2622097 (mainMatchTheorem!4192 lt!2622101 s!13591))))

(assert (=> b!7458106 (= lt!2622110 (Union!19519 lt!2622088 lt!2622091))))

(declare-fun r2!5783 () Regex!19519)

(assert (=> b!7458106 (= lt!2622091 (Concat!28364 r2!5783 rTail!78))))

(declare-fun r1!5845 () Regex!19519)

(assert (=> b!7458106 (= lt!2622088 (Concat!28364 r1!5845 rTail!78))))

(assert (=> b!7458106 (= lt!2622101 (Concat!28364 lt!2622098 rTail!78))))

(assert (=> b!7458106 (= lt!2622098 (Union!19519 r1!5845 r2!5783))))

(declare-fun b!7458107 () Bool)

(declare-fun tp!2161276 () Bool)

(declare-fun tp!2161279 () Bool)

(assert (=> b!7458107 (= e!4451224 (and tp!2161276 tp!2161279))))

(declare-fun b!7458108 () Bool)

(assert (=> b!7458108 (= e!4451225 tp_is_empty!49327)))

(declare-fun b!7458109 () Bool)

(declare-fun res!2991637 () Bool)

(assert (=> b!7458109 (=> (not res!2991637) (not e!4451221))))

(assert (=> b!7458109 (= res!2991637 (validRegex!10033 rTail!78))))

(declare-fun res!2991635 () Bool)

(assert (=> start!723706 (=> (not res!2991635) (not e!4451221))))

(assert (=> start!723706 (= res!2991635 (validRegex!10033 r1!5845))))

(assert (=> start!723706 e!4451221))

(assert (=> start!723706 e!4451224))

(assert (=> start!723706 e!4451225))

(assert (=> start!723706 e!4451226))

(declare-fun e!4451219 () Bool)

(assert (=> start!723706 e!4451219))

(declare-fun b!7458110 () Bool)

(declare-fun tp!2161285 () Bool)

(declare-fun tp!2161289 () Bool)

(assert (=> b!7458110 (= e!4451226 (and tp!2161285 tp!2161289))))

(declare-fun b!7458111 () Bool)

(declare-fun tp!2161284 () Bool)

(declare-fun tp!2161282 () Bool)

(assert (=> b!7458111 (= e!4451226 (and tp!2161284 tp!2161282))))

(declare-fun b!7458112 () Bool)

(declare-fun tp!2161283 () Bool)

(assert (=> b!7458112 (= e!4451225 tp!2161283)))

(declare-fun bm!685160 () Bool)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!398 (Regex!19519 Regex!19519 List!72235 List!72235) Unit!165873)

(assert (=> bm!685160 (= call!685166 (lemmaTwoRegexMatchThenConcatMatchesConcatString!398 (ite c!1378875 r1!5845 r2!5783) rTail!78 (_1!37549 lt!2622105) (_2!37549 lt!2622105)))))

(declare-fun b!7458113 () Bool)

(assert (=> b!7458113 (= e!4451227 e!4451220)))

(declare-fun res!2991632 () Bool)

(assert (=> b!7458113 (=> res!2991632 e!4451220)))

(declare-fun lt!2622104 () Bool)

(assert (=> b!7458113 (= res!2991632 (and (not lt!2622090) (not lt!2622104)))))

(assert (=> b!7458113 (= lt!2622104 (matchRSpec!4198 r2!5783 (_1!37549 lt!2622105)))))

(assert (=> b!7458113 (= lt!2622104 (matchR!9283 r2!5783 (_1!37549 lt!2622105)))))

(declare-fun lt!2622086 () Unit!165873)

(assert (=> b!7458113 (= lt!2622086 (mainMatchTheorem!4192 r2!5783 (_1!37549 lt!2622105)))))

(assert (=> b!7458113 (= lt!2622090 (matchRSpec!4198 r1!5845 (_1!37549 lt!2622105)))))

(assert (=> b!7458113 (= lt!2622090 (matchR!9283 r1!5845 (_1!37549 lt!2622105)))))

(declare-fun lt!2622092 () Unit!165873)

(assert (=> b!7458113 (= lt!2622092 (mainMatchTheorem!4192 r1!5845 (_1!37549 lt!2622105)))))

(assert (=> b!7458113 (matchRSpec!4198 rTail!78 (_2!37549 lt!2622105))))

(declare-fun lt!2622087 () Unit!165873)

(assert (=> b!7458113 (= lt!2622087 (mainMatchTheorem!4192 rTail!78 (_2!37549 lt!2622105)))))

(assert (=> b!7458113 (matchRSpec!4198 lt!2622098 (_1!37549 lt!2622105))))

(declare-fun lt!2622111 () Unit!165873)

(assert (=> b!7458113 (= lt!2622111 (mainMatchTheorem!4192 lt!2622098 (_1!37549 lt!2622105)))))

(declare-fun b!7458114 () Bool)

(assert (=> b!7458114 (= e!4451224 tp_is_empty!49327)))

(declare-fun b!7458115 () Bool)

(declare-fun lt!2622102 () Unit!165873)

(assert (=> b!7458115 (= e!4451222 lt!2622102)))

(assert (=> b!7458115 (= lt!2622102 call!685166)))

(assert (=> b!7458115 call!685164))

(declare-fun bm!685161 () Bool)

(declare-fun ++!17177 (List!72235 List!72235) List!72235)

(assert (=> bm!685161 (= call!685165 (++!17177 (_1!37549 lt!2622105) (_2!37549 lt!2622105)))))

(declare-fun b!7458116 () Bool)

(declare-fun tp!2161291 () Bool)

(declare-fun tp!2161290 () Bool)

(assert (=> b!7458116 (= e!4451225 (and tp!2161291 tp!2161290))))

(declare-fun b!7458117 () Bool)

(declare-fun tp!2161277 () Bool)

(assert (=> b!7458117 (= e!4451224 tp!2161277)))

(declare-fun b!7458118 () Bool)

(declare-fun res!2991631 () Bool)

(assert (=> b!7458118 (=> (not res!2991631) (not e!4451221))))

(assert (=> b!7458118 (= res!2991631 (validRegex!10033 r2!5783))))

(declare-fun b!7458119 () Bool)

(declare-fun tp!2161281 () Bool)

(assert (=> b!7458119 (= e!4451219 (and tp_is_empty!49327 tp!2161281))))

(assert (= (and start!723706 res!2991635) b!7458118))

(assert (= (and b!7458118 res!2991631) b!7458109))

(assert (= (and b!7458109 res!2991637) b!7458106))

(assert (= (and b!7458106 (not res!2991633)) b!7458103))

(assert (= (and b!7458103 (not res!2991634)) b!7458102))

(assert (= (and b!7458102 (not res!2991638)) b!7458113))

(assert (= (and b!7458113 (not res!2991632)) b!7458097))

(assert (= (and b!7458097 (not res!2991630)) b!7458098))

(assert (= (and b!7458098 c!1378875) b!7458101))

(assert (= (and b!7458098 (not c!1378875)) b!7458115))

(assert (= (or b!7458101 b!7458115) bm!685160))

(assert (= (or b!7458101 b!7458115) bm!685161))

(assert (= (or b!7458101 b!7458115) bm!685159))

(assert (= (and b!7458098 (not res!2991636)) b!7458099))

(get-info :version)

(assert (= (and start!723706 ((_ is ElementMatch!19519) r1!5845)) b!7458114))

(assert (= (and start!723706 ((_ is Concat!28364) r1!5845)) b!7458107))

(assert (= (and start!723706 ((_ is Star!19519) r1!5845)) b!7458117))

(assert (= (and start!723706 ((_ is Union!19519) r1!5845)) b!7458096))

(assert (= (and start!723706 ((_ is ElementMatch!19519) r2!5783)) b!7458108))

(assert (= (and start!723706 ((_ is Concat!28364) r2!5783)) b!7458104))

(assert (= (and start!723706 ((_ is Star!19519) r2!5783)) b!7458112))

(assert (= (and start!723706 ((_ is Union!19519) r2!5783)) b!7458116))

(assert (= (and start!723706 ((_ is ElementMatch!19519) rTail!78)) b!7458100))

(assert (= (and start!723706 ((_ is Concat!28364) rTail!78)) b!7458110))

(assert (= (and start!723706 ((_ is Star!19519) rTail!78)) b!7458105))

(assert (= (and start!723706 ((_ is Union!19519) rTail!78)) b!7458111))

(assert (= (and start!723706 ((_ is Cons!72111) s!13591)) b!7458119))

(declare-fun m!8061064 () Bool)

(assert (=> bm!685160 m!8061064))

(declare-fun m!8061066 () Bool)

(assert (=> b!7458099 m!8061066))

(declare-fun m!8061068 () Bool)

(assert (=> b!7458106 m!8061068))

(declare-fun m!8061070 () Bool)

(assert (=> b!7458106 m!8061070))

(declare-fun m!8061072 () Bool)

(assert (=> b!7458106 m!8061072))

(declare-fun m!8061074 () Bool)

(assert (=> b!7458106 m!8061074))

(declare-fun m!8061076 () Bool)

(assert (=> b!7458106 m!8061076))

(declare-fun m!8061078 () Bool)

(assert (=> b!7458106 m!8061078))

(declare-fun m!8061080 () Bool)

(assert (=> b!7458097 m!8061080))

(declare-fun m!8061082 () Bool)

(assert (=> b!7458097 m!8061082))

(declare-fun m!8061084 () Bool)

(assert (=> b!7458097 m!8061084))

(declare-fun m!8061086 () Bool)

(assert (=> b!7458097 m!8061086))

(declare-fun m!8061088 () Bool)

(assert (=> b!7458097 m!8061088))

(declare-fun m!8061090 () Bool)

(assert (=> b!7458097 m!8061090))

(declare-fun m!8061092 () Bool)

(assert (=> start!723706 m!8061092))

(declare-fun m!8061094 () Bool)

(assert (=> bm!685159 m!8061094))

(declare-fun m!8061096 () Bool)

(assert (=> b!7458113 m!8061096))

(declare-fun m!8061098 () Bool)

(assert (=> b!7458113 m!8061098))

(declare-fun m!8061100 () Bool)

(assert (=> b!7458113 m!8061100))

(declare-fun m!8061102 () Bool)

(assert (=> b!7458113 m!8061102))

(declare-fun m!8061104 () Bool)

(assert (=> b!7458113 m!8061104))

(declare-fun m!8061106 () Bool)

(assert (=> b!7458113 m!8061106))

(declare-fun m!8061108 () Bool)

(assert (=> b!7458113 m!8061108))

(declare-fun m!8061110 () Bool)

(assert (=> b!7458113 m!8061110))

(declare-fun m!8061112 () Bool)

(assert (=> b!7458113 m!8061112))

(declare-fun m!8061114 () Bool)

(assert (=> b!7458113 m!8061114))

(declare-fun m!8061116 () Bool)

(assert (=> b!7458118 m!8061116))

(declare-fun m!8061118 () Bool)

(assert (=> b!7458109 m!8061118))

(declare-fun m!8061120 () Bool)

(assert (=> b!7458102 m!8061120))

(declare-fun m!8061122 () Bool)

(assert (=> bm!685161 m!8061122))

(declare-fun m!8061124 () Bool)

(assert (=> b!7458103 m!8061124))

(declare-fun m!8061126 () Bool)

(assert (=> b!7458103 m!8061126))

(declare-fun m!8061128 () Bool)

(assert (=> b!7458103 m!8061128))

(declare-fun m!8061130 () Bool)

(assert (=> b!7458103 m!8061130))

(declare-fun m!8061132 () Bool)

(assert (=> b!7458103 m!8061132))

(declare-fun m!8061134 () Bool)

(assert (=> b!7458103 m!8061134))

(assert (=> b!7458103 m!8061126))

(declare-fun m!8061136 () Bool)

(assert (=> b!7458103 m!8061136))

(declare-fun m!8061138 () Bool)

(assert (=> b!7458103 m!8061138))

(check-sat tp_is_empty!49327 (not b!7458117) (not b!7458096) (not b!7458109) (not b!7458113) (not b!7458104) (not b!7458119) (not b!7458105) (not b!7458099) (not bm!685159) (not b!7458110) (not bm!685160) (not b!7458102) (not b!7458107) (not b!7458111) (not b!7458103) (not bm!685161) (not b!7458112) (not b!7458097) (not start!723706) (not b!7458118) (not b!7458106) (not b!7458116))
(check-sat)
(get-model)

(declare-fun bm!685170 () Bool)

(declare-fun c!1378888 () Bool)

(declare-fun call!685177 () Bool)

(declare-fun c!1378887 () Bool)

(assert (=> bm!685170 (= call!685177 (validRegex!10033 (ite c!1378887 (reg!19848 rTail!78) (ite c!1378888 (regTwo!39551 rTail!78) (regTwo!39550 rTail!78)))))))

(declare-fun bm!685171 () Bool)

(declare-fun call!685175 () Bool)

(assert (=> bm!685171 (= call!685175 (validRegex!10033 (ite c!1378888 (regOne!39551 rTail!78) (regOne!39550 rTail!78))))))

(declare-fun b!7458170 () Bool)

(declare-fun res!2991665 () Bool)

(declare-fun e!4451257 () Bool)

(assert (=> b!7458170 (=> res!2991665 e!4451257)))

(assert (=> b!7458170 (= res!2991665 (not ((_ is Concat!28364) rTail!78)))))

(declare-fun e!4451260 () Bool)

(assert (=> b!7458170 (= e!4451260 e!4451257)))

(declare-fun b!7458171 () Bool)

(declare-fun e!4451258 () Bool)

(assert (=> b!7458171 (= e!4451258 e!4451260)))

(assert (=> b!7458171 (= c!1378888 ((_ is Union!19519) rTail!78))))

(declare-fun b!7458172 () Bool)

(declare-fun e!4451262 () Bool)

(assert (=> b!7458172 (= e!4451257 e!4451262)))

(declare-fun res!2991666 () Bool)

(assert (=> b!7458172 (=> (not res!2991666) (not e!4451262))))

(assert (=> b!7458172 (= res!2991666 call!685175)))

(declare-fun bm!685172 () Bool)

(declare-fun call!685176 () Bool)

(assert (=> bm!685172 (= call!685176 call!685177)))

(declare-fun b!7458173 () Bool)

(declare-fun e!4451259 () Bool)

(assert (=> b!7458173 (= e!4451259 call!685177)))

(declare-fun b!7458174 () Bool)

(assert (=> b!7458174 (= e!4451262 call!685176)))

(declare-fun b!7458175 () Bool)

(declare-fun e!4451263 () Bool)

(assert (=> b!7458175 (= e!4451263 call!685176)))

(declare-fun b!7458176 () Bool)

(assert (=> b!7458176 (= e!4451258 e!4451259)))

(declare-fun res!2991668 () Bool)

(declare-fun nullable!8505 (Regex!19519) Bool)

(assert (=> b!7458176 (= res!2991668 (not (nullable!8505 (reg!19848 rTail!78))))))

(assert (=> b!7458176 (=> (not res!2991668) (not e!4451259))))

(declare-fun d!2297795 () Bool)

(declare-fun res!2991667 () Bool)

(declare-fun e!4451261 () Bool)

(assert (=> d!2297795 (=> res!2991667 e!4451261)))

(assert (=> d!2297795 (= res!2991667 ((_ is ElementMatch!19519) rTail!78))))

(assert (=> d!2297795 (= (validRegex!10033 rTail!78) e!4451261)))

(declare-fun b!7458177 () Bool)

(declare-fun res!2991669 () Bool)

(assert (=> b!7458177 (=> (not res!2991669) (not e!4451263))))

(assert (=> b!7458177 (= res!2991669 call!685175)))

(assert (=> b!7458177 (= e!4451260 e!4451263)))

(declare-fun b!7458178 () Bool)

(assert (=> b!7458178 (= e!4451261 e!4451258)))

(assert (=> b!7458178 (= c!1378887 ((_ is Star!19519) rTail!78))))

(assert (= (and d!2297795 (not res!2991667)) b!7458178))

(assert (= (and b!7458178 c!1378887) b!7458176))

(assert (= (and b!7458178 (not c!1378887)) b!7458171))

(assert (= (and b!7458176 res!2991668) b!7458173))

(assert (= (and b!7458171 c!1378888) b!7458177))

(assert (= (and b!7458171 (not c!1378888)) b!7458170))

(assert (= (and b!7458177 res!2991669) b!7458175))

(assert (= (and b!7458170 (not res!2991665)) b!7458172))

(assert (= (and b!7458172 res!2991666) b!7458174))

(assert (= (or b!7458175 b!7458174) bm!685172))

(assert (= (or b!7458177 b!7458172) bm!685171))

(assert (= (or b!7458173 bm!685172) bm!685170))

(declare-fun m!8061140 () Bool)

(assert (=> bm!685170 m!8061140))

(declare-fun m!8061142 () Bool)

(assert (=> bm!685171 m!8061142))

(declare-fun m!8061144 () Bool)

(assert (=> b!7458176 m!8061144))

(assert (=> b!7458109 d!2297795))

(declare-fun c!1378889 () Bool)

(declare-fun c!1378890 () Bool)

(declare-fun call!685180 () Bool)

(declare-fun bm!685173 () Bool)

(assert (=> bm!685173 (= call!685180 (validRegex!10033 (ite c!1378889 (reg!19848 r2!5783) (ite c!1378890 (regTwo!39551 r2!5783) (regTwo!39550 r2!5783)))))))

(declare-fun bm!685174 () Bool)

(declare-fun call!685178 () Bool)

(assert (=> bm!685174 (= call!685178 (validRegex!10033 (ite c!1378890 (regOne!39551 r2!5783) (regOne!39550 r2!5783))))))

(declare-fun b!7458179 () Bool)

(declare-fun res!2991670 () Bool)

(declare-fun e!4451264 () Bool)

(assert (=> b!7458179 (=> res!2991670 e!4451264)))

(assert (=> b!7458179 (= res!2991670 (not ((_ is Concat!28364) r2!5783)))))

(declare-fun e!4451267 () Bool)

(assert (=> b!7458179 (= e!4451267 e!4451264)))

(declare-fun b!7458180 () Bool)

(declare-fun e!4451265 () Bool)

(assert (=> b!7458180 (= e!4451265 e!4451267)))

(assert (=> b!7458180 (= c!1378890 ((_ is Union!19519) r2!5783))))

(declare-fun b!7458181 () Bool)

(declare-fun e!4451269 () Bool)

(assert (=> b!7458181 (= e!4451264 e!4451269)))

(declare-fun res!2991671 () Bool)

(assert (=> b!7458181 (=> (not res!2991671) (not e!4451269))))

(assert (=> b!7458181 (= res!2991671 call!685178)))

(declare-fun bm!685175 () Bool)

(declare-fun call!685179 () Bool)

(assert (=> bm!685175 (= call!685179 call!685180)))

(declare-fun b!7458182 () Bool)

(declare-fun e!4451266 () Bool)

(assert (=> b!7458182 (= e!4451266 call!685180)))

(declare-fun b!7458183 () Bool)

(assert (=> b!7458183 (= e!4451269 call!685179)))

(declare-fun b!7458184 () Bool)

(declare-fun e!4451270 () Bool)

(assert (=> b!7458184 (= e!4451270 call!685179)))

(declare-fun b!7458185 () Bool)

(assert (=> b!7458185 (= e!4451265 e!4451266)))

(declare-fun res!2991673 () Bool)

(assert (=> b!7458185 (= res!2991673 (not (nullable!8505 (reg!19848 r2!5783))))))

(assert (=> b!7458185 (=> (not res!2991673) (not e!4451266))))

(declare-fun d!2297797 () Bool)

(declare-fun res!2991672 () Bool)

(declare-fun e!4451268 () Bool)

(assert (=> d!2297797 (=> res!2991672 e!4451268)))

(assert (=> d!2297797 (= res!2991672 ((_ is ElementMatch!19519) r2!5783))))

(assert (=> d!2297797 (= (validRegex!10033 r2!5783) e!4451268)))

(declare-fun b!7458186 () Bool)

(declare-fun res!2991674 () Bool)

(assert (=> b!7458186 (=> (not res!2991674) (not e!4451270))))

(assert (=> b!7458186 (= res!2991674 call!685178)))

(assert (=> b!7458186 (= e!4451267 e!4451270)))

(declare-fun b!7458187 () Bool)

(assert (=> b!7458187 (= e!4451268 e!4451265)))

(assert (=> b!7458187 (= c!1378889 ((_ is Star!19519) r2!5783))))

(assert (= (and d!2297797 (not res!2991672)) b!7458187))

(assert (= (and b!7458187 c!1378889) b!7458185))

(assert (= (and b!7458187 (not c!1378889)) b!7458180))

(assert (= (and b!7458185 res!2991673) b!7458182))

(assert (= (and b!7458180 c!1378890) b!7458186))

(assert (= (and b!7458180 (not c!1378890)) b!7458179))

(assert (= (and b!7458186 res!2991674) b!7458184))

(assert (= (and b!7458179 (not res!2991670)) b!7458181))

(assert (= (and b!7458181 res!2991671) b!7458183))

(assert (= (or b!7458184 b!7458183) bm!685175))

(assert (= (or b!7458186 b!7458181) bm!685174))

(assert (= (or b!7458182 bm!685175) bm!685173))

(declare-fun m!8061146 () Bool)

(assert (=> bm!685173 m!8061146))

(declare-fun m!8061148 () Bool)

(assert (=> bm!685174 m!8061148))

(declare-fun m!8061150 () Bool)

(assert (=> b!7458185 m!8061150))

(assert (=> b!7458118 d!2297797))

(declare-fun bs!1928910 () Bool)

(declare-fun d!2297799 () Bool)

(assert (= bs!1928910 (and d!2297799 b!7458103)))

(declare-fun lambda!461426 () Int)

(assert (=> bs!1928910 (= lambda!461426 lambda!461418)))

(assert (=> bs!1928910 (not (= lambda!461426 lambda!461419))))

(assert (=> d!2297799 true))

(assert (=> d!2297799 true))

(assert (=> d!2297799 true))

(declare-fun lambda!461428 () Int)

(assert (=> bs!1928910 (not (= lambda!461428 lambda!461418))))

(assert (=> bs!1928910 (= lambda!461428 lambda!461419)))

(declare-fun bs!1928911 () Bool)

(assert (= bs!1928911 d!2297799))

(assert (=> bs!1928911 (not (= lambda!461428 lambda!461426))))

(assert (=> d!2297799 true))

(assert (=> d!2297799 true))

(assert (=> d!2297799 true))

(assert (=> d!2297799 (= (Exists!4140 lambda!461426) (Exists!4140 lambda!461428))))

(declare-fun lt!2622117 () Unit!165873)

(declare-fun choose!57649 (Regex!19519 Regex!19519 List!72235) Unit!165873)

(assert (=> d!2297799 (= lt!2622117 (choose!57649 lt!2622098 rTail!78 s!13591))))

(assert (=> d!2297799 (validRegex!10033 lt!2622098)))

(assert (=> d!2297799 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2476 lt!2622098 rTail!78 s!13591) lt!2622117)))

(declare-fun m!8061168 () Bool)

(assert (=> bs!1928911 m!8061168))

(declare-fun m!8061170 () Bool)

(assert (=> bs!1928911 m!8061170))

(declare-fun m!8061172 () Bool)

(assert (=> bs!1928911 m!8061172))

(declare-fun m!8061174 () Bool)

(assert (=> bs!1928911 m!8061174))

(assert (=> b!7458103 d!2297799))

(declare-fun b!7458296 () Bool)

(declare-fun res!2991731 () Bool)

(declare-fun e!4451332 () Bool)

(assert (=> b!7458296 (=> (not res!2991731) (not e!4451332))))

(declare-fun lt!2622131 () Option!17078)

(assert (=> b!7458296 (= res!2991731 (matchR!9283 lt!2622098 (_1!37549 (get!25162 lt!2622131))))))

(declare-fun b!7458297 () Bool)

(declare-fun e!4451331 () Option!17078)

(declare-fun e!4451333 () Option!17078)

(assert (=> b!7458297 (= e!4451331 e!4451333)))

(declare-fun c!1378918 () Bool)

(assert (=> b!7458297 (= c!1378918 ((_ is Nil!72111) s!13591))))

(declare-fun b!7458298 () Bool)

(assert (=> b!7458298 (= e!4451333 None!17077)))

(declare-fun b!7458299 () Bool)

(assert (=> b!7458299 (= e!4451332 (= (++!17177 (_1!37549 (get!25162 lt!2622131)) (_2!37549 (get!25162 lt!2622131))) s!13591))))

(declare-fun b!7458300 () Bool)

(declare-fun e!4451334 () Bool)

(assert (=> b!7458300 (= e!4451334 (matchR!9283 rTail!78 s!13591))))

(declare-fun d!2297803 () Bool)

(declare-fun e!4451335 () Bool)

(assert (=> d!2297803 e!4451335))

(declare-fun res!2991735 () Bool)

(assert (=> d!2297803 (=> res!2991735 e!4451335)))

(assert (=> d!2297803 (= res!2991735 e!4451332)))

(declare-fun res!2991733 () Bool)

(assert (=> d!2297803 (=> (not res!2991733) (not e!4451332))))

(assert (=> d!2297803 (= res!2991733 (isDefined!13767 lt!2622131))))

(assert (=> d!2297803 (= lt!2622131 e!4451331)))

(declare-fun c!1378917 () Bool)

(assert (=> d!2297803 (= c!1378917 e!4451334)))

(declare-fun res!2991732 () Bool)

(assert (=> d!2297803 (=> (not res!2991732) (not e!4451334))))

(assert (=> d!2297803 (= res!2991732 (matchR!9283 lt!2622098 Nil!72111))))

(assert (=> d!2297803 (validRegex!10033 lt!2622098)))

(assert (=> d!2297803 (= (findConcatSeparation!3200 lt!2622098 rTail!78 Nil!72111 s!13591 s!13591) lt!2622131)))

(declare-fun b!7458301 () Bool)

(assert (=> b!7458301 (= e!4451335 (not (isDefined!13767 lt!2622131)))))

(declare-fun b!7458302 () Bool)

(declare-fun lt!2622129 () Unit!165873)

(declare-fun lt!2622130 () Unit!165873)

(assert (=> b!7458302 (= lt!2622129 lt!2622130)))

(assert (=> b!7458302 (= (++!17177 (++!17177 Nil!72111 (Cons!72111 (h!78559 s!13591) Nil!72111)) (t!386804 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3056 (List!72235 C!39312 List!72235 List!72235) Unit!165873)

(assert (=> b!7458302 (= lt!2622130 (lemmaMoveElementToOtherListKeepsConcatEq!3056 Nil!72111 (h!78559 s!13591) (t!386804 s!13591) s!13591))))

(assert (=> b!7458302 (= e!4451333 (findConcatSeparation!3200 lt!2622098 rTail!78 (++!17177 Nil!72111 (Cons!72111 (h!78559 s!13591) Nil!72111)) (t!386804 s!13591) s!13591))))

(declare-fun b!7458303 () Bool)

(declare-fun res!2991734 () Bool)

(assert (=> b!7458303 (=> (not res!2991734) (not e!4451332))))

(assert (=> b!7458303 (= res!2991734 (matchR!9283 rTail!78 (_2!37549 (get!25162 lt!2622131))))))

(declare-fun b!7458304 () Bool)

(assert (=> b!7458304 (= e!4451331 (Some!17077 (tuple2!68493 Nil!72111 s!13591)))))

(assert (= (and d!2297803 res!2991732) b!7458300))

(assert (= (and d!2297803 c!1378917) b!7458304))

(assert (= (and d!2297803 (not c!1378917)) b!7458297))

(assert (= (and b!7458297 c!1378918) b!7458298))

(assert (= (and b!7458297 (not c!1378918)) b!7458302))

(assert (= (and d!2297803 res!2991733) b!7458296))

(assert (= (and b!7458296 res!2991731) b!7458303))

(assert (= (and b!7458303 res!2991734) b!7458299))

(assert (= (and d!2297803 (not res!2991735)) b!7458301))

(declare-fun m!8061200 () Bool)

(assert (=> b!7458302 m!8061200))

(assert (=> b!7458302 m!8061200))

(declare-fun m!8061202 () Bool)

(assert (=> b!7458302 m!8061202))

(declare-fun m!8061204 () Bool)

(assert (=> b!7458302 m!8061204))

(assert (=> b!7458302 m!8061200))

(declare-fun m!8061206 () Bool)

(assert (=> b!7458302 m!8061206))

(declare-fun m!8061208 () Bool)

(assert (=> b!7458300 m!8061208))

(declare-fun m!8061210 () Bool)

(assert (=> b!7458296 m!8061210))

(declare-fun m!8061212 () Bool)

(assert (=> b!7458296 m!8061212))

(assert (=> b!7458303 m!8061210))

(declare-fun m!8061214 () Bool)

(assert (=> b!7458303 m!8061214))

(assert (=> b!7458299 m!8061210))

(declare-fun m!8061216 () Bool)

(assert (=> b!7458299 m!8061216))

(declare-fun m!8061218 () Bool)

(assert (=> b!7458301 m!8061218))

(assert (=> d!2297803 m!8061218))

(declare-fun m!8061220 () Bool)

(assert (=> d!2297803 m!8061220))

(assert (=> d!2297803 m!8061174))

(assert (=> b!7458103 d!2297803))

(declare-fun bs!1928924 () Bool)

(declare-fun d!2297815 () Bool)

(assert (= bs!1928924 (and d!2297815 b!7458103)))

(declare-fun lambda!461436 () Int)

(assert (=> bs!1928924 (= lambda!461436 lambda!461418)))

(assert (=> bs!1928924 (not (= lambda!461436 lambda!461419))))

(declare-fun bs!1928925 () Bool)

(assert (= bs!1928925 (and d!2297815 d!2297799)))

(assert (=> bs!1928925 (= lambda!461436 lambda!461426)))

(assert (=> bs!1928925 (not (= lambda!461436 lambda!461428))))

(assert (=> d!2297815 true))

(assert (=> d!2297815 true))

(assert (=> d!2297815 true))

(assert (=> d!2297815 (= (isDefined!13767 (findConcatSeparation!3200 lt!2622098 rTail!78 Nil!72111 s!13591 s!13591)) (Exists!4140 lambda!461436))))

(declare-fun lt!2622134 () Unit!165873)

(declare-fun choose!57650 (Regex!19519 Regex!19519 List!72235) Unit!165873)

(assert (=> d!2297815 (= lt!2622134 (choose!57650 lt!2622098 rTail!78 s!13591))))

(assert (=> d!2297815 (validRegex!10033 lt!2622098)))

(assert (=> d!2297815 (= (lemmaFindConcatSeparationEquivalentToExists!2958 lt!2622098 rTail!78 s!13591) lt!2622134)))

(declare-fun bs!1928926 () Bool)

(assert (= bs!1928926 d!2297815))

(assert (=> bs!1928926 m!8061132))

(declare-fun m!8061222 () Bool)

(assert (=> bs!1928926 m!8061222))

(declare-fun m!8061224 () Bool)

(assert (=> bs!1928926 m!8061224))

(assert (=> bs!1928926 m!8061132))

(declare-fun m!8061226 () Bool)

(assert (=> bs!1928926 m!8061226))

(assert (=> bs!1928926 m!8061174))

(assert (=> b!7458103 d!2297815))

(declare-fun d!2297817 () Bool)

(declare-fun choose!57651 (Int) Bool)

(assert (=> d!2297817 (= (Exists!4140 lambda!461419) (choose!57651 lambda!461419))))

(declare-fun bs!1928927 () Bool)

(assert (= bs!1928927 d!2297817))

(declare-fun m!8061228 () Bool)

(assert (=> bs!1928927 m!8061228))

(assert (=> b!7458103 d!2297817))

(declare-fun d!2297819 () Bool)

(assert (=> d!2297819 (= (Exists!4140 lambda!461418) (choose!57651 lambda!461418))))

(declare-fun bs!1928928 () Bool)

(assert (= bs!1928928 d!2297819))

(declare-fun m!8061230 () Bool)

(assert (=> bs!1928928 m!8061230))

(assert (=> b!7458103 d!2297819))

(declare-fun d!2297821 () Bool)

(assert (=> d!2297821 (= (get!25162 lt!2622093) (v!54206 lt!2622093))))

(assert (=> b!7458103 d!2297821))

(declare-fun bm!685189 () Bool)

(declare-fun call!685194 () Bool)

(declare-fun isEmpty!41124 (List!72235) Bool)

(assert (=> bm!685189 (= call!685194 (isEmpty!41124 (_1!37549 lt!2622105)))))

(declare-fun b!7458378 () Bool)

(declare-fun res!2991786 () Bool)

(declare-fun e!4451380 () Bool)

(assert (=> b!7458378 (=> res!2991786 e!4451380)))

(declare-fun e!4451377 () Bool)

(assert (=> b!7458378 (= res!2991786 e!4451377)))

(declare-fun res!2991779 () Bool)

(assert (=> b!7458378 (=> (not res!2991779) (not e!4451377))))

(declare-fun lt!2622147 () Bool)

(assert (=> b!7458378 (= res!2991779 lt!2622147)))

(declare-fun b!7458379 () Bool)

(declare-fun e!4451378 () Bool)

(declare-fun e!4451374 () Bool)

(assert (=> b!7458379 (= e!4451378 e!4451374)))

(declare-fun c!1378936 () Bool)

(assert (=> b!7458379 (= c!1378936 ((_ is EmptyLang!19519) lt!2622098))))

(declare-fun b!7458380 () Bool)

(assert (=> b!7458380 (= e!4451378 (= lt!2622147 call!685194))))

(declare-fun b!7458382 () Bool)

(declare-fun e!4451376 () Bool)

(assert (=> b!7458382 (= e!4451376 (nullable!8505 lt!2622098))))

(declare-fun b!7458383 () Bool)

(declare-fun res!2991780 () Bool)

(assert (=> b!7458383 (=> (not res!2991780) (not e!4451377))))

(assert (=> b!7458383 (= res!2991780 (not call!685194))))

(declare-fun b!7458384 () Bool)

(declare-fun res!2991785 () Bool)

(declare-fun e!4451375 () Bool)

(assert (=> b!7458384 (=> res!2991785 e!4451375)))

(declare-fun tail!14873 (List!72235) List!72235)

(assert (=> b!7458384 (= res!2991785 (not (isEmpty!41124 (tail!14873 (_1!37549 lt!2622105)))))))

(declare-fun b!7458385 () Bool)

(declare-fun e!4451379 () Bool)

(assert (=> b!7458385 (= e!4451379 e!4451375)))

(declare-fun res!2991784 () Bool)

(assert (=> b!7458385 (=> res!2991784 e!4451375)))

(assert (=> b!7458385 (= res!2991784 call!685194)))

(declare-fun b!7458386 () Bool)

(declare-fun res!2991782 () Bool)

(assert (=> b!7458386 (=> (not res!2991782) (not e!4451377))))

(assert (=> b!7458386 (= res!2991782 (isEmpty!41124 (tail!14873 (_1!37549 lt!2622105))))))

(declare-fun b!7458387 () Bool)

(declare-fun res!2991781 () Bool)

(assert (=> b!7458387 (=> res!2991781 e!4451380)))

(assert (=> b!7458387 (= res!2991781 (not ((_ is ElementMatch!19519) lt!2622098)))))

(assert (=> b!7458387 (= e!4451374 e!4451380)))

(declare-fun b!7458388 () Bool)

(declare-fun head!15304 (List!72235) C!39312)

(assert (=> b!7458388 (= e!4451377 (= (head!15304 (_1!37549 lt!2622105)) (c!1378876 lt!2622098)))))

(declare-fun b!7458389 () Bool)

(declare-fun derivativeStep!5564 (Regex!19519 C!39312) Regex!19519)

(assert (=> b!7458389 (= e!4451376 (matchR!9283 (derivativeStep!5564 lt!2622098 (head!15304 (_1!37549 lt!2622105))) (tail!14873 (_1!37549 lt!2622105))))))

(declare-fun b!7458390 () Bool)

(assert (=> b!7458390 (= e!4451380 e!4451379)))

(declare-fun res!2991783 () Bool)

(assert (=> b!7458390 (=> (not res!2991783) (not e!4451379))))

(assert (=> b!7458390 (= res!2991783 (not lt!2622147))))

(declare-fun b!7458391 () Bool)

(assert (=> b!7458391 (= e!4451375 (not (= (head!15304 (_1!37549 lt!2622105)) (c!1378876 lt!2622098))))))

(declare-fun d!2297823 () Bool)

(assert (=> d!2297823 e!4451378))

(declare-fun c!1378935 () Bool)

(assert (=> d!2297823 (= c!1378935 ((_ is EmptyExpr!19519) lt!2622098))))

(assert (=> d!2297823 (= lt!2622147 e!4451376)))

(declare-fun c!1378934 () Bool)

(assert (=> d!2297823 (= c!1378934 (isEmpty!41124 (_1!37549 lt!2622105)))))

(assert (=> d!2297823 (validRegex!10033 lt!2622098)))

(assert (=> d!2297823 (= (matchR!9283 lt!2622098 (_1!37549 lt!2622105)) lt!2622147)))

(declare-fun b!7458381 () Bool)

(assert (=> b!7458381 (= e!4451374 (not lt!2622147))))

(assert (= (and d!2297823 c!1378934) b!7458382))

(assert (= (and d!2297823 (not c!1378934)) b!7458389))

(assert (= (and d!2297823 c!1378935) b!7458380))

(assert (= (and d!2297823 (not c!1378935)) b!7458379))

(assert (= (and b!7458379 c!1378936) b!7458381))

(assert (= (and b!7458379 (not c!1378936)) b!7458387))

(assert (= (and b!7458387 (not res!2991781)) b!7458378))

(assert (= (and b!7458378 res!2991779) b!7458383))

(assert (= (and b!7458383 res!2991780) b!7458386))

(assert (= (and b!7458386 res!2991782) b!7458388))

(assert (= (and b!7458378 (not res!2991786)) b!7458390))

(assert (= (and b!7458390 res!2991783) b!7458385))

(assert (= (and b!7458385 (not res!2991784)) b!7458384))

(assert (= (and b!7458384 (not res!2991785)) b!7458391))

(assert (= (or b!7458380 b!7458383 b!7458385) bm!685189))

(declare-fun m!8061276 () Bool)

(assert (=> bm!685189 m!8061276))

(declare-fun m!8061278 () Bool)

(assert (=> b!7458389 m!8061278))

(assert (=> b!7458389 m!8061278))

(declare-fun m!8061280 () Bool)

(assert (=> b!7458389 m!8061280))

(declare-fun m!8061282 () Bool)

(assert (=> b!7458389 m!8061282))

(assert (=> b!7458389 m!8061280))

(assert (=> b!7458389 m!8061282))

(declare-fun m!8061284 () Bool)

(assert (=> b!7458389 m!8061284))

(declare-fun m!8061286 () Bool)

(assert (=> b!7458382 m!8061286))

(assert (=> b!7458384 m!8061282))

(assert (=> b!7458384 m!8061282))

(declare-fun m!8061288 () Bool)

(assert (=> b!7458384 m!8061288))

(assert (=> b!7458391 m!8061278))

(assert (=> d!2297823 m!8061276))

(assert (=> d!2297823 m!8061174))

(assert (=> b!7458386 m!8061282))

(assert (=> b!7458386 m!8061282))

(assert (=> b!7458386 m!8061288))

(assert (=> b!7458388 m!8061278))

(assert (=> b!7458103 d!2297823))

(declare-fun d!2297837 () Bool)

(declare-fun isEmpty!41125 (Option!17078) Bool)

(assert (=> d!2297837 (= (isDefined!13767 lt!2622093) (not (isEmpty!41125 lt!2622093)))))

(declare-fun bs!1928932 () Bool)

(assert (= bs!1928932 d!2297837))

(declare-fun m!8061290 () Bool)

(assert (=> bs!1928932 m!8061290))

(assert (=> b!7458103 d!2297837))

(declare-fun bs!1928939 () Bool)

(declare-fun b!7458446 () Bool)

(assert (= bs!1928939 (and b!7458446 d!2297799)))

(declare-fun lambda!461449 () Int)

(assert (=> bs!1928939 (not (= lambda!461449 lambda!461428))))

(declare-fun bs!1928940 () Bool)

(assert (= bs!1928940 (and b!7458446 d!2297815)))

(assert (=> bs!1928940 (not (= lambda!461449 lambda!461436))))

(declare-fun bs!1928941 () Bool)

(assert (= bs!1928941 (and b!7458446 b!7458103)))

(assert (=> bs!1928941 (not (= lambda!461449 lambda!461418))))

(assert (=> bs!1928941 (not (= lambda!461449 lambda!461419))))

(assert (=> bs!1928939 (not (= lambda!461449 lambda!461426))))

(assert (=> b!7458446 true))

(assert (=> b!7458446 true))

(declare-fun bs!1928944 () Bool)

(declare-fun b!7458439 () Bool)

(assert (= bs!1928944 (and b!7458439 d!2297799)))

(declare-fun lambda!461451 () Int)

(assert (=> bs!1928944 (= (and (= (_1!37549 lt!2622105) s!13591) (= (regOne!39550 r2!5783) lt!2622098) (= (regTwo!39550 r2!5783) rTail!78)) (= lambda!461451 lambda!461428))))

(declare-fun bs!1928946 () Bool)

(assert (= bs!1928946 (and b!7458439 d!2297815)))

(assert (=> bs!1928946 (not (= lambda!461451 lambda!461436))))

(declare-fun bs!1928948 () Bool)

(assert (= bs!1928948 (and b!7458439 b!7458103)))

(assert (=> bs!1928948 (not (= lambda!461451 lambda!461418))))

(assert (=> bs!1928948 (= (and (= (_1!37549 lt!2622105) s!13591) (= (regOne!39550 r2!5783) lt!2622098) (= (regTwo!39550 r2!5783) rTail!78)) (= lambda!461451 lambda!461419))))

(assert (=> bs!1928944 (not (= lambda!461451 lambda!461426))))

(declare-fun bs!1928950 () Bool)

(assert (= bs!1928950 (and b!7458439 b!7458446)))

(assert (=> bs!1928950 (not (= lambda!461451 lambda!461449))))

(assert (=> b!7458439 true))

(assert (=> b!7458439 true))

(declare-fun b!7458436 () Bool)

(declare-fun e!4451405 () Bool)

(declare-fun e!4451410 () Bool)

(assert (=> b!7458436 (= e!4451405 e!4451410)))

(declare-fun c!1378945 () Bool)

(assert (=> b!7458436 (= c!1378945 ((_ is Star!19519) r2!5783))))

(declare-fun b!7458437 () Bool)

(declare-fun e!4451407 () Bool)

(assert (=> b!7458437 (= e!4451407 (= (_1!37549 lt!2622105) (Cons!72111 (c!1378876 r2!5783) Nil!72111)))))

(declare-fun b!7458438 () Bool)

(declare-fun e!4451406 () Bool)

(declare-fun call!685200 () Bool)

(assert (=> b!7458438 (= e!4451406 call!685200)))

(declare-fun call!685199 () Bool)

(declare-fun bm!685194 () Bool)

(assert (=> bm!685194 (= call!685199 (Exists!4140 (ite c!1378945 lambda!461449 lambda!461451)))))

(assert (=> b!7458439 (= e!4451410 call!685199)))

(declare-fun b!7458440 () Bool)

(declare-fun c!1378947 () Bool)

(assert (=> b!7458440 (= c!1378947 ((_ is ElementMatch!19519) r2!5783))))

(declare-fun e!4451408 () Bool)

(assert (=> b!7458440 (= e!4451408 e!4451407)))

(declare-fun b!7458441 () Bool)

(declare-fun e!4451409 () Bool)

(assert (=> b!7458441 (= e!4451405 e!4451409)))

(declare-fun res!2991817 () Bool)

(assert (=> b!7458441 (= res!2991817 (matchRSpec!4198 (regOne!39551 r2!5783) (_1!37549 lt!2622105)))))

(assert (=> b!7458441 (=> res!2991817 e!4451409)))

(declare-fun d!2297839 () Bool)

(declare-fun c!1378948 () Bool)

(assert (=> d!2297839 (= c!1378948 ((_ is EmptyExpr!19519) r2!5783))))

(assert (=> d!2297839 (= (matchRSpec!4198 r2!5783 (_1!37549 lt!2622105)) e!4451406)))

(declare-fun b!7458442 () Bool)

(declare-fun c!1378946 () Bool)

(assert (=> b!7458442 (= c!1378946 ((_ is Union!19519) r2!5783))))

(assert (=> b!7458442 (= e!4451407 e!4451405)))

(declare-fun bm!685195 () Bool)

(assert (=> bm!685195 (= call!685200 (isEmpty!41124 (_1!37549 lt!2622105)))))

(declare-fun b!7458443 () Bool)

(assert (=> b!7458443 (= e!4451406 e!4451408)))

(declare-fun res!2991815 () Bool)

(assert (=> b!7458443 (= res!2991815 (not ((_ is EmptyLang!19519) r2!5783)))))

(assert (=> b!7458443 (=> (not res!2991815) (not e!4451408))))

(declare-fun b!7458444 () Bool)

(assert (=> b!7458444 (= e!4451409 (matchRSpec!4198 (regTwo!39551 r2!5783) (_1!37549 lt!2622105)))))

(declare-fun b!7458445 () Bool)

(declare-fun res!2991816 () Bool)

(declare-fun e!4451411 () Bool)

(assert (=> b!7458445 (=> res!2991816 e!4451411)))

(assert (=> b!7458445 (= res!2991816 call!685200)))

(assert (=> b!7458445 (= e!4451410 e!4451411)))

(assert (=> b!7458446 (= e!4451411 call!685199)))

(assert (= (and d!2297839 c!1378948) b!7458438))

(assert (= (and d!2297839 (not c!1378948)) b!7458443))

(assert (= (and b!7458443 res!2991815) b!7458440))

(assert (= (and b!7458440 c!1378947) b!7458437))

(assert (= (and b!7458440 (not c!1378947)) b!7458442))

(assert (= (and b!7458442 c!1378946) b!7458441))

(assert (= (and b!7458442 (not c!1378946)) b!7458436))

(assert (= (and b!7458441 (not res!2991817)) b!7458444))

(assert (= (and b!7458436 c!1378945) b!7458445))

(assert (= (and b!7458436 (not c!1378945)) b!7458439))

(assert (= (and b!7458445 (not res!2991816)) b!7458446))

(assert (= (or b!7458446 b!7458439) bm!685194))

(assert (= (or b!7458438 b!7458445) bm!685195))

(declare-fun m!8061304 () Bool)

(assert (=> bm!685194 m!8061304))

(declare-fun m!8061306 () Bool)

(assert (=> b!7458441 m!8061306))

(assert (=> bm!685195 m!8061276))

(declare-fun m!8061308 () Bool)

(assert (=> b!7458444 m!8061308))

(assert (=> b!7458113 d!2297839))

(declare-fun bs!1928953 () Bool)

(declare-fun b!7458457 () Bool)

(assert (= bs!1928953 (and b!7458457 d!2297799)))

(declare-fun lambda!461452 () Int)

(assert (=> bs!1928953 (not (= lambda!461452 lambda!461428))))

(declare-fun bs!1928954 () Bool)

(assert (= bs!1928954 (and b!7458457 b!7458439)))

(assert (=> bs!1928954 (not (= lambda!461452 lambda!461451))))

(declare-fun bs!1928955 () Bool)

(assert (= bs!1928955 (and b!7458457 d!2297815)))

(assert (=> bs!1928955 (not (= lambda!461452 lambda!461436))))

(declare-fun bs!1928956 () Bool)

(assert (= bs!1928956 (and b!7458457 b!7458103)))

(assert (=> bs!1928956 (not (= lambda!461452 lambda!461418))))

(assert (=> bs!1928956 (not (= lambda!461452 lambda!461419))))

(assert (=> bs!1928953 (not (= lambda!461452 lambda!461426))))

(declare-fun bs!1928957 () Bool)

(assert (= bs!1928957 (and b!7458457 b!7458446)))

(assert (=> bs!1928957 (= (and (= (reg!19848 r1!5845) (reg!19848 r2!5783)) (= r1!5845 r2!5783)) (= lambda!461452 lambda!461449))))

(assert (=> b!7458457 true))

(assert (=> b!7458457 true))

(declare-fun bs!1928958 () Bool)

(declare-fun b!7458450 () Bool)

(assert (= bs!1928958 (and b!7458450 d!2297799)))

(declare-fun lambda!461453 () Int)

(assert (=> bs!1928958 (= (and (= (_1!37549 lt!2622105) s!13591) (= (regOne!39550 r1!5845) lt!2622098) (= (regTwo!39550 r1!5845) rTail!78)) (= lambda!461453 lambda!461428))))

(declare-fun bs!1928959 () Bool)

(assert (= bs!1928959 (and b!7458450 b!7458439)))

(assert (=> bs!1928959 (= (and (= (regOne!39550 r1!5845) (regOne!39550 r2!5783)) (= (regTwo!39550 r1!5845) (regTwo!39550 r2!5783))) (= lambda!461453 lambda!461451))))

(declare-fun bs!1928960 () Bool)

(assert (= bs!1928960 (and b!7458450 b!7458457)))

(assert (=> bs!1928960 (not (= lambda!461453 lambda!461452))))

(declare-fun bs!1928961 () Bool)

(assert (= bs!1928961 (and b!7458450 d!2297815)))

(assert (=> bs!1928961 (not (= lambda!461453 lambda!461436))))

(declare-fun bs!1928962 () Bool)

(assert (= bs!1928962 (and b!7458450 b!7458103)))

(assert (=> bs!1928962 (not (= lambda!461453 lambda!461418))))

(assert (=> bs!1928962 (= (and (= (_1!37549 lt!2622105) s!13591) (= (regOne!39550 r1!5845) lt!2622098) (= (regTwo!39550 r1!5845) rTail!78)) (= lambda!461453 lambda!461419))))

(assert (=> bs!1928958 (not (= lambda!461453 lambda!461426))))

(declare-fun bs!1928963 () Bool)

(assert (= bs!1928963 (and b!7458450 b!7458446)))

(assert (=> bs!1928963 (not (= lambda!461453 lambda!461449))))

(assert (=> b!7458450 true))

(assert (=> b!7458450 true))

(declare-fun b!7458447 () Bool)

(declare-fun e!4451412 () Bool)

(declare-fun e!4451417 () Bool)

(assert (=> b!7458447 (= e!4451412 e!4451417)))

(declare-fun c!1378949 () Bool)

(assert (=> b!7458447 (= c!1378949 ((_ is Star!19519) r1!5845))))

(declare-fun b!7458448 () Bool)

(declare-fun e!4451414 () Bool)

(assert (=> b!7458448 (= e!4451414 (= (_1!37549 lt!2622105) (Cons!72111 (c!1378876 r1!5845) Nil!72111)))))

(declare-fun b!7458449 () Bool)

(declare-fun e!4451413 () Bool)

(declare-fun call!685202 () Bool)

(assert (=> b!7458449 (= e!4451413 call!685202)))

(declare-fun call!685201 () Bool)

(declare-fun bm!685196 () Bool)

(assert (=> bm!685196 (= call!685201 (Exists!4140 (ite c!1378949 lambda!461452 lambda!461453)))))

(assert (=> b!7458450 (= e!4451417 call!685201)))

(declare-fun b!7458451 () Bool)

(declare-fun c!1378951 () Bool)

(assert (=> b!7458451 (= c!1378951 ((_ is ElementMatch!19519) r1!5845))))

(declare-fun e!4451415 () Bool)

(assert (=> b!7458451 (= e!4451415 e!4451414)))

(declare-fun b!7458452 () Bool)

(declare-fun e!4451416 () Bool)

(assert (=> b!7458452 (= e!4451412 e!4451416)))

(declare-fun res!2991820 () Bool)

(assert (=> b!7458452 (= res!2991820 (matchRSpec!4198 (regOne!39551 r1!5845) (_1!37549 lt!2622105)))))

(assert (=> b!7458452 (=> res!2991820 e!4451416)))

(declare-fun d!2297845 () Bool)

(declare-fun c!1378952 () Bool)

(assert (=> d!2297845 (= c!1378952 ((_ is EmptyExpr!19519) r1!5845))))

(assert (=> d!2297845 (= (matchRSpec!4198 r1!5845 (_1!37549 lt!2622105)) e!4451413)))

(declare-fun b!7458453 () Bool)

(declare-fun c!1378950 () Bool)

(assert (=> b!7458453 (= c!1378950 ((_ is Union!19519) r1!5845))))

(assert (=> b!7458453 (= e!4451414 e!4451412)))

(declare-fun bm!685197 () Bool)

(assert (=> bm!685197 (= call!685202 (isEmpty!41124 (_1!37549 lt!2622105)))))

(declare-fun b!7458454 () Bool)

(assert (=> b!7458454 (= e!4451413 e!4451415)))

(declare-fun res!2991818 () Bool)

(assert (=> b!7458454 (= res!2991818 (not ((_ is EmptyLang!19519) r1!5845)))))

(assert (=> b!7458454 (=> (not res!2991818) (not e!4451415))))

(declare-fun b!7458455 () Bool)

(assert (=> b!7458455 (= e!4451416 (matchRSpec!4198 (regTwo!39551 r1!5845) (_1!37549 lt!2622105)))))

(declare-fun b!7458456 () Bool)

(declare-fun res!2991819 () Bool)

(declare-fun e!4451418 () Bool)

(assert (=> b!7458456 (=> res!2991819 e!4451418)))

(assert (=> b!7458456 (= res!2991819 call!685202)))

(assert (=> b!7458456 (= e!4451417 e!4451418)))

(assert (=> b!7458457 (= e!4451418 call!685201)))

(assert (= (and d!2297845 c!1378952) b!7458449))

(assert (= (and d!2297845 (not c!1378952)) b!7458454))

(assert (= (and b!7458454 res!2991818) b!7458451))

(assert (= (and b!7458451 c!1378951) b!7458448))

(assert (= (and b!7458451 (not c!1378951)) b!7458453))

(assert (= (and b!7458453 c!1378950) b!7458452))

(assert (= (and b!7458453 (not c!1378950)) b!7458447))

(assert (= (and b!7458452 (not res!2991820)) b!7458455))

(assert (= (and b!7458447 c!1378949) b!7458456))

(assert (= (and b!7458447 (not c!1378949)) b!7458450))

(assert (= (and b!7458456 (not res!2991819)) b!7458457))

(assert (= (or b!7458457 b!7458450) bm!685196))

(assert (= (or b!7458449 b!7458456) bm!685197))

(declare-fun m!8061310 () Bool)

(assert (=> bm!685196 m!8061310))

(declare-fun m!8061312 () Bool)

(assert (=> b!7458452 m!8061312))

(assert (=> bm!685197 m!8061276))

(declare-fun m!8061314 () Bool)

(assert (=> b!7458455 m!8061314))

(assert (=> b!7458113 d!2297845))

(declare-fun d!2297847 () Bool)

(assert (=> d!2297847 (= (matchR!9283 r2!5783 (_1!37549 lt!2622105)) (matchRSpec!4198 r2!5783 (_1!37549 lt!2622105)))))

(declare-fun lt!2622158 () Unit!165873)

(declare-fun choose!57655 (Regex!19519 List!72235) Unit!165873)

(assert (=> d!2297847 (= lt!2622158 (choose!57655 r2!5783 (_1!37549 lt!2622105)))))

(assert (=> d!2297847 (validRegex!10033 r2!5783)))

(assert (=> d!2297847 (= (mainMatchTheorem!4192 r2!5783 (_1!37549 lt!2622105)) lt!2622158)))

(declare-fun bs!1928965 () Bool)

(assert (= bs!1928965 d!2297847))

(assert (=> bs!1928965 m!8061108))

(assert (=> bs!1928965 m!8061106))

(declare-fun m!8061324 () Bool)

(assert (=> bs!1928965 m!8061324))

(assert (=> bs!1928965 m!8061116))

(assert (=> b!7458113 d!2297847))

(declare-fun d!2297853 () Bool)

(assert (=> d!2297853 (= (matchR!9283 lt!2622098 (_1!37549 lt!2622105)) (matchRSpec!4198 lt!2622098 (_1!37549 lt!2622105)))))

(declare-fun lt!2622159 () Unit!165873)

(assert (=> d!2297853 (= lt!2622159 (choose!57655 lt!2622098 (_1!37549 lt!2622105)))))

(assert (=> d!2297853 (validRegex!10033 lt!2622098)))

(assert (=> d!2297853 (= (mainMatchTheorem!4192 lt!2622098 (_1!37549 lt!2622105)) lt!2622159)))

(declare-fun bs!1928966 () Bool)

(assert (= bs!1928966 d!2297853))

(assert (=> bs!1928966 m!8061134))

(assert (=> bs!1928966 m!8061098))

(declare-fun m!8061326 () Bool)

(assert (=> bs!1928966 m!8061326))

(assert (=> bs!1928966 m!8061174))

(assert (=> b!7458113 d!2297853))

(declare-fun d!2297855 () Bool)

(assert (=> d!2297855 (= (matchR!9283 r1!5845 (_1!37549 lt!2622105)) (matchRSpec!4198 r1!5845 (_1!37549 lt!2622105)))))

(declare-fun lt!2622160 () Unit!165873)

(assert (=> d!2297855 (= lt!2622160 (choose!57655 r1!5845 (_1!37549 lt!2622105)))))

(assert (=> d!2297855 (validRegex!10033 r1!5845)))

(assert (=> d!2297855 (= (mainMatchTheorem!4192 r1!5845 (_1!37549 lt!2622105)) lt!2622160)))

(declare-fun bs!1928967 () Bool)

(assert (= bs!1928967 d!2297855))

(assert (=> bs!1928967 m!8061114))

(assert (=> bs!1928967 m!8061112))

(declare-fun m!8061330 () Bool)

(assert (=> bs!1928967 m!8061330))

(assert (=> bs!1928967 m!8061092))

(assert (=> b!7458113 d!2297855))

(declare-fun d!2297857 () Bool)

(assert (=> d!2297857 (= (matchR!9283 rTail!78 (_2!37549 lt!2622105)) (matchRSpec!4198 rTail!78 (_2!37549 lt!2622105)))))

(declare-fun lt!2622161 () Unit!165873)

(assert (=> d!2297857 (= lt!2622161 (choose!57655 rTail!78 (_2!37549 lt!2622105)))))

(assert (=> d!2297857 (validRegex!10033 rTail!78)))

(assert (=> d!2297857 (= (mainMatchTheorem!4192 rTail!78 (_2!37549 lt!2622105)) lt!2622161)))

(declare-fun bs!1928968 () Bool)

(assert (= bs!1928968 d!2297857))

(assert (=> bs!1928968 m!8061120))

(assert (=> bs!1928968 m!8061100))

(declare-fun m!8061336 () Bool)

(assert (=> bs!1928968 m!8061336))

(assert (=> bs!1928968 m!8061118))

(assert (=> b!7458113 d!2297857))

(declare-fun bs!1928969 () Bool)

(declare-fun b!7458520 () Bool)

(assert (= bs!1928969 (and b!7458520 d!2297799)))

(declare-fun lambda!461454 () Int)

(assert (=> bs!1928969 (not (= lambda!461454 lambda!461428))))

(declare-fun bs!1928971 () Bool)

(assert (= bs!1928971 (and b!7458520 b!7458439)))

(assert (=> bs!1928971 (not (= lambda!461454 lambda!461451))))

(declare-fun bs!1928973 () Bool)

(assert (= bs!1928973 (and b!7458520 b!7458450)))

(assert (=> bs!1928973 (not (= lambda!461454 lambda!461453))))

(declare-fun bs!1928975 () Bool)

(assert (= bs!1928975 (and b!7458520 b!7458457)))

(assert (=> bs!1928975 (= (and (= (reg!19848 lt!2622098) (reg!19848 r1!5845)) (= lt!2622098 r1!5845)) (= lambda!461454 lambda!461452))))

(declare-fun bs!1928977 () Bool)

(assert (= bs!1928977 (and b!7458520 d!2297815)))

(assert (=> bs!1928977 (not (= lambda!461454 lambda!461436))))

(declare-fun bs!1928978 () Bool)

(assert (= bs!1928978 (and b!7458520 b!7458103)))

(assert (=> bs!1928978 (not (= lambda!461454 lambda!461418))))

(assert (=> bs!1928978 (not (= lambda!461454 lambda!461419))))

(assert (=> bs!1928969 (not (= lambda!461454 lambda!461426))))

(declare-fun bs!1928981 () Bool)

(assert (= bs!1928981 (and b!7458520 b!7458446)))

(assert (=> bs!1928981 (= (and (= (reg!19848 lt!2622098) (reg!19848 r2!5783)) (= lt!2622098 r2!5783)) (= lambda!461454 lambda!461449))))

(assert (=> b!7458520 true))

(assert (=> b!7458520 true))

(declare-fun bs!1928983 () Bool)

(declare-fun b!7458509 () Bool)

(assert (= bs!1928983 (and b!7458509 b!7458520)))

(declare-fun lambda!461456 () Int)

(assert (=> bs!1928983 (not (= lambda!461456 lambda!461454))))

(declare-fun bs!1928985 () Bool)

(assert (= bs!1928985 (and b!7458509 d!2297799)))

(assert (=> bs!1928985 (= (and (= (_1!37549 lt!2622105) s!13591) (= (regOne!39550 lt!2622098) lt!2622098) (= (regTwo!39550 lt!2622098) rTail!78)) (= lambda!461456 lambda!461428))))

(declare-fun bs!1928987 () Bool)

(assert (= bs!1928987 (and b!7458509 b!7458439)))

(assert (=> bs!1928987 (= (and (= (regOne!39550 lt!2622098) (regOne!39550 r2!5783)) (= (regTwo!39550 lt!2622098) (regTwo!39550 r2!5783))) (= lambda!461456 lambda!461451))))

(declare-fun bs!1928989 () Bool)

(assert (= bs!1928989 (and b!7458509 b!7458450)))

(assert (=> bs!1928989 (= (and (= (regOne!39550 lt!2622098) (regOne!39550 r1!5845)) (= (regTwo!39550 lt!2622098) (regTwo!39550 r1!5845))) (= lambda!461456 lambda!461453))))

(declare-fun bs!1928991 () Bool)

(assert (= bs!1928991 (and b!7458509 b!7458457)))

(assert (=> bs!1928991 (not (= lambda!461456 lambda!461452))))

(declare-fun bs!1928992 () Bool)

(assert (= bs!1928992 (and b!7458509 d!2297815)))

(assert (=> bs!1928992 (not (= lambda!461456 lambda!461436))))

(declare-fun bs!1928993 () Bool)

(assert (= bs!1928993 (and b!7458509 b!7458103)))

(assert (=> bs!1928993 (not (= lambda!461456 lambda!461418))))

(assert (=> bs!1928993 (= (and (= (_1!37549 lt!2622105) s!13591) (= (regOne!39550 lt!2622098) lt!2622098) (= (regTwo!39550 lt!2622098) rTail!78)) (= lambda!461456 lambda!461419))))

(assert (=> bs!1928985 (not (= lambda!461456 lambda!461426))))

(declare-fun bs!1928997 () Bool)

(assert (= bs!1928997 (and b!7458509 b!7458446)))

(assert (=> bs!1928997 (not (= lambda!461456 lambda!461449))))

(assert (=> b!7458509 true))

(assert (=> b!7458509 true))

(declare-fun b!7458502 () Bool)

(declare-fun e!4451448 () Bool)

(declare-fun e!4451457 () Bool)

(assert (=> b!7458502 (= e!4451448 e!4451457)))

(declare-fun c!1378963 () Bool)

(assert (=> b!7458502 (= c!1378963 ((_ is Star!19519) lt!2622098))))

(declare-fun b!7458504 () Bool)

(declare-fun e!4451451 () Bool)

(assert (=> b!7458504 (= e!4451451 (= (_1!37549 lt!2622105) (Cons!72111 (c!1378876 lt!2622098) Nil!72111)))))

(declare-fun b!7458506 () Bool)

(declare-fun e!4451449 () Bool)

(declare-fun call!685216 () Bool)

(assert (=> b!7458506 (= e!4451449 call!685216)))

(declare-fun bm!685208 () Bool)

(declare-fun call!685215 () Bool)

(assert (=> bm!685208 (= call!685215 (Exists!4140 (ite c!1378963 lambda!461454 lambda!461456)))))

(assert (=> b!7458509 (= e!4451457 call!685215)))

(declare-fun b!7458511 () Bool)

(declare-fun c!1378967 () Bool)

(assert (=> b!7458511 (= c!1378967 ((_ is ElementMatch!19519) lt!2622098))))

(declare-fun e!4451454 () Bool)

(assert (=> b!7458511 (= e!4451454 e!4451451)))

(declare-fun b!7458513 () Bool)

(declare-fun e!4451456 () Bool)

(assert (=> b!7458513 (= e!4451448 e!4451456)))

(declare-fun res!2991849 () Bool)

(assert (=> b!7458513 (= res!2991849 (matchRSpec!4198 (regOne!39551 lt!2622098) (_1!37549 lt!2622105)))))

(assert (=> b!7458513 (=> res!2991849 e!4451456)))

(declare-fun d!2297861 () Bool)

(declare-fun c!1378969 () Bool)

(assert (=> d!2297861 (= c!1378969 ((_ is EmptyExpr!19519) lt!2622098))))

(assert (=> d!2297861 (= (matchRSpec!4198 lt!2622098 (_1!37549 lt!2622105)) e!4451449)))

(declare-fun b!7458515 () Bool)

(declare-fun c!1378965 () Bool)

(assert (=> b!7458515 (= c!1378965 ((_ is Union!19519) lt!2622098))))

(assert (=> b!7458515 (= e!4451451 e!4451448)))

(declare-fun bm!685210 () Bool)

(assert (=> bm!685210 (= call!685216 (isEmpty!41124 (_1!37549 lt!2622105)))))

(declare-fun b!7458516 () Bool)

(assert (=> b!7458516 (= e!4451449 e!4451454)))

(declare-fun res!2991846 () Bool)

(assert (=> b!7458516 (= res!2991846 (not ((_ is EmptyLang!19519) lt!2622098)))))

(assert (=> b!7458516 (=> (not res!2991846) (not e!4451454))))

(declare-fun b!7458518 () Bool)

(assert (=> b!7458518 (= e!4451456 (matchRSpec!4198 (regTwo!39551 lt!2622098) (_1!37549 lt!2622105)))))

(declare-fun b!7458519 () Bool)

(declare-fun res!2991848 () Bool)

(declare-fun e!4451459 () Bool)

(assert (=> b!7458519 (=> res!2991848 e!4451459)))

(assert (=> b!7458519 (= res!2991848 call!685216)))

(assert (=> b!7458519 (= e!4451457 e!4451459)))

(assert (=> b!7458520 (= e!4451459 call!685215)))

(assert (= (and d!2297861 c!1378969) b!7458506))

(assert (= (and d!2297861 (not c!1378969)) b!7458516))

(assert (= (and b!7458516 res!2991846) b!7458511))

(assert (= (and b!7458511 c!1378967) b!7458504))

(assert (= (and b!7458511 (not c!1378967)) b!7458515))

(assert (= (and b!7458515 c!1378965) b!7458513))

(assert (= (and b!7458515 (not c!1378965)) b!7458502))

(assert (= (and b!7458513 (not res!2991849)) b!7458518))

(assert (= (and b!7458502 c!1378963) b!7458519))

(assert (= (and b!7458502 (not c!1378963)) b!7458509))

(assert (= (and b!7458519 (not res!2991848)) b!7458520))

(assert (= (or b!7458520 b!7458509) bm!685208))

(assert (= (or b!7458506 b!7458519) bm!685210))

(declare-fun m!8061338 () Bool)

(assert (=> bm!685208 m!8061338))

(declare-fun m!8061340 () Bool)

(assert (=> b!7458513 m!8061340))

(assert (=> bm!685210 m!8061276))

(declare-fun m!8061344 () Bool)

(assert (=> b!7458518 m!8061344))

(assert (=> b!7458113 d!2297861))

(declare-fun bm!685212 () Bool)

(declare-fun call!685217 () Bool)

(assert (=> bm!685212 (= call!685217 (isEmpty!41124 (_1!37549 lt!2622105)))))

(declare-fun b!7458521 () Bool)

(declare-fun res!2991857 () Bool)

(declare-fun e!4451467 () Bool)

(assert (=> b!7458521 (=> res!2991857 e!4451467)))

(declare-fun e!4451464 () Bool)

(assert (=> b!7458521 (= res!2991857 e!4451464)))

(declare-fun res!2991850 () Bool)

(assert (=> b!7458521 (=> (not res!2991850) (not e!4451464))))

(declare-fun lt!2622162 () Bool)

(assert (=> b!7458521 (= res!2991850 lt!2622162)))

(declare-fun b!7458522 () Bool)

(declare-fun e!4451465 () Bool)

(declare-fun e!4451461 () Bool)

(assert (=> b!7458522 (= e!4451465 e!4451461)))

(declare-fun c!1378972 () Bool)

(assert (=> b!7458522 (= c!1378972 ((_ is EmptyLang!19519) r2!5783))))

(declare-fun b!7458523 () Bool)

(assert (=> b!7458523 (= e!4451465 (= lt!2622162 call!685217))))

(declare-fun b!7458525 () Bool)

(declare-fun e!4451463 () Bool)

(assert (=> b!7458525 (= e!4451463 (nullable!8505 r2!5783))))

(declare-fun b!7458526 () Bool)

(declare-fun res!2991851 () Bool)

(assert (=> b!7458526 (=> (not res!2991851) (not e!4451464))))

(assert (=> b!7458526 (= res!2991851 (not call!685217))))

(declare-fun b!7458527 () Bool)

(declare-fun res!2991856 () Bool)

(declare-fun e!4451462 () Bool)

(assert (=> b!7458527 (=> res!2991856 e!4451462)))

(assert (=> b!7458527 (= res!2991856 (not (isEmpty!41124 (tail!14873 (_1!37549 lt!2622105)))))))

(declare-fun b!7458528 () Bool)

(declare-fun e!4451466 () Bool)

(assert (=> b!7458528 (= e!4451466 e!4451462)))

(declare-fun res!2991855 () Bool)

(assert (=> b!7458528 (=> res!2991855 e!4451462)))

(assert (=> b!7458528 (= res!2991855 call!685217)))

(declare-fun b!7458529 () Bool)

(declare-fun res!2991853 () Bool)

(assert (=> b!7458529 (=> (not res!2991853) (not e!4451464))))

(assert (=> b!7458529 (= res!2991853 (isEmpty!41124 (tail!14873 (_1!37549 lt!2622105))))))

(declare-fun b!7458530 () Bool)

(declare-fun res!2991852 () Bool)

(assert (=> b!7458530 (=> res!2991852 e!4451467)))

(assert (=> b!7458530 (= res!2991852 (not ((_ is ElementMatch!19519) r2!5783)))))

(assert (=> b!7458530 (= e!4451461 e!4451467)))

(declare-fun b!7458531 () Bool)

(assert (=> b!7458531 (= e!4451464 (= (head!15304 (_1!37549 lt!2622105)) (c!1378876 r2!5783)))))

(declare-fun b!7458532 () Bool)

(assert (=> b!7458532 (= e!4451463 (matchR!9283 (derivativeStep!5564 r2!5783 (head!15304 (_1!37549 lt!2622105))) (tail!14873 (_1!37549 lt!2622105))))))

(declare-fun b!7458533 () Bool)

(assert (=> b!7458533 (= e!4451467 e!4451466)))

(declare-fun res!2991854 () Bool)

(assert (=> b!7458533 (=> (not res!2991854) (not e!4451466))))

(assert (=> b!7458533 (= res!2991854 (not lt!2622162))))

(declare-fun b!7458534 () Bool)

(assert (=> b!7458534 (= e!4451462 (not (= (head!15304 (_1!37549 lt!2622105)) (c!1378876 r2!5783))))))

(declare-fun d!2297863 () Bool)

(assert (=> d!2297863 e!4451465))

(declare-fun c!1378971 () Bool)

(assert (=> d!2297863 (= c!1378971 ((_ is EmptyExpr!19519) r2!5783))))

(assert (=> d!2297863 (= lt!2622162 e!4451463)))

(declare-fun c!1378970 () Bool)

(assert (=> d!2297863 (= c!1378970 (isEmpty!41124 (_1!37549 lt!2622105)))))

(assert (=> d!2297863 (validRegex!10033 r2!5783)))

(assert (=> d!2297863 (= (matchR!9283 r2!5783 (_1!37549 lt!2622105)) lt!2622162)))

(declare-fun b!7458524 () Bool)

(assert (=> b!7458524 (= e!4451461 (not lt!2622162))))

(assert (= (and d!2297863 c!1378970) b!7458525))

(assert (= (and d!2297863 (not c!1378970)) b!7458532))

(assert (= (and d!2297863 c!1378971) b!7458523))

(assert (= (and d!2297863 (not c!1378971)) b!7458522))

(assert (= (and b!7458522 c!1378972) b!7458524))

(assert (= (and b!7458522 (not c!1378972)) b!7458530))

(assert (= (and b!7458530 (not res!2991852)) b!7458521))

(assert (= (and b!7458521 res!2991850) b!7458526))

(assert (= (and b!7458526 res!2991851) b!7458529))

(assert (= (and b!7458529 res!2991853) b!7458531))

(assert (= (and b!7458521 (not res!2991857)) b!7458533))

(assert (= (and b!7458533 res!2991854) b!7458528))

(assert (= (and b!7458528 (not res!2991855)) b!7458527))

(assert (= (and b!7458527 (not res!2991856)) b!7458534))

(assert (= (or b!7458523 b!7458526 b!7458528) bm!685212))

(assert (=> bm!685212 m!8061276))

(assert (=> b!7458532 m!8061278))

(assert (=> b!7458532 m!8061278))

(declare-fun m!8061354 () Bool)

(assert (=> b!7458532 m!8061354))

(assert (=> b!7458532 m!8061282))

(assert (=> b!7458532 m!8061354))

(assert (=> b!7458532 m!8061282))

(declare-fun m!8061356 () Bool)

(assert (=> b!7458532 m!8061356))

(declare-fun m!8061358 () Bool)

(assert (=> b!7458525 m!8061358))

(assert (=> b!7458527 m!8061282))

(assert (=> b!7458527 m!8061282))

(assert (=> b!7458527 m!8061288))

(assert (=> b!7458534 m!8061278))

(assert (=> d!2297863 m!8061276))

(assert (=> d!2297863 m!8061116))

(assert (=> b!7458529 m!8061282))

(assert (=> b!7458529 m!8061282))

(assert (=> b!7458529 m!8061288))

(assert (=> b!7458531 m!8061278))

(assert (=> b!7458113 d!2297863))

(declare-fun bs!1929000 () Bool)

(declare-fun b!7458559 () Bool)

(assert (= bs!1929000 (and b!7458559 d!2297799)))

(declare-fun lambda!461458 () Int)

(assert (=> bs!1929000 (not (= lambda!461458 lambda!461428))))

(declare-fun bs!1929001 () Bool)

(assert (= bs!1929001 (and b!7458559 b!7458439)))

(assert (=> bs!1929001 (not (= lambda!461458 lambda!461451))))

(declare-fun bs!1929003 () Bool)

(assert (= bs!1929003 (and b!7458559 b!7458450)))

(assert (=> bs!1929003 (not (= lambda!461458 lambda!461453))))

(declare-fun bs!1929005 () Bool)

(assert (= bs!1929005 (and b!7458559 b!7458457)))

(assert (=> bs!1929005 (= (and (= (_2!37549 lt!2622105) (_1!37549 lt!2622105)) (= (reg!19848 rTail!78) (reg!19848 r1!5845)) (= rTail!78 r1!5845)) (= lambda!461458 lambda!461452))))

(declare-fun bs!1929007 () Bool)

(assert (= bs!1929007 (and b!7458559 d!2297815)))

(assert (=> bs!1929007 (not (= lambda!461458 lambda!461436))))

(declare-fun bs!1929009 () Bool)

(assert (= bs!1929009 (and b!7458559 b!7458103)))

(assert (=> bs!1929009 (not (= lambda!461458 lambda!461418))))

(declare-fun bs!1929011 () Bool)

(assert (= bs!1929011 (and b!7458559 b!7458509)))

(assert (=> bs!1929011 (not (= lambda!461458 lambda!461456))))

(declare-fun bs!1929012 () Bool)

(assert (= bs!1929012 (and b!7458559 b!7458520)))

(assert (=> bs!1929012 (= (and (= (_2!37549 lt!2622105) (_1!37549 lt!2622105)) (= (reg!19848 rTail!78) (reg!19848 lt!2622098)) (= rTail!78 lt!2622098)) (= lambda!461458 lambda!461454))))

(assert (=> bs!1929009 (not (= lambda!461458 lambda!461419))))

(assert (=> bs!1929000 (not (= lambda!461458 lambda!461426))))

(declare-fun bs!1929015 () Bool)

(assert (= bs!1929015 (and b!7458559 b!7458446)))

(assert (=> bs!1929015 (= (and (= (_2!37549 lt!2622105) (_1!37549 lt!2622105)) (= (reg!19848 rTail!78) (reg!19848 r2!5783)) (= rTail!78 r2!5783)) (= lambda!461458 lambda!461449))))

(assert (=> b!7458559 true))

(assert (=> b!7458559 true))

(declare-fun bs!1929018 () Bool)

(declare-fun b!7458552 () Bool)

(assert (= bs!1929018 (and b!7458552 d!2297799)))

(declare-fun lambda!461460 () Int)

(assert (=> bs!1929018 (= (and (= (_2!37549 lt!2622105) s!13591) (= (regOne!39550 rTail!78) lt!2622098) (= (regTwo!39550 rTail!78) rTail!78)) (= lambda!461460 lambda!461428))))

(declare-fun bs!1929019 () Bool)

(assert (= bs!1929019 (and b!7458552 b!7458439)))

(assert (=> bs!1929019 (= (and (= (_2!37549 lt!2622105) (_1!37549 lt!2622105)) (= (regOne!39550 rTail!78) (regOne!39550 r2!5783)) (= (regTwo!39550 rTail!78) (regTwo!39550 r2!5783))) (= lambda!461460 lambda!461451))))

(declare-fun bs!1929021 () Bool)

(assert (= bs!1929021 (and b!7458552 b!7458450)))

(assert (=> bs!1929021 (= (and (= (_2!37549 lt!2622105) (_1!37549 lt!2622105)) (= (regOne!39550 rTail!78) (regOne!39550 r1!5845)) (= (regTwo!39550 rTail!78) (regTwo!39550 r1!5845))) (= lambda!461460 lambda!461453))))

(declare-fun bs!1929023 () Bool)

(assert (= bs!1929023 (and b!7458552 b!7458457)))

(assert (=> bs!1929023 (not (= lambda!461460 lambda!461452))))

(declare-fun bs!1929025 () Bool)

(assert (= bs!1929025 (and b!7458552 d!2297815)))

(assert (=> bs!1929025 (not (= lambda!461460 lambda!461436))))

(declare-fun bs!1929027 () Bool)

(assert (= bs!1929027 (and b!7458552 b!7458509)))

(assert (=> bs!1929027 (= (and (= (_2!37549 lt!2622105) (_1!37549 lt!2622105)) (= (regOne!39550 rTail!78) (regOne!39550 lt!2622098)) (= (regTwo!39550 rTail!78) (regTwo!39550 lt!2622098))) (= lambda!461460 lambda!461456))))

(declare-fun bs!1929029 () Bool)

(assert (= bs!1929029 (and b!7458552 b!7458520)))

(assert (=> bs!1929029 (not (= lambda!461460 lambda!461454))))

(declare-fun bs!1929031 () Bool)

(assert (= bs!1929031 (and b!7458552 b!7458103)))

(assert (=> bs!1929031 (= (and (= (_2!37549 lt!2622105) s!13591) (= (regOne!39550 rTail!78) lt!2622098) (= (regTwo!39550 rTail!78) rTail!78)) (= lambda!461460 lambda!461419))))

(assert (=> bs!1929018 (not (= lambda!461460 lambda!461426))))

(declare-fun bs!1929032 () Bool)

(assert (= bs!1929032 (and b!7458552 b!7458446)))

(assert (=> bs!1929032 (not (= lambda!461460 lambda!461449))))

(declare-fun bs!1929034 () Bool)

(assert (= bs!1929034 (and b!7458552 b!7458559)))

(assert (=> bs!1929034 (not (= lambda!461460 lambda!461458))))

(assert (=> bs!1929031 (not (= lambda!461460 lambda!461418))))

(assert (=> b!7458552 true))

(assert (=> b!7458552 true))

(declare-fun b!7458549 () Bool)

(declare-fun e!4451475 () Bool)

(declare-fun e!4451480 () Bool)

(assert (=> b!7458549 (= e!4451475 e!4451480)))

(declare-fun c!1378976 () Bool)

(assert (=> b!7458549 (= c!1378976 ((_ is Star!19519) rTail!78))))

(declare-fun b!7458550 () Bool)

(declare-fun e!4451477 () Bool)

(assert (=> b!7458550 (= e!4451477 (= (_2!37549 lt!2622105) (Cons!72111 (c!1378876 rTail!78) Nil!72111)))))

(declare-fun b!7458551 () Bool)

(declare-fun e!4451476 () Bool)

(declare-fun call!685220 () Bool)

(assert (=> b!7458551 (= e!4451476 call!685220)))

(declare-fun bm!685214 () Bool)

(declare-fun call!685219 () Bool)

(assert (=> bm!685214 (= call!685219 (Exists!4140 (ite c!1378976 lambda!461458 lambda!461460)))))

(assert (=> b!7458552 (= e!4451480 call!685219)))

(declare-fun b!7458553 () Bool)

(declare-fun c!1378978 () Bool)

(assert (=> b!7458553 (= c!1378978 ((_ is ElementMatch!19519) rTail!78))))

(declare-fun e!4451478 () Bool)

(assert (=> b!7458553 (= e!4451478 e!4451477)))

(declare-fun b!7458554 () Bool)

(declare-fun e!4451479 () Bool)

(assert (=> b!7458554 (= e!4451475 e!4451479)))

(declare-fun res!2991868 () Bool)

(assert (=> b!7458554 (= res!2991868 (matchRSpec!4198 (regOne!39551 rTail!78) (_2!37549 lt!2622105)))))

(assert (=> b!7458554 (=> res!2991868 e!4451479)))

(declare-fun d!2297869 () Bool)

(declare-fun c!1378979 () Bool)

(assert (=> d!2297869 (= c!1378979 ((_ is EmptyExpr!19519) rTail!78))))

(assert (=> d!2297869 (= (matchRSpec!4198 rTail!78 (_2!37549 lt!2622105)) e!4451476)))

(declare-fun b!7458555 () Bool)

(declare-fun c!1378977 () Bool)

(assert (=> b!7458555 (= c!1378977 ((_ is Union!19519) rTail!78))))

(assert (=> b!7458555 (= e!4451477 e!4451475)))

(declare-fun bm!685215 () Bool)

(assert (=> bm!685215 (= call!685220 (isEmpty!41124 (_2!37549 lt!2622105)))))

(declare-fun b!7458556 () Bool)

(assert (=> b!7458556 (= e!4451476 e!4451478)))

(declare-fun res!2991866 () Bool)

(assert (=> b!7458556 (= res!2991866 (not ((_ is EmptyLang!19519) rTail!78)))))

(assert (=> b!7458556 (=> (not res!2991866) (not e!4451478))))

(declare-fun b!7458557 () Bool)

(assert (=> b!7458557 (= e!4451479 (matchRSpec!4198 (regTwo!39551 rTail!78) (_2!37549 lt!2622105)))))

(declare-fun b!7458558 () Bool)

(declare-fun res!2991867 () Bool)

(declare-fun e!4451481 () Bool)

(assert (=> b!7458558 (=> res!2991867 e!4451481)))

(assert (=> b!7458558 (= res!2991867 call!685220)))

(assert (=> b!7458558 (= e!4451480 e!4451481)))

(assert (=> b!7458559 (= e!4451481 call!685219)))

(assert (= (and d!2297869 c!1378979) b!7458551))

(assert (= (and d!2297869 (not c!1378979)) b!7458556))

(assert (= (and b!7458556 res!2991866) b!7458553))

(assert (= (and b!7458553 c!1378978) b!7458550))

(assert (= (and b!7458553 (not c!1378978)) b!7458555))

(assert (= (and b!7458555 c!1378977) b!7458554))

(assert (= (and b!7458555 (not c!1378977)) b!7458549))

(assert (= (and b!7458554 (not res!2991868)) b!7458557))

(assert (= (and b!7458549 c!1378976) b!7458558))

(assert (= (and b!7458549 (not c!1378976)) b!7458552))

(assert (= (and b!7458558 (not res!2991867)) b!7458559))

(assert (= (or b!7458559 b!7458552) bm!685214))

(assert (= (or b!7458551 b!7458558) bm!685215))

(declare-fun m!8061366 () Bool)

(assert (=> bm!685214 m!8061366))

(declare-fun m!8061368 () Bool)

(assert (=> b!7458554 m!8061368))

(declare-fun m!8061370 () Bool)

(assert (=> bm!685215 m!8061370))

(declare-fun m!8061372 () Bool)

(assert (=> b!7458557 m!8061372))

(assert (=> b!7458113 d!2297869))

(declare-fun bm!685218 () Bool)

(declare-fun call!685223 () Bool)

(assert (=> bm!685218 (= call!685223 (isEmpty!41124 (_1!37549 lt!2622105)))))

(declare-fun b!7458571 () Bool)

(declare-fun res!2991879 () Bool)

(declare-fun e!4451495 () Bool)

(assert (=> b!7458571 (=> res!2991879 e!4451495)))

(declare-fun e!4451492 () Bool)

(assert (=> b!7458571 (= res!2991879 e!4451492)))

(declare-fun res!2991872 () Bool)

(assert (=> b!7458571 (=> (not res!2991872) (not e!4451492))))

(declare-fun lt!2622165 () Bool)

(assert (=> b!7458571 (= res!2991872 lt!2622165)))

(declare-fun b!7458572 () Bool)

(declare-fun e!4451493 () Bool)

(declare-fun e!4451489 () Bool)

(assert (=> b!7458572 (= e!4451493 e!4451489)))

(declare-fun c!1378986 () Bool)

(assert (=> b!7458572 (= c!1378986 ((_ is EmptyLang!19519) r1!5845))))

(declare-fun b!7458573 () Bool)

(assert (=> b!7458573 (= e!4451493 (= lt!2622165 call!685223))))

(declare-fun b!7458575 () Bool)

(declare-fun e!4451491 () Bool)

(assert (=> b!7458575 (= e!4451491 (nullable!8505 r1!5845))))

(declare-fun b!7458576 () Bool)

(declare-fun res!2991873 () Bool)

(assert (=> b!7458576 (=> (not res!2991873) (not e!4451492))))

(assert (=> b!7458576 (= res!2991873 (not call!685223))))

(declare-fun b!7458577 () Bool)

(declare-fun res!2991878 () Bool)

(declare-fun e!4451490 () Bool)

(assert (=> b!7458577 (=> res!2991878 e!4451490)))

(assert (=> b!7458577 (= res!2991878 (not (isEmpty!41124 (tail!14873 (_1!37549 lt!2622105)))))))

(declare-fun b!7458578 () Bool)

(declare-fun e!4451494 () Bool)

(assert (=> b!7458578 (= e!4451494 e!4451490)))

(declare-fun res!2991877 () Bool)

(assert (=> b!7458578 (=> res!2991877 e!4451490)))

(assert (=> b!7458578 (= res!2991877 call!685223)))

(declare-fun b!7458579 () Bool)

(declare-fun res!2991875 () Bool)

(assert (=> b!7458579 (=> (not res!2991875) (not e!4451492))))

(assert (=> b!7458579 (= res!2991875 (isEmpty!41124 (tail!14873 (_1!37549 lt!2622105))))))

(declare-fun b!7458580 () Bool)

(declare-fun res!2991874 () Bool)

(assert (=> b!7458580 (=> res!2991874 e!4451495)))

(assert (=> b!7458580 (= res!2991874 (not ((_ is ElementMatch!19519) r1!5845)))))

(assert (=> b!7458580 (= e!4451489 e!4451495)))

(declare-fun b!7458581 () Bool)

(assert (=> b!7458581 (= e!4451492 (= (head!15304 (_1!37549 lt!2622105)) (c!1378876 r1!5845)))))

(declare-fun b!7458582 () Bool)

(assert (=> b!7458582 (= e!4451491 (matchR!9283 (derivativeStep!5564 r1!5845 (head!15304 (_1!37549 lt!2622105))) (tail!14873 (_1!37549 lt!2622105))))))

(declare-fun b!7458583 () Bool)

(assert (=> b!7458583 (= e!4451495 e!4451494)))

(declare-fun res!2991876 () Bool)

(assert (=> b!7458583 (=> (not res!2991876) (not e!4451494))))

(assert (=> b!7458583 (= res!2991876 (not lt!2622165))))

(declare-fun b!7458584 () Bool)

(assert (=> b!7458584 (= e!4451490 (not (= (head!15304 (_1!37549 lt!2622105)) (c!1378876 r1!5845))))))

(declare-fun d!2297873 () Bool)

(assert (=> d!2297873 e!4451493))

(declare-fun c!1378985 () Bool)

(assert (=> d!2297873 (= c!1378985 ((_ is EmptyExpr!19519) r1!5845))))

(assert (=> d!2297873 (= lt!2622165 e!4451491)))

(declare-fun c!1378984 () Bool)

(assert (=> d!2297873 (= c!1378984 (isEmpty!41124 (_1!37549 lt!2622105)))))

(assert (=> d!2297873 (validRegex!10033 r1!5845)))

(assert (=> d!2297873 (= (matchR!9283 r1!5845 (_1!37549 lt!2622105)) lt!2622165)))

(declare-fun b!7458574 () Bool)

(assert (=> b!7458574 (= e!4451489 (not lt!2622165))))

(assert (= (and d!2297873 c!1378984) b!7458575))

(assert (= (and d!2297873 (not c!1378984)) b!7458582))

(assert (= (and d!2297873 c!1378985) b!7458573))

(assert (= (and d!2297873 (not c!1378985)) b!7458572))

(assert (= (and b!7458572 c!1378986) b!7458574))

(assert (= (and b!7458572 (not c!1378986)) b!7458580))

(assert (= (and b!7458580 (not res!2991874)) b!7458571))

(assert (= (and b!7458571 res!2991872) b!7458576))

(assert (= (and b!7458576 res!2991873) b!7458579))

(assert (= (and b!7458579 res!2991875) b!7458581))

(assert (= (and b!7458571 (not res!2991879)) b!7458583))

(assert (= (and b!7458583 res!2991876) b!7458578))

(assert (= (and b!7458578 (not res!2991877)) b!7458577))

(assert (= (and b!7458577 (not res!2991878)) b!7458584))

(assert (= (or b!7458573 b!7458576 b!7458578) bm!685218))

(assert (=> bm!685218 m!8061276))

(assert (=> b!7458582 m!8061278))

(assert (=> b!7458582 m!8061278))

(declare-fun m!8061380 () Bool)

(assert (=> b!7458582 m!8061380))

(assert (=> b!7458582 m!8061282))

(assert (=> b!7458582 m!8061380))

(assert (=> b!7458582 m!8061282))

(declare-fun m!8061382 () Bool)

(assert (=> b!7458582 m!8061382))

(declare-fun m!8061384 () Bool)

(assert (=> b!7458575 m!8061384))

(assert (=> b!7458577 m!8061282))

(assert (=> b!7458577 m!8061282))

(assert (=> b!7458577 m!8061288))

(assert (=> b!7458584 m!8061278))

(assert (=> d!2297873 m!8061276))

(assert (=> d!2297873 m!8061092))

(assert (=> b!7458579 m!8061282))

(assert (=> b!7458579 m!8061282))

(assert (=> b!7458579 m!8061288))

(assert (=> b!7458581 m!8061278))

(assert (=> b!7458113 d!2297873))

(declare-fun d!2297877 () Bool)

(assert (=> d!2297877 (matchR!9283 (Concat!28364 (ite c!1378875 r1!5845 r2!5783) rTail!78) (++!17177 (_1!37549 lt!2622105) (_2!37549 lt!2622105)))))

(declare-fun lt!2622168 () Unit!165873)

(declare-fun choose!57656 (Regex!19519 Regex!19519 List!72235 List!72235) Unit!165873)

(assert (=> d!2297877 (= lt!2622168 (choose!57656 (ite c!1378875 r1!5845 r2!5783) rTail!78 (_1!37549 lt!2622105) (_2!37549 lt!2622105)))))

(declare-fun e!4451505 () Bool)

(assert (=> d!2297877 e!4451505))

(declare-fun res!2991885 () Bool)

(assert (=> d!2297877 (=> (not res!2991885) (not e!4451505))))

(assert (=> d!2297877 (= res!2991885 (validRegex!10033 (ite c!1378875 r1!5845 r2!5783)))))

(assert (=> d!2297877 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!398 (ite c!1378875 r1!5845 r2!5783) rTail!78 (_1!37549 lt!2622105) (_2!37549 lt!2622105)) lt!2622168)))

(declare-fun b!7458598 () Bool)

(assert (=> b!7458598 (= e!4451505 (validRegex!10033 rTail!78))))

(assert (= (and d!2297877 res!2991885) b!7458598))

(assert (=> d!2297877 m!8061122))

(assert (=> d!2297877 m!8061122))

(declare-fun m!8061386 () Bool)

(assert (=> d!2297877 m!8061386))

(declare-fun m!8061392 () Bool)

(assert (=> d!2297877 m!8061392))

(declare-fun m!8061396 () Bool)

(assert (=> d!2297877 m!8061396))

(assert (=> b!7458598 m!8061118))

(assert (=> bm!685160 d!2297877))

(declare-fun bm!685221 () Bool)

(declare-fun call!685226 () Bool)

(assert (=> bm!685221 (= call!685226 (isEmpty!41124 call!685165))))

(declare-fun b!7458599 () Bool)

(declare-fun res!2991893 () Bool)

(declare-fun e!4451512 () Bool)

(assert (=> b!7458599 (=> res!2991893 e!4451512)))

(declare-fun e!4451509 () Bool)

(assert (=> b!7458599 (= res!2991893 e!4451509)))

(declare-fun res!2991886 () Bool)

(assert (=> b!7458599 (=> (not res!2991886) (not e!4451509))))

(declare-fun lt!2622169 () Bool)

(assert (=> b!7458599 (= res!2991886 lt!2622169)))

(declare-fun b!7458600 () Bool)

(declare-fun e!4451510 () Bool)

(declare-fun e!4451506 () Bool)

(assert (=> b!7458600 (= e!4451510 e!4451506)))

(declare-fun c!1378993 () Bool)

(assert (=> b!7458600 (= c!1378993 ((_ is EmptyLang!19519) (ite c!1378875 lt!2622088 lt!2622091)))))

(declare-fun b!7458601 () Bool)

(assert (=> b!7458601 (= e!4451510 (= lt!2622169 call!685226))))

(declare-fun b!7458603 () Bool)

(declare-fun e!4451508 () Bool)

(assert (=> b!7458603 (= e!4451508 (nullable!8505 (ite c!1378875 lt!2622088 lt!2622091)))))

(declare-fun b!7458604 () Bool)

(declare-fun res!2991887 () Bool)

(assert (=> b!7458604 (=> (not res!2991887) (not e!4451509))))

(assert (=> b!7458604 (= res!2991887 (not call!685226))))

(declare-fun b!7458605 () Bool)

(declare-fun res!2991892 () Bool)

(declare-fun e!4451507 () Bool)

(assert (=> b!7458605 (=> res!2991892 e!4451507)))

(assert (=> b!7458605 (= res!2991892 (not (isEmpty!41124 (tail!14873 call!685165))))))

(declare-fun b!7458606 () Bool)

(declare-fun e!4451511 () Bool)

(assert (=> b!7458606 (= e!4451511 e!4451507)))

(declare-fun res!2991891 () Bool)

(assert (=> b!7458606 (=> res!2991891 e!4451507)))

(assert (=> b!7458606 (= res!2991891 call!685226)))

(declare-fun b!7458607 () Bool)

(declare-fun res!2991889 () Bool)

(assert (=> b!7458607 (=> (not res!2991889) (not e!4451509))))

(assert (=> b!7458607 (= res!2991889 (isEmpty!41124 (tail!14873 call!685165)))))

(declare-fun b!7458608 () Bool)

(declare-fun res!2991888 () Bool)

(assert (=> b!7458608 (=> res!2991888 e!4451512)))

(assert (=> b!7458608 (= res!2991888 (not ((_ is ElementMatch!19519) (ite c!1378875 lt!2622088 lt!2622091))))))

(assert (=> b!7458608 (= e!4451506 e!4451512)))

(declare-fun b!7458609 () Bool)

(assert (=> b!7458609 (= e!4451509 (= (head!15304 call!685165) (c!1378876 (ite c!1378875 lt!2622088 lt!2622091))))))

(declare-fun b!7458610 () Bool)

(assert (=> b!7458610 (= e!4451508 (matchR!9283 (derivativeStep!5564 (ite c!1378875 lt!2622088 lt!2622091) (head!15304 call!685165)) (tail!14873 call!685165)))))

(declare-fun b!7458611 () Bool)

(assert (=> b!7458611 (= e!4451512 e!4451511)))

(declare-fun res!2991890 () Bool)

(assert (=> b!7458611 (=> (not res!2991890) (not e!4451511))))

(assert (=> b!7458611 (= res!2991890 (not lt!2622169))))

(declare-fun b!7458612 () Bool)

(assert (=> b!7458612 (= e!4451507 (not (= (head!15304 call!685165) (c!1378876 (ite c!1378875 lt!2622088 lt!2622091)))))))

(declare-fun d!2297879 () Bool)

(assert (=> d!2297879 e!4451510))

(declare-fun c!1378992 () Bool)

(assert (=> d!2297879 (= c!1378992 ((_ is EmptyExpr!19519) (ite c!1378875 lt!2622088 lt!2622091)))))

(assert (=> d!2297879 (= lt!2622169 e!4451508)))

(declare-fun c!1378991 () Bool)

(assert (=> d!2297879 (= c!1378991 (isEmpty!41124 call!685165))))

(assert (=> d!2297879 (validRegex!10033 (ite c!1378875 lt!2622088 lt!2622091))))

(assert (=> d!2297879 (= (matchR!9283 (ite c!1378875 lt!2622088 lt!2622091) call!685165) lt!2622169)))

(declare-fun b!7458602 () Bool)

(assert (=> b!7458602 (= e!4451506 (not lt!2622169))))

(assert (= (and d!2297879 c!1378991) b!7458603))

(assert (= (and d!2297879 (not c!1378991)) b!7458610))

(assert (= (and d!2297879 c!1378992) b!7458601))

(assert (= (and d!2297879 (not c!1378992)) b!7458600))

(assert (= (and b!7458600 c!1378993) b!7458602))

(assert (= (and b!7458600 (not c!1378993)) b!7458608))

(assert (= (and b!7458608 (not res!2991888)) b!7458599))

(assert (= (and b!7458599 res!2991886) b!7458604))

(assert (= (and b!7458604 res!2991887) b!7458607))

(assert (= (and b!7458607 res!2991889) b!7458609))

(assert (= (and b!7458599 (not res!2991893)) b!7458611))

(assert (= (and b!7458611 res!2991890) b!7458606))

(assert (= (and b!7458606 (not res!2991891)) b!7458605))

(assert (= (and b!7458605 (not res!2991892)) b!7458612))

(assert (= (or b!7458601 b!7458604 b!7458606) bm!685221))

(declare-fun m!8061402 () Bool)

(assert (=> bm!685221 m!8061402))

(declare-fun m!8061404 () Bool)

(assert (=> b!7458610 m!8061404))

(assert (=> b!7458610 m!8061404))

(declare-fun m!8061406 () Bool)

(assert (=> b!7458610 m!8061406))

(declare-fun m!8061408 () Bool)

(assert (=> b!7458610 m!8061408))

(assert (=> b!7458610 m!8061406))

(assert (=> b!7458610 m!8061408))

(declare-fun m!8061410 () Bool)

(assert (=> b!7458610 m!8061410))

(declare-fun m!8061412 () Bool)

(assert (=> b!7458603 m!8061412))

(assert (=> b!7458605 m!8061408))

(assert (=> b!7458605 m!8061408))

(declare-fun m!8061414 () Bool)

(assert (=> b!7458605 m!8061414))

(assert (=> b!7458612 m!8061404))

(assert (=> d!2297879 m!8061402))

(declare-fun m!8061416 () Bool)

(assert (=> d!2297879 m!8061416))

(assert (=> b!7458607 m!8061408))

(assert (=> b!7458607 m!8061408))

(assert (=> b!7458607 m!8061414))

(assert (=> b!7458609 m!8061404))

(assert (=> bm!685159 d!2297879))

(declare-fun bm!685224 () Bool)

(declare-fun call!685229 () Bool)

(assert (=> bm!685224 (= call!685229 (isEmpty!41124 (_2!37549 lt!2622105)))))

(declare-fun b!7458624 () Bool)

(declare-fun res!2991904 () Bool)

(declare-fun e!4451526 () Bool)

(assert (=> b!7458624 (=> res!2991904 e!4451526)))

(declare-fun e!4451523 () Bool)

(assert (=> b!7458624 (= res!2991904 e!4451523)))

(declare-fun res!2991897 () Bool)

(assert (=> b!7458624 (=> (not res!2991897) (not e!4451523))))

(declare-fun lt!2622172 () Bool)

(assert (=> b!7458624 (= res!2991897 lt!2622172)))

(declare-fun b!7458625 () Bool)

(declare-fun e!4451524 () Bool)

(declare-fun e!4451520 () Bool)

(assert (=> b!7458625 (= e!4451524 e!4451520)))

(declare-fun c!1379000 () Bool)

(assert (=> b!7458625 (= c!1379000 ((_ is EmptyLang!19519) rTail!78))))

(declare-fun b!7458626 () Bool)

(assert (=> b!7458626 (= e!4451524 (= lt!2622172 call!685229))))

(declare-fun b!7458628 () Bool)

(declare-fun e!4451522 () Bool)

(assert (=> b!7458628 (= e!4451522 (nullable!8505 rTail!78))))

(declare-fun b!7458629 () Bool)

(declare-fun res!2991898 () Bool)

(assert (=> b!7458629 (=> (not res!2991898) (not e!4451523))))

(assert (=> b!7458629 (= res!2991898 (not call!685229))))

(declare-fun b!7458630 () Bool)

(declare-fun res!2991903 () Bool)

(declare-fun e!4451521 () Bool)

(assert (=> b!7458630 (=> res!2991903 e!4451521)))

(assert (=> b!7458630 (= res!2991903 (not (isEmpty!41124 (tail!14873 (_2!37549 lt!2622105)))))))

(declare-fun b!7458631 () Bool)

(declare-fun e!4451525 () Bool)

(assert (=> b!7458631 (= e!4451525 e!4451521)))

(declare-fun res!2991902 () Bool)

(assert (=> b!7458631 (=> res!2991902 e!4451521)))

(assert (=> b!7458631 (= res!2991902 call!685229)))

(declare-fun b!7458632 () Bool)

(declare-fun res!2991900 () Bool)

(assert (=> b!7458632 (=> (not res!2991900) (not e!4451523))))

(assert (=> b!7458632 (= res!2991900 (isEmpty!41124 (tail!14873 (_2!37549 lt!2622105))))))

(declare-fun b!7458633 () Bool)

(declare-fun res!2991899 () Bool)

(assert (=> b!7458633 (=> res!2991899 e!4451526)))

(assert (=> b!7458633 (= res!2991899 (not ((_ is ElementMatch!19519) rTail!78)))))

(assert (=> b!7458633 (= e!4451520 e!4451526)))

(declare-fun b!7458634 () Bool)

(assert (=> b!7458634 (= e!4451523 (= (head!15304 (_2!37549 lt!2622105)) (c!1378876 rTail!78)))))

(declare-fun b!7458635 () Bool)

(assert (=> b!7458635 (= e!4451522 (matchR!9283 (derivativeStep!5564 rTail!78 (head!15304 (_2!37549 lt!2622105))) (tail!14873 (_2!37549 lt!2622105))))))

(declare-fun b!7458636 () Bool)

(assert (=> b!7458636 (= e!4451526 e!4451525)))

(declare-fun res!2991901 () Bool)

(assert (=> b!7458636 (=> (not res!2991901) (not e!4451525))))

(assert (=> b!7458636 (= res!2991901 (not lt!2622172))))

(declare-fun b!7458637 () Bool)

(assert (=> b!7458637 (= e!4451521 (not (= (head!15304 (_2!37549 lt!2622105)) (c!1378876 rTail!78))))))

(declare-fun d!2297887 () Bool)

(assert (=> d!2297887 e!4451524))

(declare-fun c!1378999 () Bool)

(assert (=> d!2297887 (= c!1378999 ((_ is EmptyExpr!19519) rTail!78))))

(assert (=> d!2297887 (= lt!2622172 e!4451522)))

(declare-fun c!1378998 () Bool)

(assert (=> d!2297887 (= c!1378998 (isEmpty!41124 (_2!37549 lt!2622105)))))

(assert (=> d!2297887 (validRegex!10033 rTail!78)))

(assert (=> d!2297887 (= (matchR!9283 rTail!78 (_2!37549 lt!2622105)) lt!2622172)))

(declare-fun b!7458627 () Bool)

(assert (=> b!7458627 (= e!4451520 (not lt!2622172))))

(assert (= (and d!2297887 c!1378998) b!7458628))

(assert (= (and d!2297887 (not c!1378998)) b!7458635))

(assert (= (and d!2297887 c!1378999) b!7458626))

(assert (= (and d!2297887 (not c!1378999)) b!7458625))

(assert (= (and b!7458625 c!1379000) b!7458627))

(assert (= (and b!7458625 (not c!1379000)) b!7458633))

(assert (= (and b!7458633 (not res!2991899)) b!7458624))

(assert (= (and b!7458624 res!2991897) b!7458629))

(assert (= (and b!7458629 res!2991898) b!7458632))

(assert (= (and b!7458632 res!2991900) b!7458634))

(assert (= (and b!7458624 (not res!2991904)) b!7458636))

(assert (= (and b!7458636 res!2991901) b!7458631))

(assert (= (and b!7458631 (not res!2991902)) b!7458630))

(assert (= (and b!7458630 (not res!2991903)) b!7458637))

(assert (= (or b!7458626 b!7458629 b!7458631) bm!685224))

(assert (=> bm!685224 m!8061370))

(declare-fun m!8061418 () Bool)

(assert (=> b!7458635 m!8061418))

(assert (=> b!7458635 m!8061418))

(declare-fun m!8061420 () Bool)

(assert (=> b!7458635 m!8061420))

(declare-fun m!8061422 () Bool)

(assert (=> b!7458635 m!8061422))

(assert (=> b!7458635 m!8061420))

(assert (=> b!7458635 m!8061422))

(declare-fun m!8061424 () Bool)

(assert (=> b!7458635 m!8061424))

(declare-fun m!8061426 () Bool)

(assert (=> b!7458628 m!8061426))

(assert (=> b!7458630 m!8061422))

(assert (=> b!7458630 m!8061422))

(declare-fun m!8061428 () Bool)

(assert (=> b!7458630 m!8061428))

(assert (=> b!7458637 m!8061418))

(assert (=> d!2297887 m!8061370))

(assert (=> d!2297887 m!8061118))

(assert (=> b!7458632 m!8061422))

(assert (=> b!7458632 m!8061422))

(assert (=> b!7458632 m!8061428))

(assert (=> b!7458634 m!8061418))

(assert (=> b!7458102 d!2297887))

(declare-fun d!2297889 () Bool)

(assert (=> d!2297889 (= (matchR!9283 lt!2622110 s!13591) (matchRSpec!4198 lt!2622110 s!13591))))

(declare-fun lt!2622173 () Unit!165873)

(assert (=> d!2297889 (= lt!2622173 (choose!57655 lt!2622110 s!13591))))

(assert (=> d!2297889 (validRegex!10033 lt!2622110)))

(assert (=> d!2297889 (= (mainMatchTheorem!4192 lt!2622110 s!13591) lt!2622173)))

(declare-fun bs!1929071 () Bool)

(assert (= bs!1929071 d!2297889))

(assert (=> bs!1929071 m!8061072))

(assert (=> bs!1929071 m!8061078))

(declare-fun m!8061430 () Bool)

(assert (=> bs!1929071 m!8061430))

(assert (=> bs!1929071 m!8061066))

(assert (=> b!7458106 d!2297889))

(declare-fun d!2297891 () Bool)

(assert (=> d!2297891 (= (matchR!9283 lt!2622101 s!13591) (matchRSpec!4198 lt!2622101 s!13591))))

(declare-fun lt!2622174 () Unit!165873)

(assert (=> d!2297891 (= lt!2622174 (choose!57655 lt!2622101 s!13591))))

(assert (=> d!2297891 (validRegex!10033 lt!2622101)))

(assert (=> d!2297891 (= (mainMatchTheorem!4192 lt!2622101 s!13591) lt!2622174)))

(declare-fun bs!1929073 () Bool)

(assert (= bs!1929073 d!2297891))

(assert (=> bs!1929073 m!8061068))

(assert (=> bs!1929073 m!8061076))

(declare-fun m!8061432 () Bool)

(assert (=> bs!1929073 m!8061432))

(declare-fun m!8061434 () Bool)

(assert (=> bs!1929073 m!8061434))

(assert (=> b!7458106 d!2297891))

(declare-fun bm!685225 () Bool)

(declare-fun call!685230 () Bool)

(assert (=> bm!685225 (= call!685230 (isEmpty!41124 s!13591))))

(declare-fun b!7458638 () Bool)

(declare-fun res!2991912 () Bool)

(declare-fun e!4451533 () Bool)

(assert (=> b!7458638 (=> res!2991912 e!4451533)))

(declare-fun e!4451530 () Bool)

(assert (=> b!7458638 (= res!2991912 e!4451530)))

(declare-fun res!2991905 () Bool)

(assert (=> b!7458638 (=> (not res!2991905) (not e!4451530))))

(declare-fun lt!2622175 () Bool)

(assert (=> b!7458638 (= res!2991905 lt!2622175)))

(declare-fun b!7458639 () Bool)

(declare-fun e!4451531 () Bool)

(declare-fun e!4451527 () Bool)

(assert (=> b!7458639 (= e!4451531 e!4451527)))

(declare-fun c!1379003 () Bool)

(assert (=> b!7458639 (= c!1379003 ((_ is EmptyLang!19519) lt!2622101))))

(declare-fun b!7458640 () Bool)

(assert (=> b!7458640 (= e!4451531 (= lt!2622175 call!685230))))

(declare-fun b!7458642 () Bool)

(declare-fun e!4451529 () Bool)

(assert (=> b!7458642 (= e!4451529 (nullable!8505 lt!2622101))))

(declare-fun b!7458643 () Bool)

(declare-fun res!2991906 () Bool)

(assert (=> b!7458643 (=> (not res!2991906) (not e!4451530))))

(assert (=> b!7458643 (= res!2991906 (not call!685230))))

(declare-fun b!7458644 () Bool)

(declare-fun res!2991911 () Bool)

(declare-fun e!4451528 () Bool)

(assert (=> b!7458644 (=> res!2991911 e!4451528)))

(assert (=> b!7458644 (= res!2991911 (not (isEmpty!41124 (tail!14873 s!13591))))))

(declare-fun b!7458645 () Bool)

(declare-fun e!4451532 () Bool)

(assert (=> b!7458645 (= e!4451532 e!4451528)))

(declare-fun res!2991910 () Bool)

(assert (=> b!7458645 (=> res!2991910 e!4451528)))

(assert (=> b!7458645 (= res!2991910 call!685230)))

(declare-fun b!7458646 () Bool)

(declare-fun res!2991908 () Bool)

(assert (=> b!7458646 (=> (not res!2991908) (not e!4451530))))

(assert (=> b!7458646 (= res!2991908 (isEmpty!41124 (tail!14873 s!13591)))))

(declare-fun b!7458647 () Bool)

(declare-fun res!2991907 () Bool)

(assert (=> b!7458647 (=> res!2991907 e!4451533)))

(assert (=> b!7458647 (= res!2991907 (not ((_ is ElementMatch!19519) lt!2622101)))))

(assert (=> b!7458647 (= e!4451527 e!4451533)))

(declare-fun b!7458648 () Bool)

(assert (=> b!7458648 (= e!4451530 (= (head!15304 s!13591) (c!1378876 lt!2622101)))))

(declare-fun b!7458649 () Bool)

(assert (=> b!7458649 (= e!4451529 (matchR!9283 (derivativeStep!5564 lt!2622101 (head!15304 s!13591)) (tail!14873 s!13591)))))

(declare-fun b!7458650 () Bool)

(assert (=> b!7458650 (= e!4451533 e!4451532)))

(declare-fun res!2991909 () Bool)

(assert (=> b!7458650 (=> (not res!2991909) (not e!4451532))))

(assert (=> b!7458650 (= res!2991909 (not lt!2622175))))

(declare-fun b!7458651 () Bool)

(assert (=> b!7458651 (= e!4451528 (not (= (head!15304 s!13591) (c!1378876 lt!2622101))))))

(declare-fun d!2297893 () Bool)

(assert (=> d!2297893 e!4451531))

(declare-fun c!1379002 () Bool)

(assert (=> d!2297893 (= c!1379002 ((_ is EmptyExpr!19519) lt!2622101))))

(assert (=> d!2297893 (= lt!2622175 e!4451529)))

(declare-fun c!1379001 () Bool)

(assert (=> d!2297893 (= c!1379001 (isEmpty!41124 s!13591))))

(assert (=> d!2297893 (validRegex!10033 lt!2622101)))

(assert (=> d!2297893 (= (matchR!9283 lt!2622101 s!13591) lt!2622175)))

(declare-fun b!7458641 () Bool)

(assert (=> b!7458641 (= e!4451527 (not lt!2622175))))

(assert (= (and d!2297893 c!1379001) b!7458642))

(assert (= (and d!2297893 (not c!1379001)) b!7458649))

(assert (= (and d!2297893 c!1379002) b!7458640))

(assert (= (and d!2297893 (not c!1379002)) b!7458639))

(assert (= (and b!7458639 c!1379003) b!7458641))

(assert (= (and b!7458639 (not c!1379003)) b!7458647))

(assert (= (and b!7458647 (not res!2991907)) b!7458638))

(assert (= (and b!7458638 res!2991905) b!7458643))

(assert (= (and b!7458643 res!2991906) b!7458646))

(assert (= (and b!7458646 res!2991908) b!7458648))

(assert (= (and b!7458638 (not res!2991912)) b!7458650))

(assert (= (and b!7458650 res!2991909) b!7458645))

(assert (= (and b!7458645 (not res!2991910)) b!7458644))

(assert (= (and b!7458644 (not res!2991911)) b!7458651))

(assert (= (or b!7458640 b!7458643 b!7458645) bm!685225))

(declare-fun m!8061436 () Bool)

(assert (=> bm!685225 m!8061436))

(declare-fun m!8061438 () Bool)

(assert (=> b!7458649 m!8061438))

(assert (=> b!7458649 m!8061438))

(declare-fun m!8061440 () Bool)

(assert (=> b!7458649 m!8061440))

(declare-fun m!8061442 () Bool)

(assert (=> b!7458649 m!8061442))

(assert (=> b!7458649 m!8061440))

(assert (=> b!7458649 m!8061442))

(declare-fun m!8061444 () Bool)

(assert (=> b!7458649 m!8061444))

(declare-fun m!8061446 () Bool)

(assert (=> b!7458642 m!8061446))

(assert (=> b!7458644 m!8061442))

(assert (=> b!7458644 m!8061442))

(declare-fun m!8061448 () Bool)

(assert (=> b!7458644 m!8061448))

(assert (=> b!7458651 m!8061438))

(assert (=> d!2297893 m!8061436))

(assert (=> d!2297893 m!8061434))

(assert (=> b!7458646 m!8061442))

(assert (=> b!7458646 m!8061442))

(assert (=> b!7458646 m!8061448))

(assert (=> b!7458648 m!8061438))

(assert (=> b!7458106 d!2297893))

(declare-fun bs!1929084 () Bool)

(declare-fun b!7458662 () Bool)

(assert (= bs!1929084 (and b!7458662 b!7458552)))

(declare-fun lambda!461466 () Int)

(assert (=> bs!1929084 (not (= lambda!461466 lambda!461460))))

(declare-fun bs!1929087 () Bool)

(assert (= bs!1929087 (and b!7458662 d!2297799)))

(assert (=> bs!1929087 (not (= lambda!461466 lambda!461428))))

(declare-fun bs!1929089 () Bool)

(assert (= bs!1929089 (and b!7458662 b!7458439)))

(assert (=> bs!1929089 (not (= lambda!461466 lambda!461451))))

(declare-fun bs!1929092 () Bool)

(assert (= bs!1929092 (and b!7458662 b!7458450)))

(assert (=> bs!1929092 (not (= lambda!461466 lambda!461453))))

(declare-fun bs!1929094 () Bool)

(assert (= bs!1929094 (and b!7458662 b!7458457)))

(assert (=> bs!1929094 (= (and (= s!13591 (_1!37549 lt!2622105)) (= (reg!19848 lt!2622101) (reg!19848 r1!5845)) (= lt!2622101 r1!5845)) (= lambda!461466 lambda!461452))))

(declare-fun bs!1929096 () Bool)

(assert (= bs!1929096 (and b!7458662 d!2297815)))

(assert (=> bs!1929096 (not (= lambda!461466 lambda!461436))))

(declare-fun bs!1929098 () Bool)

(assert (= bs!1929098 (and b!7458662 b!7458509)))

(assert (=> bs!1929098 (not (= lambda!461466 lambda!461456))))

(declare-fun bs!1929099 () Bool)

(assert (= bs!1929099 (and b!7458662 b!7458520)))

(assert (=> bs!1929099 (= (and (= s!13591 (_1!37549 lt!2622105)) (= (reg!19848 lt!2622101) (reg!19848 lt!2622098)) (= lt!2622101 lt!2622098)) (= lambda!461466 lambda!461454))))

(declare-fun bs!1929100 () Bool)

(assert (= bs!1929100 (and b!7458662 b!7458103)))

(assert (=> bs!1929100 (not (= lambda!461466 lambda!461419))))

(assert (=> bs!1929087 (not (= lambda!461466 lambda!461426))))

(declare-fun bs!1929101 () Bool)

(assert (= bs!1929101 (and b!7458662 b!7458446)))

(assert (=> bs!1929101 (= (and (= s!13591 (_1!37549 lt!2622105)) (= (reg!19848 lt!2622101) (reg!19848 r2!5783)) (= lt!2622101 r2!5783)) (= lambda!461466 lambda!461449))))

(declare-fun bs!1929102 () Bool)

(assert (= bs!1929102 (and b!7458662 b!7458559)))

(assert (=> bs!1929102 (= (and (= s!13591 (_2!37549 lt!2622105)) (= (reg!19848 lt!2622101) (reg!19848 rTail!78)) (= lt!2622101 rTail!78)) (= lambda!461466 lambda!461458))))

(assert (=> bs!1929100 (not (= lambda!461466 lambda!461418))))

(assert (=> b!7458662 true))

(assert (=> b!7458662 true))

(declare-fun bs!1929104 () Bool)

(declare-fun b!7458655 () Bool)

(assert (= bs!1929104 (and b!7458655 b!7458552)))

(declare-fun lambda!461467 () Int)

(assert (=> bs!1929104 (= (and (= s!13591 (_2!37549 lt!2622105)) (= (regOne!39550 lt!2622101) (regOne!39550 rTail!78)) (= (regTwo!39550 lt!2622101) (regTwo!39550 rTail!78))) (= lambda!461467 lambda!461460))))

(declare-fun bs!1929105 () Bool)

(assert (= bs!1929105 (and b!7458655 b!7458439)))

(assert (=> bs!1929105 (= (and (= s!13591 (_1!37549 lt!2622105)) (= (regOne!39550 lt!2622101) (regOne!39550 r2!5783)) (= (regTwo!39550 lt!2622101) (regTwo!39550 r2!5783))) (= lambda!461467 lambda!461451))))

(declare-fun bs!1929107 () Bool)

(assert (= bs!1929107 (and b!7458655 b!7458450)))

(assert (=> bs!1929107 (= (and (= s!13591 (_1!37549 lt!2622105)) (= (regOne!39550 lt!2622101) (regOne!39550 r1!5845)) (= (regTwo!39550 lt!2622101) (regTwo!39550 r1!5845))) (= lambda!461467 lambda!461453))))

(declare-fun bs!1929109 () Bool)

(assert (= bs!1929109 (and b!7458655 b!7458457)))

(assert (=> bs!1929109 (not (= lambda!461467 lambda!461452))))

(declare-fun bs!1929111 () Bool)

(assert (= bs!1929111 (and b!7458655 d!2297815)))

(assert (=> bs!1929111 (not (= lambda!461467 lambda!461436))))

(declare-fun bs!1929113 () Bool)

(assert (= bs!1929113 (and b!7458655 b!7458509)))

(assert (=> bs!1929113 (= (and (= s!13591 (_1!37549 lt!2622105)) (= (regOne!39550 lt!2622101) (regOne!39550 lt!2622098)) (= (regTwo!39550 lt!2622101) (regTwo!39550 lt!2622098))) (= lambda!461467 lambda!461456))))

(declare-fun bs!1929115 () Bool)

(assert (= bs!1929115 (and b!7458655 b!7458520)))

(assert (=> bs!1929115 (not (= lambda!461467 lambda!461454))))

(declare-fun bs!1929116 () Bool)

(assert (= bs!1929116 (and b!7458655 b!7458103)))

(assert (=> bs!1929116 (= (and (= (regOne!39550 lt!2622101) lt!2622098) (= (regTwo!39550 lt!2622101) rTail!78)) (= lambda!461467 lambda!461419))))

(declare-fun bs!1929117 () Bool)

(assert (= bs!1929117 (and b!7458655 d!2297799)))

(assert (=> bs!1929117 (not (= lambda!461467 lambda!461426))))

(declare-fun bs!1929119 () Bool)

(assert (= bs!1929119 (and b!7458655 b!7458446)))

(assert (=> bs!1929119 (not (= lambda!461467 lambda!461449))))

(declare-fun bs!1929121 () Bool)

(assert (= bs!1929121 (and b!7458655 b!7458662)))

(assert (=> bs!1929121 (not (= lambda!461467 lambda!461466))))

(assert (=> bs!1929117 (= (and (= (regOne!39550 lt!2622101) lt!2622098) (= (regTwo!39550 lt!2622101) rTail!78)) (= lambda!461467 lambda!461428))))

(declare-fun bs!1929124 () Bool)

(assert (= bs!1929124 (and b!7458655 b!7458559)))

(assert (=> bs!1929124 (not (= lambda!461467 lambda!461458))))

(assert (=> bs!1929116 (not (= lambda!461467 lambda!461418))))

(assert (=> b!7458655 true))

(assert (=> b!7458655 true))

(declare-fun b!7458652 () Bool)

(declare-fun e!4451534 () Bool)

(declare-fun e!4451539 () Bool)

(assert (=> b!7458652 (= e!4451534 e!4451539)))

(declare-fun c!1379004 () Bool)

(assert (=> b!7458652 (= c!1379004 ((_ is Star!19519) lt!2622101))))

(declare-fun b!7458653 () Bool)

(declare-fun e!4451536 () Bool)

(assert (=> b!7458653 (= e!4451536 (= s!13591 (Cons!72111 (c!1378876 lt!2622101) Nil!72111)))))

(declare-fun b!7458654 () Bool)

(declare-fun e!4451535 () Bool)

(declare-fun call!685232 () Bool)

(assert (=> b!7458654 (= e!4451535 call!685232)))

(declare-fun bm!685226 () Bool)

(declare-fun call!685231 () Bool)

(assert (=> bm!685226 (= call!685231 (Exists!4140 (ite c!1379004 lambda!461466 lambda!461467)))))

(assert (=> b!7458655 (= e!4451539 call!685231)))

(declare-fun b!7458656 () Bool)

(declare-fun c!1379006 () Bool)

(assert (=> b!7458656 (= c!1379006 ((_ is ElementMatch!19519) lt!2622101))))

(declare-fun e!4451537 () Bool)

(assert (=> b!7458656 (= e!4451537 e!4451536)))

(declare-fun b!7458657 () Bool)

(declare-fun e!4451538 () Bool)

(assert (=> b!7458657 (= e!4451534 e!4451538)))

(declare-fun res!2991915 () Bool)

(assert (=> b!7458657 (= res!2991915 (matchRSpec!4198 (regOne!39551 lt!2622101) s!13591))))

(assert (=> b!7458657 (=> res!2991915 e!4451538)))

(declare-fun d!2297895 () Bool)

(declare-fun c!1379007 () Bool)

(assert (=> d!2297895 (= c!1379007 ((_ is EmptyExpr!19519) lt!2622101))))

(assert (=> d!2297895 (= (matchRSpec!4198 lt!2622101 s!13591) e!4451535)))

(declare-fun b!7458658 () Bool)

(declare-fun c!1379005 () Bool)

(assert (=> b!7458658 (= c!1379005 ((_ is Union!19519) lt!2622101))))

(assert (=> b!7458658 (= e!4451536 e!4451534)))

(declare-fun bm!685227 () Bool)

(assert (=> bm!685227 (= call!685232 (isEmpty!41124 s!13591))))

(declare-fun b!7458659 () Bool)

(assert (=> b!7458659 (= e!4451535 e!4451537)))

(declare-fun res!2991913 () Bool)

(assert (=> b!7458659 (= res!2991913 (not ((_ is EmptyLang!19519) lt!2622101)))))

(assert (=> b!7458659 (=> (not res!2991913) (not e!4451537))))

(declare-fun b!7458660 () Bool)

(assert (=> b!7458660 (= e!4451538 (matchRSpec!4198 (regTwo!39551 lt!2622101) s!13591))))

(declare-fun b!7458661 () Bool)

(declare-fun res!2991914 () Bool)

(declare-fun e!4451540 () Bool)

(assert (=> b!7458661 (=> res!2991914 e!4451540)))

(assert (=> b!7458661 (= res!2991914 call!685232)))

(assert (=> b!7458661 (= e!4451539 e!4451540)))

(assert (=> b!7458662 (= e!4451540 call!685231)))

(assert (= (and d!2297895 c!1379007) b!7458654))

(assert (= (and d!2297895 (not c!1379007)) b!7458659))

(assert (= (and b!7458659 res!2991913) b!7458656))

(assert (= (and b!7458656 c!1379006) b!7458653))

(assert (= (and b!7458656 (not c!1379006)) b!7458658))

(assert (= (and b!7458658 c!1379005) b!7458657))

(assert (= (and b!7458658 (not c!1379005)) b!7458652))

(assert (= (and b!7458657 (not res!2991915)) b!7458660))

(assert (= (and b!7458652 c!1379004) b!7458661))

(assert (= (and b!7458652 (not c!1379004)) b!7458655))

(assert (= (and b!7458661 (not res!2991914)) b!7458662))

(assert (= (or b!7458662 b!7458655) bm!685226))

(assert (= (or b!7458654 b!7458661) bm!685227))

(declare-fun m!8061460 () Bool)

(assert (=> bm!685226 m!8061460))

(declare-fun m!8061462 () Bool)

(assert (=> b!7458657 m!8061462))

(assert (=> bm!685227 m!8061436))

(declare-fun m!8061464 () Bool)

(assert (=> b!7458660 m!8061464))

(assert (=> b!7458106 d!2297895))

(declare-fun bm!685230 () Bool)

(declare-fun call!685235 () Bool)

(assert (=> bm!685230 (= call!685235 (isEmpty!41124 s!13591))))

(declare-fun b!7458674 () Bool)

(declare-fun res!2991926 () Bool)

(declare-fun e!4451554 () Bool)

(assert (=> b!7458674 (=> res!2991926 e!4451554)))

(declare-fun e!4451551 () Bool)

(assert (=> b!7458674 (= res!2991926 e!4451551)))

(declare-fun res!2991919 () Bool)

(assert (=> b!7458674 (=> (not res!2991919) (not e!4451551))))

(declare-fun lt!2622177 () Bool)

(assert (=> b!7458674 (= res!2991919 lt!2622177)))

(declare-fun b!7458675 () Bool)

(declare-fun e!4451552 () Bool)

(declare-fun e!4451548 () Bool)

(assert (=> b!7458675 (= e!4451552 e!4451548)))

(declare-fun c!1379014 () Bool)

(assert (=> b!7458675 (= c!1379014 ((_ is EmptyLang!19519) lt!2622110))))

(declare-fun b!7458676 () Bool)

(assert (=> b!7458676 (= e!4451552 (= lt!2622177 call!685235))))

(declare-fun b!7458678 () Bool)

(declare-fun e!4451550 () Bool)

(assert (=> b!7458678 (= e!4451550 (nullable!8505 lt!2622110))))

(declare-fun b!7458679 () Bool)

(declare-fun res!2991920 () Bool)

(assert (=> b!7458679 (=> (not res!2991920) (not e!4451551))))

(assert (=> b!7458679 (= res!2991920 (not call!685235))))

(declare-fun b!7458680 () Bool)

(declare-fun res!2991925 () Bool)

(declare-fun e!4451549 () Bool)

(assert (=> b!7458680 (=> res!2991925 e!4451549)))

(assert (=> b!7458680 (= res!2991925 (not (isEmpty!41124 (tail!14873 s!13591))))))

(declare-fun b!7458681 () Bool)

(declare-fun e!4451553 () Bool)

(assert (=> b!7458681 (= e!4451553 e!4451549)))

(declare-fun res!2991924 () Bool)

(assert (=> b!7458681 (=> res!2991924 e!4451549)))

(assert (=> b!7458681 (= res!2991924 call!685235)))

(declare-fun b!7458682 () Bool)

(declare-fun res!2991922 () Bool)

(assert (=> b!7458682 (=> (not res!2991922) (not e!4451551))))

(assert (=> b!7458682 (= res!2991922 (isEmpty!41124 (tail!14873 s!13591)))))

(declare-fun b!7458683 () Bool)

(declare-fun res!2991921 () Bool)

(assert (=> b!7458683 (=> res!2991921 e!4451554)))

(assert (=> b!7458683 (= res!2991921 (not ((_ is ElementMatch!19519) lt!2622110)))))

(assert (=> b!7458683 (= e!4451548 e!4451554)))

(declare-fun b!7458684 () Bool)

(assert (=> b!7458684 (= e!4451551 (= (head!15304 s!13591) (c!1378876 lt!2622110)))))

(declare-fun b!7458685 () Bool)

(assert (=> b!7458685 (= e!4451550 (matchR!9283 (derivativeStep!5564 lt!2622110 (head!15304 s!13591)) (tail!14873 s!13591)))))

(declare-fun b!7458686 () Bool)

(assert (=> b!7458686 (= e!4451554 e!4451553)))

(declare-fun res!2991923 () Bool)

(assert (=> b!7458686 (=> (not res!2991923) (not e!4451553))))

(assert (=> b!7458686 (= res!2991923 (not lt!2622177))))

(declare-fun b!7458687 () Bool)

(assert (=> b!7458687 (= e!4451549 (not (= (head!15304 s!13591) (c!1378876 lt!2622110))))))

(declare-fun d!2297901 () Bool)

(assert (=> d!2297901 e!4451552))

(declare-fun c!1379013 () Bool)

(assert (=> d!2297901 (= c!1379013 ((_ is EmptyExpr!19519) lt!2622110))))

(assert (=> d!2297901 (= lt!2622177 e!4451550)))

(declare-fun c!1379012 () Bool)

(assert (=> d!2297901 (= c!1379012 (isEmpty!41124 s!13591))))

(assert (=> d!2297901 (validRegex!10033 lt!2622110)))

(assert (=> d!2297901 (= (matchR!9283 lt!2622110 s!13591) lt!2622177)))

(declare-fun b!7458677 () Bool)

(assert (=> b!7458677 (= e!4451548 (not lt!2622177))))

(assert (= (and d!2297901 c!1379012) b!7458678))

(assert (= (and d!2297901 (not c!1379012)) b!7458685))

(assert (= (and d!2297901 c!1379013) b!7458676))

(assert (= (and d!2297901 (not c!1379013)) b!7458675))

(assert (= (and b!7458675 c!1379014) b!7458677))

(assert (= (and b!7458675 (not c!1379014)) b!7458683))

(assert (= (and b!7458683 (not res!2991921)) b!7458674))

(assert (= (and b!7458674 res!2991919) b!7458679))

(assert (= (and b!7458679 res!2991920) b!7458682))

(assert (= (and b!7458682 res!2991922) b!7458684))

(assert (= (and b!7458674 (not res!2991926)) b!7458686))

(assert (= (and b!7458686 res!2991923) b!7458681))

(assert (= (and b!7458681 (not res!2991924)) b!7458680))

(assert (= (and b!7458680 (not res!2991925)) b!7458687))

(assert (= (or b!7458676 b!7458679 b!7458681) bm!685230))

(assert (=> bm!685230 m!8061436))

(assert (=> b!7458685 m!8061438))

(assert (=> b!7458685 m!8061438))

(declare-fun m!8061466 () Bool)

(assert (=> b!7458685 m!8061466))

(assert (=> b!7458685 m!8061442))

(assert (=> b!7458685 m!8061466))

(assert (=> b!7458685 m!8061442))

(declare-fun m!8061468 () Bool)

(assert (=> b!7458685 m!8061468))

(declare-fun m!8061470 () Bool)

(assert (=> b!7458678 m!8061470))

(assert (=> b!7458680 m!8061442))

(assert (=> b!7458680 m!8061442))

(assert (=> b!7458680 m!8061448))

(assert (=> b!7458687 m!8061438))

(assert (=> d!2297901 m!8061436))

(assert (=> d!2297901 m!8061066))

(assert (=> b!7458682 m!8061442))

(assert (=> b!7458682 m!8061442))

(assert (=> b!7458682 m!8061448))

(assert (=> b!7458684 m!8061438))

(assert (=> b!7458106 d!2297901))

(declare-fun bs!1929141 () Bool)

(declare-fun b!7458698 () Bool)

(assert (= bs!1929141 (and b!7458698 b!7458552)))

(declare-fun lambda!461470 () Int)

(assert (=> bs!1929141 (not (= lambda!461470 lambda!461460))))

(declare-fun bs!1929143 () Bool)

(assert (= bs!1929143 (and b!7458698 b!7458439)))

(assert (=> bs!1929143 (not (= lambda!461470 lambda!461451))))

(declare-fun bs!1929145 () Bool)

(assert (= bs!1929145 (and b!7458698 b!7458450)))

(assert (=> bs!1929145 (not (= lambda!461470 lambda!461453))))

(declare-fun bs!1929147 () Bool)

(assert (= bs!1929147 (and b!7458698 b!7458457)))

(assert (=> bs!1929147 (= (and (= s!13591 (_1!37549 lt!2622105)) (= (reg!19848 lt!2622110) (reg!19848 r1!5845)) (= lt!2622110 r1!5845)) (= lambda!461470 lambda!461452))))

(declare-fun bs!1929149 () Bool)

(assert (= bs!1929149 (and b!7458698 d!2297815)))

(assert (=> bs!1929149 (not (= lambda!461470 lambda!461436))))

(declare-fun bs!1929151 () Bool)

(assert (= bs!1929151 (and b!7458698 b!7458655)))

(assert (=> bs!1929151 (not (= lambda!461470 lambda!461467))))

(declare-fun bs!1929153 () Bool)

(assert (= bs!1929153 (and b!7458698 b!7458509)))

(assert (=> bs!1929153 (not (= lambda!461470 lambda!461456))))

(declare-fun bs!1929154 () Bool)

(assert (= bs!1929154 (and b!7458698 b!7458520)))

(assert (=> bs!1929154 (= (and (= s!13591 (_1!37549 lt!2622105)) (= (reg!19848 lt!2622110) (reg!19848 lt!2622098)) (= lt!2622110 lt!2622098)) (= lambda!461470 lambda!461454))))

(declare-fun bs!1929155 () Bool)

(assert (= bs!1929155 (and b!7458698 b!7458103)))

(assert (=> bs!1929155 (not (= lambda!461470 lambda!461419))))

(declare-fun bs!1929156 () Bool)

(assert (= bs!1929156 (and b!7458698 d!2297799)))

(assert (=> bs!1929156 (not (= lambda!461470 lambda!461426))))

(declare-fun bs!1929157 () Bool)

(assert (= bs!1929157 (and b!7458698 b!7458446)))

(assert (=> bs!1929157 (= (and (= s!13591 (_1!37549 lt!2622105)) (= (reg!19848 lt!2622110) (reg!19848 r2!5783)) (= lt!2622110 r2!5783)) (= lambda!461470 lambda!461449))))

(declare-fun bs!1929158 () Bool)

(assert (= bs!1929158 (and b!7458698 b!7458662)))

(assert (=> bs!1929158 (= (and (= (reg!19848 lt!2622110) (reg!19848 lt!2622101)) (= lt!2622110 lt!2622101)) (= lambda!461470 lambda!461466))))

(assert (=> bs!1929156 (not (= lambda!461470 lambda!461428))))

(declare-fun bs!1929159 () Bool)

(assert (= bs!1929159 (and b!7458698 b!7458559)))

(assert (=> bs!1929159 (= (and (= s!13591 (_2!37549 lt!2622105)) (= (reg!19848 lt!2622110) (reg!19848 rTail!78)) (= lt!2622110 rTail!78)) (= lambda!461470 lambda!461458))))

(assert (=> bs!1929155 (not (= lambda!461470 lambda!461418))))

(assert (=> b!7458698 true))

(assert (=> b!7458698 true))

(declare-fun bs!1929160 () Bool)

(declare-fun b!7458691 () Bool)

(assert (= bs!1929160 (and b!7458691 b!7458552)))

(declare-fun lambda!461471 () Int)

(assert (=> bs!1929160 (= (and (= s!13591 (_2!37549 lt!2622105)) (= (regOne!39550 lt!2622110) (regOne!39550 rTail!78)) (= (regTwo!39550 lt!2622110) (regTwo!39550 rTail!78))) (= lambda!461471 lambda!461460))))

(declare-fun bs!1929161 () Bool)

(assert (= bs!1929161 (and b!7458691 b!7458439)))

(assert (=> bs!1929161 (= (and (= s!13591 (_1!37549 lt!2622105)) (= (regOne!39550 lt!2622110) (regOne!39550 r2!5783)) (= (regTwo!39550 lt!2622110) (regTwo!39550 r2!5783))) (= lambda!461471 lambda!461451))))

(declare-fun bs!1929162 () Bool)

(assert (= bs!1929162 (and b!7458691 b!7458450)))

(assert (=> bs!1929162 (= (and (= s!13591 (_1!37549 lt!2622105)) (= (regOne!39550 lt!2622110) (regOne!39550 r1!5845)) (= (regTwo!39550 lt!2622110) (regTwo!39550 r1!5845))) (= lambda!461471 lambda!461453))))

(declare-fun bs!1929164 () Bool)

(assert (= bs!1929164 (and b!7458691 b!7458698)))

(assert (=> bs!1929164 (not (= lambda!461471 lambda!461470))))

(declare-fun bs!1929165 () Bool)

(assert (= bs!1929165 (and b!7458691 b!7458457)))

(assert (=> bs!1929165 (not (= lambda!461471 lambda!461452))))

(declare-fun bs!1929166 () Bool)

(assert (= bs!1929166 (and b!7458691 d!2297815)))

(assert (=> bs!1929166 (not (= lambda!461471 lambda!461436))))

(declare-fun bs!1929167 () Bool)

(assert (= bs!1929167 (and b!7458691 b!7458655)))

(assert (=> bs!1929167 (= (and (= (regOne!39550 lt!2622110) (regOne!39550 lt!2622101)) (= (regTwo!39550 lt!2622110) (regTwo!39550 lt!2622101))) (= lambda!461471 lambda!461467))))

(declare-fun bs!1929168 () Bool)

(assert (= bs!1929168 (and b!7458691 b!7458509)))

(assert (=> bs!1929168 (= (and (= s!13591 (_1!37549 lt!2622105)) (= (regOne!39550 lt!2622110) (regOne!39550 lt!2622098)) (= (regTwo!39550 lt!2622110) (regTwo!39550 lt!2622098))) (= lambda!461471 lambda!461456))))

(declare-fun bs!1929169 () Bool)

(assert (= bs!1929169 (and b!7458691 b!7458520)))

(assert (=> bs!1929169 (not (= lambda!461471 lambda!461454))))

(declare-fun bs!1929170 () Bool)

(assert (= bs!1929170 (and b!7458691 b!7458103)))

(assert (=> bs!1929170 (= (and (= (regOne!39550 lt!2622110) lt!2622098) (= (regTwo!39550 lt!2622110) rTail!78)) (= lambda!461471 lambda!461419))))

(declare-fun bs!1929171 () Bool)

(assert (= bs!1929171 (and b!7458691 d!2297799)))

(assert (=> bs!1929171 (not (= lambda!461471 lambda!461426))))

(declare-fun bs!1929172 () Bool)

(assert (= bs!1929172 (and b!7458691 b!7458446)))

(assert (=> bs!1929172 (not (= lambda!461471 lambda!461449))))

(declare-fun bs!1929173 () Bool)

(assert (= bs!1929173 (and b!7458691 b!7458662)))

(assert (=> bs!1929173 (not (= lambda!461471 lambda!461466))))

(assert (=> bs!1929171 (= (and (= (regOne!39550 lt!2622110) lt!2622098) (= (regTwo!39550 lt!2622110) rTail!78)) (= lambda!461471 lambda!461428))))

(declare-fun bs!1929174 () Bool)

(assert (= bs!1929174 (and b!7458691 b!7458559)))

(assert (=> bs!1929174 (not (= lambda!461471 lambda!461458))))

(assert (=> bs!1929170 (not (= lambda!461471 lambda!461418))))

(assert (=> b!7458691 true))

(assert (=> b!7458691 true))

(declare-fun b!7458688 () Bool)

(declare-fun e!4451555 () Bool)

(declare-fun e!4451560 () Bool)

(assert (=> b!7458688 (= e!4451555 e!4451560)))

(declare-fun c!1379015 () Bool)

(assert (=> b!7458688 (= c!1379015 ((_ is Star!19519) lt!2622110))))

(declare-fun b!7458689 () Bool)

(declare-fun e!4451557 () Bool)

(assert (=> b!7458689 (= e!4451557 (= s!13591 (Cons!72111 (c!1378876 lt!2622110) Nil!72111)))))

(declare-fun b!7458690 () Bool)

(declare-fun e!4451556 () Bool)

(declare-fun call!685237 () Bool)

(assert (=> b!7458690 (= e!4451556 call!685237)))

(declare-fun bm!685231 () Bool)

(declare-fun call!685236 () Bool)

(assert (=> bm!685231 (= call!685236 (Exists!4140 (ite c!1379015 lambda!461470 lambda!461471)))))

(assert (=> b!7458691 (= e!4451560 call!685236)))

(declare-fun b!7458692 () Bool)

(declare-fun c!1379017 () Bool)

(assert (=> b!7458692 (= c!1379017 ((_ is ElementMatch!19519) lt!2622110))))

(declare-fun e!4451558 () Bool)

(assert (=> b!7458692 (= e!4451558 e!4451557)))

(declare-fun b!7458693 () Bool)

(declare-fun e!4451559 () Bool)

(assert (=> b!7458693 (= e!4451555 e!4451559)))

(declare-fun res!2991929 () Bool)

(assert (=> b!7458693 (= res!2991929 (matchRSpec!4198 (regOne!39551 lt!2622110) s!13591))))

(assert (=> b!7458693 (=> res!2991929 e!4451559)))

(declare-fun d!2297903 () Bool)

(declare-fun c!1379018 () Bool)

(assert (=> d!2297903 (= c!1379018 ((_ is EmptyExpr!19519) lt!2622110))))

(assert (=> d!2297903 (= (matchRSpec!4198 lt!2622110 s!13591) e!4451556)))

(declare-fun b!7458694 () Bool)

(declare-fun c!1379016 () Bool)

(assert (=> b!7458694 (= c!1379016 ((_ is Union!19519) lt!2622110))))

(assert (=> b!7458694 (= e!4451557 e!4451555)))

(declare-fun bm!685232 () Bool)

(assert (=> bm!685232 (= call!685237 (isEmpty!41124 s!13591))))

(declare-fun b!7458695 () Bool)

(assert (=> b!7458695 (= e!4451556 e!4451558)))

(declare-fun res!2991927 () Bool)

(assert (=> b!7458695 (= res!2991927 (not ((_ is EmptyLang!19519) lt!2622110)))))

(assert (=> b!7458695 (=> (not res!2991927) (not e!4451558))))

(declare-fun b!7458696 () Bool)

(assert (=> b!7458696 (= e!4451559 (matchRSpec!4198 (regTwo!39551 lt!2622110) s!13591))))

(declare-fun b!7458697 () Bool)

(declare-fun res!2991928 () Bool)

(declare-fun e!4451561 () Bool)

(assert (=> b!7458697 (=> res!2991928 e!4451561)))

(assert (=> b!7458697 (= res!2991928 call!685237)))

(assert (=> b!7458697 (= e!4451560 e!4451561)))

(assert (=> b!7458698 (= e!4451561 call!685236)))

(assert (= (and d!2297903 c!1379018) b!7458690))

(assert (= (and d!2297903 (not c!1379018)) b!7458695))

(assert (= (and b!7458695 res!2991927) b!7458692))

(assert (= (and b!7458692 c!1379017) b!7458689))

(assert (= (and b!7458692 (not c!1379017)) b!7458694))

(assert (= (and b!7458694 c!1379016) b!7458693))

(assert (= (and b!7458694 (not c!1379016)) b!7458688))

(assert (= (and b!7458693 (not res!2991929)) b!7458696))

(assert (= (and b!7458688 c!1379015) b!7458697))

(assert (= (and b!7458688 (not c!1379015)) b!7458691))

(assert (= (and b!7458697 (not res!2991928)) b!7458698))

(assert (= (or b!7458698 b!7458691) bm!685231))

(assert (= (or b!7458690 b!7458697) bm!685232))

(declare-fun m!8061492 () Bool)

(assert (=> bm!685231 m!8061492))

(declare-fun m!8061494 () Bool)

(assert (=> b!7458693 m!8061494))

(assert (=> bm!685232 m!8061436))

(declare-fun m!8061496 () Bool)

(assert (=> b!7458696 m!8061496))

(assert (=> b!7458106 d!2297903))

(declare-fun bm!685237 () Bool)

(declare-fun call!685244 () Bool)

(declare-fun c!1379029 () Bool)

(declare-fun c!1379030 () Bool)

(assert (=> bm!685237 (= call!685244 (validRegex!10033 (ite c!1379029 (reg!19848 r1!5845) (ite c!1379030 (regTwo!39551 r1!5845) (regTwo!39550 r1!5845)))))))

(declare-fun bm!685238 () Bool)

(declare-fun call!685242 () Bool)

(assert (=> bm!685238 (= call!685242 (validRegex!10033 (ite c!1379030 (regOne!39551 r1!5845) (regOne!39550 r1!5845))))))

(declare-fun b!7458738 () Bool)

(declare-fun res!2991949 () Bool)

(declare-fun e!4451583 () Bool)

(assert (=> b!7458738 (=> res!2991949 e!4451583)))

(assert (=> b!7458738 (= res!2991949 (not ((_ is Concat!28364) r1!5845)))))

(declare-fun e!4451586 () Bool)

(assert (=> b!7458738 (= e!4451586 e!4451583)))

(declare-fun b!7458739 () Bool)

(declare-fun e!4451584 () Bool)

(assert (=> b!7458739 (= e!4451584 e!4451586)))

(assert (=> b!7458739 (= c!1379030 ((_ is Union!19519) r1!5845))))

(declare-fun b!7458740 () Bool)

(declare-fun e!4451588 () Bool)

(assert (=> b!7458740 (= e!4451583 e!4451588)))

(declare-fun res!2991950 () Bool)

(assert (=> b!7458740 (=> (not res!2991950) (not e!4451588))))

(assert (=> b!7458740 (= res!2991950 call!685242)))

(declare-fun bm!685239 () Bool)

(declare-fun call!685243 () Bool)

(assert (=> bm!685239 (= call!685243 call!685244)))

(declare-fun b!7458741 () Bool)

(declare-fun e!4451585 () Bool)

(assert (=> b!7458741 (= e!4451585 call!685244)))

(declare-fun b!7458742 () Bool)

(assert (=> b!7458742 (= e!4451588 call!685243)))

(declare-fun b!7458743 () Bool)

(declare-fun e!4451589 () Bool)

(assert (=> b!7458743 (= e!4451589 call!685243)))

(declare-fun b!7458744 () Bool)

(assert (=> b!7458744 (= e!4451584 e!4451585)))

(declare-fun res!2991952 () Bool)

(assert (=> b!7458744 (= res!2991952 (not (nullable!8505 (reg!19848 r1!5845))))))

(assert (=> b!7458744 (=> (not res!2991952) (not e!4451585))))

(declare-fun d!2297913 () Bool)

(declare-fun res!2991951 () Bool)

(declare-fun e!4451587 () Bool)

(assert (=> d!2297913 (=> res!2991951 e!4451587)))

(assert (=> d!2297913 (= res!2991951 ((_ is ElementMatch!19519) r1!5845))))

(assert (=> d!2297913 (= (validRegex!10033 r1!5845) e!4451587)))

(declare-fun b!7458745 () Bool)

(declare-fun res!2991953 () Bool)

(assert (=> b!7458745 (=> (not res!2991953) (not e!4451589))))

(assert (=> b!7458745 (= res!2991953 call!685242)))

(assert (=> b!7458745 (= e!4451586 e!4451589)))

(declare-fun b!7458746 () Bool)

(assert (=> b!7458746 (= e!4451587 e!4451584)))

(assert (=> b!7458746 (= c!1379029 ((_ is Star!19519) r1!5845))))

(assert (= (and d!2297913 (not res!2991951)) b!7458746))

(assert (= (and b!7458746 c!1379029) b!7458744))

(assert (= (and b!7458746 (not c!1379029)) b!7458739))

(assert (= (and b!7458744 res!2991952) b!7458741))

(assert (= (and b!7458739 c!1379030) b!7458745))

(assert (= (and b!7458739 (not c!1379030)) b!7458738))

(assert (= (and b!7458745 res!2991953) b!7458743))

(assert (= (and b!7458738 (not res!2991949)) b!7458740))

(assert (= (and b!7458740 res!2991950) b!7458742))

(assert (= (or b!7458743 b!7458742) bm!685239))

(assert (= (or b!7458745 b!7458740) bm!685238))

(assert (= (or b!7458741 bm!685239) bm!685237))

(declare-fun m!8061498 () Bool)

(assert (=> bm!685237 m!8061498))

(declare-fun m!8061500 () Bool)

(assert (=> bm!685238 m!8061500))

(declare-fun m!8061502 () Bool)

(assert (=> b!7458744 m!8061502))

(assert (=> start!723706 d!2297913))

(declare-fun c!1379032 () Bool)

(declare-fun c!1379031 () Bool)

(declare-fun call!685247 () Bool)

(declare-fun bm!685240 () Bool)

(assert (=> bm!685240 (= call!685247 (validRegex!10033 (ite c!1379031 (reg!19848 lt!2622110) (ite c!1379032 (regTwo!39551 lt!2622110) (regTwo!39550 lt!2622110)))))))

(declare-fun bm!685241 () Bool)

(declare-fun call!685245 () Bool)

(assert (=> bm!685241 (= call!685245 (validRegex!10033 (ite c!1379032 (regOne!39551 lt!2622110) (regOne!39550 lt!2622110))))))

(declare-fun b!7458747 () Bool)

(declare-fun res!2991954 () Bool)

(declare-fun e!4451590 () Bool)

(assert (=> b!7458747 (=> res!2991954 e!4451590)))

(assert (=> b!7458747 (= res!2991954 (not ((_ is Concat!28364) lt!2622110)))))

(declare-fun e!4451593 () Bool)

(assert (=> b!7458747 (= e!4451593 e!4451590)))

(declare-fun b!7458748 () Bool)

(declare-fun e!4451591 () Bool)

(assert (=> b!7458748 (= e!4451591 e!4451593)))

(assert (=> b!7458748 (= c!1379032 ((_ is Union!19519) lt!2622110))))

(declare-fun b!7458749 () Bool)

(declare-fun e!4451595 () Bool)

(assert (=> b!7458749 (= e!4451590 e!4451595)))

(declare-fun res!2991955 () Bool)

(assert (=> b!7458749 (=> (not res!2991955) (not e!4451595))))

(assert (=> b!7458749 (= res!2991955 call!685245)))

(declare-fun bm!685242 () Bool)

(declare-fun call!685246 () Bool)

(assert (=> bm!685242 (= call!685246 call!685247)))

(declare-fun b!7458750 () Bool)

(declare-fun e!4451592 () Bool)

(assert (=> b!7458750 (= e!4451592 call!685247)))

(declare-fun b!7458751 () Bool)

(assert (=> b!7458751 (= e!4451595 call!685246)))

(declare-fun b!7458752 () Bool)

(declare-fun e!4451596 () Bool)

(assert (=> b!7458752 (= e!4451596 call!685246)))

(declare-fun b!7458753 () Bool)

(assert (=> b!7458753 (= e!4451591 e!4451592)))

(declare-fun res!2991957 () Bool)

(assert (=> b!7458753 (= res!2991957 (not (nullable!8505 (reg!19848 lt!2622110))))))

(assert (=> b!7458753 (=> (not res!2991957) (not e!4451592))))

(declare-fun d!2297915 () Bool)

(declare-fun res!2991956 () Bool)

(declare-fun e!4451594 () Bool)

(assert (=> d!2297915 (=> res!2991956 e!4451594)))

(assert (=> d!2297915 (= res!2991956 ((_ is ElementMatch!19519) lt!2622110))))

(assert (=> d!2297915 (= (validRegex!10033 lt!2622110) e!4451594)))

(declare-fun b!7458754 () Bool)

(declare-fun res!2991958 () Bool)

(assert (=> b!7458754 (=> (not res!2991958) (not e!4451596))))

(assert (=> b!7458754 (= res!2991958 call!685245)))

(assert (=> b!7458754 (= e!4451593 e!4451596)))

(declare-fun b!7458755 () Bool)

(assert (=> b!7458755 (= e!4451594 e!4451591)))

(assert (=> b!7458755 (= c!1379031 ((_ is Star!19519) lt!2622110))))

(assert (= (and d!2297915 (not res!2991956)) b!7458755))

(assert (= (and b!7458755 c!1379031) b!7458753))

(assert (= (and b!7458755 (not c!1379031)) b!7458748))

(assert (= (and b!7458753 res!2991957) b!7458750))

(assert (= (and b!7458748 c!1379032) b!7458754))

(assert (= (and b!7458748 (not c!1379032)) b!7458747))

(assert (= (and b!7458754 res!2991958) b!7458752))

(assert (= (and b!7458747 (not res!2991954)) b!7458749))

(assert (= (and b!7458749 res!2991955) b!7458751))

(assert (= (or b!7458752 b!7458751) bm!685242))

(assert (= (or b!7458754 b!7458749) bm!685241))

(assert (= (or b!7458750 bm!685242) bm!685240))

(declare-fun m!8061504 () Bool)

(assert (=> bm!685240 m!8061504))

(declare-fun m!8061506 () Bool)

(assert (=> bm!685241 m!8061506))

(declare-fun m!8061508 () Bool)

(assert (=> b!7458753 m!8061508))

(assert (=> b!7458099 d!2297915))

(declare-fun d!2297917 () Bool)

(declare-fun e!4451601 () Bool)

(assert (=> d!2297917 e!4451601))

(declare-fun res!2991963 () Bool)

(assert (=> d!2297917 (=> (not res!2991963) (not e!4451601))))

(declare-fun lt!2622183 () List!72235)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15256 (List!72235) (InoxSet C!39312))

(assert (=> d!2297917 (= res!2991963 (= (content!15256 lt!2622183) ((_ map or) (content!15256 (_1!37549 lt!2622105)) (content!15256 (_2!37549 lt!2622105)))))))

(declare-fun e!4451602 () List!72235)

(assert (=> d!2297917 (= lt!2622183 e!4451602)))

(declare-fun c!1379035 () Bool)

(assert (=> d!2297917 (= c!1379035 ((_ is Nil!72111) (_1!37549 lt!2622105)))))

(assert (=> d!2297917 (= (++!17177 (_1!37549 lt!2622105) (_2!37549 lt!2622105)) lt!2622183)))

(declare-fun b!7458764 () Bool)

(assert (=> b!7458764 (= e!4451602 (_2!37549 lt!2622105))))

(declare-fun b!7458765 () Bool)

(assert (=> b!7458765 (= e!4451602 (Cons!72111 (h!78559 (_1!37549 lt!2622105)) (++!17177 (t!386804 (_1!37549 lt!2622105)) (_2!37549 lt!2622105))))))

(declare-fun b!7458767 () Bool)

(assert (=> b!7458767 (= e!4451601 (or (not (= (_2!37549 lt!2622105) Nil!72111)) (= lt!2622183 (_1!37549 lt!2622105))))))

(declare-fun b!7458766 () Bool)

(declare-fun res!2991964 () Bool)

(assert (=> b!7458766 (=> (not res!2991964) (not e!4451601))))

(declare-fun size!42192 (List!72235) Int)

(assert (=> b!7458766 (= res!2991964 (= (size!42192 lt!2622183) (+ (size!42192 (_1!37549 lt!2622105)) (size!42192 (_2!37549 lt!2622105)))))))

(assert (= (and d!2297917 c!1379035) b!7458764))

(assert (= (and d!2297917 (not c!1379035)) b!7458765))

(assert (= (and d!2297917 res!2991963) b!7458766))

(assert (= (and b!7458766 res!2991964) b!7458767))

(declare-fun m!8061516 () Bool)

(assert (=> d!2297917 m!8061516))

(declare-fun m!8061518 () Bool)

(assert (=> d!2297917 m!8061518))

(declare-fun m!8061520 () Bool)

(assert (=> d!2297917 m!8061520))

(declare-fun m!8061522 () Bool)

(assert (=> b!7458765 m!8061522))

(declare-fun m!8061524 () Bool)

(assert (=> b!7458766 m!8061524))

(declare-fun m!8061526 () Bool)

(assert (=> b!7458766 m!8061526))

(declare-fun m!8061528 () Bool)

(assert (=> b!7458766 m!8061528))

(assert (=> bm!685161 d!2297917))

(declare-fun bs!1929210 () Bool)

(declare-fun b!7458778 () Bool)

(assert (= bs!1929210 (and b!7458778 b!7458552)))

(declare-fun lambda!461474 () Int)

(assert (=> bs!1929210 (not (= lambda!461474 lambda!461460))))

(declare-fun bs!1929211 () Bool)

(assert (= bs!1929211 (and b!7458778 b!7458439)))

(assert (=> bs!1929211 (not (= lambda!461474 lambda!461451))))

(declare-fun bs!1929212 () Bool)

(assert (= bs!1929212 (and b!7458778 b!7458450)))

(assert (=> bs!1929212 (not (= lambda!461474 lambda!461453))))

(declare-fun bs!1929213 () Bool)

(assert (= bs!1929213 (and b!7458778 b!7458698)))

(assert (=> bs!1929213 (= (and (= (reg!19848 lt!2622088) (reg!19848 lt!2622110)) (= lt!2622088 lt!2622110)) (= lambda!461474 lambda!461470))))

(declare-fun bs!1929214 () Bool)

(assert (= bs!1929214 (and b!7458778 b!7458457)))

(assert (=> bs!1929214 (= (and (= s!13591 (_1!37549 lt!2622105)) (= (reg!19848 lt!2622088) (reg!19848 r1!5845)) (= lt!2622088 r1!5845)) (= lambda!461474 lambda!461452))))

(declare-fun bs!1929215 () Bool)

(assert (= bs!1929215 (and b!7458778 d!2297815)))

(assert (=> bs!1929215 (not (= lambda!461474 lambda!461436))))

(declare-fun bs!1929216 () Bool)

(assert (= bs!1929216 (and b!7458778 b!7458691)))

(assert (=> bs!1929216 (not (= lambda!461474 lambda!461471))))

(declare-fun bs!1929217 () Bool)

(assert (= bs!1929217 (and b!7458778 b!7458655)))

(assert (=> bs!1929217 (not (= lambda!461474 lambda!461467))))

(declare-fun bs!1929218 () Bool)

(assert (= bs!1929218 (and b!7458778 b!7458509)))

(assert (=> bs!1929218 (not (= lambda!461474 lambda!461456))))

(declare-fun bs!1929219 () Bool)

(assert (= bs!1929219 (and b!7458778 b!7458520)))

(assert (=> bs!1929219 (= (and (= s!13591 (_1!37549 lt!2622105)) (= (reg!19848 lt!2622088) (reg!19848 lt!2622098)) (= lt!2622088 lt!2622098)) (= lambda!461474 lambda!461454))))

(declare-fun bs!1929220 () Bool)

(assert (= bs!1929220 (and b!7458778 b!7458103)))

(assert (=> bs!1929220 (not (= lambda!461474 lambda!461419))))

(declare-fun bs!1929221 () Bool)

(assert (= bs!1929221 (and b!7458778 d!2297799)))

(assert (=> bs!1929221 (not (= lambda!461474 lambda!461426))))

(declare-fun bs!1929222 () Bool)

(assert (= bs!1929222 (and b!7458778 b!7458446)))

(assert (=> bs!1929222 (= (and (= s!13591 (_1!37549 lt!2622105)) (= (reg!19848 lt!2622088) (reg!19848 r2!5783)) (= lt!2622088 r2!5783)) (= lambda!461474 lambda!461449))))

(declare-fun bs!1929223 () Bool)

(assert (= bs!1929223 (and b!7458778 b!7458662)))

(assert (=> bs!1929223 (= (and (= (reg!19848 lt!2622088) (reg!19848 lt!2622101)) (= lt!2622088 lt!2622101)) (= lambda!461474 lambda!461466))))

(assert (=> bs!1929221 (not (= lambda!461474 lambda!461428))))

(declare-fun bs!1929224 () Bool)

(assert (= bs!1929224 (and b!7458778 b!7458559)))

(assert (=> bs!1929224 (= (and (= s!13591 (_2!37549 lt!2622105)) (= (reg!19848 lt!2622088) (reg!19848 rTail!78)) (= lt!2622088 rTail!78)) (= lambda!461474 lambda!461458))))

(assert (=> bs!1929220 (not (= lambda!461474 lambda!461418))))

(assert (=> b!7458778 true))

(assert (=> b!7458778 true))

(declare-fun bs!1929225 () Bool)

(declare-fun b!7458771 () Bool)

(assert (= bs!1929225 (and b!7458771 b!7458552)))

(declare-fun lambda!461475 () Int)

(assert (=> bs!1929225 (= (and (= s!13591 (_2!37549 lt!2622105)) (= (regOne!39550 lt!2622088) (regOne!39550 rTail!78)) (= (regTwo!39550 lt!2622088) (regTwo!39550 rTail!78))) (= lambda!461475 lambda!461460))))

(declare-fun bs!1929226 () Bool)

(assert (= bs!1929226 (and b!7458771 b!7458439)))

(assert (=> bs!1929226 (= (and (= s!13591 (_1!37549 lt!2622105)) (= (regOne!39550 lt!2622088) (regOne!39550 r2!5783)) (= (regTwo!39550 lt!2622088) (regTwo!39550 r2!5783))) (= lambda!461475 lambda!461451))))

(declare-fun bs!1929227 () Bool)

(assert (= bs!1929227 (and b!7458771 b!7458450)))

(assert (=> bs!1929227 (= (and (= s!13591 (_1!37549 lt!2622105)) (= (regOne!39550 lt!2622088) (regOne!39550 r1!5845)) (= (regTwo!39550 lt!2622088) (regTwo!39550 r1!5845))) (= lambda!461475 lambda!461453))))

(declare-fun bs!1929228 () Bool)

(assert (= bs!1929228 (and b!7458771 b!7458698)))

(assert (=> bs!1929228 (not (= lambda!461475 lambda!461470))))

(declare-fun bs!1929229 () Bool)

(assert (= bs!1929229 (and b!7458771 b!7458457)))

(assert (=> bs!1929229 (not (= lambda!461475 lambda!461452))))

(declare-fun bs!1929230 () Bool)

(assert (= bs!1929230 (and b!7458771 d!2297815)))

(assert (=> bs!1929230 (not (= lambda!461475 lambda!461436))))

(declare-fun bs!1929231 () Bool)

(assert (= bs!1929231 (and b!7458771 b!7458655)))

(assert (=> bs!1929231 (= (and (= (regOne!39550 lt!2622088) (regOne!39550 lt!2622101)) (= (regTwo!39550 lt!2622088) (regTwo!39550 lt!2622101))) (= lambda!461475 lambda!461467))))

(declare-fun bs!1929232 () Bool)

(assert (= bs!1929232 (and b!7458771 b!7458509)))

(assert (=> bs!1929232 (= (and (= s!13591 (_1!37549 lt!2622105)) (= (regOne!39550 lt!2622088) (regOne!39550 lt!2622098)) (= (regTwo!39550 lt!2622088) (regTwo!39550 lt!2622098))) (= lambda!461475 lambda!461456))))

(declare-fun bs!1929233 () Bool)

(assert (= bs!1929233 (and b!7458771 b!7458520)))

(assert (=> bs!1929233 (not (= lambda!461475 lambda!461454))))

(declare-fun bs!1929234 () Bool)

(assert (= bs!1929234 (and b!7458771 b!7458103)))

(assert (=> bs!1929234 (= (and (= (regOne!39550 lt!2622088) lt!2622098) (= (regTwo!39550 lt!2622088) rTail!78)) (= lambda!461475 lambda!461419))))

(declare-fun bs!1929235 () Bool)

(assert (= bs!1929235 (and b!7458771 d!2297799)))

(assert (=> bs!1929235 (not (= lambda!461475 lambda!461426))))

(declare-fun bs!1929236 () Bool)

(assert (= bs!1929236 (and b!7458771 b!7458446)))

(assert (=> bs!1929236 (not (= lambda!461475 lambda!461449))))

(declare-fun bs!1929237 () Bool)

(assert (= bs!1929237 (and b!7458771 b!7458662)))

(assert (=> bs!1929237 (not (= lambda!461475 lambda!461466))))

(assert (=> bs!1929235 (= (and (= (regOne!39550 lt!2622088) lt!2622098) (= (regTwo!39550 lt!2622088) rTail!78)) (= lambda!461475 lambda!461428))))

(declare-fun bs!1929238 () Bool)

(assert (= bs!1929238 (and b!7458771 b!7458559)))

(assert (=> bs!1929238 (not (= lambda!461475 lambda!461458))))

(assert (=> bs!1929234 (not (= lambda!461475 lambda!461418))))

(declare-fun bs!1929239 () Bool)

(assert (= bs!1929239 (and b!7458771 b!7458778)))

(assert (=> bs!1929239 (not (= lambda!461475 lambda!461474))))

(declare-fun bs!1929240 () Bool)

(assert (= bs!1929240 (and b!7458771 b!7458691)))

(assert (=> bs!1929240 (= (and (= (regOne!39550 lt!2622088) (regOne!39550 lt!2622110)) (= (regTwo!39550 lt!2622088) (regTwo!39550 lt!2622110))) (= lambda!461475 lambda!461471))))

(assert (=> b!7458771 true))

(assert (=> b!7458771 true))

(declare-fun b!7458768 () Bool)

(declare-fun e!4451603 () Bool)

(declare-fun e!4451608 () Bool)

(assert (=> b!7458768 (= e!4451603 e!4451608)))

(declare-fun c!1379036 () Bool)

(assert (=> b!7458768 (= c!1379036 ((_ is Star!19519) lt!2622088))))

(declare-fun b!7458769 () Bool)

(declare-fun e!4451605 () Bool)

(assert (=> b!7458769 (= e!4451605 (= s!13591 (Cons!72111 (c!1378876 lt!2622088) Nil!72111)))))

(declare-fun b!7458770 () Bool)

(declare-fun e!4451604 () Bool)

(declare-fun call!685249 () Bool)

(assert (=> b!7458770 (= e!4451604 call!685249)))

(declare-fun bm!685243 () Bool)

(declare-fun call!685248 () Bool)

(assert (=> bm!685243 (= call!685248 (Exists!4140 (ite c!1379036 lambda!461474 lambda!461475)))))

(assert (=> b!7458771 (= e!4451608 call!685248)))

(declare-fun b!7458772 () Bool)

(declare-fun c!1379038 () Bool)

(assert (=> b!7458772 (= c!1379038 ((_ is ElementMatch!19519) lt!2622088))))

(declare-fun e!4451606 () Bool)

(assert (=> b!7458772 (= e!4451606 e!4451605)))

(declare-fun b!7458773 () Bool)

(declare-fun e!4451607 () Bool)

(assert (=> b!7458773 (= e!4451603 e!4451607)))

(declare-fun res!2991967 () Bool)

(assert (=> b!7458773 (= res!2991967 (matchRSpec!4198 (regOne!39551 lt!2622088) s!13591))))

(assert (=> b!7458773 (=> res!2991967 e!4451607)))

(declare-fun d!2297921 () Bool)

(declare-fun c!1379039 () Bool)

(assert (=> d!2297921 (= c!1379039 ((_ is EmptyExpr!19519) lt!2622088))))

(assert (=> d!2297921 (= (matchRSpec!4198 lt!2622088 s!13591) e!4451604)))

(declare-fun b!7458774 () Bool)

(declare-fun c!1379037 () Bool)

(assert (=> b!7458774 (= c!1379037 ((_ is Union!19519) lt!2622088))))

(assert (=> b!7458774 (= e!4451605 e!4451603)))

(declare-fun bm!685244 () Bool)

(assert (=> bm!685244 (= call!685249 (isEmpty!41124 s!13591))))

(declare-fun b!7458775 () Bool)

(assert (=> b!7458775 (= e!4451604 e!4451606)))

(declare-fun res!2991965 () Bool)

(assert (=> b!7458775 (= res!2991965 (not ((_ is EmptyLang!19519) lt!2622088)))))

(assert (=> b!7458775 (=> (not res!2991965) (not e!4451606))))

(declare-fun b!7458776 () Bool)

(assert (=> b!7458776 (= e!4451607 (matchRSpec!4198 (regTwo!39551 lt!2622088) s!13591))))

(declare-fun b!7458777 () Bool)

(declare-fun res!2991966 () Bool)

(declare-fun e!4451609 () Bool)

(assert (=> b!7458777 (=> res!2991966 e!4451609)))

(assert (=> b!7458777 (= res!2991966 call!685249)))

(assert (=> b!7458777 (= e!4451608 e!4451609)))

(assert (=> b!7458778 (= e!4451609 call!685248)))

(assert (= (and d!2297921 c!1379039) b!7458770))

(assert (= (and d!2297921 (not c!1379039)) b!7458775))

(assert (= (and b!7458775 res!2991965) b!7458772))

(assert (= (and b!7458772 c!1379038) b!7458769))

(assert (= (and b!7458772 (not c!1379038)) b!7458774))

(assert (= (and b!7458774 c!1379037) b!7458773))

(assert (= (and b!7458774 (not c!1379037)) b!7458768))

(assert (= (and b!7458773 (not res!2991967)) b!7458776))

(assert (= (and b!7458768 c!1379036) b!7458777))

(assert (= (and b!7458768 (not c!1379036)) b!7458771))

(assert (= (and b!7458777 (not res!2991966)) b!7458778))

(assert (= (or b!7458778 b!7458771) bm!685243))

(assert (= (or b!7458770 b!7458777) bm!685244))

(declare-fun m!8061560 () Bool)

(assert (=> bm!685243 m!8061560))

(declare-fun m!8061562 () Bool)

(assert (=> b!7458773 m!8061562))

(assert (=> bm!685244 m!8061436))

(declare-fun m!8061564 () Bool)

(assert (=> b!7458776 m!8061564))

(assert (=> b!7458097 d!2297921))

(declare-fun bm!685249 () Bool)

(declare-fun call!685254 () Bool)

(assert (=> bm!685249 (= call!685254 (isEmpty!41124 s!13591))))

(declare-fun b!7458814 () Bool)

(declare-fun res!2991994 () Bool)

(declare-fun e!4451636 () Bool)

(assert (=> b!7458814 (=> res!2991994 e!4451636)))

(declare-fun e!4451633 () Bool)

(assert (=> b!7458814 (= res!2991994 e!4451633)))

(declare-fun res!2991987 () Bool)

(assert (=> b!7458814 (=> (not res!2991987) (not e!4451633))))

(declare-fun lt!2622188 () Bool)

(assert (=> b!7458814 (= res!2991987 lt!2622188)))

(declare-fun b!7458815 () Bool)

(declare-fun e!4451634 () Bool)

(declare-fun e!4451630 () Bool)

(assert (=> b!7458815 (= e!4451634 e!4451630)))

(declare-fun c!1379050 () Bool)

(assert (=> b!7458815 (= c!1379050 ((_ is EmptyLang!19519) lt!2622091))))

(declare-fun b!7458816 () Bool)

(assert (=> b!7458816 (= e!4451634 (= lt!2622188 call!685254))))

(declare-fun b!7458818 () Bool)

(declare-fun e!4451632 () Bool)

(assert (=> b!7458818 (= e!4451632 (nullable!8505 lt!2622091))))

(declare-fun b!7458819 () Bool)

(declare-fun res!2991988 () Bool)

(assert (=> b!7458819 (=> (not res!2991988) (not e!4451633))))

(assert (=> b!7458819 (= res!2991988 (not call!685254))))

(declare-fun b!7458820 () Bool)

(declare-fun res!2991993 () Bool)

(declare-fun e!4451631 () Bool)

(assert (=> b!7458820 (=> res!2991993 e!4451631)))

(assert (=> b!7458820 (= res!2991993 (not (isEmpty!41124 (tail!14873 s!13591))))))

(declare-fun b!7458821 () Bool)

(declare-fun e!4451635 () Bool)

(assert (=> b!7458821 (= e!4451635 e!4451631)))

(declare-fun res!2991992 () Bool)

(assert (=> b!7458821 (=> res!2991992 e!4451631)))

(assert (=> b!7458821 (= res!2991992 call!685254)))

(declare-fun b!7458822 () Bool)

(declare-fun res!2991990 () Bool)

(assert (=> b!7458822 (=> (not res!2991990) (not e!4451633))))

(assert (=> b!7458822 (= res!2991990 (isEmpty!41124 (tail!14873 s!13591)))))

(declare-fun b!7458823 () Bool)

(declare-fun res!2991989 () Bool)

(assert (=> b!7458823 (=> res!2991989 e!4451636)))

(assert (=> b!7458823 (= res!2991989 (not ((_ is ElementMatch!19519) lt!2622091)))))

(assert (=> b!7458823 (= e!4451630 e!4451636)))

(declare-fun b!7458824 () Bool)

(assert (=> b!7458824 (= e!4451633 (= (head!15304 s!13591) (c!1378876 lt!2622091)))))

(declare-fun b!7458825 () Bool)

(assert (=> b!7458825 (= e!4451632 (matchR!9283 (derivativeStep!5564 lt!2622091 (head!15304 s!13591)) (tail!14873 s!13591)))))

(declare-fun b!7458826 () Bool)

(assert (=> b!7458826 (= e!4451636 e!4451635)))

(declare-fun res!2991991 () Bool)

(assert (=> b!7458826 (=> (not res!2991991) (not e!4451635))))

(assert (=> b!7458826 (= res!2991991 (not lt!2622188))))

(declare-fun b!7458827 () Bool)

(assert (=> b!7458827 (= e!4451631 (not (= (head!15304 s!13591) (c!1378876 lt!2622091))))))

(declare-fun d!2297927 () Bool)

(assert (=> d!2297927 e!4451634))

(declare-fun c!1379049 () Bool)

(assert (=> d!2297927 (= c!1379049 ((_ is EmptyExpr!19519) lt!2622091))))

(assert (=> d!2297927 (= lt!2622188 e!4451632)))

(declare-fun c!1379048 () Bool)

(assert (=> d!2297927 (= c!1379048 (isEmpty!41124 s!13591))))

(assert (=> d!2297927 (validRegex!10033 lt!2622091)))

(assert (=> d!2297927 (= (matchR!9283 lt!2622091 s!13591) lt!2622188)))

(declare-fun b!7458817 () Bool)

(assert (=> b!7458817 (= e!4451630 (not lt!2622188))))

(assert (= (and d!2297927 c!1379048) b!7458818))

(assert (= (and d!2297927 (not c!1379048)) b!7458825))

(assert (= (and d!2297927 c!1379049) b!7458816))

(assert (= (and d!2297927 (not c!1379049)) b!7458815))

(assert (= (and b!7458815 c!1379050) b!7458817))

(assert (= (and b!7458815 (not c!1379050)) b!7458823))

(assert (= (and b!7458823 (not res!2991989)) b!7458814))

(assert (= (and b!7458814 res!2991987) b!7458819))

(assert (= (and b!7458819 res!2991988) b!7458822))

(assert (= (and b!7458822 res!2991990) b!7458824))

(assert (= (and b!7458814 (not res!2991994)) b!7458826))

(assert (= (and b!7458826 res!2991991) b!7458821))

(assert (= (and b!7458821 (not res!2991992)) b!7458820))

(assert (= (and b!7458820 (not res!2991993)) b!7458827))

(assert (= (or b!7458816 b!7458819 b!7458821) bm!685249))

(assert (=> bm!685249 m!8061436))

(assert (=> b!7458825 m!8061438))

(assert (=> b!7458825 m!8061438))

(declare-fun m!8061568 () Bool)

(assert (=> b!7458825 m!8061568))

(assert (=> b!7458825 m!8061442))

(assert (=> b!7458825 m!8061568))

(assert (=> b!7458825 m!8061442))

(declare-fun m!8061570 () Bool)

(assert (=> b!7458825 m!8061570))

(declare-fun m!8061572 () Bool)

(assert (=> b!7458818 m!8061572))

(assert (=> b!7458820 m!8061442))

(assert (=> b!7458820 m!8061442))

(assert (=> b!7458820 m!8061448))

(assert (=> b!7458827 m!8061438))

(assert (=> d!2297927 m!8061436))

(declare-fun m!8061574 () Bool)

(assert (=> d!2297927 m!8061574))

(assert (=> b!7458822 m!8061442))

(assert (=> b!7458822 m!8061442))

(assert (=> b!7458822 m!8061448))

(assert (=> b!7458824 m!8061438))

(assert (=> b!7458097 d!2297927))

(declare-fun bs!1929241 () Bool)

(declare-fun b!7458838 () Bool)

(assert (= bs!1929241 (and b!7458838 b!7458552)))

(declare-fun lambda!461476 () Int)

(assert (=> bs!1929241 (not (= lambda!461476 lambda!461460))))

(declare-fun bs!1929242 () Bool)

(assert (= bs!1929242 (and b!7458838 b!7458439)))

(assert (=> bs!1929242 (not (= lambda!461476 lambda!461451))))

(declare-fun bs!1929243 () Bool)

(assert (= bs!1929243 (and b!7458838 b!7458450)))

(assert (=> bs!1929243 (not (= lambda!461476 lambda!461453))))

(declare-fun bs!1929244 () Bool)

(assert (= bs!1929244 (and b!7458838 b!7458698)))

(assert (=> bs!1929244 (= (and (= (reg!19848 lt!2622091) (reg!19848 lt!2622110)) (= lt!2622091 lt!2622110)) (= lambda!461476 lambda!461470))))

(declare-fun bs!1929245 () Bool)

(assert (= bs!1929245 (and b!7458838 b!7458457)))

(assert (=> bs!1929245 (= (and (= s!13591 (_1!37549 lt!2622105)) (= (reg!19848 lt!2622091) (reg!19848 r1!5845)) (= lt!2622091 r1!5845)) (= lambda!461476 lambda!461452))))

(declare-fun bs!1929246 () Bool)

(assert (= bs!1929246 (and b!7458838 d!2297815)))

(assert (=> bs!1929246 (not (= lambda!461476 lambda!461436))))

(declare-fun bs!1929247 () Bool)

(assert (= bs!1929247 (and b!7458838 b!7458509)))

(assert (=> bs!1929247 (not (= lambda!461476 lambda!461456))))

(declare-fun bs!1929248 () Bool)

(assert (= bs!1929248 (and b!7458838 b!7458520)))

(assert (=> bs!1929248 (= (and (= s!13591 (_1!37549 lt!2622105)) (= (reg!19848 lt!2622091) (reg!19848 lt!2622098)) (= lt!2622091 lt!2622098)) (= lambda!461476 lambda!461454))))

(declare-fun bs!1929249 () Bool)

(assert (= bs!1929249 (and b!7458838 b!7458103)))

(assert (=> bs!1929249 (not (= lambda!461476 lambda!461419))))

(declare-fun bs!1929250 () Bool)

(assert (= bs!1929250 (and b!7458838 d!2297799)))

(assert (=> bs!1929250 (not (= lambda!461476 lambda!461426))))

(declare-fun bs!1929251 () Bool)

(assert (= bs!1929251 (and b!7458838 b!7458446)))

(assert (=> bs!1929251 (= (and (= s!13591 (_1!37549 lt!2622105)) (= (reg!19848 lt!2622091) (reg!19848 r2!5783)) (= lt!2622091 r2!5783)) (= lambda!461476 lambda!461449))))

(declare-fun bs!1929252 () Bool)

(assert (= bs!1929252 (and b!7458838 b!7458662)))

(assert (=> bs!1929252 (= (and (= (reg!19848 lt!2622091) (reg!19848 lt!2622101)) (= lt!2622091 lt!2622101)) (= lambda!461476 lambda!461466))))

(assert (=> bs!1929250 (not (= lambda!461476 lambda!461428))))

(declare-fun bs!1929253 () Bool)

(assert (= bs!1929253 (and b!7458838 b!7458559)))

(assert (=> bs!1929253 (= (and (= s!13591 (_2!37549 lt!2622105)) (= (reg!19848 lt!2622091) (reg!19848 rTail!78)) (= lt!2622091 rTail!78)) (= lambda!461476 lambda!461458))))

(assert (=> bs!1929249 (not (= lambda!461476 lambda!461418))))

(declare-fun bs!1929254 () Bool)

(assert (= bs!1929254 (and b!7458838 b!7458778)))

(assert (=> bs!1929254 (= (and (= (reg!19848 lt!2622091) (reg!19848 lt!2622088)) (= lt!2622091 lt!2622088)) (= lambda!461476 lambda!461474))))

(declare-fun bs!1929255 () Bool)

(assert (= bs!1929255 (and b!7458838 b!7458691)))

(assert (=> bs!1929255 (not (= lambda!461476 lambda!461471))))

(declare-fun bs!1929256 () Bool)

(assert (= bs!1929256 (and b!7458838 b!7458771)))

(assert (=> bs!1929256 (not (= lambda!461476 lambda!461475))))

(declare-fun bs!1929257 () Bool)

(assert (= bs!1929257 (and b!7458838 b!7458655)))

(assert (=> bs!1929257 (not (= lambda!461476 lambda!461467))))

(assert (=> b!7458838 true))

(assert (=> b!7458838 true))

(declare-fun bs!1929258 () Bool)

(declare-fun b!7458831 () Bool)

(assert (= bs!1929258 (and b!7458831 b!7458552)))

(declare-fun lambda!461477 () Int)

(assert (=> bs!1929258 (= (and (= s!13591 (_2!37549 lt!2622105)) (= (regOne!39550 lt!2622091) (regOne!39550 rTail!78)) (= (regTwo!39550 lt!2622091) (regTwo!39550 rTail!78))) (= lambda!461477 lambda!461460))))

(declare-fun bs!1929259 () Bool)

(assert (= bs!1929259 (and b!7458831 b!7458838)))

(assert (=> bs!1929259 (not (= lambda!461477 lambda!461476))))

(declare-fun bs!1929260 () Bool)

(assert (= bs!1929260 (and b!7458831 b!7458439)))

(assert (=> bs!1929260 (= (and (= s!13591 (_1!37549 lt!2622105)) (= (regOne!39550 lt!2622091) (regOne!39550 r2!5783)) (= (regTwo!39550 lt!2622091) (regTwo!39550 r2!5783))) (= lambda!461477 lambda!461451))))

(declare-fun bs!1929261 () Bool)

(assert (= bs!1929261 (and b!7458831 b!7458450)))

(assert (=> bs!1929261 (= (and (= s!13591 (_1!37549 lt!2622105)) (= (regOne!39550 lt!2622091) (regOne!39550 r1!5845)) (= (regTwo!39550 lt!2622091) (regTwo!39550 r1!5845))) (= lambda!461477 lambda!461453))))

(declare-fun bs!1929262 () Bool)

(assert (= bs!1929262 (and b!7458831 b!7458698)))

(assert (=> bs!1929262 (not (= lambda!461477 lambda!461470))))

(declare-fun bs!1929263 () Bool)

(assert (= bs!1929263 (and b!7458831 b!7458457)))

(assert (=> bs!1929263 (not (= lambda!461477 lambda!461452))))

(declare-fun bs!1929264 () Bool)

(assert (= bs!1929264 (and b!7458831 d!2297815)))

(assert (=> bs!1929264 (not (= lambda!461477 lambda!461436))))

(declare-fun bs!1929265 () Bool)

(assert (= bs!1929265 (and b!7458831 b!7458509)))

(assert (=> bs!1929265 (= (and (= s!13591 (_1!37549 lt!2622105)) (= (regOne!39550 lt!2622091) (regOne!39550 lt!2622098)) (= (regTwo!39550 lt!2622091) (regTwo!39550 lt!2622098))) (= lambda!461477 lambda!461456))))

(declare-fun bs!1929266 () Bool)

(assert (= bs!1929266 (and b!7458831 b!7458520)))

(assert (=> bs!1929266 (not (= lambda!461477 lambda!461454))))

(declare-fun bs!1929267 () Bool)

(assert (= bs!1929267 (and b!7458831 b!7458103)))

(assert (=> bs!1929267 (= (and (= (regOne!39550 lt!2622091) lt!2622098) (= (regTwo!39550 lt!2622091) rTail!78)) (= lambda!461477 lambda!461419))))

(declare-fun bs!1929268 () Bool)

(assert (= bs!1929268 (and b!7458831 d!2297799)))

(assert (=> bs!1929268 (not (= lambda!461477 lambda!461426))))

(declare-fun bs!1929269 () Bool)

(assert (= bs!1929269 (and b!7458831 b!7458446)))

(assert (=> bs!1929269 (not (= lambda!461477 lambda!461449))))

(declare-fun bs!1929270 () Bool)

(assert (= bs!1929270 (and b!7458831 b!7458662)))

(assert (=> bs!1929270 (not (= lambda!461477 lambda!461466))))

(assert (=> bs!1929268 (= (and (= (regOne!39550 lt!2622091) lt!2622098) (= (regTwo!39550 lt!2622091) rTail!78)) (= lambda!461477 lambda!461428))))

(declare-fun bs!1929271 () Bool)

(assert (= bs!1929271 (and b!7458831 b!7458559)))

(assert (=> bs!1929271 (not (= lambda!461477 lambda!461458))))

(assert (=> bs!1929267 (not (= lambda!461477 lambda!461418))))

(declare-fun bs!1929272 () Bool)

(assert (= bs!1929272 (and b!7458831 b!7458778)))

(assert (=> bs!1929272 (not (= lambda!461477 lambda!461474))))

(declare-fun bs!1929273 () Bool)

(assert (= bs!1929273 (and b!7458831 b!7458691)))

(assert (=> bs!1929273 (= (and (= (regOne!39550 lt!2622091) (regOne!39550 lt!2622110)) (= (regTwo!39550 lt!2622091) (regTwo!39550 lt!2622110))) (= lambda!461477 lambda!461471))))

(declare-fun bs!1929274 () Bool)

(assert (= bs!1929274 (and b!7458831 b!7458771)))

(assert (=> bs!1929274 (= (and (= (regOne!39550 lt!2622091) (regOne!39550 lt!2622088)) (= (regTwo!39550 lt!2622091) (regTwo!39550 lt!2622088))) (= lambda!461477 lambda!461475))))

(declare-fun bs!1929275 () Bool)

(assert (= bs!1929275 (and b!7458831 b!7458655)))

(assert (=> bs!1929275 (= (and (= (regOne!39550 lt!2622091) (regOne!39550 lt!2622101)) (= (regTwo!39550 lt!2622091) (regTwo!39550 lt!2622101))) (= lambda!461477 lambda!461467))))

(assert (=> b!7458831 true))

(assert (=> b!7458831 true))

(declare-fun b!7458828 () Bool)

(declare-fun e!4451637 () Bool)

(declare-fun e!4451642 () Bool)

(assert (=> b!7458828 (= e!4451637 e!4451642)))

(declare-fun c!1379051 () Bool)

(assert (=> b!7458828 (= c!1379051 ((_ is Star!19519) lt!2622091))))

(declare-fun b!7458829 () Bool)

(declare-fun e!4451639 () Bool)

(assert (=> b!7458829 (= e!4451639 (= s!13591 (Cons!72111 (c!1378876 lt!2622091) Nil!72111)))))

(declare-fun b!7458830 () Bool)

(declare-fun e!4451638 () Bool)

(declare-fun call!685256 () Bool)

(assert (=> b!7458830 (= e!4451638 call!685256)))

(declare-fun bm!685250 () Bool)

(declare-fun call!685255 () Bool)

(assert (=> bm!685250 (= call!685255 (Exists!4140 (ite c!1379051 lambda!461476 lambda!461477)))))

(assert (=> b!7458831 (= e!4451642 call!685255)))

(declare-fun b!7458832 () Bool)

(declare-fun c!1379053 () Bool)

(assert (=> b!7458832 (= c!1379053 ((_ is ElementMatch!19519) lt!2622091))))

(declare-fun e!4451640 () Bool)

(assert (=> b!7458832 (= e!4451640 e!4451639)))

(declare-fun b!7458833 () Bool)

(declare-fun e!4451641 () Bool)

(assert (=> b!7458833 (= e!4451637 e!4451641)))

(declare-fun res!2991997 () Bool)

(assert (=> b!7458833 (= res!2991997 (matchRSpec!4198 (regOne!39551 lt!2622091) s!13591))))

(assert (=> b!7458833 (=> res!2991997 e!4451641)))

(declare-fun d!2297931 () Bool)

(declare-fun c!1379054 () Bool)

(assert (=> d!2297931 (= c!1379054 ((_ is EmptyExpr!19519) lt!2622091))))

(assert (=> d!2297931 (= (matchRSpec!4198 lt!2622091 s!13591) e!4451638)))

(declare-fun b!7458834 () Bool)

(declare-fun c!1379052 () Bool)

(assert (=> b!7458834 (= c!1379052 ((_ is Union!19519) lt!2622091))))

(assert (=> b!7458834 (= e!4451639 e!4451637)))

(declare-fun bm!685251 () Bool)

(assert (=> bm!685251 (= call!685256 (isEmpty!41124 s!13591))))

(declare-fun b!7458835 () Bool)

(assert (=> b!7458835 (= e!4451638 e!4451640)))

(declare-fun res!2991995 () Bool)

(assert (=> b!7458835 (= res!2991995 (not ((_ is EmptyLang!19519) lt!2622091)))))

(assert (=> b!7458835 (=> (not res!2991995) (not e!4451640))))

(declare-fun b!7458836 () Bool)

(assert (=> b!7458836 (= e!4451641 (matchRSpec!4198 (regTwo!39551 lt!2622091) s!13591))))

(declare-fun b!7458837 () Bool)

(declare-fun res!2991996 () Bool)

(declare-fun e!4451643 () Bool)

(assert (=> b!7458837 (=> res!2991996 e!4451643)))

(assert (=> b!7458837 (= res!2991996 call!685256)))

(assert (=> b!7458837 (= e!4451642 e!4451643)))

(assert (=> b!7458838 (= e!4451643 call!685255)))

(assert (= (and d!2297931 c!1379054) b!7458830))

(assert (= (and d!2297931 (not c!1379054)) b!7458835))

(assert (= (and b!7458835 res!2991995) b!7458832))

(assert (= (and b!7458832 c!1379053) b!7458829))

(assert (= (and b!7458832 (not c!1379053)) b!7458834))

(assert (= (and b!7458834 c!1379052) b!7458833))

(assert (= (and b!7458834 (not c!1379052)) b!7458828))

(assert (= (and b!7458833 (not res!2991997)) b!7458836))

(assert (= (and b!7458828 c!1379051) b!7458837))

(assert (= (and b!7458828 (not c!1379051)) b!7458831))

(assert (= (and b!7458837 (not res!2991996)) b!7458838))

(assert (= (or b!7458838 b!7458831) bm!685250))

(assert (= (or b!7458830 b!7458837) bm!685251))

(declare-fun m!8061610 () Bool)

(assert (=> bm!685250 m!8061610))

(declare-fun m!8061612 () Bool)

(assert (=> b!7458833 m!8061612))

(assert (=> bm!685251 m!8061436))

(declare-fun m!8061614 () Bool)

(assert (=> b!7458836 m!8061614))

(assert (=> b!7458097 d!2297931))

(declare-fun bm!685259 () Bool)

(declare-fun call!685264 () Bool)

(assert (=> bm!685259 (= call!685264 (isEmpty!41124 s!13591))))

(declare-fun b!7458884 () Bool)

(declare-fun res!2992026 () Bool)

(declare-fun e!4451676 () Bool)

(assert (=> b!7458884 (=> res!2992026 e!4451676)))

(declare-fun e!4451673 () Bool)

(assert (=> b!7458884 (= res!2992026 e!4451673)))

(declare-fun res!2992019 () Bool)

(assert (=> b!7458884 (=> (not res!2992019) (not e!4451673))))

(declare-fun lt!2622193 () Bool)

(assert (=> b!7458884 (= res!2992019 lt!2622193)))

(declare-fun b!7458885 () Bool)

(declare-fun e!4451674 () Bool)

(declare-fun e!4451670 () Bool)

(assert (=> b!7458885 (= e!4451674 e!4451670)))

(declare-fun c!1379064 () Bool)

(assert (=> b!7458885 (= c!1379064 ((_ is EmptyLang!19519) lt!2622088))))

(declare-fun b!7458886 () Bool)

(assert (=> b!7458886 (= e!4451674 (= lt!2622193 call!685264))))

(declare-fun b!7458888 () Bool)

(declare-fun e!4451672 () Bool)

(assert (=> b!7458888 (= e!4451672 (nullable!8505 lt!2622088))))

(declare-fun b!7458889 () Bool)

(declare-fun res!2992020 () Bool)

(assert (=> b!7458889 (=> (not res!2992020) (not e!4451673))))

(assert (=> b!7458889 (= res!2992020 (not call!685264))))

(declare-fun b!7458890 () Bool)

(declare-fun res!2992025 () Bool)

(declare-fun e!4451671 () Bool)

(assert (=> b!7458890 (=> res!2992025 e!4451671)))

(assert (=> b!7458890 (= res!2992025 (not (isEmpty!41124 (tail!14873 s!13591))))))

(declare-fun b!7458891 () Bool)

(declare-fun e!4451675 () Bool)

(assert (=> b!7458891 (= e!4451675 e!4451671)))

(declare-fun res!2992024 () Bool)

(assert (=> b!7458891 (=> res!2992024 e!4451671)))

(assert (=> b!7458891 (= res!2992024 call!685264)))

(declare-fun b!7458892 () Bool)

(declare-fun res!2992022 () Bool)

(assert (=> b!7458892 (=> (not res!2992022) (not e!4451673))))

(assert (=> b!7458892 (= res!2992022 (isEmpty!41124 (tail!14873 s!13591)))))

(declare-fun b!7458893 () Bool)

(declare-fun res!2992021 () Bool)

(assert (=> b!7458893 (=> res!2992021 e!4451676)))

(assert (=> b!7458893 (= res!2992021 (not ((_ is ElementMatch!19519) lt!2622088)))))

(assert (=> b!7458893 (= e!4451670 e!4451676)))

(declare-fun b!7458894 () Bool)

(assert (=> b!7458894 (= e!4451673 (= (head!15304 s!13591) (c!1378876 lt!2622088)))))

(declare-fun b!7458895 () Bool)

(assert (=> b!7458895 (= e!4451672 (matchR!9283 (derivativeStep!5564 lt!2622088 (head!15304 s!13591)) (tail!14873 s!13591)))))

(declare-fun b!7458896 () Bool)

(assert (=> b!7458896 (= e!4451676 e!4451675)))

(declare-fun res!2992023 () Bool)

(assert (=> b!7458896 (=> (not res!2992023) (not e!4451675))))

(assert (=> b!7458896 (= res!2992023 (not lt!2622193))))

(declare-fun b!7458897 () Bool)

(assert (=> b!7458897 (= e!4451671 (not (= (head!15304 s!13591) (c!1378876 lt!2622088))))))

(declare-fun d!2297939 () Bool)

(assert (=> d!2297939 e!4451674))

(declare-fun c!1379063 () Bool)

(assert (=> d!2297939 (= c!1379063 ((_ is EmptyExpr!19519) lt!2622088))))

(assert (=> d!2297939 (= lt!2622193 e!4451672)))

(declare-fun c!1379062 () Bool)

(assert (=> d!2297939 (= c!1379062 (isEmpty!41124 s!13591))))

(assert (=> d!2297939 (validRegex!10033 lt!2622088)))

(assert (=> d!2297939 (= (matchR!9283 lt!2622088 s!13591) lt!2622193)))

(declare-fun b!7458887 () Bool)

(assert (=> b!7458887 (= e!4451670 (not lt!2622193))))

(assert (= (and d!2297939 c!1379062) b!7458888))

(assert (= (and d!2297939 (not c!1379062)) b!7458895))

(assert (= (and d!2297939 c!1379063) b!7458886))

(assert (= (and d!2297939 (not c!1379063)) b!7458885))

(assert (= (and b!7458885 c!1379064) b!7458887))

(assert (= (and b!7458885 (not c!1379064)) b!7458893))

(assert (= (and b!7458893 (not res!2992021)) b!7458884))

(assert (= (and b!7458884 res!2992019) b!7458889))

(assert (= (and b!7458889 res!2992020) b!7458892))

(assert (= (and b!7458892 res!2992022) b!7458894))

(assert (= (and b!7458884 (not res!2992026)) b!7458896))

(assert (= (and b!7458896 res!2992023) b!7458891))

(assert (= (and b!7458891 (not res!2992024)) b!7458890))

(assert (= (and b!7458890 (not res!2992025)) b!7458897))

(assert (= (or b!7458886 b!7458889 b!7458891) bm!685259))

(assert (=> bm!685259 m!8061436))

(assert (=> b!7458895 m!8061438))

(assert (=> b!7458895 m!8061438))

(declare-fun m!8061616 () Bool)

(assert (=> b!7458895 m!8061616))

(assert (=> b!7458895 m!8061442))

(assert (=> b!7458895 m!8061616))

(assert (=> b!7458895 m!8061442))

(declare-fun m!8061618 () Bool)

(assert (=> b!7458895 m!8061618))

(declare-fun m!8061620 () Bool)

(assert (=> b!7458888 m!8061620))

(assert (=> b!7458890 m!8061442))

(assert (=> b!7458890 m!8061442))

(assert (=> b!7458890 m!8061448))

(assert (=> b!7458897 m!8061438))

(assert (=> d!2297939 m!8061436))

(declare-fun m!8061622 () Bool)

(assert (=> d!2297939 m!8061622))

(assert (=> b!7458892 m!8061442))

(assert (=> b!7458892 m!8061442))

(assert (=> b!7458892 m!8061448))

(assert (=> b!7458894 m!8061438))

(assert (=> b!7458097 d!2297939))

(declare-fun d!2297941 () Bool)

(assert (=> d!2297941 (= (matchR!9283 lt!2622091 s!13591) (matchRSpec!4198 lt!2622091 s!13591))))

(declare-fun lt!2622194 () Unit!165873)

(assert (=> d!2297941 (= lt!2622194 (choose!57655 lt!2622091 s!13591))))

(assert (=> d!2297941 (validRegex!10033 lt!2622091)))

(assert (=> d!2297941 (= (mainMatchTheorem!4192 lt!2622091 s!13591) lt!2622194)))

(declare-fun bs!1929276 () Bool)

(assert (= bs!1929276 d!2297941))

(assert (=> bs!1929276 m!8061090))

(assert (=> bs!1929276 m!8061086))

(declare-fun m!8061624 () Bool)

(assert (=> bs!1929276 m!8061624))

(assert (=> bs!1929276 m!8061574))

(assert (=> b!7458097 d!2297941))

(declare-fun d!2297943 () Bool)

(assert (=> d!2297943 (= (matchR!9283 lt!2622088 s!13591) (matchRSpec!4198 lt!2622088 s!13591))))

(declare-fun lt!2622195 () Unit!165873)

(assert (=> d!2297943 (= lt!2622195 (choose!57655 lt!2622088 s!13591))))

(assert (=> d!2297943 (validRegex!10033 lt!2622088)))

(assert (=> d!2297943 (= (mainMatchTheorem!4192 lt!2622088 s!13591) lt!2622195)))

(declare-fun bs!1929277 () Bool)

(assert (= bs!1929277 d!2297943))

(assert (=> bs!1929277 m!8061082))

(assert (=> bs!1929277 m!8061084))

(declare-fun m!8061626 () Bool)

(assert (=> bs!1929277 m!8061626))

(assert (=> bs!1929277 m!8061622))

(assert (=> b!7458097 d!2297943))

(declare-fun b!7458962 () Bool)

(declare-fun e!4451694 () Bool)

(declare-fun tp!2161378 () Bool)

(declare-fun tp!2161376 () Bool)

(assert (=> b!7458962 (= e!4451694 (and tp!2161378 tp!2161376))))

(assert (=> b!7458096 (= tp!2161286 e!4451694)))

(declare-fun b!7458963 () Bool)

(declare-fun tp!2161379 () Bool)

(assert (=> b!7458963 (= e!4451694 tp!2161379)))

(declare-fun b!7458961 () Bool)

(assert (=> b!7458961 (= e!4451694 tp_is_empty!49327)))

(declare-fun b!7458964 () Bool)

(declare-fun tp!2161375 () Bool)

(declare-fun tp!2161377 () Bool)

(assert (=> b!7458964 (= e!4451694 (and tp!2161375 tp!2161377))))

(assert (= (and b!7458096 ((_ is ElementMatch!19519) (regOne!39551 r1!5845))) b!7458961))

(assert (= (and b!7458096 ((_ is Concat!28364) (regOne!39551 r1!5845))) b!7458962))

(assert (= (and b!7458096 ((_ is Star!19519) (regOne!39551 r1!5845))) b!7458963))

(assert (= (and b!7458096 ((_ is Union!19519) (regOne!39551 r1!5845))) b!7458964))

(declare-fun b!7458971 () Bool)

(declare-fun e!4451697 () Bool)

(declare-fun tp!2161391 () Bool)

(declare-fun tp!2161387 () Bool)

(assert (=> b!7458971 (= e!4451697 (and tp!2161391 tp!2161387))))

(assert (=> b!7458096 (= tp!2161280 e!4451697)))

(declare-fun b!7458973 () Bool)

(declare-fun tp!2161393 () Bool)

(assert (=> b!7458973 (= e!4451697 tp!2161393)))

(declare-fun b!7458969 () Bool)

(assert (=> b!7458969 (= e!4451697 tp_is_empty!49327)))

(declare-fun b!7458975 () Bool)

(declare-fun tp!2161385 () Bool)

(declare-fun tp!2161388 () Bool)

(assert (=> b!7458975 (= e!4451697 (and tp!2161385 tp!2161388))))

(assert (= (and b!7458096 ((_ is ElementMatch!19519) (regTwo!39551 r1!5845))) b!7458969))

(assert (= (and b!7458096 ((_ is Concat!28364) (regTwo!39551 r1!5845))) b!7458971))

(assert (= (and b!7458096 ((_ is Star!19519) (regTwo!39551 r1!5845))) b!7458973))

(assert (= (and b!7458096 ((_ is Union!19519) (regTwo!39551 r1!5845))) b!7458975))

(declare-fun b!7458978 () Bool)

(declare-fun e!4451698 () Bool)

(declare-fun tp!2161398 () Bool)

(declare-fun tp!2161396 () Bool)

(assert (=> b!7458978 (= e!4451698 (and tp!2161398 tp!2161396))))

(assert (=> b!7458111 (= tp!2161284 e!4451698)))

(declare-fun b!7458979 () Bool)

(declare-fun tp!2161399 () Bool)

(assert (=> b!7458979 (= e!4451698 tp!2161399)))

(declare-fun b!7458977 () Bool)

(assert (=> b!7458977 (= e!4451698 tp_is_empty!49327)))

(declare-fun b!7458980 () Bool)

(declare-fun tp!2161395 () Bool)

(declare-fun tp!2161397 () Bool)

(assert (=> b!7458980 (= e!4451698 (and tp!2161395 tp!2161397))))

(assert (= (and b!7458111 ((_ is ElementMatch!19519) (regOne!39551 rTail!78))) b!7458977))

(assert (= (and b!7458111 ((_ is Concat!28364) (regOne!39551 rTail!78))) b!7458978))

(assert (= (and b!7458111 ((_ is Star!19519) (regOne!39551 rTail!78))) b!7458979))

(assert (= (and b!7458111 ((_ is Union!19519) (regOne!39551 rTail!78))) b!7458980))

(declare-fun b!7458986 () Bool)

(declare-fun e!4451700 () Bool)

(declare-fun tp!2161408 () Bool)

(declare-fun tp!2161406 () Bool)

(assert (=> b!7458986 (= e!4451700 (and tp!2161408 tp!2161406))))

(assert (=> b!7458111 (= tp!2161282 e!4451700)))

(declare-fun b!7458987 () Bool)

(declare-fun tp!2161409 () Bool)

(assert (=> b!7458987 (= e!4451700 tp!2161409)))

(declare-fun b!7458985 () Bool)

(assert (=> b!7458985 (= e!4451700 tp_is_empty!49327)))

(declare-fun b!7458988 () Bool)

(declare-fun tp!2161405 () Bool)

(declare-fun tp!2161407 () Bool)

(assert (=> b!7458988 (= e!4451700 (and tp!2161405 tp!2161407))))

(assert (= (and b!7458111 ((_ is ElementMatch!19519) (regTwo!39551 rTail!78))) b!7458985))

(assert (= (and b!7458111 ((_ is Concat!28364) (regTwo!39551 rTail!78))) b!7458986))

(assert (= (and b!7458111 ((_ is Star!19519) (regTwo!39551 rTail!78))) b!7458987))

(assert (= (and b!7458111 ((_ is Union!19519) (regTwo!39551 rTail!78))) b!7458988))

(declare-fun b!7458990 () Bool)

(declare-fun e!4451701 () Bool)

(declare-fun tp!2161413 () Bool)

(declare-fun tp!2161411 () Bool)

(assert (=> b!7458990 (= e!4451701 (and tp!2161413 tp!2161411))))

(assert (=> b!7458105 (= tp!2161287 e!4451701)))

(declare-fun b!7458991 () Bool)

(declare-fun tp!2161414 () Bool)

(assert (=> b!7458991 (= e!4451701 tp!2161414)))

(declare-fun b!7458989 () Bool)

(assert (=> b!7458989 (= e!4451701 tp_is_empty!49327)))

(declare-fun b!7458992 () Bool)

(declare-fun tp!2161410 () Bool)

(declare-fun tp!2161412 () Bool)

(assert (=> b!7458992 (= e!4451701 (and tp!2161410 tp!2161412))))

(assert (= (and b!7458105 ((_ is ElementMatch!19519) (reg!19848 rTail!78))) b!7458989))

(assert (= (and b!7458105 ((_ is Concat!28364) (reg!19848 rTail!78))) b!7458990))

(assert (= (and b!7458105 ((_ is Star!19519) (reg!19848 rTail!78))) b!7458991))

(assert (= (and b!7458105 ((_ is Union!19519) (reg!19848 rTail!78))) b!7458992))

(declare-fun b!7458997 () Bool)

(declare-fun e!4451704 () Bool)

(declare-fun tp!2161417 () Bool)

(assert (=> b!7458997 (= e!4451704 (and tp_is_empty!49327 tp!2161417))))

(assert (=> b!7458119 (= tp!2161281 e!4451704)))

(assert (= (and b!7458119 ((_ is Cons!72111) (t!386804 s!13591))) b!7458997))

(declare-fun b!7458999 () Bool)

(declare-fun e!4451705 () Bool)

(declare-fun tp!2161421 () Bool)

(declare-fun tp!2161419 () Bool)

(assert (=> b!7458999 (= e!4451705 (and tp!2161421 tp!2161419))))

(assert (=> b!7458110 (= tp!2161285 e!4451705)))

(declare-fun b!7459000 () Bool)

(declare-fun tp!2161422 () Bool)

(assert (=> b!7459000 (= e!4451705 tp!2161422)))

(declare-fun b!7458998 () Bool)

(assert (=> b!7458998 (= e!4451705 tp_is_empty!49327)))

(declare-fun b!7459001 () Bool)

(declare-fun tp!2161418 () Bool)

(declare-fun tp!2161420 () Bool)

(assert (=> b!7459001 (= e!4451705 (and tp!2161418 tp!2161420))))

(assert (= (and b!7458110 ((_ is ElementMatch!19519) (regOne!39550 rTail!78))) b!7458998))

(assert (= (and b!7458110 ((_ is Concat!28364) (regOne!39550 rTail!78))) b!7458999))

(assert (= (and b!7458110 ((_ is Star!19519) (regOne!39550 rTail!78))) b!7459000))

(assert (= (and b!7458110 ((_ is Union!19519) (regOne!39550 rTail!78))) b!7459001))

(declare-fun b!7459003 () Bool)

(declare-fun e!4451706 () Bool)

(declare-fun tp!2161426 () Bool)

(declare-fun tp!2161424 () Bool)

(assert (=> b!7459003 (= e!4451706 (and tp!2161426 tp!2161424))))

(assert (=> b!7458110 (= tp!2161289 e!4451706)))

(declare-fun b!7459004 () Bool)

(declare-fun tp!2161427 () Bool)

(assert (=> b!7459004 (= e!4451706 tp!2161427)))

(declare-fun b!7459002 () Bool)

(assert (=> b!7459002 (= e!4451706 tp_is_empty!49327)))

(declare-fun b!7459005 () Bool)

(declare-fun tp!2161423 () Bool)

(declare-fun tp!2161425 () Bool)

(assert (=> b!7459005 (= e!4451706 (and tp!2161423 tp!2161425))))

(assert (= (and b!7458110 ((_ is ElementMatch!19519) (regTwo!39550 rTail!78))) b!7459002))

(assert (= (and b!7458110 ((_ is Concat!28364) (regTwo!39550 rTail!78))) b!7459003))

(assert (= (and b!7458110 ((_ is Star!19519) (regTwo!39550 rTail!78))) b!7459004))

(assert (= (and b!7458110 ((_ is Union!19519) (regTwo!39550 rTail!78))) b!7459005))

(declare-fun b!7459007 () Bool)

(declare-fun e!4451707 () Bool)

(declare-fun tp!2161431 () Bool)

(declare-fun tp!2161429 () Bool)

(assert (=> b!7459007 (= e!4451707 (and tp!2161431 tp!2161429))))

(assert (=> b!7458104 (= tp!2161278 e!4451707)))

(declare-fun b!7459008 () Bool)

(declare-fun tp!2161432 () Bool)

(assert (=> b!7459008 (= e!4451707 tp!2161432)))

(declare-fun b!7459006 () Bool)

(assert (=> b!7459006 (= e!4451707 tp_is_empty!49327)))

(declare-fun b!7459009 () Bool)

(declare-fun tp!2161428 () Bool)

(declare-fun tp!2161430 () Bool)

(assert (=> b!7459009 (= e!4451707 (and tp!2161428 tp!2161430))))

(assert (= (and b!7458104 ((_ is ElementMatch!19519) (regOne!39550 r2!5783))) b!7459006))

(assert (= (and b!7458104 ((_ is Concat!28364) (regOne!39550 r2!5783))) b!7459007))

(assert (= (and b!7458104 ((_ is Star!19519) (regOne!39550 r2!5783))) b!7459008))

(assert (= (and b!7458104 ((_ is Union!19519) (regOne!39550 r2!5783))) b!7459009))

(declare-fun b!7459011 () Bool)

(declare-fun e!4451708 () Bool)

(declare-fun tp!2161436 () Bool)

(declare-fun tp!2161434 () Bool)

(assert (=> b!7459011 (= e!4451708 (and tp!2161436 tp!2161434))))

(assert (=> b!7458104 (= tp!2161288 e!4451708)))

(declare-fun b!7459012 () Bool)

(declare-fun tp!2161437 () Bool)

(assert (=> b!7459012 (= e!4451708 tp!2161437)))

(declare-fun b!7459010 () Bool)

(assert (=> b!7459010 (= e!4451708 tp_is_empty!49327)))

(declare-fun b!7459013 () Bool)

(declare-fun tp!2161433 () Bool)

(declare-fun tp!2161435 () Bool)

(assert (=> b!7459013 (= e!4451708 (and tp!2161433 tp!2161435))))

(assert (= (and b!7458104 ((_ is ElementMatch!19519) (regTwo!39550 r2!5783))) b!7459010))

(assert (= (and b!7458104 ((_ is Concat!28364) (regTwo!39550 r2!5783))) b!7459011))

(assert (= (and b!7458104 ((_ is Star!19519) (regTwo!39550 r2!5783))) b!7459012))

(assert (= (and b!7458104 ((_ is Union!19519) (regTwo!39550 r2!5783))) b!7459013))

(declare-fun b!7459015 () Bool)

(declare-fun e!4451709 () Bool)

(declare-fun tp!2161441 () Bool)

(declare-fun tp!2161439 () Bool)

(assert (=> b!7459015 (= e!4451709 (and tp!2161441 tp!2161439))))

(assert (=> b!7458117 (= tp!2161277 e!4451709)))

(declare-fun b!7459016 () Bool)

(declare-fun tp!2161442 () Bool)

(assert (=> b!7459016 (= e!4451709 tp!2161442)))

(declare-fun b!7459014 () Bool)

(assert (=> b!7459014 (= e!4451709 tp_is_empty!49327)))

(declare-fun b!7459017 () Bool)

(declare-fun tp!2161438 () Bool)

(declare-fun tp!2161440 () Bool)

(assert (=> b!7459017 (= e!4451709 (and tp!2161438 tp!2161440))))

(assert (= (and b!7458117 ((_ is ElementMatch!19519) (reg!19848 r1!5845))) b!7459014))

(assert (= (and b!7458117 ((_ is Concat!28364) (reg!19848 r1!5845))) b!7459015))

(assert (= (and b!7458117 ((_ is Star!19519) (reg!19848 r1!5845))) b!7459016))

(assert (= (and b!7458117 ((_ is Union!19519) (reg!19848 r1!5845))) b!7459017))

(declare-fun b!7459019 () Bool)

(declare-fun e!4451710 () Bool)

(declare-fun tp!2161446 () Bool)

(declare-fun tp!2161444 () Bool)

(assert (=> b!7459019 (= e!4451710 (and tp!2161446 tp!2161444))))

(assert (=> b!7458107 (= tp!2161276 e!4451710)))

(declare-fun b!7459020 () Bool)

(declare-fun tp!2161447 () Bool)

(assert (=> b!7459020 (= e!4451710 tp!2161447)))

(declare-fun b!7459018 () Bool)

(assert (=> b!7459018 (= e!4451710 tp_is_empty!49327)))

(declare-fun b!7459021 () Bool)

(declare-fun tp!2161443 () Bool)

(declare-fun tp!2161445 () Bool)

(assert (=> b!7459021 (= e!4451710 (and tp!2161443 tp!2161445))))

(assert (= (and b!7458107 ((_ is ElementMatch!19519) (regOne!39550 r1!5845))) b!7459018))

(assert (= (and b!7458107 ((_ is Concat!28364) (regOne!39550 r1!5845))) b!7459019))

(assert (= (and b!7458107 ((_ is Star!19519) (regOne!39550 r1!5845))) b!7459020))

(assert (= (and b!7458107 ((_ is Union!19519) (regOne!39550 r1!5845))) b!7459021))

(declare-fun b!7459023 () Bool)

(declare-fun e!4451711 () Bool)

(declare-fun tp!2161451 () Bool)

(declare-fun tp!2161449 () Bool)

(assert (=> b!7459023 (= e!4451711 (and tp!2161451 tp!2161449))))

(assert (=> b!7458107 (= tp!2161279 e!4451711)))

(declare-fun b!7459024 () Bool)

(declare-fun tp!2161452 () Bool)

(assert (=> b!7459024 (= e!4451711 tp!2161452)))

(declare-fun b!7459022 () Bool)

(assert (=> b!7459022 (= e!4451711 tp_is_empty!49327)))

(declare-fun b!7459025 () Bool)

(declare-fun tp!2161448 () Bool)

(declare-fun tp!2161450 () Bool)

(assert (=> b!7459025 (= e!4451711 (and tp!2161448 tp!2161450))))

(assert (= (and b!7458107 ((_ is ElementMatch!19519) (regTwo!39550 r1!5845))) b!7459022))

(assert (= (and b!7458107 ((_ is Concat!28364) (regTwo!39550 r1!5845))) b!7459023))

(assert (= (and b!7458107 ((_ is Star!19519) (regTwo!39550 r1!5845))) b!7459024))

(assert (= (and b!7458107 ((_ is Union!19519) (regTwo!39550 r1!5845))) b!7459025))

(declare-fun b!7459027 () Bool)

(declare-fun e!4451712 () Bool)

(declare-fun tp!2161456 () Bool)

(declare-fun tp!2161454 () Bool)

(assert (=> b!7459027 (= e!4451712 (and tp!2161456 tp!2161454))))

(assert (=> b!7458116 (= tp!2161291 e!4451712)))

(declare-fun b!7459028 () Bool)

(declare-fun tp!2161457 () Bool)

(assert (=> b!7459028 (= e!4451712 tp!2161457)))

(declare-fun b!7459026 () Bool)

(assert (=> b!7459026 (= e!4451712 tp_is_empty!49327)))

(declare-fun b!7459029 () Bool)

(declare-fun tp!2161453 () Bool)

(declare-fun tp!2161455 () Bool)

(assert (=> b!7459029 (= e!4451712 (and tp!2161453 tp!2161455))))

(assert (= (and b!7458116 ((_ is ElementMatch!19519) (regOne!39551 r2!5783))) b!7459026))

(assert (= (and b!7458116 ((_ is Concat!28364) (regOne!39551 r2!5783))) b!7459027))

(assert (= (and b!7458116 ((_ is Star!19519) (regOne!39551 r2!5783))) b!7459028))

(assert (= (and b!7458116 ((_ is Union!19519) (regOne!39551 r2!5783))) b!7459029))

(declare-fun b!7459031 () Bool)

(declare-fun e!4451713 () Bool)

(declare-fun tp!2161461 () Bool)

(declare-fun tp!2161459 () Bool)

(assert (=> b!7459031 (= e!4451713 (and tp!2161461 tp!2161459))))

(assert (=> b!7458116 (= tp!2161290 e!4451713)))

(declare-fun b!7459032 () Bool)

(declare-fun tp!2161462 () Bool)

(assert (=> b!7459032 (= e!4451713 tp!2161462)))

(declare-fun b!7459030 () Bool)

(assert (=> b!7459030 (= e!4451713 tp_is_empty!49327)))

(declare-fun b!7459033 () Bool)

(declare-fun tp!2161458 () Bool)

(declare-fun tp!2161460 () Bool)

(assert (=> b!7459033 (= e!4451713 (and tp!2161458 tp!2161460))))

(assert (= (and b!7458116 ((_ is ElementMatch!19519) (regTwo!39551 r2!5783))) b!7459030))

(assert (= (and b!7458116 ((_ is Concat!28364) (regTwo!39551 r2!5783))) b!7459031))

(assert (= (and b!7458116 ((_ is Star!19519) (regTwo!39551 r2!5783))) b!7459032))

(assert (= (and b!7458116 ((_ is Union!19519) (regTwo!39551 r2!5783))) b!7459033))

(declare-fun b!7459035 () Bool)

(declare-fun e!4451714 () Bool)

(declare-fun tp!2161466 () Bool)

(declare-fun tp!2161464 () Bool)

(assert (=> b!7459035 (= e!4451714 (and tp!2161466 tp!2161464))))

(assert (=> b!7458112 (= tp!2161283 e!4451714)))

(declare-fun b!7459036 () Bool)

(declare-fun tp!2161467 () Bool)

(assert (=> b!7459036 (= e!4451714 tp!2161467)))

(declare-fun b!7459034 () Bool)

(assert (=> b!7459034 (= e!4451714 tp_is_empty!49327)))

(declare-fun b!7459037 () Bool)

(declare-fun tp!2161463 () Bool)

(declare-fun tp!2161465 () Bool)

(assert (=> b!7459037 (= e!4451714 (and tp!2161463 tp!2161465))))

(assert (= (and b!7458112 ((_ is ElementMatch!19519) (reg!19848 r2!5783))) b!7459034))

(assert (= (and b!7458112 ((_ is Concat!28364) (reg!19848 r2!5783))) b!7459035))

(assert (= (and b!7458112 ((_ is Star!19519) (reg!19848 r2!5783))) b!7459036))

(assert (= (and b!7458112 ((_ is Union!19519) (reg!19848 r2!5783))) b!7459037))

(check-sat (not b!7458642) (not b!7458579) (not b!7459004) (not b!7458649) (not b!7458303) (not bm!685221) (not b!7458744) (not b!7458962) (not b!7458987) (not b!7458388) (not b!7459029) (not b!7459032) (not b!7458584) (not b!7458822) (not b!7459013) (not d!2297943) (not bm!685173) (not bm!685240) (not b!7458833) (not b!7459005) (not b!7458607) (not d!2297917) (not b!7458605) (not d!2297819) (not bm!685212) (not b!7458992) (not d!2297901) (not b!7458648) (not b!7458644) (not b!7458651) (not d!2297877) (not b!7458518) (not d!2297941) tp_is_empty!49327 (not b!7458513) (not b!7458609) (not b!7458753) (not bm!685225) (not b!7458773) (not b!7458582) (not b!7459033) (not b!7458897) (not b!7458685) (not b!7458391) (not b!7458836) (not b!7458529) (not b!7458890) (not b!7459007) (not bm!685224) (not bm!685230) (not d!2297817) (not bm!685231) (not d!2297847) (not b!7458696) (not b!7458441) (not bm!685227) (not bm!685210) (not b!7459001) (not b!7458554) (not bm!685189) (not b!7458532) (not b!7458452) (not b!7459035) (not bm!685197) (not d!2297939) (not b!7459021) (not b!7458975) (not b!7458634) (not b!7458301) (not b!7459017) (not bm!685232) (not b!7458635) (not bm!685171) (not b!7458632) (not d!2297887) (not bm!685259) (not b!7458646) (not d!2297893) (not b!7458888) (not b!7458581) (not b!7458693) (not b!7458825) (not b!7458531) (not b!7458603) (not b!7459011) (not b!7458657) (not bm!685214) (not bm!685215) (not b!7458577) (not bm!685208) (not b!7458997) (not b!7459016) (not b!7458628) (not b!7458978) (not b!7459000) (not b!7459025) (not d!2297891) (not b!7458299) (not b!7458973) (not d!2297823) (not d!2297863) (not b!7458820) (not bm!685249) (not b!7458765) (not bm!685194) (not d!2297857) (not bm!685218) (not b!7458384) (not bm!685226) (not b!7459036) (not b!7458557) (not d!2297853) (not bm!685244) (not b!7459027) (not bm!685243) (not b!7458527) (not b!7459015) (not b!7458964) (not b!7458824) (not b!7458610) (not b!7459028) (not b!7458684) (not b!7458766) (not b!7458382) (not b!7458999) (not d!2297873) (not b!7459023) (not b!7458534) (not b!7458687) (not b!7458575) (not b!7459037) (not bm!685250) (not b!7459012) (not b!7458612) (not b!7458892) (not b!7458678) (not b!7458986) (not b!7458455) (not b!7458971) (not bm!685238) (not d!2297889) (not d!2297837) (not b!7458895) (not b!7459009) (not b!7458990) (not bm!685170) (not b!7459019) (not bm!685251) (not b!7459008) (not b!7459003) (not b!7458827) (not d!2297815) (not d!2297799) (not b!7458444) (not b!7458660) (not b!7458302) (not b!7458980) (not b!7459024) (not d!2297803) (not d!2297855) (not b!7458776) (not b!7458185) (not b!7458979) (not b!7458176) (not b!7458300) (not b!7458680) (not d!2297927) (not b!7458637) (not bm!685174) (not d!2297879) (not bm!685195) (not b!7458296) (not b!7458988) (not b!7458682) (not b!7458991) (not b!7458630) (not bm!685237) (not bm!685196) (not b!7458894) (not b!7459031) (not b!7459020) (not bm!685241) (not b!7458963) (not b!7458386) (not b!7458818) (not b!7458525) (not b!7458598) (not b!7458389))
(check-sat)
