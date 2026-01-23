; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!724126 () Bool)

(assert start!724126)

(declare-fun b!7466817 () Bool)

(assert (=> b!7466817 true))

(assert (=> b!7466817 true))

(assert (=> b!7466817 true))

(declare-fun lambda!462179 () Int)

(declare-fun lambda!462178 () Int)

(assert (=> b!7466817 (not (= lambda!462179 lambda!462178))))

(assert (=> b!7466817 true))

(assert (=> b!7466817 true))

(assert (=> b!7466817 true))

(declare-fun bs!1930297 () Bool)

(declare-fun b!7466827 () Bool)

(assert (= bs!1930297 (and b!7466827 b!7466817)))

(declare-datatypes ((C!39388 0))(
  ( (C!39389 (val!30092 Int)) )
))
(declare-datatypes ((Regex!19557 0))(
  ( (ElementMatch!19557 (c!1379990 C!39388)) (Concat!28402 (regOne!39626 Regex!19557) (regTwo!39626 Regex!19557)) (EmptyExpr!19557) (Star!19557 (reg!19886 Regex!19557)) (EmptyLang!19557) (Union!19557 (regOne!39627 Regex!19557) (regTwo!39627 Regex!19557)) )
))
(declare-fun lt!2624163 () Regex!19557)

(declare-fun lambda!462180 () Int)

(declare-fun r1!5845 () Regex!19557)

(assert (=> bs!1930297 (= (= r1!5845 lt!2624163) (= lambda!462180 lambda!462178))))

(assert (=> bs!1930297 (not (= lambda!462180 lambda!462179))))

(assert (=> b!7466827 true))

(assert (=> b!7466827 true))

(assert (=> b!7466827 true))

(declare-fun lambda!462181 () Int)

(assert (=> bs!1930297 (not (= lambda!462181 lambda!462178))))

(assert (=> bs!1930297 (= (= r1!5845 lt!2624163) (= lambda!462181 lambda!462179))))

(assert (=> b!7466827 (not (= lambda!462181 lambda!462180))))

(assert (=> b!7466827 true))

(assert (=> b!7466827 true))

(assert (=> b!7466827 true))

(declare-fun b!7466815 () Bool)

(declare-fun e!4455404 () Bool)

(declare-fun tp!2164688 () Bool)

(assert (=> b!7466815 (= e!4455404 tp!2164688)))

(declare-fun b!7466816 () Bool)

(declare-fun e!4455406 () Bool)

(declare-fun tp_is_empty!49403 () Bool)

(declare-fun tp!2164687 () Bool)

(assert (=> b!7466816 (= e!4455406 (and tp_is_empty!49403 tp!2164687))))

(declare-fun e!4455408 () Bool)

(declare-fun e!4455410 () Bool)

(assert (=> b!7466817 (= e!4455408 e!4455410)))

(declare-fun res!2995225 () Bool)

(assert (=> b!7466817 (=> res!2995225 e!4455410)))

(declare-fun lt!2624159 () Bool)

(declare-fun lt!2624161 () Bool)

(assert (=> b!7466817 (= res!2995225 (or lt!2624159 (not lt!2624161)))))

(declare-fun Exists!4176 (Int) Bool)

(assert (=> b!7466817 (= (Exists!4176 lambda!462178) (Exists!4176 lambda!462179))))

(declare-datatypes ((List!72273 0))(
  ( (Nil!72149) (Cons!72149 (h!78597 C!39388) (t!386842 List!72273)) )
))
(declare-fun s!13591 () List!72273)

(declare-fun rTail!78 () Regex!19557)

(declare-datatypes ((Unit!165949 0))(
  ( (Unit!165950) )
))
(declare-fun lt!2624171 () Unit!165949)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2510 (Regex!19557 Regex!19557 List!72273) Unit!165949)

(assert (=> b!7466817 (= lt!2624171 (lemmaExistCutMatchRandMatchRSpecEquivalent!2510 lt!2624163 rTail!78 s!13591))))

(assert (=> b!7466817 (= lt!2624159 (Exists!4176 lambda!462178))))

(declare-datatypes ((tuple2!68564 0))(
  ( (tuple2!68565 (_1!37585 List!72273) (_2!37585 List!72273)) )
))
(declare-datatypes ((Option!17114 0))(
  ( (None!17113) (Some!17113 (v!54242 tuple2!68564)) )
))
(declare-fun isDefined!13803 (Option!17114) Bool)

(declare-fun findConcatSeparation!3236 (Regex!19557 Regex!19557 List!72273 List!72273 List!72273) Option!17114)

(assert (=> b!7466817 (= lt!2624159 (isDefined!13803 (findConcatSeparation!3236 lt!2624163 rTail!78 Nil!72149 s!13591 s!13591)))))

(declare-fun lt!2624151 () Unit!165949)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2994 (Regex!19557 Regex!19557 List!72273) Unit!165949)

(assert (=> b!7466817 (= lt!2624151 (lemmaFindConcatSeparationEquivalentToExists!2994 lt!2624163 rTail!78 s!13591))))

(declare-fun b!7466818 () Bool)

(declare-fun e!4455407 () Bool)

(declare-fun tp!2164692 () Bool)

(declare-fun tp!2164685 () Bool)

(assert (=> b!7466818 (= e!4455407 (and tp!2164692 tp!2164685))))

(declare-fun b!7466819 () Bool)

(declare-fun res!2995219 () Bool)

(declare-fun e!4455405 () Bool)

(assert (=> b!7466819 (=> (not res!2995219) (not e!4455405))))

(declare-fun validRegex!10071 (Regex!19557) Bool)

(assert (=> b!7466819 (= res!2995219 (validRegex!10071 rTail!78))))

(declare-fun b!7466820 () Bool)

(assert (=> b!7466820 (= e!4455407 tp_is_empty!49403)))

(declare-fun b!7466821 () Bool)

(declare-fun e!4455403 () Bool)

(declare-fun tp!2164686 () Bool)

(declare-fun tp!2164695 () Bool)

(assert (=> b!7466821 (= e!4455403 (and tp!2164686 tp!2164695))))

(declare-fun b!7466822 () Bool)

(assert (=> b!7466822 (= e!4455404 tp_is_empty!49403)))

(declare-fun b!7466823 () Bool)

(declare-fun res!2995220 () Bool)

(declare-fun e!4455409 () Bool)

(assert (=> b!7466823 (=> res!2995220 e!4455409)))

(declare-fun lt!2624164 () tuple2!68564)

(declare-fun matchR!9321 (Regex!19557 List!72273) Bool)

(assert (=> b!7466823 (= res!2995220 (not (matchR!9321 rTail!78 (_2!37585 lt!2624164))))))

(declare-fun b!7466824 () Bool)

(declare-fun tp!2164697 () Bool)

(declare-fun tp!2164684 () Bool)

(assert (=> b!7466824 (= e!4455404 (and tp!2164697 tp!2164684))))

(declare-fun b!7466825 () Bool)

(assert (=> b!7466825 (= e!4455409 true)))

(declare-fun matchRSpec!4236 (Regex!19557 List!72273) Bool)

(assert (=> b!7466825 (= (matchR!9321 lt!2624163 (_1!37585 lt!2624164)) (matchRSpec!4236 lt!2624163 (_1!37585 lt!2624164)))))

(declare-fun lt!2624160 () Unit!165949)

(declare-fun mainMatchTheorem!4230 (Regex!19557 List!72273) Unit!165949)

(assert (=> b!7466825 (= lt!2624160 (mainMatchTheorem!4230 lt!2624163 (_1!37585 lt!2624164)))))

(declare-fun b!7466826 () Bool)

(declare-fun tp!2164689 () Bool)

(declare-fun tp!2164693 () Bool)

(assert (=> b!7466826 (= e!4455407 (and tp!2164689 tp!2164693))))

(declare-fun b!7466828 () Bool)

(declare-fun tp!2164699 () Bool)

(declare-fun tp!2164696 () Bool)

(assert (=> b!7466828 (= e!4455404 (and tp!2164699 tp!2164696))))

(declare-fun b!7466829 () Bool)

(declare-fun tp!2164698 () Bool)

(assert (=> b!7466829 (= e!4455407 tp!2164698)))

(declare-fun b!7466830 () Bool)

(assert (=> b!7466830 (= e!4455403 tp_is_empty!49403)))

(declare-fun b!7466831 () Bool)

(declare-fun tp!2164690 () Bool)

(declare-fun tp!2164691 () Bool)

(assert (=> b!7466831 (= e!4455403 (and tp!2164690 tp!2164691))))

(declare-fun b!7466832 () Bool)

(assert (=> b!7466832 (= e!4455405 (not e!4455408))))

(declare-fun res!2995223 () Bool)

(assert (=> b!7466832 (=> res!2995223 e!4455408)))

(declare-fun lt!2624168 () Bool)

(assert (=> b!7466832 (= res!2995223 lt!2624168)))

(declare-fun lt!2624156 () Regex!19557)

(assert (=> b!7466832 (= lt!2624161 (matchRSpec!4236 lt!2624156 s!13591))))

(assert (=> b!7466832 (= lt!2624161 (matchR!9321 lt!2624156 s!13591))))

(declare-fun lt!2624162 () Unit!165949)

(assert (=> b!7466832 (= lt!2624162 (mainMatchTheorem!4230 lt!2624156 s!13591))))

(declare-fun lt!2624166 () Regex!19557)

(assert (=> b!7466832 (= lt!2624168 (matchRSpec!4236 lt!2624166 s!13591))))

(assert (=> b!7466832 (= lt!2624168 (matchR!9321 lt!2624166 s!13591))))

(declare-fun lt!2624155 () Unit!165949)

(assert (=> b!7466832 (= lt!2624155 (mainMatchTheorem!4230 lt!2624166 s!13591))))

(declare-fun lt!2624169 () Regex!19557)

(declare-fun lt!2624154 () Regex!19557)

(assert (=> b!7466832 (= lt!2624156 (Union!19557 lt!2624169 lt!2624154))))

(declare-fun r2!5783 () Regex!19557)

(assert (=> b!7466832 (= lt!2624154 (Concat!28402 r2!5783 rTail!78))))

(assert (=> b!7466832 (= lt!2624169 (Concat!28402 r1!5845 rTail!78))))

(assert (=> b!7466832 (= lt!2624166 (Concat!28402 lt!2624163 rTail!78))))

(assert (=> b!7466832 (= lt!2624163 (Union!19557 r1!5845 r2!5783))))

(declare-fun b!7466833 () Bool)

(declare-fun tp!2164694 () Bool)

(assert (=> b!7466833 (= e!4455403 tp!2164694)))

(declare-fun e!4455402 () Bool)

(assert (=> b!7466827 (= e!4455402 e!4455409)))

(declare-fun res!2995222 () Bool)

(assert (=> b!7466827 (=> res!2995222 e!4455409)))

(assert (=> b!7466827 (= res!2995222 (not (matchR!9321 r1!5845 (_1!37585 lt!2624164))))))

(declare-fun lt!2624157 () Option!17114)

(declare-fun get!25203 (Option!17114) tuple2!68564)

(assert (=> b!7466827 (= lt!2624164 (get!25203 lt!2624157))))

(assert (=> b!7466827 (= (Exists!4176 lambda!462180) (Exists!4176 lambda!462181))))

(declare-fun lt!2624170 () Unit!165949)

(assert (=> b!7466827 (= lt!2624170 (lemmaExistCutMatchRandMatchRSpecEquivalent!2510 r1!5845 rTail!78 s!13591))))

(assert (=> b!7466827 (= (isDefined!13803 lt!2624157) (Exists!4176 lambda!462180))))

(assert (=> b!7466827 (= lt!2624157 (findConcatSeparation!3236 r1!5845 rTail!78 Nil!72149 s!13591 s!13591))))

(declare-fun lt!2624158 () Unit!165949)

(assert (=> b!7466827 (= lt!2624158 (lemmaFindConcatSeparationEquivalentToExists!2994 r1!5845 rTail!78 s!13591))))

(declare-fun res!2995226 () Bool)

(assert (=> start!724126 (=> (not res!2995226) (not e!4455405))))

(assert (=> start!724126 (= res!2995226 (validRegex!10071 r1!5845))))

(assert (=> start!724126 e!4455405))

(assert (=> start!724126 e!4455403))

(assert (=> start!724126 e!4455404))

(assert (=> start!724126 e!4455407))

(assert (=> start!724126 e!4455406))

(declare-fun b!7466834 () Bool)

(assert (=> b!7466834 (= e!4455410 e!4455402)))

(declare-fun res!2995221 () Bool)

(assert (=> b!7466834 (=> res!2995221 e!4455402)))

(declare-fun lt!2624152 () Bool)

(declare-fun lt!2624167 () Bool)

(assert (=> b!7466834 (= res!2995221 (or (and (not lt!2624152) (not lt!2624167)) (not lt!2624152)))))

(assert (=> b!7466834 (= lt!2624167 (matchRSpec!4236 lt!2624154 s!13591))))

(assert (=> b!7466834 (= lt!2624167 (matchR!9321 lt!2624154 s!13591))))

(declare-fun lt!2624153 () Unit!165949)

(assert (=> b!7466834 (= lt!2624153 (mainMatchTheorem!4230 lt!2624154 s!13591))))

(assert (=> b!7466834 (= lt!2624152 (matchRSpec!4236 lt!2624169 s!13591))))

(assert (=> b!7466834 (= lt!2624152 (matchR!9321 lt!2624169 s!13591))))

(declare-fun lt!2624165 () Unit!165949)

(assert (=> b!7466834 (= lt!2624165 (mainMatchTheorem!4230 lt!2624169 s!13591))))

(declare-fun b!7466835 () Bool)

(declare-fun res!2995224 () Bool)

(assert (=> b!7466835 (=> (not res!2995224) (not e!4455405))))

(assert (=> b!7466835 (= res!2995224 (validRegex!10071 r2!5783))))

(assert (= (and start!724126 res!2995226) b!7466835))

(assert (= (and b!7466835 res!2995224) b!7466819))

(assert (= (and b!7466819 res!2995219) b!7466832))

(assert (= (and b!7466832 (not res!2995223)) b!7466817))

(assert (= (and b!7466817 (not res!2995225)) b!7466834))

(assert (= (and b!7466834 (not res!2995221)) b!7466827))

(assert (= (and b!7466827 (not res!2995222)) b!7466823))

(assert (= (and b!7466823 (not res!2995220)) b!7466825))

(get-info :version)

(assert (= (and start!724126 ((_ is ElementMatch!19557) r1!5845)) b!7466830))

(assert (= (and start!724126 ((_ is Concat!28402) r1!5845)) b!7466831))

(assert (= (and start!724126 ((_ is Star!19557) r1!5845)) b!7466833))

(assert (= (and start!724126 ((_ is Union!19557) r1!5845)) b!7466821))

(assert (= (and start!724126 ((_ is ElementMatch!19557) r2!5783)) b!7466822))

(assert (= (and start!724126 ((_ is Concat!28402) r2!5783)) b!7466824))

(assert (= (and start!724126 ((_ is Star!19557) r2!5783)) b!7466815))

(assert (= (and start!724126 ((_ is Union!19557) r2!5783)) b!7466828))

(assert (= (and start!724126 ((_ is ElementMatch!19557) rTail!78)) b!7466820))

(assert (= (and start!724126 ((_ is Concat!28402) rTail!78)) b!7466818))

(assert (= (and start!724126 ((_ is Star!19557) rTail!78)) b!7466829))

(assert (= (and start!724126 ((_ is Union!19557) rTail!78)) b!7466826))

(assert (= (and start!724126 ((_ is Cons!72149) s!13591)) b!7466816))

(declare-fun m!8065294 () Bool)

(assert (=> b!7466834 m!8065294))

(declare-fun m!8065296 () Bool)

(assert (=> b!7466834 m!8065296))

(declare-fun m!8065298 () Bool)

(assert (=> b!7466834 m!8065298))

(declare-fun m!8065300 () Bool)

(assert (=> b!7466834 m!8065300))

(declare-fun m!8065302 () Bool)

(assert (=> b!7466834 m!8065302))

(declare-fun m!8065304 () Bool)

(assert (=> b!7466834 m!8065304))

(declare-fun m!8065306 () Bool)

(assert (=> b!7466823 m!8065306))

(declare-fun m!8065308 () Bool)

(assert (=> b!7466835 m!8065308))

(declare-fun m!8065310 () Bool)

(assert (=> b!7466827 m!8065310))

(declare-fun m!8065312 () Bool)

(assert (=> b!7466827 m!8065312))

(declare-fun m!8065314 () Bool)

(assert (=> b!7466827 m!8065314))

(declare-fun m!8065316 () Bool)

(assert (=> b!7466827 m!8065316))

(declare-fun m!8065318 () Bool)

(assert (=> b!7466827 m!8065318))

(assert (=> b!7466827 m!8065318))

(declare-fun m!8065320 () Bool)

(assert (=> b!7466827 m!8065320))

(declare-fun m!8065322 () Bool)

(assert (=> b!7466827 m!8065322))

(declare-fun m!8065324 () Bool)

(assert (=> b!7466827 m!8065324))

(declare-fun m!8065326 () Bool)

(assert (=> b!7466817 m!8065326))

(declare-fun m!8065328 () Bool)

(assert (=> b!7466817 m!8065328))

(declare-fun m!8065330 () Bool)

(assert (=> b!7466817 m!8065330))

(assert (=> b!7466817 m!8065330))

(assert (=> b!7466817 m!8065328))

(declare-fun m!8065332 () Bool)

(assert (=> b!7466817 m!8065332))

(declare-fun m!8065334 () Bool)

(assert (=> b!7466817 m!8065334))

(declare-fun m!8065336 () Bool)

(assert (=> b!7466817 m!8065336))

(declare-fun m!8065338 () Bool)

(assert (=> b!7466819 m!8065338))

(declare-fun m!8065340 () Bool)

(assert (=> b!7466832 m!8065340))

(declare-fun m!8065342 () Bool)

(assert (=> b!7466832 m!8065342))

(declare-fun m!8065344 () Bool)

(assert (=> b!7466832 m!8065344))

(declare-fun m!8065346 () Bool)

(assert (=> b!7466832 m!8065346))

(declare-fun m!8065348 () Bool)

(assert (=> b!7466832 m!8065348))

(declare-fun m!8065350 () Bool)

(assert (=> b!7466832 m!8065350))

(declare-fun m!8065352 () Bool)

(assert (=> start!724126 m!8065352))

(declare-fun m!8065354 () Bool)

(assert (=> b!7466825 m!8065354))

(declare-fun m!8065356 () Bool)

(assert (=> b!7466825 m!8065356))

(declare-fun m!8065358 () Bool)

(assert (=> b!7466825 m!8065358))

(check-sat (not b!7466835) (not b!7466833) (not b!7466824) (not b!7466815) (not b!7466832) (not b!7466826) tp_is_empty!49403 (not b!7466834) (not b!7466831) (not start!724126) (not b!7466829) (not b!7466827) (not b!7466817) (not b!7466821) (not b!7466828) (not b!7466825) (not b!7466818) (not b!7466819) (not b!7466823) (not b!7466816))
(check-sat)
