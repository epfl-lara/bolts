; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!724778 () Bool)

(assert start!724778)

(declare-fun b!7480968 () Bool)

(assert (=> b!7480968 true))

(assert (=> b!7480968 true))

(assert (=> b!7480968 true))

(declare-fun lambda!463569 () Int)

(declare-fun lambda!463568 () Int)

(assert (=> b!7480968 (not (= lambda!463569 lambda!463568))))

(assert (=> b!7480968 true))

(assert (=> b!7480968 true))

(assert (=> b!7480968 true))

(declare-fun bs!1933057 () Bool)

(declare-fun b!7480962 () Bool)

(assert (= bs!1933057 (and b!7480962 b!7480968)))

(declare-datatypes ((C!39500 0))(
  ( (C!39501 (val!30148 Int)) )
))
(declare-datatypes ((Regex!19613 0))(
  ( (ElementMatch!19613 (c!1381792 C!39500)) (Concat!28458 (regOne!39738 Regex!19613) (regTwo!39738 Regex!19613)) (EmptyExpr!19613) (Star!19613 (reg!19942 Regex!19613)) (EmptyLang!19613) (Union!19613 (regOne!39739 Regex!19613) (regTwo!39739 Regex!19613)) )
))
(declare-fun r1!5845 () Regex!19613)

(declare-fun lambda!463570 () Int)

(declare-fun lt!2628187 () Regex!19613)

(assert (=> bs!1933057 (= (= r1!5845 lt!2628187) (= lambda!463570 lambda!463568))))

(assert (=> bs!1933057 (not (= lambda!463570 lambda!463569))))

(assert (=> b!7480962 true))

(assert (=> b!7480962 true))

(assert (=> b!7480962 true))

(declare-fun lambda!463571 () Int)

(assert (=> bs!1933057 (not (= lambda!463571 lambda!463568))))

(assert (=> bs!1933057 (= (= r1!5845 lt!2628187) (= lambda!463571 lambda!463569))))

(assert (=> b!7480962 (not (= lambda!463571 lambda!463570))))

(assert (=> b!7480962 true))

(assert (=> b!7480962 true))

(assert (=> b!7480962 true))

(declare-fun b!7480959 () Bool)

(declare-fun e!4462244 () Bool)

(declare-fun tp!2169847 () Bool)

(declare-fun tp!2169840 () Bool)

(assert (=> b!7480959 (= e!4462244 (and tp!2169847 tp!2169840))))

(declare-fun b!7480960 () Bool)

(declare-fun tp_is_empty!49515 () Bool)

(assert (=> b!7480960 (= e!4462244 tp_is_empty!49515)))

(declare-fun b!7480961 () Bool)

(declare-fun res!3001370 () Bool)

(declare-fun e!4462247 () Bool)

(assert (=> b!7480961 (=> (not res!3001370) (not e!4462247))))

(declare-fun r2!5783 () Regex!19613)

(declare-fun validRegex!10127 (Regex!19613) Bool)

(assert (=> b!7480961 (= res!3001370 (validRegex!10127 r2!5783))))

(declare-fun e!4462252 () Bool)

(declare-fun e!4462245 () Bool)

(assert (=> b!7480962 (= e!4462252 e!4462245)))

(declare-fun res!3001368 () Bool)

(assert (=> b!7480962 (=> res!3001368 e!4462245)))

(declare-datatypes ((List!72329 0))(
  ( (Nil!72205) (Cons!72205 (h!78653 C!39500) (t!386898 List!72329)) )
))
(declare-datatypes ((tuple2!68676 0))(
  ( (tuple2!68677 (_1!37641 List!72329) (_2!37641 List!72329)) )
))
(declare-fun lt!2628193 () tuple2!68676)

(declare-fun matchR!9377 (Regex!19613 List!72329) Bool)

(assert (=> b!7480962 (= res!3001368 (not (matchR!9377 r1!5845 (_1!37641 lt!2628193))))))

(declare-datatypes ((Option!17170 0))(
  ( (None!17169) (Some!17169 (v!54298 tuple2!68676)) )
))
(declare-fun lt!2628185 () Option!17170)

(declare-fun get!25283 (Option!17170) tuple2!68676)

(assert (=> b!7480962 (= lt!2628193 (get!25283 lt!2628185))))

(declare-fun Exists!4232 (Int) Bool)

(assert (=> b!7480962 (= (Exists!4232 lambda!463570) (Exists!4232 lambda!463571))))

(declare-fun s!13591 () List!72329)

(declare-fun rTail!78 () Regex!19613)

(declare-datatypes ((Unit!166061 0))(
  ( (Unit!166062) )
))
(declare-fun lt!2628182 () Unit!166061)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2566 (Regex!19613 Regex!19613 List!72329) Unit!166061)

(assert (=> b!7480962 (= lt!2628182 (lemmaExistCutMatchRandMatchRSpecEquivalent!2566 r1!5845 rTail!78 s!13591))))

(declare-fun isDefined!13859 (Option!17170) Bool)

(assert (=> b!7480962 (= (isDefined!13859 lt!2628185) (Exists!4232 lambda!463570))))

(declare-fun findConcatSeparation!3292 (Regex!19613 Regex!19613 List!72329 List!72329 List!72329) Option!17170)

(assert (=> b!7480962 (= lt!2628185 (findConcatSeparation!3292 r1!5845 rTail!78 Nil!72205 s!13591 s!13591))))

(declare-fun lt!2628183 () Unit!166061)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3050 (Regex!19613 Regex!19613 List!72329) Unit!166061)

(assert (=> b!7480962 (= lt!2628183 (lemmaFindConcatSeparationEquivalentToExists!3050 r1!5845 rTail!78 s!13591))))

(declare-fun b!7480963 () Bool)

(declare-fun e!4462246 () Bool)

(declare-fun tp!2169839 () Bool)

(assert (=> b!7480963 (= e!4462246 tp!2169839)))

(declare-fun b!7480964 () Bool)

(assert (=> b!7480964 (= e!4462246 tp_is_empty!49515)))

(declare-fun b!7480965 () Bool)

(declare-fun e!4462251 () Bool)

(declare-fun tp!2169845 () Bool)

(declare-fun tp!2169843 () Bool)

(assert (=> b!7480965 (= e!4462251 (and tp!2169845 tp!2169843))))

(declare-fun b!7480966 () Bool)

(assert (=> b!7480966 (= e!4462251 tp_is_empty!49515)))

(declare-fun res!3001367 () Bool)

(assert (=> start!724778 (=> (not res!3001367) (not e!4462247))))

(assert (=> start!724778 (= res!3001367 (validRegex!10127 r1!5845))))

(assert (=> start!724778 e!4462247))

(assert (=> start!724778 e!4462244))

(assert (=> start!724778 e!4462246))

(assert (=> start!724778 e!4462251))

(declare-fun e!4462248 () Bool)

(assert (=> start!724778 e!4462248))

(declare-fun b!7480967 () Bool)

(declare-fun res!3001366 () Bool)

(assert (=> b!7480967 (=> (not res!3001366) (not e!4462247))))

(assert (=> b!7480967 (= res!3001366 (validRegex!10127 rTail!78))))

(declare-fun e!4462249 () Bool)

(declare-fun e!4462250 () Bool)

(assert (=> b!7480968 (= e!4462249 e!4462250)))

(declare-fun res!3001365 () Bool)

(assert (=> b!7480968 (=> res!3001365 e!4462250)))

(declare-fun lt!2628192 () Bool)

(declare-fun lt!2628202 () Bool)

(assert (=> b!7480968 (= res!3001365 (or lt!2628192 (not lt!2628202)))))

(assert (=> b!7480968 (= (Exists!4232 lambda!463568) (Exists!4232 lambda!463569))))

(declare-fun lt!2628190 () Unit!166061)

(assert (=> b!7480968 (= lt!2628190 (lemmaExistCutMatchRandMatchRSpecEquivalent!2566 lt!2628187 rTail!78 s!13591))))

(assert (=> b!7480968 (= lt!2628192 (Exists!4232 lambda!463568))))

(assert (=> b!7480968 (= lt!2628192 (isDefined!13859 (findConcatSeparation!3292 lt!2628187 rTail!78 Nil!72205 s!13591 s!13591)))))

(declare-fun lt!2628196 () Unit!166061)

(assert (=> b!7480968 (= lt!2628196 (lemmaFindConcatSeparationEquivalentToExists!3050 lt!2628187 rTail!78 s!13591))))

(declare-fun b!7480969 () Bool)

(declare-fun res!3001363 () Bool)

(assert (=> b!7480969 (=> res!3001363 e!4462245)))

(assert (=> b!7480969 (= res!3001363 (not (matchR!9377 rTail!78 (_2!37641 lt!2628193))))))

(declare-fun b!7480970 () Bool)

(declare-fun tp!2169851 () Bool)

(assert (=> b!7480970 (= e!4462248 (and tp_is_empty!49515 tp!2169851))))

(declare-fun b!7480971 () Bool)

(declare-fun tp!2169849 () Bool)

(declare-fun tp!2169848 () Bool)

(assert (=> b!7480971 (= e!4462251 (and tp!2169849 tp!2169848))))

(declare-fun b!7480972 () Bool)

(declare-fun tp!2169838 () Bool)

(assert (=> b!7480972 (= e!4462251 tp!2169838)))

(declare-fun b!7480973 () Bool)

(declare-fun tp!2169841 () Bool)

(declare-fun tp!2169844 () Bool)

(assert (=> b!7480973 (= e!4462246 (and tp!2169841 tp!2169844))))

(declare-fun b!7480974 () Bool)

(declare-fun tp!2169850 () Bool)

(declare-fun tp!2169837 () Bool)

(assert (=> b!7480974 (= e!4462246 (and tp!2169850 tp!2169837))))

(declare-fun b!7480975 () Bool)

(assert (=> b!7480975 (= e!4462247 (not e!4462249))))

(declare-fun res!3001364 () Bool)

(assert (=> b!7480975 (=> res!3001364 e!4462249)))

(declare-fun lt!2628198 () Bool)

(assert (=> b!7480975 (= res!3001364 lt!2628198)))

(declare-fun lt!2628200 () Regex!19613)

(declare-fun matchRSpec!4292 (Regex!19613 List!72329) Bool)

(assert (=> b!7480975 (= lt!2628202 (matchRSpec!4292 lt!2628200 s!13591))))

(assert (=> b!7480975 (= lt!2628202 (matchR!9377 lt!2628200 s!13591))))

(declare-fun lt!2628184 () Unit!166061)

(declare-fun mainMatchTheorem!4286 (Regex!19613 List!72329) Unit!166061)

(assert (=> b!7480975 (= lt!2628184 (mainMatchTheorem!4286 lt!2628200 s!13591))))

(declare-fun lt!2628197 () Regex!19613)

(assert (=> b!7480975 (= lt!2628198 (matchRSpec!4292 lt!2628197 s!13591))))

(assert (=> b!7480975 (= lt!2628198 (matchR!9377 lt!2628197 s!13591))))

(declare-fun lt!2628201 () Unit!166061)

(assert (=> b!7480975 (= lt!2628201 (mainMatchTheorem!4286 lt!2628197 s!13591))))

(declare-fun lt!2628195 () Regex!19613)

(declare-fun lt!2628199 () Regex!19613)

(assert (=> b!7480975 (= lt!2628200 (Union!19613 lt!2628195 lt!2628199))))

(assert (=> b!7480975 (= lt!2628199 (Concat!28458 r2!5783 rTail!78))))

(assert (=> b!7480975 (= lt!2628195 (Concat!28458 r1!5845 rTail!78))))

(assert (=> b!7480975 (= lt!2628197 (Concat!28458 lt!2628187 rTail!78))))

(assert (=> b!7480975 (= lt!2628187 (Union!19613 r1!5845 r2!5783))))

(declare-fun b!7480976 () Bool)

(assert (=> b!7480976 (= e!4462250 e!4462252)))

(declare-fun res!3001369 () Bool)

(assert (=> b!7480976 (=> res!3001369 e!4462252)))

(declare-fun lt!2628194 () Bool)

(declare-fun lt!2628180 () Bool)

(assert (=> b!7480976 (= res!3001369 (or (and (not lt!2628194) (not lt!2628180)) (not lt!2628194)))))

(assert (=> b!7480976 (= lt!2628180 (matchRSpec!4292 lt!2628199 s!13591))))

(assert (=> b!7480976 (= lt!2628180 (matchR!9377 lt!2628199 s!13591))))

(declare-fun lt!2628186 () Unit!166061)

(assert (=> b!7480976 (= lt!2628186 (mainMatchTheorem!4286 lt!2628199 s!13591))))

(assert (=> b!7480976 (= lt!2628194 (matchRSpec!4292 lt!2628195 s!13591))))

(assert (=> b!7480976 (= lt!2628194 (matchR!9377 lt!2628195 s!13591))))

(declare-fun lt!2628181 () Unit!166061)

(assert (=> b!7480976 (= lt!2628181 (mainMatchTheorem!4286 lt!2628195 s!13591))))

(declare-fun b!7480977 () Bool)

(declare-fun tp!2169846 () Bool)

(declare-fun tp!2169836 () Bool)

(assert (=> b!7480977 (= e!4462244 (and tp!2169846 tp!2169836))))

(declare-fun b!7480978 () Bool)

(declare-fun tp!2169842 () Bool)

(assert (=> b!7480978 (= e!4462244 tp!2169842)))

(declare-fun b!7480979 () Bool)

(declare-fun lt!2628189 () Bool)

(assert (=> b!7480979 (= e!4462245 lt!2628189)))

(assert (=> b!7480979 (= (matchR!9377 r2!5783 (_1!37641 lt!2628193)) (matchRSpec!4292 r2!5783 (_1!37641 lt!2628193)))))

(declare-fun lt!2628188 () Unit!166061)

(assert (=> b!7480979 (= lt!2628188 (mainMatchTheorem!4286 r2!5783 (_1!37641 lt!2628193)))))

(assert (=> b!7480979 (matchRSpec!4292 r1!5845 (_1!37641 lt!2628193))))

(declare-fun lt!2628203 () Unit!166061)

(assert (=> b!7480979 (= lt!2628203 (mainMatchTheorem!4286 r1!5845 (_1!37641 lt!2628193)))))

(assert (=> b!7480979 (= lt!2628189 (matchRSpec!4292 lt!2628187 (_1!37641 lt!2628193)))))

(assert (=> b!7480979 (= lt!2628189 (matchR!9377 lt!2628187 (_1!37641 lt!2628193)))))

(declare-fun lt!2628191 () Unit!166061)

(assert (=> b!7480979 (= lt!2628191 (mainMatchTheorem!4286 lt!2628187 (_1!37641 lt!2628193)))))

(assert (= (and start!724778 res!3001367) b!7480961))

(assert (= (and b!7480961 res!3001370) b!7480967))

(assert (= (and b!7480967 res!3001366) b!7480975))

(assert (= (and b!7480975 (not res!3001364)) b!7480968))

(assert (= (and b!7480968 (not res!3001365)) b!7480976))

(assert (= (and b!7480976 (not res!3001369)) b!7480962))

(assert (= (and b!7480962 (not res!3001368)) b!7480969))

(assert (= (and b!7480969 (not res!3001363)) b!7480979))

(get-info :version)

(assert (= (and start!724778 ((_ is ElementMatch!19613) r1!5845)) b!7480960))

(assert (= (and start!724778 ((_ is Concat!28458) r1!5845)) b!7480977))

(assert (= (and start!724778 ((_ is Star!19613) r1!5845)) b!7480978))

(assert (= (and start!724778 ((_ is Union!19613) r1!5845)) b!7480959))

(assert (= (and start!724778 ((_ is ElementMatch!19613) r2!5783)) b!7480964))

(assert (= (and start!724778 ((_ is Concat!28458) r2!5783)) b!7480973))

(assert (= (and start!724778 ((_ is Star!19613) r2!5783)) b!7480963))

(assert (= (and start!724778 ((_ is Union!19613) r2!5783)) b!7480974))

(assert (= (and start!724778 ((_ is ElementMatch!19613) rTail!78)) b!7480966))

(assert (= (and start!724778 ((_ is Concat!28458) rTail!78)) b!7480971))

(assert (= (and start!724778 ((_ is Star!19613) rTail!78)) b!7480972))

(assert (= (and start!724778 ((_ is Union!19613) rTail!78)) b!7480965))

(assert (= (and start!724778 ((_ is Cons!72205) s!13591)) b!7480970))

(declare-fun m!8073080 () Bool)

(assert (=> b!7480979 m!8073080))

(declare-fun m!8073082 () Bool)

(assert (=> b!7480979 m!8073082))

(declare-fun m!8073084 () Bool)

(assert (=> b!7480979 m!8073084))

(declare-fun m!8073086 () Bool)

(assert (=> b!7480979 m!8073086))

(declare-fun m!8073088 () Bool)

(assert (=> b!7480979 m!8073088))

(declare-fun m!8073090 () Bool)

(assert (=> b!7480979 m!8073090))

(declare-fun m!8073092 () Bool)

(assert (=> b!7480979 m!8073092))

(declare-fun m!8073094 () Bool)

(assert (=> b!7480979 m!8073094))

(declare-fun m!8073096 () Bool)

(assert (=> b!7480967 m!8073096))

(declare-fun m!8073098 () Bool)

(assert (=> b!7480962 m!8073098))

(declare-fun m!8073100 () Bool)

(assert (=> b!7480962 m!8073100))

(declare-fun m!8073102 () Bool)

(assert (=> b!7480962 m!8073102))

(declare-fun m!8073104 () Bool)

(assert (=> b!7480962 m!8073104))

(declare-fun m!8073106 () Bool)

(assert (=> b!7480962 m!8073106))

(declare-fun m!8073108 () Bool)

(assert (=> b!7480962 m!8073108))

(declare-fun m!8073110 () Bool)

(assert (=> b!7480962 m!8073110))

(assert (=> b!7480962 m!8073098))

(declare-fun m!8073112 () Bool)

(assert (=> b!7480962 m!8073112))

(declare-fun m!8073114 () Bool)

(assert (=> b!7480976 m!8073114))

(declare-fun m!8073116 () Bool)

(assert (=> b!7480976 m!8073116))

(declare-fun m!8073118 () Bool)

(assert (=> b!7480976 m!8073118))

(declare-fun m!8073120 () Bool)

(assert (=> b!7480976 m!8073120))

(declare-fun m!8073122 () Bool)

(assert (=> b!7480976 m!8073122))

(declare-fun m!8073124 () Bool)

(assert (=> b!7480976 m!8073124))

(declare-fun m!8073126 () Bool)

(assert (=> start!724778 m!8073126))

(declare-fun m!8073128 () Bool)

(assert (=> b!7480969 m!8073128))

(declare-fun m!8073130 () Bool)

(assert (=> b!7480961 m!8073130))

(declare-fun m!8073132 () Bool)

(assert (=> b!7480968 m!8073132))

(declare-fun m!8073134 () Bool)

(assert (=> b!7480968 m!8073134))

(declare-fun m!8073136 () Bool)

(assert (=> b!7480968 m!8073136))

(assert (=> b!7480968 m!8073136))

(declare-fun m!8073138 () Bool)

(assert (=> b!7480968 m!8073138))

(declare-fun m!8073140 () Bool)

(assert (=> b!7480968 m!8073140))

(assert (=> b!7480968 m!8073138))

(declare-fun m!8073142 () Bool)

(assert (=> b!7480968 m!8073142))

(declare-fun m!8073144 () Bool)

(assert (=> b!7480975 m!8073144))

(declare-fun m!8073146 () Bool)

(assert (=> b!7480975 m!8073146))

(declare-fun m!8073148 () Bool)

(assert (=> b!7480975 m!8073148))

(declare-fun m!8073150 () Bool)

(assert (=> b!7480975 m!8073150))

(declare-fun m!8073152 () Bool)

(assert (=> b!7480975 m!8073152))

(declare-fun m!8073154 () Bool)

(assert (=> b!7480975 m!8073154))

(check-sat (not b!7480963) (not b!7480979) (not b!7480969) (not b!7480975) (not b!7480974) (not b!7480965) (not b!7480959) (not b!7480968) tp_is_empty!49515 (not b!7480971) (not b!7480961) (not b!7480973) (not b!7480970) (not start!724778) (not b!7480962) (not b!7480978) (not b!7480972) (not b!7480967) (not b!7480976) (not b!7480977))
(check-sat)
(get-model)

(declare-fun bm!686769 () Bool)

(declare-fun call!686774 () Bool)

(declare-fun isEmpty!41216 (List!72329) Bool)

(assert (=> bm!686769 (= call!686774 (isEmpty!41216 (_1!37641 lt!2628193)))))

(declare-fun b!7481076 () Bool)

(declare-fun e!4462305 () Bool)

(declare-fun lt!2628209 () Bool)

(assert (=> b!7481076 (= e!4462305 (= lt!2628209 call!686774))))

(declare-fun b!7481077 () Bool)

(declare-fun e!4462303 () Bool)

(declare-fun e!4462308 () Bool)

(assert (=> b!7481077 (= e!4462303 e!4462308)))

(declare-fun res!3001419 () Bool)

(assert (=> b!7481077 (=> (not res!3001419) (not e!4462308))))

(assert (=> b!7481077 (= res!3001419 (not lt!2628209))))

(declare-fun b!7481078 () Bool)

(declare-fun res!3001423 () Bool)

(assert (=> b!7481078 (=> res!3001423 e!4462303)))

(assert (=> b!7481078 (= res!3001423 (not ((_ is ElementMatch!19613) lt!2628187)))))

(declare-fun e!4462307 () Bool)

(assert (=> b!7481078 (= e!4462307 e!4462303)))

(declare-fun b!7481079 () Bool)

(declare-fun e!4462306 () Bool)

(declare-fun derivativeStep!5610 (Regex!19613 C!39500) Regex!19613)

(declare-fun head!15350 (List!72329) C!39500)

(declare-fun tail!14919 (List!72329) List!72329)

(assert (=> b!7481079 (= e!4462306 (matchR!9377 (derivativeStep!5610 lt!2628187 (head!15350 (_1!37641 lt!2628193))) (tail!14919 (_1!37641 lt!2628193))))))

(declare-fun b!7481080 () Bool)

(declare-fun res!3001422 () Bool)

(declare-fun e!4462304 () Bool)

(assert (=> b!7481080 (=> (not res!3001422) (not e!4462304))))

(assert (=> b!7481080 (= res!3001422 (not call!686774))))

(declare-fun b!7481081 () Bool)

(assert (=> b!7481081 (= e!4462304 (= (head!15350 (_1!37641 lt!2628193)) (c!1381792 lt!2628187)))))

(declare-fun d!2300100 () Bool)

(assert (=> d!2300100 e!4462305))

(declare-fun c!1381818 () Bool)

(assert (=> d!2300100 (= c!1381818 ((_ is EmptyExpr!19613) lt!2628187))))

(assert (=> d!2300100 (= lt!2628209 e!4462306)))

(declare-fun c!1381817 () Bool)

(assert (=> d!2300100 (= c!1381817 (isEmpty!41216 (_1!37641 lt!2628193)))))

(assert (=> d!2300100 (validRegex!10127 lt!2628187)))

(assert (=> d!2300100 (= (matchR!9377 lt!2628187 (_1!37641 lt!2628193)) lt!2628209)))

(declare-fun b!7481082 () Bool)

(declare-fun res!3001421 () Bool)

(assert (=> b!7481082 (=> res!3001421 e!4462303)))

(assert (=> b!7481082 (= res!3001421 e!4462304)))

(declare-fun res!3001420 () Bool)

(assert (=> b!7481082 (=> (not res!3001420) (not e!4462304))))

(assert (=> b!7481082 (= res!3001420 lt!2628209)))

(declare-fun b!7481083 () Bool)

(declare-fun e!4462302 () Bool)

(assert (=> b!7481083 (= e!4462308 e!4462302)))

(declare-fun res!3001418 () Bool)

(assert (=> b!7481083 (=> res!3001418 e!4462302)))

(assert (=> b!7481083 (= res!3001418 call!686774)))

(declare-fun b!7481084 () Bool)

(declare-fun res!3001424 () Bool)

(assert (=> b!7481084 (=> (not res!3001424) (not e!4462304))))

(assert (=> b!7481084 (= res!3001424 (isEmpty!41216 (tail!14919 (_1!37641 lt!2628193))))))

(declare-fun b!7481085 () Bool)

(assert (=> b!7481085 (= e!4462305 e!4462307)))

(declare-fun c!1381816 () Bool)

(assert (=> b!7481085 (= c!1381816 ((_ is EmptyLang!19613) lt!2628187))))

(declare-fun b!7481086 () Bool)

(assert (=> b!7481086 (= e!4462307 (not lt!2628209))))

(declare-fun b!7481087 () Bool)

(assert (=> b!7481087 (= e!4462302 (not (= (head!15350 (_1!37641 lt!2628193)) (c!1381792 lt!2628187))))))

(declare-fun b!7481088 () Bool)

(declare-fun res!3001417 () Bool)

(assert (=> b!7481088 (=> res!3001417 e!4462302)))

(assert (=> b!7481088 (= res!3001417 (not (isEmpty!41216 (tail!14919 (_1!37641 lt!2628193)))))))

(declare-fun b!7481089 () Bool)

(declare-fun nullable!8551 (Regex!19613) Bool)

(assert (=> b!7481089 (= e!4462306 (nullable!8551 lt!2628187))))

(assert (= (and d!2300100 c!1381817) b!7481089))

(assert (= (and d!2300100 (not c!1381817)) b!7481079))

(assert (= (and d!2300100 c!1381818) b!7481076))

(assert (= (and d!2300100 (not c!1381818)) b!7481085))

(assert (= (and b!7481085 c!1381816) b!7481086))

(assert (= (and b!7481085 (not c!1381816)) b!7481078))

(assert (= (and b!7481078 (not res!3001423)) b!7481082))

(assert (= (and b!7481082 res!3001420) b!7481080))

(assert (= (and b!7481080 res!3001422) b!7481084))

(assert (= (and b!7481084 res!3001424) b!7481081))

(assert (= (and b!7481082 (not res!3001421)) b!7481077))

(assert (= (and b!7481077 res!3001419) b!7481083))

(assert (= (and b!7481083 (not res!3001418)) b!7481088))

(assert (= (and b!7481088 (not res!3001417)) b!7481087))

(assert (= (or b!7481076 b!7481080 b!7481083) bm!686769))

(declare-fun m!8073172 () Bool)

(assert (=> bm!686769 m!8073172))

(declare-fun m!8073174 () Bool)

(assert (=> b!7481081 m!8073174))

(declare-fun m!8073176 () Bool)

(assert (=> b!7481089 m!8073176))

(assert (=> b!7481079 m!8073174))

(assert (=> b!7481079 m!8073174))

(declare-fun m!8073178 () Bool)

(assert (=> b!7481079 m!8073178))

(declare-fun m!8073180 () Bool)

(assert (=> b!7481079 m!8073180))

(assert (=> b!7481079 m!8073178))

(assert (=> b!7481079 m!8073180))

(declare-fun m!8073182 () Bool)

(assert (=> b!7481079 m!8073182))

(assert (=> d!2300100 m!8073172))

(declare-fun m!8073184 () Bool)

(assert (=> d!2300100 m!8073184))

(assert (=> b!7481087 m!8073174))

(assert (=> b!7481084 m!8073180))

(assert (=> b!7481084 m!8073180))

(declare-fun m!8073186 () Bool)

(assert (=> b!7481084 m!8073186))

(assert (=> b!7481088 m!8073180))

(assert (=> b!7481088 m!8073180))

(assert (=> b!7481088 m!8073186))

(assert (=> b!7480979 d!2300100))

(declare-fun bm!686770 () Bool)

(declare-fun call!686775 () Bool)

(assert (=> bm!686770 (= call!686775 (isEmpty!41216 (_1!37641 lt!2628193)))))

(declare-fun b!7481096 () Bool)

(declare-fun e!4462314 () Bool)

(declare-fun lt!2628210 () Bool)

(assert (=> b!7481096 (= e!4462314 (= lt!2628210 call!686775))))

(declare-fun b!7481097 () Bool)

(declare-fun e!4462312 () Bool)

(declare-fun e!4462317 () Bool)

(assert (=> b!7481097 (= e!4462312 e!4462317)))

(declare-fun res!3001433 () Bool)

(assert (=> b!7481097 (=> (not res!3001433) (not e!4462317))))

(assert (=> b!7481097 (= res!3001433 (not lt!2628210))))

(declare-fun b!7481098 () Bool)

(declare-fun res!3001437 () Bool)

(assert (=> b!7481098 (=> res!3001437 e!4462312)))

(assert (=> b!7481098 (= res!3001437 (not ((_ is ElementMatch!19613) r2!5783)))))

(declare-fun e!4462316 () Bool)

(assert (=> b!7481098 (= e!4462316 e!4462312)))

(declare-fun b!7481099 () Bool)

(declare-fun e!4462315 () Bool)

(assert (=> b!7481099 (= e!4462315 (matchR!9377 (derivativeStep!5610 r2!5783 (head!15350 (_1!37641 lt!2628193))) (tail!14919 (_1!37641 lt!2628193))))))

(declare-fun b!7481100 () Bool)

(declare-fun res!3001436 () Bool)

(declare-fun e!4462313 () Bool)

(assert (=> b!7481100 (=> (not res!3001436) (not e!4462313))))

(assert (=> b!7481100 (= res!3001436 (not call!686775))))

(declare-fun b!7481101 () Bool)

(assert (=> b!7481101 (= e!4462313 (= (head!15350 (_1!37641 lt!2628193)) (c!1381792 r2!5783)))))

(declare-fun d!2300106 () Bool)

(assert (=> d!2300106 e!4462314))

(declare-fun c!1381821 () Bool)

(assert (=> d!2300106 (= c!1381821 ((_ is EmptyExpr!19613) r2!5783))))

(assert (=> d!2300106 (= lt!2628210 e!4462315)))

(declare-fun c!1381820 () Bool)

(assert (=> d!2300106 (= c!1381820 (isEmpty!41216 (_1!37641 lt!2628193)))))

(assert (=> d!2300106 (validRegex!10127 r2!5783)))

(assert (=> d!2300106 (= (matchR!9377 r2!5783 (_1!37641 lt!2628193)) lt!2628210)))

(declare-fun b!7481102 () Bool)

(declare-fun res!3001435 () Bool)

(assert (=> b!7481102 (=> res!3001435 e!4462312)))

(assert (=> b!7481102 (= res!3001435 e!4462313)))

(declare-fun res!3001434 () Bool)

(assert (=> b!7481102 (=> (not res!3001434) (not e!4462313))))

(assert (=> b!7481102 (= res!3001434 lt!2628210)))

(declare-fun b!7481103 () Bool)

(declare-fun e!4462311 () Bool)

(assert (=> b!7481103 (= e!4462317 e!4462311)))

(declare-fun res!3001432 () Bool)

(assert (=> b!7481103 (=> res!3001432 e!4462311)))

(assert (=> b!7481103 (= res!3001432 call!686775)))

(declare-fun b!7481104 () Bool)

(declare-fun res!3001438 () Bool)

(assert (=> b!7481104 (=> (not res!3001438) (not e!4462313))))

(assert (=> b!7481104 (= res!3001438 (isEmpty!41216 (tail!14919 (_1!37641 lt!2628193))))))

(declare-fun b!7481105 () Bool)

(assert (=> b!7481105 (= e!4462314 e!4462316)))

(declare-fun c!1381819 () Bool)

(assert (=> b!7481105 (= c!1381819 ((_ is EmptyLang!19613) r2!5783))))

(declare-fun b!7481108 () Bool)

(assert (=> b!7481108 (= e!4462316 (not lt!2628210))))

(declare-fun b!7481109 () Bool)

(assert (=> b!7481109 (= e!4462311 (not (= (head!15350 (_1!37641 lt!2628193)) (c!1381792 r2!5783))))))

(declare-fun b!7481110 () Bool)

(declare-fun res!3001431 () Bool)

(assert (=> b!7481110 (=> res!3001431 e!4462311)))

(assert (=> b!7481110 (= res!3001431 (not (isEmpty!41216 (tail!14919 (_1!37641 lt!2628193)))))))

(declare-fun b!7481111 () Bool)

(assert (=> b!7481111 (= e!4462315 (nullable!8551 r2!5783))))

(assert (= (and d!2300106 c!1381820) b!7481111))

(assert (= (and d!2300106 (not c!1381820)) b!7481099))

(assert (= (and d!2300106 c!1381821) b!7481096))

(assert (= (and d!2300106 (not c!1381821)) b!7481105))

(assert (= (and b!7481105 c!1381819) b!7481108))

(assert (= (and b!7481105 (not c!1381819)) b!7481098))

(assert (= (and b!7481098 (not res!3001437)) b!7481102))

(assert (= (and b!7481102 res!3001434) b!7481100))

(assert (= (and b!7481100 res!3001436) b!7481104))

(assert (= (and b!7481104 res!3001438) b!7481101))

(assert (= (and b!7481102 (not res!3001435)) b!7481097))

(assert (= (and b!7481097 res!3001433) b!7481103))

(assert (= (and b!7481103 (not res!3001432)) b!7481110))

(assert (= (and b!7481110 (not res!3001431)) b!7481109))

(assert (= (or b!7481096 b!7481100 b!7481103) bm!686770))

(assert (=> bm!686770 m!8073172))

(assert (=> b!7481101 m!8073174))

(declare-fun m!8073188 () Bool)

(assert (=> b!7481111 m!8073188))

(assert (=> b!7481099 m!8073174))

(assert (=> b!7481099 m!8073174))

(declare-fun m!8073190 () Bool)

(assert (=> b!7481099 m!8073190))

(assert (=> b!7481099 m!8073180))

(assert (=> b!7481099 m!8073190))

(assert (=> b!7481099 m!8073180))

(declare-fun m!8073192 () Bool)

(assert (=> b!7481099 m!8073192))

(assert (=> d!2300106 m!8073172))

(assert (=> d!2300106 m!8073130))

(assert (=> b!7481109 m!8073174))

(assert (=> b!7481104 m!8073180))

(assert (=> b!7481104 m!8073180))

(assert (=> b!7481104 m!8073186))

(assert (=> b!7481110 m!8073180))

(assert (=> b!7481110 m!8073180))

(assert (=> b!7481110 m!8073186))

(assert (=> b!7480979 d!2300106))

(declare-fun bs!1933116 () Bool)

(declare-fun b!7481279 () Bool)

(assert (= bs!1933116 (and b!7481279 b!7480968)))

(declare-fun lambda!463589 () Int)

(assert (=> bs!1933116 (not (= lambda!463589 lambda!463568))))

(assert (=> bs!1933116 (not (= lambda!463589 lambda!463569))))

(declare-fun bs!1933122 () Bool)

(assert (= bs!1933122 (and b!7481279 b!7480962)))

(assert (=> bs!1933122 (not (= lambda!463589 lambda!463570))))

(assert (=> bs!1933122 (not (= lambda!463589 lambda!463571))))

(assert (=> b!7481279 true))

(assert (=> b!7481279 true))

(declare-fun bs!1933129 () Bool)

(declare-fun b!7481282 () Bool)

(assert (= bs!1933129 (and b!7481282 b!7480968)))

(declare-fun lambda!463591 () Int)

(assert (=> bs!1933129 (not (= lambda!463591 lambda!463568))))

(declare-fun bs!1933130 () Bool)

(assert (= bs!1933130 (and b!7481282 b!7480962)))

(assert (=> bs!1933130 (not (= lambda!463591 lambda!463570))))

(declare-fun bs!1933131 () Bool)

(assert (= bs!1933131 (and b!7481282 b!7481279)))

(assert (=> bs!1933131 (not (= lambda!463591 lambda!463589))))

(assert (=> bs!1933129 (= (and (= (_1!37641 lt!2628193) s!13591) (= (regOne!39738 r1!5845) lt!2628187) (= (regTwo!39738 r1!5845) rTail!78)) (= lambda!463591 lambda!463569))))

(assert (=> bs!1933130 (= (and (= (_1!37641 lt!2628193) s!13591) (= (regOne!39738 r1!5845) r1!5845) (= (regTwo!39738 r1!5845) rTail!78)) (= lambda!463591 lambda!463571))))

(assert (=> b!7481282 true))

(assert (=> b!7481282 true))

(declare-fun b!7481274 () Bool)

(declare-fun res!3001517 () Bool)

(declare-fun e!4462427 () Bool)

(assert (=> b!7481274 (=> res!3001517 e!4462427)))

(declare-fun call!686812 () Bool)

(assert (=> b!7481274 (= res!3001517 call!686812)))

(declare-fun e!4462422 () Bool)

(assert (=> b!7481274 (= e!4462422 e!4462427)))

(declare-fun b!7481275 () Bool)

(declare-fun c!1381868 () Bool)

(assert (=> b!7481275 (= c!1381868 ((_ is ElementMatch!19613) r1!5845))))

(declare-fun e!4462425 () Bool)

(declare-fun e!4462424 () Bool)

(assert (=> b!7481275 (= e!4462425 e!4462424)))

(declare-fun bm!686806 () Bool)

(assert (=> bm!686806 (= call!686812 (isEmpty!41216 (_1!37641 lt!2628193)))))

(declare-fun b!7481276 () Bool)

(declare-fun e!4462428 () Bool)

(assert (=> b!7481276 (= e!4462428 (matchRSpec!4292 (regTwo!39739 r1!5845) (_1!37641 lt!2628193)))))

(declare-fun b!7481277 () Bool)

(declare-fun e!4462426 () Bool)

(assert (=> b!7481277 (= e!4462426 e!4462428)))

(declare-fun res!3001516 () Bool)

(assert (=> b!7481277 (= res!3001516 (matchRSpec!4292 (regOne!39739 r1!5845) (_1!37641 lt!2628193)))))

(assert (=> b!7481277 (=> res!3001516 e!4462428)))

(declare-fun b!7481278 () Bool)

(assert (=> b!7481278 (= e!4462424 (= (_1!37641 lt!2628193) (Cons!72205 (c!1381792 r1!5845) Nil!72205)))))

(declare-fun call!686811 () Bool)

(assert (=> b!7481279 (= e!4462427 call!686811)))

(declare-fun b!7481281 () Bool)

(declare-fun e!4462423 () Bool)

(assert (=> b!7481281 (= e!4462423 call!686812)))

(assert (=> b!7481282 (= e!4462422 call!686811)))

(declare-fun bm!686807 () Bool)

(declare-fun c!1381867 () Bool)

(assert (=> bm!686807 (= call!686811 (Exists!4232 (ite c!1381867 lambda!463589 lambda!463591)))))

(declare-fun b!7481283 () Bool)

(declare-fun c!1381866 () Bool)

(assert (=> b!7481283 (= c!1381866 ((_ is Union!19613) r1!5845))))

(assert (=> b!7481283 (= e!4462424 e!4462426)))

(declare-fun b!7481284 () Bool)

(assert (=> b!7481284 (= e!4462423 e!4462425)))

(declare-fun res!3001515 () Bool)

(assert (=> b!7481284 (= res!3001515 (not ((_ is EmptyLang!19613) r1!5845)))))

(assert (=> b!7481284 (=> (not res!3001515) (not e!4462425))))

(declare-fun d!2300108 () Bool)

(declare-fun c!1381869 () Bool)

(assert (=> d!2300108 (= c!1381869 ((_ is EmptyExpr!19613) r1!5845))))

(assert (=> d!2300108 (= (matchRSpec!4292 r1!5845 (_1!37641 lt!2628193)) e!4462423)))

(declare-fun b!7481280 () Bool)

(assert (=> b!7481280 (= e!4462426 e!4462422)))

(assert (=> b!7481280 (= c!1381867 ((_ is Star!19613) r1!5845))))

(assert (= (and d!2300108 c!1381869) b!7481281))

(assert (= (and d!2300108 (not c!1381869)) b!7481284))

(assert (= (and b!7481284 res!3001515) b!7481275))

(assert (= (and b!7481275 c!1381868) b!7481278))

(assert (= (and b!7481275 (not c!1381868)) b!7481283))

(assert (= (and b!7481283 c!1381866) b!7481277))

(assert (= (and b!7481283 (not c!1381866)) b!7481280))

(assert (= (and b!7481277 (not res!3001516)) b!7481276))

(assert (= (and b!7481280 c!1381867) b!7481274))

(assert (= (and b!7481280 (not c!1381867)) b!7481282))

(assert (= (and b!7481274 (not res!3001517)) b!7481279))

(assert (= (or b!7481279 b!7481282) bm!686807))

(assert (= (or b!7481281 b!7481274) bm!686806))

(assert (=> bm!686806 m!8073172))

(declare-fun m!8073296 () Bool)

(assert (=> b!7481276 m!8073296))

(declare-fun m!8073298 () Bool)

(assert (=> b!7481277 m!8073298))

(declare-fun m!8073300 () Bool)

(assert (=> bm!686807 m!8073300))

(assert (=> b!7480979 d!2300108))

(declare-fun d!2300144 () Bool)

(assert (=> d!2300144 (= (matchR!9377 r2!5783 (_1!37641 lt!2628193)) (matchRSpec!4292 r2!5783 (_1!37641 lt!2628193)))))

(declare-fun lt!2628224 () Unit!166061)

(declare-fun choose!57835 (Regex!19613 List!72329) Unit!166061)

(assert (=> d!2300144 (= lt!2628224 (choose!57835 r2!5783 (_1!37641 lt!2628193)))))

(assert (=> d!2300144 (validRegex!10127 r2!5783)))

(assert (=> d!2300144 (= (mainMatchTheorem!4286 r2!5783 (_1!37641 lt!2628193)) lt!2628224)))

(declare-fun bs!1933133 () Bool)

(assert (= bs!1933133 d!2300144))

(assert (=> bs!1933133 m!8073084))

(assert (=> bs!1933133 m!8073092))

(declare-fun m!8073302 () Bool)

(assert (=> bs!1933133 m!8073302))

(assert (=> bs!1933133 m!8073130))

(assert (=> b!7480979 d!2300144))

(declare-fun bs!1933134 () Bool)

(declare-fun b!7481318 () Bool)

(assert (= bs!1933134 (and b!7481318 b!7480968)))

(declare-fun lambda!463592 () Int)

(assert (=> bs!1933134 (not (= lambda!463592 lambda!463568))))

(declare-fun bs!1933135 () Bool)

(assert (= bs!1933135 (and b!7481318 b!7480962)))

(assert (=> bs!1933135 (not (= lambda!463592 lambda!463570))))

(declare-fun bs!1933136 () Bool)

(assert (= bs!1933136 (and b!7481318 b!7481279)))

(assert (=> bs!1933136 (= (and (= (reg!19942 r2!5783) (reg!19942 r1!5845)) (= r2!5783 r1!5845)) (= lambda!463592 lambda!463589))))

(declare-fun bs!1933137 () Bool)

(assert (= bs!1933137 (and b!7481318 b!7481282)))

(assert (=> bs!1933137 (not (= lambda!463592 lambda!463591))))

(assert (=> bs!1933134 (not (= lambda!463592 lambda!463569))))

(assert (=> bs!1933135 (not (= lambda!463592 lambda!463571))))

(assert (=> b!7481318 true))

(assert (=> b!7481318 true))

(declare-fun bs!1933138 () Bool)

(declare-fun b!7481321 () Bool)

(assert (= bs!1933138 (and b!7481321 b!7480968)))

(declare-fun lambda!463593 () Int)

(assert (=> bs!1933138 (not (= lambda!463593 lambda!463568))))

(declare-fun bs!1933139 () Bool)

(assert (= bs!1933139 (and b!7481321 b!7480962)))

(assert (=> bs!1933139 (not (= lambda!463593 lambda!463570))))

(declare-fun bs!1933140 () Bool)

(assert (= bs!1933140 (and b!7481321 b!7481318)))

(assert (=> bs!1933140 (not (= lambda!463593 lambda!463592))))

(declare-fun bs!1933141 () Bool)

(assert (= bs!1933141 (and b!7481321 b!7481279)))

(assert (=> bs!1933141 (not (= lambda!463593 lambda!463589))))

(declare-fun bs!1933142 () Bool)

(assert (= bs!1933142 (and b!7481321 b!7481282)))

(assert (=> bs!1933142 (= (and (= (regOne!39738 r2!5783) (regOne!39738 r1!5845)) (= (regTwo!39738 r2!5783) (regTwo!39738 r1!5845))) (= lambda!463593 lambda!463591))))

(assert (=> bs!1933138 (= (and (= (_1!37641 lt!2628193) s!13591) (= (regOne!39738 r2!5783) lt!2628187) (= (regTwo!39738 r2!5783) rTail!78)) (= lambda!463593 lambda!463569))))

(assert (=> bs!1933139 (= (and (= (_1!37641 lt!2628193) s!13591) (= (regOne!39738 r2!5783) r1!5845) (= (regTwo!39738 r2!5783) rTail!78)) (= lambda!463593 lambda!463571))))

(assert (=> b!7481321 true))

(assert (=> b!7481321 true))

(declare-fun b!7481313 () Bool)

(declare-fun res!3001536 () Bool)

(declare-fun e!4462448 () Bool)

(assert (=> b!7481313 (=> res!3001536 e!4462448)))

(declare-fun call!686816 () Bool)

(assert (=> b!7481313 (= res!3001536 call!686816)))

(declare-fun e!4462443 () Bool)

(assert (=> b!7481313 (= e!4462443 e!4462448)))

(declare-fun b!7481314 () Bool)

(declare-fun c!1381878 () Bool)

(assert (=> b!7481314 (= c!1381878 ((_ is ElementMatch!19613) r2!5783))))

(declare-fun e!4462446 () Bool)

(declare-fun e!4462445 () Bool)

(assert (=> b!7481314 (= e!4462446 e!4462445)))

(declare-fun bm!686810 () Bool)

(assert (=> bm!686810 (= call!686816 (isEmpty!41216 (_1!37641 lt!2628193)))))

(declare-fun b!7481315 () Bool)

(declare-fun e!4462449 () Bool)

(assert (=> b!7481315 (= e!4462449 (matchRSpec!4292 (regTwo!39739 r2!5783) (_1!37641 lt!2628193)))))

(declare-fun b!7481316 () Bool)

(declare-fun e!4462447 () Bool)

(assert (=> b!7481316 (= e!4462447 e!4462449)))

(declare-fun res!3001535 () Bool)

(assert (=> b!7481316 (= res!3001535 (matchRSpec!4292 (regOne!39739 r2!5783) (_1!37641 lt!2628193)))))

(assert (=> b!7481316 (=> res!3001535 e!4462449)))

(declare-fun b!7481317 () Bool)

(assert (=> b!7481317 (= e!4462445 (= (_1!37641 lt!2628193) (Cons!72205 (c!1381792 r2!5783) Nil!72205)))))

(declare-fun call!686815 () Bool)

(assert (=> b!7481318 (= e!4462448 call!686815)))

(declare-fun b!7481320 () Bool)

(declare-fun e!4462444 () Bool)

(assert (=> b!7481320 (= e!4462444 call!686816)))

(assert (=> b!7481321 (= e!4462443 call!686815)))

(declare-fun c!1381877 () Bool)

(declare-fun bm!686811 () Bool)

(assert (=> bm!686811 (= call!686815 (Exists!4232 (ite c!1381877 lambda!463592 lambda!463593)))))

(declare-fun b!7481322 () Bool)

(declare-fun c!1381876 () Bool)

(assert (=> b!7481322 (= c!1381876 ((_ is Union!19613) r2!5783))))

(assert (=> b!7481322 (= e!4462445 e!4462447)))

(declare-fun b!7481323 () Bool)

(assert (=> b!7481323 (= e!4462444 e!4462446)))

(declare-fun res!3001534 () Bool)

(assert (=> b!7481323 (= res!3001534 (not ((_ is EmptyLang!19613) r2!5783)))))

(assert (=> b!7481323 (=> (not res!3001534) (not e!4462446))))

(declare-fun d!2300146 () Bool)

(declare-fun c!1381879 () Bool)

(assert (=> d!2300146 (= c!1381879 ((_ is EmptyExpr!19613) r2!5783))))

(assert (=> d!2300146 (= (matchRSpec!4292 r2!5783 (_1!37641 lt!2628193)) e!4462444)))

(declare-fun b!7481319 () Bool)

(assert (=> b!7481319 (= e!4462447 e!4462443)))

(assert (=> b!7481319 (= c!1381877 ((_ is Star!19613) r2!5783))))

(assert (= (and d!2300146 c!1381879) b!7481320))

(assert (= (and d!2300146 (not c!1381879)) b!7481323))

(assert (= (and b!7481323 res!3001534) b!7481314))

(assert (= (and b!7481314 c!1381878) b!7481317))

(assert (= (and b!7481314 (not c!1381878)) b!7481322))

(assert (= (and b!7481322 c!1381876) b!7481316))

(assert (= (and b!7481322 (not c!1381876)) b!7481319))

(assert (= (and b!7481316 (not res!3001535)) b!7481315))

(assert (= (and b!7481319 c!1381877) b!7481313))

(assert (= (and b!7481319 (not c!1381877)) b!7481321))

(assert (= (and b!7481313 (not res!3001536)) b!7481318))

(assert (= (or b!7481318 b!7481321) bm!686811))

(assert (= (or b!7481320 b!7481313) bm!686810))

(assert (=> bm!686810 m!8073172))

(declare-fun m!8073326 () Bool)

(assert (=> b!7481315 m!8073326))

(declare-fun m!8073328 () Bool)

(assert (=> b!7481316 m!8073328))

(declare-fun m!8073330 () Bool)

(assert (=> bm!686811 m!8073330))

(assert (=> b!7480979 d!2300146))

(declare-fun bs!1933143 () Bool)

(declare-fun b!7481356 () Bool)

(assert (= bs!1933143 (and b!7481356 b!7480968)))

(declare-fun lambda!463594 () Int)

(assert (=> bs!1933143 (not (= lambda!463594 lambda!463568))))

(declare-fun bs!1933144 () Bool)

(assert (= bs!1933144 (and b!7481356 b!7481321)))

(assert (=> bs!1933144 (not (= lambda!463594 lambda!463593))))

(declare-fun bs!1933145 () Bool)

(assert (= bs!1933145 (and b!7481356 b!7480962)))

(assert (=> bs!1933145 (not (= lambda!463594 lambda!463570))))

(declare-fun bs!1933146 () Bool)

(assert (= bs!1933146 (and b!7481356 b!7481318)))

(assert (=> bs!1933146 (= (and (= (reg!19942 lt!2628187) (reg!19942 r2!5783)) (= lt!2628187 r2!5783)) (= lambda!463594 lambda!463592))))

(declare-fun bs!1933147 () Bool)

(assert (= bs!1933147 (and b!7481356 b!7481279)))

(assert (=> bs!1933147 (= (and (= (reg!19942 lt!2628187) (reg!19942 r1!5845)) (= lt!2628187 r1!5845)) (= lambda!463594 lambda!463589))))

(declare-fun bs!1933148 () Bool)

(assert (= bs!1933148 (and b!7481356 b!7481282)))

(assert (=> bs!1933148 (not (= lambda!463594 lambda!463591))))

(assert (=> bs!1933143 (not (= lambda!463594 lambda!463569))))

(assert (=> bs!1933145 (not (= lambda!463594 lambda!463571))))

(assert (=> b!7481356 true))

(assert (=> b!7481356 true))

(declare-fun bs!1933149 () Bool)

(declare-fun b!7481359 () Bool)

(assert (= bs!1933149 (and b!7481359 b!7481356)))

(declare-fun lambda!463597 () Int)

(assert (=> bs!1933149 (not (= lambda!463597 lambda!463594))))

(declare-fun bs!1933150 () Bool)

(assert (= bs!1933150 (and b!7481359 b!7480968)))

(assert (=> bs!1933150 (not (= lambda!463597 lambda!463568))))

(declare-fun bs!1933151 () Bool)

(assert (= bs!1933151 (and b!7481359 b!7481321)))

(assert (=> bs!1933151 (= (and (= (regOne!39738 lt!2628187) (regOne!39738 r2!5783)) (= (regTwo!39738 lt!2628187) (regTwo!39738 r2!5783))) (= lambda!463597 lambda!463593))))

(declare-fun bs!1933152 () Bool)

(assert (= bs!1933152 (and b!7481359 b!7480962)))

(assert (=> bs!1933152 (not (= lambda!463597 lambda!463570))))

(declare-fun bs!1933153 () Bool)

(assert (= bs!1933153 (and b!7481359 b!7481318)))

(assert (=> bs!1933153 (not (= lambda!463597 lambda!463592))))

(declare-fun bs!1933154 () Bool)

(assert (= bs!1933154 (and b!7481359 b!7481279)))

(assert (=> bs!1933154 (not (= lambda!463597 lambda!463589))))

(declare-fun bs!1933155 () Bool)

(assert (= bs!1933155 (and b!7481359 b!7481282)))

(assert (=> bs!1933155 (= (and (= (regOne!39738 lt!2628187) (regOne!39738 r1!5845)) (= (regTwo!39738 lt!2628187) (regTwo!39738 r1!5845))) (= lambda!463597 lambda!463591))))

(assert (=> bs!1933150 (= (and (= (_1!37641 lt!2628193) s!13591) (= (regOne!39738 lt!2628187) lt!2628187) (= (regTwo!39738 lt!2628187) rTail!78)) (= lambda!463597 lambda!463569))))

(assert (=> bs!1933152 (= (and (= (_1!37641 lt!2628193) s!13591) (= (regOne!39738 lt!2628187) r1!5845) (= (regTwo!39738 lt!2628187) rTail!78)) (= lambda!463597 lambda!463571))))

(assert (=> b!7481359 true))

(assert (=> b!7481359 true))

(declare-fun b!7481351 () Bool)

(declare-fun res!3001554 () Bool)

(declare-fun e!4462470 () Bool)

(assert (=> b!7481351 (=> res!3001554 e!4462470)))

(declare-fun call!686818 () Bool)

(assert (=> b!7481351 (= res!3001554 call!686818)))

(declare-fun e!4462465 () Bool)

(assert (=> b!7481351 (= e!4462465 e!4462470)))

(declare-fun b!7481352 () Bool)

(declare-fun c!1381888 () Bool)

(assert (=> b!7481352 (= c!1381888 ((_ is ElementMatch!19613) lt!2628187))))

(declare-fun e!4462468 () Bool)

(declare-fun e!4462467 () Bool)

(assert (=> b!7481352 (= e!4462468 e!4462467)))

(declare-fun bm!686812 () Bool)

(assert (=> bm!686812 (= call!686818 (isEmpty!41216 (_1!37641 lt!2628193)))))

(declare-fun b!7481353 () Bool)

(declare-fun e!4462471 () Bool)

(assert (=> b!7481353 (= e!4462471 (matchRSpec!4292 (regTwo!39739 lt!2628187) (_1!37641 lt!2628193)))))

(declare-fun b!7481354 () Bool)

(declare-fun e!4462469 () Bool)

(assert (=> b!7481354 (= e!4462469 e!4462471)))

(declare-fun res!3001553 () Bool)

(assert (=> b!7481354 (= res!3001553 (matchRSpec!4292 (regOne!39739 lt!2628187) (_1!37641 lt!2628193)))))

(assert (=> b!7481354 (=> res!3001553 e!4462471)))

(declare-fun b!7481355 () Bool)

(assert (=> b!7481355 (= e!4462467 (= (_1!37641 lt!2628193) (Cons!72205 (c!1381792 lt!2628187) Nil!72205)))))

(declare-fun call!686817 () Bool)

(assert (=> b!7481356 (= e!4462470 call!686817)))

(declare-fun b!7481358 () Bool)

(declare-fun e!4462466 () Bool)

(assert (=> b!7481358 (= e!4462466 call!686818)))

(assert (=> b!7481359 (= e!4462465 call!686817)))

(declare-fun c!1381887 () Bool)

(declare-fun bm!686813 () Bool)

(assert (=> bm!686813 (= call!686817 (Exists!4232 (ite c!1381887 lambda!463594 lambda!463597)))))

(declare-fun b!7481360 () Bool)

(declare-fun c!1381886 () Bool)

(assert (=> b!7481360 (= c!1381886 ((_ is Union!19613) lt!2628187))))

(assert (=> b!7481360 (= e!4462467 e!4462469)))

(declare-fun b!7481361 () Bool)

(assert (=> b!7481361 (= e!4462466 e!4462468)))

(declare-fun res!3001552 () Bool)

(assert (=> b!7481361 (= res!3001552 (not ((_ is EmptyLang!19613) lt!2628187)))))

(assert (=> b!7481361 (=> (not res!3001552) (not e!4462468))))

(declare-fun d!2300150 () Bool)

(declare-fun c!1381889 () Bool)

(assert (=> d!2300150 (= c!1381889 ((_ is EmptyExpr!19613) lt!2628187))))

(assert (=> d!2300150 (= (matchRSpec!4292 lt!2628187 (_1!37641 lt!2628193)) e!4462466)))

(declare-fun b!7481357 () Bool)

(assert (=> b!7481357 (= e!4462469 e!4462465)))

(assert (=> b!7481357 (= c!1381887 ((_ is Star!19613) lt!2628187))))

(assert (= (and d!2300150 c!1381889) b!7481358))

(assert (= (and d!2300150 (not c!1381889)) b!7481361))

(assert (= (and b!7481361 res!3001552) b!7481352))

(assert (= (and b!7481352 c!1381888) b!7481355))

(assert (= (and b!7481352 (not c!1381888)) b!7481360))

(assert (= (and b!7481360 c!1381886) b!7481354))

(assert (= (and b!7481360 (not c!1381886)) b!7481357))

(assert (= (and b!7481354 (not res!3001553)) b!7481353))

(assert (= (and b!7481357 c!1381887) b!7481351))

(assert (= (and b!7481357 (not c!1381887)) b!7481359))

(assert (= (and b!7481351 (not res!3001554)) b!7481356))

(assert (= (or b!7481356 b!7481359) bm!686813))

(assert (= (or b!7481358 b!7481351) bm!686812))

(assert (=> bm!686812 m!8073172))

(declare-fun m!8073332 () Bool)

(assert (=> b!7481353 m!8073332))

(declare-fun m!8073334 () Bool)

(assert (=> b!7481354 m!8073334))

(declare-fun m!8073340 () Bool)

(assert (=> bm!686813 m!8073340))

(assert (=> b!7480979 d!2300150))

(declare-fun d!2300152 () Bool)

(assert (=> d!2300152 (= (matchR!9377 r1!5845 (_1!37641 lt!2628193)) (matchRSpec!4292 r1!5845 (_1!37641 lt!2628193)))))

(declare-fun lt!2628237 () Unit!166061)

(assert (=> d!2300152 (= lt!2628237 (choose!57835 r1!5845 (_1!37641 lt!2628193)))))

(assert (=> d!2300152 (validRegex!10127 r1!5845)))

(assert (=> d!2300152 (= (mainMatchTheorem!4286 r1!5845 (_1!37641 lt!2628193)) lt!2628237)))

(declare-fun bs!1933169 () Bool)

(assert (= bs!1933169 d!2300152))

(assert (=> bs!1933169 m!8073102))

(assert (=> bs!1933169 m!8073080))

(declare-fun m!8073344 () Bool)

(assert (=> bs!1933169 m!8073344))

(assert (=> bs!1933169 m!8073126))

(assert (=> b!7480979 d!2300152))

(declare-fun d!2300156 () Bool)

(assert (=> d!2300156 (= (matchR!9377 lt!2628187 (_1!37641 lt!2628193)) (matchRSpec!4292 lt!2628187 (_1!37641 lt!2628193)))))

(declare-fun lt!2628239 () Unit!166061)

(assert (=> d!2300156 (= lt!2628239 (choose!57835 lt!2628187 (_1!37641 lt!2628193)))))

(assert (=> d!2300156 (validRegex!10127 lt!2628187)))

(assert (=> d!2300156 (= (mainMatchTheorem!4286 lt!2628187 (_1!37641 lt!2628193)) lt!2628239)))

(declare-fun bs!1933170 () Bool)

(assert (= bs!1933170 d!2300156))

(assert (=> bs!1933170 m!8073094))

(assert (=> bs!1933170 m!8073088))

(declare-fun m!8073346 () Bool)

(assert (=> bs!1933170 m!8073346))

(assert (=> bs!1933170 m!8073184))

(assert (=> b!7480979 d!2300156))

(declare-fun d!2300158 () Bool)

(declare-fun choose!57836 (Int) Bool)

(assert (=> d!2300158 (= (Exists!4232 lambda!463568) (choose!57836 lambda!463568))))

(declare-fun bs!1933172 () Bool)

(assert (= bs!1933172 d!2300158))

(declare-fun m!8073356 () Bool)

(assert (=> bs!1933172 m!8073356))

(assert (=> b!7480968 d!2300158))

(declare-fun d!2300164 () Bool)

(declare-fun isEmpty!41217 (Option!17170) Bool)

(assert (=> d!2300164 (= (isDefined!13859 (findConcatSeparation!3292 lt!2628187 rTail!78 Nil!72205 s!13591 s!13591)) (not (isEmpty!41217 (findConcatSeparation!3292 lt!2628187 rTail!78 Nil!72205 s!13591 s!13591))))))

(declare-fun bs!1933174 () Bool)

(assert (= bs!1933174 d!2300164))

(assert (=> bs!1933174 m!8073138))

(declare-fun m!8073360 () Bool)

(assert (=> bs!1933174 m!8073360))

(assert (=> b!7480968 d!2300164))

(declare-fun b!7481456 () Bool)

(declare-fun e!4462523 () Option!17170)

(assert (=> b!7481456 (= e!4462523 (Some!17169 (tuple2!68677 Nil!72205 s!13591)))))

(declare-fun b!7481457 () Bool)

(declare-fun e!4462526 () Option!17170)

(assert (=> b!7481457 (= e!4462523 e!4462526)))

(declare-fun c!1381911 () Bool)

(assert (=> b!7481457 (= c!1381911 ((_ is Nil!72205) s!13591))))

(declare-fun b!7481458 () Bool)

(declare-fun res!3001608 () Bool)

(declare-fun e!4462527 () Bool)

(assert (=> b!7481458 (=> (not res!3001608) (not e!4462527))))

(declare-fun lt!2628252 () Option!17170)

(assert (=> b!7481458 (= res!3001608 (matchR!9377 lt!2628187 (_1!37641 (get!25283 lt!2628252))))))

(declare-fun b!7481459 () Bool)

(declare-fun e!4462524 () Bool)

(assert (=> b!7481459 (= e!4462524 (matchR!9377 rTail!78 s!13591))))

(declare-fun d!2300170 () Bool)

(declare-fun e!4462525 () Bool)

(assert (=> d!2300170 e!4462525))

(declare-fun res!3001610 () Bool)

(assert (=> d!2300170 (=> res!3001610 e!4462525)))

(assert (=> d!2300170 (= res!3001610 e!4462527)))

(declare-fun res!3001611 () Bool)

(assert (=> d!2300170 (=> (not res!3001611) (not e!4462527))))

(assert (=> d!2300170 (= res!3001611 (isDefined!13859 lt!2628252))))

(assert (=> d!2300170 (= lt!2628252 e!4462523)))

(declare-fun c!1381912 () Bool)

(assert (=> d!2300170 (= c!1381912 e!4462524)))

(declare-fun res!3001607 () Bool)

(assert (=> d!2300170 (=> (not res!3001607) (not e!4462524))))

(assert (=> d!2300170 (= res!3001607 (matchR!9377 lt!2628187 Nil!72205))))

(assert (=> d!2300170 (validRegex!10127 lt!2628187)))

(assert (=> d!2300170 (= (findConcatSeparation!3292 lt!2628187 rTail!78 Nil!72205 s!13591 s!13591) lt!2628252)))

(declare-fun b!7481460 () Bool)

(declare-fun ++!17226 (List!72329 List!72329) List!72329)

(assert (=> b!7481460 (= e!4462527 (= (++!17226 (_1!37641 (get!25283 lt!2628252)) (_2!37641 (get!25283 lt!2628252))) s!13591))))

(declare-fun b!7481461 () Bool)

(declare-fun res!3001609 () Bool)

(assert (=> b!7481461 (=> (not res!3001609) (not e!4462527))))

(assert (=> b!7481461 (= res!3001609 (matchR!9377 rTail!78 (_2!37641 (get!25283 lt!2628252))))))

(declare-fun b!7481462 () Bool)

(assert (=> b!7481462 (= e!4462526 None!17169)))

(declare-fun b!7481463 () Bool)

(assert (=> b!7481463 (= e!4462525 (not (isDefined!13859 lt!2628252)))))

(declare-fun b!7481464 () Bool)

(declare-fun lt!2628253 () Unit!166061)

(declare-fun lt!2628251 () Unit!166061)

(assert (=> b!7481464 (= lt!2628253 lt!2628251)))

(assert (=> b!7481464 (= (++!17226 (++!17226 Nil!72205 (Cons!72205 (h!78653 s!13591) Nil!72205)) (t!386898 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3102 (List!72329 C!39500 List!72329 List!72329) Unit!166061)

(assert (=> b!7481464 (= lt!2628251 (lemmaMoveElementToOtherListKeepsConcatEq!3102 Nil!72205 (h!78653 s!13591) (t!386898 s!13591) s!13591))))

(assert (=> b!7481464 (= e!4462526 (findConcatSeparation!3292 lt!2628187 rTail!78 (++!17226 Nil!72205 (Cons!72205 (h!78653 s!13591) Nil!72205)) (t!386898 s!13591) s!13591))))

(assert (= (and d!2300170 res!3001607) b!7481459))

(assert (= (and d!2300170 c!1381912) b!7481456))

(assert (= (and d!2300170 (not c!1381912)) b!7481457))

(assert (= (and b!7481457 c!1381911) b!7481462))

(assert (= (and b!7481457 (not c!1381911)) b!7481464))

(assert (= (and d!2300170 res!3001611) b!7481458))

(assert (= (and b!7481458 res!3001608) b!7481461))

(assert (= (and b!7481461 res!3001609) b!7481460))

(assert (= (and d!2300170 (not res!3001610)) b!7481463))

(declare-fun m!8073402 () Bool)

(assert (=> b!7481460 m!8073402))

(declare-fun m!8073404 () Bool)

(assert (=> b!7481460 m!8073404))

(assert (=> b!7481458 m!8073402))

(declare-fun m!8073406 () Bool)

(assert (=> b!7481458 m!8073406))

(declare-fun m!8073408 () Bool)

(assert (=> d!2300170 m!8073408))

(declare-fun m!8073410 () Bool)

(assert (=> d!2300170 m!8073410))

(assert (=> d!2300170 m!8073184))

(assert (=> b!7481461 m!8073402))

(declare-fun m!8073412 () Bool)

(assert (=> b!7481461 m!8073412))

(declare-fun m!8073414 () Bool)

(assert (=> b!7481459 m!8073414))

(assert (=> b!7481463 m!8073408))

(declare-fun m!8073416 () Bool)

(assert (=> b!7481464 m!8073416))

(assert (=> b!7481464 m!8073416))

(declare-fun m!8073418 () Bool)

(assert (=> b!7481464 m!8073418))

(declare-fun m!8073420 () Bool)

(assert (=> b!7481464 m!8073420))

(assert (=> b!7481464 m!8073416))

(declare-fun m!8073422 () Bool)

(assert (=> b!7481464 m!8073422))

(assert (=> b!7480968 d!2300170))

(declare-fun bs!1933296 () Bool)

(declare-fun d!2300188 () Bool)

(assert (= bs!1933296 (and d!2300188 b!7481356)))

(declare-fun lambda!463616 () Int)

(assert (=> bs!1933296 (not (= lambda!463616 lambda!463594))))

(declare-fun bs!1933297 () Bool)

(assert (= bs!1933297 (and d!2300188 b!7480968)))

(assert (=> bs!1933297 (= lambda!463616 lambda!463568)))

(declare-fun bs!1933298 () Bool)

(assert (= bs!1933298 (and d!2300188 b!7481321)))

(assert (=> bs!1933298 (not (= lambda!463616 lambda!463593))))

(declare-fun bs!1933299 () Bool)

(assert (= bs!1933299 (and d!2300188 b!7480962)))

(assert (=> bs!1933299 (= (= lt!2628187 r1!5845) (= lambda!463616 lambda!463570))))

(declare-fun bs!1933300 () Bool)

(assert (= bs!1933300 (and d!2300188 b!7481318)))

(assert (=> bs!1933300 (not (= lambda!463616 lambda!463592))))

(declare-fun bs!1933301 () Bool)

(assert (= bs!1933301 (and d!2300188 b!7481279)))

(assert (=> bs!1933301 (not (= lambda!463616 lambda!463589))))

(declare-fun bs!1933302 () Bool)

(assert (= bs!1933302 (and d!2300188 b!7481359)))

(assert (=> bs!1933302 (not (= lambda!463616 lambda!463597))))

(declare-fun bs!1933303 () Bool)

(assert (= bs!1933303 (and d!2300188 b!7481282)))

(assert (=> bs!1933303 (not (= lambda!463616 lambda!463591))))

(assert (=> bs!1933297 (not (= lambda!463616 lambda!463569))))

(assert (=> bs!1933299 (not (= lambda!463616 lambda!463571))))

(assert (=> d!2300188 true))

(assert (=> d!2300188 true))

(assert (=> d!2300188 true))

(declare-fun lambda!463617 () Int)

(assert (=> bs!1933296 (not (= lambda!463617 lambda!463594))))

(assert (=> bs!1933297 (not (= lambda!463617 lambda!463568))))

(assert (=> bs!1933298 (= (and (= s!13591 (_1!37641 lt!2628193)) (= lt!2628187 (regOne!39738 r2!5783)) (= rTail!78 (regTwo!39738 r2!5783))) (= lambda!463617 lambda!463593))))

(assert (=> bs!1933299 (not (= lambda!463617 lambda!463570))))

(assert (=> bs!1933300 (not (= lambda!463617 lambda!463592))))

(assert (=> bs!1933301 (not (= lambda!463617 lambda!463589))))

(assert (=> bs!1933302 (= (and (= s!13591 (_1!37641 lt!2628193)) (= lt!2628187 (regOne!39738 lt!2628187)) (= rTail!78 (regTwo!39738 lt!2628187))) (= lambda!463617 lambda!463597))))

(assert (=> bs!1933297 (= lambda!463617 lambda!463569)))

(assert (=> bs!1933299 (= (= lt!2628187 r1!5845) (= lambda!463617 lambda!463571))))

(assert (=> bs!1933303 (= (and (= s!13591 (_1!37641 lt!2628193)) (= lt!2628187 (regOne!39738 r1!5845)) (= rTail!78 (regTwo!39738 r1!5845))) (= lambda!463617 lambda!463591))))

(declare-fun bs!1933304 () Bool)

(assert (= bs!1933304 d!2300188))

(assert (=> bs!1933304 (not (= lambda!463617 lambda!463616))))

(assert (=> d!2300188 true))

(assert (=> d!2300188 true))

(assert (=> d!2300188 true))

(assert (=> d!2300188 (= (Exists!4232 lambda!463616) (Exists!4232 lambda!463617))))

(declare-fun lt!2628263 () Unit!166061)

(declare-fun choose!57837 (Regex!19613 Regex!19613 List!72329) Unit!166061)

(assert (=> d!2300188 (= lt!2628263 (choose!57837 lt!2628187 rTail!78 s!13591))))

(assert (=> d!2300188 (validRegex!10127 lt!2628187)))

(assert (=> d!2300188 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2566 lt!2628187 rTail!78 s!13591) lt!2628263)))

(declare-fun m!8073454 () Bool)

(assert (=> bs!1933304 m!8073454))

(declare-fun m!8073456 () Bool)

(assert (=> bs!1933304 m!8073456))

(declare-fun m!8073458 () Bool)

(assert (=> bs!1933304 m!8073458))

(assert (=> bs!1933304 m!8073184))

(assert (=> b!7480968 d!2300188))

(declare-fun bs!1933305 () Bool)

(declare-fun d!2300200 () Bool)

(assert (= bs!1933305 (and d!2300200 b!7481356)))

(declare-fun lambda!463620 () Int)

(assert (=> bs!1933305 (not (= lambda!463620 lambda!463594))))

(declare-fun bs!1933306 () Bool)

(assert (= bs!1933306 (and d!2300200 b!7480968)))

(assert (=> bs!1933306 (= lambda!463620 lambda!463568)))

(declare-fun bs!1933307 () Bool)

(assert (= bs!1933307 (and d!2300200 b!7481321)))

(assert (=> bs!1933307 (not (= lambda!463620 lambda!463593))))

(declare-fun bs!1933308 () Bool)

(assert (= bs!1933308 (and d!2300200 b!7480962)))

(assert (=> bs!1933308 (= (= lt!2628187 r1!5845) (= lambda!463620 lambda!463570))))

(declare-fun bs!1933309 () Bool)

(assert (= bs!1933309 (and d!2300200 b!7481318)))

(assert (=> bs!1933309 (not (= lambda!463620 lambda!463592))))

(declare-fun bs!1933310 () Bool)

(assert (= bs!1933310 (and d!2300200 b!7481279)))

(assert (=> bs!1933310 (not (= lambda!463620 lambda!463589))))

(declare-fun bs!1933311 () Bool)

(assert (= bs!1933311 (and d!2300200 b!7481359)))

(assert (=> bs!1933311 (not (= lambda!463620 lambda!463597))))

(declare-fun bs!1933312 () Bool)

(assert (= bs!1933312 (and d!2300200 d!2300188)))

(assert (=> bs!1933312 (not (= lambda!463620 lambda!463617))))

(assert (=> bs!1933306 (not (= lambda!463620 lambda!463569))))

(assert (=> bs!1933308 (not (= lambda!463620 lambda!463571))))

(declare-fun bs!1933313 () Bool)

(assert (= bs!1933313 (and d!2300200 b!7481282)))

(assert (=> bs!1933313 (not (= lambda!463620 lambda!463591))))

(assert (=> bs!1933312 (= lambda!463620 lambda!463616)))

(assert (=> d!2300200 true))

(assert (=> d!2300200 true))

(assert (=> d!2300200 true))

(assert (=> d!2300200 (= (isDefined!13859 (findConcatSeparation!3292 lt!2628187 rTail!78 Nil!72205 s!13591 s!13591)) (Exists!4232 lambda!463620))))

(declare-fun lt!2628266 () Unit!166061)

(declare-fun choose!57838 (Regex!19613 Regex!19613 List!72329) Unit!166061)

(assert (=> d!2300200 (= lt!2628266 (choose!57838 lt!2628187 rTail!78 s!13591))))

(assert (=> d!2300200 (validRegex!10127 lt!2628187)))

(assert (=> d!2300200 (= (lemmaFindConcatSeparationEquivalentToExists!3050 lt!2628187 rTail!78 s!13591) lt!2628266)))

(declare-fun bs!1933314 () Bool)

(assert (= bs!1933314 d!2300200))

(declare-fun m!8073460 () Bool)

(assert (=> bs!1933314 m!8073460))

(assert (=> bs!1933314 m!8073138))

(assert (=> bs!1933314 m!8073184))

(assert (=> bs!1933314 m!8073138))

(assert (=> bs!1933314 m!8073142))

(declare-fun m!8073462 () Bool)

(assert (=> bs!1933314 m!8073462))

(assert (=> b!7480968 d!2300200))

(declare-fun d!2300202 () Bool)

(assert (=> d!2300202 (= (Exists!4232 lambda!463569) (choose!57836 lambda!463569))))

(declare-fun bs!1933315 () Bool)

(assert (= bs!1933315 d!2300202))

(declare-fun m!8073464 () Bool)

(assert (=> bs!1933315 m!8073464))

(assert (=> b!7480968 d!2300202))

(declare-fun b!7481579 () Bool)

(declare-fun e!4462578 () Bool)

(declare-fun e!4462575 () Bool)

(assert (=> b!7481579 (= e!4462578 e!4462575)))

(declare-fun res!3001640 () Bool)

(assert (=> b!7481579 (=> (not res!3001640) (not e!4462575))))

(declare-fun call!686832 () Bool)

(assert (=> b!7481579 (= res!3001640 call!686832)))

(declare-fun b!7481580 () Bool)

(declare-fun e!4462577 () Bool)

(declare-fun call!686833 () Bool)

(assert (=> b!7481580 (= e!4462577 call!686833)))

(declare-fun b!7481581 () Bool)

(declare-fun e!4462579 () Bool)

(assert (=> b!7481581 (= e!4462579 e!4462577)))

(declare-fun res!3001639 () Bool)

(assert (=> b!7481581 (= res!3001639 (not (nullable!8551 (reg!19942 r1!5845))))))

(assert (=> b!7481581 (=> (not res!3001639) (not e!4462577))))

(declare-fun bm!686827 () Bool)

(declare-fun call!686834 () Bool)

(assert (=> bm!686827 (= call!686834 call!686833)))

(declare-fun b!7481582 () Bool)

(declare-fun e!4462573 () Bool)

(assert (=> b!7481582 (= e!4462579 e!4462573)))

(declare-fun c!1381920 () Bool)

(assert (=> b!7481582 (= c!1381920 ((_ is Union!19613) r1!5845))))

(declare-fun b!7481583 () Bool)

(assert (=> b!7481583 (= e!4462575 call!686834)))

(declare-fun bm!686828 () Bool)

(assert (=> bm!686828 (= call!686832 (validRegex!10127 (ite c!1381920 (regOne!39739 r1!5845) (regOne!39738 r1!5845))))))

(declare-fun b!7481584 () Bool)

(declare-fun res!3001641 () Bool)

(declare-fun e!4462576 () Bool)

(assert (=> b!7481584 (=> (not res!3001641) (not e!4462576))))

(assert (=> b!7481584 (= res!3001641 call!686832)))

(assert (=> b!7481584 (= e!4462573 e!4462576)))

(declare-fun d!2300204 () Bool)

(declare-fun res!3001643 () Bool)

(declare-fun e!4462574 () Bool)

(assert (=> d!2300204 (=> res!3001643 e!4462574)))

(assert (=> d!2300204 (= res!3001643 ((_ is ElementMatch!19613) r1!5845))))

(assert (=> d!2300204 (= (validRegex!10127 r1!5845) e!4462574)))

(declare-fun b!7481585 () Bool)

(assert (=> b!7481585 (= e!4462576 call!686834)))

(declare-fun b!7481586 () Bool)

(assert (=> b!7481586 (= e!4462574 e!4462579)))

(declare-fun c!1381919 () Bool)

(assert (=> b!7481586 (= c!1381919 ((_ is Star!19613) r1!5845))))

(declare-fun b!7481587 () Bool)

(declare-fun res!3001642 () Bool)

(assert (=> b!7481587 (=> res!3001642 e!4462578)))

(assert (=> b!7481587 (= res!3001642 (not ((_ is Concat!28458) r1!5845)))))

(assert (=> b!7481587 (= e!4462573 e!4462578)))

(declare-fun bm!686829 () Bool)

(assert (=> bm!686829 (= call!686833 (validRegex!10127 (ite c!1381919 (reg!19942 r1!5845) (ite c!1381920 (regTwo!39739 r1!5845) (regTwo!39738 r1!5845)))))))

(assert (= (and d!2300204 (not res!3001643)) b!7481586))

(assert (= (and b!7481586 c!1381919) b!7481581))

(assert (= (and b!7481586 (not c!1381919)) b!7481582))

(assert (= (and b!7481581 res!3001639) b!7481580))

(assert (= (and b!7481582 c!1381920) b!7481584))

(assert (= (and b!7481582 (not c!1381920)) b!7481587))

(assert (= (and b!7481584 res!3001641) b!7481585))

(assert (= (and b!7481587 (not res!3001642)) b!7481579))

(assert (= (and b!7481579 res!3001640) b!7481583))

(assert (= (or b!7481585 b!7481583) bm!686827))

(assert (= (or b!7481584 b!7481579) bm!686828))

(assert (= (or b!7481580 bm!686827) bm!686829))

(declare-fun m!8073466 () Bool)

(assert (=> b!7481581 m!8073466))

(declare-fun m!8073468 () Bool)

(assert (=> bm!686828 m!8073468))

(declare-fun m!8073470 () Bool)

(assert (=> bm!686829 m!8073470))

(assert (=> start!724778 d!2300204))

(declare-fun b!7481588 () Bool)

(declare-fun e!4462580 () Option!17170)

(assert (=> b!7481588 (= e!4462580 (Some!17169 (tuple2!68677 Nil!72205 s!13591)))))

(declare-fun b!7481589 () Bool)

(declare-fun e!4462583 () Option!17170)

(assert (=> b!7481589 (= e!4462580 e!4462583)))

(declare-fun c!1381921 () Bool)

(assert (=> b!7481589 (= c!1381921 ((_ is Nil!72205) s!13591))))

(declare-fun b!7481590 () Bool)

(declare-fun res!3001645 () Bool)

(declare-fun e!4462584 () Bool)

(assert (=> b!7481590 (=> (not res!3001645) (not e!4462584))))

(declare-fun lt!2628268 () Option!17170)

(assert (=> b!7481590 (= res!3001645 (matchR!9377 r1!5845 (_1!37641 (get!25283 lt!2628268))))))

(declare-fun b!7481591 () Bool)

(declare-fun e!4462581 () Bool)

(assert (=> b!7481591 (= e!4462581 (matchR!9377 rTail!78 s!13591))))

(declare-fun d!2300206 () Bool)

(declare-fun e!4462582 () Bool)

(assert (=> d!2300206 e!4462582))

(declare-fun res!3001647 () Bool)

(assert (=> d!2300206 (=> res!3001647 e!4462582)))

(assert (=> d!2300206 (= res!3001647 e!4462584)))

(declare-fun res!3001648 () Bool)

(assert (=> d!2300206 (=> (not res!3001648) (not e!4462584))))

(assert (=> d!2300206 (= res!3001648 (isDefined!13859 lt!2628268))))

(assert (=> d!2300206 (= lt!2628268 e!4462580)))

(declare-fun c!1381922 () Bool)

(assert (=> d!2300206 (= c!1381922 e!4462581)))

(declare-fun res!3001644 () Bool)

(assert (=> d!2300206 (=> (not res!3001644) (not e!4462581))))

(assert (=> d!2300206 (= res!3001644 (matchR!9377 r1!5845 Nil!72205))))

(assert (=> d!2300206 (validRegex!10127 r1!5845)))

(assert (=> d!2300206 (= (findConcatSeparation!3292 r1!5845 rTail!78 Nil!72205 s!13591 s!13591) lt!2628268)))

(declare-fun b!7481592 () Bool)

(assert (=> b!7481592 (= e!4462584 (= (++!17226 (_1!37641 (get!25283 lt!2628268)) (_2!37641 (get!25283 lt!2628268))) s!13591))))

(declare-fun b!7481593 () Bool)

(declare-fun res!3001646 () Bool)

(assert (=> b!7481593 (=> (not res!3001646) (not e!4462584))))

(assert (=> b!7481593 (= res!3001646 (matchR!9377 rTail!78 (_2!37641 (get!25283 lt!2628268))))))

(declare-fun b!7481594 () Bool)

(assert (=> b!7481594 (= e!4462583 None!17169)))

(declare-fun b!7481595 () Bool)

(assert (=> b!7481595 (= e!4462582 (not (isDefined!13859 lt!2628268)))))

(declare-fun b!7481596 () Bool)

(declare-fun lt!2628269 () Unit!166061)

(declare-fun lt!2628267 () Unit!166061)

(assert (=> b!7481596 (= lt!2628269 lt!2628267)))

(assert (=> b!7481596 (= (++!17226 (++!17226 Nil!72205 (Cons!72205 (h!78653 s!13591) Nil!72205)) (t!386898 s!13591)) s!13591)))

(assert (=> b!7481596 (= lt!2628267 (lemmaMoveElementToOtherListKeepsConcatEq!3102 Nil!72205 (h!78653 s!13591) (t!386898 s!13591) s!13591))))

(assert (=> b!7481596 (= e!4462583 (findConcatSeparation!3292 r1!5845 rTail!78 (++!17226 Nil!72205 (Cons!72205 (h!78653 s!13591) Nil!72205)) (t!386898 s!13591) s!13591))))

(assert (= (and d!2300206 res!3001644) b!7481591))

(assert (= (and d!2300206 c!1381922) b!7481588))

(assert (= (and d!2300206 (not c!1381922)) b!7481589))

(assert (= (and b!7481589 c!1381921) b!7481594))

(assert (= (and b!7481589 (not c!1381921)) b!7481596))

(assert (= (and d!2300206 res!3001648) b!7481590))

(assert (= (and b!7481590 res!3001645) b!7481593))

(assert (= (and b!7481593 res!3001646) b!7481592))

(assert (= (and d!2300206 (not res!3001647)) b!7481595))

(declare-fun m!8073472 () Bool)

(assert (=> b!7481592 m!8073472))

(declare-fun m!8073474 () Bool)

(assert (=> b!7481592 m!8073474))

(assert (=> b!7481590 m!8073472))

(declare-fun m!8073476 () Bool)

(assert (=> b!7481590 m!8073476))

(declare-fun m!8073478 () Bool)

(assert (=> d!2300206 m!8073478))

(declare-fun m!8073480 () Bool)

(assert (=> d!2300206 m!8073480))

(assert (=> d!2300206 m!8073126))

(assert (=> b!7481593 m!8073472))

(declare-fun m!8073482 () Bool)

(assert (=> b!7481593 m!8073482))

(assert (=> b!7481591 m!8073414))

(assert (=> b!7481595 m!8073478))

(assert (=> b!7481596 m!8073416))

(assert (=> b!7481596 m!8073416))

(assert (=> b!7481596 m!8073418))

(assert (=> b!7481596 m!8073420))

(assert (=> b!7481596 m!8073416))

(declare-fun m!8073484 () Bool)

(assert (=> b!7481596 m!8073484))

(assert (=> b!7480962 d!2300206))

(declare-fun bm!686830 () Bool)

(declare-fun call!686835 () Bool)

(assert (=> bm!686830 (= call!686835 (isEmpty!41216 (_1!37641 lt!2628193)))))

(declare-fun b!7481597 () Bool)

(declare-fun e!4462588 () Bool)

(declare-fun lt!2628270 () Bool)

(assert (=> b!7481597 (= e!4462588 (= lt!2628270 call!686835))))

(declare-fun b!7481598 () Bool)

(declare-fun e!4462586 () Bool)

(declare-fun e!4462591 () Bool)

(assert (=> b!7481598 (= e!4462586 e!4462591)))

(declare-fun res!3001651 () Bool)

(assert (=> b!7481598 (=> (not res!3001651) (not e!4462591))))

(assert (=> b!7481598 (= res!3001651 (not lt!2628270))))

(declare-fun b!7481599 () Bool)

(declare-fun res!3001655 () Bool)

(assert (=> b!7481599 (=> res!3001655 e!4462586)))

(assert (=> b!7481599 (= res!3001655 (not ((_ is ElementMatch!19613) r1!5845)))))

(declare-fun e!4462590 () Bool)

(assert (=> b!7481599 (= e!4462590 e!4462586)))

(declare-fun b!7481600 () Bool)

(declare-fun e!4462589 () Bool)

(assert (=> b!7481600 (= e!4462589 (matchR!9377 (derivativeStep!5610 r1!5845 (head!15350 (_1!37641 lt!2628193))) (tail!14919 (_1!37641 lt!2628193))))))

(declare-fun b!7481601 () Bool)

(declare-fun res!3001654 () Bool)

(declare-fun e!4462587 () Bool)

(assert (=> b!7481601 (=> (not res!3001654) (not e!4462587))))

(assert (=> b!7481601 (= res!3001654 (not call!686835))))

(declare-fun b!7481602 () Bool)

(assert (=> b!7481602 (= e!4462587 (= (head!15350 (_1!37641 lt!2628193)) (c!1381792 r1!5845)))))

(declare-fun d!2300208 () Bool)

(assert (=> d!2300208 e!4462588))

(declare-fun c!1381925 () Bool)

(assert (=> d!2300208 (= c!1381925 ((_ is EmptyExpr!19613) r1!5845))))

(assert (=> d!2300208 (= lt!2628270 e!4462589)))

(declare-fun c!1381924 () Bool)

(assert (=> d!2300208 (= c!1381924 (isEmpty!41216 (_1!37641 lt!2628193)))))

(assert (=> d!2300208 (validRegex!10127 r1!5845)))

(assert (=> d!2300208 (= (matchR!9377 r1!5845 (_1!37641 lt!2628193)) lt!2628270)))

(declare-fun b!7481603 () Bool)

(declare-fun res!3001653 () Bool)

(assert (=> b!7481603 (=> res!3001653 e!4462586)))

(assert (=> b!7481603 (= res!3001653 e!4462587)))

(declare-fun res!3001652 () Bool)

(assert (=> b!7481603 (=> (not res!3001652) (not e!4462587))))

(assert (=> b!7481603 (= res!3001652 lt!2628270)))

(declare-fun b!7481604 () Bool)

(declare-fun e!4462585 () Bool)

(assert (=> b!7481604 (= e!4462591 e!4462585)))

(declare-fun res!3001650 () Bool)

(assert (=> b!7481604 (=> res!3001650 e!4462585)))

(assert (=> b!7481604 (= res!3001650 call!686835)))

(declare-fun b!7481605 () Bool)

(declare-fun res!3001656 () Bool)

(assert (=> b!7481605 (=> (not res!3001656) (not e!4462587))))

(assert (=> b!7481605 (= res!3001656 (isEmpty!41216 (tail!14919 (_1!37641 lt!2628193))))))

(declare-fun b!7481606 () Bool)

(assert (=> b!7481606 (= e!4462588 e!4462590)))

(declare-fun c!1381923 () Bool)

(assert (=> b!7481606 (= c!1381923 ((_ is EmptyLang!19613) r1!5845))))

(declare-fun b!7481607 () Bool)

(assert (=> b!7481607 (= e!4462590 (not lt!2628270))))

(declare-fun b!7481608 () Bool)

(assert (=> b!7481608 (= e!4462585 (not (= (head!15350 (_1!37641 lt!2628193)) (c!1381792 r1!5845))))))

(declare-fun b!7481609 () Bool)

(declare-fun res!3001649 () Bool)

(assert (=> b!7481609 (=> res!3001649 e!4462585)))

(assert (=> b!7481609 (= res!3001649 (not (isEmpty!41216 (tail!14919 (_1!37641 lt!2628193)))))))

(declare-fun b!7481610 () Bool)

(assert (=> b!7481610 (= e!4462589 (nullable!8551 r1!5845))))

(assert (= (and d!2300208 c!1381924) b!7481610))

(assert (= (and d!2300208 (not c!1381924)) b!7481600))

(assert (= (and d!2300208 c!1381925) b!7481597))

(assert (= (and d!2300208 (not c!1381925)) b!7481606))

(assert (= (and b!7481606 c!1381923) b!7481607))

(assert (= (and b!7481606 (not c!1381923)) b!7481599))

(assert (= (and b!7481599 (not res!3001655)) b!7481603))

(assert (= (and b!7481603 res!3001652) b!7481601))

(assert (= (and b!7481601 res!3001654) b!7481605))

(assert (= (and b!7481605 res!3001656) b!7481602))

(assert (= (and b!7481603 (not res!3001653)) b!7481598))

(assert (= (and b!7481598 res!3001651) b!7481604))

(assert (= (and b!7481604 (not res!3001650)) b!7481609))

(assert (= (and b!7481609 (not res!3001649)) b!7481608))

(assert (= (or b!7481597 b!7481601 b!7481604) bm!686830))

(assert (=> bm!686830 m!8073172))

(assert (=> b!7481602 m!8073174))

(declare-fun m!8073486 () Bool)

(assert (=> b!7481610 m!8073486))

(assert (=> b!7481600 m!8073174))

(assert (=> b!7481600 m!8073174))

(declare-fun m!8073488 () Bool)

(assert (=> b!7481600 m!8073488))

(assert (=> b!7481600 m!8073180))

(assert (=> b!7481600 m!8073488))

(assert (=> b!7481600 m!8073180))

(declare-fun m!8073490 () Bool)

(assert (=> b!7481600 m!8073490))

(assert (=> d!2300208 m!8073172))

(assert (=> d!2300208 m!8073126))

(assert (=> b!7481608 m!8073174))

(assert (=> b!7481605 m!8073180))

(assert (=> b!7481605 m!8073180))

(assert (=> b!7481605 m!8073186))

(assert (=> b!7481609 m!8073180))

(assert (=> b!7481609 m!8073180))

(assert (=> b!7481609 m!8073186))

(assert (=> b!7480962 d!2300208))

(declare-fun d!2300210 () Bool)

(assert (=> d!2300210 (= (get!25283 lt!2628185) (v!54298 lt!2628185))))

(assert (=> b!7480962 d!2300210))

(declare-fun d!2300212 () Bool)

(assert (=> d!2300212 (= (isDefined!13859 lt!2628185) (not (isEmpty!41217 lt!2628185)))))

(declare-fun bs!1933316 () Bool)

(assert (= bs!1933316 d!2300212))

(declare-fun m!8073492 () Bool)

(assert (=> bs!1933316 m!8073492))

(assert (=> b!7480962 d!2300212))

(declare-fun d!2300214 () Bool)

(assert (=> d!2300214 (= (Exists!4232 lambda!463570) (choose!57836 lambda!463570))))

(declare-fun bs!1933317 () Bool)

(assert (= bs!1933317 d!2300214))

(declare-fun m!8073494 () Bool)

(assert (=> bs!1933317 m!8073494))

(assert (=> b!7480962 d!2300214))

(declare-fun bs!1933318 () Bool)

(declare-fun d!2300216 () Bool)

(assert (= bs!1933318 (and d!2300216 b!7481356)))

(declare-fun lambda!463621 () Int)

(assert (=> bs!1933318 (not (= lambda!463621 lambda!463594))))

(declare-fun bs!1933319 () Bool)

(assert (= bs!1933319 (and d!2300216 b!7480968)))

(assert (=> bs!1933319 (= (= r1!5845 lt!2628187) (= lambda!463621 lambda!463568))))

(declare-fun bs!1933320 () Bool)

(assert (= bs!1933320 (and d!2300216 b!7481321)))

(assert (=> bs!1933320 (not (= lambda!463621 lambda!463593))))

(declare-fun bs!1933321 () Bool)

(assert (= bs!1933321 (and d!2300216 b!7480962)))

(assert (=> bs!1933321 (= lambda!463621 lambda!463570)))

(declare-fun bs!1933322 () Bool)

(assert (= bs!1933322 (and d!2300216 b!7481318)))

(assert (=> bs!1933322 (not (= lambda!463621 lambda!463592))))

(declare-fun bs!1933323 () Bool)

(assert (= bs!1933323 (and d!2300216 b!7481279)))

(assert (=> bs!1933323 (not (= lambda!463621 lambda!463589))))

(declare-fun bs!1933324 () Bool)

(assert (= bs!1933324 (and d!2300216 b!7481359)))

(assert (=> bs!1933324 (not (= lambda!463621 lambda!463597))))

(declare-fun bs!1933325 () Bool)

(assert (= bs!1933325 (and d!2300216 d!2300200)))

(assert (=> bs!1933325 (= (= r1!5845 lt!2628187) (= lambda!463621 lambda!463620))))

(declare-fun bs!1933326 () Bool)

(assert (= bs!1933326 (and d!2300216 d!2300188)))

(assert (=> bs!1933326 (not (= lambda!463621 lambda!463617))))

(assert (=> bs!1933319 (not (= lambda!463621 lambda!463569))))

(assert (=> bs!1933321 (not (= lambda!463621 lambda!463571))))

(declare-fun bs!1933327 () Bool)

(assert (= bs!1933327 (and d!2300216 b!7481282)))

(assert (=> bs!1933327 (not (= lambda!463621 lambda!463591))))

(assert (=> bs!1933326 (= (= r1!5845 lt!2628187) (= lambda!463621 lambda!463616))))

(assert (=> d!2300216 true))

(assert (=> d!2300216 true))

(assert (=> d!2300216 true))

(declare-fun lambda!463622 () Int)

(assert (=> bs!1933318 (not (= lambda!463622 lambda!463594))))

(assert (=> bs!1933319 (not (= lambda!463622 lambda!463568))))

(assert (=> bs!1933320 (= (and (= s!13591 (_1!37641 lt!2628193)) (= r1!5845 (regOne!39738 r2!5783)) (= rTail!78 (regTwo!39738 r2!5783))) (= lambda!463622 lambda!463593))))

(assert (=> bs!1933321 (not (= lambda!463622 lambda!463570))))

(assert (=> bs!1933322 (not (= lambda!463622 lambda!463592))))

(assert (=> bs!1933323 (not (= lambda!463622 lambda!463589))))

(assert (=> bs!1933324 (= (and (= s!13591 (_1!37641 lt!2628193)) (= r1!5845 (regOne!39738 lt!2628187)) (= rTail!78 (regTwo!39738 lt!2628187))) (= lambda!463622 lambda!463597))))

(assert (=> bs!1933325 (not (= lambda!463622 lambda!463620))))

(assert (=> bs!1933326 (= (= r1!5845 lt!2628187) (= lambda!463622 lambda!463617))))

(assert (=> bs!1933321 (= lambda!463622 lambda!463571)))

(assert (=> bs!1933327 (= (and (= s!13591 (_1!37641 lt!2628193)) (= r1!5845 (regOne!39738 r1!5845)) (= rTail!78 (regTwo!39738 r1!5845))) (= lambda!463622 lambda!463591))))

(assert (=> bs!1933326 (not (= lambda!463622 lambda!463616))))

(declare-fun bs!1933328 () Bool)

(assert (= bs!1933328 d!2300216))

(assert (=> bs!1933328 (not (= lambda!463622 lambda!463621))))

(assert (=> bs!1933319 (= (= r1!5845 lt!2628187) (= lambda!463622 lambda!463569))))

(assert (=> d!2300216 true))

(assert (=> d!2300216 true))

(assert (=> d!2300216 true))

(assert (=> d!2300216 (= (Exists!4232 lambda!463621) (Exists!4232 lambda!463622))))

(declare-fun lt!2628271 () Unit!166061)

(assert (=> d!2300216 (= lt!2628271 (choose!57837 r1!5845 rTail!78 s!13591))))

(assert (=> d!2300216 (validRegex!10127 r1!5845)))

(assert (=> d!2300216 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2566 r1!5845 rTail!78 s!13591) lt!2628271)))

(declare-fun m!8073496 () Bool)

(assert (=> bs!1933328 m!8073496))

(declare-fun m!8073498 () Bool)

(assert (=> bs!1933328 m!8073498))

(declare-fun m!8073500 () Bool)

(assert (=> bs!1933328 m!8073500))

(assert (=> bs!1933328 m!8073126))

(assert (=> b!7480962 d!2300216))

(declare-fun bs!1933329 () Bool)

(declare-fun d!2300218 () Bool)

(assert (= bs!1933329 (and d!2300218 b!7481356)))

(declare-fun lambda!463623 () Int)

(assert (=> bs!1933329 (not (= lambda!463623 lambda!463594))))

(declare-fun bs!1933330 () Bool)

(assert (= bs!1933330 (and d!2300218 b!7480968)))

(assert (=> bs!1933330 (= (= r1!5845 lt!2628187) (= lambda!463623 lambda!463568))))

(declare-fun bs!1933331 () Bool)

(assert (= bs!1933331 (and d!2300218 b!7481321)))

(assert (=> bs!1933331 (not (= lambda!463623 lambda!463593))))

(declare-fun bs!1933332 () Bool)

(assert (= bs!1933332 (and d!2300218 b!7480962)))

(assert (=> bs!1933332 (= lambda!463623 lambda!463570)))

(declare-fun bs!1933333 () Bool)

(assert (= bs!1933333 (and d!2300218 b!7481318)))

(assert (=> bs!1933333 (not (= lambda!463623 lambda!463592))))

(declare-fun bs!1933334 () Bool)

(assert (= bs!1933334 (and d!2300218 b!7481279)))

(assert (=> bs!1933334 (not (= lambda!463623 lambda!463589))))

(declare-fun bs!1933335 () Bool)

(assert (= bs!1933335 (and d!2300218 b!7481359)))

(assert (=> bs!1933335 (not (= lambda!463623 lambda!463597))))

(declare-fun bs!1933336 () Bool)

(assert (= bs!1933336 (and d!2300218 d!2300200)))

(assert (=> bs!1933336 (= (= r1!5845 lt!2628187) (= lambda!463623 lambda!463620))))

(declare-fun bs!1933337 () Bool)

(assert (= bs!1933337 (and d!2300218 d!2300216)))

(assert (=> bs!1933337 (not (= lambda!463623 lambda!463622))))

(declare-fun bs!1933338 () Bool)

(assert (= bs!1933338 (and d!2300218 d!2300188)))

(assert (=> bs!1933338 (not (= lambda!463623 lambda!463617))))

(assert (=> bs!1933332 (not (= lambda!463623 lambda!463571))))

(declare-fun bs!1933339 () Bool)

(assert (= bs!1933339 (and d!2300218 b!7481282)))

(assert (=> bs!1933339 (not (= lambda!463623 lambda!463591))))

(assert (=> bs!1933338 (= (= r1!5845 lt!2628187) (= lambda!463623 lambda!463616))))

(assert (=> bs!1933337 (= lambda!463623 lambda!463621)))

(assert (=> bs!1933330 (not (= lambda!463623 lambda!463569))))

(assert (=> d!2300218 true))

(assert (=> d!2300218 true))

(assert (=> d!2300218 true))

(assert (=> d!2300218 (= (isDefined!13859 (findConcatSeparation!3292 r1!5845 rTail!78 Nil!72205 s!13591 s!13591)) (Exists!4232 lambda!463623))))

(declare-fun lt!2628272 () Unit!166061)

(assert (=> d!2300218 (= lt!2628272 (choose!57838 r1!5845 rTail!78 s!13591))))

(assert (=> d!2300218 (validRegex!10127 r1!5845)))

(assert (=> d!2300218 (= (lemmaFindConcatSeparationEquivalentToExists!3050 r1!5845 rTail!78 s!13591) lt!2628272)))

(declare-fun bs!1933340 () Bool)

(assert (= bs!1933340 d!2300218))

(declare-fun m!8073502 () Bool)

(assert (=> bs!1933340 m!8073502))

(assert (=> bs!1933340 m!8073108))

(assert (=> bs!1933340 m!8073126))

(assert (=> bs!1933340 m!8073108))

(declare-fun m!8073504 () Bool)

(assert (=> bs!1933340 m!8073504))

(declare-fun m!8073506 () Bool)

(assert (=> bs!1933340 m!8073506))

(assert (=> b!7480962 d!2300218))

(declare-fun d!2300220 () Bool)

(assert (=> d!2300220 (= (Exists!4232 lambda!463571) (choose!57836 lambda!463571))))

(declare-fun bs!1933341 () Bool)

(assert (= bs!1933341 d!2300220))

(declare-fun m!8073508 () Bool)

(assert (=> bs!1933341 m!8073508))

(assert (=> b!7480962 d!2300220))

(declare-fun b!7481611 () Bool)

(declare-fun e!4462597 () Bool)

(declare-fun e!4462594 () Bool)

(assert (=> b!7481611 (= e!4462597 e!4462594)))

(declare-fun res!3001658 () Bool)

(assert (=> b!7481611 (=> (not res!3001658) (not e!4462594))))

(declare-fun call!686836 () Bool)

(assert (=> b!7481611 (= res!3001658 call!686836)))

(declare-fun b!7481612 () Bool)

(declare-fun e!4462596 () Bool)

(declare-fun call!686837 () Bool)

(assert (=> b!7481612 (= e!4462596 call!686837)))

(declare-fun b!7481613 () Bool)

(declare-fun e!4462598 () Bool)

(assert (=> b!7481613 (= e!4462598 e!4462596)))

(declare-fun res!3001657 () Bool)

(assert (=> b!7481613 (= res!3001657 (not (nullable!8551 (reg!19942 rTail!78))))))

(assert (=> b!7481613 (=> (not res!3001657) (not e!4462596))))

(declare-fun bm!686831 () Bool)

(declare-fun call!686838 () Bool)

(assert (=> bm!686831 (= call!686838 call!686837)))

(declare-fun b!7481614 () Bool)

(declare-fun e!4462592 () Bool)

(assert (=> b!7481614 (= e!4462598 e!4462592)))

(declare-fun c!1381927 () Bool)

(assert (=> b!7481614 (= c!1381927 ((_ is Union!19613) rTail!78))))

(declare-fun b!7481615 () Bool)

(assert (=> b!7481615 (= e!4462594 call!686838)))

(declare-fun bm!686832 () Bool)

(assert (=> bm!686832 (= call!686836 (validRegex!10127 (ite c!1381927 (regOne!39739 rTail!78) (regOne!39738 rTail!78))))))

(declare-fun b!7481616 () Bool)

(declare-fun res!3001659 () Bool)

(declare-fun e!4462595 () Bool)

(assert (=> b!7481616 (=> (not res!3001659) (not e!4462595))))

(assert (=> b!7481616 (= res!3001659 call!686836)))

(assert (=> b!7481616 (= e!4462592 e!4462595)))

(declare-fun d!2300222 () Bool)

(declare-fun res!3001661 () Bool)

(declare-fun e!4462593 () Bool)

(assert (=> d!2300222 (=> res!3001661 e!4462593)))

(assert (=> d!2300222 (= res!3001661 ((_ is ElementMatch!19613) rTail!78))))

(assert (=> d!2300222 (= (validRegex!10127 rTail!78) e!4462593)))

(declare-fun b!7481617 () Bool)

(assert (=> b!7481617 (= e!4462595 call!686838)))

(declare-fun b!7481618 () Bool)

(assert (=> b!7481618 (= e!4462593 e!4462598)))

(declare-fun c!1381926 () Bool)

(assert (=> b!7481618 (= c!1381926 ((_ is Star!19613) rTail!78))))

(declare-fun b!7481619 () Bool)

(declare-fun res!3001660 () Bool)

(assert (=> b!7481619 (=> res!3001660 e!4462597)))

(assert (=> b!7481619 (= res!3001660 (not ((_ is Concat!28458) rTail!78)))))

(assert (=> b!7481619 (= e!4462592 e!4462597)))

(declare-fun bm!686833 () Bool)

(assert (=> bm!686833 (= call!686837 (validRegex!10127 (ite c!1381926 (reg!19942 rTail!78) (ite c!1381927 (regTwo!39739 rTail!78) (regTwo!39738 rTail!78)))))))

(assert (= (and d!2300222 (not res!3001661)) b!7481618))

(assert (= (and b!7481618 c!1381926) b!7481613))

(assert (= (and b!7481618 (not c!1381926)) b!7481614))

(assert (= (and b!7481613 res!3001657) b!7481612))

(assert (= (and b!7481614 c!1381927) b!7481616))

(assert (= (and b!7481614 (not c!1381927)) b!7481619))

(assert (= (and b!7481616 res!3001659) b!7481617))

(assert (= (and b!7481619 (not res!3001660)) b!7481611))

(assert (= (and b!7481611 res!3001658) b!7481615))

(assert (= (or b!7481617 b!7481615) bm!686831))

(assert (= (or b!7481616 b!7481611) bm!686832))

(assert (= (or b!7481612 bm!686831) bm!686833))

(declare-fun m!8073510 () Bool)

(assert (=> b!7481613 m!8073510))

(declare-fun m!8073512 () Bool)

(assert (=> bm!686832 m!8073512))

(declare-fun m!8073514 () Bool)

(assert (=> bm!686833 m!8073514))

(assert (=> b!7480967 d!2300222))

(declare-fun b!7481620 () Bool)

(declare-fun e!4462604 () Bool)

(declare-fun e!4462601 () Bool)

(assert (=> b!7481620 (= e!4462604 e!4462601)))

(declare-fun res!3001663 () Bool)

(assert (=> b!7481620 (=> (not res!3001663) (not e!4462601))))

(declare-fun call!686839 () Bool)

(assert (=> b!7481620 (= res!3001663 call!686839)))

(declare-fun b!7481621 () Bool)

(declare-fun e!4462603 () Bool)

(declare-fun call!686840 () Bool)

(assert (=> b!7481621 (= e!4462603 call!686840)))

(declare-fun b!7481622 () Bool)

(declare-fun e!4462605 () Bool)

(assert (=> b!7481622 (= e!4462605 e!4462603)))

(declare-fun res!3001662 () Bool)

(assert (=> b!7481622 (= res!3001662 (not (nullable!8551 (reg!19942 r2!5783))))))

(assert (=> b!7481622 (=> (not res!3001662) (not e!4462603))))

(declare-fun bm!686834 () Bool)

(declare-fun call!686841 () Bool)

(assert (=> bm!686834 (= call!686841 call!686840)))

(declare-fun b!7481623 () Bool)

(declare-fun e!4462599 () Bool)

(assert (=> b!7481623 (= e!4462605 e!4462599)))

(declare-fun c!1381929 () Bool)

(assert (=> b!7481623 (= c!1381929 ((_ is Union!19613) r2!5783))))

(declare-fun b!7481624 () Bool)

(assert (=> b!7481624 (= e!4462601 call!686841)))

(declare-fun bm!686835 () Bool)

(assert (=> bm!686835 (= call!686839 (validRegex!10127 (ite c!1381929 (regOne!39739 r2!5783) (regOne!39738 r2!5783))))))

(declare-fun b!7481625 () Bool)

(declare-fun res!3001664 () Bool)

(declare-fun e!4462602 () Bool)

(assert (=> b!7481625 (=> (not res!3001664) (not e!4462602))))

(assert (=> b!7481625 (= res!3001664 call!686839)))

(assert (=> b!7481625 (= e!4462599 e!4462602)))

(declare-fun d!2300224 () Bool)

(declare-fun res!3001666 () Bool)

(declare-fun e!4462600 () Bool)

(assert (=> d!2300224 (=> res!3001666 e!4462600)))

(assert (=> d!2300224 (= res!3001666 ((_ is ElementMatch!19613) r2!5783))))

(assert (=> d!2300224 (= (validRegex!10127 r2!5783) e!4462600)))

(declare-fun b!7481626 () Bool)

(assert (=> b!7481626 (= e!4462602 call!686841)))

(declare-fun b!7481627 () Bool)

(assert (=> b!7481627 (= e!4462600 e!4462605)))

(declare-fun c!1381928 () Bool)

(assert (=> b!7481627 (= c!1381928 ((_ is Star!19613) r2!5783))))

(declare-fun b!7481628 () Bool)

(declare-fun res!3001665 () Bool)

(assert (=> b!7481628 (=> res!3001665 e!4462604)))

(assert (=> b!7481628 (= res!3001665 (not ((_ is Concat!28458) r2!5783)))))

(assert (=> b!7481628 (= e!4462599 e!4462604)))

(declare-fun bm!686836 () Bool)

(assert (=> bm!686836 (= call!686840 (validRegex!10127 (ite c!1381928 (reg!19942 r2!5783) (ite c!1381929 (regTwo!39739 r2!5783) (regTwo!39738 r2!5783)))))))

(assert (= (and d!2300224 (not res!3001666)) b!7481627))

(assert (= (and b!7481627 c!1381928) b!7481622))

(assert (= (and b!7481627 (not c!1381928)) b!7481623))

(assert (= (and b!7481622 res!3001662) b!7481621))

(assert (= (and b!7481623 c!1381929) b!7481625))

(assert (= (and b!7481623 (not c!1381929)) b!7481628))

(assert (= (and b!7481625 res!3001664) b!7481626))

(assert (= (and b!7481628 (not res!3001665)) b!7481620))

(assert (= (and b!7481620 res!3001663) b!7481624))

(assert (= (or b!7481626 b!7481624) bm!686834))

(assert (= (or b!7481625 b!7481620) bm!686835))

(assert (= (or b!7481621 bm!686834) bm!686836))

(declare-fun m!8073516 () Bool)

(assert (=> b!7481622 m!8073516))

(declare-fun m!8073518 () Bool)

(assert (=> bm!686835 m!8073518))

(declare-fun m!8073520 () Bool)

(assert (=> bm!686836 m!8073520))

(assert (=> b!7480961 d!2300224))

(declare-fun d!2300226 () Bool)

(assert (=> d!2300226 (= (matchR!9377 lt!2628195 s!13591) (matchRSpec!4292 lt!2628195 s!13591))))

(declare-fun lt!2628273 () Unit!166061)

(assert (=> d!2300226 (= lt!2628273 (choose!57835 lt!2628195 s!13591))))

(assert (=> d!2300226 (validRegex!10127 lt!2628195)))

(assert (=> d!2300226 (= (mainMatchTheorem!4286 lt!2628195 s!13591) lt!2628273)))

(declare-fun bs!1933342 () Bool)

(assert (= bs!1933342 d!2300226))

(assert (=> bs!1933342 m!8073114))

(assert (=> bs!1933342 m!8073124))

(declare-fun m!8073522 () Bool)

(assert (=> bs!1933342 m!8073522))

(declare-fun m!8073524 () Bool)

(assert (=> bs!1933342 m!8073524))

(assert (=> b!7480976 d!2300226))

(declare-fun bm!686837 () Bool)

(declare-fun call!686842 () Bool)

(assert (=> bm!686837 (= call!686842 (isEmpty!41216 s!13591))))

(declare-fun b!7481629 () Bool)

(declare-fun e!4462609 () Bool)

(declare-fun lt!2628274 () Bool)

(assert (=> b!7481629 (= e!4462609 (= lt!2628274 call!686842))))

(declare-fun b!7481630 () Bool)

(declare-fun e!4462607 () Bool)

(declare-fun e!4462612 () Bool)

(assert (=> b!7481630 (= e!4462607 e!4462612)))

(declare-fun res!3001669 () Bool)

(assert (=> b!7481630 (=> (not res!3001669) (not e!4462612))))

(assert (=> b!7481630 (= res!3001669 (not lt!2628274))))

(declare-fun b!7481631 () Bool)

(declare-fun res!3001673 () Bool)

(assert (=> b!7481631 (=> res!3001673 e!4462607)))

(assert (=> b!7481631 (= res!3001673 (not ((_ is ElementMatch!19613) lt!2628199)))))

(declare-fun e!4462611 () Bool)

(assert (=> b!7481631 (= e!4462611 e!4462607)))

(declare-fun b!7481632 () Bool)

(declare-fun e!4462610 () Bool)

(assert (=> b!7481632 (= e!4462610 (matchR!9377 (derivativeStep!5610 lt!2628199 (head!15350 s!13591)) (tail!14919 s!13591)))))

(declare-fun b!7481633 () Bool)

(declare-fun res!3001672 () Bool)

(declare-fun e!4462608 () Bool)

(assert (=> b!7481633 (=> (not res!3001672) (not e!4462608))))

(assert (=> b!7481633 (= res!3001672 (not call!686842))))

(declare-fun b!7481634 () Bool)

(assert (=> b!7481634 (= e!4462608 (= (head!15350 s!13591) (c!1381792 lt!2628199)))))

(declare-fun d!2300228 () Bool)

(assert (=> d!2300228 e!4462609))

(declare-fun c!1381932 () Bool)

(assert (=> d!2300228 (= c!1381932 ((_ is EmptyExpr!19613) lt!2628199))))

(assert (=> d!2300228 (= lt!2628274 e!4462610)))

(declare-fun c!1381931 () Bool)

(assert (=> d!2300228 (= c!1381931 (isEmpty!41216 s!13591))))

(assert (=> d!2300228 (validRegex!10127 lt!2628199)))

(assert (=> d!2300228 (= (matchR!9377 lt!2628199 s!13591) lt!2628274)))

(declare-fun b!7481635 () Bool)

(declare-fun res!3001671 () Bool)

(assert (=> b!7481635 (=> res!3001671 e!4462607)))

(assert (=> b!7481635 (= res!3001671 e!4462608)))

(declare-fun res!3001670 () Bool)

(assert (=> b!7481635 (=> (not res!3001670) (not e!4462608))))

(assert (=> b!7481635 (= res!3001670 lt!2628274)))

(declare-fun b!7481636 () Bool)

(declare-fun e!4462606 () Bool)

(assert (=> b!7481636 (= e!4462612 e!4462606)))

(declare-fun res!3001668 () Bool)

(assert (=> b!7481636 (=> res!3001668 e!4462606)))

(assert (=> b!7481636 (= res!3001668 call!686842)))

(declare-fun b!7481637 () Bool)

(declare-fun res!3001674 () Bool)

(assert (=> b!7481637 (=> (not res!3001674) (not e!4462608))))

(assert (=> b!7481637 (= res!3001674 (isEmpty!41216 (tail!14919 s!13591)))))

(declare-fun b!7481638 () Bool)

(assert (=> b!7481638 (= e!4462609 e!4462611)))

(declare-fun c!1381930 () Bool)

(assert (=> b!7481638 (= c!1381930 ((_ is EmptyLang!19613) lt!2628199))))

(declare-fun b!7481639 () Bool)

(assert (=> b!7481639 (= e!4462611 (not lt!2628274))))

(declare-fun b!7481640 () Bool)

(assert (=> b!7481640 (= e!4462606 (not (= (head!15350 s!13591) (c!1381792 lt!2628199))))))

(declare-fun b!7481641 () Bool)

(declare-fun res!3001667 () Bool)

(assert (=> b!7481641 (=> res!3001667 e!4462606)))

(assert (=> b!7481641 (= res!3001667 (not (isEmpty!41216 (tail!14919 s!13591))))))

(declare-fun b!7481642 () Bool)

(assert (=> b!7481642 (= e!4462610 (nullable!8551 lt!2628199))))

(assert (= (and d!2300228 c!1381931) b!7481642))

(assert (= (and d!2300228 (not c!1381931)) b!7481632))

(assert (= (and d!2300228 c!1381932) b!7481629))

(assert (= (and d!2300228 (not c!1381932)) b!7481638))

(assert (= (and b!7481638 c!1381930) b!7481639))

(assert (= (and b!7481638 (not c!1381930)) b!7481631))

(assert (= (and b!7481631 (not res!3001673)) b!7481635))

(assert (= (and b!7481635 res!3001670) b!7481633))

(assert (= (and b!7481633 res!3001672) b!7481637))

(assert (= (and b!7481637 res!3001674) b!7481634))

(assert (= (and b!7481635 (not res!3001671)) b!7481630))

(assert (= (and b!7481630 res!3001669) b!7481636))

(assert (= (and b!7481636 (not res!3001668)) b!7481641))

(assert (= (and b!7481641 (not res!3001667)) b!7481640))

(assert (= (or b!7481629 b!7481633 b!7481636) bm!686837))

(declare-fun m!8073526 () Bool)

(assert (=> bm!686837 m!8073526))

(declare-fun m!8073528 () Bool)

(assert (=> b!7481634 m!8073528))

(declare-fun m!8073530 () Bool)

(assert (=> b!7481642 m!8073530))

(assert (=> b!7481632 m!8073528))

(assert (=> b!7481632 m!8073528))

(declare-fun m!8073532 () Bool)

(assert (=> b!7481632 m!8073532))

(declare-fun m!8073534 () Bool)

(assert (=> b!7481632 m!8073534))

(assert (=> b!7481632 m!8073532))

(assert (=> b!7481632 m!8073534))

(declare-fun m!8073536 () Bool)

(assert (=> b!7481632 m!8073536))

(assert (=> d!2300228 m!8073526))

(declare-fun m!8073538 () Bool)

(assert (=> d!2300228 m!8073538))

(assert (=> b!7481640 m!8073528))

(assert (=> b!7481637 m!8073534))

(assert (=> b!7481637 m!8073534))

(declare-fun m!8073540 () Bool)

(assert (=> b!7481637 m!8073540))

(assert (=> b!7481641 m!8073534))

(assert (=> b!7481641 m!8073534))

(assert (=> b!7481641 m!8073540))

(assert (=> b!7480976 d!2300228))

(declare-fun bm!686838 () Bool)

(declare-fun call!686843 () Bool)

(assert (=> bm!686838 (= call!686843 (isEmpty!41216 s!13591))))

(declare-fun b!7481643 () Bool)

(declare-fun e!4462616 () Bool)

(declare-fun lt!2628275 () Bool)

(assert (=> b!7481643 (= e!4462616 (= lt!2628275 call!686843))))

(declare-fun b!7481644 () Bool)

(declare-fun e!4462614 () Bool)

(declare-fun e!4462619 () Bool)

(assert (=> b!7481644 (= e!4462614 e!4462619)))

(declare-fun res!3001677 () Bool)

(assert (=> b!7481644 (=> (not res!3001677) (not e!4462619))))

(assert (=> b!7481644 (= res!3001677 (not lt!2628275))))

(declare-fun b!7481645 () Bool)

(declare-fun res!3001681 () Bool)

(assert (=> b!7481645 (=> res!3001681 e!4462614)))

(assert (=> b!7481645 (= res!3001681 (not ((_ is ElementMatch!19613) lt!2628195)))))

(declare-fun e!4462618 () Bool)

(assert (=> b!7481645 (= e!4462618 e!4462614)))

(declare-fun b!7481646 () Bool)

(declare-fun e!4462617 () Bool)

(assert (=> b!7481646 (= e!4462617 (matchR!9377 (derivativeStep!5610 lt!2628195 (head!15350 s!13591)) (tail!14919 s!13591)))))

(declare-fun b!7481647 () Bool)

(declare-fun res!3001680 () Bool)

(declare-fun e!4462615 () Bool)

(assert (=> b!7481647 (=> (not res!3001680) (not e!4462615))))

(assert (=> b!7481647 (= res!3001680 (not call!686843))))

(declare-fun b!7481648 () Bool)

(assert (=> b!7481648 (= e!4462615 (= (head!15350 s!13591) (c!1381792 lt!2628195)))))

(declare-fun d!2300230 () Bool)

(assert (=> d!2300230 e!4462616))

(declare-fun c!1381935 () Bool)

(assert (=> d!2300230 (= c!1381935 ((_ is EmptyExpr!19613) lt!2628195))))

(assert (=> d!2300230 (= lt!2628275 e!4462617)))

(declare-fun c!1381934 () Bool)

(assert (=> d!2300230 (= c!1381934 (isEmpty!41216 s!13591))))

(assert (=> d!2300230 (validRegex!10127 lt!2628195)))

(assert (=> d!2300230 (= (matchR!9377 lt!2628195 s!13591) lt!2628275)))

(declare-fun b!7481649 () Bool)

(declare-fun res!3001679 () Bool)

(assert (=> b!7481649 (=> res!3001679 e!4462614)))

(assert (=> b!7481649 (= res!3001679 e!4462615)))

(declare-fun res!3001678 () Bool)

(assert (=> b!7481649 (=> (not res!3001678) (not e!4462615))))

(assert (=> b!7481649 (= res!3001678 lt!2628275)))

(declare-fun b!7481650 () Bool)

(declare-fun e!4462613 () Bool)

(assert (=> b!7481650 (= e!4462619 e!4462613)))

(declare-fun res!3001676 () Bool)

(assert (=> b!7481650 (=> res!3001676 e!4462613)))

(assert (=> b!7481650 (= res!3001676 call!686843)))

(declare-fun b!7481651 () Bool)

(declare-fun res!3001682 () Bool)

(assert (=> b!7481651 (=> (not res!3001682) (not e!4462615))))

(assert (=> b!7481651 (= res!3001682 (isEmpty!41216 (tail!14919 s!13591)))))

(declare-fun b!7481652 () Bool)

(assert (=> b!7481652 (= e!4462616 e!4462618)))

(declare-fun c!1381933 () Bool)

(assert (=> b!7481652 (= c!1381933 ((_ is EmptyLang!19613) lt!2628195))))

(declare-fun b!7481653 () Bool)

(assert (=> b!7481653 (= e!4462618 (not lt!2628275))))

(declare-fun b!7481654 () Bool)

(assert (=> b!7481654 (= e!4462613 (not (= (head!15350 s!13591) (c!1381792 lt!2628195))))))

(declare-fun b!7481655 () Bool)

(declare-fun res!3001675 () Bool)

(assert (=> b!7481655 (=> res!3001675 e!4462613)))

(assert (=> b!7481655 (= res!3001675 (not (isEmpty!41216 (tail!14919 s!13591))))))

(declare-fun b!7481656 () Bool)

(assert (=> b!7481656 (= e!4462617 (nullable!8551 lt!2628195))))

(assert (= (and d!2300230 c!1381934) b!7481656))

(assert (= (and d!2300230 (not c!1381934)) b!7481646))

(assert (= (and d!2300230 c!1381935) b!7481643))

(assert (= (and d!2300230 (not c!1381935)) b!7481652))

(assert (= (and b!7481652 c!1381933) b!7481653))

(assert (= (and b!7481652 (not c!1381933)) b!7481645))

(assert (= (and b!7481645 (not res!3001681)) b!7481649))

(assert (= (and b!7481649 res!3001678) b!7481647))

(assert (= (and b!7481647 res!3001680) b!7481651))

(assert (= (and b!7481651 res!3001682) b!7481648))

(assert (= (and b!7481649 (not res!3001679)) b!7481644))

(assert (= (and b!7481644 res!3001677) b!7481650))

(assert (= (and b!7481650 (not res!3001676)) b!7481655))

(assert (= (and b!7481655 (not res!3001675)) b!7481654))

(assert (= (or b!7481643 b!7481647 b!7481650) bm!686838))

(assert (=> bm!686838 m!8073526))

(assert (=> b!7481648 m!8073528))

(declare-fun m!8073542 () Bool)

(assert (=> b!7481656 m!8073542))

(assert (=> b!7481646 m!8073528))

(assert (=> b!7481646 m!8073528))

(declare-fun m!8073544 () Bool)

(assert (=> b!7481646 m!8073544))

(assert (=> b!7481646 m!8073534))

(assert (=> b!7481646 m!8073544))

(assert (=> b!7481646 m!8073534))

(declare-fun m!8073546 () Bool)

(assert (=> b!7481646 m!8073546))

(assert (=> d!2300230 m!8073526))

(assert (=> d!2300230 m!8073524))

(assert (=> b!7481654 m!8073528))

(assert (=> b!7481651 m!8073534))

(assert (=> b!7481651 m!8073534))

(assert (=> b!7481651 m!8073540))

(assert (=> b!7481655 m!8073534))

(assert (=> b!7481655 m!8073534))

(assert (=> b!7481655 m!8073540))

(assert (=> b!7480976 d!2300230))

(declare-fun d!2300232 () Bool)

(assert (=> d!2300232 (= (matchR!9377 lt!2628199 s!13591) (matchRSpec!4292 lt!2628199 s!13591))))

(declare-fun lt!2628276 () Unit!166061)

(assert (=> d!2300232 (= lt!2628276 (choose!57835 lt!2628199 s!13591))))

(assert (=> d!2300232 (validRegex!10127 lt!2628199)))

(assert (=> d!2300232 (= (mainMatchTheorem!4286 lt!2628199 s!13591) lt!2628276)))

(declare-fun bs!1933343 () Bool)

(assert (= bs!1933343 d!2300232))

(assert (=> bs!1933343 m!8073118))

(assert (=> bs!1933343 m!8073116))

(declare-fun m!8073548 () Bool)

(assert (=> bs!1933343 m!8073548))

(assert (=> bs!1933343 m!8073538))

(assert (=> b!7480976 d!2300232))

(declare-fun bs!1933344 () Bool)

(declare-fun b!7481662 () Bool)

(assert (= bs!1933344 (and b!7481662 b!7481356)))

(declare-fun lambda!463624 () Int)

(assert (=> bs!1933344 (= (and (= s!13591 (_1!37641 lt!2628193)) (= (reg!19942 lt!2628195) (reg!19942 lt!2628187)) (= lt!2628195 lt!2628187)) (= lambda!463624 lambda!463594))))

(declare-fun bs!1933345 () Bool)

(assert (= bs!1933345 (and b!7481662 b!7480968)))

(assert (=> bs!1933345 (not (= lambda!463624 lambda!463568))))

(declare-fun bs!1933346 () Bool)

(assert (= bs!1933346 (and b!7481662 b!7481321)))

(assert (=> bs!1933346 (not (= lambda!463624 lambda!463593))))

(declare-fun bs!1933347 () Bool)

(assert (= bs!1933347 (and b!7481662 b!7480962)))

(assert (=> bs!1933347 (not (= lambda!463624 lambda!463570))))

(declare-fun bs!1933348 () Bool)

(assert (= bs!1933348 (and b!7481662 b!7481318)))

(assert (=> bs!1933348 (= (and (= s!13591 (_1!37641 lt!2628193)) (= (reg!19942 lt!2628195) (reg!19942 r2!5783)) (= lt!2628195 r2!5783)) (= lambda!463624 lambda!463592))))

(declare-fun bs!1933349 () Bool)

(assert (= bs!1933349 (and b!7481662 d!2300218)))

(assert (=> bs!1933349 (not (= lambda!463624 lambda!463623))))

(declare-fun bs!1933350 () Bool)

(assert (= bs!1933350 (and b!7481662 b!7481279)))

(assert (=> bs!1933350 (= (and (= s!13591 (_1!37641 lt!2628193)) (= (reg!19942 lt!2628195) (reg!19942 r1!5845)) (= lt!2628195 r1!5845)) (= lambda!463624 lambda!463589))))

(declare-fun bs!1933351 () Bool)

(assert (= bs!1933351 (and b!7481662 b!7481359)))

(assert (=> bs!1933351 (not (= lambda!463624 lambda!463597))))

(declare-fun bs!1933352 () Bool)

(assert (= bs!1933352 (and b!7481662 d!2300200)))

(assert (=> bs!1933352 (not (= lambda!463624 lambda!463620))))

(declare-fun bs!1933353 () Bool)

(assert (= bs!1933353 (and b!7481662 d!2300216)))

(assert (=> bs!1933353 (not (= lambda!463624 lambda!463622))))

(declare-fun bs!1933354 () Bool)

(assert (= bs!1933354 (and b!7481662 d!2300188)))

(assert (=> bs!1933354 (not (= lambda!463624 lambda!463617))))

(assert (=> bs!1933347 (not (= lambda!463624 lambda!463571))))

(declare-fun bs!1933355 () Bool)

(assert (= bs!1933355 (and b!7481662 b!7481282)))

(assert (=> bs!1933355 (not (= lambda!463624 lambda!463591))))

(assert (=> bs!1933354 (not (= lambda!463624 lambda!463616))))

(assert (=> bs!1933353 (not (= lambda!463624 lambda!463621))))

(assert (=> bs!1933345 (not (= lambda!463624 lambda!463569))))

(assert (=> b!7481662 true))

(assert (=> b!7481662 true))

(declare-fun bs!1933356 () Bool)

(declare-fun b!7481665 () Bool)

(assert (= bs!1933356 (and b!7481665 b!7481356)))

(declare-fun lambda!463625 () Int)

(assert (=> bs!1933356 (not (= lambda!463625 lambda!463594))))

(declare-fun bs!1933357 () Bool)

(assert (= bs!1933357 (and b!7481665 b!7480968)))

(assert (=> bs!1933357 (not (= lambda!463625 lambda!463568))))

(declare-fun bs!1933358 () Bool)

(assert (= bs!1933358 (and b!7481665 b!7481321)))

(assert (=> bs!1933358 (= (and (= s!13591 (_1!37641 lt!2628193)) (= (regOne!39738 lt!2628195) (regOne!39738 r2!5783)) (= (regTwo!39738 lt!2628195) (regTwo!39738 r2!5783))) (= lambda!463625 lambda!463593))))

(declare-fun bs!1933359 () Bool)

(assert (= bs!1933359 (and b!7481665 b!7480962)))

(assert (=> bs!1933359 (not (= lambda!463625 lambda!463570))))

(declare-fun bs!1933360 () Bool)

(assert (= bs!1933360 (and b!7481665 b!7481318)))

(assert (=> bs!1933360 (not (= lambda!463625 lambda!463592))))

(declare-fun bs!1933361 () Bool)

(assert (= bs!1933361 (and b!7481665 d!2300218)))

(assert (=> bs!1933361 (not (= lambda!463625 lambda!463623))))

(declare-fun bs!1933362 () Bool)

(assert (= bs!1933362 (and b!7481665 b!7481279)))

(assert (=> bs!1933362 (not (= lambda!463625 lambda!463589))))

(declare-fun bs!1933363 () Bool)

(assert (= bs!1933363 (and b!7481665 b!7481359)))

(assert (=> bs!1933363 (= (and (= s!13591 (_1!37641 lt!2628193)) (= (regOne!39738 lt!2628195) (regOne!39738 lt!2628187)) (= (regTwo!39738 lt!2628195) (regTwo!39738 lt!2628187))) (= lambda!463625 lambda!463597))))

(declare-fun bs!1933364 () Bool)

(assert (= bs!1933364 (and b!7481665 d!2300200)))

(assert (=> bs!1933364 (not (= lambda!463625 lambda!463620))))

(declare-fun bs!1933365 () Bool)

(assert (= bs!1933365 (and b!7481665 d!2300216)))

(assert (=> bs!1933365 (= (and (= (regOne!39738 lt!2628195) r1!5845) (= (regTwo!39738 lt!2628195) rTail!78)) (= lambda!463625 lambda!463622))))

(declare-fun bs!1933366 () Bool)

(assert (= bs!1933366 (and b!7481665 d!2300188)))

(assert (=> bs!1933366 (= (and (= (regOne!39738 lt!2628195) lt!2628187) (= (regTwo!39738 lt!2628195) rTail!78)) (= lambda!463625 lambda!463617))))

(declare-fun bs!1933367 () Bool)

(assert (= bs!1933367 (and b!7481665 b!7481282)))

(assert (=> bs!1933367 (= (and (= s!13591 (_1!37641 lt!2628193)) (= (regOne!39738 lt!2628195) (regOne!39738 r1!5845)) (= (regTwo!39738 lt!2628195) (regTwo!39738 r1!5845))) (= lambda!463625 lambda!463591))))

(assert (=> bs!1933366 (not (= lambda!463625 lambda!463616))))

(assert (=> bs!1933365 (not (= lambda!463625 lambda!463621))))

(assert (=> bs!1933357 (= (and (= (regOne!39738 lt!2628195) lt!2628187) (= (regTwo!39738 lt!2628195) rTail!78)) (= lambda!463625 lambda!463569))))

(declare-fun bs!1933368 () Bool)

(assert (= bs!1933368 (and b!7481665 b!7481662)))

(assert (=> bs!1933368 (not (= lambda!463625 lambda!463624))))

(assert (=> bs!1933359 (= (and (= (regOne!39738 lt!2628195) r1!5845) (= (regTwo!39738 lt!2628195) rTail!78)) (= lambda!463625 lambda!463571))))

(assert (=> b!7481665 true))

(assert (=> b!7481665 true))

(declare-fun b!7481657 () Bool)

(declare-fun res!3001685 () Bool)

(declare-fun e!4462625 () Bool)

(assert (=> b!7481657 (=> res!3001685 e!4462625)))

(declare-fun call!686845 () Bool)

(assert (=> b!7481657 (= res!3001685 call!686845)))

(declare-fun e!4462620 () Bool)

(assert (=> b!7481657 (= e!4462620 e!4462625)))

(declare-fun b!7481658 () Bool)

(declare-fun c!1381938 () Bool)

(assert (=> b!7481658 (= c!1381938 ((_ is ElementMatch!19613) lt!2628195))))

(declare-fun e!4462623 () Bool)

(declare-fun e!4462622 () Bool)

(assert (=> b!7481658 (= e!4462623 e!4462622)))

(declare-fun bm!686839 () Bool)

(assert (=> bm!686839 (= call!686845 (isEmpty!41216 s!13591))))

(declare-fun b!7481659 () Bool)

(declare-fun e!4462626 () Bool)

(assert (=> b!7481659 (= e!4462626 (matchRSpec!4292 (regTwo!39739 lt!2628195) s!13591))))

(declare-fun b!7481660 () Bool)

(declare-fun e!4462624 () Bool)

(assert (=> b!7481660 (= e!4462624 e!4462626)))

(declare-fun res!3001684 () Bool)

(assert (=> b!7481660 (= res!3001684 (matchRSpec!4292 (regOne!39739 lt!2628195) s!13591))))

(assert (=> b!7481660 (=> res!3001684 e!4462626)))

(declare-fun b!7481661 () Bool)

(assert (=> b!7481661 (= e!4462622 (= s!13591 (Cons!72205 (c!1381792 lt!2628195) Nil!72205)))))

(declare-fun call!686844 () Bool)

(assert (=> b!7481662 (= e!4462625 call!686844)))

(declare-fun b!7481664 () Bool)

(declare-fun e!4462621 () Bool)

(assert (=> b!7481664 (= e!4462621 call!686845)))

(assert (=> b!7481665 (= e!4462620 call!686844)))

(declare-fun bm!686840 () Bool)

(declare-fun c!1381937 () Bool)

(assert (=> bm!686840 (= call!686844 (Exists!4232 (ite c!1381937 lambda!463624 lambda!463625)))))

(declare-fun b!7481666 () Bool)

(declare-fun c!1381936 () Bool)

(assert (=> b!7481666 (= c!1381936 ((_ is Union!19613) lt!2628195))))

(assert (=> b!7481666 (= e!4462622 e!4462624)))

(declare-fun b!7481667 () Bool)

(assert (=> b!7481667 (= e!4462621 e!4462623)))

(declare-fun res!3001683 () Bool)

(assert (=> b!7481667 (= res!3001683 (not ((_ is EmptyLang!19613) lt!2628195)))))

(assert (=> b!7481667 (=> (not res!3001683) (not e!4462623))))

(declare-fun d!2300234 () Bool)

(declare-fun c!1381939 () Bool)

(assert (=> d!2300234 (= c!1381939 ((_ is EmptyExpr!19613) lt!2628195))))

(assert (=> d!2300234 (= (matchRSpec!4292 lt!2628195 s!13591) e!4462621)))

(declare-fun b!7481663 () Bool)

(assert (=> b!7481663 (= e!4462624 e!4462620)))

(assert (=> b!7481663 (= c!1381937 ((_ is Star!19613) lt!2628195))))

(assert (= (and d!2300234 c!1381939) b!7481664))

(assert (= (and d!2300234 (not c!1381939)) b!7481667))

(assert (= (and b!7481667 res!3001683) b!7481658))

(assert (= (and b!7481658 c!1381938) b!7481661))

(assert (= (and b!7481658 (not c!1381938)) b!7481666))

(assert (= (and b!7481666 c!1381936) b!7481660))

(assert (= (and b!7481666 (not c!1381936)) b!7481663))

(assert (= (and b!7481660 (not res!3001684)) b!7481659))

(assert (= (and b!7481663 c!1381937) b!7481657))

(assert (= (and b!7481663 (not c!1381937)) b!7481665))

(assert (= (and b!7481657 (not res!3001685)) b!7481662))

(assert (= (or b!7481662 b!7481665) bm!686840))

(assert (= (or b!7481664 b!7481657) bm!686839))

(assert (=> bm!686839 m!8073526))

(declare-fun m!8073550 () Bool)

(assert (=> b!7481659 m!8073550))

(declare-fun m!8073552 () Bool)

(assert (=> b!7481660 m!8073552))

(declare-fun m!8073554 () Bool)

(assert (=> bm!686840 m!8073554))

(assert (=> b!7480976 d!2300234))

(declare-fun bs!1933369 () Bool)

(declare-fun b!7481673 () Bool)

(assert (= bs!1933369 (and b!7481673 b!7481356)))

(declare-fun lambda!463626 () Int)

(assert (=> bs!1933369 (= (and (= s!13591 (_1!37641 lt!2628193)) (= (reg!19942 lt!2628199) (reg!19942 lt!2628187)) (= lt!2628199 lt!2628187)) (= lambda!463626 lambda!463594))))

(declare-fun bs!1933370 () Bool)

(assert (= bs!1933370 (and b!7481673 b!7480968)))

(assert (=> bs!1933370 (not (= lambda!463626 lambda!463568))))

(declare-fun bs!1933371 () Bool)

(assert (= bs!1933371 (and b!7481673 b!7481321)))

(assert (=> bs!1933371 (not (= lambda!463626 lambda!463593))))

(declare-fun bs!1933372 () Bool)

(assert (= bs!1933372 (and b!7481673 b!7480962)))

(assert (=> bs!1933372 (not (= lambda!463626 lambda!463570))))

(declare-fun bs!1933373 () Bool)

(assert (= bs!1933373 (and b!7481673 b!7481318)))

(assert (=> bs!1933373 (= (and (= s!13591 (_1!37641 lt!2628193)) (= (reg!19942 lt!2628199) (reg!19942 r2!5783)) (= lt!2628199 r2!5783)) (= lambda!463626 lambda!463592))))

(declare-fun bs!1933374 () Bool)

(assert (= bs!1933374 (and b!7481673 d!2300218)))

(assert (=> bs!1933374 (not (= lambda!463626 lambda!463623))))

(declare-fun bs!1933375 () Bool)

(assert (= bs!1933375 (and b!7481673 b!7481665)))

(assert (=> bs!1933375 (not (= lambda!463626 lambda!463625))))

(declare-fun bs!1933376 () Bool)

(assert (= bs!1933376 (and b!7481673 b!7481279)))

(assert (=> bs!1933376 (= (and (= s!13591 (_1!37641 lt!2628193)) (= (reg!19942 lt!2628199) (reg!19942 r1!5845)) (= lt!2628199 r1!5845)) (= lambda!463626 lambda!463589))))

(declare-fun bs!1933377 () Bool)

(assert (= bs!1933377 (and b!7481673 b!7481359)))

(assert (=> bs!1933377 (not (= lambda!463626 lambda!463597))))

(declare-fun bs!1933378 () Bool)

(assert (= bs!1933378 (and b!7481673 d!2300200)))

(assert (=> bs!1933378 (not (= lambda!463626 lambda!463620))))

(declare-fun bs!1933379 () Bool)

(assert (= bs!1933379 (and b!7481673 d!2300216)))

(assert (=> bs!1933379 (not (= lambda!463626 lambda!463622))))

(declare-fun bs!1933380 () Bool)

(assert (= bs!1933380 (and b!7481673 d!2300188)))

(assert (=> bs!1933380 (not (= lambda!463626 lambda!463617))))

(declare-fun bs!1933381 () Bool)

(assert (= bs!1933381 (and b!7481673 b!7481282)))

(assert (=> bs!1933381 (not (= lambda!463626 lambda!463591))))

(assert (=> bs!1933380 (not (= lambda!463626 lambda!463616))))

(assert (=> bs!1933379 (not (= lambda!463626 lambda!463621))))

(assert (=> bs!1933370 (not (= lambda!463626 lambda!463569))))

(declare-fun bs!1933382 () Bool)

(assert (= bs!1933382 (and b!7481673 b!7481662)))

(assert (=> bs!1933382 (= (and (= (reg!19942 lt!2628199) (reg!19942 lt!2628195)) (= lt!2628199 lt!2628195)) (= lambda!463626 lambda!463624))))

(assert (=> bs!1933372 (not (= lambda!463626 lambda!463571))))

(assert (=> b!7481673 true))

(assert (=> b!7481673 true))

(declare-fun bs!1933383 () Bool)

(declare-fun b!7481676 () Bool)

(assert (= bs!1933383 (and b!7481676 b!7481356)))

(declare-fun lambda!463627 () Int)

(assert (=> bs!1933383 (not (= lambda!463627 lambda!463594))))

(declare-fun bs!1933384 () Bool)

(assert (= bs!1933384 (and b!7481676 b!7480968)))

(assert (=> bs!1933384 (not (= lambda!463627 lambda!463568))))

(declare-fun bs!1933385 () Bool)

(assert (= bs!1933385 (and b!7481676 b!7481321)))

(assert (=> bs!1933385 (= (and (= s!13591 (_1!37641 lt!2628193)) (= (regOne!39738 lt!2628199) (regOne!39738 r2!5783)) (= (regTwo!39738 lt!2628199) (regTwo!39738 r2!5783))) (= lambda!463627 lambda!463593))))

(declare-fun bs!1933386 () Bool)

(assert (= bs!1933386 (and b!7481676 b!7481673)))

(assert (=> bs!1933386 (not (= lambda!463627 lambda!463626))))

(declare-fun bs!1933387 () Bool)

(assert (= bs!1933387 (and b!7481676 b!7480962)))

(assert (=> bs!1933387 (not (= lambda!463627 lambda!463570))))

(declare-fun bs!1933388 () Bool)

(assert (= bs!1933388 (and b!7481676 b!7481318)))

(assert (=> bs!1933388 (not (= lambda!463627 lambda!463592))))

(declare-fun bs!1933389 () Bool)

(assert (= bs!1933389 (and b!7481676 d!2300218)))

(assert (=> bs!1933389 (not (= lambda!463627 lambda!463623))))

(declare-fun bs!1933390 () Bool)

(assert (= bs!1933390 (and b!7481676 b!7481665)))

(assert (=> bs!1933390 (= (and (= (regOne!39738 lt!2628199) (regOne!39738 lt!2628195)) (= (regTwo!39738 lt!2628199) (regTwo!39738 lt!2628195))) (= lambda!463627 lambda!463625))))

(declare-fun bs!1933391 () Bool)

(assert (= bs!1933391 (and b!7481676 b!7481279)))

(assert (=> bs!1933391 (not (= lambda!463627 lambda!463589))))

(declare-fun bs!1933392 () Bool)

(assert (= bs!1933392 (and b!7481676 b!7481359)))

(assert (=> bs!1933392 (= (and (= s!13591 (_1!37641 lt!2628193)) (= (regOne!39738 lt!2628199) (regOne!39738 lt!2628187)) (= (regTwo!39738 lt!2628199) (regTwo!39738 lt!2628187))) (= lambda!463627 lambda!463597))))

(declare-fun bs!1933393 () Bool)

(assert (= bs!1933393 (and b!7481676 d!2300200)))

(assert (=> bs!1933393 (not (= lambda!463627 lambda!463620))))

(declare-fun bs!1933394 () Bool)

(assert (= bs!1933394 (and b!7481676 d!2300216)))

(assert (=> bs!1933394 (= (and (= (regOne!39738 lt!2628199) r1!5845) (= (regTwo!39738 lt!2628199) rTail!78)) (= lambda!463627 lambda!463622))))

(declare-fun bs!1933395 () Bool)

(assert (= bs!1933395 (and b!7481676 d!2300188)))

(assert (=> bs!1933395 (= (and (= (regOne!39738 lt!2628199) lt!2628187) (= (regTwo!39738 lt!2628199) rTail!78)) (= lambda!463627 lambda!463617))))

(declare-fun bs!1933396 () Bool)

(assert (= bs!1933396 (and b!7481676 b!7481282)))

(assert (=> bs!1933396 (= (and (= s!13591 (_1!37641 lt!2628193)) (= (regOne!39738 lt!2628199) (regOne!39738 r1!5845)) (= (regTwo!39738 lt!2628199) (regTwo!39738 r1!5845))) (= lambda!463627 lambda!463591))))

(assert (=> bs!1933395 (not (= lambda!463627 lambda!463616))))

(assert (=> bs!1933394 (not (= lambda!463627 lambda!463621))))

(assert (=> bs!1933384 (= (and (= (regOne!39738 lt!2628199) lt!2628187) (= (regTwo!39738 lt!2628199) rTail!78)) (= lambda!463627 lambda!463569))))

(declare-fun bs!1933397 () Bool)

(assert (= bs!1933397 (and b!7481676 b!7481662)))

(assert (=> bs!1933397 (not (= lambda!463627 lambda!463624))))

(assert (=> bs!1933387 (= (and (= (regOne!39738 lt!2628199) r1!5845) (= (regTwo!39738 lt!2628199) rTail!78)) (= lambda!463627 lambda!463571))))

(assert (=> b!7481676 true))

(assert (=> b!7481676 true))

(declare-fun b!7481668 () Bool)

(declare-fun res!3001688 () Bool)

(declare-fun e!4462632 () Bool)

(assert (=> b!7481668 (=> res!3001688 e!4462632)))

(declare-fun call!686847 () Bool)

(assert (=> b!7481668 (= res!3001688 call!686847)))

(declare-fun e!4462627 () Bool)

(assert (=> b!7481668 (= e!4462627 e!4462632)))

(declare-fun b!7481669 () Bool)

(declare-fun c!1381942 () Bool)

(assert (=> b!7481669 (= c!1381942 ((_ is ElementMatch!19613) lt!2628199))))

(declare-fun e!4462630 () Bool)

(declare-fun e!4462629 () Bool)

(assert (=> b!7481669 (= e!4462630 e!4462629)))

(declare-fun bm!686841 () Bool)

(assert (=> bm!686841 (= call!686847 (isEmpty!41216 s!13591))))

(declare-fun b!7481670 () Bool)

(declare-fun e!4462633 () Bool)

(assert (=> b!7481670 (= e!4462633 (matchRSpec!4292 (regTwo!39739 lt!2628199) s!13591))))

(declare-fun b!7481671 () Bool)

(declare-fun e!4462631 () Bool)

(assert (=> b!7481671 (= e!4462631 e!4462633)))

(declare-fun res!3001687 () Bool)

(assert (=> b!7481671 (= res!3001687 (matchRSpec!4292 (regOne!39739 lt!2628199) s!13591))))

(assert (=> b!7481671 (=> res!3001687 e!4462633)))

(declare-fun b!7481672 () Bool)

(assert (=> b!7481672 (= e!4462629 (= s!13591 (Cons!72205 (c!1381792 lt!2628199) Nil!72205)))))

(declare-fun call!686846 () Bool)

(assert (=> b!7481673 (= e!4462632 call!686846)))

(declare-fun b!7481675 () Bool)

(declare-fun e!4462628 () Bool)

(assert (=> b!7481675 (= e!4462628 call!686847)))

(assert (=> b!7481676 (= e!4462627 call!686846)))

(declare-fun c!1381941 () Bool)

(declare-fun bm!686842 () Bool)

(assert (=> bm!686842 (= call!686846 (Exists!4232 (ite c!1381941 lambda!463626 lambda!463627)))))

(declare-fun b!7481677 () Bool)

(declare-fun c!1381940 () Bool)

(assert (=> b!7481677 (= c!1381940 ((_ is Union!19613) lt!2628199))))

(assert (=> b!7481677 (= e!4462629 e!4462631)))

(declare-fun b!7481678 () Bool)

(assert (=> b!7481678 (= e!4462628 e!4462630)))

(declare-fun res!3001686 () Bool)

(assert (=> b!7481678 (= res!3001686 (not ((_ is EmptyLang!19613) lt!2628199)))))

(assert (=> b!7481678 (=> (not res!3001686) (not e!4462630))))

(declare-fun d!2300236 () Bool)

(declare-fun c!1381943 () Bool)

(assert (=> d!2300236 (= c!1381943 ((_ is EmptyExpr!19613) lt!2628199))))

(assert (=> d!2300236 (= (matchRSpec!4292 lt!2628199 s!13591) e!4462628)))

(declare-fun b!7481674 () Bool)

(assert (=> b!7481674 (= e!4462631 e!4462627)))

(assert (=> b!7481674 (= c!1381941 ((_ is Star!19613) lt!2628199))))

(assert (= (and d!2300236 c!1381943) b!7481675))

(assert (= (and d!2300236 (not c!1381943)) b!7481678))

(assert (= (and b!7481678 res!3001686) b!7481669))

(assert (= (and b!7481669 c!1381942) b!7481672))

(assert (= (and b!7481669 (not c!1381942)) b!7481677))

(assert (= (and b!7481677 c!1381940) b!7481671))

(assert (= (and b!7481677 (not c!1381940)) b!7481674))

(assert (= (and b!7481671 (not res!3001687)) b!7481670))

(assert (= (and b!7481674 c!1381941) b!7481668))

(assert (= (and b!7481674 (not c!1381941)) b!7481676))

(assert (= (and b!7481668 (not res!3001688)) b!7481673))

(assert (= (or b!7481673 b!7481676) bm!686842))

(assert (= (or b!7481675 b!7481668) bm!686841))

(assert (=> bm!686841 m!8073526))

(declare-fun m!8073556 () Bool)

(assert (=> b!7481670 m!8073556))

(declare-fun m!8073558 () Bool)

(assert (=> b!7481671 m!8073558))

(declare-fun m!8073560 () Bool)

(assert (=> bm!686842 m!8073560))

(assert (=> b!7480976 d!2300236))

(declare-fun bm!686843 () Bool)

(declare-fun call!686848 () Bool)

(assert (=> bm!686843 (= call!686848 (isEmpty!41216 s!13591))))

(declare-fun b!7481679 () Bool)

(declare-fun e!4462637 () Bool)

(declare-fun lt!2628277 () Bool)

(assert (=> b!7481679 (= e!4462637 (= lt!2628277 call!686848))))

(declare-fun b!7481680 () Bool)

(declare-fun e!4462635 () Bool)

(declare-fun e!4462640 () Bool)

(assert (=> b!7481680 (= e!4462635 e!4462640)))

(declare-fun res!3001691 () Bool)

(assert (=> b!7481680 (=> (not res!3001691) (not e!4462640))))

(assert (=> b!7481680 (= res!3001691 (not lt!2628277))))

(declare-fun b!7481681 () Bool)

(declare-fun res!3001695 () Bool)

(assert (=> b!7481681 (=> res!3001695 e!4462635)))

(assert (=> b!7481681 (= res!3001695 (not ((_ is ElementMatch!19613) lt!2628197)))))

(declare-fun e!4462639 () Bool)

(assert (=> b!7481681 (= e!4462639 e!4462635)))

(declare-fun b!7481682 () Bool)

(declare-fun e!4462638 () Bool)

(assert (=> b!7481682 (= e!4462638 (matchR!9377 (derivativeStep!5610 lt!2628197 (head!15350 s!13591)) (tail!14919 s!13591)))))

(declare-fun b!7481683 () Bool)

(declare-fun res!3001694 () Bool)

(declare-fun e!4462636 () Bool)

(assert (=> b!7481683 (=> (not res!3001694) (not e!4462636))))

(assert (=> b!7481683 (= res!3001694 (not call!686848))))

(declare-fun b!7481684 () Bool)

(assert (=> b!7481684 (= e!4462636 (= (head!15350 s!13591) (c!1381792 lt!2628197)))))

(declare-fun d!2300238 () Bool)

(assert (=> d!2300238 e!4462637))

(declare-fun c!1381946 () Bool)

(assert (=> d!2300238 (= c!1381946 ((_ is EmptyExpr!19613) lt!2628197))))

(assert (=> d!2300238 (= lt!2628277 e!4462638)))

(declare-fun c!1381945 () Bool)

(assert (=> d!2300238 (= c!1381945 (isEmpty!41216 s!13591))))

(assert (=> d!2300238 (validRegex!10127 lt!2628197)))

(assert (=> d!2300238 (= (matchR!9377 lt!2628197 s!13591) lt!2628277)))

(declare-fun b!7481685 () Bool)

(declare-fun res!3001693 () Bool)

(assert (=> b!7481685 (=> res!3001693 e!4462635)))

(assert (=> b!7481685 (= res!3001693 e!4462636)))

(declare-fun res!3001692 () Bool)

(assert (=> b!7481685 (=> (not res!3001692) (not e!4462636))))

(assert (=> b!7481685 (= res!3001692 lt!2628277)))

(declare-fun b!7481686 () Bool)

(declare-fun e!4462634 () Bool)

(assert (=> b!7481686 (= e!4462640 e!4462634)))

(declare-fun res!3001690 () Bool)

(assert (=> b!7481686 (=> res!3001690 e!4462634)))

(assert (=> b!7481686 (= res!3001690 call!686848)))

(declare-fun b!7481687 () Bool)

(declare-fun res!3001696 () Bool)

(assert (=> b!7481687 (=> (not res!3001696) (not e!4462636))))

(assert (=> b!7481687 (= res!3001696 (isEmpty!41216 (tail!14919 s!13591)))))

(declare-fun b!7481688 () Bool)

(assert (=> b!7481688 (= e!4462637 e!4462639)))

(declare-fun c!1381944 () Bool)

(assert (=> b!7481688 (= c!1381944 ((_ is EmptyLang!19613) lt!2628197))))

(declare-fun b!7481689 () Bool)

(assert (=> b!7481689 (= e!4462639 (not lt!2628277))))

(declare-fun b!7481690 () Bool)

(assert (=> b!7481690 (= e!4462634 (not (= (head!15350 s!13591) (c!1381792 lt!2628197))))))

(declare-fun b!7481691 () Bool)

(declare-fun res!3001689 () Bool)

(assert (=> b!7481691 (=> res!3001689 e!4462634)))

(assert (=> b!7481691 (= res!3001689 (not (isEmpty!41216 (tail!14919 s!13591))))))

(declare-fun b!7481692 () Bool)

(assert (=> b!7481692 (= e!4462638 (nullable!8551 lt!2628197))))

(assert (= (and d!2300238 c!1381945) b!7481692))

(assert (= (and d!2300238 (not c!1381945)) b!7481682))

(assert (= (and d!2300238 c!1381946) b!7481679))

(assert (= (and d!2300238 (not c!1381946)) b!7481688))

(assert (= (and b!7481688 c!1381944) b!7481689))

(assert (= (and b!7481688 (not c!1381944)) b!7481681))

(assert (= (and b!7481681 (not res!3001695)) b!7481685))

(assert (= (and b!7481685 res!3001692) b!7481683))

(assert (= (and b!7481683 res!3001694) b!7481687))

(assert (= (and b!7481687 res!3001696) b!7481684))

(assert (= (and b!7481685 (not res!3001693)) b!7481680))

(assert (= (and b!7481680 res!3001691) b!7481686))

(assert (= (and b!7481686 (not res!3001690)) b!7481691))

(assert (= (and b!7481691 (not res!3001689)) b!7481690))

(assert (= (or b!7481679 b!7481683 b!7481686) bm!686843))

(assert (=> bm!686843 m!8073526))

(assert (=> b!7481684 m!8073528))

(declare-fun m!8073562 () Bool)

(assert (=> b!7481692 m!8073562))

(assert (=> b!7481682 m!8073528))

(assert (=> b!7481682 m!8073528))

(declare-fun m!8073564 () Bool)

(assert (=> b!7481682 m!8073564))

(assert (=> b!7481682 m!8073534))

(assert (=> b!7481682 m!8073564))

(assert (=> b!7481682 m!8073534))

(declare-fun m!8073566 () Bool)

(assert (=> b!7481682 m!8073566))

(assert (=> d!2300238 m!8073526))

(declare-fun m!8073568 () Bool)

(assert (=> d!2300238 m!8073568))

(assert (=> b!7481690 m!8073528))

(assert (=> b!7481687 m!8073534))

(assert (=> b!7481687 m!8073534))

(assert (=> b!7481687 m!8073540))

(assert (=> b!7481691 m!8073534))

(assert (=> b!7481691 m!8073534))

(assert (=> b!7481691 m!8073540))

(assert (=> b!7480975 d!2300238))

(declare-fun bm!686844 () Bool)

(declare-fun call!686849 () Bool)

(assert (=> bm!686844 (= call!686849 (isEmpty!41216 s!13591))))

(declare-fun b!7481693 () Bool)

(declare-fun e!4462644 () Bool)

(declare-fun lt!2628278 () Bool)

(assert (=> b!7481693 (= e!4462644 (= lt!2628278 call!686849))))

(declare-fun b!7481694 () Bool)

(declare-fun e!4462642 () Bool)

(declare-fun e!4462647 () Bool)

(assert (=> b!7481694 (= e!4462642 e!4462647)))

(declare-fun res!3001699 () Bool)

(assert (=> b!7481694 (=> (not res!3001699) (not e!4462647))))

(assert (=> b!7481694 (= res!3001699 (not lt!2628278))))

(declare-fun b!7481695 () Bool)

(declare-fun res!3001703 () Bool)

(assert (=> b!7481695 (=> res!3001703 e!4462642)))

(assert (=> b!7481695 (= res!3001703 (not ((_ is ElementMatch!19613) lt!2628200)))))

(declare-fun e!4462646 () Bool)

(assert (=> b!7481695 (= e!4462646 e!4462642)))

(declare-fun b!7481696 () Bool)

(declare-fun e!4462645 () Bool)

(assert (=> b!7481696 (= e!4462645 (matchR!9377 (derivativeStep!5610 lt!2628200 (head!15350 s!13591)) (tail!14919 s!13591)))))

(declare-fun b!7481697 () Bool)

(declare-fun res!3001702 () Bool)

(declare-fun e!4462643 () Bool)

(assert (=> b!7481697 (=> (not res!3001702) (not e!4462643))))

(assert (=> b!7481697 (= res!3001702 (not call!686849))))

(declare-fun b!7481698 () Bool)

(assert (=> b!7481698 (= e!4462643 (= (head!15350 s!13591) (c!1381792 lt!2628200)))))

(declare-fun d!2300240 () Bool)

(assert (=> d!2300240 e!4462644))

(declare-fun c!1381949 () Bool)

(assert (=> d!2300240 (= c!1381949 ((_ is EmptyExpr!19613) lt!2628200))))

(assert (=> d!2300240 (= lt!2628278 e!4462645)))

(declare-fun c!1381948 () Bool)

(assert (=> d!2300240 (= c!1381948 (isEmpty!41216 s!13591))))

(assert (=> d!2300240 (validRegex!10127 lt!2628200)))

(assert (=> d!2300240 (= (matchR!9377 lt!2628200 s!13591) lt!2628278)))

(declare-fun b!7481699 () Bool)

(declare-fun res!3001701 () Bool)

(assert (=> b!7481699 (=> res!3001701 e!4462642)))

(assert (=> b!7481699 (= res!3001701 e!4462643)))

(declare-fun res!3001700 () Bool)

(assert (=> b!7481699 (=> (not res!3001700) (not e!4462643))))

(assert (=> b!7481699 (= res!3001700 lt!2628278)))

(declare-fun b!7481700 () Bool)

(declare-fun e!4462641 () Bool)

(assert (=> b!7481700 (= e!4462647 e!4462641)))

(declare-fun res!3001698 () Bool)

(assert (=> b!7481700 (=> res!3001698 e!4462641)))

(assert (=> b!7481700 (= res!3001698 call!686849)))

(declare-fun b!7481701 () Bool)

(declare-fun res!3001704 () Bool)

(assert (=> b!7481701 (=> (not res!3001704) (not e!4462643))))

(assert (=> b!7481701 (= res!3001704 (isEmpty!41216 (tail!14919 s!13591)))))

(declare-fun b!7481702 () Bool)

(assert (=> b!7481702 (= e!4462644 e!4462646)))

(declare-fun c!1381947 () Bool)

(assert (=> b!7481702 (= c!1381947 ((_ is EmptyLang!19613) lt!2628200))))

(declare-fun b!7481703 () Bool)

(assert (=> b!7481703 (= e!4462646 (not lt!2628278))))

(declare-fun b!7481704 () Bool)

(assert (=> b!7481704 (= e!4462641 (not (= (head!15350 s!13591) (c!1381792 lt!2628200))))))

(declare-fun b!7481705 () Bool)

(declare-fun res!3001697 () Bool)

(assert (=> b!7481705 (=> res!3001697 e!4462641)))

(assert (=> b!7481705 (= res!3001697 (not (isEmpty!41216 (tail!14919 s!13591))))))

(declare-fun b!7481706 () Bool)

(assert (=> b!7481706 (= e!4462645 (nullable!8551 lt!2628200))))

(assert (= (and d!2300240 c!1381948) b!7481706))

(assert (= (and d!2300240 (not c!1381948)) b!7481696))

(assert (= (and d!2300240 c!1381949) b!7481693))

(assert (= (and d!2300240 (not c!1381949)) b!7481702))

(assert (= (and b!7481702 c!1381947) b!7481703))

(assert (= (and b!7481702 (not c!1381947)) b!7481695))

(assert (= (and b!7481695 (not res!3001703)) b!7481699))

(assert (= (and b!7481699 res!3001700) b!7481697))

(assert (= (and b!7481697 res!3001702) b!7481701))

(assert (= (and b!7481701 res!3001704) b!7481698))

(assert (= (and b!7481699 (not res!3001701)) b!7481694))

(assert (= (and b!7481694 res!3001699) b!7481700))

(assert (= (and b!7481700 (not res!3001698)) b!7481705))

(assert (= (and b!7481705 (not res!3001697)) b!7481704))

(assert (= (or b!7481693 b!7481697 b!7481700) bm!686844))

(assert (=> bm!686844 m!8073526))

(assert (=> b!7481698 m!8073528))

(declare-fun m!8073570 () Bool)

(assert (=> b!7481706 m!8073570))

(assert (=> b!7481696 m!8073528))

(assert (=> b!7481696 m!8073528))

(declare-fun m!8073572 () Bool)

(assert (=> b!7481696 m!8073572))

(assert (=> b!7481696 m!8073534))

(assert (=> b!7481696 m!8073572))

(assert (=> b!7481696 m!8073534))

(declare-fun m!8073574 () Bool)

(assert (=> b!7481696 m!8073574))

(assert (=> d!2300240 m!8073526))

(declare-fun m!8073576 () Bool)

(assert (=> d!2300240 m!8073576))

(assert (=> b!7481704 m!8073528))

(assert (=> b!7481701 m!8073534))

(assert (=> b!7481701 m!8073534))

(assert (=> b!7481701 m!8073540))

(assert (=> b!7481705 m!8073534))

(assert (=> b!7481705 m!8073534))

(assert (=> b!7481705 m!8073540))

(assert (=> b!7480975 d!2300240))

(declare-fun d!2300242 () Bool)

(assert (=> d!2300242 (= (matchR!9377 lt!2628200 s!13591) (matchRSpec!4292 lt!2628200 s!13591))))

(declare-fun lt!2628279 () Unit!166061)

(assert (=> d!2300242 (= lt!2628279 (choose!57835 lt!2628200 s!13591))))

(assert (=> d!2300242 (validRegex!10127 lt!2628200)))

(assert (=> d!2300242 (= (mainMatchTheorem!4286 lt!2628200 s!13591) lt!2628279)))

(declare-fun bs!1933398 () Bool)

(assert (= bs!1933398 d!2300242))

(assert (=> bs!1933398 m!8073154))

(assert (=> bs!1933398 m!8073150))

(declare-fun m!8073578 () Bool)

(assert (=> bs!1933398 m!8073578))

(assert (=> bs!1933398 m!8073576))

(assert (=> b!7480975 d!2300242))

(declare-fun bs!1933399 () Bool)

(declare-fun b!7481712 () Bool)

(assert (= bs!1933399 (and b!7481712 b!7481356)))

(declare-fun lambda!463628 () Int)

(assert (=> bs!1933399 (= (and (= s!13591 (_1!37641 lt!2628193)) (= (reg!19942 lt!2628200) (reg!19942 lt!2628187)) (= lt!2628200 lt!2628187)) (= lambda!463628 lambda!463594))))

(declare-fun bs!1933400 () Bool)

(assert (= bs!1933400 (and b!7481712 b!7480968)))

(assert (=> bs!1933400 (not (= lambda!463628 lambda!463568))))

(declare-fun bs!1933401 () Bool)

(assert (= bs!1933401 (and b!7481712 b!7481321)))

(assert (=> bs!1933401 (not (= lambda!463628 lambda!463593))))

(declare-fun bs!1933402 () Bool)

(assert (= bs!1933402 (and b!7481712 b!7480962)))

(assert (=> bs!1933402 (not (= lambda!463628 lambda!463570))))

(declare-fun bs!1933403 () Bool)

(assert (= bs!1933403 (and b!7481712 b!7481318)))

(assert (=> bs!1933403 (= (and (= s!13591 (_1!37641 lt!2628193)) (= (reg!19942 lt!2628200) (reg!19942 r2!5783)) (= lt!2628200 r2!5783)) (= lambda!463628 lambda!463592))))

(declare-fun bs!1933404 () Bool)

(assert (= bs!1933404 (and b!7481712 d!2300218)))

(assert (=> bs!1933404 (not (= lambda!463628 lambda!463623))))

(declare-fun bs!1933405 () Bool)

(assert (= bs!1933405 (and b!7481712 b!7481665)))

(assert (=> bs!1933405 (not (= lambda!463628 lambda!463625))))

(declare-fun bs!1933406 () Bool)

(assert (= bs!1933406 (and b!7481712 b!7481279)))

(assert (=> bs!1933406 (= (and (= s!13591 (_1!37641 lt!2628193)) (= (reg!19942 lt!2628200) (reg!19942 r1!5845)) (= lt!2628200 r1!5845)) (= lambda!463628 lambda!463589))))

(declare-fun bs!1933407 () Bool)

(assert (= bs!1933407 (and b!7481712 b!7481359)))

(assert (=> bs!1933407 (not (= lambda!463628 lambda!463597))))

(declare-fun bs!1933408 () Bool)

(assert (= bs!1933408 (and b!7481712 d!2300200)))

(assert (=> bs!1933408 (not (= lambda!463628 lambda!463620))))

(declare-fun bs!1933409 () Bool)

(assert (= bs!1933409 (and b!7481712 d!2300216)))

(assert (=> bs!1933409 (not (= lambda!463628 lambda!463622))))

(declare-fun bs!1933410 () Bool)

(assert (= bs!1933410 (and b!7481712 d!2300188)))

(assert (=> bs!1933410 (not (= lambda!463628 lambda!463617))))

(declare-fun bs!1933411 () Bool)

(assert (= bs!1933411 (and b!7481712 b!7481673)))

(assert (=> bs!1933411 (= (and (= (reg!19942 lt!2628200) (reg!19942 lt!2628199)) (= lt!2628200 lt!2628199)) (= lambda!463628 lambda!463626))))

(declare-fun bs!1933412 () Bool)

(assert (= bs!1933412 (and b!7481712 b!7481676)))

(assert (=> bs!1933412 (not (= lambda!463628 lambda!463627))))

(declare-fun bs!1933413 () Bool)

(assert (= bs!1933413 (and b!7481712 b!7481282)))

(assert (=> bs!1933413 (not (= lambda!463628 lambda!463591))))

(assert (=> bs!1933410 (not (= lambda!463628 lambda!463616))))

(assert (=> bs!1933409 (not (= lambda!463628 lambda!463621))))

(assert (=> bs!1933400 (not (= lambda!463628 lambda!463569))))

(declare-fun bs!1933414 () Bool)

(assert (= bs!1933414 (and b!7481712 b!7481662)))

(assert (=> bs!1933414 (= (and (= (reg!19942 lt!2628200) (reg!19942 lt!2628195)) (= lt!2628200 lt!2628195)) (= lambda!463628 lambda!463624))))

(assert (=> bs!1933402 (not (= lambda!463628 lambda!463571))))

(assert (=> b!7481712 true))

(assert (=> b!7481712 true))

(declare-fun bs!1933415 () Bool)

(declare-fun b!7481715 () Bool)

(assert (= bs!1933415 (and b!7481715 b!7481356)))

(declare-fun lambda!463629 () Int)

(assert (=> bs!1933415 (not (= lambda!463629 lambda!463594))))

(declare-fun bs!1933416 () Bool)

(assert (= bs!1933416 (and b!7481715 b!7480968)))

(assert (=> bs!1933416 (not (= lambda!463629 lambda!463568))))

(declare-fun bs!1933417 () Bool)

(assert (= bs!1933417 (and b!7481715 b!7481321)))

(assert (=> bs!1933417 (= (and (= s!13591 (_1!37641 lt!2628193)) (= (regOne!39738 lt!2628200) (regOne!39738 r2!5783)) (= (regTwo!39738 lt!2628200) (regTwo!39738 r2!5783))) (= lambda!463629 lambda!463593))))

(declare-fun bs!1933418 () Bool)

(assert (= bs!1933418 (and b!7481715 b!7480962)))

(assert (=> bs!1933418 (not (= lambda!463629 lambda!463570))))

(declare-fun bs!1933419 () Bool)

(assert (= bs!1933419 (and b!7481715 b!7481318)))

(assert (=> bs!1933419 (not (= lambda!463629 lambda!463592))))

(declare-fun bs!1933420 () Bool)

(assert (= bs!1933420 (and b!7481715 d!2300218)))

(assert (=> bs!1933420 (not (= lambda!463629 lambda!463623))))

(declare-fun bs!1933421 () Bool)

(assert (= bs!1933421 (and b!7481715 b!7481665)))

(assert (=> bs!1933421 (= (and (= (regOne!39738 lt!2628200) (regOne!39738 lt!2628195)) (= (regTwo!39738 lt!2628200) (regTwo!39738 lt!2628195))) (= lambda!463629 lambda!463625))))

(declare-fun bs!1933422 () Bool)

(assert (= bs!1933422 (and b!7481715 b!7481279)))

(assert (=> bs!1933422 (not (= lambda!463629 lambda!463589))))

(declare-fun bs!1933423 () Bool)

(assert (= bs!1933423 (and b!7481715 b!7481359)))

(assert (=> bs!1933423 (= (and (= s!13591 (_1!37641 lt!2628193)) (= (regOne!39738 lt!2628200) (regOne!39738 lt!2628187)) (= (regTwo!39738 lt!2628200) (regTwo!39738 lt!2628187))) (= lambda!463629 lambda!463597))))

(declare-fun bs!1933424 () Bool)

(assert (= bs!1933424 (and b!7481715 d!2300200)))

(assert (=> bs!1933424 (not (= lambda!463629 lambda!463620))))

(declare-fun bs!1933425 () Bool)

(assert (= bs!1933425 (and b!7481715 b!7481712)))

(assert (=> bs!1933425 (not (= lambda!463629 lambda!463628))))

(declare-fun bs!1933426 () Bool)

(assert (= bs!1933426 (and b!7481715 d!2300216)))

(assert (=> bs!1933426 (= (and (= (regOne!39738 lt!2628200) r1!5845) (= (regTwo!39738 lt!2628200) rTail!78)) (= lambda!463629 lambda!463622))))

(declare-fun bs!1933427 () Bool)

(assert (= bs!1933427 (and b!7481715 d!2300188)))

(assert (=> bs!1933427 (= (and (= (regOne!39738 lt!2628200) lt!2628187) (= (regTwo!39738 lt!2628200) rTail!78)) (= lambda!463629 lambda!463617))))

(declare-fun bs!1933428 () Bool)

(assert (= bs!1933428 (and b!7481715 b!7481673)))

(assert (=> bs!1933428 (not (= lambda!463629 lambda!463626))))

(declare-fun bs!1933429 () Bool)

(assert (= bs!1933429 (and b!7481715 b!7481676)))

(assert (=> bs!1933429 (= (and (= (regOne!39738 lt!2628200) (regOne!39738 lt!2628199)) (= (regTwo!39738 lt!2628200) (regTwo!39738 lt!2628199))) (= lambda!463629 lambda!463627))))

(declare-fun bs!1933430 () Bool)

(assert (= bs!1933430 (and b!7481715 b!7481282)))

(assert (=> bs!1933430 (= (and (= s!13591 (_1!37641 lt!2628193)) (= (regOne!39738 lt!2628200) (regOne!39738 r1!5845)) (= (regTwo!39738 lt!2628200) (regTwo!39738 r1!5845))) (= lambda!463629 lambda!463591))))

(assert (=> bs!1933427 (not (= lambda!463629 lambda!463616))))

(assert (=> bs!1933426 (not (= lambda!463629 lambda!463621))))

(assert (=> bs!1933416 (= (and (= (regOne!39738 lt!2628200) lt!2628187) (= (regTwo!39738 lt!2628200) rTail!78)) (= lambda!463629 lambda!463569))))

(declare-fun bs!1933431 () Bool)

(assert (= bs!1933431 (and b!7481715 b!7481662)))

(assert (=> bs!1933431 (not (= lambda!463629 lambda!463624))))

(assert (=> bs!1933418 (= (and (= (regOne!39738 lt!2628200) r1!5845) (= (regTwo!39738 lt!2628200) rTail!78)) (= lambda!463629 lambda!463571))))

(assert (=> b!7481715 true))

(assert (=> b!7481715 true))

(declare-fun b!7481707 () Bool)

(declare-fun res!3001707 () Bool)

(declare-fun e!4462653 () Bool)

(assert (=> b!7481707 (=> res!3001707 e!4462653)))

(declare-fun call!686851 () Bool)

(assert (=> b!7481707 (= res!3001707 call!686851)))

(declare-fun e!4462648 () Bool)

(assert (=> b!7481707 (= e!4462648 e!4462653)))

(declare-fun b!7481708 () Bool)

(declare-fun c!1381952 () Bool)

(assert (=> b!7481708 (= c!1381952 ((_ is ElementMatch!19613) lt!2628200))))

(declare-fun e!4462651 () Bool)

(declare-fun e!4462650 () Bool)

(assert (=> b!7481708 (= e!4462651 e!4462650)))

(declare-fun bm!686845 () Bool)

(assert (=> bm!686845 (= call!686851 (isEmpty!41216 s!13591))))

(declare-fun b!7481709 () Bool)

(declare-fun e!4462654 () Bool)

(assert (=> b!7481709 (= e!4462654 (matchRSpec!4292 (regTwo!39739 lt!2628200) s!13591))))

(declare-fun b!7481710 () Bool)

(declare-fun e!4462652 () Bool)

(assert (=> b!7481710 (= e!4462652 e!4462654)))

(declare-fun res!3001706 () Bool)

(assert (=> b!7481710 (= res!3001706 (matchRSpec!4292 (regOne!39739 lt!2628200) s!13591))))

(assert (=> b!7481710 (=> res!3001706 e!4462654)))

(declare-fun b!7481711 () Bool)

(assert (=> b!7481711 (= e!4462650 (= s!13591 (Cons!72205 (c!1381792 lt!2628200) Nil!72205)))))

(declare-fun call!686850 () Bool)

(assert (=> b!7481712 (= e!4462653 call!686850)))

(declare-fun b!7481714 () Bool)

(declare-fun e!4462649 () Bool)

(assert (=> b!7481714 (= e!4462649 call!686851)))

(assert (=> b!7481715 (= e!4462648 call!686850)))

(declare-fun bm!686846 () Bool)

(declare-fun c!1381951 () Bool)

(assert (=> bm!686846 (= call!686850 (Exists!4232 (ite c!1381951 lambda!463628 lambda!463629)))))

(declare-fun b!7481716 () Bool)

(declare-fun c!1381950 () Bool)

(assert (=> b!7481716 (= c!1381950 ((_ is Union!19613) lt!2628200))))

(assert (=> b!7481716 (= e!4462650 e!4462652)))

(declare-fun b!7481717 () Bool)

(assert (=> b!7481717 (= e!4462649 e!4462651)))

(declare-fun res!3001705 () Bool)

(assert (=> b!7481717 (= res!3001705 (not ((_ is EmptyLang!19613) lt!2628200)))))

(assert (=> b!7481717 (=> (not res!3001705) (not e!4462651))))

(declare-fun d!2300244 () Bool)

(declare-fun c!1381953 () Bool)

(assert (=> d!2300244 (= c!1381953 ((_ is EmptyExpr!19613) lt!2628200))))

(assert (=> d!2300244 (= (matchRSpec!4292 lt!2628200 s!13591) e!4462649)))

(declare-fun b!7481713 () Bool)

(assert (=> b!7481713 (= e!4462652 e!4462648)))

(assert (=> b!7481713 (= c!1381951 ((_ is Star!19613) lt!2628200))))

(assert (= (and d!2300244 c!1381953) b!7481714))

(assert (= (and d!2300244 (not c!1381953)) b!7481717))

(assert (= (and b!7481717 res!3001705) b!7481708))

(assert (= (and b!7481708 c!1381952) b!7481711))

(assert (= (and b!7481708 (not c!1381952)) b!7481716))

(assert (= (and b!7481716 c!1381950) b!7481710))

(assert (= (and b!7481716 (not c!1381950)) b!7481713))

(assert (= (and b!7481710 (not res!3001706)) b!7481709))

(assert (= (and b!7481713 c!1381951) b!7481707))

(assert (= (and b!7481713 (not c!1381951)) b!7481715))

(assert (= (and b!7481707 (not res!3001707)) b!7481712))

(assert (= (or b!7481712 b!7481715) bm!686846))

(assert (= (or b!7481714 b!7481707) bm!686845))

(assert (=> bm!686845 m!8073526))

(declare-fun m!8073580 () Bool)

(assert (=> b!7481709 m!8073580))

(declare-fun m!8073582 () Bool)

(assert (=> b!7481710 m!8073582))

(declare-fun m!8073584 () Bool)

(assert (=> bm!686846 m!8073584))

(assert (=> b!7480975 d!2300244))

(declare-fun bs!1933432 () Bool)

(declare-fun b!7481723 () Bool)

(assert (= bs!1933432 (and b!7481723 b!7481356)))

(declare-fun lambda!463630 () Int)

(assert (=> bs!1933432 (= (and (= s!13591 (_1!37641 lt!2628193)) (= (reg!19942 lt!2628197) (reg!19942 lt!2628187)) (= lt!2628197 lt!2628187)) (= lambda!463630 lambda!463594))))

(declare-fun bs!1933433 () Bool)

(assert (= bs!1933433 (and b!7481723 b!7480968)))

(assert (=> bs!1933433 (not (= lambda!463630 lambda!463568))))

(declare-fun bs!1933434 () Bool)

(assert (= bs!1933434 (and b!7481723 b!7481321)))

(assert (=> bs!1933434 (not (= lambda!463630 lambda!463593))))

(declare-fun bs!1933435 () Bool)

(assert (= bs!1933435 (and b!7481723 b!7480962)))

(assert (=> bs!1933435 (not (= lambda!463630 lambda!463570))))

(declare-fun bs!1933436 () Bool)

(assert (= bs!1933436 (and b!7481723 b!7481318)))

(assert (=> bs!1933436 (= (and (= s!13591 (_1!37641 lt!2628193)) (= (reg!19942 lt!2628197) (reg!19942 r2!5783)) (= lt!2628197 r2!5783)) (= lambda!463630 lambda!463592))))

(declare-fun bs!1933437 () Bool)

(assert (= bs!1933437 (and b!7481723 d!2300218)))

(assert (=> bs!1933437 (not (= lambda!463630 lambda!463623))))

(declare-fun bs!1933438 () Bool)

(assert (= bs!1933438 (and b!7481723 b!7481665)))

(assert (=> bs!1933438 (not (= lambda!463630 lambda!463625))))

(declare-fun bs!1933439 () Bool)

(assert (= bs!1933439 (and b!7481723 b!7481279)))

(assert (=> bs!1933439 (= (and (= s!13591 (_1!37641 lt!2628193)) (= (reg!19942 lt!2628197) (reg!19942 r1!5845)) (= lt!2628197 r1!5845)) (= lambda!463630 lambda!463589))))

(declare-fun bs!1933440 () Bool)

(assert (= bs!1933440 (and b!7481723 b!7481359)))

(assert (=> bs!1933440 (not (= lambda!463630 lambda!463597))))

(declare-fun bs!1933441 () Bool)

(assert (= bs!1933441 (and b!7481723 d!2300200)))

(assert (=> bs!1933441 (not (= lambda!463630 lambda!463620))))

(declare-fun bs!1933442 () Bool)

(assert (= bs!1933442 (and b!7481723 b!7481712)))

(assert (=> bs!1933442 (= (and (= (reg!19942 lt!2628197) (reg!19942 lt!2628200)) (= lt!2628197 lt!2628200)) (= lambda!463630 lambda!463628))))

(declare-fun bs!1933443 () Bool)

(assert (= bs!1933443 (and b!7481723 d!2300216)))

(assert (=> bs!1933443 (not (= lambda!463630 lambda!463622))))

(declare-fun bs!1933444 () Bool)

(assert (= bs!1933444 (and b!7481723 d!2300188)))

(assert (=> bs!1933444 (not (= lambda!463630 lambda!463617))))

(declare-fun bs!1933445 () Bool)

(assert (= bs!1933445 (and b!7481723 b!7481715)))

(assert (=> bs!1933445 (not (= lambda!463630 lambda!463629))))

(declare-fun bs!1933446 () Bool)

(assert (= bs!1933446 (and b!7481723 b!7481673)))

(assert (=> bs!1933446 (= (and (= (reg!19942 lt!2628197) (reg!19942 lt!2628199)) (= lt!2628197 lt!2628199)) (= lambda!463630 lambda!463626))))

(declare-fun bs!1933447 () Bool)

(assert (= bs!1933447 (and b!7481723 b!7481676)))

(assert (=> bs!1933447 (not (= lambda!463630 lambda!463627))))

(declare-fun bs!1933448 () Bool)

(assert (= bs!1933448 (and b!7481723 b!7481282)))

(assert (=> bs!1933448 (not (= lambda!463630 lambda!463591))))

(assert (=> bs!1933444 (not (= lambda!463630 lambda!463616))))

(assert (=> bs!1933443 (not (= lambda!463630 lambda!463621))))

(assert (=> bs!1933433 (not (= lambda!463630 lambda!463569))))

(declare-fun bs!1933449 () Bool)

(assert (= bs!1933449 (and b!7481723 b!7481662)))

(assert (=> bs!1933449 (= (and (= (reg!19942 lt!2628197) (reg!19942 lt!2628195)) (= lt!2628197 lt!2628195)) (= lambda!463630 lambda!463624))))

(assert (=> bs!1933435 (not (= lambda!463630 lambda!463571))))

(assert (=> b!7481723 true))

(assert (=> b!7481723 true))

(declare-fun bs!1933450 () Bool)

(declare-fun b!7481726 () Bool)

(assert (= bs!1933450 (and b!7481726 b!7481356)))

(declare-fun lambda!463631 () Int)

(assert (=> bs!1933450 (not (= lambda!463631 lambda!463594))))

(declare-fun bs!1933451 () Bool)

(assert (= bs!1933451 (and b!7481726 b!7480968)))

(assert (=> bs!1933451 (not (= lambda!463631 lambda!463568))))

(declare-fun bs!1933452 () Bool)

(assert (= bs!1933452 (and b!7481726 b!7481321)))

(assert (=> bs!1933452 (= (and (= s!13591 (_1!37641 lt!2628193)) (= (regOne!39738 lt!2628197) (regOne!39738 r2!5783)) (= (regTwo!39738 lt!2628197) (regTwo!39738 r2!5783))) (= lambda!463631 lambda!463593))))

(declare-fun bs!1933453 () Bool)

(assert (= bs!1933453 (and b!7481726 b!7480962)))

(assert (=> bs!1933453 (not (= lambda!463631 lambda!463570))))

(declare-fun bs!1933454 () Bool)

(assert (= bs!1933454 (and b!7481726 b!7481318)))

(assert (=> bs!1933454 (not (= lambda!463631 lambda!463592))))

(declare-fun bs!1933455 () Bool)

(assert (= bs!1933455 (and b!7481726 d!2300218)))

(assert (=> bs!1933455 (not (= lambda!463631 lambda!463623))))

(declare-fun bs!1933456 () Bool)

(assert (= bs!1933456 (and b!7481726 b!7481665)))

(assert (=> bs!1933456 (= (and (= (regOne!39738 lt!2628197) (regOne!39738 lt!2628195)) (= (regTwo!39738 lt!2628197) (regTwo!39738 lt!2628195))) (= lambda!463631 lambda!463625))))

(declare-fun bs!1933457 () Bool)

(assert (= bs!1933457 (and b!7481726 b!7481279)))

(assert (=> bs!1933457 (not (= lambda!463631 lambda!463589))))

(declare-fun bs!1933458 () Bool)

(assert (= bs!1933458 (and b!7481726 b!7481359)))

(assert (=> bs!1933458 (= (and (= s!13591 (_1!37641 lt!2628193)) (= (regOne!39738 lt!2628197) (regOne!39738 lt!2628187)) (= (regTwo!39738 lt!2628197) (regTwo!39738 lt!2628187))) (= lambda!463631 lambda!463597))))

(declare-fun bs!1933459 () Bool)

(assert (= bs!1933459 (and b!7481726 d!2300200)))

(assert (=> bs!1933459 (not (= lambda!463631 lambda!463620))))

(declare-fun bs!1933460 () Bool)

(assert (= bs!1933460 (and b!7481726 b!7481712)))

(assert (=> bs!1933460 (not (= lambda!463631 lambda!463628))))

(declare-fun bs!1933461 () Bool)

(assert (= bs!1933461 (and b!7481726 d!2300216)))

(assert (=> bs!1933461 (= (and (= (regOne!39738 lt!2628197) r1!5845) (= (regTwo!39738 lt!2628197) rTail!78)) (= lambda!463631 lambda!463622))))

(declare-fun bs!1933462 () Bool)

(assert (= bs!1933462 (and b!7481726 d!2300188)))

(assert (=> bs!1933462 (= (and (= (regOne!39738 lt!2628197) lt!2628187) (= (regTwo!39738 lt!2628197) rTail!78)) (= lambda!463631 lambda!463617))))

(declare-fun bs!1933463 () Bool)

(assert (= bs!1933463 (and b!7481726 b!7481715)))

(assert (=> bs!1933463 (= (and (= (regOne!39738 lt!2628197) (regOne!39738 lt!2628200)) (= (regTwo!39738 lt!2628197) (regTwo!39738 lt!2628200))) (= lambda!463631 lambda!463629))))

(declare-fun bs!1933464 () Bool)

(assert (= bs!1933464 (and b!7481726 b!7481723)))

(assert (=> bs!1933464 (not (= lambda!463631 lambda!463630))))

(declare-fun bs!1933465 () Bool)

(assert (= bs!1933465 (and b!7481726 b!7481673)))

(assert (=> bs!1933465 (not (= lambda!463631 lambda!463626))))

(declare-fun bs!1933466 () Bool)

(assert (= bs!1933466 (and b!7481726 b!7481676)))

(assert (=> bs!1933466 (= (and (= (regOne!39738 lt!2628197) (regOne!39738 lt!2628199)) (= (regTwo!39738 lt!2628197) (regTwo!39738 lt!2628199))) (= lambda!463631 lambda!463627))))

(declare-fun bs!1933467 () Bool)

(assert (= bs!1933467 (and b!7481726 b!7481282)))

(assert (=> bs!1933467 (= (and (= s!13591 (_1!37641 lt!2628193)) (= (regOne!39738 lt!2628197) (regOne!39738 r1!5845)) (= (regTwo!39738 lt!2628197) (regTwo!39738 r1!5845))) (= lambda!463631 lambda!463591))))

(assert (=> bs!1933462 (not (= lambda!463631 lambda!463616))))

(assert (=> bs!1933461 (not (= lambda!463631 lambda!463621))))

(assert (=> bs!1933451 (= (and (= (regOne!39738 lt!2628197) lt!2628187) (= (regTwo!39738 lt!2628197) rTail!78)) (= lambda!463631 lambda!463569))))

(declare-fun bs!1933468 () Bool)

(assert (= bs!1933468 (and b!7481726 b!7481662)))

(assert (=> bs!1933468 (not (= lambda!463631 lambda!463624))))

(assert (=> bs!1933453 (= (and (= (regOne!39738 lt!2628197) r1!5845) (= (regTwo!39738 lt!2628197) rTail!78)) (= lambda!463631 lambda!463571))))

(assert (=> b!7481726 true))

(assert (=> b!7481726 true))

(declare-fun b!7481718 () Bool)

(declare-fun res!3001710 () Bool)

(declare-fun e!4462660 () Bool)

(assert (=> b!7481718 (=> res!3001710 e!4462660)))

(declare-fun call!686853 () Bool)

(assert (=> b!7481718 (= res!3001710 call!686853)))

(declare-fun e!4462655 () Bool)

(assert (=> b!7481718 (= e!4462655 e!4462660)))

(declare-fun b!7481719 () Bool)

(declare-fun c!1381956 () Bool)

(assert (=> b!7481719 (= c!1381956 ((_ is ElementMatch!19613) lt!2628197))))

(declare-fun e!4462658 () Bool)

(declare-fun e!4462657 () Bool)

(assert (=> b!7481719 (= e!4462658 e!4462657)))

(declare-fun bm!686847 () Bool)

(assert (=> bm!686847 (= call!686853 (isEmpty!41216 s!13591))))

(declare-fun b!7481720 () Bool)

(declare-fun e!4462661 () Bool)

(assert (=> b!7481720 (= e!4462661 (matchRSpec!4292 (regTwo!39739 lt!2628197) s!13591))))

(declare-fun b!7481721 () Bool)

(declare-fun e!4462659 () Bool)

(assert (=> b!7481721 (= e!4462659 e!4462661)))

(declare-fun res!3001709 () Bool)

(assert (=> b!7481721 (= res!3001709 (matchRSpec!4292 (regOne!39739 lt!2628197) s!13591))))

(assert (=> b!7481721 (=> res!3001709 e!4462661)))

(declare-fun b!7481722 () Bool)

(assert (=> b!7481722 (= e!4462657 (= s!13591 (Cons!72205 (c!1381792 lt!2628197) Nil!72205)))))

(declare-fun call!686852 () Bool)

(assert (=> b!7481723 (= e!4462660 call!686852)))

(declare-fun b!7481725 () Bool)

(declare-fun e!4462656 () Bool)

(assert (=> b!7481725 (= e!4462656 call!686853)))

(assert (=> b!7481726 (= e!4462655 call!686852)))

(declare-fun c!1381955 () Bool)

(declare-fun bm!686848 () Bool)

(assert (=> bm!686848 (= call!686852 (Exists!4232 (ite c!1381955 lambda!463630 lambda!463631)))))

(declare-fun b!7481727 () Bool)

(declare-fun c!1381954 () Bool)

(assert (=> b!7481727 (= c!1381954 ((_ is Union!19613) lt!2628197))))

(assert (=> b!7481727 (= e!4462657 e!4462659)))

(declare-fun b!7481728 () Bool)

(assert (=> b!7481728 (= e!4462656 e!4462658)))

(declare-fun res!3001708 () Bool)

(assert (=> b!7481728 (= res!3001708 (not ((_ is EmptyLang!19613) lt!2628197)))))

(assert (=> b!7481728 (=> (not res!3001708) (not e!4462658))))

(declare-fun d!2300246 () Bool)

(declare-fun c!1381957 () Bool)

(assert (=> d!2300246 (= c!1381957 ((_ is EmptyExpr!19613) lt!2628197))))

(assert (=> d!2300246 (= (matchRSpec!4292 lt!2628197 s!13591) e!4462656)))

(declare-fun b!7481724 () Bool)

(assert (=> b!7481724 (= e!4462659 e!4462655)))

(assert (=> b!7481724 (= c!1381955 ((_ is Star!19613) lt!2628197))))

(assert (= (and d!2300246 c!1381957) b!7481725))

(assert (= (and d!2300246 (not c!1381957)) b!7481728))

(assert (= (and b!7481728 res!3001708) b!7481719))

(assert (= (and b!7481719 c!1381956) b!7481722))

(assert (= (and b!7481719 (not c!1381956)) b!7481727))

(assert (= (and b!7481727 c!1381954) b!7481721))

(assert (= (and b!7481727 (not c!1381954)) b!7481724))

(assert (= (and b!7481721 (not res!3001709)) b!7481720))

(assert (= (and b!7481724 c!1381955) b!7481718))

(assert (= (and b!7481724 (not c!1381955)) b!7481726))

(assert (= (and b!7481718 (not res!3001710)) b!7481723))

(assert (= (or b!7481723 b!7481726) bm!686848))

(assert (= (or b!7481725 b!7481718) bm!686847))

(assert (=> bm!686847 m!8073526))

(declare-fun m!8073586 () Bool)

(assert (=> b!7481720 m!8073586))

(declare-fun m!8073588 () Bool)

(assert (=> b!7481721 m!8073588))

(declare-fun m!8073590 () Bool)

(assert (=> bm!686848 m!8073590))

(assert (=> b!7480975 d!2300246))

(declare-fun d!2300248 () Bool)

(assert (=> d!2300248 (= (matchR!9377 lt!2628197 s!13591) (matchRSpec!4292 lt!2628197 s!13591))))

(declare-fun lt!2628280 () Unit!166061)

(assert (=> d!2300248 (= lt!2628280 (choose!57835 lt!2628197 s!13591))))

(assert (=> d!2300248 (validRegex!10127 lt!2628197)))

(assert (=> d!2300248 (= (mainMatchTheorem!4286 lt!2628197 s!13591) lt!2628280)))

(declare-fun bs!1933469 () Bool)

(assert (= bs!1933469 d!2300248))

(assert (=> bs!1933469 m!8073146))

(assert (=> bs!1933469 m!8073148))

(declare-fun m!8073592 () Bool)

(assert (=> bs!1933469 m!8073592))

(assert (=> bs!1933469 m!8073568))

(assert (=> b!7480975 d!2300248))

(declare-fun bm!686849 () Bool)

(declare-fun call!686854 () Bool)

(assert (=> bm!686849 (= call!686854 (isEmpty!41216 (_2!37641 lt!2628193)))))

(declare-fun b!7481729 () Bool)

(declare-fun e!4462665 () Bool)

(declare-fun lt!2628281 () Bool)

(assert (=> b!7481729 (= e!4462665 (= lt!2628281 call!686854))))

(declare-fun b!7481730 () Bool)

(declare-fun e!4462663 () Bool)

(declare-fun e!4462668 () Bool)

(assert (=> b!7481730 (= e!4462663 e!4462668)))

(declare-fun res!3001713 () Bool)

(assert (=> b!7481730 (=> (not res!3001713) (not e!4462668))))

(assert (=> b!7481730 (= res!3001713 (not lt!2628281))))

(declare-fun b!7481731 () Bool)

(declare-fun res!3001717 () Bool)

(assert (=> b!7481731 (=> res!3001717 e!4462663)))

(assert (=> b!7481731 (= res!3001717 (not ((_ is ElementMatch!19613) rTail!78)))))

(declare-fun e!4462667 () Bool)

(assert (=> b!7481731 (= e!4462667 e!4462663)))

(declare-fun b!7481732 () Bool)

(declare-fun e!4462666 () Bool)

(assert (=> b!7481732 (= e!4462666 (matchR!9377 (derivativeStep!5610 rTail!78 (head!15350 (_2!37641 lt!2628193))) (tail!14919 (_2!37641 lt!2628193))))))

(declare-fun b!7481733 () Bool)

(declare-fun res!3001716 () Bool)

(declare-fun e!4462664 () Bool)

(assert (=> b!7481733 (=> (not res!3001716) (not e!4462664))))

(assert (=> b!7481733 (= res!3001716 (not call!686854))))

(declare-fun b!7481734 () Bool)

(assert (=> b!7481734 (= e!4462664 (= (head!15350 (_2!37641 lt!2628193)) (c!1381792 rTail!78)))))

(declare-fun d!2300250 () Bool)

(assert (=> d!2300250 e!4462665))

(declare-fun c!1381960 () Bool)

(assert (=> d!2300250 (= c!1381960 ((_ is EmptyExpr!19613) rTail!78))))

(assert (=> d!2300250 (= lt!2628281 e!4462666)))

(declare-fun c!1381959 () Bool)

(assert (=> d!2300250 (= c!1381959 (isEmpty!41216 (_2!37641 lt!2628193)))))

(assert (=> d!2300250 (validRegex!10127 rTail!78)))

(assert (=> d!2300250 (= (matchR!9377 rTail!78 (_2!37641 lt!2628193)) lt!2628281)))

(declare-fun b!7481735 () Bool)

(declare-fun res!3001715 () Bool)

(assert (=> b!7481735 (=> res!3001715 e!4462663)))

(assert (=> b!7481735 (= res!3001715 e!4462664)))

(declare-fun res!3001714 () Bool)

(assert (=> b!7481735 (=> (not res!3001714) (not e!4462664))))

(assert (=> b!7481735 (= res!3001714 lt!2628281)))

(declare-fun b!7481736 () Bool)

(declare-fun e!4462662 () Bool)

(assert (=> b!7481736 (= e!4462668 e!4462662)))

(declare-fun res!3001712 () Bool)

(assert (=> b!7481736 (=> res!3001712 e!4462662)))

(assert (=> b!7481736 (= res!3001712 call!686854)))

(declare-fun b!7481737 () Bool)

(declare-fun res!3001718 () Bool)

(assert (=> b!7481737 (=> (not res!3001718) (not e!4462664))))

(assert (=> b!7481737 (= res!3001718 (isEmpty!41216 (tail!14919 (_2!37641 lt!2628193))))))

(declare-fun b!7481738 () Bool)

(assert (=> b!7481738 (= e!4462665 e!4462667)))

(declare-fun c!1381958 () Bool)

(assert (=> b!7481738 (= c!1381958 ((_ is EmptyLang!19613) rTail!78))))

(declare-fun b!7481739 () Bool)

(assert (=> b!7481739 (= e!4462667 (not lt!2628281))))

(declare-fun b!7481740 () Bool)

(assert (=> b!7481740 (= e!4462662 (not (= (head!15350 (_2!37641 lt!2628193)) (c!1381792 rTail!78))))))

(declare-fun b!7481741 () Bool)

(declare-fun res!3001711 () Bool)

(assert (=> b!7481741 (=> res!3001711 e!4462662)))

(assert (=> b!7481741 (= res!3001711 (not (isEmpty!41216 (tail!14919 (_2!37641 lt!2628193)))))))

(declare-fun b!7481742 () Bool)

(assert (=> b!7481742 (= e!4462666 (nullable!8551 rTail!78))))

(assert (= (and d!2300250 c!1381959) b!7481742))

(assert (= (and d!2300250 (not c!1381959)) b!7481732))

(assert (= (and d!2300250 c!1381960) b!7481729))

(assert (= (and d!2300250 (not c!1381960)) b!7481738))

(assert (= (and b!7481738 c!1381958) b!7481739))

(assert (= (and b!7481738 (not c!1381958)) b!7481731))

(assert (= (and b!7481731 (not res!3001717)) b!7481735))

(assert (= (and b!7481735 res!3001714) b!7481733))

(assert (= (and b!7481733 res!3001716) b!7481737))

(assert (= (and b!7481737 res!3001718) b!7481734))

(assert (= (and b!7481735 (not res!3001715)) b!7481730))

(assert (= (and b!7481730 res!3001713) b!7481736))

(assert (= (and b!7481736 (not res!3001712)) b!7481741))

(assert (= (and b!7481741 (not res!3001711)) b!7481740))

(assert (= (or b!7481729 b!7481733 b!7481736) bm!686849))

(declare-fun m!8073594 () Bool)

(assert (=> bm!686849 m!8073594))

(declare-fun m!8073596 () Bool)

(assert (=> b!7481734 m!8073596))

(declare-fun m!8073598 () Bool)

(assert (=> b!7481742 m!8073598))

(assert (=> b!7481732 m!8073596))

(assert (=> b!7481732 m!8073596))

(declare-fun m!8073600 () Bool)

(assert (=> b!7481732 m!8073600))

(declare-fun m!8073602 () Bool)

(assert (=> b!7481732 m!8073602))

(assert (=> b!7481732 m!8073600))

(assert (=> b!7481732 m!8073602))

(declare-fun m!8073604 () Bool)

(assert (=> b!7481732 m!8073604))

(assert (=> d!2300250 m!8073594))

(assert (=> d!2300250 m!8073096))

(assert (=> b!7481740 m!8073596))

(assert (=> b!7481737 m!8073602))

(assert (=> b!7481737 m!8073602))

(declare-fun m!8073606 () Bool)

(assert (=> b!7481737 m!8073606))

(assert (=> b!7481741 m!8073602))

(assert (=> b!7481741 m!8073602))

(assert (=> b!7481741 m!8073606))

(assert (=> b!7480969 d!2300250))

(declare-fun b!7481756 () Bool)

(declare-fun e!4462671 () Bool)

(declare-fun tp!2169953 () Bool)

(declare-fun tp!2169950 () Bool)

(assert (=> b!7481756 (= e!4462671 (and tp!2169953 tp!2169950))))

(assert (=> b!7480974 (= tp!2169850 e!4462671)))

(declare-fun b!7481753 () Bool)

(assert (=> b!7481753 (= e!4462671 tp_is_empty!49515)))

(declare-fun b!7481754 () Bool)

(declare-fun tp!2169954 () Bool)

(declare-fun tp!2169951 () Bool)

(assert (=> b!7481754 (= e!4462671 (and tp!2169954 tp!2169951))))

(declare-fun b!7481755 () Bool)

(declare-fun tp!2169952 () Bool)

(assert (=> b!7481755 (= e!4462671 tp!2169952)))

(assert (= (and b!7480974 ((_ is ElementMatch!19613) (regOne!39739 r2!5783))) b!7481753))

(assert (= (and b!7480974 ((_ is Concat!28458) (regOne!39739 r2!5783))) b!7481754))

(assert (= (and b!7480974 ((_ is Star!19613) (regOne!39739 r2!5783))) b!7481755))

(assert (= (and b!7480974 ((_ is Union!19613) (regOne!39739 r2!5783))) b!7481756))

(declare-fun b!7481760 () Bool)

(declare-fun e!4462672 () Bool)

(declare-fun tp!2169958 () Bool)

(declare-fun tp!2169955 () Bool)

(assert (=> b!7481760 (= e!4462672 (and tp!2169958 tp!2169955))))

(assert (=> b!7480974 (= tp!2169837 e!4462672)))

(declare-fun b!7481757 () Bool)

(assert (=> b!7481757 (= e!4462672 tp_is_empty!49515)))

(declare-fun b!7481758 () Bool)

(declare-fun tp!2169959 () Bool)

(declare-fun tp!2169956 () Bool)

(assert (=> b!7481758 (= e!4462672 (and tp!2169959 tp!2169956))))

(declare-fun b!7481759 () Bool)

(declare-fun tp!2169957 () Bool)

(assert (=> b!7481759 (= e!4462672 tp!2169957)))

(assert (= (and b!7480974 ((_ is ElementMatch!19613) (regTwo!39739 r2!5783))) b!7481757))

(assert (= (and b!7480974 ((_ is Concat!28458) (regTwo!39739 r2!5783))) b!7481758))

(assert (= (and b!7480974 ((_ is Star!19613) (regTwo!39739 r2!5783))) b!7481759))

(assert (= (and b!7480974 ((_ is Union!19613) (regTwo!39739 r2!5783))) b!7481760))

(declare-fun b!7481764 () Bool)

(declare-fun e!4462673 () Bool)

(declare-fun tp!2169963 () Bool)

(declare-fun tp!2169960 () Bool)

(assert (=> b!7481764 (= e!4462673 (and tp!2169963 tp!2169960))))

(assert (=> b!7480963 (= tp!2169839 e!4462673)))

(declare-fun b!7481761 () Bool)

(assert (=> b!7481761 (= e!4462673 tp_is_empty!49515)))

(declare-fun b!7481762 () Bool)

(declare-fun tp!2169964 () Bool)

(declare-fun tp!2169961 () Bool)

(assert (=> b!7481762 (= e!4462673 (and tp!2169964 tp!2169961))))

(declare-fun b!7481763 () Bool)

(declare-fun tp!2169962 () Bool)

(assert (=> b!7481763 (= e!4462673 tp!2169962)))

(assert (= (and b!7480963 ((_ is ElementMatch!19613) (reg!19942 r2!5783))) b!7481761))

(assert (= (and b!7480963 ((_ is Concat!28458) (reg!19942 r2!5783))) b!7481762))

(assert (= (and b!7480963 ((_ is Star!19613) (reg!19942 r2!5783))) b!7481763))

(assert (= (and b!7480963 ((_ is Union!19613) (reg!19942 r2!5783))) b!7481764))

(declare-fun b!7481768 () Bool)

(declare-fun e!4462674 () Bool)

(declare-fun tp!2169968 () Bool)

(declare-fun tp!2169965 () Bool)

(assert (=> b!7481768 (= e!4462674 (and tp!2169968 tp!2169965))))

(assert (=> b!7480973 (= tp!2169841 e!4462674)))

(declare-fun b!7481765 () Bool)

(assert (=> b!7481765 (= e!4462674 tp_is_empty!49515)))

(declare-fun b!7481766 () Bool)

(declare-fun tp!2169969 () Bool)

(declare-fun tp!2169966 () Bool)

(assert (=> b!7481766 (= e!4462674 (and tp!2169969 tp!2169966))))

(declare-fun b!7481767 () Bool)

(declare-fun tp!2169967 () Bool)

(assert (=> b!7481767 (= e!4462674 tp!2169967)))

(assert (= (and b!7480973 ((_ is ElementMatch!19613) (regOne!39738 r2!5783))) b!7481765))

(assert (= (and b!7480973 ((_ is Concat!28458) (regOne!39738 r2!5783))) b!7481766))

(assert (= (and b!7480973 ((_ is Star!19613) (regOne!39738 r2!5783))) b!7481767))

(assert (= (and b!7480973 ((_ is Union!19613) (regOne!39738 r2!5783))) b!7481768))

(declare-fun b!7481772 () Bool)

(declare-fun e!4462675 () Bool)

(declare-fun tp!2169973 () Bool)

(declare-fun tp!2169970 () Bool)

(assert (=> b!7481772 (= e!4462675 (and tp!2169973 tp!2169970))))

(assert (=> b!7480973 (= tp!2169844 e!4462675)))

(declare-fun b!7481769 () Bool)

(assert (=> b!7481769 (= e!4462675 tp_is_empty!49515)))

(declare-fun b!7481770 () Bool)

(declare-fun tp!2169974 () Bool)

(declare-fun tp!2169971 () Bool)

(assert (=> b!7481770 (= e!4462675 (and tp!2169974 tp!2169971))))

(declare-fun b!7481771 () Bool)

(declare-fun tp!2169972 () Bool)

(assert (=> b!7481771 (= e!4462675 tp!2169972)))

(assert (= (and b!7480973 ((_ is ElementMatch!19613) (regTwo!39738 r2!5783))) b!7481769))

(assert (= (and b!7480973 ((_ is Concat!28458) (regTwo!39738 r2!5783))) b!7481770))

(assert (= (and b!7480973 ((_ is Star!19613) (regTwo!39738 r2!5783))) b!7481771))

(assert (= (and b!7480973 ((_ is Union!19613) (regTwo!39738 r2!5783))) b!7481772))

(declare-fun b!7481776 () Bool)

(declare-fun e!4462676 () Bool)

(declare-fun tp!2169978 () Bool)

(declare-fun tp!2169975 () Bool)

(assert (=> b!7481776 (= e!4462676 (and tp!2169978 tp!2169975))))

(assert (=> b!7480978 (= tp!2169842 e!4462676)))

(declare-fun b!7481773 () Bool)

(assert (=> b!7481773 (= e!4462676 tp_is_empty!49515)))

(declare-fun b!7481774 () Bool)

(declare-fun tp!2169979 () Bool)

(declare-fun tp!2169976 () Bool)

(assert (=> b!7481774 (= e!4462676 (and tp!2169979 tp!2169976))))

(declare-fun b!7481775 () Bool)

(declare-fun tp!2169977 () Bool)

(assert (=> b!7481775 (= e!4462676 tp!2169977)))

(assert (= (and b!7480978 ((_ is ElementMatch!19613) (reg!19942 r1!5845))) b!7481773))

(assert (= (and b!7480978 ((_ is Concat!28458) (reg!19942 r1!5845))) b!7481774))

(assert (= (and b!7480978 ((_ is Star!19613) (reg!19942 r1!5845))) b!7481775))

(assert (= (and b!7480978 ((_ is Union!19613) (reg!19942 r1!5845))) b!7481776))

(declare-fun b!7481780 () Bool)

(declare-fun e!4462677 () Bool)

(declare-fun tp!2169983 () Bool)

(declare-fun tp!2169980 () Bool)

(assert (=> b!7481780 (= e!4462677 (and tp!2169983 tp!2169980))))

(assert (=> b!7480972 (= tp!2169838 e!4462677)))

(declare-fun b!7481777 () Bool)

(assert (=> b!7481777 (= e!4462677 tp_is_empty!49515)))

(declare-fun b!7481778 () Bool)

(declare-fun tp!2169984 () Bool)

(declare-fun tp!2169981 () Bool)

(assert (=> b!7481778 (= e!4462677 (and tp!2169984 tp!2169981))))

(declare-fun b!7481779 () Bool)

(declare-fun tp!2169982 () Bool)

(assert (=> b!7481779 (= e!4462677 tp!2169982)))

(assert (= (and b!7480972 ((_ is ElementMatch!19613) (reg!19942 rTail!78))) b!7481777))

(assert (= (and b!7480972 ((_ is Concat!28458) (reg!19942 rTail!78))) b!7481778))

(assert (= (and b!7480972 ((_ is Star!19613) (reg!19942 rTail!78))) b!7481779))

(assert (= (and b!7480972 ((_ is Union!19613) (reg!19942 rTail!78))) b!7481780))

(declare-fun b!7481784 () Bool)

(declare-fun e!4462678 () Bool)

(declare-fun tp!2169988 () Bool)

(declare-fun tp!2169985 () Bool)

(assert (=> b!7481784 (= e!4462678 (and tp!2169988 tp!2169985))))

(assert (=> b!7480977 (= tp!2169846 e!4462678)))

(declare-fun b!7481781 () Bool)

(assert (=> b!7481781 (= e!4462678 tp_is_empty!49515)))

(declare-fun b!7481782 () Bool)

(declare-fun tp!2169989 () Bool)

(declare-fun tp!2169986 () Bool)

(assert (=> b!7481782 (= e!4462678 (and tp!2169989 tp!2169986))))

(declare-fun b!7481783 () Bool)

(declare-fun tp!2169987 () Bool)

(assert (=> b!7481783 (= e!4462678 tp!2169987)))

(assert (= (and b!7480977 ((_ is ElementMatch!19613) (regOne!39738 r1!5845))) b!7481781))

(assert (= (and b!7480977 ((_ is Concat!28458) (regOne!39738 r1!5845))) b!7481782))

(assert (= (and b!7480977 ((_ is Star!19613) (regOne!39738 r1!5845))) b!7481783))

(assert (= (and b!7480977 ((_ is Union!19613) (regOne!39738 r1!5845))) b!7481784))

(declare-fun b!7481788 () Bool)

(declare-fun e!4462679 () Bool)

(declare-fun tp!2169993 () Bool)

(declare-fun tp!2169990 () Bool)

(assert (=> b!7481788 (= e!4462679 (and tp!2169993 tp!2169990))))

(assert (=> b!7480977 (= tp!2169836 e!4462679)))

(declare-fun b!7481785 () Bool)

(assert (=> b!7481785 (= e!4462679 tp_is_empty!49515)))

(declare-fun b!7481786 () Bool)

(declare-fun tp!2169994 () Bool)

(declare-fun tp!2169991 () Bool)

(assert (=> b!7481786 (= e!4462679 (and tp!2169994 tp!2169991))))

(declare-fun b!7481787 () Bool)

(declare-fun tp!2169992 () Bool)

(assert (=> b!7481787 (= e!4462679 tp!2169992)))

(assert (= (and b!7480977 ((_ is ElementMatch!19613) (regTwo!39738 r1!5845))) b!7481785))

(assert (= (and b!7480977 ((_ is Concat!28458) (regTwo!39738 r1!5845))) b!7481786))

(assert (= (and b!7480977 ((_ is Star!19613) (regTwo!39738 r1!5845))) b!7481787))

(assert (= (and b!7480977 ((_ is Union!19613) (regTwo!39738 r1!5845))) b!7481788))

(declare-fun b!7481792 () Bool)

(declare-fun e!4462680 () Bool)

(declare-fun tp!2169998 () Bool)

(declare-fun tp!2169995 () Bool)

(assert (=> b!7481792 (= e!4462680 (and tp!2169998 tp!2169995))))

(assert (=> b!7480971 (= tp!2169849 e!4462680)))

(declare-fun b!7481789 () Bool)

(assert (=> b!7481789 (= e!4462680 tp_is_empty!49515)))

(declare-fun b!7481790 () Bool)

(declare-fun tp!2169999 () Bool)

(declare-fun tp!2169996 () Bool)

(assert (=> b!7481790 (= e!4462680 (and tp!2169999 tp!2169996))))

(declare-fun b!7481791 () Bool)

(declare-fun tp!2169997 () Bool)

(assert (=> b!7481791 (= e!4462680 tp!2169997)))

(assert (= (and b!7480971 ((_ is ElementMatch!19613) (regOne!39738 rTail!78))) b!7481789))

(assert (= (and b!7480971 ((_ is Concat!28458) (regOne!39738 rTail!78))) b!7481790))

(assert (= (and b!7480971 ((_ is Star!19613) (regOne!39738 rTail!78))) b!7481791))

(assert (= (and b!7480971 ((_ is Union!19613) (regOne!39738 rTail!78))) b!7481792))

(declare-fun b!7481796 () Bool)

(declare-fun e!4462681 () Bool)

(declare-fun tp!2170003 () Bool)

(declare-fun tp!2170000 () Bool)

(assert (=> b!7481796 (= e!4462681 (and tp!2170003 tp!2170000))))

(assert (=> b!7480971 (= tp!2169848 e!4462681)))

(declare-fun b!7481793 () Bool)

(assert (=> b!7481793 (= e!4462681 tp_is_empty!49515)))

(declare-fun b!7481794 () Bool)

(declare-fun tp!2170004 () Bool)

(declare-fun tp!2170001 () Bool)

(assert (=> b!7481794 (= e!4462681 (and tp!2170004 tp!2170001))))

(declare-fun b!7481795 () Bool)

(declare-fun tp!2170002 () Bool)

(assert (=> b!7481795 (= e!4462681 tp!2170002)))

(assert (= (and b!7480971 ((_ is ElementMatch!19613) (regTwo!39738 rTail!78))) b!7481793))

(assert (= (and b!7480971 ((_ is Concat!28458) (regTwo!39738 rTail!78))) b!7481794))

(assert (= (and b!7480971 ((_ is Star!19613) (regTwo!39738 rTail!78))) b!7481795))

(assert (= (and b!7480971 ((_ is Union!19613) (regTwo!39738 rTail!78))) b!7481796))

(declare-fun b!7481800 () Bool)

(declare-fun e!4462682 () Bool)

(declare-fun tp!2170008 () Bool)

(declare-fun tp!2170005 () Bool)

(assert (=> b!7481800 (= e!4462682 (and tp!2170008 tp!2170005))))

(assert (=> b!7480965 (= tp!2169845 e!4462682)))

(declare-fun b!7481797 () Bool)

(assert (=> b!7481797 (= e!4462682 tp_is_empty!49515)))

(declare-fun b!7481798 () Bool)

(declare-fun tp!2170009 () Bool)

(declare-fun tp!2170006 () Bool)

(assert (=> b!7481798 (= e!4462682 (and tp!2170009 tp!2170006))))

(declare-fun b!7481799 () Bool)

(declare-fun tp!2170007 () Bool)

(assert (=> b!7481799 (= e!4462682 tp!2170007)))

(assert (= (and b!7480965 ((_ is ElementMatch!19613) (regOne!39739 rTail!78))) b!7481797))

(assert (= (and b!7480965 ((_ is Concat!28458) (regOne!39739 rTail!78))) b!7481798))

(assert (= (and b!7480965 ((_ is Star!19613) (regOne!39739 rTail!78))) b!7481799))

(assert (= (and b!7480965 ((_ is Union!19613) (regOne!39739 rTail!78))) b!7481800))

(declare-fun b!7481804 () Bool)

(declare-fun e!4462683 () Bool)

(declare-fun tp!2170013 () Bool)

(declare-fun tp!2170010 () Bool)

(assert (=> b!7481804 (= e!4462683 (and tp!2170013 tp!2170010))))

(assert (=> b!7480965 (= tp!2169843 e!4462683)))

(declare-fun b!7481801 () Bool)

(assert (=> b!7481801 (= e!4462683 tp_is_empty!49515)))

(declare-fun b!7481802 () Bool)

(declare-fun tp!2170014 () Bool)

(declare-fun tp!2170011 () Bool)

(assert (=> b!7481802 (= e!4462683 (and tp!2170014 tp!2170011))))

(declare-fun b!7481803 () Bool)

(declare-fun tp!2170012 () Bool)

(assert (=> b!7481803 (= e!4462683 tp!2170012)))

(assert (= (and b!7480965 ((_ is ElementMatch!19613) (regTwo!39739 rTail!78))) b!7481801))

(assert (= (and b!7480965 ((_ is Concat!28458) (regTwo!39739 rTail!78))) b!7481802))

(assert (= (and b!7480965 ((_ is Star!19613) (regTwo!39739 rTail!78))) b!7481803))

(assert (= (and b!7480965 ((_ is Union!19613) (regTwo!39739 rTail!78))) b!7481804))

(declare-fun b!7481809 () Bool)

(declare-fun e!4462686 () Bool)

(declare-fun tp!2170017 () Bool)

(assert (=> b!7481809 (= e!4462686 (and tp_is_empty!49515 tp!2170017))))

(assert (=> b!7480970 (= tp!2169851 e!4462686)))

(assert (= (and b!7480970 ((_ is Cons!72205) (t!386898 s!13591))) b!7481809))

(declare-fun b!7481813 () Bool)

(declare-fun e!4462687 () Bool)

(declare-fun tp!2170021 () Bool)

(declare-fun tp!2170018 () Bool)

(assert (=> b!7481813 (= e!4462687 (and tp!2170021 tp!2170018))))

(assert (=> b!7480959 (= tp!2169847 e!4462687)))

(declare-fun b!7481810 () Bool)

(assert (=> b!7481810 (= e!4462687 tp_is_empty!49515)))

(declare-fun b!7481811 () Bool)

(declare-fun tp!2170022 () Bool)

(declare-fun tp!2170019 () Bool)

(assert (=> b!7481811 (= e!4462687 (and tp!2170022 tp!2170019))))

(declare-fun b!7481812 () Bool)

(declare-fun tp!2170020 () Bool)

(assert (=> b!7481812 (= e!4462687 tp!2170020)))

(assert (= (and b!7480959 ((_ is ElementMatch!19613) (regOne!39739 r1!5845))) b!7481810))

(assert (= (and b!7480959 ((_ is Concat!28458) (regOne!39739 r1!5845))) b!7481811))

(assert (= (and b!7480959 ((_ is Star!19613) (regOne!39739 r1!5845))) b!7481812))

(assert (= (and b!7480959 ((_ is Union!19613) (regOne!39739 r1!5845))) b!7481813))

(declare-fun b!7481817 () Bool)

(declare-fun e!4462688 () Bool)

(declare-fun tp!2170026 () Bool)

(declare-fun tp!2170023 () Bool)

(assert (=> b!7481817 (= e!4462688 (and tp!2170026 tp!2170023))))

(assert (=> b!7480959 (= tp!2169840 e!4462688)))

(declare-fun b!7481814 () Bool)

(assert (=> b!7481814 (= e!4462688 tp_is_empty!49515)))

(declare-fun b!7481815 () Bool)

(declare-fun tp!2170027 () Bool)

(declare-fun tp!2170024 () Bool)

(assert (=> b!7481815 (= e!4462688 (and tp!2170027 tp!2170024))))

(declare-fun b!7481816 () Bool)

(declare-fun tp!2170025 () Bool)

(assert (=> b!7481816 (= e!4462688 tp!2170025)))

(assert (= (and b!7480959 ((_ is ElementMatch!19613) (regTwo!39739 r1!5845))) b!7481814))

(assert (= (and b!7480959 ((_ is Concat!28458) (regTwo!39739 r1!5845))) b!7481815))

(assert (= (and b!7480959 ((_ is Star!19613) (regTwo!39739 r1!5845))) b!7481816))

(assert (= (and b!7480959 ((_ is Union!19613) (regTwo!39739 r1!5845))) b!7481817))

(check-sat (not b!7481802) (not b!7481811) (not bm!686829) (not bm!686770) (not b!7481458) (not b!7481779) (not bm!686842) (not b!7481655) (not b!7481756) (not b!7481780) (not b!7481641) (not b!7481787) (not b!7481758) (not b!7481741) (not b!7481732) (not b!7481656) (not d!2300214) (not d!2300228) (not b!7481087) (not d!2300164) (not bm!686830) (not d!2300230) (not b!7481104) (not b!7481799) (not b!7481671) (not b!7481734) (not b!7481659) (not d!2300158) (not b!7481783) (not b!7481079) (not b!7481796) (not b!7481684) (not b!7481766) (not b!7481088) (not bm!686838) (not d!2300200) (not b!7481691) (not d!2300152) (not d!2300220) (not b!7481610) (not b!7481770) (not b!7481637) (not b!7481111) (not b!7481794) (not bm!686839) (not d!2300240) (not b!7481790) (not b!7481701) (not b!7481277) (not b!7481648) (not b!7481720) (not b!7481354) (not d!2300188) (not b!7481754) (not d!2300212) (not b!7481784) (not b!7481591) (not b!7481816) (not d!2300144) (not b!7481682) (not b!7481760) (not bm!686813) (not b!7481595) (not b!7481640) (not b!7481692) (not b!7481762) (not bm!686811) (not bm!686849) (not b!7481698) (not b!7481463) (not bm!686835) (not d!2300100) (not b!7481696) (not b!7481602) (not b!7481721) (not b!7481778) (not b!7481084) (not b!7481316) (not b!7481581) (not b!7481704) (not b!7481763) (not b!7481632) (not b!7481804) (not b!7481459) (not b!7481646) (not d!2300242) (not b!7481800) (not b!7481101) (not b!7481315) (not b!7481081) (not b!7481791) (not bm!686848) (not b!7481353) (not b!7481803) (not bm!686843) (not b!7481786) (not b!7481737) (not d!2300202) (not b!7481706) (not b!7481593) (not b!7481767) (not bm!686769) (not b!7481608) (not b!7481771) (not b!7481099) (not b!7481759) (not b!7481622) (not b!7481109) (not b!7481812) (not b!7481690) (not b!7481705) (not b!7481772) (not d!2300106) (not b!7481276) (not b!7481755) (not b!7481795) (not b!7481782) (not b!7481110) (not bm!686845) (not bm!686846) (not bm!686832) (not bm!686833) (not b!7481788) (not d!2300218) (not bm!686806) (not b!7481613) (not b!7481768) (not b!7481651) (not b!7481590) (not b!7481670) (not bm!686807) (not d!2300248) (not b!7481687) (not b!7481792) (not b!7481742) (not d!2300232) (not b!7481813) (not d!2300208) (not bm!686836) (not b!7481654) (not bm!686840) (not b!7481592) (not bm!686812) (not b!7481642) (not b!7481775) (not b!7481596) (not bm!686837) (not d!2300216) (not b!7481817) (not b!7481798) (not d!2300170) (not b!7481089) (not b!7481634) (not b!7481709) (not bm!686844) (not bm!686810) (not d!2300226) (not bm!686841) (not d!2300238) (not b!7481774) (not b!7481764) tp_is_empty!49515 (not bm!686847) (not bm!686828) (not d!2300206) (not d!2300156) (not b!7481740) (not b!7481461) (not b!7481460) (not b!7481464) (not b!7481776) (not b!7481815) (not d!2300250) (not b!7481710) (not b!7481605) (not b!7481600) (not b!7481660) (not b!7481609) (not b!7481809))
(check-sat)
