; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!738654 () Bool)

(assert start!738654)

(declare-fun b!7747072 () Bool)

(assert (=> b!7747072 true))

(assert (=> b!7747072 true))

(declare-fun bs!1965579 () Bool)

(declare-fun b!7747071 () Bool)

(assert (= bs!1965579 (and b!7747071 b!7747072)))

(declare-fun lambda!471763 () Int)

(declare-fun lambda!471762 () Int)

(assert (=> bs!1965579 (not (= lambda!471763 lambda!471762))))

(assert (=> b!7747071 true))

(assert (=> b!7747071 true))

(declare-fun b!7747061 () Bool)

(declare-fun e!4592928 () Bool)

(declare-fun e!4592923 () Bool)

(assert (=> b!7747061 (= e!4592928 e!4592923)))

(declare-fun res!3088854 () Bool)

(assert (=> b!7747061 (=> res!3088854 e!4592923)))

(declare-datatypes ((C!41506 0))(
  ( (C!41507 (val!31193 Int)) )
))
(declare-datatypes ((Regex!20590 0))(
  ( (ElementMatch!20590 (c!1428920 C!41506)) (Concat!29435 (regOne!41692 Regex!20590) (regTwo!41692 Regex!20590)) (EmptyExpr!20590) (Star!20590 (reg!20919 Regex!20590)) (EmptyLang!20590) (Union!20590 (regOne!41693 Regex!20590) (regTwo!41693 Regex!20590)) )
))
(declare-fun r!14126 () Regex!20590)

(declare-fun validRegex!11008 (Regex!20590) Bool)

(assert (=> b!7747061 (= res!3088854 (not (validRegex!11008 (regOne!41692 r!14126))))))

(declare-datatypes ((List!73437 0))(
  ( (Nil!73313) (Cons!73313 (h!79761 C!41506) (t!388172 List!73437)) )
))
(declare-datatypes ((tuple2!69634 0))(
  ( (tuple2!69635 (_1!38120 List!73437) (_2!38120 List!73437)) )
))
(declare-fun lt!2668798 () tuple2!69634)

(declare-fun matchR!10082 (Regex!20590 List!73437) Bool)

(declare-fun matchRSpec!4655 (Regex!20590 List!73437) Bool)

(assert (=> b!7747061 (= (matchR!10082 (regTwo!41692 r!14126) (_2!38120 lt!2668798)) (matchRSpec!4655 (regTwo!41692 r!14126) (_2!38120 lt!2668798)))))

(declare-datatypes ((Unit!168284 0))(
  ( (Unit!168285) )
))
(declare-fun lt!2668796 () Unit!168284)

(declare-fun mainMatchTheorem!4625 (Regex!20590 List!73437) Unit!168284)

(assert (=> b!7747061 (= lt!2668796 (mainMatchTheorem!4625 (regTwo!41692 r!14126) (_2!38120 lt!2668798)))))

(assert (=> b!7747061 (= (matchR!10082 (regOne!41692 r!14126) (_1!38120 lt!2668798)) (matchRSpec!4655 (regOne!41692 r!14126) (_1!38120 lt!2668798)))))

(declare-fun lt!2668800 () Unit!168284)

(assert (=> b!7747061 (= lt!2668800 (mainMatchTheorem!4625 (regOne!41692 r!14126) (_1!38120 lt!2668798)))))

(declare-fun pickWitness!547 (Int) tuple2!69634)

(assert (=> b!7747061 (= lt!2668798 (pickWitness!547 lambda!471763))))

(declare-fun b!7747062 () Bool)

(declare-fun e!4592924 () Bool)

(declare-fun tp!2273093 () Bool)

(declare-fun tp!2273090 () Bool)

(assert (=> b!7747062 (= e!4592924 (and tp!2273093 tp!2273090))))

(declare-fun b!7747063 () Bool)

(declare-fun tp!2273094 () Bool)

(declare-fun tp!2273095 () Bool)

(assert (=> b!7747063 (= e!4592924 (and tp!2273094 tp!2273095))))

(declare-fun b!7747064 () Bool)

(declare-fun res!3088853 () Bool)

(declare-fun e!4592927 () Bool)

(assert (=> b!7747064 (=> (not res!3088853) (not e!4592927))))

(assert (=> b!7747064 (= res!3088853 (and (not (is-EmptyExpr!20590 r!14126)) (not (is-EmptyLang!20590 r!14126)) (not (is-ElementMatch!20590 r!14126)) (not (is-Union!20590 r!14126)) (not (is-Star!20590 r!14126))))))

(declare-fun b!7747065 () Bool)

(declare-fun tp!2273092 () Bool)

(assert (=> b!7747065 (= e!4592924 tp!2273092)))

(declare-fun b!7747066 () Bool)

(declare-fun res!3088851 () Bool)

(assert (=> b!7747066 (=> res!3088851 e!4592923)))

(declare-fun s!9605 () List!73437)

(declare-fun ++!17789 (List!73437 List!73437) List!73437)

(assert (=> b!7747066 (= res!3088851 (not (= (++!17789 (_1!38120 lt!2668798) (_2!38120 lt!2668798)) s!9605)))))

(declare-fun b!7747067 () Bool)

(declare-fun e!4592926 () Bool)

(declare-fun tp_is_empty!51535 () Bool)

(declare-fun tp!2273091 () Bool)

(assert (=> b!7747067 (= e!4592926 (and tp_is_empty!51535 tp!2273091))))

(declare-fun b!7747068 () Bool)

(declare-fun e!4592929 () Unit!168284)

(declare-fun Unit!168286 () Unit!168284)

(assert (=> b!7747068 (= e!4592929 Unit!168286)))

(declare-fun lt!2668799 () tuple2!69634)

(declare-datatypes ((Option!17611 0))(
  ( (None!17610) (Some!17610 (v!54745 tuple2!69634)) )
))
(declare-fun lt!2668803 () Option!17611)

(declare-fun get!26076 (Option!17611) tuple2!69634)

(assert (=> b!7747068 (= lt!2668799 (get!26076 lt!2668803))))

(declare-fun lt!2668795 () Unit!168284)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!215 (Regex!20590 Regex!20590 List!73437 List!73437 List!73437) Unit!168284)

(assert (=> b!7747068 (= lt!2668795 (lemmaFindSeparationIsDefinedThenConcatMatches!215 (regOne!41692 r!14126) (regTwo!41692 r!14126) (_1!38120 lt!2668799) (_2!38120 lt!2668799) s!9605))))

(declare-fun res!3088848 () Bool)

(assert (=> b!7747068 (= res!3088848 (matchR!10082 r!14126 (++!17789 (_1!38120 lt!2668799) (_2!38120 lt!2668799))))))

(declare-fun e!4592925 () Bool)

(assert (=> b!7747068 (=> (not res!3088848) (not e!4592925))))

(assert (=> b!7747068 e!4592925))

(declare-fun b!7747060 () Bool)

(declare-fun res!3088847 () Bool)

(assert (=> b!7747060 (=> res!3088847 e!4592923)))

(assert (=> b!7747060 (= res!3088847 (not (validRegex!11008 (regTwo!41692 r!14126))))))

(declare-fun res!3088856 () Bool)

(assert (=> start!738654 (=> (not res!3088856) (not e!4592927))))

(assert (=> start!738654 (= res!3088856 (validRegex!11008 r!14126))))

(assert (=> start!738654 e!4592927))

(assert (=> start!738654 e!4592924))

(assert (=> start!738654 e!4592926))

(declare-fun b!7747069 () Bool)

(declare-fun Unit!168287 () Unit!168284)

(assert (=> b!7747069 (= e!4592929 Unit!168287)))

(declare-fun b!7747070 () Bool)

(assert (=> b!7747070 (= e!4592923 (= (++!17789 Nil!73313 s!9605) s!9605))))

(declare-fun res!3088852 () Bool)

(assert (=> b!7747071 (=> res!3088852 e!4592928)))

(declare-fun Exists!4711 (Int) Bool)

(assert (=> b!7747071 (= res!3088852 (not (Exists!4711 lambda!471763)))))

(declare-fun e!4592922 () Bool)

(assert (=> b!7747072 (= e!4592927 (not e!4592922))))

(declare-fun res!3088855 () Bool)

(assert (=> b!7747072 (=> res!3088855 e!4592922)))

(assert (=> b!7747072 (= res!3088855 (matchR!10082 r!14126 s!9605))))

(declare-fun lt!2668802 () Bool)

(assert (=> b!7747072 (= lt!2668802 (Exists!4711 lambda!471762))))

(declare-fun isDefined!14227 (Option!17611) Bool)

(assert (=> b!7747072 (= lt!2668802 (isDefined!14227 lt!2668803))))

(declare-fun findConcatSeparation!3641 (Regex!20590 Regex!20590 List!73437 List!73437 List!73437) Option!17611)

(assert (=> b!7747072 (= lt!2668803 (findConcatSeparation!3641 (regOne!41692 r!14126) (regTwo!41692 r!14126) Nil!73313 s!9605 s!9605))))

(declare-fun lt!2668801 () Unit!168284)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3399 (Regex!20590 Regex!20590 List!73437) Unit!168284)

(assert (=> b!7747072 (= lt!2668801 (lemmaFindConcatSeparationEquivalentToExists!3399 (regOne!41692 r!14126) (regTwo!41692 r!14126) s!9605))))

(declare-fun b!7747073 () Bool)

(assert (=> b!7747073 (= e!4592924 tp_is_empty!51535)))

(declare-fun b!7747074 () Bool)

(assert (=> b!7747074 (= e!4592922 e!4592928)))

(declare-fun res!3088850 () Bool)

(assert (=> b!7747074 (=> res!3088850 e!4592928)))

(assert (=> b!7747074 (= res!3088850 (Exists!4711 lambda!471762))))

(declare-fun lt!2668797 () Unit!168284)

(assert (=> b!7747074 (= lt!2668797 e!4592929)))

(declare-fun c!1428919 () Bool)

(assert (=> b!7747074 (= c!1428919 lt!2668802)))

(declare-fun b!7747075 () Bool)

(assert (=> b!7747075 (= e!4592925 false)))

(declare-fun b!7747076 () Bool)

(declare-fun res!3088849 () Bool)

(assert (=> b!7747076 (=> res!3088849 e!4592923)))

(declare-fun isPrefix!6234 (List!73437 List!73437) Bool)

(assert (=> b!7747076 (= res!3088849 (not (isPrefix!6234 Nil!73313 (_1!38120 lt!2668798))))))

(assert (= (and start!738654 res!3088856) b!7747064))

(assert (= (and b!7747064 res!3088853) b!7747072))

(assert (= (and b!7747072 (not res!3088855)) b!7747074))

(assert (= (and b!7747074 c!1428919) b!7747068))

(assert (= (and b!7747074 (not c!1428919)) b!7747069))

(assert (= (and b!7747068 res!3088848) b!7747075))

(assert (= (and b!7747074 (not res!3088850)) b!7747071))

(assert (= (and b!7747071 (not res!3088852)) b!7747061))

(assert (= (and b!7747061 (not res!3088854)) b!7747060))

(assert (= (and b!7747060 (not res!3088847)) b!7747066))

(assert (= (and b!7747066 (not res!3088851)) b!7747076))

(assert (= (and b!7747076 (not res!3088849)) b!7747070))

(assert (= (and start!738654 (is-ElementMatch!20590 r!14126)) b!7747073))

(assert (= (and start!738654 (is-Concat!29435 r!14126)) b!7747063))

(assert (= (and start!738654 (is-Star!20590 r!14126)) b!7747065))

(assert (= (and start!738654 (is-Union!20590 r!14126)) b!7747062))

(assert (= (and start!738654 (is-Cons!73313 s!9605)) b!7747067))

(declare-fun m!8214602 () Bool)

(assert (=> b!7747071 m!8214602))

(declare-fun m!8214604 () Bool)

(assert (=> b!7747070 m!8214604))

(declare-fun m!8214606 () Bool)

(assert (=> b!7747066 m!8214606))

(declare-fun m!8214608 () Bool)

(assert (=> b!7747068 m!8214608))

(declare-fun m!8214610 () Bool)

(assert (=> b!7747068 m!8214610))

(declare-fun m!8214612 () Bool)

(assert (=> b!7747068 m!8214612))

(assert (=> b!7747068 m!8214612))

(declare-fun m!8214614 () Bool)

(assert (=> b!7747068 m!8214614))

(declare-fun m!8214616 () Bool)

(assert (=> b!7747061 m!8214616))

(declare-fun m!8214618 () Bool)

(assert (=> b!7747061 m!8214618))

(declare-fun m!8214620 () Bool)

(assert (=> b!7747061 m!8214620))

(declare-fun m!8214622 () Bool)

(assert (=> b!7747061 m!8214622))

(declare-fun m!8214624 () Bool)

(assert (=> b!7747061 m!8214624))

(declare-fun m!8214626 () Bool)

(assert (=> b!7747061 m!8214626))

(declare-fun m!8214628 () Bool)

(assert (=> b!7747061 m!8214628))

(declare-fun m!8214630 () Bool)

(assert (=> b!7747061 m!8214630))

(declare-fun m!8214632 () Bool)

(assert (=> b!7747074 m!8214632))

(declare-fun m!8214634 () Bool)

(assert (=> b!7747076 m!8214634))

(declare-fun m!8214636 () Bool)

(assert (=> start!738654 m!8214636))

(declare-fun m!8214638 () Bool)

(assert (=> b!7747060 m!8214638))

(declare-fun m!8214640 () Bool)

(assert (=> b!7747072 m!8214640))

(declare-fun m!8214642 () Bool)

(assert (=> b!7747072 m!8214642))

(assert (=> b!7747072 m!8214632))

(declare-fun m!8214644 () Bool)

(assert (=> b!7747072 m!8214644))

(declare-fun m!8214646 () Bool)

(assert (=> b!7747072 m!8214646))

(push 1)

(assert (not start!738654))

(assert (not b!7747071))

(assert (not b!7747065))

(assert tp_is_empty!51535)

(assert (not b!7747072))

(assert (not b!7747068))

(assert (not b!7747060))

(assert (not b!7747061))

(assert (not b!7747076))

(assert (not b!7747062))

(assert (not b!7747074))

(assert (not b!7747063))

(assert (not b!7747070))

(assert (not b!7747067))

(assert (not b!7747066))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1965582 () Bool)

(declare-fun b!7747204 () Bool)

(assert (= bs!1965582 (and b!7747204 b!7747072)))

(declare-fun lambda!471778 () Int)

(assert (=> bs!1965582 (not (= lambda!471778 lambda!471762))))

(declare-fun bs!1965583 () Bool)

(assert (= bs!1965583 (and b!7747204 b!7747071)))

(assert (=> bs!1965583 (not (= lambda!471778 lambda!471763))))

(assert (=> b!7747204 true))

(assert (=> b!7747204 true))

(declare-fun bs!1965584 () Bool)

(declare-fun b!7747210 () Bool)

(assert (= bs!1965584 (and b!7747210 b!7747072)))

(declare-fun lambda!471779 () Int)

(assert (=> bs!1965584 (not (= lambda!471779 lambda!471762))))

(declare-fun bs!1965585 () Bool)

(assert (= bs!1965585 (and b!7747210 b!7747071)))

(assert (=> bs!1965585 (= (and (= (_1!38120 lt!2668798) s!9605) (= (regOne!41692 (regOne!41692 r!14126)) (regOne!41692 r!14126)) (= (regTwo!41692 (regOne!41692 r!14126)) (regTwo!41692 r!14126))) (= lambda!471779 lambda!471763))))

(declare-fun bs!1965586 () Bool)

(assert (= bs!1965586 (and b!7747210 b!7747204)))

(assert (=> bs!1965586 (not (= lambda!471779 lambda!471778))))

(assert (=> b!7747210 true))

(assert (=> b!7747210 true))

(declare-fun b!7747202 () Bool)

(declare-fun c!1428938 () Bool)

(assert (=> b!7747202 (= c!1428938 (is-Union!20590 (regOne!41692 r!14126)))))

(declare-fun e!4592999 () Bool)

(declare-fun e!4593003 () Bool)

(assert (=> b!7747202 (= e!4592999 e!4593003)))

(declare-fun d!2342297 () Bool)

(declare-fun c!1428937 () Bool)

(assert (=> d!2342297 (= c!1428937 (is-EmptyExpr!20590 (regOne!41692 r!14126)))))

(declare-fun e!4593004 () Bool)

(assert (=> d!2342297 (= (matchRSpec!4655 (regOne!41692 r!14126) (_1!38120 lt!2668798)) e!4593004)))

(declare-fun b!7747203 () Bool)

(assert (=> b!7747203 (= e!4592999 (= (_1!38120 lt!2668798) (Cons!73313 (c!1428920 (regOne!41692 r!14126)) Nil!73313)))))

(declare-fun bm!718002 () Bool)

(declare-fun c!1428940 () Bool)

(declare-fun call!718008 () Bool)

(assert (=> bm!718002 (= call!718008 (Exists!4711 (ite c!1428940 lambda!471778 lambda!471779)))))

(declare-fun e!4593001 () Bool)

(assert (=> b!7747204 (= e!4593001 call!718008)))

(declare-fun bm!718003 () Bool)

(declare-fun call!718010 () Bool)

(declare-fun isEmpty!42005 (List!73437) Bool)

(assert (=> bm!718003 (= call!718010 (isEmpty!42005 (_1!38120 lt!2668798)))))

(declare-fun b!7747205 () Bool)

(declare-fun res!3088931 () Bool)

(assert (=> b!7747205 (=> res!3088931 e!4593001)))

(assert (=> b!7747205 (= res!3088931 call!718010)))

(declare-fun e!4592996 () Bool)

(assert (=> b!7747205 (= e!4592996 e!4593001)))

(declare-fun b!7747206 () Bool)

(declare-fun e!4592998 () Bool)

(assert (=> b!7747206 (= e!4593003 e!4592998)))

(declare-fun res!3088933 () Bool)

(assert (=> b!7747206 (= res!3088933 (matchRSpec!4655 (regOne!41693 (regOne!41692 r!14126)) (_1!38120 lt!2668798)))))

(assert (=> b!7747206 (=> res!3088933 e!4592998)))

(declare-fun b!7747207 () Bool)

(assert (=> b!7747207 (= e!4592998 (matchRSpec!4655 (regTwo!41693 (regOne!41692 r!14126)) (_1!38120 lt!2668798)))))

(declare-fun b!7747208 () Bool)

(assert (=> b!7747208 (= e!4593004 call!718010)))

(declare-fun b!7747209 () Bool)

(declare-fun e!4592995 () Bool)

(assert (=> b!7747209 (= e!4593004 e!4592995)))

(declare-fun res!3088930 () Bool)

(assert (=> b!7747209 (= res!3088930 (not (is-EmptyLang!20590 (regOne!41692 r!14126))))))

(assert (=> b!7747209 (=> (not res!3088930) (not e!4592995))))

(assert (=> b!7747210 (= e!4592996 call!718008)))

(declare-fun b!7747211 () Bool)

(assert (=> b!7747211 (= e!4593003 e!4592996)))

(assert (=> b!7747211 (= c!1428940 (is-Star!20590 (regOne!41692 r!14126)))))

(declare-fun b!7747212 () Bool)

(declare-fun c!1428941 () Bool)

(assert (=> b!7747212 (= c!1428941 (is-ElementMatch!20590 (regOne!41692 r!14126)))))

(assert (=> b!7747212 (= e!4592995 e!4592999)))

(assert (= (and d!2342297 c!1428937) b!7747208))

(assert (= (and d!2342297 (not c!1428937)) b!7747209))

(assert (= (and b!7747209 res!3088930) b!7747212))

(assert (= (and b!7747212 c!1428941) b!7747203))

(assert (= (and b!7747212 (not c!1428941)) b!7747202))

(assert (= (and b!7747202 c!1428938) b!7747206))

(assert (= (and b!7747202 (not c!1428938)) b!7747211))

(assert (= (and b!7747206 (not res!3088933)) b!7747207))

(assert (= (and b!7747211 c!1428940) b!7747205))

(assert (= (and b!7747211 (not c!1428940)) b!7747210))

(assert (= (and b!7747205 (not res!3088931)) b!7747204))

(assert (= (or b!7747204 b!7747210) bm!718002))

(assert (= (or b!7747208 b!7747205) bm!718003))

(declare-fun m!8214702 () Bool)

(assert (=> bm!718002 m!8214702))

(declare-fun m!8214704 () Bool)

(assert (=> bm!718003 m!8214704))

(declare-fun m!8214706 () Bool)

(assert (=> b!7747206 m!8214706))

(declare-fun m!8214708 () Bool)

(assert (=> b!7747207 m!8214708))

(assert (=> b!7747061 d!2342297))

(declare-fun b!7747271 () Bool)

(declare-fun e!4593038 () Bool)

(declare-fun head!15822 (List!73437) C!41506)

(assert (=> b!7747271 (= e!4593038 (= (head!15822 (_1!38120 lt!2668798)) (c!1428920 (regOne!41692 r!14126))))))

(declare-fun b!7747272 () Bool)

(declare-fun res!3088965 () Bool)

(assert (=> b!7747272 (=> (not res!3088965) (not e!4593038))))

(declare-fun tail!15362 (List!73437) List!73437)

(assert (=> b!7747272 (= res!3088965 (isEmpty!42005 (tail!15362 (_1!38120 lt!2668798))))))

(declare-fun b!7747273 () Bool)

(declare-fun res!3088964 () Bool)

(assert (=> b!7747273 (=> (not res!3088964) (not e!4593038))))

(declare-fun call!718017 () Bool)

(assert (=> b!7747273 (= res!3088964 (not call!718017))))

(declare-fun b!7747274 () Bool)

(declare-fun e!4593040 () Bool)

(assert (=> b!7747274 (= e!4593040 (not (= (head!15822 (_1!38120 lt!2668798)) (c!1428920 (regOne!41692 r!14126)))))))

(declare-fun b!7747275 () Bool)

(declare-fun res!3088966 () Bool)

(assert (=> b!7747275 (=> res!3088966 e!4593040)))

(assert (=> b!7747275 (= res!3088966 (not (isEmpty!42005 (tail!15362 (_1!38120 lt!2668798)))))))

(declare-fun b!7747276 () Bool)

(declare-fun res!3088970 () Bool)

(declare-fun e!4593039 () Bool)

(assert (=> b!7747276 (=> res!3088970 e!4593039)))

(assert (=> b!7747276 (= res!3088970 (not (is-ElementMatch!20590 (regOne!41692 r!14126))))))

(declare-fun e!4593041 () Bool)

(assert (=> b!7747276 (= e!4593041 e!4593039)))

(declare-fun b!7747277 () Bool)

(declare-fun e!4593035 () Bool)

(assert (=> b!7747277 (= e!4593035 e!4593040)))

(declare-fun res!3088968 () Bool)

(assert (=> b!7747277 (=> res!3088968 e!4593040)))

(assert (=> b!7747277 (= res!3088968 call!718017)))

(declare-fun bm!718012 () Bool)

(assert (=> bm!718012 (= call!718017 (isEmpty!42005 (_1!38120 lt!2668798)))))

(declare-fun b!7747278 () Bool)

(assert (=> b!7747278 (= e!4593039 e!4593035)))

(declare-fun res!3088971 () Bool)

(assert (=> b!7747278 (=> (not res!3088971) (not e!4593035))))

(declare-fun lt!2668836 () Bool)

(assert (=> b!7747278 (= res!3088971 (not lt!2668836))))

(declare-fun b!7747279 () Bool)

(declare-fun res!3088967 () Bool)

(assert (=> b!7747279 (=> res!3088967 e!4593039)))

(assert (=> b!7747279 (= res!3088967 e!4593038)))

(declare-fun res!3088969 () Bool)

(assert (=> b!7747279 (=> (not res!3088969) (not e!4593038))))

(assert (=> b!7747279 (= res!3088969 lt!2668836)))

(declare-fun b!7747281 () Bool)

(assert (=> b!7747281 (= e!4593041 (not lt!2668836))))

(declare-fun b!7747282 () Bool)

(declare-fun e!4593036 () Bool)

(declare-fun derivativeStep!6022 (Regex!20590 C!41506) Regex!20590)

(assert (=> b!7747282 (= e!4593036 (matchR!10082 (derivativeStep!6022 (regOne!41692 r!14126) (head!15822 (_1!38120 lt!2668798))) (tail!15362 (_1!38120 lt!2668798))))))

(declare-fun b!7747283 () Bool)

(declare-fun e!4593037 () Bool)

(assert (=> b!7747283 (= e!4593037 (= lt!2668836 call!718017))))

(declare-fun b!7747284 () Bool)

(declare-fun nullable!9063 (Regex!20590) Bool)

(assert (=> b!7747284 (= e!4593036 (nullable!9063 (regOne!41692 r!14126)))))

(declare-fun b!7747280 () Bool)

(assert (=> b!7747280 (= e!4593037 e!4593041)))

(declare-fun c!1428954 () Bool)

(assert (=> b!7747280 (= c!1428954 (is-EmptyLang!20590 (regOne!41692 r!14126)))))

(declare-fun d!2342303 () Bool)

(assert (=> d!2342303 e!4593037))

(declare-fun c!1428956 () Bool)

(assert (=> d!2342303 (= c!1428956 (is-EmptyExpr!20590 (regOne!41692 r!14126)))))

(assert (=> d!2342303 (= lt!2668836 e!4593036)))

(declare-fun c!1428955 () Bool)

(assert (=> d!2342303 (= c!1428955 (isEmpty!42005 (_1!38120 lt!2668798)))))

(assert (=> d!2342303 (validRegex!11008 (regOne!41692 r!14126))))

(assert (=> d!2342303 (= (matchR!10082 (regOne!41692 r!14126) (_1!38120 lt!2668798)) lt!2668836)))

(assert (= (and d!2342303 c!1428955) b!7747284))

(assert (= (and d!2342303 (not c!1428955)) b!7747282))

(assert (= (and d!2342303 c!1428956) b!7747283))

(assert (= (and d!2342303 (not c!1428956)) b!7747280))

(assert (= (and b!7747280 c!1428954) b!7747281))

(assert (= (and b!7747280 (not c!1428954)) b!7747276))

(assert (= (and b!7747276 (not res!3088970)) b!7747279))

(assert (= (and b!7747279 res!3088969) b!7747273))

(assert (= (and b!7747273 res!3088964) b!7747272))

(assert (= (and b!7747272 res!3088965) b!7747271))

(assert (= (and b!7747279 (not res!3088967)) b!7747278))

(assert (= (and b!7747278 res!3088971) b!7747277))

(assert (= (and b!7747277 (not res!3088968)) b!7747275))

(assert (= (and b!7747275 (not res!3088966)) b!7747274))

(assert (= (or b!7747283 b!7747273 b!7747277) bm!718012))

(declare-fun m!8214728 () Bool)

(assert (=> b!7747284 m!8214728))

(declare-fun m!8214732 () Bool)

(assert (=> b!7747275 m!8214732))

(assert (=> b!7747275 m!8214732))

(declare-fun m!8214734 () Bool)

(assert (=> b!7747275 m!8214734))

(declare-fun m!8214736 () Bool)

(assert (=> b!7747274 m!8214736))

(assert (=> b!7747282 m!8214736))

(assert (=> b!7747282 m!8214736))

(declare-fun m!8214738 () Bool)

(assert (=> b!7747282 m!8214738))

(assert (=> b!7747282 m!8214732))

(assert (=> b!7747282 m!8214738))

(assert (=> b!7747282 m!8214732))

(declare-fun m!8214740 () Bool)

(assert (=> b!7747282 m!8214740))

(assert (=> b!7747272 m!8214732))

(assert (=> b!7747272 m!8214732))

(assert (=> b!7747272 m!8214734))

(assert (=> bm!718012 m!8214704))

(assert (=> b!7747271 m!8214736))

(assert (=> d!2342303 m!8214704))

(assert (=> d!2342303 m!8214630))

(assert (=> b!7747061 d!2342303))

(declare-fun bs!1965587 () Bool)

(declare-fun b!7747291 () Bool)

(assert (= bs!1965587 (and b!7747291 b!7747072)))

(declare-fun lambda!471780 () Int)

(assert (=> bs!1965587 (not (= lambda!471780 lambda!471762))))

(declare-fun bs!1965588 () Bool)

(assert (= bs!1965588 (and b!7747291 b!7747071)))

(assert (=> bs!1965588 (not (= lambda!471780 lambda!471763))))

(declare-fun bs!1965589 () Bool)

(assert (= bs!1965589 (and b!7747291 b!7747204)))

(assert (=> bs!1965589 (= (and (= (_2!38120 lt!2668798) (_1!38120 lt!2668798)) (= (reg!20919 (regTwo!41692 r!14126)) (reg!20919 (regOne!41692 r!14126))) (= (regTwo!41692 r!14126) (regOne!41692 r!14126))) (= lambda!471780 lambda!471778))))

(declare-fun bs!1965590 () Bool)

(assert (= bs!1965590 (and b!7747291 b!7747210)))

(assert (=> bs!1965590 (not (= lambda!471780 lambda!471779))))

(assert (=> b!7747291 true))

(assert (=> b!7747291 true))

(declare-fun bs!1965591 () Bool)

(declare-fun b!7747297 () Bool)

(assert (= bs!1965591 (and b!7747297 b!7747291)))

(declare-fun lambda!471781 () Int)

(assert (=> bs!1965591 (not (= lambda!471781 lambda!471780))))

(declare-fun bs!1965592 () Bool)

(assert (= bs!1965592 (and b!7747297 b!7747204)))

(assert (=> bs!1965592 (not (= lambda!471781 lambda!471778))))

(declare-fun bs!1965593 () Bool)

(assert (= bs!1965593 (and b!7747297 b!7747072)))

(assert (=> bs!1965593 (not (= lambda!471781 lambda!471762))))

(declare-fun bs!1965594 () Bool)

(assert (= bs!1965594 (and b!7747297 b!7747071)))

(assert (=> bs!1965594 (= (and (= (_2!38120 lt!2668798) s!9605) (= (regOne!41692 (regTwo!41692 r!14126)) (regOne!41692 r!14126)) (= (regTwo!41692 (regTwo!41692 r!14126)) (regTwo!41692 r!14126))) (= lambda!471781 lambda!471763))))

(declare-fun bs!1965595 () Bool)

(assert (= bs!1965595 (and b!7747297 b!7747210)))

(assert (=> bs!1965595 (= (and (= (_2!38120 lt!2668798) (_1!38120 lt!2668798)) (= (regOne!41692 (regTwo!41692 r!14126)) (regOne!41692 (regOne!41692 r!14126))) (= (regTwo!41692 (regTwo!41692 r!14126)) (regTwo!41692 (regOne!41692 r!14126)))) (= lambda!471781 lambda!471779))))

(assert (=> b!7747297 true))

(assert (=> b!7747297 true))

(declare-fun b!7747289 () Bool)

(declare-fun c!1428959 () Bool)

(assert (=> b!7747289 (= c!1428959 (is-Union!20590 (regTwo!41692 r!14126)))))

(declare-fun e!4593047 () Bool)

(declare-fun e!4593049 () Bool)

(assert (=> b!7747289 (= e!4593047 e!4593049)))

(declare-fun d!2342309 () Bool)

(declare-fun c!1428958 () Bool)

(assert (=> d!2342309 (= c!1428958 (is-EmptyExpr!20590 (regTwo!41692 r!14126)))))

(declare-fun e!4593050 () Bool)

(assert (=> d!2342309 (= (matchRSpec!4655 (regTwo!41692 r!14126) (_2!38120 lt!2668798)) e!4593050)))

(declare-fun b!7747290 () Bool)

(assert (=> b!7747290 (= e!4593047 (= (_2!38120 lt!2668798) (Cons!73313 (c!1428920 (regTwo!41692 r!14126)) Nil!73313)))))

(declare-fun c!1428960 () Bool)

(declare-fun bm!718013 () Bool)

(declare-fun call!718018 () Bool)

(assert (=> bm!718013 (= call!718018 (Exists!4711 (ite c!1428960 lambda!471780 lambda!471781)))))

(declare-fun e!4593048 () Bool)

(assert (=> b!7747291 (= e!4593048 call!718018)))

(declare-fun bm!718014 () Bool)

(declare-fun call!718019 () Bool)

(assert (=> bm!718014 (= call!718019 (isEmpty!42005 (_2!38120 lt!2668798)))))

(declare-fun b!7747292 () Bool)

(declare-fun res!3088975 () Bool)

(assert (=> b!7747292 (=> res!3088975 e!4593048)))

(assert (=> b!7747292 (= res!3088975 call!718019)))

(declare-fun e!4593045 () Bool)

(assert (=> b!7747292 (= e!4593045 e!4593048)))

(declare-fun b!7747293 () Bool)

(declare-fun e!4593046 () Bool)

(assert (=> b!7747293 (= e!4593049 e!4593046)))

(declare-fun res!3088976 () Bool)

(assert (=> b!7747293 (= res!3088976 (matchRSpec!4655 (regOne!41693 (regTwo!41692 r!14126)) (_2!38120 lt!2668798)))))

(assert (=> b!7747293 (=> res!3088976 e!4593046)))

(declare-fun b!7747294 () Bool)

(assert (=> b!7747294 (= e!4593046 (matchRSpec!4655 (regTwo!41693 (regTwo!41692 r!14126)) (_2!38120 lt!2668798)))))

(declare-fun b!7747295 () Bool)

(assert (=> b!7747295 (= e!4593050 call!718019)))

(declare-fun b!7747296 () Bool)

(declare-fun e!4593044 () Bool)

(assert (=> b!7747296 (= e!4593050 e!4593044)))

(declare-fun res!3088974 () Bool)

(assert (=> b!7747296 (= res!3088974 (not (is-EmptyLang!20590 (regTwo!41692 r!14126))))))

(assert (=> b!7747296 (=> (not res!3088974) (not e!4593044))))

(assert (=> b!7747297 (= e!4593045 call!718018)))

(declare-fun b!7747298 () Bool)

(assert (=> b!7747298 (= e!4593049 e!4593045)))

(assert (=> b!7747298 (= c!1428960 (is-Star!20590 (regTwo!41692 r!14126)))))

(declare-fun b!7747299 () Bool)

(declare-fun c!1428961 () Bool)

(assert (=> b!7747299 (= c!1428961 (is-ElementMatch!20590 (regTwo!41692 r!14126)))))

(assert (=> b!7747299 (= e!4593044 e!4593047)))

(assert (= (and d!2342309 c!1428958) b!7747295))

(assert (= (and d!2342309 (not c!1428958)) b!7747296))

(assert (= (and b!7747296 res!3088974) b!7747299))

(assert (= (and b!7747299 c!1428961) b!7747290))

(assert (= (and b!7747299 (not c!1428961)) b!7747289))

(assert (= (and b!7747289 c!1428959) b!7747293))

(assert (= (and b!7747289 (not c!1428959)) b!7747298))

(assert (= (and b!7747293 (not res!3088976)) b!7747294))

(assert (= (and b!7747298 c!1428960) b!7747292))

(assert (= (and b!7747298 (not c!1428960)) b!7747297))

(assert (= (and b!7747292 (not res!3088975)) b!7747291))

(assert (= (or b!7747291 b!7747297) bm!718013))

(assert (= (or b!7747295 b!7747292) bm!718014))

(declare-fun m!8214756 () Bool)

(assert (=> bm!718013 m!8214756))

(declare-fun m!8214758 () Bool)

(assert (=> bm!718014 m!8214758))

(declare-fun m!8214760 () Bool)

(assert (=> b!7747293 m!8214760))

(declare-fun m!8214762 () Bool)

(assert (=> b!7747294 m!8214762))

(assert (=> b!7747061 d!2342309))

(declare-fun b!7747300 () Bool)

(declare-fun e!4593054 () Bool)

(assert (=> b!7747300 (= e!4593054 (= (head!15822 (_2!38120 lt!2668798)) (c!1428920 (regTwo!41692 r!14126))))))

(declare-fun b!7747301 () Bool)

(declare-fun res!3088978 () Bool)

(assert (=> b!7747301 (=> (not res!3088978) (not e!4593054))))

(assert (=> b!7747301 (= res!3088978 (isEmpty!42005 (tail!15362 (_2!38120 lt!2668798))))))

(declare-fun b!7747302 () Bool)

(declare-fun res!3088977 () Bool)

(assert (=> b!7747302 (=> (not res!3088977) (not e!4593054))))

(declare-fun call!718020 () Bool)

(assert (=> b!7747302 (= res!3088977 (not call!718020))))

(declare-fun b!7747303 () Bool)

(declare-fun e!4593056 () Bool)

(assert (=> b!7747303 (= e!4593056 (not (= (head!15822 (_2!38120 lt!2668798)) (c!1428920 (regTwo!41692 r!14126)))))))

(declare-fun b!7747304 () Bool)

(declare-fun res!3088979 () Bool)

(assert (=> b!7747304 (=> res!3088979 e!4593056)))

(assert (=> b!7747304 (= res!3088979 (not (isEmpty!42005 (tail!15362 (_2!38120 lt!2668798)))))))

(declare-fun b!7747305 () Bool)

(declare-fun res!3088983 () Bool)

(declare-fun e!4593055 () Bool)

(assert (=> b!7747305 (=> res!3088983 e!4593055)))

(assert (=> b!7747305 (= res!3088983 (not (is-ElementMatch!20590 (regTwo!41692 r!14126))))))

(declare-fun e!4593057 () Bool)

(assert (=> b!7747305 (= e!4593057 e!4593055)))

(declare-fun b!7747306 () Bool)

(declare-fun e!4593051 () Bool)

(assert (=> b!7747306 (= e!4593051 e!4593056)))

(declare-fun res!3088981 () Bool)

(assert (=> b!7747306 (=> res!3088981 e!4593056)))

(assert (=> b!7747306 (= res!3088981 call!718020)))

(declare-fun bm!718015 () Bool)

(assert (=> bm!718015 (= call!718020 (isEmpty!42005 (_2!38120 lt!2668798)))))

(declare-fun b!7747307 () Bool)

(assert (=> b!7747307 (= e!4593055 e!4593051)))

(declare-fun res!3088984 () Bool)

(assert (=> b!7747307 (=> (not res!3088984) (not e!4593051))))

(declare-fun lt!2668838 () Bool)

(assert (=> b!7747307 (= res!3088984 (not lt!2668838))))

(declare-fun b!7747308 () Bool)

(declare-fun res!3088980 () Bool)

(assert (=> b!7747308 (=> res!3088980 e!4593055)))

(assert (=> b!7747308 (= res!3088980 e!4593054)))

(declare-fun res!3088982 () Bool)

(assert (=> b!7747308 (=> (not res!3088982) (not e!4593054))))

(assert (=> b!7747308 (= res!3088982 lt!2668838)))

(declare-fun b!7747310 () Bool)

(assert (=> b!7747310 (= e!4593057 (not lt!2668838))))

(declare-fun b!7747311 () Bool)

(declare-fun e!4593052 () Bool)

(assert (=> b!7747311 (= e!4593052 (matchR!10082 (derivativeStep!6022 (regTwo!41692 r!14126) (head!15822 (_2!38120 lt!2668798))) (tail!15362 (_2!38120 lt!2668798))))))

(declare-fun b!7747312 () Bool)

(declare-fun e!4593053 () Bool)

(assert (=> b!7747312 (= e!4593053 (= lt!2668838 call!718020))))

(declare-fun b!7747313 () Bool)

(assert (=> b!7747313 (= e!4593052 (nullable!9063 (regTwo!41692 r!14126)))))

(declare-fun b!7747309 () Bool)

(assert (=> b!7747309 (= e!4593053 e!4593057)))

(declare-fun c!1428962 () Bool)

(assert (=> b!7747309 (= c!1428962 (is-EmptyLang!20590 (regTwo!41692 r!14126)))))

(declare-fun d!2342313 () Bool)

(assert (=> d!2342313 e!4593053))

(declare-fun c!1428964 () Bool)

(assert (=> d!2342313 (= c!1428964 (is-EmptyExpr!20590 (regTwo!41692 r!14126)))))

(assert (=> d!2342313 (= lt!2668838 e!4593052)))

(declare-fun c!1428963 () Bool)

(assert (=> d!2342313 (= c!1428963 (isEmpty!42005 (_2!38120 lt!2668798)))))

(assert (=> d!2342313 (validRegex!11008 (regTwo!41692 r!14126))))

(assert (=> d!2342313 (= (matchR!10082 (regTwo!41692 r!14126) (_2!38120 lt!2668798)) lt!2668838)))

(assert (= (and d!2342313 c!1428963) b!7747313))

(assert (= (and d!2342313 (not c!1428963)) b!7747311))

(assert (= (and d!2342313 c!1428964) b!7747312))

(assert (= (and d!2342313 (not c!1428964)) b!7747309))

(assert (= (and b!7747309 c!1428962) b!7747310))

(assert (= (and b!7747309 (not c!1428962)) b!7747305))

(assert (= (and b!7747305 (not res!3088983)) b!7747308))

(assert (= (and b!7747308 res!3088982) b!7747302))

(assert (= (and b!7747302 res!3088977) b!7747301))

(assert (= (and b!7747301 res!3088978) b!7747300))

(assert (= (and b!7747308 (not res!3088980)) b!7747307))

(assert (= (and b!7747307 res!3088984) b!7747306))

(assert (= (and b!7747306 (not res!3088981)) b!7747304))

(assert (= (and b!7747304 (not res!3088979)) b!7747303))

(assert (= (or b!7747312 b!7747302 b!7747306) bm!718015))

(declare-fun m!8214764 () Bool)

(assert (=> b!7747313 m!8214764))

(declare-fun m!8214766 () Bool)

(assert (=> b!7747304 m!8214766))

(assert (=> b!7747304 m!8214766))

(declare-fun m!8214768 () Bool)

(assert (=> b!7747304 m!8214768))

(declare-fun m!8214770 () Bool)

(assert (=> b!7747303 m!8214770))

(assert (=> b!7747311 m!8214770))

(assert (=> b!7747311 m!8214770))

(declare-fun m!8214772 () Bool)

(assert (=> b!7747311 m!8214772))

(assert (=> b!7747311 m!8214766))

(assert (=> b!7747311 m!8214772))

(assert (=> b!7747311 m!8214766))

(declare-fun m!8214774 () Bool)

(assert (=> b!7747311 m!8214774))

(assert (=> b!7747301 m!8214766))

(assert (=> b!7747301 m!8214766))

(assert (=> b!7747301 m!8214768))

(assert (=> bm!718015 m!8214758))

(assert (=> b!7747300 m!8214770))

(assert (=> d!2342313 m!8214758))

(assert (=> d!2342313 m!8214638))

(assert (=> b!7747061 d!2342313))

(declare-fun d!2342315 () Bool)

(declare-fun lt!2668841 () tuple2!69634)

(declare-fun dynLambda!29982 (Int tuple2!69634) Bool)

(assert (=> d!2342315 (dynLambda!29982 lambda!471763 lt!2668841)))

(declare-fun choose!59396 (Int) tuple2!69634)

(assert (=> d!2342315 (= lt!2668841 (choose!59396 lambda!471763))))

(assert (=> d!2342315 (Exists!4711 lambda!471763)))

(assert (=> d!2342315 (= (pickWitness!547 lambda!471763) lt!2668841)))

(declare-fun b_lambda!289411 () Bool)

(assert (=> (not b_lambda!289411) (not d!2342315)))

(declare-fun bs!1965596 () Bool)

(assert (= bs!1965596 d!2342315))

(declare-fun m!8214776 () Bool)

(assert (=> bs!1965596 m!8214776))

(declare-fun m!8214778 () Bool)

(assert (=> bs!1965596 m!8214778))

(assert (=> bs!1965596 m!8214602))

(assert (=> b!7747061 d!2342315))

(declare-fun b!7747344 () Bool)

(declare-fun e!4593086 () Bool)

(declare-fun e!4593084 () Bool)

(assert (=> b!7747344 (= e!4593086 e!4593084)))

(declare-fun c!1428970 () Bool)

(assert (=> b!7747344 (= c!1428970 (is-Union!20590 (regOne!41692 r!14126)))))

(declare-fun b!7747345 () Bool)

(declare-fun res!3089009 () Bool)

(declare-fun e!4593083 () Bool)

(assert (=> b!7747345 (=> (not res!3089009) (not e!4593083))))

(declare-fun call!718029 () Bool)

(assert (=> b!7747345 (= res!3089009 call!718029)))

(assert (=> b!7747345 (= e!4593084 e!4593083)))

(declare-fun b!7747346 () Bool)

(declare-fun res!3089010 () Bool)

(declare-fun e!4593082 () Bool)

(assert (=> b!7747346 (=> res!3089010 e!4593082)))

(assert (=> b!7747346 (= res!3089010 (not (is-Concat!29435 (regOne!41692 r!14126))))))

(assert (=> b!7747346 (= e!4593084 e!4593082)))

(declare-fun b!7747347 () Bool)

(declare-fun e!4593087 () Bool)

(assert (=> b!7747347 (= e!4593082 e!4593087)))

(declare-fun res!3089011 () Bool)

(assert (=> b!7747347 (=> (not res!3089011) (not e!4593087))))

(assert (=> b!7747347 (= res!3089011 call!718029)))

(declare-fun b!7747348 () Bool)

(declare-fun e!4593081 () Bool)

(assert (=> b!7747348 (= e!4593086 e!4593081)))

(declare-fun res!3089007 () Bool)

(assert (=> b!7747348 (= res!3089007 (not (nullable!9063 (reg!20919 (regOne!41692 r!14126)))))))

(assert (=> b!7747348 (=> (not res!3089007) (not e!4593081))))

(declare-fun d!2342317 () Bool)

(declare-fun res!3089008 () Bool)

(declare-fun e!4593085 () Bool)

(assert (=> d!2342317 (=> res!3089008 e!4593085)))

(assert (=> d!2342317 (= res!3089008 (is-ElementMatch!20590 (regOne!41692 r!14126)))))

(assert (=> d!2342317 (= (validRegex!11008 (regOne!41692 r!14126)) e!4593085)))

(declare-fun b!7747349 () Bool)

(declare-fun call!718027 () Bool)

(assert (=> b!7747349 (= e!4593081 call!718027)))

(declare-fun c!1428969 () Bool)

(declare-fun bm!718022 () Bool)

(assert (=> bm!718022 (= call!718027 (validRegex!11008 (ite c!1428969 (reg!20919 (regOne!41692 r!14126)) (ite c!1428970 (regOne!41693 (regOne!41692 r!14126)) (regOne!41692 (regOne!41692 r!14126))))))))

(declare-fun bm!718023 () Bool)

(assert (=> bm!718023 (= call!718029 call!718027)))

(declare-fun bm!718024 () Bool)

(declare-fun call!718028 () Bool)

(assert (=> bm!718024 (= call!718028 (validRegex!11008 (ite c!1428970 (regTwo!41693 (regOne!41692 r!14126)) (regTwo!41692 (regOne!41692 r!14126)))))))

(declare-fun b!7747350 () Bool)

(assert (=> b!7747350 (= e!4593087 call!718028)))

(declare-fun b!7747351 () Bool)

(assert (=> b!7747351 (= e!4593085 e!4593086)))

(assert (=> b!7747351 (= c!1428969 (is-Star!20590 (regOne!41692 r!14126)))))

(declare-fun b!7747352 () Bool)

(assert (=> b!7747352 (= e!4593083 call!718028)))

(assert (= (and d!2342317 (not res!3089008)) b!7747351))

(assert (= (and b!7747351 c!1428969) b!7747348))

(assert (= (and b!7747351 (not c!1428969)) b!7747344))

(assert (= (and b!7747348 res!3089007) b!7747349))

(assert (= (and b!7747344 c!1428970) b!7747345))

(assert (= (and b!7747344 (not c!1428970)) b!7747346))

(assert (= (and b!7747345 res!3089009) b!7747352))

(assert (= (and b!7747346 (not res!3089010)) b!7747347))

(assert (= (and b!7747347 res!3089011) b!7747350))

(assert (= (or b!7747345 b!7747347) bm!718023))

(assert (= (or b!7747352 b!7747350) bm!718024))

(assert (= (or b!7747349 bm!718023) bm!718022))

(declare-fun m!8214792 () Bool)

(assert (=> b!7747348 m!8214792))

(declare-fun m!8214794 () Bool)

(assert (=> bm!718022 m!8214794))

(declare-fun m!8214796 () Bool)

(assert (=> bm!718024 m!8214796))

(assert (=> b!7747061 d!2342317))

(declare-fun d!2342323 () Bool)

(assert (=> d!2342323 (= (matchR!10082 (regTwo!41692 r!14126) (_2!38120 lt!2668798)) (matchRSpec!4655 (regTwo!41692 r!14126) (_2!38120 lt!2668798)))))

(declare-fun lt!2668847 () Unit!168284)

(declare-fun choose!59397 (Regex!20590 List!73437) Unit!168284)

(assert (=> d!2342323 (= lt!2668847 (choose!59397 (regTwo!41692 r!14126) (_2!38120 lt!2668798)))))

(assert (=> d!2342323 (validRegex!11008 (regTwo!41692 r!14126))))

(assert (=> d!2342323 (= (mainMatchTheorem!4625 (regTwo!41692 r!14126) (_2!38120 lt!2668798)) lt!2668847)))

(declare-fun bs!1965598 () Bool)

(assert (= bs!1965598 d!2342323))

(assert (=> bs!1965598 m!8214622))

(assert (=> bs!1965598 m!8214618))

(declare-fun m!8214798 () Bool)

(assert (=> bs!1965598 m!8214798))

(assert (=> bs!1965598 m!8214638))

(assert (=> b!7747061 d!2342323))

(declare-fun d!2342325 () Bool)

(assert (=> d!2342325 (= (matchR!10082 (regOne!41692 r!14126) (_1!38120 lt!2668798)) (matchRSpec!4655 (regOne!41692 r!14126) (_1!38120 lt!2668798)))))

(declare-fun lt!2668848 () Unit!168284)

(assert (=> d!2342325 (= lt!2668848 (choose!59397 (regOne!41692 r!14126) (_1!38120 lt!2668798)))))

(assert (=> d!2342325 (validRegex!11008 (regOne!41692 r!14126))))

(assert (=> d!2342325 (= (mainMatchTheorem!4625 (regOne!41692 r!14126) (_1!38120 lt!2668798)) lt!2668848)))

(declare-fun bs!1965599 () Bool)

(assert (= bs!1965599 d!2342325))

(assert (=> bs!1965599 m!8214628))

(assert (=> bs!1965599 m!8214624))

(declare-fun m!8214800 () Bool)

(assert (=> bs!1965599 m!8214800))

(assert (=> bs!1965599 m!8214630))

(assert (=> b!7747061 d!2342325))

(declare-fun d!2342327 () Bool)

(declare-fun isEmpty!42006 (Option!17611) Bool)

(assert (=> d!2342327 (= (isDefined!14227 lt!2668803) (not (isEmpty!42006 lt!2668803)))))

(declare-fun bs!1965600 () Bool)

(assert (= bs!1965600 d!2342327))

(declare-fun m!8214802 () Bool)

(assert (=> bs!1965600 m!8214802))

(assert (=> b!7747072 d!2342327))

(declare-fun bs!1965601 () Bool)

(declare-fun d!2342329 () Bool)

(assert (= bs!1965601 (and d!2342329 b!7747291)))

(declare-fun lambda!471784 () Int)

(assert (=> bs!1965601 (not (= lambda!471784 lambda!471780))))

(declare-fun bs!1965602 () Bool)

(assert (= bs!1965602 (and d!2342329 b!7747204)))

(assert (=> bs!1965602 (not (= lambda!471784 lambda!471778))))

(declare-fun bs!1965603 () Bool)

(assert (= bs!1965603 (and d!2342329 b!7747072)))

(assert (=> bs!1965603 (= lambda!471784 lambda!471762)))

(declare-fun bs!1965604 () Bool)

(assert (= bs!1965604 (and d!2342329 b!7747297)))

(assert (=> bs!1965604 (not (= lambda!471784 lambda!471781))))

(declare-fun bs!1965605 () Bool)

(assert (= bs!1965605 (and d!2342329 b!7747071)))

(assert (=> bs!1965605 (not (= lambda!471784 lambda!471763))))

(declare-fun bs!1965606 () Bool)

(assert (= bs!1965606 (and d!2342329 b!7747210)))

(assert (=> bs!1965606 (not (= lambda!471784 lambda!471779))))

(assert (=> d!2342329 true))

(assert (=> d!2342329 true))

(assert (=> d!2342329 true))

(assert (=> d!2342329 (= (isDefined!14227 (findConcatSeparation!3641 (regOne!41692 r!14126) (regTwo!41692 r!14126) Nil!73313 s!9605 s!9605)) (Exists!4711 lambda!471784))))

(declare-fun lt!2668853 () Unit!168284)

(declare-fun choose!59398 (Regex!20590 Regex!20590 List!73437) Unit!168284)

(assert (=> d!2342329 (= lt!2668853 (choose!59398 (regOne!41692 r!14126) (regTwo!41692 r!14126) s!9605))))

(assert (=> d!2342329 (validRegex!11008 (regOne!41692 r!14126))))

(assert (=> d!2342329 (= (lemmaFindConcatSeparationEquivalentToExists!3399 (regOne!41692 r!14126) (regTwo!41692 r!14126) s!9605) lt!2668853)))

(declare-fun bs!1965607 () Bool)

(assert (= bs!1965607 d!2342329))

(assert (=> bs!1965607 m!8214630))

(assert (=> bs!1965607 m!8214642))

(declare-fun m!8214804 () Bool)

(assert (=> bs!1965607 m!8214804))

(declare-fun m!8214806 () Bool)

(assert (=> bs!1965607 m!8214806))

(declare-fun m!8214808 () Bool)

(assert (=> bs!1965607 m!8214808))

(assert (=> bs!1965607 m!8214642))

(assert (=> b!7747072 d!2342329))

(declare-fun b!7747417 () Bool)

(declare-fun e!4593122 () Option!17611)

(assert (=> b!7747417 (= e!4593122 (Some!17610 (tuple2!69635 Nil!73313 s!9605)))))

(declare-fun b!7747418 () Bool)

(declare-fun e!4593121 () Bool)

(declare-fun lt!2668861 () Option!17611)

(assert (=> b!7747418 (= e!4593121 (= (++!17789 (_1!38120 (get!26076 lt!2668861)) (_2!38120 (get!26076 lt!2668861))) s!9605))))

(declare-fun b!7747419 () Bool)

(declare-fun res!3089051 () Bool)

(assert (=> b!7747419 (=> (not res!3089051) (not e!4593121))))

(assert (=> b!7747419 (= res!3089051 (matchR!10082 (regTwo!41692 r!14126) (_2!38120 (get!26076 lt!2668861))))))

(declare-fun b!7747420 () Bool)

(declare-fun e!4593124 () Option!17611)

(assert (=> b!7747420 (= e!4593122 e!4593124)))

(declare-fun c!1428985 () Bool)

(assert (=> b!7747420 (= c!1428985 (is-Nil!73313 s!9605))))

(declare-fun b!7747422 () Bool)

(declare-fun e!4593125 () Bool)

(assert (=> b!7747422 (= e!4593125 (not (isDefined!14227 lt!2668861)))))

(declare-fun b!7747423 () Bool)

(assert (=> b!7747423 (= e!4593124 None!17610)))

(declare-fun b!7747424 () Bool)

(declare-fun e!4593123 () Bool)

(assert (=> b!7747424 (= e!4593123 (matchR!10082 (regTwo!41692 r!14126) s!9605))))

(declare-fun b!7747425 () Bool)

(declare-fun lt!2668862 () Unit!168284)

(declare-fun lt!2668863 () Unit!168284)

(assert (=> b!7747425 (= lt!2668862 lt!2668863)))

(assert (=> b!7747425 (= (++!17789 (++!17789 Nil!73313 (Cons!73313 (h!79761 s!9605) Nil!73313)) (t!388172 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3335 (List!73437 C!41506 List!73437 List!73437) Unit!168284)

(assert (=> b!7747425 (= lt!2668863 (lemmaMoveElementToOtherListKeepsConcatEq!3335 Nil!73313 (h!79761 s!9605) (t!388172 s!9605) s!9605))))

(assert (=> b!7747425 (= e!4593124 (findConcatSeparation!3641 (regOne!41692 r!14126) (regTwo!41692 r!14126) (++!17789 Nil!73313 (Cons!73313 (h!79761 s!9605) Nil!73313)) (t!388172 s!9605) s!9605))))

(declare-fun b!7747421 () Bool)

(declare-fun res!3089052 () Bool)

(assert (=> b!7747421 (=> (not res!3089052) (not e!4593121))))

(assert (=> b!7747421 (= res!3089052 (matchR!10082 (regOne!41692 r!14126) (_1!38120 (get!26076 lt!2668861))))))

(declare-fun d!2342331 () Bool)

(assert (=> d!2342331 e!4593125))

(declare-fun res!3089054 () Bool)

(assert (=> d!2342331 (=> res!3089054 e!4593125)))

(assert (=> d!2342331 (= res!3089054 e!4593121)))

(declare-fun res!3089053 () Bool)

(assert (=> d!2342331 (=> (not res!3089053) (not e!4593121))))

(assert (=> d!2342331 (= res!3089053 (isDefined!14227 lt!2668861))))

(assert (=> d!2342331 (= lt!2668861 e!4593122)))

(declare-fun c!1428984 () Bool)

(assert (=> d!2342331 (= c!1428984 e!4593123)))

(declare-fun res!3089050 () Bool)

(assert (=> d!2342331 (=> (not res!3089050) (not e!4593123))))

(assert (=> d!2342331 (= res!3089050 (matchR!10082 (regOne!41692 r!14126) Nil!73313))))

(assert (=> d!2342331 (validRegex!11008 (regOne!41692 r!14126))))

(assert (=> d!2342331 (= (findConcatSeparation!3641 (regOne!41692 r!14126) (regTwo!41692 r!14126) Nil!73313 s!9605 s!9605) lt!2668861)))

(assert (= (and d!2342331 res!3089050) b!7747424))

(assert (= (and d!2342331 c!1428984) b!7747417))

(assert (= (and d!2342331 (not c!1428984)) b!7747420))

(assert (= (and b!7747420 c!1428985) b!7747423))

(assert (= (and b!7747420 (not c!1428985)) b!7747425))

(assert (= (and d!2342331 res!3089053) b!7747421))

(assert (= (and b!7747421 res!3089052) b!7747419))

(assert (= (and b!7747419 res!3089051) b!7747418))

(assert (= (and d!2342331 (not res!3089054)) b!7747422))

(declare-fun m!8214824 () Bool)

(assert (=> b!7747425 m!8214824))

(assert (=> b!7747425 m!8214824))

(declare-fun m!8214826 () Bool)

(assert (=> b!7747425 m!8214826))

(declare-fun m!8214828 () Bool)

(assert (=> b!7747425 m!8214828))

(assert (=> b!7747425 m!8214824))

(declare-fun m!8214830 () Bool)

(assert (=> b!7747425 m!8214830))

(declare-fun m!8214832 () Bool)

(assert (=> b!7747419 m!8214832))

(declare-fun m!8214834 () Bool)

(assert (=> b!7747419 m!8214834))

(assert (=> b!7747421 m!8214832))

(declare-fun m!8214836 () Bool)

(assert (=> b!7747421 m!8214836))

(assert (=> b!7747418 m!8214832))

(declare-fun m!8214838 () Bool)

(assert (=> b!7747418 m!8214838))

(declare-fun m!8214840 () Bool)

(assert (=> d!2342331 m!8214840))

(declare-fun m!8214842 () Bool)

(assert (=> d!2342331 m!8214842))

(assert (=> d!2342331 m!8214630))

(declare-fun m!8214844 () Bool)

(assert (=> b!7747424 m!8214844))

(assert (=> b!7747422 m!8214840))

(assert (=> b!7747072 d!2342331))

(declare-fun d!2342335 () Bool)

(declare-fun choose!59400 (Int) Bool)

(assert (=> d!2342335 (= (Exists!4711 lambda!471762) (choose!59400 lambda!471762))))

(declare-fun bs!1965608 () Bool)

(assert (= bs!1965608 d!2342335))

(declare-fun m!8214846 () Bool)

(assert (=> bs!1965608 m!8214846))

(assert (=> b!7747072 d!2342335))

(declare-fun b!7747426 () Bool)

(declare-fun e!4593129 () Bool)

(assert (=> b!7747426 (= e!4593129 (= (head!15822 s!9605) (c!1428920 r!14126)))))

(declare-fun b!7747427 () Bool)

(declare-fun res!3089056 () Bool)

(assert (=> b!7747427 (=> (not res!3089056) (not e!4593129))))

(assert (=> b!7747427 (= res!3089056 (isEmpty!42005 (tail!15362 s!9605)))))

(declare-fun b!7747428 () Bool)

(declare-fun res!3089055 () Bool)

(assert (=> b!7747428 (=> (not res!3089055) (not e!4593129))))

(declare-fun call!718033 () Bool)

(assert (=> b!7747428 (= res!3089055 (not call!718033))))

(declare-fun b!7747429 () Bool)

(declare-fun e!4593131 () Bool)

(assert (=> b!7747429 (= e!4593131 (not (= (head!15822 s!9605) (c!1428920 r!14126))))))

(declare-fun b!7747430 () Bool)

(declare-fun res!3089057 () Bool)

(assert (=> b!7747430 (=> res!3089057 e!4593131)))

(assert (=> b!7747430 (= res!3089057 (not (isEmpty!42005 (tail!15362 s!9605))))))

(declare-fun b!7747431 () Bool)

(declare-fun res!3089061 () Bool)

(declare-fun e!4593130 () Bool)

(assert (=> b!7747431 (=> res!3089061 e!4593130)))

(assert (=> b!7747431 (= res!3089061 (not (is-ElementMatch!20590 r!14126)))))

(declare-fun e!4593132 () Bool)

(assert (=> b!7747431 (= e!4593132 e!4593130)))

(declare-fun b!7747432 () Bool)

(declare-fun e!4593126 () Bool)

(assert (=> b!7747432 (= e!4593126 e!4593131)))

(declare-fun res!3089059 () Bool)

(assert (=> b!7747432 (=> res!3089059 e!4593131)))

(assert (=> b!7747432 (= res!3089059 call!718033)))

(declare-fun bm!718028 () Bool)

(assert (=> bm!718028 (= call!718033 (isEmpty!42005 s!9605))))

(declare-fun b!7747433 () Bool)

(assert (=> b!7747433 (= e!4593130 e!4593126)))

(declare-fun res!3089062 () Bool)

(assert (=> b!7747433 (=> (not res!3089062) (not e!4593126))))

(declare-fun lt!2668864 () Bool)

(assert (=> b!7747433 (= res!3089062 (not lt!2668864))))

(declare-fun b!7747434 () Bool)

(declare-fun res!3089058 () Bool)

(assert (=> b!7747434 (=> res!3089058 e!4593130)))

(assert (=> b!7747434 (= res!3089058 e!4593129)))

(declare-fun res!3089060 () Bool)

(assert (=> b!7747434 (=> (not res!3089060) (not e!4593129))))

(assert (=> b!7747434 (= res!3089060 lt!2668864)))

(declare-fun b!7747436 () Bool)

(assert (=> b!7747436 (= e!4593132 (not lt!2668864))))

(declare-fun b!7747437 () Bool)

(declare-fun e!4593127 () Bool)

(assert (=> b!7747437 (= e!4593127 (matchR!10082 (derivativeStep!6022 r!14126 (head!15822 s!9605)) (tail!15362 s!9605)))))

(declare-fun b!7747438 () Bool)

(declare-fun e!4593128 () Bool)

(assert (=> b!7747438 (= e!4593128 (= lt!2668864 call!718033))))

(declare-fun b!7747439 () Bool)

(assert (=> b!7747439 (= e!4593127 (nullable!9063 r!14126))))

(declare-fun b!7747435 () Bool)

(assert (=> b!7747435 (= e!4593128 e!4593132)))

(declare-fun c!1428986 () Bool)

(assert (=> b!7747435 (= c!1428986 (is-EmptyLang!20590 r!14126))))

(declare-fun d!2342337 () Bool)

(assert (=> d!2342337 e!4593128))

(declare-fun c!1428988 () Bool)

(assert (=> d!2342337 (= c!1428988 (is-EmptyExpr!20590 r!14126))))

(assert (=> d!2342337 (= lt!2668864 e!4593127)))

(declare-fun c!1428987 () Bool)

(assert (=> d!2342337 (= c!1428987 (isEmpty!42005 s!9605))))

(assert (=> d!2342337 (validRegex!11008 r!14126)))

(assert (=> d!2342337 (= (matchR!10082 r!14126 s!9605) lt!2668864)))

(assert (= (and d!2342337 c!1428987) b!7747439))

(assert (= (and d!2342337 (not c!1428987)) b!7747437))

(assert (= (and d!2342337 c!1428988) b!7747438))

(assert (= (and d!2342337 (not c!1428988)) b!7747435))

(assert (= (and b!7747435 c!1428986) b!7747436))

(assert (= (and b!7747435 (not c!1428986)) b!7747431))

(assert (= (and b!7747431 (not res!3089061)) b!7747434))

(assert (= (and b!7747434 res!3089060) b!7747428))

(assert (= (and b!7747428 res!3089055) b!7747427))

(assert (= (and b!7747427 res!3089056) b!7747426))

(assert (= (and b!7747434 (not res!3089058)) b!7747433))

(assert (= (and b!7747433 res!3089062) b!7747432))

(assert (= (and b!7747432 (not res!3089059)) b!7747430))

(assert (= (and b!7747430 (not res!3089057)) b!7747429))

(assert (= (or b!7747438 b!7747428 b!7747432) bm!718028))

(declare-fun m!8214848 () Bool)

(assert (=> b!7747439 m!8214848))

(declare-fun m!8214850 () Bool)

(assert (=> b!7747430 m!8214850))

(assert (=> b!7747430 m!8214850))

(declare-fun m!8214852 () Bool)

(assert (=> b!7747430 m!8214852))

(declare-fun m!8214854 () Bool)

(assert (=> b!7747429 m!8214854))

(assert (=> b!7747437 m!8214854))

(assert (=> b!7747437 m!8214854))

(declare-fun m!8214856 () Bool)

(assert (=> b!7747437 m!8214856))

(assert (=> b!7747437 m!8214850))

(assert (=> b!7747437 m!8214856))

(assert (=> b!7747437 m!8214850))

(declare-fun m!8214858 () Bool)

(assert (=> b!7747437 m!8214858))

(assert (=> b!7747427 m!8214850))

(assert (=> b!7747427 m!8214850))

(assert (=> b!7747427 m!8214852))

(declare-fun m!8214860 () Bool)

(assert (=> bm!718028 m!8214860))

(assert (=> b!7747426 m!8214854))

(assert (=> d!2342337 m!8214860))

(assert (=> d!2342337 m!8214636))

(assert (=> b!7747072 d!2342337))

(declare-fun d!2342339 () Bool)

(assert (=> d!2342339 (= (Exists!4711 lambda!471763) (choose!59400 lambda!471763))))

(declare-fun bs!1965609 () Bool)

(assert (= bs!1965609 d!2342339))

(declare-fun m!8214862 () Bool)

(assert (=> bs!1965609 m!8214862))

(assert (=> b!7747071 d!2342339))

(declare-fun b!7747449 () Bool)

(declare-fun e!4593138 () List!73437)

(assert (=> b!7747449 (= e!4593138 (Cons!73313 (h!79761 (_1!38120 lt!2668798)) (++!17789 (t!388172 (_1!38120 lt!2668798)) (_2!38120 lt!2668798))))))

(declare-fun b!7747450 () Bool)

(declare-fun res!3089068 () Bool)

(declare-fun e!4593137 () Bool)

(assert (=> b!7747450 (=> (not res!3089068) (not e!4593137))))

(declare-fun lt!2668867 () List!73437)

(declare-fun size!42649 (List!73437) Int)

(assert (=> b!7747450 (= res!3089068 (= (size!42649 lt!2668867) (+ (size!42649 (_1!38120 lt!2668798)) (size!42649 (_2!38120 lt!2668798)))))))

(declare-fun b!7747448 () Bool)

(assert (=> b!7747448 (= e!4593138 (_2!38120 lt!2668798))))

(declare-fun d!2342341 () Bool)

(assert (=> d!2342341 e!4593137))

(declare-fun res!3089067 () Bool)

(assert (=> d!2342341 (=> (not res!3089067) (not e!4593137))))

(declare-fun content!15546 (List!73437) (Set C!41506))

(assert (=> d!2342341 (= res!3089067 (= (content!15546 lt!2668867) (set.union (content!15546 (_1!38120 lt!2668798)) (content!15546 (_2!38120 lt!2668798)))))))

(assert (=> d!2342341 (= lt!2668867 e!4593138)))

(declare-fun c!1428991 () Bool)

(assert (=> d!2342341 (= c!1428991 (is-Nil!73313 (_1!38120 lt!2668798)))))

(assert (=> d!2342341 (= (++!17789 (_1!38120 lt!2668798) (_2!38120 lt!2668798)) lt!2668867)))

(declare-fun b!7747451 () Bool)

(assert (=> b!7747451 (= e!4593137 (or (not (= (_2!38120 lt!2668798) Nil!73313)) (= lt!2668867 (_1!38120 lt!2668798))))))

(assert (= (and d!2342341 c!1428991) b!7747448))

(assert (= (and d!2342341 (not c!1428991)) b!7747449))

(assert (= (and d!2342341 res!3089067) b!7747450))

(assert (= (and b!7747450 res!3089068) b!7747451))

(declare-fun m!8214864 () Bool)

(assert (=> b!7747449 m!8214864))

(declare-fun m!8214866 () Bool)

(assert (=> b!7747450 m!8214866))

(declare-fun m!8214868 () Bool)

(assert (=> b!7747450 m!8214868))

(declare-fun m!8214870 () Bool)

(assert (=> b!7747450 m!8214870))

(declare-fun m!8214872 () Bool)

(assert (=> d!2342341 m!8214872))

(declare-fun m!8214874 () Bool)

(assert (=> d!2342341 m!8214874))

(declare-fun m!8214876 () Bool)

(assert (=> d!2342341 m!8214876))

(assert (=> b!7747066 d!2342341))

(declare-fun b!7747452 () Bool)

(declare-fun e!4593144 () Bool)

(declare-fun e!4593142 () Bool)

(assert (=> b!7747452 (= e!4593144 e!4593142)))

(declare-fun c!1428993 () Bool)

(assert (=> b!7747452 (= c!1428993 (is-Union!20590 (regTwo!41692 r!14126)))))

(declare-fun b!7747453 () Bool)

(declare-fun res!3089071 () Bool)

(declare-fun e!4593141 () Bool)

(assert (=> b!7747453 (=> (not res!3089071) (not e!4593141))))

(declare-fun call!718036 () Bool)

(assert (=> b!7747453 (= res!3089071 call!718036)))

(assert (=> b!7747453 (= e!4593142 e!4593141)))

(declare-fun b!7747454 () Bool)

(declare-fun res!3089072 () Bool)

(declare-fun e!4593140 () Bool)

(assert (=> b!7747454 (=> res!3089072 e!4593140)))

(assert (=> b!7747454 (= res!3089072 (not (is-Concat!29435 (regTwo!41692 r!14126))))))

(assert (=> b!7747454 (= e!4593142 e!4593140)))

(declare-fun b!7747455 () Bool)

(declare-fun e!4593145 () Bool)

(assert (=> b!7747455 (= e!4593140 e!4593145)))

(declare-fun res!3089073 () Bool)

(assert (=> b!7747455 (=> (not res!3089073) (not e!4593145))))

(assert (=> b!7747455 (= res!3089073 call!718036)))

(declare-fun b!7747456 () Bool)

(declare-fun e!4593139 () Bool)

(assert (=> b!7747456 (= e!4593144 e!4593139)))

(declare-fun res!3089069 () Bool)

(assert (=> b!7747456 (= res!3089069 (not (nullable!9063 (reg!20919 (regTwo!41692 r!14126)))))))

(assert (=> b!7747456 (=> (not res!3089069) (not e!4593139))))

(declare-fun d!2342343 () Bool)

(declare-fun res!3089070 () Bool)

(declare-fun e!4593143 () Bool)

(assert (=> d!2342343 (=> res!3089070 e!4593143)))

(assert (=> d!2342343 (= res!3089070 (is-ElementMatch!20590 (regTwo!41692 r!14126)))))

(assert (=> d!2342343 (= (validRegex!11008 (regTwo!41692 r!14126)) e!4593143)))

(declare-fun b!7747457 () Bool)

(declare-fun call!718034 () Bool)

(assert (=> b!7747457 (= e!4593139 call!718034)))

(declare-fun c!1428992 () Bool)

(declare-fun bm!718029 () Bool)

(assert (=> bm!718029 (= call!718034 (validRegex!11008 (ite c!1428992 (reg!20919 (regTwo!41692 r!14126)) (ite c!1428993 (regOne!41693 (regTwo!41692 r!14126)) (regOne!41692 (regTwo!41692 r!14126))))))))

(declare-fun bm!718030 () Bool)

(assert (=> bm!718030 (= call!718036 call!718034)))

(declare-fun bm!718031 () Bool)

(declare-fun call!718035 () Bool)

(assert (=> bm!718031 (= call!718035 (validRegex!11008 (ite c!1428993 (regTwo!41693 (regTwo!41692 r!14126)) (regTwo!41692 (regTwo!41692 r!14126)))))))

(declare-fun b!7747458 () Bool)

(assert (=> b!7747458 (= e!4593145 call!718035)))

(declare-fun b!7747459 () Bool)

(assert (=> b!7747459 (= e!4593143 e!4593144)))

(assert (=> b!7747459 (= c!1428992 (is-Star!20590 (regTwo!41692 r!14126)))))

(declare-fun b!7747460 () Bool)

(assert (=> b!7747460 (= e!4593141 call!718035)))

(assert (= (and d!2342343 (not res!3089070)) b!7747459))

(assert (= (and b!7747459 c!1428992) b!7747456))

(assert (= (and b!7747459 (not c!1428992)) b!7747452))

(assert (= (and b!7747456 res!3089069) b!7747457))

(assert (= (and b!7747452 c!1428993) b!7747453))

(assert (= (and b!7747452 (not c!1428993)) b!7747454))

(assert (= (and b!7747453 res!3089071) b!7747460))

(assert (= (and b!7747454 (not res!3089072)) b!7747455))

(assert (= (and b!7747455 res!3089073) b!7747458))

(assert (= (or b!7747453 b!7747455) bm!718030))

(assert (= (or b!7747460 b!7747458) bm!718031))

(assert (= (or b!7747457 bm!718030) bm!718029))

(declare-fun m!8214878 () Bool)

(assert (=> b!7747456 m!8214878))

(declare-fun m!8214880 () Bool)

(assert (=> bm!718029 m!8214880))

(declare-fun m!8214882 () Bool)

(assert (=> bm!718031 m!8214882))

(assert (=> b!7747060 d!2342343))

(declare-fun b!7747474 () Bool)

(declare-fun res!3089088 () Bool)

(declare-fun e!4593155 () Bool)

(assert (=> b!7747474 (=> (not res!3089088) (not e!4593155))))

(assert (=> b!7747474 (= res!3089088 (= (head!15822 Nil!73313) (head!15822 (_1!38120 lt!2668798))))))

(declare-fun b!7747475 () Bool)

(assert (=> b!7747475 (= e!4593155 (isPrefix!6234 (tail!15362 Nil!73313) (tail!15362 (_1!38120 lt!2668798))))))

(declare-fun b!7747476 () Bool)

(declare-fun e!4593156 () Bool)

(assert (=> b!7747476 (= e!4593156 (>= (size!42649 (_1!38120 lt!2668798)) (size!42649 Nil!73313)))))

(declare-fun d!2342345 () Bool)

(assert (=> d!2342345 e!4593156))

(declare-fun res!3089086 () Bool)

(assert (=> d!2342345 (=> res!3089086 e!4593156)))

(declare-fun lt!2668872 () Bool)

(assert (=> d!2342345 (= res!3089086 (not lt!2668872))))

(declare-fun e!4593154 () Bool)

(assert (=> d!2342345 (= lt!2668872 e!4593154)))

(declare-fun res!3089087 () Bool)

(assert (=> d!2342345 (=> res!3089087 e!4593154)))

(assert (=> d!2342345 (= res!3089087 (is-Nil!73313 Nil!73313))))

(assert (=> d!2342345 (= (isPrefix!6234 Nil!73313 (_1!38120 lt!2668798)) lt!2668872)))

(declare-fun b!7747473 () Bool)

(assert (=> b!7747473 (= e!4593154 e!4593155)))

(declare-fun res!3089089 () Bool)

(assert (=> b!7747473 (=> (not res!3089089) (not e!4593155))))

(assert (=> b!7747473 (= res!3089089 (not (is-Nil!73313 (_1!38120 lt!2668798))))))

(assert (= (and d!2342345 (not res!3089087)) b!7747473))

(assert (= (and b!7747473 res!3089089) b!7747474))

(assert (= (and b!7747474 res!3089088) b!7747475))

(assert (= (and d!2342345 (not res!3089086)) b!7747476))

(declare-fun m!8214884 () Bool)

(assert (=> b!7747474 m!8214884))

(assert (=> b!7747474 m!8214736))

(declare-fun m!8214886 () Bool)

(assert (=> b!7747475 m!8214886))

(assert (=> b!7747475 m!8214732))

(assert (=> b!7747475 m!8214886))

(assert (=> b!7747475 m!8214732))

(declare-fun m!8214888 () Bool)

(assert (=> b!7747475 m!8214888))

(assert (=> b!7747476 m!8214868))

(declare-fun m!8214890 () Bool)

(assert (=> b!7747476 m!8214890))

(assert (=> b!7747076 d!2342345))

(declare-fun b!7747478 () Bool)

(declare-fun e!4593158 () List!73437)

(assert (=> b!7747478 (= e!4593158 (Cons!73313 (h!79761 Nil!73313) (++!17789 (t!388172 Nil!73313) s!9605)))))

(declare-fun b!7747479 () Bool)

(declare-fun res!3089091 () Bool)

(declare-fun e!4593157 () Bool)

(assert (=> b!7747479 (=> (not res!3089091) (not e!4593157))))

(declare-fun lt!2668873 () List!73437)

(assert (=> b!7747479 (= res!3089091 (= (size!42649 lt!2668873) (+ (size!42649 Nil!73313) (size!42649 s!9605))))))

(declare-fun b!7747477 () Bool)

(assert (=> b!7747477 (= e!4593158 s!9605)))

(declare-fun d!2342347 () Bool)

(assert (=> d!2342347 e!4593157))

(declare-fun res!3089090 () Bool)

(assert (=> d!2342347 (=> (not res!3089090) (not e!4593157))))

(assert (=> d!2342347 (= res!3089090 (= (content!15546 lt!2668873) (set.union (content!15546 Nil!73313) (content!15546 s!9605))))))

(assert (=> d!2342347 (= lt!2668873 e!4593158)))

(declare-fun c!1428994 () Bool)

(assert (=> d!2342347 (= c!1428994 (is-Nil!73313 Nil!73313))))

(assert (=> d!2342347 (= (++!17789 Nil!73313 s!9605) lt!2668873)))

(declare-fun b!7747480 () Bool)

(assert (=> b!7747480 (= e!4593157 (or (not (= s!9605 Nil!73313)) (= lt!2668873 Nil!73313)))))

(assert (= (and d!2342347 c!1428994) b!7747477))

(assert (= (and d!2342347 (not c!1428994)) b!7747478))

(assert (= (and d!2342347 res!3089090) b!7747479))

(assert (= (and b!7747479 res!3089091) b!7747480))

(declare-fun m!8214892 () Bool)

(assert (=> b!7747478 m!8214892))

(declare-fun m!8214894 () Bool)

(assert (=> b!7747479 m!8214894))

(assert (=> b!7747479 m!8214890))

(declare-fun m!8214896 () Bool)

(assert (=> b!7747479 m!8214896))

(declare-fun m!8214898 () Bool)

(assert (=> d!2342347 m!8214898))

(declare-fun m!8214900 () Bool)

(assert (=> d!2342347 m!8214900))

(declare-fun m!8214902 () Bool)

(assert (=> d!2342347 m!8214902))

(assert (=> b!7747070 d!2342347))

(assert (=> b!7747074 d!2342335))

(declare-fun b!7747481 () Bool)

(declare-fun e!4593164 () Bool)

(declare-fun e!4593162 () Bool)

(assert (=> b!7747481 (= e!4593164 e!4593162)))

(declare-fun c!1428996 () Bool)

(assert (=> b!7747481 (= c!1428996 (is-Union!20590 r!14126))))

(declare-fun b!7747482 () Bool)

(declare-fun res!3089094 () Bool)

(declare-fun e!4593161 () Bool)

(assert (=> b!7747482 (=> (not res!3089094) (not e!4593161))))

(declare-fun call!718039 () Bool)

(assert (=> b!7747482 (= res!3089094 call!718039)))

(assert (=> b!7747482 (= e!4593162 e!4593161)))

(declare-fun b!7747483 () Bool)

(declare-fun res!3089095 () Bool)

(declare-fun e!4593160 () Bool)

(assert (=> b!7747483 (=> res!3089095 e!4593160)))

(assert (=> b!7747483 (= res!3089095 (not (is-Concat!29435 r!14126)))))

(assert (=> b!7747483 (= e!4593162 e!4593160)))

(declare-fun b!7747484 () Bool)

(declare-fun e!4593165 () Bool)

(assert (=> b!7747484 (= e!4593160 e!4593165)))

(declare-fun res!3089096 () Bool)

(assert (=> b!7747484 (=> (not res!3089096) (not e!4593165))))

(assert (=> b!7747484 (= res!3089096 call!718039)))

(declare-fun b!7747485 () Bool)

(declare-fun e!4593159 () Bool)

(assert (=> b!7747485 (= e!4593164 e!4593159)))

(declare-fun res!3089092 () Bool)

(assert (=> b!7747485 (= res!3089092 (not (nullable!9063 (reg!20919 r!14126))))))

(assert (=> b!7747485 (=> (not res!3089092) (not e!4593159))))

(declare-fun d!2342349 () Bool)

(declare-fun res!3089093 () Bool)

(declare-fun e!4593163 () Bool)

(assert (=> d!2342349 (=> res!3089093 e!4593163)))

(assert (=> d!2342349 (= res!3089093 (is-ElementMatch!20590 r!14126))))

(assert (=> d!2342349 (= (validRegex!11008 r!14126) e!4593163)))

(declare-fun b!7747486 () Bool)

(declare-fun call!718037 () Bool)

(assert (=> b!7747486 (= e!4593159 call!718037)))

(declare-fun c!1428995 () Bool)

(declare-fun bm!718032 () Bool)

(assert (=> bm!718032 (= call!718037 (validRegex!11008 (ite c!1428995 (reg!20919 r!14126) (ite c!1428996 (regOne!41693 r!14126) (regOne!41692 r!14126)))))))

(declare-fun bm!718033 () Bool)

(assert (=> bm!718033 (= call!718039 call!718037)))

(declare-fun bm!718034 () Bool)

(declare-fun call!718038 () Bool)

(assert (=> bm!718034 (= call!718038 (validRegex!11008 (ite c!1428996 (regTwo!41693 r!14126) (regTwo!41692 r!14126))))))

(declare-fun b!7747487 () Bool)

(assert (=> b!7747487 (= e!4593165 call!718038)))

(declare-fun b!7747488 () Bool)

(assert (=> b!7747488 (= e!4593163 e!4593164)))

(assert (=> b!7747488 (= c!1428995 (is-Star!20590 r!14126))))

(declare-fun b!7747489 () Bool)

(assert (=> b!7747489 (= e!4593161 call!718038)))

(assert (= (and d!2342349 (not res!3089093)) b!7747488))

(assert (= (and b!7747488 c!1428995) b!7747485))

(assert (= (and b!7747488 (not c!1428995)) b!7747481))

(assert (= (and b!7747485 res!3089092) b!7747486))

(assert (= (and b!7747481 c!1428996) b!7747482))

(assert (= (and b!7747481 (not c!1428996)) b!7747483))

(assert (= (and b!7747482 res!3089094) b!7747489))

(assert (= (and b!7747483 (not res!3089095)) b!7747484))

(assert (= (and b!7747484 res!3089096) b!7747487))

(assert (= (or b!7747482 b!7747484) bm!718033))

(assert (= (or b!7747489 b!7747487) bm!718034))

(assert (= (or b!7747486 bm!718033) bm!718032))

(declare-fun m!8214904 () Bool)

(assert (=> b!7747485 m!8214904))

(declare-fun m!8214906 () Bool)

(assert (=> bm!718032 m!8214906))

(declare-fun m!8214908 () Bool)

(assert (=> bm!718034 m!8214908))

(assert (=> start!738654 d!2342349))

(declare-fun d!2342351 () Bool)

(assert (=> d!2342351 (= (get!26076 lt!2668803) (v!54745 lt!2668803))))

(assert (=> b!7747068 d!2342351))

(declare-fun d!2342353 () Bool)

(assert (=> d!2342353 (matchR!10082 (Concat!29435 (regOne!41692 r!14126) (regTwo!41692 r!14126)) (++!17789 (_1!38120 lt!2668799) (_2!38120 lt!2668799)))))

(declare-fun lt!2668877 () Unit!168284)

(declare-fun choose!59401 (Regex!20590 Regex!20590 List!73437 List!73437 List!73437) Unit!168284)

(assert (=> d!2342353 (= lt!2668877 (choose!59401 (regOne!41692 r!14126) (regTwo!41692 r!14126) (_1!38120 lt!2668799) (_2!38120 lt!2668799) s!9605))))

(assert (=> d!2342353 (validRegex!11008 (regOne!41692 r!14126))))

(assert (=> d!2342353 (= (lemmaFindSeparationIsDefinedThenConcatMatches!215 (regOne!41692 r!14126) (regTwo!41692 r!14126) (_1!38120 lt!2668799) (_2!38120 lt!2668799) s!9605) lt!2668877)))

(declare-fun bs!1965613 () Bool)

(assert (= bs!1965613 d!2342353))

(assert (=> bs!1965613 m!8214612))

(assert (=> bs!1965613 m!8214612))

(declare-fun m!8214916 () Bool)

(assert (=> bs!1965613 m!8214916))

(declare-fun m!8214918 () Bool)

(assert (=> bs!1965613 m!8214918))

(assert (=> bs!1965613 m!8214630))

(assert (=> b!7747068 d!2342353))

(declare-fun b!7747490 () Bool)

(declare-fun e!4593169 () Bool)

(assert (=> b!7747490 (= e!4593169 (= (head!15822 (++!17789 (_1!38120 lt!2668799) (_2!38120 lt!2668799))) (c!1428920 r!14126)))))

(declare-fun b!7747491 () Bool)

(declare-fun res!3089098 () Bool)

(assert (=> b!7747491 (=> (not res!3089098) (not e!4593169))))

(assert (=> b!7747491 (= res!3089098 (isEmpty!42005 (tail!15362 (++!17789 (_1!38120 lt!2668799) (_2!38120 lt!2668799)))))))

(declare-fun b!7747492 () Bool)

(declare-fun res!3089097 () Bool)

(assert (=> b!7747492 (=> (not res!3089097) (not e!4593169))))

(declare-fun call!718040 () Bool)

(assert (=> b!7747492 (= res!3089097 (not call!718040))))

(declare-fun b!7747493 () Bool)

(declare-fun e!4593171 () Bool)

(assert (=> b!7747493 (= e!4593171 (not (= (head!15822 (++!17789 (_1!38120 lt!2668799) (_2!38120 lt!2668799))) (c!1428920 r!14126))))))

(declare-fun b!7747494 () Bool)

(declare-fun res!3089099 () Bool)

(assert (=> b!7747494 (=> res!3089099 e!4593171)))

(assert (=> b!7747494 (= res!3089099 (not (isEmpty!42005 (tail!15362 (++!17789 (_1!38120 lt!2668799) (_2!38120 lt!2668799))))))))

(declare-fun b!7747495 () Bool)

(declare-fun res!3089103 () Bool)

(declare-fun e!4593170 () Bool)

(assert (=> b!7747495 (=> res!3089103 e!4593170)))

(assert (=> b!7747495 (= res!3089103 (not (is-ElementMatch!20590 r!14126)))))

(declare-fun e!4593172 () Bool)

(assert (=> b!7747495 (= e!4593172 e!4593170)))

(declare-fun b!7747496 () Bool)

(declare-fun e!4593166 () Bool)

(assert (=> b!7747496 (= e!4593166 e!4593171)))

(declare-fun res!3089101 () Bool)

(assert (=> b!7747496 (=> res!3089101 e!4593171)))

(assert (=> b!7747496 (= res!3089101 call!718040)))

(declare-fun bm!718035 () Bool)

(assert (=> bm!718035 (= call!718040 (isEmpty!42005 (++!17789 (_1!38120 lt!2668799) (_2!38120 lt!2668799))))))

(declare-fun b!7747497 () Bool)

(assert (=> b!7747497 (= e!4593170 e!4593166)))

(declare-fun res!3089104 () Bool)

(assert (=> b!7747497 (=> (not res!3089104) (not e!4593166))))

(declare-fun lt!2668878 () Bool)

(assert (=> b!7747497 (= res!3089104 (not lt!2668878))))

(declare-fun b!7747498 () Bool)

(declare-fun res!3089100 () Bool)

(assert (=> b!7747498 (=> res!3089100 e!4593170)))

(assert (=> b!7747498 (= res!3089100 e!4593169)))

(declare-fun res!3089102 () Bool)

(assert (=> b!7747498 (=> (not res!3089102) (not e!4593169))))

(assert (=> b!7747498 (= res!3089102 lt!2668878)))

(declare-fun b!7747500 () Bool)

(assert (=> b!7747500 (= e!4593172 (not lt!2668878))))

(declare-fun b!7747501 () Bool)

(declare-fun e!4593167 () Bool)

(assert (=> b!7747501 (= e!4593167 (matchR!10082 (derivativeStep!6022 r!14126 (head!15822 (++!17789 (_1!38120 lt!2668799) (_2!38120 lt!2668799)))) (tail!15362 (++!17789 (_1!38120 lt!2668799) (_2!38120 lt!2668799)))))))

(declare-fun b!7747502 () Bool)

(declare-fun e!4593168 () Bool)

(assert (=> b!7747502 (= e!4593168 (= lt!2668878 call!718040))))

(declare-fun b!7747503 () Bool)

(assert (=> b!7747503 (= e!4593167 (nullable!9063 r!14126))))

(declare-fun b!7747499 () Bool)

(assert (=> b!7747499 (= e!4593168 e!4593172)))

(declare-fun c!1428997 () Bool)

(assert (=> b!7747499 (= c!1428997 (is-EmptyLang!20590 r!14126))))

(declare-fun d!2342357 () Bool)

(assert (=> d!2342357 e!4593168))

(declare-fun c!1428999 () Bool)

(assert (=> d!2342357 (= c!1428999 (is-EmptyExpr!20590 r!14126))))

(assert (=> d!2342357 (= lt!2668878 e!4593167)))

(declare-fun c!1428998 () Bool)

(assert (=> d!2342357 (= c!1428998 (isEmpty!42005 (++!17789 (_1!38120 lt!2668799) (_2!38120 lt!2668799))))))

(assert (=> d!2342357 (validRegex!11008 r!14126)))

(assert (=> d!2342357 (= (matchR!10082 r!14126 (++!17789 (_1!38120 lt!2668799) (_2!38120 lt!2668799))) lt!2668878)))

(assert (= (and d!2342357 c!1428998) b!7747503))

(assert (= (and d!2342357 (not c!1428998)) b!7747501))

(assert (= (and d!2342357 c!1428999) b!7747502))

(assert (= (and d!2342357 (not c!1428999)) b!7747499))

(assert (= (and b!7747499 c!1428997) b!7747500))

(assert (= (and b!7747499 (not c!1428997)) b!7747495))

(assert (= (and b!7747495 (not res!3089103)) b!7747498))

(assert (= (and b!7747498 res!3089102) b!7747492))

(assert (= (and b!7747492 res!3089097) b!7747491))

(assert (= (and b!7747491 res!3089098) b!7747490))

(assert (= (and b!7747498 (not res!3089100)) b!7747497))

(assert (= (and b!7747497 res!3089104) b!7747496))

(assert (= (and b!7747496 (not res!3089101)) b!7747494))

(assert (= (and b!7747494 (not res!3089099)) b!7747493))

(assert (= (or b!7747502 b!7747492 b!7747496) bm!718035))

(assert (=> b!7747503 m!8214848))

(assert (=> b!7747494 m!8214612))

(declare-fun m!8214920 () Bool)

(assert (=> b!7747494 m!8214920))

(assert (=> b!7747494 m!8214920))

(declare-fun m!8214922 () Bool)

(assert (=> b!7747494 m!8214922))

(assert (=> b!7747493 m!8214612))

(declare-fun m!8214924 () Bool)

(assert (=> b!7747493 m!8214924))

(assert (=> b!7747501 m!8214612))

(assert (=> b!7747501 m!8214924))

(assert (=> b!7747501 m!8214924))

(declare-fun m!8214926 () Bool)

(assert (=> b!7747501 m!8214926))

(assert (=> b!7747501 m!8214612))

(assert (=> b!7747501 m!8214920))

(assert (=> b!7747501 m!8214926))

(assert (=> b!7747501 m!8214920))

(declare-fun m!8214928 () Bool)

(assert (=> b!7747501 m!8214928))

(assert (=> b!7747491 m!8214612))

(assert (=> b!7747491 m!8214920))

(assert (=> b!7747491 m!8214920))

(assert (=> b!7747491 m!8214922))

(assert (=> bm!718035 m!8214612))

(declare-fun m!8214930 () Bool)

(assert (=> bm!718035 m!8214930))

(assert (=> b!7747490 m!8214612))

(assert (=> b!7747490 m!8214924))

(assert (=> d!2342357 m!8214612))

(assert (=> d!2342357 m!8214930))

(assert (=> d!2342357 m!8214636))

(assert (=> b!7747068 d!2342357))

(declare-fun b!7747505 () Bool)

(declare-fun e!4593174 () List!73437)

(assert (=> b!7747505 (= e!4593174 (Cons!73313 (h!79761 (_1!38120 lt!2668799)) (++!17789 (t!388172 (_1!38120 lt!2668799)) (_2!38120 lt!2668799))))))

(declare-fun b!7747506 () Bool)

(declare-fun res!3089106 () Bool)

(declare-fun e!4593173 () Bool)

(assert (=> b!7747506 (=> (not res!3089106) (not e!4593173))))

(declare-fun lt!2668879 () List!73437)

(assert (=> b!7747506 (= res!3089106 (= (size!42649 lt!2668879) (+ (size!42649 (_1!38120 lt!2668799)) (size!42649 (_2!38120 lt!2668799)))))))

(declare-fun b!7747504 () Bool)

(assert (=> b!7747504 (= e!4593174 (_2!38120 lt!2668799))))

(declare-fun d!2342359 () Bool)

(assert (=> d!2342359 e!4593173))

(declare-fun res!3089105 () Bool)

(assert (=> d!2342359 (=> (not res!3089105) (not e!4593173))))

(assert (=> d!2342359 (= res!3089105 (= (content!15546 lt!2668879) (set.union (content!15546 (_1!38120 lt!2668799)) (content!15546 (_2!38120 lt!2668799)))))))

(assert (=> d!2342359 (= lt!2668879 e!4593174)))

(declare-fun c!1429000 () Bool)

(assert (=> d!2342359 (= c!1429000 (is-Nil!73313 (_1!38120 lt!2668799)))))

(assert (=> d!2342359 (= (++!17789 (_1!38120 lt!2668799) (_2!38120 lt!2668799)) lt!2668879)))

(declare-fun b!7747507 () Bool)

(assert (=> b!7747507 (= e!4593173 (or (not (= (_2!38120 lt!2668799) Nil!73313)) (= lt!2668879 (_1!38120 lt!2668799))))))

(assert (= (and d!2342359 c!1429000) b!7747504))

(assert (= (and d!2342359 (not c!1429000)) b!7747505))

(assert (= (and d!2342359 res!3089105) b!7747506))

(assert (= (and b!7747506 res!3089106) b!7747507))

(declare-fun m!8214932 () Bool)

(assert (=> b!7747505 m!8214932))

(declare-fun m!8214934 () Bool)

(assert (=> b!7747506 m!8214934))

(declare-fun m!8214936 () Bool)

(assert (=> b!7747506 m!8214936))

(declare-fun m!8214938 () Bool)

(assert (=> b!7747506 m!8214938))

(declare-fun m!8214940 () Bool)

(assert (=> d!2342359 m!8214940))

(declare-fun m!8214942 () Bool)

(assert (=> d!2342359 m!8214942))

(declare-fun m!8214944 () Bool)

(assert (=> d!2342359 m!8214944))

(assert (=> b!7747068 d!2342359))

(declare-fun b!7747520 () Bool)

(declare-fun e!4593177 () Bool)

(declare-fun tp!2273128 () Bool)

(assert (=> b!7747520 (= e!4593177 tp!2273128)))

(declare-fun b!7747521 () Bool)

(declare-fun tp!2273124 () Bool)

(declare-fun tp!2273125 () Bool)

(assert (=> b!7747521 (= e!4593177 (and tp!2273124 tp!2273125))))

(assert (=> b!7747065 (= tp!2273092 e!4593177)))

(declare-fun b!7747519 () Bool)

(declare-fun tp!2273127 () Bool)

(declare-fun tp!2273126 () Bool)

(assert (=> b!7747519 (= e!4593177 (and tp!2273127 tp!2273126))))

(declare-fun b!7747518 () Bool)

(assert (=> b!7747518 (= e!4593177 tp_is_empty!51535)))

(assert (= (and b!7747065 (is-ElementMatch!20590 (reg!20919 r!14126))) b!7747518))

(assert (= (and b!7747065 (is-Concat!29435 (reg!20919 r!14126))) b!7747519))

(assert (= (and b!7747065 (is-Star!20590 (reg!20919 r!14126))) b!7747520))

(assert (= (and b!7747065 (is-Union!20590 (reg!20919 r!14126))) b!7747521))

(declare-fun b!7747524 () Bool)

(declare-fun e!4593178 () Bool)

(declare-fun tp!2273133 () Bool)

(assert (=> b!7747524 (= e!4593178 tp!2273133)))

(declare-fun b!7747525 () Bool)

(declare-fun tp!2273129 () Bool)

(declare-fun tp!2273130 () Bool)

(assert (=> b!7747525 (= e!4593178 (and tp!2273129 tp!2273130))))

(assert (=> b!7747063 (= tp!2273094 e!4593178)))

(declare-fun b!7747523 () Bool)

(declare-fun tp!2273132 () Bool)

(declare-fun tp!2273131 () Bool)

(assert (=> b!7747523 (= e!4593178 (and tp!2273132 tp!2273131))))

(declare-fun b!7747522 () Bool)

(assert (=> b!7747522 (= e!4593178 tp_is_empty!51535)))

(assert (= (and b!7747063 (is-ElementMatch!20590 (regOne!41692 r!14126))) b!7747522))

(assert (= (and b!7747063 (is-Concat!29435 (regOne!41692 r!14126))) b!7747523))

(assert (= (and b!7747063 (is-Star!20590 (regOne!41692 r!14126))) b!7747524))

(assert (= (and b!7747063 (is-Union!20590 (regOne!41692 r!14126))) b!7747525))

(declare-fun b!7747528 () Bool)

(declare-fun e!4593179 () Bool)

(declare-fun tp!2273138 () Bool)

(assert (=> b!7747528 (= e!4593179 tp!2273138)))

(declare-fun b!7747529 () Bool)

(declare-fun tp!2273134 () Bool)

(declare-fun tp!2273135 () Bool)

(assert (=> b!7747529 (= e!4593179 (and tp!2273134 tp!2273135))))

(assert (=> b!7747063 (= tp!2273095 e!4593179)))

(declare-fun b!7747527 () Bool)

(declare-fun tp!2273137 () Bool)

(declare-fun tp!2273136 () Bool)

(assert (=> b!7747527 (= e!4593179 (and tp!2273137 tp!2273136))))

(declare-fun b!7747526 () Bool)

(assert (=> b!7747526 (= e!4593179 tp_is_empty!51535)))

(assert (= (and b!7747063 (is-ElementMatch!20590 (regTwo!41692 r!14126))) b!7747526))

(assert (= (and b!7747063 (is-Concat!29435 (regTwo!41692 r!14126))) b!7747527))

(assert (= (and b!7747063 (is-Star!20590 (regTwo!41692 r!14126))) b!7747528))

(assert (= (and b!7747063 (is-Union!20590 (regTwo!41692 r!14126))) b!7747529))

(declare-fun b!7747534 () Bool)

(declare-fun e!4593182 () Bool)

(declare-fun tp!2273141 () Bool)

(assert (=> b!7747534 (= e!4593182 (and tp_is_empty!51535 tp!2273141))))

(assert (=> b!7747067 (= tp!2273091 e!4593182)))

(assert (= (and b!7747067 (is-Cons!73313 (t!388172 s!9605))) b!7747534))

(declare-fun b!7747537 () Bool)

(declare-fun e!4593183 () Bool)

(declare-fun tp!2273146 () Bool)

(assert (=> b!7747537 (= e!4593183 tp!2273146)))

(declare-fun b!7747538 () Bool)

(declare-fun tp!2273142 () Bool)

(declare-fun tp!2273143 () Bool)

(assert (=> b!7747538 (= e!4593183 (and tp!2273142 tp!2273143))))

(assert (=> b!7747062 (= tp!2273093 e!4593183)))

(declare-fun b!7747536 () Bool)

(declare-fun tp!2273145 () Bool)

(declare-fun tp!2273144 () Bool)

(assert (=> b!7747536 (= e!4593183 (and tp!2273145 tp!2273144))))

(declare-fun b!7747535 () Bool)

(assert (=> b!7747535 (= e!4593183 tp_is_empty!51535)))

(assert (= (and b!7747062 (is-ElementMatch!20590 (regOne!41693 r!14126))) b!7747535))

(assert (= (and b!7747062 (is-Concat!29435 (regOne!41693 r!14126))) b!7747536))

(assert (= (and b!7747062 (is-Star!20590 (regOne!41693 r!14126))) b!7747537))

(assert (= (and b!7747062 (is-Union!20590 (regOne!41693 r!14126))) b!7747538))

(declare-fun b!7747541 () Bool)

(declare-fun e!4593184 () Bool)

(declare-fun tp!2273151 () Bool)

(assert (=> b!7747541 (= e!4593184 tp!2273151)))

(declare-fun b!7747542 () Bool)

(declare-fun tp!2273147 () Bool)

(declare-fun tp!2273148 () Bool)

(assert (=> b!7747542 (= e!4593184 (and tp!2273147 tp!2273148))))

(assert (=> b!7747062 (= tp!2273090 e!4593184)))

(declare-fun b!7747540 () Bool)

(declare-fun tp!2273150 () Bool)

(declare-fun tp!2273149 () Bool)

(assert (=> b!7747540 (= e!4593184 (and tp!2273150 tp!2273149))))

(declare-fun b!7747539 () Bool)

(assert (=> b!7747539 (= e!4593184 tp_is_empty!51535)))

(assert (= (and b!7747062 (is-ElementMatch!20590 (regTwo!41693 r!14126))) b!7747539))

(assert (= (and b!7747062 (is-Concat!29435 (regTwo!41693 r!14126))) b!7747540))

(assert (= (and b!7747062 (is-Star!20590 (regTwo!41693 r!14126))) b!7747541))

(assert (= (and b!7747062 (is-Union!20590 (regTwo!41693 r!14126))) b!7747542))

(declare-fun b_lambda!289413 () Bool)

(assert (= b_lambda!289411 (or b!7747071 b_lambda!289413)))

(declare-fun bs!1965614 () Bool)

(declare-fun d!2342361 () Bool)

(assert (= bs!1965614 (and d!2342361 b!7747071)))

(declare-fun res!3089107 () Bool)

(declare-fun e!4593185 () Bool)

(assert (=> bs!1965614 (=> (not res!3089107) (not e!4593185))))

(assert (=> bs!1965614 (= res!3089107 (= (++!17789 (_1!38120 lt!2668841) (_2!38120 lt!2668841)) s!9605))))

(assert (=> bs!1965614 (= (dynLambda!29982 lambda!471763 lt!2668841) e!4593185)))

(declare-fun b!7747543 () Bool)

(declare-fun res!3089108 () Bool)

(assert (=> b!7747543 (=> (not res!3089108) (not e!4593185))))

(assert (=> b!7747543 (= res!3089108 (matchRSpec!4655 (regOne!41692 r!14126) (_1!38120 lt!2668841)))))

(declare-fun b!7747544 () Bool)

(assert (=> b!7747544 (= e!4593185 (matchRSpec!4655 (regTwo!41692 r!14126) (_2!38120 lt!2668841)))))

(assert (= (and bs!1965614 res!3089107) b!7747543))

(assert (= (and b!7747543 res!3089108) b!7747544))

(declare-fun m!8214946 () Bool)

(assert (=> bs!1965614 m!8214946))

(declare-fun m!8214948 () Bool)

(assert (=> b!7747543 m!8214948))

(declare-fun m!8214950 () Bool)

(assert (=> b!7747544 m!8214950))

(assert (=> d!2342315 d!2342361))

(push 1)

(assert (not b!7747311))

(assert (not b!7747422))

(assert (not b!7747490))

(assert (not b!7747494))

(assert (not bm!718034))

(assert (not b!7747541))

(assert (not b!7747274))

(assert (not b!7747520))

(assert (not b!7747427))

(assert (not bm!718032))

(assert (not b!7747528))

(assert (not b!7747524))

(assert (not b!7747429))

(assert (not d!2342335))

(assert (not d!2342357))

(assert (not b!7747476))

(assert (not bm!718014))

(assert (not bm!718028))

(assert (not d!2342315))

(assert (not bm!718012))

(assert (not b!7747540))

(assert (not b_lambda!289413))

(assert (not b!7747419))

(assert (not b!7747501))

(assert (not b!7747293))

(assert (not b!7747348))

(assert (not b!7747282))

(assert (not b!7747544))

(assert (not b!7747300))

(assert (not b!7747485))

(assert (not b!7747537))

(assert (not b!7747294))

(assert (not b!7747303))

(assert (not b!7747449))

(assert (not b!7747519))

(assert (not b!7747450))

(assert tp_is_empty!51535)

(assert (not b!7747491))

(assert (not d!2342339))

(assert (not b!7747424))

(assert (not b!7747538))

(assert (not bm!718035))

(assert (not b!7747437))

(assert (not bs!1965614))

(assert (not d!2342327))

(assert (not b!7747543))

(assert (not b!7747506))

(assert (not b!7747430))

(assert (not d!2342359))

(assert (not b!7747527))

(assert (not bm!718029))

(assert (not b!7747493))

(assert (not b!7747284))

(assert (not b!7747536))

(assert (not bm!718031))

(assert (not d!2342313))

(assert (not d!2342337))

(assert (not b!7747207))

(assert (not d!2342323))

(assert (not bm!718003))

(assert (not bm!718022))

(assert (not b!7747478))

(assert (not d!2342341))

(assert (not bm!718015))

(assert (not b!7747301))

(assert (not b!7747418))

(assert (not b!7747479))

(assert (not b!7747529))

(assert (not b!7747475))

(assert (not b!7747534))

(assert (not b!7747439))

(assert (not bm!718013))

(assert (not b!7747271))

(assert (not d!2342353))

(assert (not d!2342331))

(assert (not d!2342329))

(assert (not bm!718002))

(assert (not b!7747421))

(assert (not b!7747313))

(assert (not d!2342347))

(assert (not b!7747523))

(assert (not b!7747503))

(assert (not b!7747206))

(assert (not b!7747474))

(assert (not b!7747426))

(assert (not b!7747425))

(assert (not b!7747456))

(assert (not b!7747272))

(assert (not b!7747525))

(assert (not b!7747275))

(assert (not bm!718024))

(assert (not b!7747304))

(assert (not b!7747505))

(assert (not b!7747521))

(assert (not b!7747542))

(assert (not d!2342303))

(assert (not d!2342325))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

