; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!723462 () Bool)

(assert start!723462)

(declare-fun b!7452583 () Bool)

(assert (=> b!7452583 true))

(assert (=> b!7452583 true))

(assert (=> b!7452583 true))

(declare-fun lambda!461017 () Int)

(declare-fun lambda!461016 () Int)

(assert (=> b!7452583 (not (= lambda!461017 lambda!461016))))

(assert (=> b!7452583 true))

(assert (=> b!7452583 true))

(assert (=> b!7452583 true))

(declare-fun b!7452568 () Bool)

(declare-fun e!4448418 () Bool)

(declare-fun tp_is_empty!49299 () Bool)

(assert (=> b!7452568 (= e!4448418 tp_is_empty!49299)))

(declare-fun b!7452569 () Bool)

(declare-fun tp!2159726 () Bool)

(declare-fun tp!2159737 () Bool)

(assert (=> b!7452569 (= e!4448418 (and tp!2159726 tp!2159737))))

(declare-fun b!7452570 () Bool)

(declare-fun e!4448413 () Bool)

(assert (=> b!7452570 (= e!4448413 tp_is_empty!49299)))

(declare-fun b!7452571 () Bool)

(declare-fun tp!2159730 () Bool)

(assert (=> b!7452571 (= e!4448418 tp!2159730)))

(declare-fun res!2989297 () Bool)

(declare-fun e!4448419 () Bool)

(assert (=> start!723462 (=> (not res!2989297) (not e!4448419))))

(declare-datatypes ((C!39284 0))(
  ( (C!39285 (val!30040 Int)) )
))
(declare-datatypes ((Regex!19505 0))(
  ( (ElementMatch!19505 (c!1377940 C!39284)) (Concat!28350 (regOne!39522 Regex!19505) (regTwo!39522 Regex!19505)) (EmptyExpr!19505) (Star!19505 (reg!19834 Regex!19505)) (EmptyLang!19505) (Union!19505 (regOne!39523 Regex!19505) (regTwo!39523 Regex!19505)) )
))
(declare-fun r1!5845 () Regex!19505)

(declare-fun validRegex!10019 (Regex!19505) Bool)

(assert (=> start!723462 (= res!2989297 (validRegex!10019 r1!5845))))

(assert (=> start!723462 e!4448419))

(assert (=> start!723462 e!4448418))

(declare-fun e!4448416 () Bool)

(assert (=> start!723462 e!4448416))

(assert (=> start!723462 e!4448413))

(declare-fun e!4448417 () Bool)

(assert (=> start!723462 e!4448417))

(declare-fun b!7452572 () Bool)

(declare-fun tp!2159734 () Bool)

(assert (=> b!7452572 (= e!4448416 tp!2159734)))

(declare-fun b!7452573 () Bool)

(assert (=> b!7452573 (= e!4448416 tp_is_empty!49299)))

(declare-fun b!7452574 () Bool)

(declare-fun e!4448414 () Bool)

(assert (=> b!7452574 (= e!4448419 (not e!4448414))))

(declare-fun res!2989298 () Bool)

(assert (=> b!7452574 (=> res!2989298 e!4448414)))

(declare-fun lt!2620775 () Bool)

(assert (=> b!7452574 (= res!2989298 (not lt!2620775))))

(declare-fun lt!2620765 () Regex!19505)

(declare-datatypes ((List!72221 0))(
  ( (Nil!72097) (Cons!72097 (h!78545 C!39284) (t!386790 List!72221)) )
))
(declare-fun s!13591 () List!72221)

(declare-fun matchR!9269 (Regex!19505 List!72221) Bool)

(declare-fun matchRSpec!4184 (Regex!19505 List!72221) Bool)

(assert (=> b!7452574 (= (matchR!9269 lt!2620765 s!13591) (matchRSpec!4184 lt!2620765 s!13591))))

(declare-datatypes ((Unit!165845 0))(
  ( (Unit!165846) )
))
(declare-fun lt!2620764 () Unit!165845)

(declare-fun mainMatchTheorem!4178 (Regex!19505 List!72221) Unit!165845)

(assert (=> b!7452574 (= lt!2620764 (mainMatchTheorem!4178 lt!2620765 s!13591))))

(declare-fun lt!2620772 () Regex!19505)

(assert (=> b!7452574 (= lt!2620775 (matchRSpec!4184 lt!2620772 s!13591))))

(assert (=> b!7452574 (= lt!2620775 (matchR!9269 lt!2620772 s!13591))))

(declare-fun lt!2620771 () Unit!165845)

(assert (=> b!7452574 (= lt!2620771 (mainMatchTheorem!4178 lt!2620772 s!13591))))

(declare-fun r2!5783 () Regex!19505)

(declare-fun lt!2620773 () Regex!19505)

(declare-fun rTail!78 () Regex!19505)

(assert (=> b!7452574 (= lt!2620765 (Union!19505 lt!2620773 (Concat!28350 r2!5783 rTail!78)))))

(assert (=> b!7452574 (= lt!2620773 (Concat!28350 r1!5845 rTail!78))))

(declare-fun lt!2620778 () Regex!19505)

(assert (=> b!7452574 (= lt!2620772 (Concat!28350 lt!2620778 rTail!78))))

(assert (=> b!7452574 (= lt!2620778 (Union!19505 r1!5845 r2!5783))))

(declare-fun b!7452575 () Bool)

(declare-fun tp!2159735 () Bool)

(declare-fun tp!2159729 () Bool)

(assert (=> b!7452575 (= e!4448418 (and tp!2159735 tp!2159729))))

(declare-fun b!7452576 () Bool)

(declare-fun tp!2159736 () Bool)

(assert (=> b!7452576 (= e!4448413 tp!2159736)))

(declare-fun b!7452577 () Bool)

(declare-fun tp!2159728 () Bool)

(declare-fun tp!2159724 () Bool)

(assert (=> b!7452577 (= e!4448413 (and tp!2159728 tp!2159724))))

(declare-fun b!7452578 () Bool)

(declare-fun tp!2159733 () Bool)

(assert (=> b!7452578 (= e!4448417 (and tp_is_empty!49299 tp!2159733))))

(declare-fun b!7452579 () Bool)

(declare-fun tp!2159731 () Bool)

(declare-fun tp!2159732 () Bool)

(assert (=> b!7452579 (= e!4448413 (and tp!2159731 tp!2159732))))

(declare-fun b!7452580 () Bool)

(declare-fun tp!2159739 () Bool)

(declare-fun tp!2159725 () Bool)

(assert (=> b!7452580 (= e!4448416 (and tp!2159739 tp!2159725))))

(declare-fun b!7452581 () Bool)

(declare-fun res!2989302 () Bool)

(declare-fun e!4448420 () Bool)

(assert (=> b!7452581 (=> res!2989302 e!4448420)))

(declare-datatypes ((tuple2!68464 0))(
  ( (tuple2!68465 (_1!37535 List!72221) (_2!37535 List!72221)) )
))
(declare-fun lt!2620777 () tuple2!68464)

(assert (=> b!7452581 (= res!2989302 (not (matchR!9269 rTail!78 (_2!37535 lt!2620777))))))

(declare-fun b!7452582 () Bool)

(declare-fun e!4448415 () Bool)

(assert (=> b!7452582 (= e!4448420 e!4448415)))

(declare-fun res!2989300 () Bool)

(assert (=> b!7452582 (=> res!2989300 e!4448415)))

(declare-fun lt!2620766 () Bool)

(declare-fun lt!2620776 () Bool)

(assert (=> b!7452582 (= res!2989300 (and (not lt!2620766) (not lt!2620776)))))

(assert (=> b!7452582 (= lt!2620776 (matchRSpec!4184 r2!5783 (_1!37535 lt!2620777)))))

(assert (=> b!7452582 (= lt!2620776 (matchR!9269 r2!5783 (_1!37535 lt!2620777)))))

(declare-fun lt!2620768 () Unit!165845)

(assert (=> b!7452582 (= lt!2620768 (mainMatchTheorem!4178 r2!5783 (_1!37535 lt!2620777)))))

(assert (=> b!7452582 (= lt!2620766 (matchRSpec!4184 r1!5845 (_1!37535 lt!2620777)))))

(assert (=> b!7452582 (= lt!2620766 (matchR!9269 r1!5845 (_1!37535 lt!2620777)))))

(declare-fun lt!2620769 () Unit!165845)

(assert (=> b!7452582 (= lt!2620769 (mainMatchTheorem!4178 r1!5845 (_1!37535 lt!2620777)))))

(assert (=> b!7452582 (matchRSpec!4184 rTail!78 (_2!37535 lt!2620777))))

(declare-fun lt!2620779 () Unit!165845)

(assert (=> b!7452582 (= lt!2620779 (mainMatchTheorem!4178 rTail!78 (_2!37535 lt!2620777)))))

(assert (=> b!7452582 (matchRSpec!4184 lt!2620778 (_1!37535 lt!2620777))))

(declare-fun lt!2620767 () Unit!165845)

(assert (=> b!7452582 (= lt!2620767 (mainMatchTheorem!4178 lt!2620778 (_1!37535 lt!2620777)))))

(assert (=> b!7452583 (= e!4448414 e!4448420)))

(declare-fun res!2989299 () Bool)

(assert (=> b!7452583 (=> res!2989299 e!4448420)))

(assert (=> b!7452583 (= res!2989299 (not (matchR!9269 lt!2620778 (_1!37535 lt!2620777))))))

(declare-datatypes ((Option!17064 0))(
  ( (None!17063) (Some!17063 (v!54192 tuple2!68464)) )
))
(declare-fun lt!2620774 () Option!17064)

(declare-fun get!25141 (Option!17064) tuple2!68464)

(assert (=> b!7452583 (= lt!2620777 (get!25141 lt!2620774))))

(declare-fun Exists!4126 (Int) Bool)

(assert (=> b!7452583 (= (Exists!4126 lambda!461016) (Exists!4126 lambda!461017))))

(declare-fun lt!2620762 () Unit!165845)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2462 (Regex!19505 Regex!19505 List!72221) Unit!165845)

(assert (=> b!7452583 (= lt!2620762 (lemmaExistCutMatchRandMatchRSpecEquivalent!2462 lt!2620778 rTail!78 s!13591))))

(declare-fun isDefined!13753 (Option!17064) Bool)

(assert (=> b!7452583 (= (isDefined!13753 lt!2620774) (Exists!4126 lambda!461016))))

(declare-fun findConcatSeparation!3186 (Regex!19505 Regex!19505 List!72221 List!72221 List!72221) Option!17064)

(assert (=> b!7452583 (= lt!2620774 (findConcatSeparation!3186 lt!2620778 rTail!78 Nil!72097 s!13591 s!13591))))

(declare-fun lt!2620770 () Unit!165845)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2944 (Regex!19505 Regex!19505 List!72221) Unit!165845)

(assert (=> b!7452583 (= lt!2620770 (lemmaFindConcatSeparationEquivalentToExists!2944 lt!2620778 rTail!78 s!13591))))

(declare-fun b!7452584 () Bool)

(declare-fun tp!2159727 () Bool)

(declare-fun tp!2159738 () Bool)

(assert (=> b!7452584 (= e!4448416 (and tp!2159727 tp!2159738))))

(declare-fun b!7452585 () Bool)

(declare-fun res!2989296 () Bool)

(assert (=> b!7452585 (=> (not res!2989296) (not e!4448419))))

(assert (=> b!7452585 (= res!2989296 (validRegex!10019 r2!5783))))

(declare-fun b!7452586 () Bool)

(assert (=> b!7452586 (= e!4448415 true)))

(assert (=> b!7452586 (= (matchR!9269 lt!2620773 s!13591) (matchRSpec!4184 lt!2620773 s!13591))))

(declare-fun lt!2620763 () Unit!165845)

(assert (=> b!7452586 (= lt!2620763 (mainMatchTheorem!4178 lt!2620773 s!13591))))

(declare-fun b!7452587 () Bool)

(declare-fun res!2989301 () Bool)

(assert (=> b!7452587 (=> (not res!2989301) (not e!4448419))))

(assert (=> b!7452587 (= res!2989301 (validRegex!10019 rTail!78))))

(assert (= (and start!723462 res!2989297) b!7452585))

(assert (= (and b!7452585 res!2989296) b!7452587))

(assert (= (and b!7452587 res!2989301) b!7452574))

(assert (= (and b!7452574 (not res!2989298)) b!7452583))

(assert (= (and b!7452583 (not res!2989299)) b!7452581))

(assert (= (and b!7452581 (not res!2989302)) b!7452582))

(assert (= (and b!7452582 (not res!2989300)) b!7452586))

(get-info :version)

(assert (= (and start!723462 ((_ is ElementMatch!19505) r1!5845)) b!7452568))

(assert (= (and start!723462 ((_ is Concat!28350) r1!5845)) b!7452569))

(assert (= (and start!723462 ((_ is Star!19505) r1!5845)) b!7452571))

(assert (= (and start!723462 ((_ is Union!19505) r1!5845)) b!7452575))

(assert (= (and start!723462 ((_ is ElementMatch!19505) r2!5783)) b!7452573))

(assert (= (and start!723462 ((_ is Concat!28350) r2!5783)) b!7452580))

(assert (= (and start!723462 ((_ is Star!19505) r2!5783)) b!7452572))

(assert (= (and start!723462 ((_ is Union!19505) r2!5783)) b!7452584))

(assert (= (and start!723462 ((_ is ElementMatch!19505) rTail!78)) b!7452570))

(assert (= (and start!723462 ((_ is Concat!28350) rTail!78)) b!7452579))

(assert (= (and start!723462 ((_ is Star!19505) rTail!78)) b!7452576))

(assert (= (and start!723462 ((_ is Union!19505) rTail!78)) b!7452577))

(assert (= (and start!723462 ((_ is Cons!72097) s!13591)) b!7452578))

(declare-fun m!8057842 () Bool)

(assert (=> b!7452586 m!8057842))

(declare-fun m!8057844 () Bool)

(assert (=> b!7452586 m!8057844))

(declare-fun m!8057846 () Bool)

(assert (=> b!7452586 m!8057846))

(declare-fun m!8057848 () Bool)

(assert (=> b!7452581 m!8057848))

(declare-fun m!8057850 () Bool)

(assert (=> b!7452583 m!8057850))

(declare-fun m!8057852 () Bool)

(assert (=> b!7452583 m!8057852))

(declare-fun m!8057854 () Bool)

(assert (=> b!7452583 m!8057854))

(declare-fun m!8057856 () Bool)

(assert (=> b!7452583 m!8057856))

(declare-fun m!8057858 () Bool)

(assert (=> b!7452583 m!8057858))

(declare-fun m!8057860 () Bool)

(assert (=> b!7452583 m!8057860))

(declare-fun m!8057862 () Bool)

(assert (=> b!7452583 m!8057862))

(declare-fun m!8057864 () Bool)

(assert (=> b!7452583 m!8057864))

(assert (=> b!7452583 m!8057862))

(declare-fun m!8057866 () Bool)

(assert (=> b!7452587 m!8057866))

(declare-fun m!8057868 () Bool)

(assert (=> b!7452582 m!8057868))

(declare-fun m!8057870 () Bool)

(assert (=> b!7452582 m!8057870))

(declare-fun m!8057872 () Bool)

(assert (=> b!7452582 m!8057872))

(declare-fun m!8057874 () Bool)

(assert (=> b!7452582 m!8057874))

(declare-fun m!8057876 () Bool)

(assert (=> b!7452582 m!8057876))

(declare-fun m!8057878 () Bool)

(assert (=> b!7452582 m!8057878))

(declare-fun m!8057880 () Bool)

(assert (=> b!7452582 m!8057880))

(declare-fun m!8057882 () Bool)

(assert (=> b!7452582 m!8057882))

(declare-fun m!8057884 () Bool)

(assert (=> b!7452582 m!8057884))

(declare-fun m!8057886 () Bool)

(assert (=> b!7452582 m!8057886))

(declare-fun m!8057888 () Bool)

(assert (=> b!7452585 m!8057888))

(declare-fun m!8057890 () Bool)

(assert (=> start!723462 m!8057890))

(declare-fun m!8057892 () Bool)

(assert (=> b!7452574 m!8057892))

(declare-fun m!8057894 () Bool)

(assert (=> b!7452574 m!8057894))

(declare-fun m!8057896 () Bool)

(assert (=> b!7452574 m!8057896))

(declare-fun m!8057898 () Bool)

(assert (=> b!7452574 m!8057898))

(declare-fun m!8057900 () Bool)

(assert (=> b!7452574 m!8057900))

(declare-fun m!8057902 () Bool)

(assert (=> b!7452574 m!8057902))

(check-sat (not b!7452569) (not b!7452584) (not b!7452579) (not b!7452581) (not b!7452576) (not b!7452586) (not b!7452583) (not b!7452585) (not b!7452578) (not b!7452572) tp_is_empty!49299 (not b!7452580) (not b!7452575) (not b!7452574) (not b!7452587) (not start!723462) (not b!7452577) (not b!7452571) (not b!7452582))
(check-sat)
