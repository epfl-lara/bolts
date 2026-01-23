; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!723432 () Bool)

(assert start!723432)

(declare-fun b!7451478 () Bool)

(assert (=> b!7451478 true))

(assert (=> b!7451478 true))

(assert (=> b!7451478 true))

(declare-fun lambda!460897 () Int)

(declare-fun lambda!460896 () Int)

(assert (=> b!7451478 (not (= lambda!460897 lambda!460896))))

(assert (=> b!7451478 true))

(assert (=> b!7451478 true))

(assert (=> b!7451478 true))

(declare-fun b!7451476 () Bool)

(declare-fun e!4448010 () Bool)

(declare-fun tp!2159013 () Bool)

(declare-fun tp!2159009 () Bool)

(assert (=> b!7451476 (= e!4448010 (and tp!2159013 tp!2159009))))

(declare-fun b!7451477 () Bool)

(declare-fun e!4448011 () Bool)

(declare-fun tp_is_empty!49269 () Bool)

(assert (=> b!7451477 (= e!4448011 tp_is_empty!49269)))

(declare-fun b!7451479 () Bool)

(declare-fun tp!2159004 () Bool)

(assert (=> b!7451479 (= e!4448010 tp!2159004)))

(declare-fun b!7451480 () Bool)

(declare-fun tp!2159014 () Bool)

(declare-fun tp!2159011 () Bool)

(assert (=> b!7451480 (= e!4448011 (and tp!2159014 tp!2159011))))

(declare-fun b!7451481 () Bool)

(declare-fun e!4448009 () Bool)

(declare-fun tp!2159008 () Bool)

(declare-fun tp!2159007 () Bool)

(assert (=> b!7451481 (= e!4448009 (and tp!2159008 tp!2159007))))

(declare-fun b!7451482 () Bool)

(declare-fun e!4448012 () Bool)

(declare-fun e!4448007 () Bool)

(assert (=> b!7451482 (= e!4448012 (not e!4448007))))

(declare-fun res!2988852 () Bool)

(assert (=> b!7451482 (=> res!2988852 e!4448007)))

(declare-fun lt!2620188 () Bool)

(assert (=> b!7451482 (= res!2988852 (not lt!2620188))))

(declare-datatypes ((C!39254 0))(
  ( (C!39255 (val!30025 Int)) )
))
(declare-datatypes ((Regex!19490 0))(
  ( (ElementMatch!19490 (c!1377925 C!39254)) (Concat!28335 (regOne!39492 Regex!19490) (regTwo!39492 Regex!19490)) (EmptyExpr!19490) (Star!19490 (reg!19819 Regex!19490)) (EmptyLang!19490) (Union!19490 (regOne!39493 Regex!19490) (regTwo!39493 Regex!19490)) )
))
(declare-fun lt!2620191 () Regex!19490)

(declare-datatypes ((List!72206 0))(
  ( (Nil!72082) (Cons!72082 (h!78530 C!39254) (t!386775 List!72206)) )
))
(declare-fun s!13591 () List!72206)

(declare-fun matchR!9254 (Regex!19490 List!72206) Bool)

(declare-fun matchRSpec!4169 (Regex!19490 List!72206) Bool)

(assert (=> b!7451482 (= (matchR!9254 lt!2620191 s!13591) (matchRSpec!4169 lt!2620191 s!13591))))

(declare-datatypes ((Unit!165815 0))(
  ( (Unit!165816) )
))
(declare-fun lt!2620195 () Unit!165815)

(declare-fun mainMatchTheorem!4163 (Regex!19490 List!72206) Unit!165815)

(assert (=> b!7451482 (= lt!2620195 (mainMatchTheorem!4163 lt!2620191 s!13591))))

(declare-fun lt!2620192 () Regex!19490)

(assert (=> b!7451482 (= lt!2620188 (matchRSpec!4169 lt!2620192 s!13591))))

(assert (=> b!7451482 (= lt!2620188 (matchR!9254 lt!2620192 s!13591))))

(declare-fun lt!2620194 () Unit!165815)

(assert (=> b!7451482 (= lt!2620194 (mainMatchTheorem!4163 lt!2620192 s!13591))))

(declare-fun r2!5783 () Regex!19490)

(declare-fun r1!5845 () Regex!19490)

(declare-fun rTail!78 () Regex!19490)

(assert (=> b!7451482 (= lt!2620191 (Union!19490 (Concat!28335 r1!5845 rTail!78) (Concat!28335 r2!5783 rTail!78)))))

(declare-fun lt!2620196 () Regex!19490)

(assert (=> b!7451482 (= lt!2620192 (Concat!28335 lt!2620196 rTail!78))))

(assert (=> b!7451482 (= lt!2620196 (Union!19490 r1!5845 r2!5783))))

(declare-fun b!7451483 () Bool)

(declare-fun res!2988851 () Bool)

(assert (=> b!7451483 (=> (not res!2988851) (not e!4448012))))

(declare-fun validRegex!10004 (Regex!19490) Bool)

(assert (=> b!7451483 (= res!2988851 (validRegex!10004 r2!5783))))

(declare-fun b!7451484 () Bool)

(declare-fun tp!2159006 () Bool)

(declare-fun tp!2159019 () Bool)

(assert (=> b!7451484 (= e!4448009 (and tp!2159006 tp!2159019))))

(declare-fun b!7451485 () Bool)

(assert (=> b!7451485 (= e!4448010 tp_is_empty!49269)))

(declare-fun b!7451486 () Bool)

(declare-fun e!4448008 () Bool)

(declare-fun tp!2159017 () Bool)

(assert (=> b!7451486 (= e!4448008 (and tp_is_empty!49269 tp!2159017))))

(declare-fun res!2988850 () Bool)

(assert (=> start!723432 (=> (not res!2988850) (not e!4448012))))

(assert (=> start!723432 (= res!2988850 (validRegex!10004 r1!5845))))

(assert (=> start!723432 e!4448012))

(assert (=> start!723432 e!4448010))

(assert (=> start!723432 e!4448009))

(assert (=> start!723432 e!4448011))

(assert (=> start!723432 e!4448008))

(assert (=> b!7451478 (= e!4448007 true)))

(declare-fun lt!2620189 () Bool)

(declare-datatypes ((tuple2!68434 0))(
  ( (tuple2!68435 (_1!37520 List!72206) (_2!37520 List!72206)) )
))
(declare-datatypes ((Option!17049 0))(
  ( (None!17048) (Some!17048 (v!54177 tuple2!68434)) )
))
(declare-fun lt!2620197 () Option!17049)

(declare-fun get!25119 (Option!17049) tuple2!68434)

(assert (=> b!7451478 (= lt!2620189 (matchR!9254 lt!2620196 (_1!37520 (get!25119 lt!2620197))))))

(declare-fun Exists!4111 (Int) Bool)

(assert (=> b!7451478 (= (Exists!4111 lambda!460896) (Exists!4111 lambda!460897))))

(declare-fun lt!2620190 () Unit!165815)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2447 (Regex!19490 Regex!19490 List!72206) Unit!165815)

(assert (=> b!7451478 (= lt!2620190 (lemmaExistCutMatchRandMatchRSpecEquivalent!2447 lt!2620196 rTail!78 s!13591))))

(declare-fun isDefined!13738 (Option!17049) Bool)

(assert (=> b!7451478 (= (isDefined!13738 lt!2620197) (Exists!4111 lambda!460896))))

(declare-fun findConcatSeparation!3171 (Regex!19490 Regex!19490 List!72206 List!72206 List!72206) Option!17049)

(assert (=> b!7451478 (= lt!2620197 (findConcatSeparation!3171 lt!2620196 rTail!78 Nil!72082 s!13591 s!13591))))

(declare-fun lt!2620193 () Unit!165815)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2929 (Regex!19490 Regex!19490 List!72206) Unit!165815)

(assert (=> b!7451478 (= lt!2620193 (lemmaFindConcatSeparationEquivalentToExists!2929 lt!2620196 rTail!78 s!13591))))

(declare-fun b!7451487 () Bool)

(declare-fun tp!2159015 () Bool)

(declare-fun tp!2159010 () Bool)

(assert (=> b!7451487 (= e!4448011 (and tp!2159015 tp!2159010))))

(declare-fun b!7451488 () Bool)

(declare-fun tp!2159012 () Bool)

(assert (=> b!7451488 (= e!4448011 tp!2159012)))

(declare-fun b!7451489 () Bool)

(declare-fun tp!2159016 () Bool)

(assert (=> b!7451489 (= e!4448009 tp!2159016)))

(declare-fun b!7451490 () Bool)

(assert (=> b!7451490 (= e!4448009 tp_is_empty!49269)))

(declare-fun b!7451491 () Bool)

(declare-fun res!2988849 () Bool)

(assert (=> b!7451491 (=> (not res!2988849) (not e!4448012))))

(assert (=> b!7451491 (= res!2988849 (validRegex!10004 rTail!78))))

(declare-fun b!7451492 () Bool)

(declare-fun tp!2159005 () Bool)

(declare-fun tp!2159018 () Bool)

(assert (=> b!7451492 (= e!4448010 (and tp!2159005 tp!2159018))))

(assert (= (and start!723432 res!2988850) b!7451483))

(assert (= (and b!7451483 res!2988851) b!7451491))

(assert (= (and b!7451491 res!2988849) b!7451482))

(assert (= (and b!7451482 (not res!2988852)) b!7451478))

(assert (= (and start!723432 (is-ElementMatch!19490 r1!5845)) b!7451485))

(assert (= (and start!723432 (is-Concat!28335 r1!5845)) b!7451492))

(assert (= (and start!723432 (is-Star!19490 r1!5845)) b!7451479))

(assert (= (and start!723432 (is-Union!19490 r1!5845)) b!7451476))

(assert (= (and start!723432 (is-ElementMatch!19490 r2!5783)) b!7451490))

(assert (= (and start!723432 (is-Concat!28335 r2!5783)) b!7451484))

(assert (= (and start!723432 (is-Star!19490 r2!5783)) b!7451489))

(assert (= (and start!723432 (is-Union!19490 r2!5783)) b!7451481))

(assert (= (and start!723432 (is-ElementMatch!19490 rTail!78)) b!7451477))

(assert (= (and start!723432 (is-Concat!28335 rTail!78)) b!7451487))

(assert (= (and start!723432 (is-Star!19490 rTail!78)) b!7451488))

(assert (= (and start!723432 (is-Union!19490 rTail!78)) b!7451480))

(assert (= (and start!723432 (is-Cons!72082 s!13591)) b!7451486))

(declare-fun m!8057148 () Bool)

(assert (=> start!723432 m!8057148))

(declare-fun m!8057150 () Bool)

(assert (=> b!7451483 m!8057150))

(declare-fun m!8057152 () Bool)

(assert (=> b!7451491 m!8057152))

(declare-fun m!8057154 () Bool)

(assert (=> b!7451478 m!8057154))

(declare-fun m!8057156 () Bool)

(assert (=> b!7451478 m!8057156))

(declare-fun m!8057158 () Bool)

(assert (=> b!7451478 m!8057158))

(declare-fun m!8057160 () Bool)

(assert (=> b!7451478 m!8057160))

(assert (=> b!7451478 m!8057158))

(declare-fun m!8057162 () Bool)

(assert (=> b!7451478 m!8057162))

(declare-fun m!8057164 () Bool)

(assert (=> b!7451478 m!8057164))

(declare-fun m!8057166 () Bool)

(assert (=> b!7451478 m!8057166))

(declare-fun m!8057168 () Bool)

(assert (=> b!7451478 m!8057168))

(declare-fun m!8057170 () Bool)

(assert (=> b!7451482 m!8057170))

(declare-fun m!8057172 () Bool)

(assert (=> b!7451482 m!8057172))

(declare-fun m!8057174 () Bool)

(assert (=> b!7451482 m!8057174))

(declare-fun m!8057176 () Bool)

(assert (=> b!7451482 m!8057176))

(declare-fun m!8057178 () Bool)

(assert (=> b!7451482 m!8057178))

(declare-fun m!8057180 () Bool)

(assert (=> b!7451482 m!8057180))

(push 1)

(assert (not b!7451489))

(assert (not b!7451476))

(assert (not b!7451478))

(assert (not b!7451482))

(assert (not b!7451486))

(assert (not b!7451483))

(assert (not b!7451481))

(assert (not b!7451487))

(assert (not b!7451488))

(assert (not b!7451484))

(assert (not b!7451491))

(assert tp_is_empty!49269)

(assert (not b!7451480))

(assert (not start!723432))

(assert (not b!7451479))

(assert (not b!7451492))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

