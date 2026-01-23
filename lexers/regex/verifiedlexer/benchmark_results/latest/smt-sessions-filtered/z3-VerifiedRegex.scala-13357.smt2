; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!724282 () Bool)

(assert start!724282)

(declare-fun b!7470773 () Bool)

(assert (=> b!7470773 true))

(assert (=> b!7470773 true))

(assert (=> b!7470773 true))

(declare-fun lambda!462645 () Int)

(declare-fun lambda!462644 () Int)

(assert (=> b!7470773 (not (= lambda!462645 lambda!462644))))

(assert (=> b!7470773 true))

(assert (=> b!7470773 true))

(assert (=> b!7470773 true))

(declare-fun bs!1931165 () Bool)

(declare-fun b!7470766 () Bool)

(assert (= bs!1931165 (and b!7470766 b!7470773)))

(declare-datatypes ((C!39428 0))(
  ( (C!39429 (val!30112 Int)) )
))
(declare-datatypes ((Regex!19577 0))(
  ( (ElementMatch!19577 (c!1380428 C!39428)) (Concat!28422 (regOne!39666 Regex!19577) (regTwo!39666 Regex!19577)) (EmptyExpr!19577) (Star!19577 (reg!19906 Regex!19577)) (EmptyLang!19577) (Union!19577 (regOne!39667 Regex!19577) (regTwo!39667 Regex!19577)) )
))
(declare-fun r2!5783 () Regex!19577)

(declare-fun lambda!462646 () Int)

(declare-fun lt!2625621 () Regex!19577)

(assert (=> bs!1931165 (= (= r2!5783 lt!2625621) (= lambda!462646 lambda!462644))))

(assert (=> bs!1931165 (not (= lambda!462646 lambda!462645))))

(assert (=> b!7470766 true))

(assert (=> b!7470766 true))

(assert (=> b!7470766 true))

(declare-fun lambda!462647 () Int)

(assert (=> bs!1931165 (not (= lambda!462647 lambda!462644))))

(assert (=> bs!1931165 (= (= r2!5783 lt!2625621) (= lambda!462647 lambda!462645))))

(assert (=> b!7470766 (not (= lambda!462647 lambda!462646))))

(assert (=> b!7470766 true))

(assert (=> b!7470766 true))

(assert (=> b!7470766 true))

(declare-fun b!7470755 () Bool)

(declare-fun e!4457290 () Bool)

(declare-fun tp!2166175 () Bool)

(assert (=> b!7470755 (= e!4457290 tp!2166175)))

(declare-fun res!2997016 () Bool)

(declare-fun e!4457295 () Bool)

(assert (=> start!724282 (=> (not res!2997016) (not e!4457295))))

(declare-fun r1!5845 () Regex!19577)

(declare-fun validRegex!10091 (Regex!19577) Bool)

(assert (=> start!724282 (= res!2997016 (validRegex!10091 r1!5845))))

(assert (=> start!724282 e!4457295))

(assert (=> start!724282 e!4457290))

(declare-fun e!4457296 () Bool)

(assert (=> start!724282 e!4457296))

(declare-fun e!4457289 () Bool)

(assert (=> start!724282 e!4457289))

(declare-fun e!4457291 () Bool)

(assert (=> start!724282 e!4457291))

(declare-fun b!7470756 () Bool)

(declare-fun e!4457294 () Bool)

(assert (=> b!7470756 (= e!4457295 (not e!4457294))))

(declare-fun res!2997013 () Bool)

(assert (=> b!7470756 (=> res!2997013 e!4457294)))

(declare-fun lt!2625618 () Bool)

(assert (=> b!7470756 (= res!2997013 lt!2625618)))

(declare-fun lt!2625626 () Bool)

(declare-fun lt!2625629 () Regex!19577)

(declare-datatypes ((List!72293 0))(
  ( (Nil!72169) (Cons!72169 (h!78617 C!39428) (t!386862 List!72293)) )
))
(declare-fun s!13591 () List!72293)

(declare-fun matchRSpec!4256 (Regex!19577 List!72293) Bool)

(assert (=> b!7470756 (= lt!2625626 (matchRSpec!4256 lt!2625629 s!13591))))

(declare-fun matchR!9341 (Regex!19577 List!72293) Bool)

(assert (=> b!7470756 (= lt!2625626 (matchR!9341 lt!2625629 s!13591))))

(declare-datatypes ((Unit!165989 0))(
  ( (Unit!165990) )
))
(declare-fun lt!2625620 () Unit!165989)

(declare-fun mainMatchTheorem!4250 (Regex!19577 List!72293) Unit!165989)

(assert (=> b!7470756 (= lt!2625620 (mainMatchTheorem!4250 lt!2625629 s!13591))))

(declare-fun lt!2625614 () Regex!19577)

(assert (=> b!7470756 (= lt!2625618 (matchRSpec!4256 lt!2625614 s!13591))))

(assert (=> b!7470756 (= lt!2625618 (matchR!9341 lt!2625614 s!13591))))

(declare-fun lt!2625619 () Unit!165989)

(assert (=> b!7470756 (= lt!2625619 (mainMatchTheorem!4250 lt!2625614 s!13591))))

(declare-fun lt!2625616 () Regex!19577)

(declare-fun lt!2625628 () Regex!19577)

(assert (=> b!7470756 (= lt!2625629 (Union!19577 lt!2625616 lt!2625628))))

(declare-fun rTail!78 () Regex!19577)

(assert (=> b!7470756 (= lt!2625628 (Concat!28422 r2!5783 rTail!78))))

(assert (=> b!7470756 (= lt!2625616 (Concat!28422 r1!5845 rTail!78))))

(assert (=> b!7470756 (= lt!2625614 (Concat!28422 lt!2625621 rTail!78))))

(assert (=> b!7470756 (= lt!2625621 (Union!19577 r1!5845 r2!5783))))

(declare-fun b!7470757 () Bool)

(declare-fun tp_is_empty!49443 () Bool)

(assert (=> b!7470757 (= e!4457290 tp_is_empty!49443)))

(declare-fun b!7470758 () Bool)

(declare-fun res!2997017 () Bool)

(assert (=> b!7470758 (=> (not res!2997017) (not e!4457295))))

(assert (=> b!7470758 (= res!2997017 (validRegex!10091 r2!5783))))

(declare-fun b!7470759 () Bool)

(declare-fun tp!2166173 () Bool)

(assert (=> b!7470759 (= e!4457296 tp!2166173)))

(declare-fun b!7470760 () Bool)

(declare-fun tp!2166187 () Bool)

(assert (=> b!7470760 (= e!4457289 tp!2166187)))

(declare-fun b!7470761 () Bool)

(assert (=> b!7470761 (= e!4457289 tp_is_empty!49443)))

(declare-fun b!7470762 () Bool)

(declare-fun tp!2166178 () Bool)

(declare-fun tp!2166172 () Bool)

(assert (=> b!7470762 (= e!4457289 (and tp!2166178 tp!2166172))))

(declare-fun b!7470763 () Bool)

(declare-fun tp!2166186 () Bool)

(declare-fun tp!2166174 () Bool)

(assert (=> b!7470763 (= e!4457296 (and tp!2166186 tp!2166174))))

(declare-fun b!7470764 () Bool)

(declare-fun res!2997015 () Bool)

(assert (=> b!7470764 (=> (not res!2997015) (not e!4457295))))

(assert (=> b!7470764 (= res!2997015 (validRegex!10091 rTail!78))))

(declare-fun b!7470765 () Bool)

(declare-fun tp!2166177 () Bool)

(declare-fun tp!2166180 () Bool)

(assert (=> b!7470765 (= e!4457296 (and tp!2166177 tp!2166180))))

(declare-fun e!4457293 () Bool)

(assert (=> b!7470766 (= e!4457293 true)))

(declare-fun lt!2625631 () Bool)

(declare-datatypes ((tuple2!68604 0))(
  ( (tuple2!68605 (_1!37605 List!72293) (_2!37605 List!72293)) )
))
(declare-datatypes ((Option!17134 0))(
  ( (None!17133) (Some!17133 (v!54262 tuple2!68604)) )
))
(declare-fun lt!2625630 () Option!17134)

(declare-fun get!25229 (Option!17134) tuple2!68604)

(assert (=> b!7470766 (= lt!2625631 (matchR!9341 r2!5783 (_1!37605 (get!25229 lt!2625630))))))

(declare-fun Exists!4196 (Int) Bool)

(assert (=> b!7470766 (= (Exists!4196 lambda!462646) (Exists!4196 lambda!462647))))

(declare-fun lt!2625622 () Unit!165989)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2530 (Regex!19577 Regex!19577 List!72293) Unit!165989)

(assert (=> b!7470766 (= lt!2625622 (lemmaExistCutMatchRandMatchRSpecEquivalent!2530 r2!5783 rTail!78 s!13591))))

(declare-fun isDefined!13823 (Option!17134) Bool)

(assert (=> b!7470766 (= (isDefined!13823 lt!2625630) (Exists!4196 lambda!462646))))

(declare-fun findConcatSeparation!3256 (Regex!19577 Regex!19577 List!72293 List!72293 List!72293) Option!17134)

(assert (=> b!7470766 (= lt!2625630 (findConcatSeparation!3256 r2!5783 rTail!78 Nil!72169 s!13591 s!13591))))

(declare-fun lt!2625625 () Unit!165989)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3014 (Regex!19577 Regex!19577 List!72293) Unit!165989)

(assert (=> b!7470766 (= lt!2625625 (lemmaFindConcatSeparationEquivalentToExists!3014 r2!5783 rTail!78 s!13591))))

(declare-fun b!7470767 () Bool)

(declare-fun tp!2166185 () Bool)

(declare-fun tp!2166176 () Bool)

(assert (=> b!7470767 (= e!4457290 (and tp!2166185 tp!2166176))))

(declare-fun b!7470768 () Bool)

(declare-fun tp!2166179 () Bool)

(declare-fun tp!2166183 () Bool)

(assert (=> b!7470768 (= e!4457289 (and tp!2166179 tp!2166183))))

(declare-fun b!7470769 () Bool)

(declare-fun tp!2166184 () Bool)

(assert (=> b!7470769 (= e!4457291 (and tp_is_empty!49443 tp!2166184))))

(declare-fun b!7470770 () Bool)

(assert (=> b!7470770 (= e!4457296 tp_is_empty!49443)))

(declare-fun b!7470771 () Bool)

(declare-fun tp!2166181 () Bool)

(declare-fun tp!2166182 () Bool)

(assert (=> b!7470771 (= e!4457290 (and tp!2166181 tp!2166182))))

(declare-fun b!7470772 () Bool)

(declare-fun e!4457292 () Bool)

(assert (=> b!7470772 (= e!4457292 e!4457293)))

(declare-fun res!2997018 () Bool)

(assert (=> b!7470772 (=> res!2997018 e!4457293)))

(declare-fun lt!2625623 () Bool)

(declare-fun lt!2625615 () Bool)

(assert (=> b!7470772 (= res!2997018 (or (and (not lt!2625623) (not lt!2625615)) lt!2625623))))

(assert (=> b!7470772 (= lt!2625615 (matchRSpec!4256 lt!2625628 s!13591))))

(assert (=> b!7470772 (= lt!2625615 (matchR!9341 lt!2625628 s!13591))))

(declare-fun lt!2625612 () Unit!165989)

(assert (=> b!7470772 (= lt!2625612 (mainMatchTheorem!4250 lt!2625628 s!13591))))

(assert (=> b!7470772 (= lt!2625623 (matchRSpec!4256 lt!2625616 s!13591))))

(assert (=> b!7470772 (= lt!2625623 (matchR!9341 lt!2625616 s!13591))))

(declare-fun lt!2625624 () Unit!165989)

(assert (=> b!7470772 (= lt!2625624 (mainMatchTheorem!4250 lt!2625616 s!13591))))

(assert (=> b!7470773 (= e!4457294 e!4457292)))

(declare-fun res!2997014 () Bool)

(assert (=> b!7470773 (=> res!2997014 e!4457292)))

(declare-fun lt!2625613 () Bool)

(assert (=> b!7470773 (= res!2997014 (or lt!2625613 (not lt!2625626)))))

(assert (=> b!7470773 (= (Exists!4196 lambda!462644) (Exists!4196 lambda!462645))))

(declare-fun lt!2625617 () Unit!165989)

(assert (=> b!7470773 (= lt!2625617 (lemmaExistCutMatchRandMatchRSpecEquivalent!2530 lt!2625621 rTail!78 s!13591))))

(assert (=> b!7470773 (= lt!2625613 (Exists!4196 lambda!462644))))

(assert (=> b!7470773 (= lt!2625613 (isDefined!13823 (findConcatSeparation!3256 lt!2625621 rTail!78 Nil!72169 s!13591 s!13591)))))

(declare-fun lt!2625627 () Unit!165989)

(assert (=> b!7470773 (= lt!2625627 (lemmaFindConcatSeparationEquivalentToExists!3014 lt!2625621 rTail!78 s!13591))))

(assert (= (and start!724282 res!2997016) b!7470758))

(assert (= (and b!7470758 res!2997017) b!7470764))

(assert (= (and b!7470764 res!2997015) b!7470756))

(assert (= (and b!7470756 (not res!2997013)) b!7470773))

(assert (= (and b!7470773 (not res!2997014)) b!7470772))

(assert (= (and b!7470772 (not res!2997018)) b!7470766))

(get-info :version)

(assert (= (and start!724282 ((_ is ElementMatch!19577) r1!5845)) b!7470757))

(assert (= (and start!724282 ((_ is Concat!28422) r1!5845)) b!7470771))

(assert (= (and start!724282 ((_ is Star!19577) r1!5845)) b!7470755))

(assert (= (and start!724282 ((_ is Union!19577) r1!5845)) b!7470767))

(assert (= (and start!724282 ((_ is ElementMatch!19577) r2!5783)) b!7470770))

(assert (= (and start!724282 ((_ is Concat!28422) r2!5783)) b!7470765))

(assert (= (and start!724282 ((_ is Star!19577) r2!5783)) b!7470759))

(assert (= (and start!724282 ((_ is Union!19577) r2!5783)) b!7470763))

(assert (= (and start!724282 ((_ is ElementMatch!19577) rTail!78)) b!7470761))

(assert (= (and start!724282 ((_ is Concat!28422) rTail!78)) b!7470768))

(assert (= (and start!724282 ((_ is Star!19577) rTail!78)) b!7470760))

(assert (= (and start!724282 ((_ is Union!19577) rTail!78)) b!7470762))

(assert (= (and start!724282 ((_ is Cons!72169) s!13591)) b!7470769))

(declare-fun m!8067738 () Bool)

(assert (=> start!724282 m!8067738))

(declare-fun m!8067740 () Bool)

(assert (=> b!7470756 m!8067740))

(declare-fun m!8067742 () Bool)

(assert (=> b!7470756 m!8067742))

(declare-fun m!8067744 () Bool)

(assert (=> b!7470756 m!8067744))

(declare-fun m!8067746 () Bool)

(assert (=> b!7470756 m!8067746))

(declare-fun m!8067748 () Bool)

(assert (=> b!7470756 m!8067748))

(declare-fun m!8067750 () Bool)

(assert (=> b!7470756 m!8067750))

(declare-fun m!8067752 () Bool)

(assert (=> b!7470758 m!8067752))

(declare-fun m!8067754 () Bool)

(assert (=> b!7470764 m!8067754))

(declare-fun m!8067756 () Bool)

(assert (=> b!7470766 m!8067756))

(declare-fun m!8067758 () Bool)

(assert (=> b!7470766 m!8067758))

(declare-fun m!8067760 () Bool)

(assert (=> b!7470766 m!8067760))

(assert (=> b!7470766 m!8067760))

(declare-fun m!8067762 () Bool)

(assert (=> b!7470766 m!8067762))

(declare-fun m!8067764 () Bool)

(assert (=> b!7470766 m!8067764))

(declare-fun m!8067766 () Bool)

(assert (=> b!7470766 m!8067766))

(declare-fun m!8067768 () Bool)

(assert (=> b!7470766 m!8067768))

(declare-fun m!8067770 () Bool)

(assert (=> b!7470766 m!8067770))

(declare-fun m!8067772 () Bool)

(assert (=> b!7470772 m!8067772))

(declare-fun m!8067774 () Bool)

(assert (=> b!7470772 m!8067774))

(declare-fun m!8067776 () Bool)

(assert (=> b!7470772 m!8067776))

(declare-fun m!8067778 () Bool)

(assert (=> b!7470772 m!8067778))

(declare-fun m!8067780 () Bool)

(assert (=> b!7470772 m!8067780))

(declare-fun m!8067782 () Bool)

(assert (=> b!7470772 m!8067782))

(declare-fun m!8067784 () Bool)

(assert (=> b!7470773 m!8067784))

(declare-fun m!8067786 () Bool)

(assert (=> b!7470773 m!8067786))

(declare-fun m!8067788 () Bool)

(assert (=> b!7470773 m!8067788))

(declare-fun m!8067790 () Bool)

(assert (=> b!7470773 m!8067790))

(declare-fun m!8067792 () Bool)

(assert (=> b!7470773 m!8067792))

(declare-fun m!8067794 () Bool)

(assert (=> b!7470773 m!8067794))

(assert (=> b!7470773 m!8067788))

(assert (=> b!7470773 m!8067784))

(check-sat (not b!7470772) (not b!7470763) (not b!7470768) (not start!724282) (not b!7470766) (not b!7470765) (not b!7470773) (not b!7470767) (not b!7470771) (not b!7470764) tp_is_empty!49443 (not b!7470755) (not b!7470756) (not b!7470762) (not b!7470760) (not b!7470769) (not b!7470758) (not b!7470759))
(check-sat)
