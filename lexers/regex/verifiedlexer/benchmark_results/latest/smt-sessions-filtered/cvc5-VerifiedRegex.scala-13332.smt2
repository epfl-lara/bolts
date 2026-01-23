; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!723804 () Bool)

(assert start!723804)

(declare-fun b!7460003 () Bool)

(assert (=> b!7460003 true))

(assert (=> b!7460003 true))

(assert (=> b!7460003 true))

(declare-fun lambda!461541 () Int)

(declare-fun lambda!461540 () Int)

(assert (=> b!7460003 (not (= lambda!461541 lambda!461540))))

(assert (=> b!7460003 true))

(assert (=> b!7460003 true))

(assert (=> b!7460003 true))

(declare-fun b!7459988 () Bool)

(declare-fun e!4452140 () Bool)

(declare-fun tp!2161966 () Bool)

(declare-fun tp!2161971 () Bool)

(assert (=> b!7459988 (= e!4452140 (and tp!2161966 tp!2161971))))

(declare-fun b!7459989 () Bool)

(declare-fun e!4452139 () Bool)

(declare-fun tp!2161979 () Bool)

(declare-fun tp!2161969 () Bool)

(assert (=> b!7459989 (= e!4452139 (and tp!2161979 tp!2161969))))

(declare-fun b!7459990 () Bool)

(declare-fun tp_is_empty!49341 () Bool)

(assert (=> b!7459990 (= e!4452140 tp_is_empty!49341)))

(declare-fun b!7459991 () Bool)

(declare-fun tp!2161973 () Bool)

(assert (=> b!7459991 (= e!4452140 tp!2161973)))

(declare-fun b!7459993 () Bool)

(declare-fun tp!2161968 () Bool)

(declare-fun tp!2161976 () Bool)

(assert (=> b!7459993 (= e!4452140 (and tp!2161968 tp!2161976))))

(declare-fun b!7459994 () Bool)

(declare-fun e!4452141 () Bool)

(declare-fun tp!2161964 () Bool)

(declare-fun tp!2161970 () Bool)

(assert (=> b!7459994 (= e!4452141 (and tp!2161964 tp!2161970))))

(declare-fun b!7459995 () Bool)

(declare-fun res!2992367 () Bool)

(declare-fun e!4452137 () Bool)

(assert (=> b!7459995 (=> (not res!2992367) (not e!4452137))))

(declare-datatypes ((C!39326 0))(
  ( (C!39327 (val!30061 Int)) )
))
(declare-datatypes ((Regex!19526 0))(
  ( (ElementMatch!19526 (c!1379163 C!39326)) (Concat!28371 (regOne!39564 Regex!19526) (regTwo!39564 Regex!19526)) (EmptyExpr!19526) (Star!19526 (reg!19855 Regex!19526)) (EmptyLang!19526) (Union!19526 (regOne!39565 Regex!19526) (regTwo!39565 Regex!19526)) )
))
(declare-fun rTail!78 () Regex!19526)

(declare-fun validRegex!10040 (Regex!19526) Bool)

(assert (=> b!7459995 (= res!2992367 (validRegex!10040 rTail!78))))

(declare-fun b!7459996 () Bool)

(declare-fun res!2992368 () Bool)

(assert (=> b!7459996 (=> (not res!2992368) (not e!4452137))))

(declare-fun r2!5783 () Regex!19526)

(assert (=> b!7459996 (= res!2992368 (validRegex!10040 r2!5783))))

(declare-fun b!7459997 () Bool)

(declare-fun tp!2161965 () Bool)

(declare-fun tp!2161967 () Bool)

(assert (=> b!7459997 (= e!4452141 (and tp!2161965 tp!2161967))))

(declare-fun b!7459998 () Bool)

(declare-fun tp!2161974 () Bool)

(assert (=> b!7459998 (= e!4452141 tp!2161974)))

(declare-fun b!7459999 () Bool)

(declare-fun tp!2161977 () Bool)

(declare-fun tp!2161975 () Bool)

(assert (=> b!7459999 (= e!4452139 (and tp!2161977 tp!2161975))))

(declare-fun b!7460000 () Bool)

(assert (=> b!7460000 (= e!4452141 tp_is_empty!49341)))

(declare-fun b!7460001 () Bool)

(declare-fun e!4452138 () Bool)

(assert (=> b!7460001 (= e!4452137 (not e!4452138))))

(declare-fun res!2992369 () Bool)

(assert (=> b!7460001 (=> res!2992369 e!4452138)))

(declare-fun lt!2622379 () Bool)

(assert (=> b!7460001 (= res!2992369 lt!2622379)))

(declare-fun lt!2622373 () Regex!19526)

(declare-datatypes ((List!72242 0))(
  ( (Nil!72118) (Cons!72118 (h!78566 C!39326) (t!386811 List!72242)) )
))
(declare-fun s!13591 () List!72242)

(declare-fun matchR!9290 (Regex!19526 List!72242) Bool)

(declare-fun matchRSpec!4205 (Regex!19526 List!72242) Bool)

(assert (=> b!7460001 (= (matchR!9290 lt!2622373 s!13591) (matchRSpec!4205 lt!2622373 s!13591))))

(declare-datatypes ((Unit!165887 0))(
  ( (Unit!165888) )
))
(declare-fun lt!2622376 () Unit!165887)

(declare-fun mainMatchTheorem!4199 (Regex!19526 List!72242) Unit!165887)

(assert (=> b!7460001 (= lt!2622376 (mainMatchTheorem!4199 lt!2622373 s!13591))))

(declare-fun lt!2622374 () Regex!19526)

(assert (=> b!7460001 (= lt!2622379 (matchRSpec!4205 lt!2622374 s!13591))))

(assert (=> b!7460001 (= lt!2622379 (matchR!9290 lt!2622374 s!13591))))

(declare-fun lt!2622377 () Unit!165887)

(assert (=> b!7460001 (= lt!2622377 (mainMatchTheorem!4199 lt!2622374 s!13591))))

(declare-fun r1!5845 () Regex!19526)

(assert (=> b!7460001 (= lt!2622373 (Union!19526 (Concat!28371 r1!5845 rTail!78) (Concat!28371 r2!5783 rTail!78)))))

(declare-fun lt!2622372 () Regex!19526)

(assert (=> b!7460001 (= lt!2622374 (Concat!28371 lt!2622372 rTail!78))))

(assert (=> b!7460001 (= lt!2622372 (Union!19526 r1!5845 r2!5783))))

(declare-fun b!7460002 () Bool)

(declare-fun e!4452142 () Bool)

(declare-fun tp!2161972 () Bool)

(assert (=> b!7460002 (= e!4452142 (and tp_is_empty!49341 tp!2161972))))

(declare-fun res!2992370 () Bool)

(assert (=> start!723804 (=> (not res!2992370) (not e!4452137))))

(assert (=> start!723804 (= res!2992370 (validRegex!10040 r1!5845))))

(assert (=> start!723804 e!4452137))

(assert (=> start!723804 e!4452141))

(assert (=> start!723804 e!4452139))

(assert (=> start!723804 e!4452140))

(assert (=> start!723804 e!4452142))

(declare-fun b!7459992 () Bool)

(declare-fun tp!2161978 () Bool)

(assert (=> b!7459992 (= e!4452139 tp!2161978)))

(assert (=> b!7460003 (= e!4452138 true)))

(declare-fun Exists!4145 (Int) Bool)

(assert (=> b!7460003 (= (Exists!4145 lambda!461540) (Exists!4145 lambda!461541))))

(declare-fun lt!2622375 () Unit!165887)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2479 (Regex!19526 Regex!19526 List!72242) Unit!165887)

(assert (=> b!7460003 (= lt!2622375 (lemmaExistCutMatchRandMatchRSpecEquivalent!2479 lt!2622372 rTail!78 s!13591))))

(declare-datatypes ((tuple2!68502 0))(
  ( (tuple2!68503 (_1!37554 List!72242) (_2!37554 List!72242)) )
))
(declare-datatypes ((Option!17083 0))(
  ( (None!17082) (Some!17082 (v!54211 tuple2!68502)) )
))
(declare-fun isDefined!13772 (Option!17083) Bool)

(declare-fun findConcatSeparation!3205 (Regex!19526 Regex!19526 List!72242 List!72242 List!72242) Option!17083)

(assert (=> b!7460003 (= (isDefined!13772 (findConcatSeparation!3205 lt!2622372 rTail!78 Nil!72118 s!13591 s!13591)) (Exists!4145 lambda!461540))))

(declare-fun lt!2622378 () Unit!165887)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2963 (Regex!19526 Regex!19526 List!72242) Unit!165887)

(assert (=> b!7460003 (= lt!2622378 (lemmaFindConcatSeparationEquivalentToExists!2963 lt!2622372 rTail!78 s!13591))))

(declare-fun b!7460004 () Bool)

(assert (=> b!7460004 (= e!4452139 tp_is_empty!49341)))

(assert (= (and start!723804 res!2992370) b!7459996))

(assert (= (and b!7459996 res!2992368) b!7459995))

(assert (= (and b!7459995 res!2992367) b!7460001))

(assert (= (and b!7460001 (not res!2992369)) b!7460003))

(assert (= (and start!723804 (is-ElementMatch!19526 r1!5845)) b!7460000))

(assert (= (and start!723804 (is-Concat!28371 r1!5845)) b!7459997))

(assert (= (and start!723804 (is-Star!19526 r1!5845)) b!7459998))

(assert (= (and start!723804 (is-Union!19526 r1!5845)) b!7459994))

(assert (= (and start!723804 (is-ElementMatch!19526 r2!5783)) b!7460004))

(assert (= (and start!723804 (is-Concat!28371 r2!5783)) b!7459999))

(assert (= (and start!723804 (is-Star!19526 r2!5783)) b!7459992))

(assert (= (and start!723804 (is-Union!19526 r2!5783)) b!7459989))

(assert (= (and start!723804 (is-ElementMatch!19526 rTail!78)) b!7459990))

(assert (= (and start!723804 (is-Concat!28371 rTail!78)) b!7459993))

(assert (= (and start!723804 (is-Star!19526 rTail!78)) b!7459991))

(assert (= (and start!723804 (is-Union!19526 rTail!78)) b!7459988))

(assert (= (and start!723804 (is-Cons!72118 s!13591)) b!7460002))

(declare-fun m!8061984 () Bool)

(assert (=> b!7460003 m!8061984))

(declare-fun m!8061986 () Bool)

(assert (=> b!7460003 m!8061986))

(declare-fun m!8061988 () Bool)

(assert (=> b!7460003 m!8061988))

(declare-fun m!8061990 () Bool)

(assert (=> b!7460003 m!8061990))

(assert (=> b!7460003 m!8061988))

(assert (=> b!7460003 m!8061990))

(declare-fun m!8061992 () Bool)

(assert (=> b!7460003 m!8061992))

(declare-fun m!8061994 () Bool)

(assert (=> b!7460003 m!8061994))

(declare-fun m!8061996 () Bool)

(assert (=> b!7460001 m!8061996))

(declare-fun m!8061998 () Bool)

(assert (=> b!7460001 m!8061998))

(declare-fun m!8062000 () Bool)

(assert (=> b!7460001 m!8062000))

(declare-fun m!8062002 () Bool)

(assert (=> b!7460001 m!8062002))

(declare-fun m!8062004 () Bool)

(assert (=> b!7460001 m!8062004))

(declare-fun m!8062006 () Bool)

(assert (=> b!7460001 m!8062006))

(declare-fun m!8062008 () Bool)

(assert (=> b!7459995 m!8062008))

(declare-fun m!8062010 () Bool)

(assert (=> b!7459996 m!8062010))

(declare-fun m!8062012 () Bool)

(assert (=> start!723804 m!8062012))

(push 1)

(assert (not b!7459994))

(assert tp_is_empty!49341)

(assert (not b!7459988))

(assert (not b!7459989))

(assert (not b!7459993))

(assert (not b!7459995))

(assert (not b!7459992))

(assert (not b!7459991))

(assert (not b!7460002))

(assert (not b!7459997))

(assert (not b!7459999))

(assert (not b!7459998))

(assert (not b!7460001))

(assert (not start!723804))

(assert (not b!7460003))

(assert (not b!7459996))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

