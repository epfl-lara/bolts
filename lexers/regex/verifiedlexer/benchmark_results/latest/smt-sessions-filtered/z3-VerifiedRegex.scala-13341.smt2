; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!724026 () Bool)

(assert start!724026)

(declare-fun b!7464443 () Bool)

(assert (=> b!7464443 true))

(assert (=> b!7464443 true))

(assert (=> b!7464443 true))

(declare-fun lambda!461892 () Int)

(declare-fun lambda!461891 () Int)

(assert (=> b!7464443 (not (= lambda!461892 lambda!461891))))

(assert (=> b!7464443 true))

(assert (=> b!7464443 true))

(assert (=> b!7464443 true))

(declare-fun bs!1929857 () Bool)

(declare-fun b!7464453 () Bool)

(assert (= bs!1929857 (and b!7464453 b!7464443)))

(declare-datatypes ((C!39364 0))(
  ( (C!39365 (val!30080 Int)) )
))
(declare-datatypes ((Regex!19545 0))(
  ( (ElementMatch!19545 (c!1379732 C!39364)) (Concat!28390 (regOne!39602 Regex!19545) (regTwo!39602 Regex!19545)) (EmptyExpr!19545) (Star!19545 (reg!19874 Regex!19545)) (EmptyLang!19545) (Union!19545 (regOne!39603 Regex!19545) (regTwo!39603 Regex!19545)) )
))
(declare-fun r1!5845 () Regex!19545)

(declare-fun lambda!461893 () Int)

(declare-fun lt!2623328 () Regex!19545)

(assert (=> bs!1929857 (= (= r1!5845 lt!2623328) (= lambda!461893 lambda!461891))))

(assert (=> bs!1929857 (not (= lambda!461893 lambda!461892))))

(assert (=> b!7464453 true))

(assert (=> b!7464453 true))

(assert (=> b!7464453 true))

(declare-fun b!7464437 () Bool)

(declare-fun e!4454274 () Bool)

(declare-fun tp!2163761 () Bool)

(declare-fun tp!2163771 () Bool)

(assert (=> b!7464437 (= e!4454274 (and tp!2163761 tp!2163771))))

(declare-fun b!7464438 () Bool)

(declare-fun e!4454277 () Bool)

(declare-fun tp!2163760 () Bool)

(assert (=> b!7464438 (= e!4454277 tp!2163760)))

(declare-fun b!7464439 () Bool)

(declare-fun e!4454271 () Bool)

(declare-fun tp!2163764 () Bool)

(declare-fun tp!2163766 () Bool)

(assert (=> b!7464439 (= e!4454271 (and tp!2163764 tp!2163766))))

(declare-fun b!7464440 () Bool)

(declare-fun tp!2163757 () Bool)

(declare-fun tp!2163758 () Bool)

(assert (=> b!7464440 (= e!4454277 (and tp!2163757 tp!2163758))))

(declare-fun b!7464441 () Bool)

(declare-fun e!4454275 () Bool)

(declare-fun e!4454272 () Bool)

(assert (=> b!7464441 (= e!4454275 e!4454272)))

(declare-fun res!2994149 () Bool)

(assert (=> b!7464441 (=> res!2994149 e!4454272)))

(declare-fun lt!2623341 () Bool)

(declare-fun lt!2623327 () Bool)

(assert (=> b!7464441 (= res!2994149 (or (and (not lt!2623341) (not lt!2623327)) (not lt!2623341)))))

(declare-fun lt!2623335 () Regex!19545)

(declare-datatypes ((List!72261 0))(
  ( (Nil!72137) (Cons!72137 (h!78585 C!39364) (t!386830 List!72261)) )
))
(declare-fun s!13591 () List!72261)

(declare-fun matchRSpec!4224 (Regex!19545 List!72261) Bool)

(assert (=> b!7464441 (= lt!2623327 (matchRSpec!4224 lt!2623335 s!13591))))

(declare-fun matchR!9309 (Regex!19545 List!72261) Bool)

(assert (=> b!7464441 (= lt!2623327 (matchR!9309 lt!2623335 s!13591))))

(declare-datatypes ((Unit!165925 0))(
  ( (Unit!165926) )
))
(declare-fun lt!2623325 () Unit!165925)

(declare-fun mainMatchTheorem!4218 (Regex!19545 List!72261) Unit!165925)

(assert (=> b!7464441 (= lt!2623325 (mainMatchTheorem!4218 lt!2623335 s!13591))))

(declare-fun lt!2623330 () Regex!19545)

(assert (=> b!7464441 (= lt!2623341 (matchRSpec!4224 lt!2623330 s!13591))))

(assert (=> b!7464441 (= lt!2623341 (matchR!9309 lt!2623330 s!13591))))

(declare-fun lt!2623326 () Unit!165925)

(assert (=> b!7464441 (= lt!2623326 (mainMatchTheorem!4218 lt!2623330 s!13591))))

(declare-fun b!7464442 () Bool)

(declare-fun tp!2163768 () Bool)

(declare-fun tp!2163756 () Bool)

(assert (=> b!7464442 (= e!4454277 (and tp!2163768 tp!2163756))))

(declare-fun e!4454273 () Bool)

(assert (=> b!7464443 (= e!4454273 e!4454275)))

(declare-fun res!2994151 () Bool)

(assert (=> b!7464443 (=> res!2994151 e!4454275)))

(declare-fun lt!2623336 () Bool)

(declare-fun lt!2623331 () Bool)

(assert (=> b!7464443 (= res!2994151 (or lt!2623336 (not lt!2623331)))))

(declare-fun Exists!4164 (Int) Bool)

(assert (=> b!7464443 (= (Exists!4164 lambda!461891) (Exists!4164 lambda!461892))))

(declare-fun rTail!78 () Regex!19545)

(declare-fun lt!2623340 () Unit!165925)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2498 (Regex!19545 Regex!19545 List!72261) Unit!165925)

(assert (=> b!7464443 (= lt!2623340 (lemmaExistCutMatchRandMatchRSpecEquivalent!2498 lt!2623328 rTail!78 s!13591))))

(assert (=> b!7464443 (= lt!2623336 (Exists!4164 lambda!461891))))

(declare-datatypes ((tuple2!68540 0))(
  ( (tuple2!68541 (_1!37573 List!72261) (_2!37573 List!72261)) )
))
(declare-datatypes ((Option!17102 0))(
  ( (None!17101) (Some!17101 (v!54230 tuple2!68540)) )
))
(declare-fun isDefined!13791 (Option!17102) Bool)

(declare-fun findConcatSeparation!3224 (Regex!19545 Regex!19545 List!72261 List!72261 List!72261) Option!17102)

(assert (=> b!7464443 (= lt!2623336 (isDefined!13791 (findConcatSeparation!3224 lt!2623328 rTail!78 Nil!72137 s!13591 s!13591)))))

(declare-fun lt!2623337 () Unit!165925)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2982 (Regex!19545 Regex!19545 List!72261) Unit!165925)

(assert (=> b!7464443 (= lt!2623337 (lemmaFindConcatSeparationEquivalentToExists!2982 lt!2623328 rTail!78 s!13591))))

(declare-fun b!7464444 () Bool)

(declare-fun res!2994154 () Bool)

(declare-fun e!4454276 () Bool)

(assert (=> b!7464444 (=> (not res!2994154) (not e!4454276))))

(declare-fun validRegex!10059 (Regex!19545) Bool)

(assert (=> b!7464444 (= res!2994154 (validRegex!10059 rTail!78))))

(declare-fun b!7464445 () Bool)

(declare-fun tp!2163763 () Bool)

(assert (=> b!7464445 (= e!4454271 tp!2163763)))

(declare-fun b!7464446 () Bool)

(declare-fun tp_is_empty!49379 () Bool)

(assert (=> b!7464446 (= e!4454271 tp_is_empty!49379)))

(declare-fun b!7464447 () Bool)

(declare-fun e!4454278 () Bool)

(declare-fun tp!2163770 () Bool)

(assert (=> b!7464447 (= e!4454278 (and tp_is_empty!49379 tp!2163770))))

(declare-fun b!7464448 () Bool)

(declare-fun tp!2163765 () Bool)

(declare-fun tp!2163767 () Bool)

(assert (=> b!7464448 (= e!4454274 (and tp!2163765 tp!2163767))))

(declare-fun b!7464449 () Bool)

(assert (=> b!7464449 (= e!4454276 (not e!4454273))))

(declare-fun res!2994150 () Bool)

(assert (=> b!7464449 (=> res!2994150 e!4454273)))

(declare-fun lt!2623333 () Bool)

(assert (=> b!7464449 (= res!2994150 lt!2623333)))

(declare-fun lt!2623332 () Regex!19545)

(assert (=> b!7464449 (= lt!2623331 (matchRSpec!4224 lt!2623332 s!13591))))

(assert (=> b!7464449 (= lt!2623331 (matchR!9309 lt!2623332 s!13591))))

(declare-fun lt!2623334 () Unit!165925)

(assert (=> b!7464449 (= lt!2623334 (mainMatchTheorem!4218 lt!2623332 s!13591))))

(declare-fun lt!2623338 () Regex!19545)

(assert (=> b!7464449 (= lt!2623333 (matchRSpec!4224 lt!2623338 s!13591))))

(assert (=> b!7464449 (= lt!2623333 (matchR!9309 lt!2623338 s!13591))))

(declare-fun lt!2623339 () Unit!165925)

(assert (=> b!7464449 (= lt!2623339 (mainMatchTheorem!4218 lt!2623338 s!13591))))

(assert (=> b!7464449 (= lt!2623332 (Union!19545 lt!2623330 lt!2623335))))

(declare-fun r2!5783 () Regex!19545)

(assert (=> b!7464449 (= lt!2623335 (Concat!28390 r2!5783 rTail!78))))

(assert (=> b!7464449 (= lt!2623330 (Concat!28390 r1!5845 rTail!78))))

(assert (=> b!7464449 (= lt!2623338 (Concat!28390 lt!2623328 rTail!78))))

(assert (=> b!7464449 (= lt!2623328 (Union!19545 r1!5845 r2!5783))))

(declare-fun res!2994153 () Bool)

(assert (=> start!724026 (=> (not res!2994153) (not e!4454276))))

(assert (=> start!724026 (= res!2994153 (validRegex!10059 r1!5845))))

(assert (=> start!724026 e!4454276))

(assert (=> start!724026 e!4454271))

(assert (=> start!724026 e!4454277))

(assert (=> start!724026 e!4454274))

(assert (=> start!724026 e!4454278))

(declare-fun b!7464450 () Bool)

(declare-fun tp!2163762 () Bool)

(declare-fun tp!2163759 () Bool)

(assert (=> b!7464450 (= e!4454271 (and tp!2163762 tp!2163759))))

(declare-fun b!7464451 () Bool)

(declare-fun tp!2163769 () Bool)

(assert (=> b!7464451 (= e!4454274 tp!2163769)))

(declare-fun b!7464452 () Bool)

(declare-fun res!2994152 () Bool)

(assert (=> b!7464452 (=> (not res!2994152) (not e!4454276))))

(assert (=> b!7464452 (= res!2994152 (validRegex!10059 r2!5783))))

(assert (=> b!7464453 (= e!4454272 true)))

(assert (=> b!7464453 (= (isDefined!13791 (findConcatSeparation!3224 r1!5845 rTail!78 Nil!72137 s!13591 s!13591)) (Exists!4164 lambda!461893))))

(declare-fun lt!2623329 () Unit!165925)

(assert (=> b!7464453 (= lt!2623329 (lemmaFindConcatSeparationEquivalentToExists!2982 r1!5845 rTail!78 s!13591))))

(declare-fun b!7464454 () Bool)

(assert (=> b!7464454 (= e!4454274 tp_is_empty!49379)))

(declare-fun b!7464455 () Bool)

(assert (=> b!7464455 (= e!4454277 tp_is_empty!49379)))

(assert (= (and start!724026 res!2994153) b!7464452))

(assert (= (and b!7464452 res!2994152) b!7464444))

(assert (= (and b!7464444 res!2994154) b!7464449))

(assert (= (and b!7464449 (not res!2994150)) b!7464443))

(assert (= (and b!7464443 (not res!2994151)) b!7464441))

(assert (= (and b!7464441 (not res!2994149)) b!7464453))

(get-info :version)

(assert (= (and start!724026 ((_ is ElementMatch!19545) r1!5845)) b!7464446))

(assert (= (and start!724026 ((_ is Concat!28390) r1!5845)) b!7464450))

(assert (= (and start!724026 ((_ is Star!19545) r1!5845)) b!7464445))

(assert (= (and start!724026 ((_ is Union!19545) r1!5845)) b!7464439))

(assert (= (and start!724026 ((_ is ElementMatch!19545) r2!5783)) b!7464455))

(assert (= (and start!724026 ((_ is Concat!28390) r2!5783)) b!7464440))

(assert (= (and start!724026 ((_ is Star!19545) r2!5783)) b!7464438))

(assert (= (and start!724026 ((_ is Union!19545) r2!5783)) b!7464442))

(assert (= (and start!724026 ((_ is ElementMatch!19545) rTail!78)) b!7464454))

(assert (= (and start!724026 ((_ is Concat!28390) rTail!78)) b!7464437))

(assert (= (and start!724026 ((_ is Star!19545) rTail!78)) b!7464451))

(assert (= (and start!724026 ((_ is Union!19545) rTail!78)) b!7464448))

(assert (= (and start!724026 ((_ is Cons!72137) s!13591)) b!7464447))

(declare-fun m!8063946 () Bool)

(assert (=> start!724026 m!8063946))

(declare-fun m!8063948 () Bool)

(assert (=> b!7464452 m!8063948))

(declare-fun m!8063950 () Bool)

(assert (=> b!7464444 m!8063950))

(declare-fun m!8063952 () Bool)

(assert (=> b!7464449 m!8063952))

(declare-fun m!8063954 () Bool)

(assert (=> b!7464449 m!8063954))

(declare-fun m!8063956 () Bool)

(assert (=> b!7464449 m!8063956))

(declare-fun m!8063958 () Bool)

(assert (=> b!7464449 m!8063958))

(declare-fun m!8063960 () Bool)

(assert (=> b!7464449 m!8063960))

(declare-fun m!8063962 () Bool)

(assert (=> b!7464449 m!8063962))

(declare-fun m!8063964 () Bool)

(assert (=> b!7464443 m!8063964))

(declare-fun m!8063966 () Bool)

(assert (=> b!7464443 m!8063966))

(assert (=> b!7464443 m!8063964))

(declare-fun m!8063968 () Bool)

(assert (=> b!7464443 m!8063968))

(declare-fun m!8063970 () Bool)

(assert (=> b!7464443 m!8063970))

(declare-fun m!8063972 () Bool)

(assert (=> b!7464443 m!8063972))

(assert (=> b!7464443 m!8063972))

(declare-fun m!8063974 () Bool)

(assert (=> b!7464443 m!8063974))

(declare-fun m!8063976 () Bool)

(assert (=> b!7464441 m!8063976))

(declare-fun m!8063978 () Bool)

(assert (=> b!7464441 m!8063978))

(declare-fun m!8063980 () Bool)

(assert (=> b!7464441 m!8063980))

(declare-fun m!8063982 () Bool)

(assert (=> b!7464441 m!8063982))

(declare-fun m!8063984 () Bool)

(assert (=> b!7464441 m!8063984))

(declare-fun m!8063986 () Bool)

(assert (=> b!7464441 m!8063986))

(declare-fun m!8063988 () Bool)

(assert (=> b!7464453 m!8063988))

(assert (=> b!7464453 m!8063988))

(declare-fun m!8063990 () Bool)

(assert (=> b!7464453 m!8063990))

(declare-fun m!8063992 () Bool)

(assert (=> b!7464453 m!8063992))

(declare-fun m!8063994 () Bool)

(assert (=> b!7464453 m!8063994))

(check-sat (not b!7464452) (not b!7464448) (not b!7464444) (not b!7464443) (not b!7464441) (not b!7464450) (not start!724026) (not b!7464451) (not b!7464453) (not b!7464439) tp_is_empty!49379 (not b!7464449) (not b!7464437) (not b!7464445) (not b!7464447) (not b!7464438) (not b!7464442) (not b!7464440))
(check-sat)
