; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!724866 () Bool)

(assert start!724866)

(declare-fun b!7482830 () Bool)

(assert (=> b!7482830 true))

(assert (=> b!7482830 true))

(assert (=> b!7482830 true))

(declare-fun lambda!463741 () Int)

(declare-fun lambda!463740 () Int)

(assert (=> b!7482830 (not (= lambda!463741 lambda!463740))))

(assert (=> b!7482830 true))

(assert (=> b!7482830 true))

(assert (=> b!7482830 true))

(declare-fun bs!1933685 () Bool)

(declare-fun b!7482827 () Bool)

(assert (= bs!1933685 (and b!7482827 b!7482830)))

(declare-datatypes ((C!39508 0))(
  ( (C!39509 (val!30152 Int)) )
))
(declare-datatypes ((Regex!19617 0))(
  ( (ElementMatch!19617 (c!1382090 C!39508)) (Concat!28462 (regOne!39746 Regex!19617) (regTwo!39746 Regex!19617)) (EmptyExpr!19617) (Star!19617 (reg!19946 Regex!19617)) (EmptyLang!19617) (Union!19617 (regOne!39747 Regex!19617) (regTwo!39747 Regex!19617)) )
))
(declare-fun r2!5783 () Regex!19617)

(declare-fun lt!2628581 () Regex!19617)

(declare-fun lambda!463742 () Int)

(assert (=> bs!1933685 (= (= r2!5783 lt!2628581) (= lambda!463742 lambda!463740))))

(assert (=> bs!1933685 (not (= lambda!463742 lambda!463741))))

(assert (=> b!7482827 true))

(assert (=> b!7482827 true))

(assert (=> b!7482827 true))

(declare-fun lambda!463743 () Int)

(assert (=> bs!1933685 (not (= lambda!463743 lambda!463740))))

(assert (=> bs!1933685 (= (= r2!5783 lt!2628581) (= lambda!463743 lambda!463741))))

(assert (=> b!7482827 (not (= lambda!463743 lambda!463742))))

(assert (=> b!7482827 true))

(assert (=> b!7482827 true))

(assert (=> b!7482827 true))

(declare-fun b!7482824 () Bool)

(declare-fun e!4463190 () Bool)

(declare-fun tp!2170383 () Bool)

(declare-fun tp!2170395 () Bool)

(assert (=> b!7482824 (= e!4463190 (and tp!2170383 tp!2170395))))

(declare-fun b!7482825 () Bool)

(declare-fun res!3002174 () Bool)

(declare-fun e!4463182 () Bool)

(assert (=> b!7482825 (=> (not res!3002174) (not e!4463182))))

(declare-fun rTail!78 () Regex!19617)

(declare-fun validRegex!10131 (Regex!19617) Bool)

(assert (=> b!7482825 (= res!3002174 (validRegex!10131 rTail!78))))

(declare-fun b!7482826 () Bool)

(declare-fun tp!2170391 () Bool)

(declare-fun tp!2170386 () Bool)

(assert (=> b!7482826 (= e!4463190 (and tp!2170391 tp!2170386))))

(declare-fun e!4463183 () Bool)

(declare-fun e!4463184 () Bool)

(assert (=> b!7482827 (= e!4463183 e!4463184)))

(declare-fun res!3002170 () Bool)

(assert (=> b!7482827 (=> res!3002170 e!4463184)))

(declare-datatypes ((List!72333 0))(
  ( (Nil!72209) (Cons!72209 (h!78657 C!39508) (t!386902 List!72333)) )
))
(declare-datatypes ((tuple2!68684 0))(
  ( (tuple2!68685 (_1!37645 List!72333) (_2!37645 List!72333)) )
))
(declare-fun lt!2628569 () tuple2!68684)

(declare-fun matchR!9381 (Regex!19617 List!72333) Bool)

(assert (=> b!7482827 (= res!3002170 (not (matchR!9381 r2!5783 (_1!37645 lt!2628569))))))

(declare-datatypes ((Option!17174 0))(
  ( (None!17173) (Some!17173 (v!54302 tuple2!68684)) )
))
(declare-fun lt!2628576 () Option!17174)

(declare-fun get!25289 (Option!17174) tuple2!68684)

(assert (=> b!7482827 (= lt!2628569 (get!25289 lt!2628576))))

(declare-fun Exists!4236 (Int) Bool)

(assert (=> b!7482827 (= (Exists!4236 lambda!463742) (Exists!4236 lambda!463743))))

(declare-fun s!13591 () List!72333)

(declare-datatypes ((Unit!166069 0))(
  ( (Unit!166070) )
))
(declare-fun lt!2628570 () Unit!166069)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2570 (Regex!19617 Regex!19617 List!72333) Unit!166069)

(assert (=> b!7482827 (= lt!2628570 (lemmaExistCutMatchRandMatchRSpecEquivalent!2570 r2!5783 rTail!78 s!13591))))

(declare-fun isDefined!13863 (Option!17174) Bool)

(assert (=> b!7482827 (= (isDefined!13863 lt!2628576) (Exists!4236 lambda!463742))))

(declare-fun findConcatSeparation!3296 (Regex!19617 Regex!19617 List!72333 List!72333 List!72333) Option!17174)

(assert (=> b!7482827 (= lt!2628576 (findConcatSeparation!3296 r2!5783 rTail!78 Nil!72209 s!13591 s!13591))))

(declare-fun lt!2628575 () Unit!166069)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3054 (Regex!19617 Regex!19617 List!72333) Unit!166069)

(assert (=> b!7482827 (= lt!2628575 (lemmaFindConcatSeparationEquivalentToExists!3054 r2!5783 rTail!78 s!13591))))

(declare-fun b!7482828 () Bool)

(declare-fun e!4463185 () Bool)

(assert (=> b!7482828 (= e!4463185 e!4463183)))

(declare-fun res!3002169 () Bool)

(assert (=> b!7482828 (=> res!3002169 e!4463183)))

(declare-fun lt!2628566 () Bool)

(declare-fun lt!2628563 () Bool)

(assert (=> b!7482828 (= res!3002169 (or (and (not lt!2628566) (not lt!2628563)) lt!2628566))))

(declare-fun lt!2628573 () Regex!19617)

(declare-fun matchRSpec!4296 (Regex!19617 List!72333) Bool)

(assert (=> b!7482828 (= lt!2628563 (matchRSpec!4296 lt!2628573 s!13591))))

(assert (=> b!7482828 (= lt!2628563 (matchR!9381 lt!2628573 s!13591))))

(declare-fun lt!2628572 () Unit!166069)

(declare-fun mainMatchTheorem!4290 (Regex!19617 List!72333) Unit!166069)

(assert (=> b!7482828 (= lt!2628572 (mainMatchTheorem!4290 lt!2628573 s!13591))))

(declare-fun lt!2628574 () Regex!19617)

(assert (=> b!7482828 (= lt!2628566 (matchRSpec!4296 lt!2628574 s!13591))))

(assert (=> b!7482828 (= lt!2628566 (matchR!9381 lt!2628574 s!13591))))

(declare-fun lt!2628564 () Unit!166069)

(assert (=> b!7482828 (= lt!2628564 (mainMatchTheorem!4290 lt!2628574 s!13591))))

(declare-fun e!4463188 () Bool)

(assert (=> b!7482830 (= e!4463188 e!4463185)))

(declare-fun res!3002173 () Bool)

(assert (=> b!7482830 (=> res!3002173 e!4463185)))

(declare-fun lt!2628571 () Bool)

(declare-fun lt!2628577 () Bool)

(assert (=> b!7482830 (= res!3002173 (or lt!2628571 (not lt!2628577)))))

(assert (=> b!7482830 (= (Exists!4236 lambda!463740) (Exists!4236 lambda!463741))))

(declare-fun lt!2628565 () Unit!166069)

(assert (=> b!7482830 (= lt!2628565 (lemmaExistCutMatchRandMatchRSpecEquivalent!2570 lt!2628581 rTail!78 s!13591))))

(assert (=> b!7482830 (= lt!2628571 (Exists!4236 lambda!463740))))

(assert (=> b!7482830 (= lt!2628571 (isDefined!13863 (findConcatSeparation!3296 lt!2628581 rTail!78 Nil!72209 s!13591 s!13591)))))

(declare-fun lt!2628562 () Unit!166069)

(assert (=> b!7482830 (= lt!2628562 (lemmaFindConcatSeparationEquivalentToExists!3054 lt!2628581 rTail!78 s!13591))))

(declare-fun b!7482831 () Bool)

(declare-fun tp!2170380 () Bool)

(assert (=> b!7482831 (= e!4463190 tp!2170380)))

(declare-fun b!7482832 () Bool)

(declare-fun e!4463187 () Bool)

(declare-fun tp!2170390 () Bool)

(assert (=> b!7482832 (= e!4463187 tp!2170390)))

(declare-fun b!7482833 () Bool)

(assert (=> b!7482833 (= e!4463182 (not e!4463188))))

(declare-fun res!3002168 () Bool)

(assert (=> b!7482833 (=> res!3002168 e!4463188)))

(declare-fun lt!2628568 () Bool)

(assert (=> b!7482833 (= res!3002168 lt!2628568)))

(declare-fun lt!2628580 () Regex!19617)

(assert (=> b!7482833 (= lt!2628577 (matchRSpec!4296 lt!2628580 s!13591))))

(assert (=> b!7482833 (= lt!2628577 (matchR!9381 lt!2628580 s!13591))))

(declare-fun lt!2628567 () Unit!166069)

(assert (=> b!7482833 (= lt!2628567 (mainMatchTheorem!4290 lt!2628580 s!13591))))

(declare-fun lt!2628579 () Regex!19617)

(assert (=> b!7482833 (= lt!2628568 (matchRSpec!4296 lt!2628579 s!13591))))

(assert (=> b!7482833 (= lt!2628568 (matchR!9381 lt!2628579 s!13591))))

(declare-fun lt!2628578 () Unit!166069)

(assert (=> b!7482833 (= lt!2628578 (mainMatchTheorem!4290 lt!2628579 s!13591))))

(assert (=> b!7482833 (= lt!2628580 (Union!19617 lt!2628574 lt!2628573))))

(assert (=> b!7482833 (= lt!2628573 (Concat!28462 r2!5783 rTail!78))))

(declare-fun r1!5845 () Regex!19617)

(assert (=> b!7482833 (= lt!2628574 (Concat!28462 r1!5845 rTail!78))))

(assert (=> b!7482833 (= lt!2628579 (Concat!28462 lt!2628581 rTail!78))))

(assert (=> b!7482833 (= lt!2628581 (Union!19617 r1!5845 r2!5783))))

(declare-fun b!7482834 () Bool)

(declare-fun e!4463189 () Bool)

(declare-fun tp_is_empty!49523 () Bool)

(declare-fun tp!2170388 () Bool)

(assert (=> b!7482834 (= e!4463189 (and tp_is_empty!49523 tp!2170388))))

(declare-fun b!7482835 () Bool)

(declare-fun tp!2170389 () Bool)

(declare-fun tp!2170393 () Bool)

(assert (=> b!7482835 (= e!4463187 (and tp!2170389 tp!2170393))))

(declare-fun b!7482836 () Bool)

(declare-fun e!4463186 () Bool)

(declare-fun tp!2170381 () Bool)

(declare-fun tp!2170394 () Bool)

(assert (=> b!7482836 (= e!4463186 (and tp!2170381 tp!2170394))))

(declare-fun res!3002171 () Bool)

(assert (=> start!724866 (=> (not res!3002171) (not e!4463182))))

(assert (=> start!724866 (= res!3002171 (validRegex!10131 r1!5845))))

(assert (=> start!724866 e!4463182))

(assert (=> start!724866 e!4463190))

(assert (=> start!724866 e!4463187))

(assert (=> start!724866 e!4463186))

(assert (=> start!724866 e!4463189))

(declare-fun b!7482829 () Bool)

(assert (=> b!7482829 (= e!4463184 (matchR!9381 rTail!78 (_2!37645 lt!2628569)))))

(declare-fun b!7482837 () Bool)

(assert (=> b!7482837 (= e!4463186 tp_is_empty!49523)))

(declare-fun b!7482838 () Bool)

(assert (=> b!7482838 (= e!4463190 tp_is_empty!49523)))

(declare-fun b!7482839 () Bool)

(declare-fun tp!2170384 () Bool)

(declare-fun tp!2170392 () Bool)

(assert (=> b!7482839 (= e!4463187 (and tp!2170384 tp!2170392))))

(declare-fun b!7482840 () Bool)

(declare-fun tp!2170382 () Bool)

(declare-fun tp!2170385 () Bool)

(assert (=> b!7482840 (= e!4463186 (and tp!2170382 tp!2170385))))

(declare-fun b!7482841 () Bool)

(declare-fun tp!2170387 () Bool)

(assert (=> b!7482841 (= e!4463186 tp!2170387)))

(declare-fun b!7482842 () Bool)

(assert (=> b!7482842 (= e!4463187 tp_is_empty!49523)))

(declare-fun b!7482843 () Bool)

(declare-fun res!3002172 () Bool)

(assert (=> b!7482843 (=> (not res!3002172) (not e!4463182))))

(assert (=> b!7482843 (= res!3002172 (validRegex!10131 r2!5783))))

(assert (= (and start!724866 res!3002171) b!7482843))

(assert (= (and b!7482843 res!3002172) b!7482825))

(assert (= (and b!7482825 res!3002174) b!7482833))

(assert (= (and b!7482833 (not res!3002168)) b!7482830))

(assert (= (and b!7482830 (not res!3002173)) b!7482828))

(assert (= (and b!7482828 (not res!3002169)) b!7482827))

(assert (= (and b!7482827 (not res!3002170)) b!7482829))

(get-info :version)

(assert (= (and start!724866 ((_ is ElementMatch!19617) r1!5845)) b!7482838))

(assert (= (and start!724866 ((_ is Concat!28462) r1!5845)) b!7482824))

(assert (= (and start!724866 ((_ is Star!19617) r1!5845)) b!7482831))

(assert (= (and start!724866 ((_ is Union!19617) r1!5845)) b!7482826))

(assert (= (and start!724866 ((_ is ElementMatch!19617) r2!5783)) b!7482842))

(assert (= (and start!724866 ((_ is Concat!28462) r2!5783)) b!7482839))

(assert (= (and start!724866 ((_ is Star!19617) r2!5783)) b!7482832))

(assert (= (and start!724866 ((_ is Union!19617) r2!5783)) b!7482835))

(assert (= (and start!724866 ((_ is ElementMatch!19617) rTail!78)) b!7482837))

(assert (= (and start!724866 ((_ is Concat!28462) rTail!78)) b!7482836))

(assert (= (and start!724866 ((_ is Star!19617) rTail!78)) b!7482841))

(assert (= (and start!724866 ((_ is Union!19617) rTail!78)) b!7482840))

(assert (= (and start!724866 ((_ is Cons!72209) s!13591)) b!7482834))

(declare-fun m!8074136 () Bool)

(assert (=> b!7482833 m!8074136))

(declare-fun m!8074138 () Bool)

(assert (=> b!7482833 m!8074138))

(declare-fun m!8074140 () Bool)

(assert (=> b!7482833 m!8074140))

(declare-fun m!8074142 () Bool)

(assert (=> b!7482833 m!8074142))

(declare-fun m!8074144 () Bool)

(assert (=> b!7482833 m!8074144))

(declare-fun m!8074146 () Bool)

(assert (=> b!7482833 m!8074146))

(declare-fun m!8074148 () Bool)

(assert (=> b!7482828 m!8074148))

(declare-fun m!8074150 () Bool)

(assert (=> b!7482828 m!8074150))

(declare-fun m!8074152 () Bool)

(assert (=> b!7482828 m!8074152))

(declare-fun m!8074154 () Bool)

(assert (=> b!7482828 m!8074154))

(declare-fun m!8074156 () Bool)

(assert (=> b!7482828 m!8074156))

(declare-fun m!8074158 () Bool)

(assert (=> b!7482828 m!8074158))

(declare-fun m!8074160 () Bool)

(assert (=> b!7482827 m!8074160))

(declare-fun m!8074162 () Bool)

(assert (=> b!7482827 m!8074162))

(declare-fun m!8074164 () Bool)

(assert (=> b!7482827 m!8074164))

(assert (=> b!7482827 m!8074160))

(declare-fun m!8074166 () Bool)

(assert (=> b!7482827 m!8074166))

(declare-fun m!8074168 () Bool)

(assert (=> b!7482827 m!8074168))

(declare-fun m!8074170 () Bool)

(assert (=> b!7482827 m!8074170))

(declare-fun m!8074172 () Bool)

(assert (=> b!7482827 m!8074172))

(declare-fun m!8074174 () Bool)

(assert (=> b!7482827 m!8074174))

(declare-fun m!8074176 () Bool)

(assert (=> b!7482825 m!8074176))

(declare-fun m!8074178 () Bool)

(assert (=> start!724866 m!8074178))

(declare-fun m!8074180 () Bool)

(assert (=> b!7482830 m!8074180))

(declare-fun m!8074182 () Bool)

(assert (=> b!7482830 m!8074182))

(declare-fun m!8074184 () Bool)

(assert (=> b!7482830 m!8074184))

(declare-fun m!8074186 () Bool)

(assert (=> b!7482830 m!8074186))

(assert (=> b!7482830 m!8074184))

(declare-fun m!8074188 () Bool)

(assert (=> b!7482830 m!8074188))

(assert (=> b!7482830 m!8074182))

(declare-fun m!8074190 () Bool)

(assert (=> b!7482830 m!8074190))

(declare-fun m!8074192 () Bool)

(assert (=> b!7482843 m!8074192))

(declare-fun m!8074194 () Bool)

(assert (=> b!7482829 m!8074194))

(check-sat (not b!7482843) (not b!7482825) (not b!7482827) (not b!7482839) (not b!7482836) tp_is_empty!49523 (not b!7482829) (not b!7482824) (not b!7482835) (not b!7482832) (not b!7482840) (not b!7482833) (not b!7482826) (not b!7482830) (not b!7482834) (not b!7482831) (not start!724866) (not b!7482841) (not b!7482828))
(check-sat)
(get-model)

(declare-fun b!7482866 () Bool)

(declare-fun e!4463205 () Bool)

(declare-fun call!686929 () Bool)

(assert (=> b!7482866 (= e!4463205 call!686929)))

(declare-fun b!7482867 () Bool)

(declare-fun res!3002188 () Bool)

(declare-fun e!4463206 () Bool)

(assert (=> b!7482867 (=> (not res!3002188) (not e!4463206))))

(declare-fun call!686931 () Bool)

(assert (=> b!7482867 (= res!3002188 call!686931)))

(declare-fun e!4463209 () Bool)

(assert (=> b!7482867 (= e!4463209 e!4463206)))

(declare-fun bm!686924 () Bool)

(assert (=> bm!686924 (= call!686931 call!686929)))

(declare-fun b!7482868 () Bool)

(declare-fun e!4463211 () Bool)

(assert (=> b!7482868 (= e!4463211 e!4463205)))

(declare-fun res!3002187 () Bool)

(declare-fun nullable!8554 (Regex!19617) Bool)

(assert (=> b!7482868 (= res!3002187 (not (nullable!8554 (reg!19946 rTail!78))))))

(assert (=> b!7482868 (=> (not res!3002187) (not e!4463205))))

(declare-fun d!2300370 () Bool)

(declare-fun res!3002186 () Bool)

(declare-fun e!4463210 () Bool)

(assert (=> d!2300370 (=> res!3002186 e!4463210)))

(assert (=> d!2300370 (= res!3002186 ((_ is ElementMatch!19617) rTail!78))))

(assert (=> d!2300370 (= (validRegex!10131 rTail!78) e!4463210)))

(declare-fun b!7482869 () Bool)

(declare-fun e!4463208 () Bool)

(declare-fun e!4463207 () Bool)

(assert (=> b!7482869 (= e!4463208 e!4463207)))

(declare-fun res!3002185 () Bool)

(assert (=> b!7482869 (=> (not res!3002185) (not e!4463207))))

(assert (=> b!7482869 (= res!3002185 call!686931)))

(declare-fun b!7482870 () Bool)

(assert (=> b!7482870 (= e!4463211 e!4463209)))

(declare-fun c!1382096 () Bool)

(assert (=> b!7482870 (= c!1382096 ((_ is Union!19617) rTail!78))))

(declare-fun b!7482871 () Bool)

(declare-fun call!686930 () Bool)

(assert (=> b!7482871 (= e!4463206 call!686930)))

(declare-fun b!7482872 () Bool)

(declare-fun res!3002189 () Bool)

(assert (=> b!7482872 (=> res!3002189 e!4463208)))

(assert (=> b!7482872 (= res!3002189 (not ((_ is Concat!28462) rTail!78)))))

(assert (=> b!7482872 (= e!4463209 e!4463208)))

(declare-fun b!7482873 () Bool)

(assert (=> b!7482873 (= e!4463207 call!686930)))

(declare-fun c!1382095 () Bool)

(declare-fun bm!686925 () Bool)

(assert (=> bm!686925 (= call!686929 (validRegex!10131 (ite c!1382095 (reg!19946 rTail!78) (ite c!1382096 (regOne!39747 rTail!78) (regOne!39746 rTail!78)))))))

(declare-fun b!7482874 () Bool)

(assert (=> b!7482874 (= e!4463210 e!4463211)))

(assert (=> b!7482874 (= c!1382095 ((_ is Star!19617) rTail!78))))

(declare-fun bm!686926 () Bool)

(assert (=> bm!686926 (= call!686930 (validRegex!10131 (ite c!1382096 (regTwo!39747 rTail!78) (regTwo!39746 rTail!78))))))

(assert (= (and d!2300370 (not res!3002186)) b!7482874))

(assert (= (and b!7482874 c!1382095) b!7482868))

(assert (= (and b!7482874 (not c!1382095)) b!7482870))

(assert (= (and b!7482868 res!3002187) b!7482866))

(assert (= (and b!7482870 c!1382096) b!7482867))

(assert (= (and b!7482870 (not c!1382096)) b!7482872))

(assert (= (and b!7482867 res!3002188) b!7482871))

(assert (= (and b!7482872 (not res!3002189)) b!7482869))

(assert (= (and b!7482869 res!3002185) b!7482873))

(assert (= (or b!7482871 b!7482873) bm!686926))

(assert (= (or b!7482867 b!7482869) bm!686924))

(assert (= (or b!7482866 bm!686924) bm!686925))

(declare-fun m!8074196 () Bool)

(assert (=> b!7482868 m!8074196))

(declare-fun m!8074198 () Bool)

(assert (=> bm!686925 m!8074198))

(declare-fun m!8074200 () Bool)

(assert (=> bm!686926 m!8074200))

(assert (=> b!7482825 d!2300370))

(declare-fun d!2300374 () Bool)

(declare-fun choose!57850 (Int) Bool)

(assert (=> d!2300374 (= (Exists!4236 lambda!463741) (choose!57850 lambda!463741))))

(declare-fun bs!1933686 () Bool)

(assert (= bs!1933686 d!2300374))

(declare-fun m!8074202 () Bool)

(assert (=> bs!1933686 m!8074202))

(assert (=> b!7482830 d!2300374))

(declare-fun b!7482953 () Bool)

(declare-fun res!3002233 () Bool)

(declare-fun e!4463265 () Bool)

(assert (=> b!7482953 (=> (not res!3002233) (not e!4463265))))

(declare-fun lt!2628594 () Option!17174)

(assert (=> b!7482953 (= res!3002233 (matchR!9381 rTail!78 (_2!37645 (get!25289 lt!2628594))))))

(declare-fun b!7482954 () Bool)

(declare-fun e!4463266 () Option!17174)

(assert (=> b!7482954 (= e!4463266 None!17173)))

(declare-fun b!7482955 () Bool)

(declare-fun e!4463263 () Option!17174)

(assert (=> b!7482955 (= e!4463263 e!4463266)))

(declare-fun c!1382116 () Bool)

(assert (=> b!7482955 (= c!1382116 ((_ is Nil!72209) s!13591))))

(declare-fun b!7482956 () Bool)

(declare-fun lt!2628593 () Unit!166069)

(declare-fun lt!2628595 () Unit!166069)

(assert (=> b!7482956 (= lt!2628593 lt!2628595)))

(declare-fun ++!17230 (List!72333 List!72333) List!72333)

(assert (=> b!7482956 (= (++!17230 (++!17230 Nil!72209 (Cons!72209 (h!78657 s!13591) Nil!72209)) (t!386902 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3106 (List!72333 C!39508 List!72333 List!72333) Unit!166069)

(assert (=> b!7482956 (= lt!2628595 (lemmaMoveElementToOtherListKeepsConcatEq!3106 Nil!72209 (h!78657 s!13591) (t!386902 s!13591) s!13591))))

(assert (=> b!7482956 (= e!4463266 (findConcatSeparation!3296 lt!2628581 rTail!78 (++!17230 Nil!72209 (Cons!72209 (h!78657 s!13591) Nil!72209)) (t!386902 s!13591) s!13591))))

(declare-fun d!2300376 () Bool)

(declare-fun e!4463264 () Bool)

(assert (=> d!2300376 e!4463264))

(declare-fun res!3002230 () Bool)

(assert (=> d!2300376 (=> res!3002230 e!4463264)))

(assert (=> d!2300376 (= res!3002230 e!4463265)))

(declare-fun res!3002235 () Bool)

(assert (=> d!2300376 (=> (not res!3002235) (not e!4463265))))

(assert (=> d!2300376 (= res!3002235 (isDefined!13863 lt!2628594))))

(assert (=> d!2300376 (= lt!2628594 e!4463263)))

(declare-fun c!1382115 () Bool)

(declare-fun e!4463262 () Bool)

(assert (=> d!2300376 (= c!1382115 e!4463262)))

(declare-fun res!3002236 () Bool)

(assert (=> d!2300376 (=> (not res!3002236) (not e!4463262))))

(assert (=> d!2300376 (= res!3002236 (matchR!9381 lt!2628581 Nil!72209))))

(assert (=> d!2300376 (validRegex!10131 lt!2628581)))

(assert (=> d!2300376 (= (findConcatSeparation!3296 lt!2628581 rTail!78 Nil!72209 s!13591 s!13591) lt!2628594)))

(declare-fun b!7482957 () Bool)

(assert (=> b!7482957 (= e!4463265 (= (++!17230 (_1!37645 (get!25289 lt!2628594)) (_2!37645 (get!25289 lt!2628594))) s!13591))))

(declare-fun b!7482958 () Bool)

(assert (=> b!7482958 (= e!4463264 (not (isDefined!13863 lt!2628594)))))

(declare-fun b!7482959 () Bool)

(declare-fun res!3002234 () Bool)

(assert (=> b!7482959 (=> (not res!3002234) (not e!4463265))))

(assert (=> b!7482959 (= res!3002234 (matchR!9381 lt!2628581 (_1!37645 (get!25289 lt!2628594))))))

(declare-fun b!7482960 () Bool)

(assert (=> b!7482960 (= e!4463262 (matchR!9381 rTail!78 s!13591))))

(declare-fun b!7482961 () Bool)

(assert (=> b!7482961 (= e!4463263 (Some!17173 (tuple2!68685 Nil!72209 s!13591)))))

(assert (= (and d!2300376 res!3002236) b!7482960))

(assert (= (and d!2300376 c!1382115) b!7482961))

(assert (= (and d!2300376 (not c!1382115)) b!7482955))

(assert (= (and b!7482955 c!1382116) b!7482954))

(assert (= (and b!7482955 (not c!1382116)) b!7482956))

(assert (= (and d!2300376 res!3002235) b!7482959))

(assert (= (and b!7482959 res!3002234) b!7482953))

(assert (= (and b!7482953 res!3002233) b!7482957))

(assert (= (and d!2300376 (not res!3002230)) b!7482958))

(declare-fun m!8074220 () Bool)

(assert (=> b!7482957 m!8074220))

(declare-fun m!8074222 () Bool)

(assert (=> b!7482957 m!8074222))

(declare-fun m!8074224 () Bool)

(assert (=> d!2300376 m!8074224))

(declare-fun m!8074226 () Bool)

(assert (=> d!2300376 m!8074226))

(declare-fun m!8074228 () Bool)

(assert (=> d!2300376 m!8074228))

(assert (=> b!7482953 m!8074220))

(declare-fun m!8074230 () Bool)

(assert (=> b!7482953 m!8074230))

(declare-fun m!8074232 () Bool)

(assert (=> b!7482960 m!8074232))

(declare-fun m!8074234 () Bool)

(assert (=> b!7482956 m!8074234))

(assert (=> b!7482956 m!8074234))

(declare-fun m!8074236 () Bool)

(assert (=> b!7482956 m!8074236))

(declare-fun m!8074238 () Bool)

(assert (=> b!7482956 m!8074238))

(assert (=> b!7482956 m!8074234))

(declare-fun m!8074240 () Bool)

(assert (=> b!7482956 m!8074240))

(assert (=> b!7482959 m!8074220))

(declare-fun m!8074242 () Bool)

(assert (=> b!7482959 m!8074242))

(assert (=> b!7482958 m!8074224))

(assert (=> b!7482830 d!2300376))

(declare-fun bs!1933688 () Bool)

(declare-fun d!2300384 () Bool)

(assert (= bs!1933688 (and d!2300384 b!7482830)))

(declare-fun lambda!463746 () Int)

(assert (=> bs!1933688 (= lambda!463746 lambda!463740)))

(assert (=> bs!1933688 (not (= lambda!463746 lambda!463741))))

(declare-fun bs!1933689 () Bool)

(assert (= bs!1933689 (and d!2300384 b!7482827)))

(assert (=> bs!1933689 (= (= lt!2628581 r2!5783) (= lambda!463746 lambda!463742))))

(assert (=> bs!1933689 (not (= lambda!463746 lambda!463743))))

(assert (=> d!2300384 true))

(assert (=> d!2300384 true))

(assert (=> d!2300384 true))

(assert (=> d!2300384 (= (isDefined!13863 (findConcatSeparation!3296 lt!2628581 rTail!78 Nil!72209 s!13591 s!13591)) (Exists!4236 lambda!463746))))

(declare-fun lt!2628599 () Unit!166069)

(declare-fun choose!57852 (Regex!19617 Regex!19617 List!72333) Unit!166069)

(assert (=> d!2300384 (= lt!2628599 (choose!57852 lt!2628581 rTail!78 s!13591))))

(assert (=> d!2300384 (validRegex!10131 lt!2628581)))

(assert (=> d!2300384 (= (lemmaFindConcatSeparationEquivalentToExists!3054 lt!2628581 rTail!78 s!13591) lt!2628599)))

(declare-fun bs!1933690 () Bool)

(assert (= bs!1933690 d!2300384))

(assert (=> bs!1933690 m!8074184))

(declare-fun m!8074258 () Bool)

(assert (=> bs!1933690 m!8074258))

(declare-fun m!8074260 () Bool)

(assert (=> bs!1933690 m!8074260))

(assert (=> bs!1933690 m!8074184))

(assert (=> bs!1933690 m!8074188))

(assert (=> bs!1933690 m!8074228))

(assert (=> b!7482830 d!2300384))

(declare-fun bs!1933693 () Bool)

(declare-fun d!2300388 () Bool)

(assert (= bs!1933693 (and d!2300388 d!2300384)))

(declare-fun lambda!463756 () Int)

(assert (=> bs!1933693 (= lambda!463756 lambda!463746)))

(declare-fun bs!1933694 () Bool)

(assert (= bs!1933694 (and d!2300388 b!7482830)))

(assert (=> bs!1933694 (not (= lambda!463756 lambda!463741))))

(declare-fun bs!1933695 () Bool)

(assert (= bs!1933695 (and d!2300388 b!7482827)))

(assert (=> bs!1933695 (= (= lt!2628581 r2!5783) (= lambda!463756 lambda!463742))))

(assert (=> bs!1933695 (not (= lambda!463756 lambda!463743))))

(assert (=> bs!1933694 (= lambda!463756 lambda!463740)))

(assert (=> d!2300388 true))

(assert (=> d!2300388 true))

(assert (=> d!2300388 true))

(declare-fun lambda!463758 () Int)

(assert (=> bs!1933693 (not (= lambda!463758 lambda!463746))))

(declare-fun bs!1933699 () Bool)

(assert (= bs!1933699 d!2300388))

(assert (=> bs!1933699 (not (= lambda!463758 lambda!463756))))

(assert (=> bs!1933694 (= lambda!463758 lambda!463741)))

(assert (=> bs!1933695 (not (= lambda!463758 lambda!463742))))

(assert (=> bs!1933695 (= (= lt!2628581 r2!5783) (= lambda!463758 lambda!463743))))

(assert (=> bs!1933694 (not (= lambda!463758 lambda!463740))))

(assert (=> d!2300388 true))

(assert (=> d!2300388 true))

(assert (=> d!2300388 true))

(assert (=> d!2300388 (= (Exists!4236 lambda!463756) (Exists!4236 lambda!463758))))

(declare-fun lt!2628602 () Unit!166069)

(declare-fun choose!57853 (Regex!19617 Regex!19617 List!72333) Unit!166069)

(assert (=> d!2300388 (= lt!2628602 (choose!57853 lt!2628581 rTail!78 s!13591))))

(assert (=> d!2300388 (validRegex!10131 lt!2628581)))

(assert (=> d!2300388 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2570 lt!2628581 rTail!78 s!13591) lt!2628602)))

(declare-fun m!8074268 () Bool)

(assert (=> bs!1933699 m!8074268))

(declare-fun m!8074270 () Bool)

(assert (=> bs!1933699 m!8074270))

(declare-fun m!8074272 () Bool)

(assert (=> bs!1933699 m!8074272))

(assert (=> bs!1933699 m!8074228))

(assert (=> b!7482830 d!2300388))

(declare-fun d!2300392 () Bool)

(declare-fun isEmpty!41224 (Option!17174) Bool)

(assert (=> d!2300392 (= (isDefined!13863 (findConcatSeparation!3296 lt!2628581 rTail!78 Nil!72209 s!13591 s!13591)) (not (isEmpty!41224 (findConcatSeparation!3296 lt!2628581 rTail!78 Nil!72209 s!13591 s!13591))))))

(declare-fun bs!1933701 () Bool)

(assert (= bs!1933701 d!2300392))

(assert (=> bs!1933701 m!8074184))

(declare-fun m!8074278 () Bool)

(assert (=> bs!1933701 m!8074278))

(assert (=> b!7482830 d!2300392))

(declare-fun d!2300396 () Bool)

(assert (=> d!2300396 (= (Exists!4236 lambda!463740) (choose!57850 lambda!463740))))

(declare-fun bs!1933702 () Bool)

(assert (= bs!1933702 d!2300396))

(declare-fun m!8074280 () Bool)

(assert (=> bs!1933702 m!8074280))

(assert (=> b!7482830 d!2300396))

(declare-fun b!7483092 () Bool)

(declare-fun e!4463341 () Bool)

(declare-fun head!15354 (List!72333) C!39508)

(assert (=> b!7483092 (= e!4463341 (= (head!15354 (_2!37645 lt!2628569)) (c!1382090 rTail!78)))))

(declare-fun b!7483093 () Bool)

(declare-fun e!4463340 () Bool)

(declare-fun lt!2628609 () Bool)

(assert (=> b!7483093 (= e!4463340 (not lt!2628609))))

(declare-fun b!7483094 () Bool)

(declare-fun e!4463343 () Bool)

(declare-fun call!686958 () Bool)

(assert (=> b!7483094 (= e!4463343 (= lt!2628609 call!686958))))

(declare-fun b!7483095 () Bool)

(declare-fun e!4463337 () Bool)

(assert (=> b!7483095 (= e!4463337 (not (= (head!15354 (_2!37645 lt!2628569)) (c!1382090 rTail!78))))))

(declare-fun b!7483096 () Bool)

(declare-fun e!4463339 () Bool)

(assert (=> b!7483096 (= e!4463339 e!4463337)))

(declare-fun res!3002314 () Bool)

(assert (=> b!7483096 (=> res!3002314 e!4463337)))

(assert (=> b!7483096 (= res!3002314 call!686958)))

(declare-fun b!7483097 () Bool)

(declare-fun e!4463338 () Bool)

(assert (=> b!7483097 (= e!4463338 e!4463339)))

(declare-fun res!3002316 () Bool)

(assert (=> b!7483097 (=> (not res!3002316) (not e!4463339))))

(assert (=> b!7483097 (= res!3002316 (not lt!2628609))))

(declare-fun b!7483098 () Bool)

(declare-fun res!3002311 () Bool)

(assert (=> b!7483098 (=> (not res!3002311) (not e!4463341))))

(declare-fun isEmpty!41225 (List!72333) Bool)

(declare-fun tail!14923 (List!72333) List!72333)

(assert (=> b!7483098 (= res!3002311 (isEmpty!41225 (tail!14923 (_2!37645 lt!2628569))))))

(declare-fun b!7483099 () Bool)

(declare-fun res!3002313 () Bool)

(assert (=> b!7483099 (=> (not res!3002313) (not e!4463341))))

(assert (=> b!7483099 (= res!3002313 (not call!686958))))

(declare-fun d!2300398 () Bool)

(assert (=> d!2300398 e!4463343))

(declare-fun c!1382147 () Bool)

(assert (=> d!2300398 (= c!1382147 ((_ is EmptyExpr!19617) rTail!78))))

(declare-fun e!4463342 () Bool)

(assert (=> d!2300398 (= lt!2628609 e!4463342)))

(declare-fun c!1382145 () Bool)

(assert (=> d!2300398 (= c!1382145 (isEmpty!41225 (_2!37645 lt!2628569)))))

(assert (=> d!2300398 (validRegex!10131 rTail!78)))

(assert (=> d!2300398 (= (matchR!9381 rTail!78 (_2!37645 lt!2628569)) lt!2628609)))

(declare-fun b!7483100 () Bool)

(declare-fun res!3002317 () Bool)

(assert (=> b!7483100 (=> res!3002317 e!4463338)))

(assert (=> b!7483100 (= res!3002317 (not ((_ is ElementMatch!19617) rTail!78)))))

(assert (=> b!7483100 (= e!4463340 e!4463338)))

(declare-fun bm!686953 () Bool)

(assert (=> bm!686953 (= call!686958 (isEmpty!41225 (_2!37645 lt!2628569)))))

(declare-fun b!7483101 () Bool)

(declare-fun derivativeStep!5614 (Regex!19617 C!39508) Regex!19617)

(assert (=> b!7483101 (= e!4463342 (matchR!9381 (derivativeStep!5614 rTail!78 (head!15354 (_2!37645 lt!2628569))) (tail!14923 (_2!37645 lt!2628569))))))

(declare-fun b!7483102 () Bool)

(assert (=> b!7483102 (= e!4463343 e!4463340)))

(declare-fun c!1382146 () Bool)

(assert (=> b!7483102 (= c!1382146 ((_ is EmptyLang!19617) rTail!78))))

(declare-fun b!7483103 () Bool)

(declare-fun res!3002312 () Bool)

(assert (=> b!7483103 (=> res!3002312 e!4463338)))

(assert (=> b!7483103 (= res!3002312 e!4463341)))

(declare-fun res!3002315 () Bool)

(assert (=> b!7483103 (=> (not res!3002315) (not e!4463341))))

(assert (=> b!7483103 (= res!3002315 lt!2628609)))

(declare-fun b!7483104 () Bool)

(assert (=> b!7483104 (= e!4463342 (nullable!8554 rTail!78))))

(declare-fun b!7483105 () Bool)

(declare-fun res!3002318 () Bool)

(assert (=> b!7483105 (=> res!3002318 e!4463337)))

(assert (=> b!7483105 (= res!3002318 (not (isEmpty!41225 (tail!14923 (_2!37645 lt!2628569)))))))

(assert (= (and d!2300398 c!1382145) b!7483104))

(assert (= (and d!2300398 (not c!1382145)) b!7483101))

(assert (= (and d!2300398 c!1382147) b!7483094))

(assert (= (and d!2300398 (not c!1382147)) b!7483102))

(assert (= (and b!7483102 c!1382146) b!7483093))

(assert (= (and b!7483102 (not c!1382146)) b!7483100))

(assert (= (and b!7483100 (not res!3002317)) b!7483103))

(assert (= (and b!7483103 res!3002315) b!7483099))

(assert (= (and b!7483099 res!3002313) b!7483098))

(assert (= (and b!7483098 res!3002311) b!7483092))

(assert (= (and b!7483103 (not res!3002312)) b!7483097))

(assert (= (and b!7483097 res!3002316) b!7483096))

(assert (= (and b!7483096 (not res!3002314)) b!7483105))

(assert (= (and b!7483105 (not res!3002318)) b!7483095))

(assert (= (or b!7483094 b!7483096 b!7483099) bm!686953))

(declare-fun m!8074294 () Bool)

(assert (=> bm!686953 m!8074294))

(declare-fun m!8074296 () Bool)

(assert (=> b!7483104 m!8074296))

(declare-fun m!8074298 () Bool)

(assert (=> b!7483105 m!8074298))

(assert (=> b!7483105 m!8074298))

(declare-fun m!8074300 () Bool)

(assert (=> b!7483105 m!8074300))

(declare-fun m!8074302 () Bool)

(assert (=> b!7483095 m!8074302))

(assert (=> d!2300398 m!8074294))

(assert (=> d!2300398 m!8074176))

(assert (=> b!7483098 m!8074298))

(assert (=> b!7483098 m!8074298))

(assert (=> b!7483098 m!8074300))

(assert (=> b!7483092 m!8074302))

(assert (=> b!7483101 m!8074302))

(assert (=> b!7483101 m!8074302))

(declare-fun m!8074304 () Bool)

(assert (=> b!7483101 m!8074304))

(assert (=> b!7483101 m!8074298))

(assert (=> b!7483101 m!8074304))

(assert (=> b!7483101 m!8074298))

(declare-fun m!8074306 () Bool)

(assert (=> b!7483101 m!8074306))

(assert (=> b!7482829 d!2300398))

(declare-fun b!7483106 () Bool)

(declare-fun e!4463344 () Bool)

(declare-fun call!686959 () Bool)

(assert (=> b!7483106 (= e!4463344 call!686959)))

(declare-fun b!7483107 () Bool)

(declare-fun res!3002322 () Bool)

(declare-fun e!4463345 () Bool)

(assert (=> b!7483107 (=> (not res!3002322) (not e!4463345))))

(declare-fun call!686961 () Bool)

(assert (=> b!7483107 (= res!3002322 call!686961)))

(declare-fun e!4463348 () Bool)

(assert (=> b!7483107 (= e!4463348 e!4463345)))

(declare-fun bm!686954 () Bool)

(assert (=> bm!686954 (= call!686961 call!686959)))

(declare-fun b!7483108 () Bool)

(declare-fun e!4463350 () Bool)

(assert (=> b!7483108 (= e!4463350 e!4463344)))

(declare-fun res!3002321 () Bool)

(assert (=> b!7483108 (= res!3002321 (not (nullable!8554 (reg!19946 r1!5845))))))

(assert (=> b!7483108 (=> (not res!3002321) (not e!4463344))))

(declare-fun d!2300404 () Bool)

(declare-fun res!3002320 () Bool)

(declare-fun e!4463349 () Bool)

(assert (=> d!2300404 (=> res!3002320 e!4463349)))

(assert (=> d!2300404 (= res!3002320 ((_ is ElementMatch!19617) r1!5845))))

(assert (=> d!2300404 (= (validRegex!10131 r1!5845) e!4463349)))

(declare-fun b!7483109 () Bool)

(declare-fun e!4463347 () Bool)

(declare-fun e!4463346 () Bool)

(assert (=> b!7483109 (= e!4463347 e!4463346)))

(declare-fun res!3002319 () Bool)

(assert (=> b!7483109 (=> (not res!3002319) (not e!4463346))))

(assert (=> b!7483109 (= res!3002319 call!686961)))

(declare-fun b!7483110 () Bool)

(assert (=> b!7483110 (= e!4463350 e!4463348)))

(declare-fun c!1382149 () Bool)

(assert (=> b!7483110 (= c!1382149 ((_ is Union!19617) r1!5845))))

(declare-fun b!7483111 () Bool)

(declare-fun call!686960 () Bool)

(assert (=> b!7483111 (= e!4463345 call!686960)))

(declare-fun b!7483112 () Bool)

(declare-fun res!3002323 () Bool)

(assert (=> b!7483112 (=> res!3002323 e!4463347)))

(assert (=> b!7483112 (= res!3002323 (not ((_ is Concat!28462) r1!5845)))))

(assert (=> b!7483112 (= e!4463348 e!4463347)))

(declare-fun b!7483113 () Bool)

(assert (=> b!7483113 (= e!4463346 call!686960)))

(declare-fun bm!686955 () Bool)

(declare-fun c!1382148 () Bool)

(assert (=> bm!686955 (= call!686959 (validRegex!10131 (ite c!1382148 (reg!19946 r1!5845) (ite c!1382149 (regOne!39747 r1!5845) (regOne!39746 r1!5845)))))))

(declare-fun b!7483114 () Bool)

(assert (=> b!7483114 (= e!4463349 e!4463350)))

(assert (=> b!7483114 (= c!1382148 ((_ is Star!19617) r1!5845))))

(declare-fun bm!686956 () Bool)

(assert (=> bm!686956 (= call!686960 (validRegex!10131 (ite c!1382149 (regTwo!39747 r1!5845) (regTwo!39746 r1!5845))))))

(assert (= (and d!2300404 (not res!3002320)) b!7483114))

(assert (= (and b!7483114 c!1382148) b!7483108))

(assert (= (and b!7483114 (not c!1382148)) b!7483110))

(assert (= (and b!7483108 res!3002321) b!7483106))

(assert (= (and b!7483110 c!1382149) b!7483107))

(assert (= (and b!7483110 (not c!1382149)) b!7483112))

(assert (= (and b!7483107 res!3002322) b!7483111))

(assert (= (and b!7483112 (not res!3002323)) b!7483109))

(assert (= (and b!7483109 res!3002319) b!7483113))

(assert (= (or b!7483111 b!7483113) bm!686956))

(assert (= (or b!7483107 b!7483109) bm!686954))

(assert (= (or b!7483106 bm!686954) bm!686955))

(declare-fun m!8074308 () Bool)

(assert (=> b!7483108 m!8074308))

(declare-fun m!8074310 () Bool)

(assert (=> bm!686955 m!8074310))

(declare-fun m!8074312 () Bool)

(assert (=> bm!686956 m!8074312))

(assert (=> start!724866 d!2300404))

(declare-fun bs!1933721 () Bool)

(declare-fun b!7483171 () Bool)

(assert (= bs!1933721 (and b!7483171 d!2300384)))

(declare-fun lambda!463768 () Int)

(assert (=> bs!1933721 (not (= lambda!463768 lambda!463746))))

(declare-fun bs!1933722 () Bool)

(assert (= bs!1933722 (and b!7483171 d!2300388)))

(assert (=> bs!1933722 (not (= lambda!463768 lambda!463756))))

(declare-fun bs!1933723 () Bool)

(assert (= bs!1933723 (and b!7483171 b!7482830)))

(assert (=> bs!1933723 (not (= lambda!463768 lambda!463741))))

(declare-fun bs!1933724 () Bool)

(assert (= bs!1933724 (and b!7483171 b!7482827)))

(assert (=> bs!1933724 (not (= lambda!463768 lambda!463742))))

(assert (=> bs!1933722 (not (= lambda!463768 lambda!463758))))

(assert (=> bs!1933724 (not (= lambda!463768 lambda!463743))))

(assert (=> bs!1933723 (not (= lambda!463768 lambda!463740))))

(assert (=> b!7483171 true))

(assert (=> b!7483171 true))

(declare-fun bs!1933725 () Bool)

(declare-fun b!7483173 () Bool)

(assert (= bs!1933725 (and b!7483173 d!2300384)))

(declare-fun lambda!463769 () Int)

(assert (=> bs!1933725 (not (= lambda!463769 lambda!463746))))

(declare-fun bs!1933726 () Bool)

(assert (= bs!1933726 (and b!7483173 d!2300388)))

(assert (=> bs!1933726 (not (= lambda!463769 lambda!463756))))

(declare-fun bs!1933727 () Bool)

(assert (= bs!1933727 (and b!7483173 b!7482830)))

(assert (=> bs!1933727 (= (and (= (regOne!39746 lt!2628573) lt!2628581) (= (regTwo!39746 lt!2628573) rTail!78)) (= lambda!463769 lambda!463741))))

(declare-fun bs!1933728 () Bool)

(assert (= bs!1933728 (and b!7483173 b!7483171)))

(assert (=> bs!1933728 (not (= lambda!463769 lambda!463768))))

(declare-fun bs!1933729 () Bool)

(assert (= bs!1933729 (and b!7483173 b!7482827)))

(assert (=> bs!1933729 (not (= lambda!463769 lambda!463742))))

(assert (=> bs!1933726 (= (and (= (regOne!39746 lt!2628573) lt!2628581) (= (regTwo!39746 lt!2628573) rTail!78)) (= lambda!463769 lambda!463758))))

(assert (=> bs!1933729 (= (and (= (regOne!39746 lt!2628573) r2!5783) (= (regTwo!39746 lt!2628573) rTail!78)) (= lambda!463769 lambda!463743))))

(assert (=> bs!1933727 (not (= lambda!463769 lambda!463740))))

(assert (=> b!7483173 true))

(assert (=> b!7483173 true))

(declare-fun b!7483166 () Bool)

(declare-fun e!4463382 () Bool)

(assert (=> b!7483166 (= e!4463382 (= s!13591 (Cons!72209 (c!1382090 lt!2628573) Nil!72209)))))

(declare-fun b!7483167 () Bool)

(declare-fun e!4463383 () Bool)

(declare-fun e!4463385 () Bool)

(assert (=> b!7483167 (= e!4463383 e!4463385)))

(declare-fun c!1382162 () Bool)

(assert (=> b!7483167 (= c!1382162 ((_ is Star!19617) lt!2628573))))

(declare-fun call!686967 () Bool)

(declare-fun bm!686961 () Bool)

(assert (=> bm!686961 (= call!686967 (Exists!4236 (ite c!1382162 lambda!463768 lambda!463769)))))

(declare-fun b!7483168 () Bool)

(declare-fun e!4463380 () Bool)

(assert (=> b!7483168 (= e!4463380 (matchRSpec!4296 (regTwo!39747 lt!2628573) s!13591))))

(declare-fun bm!686962 () Bool)

(declare-fun call!686966 () Bool)

(assert (=> bm!686962 (= call!686966 (isEmpty!41225 s!13591))))

(declare-fun b!7483169 () Bool)

(declare-fun e!4463381 () Bool)

(declare-fun e!4463384 () Bool)

(assert (=> b!7483169 (= e!4463381 e!4463384)))

(declare-fun res!3002351 () Bool)

(assert (=> b!7483169 (= res!3002351 (not ((_ is EmptyLang!19617) lt!2628573)))))

(assert (=> b!7483169 (=> (not res!3002351) (not e!4463384))))

(declare-fun b!7483170 () Bool)

(assert (=> b!7483170 (= e!4463381 call!686966)))

(declare-fun e!4463379 () Bool)

(assert (=> b!7483171 (= e!4463379 call!686967)))

(declare-fun b!7483172 () Bool)

(declare-fun c!1382165 () Bool)

(assert (=> b!7483172 (= c!1382165 ((_ is Union!19617) lt!2628573))))

(assert (=> b!7483172 (= e!4463382 e!4463383)))

(assert (=> b!7483173 (= e!4463385 call!686967)))

(declare-fun d!2300406 () Bool)

(declare-fun c!1382163 () Bool)

(assert (=> d!2300406 (= c!1382163 ((_ is EmptyExpr!19617) lt!2628573))))

(assert (=> d!2300406 (= (matchRSpec!4296 lt!2628573 s!13591) e!4463381)))

(declare-fun b!7483165 () Bool)

(assert (=> b!7483165 (= e!4463383 e!4463380)))

(declare-fun res!3002350 () Bool)

(assert (=> b!7483165 (= res!3002350 (matchRSpec!4296 (regOne!39747 lt!2628573) s!13591))))

(assert (=> b!7483165 (=> res!3002350 e!4463380)))

(declare-fun b!7483174 () Bool)

(declare-fun c!1382164 () Bool)

(assert (=> b!7483174 (= c!1382164 ((_ is ElementMatch!19617) lt!2628573))))

(assert (=> b!7483174 (= e!4463384 e!4463382)))

(declare-fun b!7483175 () Bool)

(declare-fun res!3002352 () Bool)

(assert (=> b!7483175 (=> res!3002352 e!4463379)))

(assert (=> b!7483175 (= res!3002352 call!686966)))

(assert (=> b!7483175 (= e!4463385 e!4463379)))

(assert (= (and d!2300406 c!1382163) b!7483170))

(assert (= (and d!2300406 (not c!1382163)) b!7483169))

(assert (= (and b!7483169 res!3002351) b!7483174))

(assert (= (and b!7483174 c!1382164) b!7483166))

(assert (= (and b!7483174 (not c!1382164)) b!7483172))

(assert (= (and b!7483172 c!1382165) b!7483165))

(assert (= (and b!7483172 (not c!1382165)) b!7483167))

(assert (= (and b!7483165 (not res!3002350)) b!7483168))

(assert (= (and b!7483167 c!1382162) b!7483175))

(assert (= (and b!7483167 (not c!1382162)) b!7483173))

(assert (= (and b!7483175 (not res!3002352)) b!7483171))

(assert (= (or b!7483171 b!7483173) bm!686961))

(assert (= (or b!7483170 b!7483175) bm!686962))

(declare-fun m!8074348 () Bool)

(assert (=> bm!686961 m!8074348))

(declare-fun m!8074350 () Bool)

(assert (=> b!7483168 m!8074350))

(declare-fun m!8074352 () Bool)

(assert (=> bm!686962 m!8074352))

(declare-fun m!8074354 () Bool)

(assert (=> b!7483165 m!8074354))

(assert (=> b!7482828 d!2300406))

(declare-fun bs!1933731 () Bool)

(declare-fun b!7483191 () Bool)

(assert (= bs!1933731 (and b!7483191 d!2300384)))

(declare-fun lambda!463770 () Int)

(assert (=> bs!1933731 (not (= lambda!463770 lambda!463746))))

(declare-fun bs!1933732 () Bool)

(assert (= bs!1933732 (and b!7483191 b!7482830)))

(assert (=> bs!1933732 (not (= lambda!463770 lambda!463741))))

(declare-fun bs!1933733 () Bool)

(assert (= bs!1933733 (and b!7483191 b!7483171)))

(assert (=> bs!1933733 (= (and (= (reg!19946 lt!2628574) (reg!19946 lt!2628573)) (= lt!2628574 lt!2628573)) (= lambda!463770 lambda!463768))))

(declare-fun bs!1933734 () Bool)

(assert (= bs!1933734 (and b!7483191 b!7482827)))

(assert (=> bs!1933734 (not (= lambda!463770 lambda!463742))))

(declare-fun bs!1933735 () Bool)

(assert (= bs!1933735 (and b!7483191 d!2300388)))

(assert (=> bs!1933735 (not (= lambda!463770 lambda!463758))))

(assert (=> bs!1933735 (not (= lambda!463770 lambda!463756))))

(declare-fun bs!1933736 () Bool)

(assert (= bs!1933736 (and b!7483191 b!7483173)))

(assert (=> bs!1933736 (not (= lambda!463770 lambda!463769))))

(assert (=> bs!1933734 (not (= lambda!463770 lambda!463743))))

(assert (=> bs!1933732 (not (= lambda!463770 lambda!463740))))

(assert (=> b!7483191 true))

(assert (=> b!7483191 true))

(declare-fun bs!1933737 () Bool)

(declare-fun b!7483193 () Bool)

(assert (= bs!1933737 (and b!7483193 d!2300384)))

(declare-fun lambda!463771 () Int)

(assert (=> bs!1933737 (not (= lambda!463771 lambda!463746))))

(declare-fun bs!1933738 () Bool)

(assert (= bs!1933738 (and b!7483193 b!7482830)))

(assert (=> bs!1933738 (= (and (= (regOne!39746 lt!2628574) lt!2628581) (= (regTwo!39746 lt!2628574) rTail!78)) (= lambda!463771 lambda!463741))))

(declare-fun bs!1933739 () Bool)

(assert (= bs!1933739 (and b!7483193 b!7483171)))

(assert (=> bs!1933739 (not (= lambda!463771 lambda!463768))))

(declare-fun bs!1933740 () Bool)

(assert (= bs!1933740 (and b!7483193 b!7483191)))

(assert (=> bs!1933740 (not (= lambda!463771 lambda!463770))))

(declare-fun bs!1933741 () Bool)

(assert (= bs!1933741 (and b!7483193 b!7482827)))

(assert (=> bs!1933741 (not (= lambda!463771 lambda!463742))))

(declare-fun bs!1933742 () Bool)

(assert (= bs!1933742 (and b!7483193 d!2300388)))

(assert (=> bs!1933742 (= (and (= (regOne!39746 lt!2628574) lt!2628581) (= (regTwo!39746 lt!2628574) rTail!78)) (= lambda!463771 lambda!463758))))

(assert (=> bs!1933742 (not (= lambda!463771 lambda!463756))))

(declare-fun bs!1933743 () Bool)

(assert (= bs!1933743 (and b!7483193 b!7483173)))

(assert (=> bs!1933743 (= (and (= (regOne!39746 lt!2628574) (regOne!39746 lt!2628573)) (= (regTwo!39746 lt!2628574) (regTwo!39746 lt!2628573))) (= lambda!463771 lambda!463769))))

(assert (=> bs!1933741 (= (and (= (regOne!39746 lt!2628574) r2!5783) (= (regTwo!39746 lt!2628574) rTail!78)) (= lambda!463771 lambda!463743))))

(assert (=> bs!1933738 (not (= lambda!463771 lambda!463740))))

(assert (=> b!7483193 true))

(assert (=> b!7483193 true))

(declare-fun b!7483186 () Bool)

(declare-fun e!4463394 () Bool)

(assert (=> b!7483186 (= e!4463394 (= s!13591 (Cons!72209 (c!1382090 lt!2628574) Nil!72209)))))

(declare-fun b!7483187 () Bool)

(declare-fun e!4463395 () Bool)

(declare-fun e!4463397 () Bool)

(assert (=> b!7483187 (= e!4463395 e!4463397)))

(declare-fun c!1382168 () Bool)

(assert (=> b!7483187 (= c!1382168 ((_ is Star!19617) lt!2628574))))

(declare-fun call!686969 () Bool)

(declare-fun bm!686963 () Bool)

(assert (=> bm!686963 (= call!686969 (Exists!4236 (ite c!1382168 lambda!463770 lambda!463771)))))

(declare-fun b!7483188 () Bool)

(declare-fun e!4463392 () Bool)

(assert (=> b!7483188 (= e!4463392 (matchRSpec!4296 (regTwo!39747 lt!2628574) s!13591))))

(declare-fun bm!686964 () Bool)

(declare-fun call!686968 () Bool)

(assert (=> bm!686964 (= call!686968 (isEmpty!41225 s!13591))))

(declare-fun b!7483189 () Bool)

(declare-fun e!4463393 () Bool)

(declare-fun e!4463396 () Bool)

(assert (=> b!7483189 (= e!4463393 e!4463396)))

(declare-fun res!3002359 () Bool)

(assert (=> b!7483189 (= res!3002359 (not ((_ is EmptyLang!19617) lt!2628574)))))

(assert (=> b!7483189 (=> (not res!3002359) (not e!4463396))))

(declare-fun b!7483190 () Bool)

(assert (=> b!7483190 (= e!4463393 call!686968)))

(declare-fun e!4463391 () Bool)

(assert (=> b!7483191 (= e!4463391 call!686969)))

(declare-fun b!7483192 () Bool)

(declare-fun c!1382171 () Bool)

(assert (=> b!7483192 (= c!1382171 ((_ is Union!19617) lt!2628574))))

(assert (=> b!7483192 (= e!4463394 e!4463395)))

(assert (=> b!7483193 (= e!4463397 call!686969)))

(declare-fun d!2300418 () Bool)

(declare-fun c!1382169 () Bool)

(assert (=> d!2300418 (= c!1382169 ((_ is EmptyExpr!19617) lt!2628574))))

(assert (=> d!2300418 (= (matchRSpec!4296 lt!2628574 s!13591) e!4463393)))

(declare-fun b!7483185 () Bool)

(assert (=> b!7483185 (= e!4463395 e!4463392)))

(declare-fun res!3002358 () Bool)

(assert (=> b!7483185 (= res!3002358 (matchRSpec!4296 (regOne!39747 lt!2628574) s!13591))))

(assert (=> b!7483185 (=> res!3002358 e!4463392)))

(declare-fun b!7483194 () Bool)

(declare-fun c!1382170 () Bool)

(assert (=> b!7483194 (= c!1382170 ((_ is ElementMatch!19617) lt!2628574))))

(assert (=> b!7483194 (= e!4463396 e!4463394)))

(declare-fun b!7483195 () Bool)

(declare-fun res!3002360 () Bool)

(assert (=> b!7483195 (=> res!3002360 e!4463391)))

(assert (=> b!7483195 (= res!3002360 call!686968)))

(assert (=> b!7483195 (= e!4463397 e!4463391)))

(assert (= (and d!2300418 c!1382169) b!7483190))

(assert (= (and d!2300418 (not c!1382169)) b!7483189))

(assert (= (and b!7483189 res!3002359) b!7483194))

(assert (= (and b!7483194 c!1382170) b!7483186))

(assert (= (and b!7483194 (not c!1382170)) b!7483192))

(assert (= (and b!7483192 c!1382171) b!7483185))

(assert (= (and b!7483192 (not c!1382171)) b!7483187))

(assert (= (and b!7483185 (not res!3002358)) b!7483188))

(assert (= (and b!7483187 c!1382168) b!7483195))

(assert (= (and b!7483187 (not c!1382168)) b!7483193))

(assert (= (and b!7483195 (not res!3002360)) b!7483191))

(assert (= (or b!7483191 b!7483193) bm!686963))

(assert (= (or b!7483190 b!7483195) bm!686964))

(declare-fun m!8074356 () Bool)

(assert (=> bm!686963 m!8074356))

(declare-fun m!8074358 () Bool)

(assert (=> b!7483188 m!8074358))

(assert (=> bm!686964 m!8074352))

(declare-fun m!8074360 () Bool)

(assert (=> b!7483185 m!8074360))

(assert (=> b!7482828 d!2300418))

(declare-fun d!2300420 () Bool)

(assert (=> d!2300420 (= (matchR!9381 lt!2628573 s!13591) (matchRSpec!4296 lt!2628573 s!13591))))

(declare-fun lt!2628624 () Unit!166069)

(declare-fun choose!57856 (Regex!19617 List!72333) Unit!166069)

(assert (=> d!2300420 (= lt!2628624 (choose!57856 lt!2628573 s!13591))))

(assert (=> d!2300420 (validRegex!10131 lt!2628573)))

(assert (=> d!2300420 (= (mainMatchTheorem!4290 lt!2628573 s!13591) lt!2628624)))

(declare-fun bs!1933744 () Bool)

(assert (= bs!1933744 d!2300420))

(assert (=> bs!1933744 m!8074150))

(assert (=> bs!1933744 m!8074154))

(declare-fun m!8074362 () Bool)

(assert (=> bs!1933744 m!8074362))

(declare-fun m!8074364 () Bool)

(assert (=> bs!1933744 m!8074364))

(assert (=> b!7482828 d!2300420))

(declare-fun b!7483204 () Bool)

(declare-fun e!4463406 () Bool)

(assert (=> b!7483204 (= e!4463406 (= (head!15354 s!13591) (c!1382090 lt!2628573)))))

(declare-fun b!7483205 () Bool)

(declare-fun e!4463405 () Bool)

(declare-fun lt!2628625 () Bool)

(assert (=> b!7483205 (= e!4463405 (not lt!2628625))))

(declare-fun b!7483206 () Bool)

(declare-fun e!4463408 () Bool)

(declare-fun call!686970 () Bool)

(assert (=> b!7483206 (= e!4463408 (= lt!2628625 call!686970))))

(declare-fun b!7483207 () Bool)

(declare-fun e!4463402 () Bool)

(assert (=> b!7483207 (= e!4463402 (not (= (head!15354 s!13591) (c!1382090 lt!2628573))))))

(declare-fun b!7483208 () Bool)

(declare-fun e!4463404 () Bool)

(assert (=> b!7483208 (= e!4463404 e!4463402)))

(declare-fun res!3002370 () Bool)

(assert (=> b!7483208 (=> res!3002370 e!4463402)))

(assert (=> b!7483208 (= res!3002370 call!686970)))

(declare-fun b!7483209 () Bool)

(declare-fun e!4463403 () Bool)

(assert (=> b!7483209 (= e!4463403 e!4463404)))

(declare-fun res!3002372 () Bool)

(assert (=> b!7483209 (=> (not res!3002372) (not e!4463404))))

(assert (=> b!7483209 (= res!3002372 (not lt!2628625))))

(declare-fun b!7483210 () Bool)

(declare-fun res!3002367 () Bool)

(assert (=> b!7483210 (=> (not res!3002367) (not e!4463406))))

(assert (=> b!7483210 (= res!3002367 (isEmpty!41225 (tail!14923 s!13591)))))

(declare-fun b!7483211 () Bool)

(declare-fun res!3002369 () Bool)

(assert (=> b!7483211 (=> (not res!3002369) (not e!4463406))))

(assert (=> b!7483211 (= res!3002369 (not call!686970))))

(declare-fun d!2300422 () Bool)

(assert (=> d!2300422 e!4463408))

(declare-fun c!1382174 () Bool)

(assert (=> d!2300422 (= c!1382174 ((_ is EmptyExpr!19617) lt!2628573))))

(declare-fun e!4463407 () Bool)

(assert (=> d!2300422 (= lt!2628625 e!4463407)))

(declare-fun c!1382172 () Bool)

(assert (=> d!2300422 (= c!1382172 (isEmpty!41225 s!13591))))

(assert (=> d!2300422 (validRegex!10131 lt!2628573)))

(assert (=> d!2300422 (= (matchR!9381 lt!2628573 s!13591) lt!2628625)))

(declare-fun b!7483212 () Bool)

(declare-fun res!3002373 () Bool)

(assert (=> b!7483212 (=> res!3002373 e!4463403)))

(assert (=> b!7483212 (= res!3002373 (not ((_ is ElementMatch!19617) lt!2628573)))))

(assert (=> b!7483212 (= e!4463405 e!4463403)))

(declare-fun bm!686965 () Bool)

(assert (=> bm!686965 (= call!686970 (isEmpty!41225 s!13591))))

(declare-fun b!7483213 () Bool)

(assert (=> b!7483213 (= e!4463407 (matchR!9381 (derivativeStep!5614 lt!2628573 (head!15354 s!13591)) (tail!14923 s!13591)))))

(declare-fun b!7483214 () Bool)

(assert (=> b!7483214 (= e!4463408 e!4463405)))

(declare-fun c!1382173 () Bool)

(assert (=> b!7483214 (= c!1382173 ((_ is EmptyLang!19617) lt!2628573))))

(declare-fun b!7483215 () Bool)

(declare-fun res!3002368 () Bool)

(assert (=> b!7483215 (=> res!3002368 e!4463403)))

(assert (=> b!7483215 (= res!3002368 e!4463406)))

(declare-fun res!3002371 () Bool)

(assert (=> b!7483215 (=> (not res!3002371) (not e!4463406))))

(assert (=> b!7483215 (= res!3002371 lt!2628625)))

(declare-fun b!7483216 () Bool)

(assert (=> b!7483216 (= e!4463407 (nullable!8554 lt!2628573))))

(declare-fun b!7483217 () Bool)

(declare-fun res!3002376 () Bool)

(assert (=> b!7483217 (=> res!3002376 e!4463402)))

(assert (=> b!7483217 (= res!3002376 (not (isEmpty!41225 (tail!14923 s!13591))))))

(assert (= (and d!2300422 c!1382172) b!7483216))

(assert (= (and d!2300422 (not c!1382172)) b!7483213))

(assert (= (and d!2300422 c!1382174) b!7483206))

(assert (= (and d!2300422 (not c!1382174)) b!7483214))

(assert (= (and b!7483214 c!1382173) b!7483205))

(assert (= (and b!7483214 (not c!1382173)) b!7483212))

(assert (= (and b!7483212 (not res!3002373)) b!7483215))

(assert (= (and b!7483215 res!3002371) b!7483211))

(assert (= (and b!7483211 res!3002369) b!7483210))

(assert (= (and b!7483210 res!3002367) b!7483204))

(assert (= (and b!7483215 (not res!3002368)) b!7483209))

(assert (= (and b!7483209 res!3002372) b!7483208))

(assert (= (and b!7483208 (not res!3002370)) b!7483217))

(assert (= (and b!7483217 (not res!3002376)) b!7483207))

(assert (= (or b!7483206 b!7483208 b!7483211) bm!686965))

(assert (=> bm!686965 m!8074352))

(declare-fun m!8074366 () Bool)

(assert (=> b!7483216 m!8074366))

(declare-fun m!8074368 () Bool)

(assert (=> b!7483217 m!8074368))

(assert (=> b!7483217 m!8074368))

(declare-fun m!8074370 () Bool)

(assert (=> b!7483217 m!8074370))

(declare-fun m!8074372 () Bool)

(assert (=> b!7483207 m!8074372))

(assert (=> d!2300422 m!8074352))

(assert (=> d!2300422 m!8074364))

(assert (=> b!7483210 m!8074368))

(assert (=> b!7483210 m!8074368))

(assert (=> b!7483210 m!8074370))

(assert (=> b!7483204 m!8074372))

(assert (=> b!7483213 m!8074372))

(assert (=> b!7483213 m!8074372))

(declare-fun m!8074374 () Bool)

(assert (=> b!7483213 m!8074374))

(assert (=> b!7483213 m!8074368))

(assert (=> b!7483213 m!8074374))

(assert (=> b!7483213 m!8074368))

(declare-fun m!8074376 () Bool)

(assert (=> b!7483213 m!8074376))

(assert (=> b!7482828 d!2300422))

(declare-fun d!2300424 () Bool)

(assert (=> d!2300424 (= (matchR!9381 lt!2628574 s!13591) (matchRSpec!4296 lt!2628574 s!13591))))

(declare-fun lt!2628626 () Unit!166069)

(assert (=> d!2300424 (= lt!2628626 (choose!57856 lt!2628574 s!13591))))

(assert (=> d!2300424 (validRegex!10131 lt!2628574)))

(assert (=> d!2300424 (= (mainMatchTheorem!4290 lt!2628574 s!13591) lt!2628626)))

(declare-fun bs!1933745 () Bool)

(assert (= bs!1933745 d!2300424))

(assert (=> bs!1933745 m!8074156))

(assert (=> bs!1933745 m!8074152))

(declare-fun m!8074378 () Bool)

(assert (=> bs!1933745 m!8074378))

(declare-fun m!8074380 () Bool)

(assert (=> bs!1933745 m!8074380))

(assert (=> b!7482828 d!2300424))

(declare-fun b!7483218 () Bool)

(declare-fun e!4463413 () Bool)

(assert (=> b!7483218 (= e!4463413 (= (head!15354 s!13591) (c!1382090 lt!2628574)))))

(declare-fun b!7483219 () Bool)

(declare-fun e!4463412 () Bool)

(declare-fun lt!2628628 () Bool)

(assert (=> b!7483219 (= e!4463412 (not lt!2628628))))

(declare-fun b!7483220 () Bool)

(declare-fun e!4463415 () Bool)

(declare-fun call!686971 () Bool)

(assert (=> b!7483220 (= e!4463415 (= lt!2628628 call!686971))))

(declare-fun b!7483221 () Bool)

(declare-fun e!4463409 () Bool)

(assert (=> b!7483221 (= e!4463409 (not (= (head!15354 s!13591) (c!1382090 lt!2628574))))))

(declare-fun b!7483222 () Bool)

(declare-fun e!4463411 () Bool)

(assert (=> b!7483222 (= e!4463411 e!4463409)))

(declare-fun res!3002380 () Bool)

(assert (=> b!7483222 (=> res!3002380 e!4463409)))

(assert (=> b!7483222 (= res!3002380 call!686971)))

(declare-fun b!7483223 () Bool)

(declare-fun e!4463410 () Bool)

(assert (=> b!7483223 (= e!4463410 e!4463411)))

(declare-fun res!3002382 () Bool)

(assert (=> b!7483223 (=> (not res!3002382) (not e!4463411))))

(assert (=> b!7483223 (= res!3002382 (not lt!2628628))))

(declare-fun b!7483224 () Bool)

(declare-fun res!3002377 () Bool)

(assert (=> b!7483224 (=> (not res!3002377) (not e!4463413))))

(assert (=> b!7483224 (= res!3002377 (isEmpty!41225 (tail!14923 s!13591)))))

(declare-fun b!7483225 () Bool)

(declare-fun res!3002379 () Bool)

(assert (=> b!7483225 (=> (not res!3002379) (not e!4463413))))

(assert (=> b!7483225 (= res!3002379 (not call!686971))))

(declare-fun d!2300426 () Bool)

(assert (=> d!2300426 e!4463415))

(declare-fun c!1382177 () Bool)

(assert (=> d!2300426 (= c!1382177 ((_ is EmptyExpr!19617) lt!2628574))))

(declare-fun e!4463414 () Bool)

(assert (=> d!2300426 (= lt!2628628 e!4463414)))

(declare-fun c!1382175 () Bool)

(assert (=> d!2300426 (= c!1382175 (isEmpty!41225 s!13591))))

(assert (=> d!2300426 (validRegex!10131 lt!2628574)))

(assert (=> d!2300426 (= (matchR!9381 lt!2628574 s!13591) lt!2628628)))

(declare-fun b!7483226 () Bool)

(declare-fun res!3002383 () Bool)

(assert (=> b!7483226 (=> res!3002383 e!4463410)))

(assert (=> b!7483226 (= res!3002383 (not ((_ is ElementMatch!19617) lt!2628574)))))

(assert (=> b!7483226 (= e!4463412 e!4463410)))

(declare-fun bm!686966 () Bool)

(assert (=> bm!686966 (= call!686971 (isEmpty!41225 s!13591))))

(declare-fun b!7483227 () Bool)

(assert (=> b!7483227 (= e!4463414 (matchR!9381 (derivativeStep!5614 lt!2628574 (head!15354 s!13591)) (tail!14923 s!13591)))))

(declare-fun b!7483228 () Bool)

(assert (=> b!7483228 (= e!4463415 e!4463412)))

(declare-fun c!1382176 () Bool)

(assert (=> b!7483228 (= c!1382176 ((_ is EmptyLang!19617) lt!2628574))))

(declare-fun b!7483229 () Bool)

(declare-fun res!3002378 () Bool)

(assert (=> b!7483229 (=> res!3002378 e!4463410)))

(assert (=> b!7483229 (= res!3002378 e!4463413)))

(declare-fun res!3002381 () Bool)

(assert (=> b!7483229 (=> (not res!3002381) (not e!4463413))))

(assert (=> b!7483229 (= res!3002381 lt!2628628)))

(declare-fun b!7483230 () Bool)

(assert (=> b!7483230 (= e!4463414 (nullable!8554 lt!2628574))))

(declare-fun b!7483231 () Bool)

(declare-fun res!3002384 () Bool)

(assert (=> b!7483231 (=> res!3002384 e!4463409)))

(assert (=> b!7483231 (= res!3002384 (not (isEmpty!41225 (tail!14923 s!13591))))))

(assert (= (and d!2300426 c!1382175) b!7483230))

(assert (= (and d!2300426 (not c!1382175)) b!7483227))

(assert (= (and d!2300426 c!1382177) b!7483220))

(assert (= (and d!2300426 (not c!1382177)) b!7483228))

(assert (= (and b!7483228 c!1382176) b!7483219))

(assert (= (and b!7483228 (not c!1382176)) b!7483226))

(assert (= (and b!7483226 (not res!3002383)) b!7483229))

(assert (= (and b!7483229 res!3002381) b!7483225))

(assert (= (and b!7483225 res!3002379) b!7483224))

(assert (= (and b!7483224 res!3002377) b!7483218))

(assert (= (and b!7483229 (not res!3002378)) b!7483223))

(assert (= (and b!7483223 res!3002382) b!7483222))

(assert (= (and b!7483222 (not res!3002380)) b!7483231))

(assert (= (and b!7483231 (not res!3002384)) b!7483221))

(assert (= (or b!7483220 b!7483222 b!7483225) bm!686966))

(assert (=> bm!686966 m!8074352))

(declare-fun m!8074382 () Bool)

(assert (=> b!7483230 m!8074382))

(assert (=> b!7483231 m!8074368))

(assert (=> b!7483231 m!8074368))

(assert (=> b!7483231 m!8074370))

(assert (=> b!7483221 m!8074372))

(assert (=> d!2300426 m!8074352))

(assert (=> d!2300426 m!8074380))

(assert (=> b!7483224 m!8074368))

(assert (=> b!7483224 m!8074368))

(assert (=> b!7483224 m!8074370))

(assert (=> b!7483218 m!8074372))

(assert (=> b!7483227 m!8074372))

(assert (=> b!7483227 m!8074372))

(declare-fun m!8074384 () Bool)

(assert (=> b!7483227 m!8074384))

(assert (=> b!7483227 m!8074368))

(assert (=> b!7483227 m!8074384))

(assert (=> b!7483227 m!8074368))

(declare-fun m!8074386 () Bool)

(assert (=> b!7483227 m!8074386))

(assert (=> b!7482828 d!2300426))

(declare-fun b!7483232 () Bool)

(declare-fun e!4463420 () Bool)

(assert (=> b!7483232 (= e!4463420 (= (head!15354 s!13591) (c!1382090 lt!2628579)))))

(declare-fun b!7483233 () Bool)

(declare-fun e!4463419 () Bool)

(declare-fun lt!2628629 () Bool)

(assert (=> b!7483233 (= e!4463419 (not lt!2628629))))

(declare-fun b!7483234 () Bool)

(declare-fun e!4463422 () Bool)

(declare-fun call!686972 () Bool)

(assert (=> b!7483234 (= e!4463422 (= lt!2628629 call!686972))))

(declare-fun b!7483235 () Bool)

(declare-fun e!4463416 () Bool)

(assert (=> b!7483235 (= e!4463416 (not (= (head!15354 s!13591) (c!1382090 lt!2628579))))))

(declare-fun b!7483236 () Bool)

(declare-fun e!4463418 () Bool)

(assert (=> b!7483236 (= e!4463418 e!4463416)))

(declare-fun res!3002388 () Bool)

(assert (=> b!7483236 (=> res!3002388 e!4463416)))

(assert (=> b!7483236 (= res!3002388 call!686972)))

(declare-fun b!7483237 () Bool)

(declare-fun e!4463417 () Bool)

(assert (=> b!7483237 (= e!4463417 e!4463418)))

(declare-fun res!3002390 () Bool)

(assert (=> b!7483237 (=> (not res!3002390) (not e!4463418))))

(assert (=> b!7483237 (= res!3002390 (not lt!2628629))))

(declare-fun b!7483238 () Bool)

(declare-fun res!3002385 () Bool)

(assert (=> b!7483238 (=> (not res!3002385) (not e!4463420))))

(assert (=> b!7483238 (= res!3002385 (isEmpty!41225 (tail!14923 s!13591)))))

(declare-fun b!7483239 () Bool)

(declare-fun res!3002387 () Bool)

(assert (=> b!7483239 (=> (not res!3002387) (not e!4463420))))

(assert (=> b!7483239 (= res!3002387 (not call!686972))))

(declare-fun d!2300428 () Bool)

(assert (=> d!2300428 e!4463422))

(declare-fun c!1382180 () Bool)

(assert (=> d!2300428 (= c!1382180 ((_ is EmptyExpr!19617) lt!2628579))))

(declare-fun e!4463421 () Bool)

(assert (=> d!2300428 (= lt!2628629 e!4463421)))

(declare-fun c!1382178 () Bool)

(assert (=> d!2300428 (= c!1382178 (isEmpty!41225 s!13591))))

(assert (=> d!2300428 (validRegex!10131 lt!2628579)))

(assert (=> d!2300428 (= (matchR!9381 lt!2628579 s!13591) lt!2628629)))

(declare-fun b!7483240 () Bool)

(declare-fun res!3002391 () Bool)

(assert (=> b!7483240 (=> res!3002391 e!4463417)))

(assert (=> b!7483240 (= res!3002391 (not ((_ is ElementMatch!19617) lt!2628579)))))

(assert (=> b!7483240 (= e!4463419 e!4463417)))

(declare-fun bm!686967 () Bool)

(assert (=> bm!686967 (= call!686972 (isEmpty!41225 s!13591))))

(declare-fun b!7483241 () Bool)

(assert (=> b!7483241 (= e!4463421 (matchR!9381 (derivativeStep!5614 lt!2628579 (head!15354 s!13591)) (tail!14923 s!13591)))))

(declare-fun b!7483242 () Bool)

(assert (=> b!7483242 (= e!4463422 e!4463419)))

(declare-fun c!1382179 () Bool)

(assert (=> b!7483242 (= c!1382179 ((_ is EmptyLang!19617) lt!2628579))))

(declare-fun b!7483243 () Bool)

(declare-fun res!3002386 () Bool)

(assert (=> b!7483243 (=> res!3002386 e!4463417)))

(assert (=> b!7483243 (= res!3002386 e!4463420)))

(declare-fun res!3002389 () Bool)

(assert (=> b!7483243 (=> (not res!3002389) (not e!4463420))))

(assert (=> b!7483243 (= res!3002389 lt!2628629)))

(declare-fun b!7483244 () Bool)

(assert (=> b!7483244 (= e!4463421 (nullable!8554 lt!2628579))))

(declare-fun b!7483245 () Bool)

(declare-fun res!3002392 () Bool)

(assert (=> b!7483245 (=> res!3002392 e!4463416)))

(assert (=> b!7483245 (= res!3002392 (not (isEmpty!41225 (tail!14923 s!13591))))))

(assert (= (and d!2300428 c!1382178) b!7483244))

(assert (= (and d!2300428 (not c!1382178)) b!7483241))

(assert (= (and d!2300428 c!1382180) b!7483234))

(assert (= (and d!2300428 (not c!1382180)) b!7483242))

(assert (= (and b!7483242 c!1382179) b!7483233))

(assert (= (and b!7483242 (not c!1382179)) b!7483240))

(assert (= (and b!7483240 (not res!3002391)) b!7483243))

(assert (= (and b!7483243 res!3002389) b!7483239))

(assert (= (and b!7483239 res!3002387) b!7483238))

(assert (= (and b!7483238 res!3002385) b!7483232))

(assert (= (and b!7483243 (not res!3002386)) b!7483237))

(assert (= (and b!7483237 res!3002390) b!7483236))

(assert (= (and b!7483236 (not res!3002388)) b!7483245))

(assert (= (and b!7483245 (not res!3002392)) b!7483235))

(assert (= (or b!7483234 b!7483236 b!7483239) bm!686967))

(assert (=> bm!686967 m!8074352))

(declare-fun m!8074388 () Bool)

(assert (=> b!7483244 m!8074388))

(assert (=> b!7483245 m!8074368))

(assert (=> b!7483245 m!8074368))

(assert (=> b!7483245 m!8074370))

(assert (=> b!7483235 m!8074372))

(assert (=> d!2300428 m!8074352))

(declare-fun m!8074390 () Bool)

(assert (=> d!2300428 m!8074390))

(assert (=> b!7483238 m!8074368))

(assert (=> b!7483238 m!8074368))

(assert (=> b!7483238 m!8074370))

(assert (=> b!7483232 m!8074372))

(assert (=> b!7483241 m!8074372))

(assert (=> b!7483241 m!8074372))

(declare-fun m!8074392 () Bool)

(assert (=> b!7483241 m!8074392))

(assert (=> b!7483241 m!8074368))

(assert (=> b!7483241 m!8074392))

(assert (=> b!7483241 m!8074368))

(declare-fun m!8074394 () Bool)

(assert (=> b!7483241 m!8074394))

(assert (=> b!7482833 d!2300428))

(declare-fun bs!1933754 () Bool)

(declare-fun b!7483252 () Bool)

(assert (= bs!1933754 (and b!7483252 d!2300384)))

(declare-fun lambda!463778 () Int)

(assert (=> bs!1933754 (not (= lambda!463778 lambda!463746))))

(declare-fun bs!1933755 () Bool)

(assert (= bs!1933755 (and b!7483252 b!7482830)))

(assert (=> bs!1933755 (not (= lambda!463778 lambda!463741))))

(declare-fun bs!1933756 () Bool)

(assert (= bs!1933756 (and b!7483252 b!7483171)))

(assert (=> bs!1933756 (= (and (= (reg!19946 lt!2628579) (reg!19946 lt!2628573)) (= lt!2628579 lt!2628573)) (= lambda!463778 lambda!463768))))

(declare-fun bs!1933757 () Bool)

(assert (= bs!1933757 (and b!7483252 b!7483191)))

(assert (=> bs!1933757 (= (and (= (reg!19946 lt!2628579) (reg!19946 lt!2628574)) (= lt!2628579 lt!2628574)) (= lambda!463778 lambda!463770))))

(declare-fun bs!1933758 () Bool)

(assert (= bs!1933758 (and b!7483252 b!7483193)))

(assert (=> bs!1933758 (not (= lambda!463778 lambda!463771))))

(declare-fun bs!1933759 () Bool)

(assert (= bs!1933759 (and b!7483252 b!7482827)))

(assert (=> bs!1933759 (not (= lambda!463778 lambda!463742))))

(declare-fun bs!1933760 () Bool)

(assert (= bs!1933760 (and b!7483252 d!2300388)))

(assert (=> bs!1933760 (not (= lambda!463778 lambda!463758))))

(assert (=> bs!1933760 (not (= lambda!463778 lambda!463756))))

(declare-fun bs!1933761 () Bool)

(assert (= bs!1933761 (and b!7483252 b!7483173)))

(assert (=> bs!1933761 (not (= lambda!463778 lambda!463769))))

(assert (=> bs!1933759 (not (= lambda!463778 lambda!463743))))

(assert (=> bs!1933755 (not (= lambda!463778 lambda!463740))))

(assert (=> b!7483252 true))

(assert (=> b!7483252 true))

(declare-fun bs!1933762 () Bool)

(declare-fun b!7483254 () Bool)

(assert (= bs!1933762 (and b!7483254 d!2300384)))

(declare-fun lambda!463779 () Int)

(assert (=> bs!1933762 (not (= lambda!463779 lambda!463746))))

(declare-fun bs!1933763 () Bool)

(assert (= bs!1933763 (and b!7483254 b!7482830)))

(assert (=> bs!1933763 (= (and (= (regOne!39746 lt!2628579) lt!2628581) (= (regTwo!39746 lt!2628579) rTail!78)) (= lambda!463779 lambda!463741))))

(declare-fun bs!1933764 () Bool)

(assert (= bs!1933764 (and b!7483254 b!7483171)))

(assert (=> bs!1933764 (not (= lambda!463779 lambda!463768))))

(declare-fun bs!1933765 () Bool)

(assert (= bs!1933765 (and b!7483254 b!7483191)))

(assert (=> bs!1933765 (not (= lambda!463779 lambda!463770))))

(declare-fun bs!1933767 () Bool)

(assert (= bs!1933767 (and b!7483254 b!7483193)))

(assert (=> bs!1933767 (= (and (= (regOne!39746 lt!2628579) (regOne!39746 lt!2628574)) (= (regTwo!39746 lt!2628579) (regTwo!39746 lt!2628574))) (= lambda!463779 lambda!463771))))

(declare-fun bs!1933768 () Bool)

(assert (= bs!1933768 (and b!7483254 b!7482827)))

(assert (=> bs!1933768 (not (= lambda!463779 lambda!463742))))

(declare-fun bs!1933769 () Bool)

(assert (= bs!1933769 (and b!7483254 d!2300388)))

(assert (=> bs!1933769 (not (= lambda!463779 lambda!463756))))

(declare-fun bs!1933771 () Bool)

(assert (= bs!1933771 (and b!7483254 b!7483173)))

(assert (=> bs!1933771 (= (and (= (regOne!39746 lt!2628579) (regOne!39746 lt!2628573)) (= (regTwo!39746 lt!2628579) (regTwo!39746 lt!2628573))) (= lambda!463779 lambda!463769))))

(assert (=> bs!1933768 (= (and (= (regOne!39746 lt!2628579) r2!5783) (= (regTwo!39746 lt!2628579) rTail!78)) (= lambda!463779 lambda!463743))))

(assert (=> bs!1933763 (not (= lambda!463779 lambda!463740))))

(assert (=> bs!1933769 (= (and (= (regOne!39746 lt!2628579) lt!2628581) (= (regTwo!39746 lt!2628579) rTail!78)) (= lambda!463779 lambda!463758))))

(declare-fun bs!1933776 () Bool)

(assert (= bs!1933776 (and b!7483254 b!7483252)))

(assert (=> bs!1933776 (not (= lambda!463779 lambda!463778))))

(assert (=> b!7483254 true))

(assert (=> b!7483254 true))

(declare-fun b!7483247 () Bool)

(declare-fun e!4463426 () Bool)

(assert (=> b!7483247 (= e!4463426 (= s!13591 (Cons!72209 (c!1382090 lt!2628579) Nil!72209)))))

(declare-fun b!7483248 () Bool)

(declare-fun e!4463427 () Bool)

(declare-fun e!4463429 () Bool)

(assert (=> b!7483248 (= e!4463427 e!4463429)))

(declare-fun c!1382181 () Bool)

(assert (=> b!7483248 (= c!1382181 ((_ is Star!19617) lt!2628579))))

(declare-fun bm!686968 () Bool)

(declare-fun call!686974 () Bool)

(assert (=> bm!686968 (= call!686974 (Exists!4236 (ite c!1382181 lambda!463778 lambda!463779)))))

(declare-fun b!7483249 () Bool)

(declare-fun e!4463424 () Bool)

(assert (=> b!7483249 (= e!4463424 (matchRSpec!4296 (regTwo!39747 lt!2628579) s!13591))))

(declare-fun bm!686969 () Bool)

(declare-fun call!686973 () Bool)

(assert (=> bm!686969 (= call!686973 (isEmpty!41225 s!13591))))

(declare-fun b!7483250 () Bool)

(declare-fun e!4463425 () Bool)

(declare-fun e!4463428 () Bool)

(assert (=> b!7483250 (= e!4463425 e!4463428)))

(declare-fun res!3002394 () Bool)

(assert (=> b!7483250 (= res!3002394 (not ((_ is EmptyLang!19617) lt!2628579)))))

(assert (=> b!7483250 (=> (not res!3002394) (not e!4463428))))

(declare-fun b!7483251 () Bool)

(assert (=> b!7483251 (= e!4463425 call!686973)))

(declare-fun e!4463423 () Bool)

(assert (=> b!7483252 (= e!4463423 call!686974)))

(declare-fun b!7483253 () Bool)

(declare-fun c!1382184 () Bool)

(assert (=> b!7483253 (= c!1382184 ((_ is Union!19617) lt!2628579))))

(assert (=> b!7483253 (= e!4463426 e!4463427)))

(assert (=> b!7483254 (= e!4463429 call!686974)))

(declare-fun d!2300430 () Bool)

(declare-fun c!1382182 () Bool)

(assert (=> d!2300430 (= c!1382182 ((_ is EmptyExpr!19617) lt!2628579))))

(assert (=> d!2300430 (= (matchRSpec!4296 lt!2628579 s!13591) e!4463425)))

(declare-fun b!7483246 () Bool)

(assert (=> b!7483246 (= e!4463427 e!4463424)))

(declare-fun res!3002393 () Bool)

(assert (=> b!7483246 (= res!3002393 (matchRSpec!4296 (regOne!39747 lt!2628579) s!13591))))

(assert (=> b!7483246 (=> res!3002393 e!4463424)))

(declare-fun b!7483255 () Bool)

(declare-fun c!1382183 () Bool)

(assert (=> b!7483255 (= c!1382183 ((_ is ElementMatch!19617) lt!2628579))))

(assert (=> b!7483255 (= e!4463428 e!4463426)))

(declare-fun b!7483256 () Bool)

(declare-fun res!3002395 () Bool)

(assert (=> b!7483256 (=> res!3002395 e!4463423)))

(assert (=> b!7483256 (= res!3002395 call!686973)))

(assert (=> b!7483256 (= e!4463429 e!4463423)))

(assert (= (and d!2300430 c!1382182) b!7483251))

(assert (= (and d!2300430 (not c!1382182)) b!7483250))

(assert (= (and b!7483250 res!3002394) b!7483255))

(assert (= (and b!7483255 c!1382183) b!7483247))

(assert (= (and b!7483255 (not c!1382183)) b!7483253))

(assert (= (and b!7483253 c!1382184) b!7483246))

(assert (= (and b!7483253 (not c!1382184)) b!7483248))

(assert (= (and b!7483246 (not res!3002393)) b!7483249))

(assert (= (and b!7483248 c!1382181) b!7483256))

(assert (= (and b!7483248 (not c!1382181)) b!7483254))

(assert (= (and b!7483256 (not res!3002395)) b!7483252))

(assert (= (or b!7483252 b!7483254) bm!686968))

(assert (= (or b!7483251 b!7483256) bm!686969))

(declare-fun m!8074416 () Bool)

(assert (=> bm!686968 m!8074416))

(declare-fun m!8074418 () Bool)

(assert (=> b!7483249 m!8074418))

(assert (=> bm!686969 m!8074352))

(declare-fun m!8074420 () Bool)

(assert (=> b!7483246 m!8074420))

(assert (=> b!7482833 d!2300430))

(declare-fun bs!1933782 () Bool)

(declare-fun b!7483288 () Bool)

(assert (= bs!1933782 (and b!7483288 b!7482830)))

(declare-fun lambda!463782 () Int)

(assert (=> bs!1933782 (not (= lambda!463782 lambda!463741))))

(declare-fun bs!1933784 () Bool)

(assert (= bs!1933784 (and b!7483288 b!7483171)))

(assert (=> bs!1933784 (= (and (= (reg!19946 lt!2628580) (reg!19946 lt!2628573)) (= lt!2628580 lt!2628573)) (= lambda!463782 lambda!463768))))

(declare-fun bs!1933786 () Bool)

(assert (= bs!1933786 (and b!7483288 b!7483191)))

(assert (=> bs!1933786 (= (and (= (reg!19946 lt!2628580) (reg!19946 lt!2628574)) (= lt!2628580 lt!2628574)) (= lambda!463782 lambda!463770))))

(declare-fun bs!1933788 () Bool)

(assert (= bs!1933788 (and b!7483288 b!7483193)))

(assert (=> bs!1933788 (not (= lambda!463782 lambda!463771))))

(declare-fun bs!1933789 () Bool)

(assert (= bs!1933789 (and b!7483288 b!7482827)))

(assert (=> bs!1933789 (not (= lambda!463782 lambda!463742))))

(declare-fun bs!1933791 () Bool)

(assert (= bs!1933791 (and b!7483288 d!2300384)))

(assert (=> bs!1933791 (not (= lambda!463782 lambda!463746))))

(declare-fun bs!1933793 () Bool)

(assert (= bs!1933793 (and b!7483288 b!7483254)))

(assert (=> bs!1933793 (not (= lambda!463782 lambda!463779))))

(declare-fun bs!1933795 () Bool)

(assert (= bs!1933795 (and b!7483288 d!2300388)))

(assert (=> bs!1933795 (not (= lambda!463782 lambda!463756))))

(declare-fun bs!1933796 () Bool)

(assert (= bs!1933796 (and b!7483288 b!7483173)))

(assert (=> bs!1933796 (not (= lambda!463782 lambda!463769))))

(assert (=> bs!1933789 (not (= lambda!463782 lambda!463743))))

(assert (=> bs!1933782 (not (= lambda!463782 lambda!463740))))

(assert (=> bs!1933795 (not (= lambda!463782 lambda!463758))))

(declare-fun bs!1933797 () Bool)

(assert (= bs!1933797 (and b!7483288 b!7483252)))

(assert (=> bs!1933797 (= (and (= (reg!19946 lt!2628580) (reg!19946 lt!2628579)) (= lt!2628580 lt!2628579)) (= lambda!463782 lambda!463778))))

(assert (=> b!7483288 true))

(assert (=> b!7483288 true))

(declare-fun bs!1933798 () Bool)

(declare-fun b!7483290 () Bool)

(assert (= bs!1933798 (and b!7483290 b!7482830)))

(declare-fun lambda!463783 () Int)

(assert (=> bs!1933798 (= (and (= (regOne!39746 lt!2628580) lt!2628581) (= (regTwo!39746 lt!2628580) rTail!78)) (= lambda!463783 lambda!463741))))

(declare-fun bs!1933799 () Bool)

(assert (= bs!1933799 (and b!7483290 b!7483171)))

(assert (=> bs!1933799 (not (= lambda!463783 lambda!463768))))

(declare-fun bs!1933800 () Bool)

(assert (= bs!1933800 (and b!7483290 b!7483191)))

(assert (=> bs!1933800 (not (= lambda!463783 lambda!463770))))

(declare-fun bs!1933801 () Bool)

(assert (= bs!1933801 (and b!7483290 b!7483288)))

(assert (=> bs!1933801 (not (= lambda!463783 lambda!463782))))

(declare-fun bs!1933802 () Bool)

(assert (= bs!1933802 (and b!7483290 b!7483193)))

(assert (=> bs!1933802 (= (and (= (regOne!39746 lt!2628580) (regOne!39746 lt!2628574)) (= (regTwo!39746 lt!2628580) (regTwo!39746 lt!2628574))) (= lambda!463783 lambda!463771))))

(declare-fun bs!1933803 () Bool)

(assert (= bs!1933803 (and b!7483290 b!7482827)))

(assert (=> bs!1933803 (not (= lambda!463783 lambda!463742))))

(declare-fun bs!1933805 () Bool)

(assert (= bs!1933805 (and b!7483290 d!2300384)))

(assert (=> bs!1933805 (not (= lambda!463783 lambda!463746))))

(declare-fun bs!1933806 () Bool)

(assert (= bs!1933806 (and b!7483290 b!7483254)))

(assert (=> bs!1933806 (= (and (= (regOne!39746 lt!2628580) (regOne!39746 lt!2628579)) (= (regTwo!39746 lt!2628580) (regTwo!39746 lt!2628579))) (= lambda!463783 lambda!463779))))

(declare-fun bs!1933807 () Bool)

(assert (= bs!1933807 (and b!7483290 d!2300388)))

(assert (=> bs!1933807 (not (= lambda!463783 lambda!463756))))

(declare-fun bs!1933808 () Bool)

(assert (= bs!1933808 (and b!7483290 b!7483173)))

(assert (=> bs!1933808 (= (and (= (regOne!39746 lt!2628580) (regOne!39746 lt!2628573)) (= (regTwo!39746 lt!2628580) (regTwo!39746 lt!2628573))) (= lambda!463783 lambda!463769))))

(assert (=> bs!1933803 (= (and (= (regOne!39746 lt!2628580) r2!5783) (= (regTwo!39746 lt!2628580) rTail!78)) (= lambda!463783 lambda!463743))))

(assert (=> bs!1933798 (not (= lambda!463783 lambda!463740))))

(assert (=> bs!1933807 (= (and (= (regOne!39746 lt!2628580) lt!2628581) (= (regTwo!39746 lt!2628580) rTail!78)) (= lambda!463783 lambda!463758))))

(declare-fun bs!1933809 () Bool)

(assert (= bs!1933809 (and b!7483290 b!7483252)))

(assert (=> bs!1933809 (not (= lambda!463783 lambda!463778))))

(assert (=> b!7483290 true))

(assert (=> b!7483290 true))

(declare-fun b!7483283 () Bool)

(declare-fun e!4463447 () Bool)

(assert (=> b!7483283 (= e!4463447 (= s!13591 (Cons!72209 (c!1382090 lt!2628580) Nil!72209)))))

(declare-fun b!7483284 () Bool)

(declare-fun e!4463448 () Bool)

(declare-fun e!4463450 () Bool)

(assert (=> b!7483284 (= e!4463448 e!4463450)))

(declare-fun c!1382192 () Bool)

(assert (=> b!7483284 (= c!1382192 ((_ is Star!19617) lt!2628580))))

(declare-fun call!686979 () Bool)

(declare-fun bm!686973 () Bool)

(assert (=> bm!686973 (= call!686979 (Exists!4236 (ite c!1382192 lambda!463782 lambda!463783)))))

(declare-fun b!7483285 () Bool)

(declare-fun e!4463445 () Bool)

(assert (=> b!7483285 (= e!4463445 (matchRSpec!4296 (regTwo!39747 lt!2628580) s!13591))))

(declare-fun bm!686974 () Bool)

(declare-fun call!686978 () Bool)

(assert (=> bm!686974 (= call!686978 (isEmpty!41225 s!13591))))

(declare-fun b!7483286 () Bool)

(declare-fun e!4463446 () Bool)

(declare-fun e!4463449 () Bool)

(assert (=> b!7483286 (= e!4463446 e!4463449)))

(declare-fun res!3002408 () Bool)

(assert (=> b!7483286 (= res!3002408 (not ((_ is EmptyLang!19617) lt!2628580)))))

(assert (=> b!7483286 (=> (not res!3002408) (not e!4463449))))

(declare-fun b!7483287 () Bool)

(assert (=> b!7483287 (= e!4463446 call!686978)))

(declare-fun e!4463444 () Bool)

(assert (=> b!7483288 (= e!4463444 call!686979)))

(declare-fun b!7483289 () Bool)

(declare-fun c!1382195 () Bool)

(assert (=> b!7483289 (= c!1382195 ((_ is Union!19617) lt!2628580))))

(assert (=> b!7483289 (= e!4463447 e!4463448)))

(assert (=> b!7483290 (= e!4463450 call!686979)))

(declare-fun d!2300436 () Bool)

(declare-fun c!1382193 () Bool)

(assert (=> d!2300436 (= c!1382193 ((_ is EmptyExpr!19617) lt!2628580))))

(assert (=> d!2300436 (= (matchRSpec!4296 lt!2628580 s!13591) e!4463446)))

(declare-fun b!7483282 () Bool)

(assert (=> b!7483282 (= e!4463448 e!4463445)))

(declare-fun res!3002407 () Bool)

(assert (=> b!7483282 (= res!3002407 (matchRSpec!4296 (regOne!39747 lt!2628580) s!13591))))

(assert (=> b!7483282 (=> res!3002407 e!4463445)))

(declare-fun b!7483291 () Bool)

(declare-fun c!1382194 () Bool)

(assert (=> b!7483291 (= c!1382194 ((_ is ElementMatch!19617) lt!2628580))))

(assert (=> b!7483291 (= e!4463449 e!4463447)))

(declare-fun b!7483292 () Bool)

(declare-fun res!3002409 () Bool)

(assert (=> b!7483292 (=> res!3002409 e!4463444)))

(assert (=> b!7483292 (= res!3002409 call!686978)))

(assert (=> b!7483292 (= e!4463450 e!4463444)))

(assert (= (and d!2300436 c!1382193) b!7483287))

(assert (= (and d!2300436 (not c!1382193)) b!7483286))

(assert (= (and b!7483286 res!3002408) b!7483291))

(assert (= (and b!7483291 c!1382194) b!7483283))

(assert (= (and b!7483291 (not c!1382194)) b!7483289))

(assert (= (and b!7483289 c!1382195) b!7483282))

(assert (= (and b!7483289 (not c!1382195)) b!7483284))

(assert (= (and b!7483282 (not res!3002407)) b!7483285))

(assert (= (and b!7483284 c!1382192) b!7483292))

(assert (= (and b!7483284 (not c!1382192)) b!7483290))

(assert (= (and b!7483292 (not res!3002409)) b!7483288))

(assert (= (or b!7483288 b!7483290) bm!686973))

(assert (= (or b!7483287 b!7483292) bm!686974))

(declare-fun m!8074440 () Bool)

(assert (=> bm!686973 m!8074440))

(declare-fun m!8074442 () Bool)

(assert (=> b!7483285 m!8074442))

(assert (=> bm!686974 m!8074352))

(declare-fun m!8074444 () Bool)

(assert (=> b!7483282 m!8074444))

(assert (=> b!7482833 d!2300436))

(declare-fun d!2300444 () Bool)

(assert (=> d!2300444 (= (matchR!9381 lt!2628580 s!13591) (matchRSpec!4296 lt!2628580 s!13591))))

(declare-fun lt!2628633 () Unit!166069)

(assert (=> d!2300444 (= lt!2628633 (choose!57856 lt!2628580 s!13591))))

(assert (=> d!2300444 (validRegex!10131 lt!2628580)))

(assert (=> d!2300444 (= (mainMatchTheorem!4290 lt!2628580 s!13591) lt!2628633)))

(declare-fun bs!1933816 () Bool)

(assert (= bs!1933816 d!2300444))

(assert (=> bs!1933816 m!8074136))

(assert (=> bs!1933816 m!8074144))

(declare-fun m!8074446 () Bool)

(assert (=> bs!1933816 m!8074446))

(declare-fun m!8074448 () Bool)

(assert (=> bs!1933816 m!8074448))

(assert (=> b!7482833 d!2300444))

(declare-fun d!2300446 () Bool)

(assert (=> d!2300446 (= (matchR!9381 lt!2628579 s!13591) (matchRSpec!4296 lt!2628579 s!13591))))

(declare-fun lt!2628634 () Unit!166069)

(assert (=> d!2300446 (= lt!2628634 (choose!57856 lt!2628579 s!13591))))

(assert (=> d!2300446 (validRegex!10131 lt!2628579)))

(assert (=> d!2300446 (= (mainMatchTheorem!4290 lt!2628579 s!13591) lt!2628634)))

(declare-fun bs!1933818 () Bool)

(assert (= bs!1933818 d!2300446))

(assert (=> bs!1933818 m!8074146))

(assert (=> bs!1933818 m!8074142))

(declare-fun m!8074450 () Bool)

(assert (=> bs!1933818 m!8074450))

(assert (=> bs!1933818 m!8074390))

(assert (=> b!7482833 d!2300446))

(declare-fun b!7483318 () Bool)

(declare-fun e!4463469 () Bool)

(assert (=> b!7483318 (= e!4463469 (= (head!15354 s!13591) (c!1382090 lt!2628580)))))

(declare-fun b!7483319 () Bool)

(declare-fun e!4463468 () Bool)

(declare-fun lt!2628635 () Bool)

(assert (=> b!7483319 (= e!4463468 (not lt!2628635))))

(declare-fun b!7483320 () Bool)

(declare-fun e!4463471 () Bool)

(declare-fun call!686983 () Bool)

(assert (=> b!7483320 (= e!4463471 (= lt!2628635 call!686983))))

(declare-fun b!7483321 () Bool)

(declare-fun e!4463465 () Bool)

(assert (=> b!7483321 (= e!4463465 (not (= (head!15354 s!13591) (c!1382090 lt!2628580))))))

(declare-fun b!7483322 () Bool)

(declare-fun e!4463467 () Bool)

(assert (=> b!7483322 (= e!4463467 e!4463465)))

(declare-fun res!3002424 () Bool)

(assert (=> b!7483322 (=> res!3002424 e!4463465)))

(assert (=> b!7483322 (= res!3002424 call!686983)))

(declare-fun b!7483323 () Bool)

(declare-fun e!4463466 () Bool)

(assert (=> b!7483323 (= e!4463466 e!4463467)))

(declare-fun res!3002426 () Bool)

(assert (=> b!7483323 (=> (not res!3002426) (not e!4463467))))

(assert (=> b!7483323 (= res!3002426 (not lt!2628635))))

(declare-fun b!7483324 () Bool)

(declare-fun res!3002421 () Bool)

(assert (=> b!7483324 (=> (not res!3002421) (not e!4463469))))

(assert (=> b!7483324 (= res!3002421 (isEmpty!41225 (tail!14923 s!13591)))))

(declare-fun b!7483325 () Bool)

(declare-fun res!3002423 () Bool)

(assert (=> b!7483325 (=> (not res!3002423) (not e!4463469))))

(assert (=> b!7483325 (= res!3002423 (not call!686983))))

(declare-fun d!2300448 () Bool)

(assert (=> d!2300448 e!4463471))

(declare-fun c!1382205 () Bool)

(assert (=> d!2300448 (= c!1382205 ((_ is EmptyExpr!19617) lt!2628580))))

(declare-fun e!4463470 () Bool)

(assert (=> d!2300448 (= lt!2628635 e!4463470)))

(declare-fun c!1382203 () Bool)

(assert (=> d!2300448 (= c!1382203 (isEmpty!41225 s!13591))))

(assert (=> d!2300448 (validRegex!10131 lt!2628580)))

(assert (=> d!2300448 (= (matchR!9381 lt!2628580 s!13591) lt!2628635)))

(declare-fun b!7483326 () Bool)

(declare-fun res!3002427 () Bool)

(assert (=> b!7483326 (=> res!3002427 e!4463466)))

(assert (=> b!7483326 (= res!3002427 (not ((_ is ElementMatch!19617) lt!2628580)))))

(assert (=> b!7483326 (= e!4463468 e!4463466)))

(declare-fun bm!686978 () Bool)

(assert (=> bm!686978 (= call!686983 (isEmpty!41225 s!13591))))

(declare-fun b!7483327 () Bool)

(assert (=> b!7483327 (= e!4463470 (matchR!9381 (derivativeStep!5614 lt!2628580 (head!15354 s!13591)) (tail!14923 s!13591)))))

(declare-fun b!7483328 () Bool)

(assert (=> b!7483328 (= e!4463471 e!4463468)))

(declare-fun c!1382204 () Bool)

(assert (=> b!7483328 (= c!1382204 ((_ is EmptyLang!19617) lt!2628580))))

(declare-fun b!7483329 () Bool)

(declare-fun res!3002422 () Bool)

(assert (=> b!7483329 (=> res!3002422 e!4463466)))

(assert (=> b!7483329 (= res!3002422 e!4463469)))

(declare-fun res!3002425 () Bool)

(assert (=> b!7483329 (=> (not res!3002425) (not e!4463469))))

(assert (=> b!7483329 (= res!3002425 lt!2628635)))

(declare-fun b!7483330 () Bool)

(assert (=> b!7483330 (= e!4463470 (nullable!8554 lt!2628580))))

(declare-fun b!7483331 () Bool)

(declare-fun res!3002428 () Bool)

(assert (=> b!7483331 (=> res!3002428 e!4463465)))

(assert (=> b!7483331 (= res!3002428 (not (isEmpty!41225 (tail!14923 s!13591))))))

(assert (= (and d!2300448 c!1382203) b!7483330))

(assert (= (and d!2300448 (not c!1382203)) b!7483327))

(assert (= (and d!2300448 c!1382205) b!7483320))

(assert (= (and d!2300448 (not c!1382205)) b!7483328))

(assert (= (and b!7483328 c!1382204) b!7483319))

(assert (= (and b!7483328 (not c!1382204)) b!7483326))

(assert (= (and b!7483326 (not res!3002427)) b!7483329))

(assert (= (and b!7483329 res!3002425) b!7483325))

(assert (= (and b!7483325 res!3002423) b!7483324))

(assert (= (and b!7483324 res!3002421) b!7483318))

(assert (= (and b!7483329 (not res!3002422)) b!7483323))

(assert (= (and b!7483323 res!3002426) b!7483322))

(assert (= (and b!7483322 (not res!3002424)) b!7483331))

(assert (= (and b!7483331 (not res!3002428)) b!7483321))

(assert (= (or b!7483320 b!7483322 b!7483325) bm!686978))

(assert (=> bm!686978 m!8074352))

(declare-fun m!8074452 () Bool)

(assert (=> b!7483330 m!8074452))

(assert (=> b!7483331 m!8074368))

(assert (=> b!7483331 m!8074368))

(assert (=> b!7483331 m!8074370))

(assert (=> b!7483321 m!8074372))

(assert (=> d!2300448 m!8074352))

(assert (=> d!2300448 m!8074448))

(assert (=> b!7483324 m!8074368))

(assert (=> b!7483324 m!8074368))

(assert (=> b!7483324 m!8074370))

(assert (=> b!7483318 m!8074372))

(assert (=> b!7483327 m!8074372))

(assert (=> b!7483327 m!8074372))

(declare-fun m!8074454 () Bool)

(assert (=> b!7483327 m!8074454))

(assert (=> b!7483327 m!8074368))

(assert (=> b!7483327 m!8074454))

(assert (=> b!7483327 m!8074368))

(declare-fun m!8074456 () Bool)

(assert (=> b!7483327 m!8074456))

(assert (=> b!7482833 d!2300448))

(declare-fun bs!1933827 () Bool)

(declare-fun d!2300450 () Bool)

(assert (= bs!1933827 (and d!2300450 b!7482830)))

(declare-fun lambda!463786 () Int)

(assert (=> bs!1933827 (not (= lambda!463786 lambda!463741))))

(declare-fun bs!1933829 () Bool)

(assert (= bs!1933829 (and d!2300450 b!7483171)))

(assert (=> bs!1933829 (not (= lambda!463786 lambda!463768))))

(declare-fun bs!1933830 () Bool)

(assert (= bs!1933830 (and d!2300450 b!7483191)))

(assert (=> bs!1933830 (not (= lambda!463786 lambda!463770))))

(declare-fun bs!1933832 () Bool)

(assert (= bs!1933832 (and d!2300450 b!7483290)))

(assert (=> bs!1933832 (not (= lambda!463786 lambda!463783))))

(declare-fun bs!1933834 () Bool)

(assert (= bs!1933834 (and d!2300450 b!7483288)))

(assert (=> bs!1933834 (not (= lambda!463786 lambda!463782))))

(declare-fun bs!1933836 () Bool)

(assert (= bs!1933836 (and d!2300450 b!7483193)))

(assert (=> bs!1933836 (not (= lambda!463786 lambda!463771))))

(declare-fun bs!1933838 () Bool)

(assert (= bs!1933838 (and d!2300450 b!7482827)))

(assert (=> bs!1933838 (= lambda!463786 lambda!463742)))

(declare-fun bs!1933840 () Bool)

(assert (= bs!1933840 (and d!2300450 d!2300384)))

(assert (=> bs!1933840 (= (= r2!5783 lt!2628581) (= lambda!463786 lambda!463746))))

(declare-fun bs!1933841 () Bool)

(assert (= bs!1933841 (and d!2300450 b!7483254)))

(assert (=> bs!1933841 (not (= lambda!463786 lambda!463779))))

(declare-fun bs!1933842 () Bool)

(assert (= bs!1933842 (and d!2300450 d!2300388)))

(assert (=> bs!1933842 (= (= r2!5783 lt!2628581) (= lambda!463786 lambda!463756))))

(declare-fun bs!1933843 () Bool)

(assert (= bs!1933843 (and d!2300450 b!7483173)))

(assert (=> bs!1933843 (not (= lambda!463786 lambda!463769))))

(assert (=> bs!1933838 (not (= lambda!463786 lambda!463743))))

(assert (=> bs!1933827 (= (= r2!5783 lt!2628581) (= lambda!463786 lambda!463740))))

(assert (=> bs!1933842 (not (= lambda!463786 lambda!463758))))

(declare-fun bs!1933844 () Bool)

(assert (= bs!1933844 (and d!2300450 b!7483252)))

(assert (=> bs!1933844 (not (= lambda!463786 lambda!463778))))

(assert (=> d!2300450 true))

(assert (=> d!2300450 true))

(assert (=> d!2300450 true))

(declare-fun bs!1933845 () Bool)

(assert (= bs!1933845 d!2300450))

(declare-fun lambda!463787 () Int)

(assert (=> bs!1933845 (not (= lambda!463787 lambda!463786))))

(assert (=> bs!1933827 (= (= r2!5783 lt!2628581) (= lambda!463787 lambda!463741))))

(assert (=> bs!1933829 (not (= lambda!463787 lambda!463768))))

(assert (=> bs!1933830 (not (= lambda!463787 lambda!463770))))

(assert (=> bs!1933832 (= (and (= r2!5783 (regOne!39746 lt!2628580)) (= rTail!78 (regTwo!39746 lt!2628580))) (= lambda!463787 lambda!463783))))

(assert (=> bs!1933834 (not (= lambda!463787 lambda!463782))))

(assert (=> bs!1933836 (= (and (= r2!5783 (regOne!39746 lt!2628574)) (= rTail!78 (regTwo!39746 lt!2628574))) (= lambda!463787 lambda!463771))))

(assert (=> bs!1933838 (not (= lambda!463787 lambda!463742))))

(assert (=> bs!1933840 (not (= lambda!463787 lambda!463746))))

(assert (=> bs!1933841 (= (and (= r2!5783 (regOne!39746 lt!2628579)) (= rTail!78 (regTwo!39746 lt!2628579))) (= lambda!463787 lambda!463779))))

(assert (=> bs!1933842 (not (= lambda!463787 lambda!463756))))

(assert (=> bs!1933843 (= (and (= r2!5783 (regOne!39746 lt!2628573)) (= rTail!78 (regTwo!39746 lt!2628573))) (= lambda!463787 lambda!463769))))

(assert (=> bs!1933838 (= lambda!463787 lambda!463743)))

(assert (=> bs!1933827 (not (= lambda!463787 lambda!463740))))

(assert (=> bs!1933842 (= (= r2!5783 lt!2628581) (= lambda!463787 lambda!463758))))

(assert (=> bs!1933844 (not (= lambda!463787 lambda!463778))))

(assert (=> d!2300450 true))

(assert (=> d!2300450 true))

(assert (=> d!2300450 true))

(assert (=> d!2300450 (= (Exists!4236 lambda!463786) (Exists!4236 lambda!463787))))

(declare-fun lt!2628636 () Unit!166069)

(assert (=> d!2300450 (= lt!2628636 (choose!57853 r2!5783 rTail!78 s!13591))))

(assert (=> d!2300450 (validRegex!10131 r2!5783)))

(assert (=> d!2300450 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2570 r2!5783 rTail!78 s!13591) lt!2628636)))

(declare-fun m!8074472 () Bool)

(assert (=> bs!1933845 m!8074472))

(declare-fun m!8074474 () Bool)

(assert (=> bs!1933845 m!8074474))

(declare-fun m!8074476 () Bool)

(assert (=> bs!1933845 m!8074476))

(assert (=> bs!1933845 m!8074192))

(assert (=> b!7482827 d!2300450))

(declare-fun b!7483346 () Bool)

(declare-fun e!4463483 () Bool)

(assert (=> b!7483346 (= e!4463483 (= (head!15354 (_1!37645 lt!2628569)) (c!1382090 r2!5783)))))

(declare-fun b!7483347 () Bool)

(declare-fun e!4463482 () Bool)

(declare-fun lt!2628640 () Bool)

(assert (=> b!7483347 (= e!4463482 (not lt!2628640))))

(declare-fun b!7483348 () Bool)

(declare-fun e!4463485 () Bool)

(declare-fun call!686985 () Bool)

(assert (=> b!7483348 (= e!4463485 (= lt!2628640 call!686985))))

(declare-fun b!7483349 () Bool)

(declare-fun e!4463479 () Bool)

(assert (=> b!7483349 (= e!4463479 (not (= (head!15354 (_1!37645 lt!2628569)) (c!1382090 r2!5783))))))

(declare-fun b!7483350 () Bool)

(declare-fun e!4463481 () Bool)

(assert (=> b!7483350 (= e!4463481 e!4463479)))

(declare-fun res!3002440 () Bool)

(assert (=> b!7483350 (=> res!3002440 e!4463479)))

(assert (=> b!7483350 (= res!3002440 call!686985)))

(declare-fun b!7483351 () Bool)

(declare-fun e!4463480 () Bool)

(assert (=> b!7483351 (= e!4463480 e!4463481)))

(declare-fun res!3002442 () Bool)

(assert (=> b!7483351 (=> (not res!3002442) (not e!4463481))))

(assert (=> b!7483351 (= res!3002442 (not lt!2628640))))

(declare-fun b!7483352 () Bool)

(declare-fun res!3002437 () Bool)

(assert (=> b!7483352 (=> (not res!3002437) (not e!4463483))))

(assert (=> b!7483352 (= res!3002437 (isEmpty!41225 (tail!14923 (_1!37645 lt!2628569))))))

(declare-fun b!7483353 () Bool)

(declare-fun res!3002439 () Bool)

(assert (=> b!7483353 (=> (not res!3002439) (not e!4463483))))

(assert (=> b!7483353 (= res!3002439 (not call!686985))))

(declare-fun d!2300458 () Bool)

(assert (=> d!2300458 e!4463485))

(declare-fun c!1382211 () Bool)

(assert (=> d!2300458 (= c!1382211 ((_ is EmptyExpr!19617) r2!5783))))

(declare-fun e!4463484 () Bool)

(assert (=> d!2300458 (= lt!2628640 e!4463484)))

(declare-fun c!1382209 () Bool)

(assert (=> d!2300458 (= c!1382209 (isEmpty!41225 (_1!37645 lt!2628569)))))

(assert (=> d!2300458 (validRegex!10131 r2!5783)))

(assert (=> d!2300458 (= (matchR!9381 r2!5783 (_1!37645 lt!2628569)) lt!2628640)))

(declare-fun b!7483354 () Bool)

(declare-fun res!3002443 () Bool)

(assert (=> b!7483354 (=> res!3002443 e!4463480)))

(assert (=> b!7483354 (= res!3002443 (not ((_ is ElementMatch!19617) r2!5783)))))

(assert (=> b!7483354 (= e!4463482 e!4463480)))

(declare-fun bm!686980 () Bool)

(assert (=> bm!686980 (= call!686985 (isEmpty!41225 (_1!37645 lt!2628569)))))

(declare-fun b!7483355 () Bool)

(assert (=> b!7483355 (= e!4463484 (matchR!9381 (derivativeStep!5614 r2!5783 (head!15354 (_1!37645 lt!2628569))) (tail!14923 (_1!37645 lt!2628569))))))

(declare-fun b!7483356 () Bool)

(assert (=> b!7483356 (= e!4463485 e!4463482)))

(declare-fun c!1382210 () Bool)

(assert (=> b!7483356 (= c!1382210 ((_ is EmptyLang!19617) r2!5783))))

(declare-fun b!7483357 () Bool)

(declare-fun res!3002438 () Bool)

(assert (=> b!7483357 (=> res!3002438 e!4463480)))

(assert (=> b!7483357 (= res!3002438 e!4463483)))

(declare-fun res!3002441 () Bool)

(assert (=> b!7483357 (=> (not res!3002441) (not e!4463483))))

(assert (=> b!7483357 (= res!3002441 lt!2628640)))

(declare-fun b!7483358 () Bool)

(assert (=> b!7483358 (= e!4463484 (nullable!8554 r2!5783))))

(declare-fun b!7483359 () Bool)

(declare-fun res!3002444 () Bool)

(assert (=> b!7483359 (=> res!3002444 e!4463479)))

(assert (=> b!7483359 (= res!3002444 (not (isEmpty!41225 (tail!14923 (_1!37645 lt!2628569)))))))

(assert (= (and d!2300458 c!1382209) b!7483358))

(assert (= (and d!2300458 (not c!1382209)) b!7483355))

(assert (= (and d!2300458 c!1382211) b!7483348))

(assert (= (and d!2300458 (not c!1382211)) b!7483356))

(assert (= (and b!7483356 c!1382210) b!7483347))

(assert (= (and b!7483356 (not c!1382210)) b!7483354))

(assert (= (and b!7483354 (not res!3002443)) b!7483357))

(assert (= (and b!7483357 res!3002441) b!7483353))

(assert (= (and b!7483353 res!3002439) b!7483352))

(assert (= (and b!7483352 res!3002437) b!7483346))

(assert (= (and b!7483357 (not res!3002438)) b!7483351))

(assert (= (and b!7483351 res!3002442) b!7483350))

(assert (= (and b!7483350 (not res!3002440)) b!7483359))

(assert (= (and b!7483359 (not res!3002444)) b!7483349))

(assert (= (or b!7483348 b!7483350 b!7483353) bm!686980))

(declare-fun m!8074478 () Bool)

(assert (=> bm!686980 m!8074478))

(declare-fun m!8074480 () Bool)

(assert (=> b!7483358 m!8074480))

(declare-fun m!8074482 () Bool)

(assert (=> b!7483359 m!8074482))

(assert (=> b!7483359 m!8074482))

(declare-fun m!8074484 () Bool)

(assert (=> b!7483359 m!8074484))

(declare-fun m!8074486 () Bool)

(assert (=> b!7483349 m!8074486))

(assert (=> d!2300458 m!8074478))

(assert (=> d!2300458 m!8074192))

(assert (=> b!7483352 m!8074482))

(assert (=> b!7483352 m!8074482))

(assert (=> b!7483352 m!8074484))

(assert (=> b!7483346 m!8074486))

(assert (=> b!7483355 m!8074486))

(assert (=> b!7483355 m!8074486))

(declare-fun m!8074488 () Bool)

(assert (=> b!7483355 m!8074488))

(assert (=> b!7483355 m!8074482))

(assert (=> b!7483355 m!8074488))

(assert (=> b!7483355 m!8074482))

(declare-fun m!8074490 () Bool)

(assert (=> b!7483355 m!8074490))

(assert (=> b!7482827 d!2300458))

(declare-fun d!2300460 () Bool)

(assert (=> d!2300460 (= (get!25289 lt!2628576) (v!54302 lt!2628576))))

(assert (=> b!7482827 d!2300460))

(declare-fun bs!1933860 () Bool)

(declare-fun d!2300462 () Bool)

(assert (= bs!1933860 (and d!2300462 d!2300450)))

(declare-fun lambda!463790 () Int)

(assert (=> bs!1933860 (not (= lambda!463790 lambda!463787))))

(assert (=> bs!1933860 (= lambda!463790 lambda!463786)))

(declare-fun bs!1933861 () Bool)

(assert (= bs!1933861 (and d!2300462 b!7482830)))

(assert (=> bs!1933861 (not (= lambda!463790 lambda!463741))))

(declare-fun bs!1933862 () Bool)

(assert (= bs!1933862 (and d!2300462 b!7483171)))

(assert (=> bs!1933862 (not (= lambda!463790 lambda!463768))))

(declare-fun bs!1933863 () Bool)

(assert (= bs!1933863 (and d!2300462 b!7483191)))

(assert (=> bs!1933863 (not (= lambda!463790 lambda!463770))))

(declare-fun bs!1933864 () Bool)

(assert (= bs!1933864 (and d!2300462 b!7483290)))

(assert (=> bs!1933864 (not (= lambda!463790 lambda!463783))))

(declare-fun bs!1933865 () Bool)

(assert (= bs!1933865 (and d!2300462 b!7483288)))

(assert (=> bs!1933865 (not (= lambda!463790 lambda!463782))))

(declare-fun bs!1933866 () Bool)

(assert (= bs!1933866 (and d!2300462 b!7483193)))

(assert (=> bs!1933866 (not (= lambda!463790 lambda!463771))))

(declare-fun bs!1933867 () Bool)

(assert (= bs!1933867 (and d!2300462 b!7482827)))

(assert (=> bs!1933867 (= lambda!463790 lambda!463742)))

(declare-fun bs!1933868 () Bool)

(assert (= bs!1933868 (and d!2300462 d!2300384)))

(assert (=> bs!1933868 (= (= r2!5783 lt!2628581) (= lambda!463790 lambda!463746))))

(declare-fun bs!1933869 () Bool)

(assert (= bs!1933869 (and d!2300462 b!7483254)))

(assert (=> bs!1933869 (not (= lambda!463790 lambda!463779))))

(declare-fun bs!1933870 () Bool)

(assert (= bs!1933870 (and d!2300462 d!2300388)))

(assert (=> bs!1933870 (= (= r2!5783 lt!2628581) (= lambda!463790 lambda!463756))))

(declare-fun bs!1933871 () Bool)

(assert (= bs!1933871 (and d!2300462 b!7483173)))

(assert (=> bs!1933871 (not (= lambda!463790 lambda!463769))))

(assert (=> bs!1933867 (not (= lambda!463790 lambda!463743))))

(assert (=> bs!1933861 (= (= r2!5783 lt!2628581) (= lambda!463790 lambda!463740))))

(assert (=> bs!1933870 (not (= lambda!463790 lambda!463758))))

(declare-fun bs!1933872 () Bool)

(assert (= bs!1933872 (and d!2300462 b!7483252)))

(assert (=> bs!1933872 (not (= lambda!463790 lambda!463778))))

(assert (=> d!2300462 true))

(assert (=> d!2300462 true))

(assert (=> d!2300462 true))

(assert (=> d!2300462 (= (isDefined!13863 (findConcatSeparation!3296 r2!5783 rTail!78 Nil!72209 s!13591 s!13591)) (Exists!4236 lambda!463790))))

(declare-fun lt!2628641 () Unit!166069)

(assert (=> d!2300462 (= lt!2628641 (choose!57852 r2!5783 rTail!78 s!13591))))

(assert (=> d!2300462 (validRegex!10131 r2!5783)))

(assert (=> d!2300462 (= (lemmaFindConcatSeparationEquivalentToExists!3054 r2!5783 rTail!78 s!13591) lt!2628641)))

(declare-fun bs!1933875 () Bool)

(assert (= bs!1933875 d!2300462))

(assert (=> bs!1933875 m!8074170))

(declare-fun m!8074498 () Bool)

(assert (=> bs!1933875 m!8074498))

(declare-fun m!8074500 () Bool)

(assert (=> bs!1933875 m!8074500))

(assert (=> bs!1933875 m!8074170))

(declare-fun m!8074502 () Bool)

(assert (=> bs!1933875 m!8074502))

(assert (=> bs!1933875 m!8074192))

(assert (=> b!7482827 d!2300462))

(declare-fun b!7483360 () Bool)

(declare-fun res!3002446 () Bool)

(declare-fun e!4463489 () Bool)

(assert (=> b!7483360 (=> (not res!3002446) (not e!4463489))))

(declare-fun lt!2628644 () Option!17174)

(assert (=> b!7483360 (= res!3002446 (matchR!9381 rTail!78 (_2!37645 (get!25289 lt!2628644))))))

(declare-fun b!7483361 () Bool)

(declare-fun e!4463490 () Option!17174)

(assert (=> b!7483361 (= e!4463490 None!17173)))

(declare-fun b!7483362 () Bool)

(declare-fun e!4463487 () Option!17174)

(assert (=> b!7483362 (= e!4463487 e!4463490)))

(declare-fun c!1382213 () Bool)

(assert (=> b!7483362 (= c!1382213 ((_ is Nil!72209) s!13591))))

(declare-fun b!7483363 () Bool)

(declare-fun lt!2628643 () Unit!166069)

(declare-fun lt!2628645 () Unit!166069)

(assert (=> b!7483363 (= lt!2628643 lt!2628645)))

(assert (=> b!7483363 (= (++!17230 (++!17230 Nil!72209 (Cons!72209 (h!78657 s!13591) Nil!72209)) (t!386902 s!13591)) s!13591)))

(assert (=> b!7483363 (= lt!2628645 (lemmaMoveElementToOtherListKeepsConcatEq!3106 Nil!72209 (h!78657 s!13591) (t!386902 s!13591) s!13591))))

(assert (=> b!7483363 (= e!4463490 (findConcatSeparation!3296 r2!5783 rTail!78 (++!17230 Nil!72209 (Cons!72209 (h!78657 s!13591) Nil!72209)) (t!386902 s!13591) s!13591))))

(declare-fun d!2300468 () Bool)

(declare-fun e!4463488 () Bool)

(assert (=> d!2300468 e!4463488))

(declare-fun res!3002445 () Bool)

(assert (=> d!2300468 (=> res!3002445 e!4463488)))

(assert (=> d!2300468 (= res!3002445 e!4463489)))

(declare-fun res!3002448 () Bool)

(assert (=> d!2300468 (=> (not res!3002448) (not e!4463489))))

(assert (=> d!2300468 (= res!3002448 (isDefined!13863 lt!2628644))))

(assert (=> d!2300468 (= lt!2628644 e!4463487)))

(declare-fun c!1382212 () Bool)

(declare-fun e!4463486 () Bool)

(assert (=> d!2300468 (= c!1382212 e!4463486)))

(declare-fun res!3002449 () Bool)

(assert (=> d!2300468 (=> (not res!3002449) (not e!4463486))))

(assert (=> d!2300468 (= res!3002449 (matchR!9381 r2!5783 Nil!72209))))

(assert (=> d!2300468 (validRegex!10131 r2!5783)))

(assert (=> d!2300468 (= (findConcatSeparation!3296 r2!5783 rTail!78 Nil!72209 s!13591 s!13591) lt!2628644)))

(declare-fun b!7483364 () Bool)

(assert (=> b!7483364 (= e!4463489 (= (++!17230 (_1!37645 (get!25289 lt!2628644)) (_2!37645 (get!25289 lt!2628644))) s!13591))))

(declare-fun b!7483365 () Bool)

(assert (=> b!7483365 (= e!4463488 (not (isDefined!13863 lt!2628644)))))

(declare-fun b!7483366 () Bool)

(declare-fun res!3002447 () Bool)

(assert (=> b!7483366 (=> (not res!3002447) (not e!4463489))))

(assert (=> b!7483366 (= res!3002447 (matchR!9381 r2!5783 (_1!37645 (get!25289 lt!2628644))))))

(declare-fun b!7483367 () Bool)

(assert (=> b!7483367 (= e!4463486 (matchR!9381 rTail!78 s!13591))))

(declare-fun b!7483368 () Bool)

(assert (=> b!7483368 (= e!4463487 (Some!17173 (tuple2!68685 Nil!72209 s!13591)))))

(assert (= (and d!2300468 res!3002449) b!7483367))

(assert (= (and d!2300468 c!1382212) b!7483368))

(assert (= (and d!2300468 (not c!1382212)) b!7483362))

(assert (= (and b!7483362 c!1382213) b!7483361))

(assert (= (and b!7483362 (not c!1382213)) b!7483363))

(assert (= (and d!2300468 res!3002448) b!7483366))

(assert (= (and b!7483366 res!3002447) b!7483360))

(assert (= (and b!7483360 res!3002446) b!7483364))

(assert (= (and d!2300468 (not res!3002445)) b!7483365))

(declare-fun m!8074504 () Bool)

(assert (=> b!7483364 m!8074504))

(declare-fun m!8074506 () Bool)

(assert (=> b!7483364 m!8074506))

(declare-fun m!8074508 () Bool)

(assert (=> d!2300468 m!8074508))

(declare-fun m!8074510 () Bool)

(assert (=> d!2300468 m!8074510))

(assert (=> d!2300468 m!8074192))

(assert (=> b!7483360 m!8074504))

(declare-fun m!8074512 () Bool)

(assert (=> b!7483360 m!8074512))

(assert (=> b!7483367 m!8074232))

(assert (=> b!7483363 m!8074234))

(assert (=> b!7483363 m!8074234))

(assert (=> b!7483363 m!8074236))

(assert (=> b!7483363 m!8074238))

(assert (=> b!7483363 m!8074234))

(declare-fun m!8074514 () Bool)

(assert (=> b!7483363 m!8074514))

(assert (=> b!7483366 m!8074504))

(declare-fun m!8074518 () Bool)

(assert (=> b!7483366 m!8074518))

(assert (=> b!7483365 m!8074508))

(assert (=> b!7482827 d!2300468))

(declare-fun d!2300470 () Bool)

(assert (=> d!2300470 (= (isDefined!13863 lt!2628576) (not (isEmpty!41224 lt!2628576)))))

(declare-fun bs!1933888 () Bool)

(assert (= bs!1933888 d!2300470))

(declare-fun m!8074524 () Bool)

(assert (=> bs!1933888 m!8074524))

(assert (=> b!7482827 d!2300470))

(declare-fun d!2300474 () Bool)

(assert (=> d!2300474 (= (Exists!4236 lambda!463742) (choose!57850 lambda!463742))))

(declare-fun bs!1933890 () Bool)

(assert (= bs!1933890 d!2300474))

(declare-fun m!8074528 () Bool)

(assert (=> bs!1933890 m!8074528))

(assert (=> b!7482827 d!2300474))

(declare-fun d!2300476 () Bool)

(assert (=> d!2300476 (= (Exists!4236 lambda!463743) (choose!57850 lambda!463743))))

(declare-fun bs!1933891 () Bool)

(assert (= bs!1933891 d!2300476))

(declare-fun m!8074530 () Bool)

(assert (=> bs!1933891 m!8074530))

(assert (=> b!7482827 d!2300476))

(declare-fun b!7483371 () Bool)

(declare-fun e!4463491 () Bool)

(declare-fun call!686986 () Bool)

(assert (=> b!7483371 (= e!4463491 call!686986)))

(declare-fun b!7483373 () Bool)

(declare-fun res!3002458 () Bool)

(declare-fun e!4463493 () Bool)

(assert (=> b!7483373 (=> (not res!3002458) (not e!4463493))))

(declare-fun call!686988 () Bool)

(assert (=> b!7483373 (= res!3002458 call!686988)))

(declare-fun e!4463496 () Bool)

(assert (=> b!7483373 (= e!4463496 e!4463493)))

(declare-fun bm!686981 () Bool)

(assert (=> bm!686981 (= call!686988 call!686986)))

(declare-fun b!7483376 () Bool)

(declare-fun e!4463501 () Bool)

(assert (=> b!7483376 (= e!4463501 e!4463491)))

(declare-fun res!3002457 () Bool)

(assert (=> b!7483376 (= res!3002457 (not (nullable!8554 (reg!19946 r2!5783))))))

(assert (=> b!7483376 (=> (not res!3002457) (not e!4463491))))

(declare-fun d!2300480 () Bool)

(declare-fun res!3002451 () Bool)

(declare-fun e!4463498 () Bool)

(assert (=> d!2300480 (=> res!3002451 e!4463498)))

(assert (=> d!2300480 (= res!3002451 ((_ is ElementMatch!19617) r2!5783))))

(assert (=> d!2300480 (= (validRegex!10131 r2!5783) e!4463498)))

(declare-fun b!7483378 () Bool)

(declare-fun e!4463495 () Bool)

(declare-fun e!4463494 () Bool)

(assert (=> b!7483378 (= e!4463495 e!4463494)))

(declare-fun res!3002450 () Bool)

(assert (=> b!7483378 (=> (not res!3002450) (not e!4463494))))

(assert (=> b!7483378 (= res!3002450 call!686988)))

(declare-fun b!7483380 () Bool)

(assert (=> b!7483380 (= e!4463501 e!4463496)))

(declare-fun c!1382216 () Bool)

(assert (=> b!7483380 (= c!1382216 ((_ is Union!19617) r2!5783))))

(declare-fun b!7483382 () Bool)

(declare-fun call!686987 () Bool)

(assert (=> b!7483382 (= e!4463493 call!686987)))

(declare-fun b!7483384 () Bool)

(declare-fun res!3002459 () Bool)

(assert (=> b!7483384 (=> res!3002459 e!4463495)))

(assert (=> b!7483384 (= res!3002459 (not ((_ is Concat!28462) r2!5783)))))

(assert (=> b!7483384 (= e!4463496 e!4463495)))

(declare-fun b!7483385 () Bool)

(assert (=> b!7483385 (= e!4463494 call!686987)))

(declare-fun bm!686982 () Bool)

(declare-fun c!1382214 () Bool)

(assert (=> bm!686982 (= call!686986 (validRegex!10131 (ite c!1382214 (reg!19946 r2!5783) (ite c!1382216 (regOne!39747 r2!5783) (regOne!39746 r2!5783)))))))

(declare-fun b!7483386 () Bool)

(assert (=> b!7483386 (= e!4463498 e!4463501)))

(assert (=> b!7483386 (= c!1382214 ((_ is Star!19617) r2!5783))))

(declare-fun bm!686983 () Bool)

(assert (=> bm!686983 (= call!686987 (validRegex!10131 (ite c!1382216 (regTwo!39747 r2!5783) (regTwo!39746 r2!5783))))))

(assert (= (and d!2300480 (not res!3002451)) b!7483386))

(assert (= (and b!7483386 c!1382214) b!7483376))

(assert (= (and b!7483386 (not c!1382214)) b!7483380))

(assert (= (and b!7483376 res!3002457) b!7483371))

(assert (= (and b!7483380 c!1382216) b!7483373))

(assert (= (and b!7483380 (not c!1382216)) b!7483384))

(assert (= (and b!7483373 res!3002458) b!7483382))

(assert (= (and b!7483384 (not res!3002459)) b!7483378))

(assert (= (and b!7483378 res!3002450) b!7483385))

(assert (= (or b!7483382 b!7483385) bm!686983))

(assert (= (or b!7483373 b!7483378) bm!686981))

(assert (= (or b!7483371 bm!686981) bm!686982))

(declare-fun m!8074532 () Bool)

(assert (=> b!7483376 m!8074532))

(declare-fun m!8074534 () Bool)

(assert (=> bm!686982 m!8074534))

(declare-fun m!8074536 () Bool)

(assert (=> bm!686983 m!8074536))

(assert (=> b!7482843 d!2300480))

(declare-fun b!7483413 () Bool)

(declare-fun e!4463512 () Bool)

(declare-fun tp!2170409 () Bool)

(assert (=> b!7483413 (= e!4463512 tp!2170409)))

(declare-fun b!7483411 () Bool)

(assert (=> b!7483411 (= e!4463512 tp_is_empty!49523)))

(assert (=> b!7482826 (= tp!2170391 e!4463512)))

(declare-fun b!7483414 () Bool)

(declare-fun tp!2170410 () Bool)

(declare-fun tp!2170407 () Bool)

(assert (=> b!7483414 (= e!4463512 (and tp!2170410 tp!2170407))))

(declare-fun b!7483412 () Bool)

(declare-fun tp!2170406 () Bool)

(declare-fun tp!2170408 () Bool)

(assert (=> b!7483412 (= e!4463512 (and tp!2170406 tp!2170408))))

(assert (= (and b!7482826 ((_ is ElementMatch!19617) (regOne!39747 r1!5845))) b!7483411))

(assert (= (and b!7482826 ((_ is Concat!28462) (regOne!39747 r1!5845))) b!7483412))

(assert (= (and b!7482826 ((_ is Star!19617) (regOne!39747 r1!5845))) b!7483413))

(assert (= (and b!7482826 ((_ is Union!19617) (regOne!39747 r1!5845))) b!7483414))

(declare-fun b!7483417 () Bool)

(declare-fun e!4463513 () Bool)

(declare-fun tp!2170414 () Bool)

(assert (=> b!7483417 (= e!4463513 tp!2170414)))

(declare-fun b!7483415 () Bool)

(assert (=> b!7483415 (= e!4463513 tp_is_empty!49523)))

(assert (=> b!7482826 (= tp!2170386 e!4463513)))

(declare-fun b!7483418 () Bool)

(declare-fun tp!2170415 () Bool)

(declare-fun tp!2170412 () Bool)

(assert (=> b!7483418 (= e!4463513 (and tp!2170415 tp!2170412))))

(declare-fun b!7483416 () Bool)

(declare-fun tp!2170411 () Bool)

(declare-fun tp!2170413 () Bool)

(assert (=> b!7483416 (= e!4463513 (and tp!2170411 tp!2170413))))

(assert (= (and b!7482826 ((_ is ElementMatch!19617) (regTwo!39747 r1!5845))) b!7483415))

(assert (= (and b!7482826 ((_ is Concat!28462) (regTwo!39747 r1!5845))) b!7483416))

(assert (= (and b!7482826 ((_ is Star!19617) (regTwo!39747 r1!5845))) b!7483417))

(assert (= (and b!7482826 ((_ is Union!19617) (regTwo!39747 r1!5845))) b!7483418))

(declare-fun b!7483421 () Bool)

(declare-fun e!4463514 () Bool)

(declare-fun tp!2170419 () Bool)

(assert (=> b!7483421 (= e!4463514 tp!2170419)))

(declare-fun b!7483419 () Bool)

(assert (=> b!7483419 (= e!4463514 tp_is_empty!49523)))

(assert (=> b!7482831 (= tp!2170380 e!4463514)))

(declare-fun b!7483422 () Bool)

(declare-fun tp!2170420 () Bool)

(declare-fun tp!2170417 () Bool)

(assert (=> b!7483422 (= e!4463514 (and tp!2170420 tp!2170417))))

(declare-fun b!7483420 () Bool)

(declare-fun tp!2170416 () Bool)

(declare-fun tp!2170418 () Bool)

(assert (=> b!7483420 (= e!4463514 (and tp!2170416 tp!2170418))))

(assert (= (and b!7482831 ((_ is ElementMatch!19617) (reg!19946 r1!5845))) b!7483419))

(assert (= (and b!7482831 ((_ is Concat!28462) (reg!19946 r1!5845))) b!7483420))

(assert (= (and b!7482831 ((_ is Star!19617) (reg!19946 r1!5845))) b!7483421))

(assert (= (and b!7482831 ((_ is Union!19617) (reg!19946 r1!5845))) b!7483422))

(declare-fun b!7483425 () Bool)

(declare-fun e!4463515 () Bool)

(declare-fun tp!2170424 () Bool)

(assert (=> b!7483425 (= e!4463515 tp!2170424)))

(declare-fun b!7483423 () Bool)

(assert (=> b!7483423 (= e!4463515 tp_is_empty!49523)))

(assert (=> b!7482836 (= tp!2170381 e!4463515)))

(declare-fun b!7483426 () Bool)

(declare-fun tp!2170425 () Bool)

(declare-fun tp!2170422 () Bool)

(assert (=> b!7483426 (= e!4463515 (and tp!2170425 tp!2170422))))

(declare-fun b!7483424 () Bool)

(declare-fun tp!2170421 () Bool)

(declare-fun tp!2170423 () Bool)

(assert (=> b!7483424 (= e!4463515 (and tp!2170421 tp!2170423))))

(assert (= (and b!7482836 ((_ is ElementMatch!19617) (regOne!39746 rTail!78))) b!7483423))

(assert (= (and b!7482836 ((_ is Concat!28462) (regOne!39746 rTail!78))) b!7483424))

(assert (= (and b!7482836 ((_ is Star!19617) (regOne!39746 rTail!78))) b!7483425))

(assert (= (and b!7482836 ((_ is Union!19617) (regOne!39746 rTail!78))) b!7483426))

(declare-fun b!7483429 () Bool)

(declare-fun e!4463516 () Bool)

(declare-fun tp!2170429 () Bool)

(assert (=> b!7483429 (= e!4463516 tp!2170429)))

(declare-fun b!7483427 () Bool)

(assert (=> b!7483427 (= e!4463516 tp_is_empty!49523)))

(assert (=> b!7482836 (= tp!2170394 e!4463516)))

(declare-fun b!7483430 () Bool)

(declare-fun tp!2170430 () Bool)

(declare-fun tp!2170427 () Bool)

(assert (=> b!7483430 (= e!4463516 (and tp!2170430 tp!2170427))))

(declare-fun b!7483428 () Bool)

(declare-fun tp!2170426 () Bool)

(declare-fun tp!2170428 () Bool)

(assert (=> b!7483428 (= e!4463516 (and tp!2170426 tp!2170428))))

(assert (= (and b!7482836 ((_ is ElementMatch!19617) (regTwo!39746 rTail!78))) b!7483427))

(assert (= (and b!7482836 ((_ is Concat!28462) (regTwo!39746 rTail!78))) b!7483428))

(assert (= (and b!7482836 ((_ is Star!19617) (regTwo!39746 rTail!78))) b!7483429))

(assert (= (and b!7482836 ((_ is Union!19617) (regTwo!39746 rTail!78))) b!7483430))

(declare-fun b!7483433 () Bool)

(declare-fun e!4463517 () Bool)

(declare-fun tp!2170434 () Bool)

(assert (=> b!7483433 (= e!4463517 tp!2170434)))

(declare-fun b!7483431 () Bool)

(assert (=> b!7483431 (= e!4463517 tp_is_empty!49523)))

(assert (=> b!7482841 (= tp!2170387 e!4463517)))

(declare-fun b!7483434 () Bool)

(declare-fun tp!2170435 () Bool)

(declare-fun tp!2170432 () Bool)

(assert (=> b!7483434 (= e!4463517 (and tp!2170435 tp!2170432))))

(declare-fun b!7483432 () Bool)

(declare-fun tp!2170431 () Bool)

(declare-fun tp!2170433 () Bool)

(assert (=> b!7483432 (= e!4463517 (and tp!2170431 tp!2170433))))

(assert (= (and b!7482841 ((_ is ElementMatch!19617) (reg!19946 rTail!78))) b!7483431))

(assert (= (and b!7482841 ((_ is Concat!28462) (reg!19946 rTail!78))) b!7483432))

(assert (= (and b!7482841 ((_ is Star!19617) (reg!19946 rTail!78))) b!7483433))

(assert (= (and b!7482841 ((_ is Union!19617) (reg!19946 rTail!78))) b!7483434))

(declare-fun b!7483437 () Bool)

(declare-fun e!4463518 () Bool)

(declare-fun tp!2170439 () Bool)

(assert (=> b!7483437 (= e!4463518 tp!2170439)))

(declare-fun b!7483435 () Bool)

(assert (=> b!7483435 (= e!4463518 tp_is_empty!49523)))

(assert (=> b!7482835 (= tp!2170389 e!4463518)))

(declare-fun b!7483438 () Bool)

(declare-fun tp!2170440 () Bool)

(declare-fun tp!2170437 () Bool)

(assert (=> b!7483438 (= e!4463518 (and tp!2170440 tp!2170437))))

(declare-fun b!7483436 () Bool)

(declare-fun tp!2170436 () Bool)

(declare-fun tp!2170438 () Bool)

(assert (=> b!7483436 (= e!4463518 (and tp!2170436 tp!2170438))))

(assert (= (and b!7482835 ((_ is ElementMatch!19617) (regOne!39747 r2!5783))) b!7483435))

(assert (= (and b!7482835 ((_ is Concat!28462) (regOne!39747 r2!5783))) b!7483436))

(assert (= (and b!7482835 ((_ is Star!19617) (regOne!39747 r2!5783))) b!7483437))

(assert (= (and b!7482835 ((_ is Union!19617) (regOne!39747 r2!5783))) b!7483438))

(declare-fun b!7483450 () Bool)

(declare-fun e!4463526 () Bool)

(declare-fun tp!2170444 () Bool)

(assert (=> b!7483450 (= e!4463526 tp!2170444)))

(declare-fun b!7483448 () Bool)

(assert (=> b!7483448 (= e!4463526 tp_is_empty!49523)))

(assert (=> b!7482835 (= tp!2170393 e!4463526)))

(declare-fun b!7483451 () Bool)

(declare-fun tp!2170445 () Bool)

(declare-fun tp!2170442 () Bool)

(assert (=> b!7483451 (= e!4463526 (and tp!2170445 tp!2170442))))

(declare-fun b!7483449 () Bool)

(declare-fun tp!2170441 () Bool)

(declare-fun tp!2170443 () Bool)

(assert (=> b!7483449 (= e!4463526 (and tp!2170441 tp!2170443))))

(assert (= (and b!7482835 ((_ is ElementMatch!19617) (regTwo!39747 r2!5783))) b!7483448))

(assert (= (and b!7482835 ((_ is Concat!28462) (regTwo!39747 r2!5783))) b!7483449))

(assert (= (and b!7482835 ((_ is Star!19617) (regTwo!39747 r2!5783))) b!7483450))

(assert (= (and b!7482835 ((_ is Union!19617) (regTwo!39747 r2!5783))) b!7483451))

(declare-fun b!7483454 () Bool)

(declare-fun e!4463527 () Bool)

(declare-fun tp!2170449 () Bool)

(assert (=> b!7483454 (= e!4463527 tp!2170449)))

(declare-fun b!7483452 () Bool)

(assert (=> b!7483452 (= e!4463527 tp_is_empty!49523)))

(assert (=> b!7482824 (= tp!2170383 e!4463527)))

(declare-fun b!7483455 () Bool)

(declare-fun tp!2170450 () Bool)

(declare-fun tp!2170447 () Bool)

(assert (=> b!7483455 (= e!4463527 (and tp!2170450 tp!2170447))))

(declare-fun b!7483453 () Bool)

(declare-fun tp!2170446 () Bool)

(declare-fun tp!2170448 () Bool)

(assert (=> b!7483453 (= e!4463527 (and tp!2170446 tp!2170448))))

(assert (= (and b!7482824 ((_ is ElementMatch!19617) (regOne!39746 r1!5845))) b!7483452))

(assert (= (and b!7482824 ((_ is Concat!28462) (regOne!39746 r1!5845))) b!7483453))

(assert (= (and b!7482824 ((_ is Star!19617) (regOne!39746 r1!5845))) b!7483454))

(assert (= (and b!7482824 ((_ is Union!19617) (regOne!39746 r1!5845))) b!7483455))

(declare-fun b!7483458 () Bool)

(declare-fun e!4463528 () Bool)

(declare-fun tp!2170454 () Bool)

(assert (=> b!7483458 (= e!4463528 tp!2170454)))

(declare-fun b!7483456 () Bool)

(assert (=> b!7483456 (= e!4463528 tp_is_empty!49523)))

(assert (=> b!7482824 (= tp!2170395 e!4463528)))

(declare-fun b!7483459 () Bool)

(declare-fun tp!2170455 () Bool)

(declare-fun tp!2170452 () Bool)

(assert (=> b!7483459 (= e!4463528 (and tp!2170455 tp!2170452))))

(declare-fun b!7483457 () Bool)

(declare-fun tp!2170451 () Bool)

(declare-fun tp!2170453 () Bool)

(assert (=> b!7483457 (= e!4463528 (and tp!2170451 tp!2170453))))

(assert (= (and b!7482824 ((_ is ElementMatch!19617) (regTwo!39746 r1!5845))) b!7483456))

(assert (= (and b!7482824 ((_ is Concat!28462) (regTwo!39746 r1!5845))) b!7483457))

(assert (= (and b!7482824 ((_ is Star!19617) (regTwo!39746 r1!5845))) b!7483458))

(assert (= (and b!7482824 ((_ is Union!19617) (regTwo!39746 r1!5845))) b!7483459))

(declare-fun b!7483462 () Bool)

(declare-fun e!4463529 () Bool)

(declare-fun tp!2170459 () Bool)

(assert (=> b!7483462 (= e!4463529 tp!2170459)))

(declare-fun b!7483460 () Bool)

(assert (=> b!7483460 (= e!4463529 tp_is_empty!49523)))

(assert (=> b!7482840 (= tp!2170382 e!4463529)))

(declare-fun b!7483463 () Bool)

(declare-fun tp!2170460 () Bool)

(declare-fun tp!2170457 () Bool)

(assert (=> b!7483463 (= e!4463529 (and tp!2170460 tp!2170457))))

(declare-fun b!7483461 () Bool)

(declare-fun tp!2170456 () Bool)

(declare-fun tp!2170458 () Bool)

(assert (=> b!7483461 (= e!4463529 (and tp!2170456 tp!2170458))))

(assert (= (and b!7482840 ((_ is ElementMatch!19617) (regOne!39747 rTail!78))) b!7483460))

(assert (= (and b!7482840 ((_ is Concat!28462) (regOne!39747 rTail!78))) b!7483461))

(assert (= (and b!7482840 ((_ is Star!19617) (regOne!39747 rTail!78))) b!7483462))

(assert (= (and b!7482840 ((_ is Union!19617) (regOne!39747 rTail!78))) b!7483463))

(declare-fun b!7483472 () Bool)

(declare-fun e!4463532 () Bool)

(declare-fun tp!2170464 () Bool)

(assert (=> b!7483472 (= e!4463532 tp!2170464)))

(declare-fun b!7483469 () Bool)

(assert (=> b!7483469 (= e!4463532 tp_is_empty!49523)))

(assert (=> b!7482840 (= tp!2170385 e!4463532)))

(declare-fun b!7483473 () Bool)

(declare-fun tp!2170465 () Bool)

(declare-fun tp!2170462 () Bool)

(assert (=> b!7483473 (= e!4463532 (and tp!2170465 tp!2170462))))

(declare-fun b!7483471 () Bool)

(declare-fun tp!2170461 () Bool)

(declare-fun tp!2170463 () Bool)

(assert (=> b!7483471 (= e!4463532 (and tp!2170461 tp!2170463))))

(assert (= (and b!7482840 ((_ is ElementMatch!19617) (regTwo!39747 rTail!78))) b!7483469))

(assert (= (and b!7482840 ((_ is Concat!28462) (regTwo!39747 rTail!78))) b!7483471))

(assert (= (and b!7482840 ((_ is Star!19617) (regTwo!39747 rTail!78))) b!7483472))

(assert (= (and b!7482840 ((_ is Union!19617) (regTwo!39747 rTail!78))) b!7483473))

(declare-fun b!7483482 () Bool)

(declare-fun e!4463535 () Bool)

(declare-fun tp!2170478 () Bool)

(assert (=> b!7483482 (= e!4463535 (and tp_is_empty!49523 tp!2170478))))

(assert (=> b!7482834 (= tp!2170388 e!4463535)))

(assert (= (and b!7482834 ((_ is Cons!72209) (t!386902 s!13591))) b!7483482))

(declare-fun b!7483485 () Bool)

(declare-fun e!4463536 () Bool)

(declare-fun tp!2170482 () Bool)

(assert (=> b!7483485 (= e!4463536 tp!2170482)))

(declare-fun b!7483483 () Bool)

(assert (=> b!7483483 (= e!4463536 tp_is_empty!49523)))

(assert (=> b!7482839 (= tp!2170384 e!4463536)))

(declare-fun b!7483486 () Bool)

(declare-fun tp!2170483 () Bool)

(declare-fun tp!2170480 () Bool)

(assert (=> b!7483486 (= e!4463536 (and tp!2170483 tp!2170480))))

(declare-fun b!7483484 () Bool)

(declare-fun tp!2170479 () Bool)

(declare-fun tp!2170481 () Bool)

(assert (=> b!7483484 (= e!4463536 (and tp!2170479 tp!2170481))))

(assert (= (and b!7482839 ((_ is ElementMatch!19617) (regOne!39746 r2!5783))) b!7483483))

(assert (= (and b!7482839 ((_ is Concat!28462) (regOne!39746 r2!5783))) b!7483484))

(assert (= (and b!7482839 ((_ is Star!19617) (regOne!39746 r2!5783))) b!7483485))

(assert (= (and b!7482839 ((_ is Union!19617) (regOne!39746 r2!5783))) b!7483486))

(declare-fun b!7483489 () Bool)

(declare-fun e!4463537 () Bool)

(declare-fun tp!2170487 () Bool)

(assert (=> b!7483489 (= e!4463537 tp!2170487)))

(declare-fun b!7483487 () Bool)

(assert (=> b!7483487 (= e!4463537 tp_is_empty!49523)))

(assert (=> b!7482839 (= tp!2170392 e!4463537)))

(declare-fun b!7483490 () Bool)

(declare-fun tp!2170488 () Bool)

(declare-fun tp!2170485 () Bool)

(assert (=> b!7483490 (= e!4463537 (and tp!2170488 tp!2170485))))

(declare-fun b!7483488 () Bool)

(declare-fun tp!2170484 () Bool)

(declare-fun tp!2170486 () Bool)

(assert (=> b!7483488 (= e!4463537 (and tp!2170484 tp!2170486))))

(assert (= (and b!7482839 ((_ is ElementMatch!19617) (regTwo!39746 r2!5783))) b!7483487))

(assert (= (and b!7482839 ((_ is Concat!28462) (regTwo!39746 r2!5783))) b!7483488))

(assert (= (and b!7482839 ((_ is Star!19617) (regTwo!39746 r2!5783))) b!7483489))

(assert (= (and b!7482839 ((_ is Union!19617) (regTwo!39746 r2!5783))) b!7483490))

(declare-fun b!7483497 () Bool)

(declare-fun e!4463539 () Bool)

(declare-fun tp!2170497 () Bool)

(assert (=> b!7483497 (= e!4463539 tp!2170497)))

(declare-fun b!7483495 () Bool)

(assert (=> b!7483495 (= e!4463539 tp_is_empty!49523)))

(assert (=> b!7482832 (= tp!2170390 e!4463539)))

(declare-fun b!7483498 () Bool)

(declare-fun tp!2170498 () Bool)

(declare-fun tp!2170495 () Bool)

(assert (=> b!7483498 (= e!4463539 (and tp!2170498 tp!2170495))))

(declare-fun b!7483496 () Bool)

(declare-fun tp!2170494 () Bool)

(declare-fun tp!2170496 () Bool)

(assert (=> b!7483496 (= e!4463539 (and tp!2170494 tp!2170496))))

(assert (= (and b!7482832 ((_ is ElementMatch!19617) (reg!19946 r2!5783))) b!7483495))

(assert (= (and b!7482832 ((_ is Concat!28462) (reg!19946 r2!5783))) b!7483496))

(assert (= (and b!7482832 ((_ is Star!19617) (reg!19946 r2!5783))) b!7483497))

(assert (= (and b!7482832 ((_ is Union!19617) (reg!19946 r2!5783))) b!7483498))

(check-sat (not b!7483355) (not bm!686978) (not b!7483471) (not d!2300444) (not b!7482957) (not b!7483496) (not bm!686969) (not b!7483455) (not b!7483376) (not b!7483453) (not b!7483484) (not b!7483098) (not b!7483498) (not d!2300392) (not b!7483424) (not bm!686962) (not b!7482959) (not b!7483231) (not b!7483235) (not b!7482960) (not b!7483185) (not b!7483414) (not b!7483285) (not bm!686968) (not b!7483488) (not b!7483437) (not d!2300396) (not b!7483244) (not bm!686925) (not b!7482956) (not d!2300448) (not b!7483422) (not d!2300450) (not b!7483463) (not b!7483462) (not b!7483473) (not b!7483188) (not b!7483213) (not b!7483451) (not b!7483461) (not b!7483360) (not d!2300374) (not b!7483207) (not b!7483421) (not bm!686963) (not b!7483095) (not b!7483168) (not bm!686966) (not b!7483413) (not b!7483217) (not b!7483092) (not b!7483420) (not b!7483204) (not b!7483321) (not bm!686980) (not b!7483363) (not d!2300474) (not bm!686926) (not b!7483417) (not bm!686961) (not d!2300446) (not b!7483108) (not b!7483490) (not d!2300424) (not b!7483426) (not b!7483358) (not bm!686955) (not b!7483249) (not bm!686982) (not b!7483246) (not b!7483104) tp_is_empty!49523 (not b!7483486) (not b!7483449) (not b!7483482) (not b!7483165) (not b!7483450) (not b!7483367) (not b!7483418) (not bm!686974) (not b!7483359) (not b!7483327) (not d!2300422) (not b!7483245) (not b!7483282) (not b!7483331) (not b!7483105) (not b!7482953) (not b!7483416) (not b!7483459) (not b!7483330) (not bm!686967) (not b!7483425) (not b!7483434) (not b!7483485) (not d!2300468) (not b!7483454) (not b!7483224) (not b!7483365) (not b!7483218) (not b!7483497) (not b!7483324) (not d!2300462) (not b!7483457) (not bm!686953) (not bm!686973) (not d!2300384) (not d!2300470) (not b!7483352) (not d!2300420) (not b!7483241) (not d!2300476) (not b!7483436) (not b!7483210) (not b!7483364) (not b!7483232) (not b!7483432) (not bm!686983) (not b!7483349) (not b!7483429) (not b!7483472) (not d!2300426) (not b!7483216) (not bm!686956) (not b!7483227) (not b!7483318) (not b!7483230) (not b!7483428) (not bm!686965) (not b!7483433) (not d!2300388) (not b!7483430) (not b!7483458) (not b!7483346) (not d!2300428) (not d!2300458) (not d!2300398) (not b!7482868) (not b!7483366) (not b!7483221) (not b!7482958) (not b!7483238) (not b!7483489) (not b!7483101) (not d!2300376) (not bm!686964) (not b!7483412) (not b!7483438))
(check-sat)
