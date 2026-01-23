; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!83500 () Bool)

(assert start!83500)

(declare-fun b!933967 () Bool)

(assert (=> b!933967 true))

(assert (=> b!933967 true))

(assert (=> b!933967 true))

(declare-fun lambda!30908 () Int)

(declare-fun lambda!30907 () Int)

(assert (=> b!933967 (not (= lambda!30908 lambda!30907))))

(assert (=> b!933967 true))

(assert (=> b!933967 true))

(assert (=> b!933967 true))

(declare-fun b!933962 () Bool)

(declare-fun e!606731 () Bool)

(declare-fun tp!289843 () Bool)

(declare-fun tp!289844 () Bool)

(assert (=> b!933962 (= e!606731 (and tp!289843 tp!289844))))

(declare-fun res!424105 () Bool)

(declare-fun e!606730 () Bool)

(assert (=> start!83500 (=> (not res!424105) (not e!606730))))

(declare-datatypes ((C!5674 0))(
  ( (C!5675 (val!3085 Int)) )
))
(declare-datatypes ((Regex!2552 0))(
  ( (ElementMatch!2552 (c!151871 C!5674)) (Concat!4385 (regOne!5616 Regex!2552) (regTwo!5616 Regex!2552)) (EmptyExpr!2552) (Star!2552 (reg!2881 Regex!2552)) (EmptyLang!2552) (Union!2552 (regOne!5617 Regex!2552) (regTwo!5617 Regex!2552)) )
))
(declare-fun r!15766 () Regex!2552)

(declare-fun validRegex!1021 (Regex!2552) Bool)

(assert (=> start!83500 (= res!424105 (validRegex!1021 r!15766))))

(assert (=> start!83500 e!606730))

(assert (=> start!83500 e!606731))

(declare-fun e!606732 () Bool)

(assert (=> start!83500 e!606732))

(declare-fun b!933963 () Bool)

(declare-fun tp!289842 () Bool)

(declare-fun tp!289841 () Bool)

(assert (=> b!933963 (= e!606731 (and tp!289842 tp!289841))))

(declare-fun b!933964 () Bool)

(declare-fun tp_is_empty!4747 () Bool)

(assert (=> b!933964 (= e!606731 tp_is_empty!4747)))

(declare-fun b!933965 () Bool)

(declare-fun tp!289846 () Bool)

(assert (=> b!933965 (= e!606731 tp!289846)))

(declare-fun b!933966 () Bool)

(declare-fun tp!289845 () Bool)

(assert (=> b!933966 (= e!606732 (and tp_is_empty!4747 tp!289845))))

(declare-fun e!606733 () Bool)

(declare-fun removeUselessConcat!221 (Regex!2552) Regex!2552)

(assert (=> b!933967 (= e!606733 (validRegex!1021 (Star!2552 (removeUselessConcat!221 (reg!2881 r!15766)))))))

(declare-fun Exists!303 (Int) Bool)

(assert (=> b!933967 (= (Exists!303 lambda!30907) (Exists!303 lambda!30908))))

(declare-datatypes ((Unit!14723 0))(
  ( (Unit!14724) )
))
(declare-fun lt!340926 () Unit!14723)

(declare-datatypes ((List!9782 0))(
  ( (Nil!9766) (Cons!9766 (h!15167 C!5674) (t!100828 List!9782)) )
))
(declare-fun s!10566 () List!9782)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!47 (Regex!2552 List!9782) Unit!14723)

(assert (=> b!933967 (= lt!340926 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!47 (reg!2881 r!15766) s!10566))))

(declare-fun lt!340928 () Regex!2552)

(declare-datatypes ((tuple2!11002 0))(
  ( (tuple2!11003 (_1!6327 List!9782) (_2!6327 List!9782)) )
))
(declare-datatypes ((Option!2143 0))(
  ( (None!2142) (Some!2142 (v!19559 tuple2!11002)) )
))
(declare-fun isDefined!1785 (Option!2143) Bool)

(declare-fun findConcatSeparation!249 (Regex!2552 Regex!2552 List!9782 List!9782 List!9782) Option!2143)

(assert (=> b!933967 (= (isDefined!1785 (findConcatSeparation!249 (reg!2881 r!15766) lt!340928 Nil!9766 s!10566 s!10566)) (Exists!303 lambda!30907))))

(declare-fun lt!340927 () Unit!14723)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!249 (Regex!2552 Regex!2552 List!9782) Unit!14723)

(assert (=> b!933967 (= lt!340927 (lemmaFindConcatSeparationEquivalentToExists!249 (reg!2881 r!15766) lt!340928 s!10566))))

(assert (=> b!933967 (= lt!340928 (Star!2552 (reg!2881 r!15766)))))

(declare-fun b!933968 () Bool)

(assert (=> b!933968 (= e!606730 (not e!606733))))

(declare-fun res!424106 () Bool)

(assert (=> b!933968 (=> res!424106 e!606733)))

(declare-fun lt!340925 () Bool)

(assert (=> b!933968 (= res!424106 (or lt!340925 (and (is-Concat!4385 r!15766) (is-EmptyExpr!2552 (regOne!5616 r!15766))) (and (is-Concat!4385 r!15766) (is-EmptyExpr!2552 (regTwo!5616 r!15766))) (is-Concat!4385 r!15766) (is-Union!2552 r!15766) (not (is-Star!2552 r!15766))))))

(declare-fun matchRSpec!353 (Regex!2552 List!9782) Bool)

(assert (=> b!933968 (= lt!340925 (matchRSpec!353 r!15766 s!10566))))

(declare-fun matchR!1090 (Regex!2552 List!9782) Bool)

(assert (=> b!933968 (= lt!340925 (matchR!1090 r!15766 s!10566))))

(declare-fun lt!340924 () Unit!14723)

(declare-fun mainMatchTheorem!353 (Regex!2552 List!9782) Unit!14723)

(assert (=> b!933968 (= lt!340924 (mainMatchTheorem!353 r!15766 s!10566))))

(assert (= (and start!83500 res!424105) b!933968))

(assert (= (and b!933968 (not res!424106)) b!933967))

(assert (= (and start!83500 (is-ElementMatch!2552 r!15766)) b!933964))

(assert (= (and start!83500 (is-Concat!4385 r!15766)) b!933962))

(assert (= (and start!83500 (is-Star!2552 r!15766)) b!933965))

(assert (= (and start!83500 (is-Union!2552 r!15766)) b!933963))

(assert (= (and start!83500 (is-Cons!9766 s!10566)) b!933966))

(declare-fun m!1154577 () Bool)

(assert (=> start!83500 m!1154577))

(declare-fun m!1154579 () Bool)

(assert (=> b!933967 m!1154579))

(declare-fun m!1154581 () Bool)

(assert (=> b!933967 m!1154581))

(declare-fun m!1154583 () Bool)

(assert (=> b!933967 m!1154583))

(declare-fun m!1154585 () Bool)

(assert (=> b!933967 m!1154585))

(declare-fun m!1154587 () Bool)

(assert (=> b!933967 m!1154587))

(declare-fun m!1154589 () Bool)

(assert (=> b!933967 m!1154589))

(assert (=> b!933967 m!1154585))

(declare-fun m!1154591 () Bool)

(assert (=> b!933967 m!1154591))

(assert (=> b!933967 m!1154589))

(declare-fun m!1154593 () Bool)

(assert (=> b!933967 m!1154593))

(declare-fun m!1154595 () Bool)

(assert (=> b!933968 m!1154595))

(declare-fun m!1154597 () Bool)

(assert (=> b!933968 m!1154597))

(declare-fun m!1154599 () Bool)

(assert (=> b!933968 m!1154599))

(push 1)

(assert (not start!83500))

(assert (not b!933968))

(assert tp_is_empty!4747)

(assert (not b!933966))

(assert (not b!933963))

(assert (not b!933965))

(assert (not b!933967))

(assert (not b!933962))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!237792 () Bool)

(declare-fun b!934049 () Bool)

(assert (= bs!237792 (and b!934049 b!933967)))

(declare-fun lambda!30921 () Int)

(assert (=> bs!237792 (not (= lambda!30921 lambda!30907))))

(assert (=> bs!237792 (= (= r!15766 lt!340928) (= lambda!30921 lambda!30908))))

(assert (=> b!934049 true))

(assert (=> b!934049 true))

(declare-fun bs!237793 () Bool)

(declare-fun b!934052 () Bool)

(assert (= bs!237793 (and b!934052 b!933967)))

(declare-fun lambda!30922 () Int)

(assert (=> bs!237793 (not (= lambda!30922 lambda!30907))))

(assert (=> bs!237793 (not (= lambda!30922 lambda!30908))))

(declare-fun bs!237794 () Bool)

(assert (= bs!237794 (and b!934052 b!934049)))

(assert (=> bs!237794 (not (= lambda!30922 lambda!30921))))

(assert (=> b!934052 true))

(assert (=> b!934052 true))

(declare-fun d!281680 () Bool)

(declare-fun c!151882 () Bool)

(assert (=> d!281680 (= c!151882 (is-EmptyExpr!2552 r!15766))))

(declare-fun e!606772 () Bool)

(assert (=> d!281680 (= (matchRSpec!353 r!15766 s!10566) e!606772)))

(declare-fun b!934044 () Bool)

(declare-fun e!606771 () Bool)

(assert (=> b!934044 (= e!606771 (matchRSpec!353 (regTwo!5617 r!15766) s!10566))))

(declare-fun b!934045 () Bool)

(declare-fun e!606770 () Bool)

(assert (=> b!934045 (= e!606772 e!606770)))

(declare-fun res!424145 () Bool)

(assert (=> b!934045 (= res!424145 (not (is-EmptyLang!2552 r!15766)))))

(assert (=> b!934045 (=> (not res!424145) (not e!606770))))

(declare-fun b!934046 () Bool)

(declare-fun e!606774 () Bool)

(assert (=> b!934046 (= e!606774 (= s!10566 (Cons!9766 (c!151871 r!15766) Nil!9766)))))

(declare-fun b!934047 () Bool)

(declare-fun c!151883 () Bool)

(assert (=> b!934047 (= c!151883 (is-ElementMatch!2552 r!15766))))

(assert (=> b!934047 (= e!606770 e!606774)))

(declare-fun b!934048 () Bool)

(declare-fun res!424144 () Bool)

(declare-fun e!606775 () Bool)

(assert (=> b!934048 (=> res!424144 e!606775)))

(declare-fun call!57789 () Bool)

(assert (=> b!934048 (= res!424144 call!57789)))

(declare-fun e!606776 () Bool)

(assert (=> b!934048 (= e!606776 e!606775)))

(declare-fun call!57788 () Bool)

(assert (=> b!934049 (= e!606775 call!57788)))

(declare-fun b!934050 () Bool)

(declare-fun e!606773 () Bool)

(assert (=> b!934050 (= e!606773 e!606771)))

(declare-fun res!424143 () Bool)

(assert (=> b!934050 (= res!424143 (matchRSpec!353 (regOne!5617 r!15766) s!10566))))

(assert (=> b!934050 (=> res!424143 e!606771)))

(declare-fun b!934051 () Bool)

(assert (=> b!934051 (= e!606773 e!606776)))

(declare-fun c!151881 () Bool)

(assert (=> b!934051 (= c!151881 (is-Star!2552 r!15766))))

(declare-fun bm!57783 () Bool)

(assert (=> bm!57783 (= call!57788 (Exists!303 (ite c!151881 lambda!30921 lambda!30922)))))

(declare-fun bm!57784 () Bool)

(declare-fun isEmpty!6004 (List!9782) Bool)

(assert (=> bm!57784 (= call!57789 (isEmpty!6004 s!10566))))

(assert (=> b!934052 (= e!606776 call!57788)))

(declare-fun b!934053 () Bool)

(assert (=> b!934053 (= e!606772 call!57789)))

(declare-fun b!934054 () Bool)

(declare-fun c!151884 () Bool)

(assert (=> b!934054 (= c!151884 (is-Union!2552 r!15766))))

(assert (=> b!934054 (= e!606774 e!606773)))

(assert (= (and d!281680 c!151882) b!934053))

(assert (= (and d!281680 (not c!151882)) b!934045))

(assert (= (and b!934045 res!424145) b!934047))

(assert (= (and b!934047 c!151883) b!934046))

(assert (= (and b!934047 (not c!151883)) b!934054))

(assert (= (and b!934054 c!151884) b!934050))

(assert (= (and b!934054 (not c!151884)) b!934051))

(assert (= (and b!934050 (not res!424143)) b!934044))

(assert (= (and b!934051 c!151881) b!934048))

(assert (= (and b!934051 (not c!151881)) b!934052))

(assert (= (and b!934048 (not res!424144)) b!934049))

(assert (= (or b!934049 b!934052) bm!57783))

(assert (= (or b!934053 b!934048) bm!57784))

(declare-fun m!1154625 () Bool)

(assert (=> b!934044 m!1154625))

(declare-fun m!1154627 () Bool)

(assert (=> b!934050 m!1154627))

(declare-fun m!1154629 () Bool)

(assert (=> bm!57783 m!1154629))

(declare-fun m!1154631 () Bool)

(assert (=> bm!57784 m!1154631))

(assert (=> b!933968 d!281680))

(declare-fun b!934101 () Bool)

(declare-fun res!424179 () Bool)

(declare-fun e!606811 () Bool)

(assert (=> b!934101 (=> (not res!424179) (not e!606811))))

(declare-fun call!57798 () Bool)

(assert (=> b!934101 (= res!424179 (not call!57798))))

(declare-fun b!934102 () Bool)

(declare-fun res!424174 () Bool)

(declare-fun e!606806 () Bool)

(assert (=> b!934102 (=> res!424174 e!606806)))

(assert (=> b!934102 (= res!424174 e!606811)))

(declare-fun res!424175 () Bool)

(assert (=> b!934102 (=> (not res!424175) (not e!606811))))

(declare-fun lt!340946 () Bool)

(assert (=> b!934102 (= res!424175 lt!340946)))

(declare-fun b!934103 () Bool)

(declare-fun e!606805 () Bool)

(declare-fun head!1693 (List!9782) C!5674)

(assert (=> b!934103 (= e!606805 (not (= (head!1693 s!10566) (c!151871 r!15766))))))

(declare-fun b!934104 () Bool)

(declare-fun e!606810 () Bool)

(assert (=> b!934104 (= e!606810 (= lt!340946 call!57798))))

(declare-fun b!934105 () Bool)

(declare-fun e!606807 () Bool)

(assert (=> b!934105 (= e!606806 e!606807)))

(declare-fun res!424173 () Bool)

(assert (=> b!934105 (=> (not res!424173) (not e!606807))))

(assert (=> b!934105 (= res!424173 (not lt!340946))))

(declare-fun b!934106 () Bool)

(declare-fun e!606809 () Bool)

(assert (=> b!934106 (= e!606809 (not lt!340946))))

(declare-fun d!281684 () Bool)

(assert (=> d!281684 e!606810))

(declare-fun c!151897 () Bool)

(assert (=> d!281684 (= c!151897 (is-EmptyExpr!2552 r!15766))))

(declare-fun e!606808 () Bool)

(assert (=> d!281684 (= lt!340946 e!606808)))

(declare-fun c!151896 () Bool)

(assert (=> d!281684 (= c!151896 (isEmpty!6004 s!10566))))

(assert (=> d!281684 (validRegex!1021 r!15766)))

(assert (=> d!281684 (= (matchR!1090 r!15766 s!10566) lt!340946)))

(declare-fun b!934107 () Bool)

(assert (=> b!934107 (= e!606807 e!606805)))

(declare-fun res!424178 () Bool)

(assert (=> b!934107 (=> res!424178 e!606805)))

(assert (=> b!934107 (= res!424178 call!57798)))

(declare-fun b!934108 () Bool)

(declare-fun derivativeStep!540 (Regex!2552 C!5674) Regex!2552)

(declare-fun tail!1255 (List!9782) List!9782)

(assert (=> b!934108 (= e!606808 (matchR!1090 (derivativeStep!540 r!15766 (head!1693 s!10566)) (tail!1255 s!10566)))))

(declare-fun b!934109 () Bool)

(assert (=> b!934109 (= e!606810 e!606809)))

(declare-fun c!151895 () Bool)

(assert (=> b!934109 (= c!151895 (is-EmptyLang!2552 r!15766))))

(declare-fun b!934110 () Bool)

(declare-fun nullable!730 (Regex!2552) Bool)

(assert (=> b!934110 (= e!606808 (nullable!730 r!15766))))

(declare-fun bm!57793 () Bool)

(assert (=> bm!57793 (= call!57798 (isEmpty!6004 s!10566))))

(declare-fun b!934111 () Bool)

(declare-fun res!424176 () Bool)

(assert (=> b!934111 (=> (not res!424176) (not e!606811))))

(assert (=> b!934111 (= res!424176 (isEmpty!6004 (tail!1255 s!10566)))))

(declare-fun b!934112 () Bool)

(assert (=> b!934112 (= e!606811 (= (head!1693 s!10566) (c!151871 r!15766)))))

(declare-fun b!934113 () Bool)

(declare-fun res!424177 () Bool)

(assert (=> b!934113 (=> res!424177 e!606806)))

(assert (=> b!934113 (= res!424177 (not (is-ElementMatch!2552 r!15766)))))

(assert (=> b!934113 (= e!606809 e!606806)))

(declare-fun b!934114 () Bool)

(declare-fun res!424172 () Bool)

(assert (=> b!934114 (=> res!424172 e!606805)))

(assert (=> b!934114 (= res!424172 (not (isEmpty!6004 (tail!1255 s!10566))))))

(assert (= (and d!281684 c!151896) b!934110))

(assert (= (and d!281684 (not c!151896)) b!934108))

(assert (= (and d!281684 c!151897) b!934104))

(assert (= (and d!281684 (not c!151897)) b!934109))

(assert (= (and b!934109 c!151895) b!934106))

(assert (= (and b!934109 (not c!151895)) b!934113))

(assert (= (and b!934113 (not res!424177)) b!934102))

(assert (= (and b!934102 res!424175) b!934101))

(assert (= (and b!934101 res!424179) b!934111))

(assert (= (and b!934111 res!424176) b!934112))

(assert (= (and b!934102 (not res!424174)) b!934105))

(assert (= (and b!934105 res!424173) b!934107))

(assert (= (and b!934107 (not res!424178)) b!934114))

(assert (= (and b!934114 (not res!424172)) b!934103))

(assert (= (or b!934104 b!934101 b!934107) bm!57793))

(assert (=> d!281684 m!1154631))

(assert (=> d!281684 m!1154577))

(declare-fun m!1154633 () Bool)

(assert (=> b!934110 m!1154633))

(declare-fun m!1154635 () Bool)

(assert (=> b!934114 m!1154635))

(assert (=> b!934114 m!1154635))

(declare-fun m!1154637 () Bool)

(assert (=> b!934114 m!1154637))

(declare-fun m!1154639 () Bool)

(assert (=> b!934103 m!1154639))

(assert (=> b!934112 m!1154639))

(assert (=> b!934108 m!1154639))

(assert (=> b!934108 m!1154639))

(declare-fun m!1154641 () Bool)

(assert (=> b!934108 m!1154641))

(assert (=> b!934108 m!1154635))

(assert (=> b!934108 m!1154641))

(assert (=> b!934108 m!1154635))

(declare-fun m!1154643 () Bool)

(assert (=> b!934108 m!1154643))

(assert (=> b!934111 m!1154635))

(assert (=> b!934111 m!1154635))

(assert (=> b!934111 m!1154637))

(assert (=> bm!57793 m!1154631))

(assert (=> b!933968 d!281684))

(declare-fun d!281686 () Bool)

(assert (=> d!281686 (= (matchR!1090 r!15766 s!10566) (matchRSpec!353 r!15766 s!10566))))

(declare-fun lt!340949 () Unit!14723)

(declare-fun choose!5748 (Regex!2552 List!9782) Unit!14723)

(assert (=> d!281686 (= lt!340949 (choose!5748 r!15766 s!10566))))

(assert (=> d!281686 (validRegex!1021 r!15766)))

(assert (=> d!281686 (= (mainMatchTheorem!353 r!15766 s!10566) lt!340949)))

(declare-fun bs!237795 () Bool)

(assert (= bs!237795 d!281686))

(assert (=> bs!237795 m!1154597))

(assert (=> bs!237795 m!1154595))

(declare-fun m!1154651 () Bool)

(assert (=> bs!237795 m!1154651))

(assert (=> bs!237795 m!1154577))

(assert (=> b!933968 d!281686))

(declare-fun d!281690 () Bool)

(declare-fun isEmpty!6005 (Option!2143) Bool)

(assert (=> d!281690 (= (isDefined!1785 (findConcatSeparation!249 (reg!2881 r!15766) lt!340928 Nil!9766 s!10566 s!10566)) (not (isEmpty!6005 (findConcatSeparation!249 (reg!2881 r!15766) lt!340928 Nil!9766 s!10566 s!10566))))))

(declare-fun bs!237796 () Bool)

(assert (= bs!237796 d!281690))

(assert (=> bs!237796 m!1154589))

(declare-fun m!1154653 () Bool)

(assert (=> bs!237796 m!1154653))

(assert (=> b!933967 d!281690))

(declare-fun d!281692 () Bool)

(declare-fun choose!5749 (Int) Bool)

(assert (=> d!281692 (= (Exists!303 lambda!30908) (choose!5749 lambda!30908))))

(declare-fun bs!237797 () Bool)

(assert (= bs!237797 d!281692))

(declare-fun m!1154655 () Bool)

(assert (=> bs!237797 m!1154655))

(assert (=> b!933967 d!281692))

(declare-fun bm!57807 () Bool)

(declare-fun call!57812 () Regex!2552)

(declare-fun c!151921 () Bool)

(declare-fun c!151922 () Bool)

(declare-fun c!151919 () Bool)

(assert (=> bm!57807 (= call!57812 (removeUselessConcat!221 (ite c!151922 (regTwo!5616 (reg!2881 r!15766)) (ite (or c!151921 c!151919) (regOne!5616 (reg!2881 r!15766)) (regOne!5617 (reg!2881 r!15766))))))))

(declare-fun c!151920 () Bool)

(declare-fun bm!57808 () Bool)

(declare-fun call!57815 () Regex!2552)

(assert (=> bm!57808 (= call!57815 (removeUselessConcat!221 (ite c!151919 (regTwo!5616 (reg!2881 r!15766)) (ite c!151920 (regTwo!5617 (reg!2881 r!15766)) (reg!2881 (reg!2881 r!15766))))))))

(declare-fun bm!57809 () Bool)

(declare-fun call!57813 () Regex!2552)

(assert (=> bm!57809 (= call!57813 call!57815)))

(declare-fun bm!57810 () Bool)

(declare-fun call!57814 () Regex!2552)

(assert (=> bm!57810 (= call!57814 call!57812)))

(declare-fun bm!57811 () Bool)

(declare-fun call!57816 () Regex!2552)

(assert (=> bm!57811 (= call!57816 call!57814)))

(declare-fun b!934168 () Bool)

(assert (=> b!934168 (= c!151919 (is-Concat!4385 (reg!2881 r!15766)))))

(declare-fun e!606847 () Regex!2552)

(declare-fun e!606846 () Regex!2552)

(assert (=> b!934168 (= e!606847 e!606846)))

(declare-fun b!934169 () Bool)

(declare-fun e!606850 () Regex!2552)

(assert (=> b!934169 (= e!606850 e!606847)))

(assert (=> b!934169 (= c!151921 (and (is-Concat!4385 (reg!2881 r!15766)) (is-EmptyExpr!2552 (regTwo!5616 (reg!2881 r!15766)))))))

(declare-fun b!934170 () Bool)

(assert (=> b!934170 (= e!606850 call!57812)))

(declare-fun d!281694 () Bool)

(declare-fun e!606845 () Bool)

(assert (=> d!281694 e!606845))

(declare-fun res!424193 () Bool)

(assert (=> d!281694 (=> (not res!424193) (not e!606845))))

(declare-fun lt!340952 () Regex!2552)

(assert (=> d!281694 (= res!424193 (validRegex!1021 lt!340952))))

(assert (=> d!281694 (= lt!340952 e!606850)))

(assert (=> d!281694 (= c!151922 (and (is-Concat!4385 (reg!2881 r!15766)) (is-EmptyExpr!2552 (regOne!5616 (reg!2881 r!15766)))))))

(assert (=> d!281694 (validRegex!1021 (reg!2881 r!15766))))

(assert (=> d!281694 (= (removeUselessConcat!221 (reg!2881 r!15766)) lt!340952)))

(declare-fun b!934171 () Bool)

(declare-fun e!606849 () Regex!2552)

(assert (=> b!934171 (= e!606849 (reg!2881 r!15766))))

(declare-fun b!934172 () Bool)

(declare-fun e!606848 () Regex!2552)

(assert (=> b!934172 (= e!606846 e!606848)))

(assert (=> b!934172 (= c!151920 (is-Union!2552 (reg!2881 r!15766)))))

(declare-fun b!934173 () Bool)

(assert (=> b!934173 (= e!606847 call!57814)))

(declare-fun b!934174 () Bool)

(assert (=> b!934174 (= e!606846 (Concat!4385 call!57816 call!57815))))

(declare-fun b!934175 () Bool)

(assert (=> b!934175 (= e!606848 (Union!2552 call!57816 call!57813))))

(declare-fun b!934176 () Bool)

(assert (=> b!934176 (= e!606845 (= (nullable!730 lt!340952) (nullable!730 (reg!2881 r!15766))))))

(declare-fun b!934177 () Bool)

(declare-fun c!151918 () Bool)

(assert (=> b!934177 (= c!151918 (is-Star!2552 (reg!2881 r!15766)))))

(assert (=> b!934177 (= e!606848 e!606849)))

(declare-fun b!934178 () Bool)

(assert (=> b!934178 (= e!606849 (Star!2552 call!57813))))

(assert (= (and d!281694 c!151922) b!934170))

(assert (= (and d!281694 (not c!151922)) b!934169))

(assert (= (and b!934169 c!151921) b!934173))

(assert (= (and b!934169 (not c!151921)) b!934168))

(assert (= (and b!934168 c!151919) b!934174))

(assert (= (and b!934168 (not c!151919)) b!934172))

(assert (= (and b!934172 c!151920) b!934175))

(assert (= (and b!934172 (not c!151920)) b!934177))

(assert (= (and b!934177 c!151918) b!934178))

(assert (= (and b!934177 (not c!151918)) b!934171))

(assert (= (or b!934175 b!934178) bm!57809))

(assert (= (or b!934174 bm!57809) bm!57808))

(assert (= (or b!934174 b!934175) bm!57811))

(assert (= (or b!934173 bm!57811) bm!57810))

(assert (= (or b!934170 bm!57810) bm!57807))

(assert (= (and d!281694 res!424193) b!934176))

(declare-fun m!1154657 () Bool)

(assert (=> bm!57807 m!1154657))

(declare-fun m!1154659 () Bool)

(assert (=> bm!57808 m!1154659))

(declare-fun m!1154661 () Bool)

(assert (=> d!281694 m!1154661))

(declare-fun m!1154663 () Bool)

(assert (=> d!281694 m!1154663))

(declare-fun m!1154665 () Bool)

(assert (=> b!934176 m!1154665))

(declare-fun m!1154667 () Bool)

(assert (=> b!934176 m!1154667))

(assert (=> b!933967 d!281694))

(declare-fun d!281696 () Bool)

(assert (=> d!281696 (= (Exists!303 lambda!30907) (choose!5749 lambda!30907))))

(declare-fun bs!237798 () Bool)

(assert (= bs!237798 d!281696))

(declare-fun m!1154669 () Bool)

(assert (=> bs!237798 m!1154669))

(assert (=> b!933967 d!281696))

(declare-fun b!934203 () Bool)

(declare-fun e!606869 () Bool)

(declare-fun e!606872 () Bool)

(assert (=> b!934203 (= e!606869 e!606872)))

(declare-fun res!424214 () Bool)

(assert (=> b!934203 (=> (not res!424214) (not e!606872))))

(declare-fun call!57823 () Bool)

(assert (=> b!934203 (= res!424214 call!57823)))

(declare-fun b!934204 () Bool)

(declare-fun e!606868 () Bool)

(declare-fun e!606871 () Bool)

(assert (=> b!934204 (= e!606868 e!606871)))

(declare-fun c!151927 () Bool)

(assert (=> b!934204 (= c!151927 (is-Star!2552 (Star!2552 (removeUselessConcat!221 (reg!2881 r!15766)))))))

(declare-fun bm!57818 () Bool)

(declare-fun call!57824 () Bool)

(declare-fun call!57825 () Bool)

(assert (=> bm!57818 (= call!57824 call!57825)))

(declare-fun b!934205 () Bool)

(declare-fun e!606873 () Bool)

(assert (=> b!934205 (= e!606871 e!606873)))

(declare-fun c!151928 () Bool)

(assert (=> b!934205 (= c!151928 (is-Union!2552 (Star!2552 (removeUselessConcat!221 (reg!2881 r!15766)))))))

(declare-fun b!934206 () Bool)

(declare-fun e!606867 () Bool)

(assert (=> b!934206 (= e!606867 call!57824)))

(declare-fun bm!57819 () Bool)

(assert (=> bm!57819 (= call!57825 (validRegex!1021 (ite c!151927 (reg!2881 (Star!2552 (removeUselessConcat!221 (reg!2881 r!15766)))) (ite c!151928 (regTwo!5617 (Star!2552 (removeUselessConcat!221 (reg!2881 r!15766)))) (regTwo!5616 (Star!2552 (removeUselessConcat!221 (reg!2881 r!15766))))))))))

(declare-fun b!934207 () Bool)

(declare-fun e!606870 () Bool)

(assert (=> b!934207 (= e!606871 e!606870)))

(declare-fun res!424213 () Bool)

(assert (=> b!934207 (= res!424213 (not (nullable!730 (reg!2881 (Star!2552 (removeUselessConcat!221 (reg!2881 r!15766)))))))))

(assert (=> b!934207 (=> (not res!424213) (not e!606870))))

(declare-fun b!934208 () Bool)

(declare-fun res!424211 () Bool)

(assert (=> b!934208 (=> res!424211 e!606869)))

(assert (=> b!934208 (= res!424211 (not (is-Concat!4385 (Star!2552 (removeUselessConcat!221 (reg!2881 r!15766))))))))

(assert (=> b!934208 (= e!606873 e!606869)))

(declare-fun b!934209 () Bool)

(declare-fun res!424210 () Bool)

(assert (=> b!934209 (=> (not res!424210) (not e!606867))))

(assert (=> b!934209 (= res!424210 call!57823)))

(assert (=> b!934209 (= e!606873 e!606867)))

(declare-fun bm!57820 () Bool)

(assert (=> bm!57820 (= call!57823 (validRegex!1021 (ite c!151928 (regOne!5617 (Star!2552 (removeUselessConcat!221 (reg!2881 r!15766)))) (regOne!5616 (Star!2552 (removeUselessConcat!221 (reg!2881 r!15766)))))))))

(declare-fun b!934210 () Bool)

(assert (=> b!934210 (= e!606870 call!57825)))

(declare-fun d!281698 () Bool)

(declare-fun res!424212 () Bool)

(assert (=> d!281698 (=> res!424212 e!606868)))

(assert (=> d!281698 (= res!424212 (is-ElementMatch!2552 (Star!2552 (removeUselessConcat!221 (reg!2881 r!15766)))))))

(assert (=> d!281698 (= (validRegex!1021 (Star!2552 (removeUselessConcat!221 (reg!2881 r!15766)))) e!606868)))

(declare-fun b!934211 () Bool)

(assert (=> b!934211 (= e!606872 call!57824)))

(assert (= (and d!281698 (not res!424212)) b!934204))

(assert (= (and b!934204 c!151927) b!934207))

(assert (= (and b!934204 (not c!151927)) b!934205))

(assert (= (and b!934207 res!424213) b!934210))

(assert (= (and b!934205 c!151928) b!934209))

(assert (= (and b!934205 (not c!151928)) b!934208))

(assert (= (and b!934209 res!424210) b!934206))

(assert (= (and b!934208 (not res!424211)) b!934203))

(assert (= (and b!934203 res!424214) b!934211))

(assert (= (or b!934206 b!934211) bm!57818))

(assert (= (or b!934209 b!934203) bm!57820))

(assert (= (or b!934210 bm!57818) bm!57819))

(declare-fun m!1154671 () Bool)

(assert (=> bm!57819 m!1154671))

(declare-fun m!1154673 () Bool)

(assert (=> b!934207 m!1154673))

(declare-fun m!1154675 () Bool)

(assert (=> bm!57820 m!1154675))

(assert (=> b!933967 d!281698))

(declare-fun bs!237799 () Bool)

(declare-fun d!281700 () Bool)

(assert (= bs!237799 (and d!281700 b!933967)))

(declare-fun lambda!30929 () Int)

(assert (=> bs!237799 (= lambda!30929 lambda!30907)))

(assert (=> bs!237799 (not (= lambda!30929 lambda!30908))))

(declare-fun bs!237800 () Bool)

(assert (= bs!237800 (and d!281700 b!934049)))

(assert (=> bs!237800 (not (= lambda!30929 lambda!30921))))

(declare-fun bs!237801 () Bool)

(assert (= bs!237801 (and d!281700 b!934052)))

(assert (=> bs!237801 (not (= lambda!30929 lambda!30922))))

(assert (=> d!281700 true))

(assert (=> d!281700 true))

(assert (=> d!281700 true))

(assert (=> d!281700 (= (isDefined!1785 (findConcatSeparation!249 (reg!2881 r!15766) lt!340928 Nil!9766 s!10566 s!10566)) (Exists!303 lambda!30929))))

(declare-fun lt!340955 () Unit!14723)

(declare-fun choose!5750 (Regex!2552 Regex!2552 List!9782) Unit!14723)

(assert (=> d!281700 (= lt!340955 (choose!5750 (reg!2881 r!15766) lt!340928 s!10566))))

(assert (=> d!281700 (validRegex!1021 (reg!2881 r!15766))))

(assert (=> d!281700 (= (lemmaFindConcatSeparationEquivalentToExists!249 (reg!2881 r!15766) lt!340928 s!10566) lt!340955)))

(declare-fun bs!237802 () Bool)

(assert (= bs!237802 d!281700))

(assert (=> bs!237802 m!1154663))

(assert (=> bs!237802 m!1154589))

(declare-fun m!1154677 () Bool)

(assert (=> bs!237802 m!1154677))

(declare-fun m!1154679 () Bool)

(assert (=> bs!237802 m!1154679))

(assert (=> bs!237802 m!1154589))

(assert (=> bs!237802 m!1154593))

(assert (=> b!933967 d!281700))

(declare-fun b!934249 () Bool)

(declare-fun e!606896 () Bool)

(declare-fun lt!340964 () Option!2143)

(declare-fun ++!2583 (List!9782 List!9782) List!9782)

(declare-fun get!3219 (Option!2143) tuple2!11002)

(assert (=> b!934249 (= e!606896 (= (++!2583 (_1!6327 (get!3219 lt!340964)) (_2!6327 (get!3219 lt!340964))) s!10566))))

(declare-fun b!934250 () Bool)

(declare-fun lt!340963 () Unit!14723)

(declare-fun lt!340962 () Unit!14723)

(assert (=> b!934250 (= lt!340963 lt!340962)))

(assert (=> b!934250 (= (++!2583 (++!2583 Nil!9766 (Cons!9766 (h!15167 s!10566) Nil!9766)) (t!100828 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!196 (List!9782 C!5674 List!9782 List!9782) Unit!14723)

(assert (=> b!934250 (= lt!340962 (lemmaMoveElementToOtherListKeepsConcatEq!196 Nil!9766 (h!15167 s!10566) (t!100828 s!10566) s!10566))))

(declare-fun e!606898 () Option!2143)

(assert (=> b!934250 (= e!606898 (findConcatSeparation!249 (reg!2881 r!15766) lt!340928 (++!2583 Nil!9766 (Cons!9766 (h!15167 s!10566) Nil!9766)) (t!100828 s!10566) s!10566))))

(declare-fun b!934251 () Bool)

(declare-fun res!424239 () Bool)

(assert (=> b!934251 (=> (not res!424239) (not e!606896))))

(assert (=> b!934251 (= res!424239 (matchR!1090 lt!340928 (_2!6327 (get!3219 lt!340964))))))

(declare-fun b!934252 () Bool)

(declare-fun e!606897 () Option!2143)

(assert (=> b!934252 (= e!606897 (Some!2142 (tuple2!11003 Nil!9766 s!10566)))))

(declare-fun b!934253 () Bool)

(declare-fun e!606899 () Bool)

(assert (=> b!934253 (= e!606899 (matchR!1090 lt!340928 s!10566))))

(declare-fun b!934254 () Bool)

(declare-fun e!606895 () Bool)

(assert (=> b!934254 (= e!606895 (not (isDefined!1785 lt!340964)))))

(declare-fun b!934255 () Bool)

(assert (=> b!934255 (= e!606898 None!2142)))

(declare-fun d!281702 () Bool)

(assert (=> d!281702 e!606895))

(declare-fun res!424240 () Bool)

(assert (=> d!281702 (=> res!424240 e!606895)))

(assert (=> d!281702 (= res!424240 e!606896)))

(declare-fun res!424237 () Bool)

(assert (=> d!281702 (=> (not res!424237) (not e!606896))))

(assert (=> d!281702 (= res!424237 (isDefined!1785 lt!340964))))

(assert (=> d!281702 (= lt!340964 e!606897)))

(declare-fun c!151938 () Bool)

(assert (=> d!281702 (= c!151938 e!606899)))

(declare-fun res!424236 () Bool)

(assert (=> d!281702 (=> (not res!424236) (not e!606899))))

(assert (=> d!281702 (= res!424236 (matchR!1090 (reg!2881 r!15766) Nil!9766))))

(assert (=> d!281702 (validRegex!1021 (reg!2881 r!15766))))

(assert (=> d!281702 (= (findConcatSeparation!249 (reg!2881 r!15766) lt!340928 Nil!9766 s!10566 s!10566) lt!340964)))

(declare-fun b!934256 () Bool)

(declare-fun res!424238 () Bool)

(assert (=> b!934256 (=> (not res!424238) (not e!606896))))

(assert (=> b!934256 (= res!424238 (matchR!1090 (reg!2881 r!15766) (_1!6327 (get!3219 lt!340964))))))

(declare-fun b!934257 () Bool)

(assert (=> b!934257 (= e!606897 e!606898)))

(declare-fun c!151937 () Bool)

(assert (=> b!934257 (= c!151937 (is-Nil!9766 s!10566))))

(assert (= (and d!281702 res!424236) b!934253))

(assert (= (and d!281702 c!151938) b!934252))

(assert (= (and d!281702 (not c!151938)) b!934257))

(assert (= (and b!934257 c!151937) b!934255))

(assert (= (and b!934257 (not c!151937)) b!934250))

(assert (= (and d!281702 res!424237) b!934256))

(assert (= (and b!934256 res!424238) b!934251))

(assert (= (and b!934251 res!424239) b!934249))

(assert (= (and d!281702 (not res!424240)) b!934254))

(declare-fun m!1154689 () Bool)

(assert (=> b!934253 m!1154689))

(declare-fun m!1154691 () Bool)

(assert (=> b!934256 m!1154691))

(declare-fun m!1154693 () Bool)

(assert (=> b!934256 m!1154693))

(declare-fun m!1154695 () Bool)

(assert (=> b!934250 m!1154695))

(assert (=> b!934250 m!1154695))

(declare-fun m!1154697 () Bool)

(assert (=> b!934250 m!1154697))

(declare-fun m!1154699 () Bool)

(assert (=> b!934250 m!1154699))

(assert (=> b!934250 m!1154695))

(declare-fun m!1154701 () Bool)

(assert (=> b!934250 m!1154701))

(assert (=> b!934251 m!1154691))

(declare-fun m!1154703 () Bool)

(assert (=> b!934251 m!1154703))

(declare-fun m!1154705 () Bool)

(assert (=> d!281702 m!1154705))

(declare-fun m!1154707 () Bool)

(assert (=> d!281702 m!1154707))

(assert (=> d!281702 m!1154663))

(assert (=> b!934254 m!1154705))

(assert (=> b!934249 m!1154691))

(declare-fun m!1154709 () Bool)

(assert (=> b!934249 m!1154709))

(assert (=> b!933967 d!281702))

(declare-fun bs!237806 () Bool)

(declare-fun d!281706 () Bool)

(assert (= bs!237806 (and d!281706 b!933967)))

(declare-fun lambda!30936 () Int)

(assert (=> bs!237806 (not (= lambda!30936 lambda!30908))))

(declare-fun bs!237807 () Bool)

(assert (= bs!237807 (and d!281706 b!934052)))

(assert (=> bs!237807 (not (= lambda!30936 lambda!30922))))

(assert (=> bs!237806 (= (= (Star!2552 (reg!2881 r!15766)) lt!340928) (= lambda!30936 lambda!30907))))

(declare-fun bs!237808 () Bool)

(assert (= bs!237808 (and d!281706 b!934049)))

(assert (=> bs!237808 (not (= lambda!30936 lambda!30921))))

(declare-fun bs!237809 () Bool)

(assert (= bs!237809 (and d!281706 d!281700)))

(assert (=> bs!237809 (= (= (Star!2552 (reg!2881 r!15766)) lt!340928) (= lambda!30936 lambda!30929))))

(assert (=> d!281706 true))

(assert (=> d!281706 true))

(declare-fun lambda!30937 () Int)

(assert (=> bs!237806 (= (= (Star!2552 (reg!2881 r!15766)) lt!340928) (= lambda!30937 lambda!30908))))

(declare-fun bs!237810 () Bool)

(assert (= bs!237810 d!281706))

(assert (=> bs!237810 (not (= lambda!30937 lambda!30936))))

(assert (=> bs!237807 (not (= lambda!30937 lambda!30922))))

(assert (=> bs!237806 (not (= lambda!30937 lambda!30907))))

(assert (=> bs!237808 (= (= (Star!2552 (reg!2881 r!15766)) r!15766) (= lambda!30937 lambda!30921))))

(assert (=> bs!237809 (not (= lambda!30937 lambda!30929))))

(assert (=> d!281706 true))

(assert (=> d!281706 true))

(assert (=> d!281706 (= (Exists!303 lambda!30936) (Exists!303 lambda!30937))))

(declare-fun lt!340970 () Unit!14723)

(declare-fun choose!5751 (Regex!2552 List!9782) Unit!14723)

(assert (=> d!281706 (= lt!340970 (choose!5751 (reg!2881 r!15766) s!10566))))

(assert (=> d!281706 (validRegex!1021 (reg!2881 r!15766))))

(assert (=> d!281706 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!47 (reg!2881 r!15766) s!10566) lt!340970)))

(declare-fun m!1154723 () Bool)

(assert (=> bs!237810 m!1154723))

(declare-fun m!1154725 () Bool)

(assert (=> bs!237810 m!1154725))

(declare-fun m!1154727 () Bool)

(assert (=> bs!237810 m!1154727))

(assert (=> bs!237810 m!1154663))

(assert (=> b!933967 d!281706))

(declare-fun b!934310 () Bool)

(declare-fun e!606927 () Bool)

(declare-fun e!606930 () Bool)

(assert (=> b!934310 (= e!606927 e!606930)))

(declare-fun res!424279 () Bool)

(assert (=> b!934310 (=> (not res!424279) (not e!606930))))

(declare-fun call!57835 () Bool)

(assert (=> b!934310 (= res!424279 call!57835)))

(declare-fun b!934311 () Bool)

(declare-fun e!606926 () Bool)

(declare-fun e!606929 () Bool)

(assert (=> b!934311 (= e!606926 e!606929)))

(declare-fun c!151948 () Bool)

(assert (=> b!934311 (= c!151948 (is-Star!2552 r!15766))))

(declare-fun bm!57830 () Bool)

(declare-fun call!57836 () Bool)

(declare-fun call!57837 () Bool)

(assert (=> bm!57830 (= call!57836 call!57837)))

(declare-fun b!934312 () Bool)

(declare-fun e!606931 () Bool)

(assert (=> b!934312 (= e!606929 e!606931)))

(declare-fun c!151949 () Bool)

(assert (=> b!934312 (= c!151949 (is-Union!2552 r!15766))))

(declare-fun b!934313 () Bool)

(declare-fun e!606925 () Bool)

(assert (=> b!934313 (= e!606925 call!57836)))

(declare-fun bm!57831 () Bool)

(assert (=> bm!57831 (= call!57837 (validRegex!1021 (ite c!151948 (reg!2881 r!15766) (ite c!151949 (regTwo!5617 r!15766) (regTwo!5616 r!15766)))))))

(declare-fun b!934314 () Bool)

(declare-fun e!606928 () Bool)

(assert (=> b!934314 (= e!606929 e!606928)))

(declare-fun res!424278 () Bool)

(assert (=> b!934314 (= res!424278 (not (nullable!730 (reg!2881 r!15766))))))

(assert (=> b!934314 (=> (not res!424278) (not e!606928))))

(declare-fun b!934315 () Bool)

(declare-fun res!424276 () Bool)

(assert (=> b!934315 (=> res!424276 e!606927)))

(assert (=> b!934315 (= res!424276 (not (is-Concat!4385 r!15766)))))

(assert (=> b!934315 (= e!606931 e!606927)))

(declare-fun b!934316 () Bool)

(declare-fun res!424275 () Bool)

(assert (=> b!934316 (=> (not res!424275) (not e!606925))))

(assert (=> b!934316 (= res!424275 call!57835)))

(assert (=> b!934316 (= e!606931 e!606925)))

(declare-fun bm!57832 () Bool)

(assert (=> bm!57832 (= call!57835 (validRegex!1021 (ite c!151949 (regOne!5617 r!15766) (regOne!5616 r!15766))))))

(declare-fun b!934317 () Bool)

(assert (=> b!934317 (= e!606928 call!57837)))

(declare-fun d!281710 () Bool)

(declare-fun res!424277 () Bool)

(assert (=> d!281710 (=> res!424277 e!606926)))

(assert (=> d!281710 (= res!424277 (is-ElementMatch!2552 r!15766))))

(assert (=> d!281710 (= (validRegex!1021 r!15766) e!606926)))

(declare-fun b!934318 () Bool)

(assert (=> b!934318 (= e!606930 call!57836)))

(assert (= (and d!281710 (not res!424277)) b!934311))

(assert (= (and b!934311 c!151948) b!934314))

(assert (= (and b!934311 (not c!151948)) b!934312))

(assert (= (and b!934314 res!424278) b!934317))

(assert (= (and b!934312 c!151949) b!934316))

(assert (= (and b!934312 (not c!151949)) b!934315))

(assert (= (and b!934316 res!424275) b!934313))

(assert (= (and b!934315 (not res!424276)) b!934310))

(assert (= (and b!934310 res!424279) b!934318))

(assert (= (or b!934313 b!934318) bm!57830))

(assert (= (or b!934316 b!934310) bm!57832))

(assert (= (or b!934317 bm!57830) bm!57831))

(declare-fun m!1154729 () Bool)

(assert (=> bm!57831 m!1154729))

(assert (=> b!934314 m!1154667))

(declare-fun m!1154731 () Bool)

(assert (=> bm!57832 m!1154731))

(assert (=> start!83500 d!281710))

(declare-fun b!934323 () Bool)

(declare-fun e!606934 () Bool)

(declare-fun tp!289867 () Bool)

(assert (=> b!934323 (= e!606934 (and tp_is_empty!4747 tp!289867))))

(assert (=> b!933966 (= tp!289845 e!606934)))

(assert (= (and b!933966 (is-Cons!9766 (t!100828 s!10566))) b!934323))

(declare-fun b!934345 () Bool)

(declare-fun e!606944 () Bool)

(declare-fun tp!289881 () Bool)

(assert (=> b!934345 (= e!606944 tp!289881)))

(declare-fun b!934343 () Bool)

(assert (=> b!934343 (= e!606944 tp_is_empty!4747)))

(assert (=> b!933962 (= tp!289843 e!606944)))

(declare-fun b!934344 () Bool)

(declare-fun tp!289879 () Bool)

(declare-fun tp!289878 () Bool)

(assert (=> b!934344 (= e!606944 (and tp!289879 tp!289878))))

(declare-fun b!934346 () Bool)

(declare-fun tp!289882 () Bool)

(declare-fun tp!289880 () Bool)

(assert (=> b!934346 (= e!606944 (and tp!289882 tp!289880))))

(assert (= (and b!933962 (is-ElementMatch!2552 (regOne!5616 r!15766))) b!934343))

(assert (= (and b!933962 (is-Concat!4385 (regOne!5616 r!15766))) b!934344))

(assert (= (and b!933962 (is-Star!2552 (regOne!5616 r!15766))) b!934345))

(assert (= (and b!933962 (is-Union!2552 (regOne!5616 r!15766))) b!934346))

(declare-fun b!934349 () Bool)

(declare-fun e!606945 () Bool)

(declare-fun tp!289886 () Bool)

(assert (=> b!934349 (= e!606945 tp!289886)))

(declare-fun b!934347 () Bool)

(assert (=> b!934347 (= e!606945 tp_is_empty!4747)))

(assert (=> b!933962 (= tp!289844 e!606945)))

(declare-fun b!934348 () Bool)

(declare-fun tp!289884 () Bool)

(declare-fun tp!289883 () Bool)

(assert (=> b!934348 (= e!606945 (and tp!289884 tp!289883))))

(declare-fun b!934350 () Bool)

(declare-fun tp!289887 () Bool)

(declare-fun tp!289885 () Bool)

(assert (=> b!934350 (= e!606945 (and tp!289887 tp!289885))))

(assert (= (and b!933962 (is-ElementMatch!2552 (regTwo!5616 r!15766))) b!934347))

(assert (= (and b!933962 (is-Concat!4385 (regTwo!5616 r!15766))) b!934348))

(assert (= (and b!933962 (is-Star!2552 (regTwo!5616 r!15766))) b!934349))

(assert (= (and b!933962 (is-Union!2552 (regTwo!5616 r!15766))) b!934350))

(declare-fun b!934353 () Bool)

(declare-fun e!606946 () Bool)

(declare-fun tp!289891 () Bool)

(assert (=> b!934353 (= e!606946 tp!289891)))

(declare-fun b!934351 () Bool)

(assert (=> b!934351 (= e!606946 tp_is_empty!4747)))

(assert (=> b!933963 (= tp!289842 e!606946)))

(declare-fun b!934352 () Bool)

(declare-fun tp!289889 () Bool)

(declare-fun tp!289888 () Bool)

(assert (=> b!934352 (= e!606946 (and tp!289889 tp!289888))))

(declare-fun b!934354 () Bool)

(declare-fun tp!289892 () Bool)

(declare-fun tp!289890 () Bool)

(assert (=> b!934354 (= e!606946 (and tp!289892 tp!289890))))

(assert (= (and b!933963 (is-ElementMatch!2552 (regOne!5617 r!15766))) b!934351))

(assert (= (and b!933963 (is-Concat!4385 (regOne!5617 r!15766))) b!934352))

(assert (= (and b!933963 (is-Star!2552 (regOne!5617 r!15766))) b!934353))

(assert (= (and b!933963 (is-Union!2552 (regOne!5617 r!15766))) b!934354))

(declare-fun b!934357 () Bool)

(declare-fun e!606947 () Bool)

(declare-fun tp!289896 () Bool)

(assert (=> b!934357 (= e!606947 tp!289896)))

(declare-fun b!934355 () Bool)

(assert (=> b!934355 (= e!606947 tp_is_empty!4747)))

(assert (=> b!933963 (= tp!289841 e!606947)))

(declare-fun b!934356 () Bool)

(declare-fun tp!289894 () Bool)

(declare-fun tp!289893 () Bool)

(assert (=> b!934356 (= e!606947 (and tp!289894 tp!289893))))

(declare-fun b!934358 () Bool)

(declare-fun tp!289897 () Bool)

(declare-fun tp!289895 () Bool)

(assert (=> b!934358 (= e!606947 (and tp!289897 tp!289895))))

(assert (= (and b!933963 (is-ElementMatch!2552 (regTwo!5617 r!15766))) b!934355))

(assert (= (and b!933963 (is-Concat!4385 (regTwo!5617 r!15766))) b!934356))

(assert (= (and b!933963 (is-Star!2552 (regTwo!5617 r!15766))) b!934357))

(assert (= (and b!933963 (is-Union!2552 (regTwo!5617 r!15766))) b!934358))

(declare-fun b!934361 () Bool)

(declare-fun e!606948 () Bool)

(declare-fun tp!289901 () Bool)

(assert (=> b!934361 (= e!606948 tp!289901)))

(declare-fun b!934359 () Bool)

(assert (=> b!934359 (= e!606948 tp_is_empty!4747)))

(assert (=> b!933965 (= tp!289846 e!606948)))

(declare-fun b!934360 () Bool)

(declare-fun tp!289899 () Bool)

(declare-fun tp!289898 () Bool)

(assert (=> b!934360 (= e!606948 (and tp!289899 tp!289898))))

(declare-fun b!934362 () Bool)

(declare-fun tp!289902 () Bool)

(declare-fun tp!289900 () Bool)

(assert (=> b!934362 (= e!606948 (and tp!289902 tp!289900))))

(assert (= (and b!933965 (is-ElementMatch!2552 (reg!2881 r!15766))) b!934359))

(assert (= (and b!933965 (is-Concat!4385 (reg!2881 r!15766))) b!934360))

(assert (= (and b!933965 (is-Star!2552 (reg!2881 r!15766))) b!934361))

(assert (= (and b!933965 (is-Union!2552 (reg!2881 r!15766))) b!934362))

(push 1)

(assert (not b!934207))

(assert (not b!934323))

(assert (not b!934112))

(assert (not b!934253))

(assert (not d!281684))

(assert (not bm!57832))

(assert (not b!934254))

(assert (not b!934356))

(assert (not b!934111))

(assert (not b!934353))

(assert (not d!281702))

(assert (not bm!57793))

(assert (not b!934114))

(assert tp_is_empty!4747)

(assert (not b!934346))

(assert (not b!934044))

(assert (not b!934361))

(assert (not b!934344))

(assert (not d!281686))

(assert (not d!281700))

(assert (not bm!57831))

(assert (not d!281690))

(assert (not b!934249))

(assert (not bm!57820))

(assert (not d!281696))

(assert (not b!934108))

(assert (not d!281694))

(assert (not b!934352))

(assert (not b!934314))

(assert (not b!934110))

(assert (not b!934176))

(assert (not bm!57807))

(assert (not b!934357))

(assert (not b!934349))

(assert (not bm!57819))

(assert (not bm!57808))

(assert (not d!281692))

(assert (not b!934345))

(assert (not b!934251))

(assert (not bm!57783))

(assert (not b!934362))

(assert (not d!281706))

(assert (not bm!57784))

(assert (not b!934103))

(assert (not b!934348))

(assert (not b!934354))

(assert (not b!934360))

(assert (not b!934358))

(assert (not b!934050))

(assert (not b!934256))

(assert (not b!934350))

(assert (not b!934250))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

