; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!724910 () Bool)

(assert start!724910)

(declare-fun b!7483730 () Bool)

(assert (=> b!7483730 true))

(assert (=> b!7483730 true))

(assert (=> b!7483730 true))

(declare-fun lambda!463821 () Int)

(declare-fun lambda!463820 () Int)

(assert (=> b!7483730 (not (= lambda!463821 lambda!463820))))

(assert (=> b!7483730 true))

(assert (=> b!7483730 true))

(assert (=> b!7483730 true))

(declare-fun bs!1933897 () Bool)

(declare-fun b!7483722 () Bool)

(assert (= bs!1933897 (and b!7483722 b!7483730)))

(declare-datatypes ((C!39512 0))(
  ( (C!39513 (val!30154 Int)) )
))
(declare-datatypes ((Regex!19619 0))(
  ( (ElementMatch!19619 (c!1382224 C!39512)) (Concat!28464 (regOne!39750 Regex!19619) (regTwo!39750 Regex!19619)) (EmptyExpr!19619) (Star!19619 (reg!19948 Regex!19619)) (EmptyLang!19619) (Union!19619 (regOne!39751 Regex!19619) (regTwo!39751 Regex!19619)) )
))
(declare-fun r2!5783 () Regex!19619)

(declare-fun lt!2628779 () Regex!19619)

(declare-fun lambda!463822 () Int)

(assert (=> bs!1933897 (= (= r2!5783 lt!2628779) (= lambda!463822 lambda!463820))))

(assert (=> bs!1933897 (not (= lambda!463822 lambda!463821))))

(assert (=> b!7483722 true))

(assert (=> b!7483722 true))

(assert (=> b!7483722 true))

(declare-fun lambda!463823 () Int)

(assert (=> bs!1933897 (not (= lambda!463823 lambda!463820))))

(assert (=> bs!1933897 (= (= r2!5783 lt!2628779) (= lambda!463823 lambda!463821))))

(assert (=> b!7483722 (not (= lambda!463823 lambda!463822))))

(assert (=> b!7483722 true))

(assert (=> b!7483722 true))

(assert (=> b!7483722 true))

(declare-fun b!7483717 () Bool)

(declare-fun e!4463629 () Bool)

(declare-fun e!4463627 () Bool)

(assert (=> b!7483717 (= e!4463629 (not e!4463627))))

(declare-fun res!3002565 () Bool)

(assert (=> b!7483717 (=> res!3002565 e!4463627)))

(declare-fun lt!2628770 () Bool)

(assert (=> b!7483717 (= res!3002565 lt!2628770)))

(declare-fun lt!2628778 () Bool)

(declare-fun lt!2628791 () Regex!19619)

(declare-datatypes ((List!72335 0))(
  ( (Nil!72211) (Cons!72211 (h!78659 C!39512) (t!386904 List!72335)) )
))
(declare-fun s!13591 () List!72335)

(declare-fun matchRSpec!4298 (Regex!19619 List!72335) Bool)

(assert (=> b!7483717 (= lt!2628778 (matchRSpec!4298 lt!2628791 s!13591))))

(declare-fun matchR!9383 (Regex!19619 List!72335) Bool)

(assert (=> b!7483717 (= lt!2628778 (matchR!9383 lt!2628791 s!13591))))

(declare-datatypes ((Unit!166073 0))(
  ( (Unit!166074) )
))
(declare-fun lt!2628793 () Unit!166073)

(declare-fun mainMatchTheorem!4292 (Regex!19619 List!72335) Unit!166073)

(assert (=> b!7483717 (= lt!2628793 (mainMatchTheorem!4292 lt!2628791 s!13591))))

(declare-fun lt!2628775 () Regex!19619)

(assert (=> b!7483717 (= lt!2628770 (matchRSpec!4298 lt!2628775 s!13591))))

(assert (=> b!7483717 (= lt!2628770 (matchR!9383 lt!2628775 s!13591))))

(declare-fun lt!2628789 () Unit!166073)

(assert (=> b!7483717 (= lt!2628789 (mainMatchTheorem!4292 lt!2628775 s!13591))))

(declare-fun lt!2628781 () Regex!19619)

(declare-fun lt!2628777 () Regex!19619)

(assert (=> b!7483717 (= lt!2628791 (Union!19619 lt!2628781 lt!2628777))))

(declare-fun rTail!78 () Regex!19619)

(assert (=> b!7483717 (= lt!2628777 (Concat!28464 r2!5783 rTail!78))))

(declare-fun r1!5845 () Regex!19619)

(assert (=> b!7483717 (= lt!2628781 (Concat!28464 r1!5845 rTail!78))))

(assert (=> b!7483717 (= lt!2628775 (Concat!28464 lt!2628779 rTail!78))))

(assert (=> b!7483717 (= lt!2628779 (Union!19619 r1!5845 r2!5783))))

(declare-fun b!7483718 () Bool)

(declare-fun e!4463626 () Bool)

(declare-fun tp!2170663 () Bool)

(assert (=> b!7483718 (= e!4463626 tp!2170663)))

(declare-fun b!7483719 () Bool)

(declare-fun res!3002562 () Bool)

(declare-fun e!4463628 () Bool)

(assert (=> b!7483719 (=> res!3002562 e!4463628)))

(declare-datatypes ((tuple2!68688 0))(
  ( (tuple2!68689 (_1!37647 List!72335) (_2!37647 List!72335)) )
))
(declare-fun lt!2628787 () tuple2!68688)

(assert (=> b!7483719 (= res!3002562 (not (matchR!9383 rTail!78 (_2!37647 lt!2628787))))))

(declare-fun b!7483720 () Bool)

(declare-fun e!4463630 () Bool)

(declare-fun tp_is_empty!49527 () Bool)

(declare-fun tp!2170657 () Bool)

(assert (=> b!7483720 (= e!4463630 (and tp_is_empty!49527 tp!2170657))))

(declare-fun b!7483721 () Bool)

(declare-fun e!4463633 () Bool)

(declare-fun tp!2170662 () Bool)

(declare-fun tp!2170664 () Bool)

(assert (=> b!7483721 (= e!4463633 (and tp!2170662 tp!2170664))))

(declare-fun e!4463632 () Bool)

(assert (=> b!7483722 (= e!4463632 e!4463628)))

(declare-fun res!3002567 () Bool)

(assert (=> b!7483722 (=> res!3002567 e!4463628)))

(assert (=> b!7483722 (= res!3002567 (not (matchR!9383 r2!5783 (_1!37647 lt!2628787))))))

(declare-datatypes ((Option!17176 0))(
  ( (None!17175) (Some!17175 (v!54304 tuple2!68688)) )
))
(declare-fun lt!2628780 () Option!17176)

(declare-fun get!25292 (Option!17176) tuple2!68688)

(assert (=> b!7483722 (= lt!2628787 (get!25292 lt!2628780))))

(declare-fun Exists!4238 (Int) Bool)

(assert (=> b!7483722 (= (Exists!4238 lambda!463822) (Exists!4238 lambda!463823))))

(declare-fun lt!2628792 () Unit!166073)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2572 (Regex!19619 Regex!19619 List!72335) Unit!166073)

(assert (=> b!7483722 (= lt!2628792 (lemmaExistCutMatchRandMatchRSpecEquivalent!2572 r2!5783 rTail!78 s!13591))))

(declare-fun isDefined!13865 (Option!17176) Bool)

(assert (=> b!7483722 (= (isDefined!13865 lt!2628780) (Exists!4238 lambda!463822))))

(declare-fun findConcatSeparation!3298 (Regex!19619 Regex!19619 List!72335 List!72335 List!72335) Option!17176)

(assert (=> b!7483722 (= lt!2628780 (findConcatSeparation!3298 r2!5783 rTail!78 Nil!72211 s!13591 s!13591))))

(declare-fun lt!2628783 () Unit!166073)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3056 (Regex!19619 Regex!19619 List!72335) Unit!166073)

(assert (=> b!7483722 (= lt!2628783 (lemmaFindConcatSeparationEquivalentToExists!3056 r2!5783 rTail!78 s!13591))))

(declare-fun b!7483723 () Bool)

(assert (=> b!7483723 (= e!4463626 tp_is_empty!49527)))

(declare-fun b!7483724 () Bool)

(declare-fun tp!2170652 () Bool)

(declare-fun tp!2170667 () Bool)

(assert (=> b!7483724 (= e!4463626 (and tp!2170652 tp!2170667))))

(declare-fun res!3002568 () Bool)

(assert (=> start!724910 (=> (not res!3002568) (not e!4463629))))

(declare-fun validRegex!10133 (Regex!19619) Bool)

(assert (=> start!724910 (= res!3002568 (validRegex!10133 r1!5845))))

(assert (=> start!724910 e!4463629))

(declare-fun e!4463634 () Bool)

(assert (=> start!724910 e!4463634))

(assert (=> start!724910 e!4463633))

(assert (=> start!724910 e!4463626))

(assert (=> start!724910 e!4463630))

(declare-fun b!7483725 () Bool)

(declare-fun res!3002564 () Bool)

(assert (=> b!7483725 (=> (not res!3002564) (not e!4463629))))

(assert (=> b!7483725 (= res!3002564 (validRegex!10133 r2!5783))))

(declare-fun b!7483726 () Bool)

(declare-fun tp!2170659 () Bool)

(assert (=> b!7483726 (= e!4463634 tp!2170659)))

(declare-fun b!7483727 () Bool)

(declare-fun tp!2170666 () Bool)

(declare-fun tp!2170655 () Bool)

(assert (=> b!7483727 (= e!4463633 (and tp!2170666 tp!2170655))))

(declare-fun b!7483728 () Bool)

(declare-fun res!3002563 () Bool)

(assert (=> b!7483728 (=> (not res!3002563) (not e!4463629))))

(assert (=> b!7483728 (= res!3002563 (validRegex!10133 rTail!78))))

(declare-fun b!7483729 () Bool)

(declare-fun tp!2170654 () Bool)

(declare-fun tp!2170665 () Bool)

(assert (=> b!7483729 (= e!4463626 (and tp!2170654 tp!2170665))))

(declare-fun e!4463631 () Bool)

(assert (=> b!7483730 (= e!4463627 e!4463631)))

(declare-fun res!3002561 () Bool)

(assert (=> b!7483730 (=> res!3002561 e!4463631)))

(declare-fun lt!2628786 () Bool)

(assert (=> b!7483730 (= res!3002561 (or lt!2628786 (not lt!2628778)))))

(assert (=> b!7483730 (= (Exists!4238 lambda!463820) (Exists!4238 lambda!463821))))

(declare-fun lt!2628790 () Unit!166073)

(assert (=> b!7483730 (= lt!2628790 (lemmaExistCutMatchRandMatchRSpecEquivalent!2572 lt!2628779 rTail!78 s!13591))))

(assert (=> b!7483730 (= lt!2628786 (Exists!4238 lambda!463820))))

(assert (=> b!7483730 (= lt!2628786 (isDefined!13865 (findConcatSeparation!3298 lt!2628779 rTail!78 Nil!72211 s!13591 s!13591)))))

(declare-fun lt!2628788 () Unit!166073)

(assert (=> b!7483730 (= lt!2628788 (lemmaFindConcatSeparationEquivalentToExists!3056 lt!2628779 rTail!78 s!13591))))

(declare-fun b!7483731 () Bool)

(assert (=> b!7483731 (= e!4463634 tp_is_empty!49527)))

(declare-fun b!7483732 () Bool)

(declare-fun tp!2170653 () Bool)

(declare-fun tp!2170658 () Bool)

(assert (=> b!7483732 (= e!4463634 (and tp!2170653 tp!2170658))))

(declare-fun b!7483733 () Bool)

(assert (=> b!7483733 (= e!4463631 e!4463632)))

(declare-fun res!3002566 () Bool)

(assert (=> b!7483733 (=> res!3002566 e!4463632)))

(declare-fun lt!2628774 () Bool)

(declare-fun lt!2628785 () Bool)

(assert (=> b!7483733 (= res!3002566 (or (and (not lt!2628774) (not lt!2628785)) lt!2628774))))

(assert (=> b!7483733 (= lt!2628785 (matchRSpec!4298 lt!2628777 s!13591))))

(assert (=> b!7483733 (= lt!2628785 (matchR!9383 lt!2628777 s!13591))))

(declare-fun lt!2628771 () Unit!166073)

(assert (=> b!7483733 (= lt!2628771 (mainMatchTheorem!4292 lt!2628777 s!13591))))

(assert (=> b!7483733 (= lt!2628774 (matchRSpec!4298 lt!2628781 s!13591))))

(assert (=> b!7483733 (= lt!2628774 (matchR!9383 lt!2628781 s!13591))))

(declare-fun lt!2628772 () Unit!166073)

(assert (=> b!7483733 (= lt!2628772 (mainMatchTheorem!4292 lt!2628781 s!13591))))

(declare-fun b!7483734 () Bool)

(declare-fun tp!2170660 () Bool)

(assert (=> b!7483734 (= e!4463633 tp!2170660)))

(declare-fun b!7483735 () Bool)

(declare-fun tp!2170661 () Bool)

(declare-fun tp!2170656 () Bool)

(assert (=> b!7483735 (= e!4463634 (and tp!2170661 tp!2170656))))

(declare-fun b!7483736 () Bool)

(declare-fun lt!2628776 () Bool)

(assert (=> b!7483736 (= e!4463628 lt!2628776)))

(assert (=> b!7483736 (matchRSpec!4298 r2!5783 (_1!37647 lt!2628787))))

(declare-fun lt!2628784 () Unit!166073)

(assert (=> b!7483736 (= lt!2628784 (mainMatchTheorem!4292 r2!5783 (_1!37647 lt!2628787)))))

(assert (=> b!7483736 (= (matchR!9383 r1!5845 (_1!37647 lt!2628787)) (matchRSpec!4298 r1!5845 (_1!37647 lt!2628787)))))

(declare-fun lt!2628773 () Unit!166073)

(assert (=> b!7483736 (= lt!2628773 (mainMatchTheorem!4292 r1!5845 (_1!37647 lt!2628787)))))

(assert (=> b!7483736 (= lt!2628776 (matchRSpec!4298 lt!2628779 (_1!37647 lt!2628787)))))

(assert (=> b!7483736 (= lt!2628776 (matchR!9383 lt!2628779 (_1!37647 lt!2628787)))))

(declare-fun lt!2628782 () Unit!166073)

(assert (=> b!7483736 (= lt!2628782 (mainMatchTheorem!4292 lt!2628779 (_1!37647 lt!2628787)))))

(declare-fun b!7483737 () Bool)

(assert (=> b!7483737 (= e!4463633 tp_is_empty!49527)))

(assert (= (and start!724910 res!3002568) b!7483725))

(assert (= (and b!7483725 res!3002564) b!7483728))

(assert (= (and b!7483728 res!3002563) b!7483717))

(assert (= (and b!7483717 (not res!3002565)) b!7483730))

(assert (= (and b!7483730 (not res!3002561)) b!7483733))

(assert (= (and b!7483733 (not res!3002566)) b!7483722))

(assert (= (and b!7483722 (not res!3002567)) b!7483719))

(assert (= (and b!7483719 (not res!3002562)) b!7483736))

(get-info :version)

(assert (= (and start!724910 ((_ is ElementMatch!19619) r1!5845)) b!7483731))

(assert (= (and start!724910 ((_ is Concat!28464) r1!5845)) b!7483735))

(assert (= (and start!724910 ((_ is Star!19619) r1!5845)) b!7483726))

(assert (= (and start!724910 ((_ is Union!19619) r1!5845)) b!7483732))

(assert (= (and start!724910 ((_ is ElementMatch!19619) r2!5783)) b!7483737))

(assert (= (and start!724910 ((_ is Concat!28464) r2!5783)) b!7483721))

(assert (= (and start!724910 ((_ is Star!19619) r2!5783)) b!7483734))

(assert (= (and start!724910 ((_ is Union!19619) r2!5783)) b!7483727))

(assert (= (and start!724910 ((_ is ElementMatch!19619) rTail!78)) b!7483723))

(assert (= (and start!724910 ((_ is Concat!28464) rTail!78)) b!7483729))

(assert (= (and start!724910 ((_ is Star!19619) rTail!78)) b!7483718))

(assert (= (and start!724910 ((_ is Union!19619) rTail!78)) b!7483724))

(assert (= (and start!724910 ((_ is Cons!72211) s!13591)) b!7483720))

(declare-fun m!8074652 () Bool)

(assert (=> start!724910 m!8074652))

(declare-fun m!8074654 () Bool)

(assert (=> b!7483730 m!8074654))

(declare-fun m!8074656 () Bool)

(assert (=> b!7483730 m!8074656))

(declare-fun m!8074658 () Bool)

(assert (=> b!7483730 m!8074658))

(assert (=> b!7483730 m!8074656))

(declare-fun m!8074660 () Bool)

(assert (=> b!7483730 m!8074660))

(declare-fun m!8074662 () Bool)

(assert (=> b!7483730 m!8074662))

(declare-fun m!8074664 () Bool)

(assert (=> b!7483730 m!8074664))

(assert (=> b!7483730 m!8074662))

(declare-fun m!8074666 () Bool)

(assert (=> b!7483717 m!8074666))

(declare-fun m!8074668 () Bool)

(assert (=> b!7483717 m!8074668))

(declare-fun m!8074670 () Bool)

(assert (=> b!7483717 m!8074670))

(declare-fun m!8074672 () Bool)

(assert (=> b!7483717 m!8074672))

(declare-fun m!8074674 () Bool)

(assert (=> b!7483717 m!8074674))

(declare-fun m!8074676 () Bool)

(assert (=> b!7483717 m!8074676))

(declare-fun m!8074678 () Bool)

(assert (=> b!7483722 m!8074678))

(declare-fun m!8074680 () Bool)

(assert (=> b!7483722 m!8074680))

(declare-fun m!8074682 () Bool)

(assert (=> b!7483722 m!8074682))

(declare-fun m!8074684 () Bool)

(assert (=> b!7483722 m!8074684))

(declare-fun m!8074686 () Bool)

(assert (=> b!7483722 m!8074686))

(declare-fun m!8074688 () Bool)

(assert (=> b!7483722 m!8074688))

(declare-fun m!8074690 () Bool)

(assert (=> b!7483722 m!8074690))

(declare-fun m!8074692 () Bool)

(assert (=> b!7483722 m!8074692))

(assert (=> b!7483722 m!8074682))

(declare-fun m!8074694 () Bool)

(assert (=> b!7483728 m!8074694))

(declare-fun m!8074696 () Bool)

(assert (=> b!7483736 m!8074696))

(declare-fun m!8074698 () Bool)

(assert (=> b!7483736 m!8074698))

(declare-fun m!8074700 () Bool)

(assert (=> b!7483736 m!8074700))

(declare-fun m!8074702 () Bool)

(assert (=> b!7483736 m!8074702))

(declare-fun m!8074704 () Bool)

(assert (=> b!7483736 m!8074704))

(declare-fun m!8074706 () Bool)

(assert (=> b!7483736 m!8074706))

(declare-fun m!8074708 () Bool)

(assert (=> b!7483736 m!8074708))

(declare-fun m!8074710 () Bool)

(assert (=> b!7483736 m!8074710))

(declare-fun m!8074712 () Bool)

(assert (=> b!7483719 m!8074712))

(declare-fun m!8074714 () Bool)

(assert (=> b!7483725 m!8074714))

(declare-fun m!8074716 () Bool)

(assert (=> b!7483733 m!8074716))

(declare-fun m!8074718 () Bool)

(assert (=> b!7483733 m!8074718))

(declare-fun m!8074720 () Bool)

(assert (=> b!7483733 m!8074720))

(declare-fun m!8074722 () Bool)

(assert (=> b!7483733 m!8074722))

(declare-fun m!8074724 () Bool)

(assert (=> b!7483733 m!8074724))

(declare-fun m!8074726 () Bool)

(assert (=> b!7483733 m!8074726))

(check-sat (not b!7483736) (not b!7483717) (not b!7483720) (not b!7483721) (not b!7483726) (not b!7483730) (not b!7483735) (not b!7483729) (not b!7483719) (not b!7483732) (not b!7483733) tp_is_empty!49527 (not b!7483725) (not start!724910) (not b!7483724) (not b!7483728) (not b!7483727) (not b!7483734) (not b!7483718) (not b!7483722))
(check-sat)
(get-model)

(declare-fun c!1382229 () Bool)

(declare-fun call!687001 () Bool)

(declare-fun bm!686994 () Bool)

(declare-fun c!1382230 () Bool)

(assert (=> bm!686994 (= call!687001 (validRegex!10133 (ite c!1382230 (reg!19948 r1!5845) (ite c!1382229 (regTwo!39751 r1!5845) (regTwo!39750 r1!5845)))))))

(declare-fun b!7483760 () Bool)

(declare-fun e!4463653 () Bool)

(assert (=> b!7483760 (= e!4463653 call!687001)))

(declare-fun b!7483761 () Bool)

(declare-fun e!4463652 () Bool)

(declare-fun e!4463654 () Bool)

(assert (=> b!7483761 (= e!4463652 e!4463654)))

(declare-fun res!3002583 () Bool)

(assert (=> b!7483761 (=> (not res!3002583) (not e!4463654))))

(declare-fun call!686999 () Bool)

(assert (=> b!7483761 (= res!3002583 call!686999)))

(declare-fun b!7483762 () Bool)

(declare-fun e!4463650 () Bool)

(assert (=> b!7483762 (= e!4463650 e!4463653)))

(declare-fun res!3002582 () Bool)

(declare-fun nullable!8556 (Regex!19619) Bool)

(assert (=> b!7483762 (= res!3002582 (not (nullable!8556 (reg!19948 r1!5845))))))

(assert (=> b!7483762 (=> (not res!3002582) (not e!4463653))))

(declare-fun b!7483763 () Bool)

(declare-fun call!687000 () Bool)

(assert (=> b!7483763 (= e!4463654 call!687000)))

(declare-fun d!2300491 () Bool)

(declare-fun res!3002580 () Bool)

(declare-fun e!4463655 () Bool)

(assert (=> d!2300491 (=> res!3002580 e!4463655)))

(assert (=> d!2300491 (= res!3002580 ((_ is ElementMatch!19619) r1!5845))))

(assert (=> d!2300491 (= (validRegex!10133 r1!5845) e!4463655)))

(declare-fun b!7483764 () Bool)

(declare-fun e!4463649 () Bool)

(assert (=> b!7483764 (= e!4463649 call!687000)))

(declare-fun b!7483765 () Bool)

(declare-fun res!3002581 () Bool)

(assert (=> b!7483765 (=> (not res!3002581) (not e!4463649))))

(assert (=> b!7483765 (= res!3002581 call!686999)))

(declare-fun e!4463651 () Bool)

(assert (=> b!7483765 (= e!4463651 e!4463649)))

(declare-fun bm!686995 () Bool)

(assert (=> bm!686995 (= call!686999 (validRegex!10133 (ite c!1382229 (regOne!39751 r1!5845) (regOne!39750 r1!5845))))))

(declare-fun b!7483766 () Bool)

(declare-fun res!3002579 () Bool)

(assert (=> b!7483766 (=> res!3002579 e!4463652)))

(assert (=> b!7483766 (= res!3002579 (not ((_ is Concat!28464) r1!5845)))))

(assert (=> b!7483766 (= e!4463651 e!4463652)))

(declare-fun b!7483767 () Bool)

(assert (=> b!7483767 (= e!4463650 e!4463651)))

(assert (=> b!7483767 (= c!1382229 ((_ is Union!19619) r1!5845))))

(declare-fun bm!686996 () Bool)

(assert (=> bm!686996 (= call!687000 call!687001)))

(declare-fun b!7483768 () Bool)

(assert (=> b!7483768 (= e!4463655 e!4463650)))

(assert (=> b!7483768 (= c!1382230 ((_ is Star!19619) r1!5845))))

(assert (= (and d!2300491 (not res!3002580)) b!7483768))

(assert (= (and b!7483768 c!1382230) b!7483762))

(assert (= (and b!7483768 (not c!1382230)) b!7483767))

(assert (= (and b!7483762 res!3002582) b!7483760))

(assert (= (and b!7483767 c!1382229) b!7483765))

(assert (= (and b!7483767 (not c!1382229)) b!7483766))

(assert (= (and b!7483765 res!3002581) b!7483764))

(assert (= (and b!7483766 (not res!3002579)) b!7483761))

(assert (= (and b!7483761 res!3002583) b!7483763))

(assert (= (or b!7483764 b!7483763) bm!686996))

(assert (= (or b!7483765 b!7483761) bm!686995))

(assert (= (or b!7483760 bm!686996) bm!686994))

(declare-fun m!8074728 () Bool)

(assert (=> bm!686994 m!8074728))

(declare-fun m!8074730 () Bool)

(assert (=> b!7483762 m!8074730))

(declare-fun m!8074732 () Bool)

(assert (=> bm!686995 m!8074732))

(assert (=> start!724910 d!2300491))

(declare-fun c!1382231 () Bool)

(declare-fun c!1382232 () Bool)

(declare-fun call!687004 () Bool)

(declare-fun bm!686997 () Bool)

(assert (=> bm!686997 (= call!687004 (validRegex!10133 (ite c!1382232 (reg!19948 rTail!78) (ite c!1382231 (regTwo!39751 rTail!78) (regTwo!39750 rTail!78)))))))

(declare-fun b!7483769 () Bool)

(declare-fun e!4463660 () Bool)

(assert (=> b!7483769 (= e!4463660 call!687004)))

(declare-fun b!7483770 () Bool)

(declare-fun e!4463659 () Bool)

(declare-fun e!4463661 () Bool)

(assert (=> b!7483770 (= e!4463659 e!4463661)))

(declare-fun res!3002588 () Bool)

(assert (=> b!7483770 (=> (not res!3002588) (not e!4463661))))

(declare-fun call!687002 () Bool)

(assert (=> b!7483770 (= res!3002588 call!687002)))

(declare-fun b!7483771 () Bool)

(declare-fun e!4463657 () Bool)

(assert (=> b!7483771 (= e!4463657 e!4463660)))

(declare-fun res!3002587 () Bool)

(assert (=> b!7483771 (= res!3002587 (not (nullable!8556 (reg!19948 rTail!78))))))

(assert (=> b!7483771 (=> (not res!3002587) (not e!4463660))))

(declare-fun b!7483772 () Bool)

(declare-fun call!687003 () Bool)

(assert (=> b!7483772 (= e!4463661 call!687003)))

(declare-fun d!2300495 () Bool)

(declare-fun res!3002585 () Bool)

(declare-fun e!4463662 () Bool)

(assert (=> d!2300495 (=> res!3002585 e!4463662)))

(assert (=> d!2300495 (= res!3002585 ((_ is ElementMatch!19619) rTail!78))))

(assert (=> d!2300495 (= (validRegex!10133 rTail!78) e!4463662)))

(declare-fun b!7483773 () Bool)

(declare-fun e!4463656 () Bool)

(assert (=> b!7483773 (= e!4463656 call!687003)))

(declare-fun b!7483774 () Bool)

(declare-fun res!3002586 () Bool)

(assert (=> b!7483774 (=> (not res!3002586) (not e!4463656))))

(assert (=> b!7483774 (= res!3002586 call!687002)))

(declare-fun e!4463658 () Bool)

(assert (=> b!7483774 (= e!4463658 e!4463656)))

(declare-fun bm!686998 () Bool)

(assert (=> bm!686998 (= call!687002 (validRegex!10133 (ite c!1382231 (regOne!39751 rTail!78) (regOne!39750 rTail!78))))))

(declare-fun b!7483775 () Bool)

(declare-fun res!3002584 () Bool)

(assert (=> b!7483775 (=> res!3002584 e!4463659)))

(assert (=> b!7483775 (= res!3002584 (not ((_ is Concat!28464) rTail!78)))))

(assert (=> b!7483775 (= e!4463658 e!4463659)))

(declare-fun b!7483776 () Bool)

(assert (=> b!7483776 (= e!4463657 e!4463658)))

(assert (=> b!7483776 (= c!1382231 ((_ is Union!19619) rTail!78))))

(declare-fun bm!686999 () Bool)

(assert (=> bm!686999 (= call!687003 call!687004)))

(declare-fun b!7483777 () Bool)

(assert (=> b!7483777 (= e!4463662 e!4463657)))

(assert (=> b!7483777 (= c!1382232 ((_ is Star!19619) rTail!78))))

(assert (= (and d!2300495 (not res!3002585)) b!7483777))

(assert (= (and b!7483777 c!1382232) b!7483771))

(assert (= (and b!7483777 (not c!1382232)) b!7483776))

(assert (= (and b!7483771 res!3002587) b!7483769))

(assert (= (and b!7483776 c!1382231) b!7483774))

(assert (= (and b!7483776 (not c!1382231)) b!7483775))

(assert (= (and b!7483774 res!3002586) b!7483773))

(assert (= (and b!7483775 (not res!3002584)) b!7483770))

(assert (= (and b!7483770 res!3002588) b!7483772))

(assert (= (or b!7483773 b!7483772) bm!686999))

(assert (= (or b!7483774 b!7483770) bm!686998))

(assert (= (or b!7483769 bm!686999) bm!686997))

(declare-fun m!8074734 () Bool)

(assert (=> bm!686997 m!8074734))

(declare-fun m!8074736 () Bool)

(assert (=> b!7483771 m!8074736))

(declare-fun m!8074738 () Bool)

(assert (=> bm!686998 m!8074738))

(assert (=> b!7483728 d!2300495))

(declare-fun b!7483834 () Bool)

(declare-fun e!4463691 () Bool)

(declare-fun lt!2628802 () Bool)

(declare-fun call!687009 () Bool)

(assert (=> b!7483834 (= e!4463691 (= lt!2628802 call!687009))))

(declare-fun b!7483835 () Bool)

(declare-fun e!4463697 () Bool)

(declare-fun head!15356 (List!72335) C!39512)

(assert (=> b!7483835 (= e!4463697 (= (head!15356 s!13591) (c!1382224 lt!2628775)))))

(declare-fun b!7483836 () Bool)

(declare-fun e!4463692 () Bool)

(assert (=> b!7483836 (= e!4463692 (nullable!8556 lt!2628775))))

(declare-fun b!7483837 () Bool)

(declare-fun res!3002623 () Bool)

(assert (=> b!7483837 (=> (not res!3002623) (not e!4463697))))

(assert (=> b!7483837 (= res!3002623 (not call!687009))))

(declare-fun b!7483839 () Bool)

(declare-fun e!4463696 () Bool)

(assert (=> b!7483839 (= e!4463696 (not lt!2628802))))

(declare-fun b!7483840 () Bool)

(declare-fun e!4463694 () Bool)

(assert (=> b!7483840 (= e!4463694 (not (= (head!15356 s!13591) (c!1382224 lt!2628775))))))

(declare-fun b!7483841 () Bool)

(declare-fun res!3002628 () Bool)

(assert (=> b!7483841 (=> (not res!3002628) (not e!4463697))))

(declare-fun isEmpty!41228 (List!72335) Bool)

(declare-fun tail!14925 (List!72335) List!72335)

(assert (=> b!7483841 (= res!3002628 (isEmpty!41228 (tail!14925 s!13591)))))

(declare-fun bm!687004 () Bool)

(assert (=> bm!687004 (= call!687009 (isEmpty!41228 s!13591))))

(declare-fun b!7483842 () Bool)

(declare-fun res!3002627 () Bool)

(assert (=> b!7483842 (=> res!3002627 e!4463694)))

(assert (=> b!7483842 (= res!3002627 (not (isEmpty!41228 (tail!14925 s!13591))))))

(declare-fun b!7483843 () Bool)

(declare-fun derivativeStep!5616 (Regex!19619 C!39512) Regex!19619)

(assert (=> b!7483843 (= e!4463692 (matchR!9383 (derivativeStep!5616 lt!2628775 (head!15356 s!13591)) (tail!14925 s!13591)))))

(declare-fun b!7483844 () Bool)

(assert (=> b!7483844 (= e!4463691 e!4463696)))

(declare-fun c!1382245 () Bool)

(assert (=> b!7483844 (= c!1382245 ((_ is EmptyLang!19619) lt!2628775))))

(declare-fun b!7483845 () Bool)

(declare-fun e!4463693 () Bool)

(assert (=> b!7483845 (= e!4463693 e!4463694)))

(declare-fun res!3002626 () Bool)

(assert (=> b!7483845 (=> res!3002626 e!4463694)))

(assert (=> b!7483845 (= res!3002626 call!687009)))

(declare-fun d!2300497 () Bool)

(assert (=> d!2300497 e!4463691))

(declare-fun c!1382246 () Bool)

(assert (=> d!2300497 (= c!1382246 ((_ is EmptyExpr!19619) lt!2628775))))

(assert (=> d!2300497 (= lt!2628802 e!4463692)))

(declare-fun c!1382247 () Bool)

(assert (=> d!2300497 (= c!1382247 (isEmpty!41228 s!13591))))

(assert (=> d!2300497 (validRegex!10133 lt!2628775)))

(assert (=> d!2300497 (= (matchR!9383 lt!2628775 s!13591) lt!2628802)))

(declare-fun b!7483838 () Bool)

(declare-fun e!4463695 () Bool)

(assert (=> b!7483838 (= e!4463695 e!4463693)))

(declare-fun res!3002624 () Bool)

(assert (=> b!7483838 (=> (not res!3002624) (not e!4463693))))

(assert (=> b!7483838 (= res!3002624 (not lt!2628802))))

(declare-fun b!7483846 () Bool)

(declare-fun res!3002622 () Bool)

(assert (=> b!7483846 (=> res!3002622 e!4463695)))

(assert (=> b!7483846 (= res!3002622 e!4463697)))

(declare-fun res!3002625 () Bool)

(assert (=> b!7483846 (=> (not res!3002625) (not e!4463697))))

(assert (=> b!7483846 (= res!3002625 lt!2628802)))

(declare-fun b!7483847 () Bool)

(declare-fun res!3002621 () Bool)

(assert (=> b!7483847 (=> res!3002621 e!4463695)))

(assert (=> b!7483847 (= res!3002621 (not ((_ is ElementMatch!19619) lt!2628775)))))

(assert (=> b!7483847 (= e!4463696 e!4463695)))

(assert (= (and d!2300497 c!1382247) b!7483836))

(assert (= (and d!2300497 (not c!1382247)) b!7483843))

(assert (= (and d!2300497 c!1382246) b!7483834))

(assert (= (and d!2300497 (not c!1382246)) b!7483844))

(assert (= (and b!7483844 c!1382245) b!7483839))

(assert (= (and b!7483844 (not c!1382245)) b!7483847))

(assert (= (and b!7483847 (not res!3002621)) b!7483846))

(assert (= (and b!7483846 res!3002625) b!7483837))

(assert (= (and b!7483837 res!3002623) b!7483841))

(assert (= (and b!7483841 res!3002628) b!7483835))

(assert (= (and b!7483846 (not res!3002622)) b!7483838))

(assert (= (and b!7483838 res!3002624) b!7483845))

(assert (= (and b!7483845 (not res!3002626)) b!7483842))

(assert (= (and b!7483842 (not res!3002627)) b!7483840))

(assert (= (or b!7483834 b!7483837 b!7483845) bm!687004))

(declare-fun m!8074748 () Bool)

(assert (=> b!7483842 m!8074748))

(assert (=> b!7483842 m!8074748))

(declare-fun m!8074750 () Bool)

(assert (=> b!7483842 m!8074750))

(declare-fun m!8074752 () Bool)

(assert (=> bm!687004 m!8074752))

(declare-fun m!8074754 () Bool)

(assert (=> b!7483840 m!8074754))

(assert (=> d!2300497 m!8074752))

(declare-fun m!8074756 () Bool)

(assert (=> d!2300497 m!8074756))

(declare-fun m!8074758 () Bool)

(assert (=> b!7483836 m!8074758))

(assert (=> b!7483841 m!8074748))

(assert (=> b!7483841 m!8074748))

(assert (=> b!7483841 m!8074750))

(assert (=> b!7483835 m!8074754))

(assert (=> b!7483843 m!8074754))

(assert (=> b!7483843 m!8074754))

(declare-fun m!8074760 () Bool)

(assert (=> b!7483843 m!8074760))

(assert (=> b!7483843 m!8074748))

(assert (=> b!7483843 m!8074760))

(assert (=> b!7483843 m!8074748))

(declare-fun m!8074762 () Bool)

(assert (=> b!7483843 m!8074762))

(assert (=> b!7483717 d!2300497))

(declare-fun bs!1933900 () Bool)

(declare-fun b!7483948 () Bool)

(assert (= bs!1933900 (and b!7483948 b!7483730)))

(declare-fun lambda!463832 () Int)

(assert (=> bs!1933900 (not (= lambda!463832 lambda!463820))))

(assert (=> bs!1933900 (not (= lambda!463832 lambda!463821))))

(declare-fun bs!1933901 () Bool)

(assert (= bs!1933901 (and b!7483948 b!7483722)))

(assert (=> bs!1933901 (not (= lambda!463832 lambda!463822))))

(assert (=> bs!1933901 (not (= lambda!463832 lambda!463823))))

(assert (=> b!7483948 true))

(assert (=> b!7483948 true))

(declare-fun bs!1933902 () Bool)

(declare-fun b!7483946 () Bool)

(assert (= bs!1933902 (and b!7483946 b!7483730)))

(declare-fun lambda!463833 () Int)

(assert (=> bs!1933902 (= (and (= (regOne!39750 lt!2628775) lt!2628779) (= (regTwo!39750 lt!2628775) rTail!78)) (= lambda!463833 lambda!463821))))

(declare-fun bs!1933903 () Bool)

(assert (= bs!1933903 (and b!7483946 b!7483722)))

(assert (=> bs!1933903 (= (and (= (regOne!39750 lt!2628775) r2!5783) (= (regTwo!39750 lt!2628775) rTail!78)) (= lambda!463833 lambda!463823))))

(declare-fun bs!1933904 () Bool)

(assert (= bs!1933904 (and b!7483946 b!7483948)))

(assert (=> bs!1933904 (not (= lambda!463833 lambda!463832))))

(assert (=> bs!1933902 (not (= lambda!463833 lambda!463820))))

(assert (=> bs!1933903 (not (= lambda!463833 lambda!463822))))

(assert (=> b!7483946 true))

(assert (=> b!7483946 true))

(declare-fun b!7483940 () Bool)

(declare-fun e!4463751 () Bool)

(declare-fun e!4463748 () Bool)

(assert (=> b!7483940 (= e!4463751 e!4463748)))

(declare-fun res!3002679 () Bool)

(assert (=> b!7483940 (= res!3002679 (not ((_ is EmptyLang!19619) lt!2628775)))))

(assert (=> b!7483940 (=> (not res!3002679) (not e!4463748))))

(declare-fun call!687020 () Bool)

(declare-fun c!1382270 () Bool)

(declare-fun bm!687013 () Bool)

(assert (=> bm!687013 (= call!687020 (Exists!4238 (ite c!1382270 lambda!463832 lambda!463833)))))

(declare-fun b!7483941 () Bool)

(declare-fun c!1382271 () Bool)

(assert (=> b!7483941 (= c!1382271 ((_ is Union!19619) lt!2628775))))

(declare-fun e!4463754 () Bool)

(declare-fun e!4463752 () Bool)

(assert (=> b!7483941 (= e!4463754 e!4463752)))

(declare-fun b!7483942 () Bool)

(declare-fun res!3002678 () Bool)

(declare-fun e!4463749 () Bool)

(assert (=> b!7483942 (=> res!3002678 e!4463749)))

(declare-fun call!687021 () Bool)

(assert (=> b!7483942 (= res!3002678 call!687021)))

(declare-fun e!4463750 () Bool)

(assert (=> b!7483942 (= e!4463750 e!4463749)))

(declare-fun bm!687014 () Bool)

(assert (=> bm!687014 (= call!687021 (isEmpty!41228 s!13591))))

(declare-fun b!7483943 () Bool)

(declare-fun e!4463753 () Bool)

(assert (=> b!7483943 (= e!4463752 e!4463753)))

(declare-fun res!3002677 () Bool)

(assert (=> b!7483943 (= res!3002677 (matchRSpec!4298 (regOne!39751 lt!2628775) s!13591))))

(assert (=> b!7483943 (=> res!3002677 e!4463753)))

(declare-fun b!7483944 () Bool)

(declare-fun c!1382273 () Bool)

(assert (=> b!7483944 (= c!1382273 ((_ is ElementMatch!19619) lt!2628775))))

(assert (=> b!7483944 (= e!4463748 e!4463754)))

(declare-fun b!7483945 () Bool)

(assert (=> b!7483945 (= e!4463752 e!4463750)))

(assert (=> b!7483945 (= c!1382270 ((_ is Star!19619) lt!2628775))))

(declare-fun d!2300503 () Bool)

(declare-fun c!1382272 () Bool)

(assert (=> d!2300503 (= c!1382272 ((_ is EmptyExpr!19619) lt!2628775))))

(assert (=> d!2300503 (= (matchRSpec!4298 lt!2628775 s!13591) e!4463751)))

(assert (=> b!7483946 (= e!4463750 call!687020)))

(declare-fun b!7483947 () Bool)

(assert (=> b!7483947 (= e!4463751 call!687021)))

(assert (=> b!7483948 (= e!4463749 call!687020)))

(declare-fun b!7483949 () Bool)

(assert (=> b!7483949 (= e!4463754 (= s!13591 (Cons!72211 (c!1382224 lt!2628775) Nil!72211)))))

(declare-fun b!7483950 () Bool)

(assert (=> b!7483950 (= e!4463753 (matchRSpec!4298 (regTwo!39751 lt!2628775) s!13591))))

(assert (= (and d!2300503 c!1382272) b!7483947))

(assert (= (and d!2300503 (not c!1382272)) b!7483940))

(assert (= (and b!7483940 res!3002679) b!7483944))

(assert (= (and b!7483944 c!1382273) b!7483949))

(assert (= (and b!7483944 (not c!1382273)) b!7483941))

(assert (= (and b!7483941 c!1382271) b!7483943))

(assert (= (and b!7483941 (not c!1382271)) b!7483945))

(assert (= (and b!7483943 (not res!3002677)) b!7483950))

(assert (= (and b!7483945 c!1382270) b!7483942))

(assert (= (and b!7483945 (not c!1382270)) b!7483946))

(assert (= (and b!7483942 (not res!3002678)) b!7483948))

(assert (= (or b!7483948 b!7483946) bm!687013))

(assert (= (or b!7483947 b!7483942) bm!687014))

(declare-fun m!8074784 () Bool)

(assert (=> bm!687013 m!8074784))

(assert (=> bm!687014 m!8074752))

(declare-fun m!8074786 () Bool)

(assert (=> b!7483943 m!8074786))

(declare-fun m!8074788 () Bool)

(assert (=> b!7483950 m!8074788))

(assert (=> b!7483717 d!2300503))

(declare-fun d!2300509 () Bool)

(assert (=> d!2300509 (= (matchR!9383 lt!2628775 s!13591) (matchRSpec!4298 lt!2628775 s!13591))))

(declare-fun lt!2628807 () Unit!166073)

(declare-fun choose!57859 (Regex!19619 List!72335) Unit!166073)

(assert (=> d!2300509 (= lt!2628807 (choose!57859 lt!2628775 s!13591))))

(assert (=> d!2300509 (validRegex!10133 lt!2628775)))

(assert (=> d!2300509 (= (mainMatchTheorem!4292 lt!2628775 s!13591) lt!2628807)))

(declare-fun bs!1933911 () Bool)

(assert (= bs!1933911 d!2300509))

(assert (=> bs!1933911 m!8074668))

(assert (=> bs!1933911 m!8074666))

(declare-fun m!8074796 () Bool)

(assert (=> bs!1933911 m!8074796))

(assert (=> bs!1933911 m!8074756))

(assert (=> b!7483717 d!2300509))

(declare-fun d!2300513 () Bool)

(assert (=> d!2300513 (= (matchR!9383 lt!2628791 s!13591) (matchRSpec!4298 lt!2628791 s!13591))))

(declare-fun lt!2628808 () Unit!166073)

(assert (=> d!2300513 (= lt!2628808 (choose!57859 lt!2628791 s!13591))))

(assert (=> d!2300513 (validRegex!10133 lt!2628791)))

(assert (=> d!2300513 (= (mainMatchTheorem!4292 lt!2628791 s!13591) lt!2628808)))

(declare-fun bs!1933913 () Bool)

(assert (= bs!1933913 d!2300513))

(assert (=> bs!1933913 m!8074672))

(assert (=> bs!1933913 m!8074670))

(declare-fun m!8074798 () Bool)

(assert (=> bs!1933913 m!8074798))

(declare-fun m!8074800 () Bool)

(assert (=> bs!1933913 m!8074800))

(assert (=> b!7483717 d!2300513))

(declare-fun b!7483973 () Bool)

(declare-fun e!4463769 () Bool)

(declare-fun lt!2628809 () Bool)

(declare-fun call!687026 () Bool)

(assert (=> b!7483973 (= e!4463769 (= lt!2628809 call!687026))))

(declare-fun b!7483974 () Bool)

(declare-fun e!4463775 () Bool)

(assert (=> b!7483974 (= e!4463775 (= (head!15356 s!13591) (c!1382224 lt!2628791)))))

(declare-fun b!7483975 () Bool)

(declare-fun e!4463770 () Bool)

(assert (=> b!7483975 (= e!4463770 (nullable!8556 lt!2628791))))

(declare-fun b!7483976 () Bool)

(declare-fun res!3002688 () Bool)

(assert (=> b!7483976 (=> (not res!3002688) (not e!4463775))))

(assert (=> b!7483976 (= res!3002688 (not call!687026))))

(declare-fun b!7483978 () Bool)

(declare-fun e!4463774 () Bool)

(assert (=> b!7483978 (= e!4463774 (not lt!2628809))))

(declare-fun b!7483979 () Bool)

(declare-fun e!4463772 () Bool)

(assert (=> b!7483979 (= e!4463772 (not (= (head!15356 s!13591) (c!1382224 lt!2628791))))))

(declare-fun b!7483980 () Bool)

(declare-fun res!3002693 () Bool)

(assert (=> b!7483980 (=> (not res!3002693) (not e!4463775))))

(assert (=> b!7483980 (= res!3002693 (isEmpty!41228 (tail!14925 s!13591)))))

(declare-fun bm!687021 () Bool)

(assert (=> bm!687021 (= call!687026 (isEmpty!41228 s!13591))))

(declare-fun b!7483981 () Bool)

(declare-fun res!3002692 () Bool)

(assert (=> b!7483981 (=> res!3002692 e!4463772)))

(assert (=> b!7483981 (= res!3002692 (not (isEmpty!41228 (tail!14925 s!13591))))))

(declare-fun b!7483982 () Bool)

(assert (=> b!7483982 (= e!4463770 (matchR!9383 (derivativeStep!5616 lt!2628791 (head!15356 s!13591)) (tail!14925 s!13591)))))

(declare-fun b!7483983 () Bool)

(assert (=> b!7483983 (= e!4463769 e!4463774)))

(declare-fun c!1382282 () Bool)

(assert (=> b!7483983 (= c!1382282 ((_ is EmptyLang!19619) lt!2628791))))

(declare-fun b!7483984 () Bool)

(declare-fun e!4463771 () Bool)

(assert (=> b!7483984 (= e!4463771 e!4463772)))

(declare-fun res!3002691 () Bool)

(assert (=> b!7483984 (=> res!3002691 e!4463772)))

(assert (=> b!7483984 (= res!3002691 call!687026)))

(declare-fun d!2300515 () Bool)

(assert (=> d!2300515 e!4463769))

(declare-fun c!1382283 () Bool)

(assert (=> d!2300515 (= c!1382283 ((_ is EmptyExpr!19619) lt!2628791))))

(assert (=> d!2300515 (= lt!2628809 e!4463770)))

(declare-fun c!1382284 () Bool)

(assert (=> d!2300515 (= c!1382284 (isEmpty!41228 s!13591))))

(assert (=> d!2300515 (validRegex!10133 lt!2628791)))

(assert (=> d!2300515 (= (matchR!9383 lt!2628791 s!13591) lt!2628809)))

(declare-fun b!7483977 () Bool)

(declare-fun e!4463773 () Bool)

(assert (=> b!7483977 (= e!4463773 e!4463771)))

(declare-fun res!3002689 () Bool)

(assert (=> b!7483977 (=> (not res!3002689) (not e!4463771))))

(assert (=> b!7483977 (= res!3002689 (not lt!2628809))))

(declare-fun b!7483985 () Bool)

(declare-fun res!3002687 () Bool)

(assert (=> b!7483985 (=> res!3002687 e!4463773)))

(assert (=> b!7483985 (= res!3002687 e!4463775)))

(declare-fun res!3002690 () Bool)

(assert (=> b!7483985 (=> (not res!3002690) (not e!4463775))))

(assert (=> b!7483985 (= res!3002690 lt!2628809)))

(declare-fun b!7483986 () Bool)

(declare-fun res!3002686 () Bool)

(assert (=> b!7483986 (=> res!3002686 e!4463773)))

(assert (=> b!7483986 (= res!3002686 (not ((_ is ElementMatch!19619) lt!2628791)))))

(assert (=> b!7483986 (= e!4463774 e!4463773)))

(assert (= (and d!2300515 c!1382284) b!7483975))

(assert (= (and d!2300515 (not c!1382284)) b!7483982))

(assert (= (and d!2300515 c!1382283) b!7483973))

(assert (= (and d!2300515 (not c!1382283)) b!7483983))

(assert (= (and b!7483983 c!1382282) b!7483978))

(assert (= (and b!7483983 (not c!1382282)) b!7483986))

(assert (= (and b!7483986 (not res!3002686)) b!7483985))

(assert (= (and b!7483985 res!3002690) b!7483976))

(assert (= (and b!7483976 res!3002688) b!7483980))

(assert (= (and b!7483980 res!3002693) b!7483974))

(assert (= (and b!7483985 (not res!3002687)) b!7483977))

(assert (= (and b!7483977 res!3002689) b!7483984))

(assert (= (and b!7483984 (not res!3002691)) b!7483981))

(assert (= (and b!7483981 (not res!3002692)) b!7483979))

(assert (= (or b!7483973 b!7483976 b!7483984) bm!687021))

(assert (=> b!7483981 m!8074748))

(assert (=> b!7483981 m!8074748))

(assert (=> b!7483981 m!8074750))

(assert (=> bm!687021 m!8074752))

(assert (=> b!7483979 m!8074754))

(assert (=> d!2300515 m!8074752))

(assert (=> d!2300515 m!8074800))

(declare-fun m!8074802 () Bool)

(assert (=> b!7483975 m!8074802))

(assert (=> b!7483980 m!8074748))

(assert (=> b!7483980 m!8074748))

(assert (=> b!7483980 m!8074750))

(assert (=> b!7483974 m!8074754))

(assert (=> b!7483982 m!8074754))

(assert (=> b!7483982 m!8074754))

(declare-fun m!8074804 () Bool)

(assert (=> b!7483982 m!8074804))

(assert (=> b!7483982 m!8074748))

(assert (=> b!7483982 m!8074804))

(assert (=> b!7483982 m!8074748))

(declare-fun m!8074806 () Bool)

(assert (=> b!7483982 m!8074806))

(assert (=> b!7483717 d!2300515))

(declare-fun bs!1933921 () Bool)

(declare-fun b!7483995 () Bool)

(assert (= bs!1933921 (and b!7483995 b!7483730)))

(declare-fun lambda!463838 () Int)

(assert (=> bs!1933921 (not (= lambda!463838 lambda!463821))))

(declare-fun bs!1933922 () Bool)

(assert (= bs!1933922 (and b!7483995 b!7483722)))

(assert (=> bs!1933922 (not (= lambda!463838 lambda!463823))))

(declare-fun bs!1933923 () Bool)

(assert (= bs!1933923 (and b!7483995 b!7483948)))

(assert (=> bs!1933923 (= (and (= (reg!19948 lt!2628791) (reg!19948 lt!2628775)) (= lt!2628791 lt!2628775)) (= lambda!463838 lambda!463832))))

(declare-fun bs!1933924 () Bool)

(assert (= bs!1933924 (and b!7483995 b!7483946)))

(assert (=> bs!1933924 (not (= lambda!463838 lambda!463833))))

(assert (=> bs!1933921 (not (= lambda!463838 lambda!463820))))

(assert (=> bs!1933922 (not (= lambda!463838 lambda!463822))))

(assert (=> b!7483995 true))

(assert (=> b!7483995 true))

(declare-fun bs!1933925 () Bool)

(declare-fun b!7483993 () Bool)

(assert (= bs!1933925 (and b!7483993 b!7483730)))

(declare-fun lambda!463839 () Int)

(assert (=> bs!1933925 (= (and (= (regOne!39750 lt!2628791) lt!2628779) (= (regTwo!39750 lt!2628791) rTail!78)) (= lambda!463839 lambda!463821))))

(declare-fun bs!1933926 () Bool)

(assert (= bs!1933926 (and b!7483993 b!7483722)))

(assert (=> bs!1933926 (= (and (= (regOne!39750 lt!2628791) r2!5783) (= (regTwo!39750 lt!2628791) rTail!78)) (= lambda!463839 lambda!463823))))

(declare-fun bs!1933927 () Bool)

(assert (= bs!1933927 (and b!7483993 b!7483995)))

(assert (=> bs!1933927 (not (= lambda!463839 lambda!463838))))

(declare-fun bs!1933928 () Bool)

(assert (= bs!1933928 (and b!7483993 b!7483948)))

(assert (=> bs!1933928 (not (= lambda!463839 lambda!463832))))

(declare-fun bs!1933929 () Bool)

(assert (= bs!1933929 (and b!7483993 b!7483946)))

(assert (=> bs!1933929 (= (and (= (regOne!39750 lt!2628791) (regOne!39750 lt!2628775)) (= (regTwo!39750 lt!2628791) (regTwo!39750 lt!2628775))) (= lambda!463839 lambda!463833))))

(assert (=> bs!1933925 (not (= lambda!463839 lambda!463820))))

(assert (=> bs!1933926 (not (= lambda!463839 lambda!463822))))

(assert (=> b!7483993 true))

(assert (=> b!7483993 true))

(declare-fun b!7483987 () Bool)

(declare-fun e!4463779 () Bool)

(declare-fun e!4463776 () Bool)

(assert (=> b!7483987 (= e!4463779 e!4463776)))

(declare-fun res!3002696 () Bool)

(assert (=> b!7483987 (= res!3002696 (not ((_ is EmptyLang!19619) lt!2628791)))))

(assert (=> b!7483987 (=> (not res!3002696) (not e!4463776))))

(declare-fun c!1382285 () Bool)

(declare-fun bm!687022 () Bool)

(declare-fun call!687027 () Bool)

(assert (=> bm!687022 (= call!687027 (Exists!4238 (ite c!1382285 lambda!463838 lambda!463839)))))

(declare-fun b!7483988 () Bool)

(declare-fun c!1382286 () Bool)

(assert (=> b!7483988 (= c!1382286 ((_ is Union!19619) lt!2628791))))

(declare-fun e!4463782 () Bool)

(declare-fun e!4463780 () Bool)

(assert (=> b!7483988 (= e!4463782 e!4463780)))

(declare-fun b!7483989 () Bool)

(declare-fun res!3002695 () Bool)

(declare-fun e!4463777 () Bool)

(assert (=> b!7483989 (=> res!3002695 e!4463777)))

(declare-fun call!687028 () Bool)

(assert (=> b!7483989 (= res!3002695 call!687028)))

(declare-fun e!4463778 () Bool)

(assert (=> b!7483989 (= e!4463778 e!4463777)))

(declare-fun bm!687023 () Bool)

(assert (=> bm!687023 (= call!687028 (isEmpty!41228 s!13591))))

(declare-fun b!7483990 () Bool)

(declare-fun e!4463781 () Bool)

(assert (=> b!7483990 (= e!4463780 e!4463781)))

(declare-fun res!3002694 () Bool)

(assert (=> b!7483990 (= res!3002694 (matchRSpec!4298 (regOne!39751 lt!2628791) s!13591))))

(assert (=> b!7483990 (=> res!3002694 e!4463781)))

(declare-fun b!7483991 () Bool)

(declare-fun c!1382288 () Bool)

(assert (=> b!7483991 (= c!1382288 ((_ is ElementMatch!19619) lt!2628791))))

(assert (=> b!7483991 (= e!4463776 e!4463782)))

(declare-fun b!7483992 () Bool)

(assert (=> b!7483992 (= e!4463780 e!4463778)))

(assert (=> b!7483992 (= c!1382285 ((_ is Star!19619) lt!2628791))))

(declare-fun d!2300517 () Bool)

(declare-fun c!1382287 () Bool)

(assert (=> d!2300517 (= c!1382287 ((_ is EmptyExpr!19619) lt!2628791))))

(assert (=> d!2300517 (= (matchRSpec!4298 lt!2628791 s!13591) e!4463779)))

(assert (=> b!7483993 (= e!4463778 call!687027)))

(declare-fun b!7483994 () Bool)

(assert (=> b!7483994 (= e!4463779 call!687028)))

(assert (=> b!7483995 (= e!4463777 call!687027)))

(declare-fun b!7483996 () Bool)

(assert (=> b!7483996 (= e!4463782 (= s!13591 (Cons!72211 (c!1382224 lt!2628791) Nil!72211)))))

(declare-fun b!7483997 () Bool)

(assert (=> b!7483997 (= e!4463781 (matchRSpec!4298 (regTwo!39751 lt!2628791) s!13591))))

(assert (= (and d!2300517 c!1382287) b!7483994))

(assert (= (and d!2300517 (not c!1382287)) b!7483987))

(assert (= (and b!7483987 res!3002696) b!7483991))

(assert (= (and b!7483991 c!1382288) b!7483996))

(assert (= (and b!7483991 (not c!1382288)) b!7483988))

(assert (= (and b!7483988 c!1382286) b!7483990))

(assert (= (and b!7483988 (not c!1382286)) b!7483992))

(assert (= (and b!7483990 (not res!3002694)) b!7483997))

(assert (= (and b!7483992 c!1382285) b!7483989))

(assert (= (and b!7483992 (not c!1382285)) b!7483993))

(assert (= (and b!7483989 (not res!3002695)) b!7483995))

(assert (= (or b!7483995 b!7483993) bm!687022))

(assert (= (or b!7483994 b!7483989) bm!687023))

(declare-fun m!8074842 () Bool)

(assert (=> bm!687022 m!8074842))

(assert (=> bm!687023 m!8074752))

(declare-fun m!8074844 () Bool)

(assert (=> b!7483990 m!8074844))

(declare-fun m!8074846 () Bool)

(assert (=> b!7483997 m!8074846))

(assert (=> b!7483717 d!2300517))

(declare-fun b!7484040 () Bool)

(declare-fun e!4463804 () Bool)

(declare-fun lt!2628813 () Bool)

(declare-fun call!687032 () Bool)

(assert (=> b!7484040 (= e!4463804 (= lt!2628813 call!687032))))

(declare-fun b!7484041 () Bool)

(declare-fun e!4463810 () Bool)

(assert (=> b!7484041 (= e!4463810 (= (head!15356 s!13591) (c!1382224 lt!2628781)))))

(declare-fun b!7484042 () Bool)

(declare-fun e!4463805 () Bool)

(assert (=> b!7484042 (= e!4463805 (nullable!8556 lt!2628781))))

(declare-fun b!7484043 () Bool)

(declare-fun res!3002723 () Bool)

(assert (=> b!7484043 (=> (not res!3002723) (not e!4463810))))

(assert (=> b!7484043 (= res!3002723 (not call!687032))))

(declare-fun b!7484045 () Bool)

(declare-fun e!4463809 () Bool)

(assert (=> b!7484045 (= e!4463809 (not lt!2628813))))

(declare-fun b!7484046 () Bool)

(declare-fun e!4463807 () Bool)

(assert (=> b!7484046 (= e!4463807 (not (= (head!15356 s!13591) (c!1382224 lt!2628781))))))

(declare-fun b!7484047 () Bool)

(declare-fun res!3002728 () Bool)

(assert (=> b!7484047 (=> (not res!3002728) (not e!4463810))))

(assert (=> b!7484047 (= res!3002728 (isEmpty!41228 (tail!14925 s!13591)))))

(declare-fun bm!687027 () Bool)

(assert (=> bm!687027 (= call!687032 (isEmpty!41228 s!13591))))

(declare-fun b!7484048 () Bool)

(declare-fun res!3002727 () Bool)

(assert (=> b!7484048 (=> res!3002727 e!4463807)))

(assert (=> b!7484048 (= res!3002727 (not (isEmpty!41228 (tail!14925 s!13591))))))

(declare-fun b!7484049 () Bool)

(assert (=> b!7484049 (= e!4463805 (matchR!9383 (derivativeStep!5616 lt!2628781 (head!15356 s!13591)) (tail!14925 s!13591)))))

(declare-fun b!7484050 () Bool)

(assert (=> b!7484050 (= e!4463804 e!4463809)))

(declare-fun c!1382298 () Bool)

(assert (=> b!7484050 (= c!1382298 ((_ is EmptyLang!19619) lt!2628781))))

(declare-fun b!7484051 () Bool)

(declare-fun e!4463806 () Bool)

(assert (=> b!7484051 (= e!4463806 e!4463807)))

(declare-fun res!3002726 () Bool)

(assert (=> b!7484051 (=> res!3002726 e!4463807)))

(assert (=> b!7484051 (= res!3002726 call!687032)))

(declare-fun d!2300525 () Bool)

(assert (=> d!2300525 e!4463804))

(declare-fun c!1382299 () Bool)

(assert (=> d!2300525 (= c!1382299 ((_ is EmptyExpr!19619) lt!2628781))))

(assert (=> d!2300525 (= lt!2628813 e!4463805)))

(declare-fun c!1382300 () Bool)

(assert (=> d!2300525 (= c!1382300 (isEmpty!41228 s!13591))))

(assert (=> d!2300525 (validRegex!10133 lt!2628781)))

(assert (=> d!2300525 (= (matchR!9383 lt!2628781 s!13591) lt!2628813)))

(declare-fun b!7484044 () Bool)

(declare-fun e!4463808 () Bool)

(assert (=> b!7484044 (= e!4463808 e!4463806)))

(declare-fun res!3002724 () Bool)

(assert (=> b!7484044 (=> (not res!3002724) (not e!4463806))))

(assert (=> b!7484044 (= res!3002724 (not lt!2628813))))

(declare-fun b!7484052 () Bool)

(declare-fun res!3002722 () Bool)

(assert (=> b!7484052 (=> res!3002722 e!4463808)))

(assert (=> b!7484052 (= res!3002722 e!4463810)))

(declare-fun res!3002725 () Bool)

(assert (=> b!7484052 (=> (not res!3002725) (not e!4463810))))

(assert (=> b!7484052 (= res!3002725 lt!2628813)))

(declare-fun b!7484053 () Bool)

(declare-fun res!3002721 () Bool)

(assert (=> b!7484053 (=> res!3002721 e!4463808)))

(assert (=> b!7484053 (= res!3002721 (not ((_ is ElementMatch!19619) lt!2628781)))))

(assert (=> b!7484053 (= e!4463809 e!4463808)))

(assert (= (and d!2300525 c!1382300) b!7484042))

(assert (= (and d!2300525 (not c!1382300)) b!7484049))

(assert (= (and d!2300525 c!1382299) b!7484040))

(assert (= (and d!2300525 (not c!1382299)) b!7484050))

(assert (= (and b!7484050 c!1382298) b!7484045))

(assert (= (and b!7484050 (not c!1382298)) b!7484053))

(assert (= (and b!7484053 (not res!3002721)) b!7484052))

(assert (= (and b!7484052 res!3002725) b!7484043))

(assert (= (and b!7484043 res!3002723) b!7484047))

(assert (= (and b!7484047 res!3002728) b!7484041))

(assert (= (and b!7484052 (not res!3002722)) b!7484044))

(assert (= (and b!7484044 res!3002724) b!7484051))

(assert (= (and b!7484051 (not res!3002726)) b!7484048))

(assert (= (and b!7484048 (not res!3002727)) b!7484046))

(assert (= (or b!7484040 b!7484043 b!7484051) bm!687027))

(assert (=> b!7484048 m!8074748))

(assert (=> b!7484048 m!8074748))

(assert (=> b!7484048 m!8074750))

(assert (=> bm!687027 m!8074752))

(assert (=> b!7484046 m!8074754))

(assert (=> d!2300525 m!8074752))

(declare-fun m!8074854 () Bool)

(assert (=> d!2300525 m!8074854))

(declare-fun m!8074856 () Bool)

(assert (=> b!7484042 m!8074856))

(assert (=> b!7484047 m!8074748))

(assert (=> b!7484047 m!8074748))

(assert (=> b!7484047 m!8074750))

(assert (=> b!7484041 m!8074754))

(assert (=> b!7484049 m!8074754))

(assert (=> b!7484049 m!8074754))

(declare-fun m!8074860 () Bool)

(assert (=> b!7484049 m!8074860))

(assert (=> b!7484049 m!8074748))

(assert (=> b!7484049 m!8074860))

(assert (=> b!7484049 m!8074748))

(declare-fun m!8074862 () Bool)

(assert (=> b!7484049 m!8074862))

(assert (=> b!7483733 d!2300525))

(declare-fun bs!1933931 () Bool)

(declare-fun b!7484073 () Bool)

(assert (= bs!1933931 (and b!7484073 b!7483730)))

(declare-fun lambda!463841 () Int)

(assert (=> bs!1933931 (not (= lambda!463841 lambda!463821))))

(declare-fun bs!1933933 () Bool)

(assert (= bs!1933933 (and b!7484073 b!7483722)))

(assert (=> bs!1933933 (not (= lambda!463841 lambda!463823))))

(declare-fun bs!1933935 () Bool)

(assert (= bs!1933935 (and b!7484073 b!7483995)))

(assert (=> bs!1933935 (= (and (= (reg!19948 lt!2628781) (reg!19948 lt!2628791)) (= lt!2628781 lt!2628791)) (= lambda!463841 lambda!463838))))

(declare-fun bs!1933937 () Bool)

(assert (= bs!1933937 (and b!7484073 b!7483948)))

(assert (=> bs!1933937 (= (and (= (reg!19948 lt!2628781) (reg!19948 lt!2628775)) (= lt!2628781 lt!2628775)) (= lambda!463841 lambda!463832))))

(declare-fun bs!1933939 () Bool)

(assert (= bs!1933939 (and b!7484073 b!7483946)))

(assert (=> bs!1933939 (not (= lambda!463841 lambda!463833))))

(assert (=> bs!1933933 (not (= lambda!463841 lambda!463822))))

(assert (=> bs!1933931 (not (= lambda!463841 lambda!463820))))

(declare-fun bs!1933941 () Bool)

(assert (= bs!1933941 (and b!7484073 b!7483993)))

(assert (=> bs!1933941 (not (= lambda!463841 lambda!463839))))

(assert (=> b!7484073 true))

(assert (=> b!7484073 true))

(declare-fun bs!1933944 () Bool)

(declare-fun b!7484071 () Bool)

(assert (= bs!1933944 (and b!7484071 b!7483730)))

(declare-fun lambda!463843 () Int)

(assert (=> bs!1933944 (= (and (= (regOne!39750 lt!2628781) lt!2628779) (= (regTwo!39750 lt!2628781) rTail!78)) (= lambda!463843 lambda!463821))))

(declare-fun bs!1933946 () Bool)

(assert (= bs!1933946 (and b!7484071 b!7483722)))

(assert (=> bs!1933946 (= (and (= (regOne!39750 lt!2628781) r2!5783) (= (regTwo!39750 lt!2628781) rTail!78)) (= lambda!463843 lambda!463823))))

(declare-fun bs!1933948 () Bool)

(assert (= bs!1933948 (and b!7484071 b!7483995)))

(assert (=> bs!1933948 (not (= lambda!463843 lambda!463838))))

(declare-fun bs!1933949 () Bool)

(assert (= bs!1933949 (and b!7484071 b!7484073)))

(assert (=> bs!1933949 (not (= lambda!463843 lambda!463841))))

(declare-fun bs!1933951 () Bool)

(assert (= bs!1933951 (and b!7484071 b!7483948)))

(assert (=> bs!1933951 (not (= lambda!463843 lambda!463832))))

(declare-fun bs!1933953 () Bool)

(assert (= bs!1933953 (and b!7484071 b!7483946)))

(assert (=> bs!1933953 (= (and (= (regOne!39750 lt!2628781) (regOne!39750 lt!2628775)) (= (regTwo!39750 lt!2628781) (regTwo!39750 lt!2628775))) (= lambda!463843 lambda!463833))))

(assert (=> bs!1933946 (not (= lambda!463843 lambda!463822))))

(assert (=> bs!1933944 (not (= lambda!463843 lambda!463820))))

(declare-fun bs!1933955 () Bool)

(assert (= bs!1933955 (and b!7484071 b!7483993)))

(assert (=> bs!1933955 (= (and (= (regOne!39750 lt!2628781) (regOne!39750 lt!2628791)) (= (regTwo!39750 lt!2628781) (regTwo!39750 lt!2628791))) (= lambda!463843 lambda!463839))))

(assert (=> b!7484071 true))

(assert (=> b!7484071 true))

(declare-fun b!7484065 () Bool)

(declare-fun e!4463821 () Bool)

(declare-fun e!4463818 () Bool)

(assert (=> b!7484065 (= e!4463821 e!4463818)))

(declare-fun res!3002734 () Bool)

(assert (=> b!7484065 (= res!3002734 (not ((_ is EmptyLang!19619) lt!2628781)))))

(assert (=> b!7484065 (=> (not res!3002734) (not e!4463818))))

(declare-fun bm!687030 () Bool)

(declare-fun call!687035 () Bool)

(declare-fun c!1382305 () Bool)

(assert (=> bm!687030 (= call!687035 (Exists!4238 (ite c!1382305 lambda!463841 lambda!463843)))))

(declare-fun b!7484066 () Bool)

(declare-fun c!1382306 () Bool)

(assert (=> b!7484066 (= c!1382306 ((_ is Union!19619) lt!2628781))))

(declare-fun e!4463824 () Bool)

(declare-fun e!4463822 () Bool)

(assert (=> b!7484066 (= e!4463824 e!4463822)))

(declare-fun b!7484067 () Bool)

(declare-fun res!3002733 () Bool)

(declare-fun e!4463819 () Bool)

(assert (=> b!7484067 (=> res!3002733 e!4463819)))

(declare-fun call!687036 () Bool)

(assert (=> b!7484067 (= res!3002733 call!687036)))

(declare-fun e!4463820 () Bool)

(assert (=> b!7484067 (= e!4463820 e!4463819)))

(declare-fun bm!687031 () Bool)

(assert (=> bm!687031 (= call!687036 (isEmpty!41228 s!13591))))

(declare-fun b!7484068 () Bool)

(declare-fun e!4463823 () Bool)

(assert (=> b!7484068 (= e!4463822 e!4463823)))

(declare-fun res!3002732 () Bool)

(assert (=> b!7484068 (= res!3002732 (matchRSpec!4298 (regOne!39751 lt!2628781) s!13591))))

(assert (=> b!7484068 (=> res!3002732 e!4463823)))

(declare-fun b!7484069 () Bool)

(declare-fun c!1382308 () Bool)

(assert (=> b!7484069 (= c!1382308 ((_ is ElementMatch!19619) lt!2628781))))

(assert (=> b!7484069 (= e!4463818 e!4463824)))

(declare-fun b!7484070 () Bool)

(assert (=> b!7484070 (= e!4463822 e!4463820)))

(assert (=> b!7484070 (= c!1382305 ((_ is Star!19619) lt!2628781))))

(declare-fun d!2300529 () Bool)

(declare-fun c!1382307 () Bool)

(assert (=> d!2300529 (= c!1382307 ((_ is EmptyExpr!19619) lt!2628781))))

(assert (=> d!2300529 (= (matchRSpec!4298 lt!2628781 s!13591) e!4463821)))

(assert (=> b!7484071 (= e!4463820 call!687035)))

(declare-fun b!7484072 () Bool)

(assert (=> b!7484072 (= e!4463821 call!687036)))

(assert (=> b!7484073 (= e!4463819 call!687035)))

(declare-fun b!7484074 () Bool)

(assert (=> b!7484074 (= e!4463824 (= s!13591 (Cons!72211 (c!1382224 lt!2628781) Nil!72211)))))

(declare-fun b!7484075 () Bool)

(assert (=> b!7484075 (= e!4463823 (matchRSpec!4298 (regTwo!39751 lt!2628781) s!13591))))

(assert (= (and d!2300529 c!1382307) b!7484072))

(assert (= (and d!2300529 (not c!1382307)) b!7484065))

(assert (= (and b!7484065 res!3002734) b!7484069))

(assert (= (and b!7484069 c!1382308) b!7484074))

(assert (= (and b!7484069 (not c!1382308)) b!7484066))

(assert (= (and b!7484066 c!1382306) b!7484068))

(assert (= (and b!7484066 (not c!1382306)) b!7484070))

(assert (= (and b!7484068 (not res!3002732)) b!7484075))

(assert (= (and b!7484070 c!1382305) b!7484067))

(assert (= (and b!7484070 (not c!1382305)) b!7484071))

(assert (= (and b!7484067 (not res!3002733)) b!7484073))

(assert (= (or b!7484073 b!7484071) bm!687030))

(assert (= (or b!7484072 b!7484067) bm!687031))

(declare-fun m!8074870 () Bool)

(assert (=> bm!687030 m!8074870))

(assert (=> bm!687031 m!8074752))

(declare-fun m!8074872 () Bool)

(assert (=> b!7484068 m!8074872))

(declare-fun m!8074874 () Bool)

(assert (=> b!7484075 m!8074874))

(assert (=> b!7483733 d!2300529))

(declare-fun d!2300533 () Bool)

(assert (=> d!2300533 (= (matchR!9383 lt!2628777 s!13591) (matchRSpec!4298 lt!2628777 s!13591))))

(declare-fun lt!2628814 () Unit!166073)

(assert (=> d!2300533 (= lt!2628814 (choose!57859 lt!2628777 s!13591))))

(assert (=> d!2300533 (validRegex!10133 lt!2628777)))

(assert (=> d!2300533 (= (mainMatchTheorem!4292 lt!2628777 s!13591) lt!2628814)))

(declare-fun bs!1933956 () Bool)

(assert (= bs!1933956 d!2300533))

(assert (=> bs!1933956 m!8074720))

(assert (=> bs!1933956 m!8074726))

(declare-fun m!8074876 () Bool)

(assert (=> bs!1933956 m!8074876))

(declare-fun m!8074878 () Bool)

(assert (=> bs!1933956 m!8074878))

(assert (=> b!7483733 d!2300533))

(declare-fun d!2300535 () Bool)

(assert (=> d!2300535 (= (matchR!9383 lt!2628781 s!13591) (matchRSpec!4298 lt!2628781 s!13591))))

(declare-fun lt!2628815 () Unit!166073)

(assert (=> d!2300535 (= lt!2628815 (choose!57859 lt!2628781 s!13591))))

(assert (=> d!2300535 (validRegex!10133 lt!2628781)))

(assert (=> d!2300535 (= (mainMatchTheorem!4292 lt!2628781 s!13591) lt!2628815)))

(declare-fun bs!1933957 () Bool)

(assert (= bs!1933957 d!2300535))

(assert (=> bs!1933957 m!8074724))

(assert (=> bs!1933957 m!8074716))

(declare-fun m!8074880 () Bool)

(assert (=> bs!1933957 m!8074880))

(assert (=> bs!1933957 m!8074854))

(assert (=> b!7483733 d!2300535))

(declare-fun bs!1933962 () Bool)

(declare-fun b!7484095 () Bool)

(assert (= bs!1933962 (and b!7484095 b!7483730)))

(declare-fun lambda!463845 () Int)

(assert (=> bs!1933962 (not (= lambda!463845 lambda!463821))))

(declare-fun bs!1933964 () Bool)

(assert (= bs!1933964 (and b!7484095 b!7483722)))

(assert (=> bs!1933964 (not (= lambda!463845 lambda!463823))))

(declare-fun bs!1933965 () Bool)

(assert (= bs!1933965 (and b!7484095 b!7484071)))

(assert (=> bs!1933965 (not (= lambda!463845 lambda!463843))))

(declare-fun bs!1933967 () Bool)

(assert (= bs!1933967 (and b!7484095 b!7483995)))

(assert (=> bs!1933967 (= (and (= (reg!19948 lt!2628777) (reg!19948 lt!2628791)) (= lt!2628777 lt!2628791)) (= lambda!463845 lambda!463838))))

(declare-fun bs!1933969 () Bool)

(assert (= bs!1933969 (and b!7484095 b!7484073)))

(assert (=> bs!1933969 (= (and (= (reg!19948 lt!2628777) (reg!19948 lt!2628781)) (= lt!2628777 lt!2628781)) (= lambda!463845 lambda!463841))))

(declare-fun bs!1933971 () Bool)

(assert (= bs!1933971 (and b!7484095 b!7483948)))

(assert (=> bs!1933971 (= (and (= (reg!19948 lt!2628777) (reg!19948 lt!2628775)) (= lt!2628777 lt!2628775)) (= lambda!463845 lambda!463832))))

(declare-fun bs!1933972 () Bool)

(assert (= bs!1933972 (and b!7484095 b!7483946)))

(assert (=> bs!1933972 (not (= lambda!463845 lambda!463833))))

(assert (=> bs!1933964 (not (= lambda!463845 lambda!463822))))

(assert (=> bs!1933962 (not (= lambda!463845 lambda!463820))))

(declare-fun bs!1933973 () Bool)

(assert (= bs!1933973 (and b!7484095 b!7483993)))

(assert (=> bs!1933973 (not (= lambda!463845 lambda!463839))))

(assert (=> b!7484095 true))

(assert (=> b!7484095 true))

(declare-fun bs!1933978 () Bool)

(declare-fun b!7484093 () Bool)

(assert (= bs!1933978 (and b!7484093 b!7483730)))

(declare-fun lambda!463847 () Int)

(assert (=> bs!1933978 (= (and (= (regOne!39750 lt!2628777) lt!2628779) (= (regTwo!39750 lt!2628777) rTail!78)) (= lambda!463847 lambda!463821))))

(declare-fun bs!1933980 () Bool)

(assert (= bs!1933980 (and b!7484093 b!7483722)))

(assert (=> bs!1933980 (= (and (= (regOne!39750 lt!2628777) r2!5783) (= (regTwo!39750 lt!2628777) rTail!78)) (= lambda!463847 lambda!463823))))

(declare-fun bs!1933982 () Bool)

(assert (= bs!1933982 (and b!7484093 b!7484071)))

(assert (=> bs!1933982 (= (and (= (regOne!39750 lt!2628777) (regOne!39750 lt!2628781)) (= (regTwo!39750 lt!2628777) (regTwo!39750 lt!2628781))) (= lambda!463847 lambda!463843))))

(declare-fun bs!1933984 () Bool)

(assert (= bs!1933984 (and b!7484093 b!7483995)))

(assert (=> bs!1933984 (not (= lambda!463847 lambda!463838))))

(declare-fun bs!1933986 () Bool)

(assert (= bs!1933986 (and b!7484093 b!7484073)))

(assert (=> bs!1933986 (not (= lambda!463847 lambda!463841))))

(declare-fun bs!1933987 () Bool)

(assert (= bs!1933987 (and b!7484093 b!7483948)))

(assert (=> bs!1933987 (not (= lambda!463847 lambda!463832))))

(declare-fun bs!1933989 () Bool)

(assert (= bs!1933989 (and b!7484093 b!7483946)))

(assert (=> bs!1933989 (= (and (= (regOne!39750 lt!2628777) (regOne!39750 lt!2628775)) (= (regTwo!39750 lt!2628777) (regTwo!39750 lt!2628775))) (= lambda!463847 lambda!463833))))

(declare-fun bs!1933990 () Bool)

(assert (= bs!1933990 (and b!7484093 b!7484095)))

(assert (=> bs!1933990 (not (= lambda!463847 lambda!463845))))

(assert (=> bs!1933980 (not (= lambda!463847 lambda!463822))))

(assert (=> bs!1933978 (not (= lambda!463847 lambda!463820))))

(declare-fun bs!1933991 () Bool)

(assert (= bs!1933991 (and b!7484093 b!7483993)))

(assert (=> bs!1933991 (= (and (= (regOne!39750 lt!2628777) (regOne!39750 lt!2628791)) (= (regTwo!39750 lt!2628777) (regTwo!39750 lt!2628791))) (= lambda!463847 lambda!463839))))

(assert (=> b!7484093 true))

(assert (=> b!7484093 true))

(declare-fun b!7484087 () Bool)

(declare-fun e!4463835 () Bool)

(declare-fun e!4463832 () Bool)

(assert (=> b!7484087 (= e!4463835 e!4463832)))

(declare-fun res!3002740 () Bool)

(assert (=> b!7484087 (= res!3002740 (not ((_ is EmptyLang!19619) lt!2628777)))))

(assert (=> b!7484087 (=> (not res!3002740) (not e!4463832))))

(declare-fun c!1382313 () Bool)

(declare-fun call!687039 () Bool)

(declare-fun bm!687034 () Bool)

(assert (=> bm!687034 (= call!687039 (Exists!4238 (ite c!1382313 lambda!463845 lambda!463847)))))

(declare-fun b!7484088 () Bool)

(declare-fun c!1382314 () Bool)

(assert (=> b!7484088 (= c!1382314 ((_ is Union!19619) lt!2628777))))

(declare-fun e!4463838 () Bool)

(declare-fun e!4463836 () Bool)

(assert (=> b!7484088 (= e!4463838 e!4463836)))

(declare-fun b!7484089 () Bool)

(declare-fun res!3002739 () Bool)

(declare-fun e!4463833 () Bool)

(assert (=> b!7484089 (=> res!3002739 e!4463833)))

(declare-fun call!687040 () Bool)

(assert (=> b!7484089 (= res!3002739 call!687040)))

(declare-fun e!4463834 () Bool)

(assert (=> b!7484089 (= e!4463834 e!4463833)))

(declare-fun bm!687035 () Bool)

(assert (=> bm!687035 (= call!687040 (isEmpty!41228 s!13591))))

(declare-fun b!7484090 () Bool)

(declare-fun e!4463837 () Bool)

(assert (=> b!7484090 (= e!4463836 e!4463837)))

(declare-fun res!3002738 () Bool)

(assert (=> b!7484090 (= res!3002738 (matchRSpec!4298 (regOne!39751 lt!2628777) s!13591))))

(assert (=> b!7484090 (=> res!3002738 e!4463837)))

(declare-fun b!7484091 () Bool)

(declare-fun c!1382316 () Bool)

(assert (=> b!7484091 (= c!1382316 ((_ is ElementMatch!19619) lt!2628777))))

(assert (=> b!7484091 (= e!4463832 e!4463838)))

(declare-fun b!7484092 () Bool)

(assert (=> b!7484092 (= e!4463836 e!4463834)))

(assert (=> b!7484092 (= c!1382313 ((_ is Star!19619) lt!2628777))))

(declare-fun d!2300537 () Bool)

(declare-fun c!1382315 () Bool)

(assert (=> d!2300537 (= c!1382315 ((_ is EmptyExpr!19619) lt!2628777))))

(assert (=> d!2300537 (= (matchRSpec!4298 lt!2628777 s!13591) e!4463835)))

(assert (=> b!7484093 (= e!4463834 call!687039)))

(declare-fun b!7484094 () Bool)

(assert (=> b!7484094 (= e!4463835 call!687040)))

(assert (=> b!7484095 (= e!4463833 call!687039)))

(declare-fun b!7484096 () Bool)

(assert (=> b!7484096 (= e!4463838 (= s!13591 (Cons!72211 (c!1382224 lt!2628777) Nil!72211)))))

(declare-fun b!7484097 () Bool)

(assert (=> b!7484097 (= e!4463837 (matchRSpec!4298 (regTwo!39751 lt!2628777) s!13591))))

(assert (= (and d!2300537 c!1382315) b!7484094))

(assert (= (and d!2300537 (not c!1382315)) b!7484087))

(assert (= (and b!7484087 res!3002740) b!7484091))

(assert (= (and b!7484091 c!1382316) b!7484096))

(assert (= (and b!7484091 (not c!1382316)) b!7484088))

(assert (= (and b!7484088 c!1382314) b!7484090))

(assert (= (and b!7484088 (not c!1382314)) b!7484092))

(assert (= (and b!7484090 (not res!3002738)) b!7484097))

(assert (= (and b!7484092 c!1382313) b!7484089))

(assert (= (and b!7484092 (not c!1382313)) b!7484093))

(assert (= (and b!7484089 (not res!3002739)) b!7484095))

(assert (= (or b!7484095 b!7484093) bm!687034))

(assert (= (or b!7484094 b!7484089) bm!687035))

(declare-fun m!8074892 () Bool)

(assert (=> bm!687034 m!8074892))

(assert (=> bm!687035 m!8074752))

(declare-fun m!8074894 () Bool)

(assert (=> b!7484090 m!8074894))

(declare-fun m!8074896 () Bool)

(assert (=> b!7484097 m!8074896))

(assert (=> b!7483733 d!2300537))

(declare-fun b!7484109 () Bool)

(declare-fun e!4463846 () Bool)

(declare-fun lt!2628818 () Bool)

(declare-fun call!687043 () Bool)

(assert (=> b!7484109 (= e!4463846 (= lt!2628818 call!687043))))

(declare-fun b!7484110 () Bool)

(declare-fun e!4463852 () Bool)

(assert (=> b!7484110 (= e!4463852 (= (head!15356 s!13591) (c!1382224 lt!2628777)))))

(declare-fun b!7484111 () Bool)

(declare-fun e!4463847 () Bool)

(assert (=> b!7484111 (= e!4463847 (nullable!8556 lt!2628777))))

(declare-fun b!7484112 () Bool)

(declare-fun res!3002746 () Bool)

(assert (=> b!7484112 (=> (not res!3002746) (not e!4463852))))

(assert (=> b!7484112 (= res!3002746 (not call!687043))))

(declare-fun b!7484114 () Bool)

(declare-fun e!4463851 () Bool)

(assert (=> b!7484114 (= e!4463851 (not lt!2628818))))

(declare-fun b!7484115 () Bool)

(declare-fun e!4463849 () Bool)

(assert (=> b!7484115 (= e!4463849 (not (= (head!15356 s!13591) (c!1382224 lt!2628777))))))

(declare-fun b!7484116 () Bool)

(declare-fun res!3002751 () Bool)

(assert (=> b!7484116 (=> (not res!3002751) (not e!4463852))))

(assert (=> b!7484116 (= res!3002751 (isEmpty!41228 (tail!14925 s!13591)))))

(declare-fun bm!687038 () Bool)

(assert (=> bm!687038 (= call!687043 (isEmpty!41228 s!13591))))

(declare-fun b!7484117 () Bool)

(declare-fun res!3002750 () Bool)

(assert (=> b!7484117 (=> res!3002750 e!4463849)))

(assert (=> b!7484117 (= res!3002750 (not (isEmpty!41228 (tail!14925 s!13591))))))

(declare-fun b!7484118 () Bool)

(assert (=> b!7484118 (= e!4463847 (matchR!9383 (derivativeStep!5616 lt!2628777 (head!15356 s!13591)) (tail!14925 s!13591)))))

(declare-fun b!7484119 () Bool)

(assert (=> b!7484119 (= e!4463846 e!4463851)))

(declare-fun c!1382321 () Bool)

(assert (=> b!7484119 (= c!1382321 ((_ is EmptyLang!19619) lt!2628777))))

(declare-fun b!7484120 () Bool)

(declare-fun e!4463848 () Bool)

(assert (=> b!7484120 (= e!4463848 e!4463849)))

(declare-fun res!3002749 () Bool)

(assert (=> b!7484120 (=> res!3002749 e!4463849)))

(assert (=> b!7484120 (= res!3002749 call!687043)))

(declare-fun d!2300545 () Bool)

(assert (=> d!2300545 e!4463846))

(declare-fun c!1382322 () Bool)

(assert (=> d!2300545 (= c!1382322 ((_ is EmptyExpr!19619) lt!2628777))))

(assert (=> d!2300545 (= lt!2628818 e!4463847)))

(declare-fun c!1382323 () Bool)

(assert (=> d!2300545 (= c!1382323 (isEmpty!41228 s!13591))))

(assert (=> d!2300545 (validRegex!10133 lt!2628777)))

(assert (=> d!2300545 (= (matchR!9383 lt!2628777 s!13591) lt!2628818)))

(declare-fun b!7484113 () Bool)

(declare-fun e!4463850 () Bool)

(assert (=> b!7484113 (= e!4463850 e!4463848)))

(declare-fun res!3002747 () Bool)

(assert (=> b!7484113 (=> (not res!3002747) (not e!4463848))))

(assert (=> b!7484113 (= res!3002747 (not lt!2628818))))

(declare-fun b!7484121 () Bool)

(declare-fun res!3002745 () Bool)

(assert (=> b!7484121 (=> res!3002745 e!4463850)))

(assert (=> b!7484121 (= res!3002745 e!4463852)))

(declare-fun res!3002748 () Bool)

(assert (=> b!7484121 (=> (not res!3002748) (not e!4463852))))

(assert (=> b!7484121 (= res!3002748 lt!2628818)))

(declare-fun b!7484122 () Bool)

(declare-fun res!3002744 () Bool)

(assert (=> b!7484122 (=> res!3002744 e!4463850)))

(assert (=> b!7484122 (= res!3002744 (not ((_ is ElementMatch!19619) lt!2628777)))))

(assert (=> b!7484122 (= e!4463851 e!4463850)))

(assert (= (and d!2300545 c!1382323) b!7484111))

(assert (= (and d!2300545 (not c!1382323)) b!7484118))

(assert (= (and d!2300545 c!1382322) b!7484109))

(assert (= (and d!2300545 (not c!1382322)) b!7484119))

(assert (= (and b!7484119 c!1382321) b!7484114))

(assert (= (and b!7484119 (not c!1382321)) b!7484122))

(assert (= (and b!7484122 (not res!3002744)) b!7484121))

(assert (= (and b!7484121 res!3002748) b!7484112))

(assert (= (and b!7484112 res!3002746) b!7484116))

(assert (= (and b!7484116 res!3002751) b!7484110))

(assert (= (and b!7484121 (not res!3002745)) b!7484113))

(assert (= (and b!7484113 res!3002747) b!7484120))

(assert (= (and b!7484120 (not res!3002749)) b!7484117))

(assert (= (and b!7484117 (not res!3002750)) b!7484115))

(assert (= (or b!7484109 b!7484112 b!7484120) bm!687038))

(assert (=> b!7484117 m!8074748))

(assert (=> b!7484117 m!8074748))

(assert (=> b!7484117 m!8074750))

(assert (=> bm!687038 m!8074752))

(assert (=> b!7484115 m!8074754))

(assert (=> d!2300545 m!8074752))

(assert (=> d!2300545 m!8074878))

(declare-fun m!8074898 () Bool)

(assert (=> b!7484111 m!8074898))

(assert (=> b!7484116 m!8074748))

(assert (=> b!7484116 m!8074748))

(assert (=> b!7484116 m!8074750))

(assert (=> b!7484110 m!8074754))

(assert (=> b!7484118 m!8074754))

(assert (=> b!7484118 m!8074754))

(declare-fun m!8074900 () Bool)

(assert (=> b!7484118 m!8074900))

(assert (=> b!7484118 m!8074748))

(assert (=> b!7484118 m!8074900))

(assert (=> b!7484118 m!8074748))

(declare-fun m!8074902 () Bool)

(assert (=> b!7484118 m!8074902))

(assert (=> b!7483733 d!2300545))

(declare-fun bs!1934042 () Bool)

(declare-fun d!2300547 () Bool)

(assert (= bs!1934042 (and d!2300547 b!7483730)))

(declare-fun lambda!463856 () Int)

(assert (=> bs!1934042 (not (= lambda!463856 lambda!463821))))

(declare-fun bs!1934043 () Bool)

(assert (= bs!1934043 (and d!2300547 b!7483722)))

(assert (=> bs!1934043 (not (= lambda!463856 lambda!463823))))

(declare-fun bs!1934044 () Bool)

(assert (= bs!1934044 (and d!2300547 b!7484071)))

(assert (=> bs!1934044 (not (= lambda!463856 lambda!463843))))

(declare-fun bs!1934045 () Bool)

(assert (= bs!1934045 (and d!2300547 b!7483995)))

(assert (=> bs!1934045 (not (= lambda!463856 lambda!463838))))

(declare-fun bs!1934046 () Bool)

(assert (= bs!1934046 (and d!2300547 b!7484073)))

(assert (=> bs!1934046 (not (= lambda!463856 lambda!463841))))

(declare-fun bs!1934047 () Bool)

(assert (= bs!1934047 (and d!2300547 b!7483948)))

(assert (=> bs!1934047 (not (= lambda!463856 lambda!463832))))

(declare-fun bs!1934048 () Bool)

(assert (= bs!1934048 (and d!2300547 b!7483946)))

(assert (=> bs!1934048 (not (= lambda!463856 lambda!463833))))

(declare-fun bs!1934049 () Bool)

(assert (= bs!1934049 (and d!2300547 b!7484095)))

(assert (=> bs!1934049 (not (= lambda!463856 lambda!463845))))

(assert (=> bs!1934043 (= lambda!463856 lambda!463822)))

(declare-fun bs!1934050 () Bool)

(assert (= bs!1934050 (and d!2300547 b!7484093)))

(assert (=> bs!1934050 (not (= lambda!463856 lambda!463847))))

(assert (=> bs!1934042 (= (= r2!5783 lt!2628779) (= lambda!463856 lambda!463820))))

(declare-fun bs!1934051 () Bool)

(assert (= bs!1934051 (and d!2300547 b!7483993)))

(assert (=> bs!1934051 (not (= lambda!463856 lambda!463839))))

(assert (=> d!2300547 true))

(assert (=> d!2300547 true))

(assert (=> d!2300547 true))

(declare-fun lambda!463858 () Int)

(assert (=> bs!1934042 (= (= r2!5783 lt!2628779) (= lambda!463858 lambda!463821))))

(assert (=> bs!1934044 (= (and (= r2!5783 (regOne!39750 lt!2628781)) (= rTail!78 (regTwo!39750 lt!2628781))) (= lambda!463858 lambda!463843))))

(assert (=> bs!1934045 (not (= lambda!463858 lambda!463838))))

(assert (=> bs!1934046 (not (= lambda!463858 lambda!463841))))

(assert (=> bs!1934047 (not (= lambda!463858 lambda!463832))))

(assert (=> bs!1934048 (= (and (= r2!5783 (regOne!39750 lt!2628775)) (= rTail!78 (regTwo!39750 lt!2628775))) (= lambda!463858 lambda!463833))))

(assert (=> bs!1934049 (not (= lambda!463858 lambda!463845))))

(assert (=> bs!1934043 (not (= lambda!463858 lambda!463822))))

(assert (=> bs!1934050 (= (and (= r2!5783 (regOne!39750 lt!2628777)) (= rTail!78 (regTwo!39750 lt!2628777))) (= lambda!463858 lambda!463847))))

(assert (=> bs!1934043 (= lambda!463858 lambda!463823)))

(declare-fun bs!1934065 () Bool)

(assert (= bs!1934065 d!2300547))

(assert (=> bs!1934065 (not (= lambda!463858 lambda!463856))))

(assert (=> bs!1934042 (not (= lambda!463858 lambda!463820))))

(assert (=> bs!1934051 (= (and (= r2!5783 (regOne!39750 lt!2628791)) (= rTail!78 (regTwo!39750 lt!2628791))) (= lambda!463858 lambda!463839))))

(assert (=> d!2300547 true))

(assert (=> d!2300547 true))

(assert (=> d!2300547 true))

(assert (=> d!2300547 (= (Exists!4238 lambda!463856) (Exists!4238 lambda!463858))))

(declare-fun lt!2628824 () Unit!166073)

(declare-fun choose!57860 (Regex!19619 Regex!19619 List!72335) Unit!166073)

(assert (=> d!2300547 (= lt!2628824 (choose!57860 r2!5783 rTail!78 s!13591))))

(assert (=> d!2300547 (validRegex!10133 r2!5783)))

(assert (=> d!2300547 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2572 r2!5783 rTail!78 s!13591) lt!2628824)))

(declare-fun m!8074930 () Bool)

(assert (=> bs!1934065 m!8074930))

(declare-fun m!8074932 () Bool)

(assert (=> bs!1934065 m!8074932))

(declare-fun m!8074934 () Bool)

(assert (=> bs!1934065 m!8074934))

(assert (=> bs!1934065 m!8074714))

(assert (=> b!7483722 d!2300547))

(declare-fun d!2300559 () Bool)

(declare-fun choose!57861 (Int) Bool)

(assert (=> d!2300559 (= (Exists!4238 lambda!463822) (choose!57861 lambda!463822))))

(declare-fun bs!1934070 () Bool)

(assert (= bs!1934070 d!2300559))

(declare-fun m!8074936 () Bool)

(assert (=> bs!1934070 m!8074936))

(assert (=> b!7483722 d!2300559))

(declare-fun b!7484167 () Bool)

(declare-fun e!4463878 () Bool)

(declare-fun lt!2628825 () Bool)

(declare-fun call!687049 () Bool)

(assert (=> b!7484167 (= e!4463878 (= lt!2628825 call!687049))))

(declare-fun b!7484168 () Bool)

(declare-fun e!4463884 () Bool)

(assert (=> b!7484168 (= e!4463884 (= (head!15356 (_1!37647 lt!2628787)) (c!1382224 r2!5783)))))

(declare-fun b!7484169 () Bool)

(declare-fun e!4463879 () Bool)

(assert (=> b!7484169 (= e!4463879 (nullable!8556 r2!5783))))

(declare-fun b!7484170 () Bool)

(declare-fun res!3002776 () Bool)

(assert (=> b!7484170 (=> (not res!3002776) (not e!4463884))))

(assert (=> b!7484170 (= res!3002776 (not call!687049))))

(declare-fun b!7484172 () Bool)

(declare-fun e!4463883 () Bool)

(assert (=> b!7484172 (= e!4463883 (not lt!2628825))))

(declare-fun b!7484173 () Bool)

(declare-fun e!4463881 () Bool)

(assert (=> b!7484173 (= e!4463881 (not (= (head!15356 (_1!37647 lt!2628787)) (c!1382224 r2!5783))))))

(declare-fun b!7484174 () Bool)

(declare-fun res!3002781 () Bool)

(assert (=> b!7484174 (=> (not res!3002781) (not e!4463884))))

(assert (=> b!7484174 (= res!3002781 (isEmpty!41228 (tail!14925 (_1!37647 lt!2628787))))))

(declare-fun bm!687044 () Bool)

(assert (=> bm!687044 (= call!687049 (isEmpty!41228 (_1!37647 lt!2628787)))))

(declare-fun b!7484175 () Bool)

(declare-fun res!3002780 () Bool)

(assert (=> b!7484175 (=> res!3002780 e!4463881)))

(assert (=> b!7484175 (= res!3002780 (not (isEmpty!41228 (tail!14925 (_1!37647 lt!2628787)))))))

(declare-fun b!7484176 () Bool)

(assert (=> b!7484176 (= e!4463879 (matchR!9383 (derivativeStep!5616 r2!5783 (head!15356 (_1!37647 lt!2628787))) (tail!14925 (_1!37647 lt!2628787))))))

(declare-fun b!7484177 () Bool)

(assert (=> b!7484177 (= e!4463878 e!4463883)))

(declare-fun c!1382335 () Bool)

(assert (=> b!7484177 (= c!1382335 ((_ is EmptyLang!19619) r2!5783))))

(declare-fun b!7484178 () Bool)

(declare-fun e!4463880 () Bool)

(assert (=> b!7484178 (= e!4463880 e!4463881)))

(declare-fun res!3002779 () Bool)

(assert (=> b!7484178 (=> res!3002779 e!4463881)))

(assert (=> b!7484178 (= res!3002779 call!687049)))

(declare-fun d!2300561 () Bool)

(assert (=> d!2300561 e!4463878))

(declare-fun c!1382336 () Bool)

(assert (=> d!2300561 (= c!1382336 ((_ is EmptyExpr!19619) r2!5783))))

(assert (=> d!2300561 (= lt!2628825 e!4463879)))

(declare-fun c!1382337 () Bool)

(assert (=> d!2300561 (= c!1382337 (isEmpty!41228 (_1!37647 lt!2628787)))))

(assert (=> d!2300561 (validRegex!10133 r2!5783)))

(assert (=> d!2300561 (= (matchR!9383 r2!5783 (_1!37647 lt!2628787)) lt!2628825)))

(declare-fun b!7484171 () Bool)

(declare-fun e!4463882 () Bool)

(assert (=> b!7484171 (= e!4463882 e!4463880)))

(declare-fun res!3002777 () Bool)

(assert (=> b!7484171 (=> (not res!3002777) (not e!4463880))))

(assert (=> b!7484171 (= res!3002777 (not lt!2628825))))

(declare-fun b!7484179 () Bool)

(declare-fun res!3002775 () Bool)

(assert (=> b!7484179 (=> res!3002775 e!4463882)))

(assert (=> b!7484179 (= res!3002775 e!4463884)))

(declare-fun res!3002778 () Bool)

(assert (=> b!7484179 (=> (not res!3002778) (not e!4463884))))

(assert (=> b!7484179 (= res!3002778 lt!2628825)))

(declare-fun b!7484180 () Bool)

(declare-fun res!3002774 () Bool)

(assert (=> b!7484180 (=> res!3002774 e!4463882)))

(assert (=> b!7484180 (= res!3002774 (not ((_ is ElementMatch!19619) r2!5783)))))

(assert (=> b!7484180 (= e!4463883 e!4463882)))

(assert (= (and d!2300561 c!1382337) b!7484169))

(assert (= (and d!2300561 (not c!1382337)) b!7484176))

(assert (= (and d!2300561 c!1382336) b!7484167))

(assert (= (and d!2300561 (not c!1382336)) b!7484177))

(assert (= (and b!7484177 c!1382335) b!7484172))

(assert (= (and b!7484177 (not c!1382335)) b!7484180))

(assert (= (and b!7484180 (not res!3002774)) b!7484179))

(assert (= (and b!7484179 res!3002778) b!7484170))

(assert (= (and b!7484170 res!3002776) b!7484174))

(assert (= (and b!7484174 res!3002781) b!7484168))

(assert (= (and b!7484179 (not res!3002775)) b!7484171))

(assert (= (and b!7484171 res!3002777) b!7484178))

(assert (= (and b!7484178 (not res!3002779)) b!7484175))

(assert (= (and b!7484175 (not res!3002780)) b!7484173))

(assert (= (or b!7484167 b!7484170 b!7484178) bm!687044))

(declare-fun m!8074938 () Bool)

(assert (=> b!7484175 m!8074938))

(assert (=> b!7484175 m!8074938))

(declare-fun m!8074940 () Bool)

(assert (=> b!7484175 m!8074940))

(declare-fun m!8074942 () Bool)

(assert (=> bm!687044 m!8074942))

(declare-fun m!8074944 () Bool)

(assert (=> b!7484173 m!8074944))

(assert (=> d!2300561 m!8074942))

(assert (=> d!2300561 m!8074714))

(declare-fun m!8074946 () Bool)

(assert (=> b!7484169 m!8074946))

(assert (=> b!7484174 m!8074938))

(assert (=> b!7484174 m!8074938))

(assert (=> b!7484174 m!8074940))

(assert (=> b!7484168 m!8074944))

(assert (=> b!7484176 m!8074944))

(assert (=> b!7484176 m!8074944))

(declare-fun m!8074948 () Bool)

(assert (=> b!7484176 m!8074948))

(assert (=> b!7484176 m!8074938))

(assert (=> b!7484176 m!8074948))

(assert (=> b!7484176 m!8074938))

(declare-fun m!8074950 () Bool)

(assert (=> b!7484176 m!8074950))

(assert (=> b!7483722 d!2300561))

(declare-fun d!2300563 () Bool)

(declare-fun isEmpty!41229 (Option!17176) Bool)

(assert (=> d!2300563 (= (isDefined!13865 lt!2628780) (not (isEmpty!41229 lt!2628780)))))

(declare-fun bs!1934083 () Bool)

(assert (= bs!1934083 d!2300563))

(declare-fun m!8074952 () Bool)

(assert (=> bs!1934083 m!8074952))

(assert (=> b!7483722 d!2300563))

(declare-fun d!2300565 () Bool)

(assert (=> d!2300565 (= (Exists!4238 lambda!463823) (choose!57861 lambda!463823))))

(declare-fun bs!1934084 () Bool)

(assert (= bs!1934084 d!2300565))

(declare-fun m!8074954 () Bool)

(assert (=> bs!1934084 m!8074954))

(assert (=> b!7483722 d!2300565))

(declare-fun bs!1934086 () Bool)

(declare-fun d!2300567 () Bool)

(assert (= bs!1934086 (and d!2300567 b!7483730)))

(declare-fun lambda!463864 () Int)

(assert (=> bs!1934086 (not (= lambda!463864 lambda!463821))))

(declare-fun bs!1934087 () Bool)

(assert (= bs!1934087 (and d!2300567 b!7484071)))

(assert (=> bs!1934087 (not (= lambda!463864 lambda!463843))))

(declare-fun bs!1934088 () Bool)

(assert (= bs!1934088 (and d!2300567 b!7483995)))

(assert (=> bs!1934088 (not (= lambda!463864 lambda!463838))))

(declare-fun bs!1934089 () Bool)

(assert (= bs!1934089 (and d!2300567 b!7484073)))

(assert (=> bs!1934089 (not (= lambda!463864 lambda!463841))))

(declare-fun bs!1934090 () Bool)

(assert (= bs!1934090 (and d!2300567 b!7483948)))

(assert (=> bs!1934090 (not (= lambda!463864 lambda!463832))))

(declare-fun bs!1934091 () Bool)

(assert (= bs!1934091 (and d!2300567 b!7483946)))

(assert (=> bs!1934091 (not (= lambda!463864 lambda!463833))))

(declare-fun bs!1934092 () Bool)

(assert (= bs!1934092 (and d!2300567 b!7484095)))

(assert (=> bs!1934092 (not (= lambda!463864 lambda!463845))))

(declare-fun bs!1934093 () Bool)

(assert (= bs!1934093 (and d!2300567 b!7483722)))

(assert (=> bs!1934093 (= lambda!463864 lambda!463822)))

(declare-fun bs!1934094 () Bool)

(assert (= bs!1934094 (and d!2300567 b!7484093)))

(assert (=> bs!1934094 (not (= lambda!463864 lambda!463847))))

(assert (=> bs!1934093 (not (= lambda!463864 lambda!463823))))

(declare-fun bs!1934095 () Bool)

(assert (= bs!1934095 (and d!2300567 d!2300547)))

(assert (=> bs!1934095 (not (= lambda!463864 lambda!463858))))

(assert (=> bs!1934095 (= lambda!463864 lambda!463856)))

(assert (=> bs!1934086 (= (= r2!5783 lt!2628779) (= lambda!463864 lambda!463820))))

(declare-fun bs!1934096 () Bool)

(assert (= bs!1934096 (and d!2300567 b!7483993)))

(assert (=> bs!1934096 (not (= lambda!463864 lambda!463839))))

(assert (=> d!2300567 true))

(assert (=> d!2300567 true))

(assert (=> d!2300567 true))

(assert (=> d!2300567 (= (isDefined!13865 (findConcatSeparation!3298 r2!5783 rTail!78 Nil!72211 s!13591 s!13591)) (Exists!4238 lambda!463864))))

(declare-fun lt!2628832 () Unit!166073)

(declare-fun choose!57862 (Regex!19619 Regex!19619 List!72335) Unit!166073)

(assert (=> d!2300567 (= lt!2628832 (choose!57862 r2!5783 rTail!78 s!13591))))

(assert (=> d!2300567 (validRegex!10133 r2!5783)))

(assert (=> d!2300567 (= (lemmaFindConcatSeparationEquivalentToExists!3056 r2!5783 rTail!78 s!13591) lt!2628832)))

(declare-fun bs!1934100 () Bool)

(assert (= bs!1934100 d!2300567))

(assert (=> bs!1934100 m!8074692))

(declare-fun m!8074970 () Bool)

(assert (=> bs!1934100 m!8074970))

(assert (=> bs!1934100 m!8074692))

(declare-fun m!8074972 () Bool)

(assert (=> bs!1934100 m!8074972))

(declare-fun m!8074974 () Bool)

(assert (=> bs!1934100 m!8074974))

(assert (=> bs!1934100 m!8074714))

(assert (=> b!7483722 d!2300567))

(declare-fun b!7484239 () Bool)

(declare-fun e!4463919 () Option!17176)

(assert (=> b!7484239 (= e!4463919 None!17175)))

(declare-fun b!7484240 () Bool)

(declare-fun e!4463917 () Bool)

(declare-fun lt!2628847 () Option!17176)

(assert (=> b!7484240 (= e!4463917 (not (isDefined!13865 lt!2628847)))))

(declare-fun d!2300575 () Bool)

(assert (=> d!2300575 e!4463917))

(declare-fun res!3002819 () Bool)

(assert (=> d!2300575 (=> res!3002819 e!4463917)))

(declare-fun e!4463920 () Bool)

(assert (=> d!2300575 (= res!3002819 e!4463920)))

(declare-fun res!3002818 () Bool)

(assert (=> d!2300575 (=> (not res!3002818) (not e!4463920))))

(assert (=> d!2300575 (= res!3002818 (isDefined!13865 lt!2628847))))

(declare-fun e!4463918 () Option!17176)

(assert (=> d!2300575 (= lt!2628847 e!4463918)))

(declare-fun c!1382350 () Bool)

(declare-fun e!4463916 () Bool)

(assert (=> d!2300575 (= c!1382350 e!4463916)))

(declare-fun res!3002822 () Bool)

(assert (=> d!2300575 (=> (not res!3002822) (not e!4463916))))

(assert (=> d!2300575 (= res!3002822 (matchR!9383 r2!5783 Nil!72211))))

(assert (=> d!2300575 (validRegex!10133 r2!5783)))

(assert (=> d!2300575 (= (findConcatSeparation!3298 r2!5783 rTail!78 Nil!72211 s!13591 s!13591) lt!2628847)))

(declare-fun b!7484241 () Bool)

(assert (=> b!7484241 (= e!4463918 e!4463919)))

(declare-fun c!1382349 () Bool)

(assert (=> b!7484241 (= c!1382349 ((_ is Nil!72211) s!13591))))

(declare-fun b!7484242 () Bool)

(declare-fun ++!17232 (List!72335 List!72335) List!72335)

(assert (=> b!7484242 (= e!4463920 (= (++!17232 (_1!37647 (get!25292 lt!2628847)) (_2!37647 (get!25292 lt!2628847))) s!13591))))

(declare-fun b!7484243 () Bool)

(assert (=> b!7484243 (= e!4463918 (Some!17175 (tuple2!68689 Nil!72211 s!13591)))))

(declare-fun b!7484244 () Bool)

(declare-fun res!3002821 () Bool)

(assert (=> b!7484244 (=> (not res!3002821) (not e!4463920))))

(assert (=> b!7484244 (= res!3002821 (matchR!9383 r2!5783 (_1!37647 (get!25292 lt!2628847))))))

(declare-fun b!7484245 () Bool)

(declare-fun lt!2628846 () Unit!166073)

(declare-fun lt!2628848 () Unit!166073)

(assert (=> b!7484245 (= lt!2628846 lt!2628848)))

(assert (=> b!7484245 (= (++!17232 (++!17232 Nil!72211 (Cons!72211 (h!78659 s!13591) Nil!72211)) (t!386904 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3108 (List!72335 C!39512 List!72335 List!72335) Unit!166073)

(assert (=> b!7484245 (= lt!2628848 (lemmaMoveElementToOtherListKeepsConcatEq!3108 Nil!72211 (h!78659 s!13591) (t!386904 s!13591) s!13591))))

(assert (=> b!7484245 (= e!4463919 (findConcatSeparation!3298 r2!5783 rTail!78 (++!17232 Nil!72211 (Cons!72211 (h!78659 s!13591) Nil!72211)) (t!386904 s!13591) s!13591))))

(declare-fun b!7484246 () Bool)

(assert (=> b!7484246 (= e!4463916 (matchR!9383 rTail!78 s!13591))))

(declare-fun b!7484247 () Bool)

(declare-fun res!3002820 () Bool)

(assert (=> b!7484247 (=> (not res!3002820) (not e!4463920))))

(assert (=> b!7484247 (= res!3002820 (matchR!9383 rTail!78 (_2!37647 (get!25292 lt!2628847))))))

(assert (= (and d!2300575 res!3002822) b!7484246))

(assert (= (and d!2300575 c!1382350) b!7484243))

(assert (= (and d!2300575 (not c!1382350)) b!7484241))

(assert (= (and b!7484241 c!1382349) b!7484239))

(assert (= (and b!7484241 (not c!1382349)) b!7484245))

(assert (= (and d!2300575 res!3002818) b!7484244))

(assert (= (and b!7484244 res!3002821) b!7484247))

(assert (= (and b!7484247 res!3002820) b!7484242))

(assert (= (and d!2300575 (not res!3002819)) b!7484240))

(declare-fun m!8074984 () Bool)

(assert (=> b!7484242 m!8074984))

(declare-fun m!8074986 () Bool)

(assert (=> b!7484242 m!8074986))

(declare-fun m!8074988 () Bool)

(assert (=> d!2300575 m!8074988))

(declare-fun m!8074990 () Bool)

(assert (=> d!2300575 m!8074990))

(assert (=> d!2300575 m!8074714))

(declare-fun m!8074992 () Bool)

(assert (=> b!7484245 m!8074992))

(assert (=> b!7484245 m!8074992))

(declare-fun m!8074994 () Bool)

(assert (=> b!7484245 m!8074994))

(declare-fun m!8074996 () Bool)

(assert (=> b!7484245 m!8074996))

(assert (=> b!7484245 m!8074992))

(declare-fun m!8074998 () Bool)

(assert (=> b!7484245 m!8074998))

(assert (=> b!7484240 m!8074988))

(assert (=> b!7484244 m!8074984))

(declare-fun m!8075000 () Bool)

(assert (=> b!7484244 m!8075000))

(declare-fun m!8075002 () Bool)

(assert (=> b!7484246 m!8075002))

(assert (=> b!7484247 m!8074984))

(declare-fun m!8075004 () Bool)

(assert (=> b!7484247 m!8075004))

(assert (=> b!7483722 d!2300575))

(declare-fun d!2300583 () Bool)

(assert (=> d!2300583 (= (get!25292 lt!2628780) (v!54304 lt!2628780))))

(assert (=> b!7483722 d!2300583))

(declare-fun bs!1934116 () Bool)

(declare-fun b!7484256 () Bool)

(assert (= bs!1934116 (and b!7484256 b!7483730)))

(declare-fun lambda!463866 () Int)

(assert (=> bs!1934116 (not (= lambda!463866 lambda!463821))))

(declare-fun bs!1934117 () Bool)

(assert (= bs!1934117 (and b!7484256 d!2300567)))

(assert (=> bs!1934117 (not (= lambda!463866 lambda!463864))))

(declare-fun bs!1934118 () Bool)

(assert (= bs!1934118 (and b!7484256 b!7484071)))

(assert (=> bs!1934118 (not (= lambda!463866 lambda!463843))))

(declare-fun bs!1934119 () Bool)

(assert (= bs!1934119 (and b!7484256 b!7483995)))

(assert (=> bs!1934119 (= (and (= (_1!37647 lt!2628787) s!13591) (= (reg!19948 r1!5845) (reg!19948 lt!2628791)) (= r1!5845 lt!2628791)) (= lambda!463866 lambda!463838))))

(declare-fun bs!1934120 () Bool)

(assert (= bs!1934120 (and b!7484256 b!7484073)))

(assert (=> bs!1934120 (= (and (= (_1!37647 lt!2628787) s!13591) (= (reg!19948 r1!5845) (reg!19948 lt!2628781)) (= r1!5845 lt!2628781)) (= lambda!463866 lambda!463841))))

(declare-fun bs!1934121 () Bool)

(assert (= bs!1934121 (and b!7484256 b!7483948)))

(assert (=> bs!1934121 (= (and (= (_1!37647 lt!2628787) s!13591) (= (reg!19948 r1!5845) (reg!19948 lt!2628775)) (= r1!5845 lt!2628775)) (= lambda!463866 lambda!463832))))

(declare-fun bs!1934122 () Bool)

(assert (= bs!1934122 (and b!7484256 b!7483946)))

(assert (=> bs!1934122 (not (= lambda!463866 lambda!463833))))

(declare-fun bs!1934123 () Bool)

(assert (= bs!1934123 (and b!7484256 b!7484095)))

(assert (=> bs!1934123 (= (and (= (_1!37647 lt!2628787) s!13591) (= (reg!19948 r1!5845) (reg!19948 lt!2628777)) (= r1!5845 lt!2628777)) (= lambda!463866 lambda!463845))))

(declare-fun bs!1934124 () Bool)

(assert (= bs!1934124 (and b!7484256 b!7483722)))

(assert (=> bs!1934124 (not (= lambda!463866 lambda!463822))))

(declare-fun bs!1934125 () Bool)

(assert (= bs!1934125 (and b!7484256 b!7484093)))

(assert (=> bs!1934125 (not (= lambda!463866 lambda!463847))))

(assert (=> bs!1934124 (not (= lambda!463866 lambda!463823))))

(declare-fun bs!1934126 () Bool)

(assert (= bs!1934126 (and b!7484256 d!2300547)))

(assert (=> bs!1934126 (not (= lambda!463866 lambda!463858))))

(assert (=> bs!1934126 (not (= lambda!463866 lambda!463856))))

(assert (=> bs!1934116 (not (= lambda!463866 lambda!463820))))

(declare-fun bs!1934127 () Bool)

(assert (= bs!1934127 (and b!7484256 b!7483993)))

(assert (=> bs!1934127 (not (= lambda!463866 lambda!463839))))

(assert (=> b!7484256 true))

(assert (=> b!7484256 true))

(declare-fun bs!1934128 () Bool)

(declare-fun b!7484254 () Bool)

(assert (= bs!1934128 (and b!7484254 b!7483730)))

(declare-fun lambda!463867 () Int)

(assert (=> bs!1934128 (= (and (= (_1!37647 lt!2628787) s!13591) (= (regOne!39750 r1!5845) lt!2628779) (= (regTwo!39750 r1!5845) rTail!78)) (= lambda!463867 lambda!463821))))

(declare-fun bs!1934129 () Bool)

(assert (= bs!1934129 (and b!7484254 d!2300567)))

(assert (=> bs!1934129 (not (= lambda!463867 lambda!463864))))

(declare-fun bs!1934130 () Bool)

(assert (= bs!1934130 (and b!7484254 b!7484071)))

(assert (=> bs!1934130 (= (and (= (_1!37647 lt!2628787) s!13591) (= (regOne!39750 r1!5845) (regOne!39750 lt!2628781)) (= (regTwo!39750 r1!5845) (regTwo!39750 lt!2628781))) (= lambda!463867 lambda!463843))))

(declare-fun bs!1934131 () Bool)

(assert (= bs!1934131 (and b!7484254 b!7484256)))

(assert (=> bs!1934131 (not (= lambda!463867 lambda!463866))))

(declare-fun bs!1934132 () Bool)

(assert (= bs!1934132 (and b!7484254 b!7483995)))

(assert (=> bs!1934132 (not (= lambda!463867 lambda!463838))))

(declare-fun bs!1934133 () Bool)

(assert (= bs!1934133 (and b!7484254 b!7484073)))

(assert (=> bs!1934133 (not (= lambda!463867 lambda!463841))))

(declare-fun bs!1934134 () Bool)

(assert (= bs!1934134 (and b!7484254 b!7483948)))

(assert (=> bs!1934134 (not (= lambda!463867 lambda!463832))))

(declare-fun bs!1934135 () Bool)

(assert (= bs!1934135 (and b!7484254 b!7483946)))

(assert (=> bs!1934135 (= (and (= (_1!37647 lt!2628787) s!13591) (= (regOne!39750 r1!5845) (regOne!39750 lt!2628775)) (= (regTwo!39750 r1!5845) (regTwo!39750 lt!2628775))) (= lambda!463867 lambda!463833))))

(declare-fun bs!1934136 () Bool)

(assert (= bs!1934136 (and b!7484254 b!7484095)))

(assert (=> bs!1934136 (not (= lambda!463867 lambda!463845))))

(declare-fun bs!1934137 () Bool)

(assert (= bs!1934137 (and b!7484254 b!7483722)))

(assert (=> bs!1934137 (not (= lambda!463867 lambda!463822))))

(declare-fun bs!1934138 () Bool)

(assert (= bs!1934138 (and b!7484254 b!7484093)))

(assert (=> bs!1934138 (= (and (= (_1!37647 lt!2628787) s!13591) (= (regOne!39750 r1!5845) (regOne!39750 lt!2628777)) (= (regTwo!39750 r1!5845) (regTwo!39750 lt!2628777))) (= lambda!463867 lambda!463847))))

(assert (=> bs!1934137 (= (and (= (_1!37647 lt!2628787) s!13591) (= (regOne!39750 r1!5845) r2!5783) (= (regTwo!39750 r1!5845) rTail!78)) (= lambda!463867 lambda!463823))))

(declare-fun bs!1934139 () Bool)

(assert (= bs!1934139 (and b!7484254 d!2300547)))

(assert (=> bs!1934139 (= (and (= (_1!37647 lt!2628787) s!13591) (= (regOne!39750 r1!5845) r2!5783) (= (regTwo!39750 r1!5845) rTail!78)) (= lambda!463867 lambda!463858))))

(assert (=> bs!1934139 (not (= lambda!463867 lambda!463856))))

(assert (=> bs!1934128 (not (= lambda!463867 lambda!463820))))

(declare-fun bs!1934140 () Bool)

(assert (= bs!1934140 (and b!7484254 b!7483993)))

(assert (=> bs!1934140 (= (and (= (_1!37647 lt!2628787) s!13591) (= (regOne!39750 r1!5845) (regOne!39750 lt!2628791)) (= (regTwo!39750 r1!5845) (regTwo!39750 lt!2628791))) (= lambda!463867 lambda!463839))))

(assert (=> b!7484254 true))

(assert (=> b!7484254 true))

(declare-fun b!7484248 () Bool)

(declare-fun e!4463924 () Bool)

(declare-fun e!4463921 () Bool)

(assert (=> b!7484248 (= e!4463924 e!4463921)))

(declare-fun res!3002825 () Bool)

(assert (=> b!7484248 (= res!3002825 (not ((_ is EmptyLang!19619) r1!5845)))))

(assert (=> b!7484248 (=> (not res!3002825) (not e!4463921))))

(declare-fun bm!687046 () Bool)

(declare-fun c!1382351 () Bool)

(declare-fun call!687051 () Bool)

(assert (=> bm!687046 (= call!687051 (Exists!4238 (ite c!1382351 lambda!463866 lambda!463867)))))

(declare-fun b!7484249 () Bool)

(declare-fun c!1382352 () Bool)

(assert (=> b!7484249 (= c!1382352 ((_ is Union!19619) r1!5845))))

(declare-fun e!4463927 () Bool)

(declare-fun e!4463925 () Bool)

(assert (=> b!7484249 (= e!4463927 e!4463925)))

(declare-fun b!7484250 () Bool)

(declare-fun res!3002824 () Bool)

(declare-fun e!4463922 () Bool)

(assert (=> b!7484250 (=> res!3002824 e!4463922)))

(declare-fun call!687052 () Bool)

(assert (=> b!7484250 (= res!3002824 call!687052)))

(declare-fun e!4463923 () Bool)

(assert (=> b!7484250 (= e!4463923 e!4463922)))

(declare-fun bm!687047 () Bool)

(assert (=> bm!687047 (= call!687052 (isEmpty!41228 (_1!37647 lt!2628787)))))

(declare-fun b!7484251 () Bool)

(declare-fun e!4463926 () Bool)

(assert (=> b!7484251 (= e!4463925 e!4463926)))

(declare-fun res!3002823 () Bool)

(assert (=> b!7484251 (= res!3002823 (matchRSpec!4298 (regOne!39751 r1!5845) (_1!37647 lt!2628787)))))

(assert (=> b!7484251 (=> res!3002823 e!4463926)))

(declare-fun b!7484252 () Bool)

(declare-fun c!1382354 () Bool)

(assert (=> b!7484252 (= c!1382354 ((_ is ElementMatch!19619) r1!5845))))

(assert (=> b!7484252 (= e!4463921 e!4463927)))

(declare-fun b!7484253 () Bool)

(assert (=> b!7484253 (= e!4463925 e!4463923)))

(assert (=> b!7484253 (= c!1382351 ((_ is Star!19619) r1!5845))))

(declare-fun d!2300585 () Bool)

(declare-fun c!1382353 () Bool)

(assert (=> d!2300585 (= c!1382353 ((_ is EmptyExpr!19619) r1!5845))))

(assert (=> d!2300585 (= (matchRSpec!4298 r1!5845 (_1!37647 lt!2628787)) e!4463924)))

(assert (=> b!7484254 (= e!4463923 call!687051)))

(declare-fun b!7484255 () Bool)

(assert (=> b!7484255 (= e!4463924 call!687052)))

(assert (=> b!7484256 (= e!4463922 call!687051)))

(declare-fun b!7484257 () Bool)

(assert (=> b!7484257 (= e!4463927 (= (_1!37647 lt!2628787) (Cons!72211 (c!1382224 r1!5845) Nil!72211)))))

(declare-fun b!7484258 () Bool)

(assert (=> b!7484258 (= e!4463926 (matchRSpec!4298 (regTwo!39751 r1!5845) (_1!37647 lt!2628787)))))

(assert (= (and d!2300585 c!1382353) b!7484255))

(assert (= (and d!2300585 (not c!1382353)) b!7484248))

(assert (= (and b!7484248 res!3002825) b!7484252))

(assert (= (and b!7484252 c!1382354) b!7484257))

(assert (= (and b!7484252 (not c!1382354)) b!7484249))

(assert (= (and b!7484249 c!1382352) b!7484251))

(assert (= (and b!7484249 (not c!1382352)) b!7484253))

(assert (= (and b!7484251 (not res!3002823)) b!7484258))

(assert (= (and b!7484253 c!1382351) b!7484250))

(assert (= (and b!7484253 (not c!1382351)) b!7484254))

(assert (= (and b!7484250 (not res!3002824)) b!7484256))

(assert (= (or b!7484256 b!7484254) bm!687046))

(assert (= (or b!7484255 b!7484250) bm!687047))

(declare-fun m!8075034 () Bool)

(assert (=> bm!687046 m!8075034))

(assert (=> bm!687047 m!8074942))

(declare-fun m!8075036 () Bool)

(assert (=> b!7484251 m!8075036))

(declare-fun m!8075038 () Bool)

(assert (=> b!7484258 m!8075038))

(assert (=> b!7483736 d!2300585))

(declare-fun d!2300591 () Bool)

(assert (=> d!2300591 (= (matchR!9383 r2!5783 (_1!37647 lt!2628787)) (matchRSpec!4298 r2!5783 (_1!37647 lt!2628787)))))

(declare-fun lt!2628853 () Unit!166073)

(assert (=> d!2300591 (= lt!2628853 (choose!57859 r2!5783 (_1!37647 lt!2628787)))))

(assert (=> d!2300591 (validRegex!10133 r2!5783)))

(assert (=> d!2300591 (= (mainMatchTheorem!4292 r2!5783 (_1!37647 lt!2628787)) lt!2628853)))

(declare-fun bs!1934141 () Bool)

(assert (= bs!1934141 d!2300591))

(assert (=> bs!1934141 m!8074684))

(assert (=> bs!1934141 m!8074710))

(declare-fun m!8075040 () Bool)

(assert (=> bs!1934141 m!8075040))

(assert (=> bs!1934141 m!8074714))

(assert (=> b!7483736 d!2300591))

(declare-fun bs!1934142 () Bool)

(declare-fun b!7484290 () Bool)

(assert (= bs!1934142 (and b!7484290 b!7483730)))

(declare-fun lambda!463868 () Int)

(assert (=> bs!1934142 (not (= lambda!463868 lambda!463821))))

(declare-fun bs!1934143 () Bool)

(assert (= bs!1934143 (and b!7484290 d!2300567)))

(assert (=> bs!1934143 (not (= lambda!463868 lambda!463864))))

(declare-fun bs!1934144 () Bool)

(assert (= bs!1934144 (and b!7484290 b!7484071)))

(assert (=> bs!1934144 (not (= lambda!463868 lambda!463843))))

(declare-fun bs!1934145 () Bool)

(assert (= bs!1934145 (and b!7484290 b!7484256)))

(assert (=> bs!1934145 (= (and (= (reg!19948 lt!2628779) (reg!19948 r1!5845)) (= lt!2628779 r1!5845)) (= lambda!463868 lambda!463866))))

(declare-fun bs!1934146 () Bool)

(assert (= bs!1934146 (and b!7484290 b!7484073)))

(assert (=> bs!1934146 (= (and (= (_1!37647 lt!2628787) s!13591) (= (reg!19948 lt!2628779) (reg!19948 lt!2628781)) (= lt!2628779 lt!2628781)) (= lambda!463868 lambda!463841))))

(declare-fun bs!1934147 () Bool)

(assert (= bs!1934147 (and b!7484290 b!7483948)))

(assert (=> bs!1934147 (= (and (= (_1!37647 lt!2628787) s!13591) (= (reg!19948 lt!2628779) (reg!19948 lt!2628775)) (= lt!2628779 lt!2628775)) (= lambda!463868 lambda!463832))))

(declare-fun bs!1934148 () Bool)

(assert (= bs!1934148 (and b!7484290 b!7483946)))

(assert (=> bs!1934148 (not (= lambda!463868 lambda!463833))))

(declare-fun bs!1934149 () Bool)

(assert (= bs!1934149 (and b!7484290 b!7484095)))

(assert (=> bs!1934149 (= (and (= (_1!37647 lt!2628787) s!13591) (= (reg!19948 lt!2628779) (reg!19948 lt!2628777)) (= lt!2628779 lt!2628777)) (= lambda!463868 lambda!463845))))

(declare-fun bs!1934150 () Bool)

(assert (= bs!1934150 (and b!7484290 b!7483722)))

(assert (=> bs!1934150 (not (= lambda!463868 lambda!463822))))

(declare-fun bs!1934151 () Bool)

(assert (= bs!1934151 (and b!7484290 b!7484093)))

(assert (=> bs!1934151 (not (= lambda!463868 lambda!463847))))

(assert (=> bs!1934150 (not (= lambda!463868 lambda!463823))))

(declare-fun bs!1934152 () Bool)

(assert (= bs!1934152 (and b!7484290 d!2300547)))

(assert (=> bs!1934152 (not (= lambda!463868 lambda!463858))))

(assert (=> bs!1934152 (not (= lambda!463868 lambda!463856))))

(declare-fun bs!1934153 () Bool)

(assert (= bs!1934153 (and b!7484290 b!7483995)))

(assert (=> bs!1934153 (= (and (= (_1!37647 lt!2628787) s!13591) (= (reg!19948 lt!2628779) (reg!19948 lt!2628791)) (= lt!2628779 lt!2628791)) (= lambda!463868 lambda!463838))))

(declare-fun bs!1934154 () Bool)

(assert (= bs!1934154 (and b!7484290 b!7484254)))

(assert (=> bs!1934154 (not (= lambda!463868 lambda!463867))))

(assert (=> bs!1934142 (not (= lambda!463868 lambda!463820))))

(declare-fun bs!1934155 () Bool)

(assert (= bs!1934155 (and b!7484290 b!7483993)))

(assert (=> bs!1934155 (not (= lambda!463868 lambda!463839))))

(assert (=> b!7484290 true))

(assert (=> b!7484290 true))

(declare-fun bs!1934156 () Bool)

(declare-fun b!7484288 () Bool)

(assert (= bs!1934156 (and b!7484288 b!7483730)))

(declare-fun lambda!463871 () Int)

(assert (=> bs!1934156 (= (and (= (_1!37647 lt!2628787) s!13591) (= (regOne!39750 lt!2628779) lt!2628779) (= (regTwo!39750 lt!2628779) rTail!78)) (= lambda!463871 lambda!463821))))

(declare-fun bs!1934157 () Bool)

(assert (= bs!1934157 (and b!7484288 d!2300567)))

(assert (=> bs!1934157 (not (= lambda!463871 lambda!463864))))

(declare-fun bs!1934158 () Bool)

(assert (= bs!1934158 (and b!7484288 b!7484071)))

(assert (=> bs!1934158 (= (and (= (_1!37647 lt!2628787) s!13591) (= (regOne!39750 lt!2628779) (regOne!39750 lt!2628781)) (= (regTwo!39750 lt!2628779) (regTwo!39750 lt!2628781))) (= lambda!463871 lambda!463843))))

(declare-fun bs!1934159 () Bool)

(assert (= bs!1934159 (and b!7484288 b!7484256)))

(assert (=> bs!1934159 (not (= lambda!463871 lambda!463866))))

(declare-fun bs!1934160 () Bool)

(assert (= bs!1934160 (and b!7484288 b!7483948)))

(assert (=> bs!1934160 (not (= lambda!463871 lambda!463832))))

(declare-fun bs!1934161 () Bool)

(assert (= bs!1934161 (and b!7484288 b!7483946)))

(assert (=> bs!1934161 (= (and (= (_1!37647 lt!2628787) s!13591) (= (regOne!39750 lt!2628779) (regOne!39750 lt!2628775)) (= (regTwo!39750 lt!2628779) (regTwo!39750 lt!2628775))) (= lambda!463871 lambda!463833))))

(declare-fun bs!1934162 () Bool)

(assert (= bs!1934162 (and b!7484288 b!7484095)))

(assert (=> bs!1934162 (not (= lambda!463871 lambda!463845))))

(declare-fun bs!1934163 () Bool)

(assert (= bs!1934163 (and b!7484288 b!7483722)))

(assert (=> bs!1934163 (not (= lambda!463871 lambda!463822))))

(declare-fun bs!1934164 () Bool)

(assert (= bs!1934164 (and b!7484288 b!7484093)))

(assert (=> bs!1934164 (= (and (= (_1!37647 lt!2628787) s!13591) (= (regOne!39750 lt!2628779) (regOne!39750 lt!2628777)) (= (regTwo!39750 lt!2628779) (regTwo!39750 lt!2628777))) (= lambda!463871 lambda!463847))))

(assert (=> bs!1934163 (= (and (= (_1!37647 lt!2628787) s!13591) (= (regOne!39750 lt!2628779) r2!5783) (= (regTwo!39750 lt!2628779) rTail!78)) (= lambda!463871 lambda!463823))))

(declare-fun bs!1934165 () Bool)

(assert (= bs!1934165 (and b!7484288 d!2300547)))

(assert (=> bs!1934165 (= (and (= (_1!37647 lt!2628787) s!13591) (= (regOne!39750 lt!2628779) r2!5783) (= (regTwo!39750 lt!2628779) rTail!78)) (= lambda!463871 lambda!463858))))

(assert (=> bs!1934165 (not (= lambda!463871 lambda!463856))))

(declare-fun bs!1934166 () Bool)

(assert (= bs!1934166 (and b!7484288 b!7483995)))

(assert (=> bs!1934166 (not (= lambda!463871 lambda!463838))))

(declare-fun bs!1934167 () Bool)

(assert (= bs!1934167 (and b!7484288 b!7484254)))

(assert (=> bs!1934167 (= (and (= (regOne!39750 lt!2628779) (regOne!39750 r1!5845)) (= (regTwo!39750 lt!2628779) (regTwo!39750 r1!5845))) (= lambda!463871 lambda!463867))))

(declare-fun bs!1934168 () Bool)

(assert (= bs!1934168 (and b!7484288 b!7484290)))

(assert (=> bs!1934168 (not (= lambda!463871 lambda!463868))))

(declare-fun bs!1934169 () Bool)

(assert (= bs!1934169 (and b!7484288 b!7484073)))

(assert (=> bs!1934169 (not (= lambda!463871 lambda!463841))))

(assert (=> bs!1934156 (not (= lambda!463871 lambda!463820))))

(declare-fun bs!1934170 () Bool)

(assert (= bs!1934170 (and b!7484288 b!7483993)))

(assert (=> bs!1934170 (= (and (= (_1!37647 lt!2628787) s!13591) (= (regOne!39750 lt!2628779) (regOne!39750 lt!2628791)) (= (regTwo!39750 lt!2628779) (regTwo!39750 lt!2628791))) (= lambda!463871 lambda!463839))))

(assert (=> b!7484288 true))

(assert (=> b!7484288 true))

(declare-fun b!7484282 () Bool)

(declare-fun e!4463943 () Bool)

(declare-fun e!4463940 () Bool)

(assert (=> b!7484282 (= e!4463943 e!4463940)))

(declare-fun res!3002841 () Bool)

(assert (=> b!7484282 (= res!3002841 (not ((_ is EmptyLang!19619) lt!2628779)))))

(assert (=> b!7484282 (=> (not res!3002841) (not e!4463940))))

(declare-fun c!1382360 () Bool)

(declare-fun bm!687049 () Bool)

(declare-fun call!687054 () Bool)

(assert (=> bm!687049 (= call!687054 (Exists!4238 (ite c!1382360 lambda!463868 lambda!463871)))))

(declare-fun b!7484283 () Bool)

(declare-fun c!1382361 () Bool)

(assert (=> b!7484283 (= c!1382361 ((_ is Union!19619) lt!2628779))))

(declare-fun e!4463946 () Bool)

(declare-fun e!4463944 () Bool)

(assert (=> b!7484283 (= e!4463946 e!4463944)))

(declare-fun b!7484284 () Bool)

(declare-fun res!3002840 () Bool)

(declare-fun e!4463941 () Bool)

(assert (=> b!7484284 (=> res!3002840 e!4463941)))

(declare-fun call!687055 () Bool)

(assert (=> b!7484284 (= res!3002840 call!687055)))

(declare-fun e!4463942 () Bool)

(assert (=> b!7484284 (= e!4463942 e!4463941)))

(declare-fun bm!687050 () Bool)

(assert (=> bm!687050 (= call!687055 (isEmpty!41228 (_1!37647 lt!2628787)))))

(declare-fun b!7484285 () Bool)

(declare-fun e!4463945 () Bool)

(assert (=> b!7484285 (= e!4463944 e!4463945)))

(declare-fun res!3002839 () Bool)

(assert (=> b!7484285 (= res!3002839 (matchRSpec!4298 (regOne!39751 lt!2628779) (_1!37647 lt!2628787)))))

(assert (=> b!7484285 (=> res!3002839 e!4463945)))

(declare-fun b!7484286 () Bool)

(declare-fun c!1382363 () Bool)

(assert (=> b!7484286 (= c!1382363 ((_ is ElementMatch!19619) lt!2628779))))

(assert (=> b!7484286 (= e!4463940 e!4463946)))

(declare-fun b!7484287 () Bool)

(assert (=> b!7484287 (= e!4463944 e!4463942)))

(assert (=> b!7484287 (= c!1382360 ((_ is Star!19619) lt!2628779))))

(declare-fun d!2300593 () Bool)

(declare-fun c!1382362 () Bool)

(assert (=> d!2300593 (= c!1382362 ((_ is EmptyExpr!19619) lt!2628779))))

(assert (=> d!2300593 (= (matchRSpec!4298 lt!2628779 (_1!37647 lt!2628787)) e!4463943)))

(assert (=> b!7484288 (= e!4463942 call!687054)))

(declare-fun b!7484289 () Bool)

(assert (=> b!7484289 (= e!4463943 call!687055)))

(assert (=> b!7484290 (= e!4463941 call!687054)))

(declare-fun b!7484291 () Bool)

(assert (=> b!7484291 (= e!4463946 (= (_1!37647 lt!2628787) (Cons!72211 (c!1382224 lt!2628779) Nil!72211)))))

(declare-fun b!7484292 () Bool)

(assert (=> b!7484292 (= e!4463945 (matchRSpec!4298 (regTwo!39751 lt!2628779) (_1!37647 lt!2628787)))))

(assert (= (and d!2300593 c!1382362) b!7484289))

(assert (= (and d!2300593 (not c!1382362)) b!7484282))

(assert (= (and b!7484282 res!3002841) b!7484286))

(assert (= (and b!7484286 c!1382363) b!7484291))

(assert (= (and b!7484286 (not c!1382363)) b!7484283))

(assert (= (and b!7484283 c!1382361) b!7484285))

(assert (= (and b!7484283 (not c!1382361)) b!7484287))

(assert (= (and b!7484285 (not res!3002839)) b!7484292))

(assert (= (and b!7484287 c!1382360) b!7484284))

(assert (= (and b!7484287 (not c!1382360)) b!7484288))

(assert (= (and b!7484284 (not res!3002840)) b!7484290))

(assert (= (or b!7484290 b!7484288) bm!687049))

(assert (= (or b!7484289 b!7484284) bm!687050))

(declare-fun m!8075042 () Bool)

(assert (=> bm!687049 m!8075042))

(assert (=> bm!687050 m!8074942))

(declare-fun m!8075044 () Bool)

(assert (=> b!7484285 m!8075044))

(declare-fun m!8075046 () Bool)

(assert (=> b!7484292 m!8075046))

(assert (=> b!7483736 d!2300593))

(declare-fun b!7484301 () Bool)

(declare-fun e!4463951 () Bool)

(declare-fun lt!2628857 () Bool)

(declare-fun call!687056 () Bool)

(assert (=> b!7484301 (= e!4463951 (= lt!2628857 call!687056))))

(declare-fun b!7484302 () Bool)

(declare-fun e!4463957 () Bool)

(assert (=> b!7484302 (= e!4463957 (= (head!15356 (_1!37647 lt!2628787)) (c!1382224 r1!5845)))))

(declare-fun b!7484303 () Bool)

(declare-fun e!4463952 () Bool)

(assert (=> b!7484303 (= e!4463952 (nullable!8556 r1!5845))))

(declare-fun b!7484304 () Bool)

(declare-fun res!3002852 () Bool)

(assert (=> b!7484304 (=> (not res!3002852) (not e!4463957))))

(assert (=> b!7484304 (= res!3002852 (not call!687056))))

(declare-fun b!7484306 () Bool)

(declare-fun e!4463956 () Bool)

(assert (=> b!7484306 (= e!4463956 (not lt!2628857))))

(declare-fun b!7484307 () Bool)

(declare-fun e!4463954 () Bool)

(assert (=> b!7484307 (= e!4463954 (not (= (head!15356 (_1!37647 lt!2628787)) (c!1382224 r1!5845))))))

(declare-fun b!7484308 () Bool)

(declare-fun res!3002857 () Bool)

(assert (=> b!7484308 (=> (not res!3002857) (not e!4463957))))

(assert (=> b!7484308 (= res!3002857 (isEmpty!41228 (tail!14925 (_1!37647 lt!2628787))))))

(declare-fun bm!687051 () Bool)

(assert (=> bm!687051 (= call!687056 (isEmpty!41228 (_1!37647 lt!2628787)))))

(declare-fun b!7484309 () Bool)

(declare-fun res!3002856 () Bool)

(assert (=> b!7484309 (=> res!3002856 e!4463954)))

(assert (=> b!7484309 (= res!3002856 (not (isEmpty!41228 (tail!14925 (_1!37647 lt!2628787)))))))

(declare-fun b!7484310 () Bool)

(assert (=> b!7484310 (= e!4463952 (matchR!9383 (derivativeStep!5616 r1!5845 (head!15356 (_1!37647 lt!2628787))) (tail!14925 (_1!37647 lt!2628787))))))

(declare-fun b!7484311 () Bool)

(assert (=> b!7484311 (= e!4463951 e!4463956)))

(declare-fun c!1382364 () Bool)

(assert (=> b!7484311 (= c!1382364 ((_ is EmptyLang!19619) r1!5845))))

(declare-fun b!7484312 () Bool)

(declare-fun e!4463953 () Bool)

(assert (=> b!7484312 (= e!4463953 e!4463954)))

(declare-fun res!3002855 () Bool)

(assert (=> b!7484312 (=> res!3002855 e!4463954)))

(assert (=> b!7484312 (= res!3002855 call!687056)))

(declare-fun d!2300595 () Bool)

(assert (=> d!2300595 e!4463951))

(declare-fun c!1382365 () Bool)

(assert (=> d!2300595 (= c!1382365 ((_ is EmptyExpr!19619) r1!5845))))

(assert (=> d!2300595 (= lt!2628857 e!4463952)))

(declare-fun c!1382366 () Bool)

(assert (=> d!2300595 (= c!1382366 (isEmpty!41228 (_1!37647 lt!2628787)))))

(assert (=> d!2300595 (validRegex!10133 r1!5845)))

(assert (=> d!2300595 (= (matchR!9383 r1!5845 (_1!37647 lt!2628787)) lt!2628857)))

(declare-fun b!7484305 () Bool)

(declare-fun e!4463955 () Bool)

(assert (=> b!7484305 (= e!4463955 e!4463953)))

(declare-fun res!3002853 () Bool)

(assert (=> b!7484305 (=> (not res!3002853) (not e!4463953))))

(assert (=> b!7484305 (= res!3002853 (not lt!2628857))))

(declare-fun b!7484313 () Bool)

(declare-fun res!3002851 () Bool)

(assert (=> b!7484313 (=> res!3002851 e!4463955)))

(assert (=> b!7484313 (= res!3002851 e!4463957)))

(declare-fun res!3002854 () Bool)

(assert (=> b!7484313 (=> (not res!3002854) (not e!4463957))))

(assert (=> b!7484313 (= res!3002854 lt!2628857)))

(declare-fun b!7484314 () Bool)

(declare-fun res!3002850 () Bool)

(assert (=> b!7484314 (=> res!3002850 e!4463955)))

(assert (=> b!7484314 (= res!3002850 (not ((_ is ElementMatch!19619) r1!5845)))))

(assert (=> b!7484314 (= e!4463956 e!4463955)))

(assert (= (and d!2300595 c!1382366) b!7484303))

(assert (= (and d!2300595 (not c!1382366)) b!7484310))

(assert (= (and d!2300595 c!1382365) b!7484301))

(assert (= (and d!2300595 (not c!1382365)) b!7484311))

(assert (= (and b!7484311 c!1382364) b!7484306))

(assert (= (and b!7484311 (not c!1382364)) b!7484314))

(assert (= (and b!7484314 (not res!3002850)) b!7484313))

(assert (= (and b!7484313 res!3002854) b!7484304))

(assert (= (and b!7484304 res!3002852) b!7484308))

(assert (= (and b!7484308 res!3002857) b!7484302))

(assert (= (and b!7484313 (not res!3002851)) b!7484305))

(assert (= (and b!7484305 res!3002853) b!7484312))

(assert (= (and b!7484312 (not res!3002855)) b!7484309))

(assert (= (and b!7484309 (not res!3002856)) b!7484307))

(assert (= (or b!7484301 b!7484304 b!7484312) bm!687051))

(assert (=> b!7484309 m!8074938))

(assert (=> b!7484309 m!8074938))

(assert (=> b!7484309 m!8074940))

(assert (=> bm!687051 m!8074942))

(assert (=> b!7484307 m!8074944))

(assert (=> d!2300595 m!8074942))

(assert (=> d!2300595 m!8074652))

(declare-fun m!8075048 () Bool)

(assert (=> b!7484303 m!8075048))

(assert (=> b!7484308 m!8074938))

(assert (=> b!7484308 m!8074938))

(assert (=> b!7484308 m!8074940))

(assert (=> b!7484302 m!8074944))

(assert (=> b!7484310 m!8074944))

(assert (=> b!7484310 m!8074944))

(declare-fun m!8075050 () Bool)

(assert (=> b!7484310 m!8075050))

(assert (=> b!7484310 m!8074938))

(assert (=> b!7484310 m!8075050))

(assert (=> b!7484310 m!8074938))

(declare-fun m!8075052 () Bool)

(assert (=> b!7484310 m!8075052))

(assert (=> b!7483736 d!2300595))

(declare-fun b!7484315 () Bool)

(declare-fun e!4463958 () Bool)

(declare-fun lt!2628858 () Bool)

(declare-fun call!687057 () Bool)

(assert (=> b!7484315 (= e!4463958 (= lt!2628858 call!687057))))

(declare-fun b!7484316 () Bool)

(declare-fun e!4463964 () Bool)

(assert (=> b!7484316 (= e!4463964 (= (head!15356 (_1!37647 lt!2628787)) (c!1382224 lt!2628779)))))

(declare-fun b!7484317 () Bool)

(declare-fun e!4463959 () Bool)

(assert (=> b!7484317 (= e!4463959 (nullable!8556 lt!2628779))))

(declare-fun b!7484318 () Bool)

(declare-fun res!3002860 () Bool)

(assert (=> b!7484318 (=> (not res!3002860) (not e!4463964))))

(assert (=> b!7484318 (= res!3002860 (not call!687057))))

(declare-fun b!7484320 () Bool)

(declare-fun e!4463963 () Bool)

(assert (=> b!7484320 (= e!4463963 (not lt!2628858))))

(declare-fun b!7484321 () Bool)

(declare-fun e!4463961 () Bool)

(assert (=> b!7484321 (= e!4463961 (not (= (head!15356 (_1!37647 lt!2628787)) (c!1382224 lt!2628779))))))

(declare-fun b!7484322 () Bool)

(declare-fun res!3002865 () Bool)

(assert (=> b!7484322 (=> (not res!3002865) (not e!4463964))))

(assert (=> b!7484322 (= res!3002865 (isEmpty!41228 (tail!14925 (_1!37647 lt!2628787))))))

(declare-fun bm!687052 () Bool)

(assert (=> bm!687052 (= call!687057 (isEmpty!41228 (_1!37647 lt!2628787)))))

(declare-fun b!7484323 () Bool)

(declare-fun res!3002864 () Bool)

(assert (=> b!7484323 (=> res!3002864 e!4463961)))

(assert (=> b!7484323 (= res!3002864 (not (isEmpty!41228 (tail!14925 (_1!37647 lt!2628787)))))))

(declare-fun b!7484324 () Bool)

(assert (=> b!7484324 (= e!4463959 (matchR!9383 (derivativeStep!5616 lt!2628779 (head!15356 (_1!37647 lt!2628787))) (tail!14925 (_1!37647 lt!2628787))))))

(declare-fun b!7484325 () Bool)

(assert (=> b!7484325 (= e!4463958 e!4463963)))

(declare-fun c!1382367 () Bool)

(assert (=> b!7484325 (= c!1382367 ((_ is EmptyLang!19619) lt!2628779))))

(declare-fun b!7484326 () Bool)

(declare-fun e!4463960 () Bool)

(assert (=> b!7484326 (= e!4463960 e!4463961)))

(declare-fun res!3002863 () Bool)

(assert (=> b!7484326 (=> res!3002863 e!4463961)))

(assert (=> b!7484326 (= res!3002863 call!687057)))

(declare-fun d!2300597 () Bool)

(assert (=> d!2300597 e!4463958))

(declare-fun c!1382368 () Bool)

(assert (=> d!2300597 (= c!1382368 ((_ is EmptyExpr!19619) lt!2628779))))

(assert (=> d!2300597 (= lt!2628858 e!4463959)))

(declare-fun c!1382369 () Bool)

(assert (=> d!2300597 (= c!1382369 (isEmpty!41228 (_1!37647 lt!2628787)))))

(assert (=> d!2300597 (validRegex!10133 lt!2628779)))

(assert (=> d!2300597 (= (matchR!9383 lt!2628779 (_1!37647 lt!2628787)) lt!2628858)))

(declare-fun b!7484319 () Bool)

(declare-fun e!4463962 () Bool)

(assert (=> b!7484319 (= e!4463962 e!4463960)))

(declare-fun res!3002861 () Bool)

(assert (=> b!7484319 (=> (not res!3002861) (not e!4463960))))

(assert (=> b!7484319 (= res!3002861 (not lt!2628858))))

(declare-fun b!7484327 () Bool)

(declare-fun res!3002859 () Bool)

(assert (=> b!7484327 (=> res!3002859 e!4463962)))

(assert (=> b!7484327 (= res!3002859 e!4463964)))

(declare-fun res!3002862 () Bool)

(assert (=> b!7484327 (=> (not res!3002862) (not e!4463964))))

(assert (=> b!7484327 (= res!3002862 lt!2628858)))

(declare-fun b!7484328 () Bool)

(declare-fun res!3002858 () Bool)

(assert (=> b!7484328 (=> res!3002858 e!4463962)))

(assert (=> b!7484328 (= res!3002858 (not ((_ is ElementMatch!19619) lt!2628779)))))

(assert (=> b!7484328 (= e!4463963 e!4463962)))

(assert (= (and d!2300597 c!1382369) b!7484317))

(assert (= (and d!2300597 (not c!1382369)) b!7484324))

(assert (= (and d!2300597 c!1382368) b!7484315))

(assert (= (and d!2300597 (not c!1382368)) b!7484325))

(assert (= (and b!7484325 c!1382367) b!7484320))

(assert (= (and b!7484325 (not c!1382367)) b!7484328))

(assert (= (and b!7484328 (not res!3002858)) b!7484327))

(assert (= (and b!7484327 res!3002862) b!7484318))

(assert (= (and b!7484318 res!3002860) b!7484322))

(assert (= (and b!7484322 res!3002865) b!7484316))

(assert (= (and b!7484327 (not res!3002859)) b!7484319))

(assert (= (and b!7484319 res!3002861) b!7484326))

(assert (= (and b!7484326 (not res!3002863)) b!7484323))

(assert (= (and b!7484323 (not res!3002864)) b!7484321))

(assert (= (or b!7484315 b!7484318 b!7484326) bm!687052))

(assert (=> b!7484323 m!8074938))

(assert (=> b!7484323 m!8074938))

(assert (=> b!7484323 m!8074940))

(assert (=> bm!687052 m!8074942))

(assert (=> b!7484321 m!8074944))

(assert (=> d!2300597 m!8074942))

(declare-fun m!8075054 () Bool)

(assert (=> d!2300597 m!8075054))

(declare-fun m!8075056 () Bool)

(assert (=> b!7484317 m!8075056))

(assert (=> b!7484322 m!8074938))

(assert (=> b!7484322 m!8074938))

(assert (=> b!7484322 m!8074940))

(assert (=> b!7484316 m!8074944))

(assert (=> b!7484324 m!8074944))

(assert (=> b!7484324 m!8074944))

(declare-fun m!8075058 () Bool)

(assert (=> b!7484324 m!8075058))

(assert (=> b!7484324 m!8074938))

(assert (=> b!7484324 m!8075058))

(assert (=> b!7484324 m!8074938))

(declare-fun m!8075060 () Bool)

(assert (=> b!7484324 m!8075060))

(assert (=> b!7483736 d!2300597))

(declare-fun d!2300599 () Bool)

(assert (=> d!2300599 (= (matchR!9383 lt!2628779 (_1!37647 lt!2628787)) (matchRSpec!4298 lt!2628779 (_1!37647 lt!2628787)))))

(declare-fun lt!2628859 () Unit!166073)

(assert (=> d!2300599 (= lt!2628859 (choose!57859 lt!2628779 (_1!37647 lt!2628787)))))

(assert (=> d!2300599 (validRegex!10133 lt!2628779)))

(assert (=> d!2300599 (= (mainMatchTheorem!4292 lt!2628779 (_1!37647 lt!2628787)) lt!2628859)))

(declare-fun bs!1934188 () Bool)

(assert (= bs!1934188 d!2300599))

(assert (=> bs!1934188 m!8074704))

(assert (=> bs!1934188 m!8074700))

(declare-fun m!8075062 () Bool)

(assert (=> bs!1934188 m!8075062))

(assert (=> bs!1934188 m!8075054))

(assert (=> b!7483736 d!2300599))

(declare-fun bs!1934189 () Bool)

(declare-fun b!7484337 () Bool)

(assert (= bs!1934189 (and b!7484337 b!7483730)))

(declare-fun lambda!463876 () Int)

(assert (=> bs!1934189 (not (= lambda!463876 lambda!463821))))

(declare-fun bs!1934190 () Bool)

(assert (= bs!1934190 (and b!7484337 b!7484288)))

(assert (=> bs!1934190 (not (= lambda!463876 lambda!463871))))

(declare-fun bs!1934191 () Bool)

(assert (= bs!1934191 (and b!7484337 d!2300567)))

(assert (=> bs!1934191 (not (= lambda!463876 lambda!463864))))

(declare-fun bs!1934192 () Bool)

(assert (= bs!1934192 (and b!7484337 b!7484071)))

(assert (=> bs!1934192 (not (= lambda!463876 lambda!463843))))

(declare-fun bs!1934193 () Bool)

(assert (= bs!1934193 (and b!7484337 b!7484256)))

(assert (=> bs!1934193 (= (and (= (reg!19948 r2!5783) (reg!19948 r1!5845)) (= r2!5783 r1!5845)) (= lambda!463876 lambda!463866))))

(declare-fun bs!1934194 () Bool)

(assert (= bs!1934194 (and b!7484337 b!7483948)))

(assert (=> bs!1934194 (= (and (= (_1!37647 lt!2628787) s!13591) (= (reg!19948 r2!5783) (reg!19948 lt!2628775)) (= r2!5783 lt!2628775)) (= lambda!463876 lambda!463832))))

(declare-fun bs!1934196 () Bool)

(assert (= bs!1934196 (and b!7484337 b!7483946)))

(assert (=> bs!1934196 (not (= lambda!463876 lambda!463833))))

(declare-fun bs!1934197 () Bool)

(assert (= bs!1934197 (and b!7484337 b!7484095)))

(assert (=> bs!1934197 (= (and (= (_1!37647 lt!2628787) s!13591) (= (reg!19948 r2!5783) (reg!19948 lt!2628777)) (= r2!5783 lt!2628777)) (= lambda!463876 lambda!463845))))

(declare-fun bs!1934198 () Bool)

(assert (= bs!1934198 (and b!7484337 b!7483722)))

(assert (=> bs!1934198 (not (= lambda!463876 lambda!463822))))

(declare-fun bs!1934199 () Bool)

(assert (= bs!1934199 (and b!7484337 b!7484093)))

(assert (=> bs!1934199 (not (= lambda!463876 lambda!463847))))

(assert (=> bs!1934198 (not (= lambda!463876 lambda!463823))))

(declare-fun bs!1934200 () Bool)

(assert (= bs!1934200 (and b!7484337 d!2300547)))

(assert (=> bs!1934200 (not (= lambda!463876 lambda!463858))))

(assert (=> bs!1934200 (not (= lambda!463876 lambda!463856))))

(declare-fun bs!1934201 () Bool)

(assert (= bs!1934201 (and b!7484337 b!7483995)))

(assert (=> bs!1934201 (= (and (= (_1!37647 lt!2628787) s!13591) (= (reg!19948 r2!5783) (reg!19948 lt!2628791)) (= r2!5783 lt!2628791)) (= lambda!463876 lambda!463838))))

(declare-fun bs!1934202 () Bool)

(assert (= bs!1934202 (and b!7484337 b!7484254)))

(assert (=> bs!1934202 (not (= lambda!463876 lambda!463867))))

(declare-fun bs!1934203 () Bool)

(assert (= bs!1934203 (and b!7484337 b!7484290)))

(assert (=> bs!1934203 (= (and (= (reg!19948 r2!5783) (reg!19948 lt!2628779)) (= r2!5783 lt!2628779)) (= lambda!463876 lambda!463868))))

(declare-fun bs!1934204 () Bool)

(assert (= bs!1934204 (and b!7484337 b!7484073)))

(assert (=> bs!1934204 (= (and (= (_1!37647 lt!2628787) s!13591) (= (reg!19948 r2!5783) (reg!19948 lt!2628781)) (= r2!5783 lt!2628781)) (= lambda!463876 lambda!463841))))

(assert (=> bs!1934189 (not (= lambda!463876 lambda!463820))))

(declare-fun bs!1934205 () Bool)

(assert (= bs!1934205 (and b!7484337 b!7483993)))

(assert (=> bs!1934205 (not (= lambda!463876 lambda!463839))))

(assert (=> b!7484337 true))

(assert (=> b!7484337 true))

(declare-fun bs!1934208 () Bool)

(declare-fun b!7484335 () Bool)

(assert (= bs!1934208 (and b!7484335 b!7483730)))

(declare-fun lambda!463877 () Int)

(assert (=> bs!1934208 (= (and (= (_1!37647 lt!2628787) s!13591) (= (regOne!39750 r2!5783) lt!2628779) (= (regTwo!39750 r2!5783) rTail!78)) (= lambda!463877 lambda!463821))))

(declare-fun bs!1934209 () Bool)

(assert (= bs!1934209 (and b!7484335 b!7484288)))

(assert (=> bs!1934209 (= (and (= (regOne!39750 r2!5783) (regOne!39750 lt!2628779)) (= (regTwo!39750 r2!5783) (regTwo!39750 lt!2628779))) (= lambda!463877 lambda!463871))))

(declare-fun bs!1934210 () Bool)

(assert (= bs!1934210 (and b!7484335 d!2300567)))

(assert (=> bs!1934210 (not (= lambda!463877 lambda!463864))))

(declare-fun bs!1934211 () Bool)

(assert (= bs!1934211 (and b!7484335 b!7484071)))

(assert (=> bs!1934211 (= (and (= (_1!37647 lt!2628787) s!13591) (= (regOne!39750 r2!5783) (regOne!39750 lt!2628781)) (= (regTwo!39750 r2!5783) (regTwo!39750 lt!2628781))) (= lambda!463877 lambda!463843))))

(declare-fun bs!1934212 () Bool)

(assert (= bs!1934212 (and b!7484335 b!7484337)))

(assert (=> bs!1934212 (not (= lambda!463877 lambda!463876))))

(declare-fun bs!1934213 () Bool)

(assert (= bs!1934213 (and b!7484335 b!7484256)))

(assert (=> bs!1934213 (not (= lambda!463877 lambda!463866))))

(declare-fun bs!1934214 () Bool)

(assert (= bs!1934214 (and b!7484335 b!7483948)))

(assert (=> bs!1934214 (not (= lambda!463877 lambda!463832))))

(declare-fun bs!1934215 () Bool)

(assert (= bs!1934215 (and b!7484335 b!7483946)))

(assert (=> bs!1934215 (= (and (= (_1!37647 lt!2628787) s!13591) (= (regOne!39750 r2!5783) (regOne!39750 lt!2628775)) (= (regTwo!39750 r2!5783) (regTwo!39750 lt!2628775))) (= lambda!463877 lambda!463833))))

(declare-fun bs!1934216 () Bool)

(assert (= bs!1934216 (and b!7484335 b!7484095)))

(assert (=> bs!1934216 (not (= lambda!463877 lambda!463845))))

(declare-fun bs!1934217 () Bool)

(assert (= bs!1934217 (and b!7484335 b!7483722)))

(assert (=> bs!1934217 (not (= lambda!463877 lambda!463822))))

(declare-fun bs!1934218 () Bool)

(assert (= bs!1934218 (and b!7484335 b!7484093)))

(assert (=> bs!1934218 (= (and (= (_1!37647 lt!2628787) s!13591) (= (regOne!39750 r2!5783) (regOne!39750 lt!2628777)) (= (regTwo!39750 r2!5783) (regTwo!39750 lt!2628777))) (= lambda!463877 lambda!463847))))

(assert (=> bs!1934217 (= (and (= (_1!37647 lt!2628787) s!13591) (= (regOne!39750 r2!5783) r2!5783) (= (regTwo!39750 r2!5783) rTail!78)) (= lambda!463877 lambda!463823))))

(declare-fun bs!1934219 () Bool)

(assert (= bs!1934219 (and b!7484335 d!2300547)))

(assert (=> bs!1934219 (= (and (= (_1!37647 lt!2628787) s!13591) (= (regOne!39750 r2!5783) r2!5783) (= (regTwo!39750 r2!5783) rTail!78)) (= lambda!463877 lambda!463858))))

(assert (=> bs!1934219 (not (= lambda!463877 lambda!463856))))

(declare-fun bs!1934220 () Bool)

(assert (= bs!1934220 (and b!7484335 b!7483995)))

(assert (=> bs!1934220 (not (= lambda!463877 lambda!463838))))

(declare-fun bs!1934221 () Bool)

(assert (= bs!1934221 (and b!7484335 b!7484254)))

(assert (=> bs!1934221 (= (and (= (regOne!39750 r2!5783) (regOne!39750 r1!5845)) (= (regTwo!39750 r2!5783) (regTwo!39750 r1!5845))) (= lambda!463877 lambda!463867))))

(declare-fun bs!1934222 () Bool)

(assert (= bs!1934222 (and b!7484335 b!7484290)))

(assert (=> bs!1934222 (not (= lambda!463877 lambda!463868))))

(declare-fun bs!1934223 () Bool)

(assert (= bs!1934223 (and b!7484335 b!7484073)))

(assert (=> bs!1934223 (not (= lambda!463877 lambda!463841))))

(assert (=> bs!1934208 (not (= lambda!463877 lambda!463820))))

(declare-fun bs!1934224 () Bool)

(assert (= bs!1934224 (and b!7484335 b!7483993)))

(assert (=> bs!1934224 (= (and (= (_1!37647 lt!2628787) s!13591) (= (regOne!39750 r2!5783) (regOne!39750 lt!2628791)) (= (regTwo!39750 r2!5783) (regTwo!39750 lt!2628791))) (= lambda!463877 lambda!463839))))

(assert (=> b!7484335 true))

(assert (=> b!7484335 true))

(declare-fun b!7484329 () Bool)

(declare-fun e!4463968 () Bool)

(declare-fun e!4463965 () Bool)

(assert (=> b!7484329 (= e!4463968 e!4463965)))

(declare-fun res!3002868 () Bool)

(assert (=> b!7484329 (= res!3002868 (not ((_ is EmptyLang!19619) r2!5783)))))

(assert (=> b!7484329 (=> (not res!3002868) (not e!4463965))))

(declare-fun bm!687053 () Bool)

(declare-fun call!687058 () Bool)

(declare-fun c!1382370 () Bool)

(assert (=> bm!687053 (= call!687058 (Exists!4238 (ite c!1382370 lambda!463876 lambda!463877)))))

(declare-fun b!7484330 () Bool)

(declare-fun c!1382371 () Bool)

(assert (=> b!7484330 (= c!1382371 ((_ is Union!19619) r2!5783))))

(declare-fun e!4463971 () Bool)

(declare-fun e!4463969 () Bool)

(assert (=> b!7484330 (= e!4463971 e!4463969)))

(declare-fun b!7484331 () Bool)

(declare-fun res!3002867 () Bool)

(declare-fun e!4463966 () Bool)

(assert (=> b!7484331 (=> res!3002867 e!4463966)))

(declare-fun call!687059 () Bool)

(assert (=> b!7484331 (= res!3002867 call!687059)))

(declare-fun e!4463967 () Bool)

(assert (=> b!7484331 (= e!4463967 e!4463966)))

(declare-fun bm!687054 () Bool)

(assert (=> bm!687054 (= call!687059 (isEmpty!41228 (_1!37647 lt!2628787)))))

(declare-fun b!7484332 () Bool)

(declare-fun e!4463970 () Bool)

(assert (=> b!7484332 (= e!4463969 e!4463970)))

(declare-fun res!3002866 () Bool)

(assert (=> b!7484332 (= res!3002866 (matchRSpec!4298 (regOne!39751 r2!5783) (_1!37647 lt!2628787)))))

(assert (=> b!7484332 (=> res!3002866 e!4463970)))

(declare-fun b!7484333 () Bool)

(declare-fun c!1382373 () Bool)

(assert (=> b!7484333 (= c!1382373 ((_ is ElementMatch!19619) r2!5783))))

(assert (=> b!7484333 (= e!4463965 e!4463971)))

(declare-fun b!7484334 () Bool)

(assert (=> b!7484334 (= e!4463969 e!4463967)))

(assert (=> b!7484334 (= c!1382370 ((_ is Star!19619) r2!5783))))

(declare-fun d!2300601 () Bool)

(declare-fun c!1382372 () Bool)

(assert (=> d!2300601 (= c!1382372 ((_ is EmptyExpr!19619) r2!5783))))

(assert (=> d!2300601 (= (matchRSpec!4298 r2!5783 (_1!37647 lt!2628787)) e!4463968)))

(assert (=> b!7484335 (= e!4463967 call!687058)))

(declare-fun b!7484336 () Bool)

(assert (=> b!7484336 (= e!4463968 call!687059)))

(assert (=> b!7484337 (= e!4463966 call!687058)))

(declare-fun b!7484338 () Bool)

(assert (=> b!7484338 (= e!4463971 (= (_1!37647 lt!2628787) (Cons!72211 (c!1382224 r2!5783) Nil!72211)))))

(declare-fun b!7484339 () Bool)

(assert (=> b!7484339 (= e!4463970 (matchRSpec!4298 (regTwo!39751 r2!5783) (_1!37647 lt!2628787)))))

(assert (= (and d!2300601 c!1382372) b!7484336))

(assert (= (and d!2300601 (not c!1382372)) b!7484329))

(assert (= (and b!7484329 res!3002868) b!7484333))

(assert (= (and b!7484333 c!1382373) b!7484338))

(assert (= (and b!7484333 (not c!1382373)) b!7484330))

(assert (= (and b!7484330 c!1382371) b!7484332))

(assert (= (and b!7484330 (not c!1382371)) b!7484334))

(assert (= (and b!7484332 (not res!3002866)) b!7484339))

(assert (= (and b!7484334 c!1382370) b!7484331))

(assert (= (and b!7484334 (not c!1382370)) b!7484335))

(assert (= (and b!7484331 (not res!3002867)) b!7484337))

(assert (= (or b!7484337 b!7484335) bm!687053))

(assert (= (or b!7484336 b!7484331) bm!687054))

(declare-fun m!8075074 () Bool)

(assert (=> bm!687053 m!8075074))

(assert (=> bm!687054 m!8074942))

(declare-fun m!8075076 () Bool)

(assert (=> b!7484332 m!8075076))

(declare-fun m!8075078 () Bool)

(assert (=> b!7484339 m!8075078))

(assert (=> b!7483736 d!2300601))

(declare-fun d!2300609 () Bool)

(assert (=> d!2300609 (= (matchR!9383 r1!5845 (_1!37647 lt!2628787)) (matchRSpec!4298 r1!5845 (_1!37647 lt!2628787)))))

(declare-fun lt!2628860 () Unit!166073)

(assert (=> d!2300609 (= lt!2628860 (choose!57859 r1!5845 (_1!37647 lt!2628787)))))

(assert (=> d!2300609 (validRegex!10133 r1!5845)))

(assert (=> d!2300609 (= (mainMatchTheorem!4292 r1!5845 (_1!37647 lt!2628787)) lt!2628860)))

(declare-fun bs!1934225 () Bool)

(assert (= bs!1934225 d!2300609))

(assert (=> bs!1934225 m!8074702))

(assert (=> bs!1934225 m!8074706))

(declare-fun m!8075080 () Bool)

(assert (=> bs!1934225 m!8075080))

(assert (=> bs!1934225 m!8074652))

(assert (=> b!7483736 d!2300609))

(declare-fun c!1382379 () Bool)

(declare-fun c!1382378 () Bool)

(declare-fun bm!687061 () Bool)

(declare-fun call!687068 () Bool)

(assert (=> bm!687061 (= call!687068 (validRegex!10133 (ite c!1382379 (reg!19948 r2!5783) (ite c!1382378 (regTwo!39751 r2!5783) (regTwo!39750 r2!5783)))))))

(declare-fun b!7484358 () Bool)

(declare-fun e!4463990 () Bool)

(assert (=> b!7484358 (= e!4463990 call!687068)))

(declare-fun b!7484359 () Bool)

(declare-fun e!4463989 () Bool)

(declare-fun e!4463991 () Bool)

(assert (=> b!7484359 (= e!4463989 e!4463991)))

(declare-fun res!3002883 () Bool)

(assert (=> b!7484359 (=> (not res!3002883) (not e!4463991))))

(declare-fun call!687066 () Bool)

(assert (=> b!7484359 (= res!3002883 call!687066)))

(declare-fun b!7484360 () Bool)

(declare-fun e!4463987 () Bool)

(assert (=> b!7484360 (= e!4463987 e!4463990)))

(declare-fun res!3002882 () Bool)

(assert (=> b!7484360 (= res!3002882 (not (nullable!8556 (reg!19948 r2!5783))))))

(assert (=> b!7484360 (=> (not res!3002882) (not e!4463990))))

(declare-fun b!7484361 () Bool)

(declare-fun call!687067 () Bool)

(assert (=> b!7484361 (= e!4463991 call!687067)))

(declare-fun d!2300611 () Bool)

(declare-fun res!3002880 () Bool)

(declare-fun e!4463992 () Bool)

(assert (=> d!2300611 (=> res!3002880 e!4463992)))

(assert (=> d!2300611 (= res!3002880 ((_ is ElementMatch!19619) r2!5783))))

(assert (=> d!2300611 (= (validRegex!10133 r2!5783) e!4463992)))

(declare-fun b!7484362 () Bool)

(declare-fun e!4463986 () Bool)

(assert (=> b!7484362 (= e!4463986 call!687067)))

(declare-fun b!7484363 () Bool)

(declare-fun res!3002881 () Bool)

(assert (=> b!7484363 (=> (not res!3002881) (not e!4463986))))

(assert (=> b!7484363 (= res!3002881 call!687066)))

(declare-fun e!4463988 () Bool)

(assert (=> b!7484363 (= e!4463988 e!4463986)))

(declare-fun bm!687062 () Bool)

(assert (=> bm!687062 (= call!687066 (validRegex!10133 (ite c!1382378 (regOne!39751 r2!5783) (regOne!39750 r2!5783))))))

(declare-fun b!7484364 () Bool)

(declare-fun res!3002879 () Bool)

(assert (=> b!7484364 (=> res!3002879 e!4463989)))

(assert (=> b!7484364 (= res!3002879 (not ((_ is Concat!28464) r2!5783)))))

(assert (=> b!7484364 (= e!4463988 e!4463989)))

(declare-fun b!7484365 () Bool)

(assert (=> b!7484365 (= e!4463987 e!4463988)))

(assert (=> b!7484365 (= c!1382378 ((_ is Union!19619) r2!5783))))

(declare-fun bm!687063 () Bool)

(assert (=> bm!687063 (= call!687067 call!687068)))

(declare-fun b!7484366 () Bool)

(assert (=> b!7484366 (= e!4463992 e!4463987)))

(assert (=> b!7484366 (= c!1382379 ((_ is Star!19619) r2!5783))))

(assert (= (and d!2300611 (not res!3002880)) b!7484366))

(assert (= (and b!7484366 c!1382379) b!7484360))

(assert (= (and b!7484366 (not c!1382379)) b!7484365))

(assert (= (and b!7484360 res!3002882) b!7484358))

(assert (= (and b!7484365 c!1382378) b!7484363))

(assert (= (and b!7484365 (not c!1382378)) b!7484364))

(assert (= (and b!7484363 res!3002881) b!7484362))

(assert (= (and b!7484364 (not res!3002879)) b!7484359))

(assert (= (and b!7484359 res!3002883) b!7484361))

(assert (= (or b!7484362 b!7484361) bm!687063))

(assert (= (or b!7484363 b!7484359) bm!687062))

(assert (= (or b!7484358 bm!687063) bm!687061))

(declare-fun m!8075082 () Bool)

(assert (=> bm!687061 m!8075082))

(declare-fun m!8075084 () Bool)

(assert (=> b!7484360 m!8075084))

(declare-fun m!8075086 () Bool)

(assert (=> bm!687062 m!8075086))

(assert (=> b!7483725 d!2300611))

(declare-fun d!2300613 () Bool)

(assert (=> d!2300613 (= (Exists!4238 lambda!463821) (choose!57861 lambda!463821))))

(declare-fun bs!1934226 () Bool)

(assert (= bs!1934226 d!2300613))

(declare-fun m!8075088 () Bool)

(assert (=> bs!1934226 m!8075088))

(assert (=> b!7483730 d!2300613))

(declare-fun d!2300615 () Bool)

(assert (=> d!2300615 (= (isDefined!13865 (findConcatSeparation!3298 lt!2628779 rTail!78 Nil!72211 s!13591 s!13591)) (not (isEmpty!41229 (findConcatSeparation!3298 lt!2628779 rTail!78 Nil!72211 s!13591 s!13591))))))

(declare-fun bs!1934227 () Bool)

(assert (= bs!1934227 d!2300615))

(assert (=> bs!1934227 m!8074662))

(declare-fun m!8075090 () Bool)

(assert (=> bs!1934227 m!8075090))

(assert (=> b!7483730 d!2300615))

(declare-fun b!7484367 () Bool)

(declare-fun e!4463996 () Option!17176)

(assert (=> b!7484367 (= e!4463996 None!17175)))

(declare-fun b!7484368 () Bool)

(declare-fun e!4463994 () Bool)

(declare-fun lt!2628862 () Option!17176)

(assert (=> b!7484368 (= e!4463994 (not (isDefined!13865 lt!2628862)))))

(declare-fun d!2300617 () Bool)

(assert (=> d!2300617 e!4463994))

(declare-fun res!3002885 () Bool)

(assert (=> d!2300617 (=> res!3002885 e!4463994)))

(declare-fun e!4463997 () Bool)

(assert (=> d!2300617 (= res!3002885 e!4463997)))

(declare-fun res!3002884 () Bool)

(assert (=> d!2300617 (=> (not res!3002884) (not e!4463997))))

(assert (=> d!2300617 (= res!3002884 (isDefined!13865 lt!2628862))))

(declare-fun e!4463995 () Option!17176)

(assert (=> d!2300617 (= lt!2628862 e!4463995)))

(declare-fun c!1382381 () Bool)

(declare-fun e!4463993 () Bool)

(assert (=> d!2300617 (= c!1382381 e!4463993)))

(declare-fun res!3002888 () Bool)

(assert (=> d!2300617 (=> (not res!3002888) (not e!4463993))))

(assert (=> d!2300617 (= res!3002888 (matchR!9383 lt!2628779 Nil!72211))))

(assert (=> d!2300617 (validRegex!10133 lt!2628779)))

(assert (=> d!2300617 (= (findConcatSeparation!3298 lt!2628779 rTail!78 Nil!72211 s!13591 s!13591) lt!2628862)))

(declare-fun b!7484369 () Bool)

(assert (=> b!7484369 (= e!4463995 e!4463996)))

(declare-fun c!1382380 () Bool)

(assert (=> b!7484369 (= c!1382380 ((_ is Nil!72211) s!13591))))

(declare-fun b!7484370 () Bool)

(assert (=> b!7484370 (= e!4463997 (= (++!17232 (_1!37647 (get!25292 lt!2628862)) (_2!37647 (get!25292 lt!2628862))) s!13591))))

(declare-fun b!7484371 () Bool)

(assert (=> b!7484371 (= e!4463995 (Some!17175 (tuple2!68689 Nil!72211 s!13591)))))

(declare-fun b!7484372 () Bool)

(declare-fun res!3002887 () Bool)

(assert (=> b!7484372 (=> (not res!3002887) (not e!4463997))))

(assert (=> b!7484372 (= res!3002887 (matchR!9383 lt!2628779 (_1!37647 (get!25292 lt!2628862))))))

(declare-fun b!7484373 () Bool)

(declare-fun lt!2628861 () Unit!166073)

(declare-fun lt!2628863 () Unit!166073)

(assert (=> b!7484373 (= lt!2628861 lt!2628863)))

(assert (=> b!7484373 (= (++!17232 (++!17232 Nil!72211 (Cons!72211 (h!78659 s!13591) Nil!72211)) (t!386904 s!13591)) s!13591)))

(assert (=> b!7484373 (= lt!2628863 (lemmaMoveElementToOtherListKeepsConcatEq!3108 Nil!72211 (h!78659 s!13591) (t!386904 s!13591) s!13591))))

(assert (=> b!7484373 (= e!4463996 (findConcatSeparation!3298 lt!2628779 rTail!78 (++!17232 Nil!72211 (Cons!72211 (h!78659 s!13591) Nil!72211)) (t!386904 s!13591) s!13591))))

(declare-fun b!7484374 () Bool)

(assert (=> b!7484374 (= e!4463993 (matchR!9383 rTail!78 s!13591))))

(declare-fun b!7484375 () Bool)

(declare-fun res!3002886 () Bool)

(assert (=> b!7484375 (=> (not res!3002886) (not e!4463997))))

(assert (=> b!7484375 (= res!3002886 (matchR!9383 rTail!78 (_2!37647 (get!25292 lt!2628862))))))

(assert (= (and d!2300617 res!3002888) b!7484374))

(assert (= (and d!2300617 c!1382381) b!7484371))

(assert (= (and d!2300617 (not c!1382381)) b!7484369))

(assert (= (and b!7484369 c!1382380) b!7484367))

(assert (= (and b!7484369 (not c!1382380)) b!7484373))

(assert (= (and d!2300617 res!3002884) b!7484372))

(assert (= (and b!7484372 res!3002887) b!7484375))

(assert (= (and b!7484375 res!3002886) b!7484370))

(assert (= (and d!2300617 (not res!3002885)) b!7484368))

(declare-fun m!8075092 () Bool)

(assert (=> b!7484370 m!8075092))

(declare-fun m!8075094 () Bool)

(assert (=> b!7484370 m!8075094))

(declare-fun m!8075096 () Bool)

(assert (=> d!2300617 m!8075096))

(declare-fun m!8075098 () Bool)

(assert (=> d!2300617 m!8075098))

(assert (=> d!2300617 m!8075054))

(assert (=> b!7484373 m!8074992))

(assert (=> b!7484373 m!8074992))

(assert (=> b!7484373 m!8074994))

(assert (=> b!7484373 m!8074996))

(assert (=> b!7484373 m!8074992))

(declare-fun m!8075100 () Bool)

(assert (=> b!7484373 m!8075100))

(assert (=> b!7484368 m!8075096))

(assert (=> b!7484372 m!8075092))

(declare-fun m!8075102 () Bool)

(assert (=> b!7484372 m!8075102))

(assert (=> b!7484374 m!8075002))

(assert (=> b!7484375 m!8075092))

(declare-fun m!8075106 () Bool)

(assert (=> b!7484375 m!8075106))

(assert (=> b!7483730 d!2300617))

(declare-fun bs!1934229 () Bool)

(declare-fun d!2300619 () Bool)

(assert (= bs!1934229 (and d!2300619 b!7483730)))

(declare-fun lambda!463878 () Int)

(assert (=> bs!1934229 (not (= lambda!463878 lambda!463821))))

(declare-fun bs!1934230 () Bool)

(assert (= bs!1934230 (and d!2300619 b!7484288)))

(assert (=> bs!1934230 (not (= lambda!463878 lambda!463871))))

(declare-fun bs!1934231 () Bool)

(assert (= bs!1934231 (and d!2300619 d!2300567)))

(assert (=> bs!1934231 (= (= lt!2628779 r2!5783) (= lambda!463878 lambda!463864))))

(declare-fun bs!1934233 () Bool)

(assert (= bs!1934233 (and d!2300619 b!7484071)))

(assert (=> bs!1934233 (not (= lambda!463878 lambda!463843))))

(declare-fun bs!1934235 () Bool)

(assert (= bs!1934235 (and d!2300619 b!7484337)))

(assert (=> bs!1934235 (not (= lambda!463878 lambda!463876))))

(declare-fun bs!1934237 () Bool)

(assert (= bs!1934237 (and d!2300619 b!7484256)))

(assert (=> bs!1934237 (not (= lambda!463878 lambda!463866))))

(declare-fun bs!1934239 () Bool)

(assert (= bs!1934239 (and d!2300619 b!7483948)))

(assert (=> bs!1934239 (not (= lambda!463878 lambda!463832))))

(declare-fun bs!1934241 () Bool)

(assert (= bs!1934241 (and d!2300619 b!7484335)))

(assert (=> bs!1934241 (not (= lambda!463878 lambda!463877))))

(declare-fun bs!1934243 () Bool)

(assert (= bs!1934243 (and d!2300619 b!7483946)))

(assert (=> bs!1934243 (not (= lambda!463878 lambda!463833))))

(declare-fun bs!1934244 () Bool)

(assert (= bs!1934244 (and d!2300619 b!7484095)))

(assert (=> bs!1934244 (not (= lambda!463878 lambda!463845))))

(declare-fun bs!1934246 () Bool)

(assert (= bs!1934246 (and d!2300619 b!7483722)))

(assert (=> bs!1934246 (= (= lt!2628779 r2!5783) (= lambda!463878 lambda!463822))))

(declare-fun bs!1934248 () Bool)

(assert (= bs!1934248 (and d!2300619 b!7484093)))

(assert (=> bs!1934248 (not (= lambda!463878 lambda!463847))))

(assert (=> bs!1934246 (not (= lambda!463878 lambda!463823))))

(declare-fun bs!1934250 () Bool)

(assert (= bs!1934250 (and d!2300619 d!2300547)))

(assert (=> bs!1934250 (not (= lambda!463878 lambda!463858))))

(assert (=> bs!1934250 (= (= lt!2628779 r2!5783) (= lambda!463878 lambda!463856))))

(declare-fun bs!1934253 () Bool)

(assert (= bs!1934253 (and d!2300619 b!7483995)))

(assert (=> bs!1934253 (not (= lambda!463878 lambda!463838))))

(declare-fun bs!1934255 () Bool)

(assert (= bs!1934255 (and d!2300619 b!7484254)))

(assert (=> bs!1934255 (not (= lambda!463878 lambda!463867))))

(declare-fun bs!1934257 () Bool)

(assert (= bs!1934257 (and d!2300619 b!7484290)))

(assert (=> bs!1934257 (not (= lambda!463878 lambda!463868))))

(declare-fun bs!1934259 () Bool)

(assert (= bs!1934259 (and d!2300619 b!7484073)))

(assert (=> bs!1934259 (not (= lambda!463878 lambda!463841))))

(assert (=> bs!1934229 (= lambda!463878 lambda!463820)))

(declare-fun bs!1934262 () Bool)

(assert (= bs!1934262 (and d!2300619 b!7483993)))

(assert (=> bs!1934262 (not (= lambda!463878 lambda!463839))))

(assert (=> d!2300619 true))

(assert (=> d!2300619 true))

(assert (=> d!2300619 true))

(declare-fun lambda!463880 () Int)

(assert (=> bs!1934230 (= (and (= s!13591 (_1!37647 lt!2628787)) (= lt!2628779 (regOne!39750 lt!2628779)) (= rTail!78 (regTwo!39750 lt!2628779))) (= lambda!463880 lambda!463871))))

(assert (=> bs!1934231 (not (= lambda!463880 lambda!463864))))

(assert (=> bs!1934233 (= (and (= lt!2628779 (regOne!39750 lt!2628781)) (= rTail!78 (regTwo!39750 lt!2628781))) (= lambda!463880 lambda!463843))))

(assert (=> bs!1934235 (not (= lambda!463880 lambda!463876))))

(assert (=> bs!1934237 (not (= lambda!463880 lambda!463866))))

(assert (=> bs!1934239 (not (= lambda!463880 lambda!463832))))

(assert (=> bs!1934241 (= (and (= s!13591 (_1!37647 lt!2628787)) (= lt!2628779 (regOne!39750 r2!5783)) (= rTail!78 (regTwo!39750 r2!5783))) (= lambda!463880 lambda!463877))))

(assert (=> bs!1934243 (= (and (= lt!2628779 (regOne!39750 lt!2628775)) (= rTail!78 (regTwo!39750 lt!2628775))) (= lambda!463880 lambda!463833))))

(assert (=> bs!1934244 (not (= lambda!463880 lambda!463845))))

(assert (=> bs!1934246 (not (= lambda!463880 lambda!463822))))

(assert (=> bs!1934248 (= (and (= lt!2628779 (regOne!39750 lt!2628777)) (= rTail!78 (regTwo!39750 lt!2628777))) (= lambda!463880 lambda!463847))))

(declare-fun bs!1934266 () Bool)

(assert (= bs!1934266 d!2300619))

(assert (=> bs!1934266 (not (= lambda!463880 lambda!463878))))

(assert (=> bs!1934229 (= lambda!463880 lambda!463821)))

(assert (=> bs!1934246 (= (= lt!2628779 r2!5783) (= lambda!463880 lambda!463823))))

(assert (=> bs!1934250 (= (= lt!2628779 r2!5783) (= lambda!463880 lambda!463858))))

(assert (=> bs!1934250 (not (= lambda!463880 lambda!463856))))

(assert (=> bs!1934253 (not (= lambda!463880 lambda!463838))))

(assert (=> bs!1934255 (= (and (= s!13591 (_1!37647 lt!2628787)) (= lt!2628779 (regOne!39750 r1!5845)) (= rTail!78 (regTwo!39750 r1!5845))) (= lambda!463880 lambda!463867))))

(assert (=> bs!1934257 (not (= lambda!463880 lambda!463868))))

(assert (=> bs!1934259 (not (= lambda!463880 lambda!463841))))

(assert (=> bs!1934229 (not (= lambda!463880 lambda!463820))))

(assert (=> bs!1934262 (= (and (= lt!2628779 (regOne!39750 lt!2628791)) (= rTail!78 (regTwo!39750 lt!2628791))) (= lambda!463880 lambda!463839))))

(assert (=> d!2300619 true))

(assert (=> d!2300619 true))

(assert (=> d!2300619 true))

(assert (=> d!2300619 (= (Exists!4238 lambda!463878) (Exists!4238 lambda!463880))))

(declare-fun lt!2628864 () Unit!166073)

(assert (=> d!2300619 (= lt!2628864 (choose!57860 lt!2628779 rTail!78 s!13591))))

(assert (=> d!2300619 (validRegex!10133 lt!2628779)))

(assert (=> d!2300619 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2572 lt!2628779 rTail!78 s!13591) lt!2628864)))

(declare-fun m!8075134 () Bool)

(assert (=> bs!1934266 m!8075134))

(declare-fun m!8075136 () Bool)

(assert (=> bs!1934266 m!8075136))

(declare-fun m!8075138 () Bool)

(assert (=> bs!1934266 m!8075138))

(assert (=> bs!1934266 m!8075054))

(assert (=> b!7483730 d!2300619))

(declare-fun d!2300631 () Bool)

(assert (=> d!2300631 (= (Exists!4238 lambda!463820) (choose!57861 lambda!463820))))

(declare-fun bs!1934270 () Bool)

(assert (= bs!1934270 d!2300631))

(declare-fun m!8075140 () Bool)

(assert (=> bs!1934270 m!8075140))

(assert (=> b!7483730 d!2300631))

(declare-fun bs!1934276 () Bool)

(declare-fun d!2300633 () Bool)

(assert (= bs!1934276 (and d!2300633 b!7484288)))

(declare-fun lambda!463882 () Int)

(assert (=> bs!1934276 (not (= lambda!463882 lambda!463871))))

(declare-fun bs!1934277 () Bool)

(assert (= bs!1934277 (and d!2300633 d!2300567)))

(assert (=> bs!1934277 (= (= lt!2628779 r2!5783) (= lambda!463882 lambda!463864))))

(declare-fun bs!1934279 () Bool)

(assert (= bs!1934279 (and d!2300633 b!7484071)))

(assert (=> bs!1934279 (not (= lambda!463882 lambda!463843))))

(declare-fun bs!1934281 () Bool)

(assert (= bs!1934281 (and d!2300633 b!7484337)))

(assert (=> bs!1934281 (not (= lambda!463882 lambda!463876))))

(declare-fun bs!1934283 () Bool)

(assert (= bs!1934283 (and d!2300633 b!7484256)))

(assert (=> bs!1934283 (not (= lambda!463882 lambda!463866))))

(declare-fun bs!1934285 () Bool)

(assert (= bs!1934285 (and d!2300633 b!7483948)))

(assert (=> bs!1934285 (not (= lambda!463882 lambda!463832))))

(declare-fun bs!1934287 () Bool)

(assert (= bs!1934287 (and d!2300633 d!2300619)))

(assert (=> bs!1934287 (not (= lambda!463882 lambda!463880))))

(declare-fun bs!1934289 () Bool)

(assert (= bs!1934289 (and d!2300633 b!7484335)))

(assert (=> bs!1934289 (not (= lambda!463882 lambda!463877))))

(declare-fun bs!1934291 () Bool)

(assert (= bs!1934291 (and d!2300633 b!7483946)))

(assert (=> bs!1934291 (not (= lambda!463882 lambda!463833))))

(declare-fun bs!1934293 () Bool)

(assert (= bs!1934293 (and d!2300633 b!7484095)))

(assert (=> bs!1934293 (not (= lambda!463882 lambda!463845))))

(declare-fun bs!1934295 () Bool)

(assert (= bs!1934295 (and d!2300633 b!7483722)))

(assert (=> bs!1934295 (= (= lt!2628779 r2!5783) (= lambda!463882 lambda!463822))))

(declare-fun bs!1934297 () Bool)

(assert (= bs!1934297 (and d!2300633 b!7484093)))

(assert (=> bs!1934297 (not (= lambda!463882 lambda!463847))))

(assert (=> bs!1934287 (= lambda!463882 lambda!463878)))

(declare-fun bs!1934299 () Bool)

(assert (= bs!1934299 (and d!2300633 b!7483730)))

(assert (=> bs!1934299 (not (= lambda!463882 lambda!463821))))

(assert (=> bs!1934295 (not (= lambda!463882 lambda!463823))))

(declare-fun bs!1934301 () Bool)

(assert (= bs!1934301 (and d!2300633 d!2300547)))

(assert (=> bs!1934301 (not (= lambda!463882 lambda!463858))))

(assert (=> bs!1934301 (= (= lt!2628779 r2!5783) (= lambda!463882 lambda!463856))))

(declare-fun bs!1934302 () Bool)

(assert (= bs!1934302 (and d!2300633 b!7483995)))

(assert (=> bs!1934302 (not (= lambda!463882 lambda!463838))))

(declare-fun bs!1934303 () Bool)

(assert (= bs!1934303 (and d!2300633 b!7484254)))

(assert (=> bs!1934303 (not (= lambda!463882 lambda!463867))))

(declare-fun bs!1934304 () Bool)

(assert (= bs!1934304 (and d!2300633 b!7484290)))

(assert (=> bs!1934304 (not (= lambda!463882 lambda!463868))))

(declare-fun bs!1934305 () Bool)

(assert (= bs!1934305 (and d!2300633 b!7484073)))

(assert (=> bs!1934305 (not (= lambda!463882 lambda!463841))))

(assert (=> bs!1934299 (= lambda!463882 lambda!463820)))

(declare-fun bs!1934306 () Bool)

(assert (= bs!1934306 (and d!2300633 b!7483993)))

(assert (=> bs!1934306 (not (= lambda!463882 lambda!463839))))

(assert (=> d!2300633 true))

(assert (=> d!2300633 true))

(assert (=> d!2300633 true))

(assert (=> d!2300633 (= (isDefined!13865 (findConcatSeparation!3298 lt!2628779 rTail!78 Nil!72211 s!13591 s!13591)) (Exists!4238 lambda!463882))))

(declare-fun lt!2628870 () Unit!166073)

(assert (=> d!2300633 (= lt!2628870 (choose!57862 lt!2628779 rTail!78 s!13591))))

(assert (=> d!2300633 (validRegex!10133 lt!2628779)))

(assert (=> d!2300633 (= (lemmaFindConcatSeparationEquivalentToExists!3056 lt!2628779 rTail!78 s!13591) lt!2628870)))

(declare-fun bs!1934307 () Bool)

(assert (= bs!1934307 d!2300633))

(assert (=> bs!1934307 m!8074662))

(declare-fun m!8075142 () Bool)

(assert (=> bs!1934307 m!8075142))

(assert (=> bs!1934307 m!8074662))

(assert (=> bs!1934307 m!8074664))

(declare-fun m!8075144 () Bool)

(assert (=> bs!1934307 m!8075144))

(assert (=> bs!1934307 m!8075054))

(assert (=> b!7483730 d!2300633))

(declare-fun b!7484394 () Bool)

(declare-fun e!4464010 () Bool)

(declare-fun lt!2628871 () Bool)

(declare-fun call!687072 () Bool)

(assert (=> b!7484394 (= e!4464010 (= lt!2628871 call!687072))))

(declare-fun b!7484395 () Bool)

(declare-fun e!4464016 () Bool)

(assert (=> b!7484395 (= e!4464016 (= (head!15356 (_2!37647 lt!2628787)) (c!1382224 rTail!78)))))

(declare-fun b!7484396 () Bool)

(declare-fun e!4464011 () Bool)

(assert (=> b!7484396 (= e!4464011 (nullable!8556 rTail!78))))

(declare-fun b!7484397 () Bool)

(declare-fun res!3002901 () Bool)

(assert (=> b!7484397 (=> (not res!3002901) (not e!4464016))))

(assert (=> b!7484397 (= res!3002901 (not call!687072))))

(declare-fun b!7484399 () Bool)

(declare-fun e!4464015 () Bool)

(assert (=> b!7484399 (= e!4464015 (not lt!2628871))))

(declare-fun b!7484400 () Bool)

(declare-fun e!4464013 () Bool)

(assert (=> b!7484400 (= e!4464013 (not (= (head!15356 (_2!37647 lt!2628787)) (c!1382224 rTail!78))))))

(declare-fun b!7484401 () Bool)

(declare-fun res!3002906 () Bool)

(assert (=> b!7484401 (=> (not res!3002906) (not e!4464016))))

(assert (=> b!7484401 (= res!3002906 (isEmpty!41228 (tail!14925 (_2!37647 lt!2628787))))))

(declare-fun bm!687067 () Bool)

(assert (=> bm!687067 (= call!687072 (isEmpty!41228 (_2!37647 lt!2628787)))))

(declare-fun b!7484402 () Bool)

(declare-fun res!3002905 () Bool)

(assert (=> b!7484402 (=> res!3002905 e!4464013)))

(assert (=> b!7484402 (= res!3002905 (not (isEmpty!41228 (tail!14925 (_2!37647 lt!2628787)))))))

(declare-fun b!7484403 () Bool)

(assert (=> b!7484403 (= e!4464011 (matchR!9383 (derivativeStep!5616 rTail!78 (head!15356 (_2!37647 lt!2628787))) (tail!14925 (_2!37647 lt!2628787))))))

(declare-fun b!7484404 () Bool)

(assert (=> b!7484404 (= e!4464010 e!4464015)))

(declare-fun c!1382386 () Bool)

(assert (=> b!7484404 (= c!1382386 ((_ is EmptyLang!19619) rTail!78))))

(declare-fun b!7484405 () Bool)

(declare-fun e!4464012 () Bool)

(assert (=> b!7484405 (= e!4464012 e!4464013)))

(declare-fun res!3002904 () Bool)

(assert (=> b!7484405 (=> res!3002904 e!4464013)))

(assert (=> b!7484405 (= res!3002904 call!687072)))

(declare-fun d!2300635 () Bool)

(assert (=> d!2300635 e!4464010))

(declare-fun c!1382387 () Bool)

(assert (=> d!2300635 (= c!1382387 ((_ is EmptyExpr!19619) rTail!78))))

(assert (=> d!2300635 (= lt!2628871 e!4464011)))

(declare-fun c!1382388 () Bool)

(assert (=> d!2300635 (= c!1382388 (isEmpty!41228 (_2!37647 lt!2628787)))))

(assert (=> d!2300635 (validRegex!10133 rTail!78)))

(assert (=> d!2300635 (= (matchR!9383 rTail!78 (_2!37647 lt!2628787)) lt!2628871)))

(declare-fun b!7484398 () Bool)

(declare-fun e!4464014 () Bool)

(assert (=> b!7484398 (= e!4464014 e!4464012)))

(declare-fun res!3002902 () Bool)

(assert (=> b!7484398 (=> (not res!3002902) (not e!4464012))))

(assert (=> b!7484398 (= res!3002902 (not lt!2628871))))

(declare-fun b!7484406 () Bool)

(declare-fun res!3002900 () Bool)

(assert (=> b!7484406 (=> res!3002900 e!4464014)))

(assert (=> b!7484406 (= res!3002900 e!4464016)))

(declare-fun res!3002903 () Bool)

(assert (=> b!7484406 (=> (not res!3002903) (not e!4464016))))

(assert (=> b!7484406 (= res!3002903 lt!2628871)))

(declare-fun b!7484407 () Bool)

(declare-fun res!3002899 () Bool)

(assert (=> b!7484407 (=> res!3002899 e!4464014)))

(assert (=> b!7484407 (= res!3002899 (not ((_ is ElementMatch!19619) rTail!78)))))

(assert (=> b!7484407 (= e!4464015 e!4464014)))

(assert (= (and d!2300635 c!1382388) b!7484396))

(assert (= (and d!2300635 (not c!1382388)) b!7484403))

(assert (= (and d!2300635 c!1382387) b!7484394))

(assert (= (and d!2300635 (not c!1382387)) b!7484404))

(assert (= (and b!7484404 c!1382386) b!7484399))

(assert (= (and b!7484404 (not c!1382386)) b!7484407))

(assert (= (and b!7484407 (not res!3002899)) b!7484406))

(assert (= (and b!7484406 res!3002903) b!7484397))

(assert (= (and b!7484397 res!3002901) b!7484401))

(assert (= (and b!7484401 res!3002906) b!7484395))

(assert (= (and b!7484406 (not res!3002900)) b!7484398))

(assert (= (and b!7484398 res!3002902) b!7484405))

(assert (= (and b!7484405 (not res!3002904)) b!7484402))

(assert (= (and b!7484402 (not res!3002905)) b!7484400))

(assert (= (or b!7484394 b!7484397 b!7484405) bm!687067))

(declare-fun m!8075146 () Bool)

(assert (=> b!7484402 m!8075146))

(assert (=> b!7484402 m!8075146))

(declare-fun m!8075148 () Bool)

(assert (=> b!7484402 m!8075148))

(declare-fun m!8075150 () Bool)

(assert (=> bm!687067 m!8075150))

(declare-fun m!8075152 () Bool)

(assert (=> b!7484400 m!8075152))

(assert (=> d!2300635 m!8075150))

(assert (=> d!2300635 m!8074694))

(declare-fun m!8075154 () Bool)

(assert (=> b!7484396 m!8075154))

(assert (=> b!7484401 m!8075146))

(assert (=> b!7484401 m!8075146))

(assert (=> b!7484401 m!8075148))

(assert (=> b!7484395 m!8075152))

(assert (=> b!7484403 m!8075152))

(assert (=> b!7484403 m!8075152))

(declare-fun m!8075156 () Bool)

(assert (=> b!7484403 m!8075156))

(assert (=> b!7484403 m!8075146))

(assert (=> b!7484403 m!8075156))

(assert (=> b!7484403 m!8075146))

(declare-fun m!8075158 () Bool)

(assert (=> b!7484403 m!8075158))

(assert (=> b!7483719 d!2300635))

(declare-fun b!7484429 () Bool)

(declare-fun e!4464026 () Bool)

(declare-fun tp!2170680 () Bool)

(assert (=> b!7484429 (= e!4464026 tp!2170680)))

(assert (=> b!7483732 (= tp!2170653 e!4464026)))

(declare-fun b!7484427 () Bool)

(assert (=> b!7484427 (= e!4464026 tp_is_empty!49527)))

(declare-fun b!7484430 () Bool)

(declare-fun tp!2170678 () Bool)

(declare-fun tp!2170682 () Bool)

(assert (=> b!7484430 (= e!4464026 (and tp!2170678 tp!2170682))))

(declare-fun b!7484428 () Bool)

(declare-fun tp!2170679 () Bool)

(declare-fun tp!2170681 () Bool)

(assert (=> b!7484428 (= e!4464026 (and tp!2170679 tp!2170681))))

(assert (= (and b!7483732 ((_ is ElementMatch!19619) (regOne!39751 r1!5845))) b!7484427))

(assert (= (and b!7483732 ((_ is Concat!28464) (regOne!39751 r1!5845))) b!7484428))

(assert (= (and b!7483732 ((_ is Star!19619) (regOne!39751 r1!5845))) b!7484429))

(assert (= (and b!7483732 ((_ is Union!19619) (regOne!39751 r1!5845))) b!7484430))

(declare-fun b!7484433 () Bool)

(declare-fun e!4464027 () Bool)

(declare-fun tp!2170685 () Bool)

(assert (=> b!7484433 (= e!4464027 tp!2170685)))

(assert (=> b!7483732 (= tp!2170658 e!4464027)))

(declare-fun b!7484431 () Bool)

(assert (=> b!7484431 (= e!4464027 tp_is_empty!49527)))

(declare-fun b!7484434 () Bool)

(declare-fun tp!2170683 () Bool)

(declare-fun tp!2170687 () Bool)

(assert (=> b!7484434 (= e!4464027 (and tp!2170683 tp!2170687))))

(declare-fun b!7484432 () Bool)

(declare-fun tp!2170684 () Bool)

(declare-fun tp!2170686 () Bool)

(assert (=> b!7484432 (= e!4464027 (and tp!2170684 tp!2170686))))

(assert (= (and b!7483732 ((_ is ElementMatch!19619) (regTwo!39751 r1!5845))) b!7484431))

(assert (= (and b!7483732 ((_ is Concat!28464) (regTwo!39751 r1!5845))) b!7484432))

(assert (= (and b!7483732 ((_ is Star!19619) (regTwo!39751 r1!5845))) b!7484433))

(assert (= (and b!7483732 ((_ is Union!19619) (regTwo!39751 r1!5845))) b!7484434))

(declare-fun b!7484446 () Bool)

(declare-fun e!4464035 () Bool)

(declare-fun tp!2170690 () Bool)

(assert (=> b!7484446 (= e!4464035 tp!2170690)))

(assert (=> b!7483721 (= tp!2170662 e!4464035)))

(declare-fun b!7484444 () Bool)

(assert (=> b!7484444 (= e!4464035 tp_is_empty!49527)))

(declare-fun b!7484447 () Bool)

(declare-fun tp!2170688 () Bool)

(declare-fun tp!2170692 () Bool)

(assert (=> b!7484447 (= e!4464035 (and tp!2170688 tp!2170692))))

(declare-fun b!7484445 () Bool)

(declare-fun tp!2170689 () Bool)

(declare-fun tp!2170691 () Bool)

(assert (=> b!7484445 (= e!4464035 (and tp!2170689 tp!2170691))))

(assert (= (and b!7483721 ((_ is ElementMatch!19619) (regOne!39750 r2!5783))) b!7484444))

(assert (= (and b!7483721 ((_ is Concat!28464) (regOne!39750 r2!5783))) b!7484445))

(assert (= (and b!7483721 ((_ is Star!19619) (regOne!39750 r2!5783))) b!7484446))

(assert (= (and b!7483721 ((_ is Union!19619) (regOne!39750 r2!5783))) b!7484447))

(declare-fun b!7484450 () Bool)

(declare-fun e!4464036 () Bool)

(declare-fun tp!2170695 () Bool)

(assert (=> b!7484450 (= e!4464036 tp!2170695)))

(assert (=> b!7483721 (= tp!2170664 e!4464036)))

(declare-fun b!7484448 () Bool)

(assert (=> b!7484448 (= e!4464036 tp_is_empty!49527)))

(declare-fun b!7484451 () Bool)

(declare-fun tp!2170693 () Bool)

(declare-fun tp!2170697 () Bool)

(assert (=> b!7484451 (= e!4464036 (and tp!2170693 tp!2170697))))

(declare-fun b!7484449 () Bool)

(declare-fun tp!2170694 () Bool)

(declare-fun tp!2170696 () Bool)

(assert (=> b!7484449 (= e!4464036 (and tp!2170694 tp!2170696))))

(assert (= (and b!7483721 ((_ is ElementMatch!19619) (regTwo!39750 r2!5783))) b!7484448))

(assert (= (and b!7483721 ((_ is Concat!28464) (regTwo!39750 r2!5783))) b!7484449))

(assert (= (and b!7483721 ((_ is Star!19619) (regTwo!39750 r2!5783))) b!7484450))

(assert (= (and b!7483721 ((_ is Union!19619) (regTwo!39750 r2!5783))) b!7484451))

(declare-fun b!7484454 () Bool)

(declare-fun e!4464037 () Bool)

(declare-fun tp!2170700 () Bool)

(assert (=> b!7484454 (= e!4464037 tp!2170700)))

(assert (=> b!7483726 (= tp!2170659 e!4464037)))

(declare-fun b!7484452 () Bool)

(assert (=> b!7484452 (= e!4464037 tp_is_empty!49527)))

(declare-fun b!7484455 () Bool)

(declare-fun tp!2170698 () Bool)

(declare-fun tp!2170702 () Bool)

(assert (=> b!7484455 (= e!4464037 (and tp!2170698 tp!2170702))))

(declare-fun b!7484453 () Bool)

(declare-fun tp!2170699 () Bool)

(declare-fun tp!2170701 () Bool)

(assert (=> b!7484453 (= e!4464037 (and tp!2170699 tp!2170701))))

(assert (= (and b!7483726 ((_ is ElementMatch!19619) (reg!19948 r1!5845))) b!7484452))

(assert (= (and b!7483726 ((_ is Concat!28464) (reg!19948 r1!5845))) b!7484453))

(assert (= (and b!7483726 ((_ is Star!19619) (reg!19948 r1!5845))) b!7484454))

(assert (= (and b!7483726 ((_ is Union!19619) (reg!19948 r1!5845))) b!7484455))

(declare-fun b!7484460 () Bool)

(declare-fun e!4464038 () Bool)

(declare-fun tp!2170705 () Bool)

(assert (=> b!7484460 (= e!4464038 tp!2170705)))

(assert (=> b!7483727 (= tp!2170666 e!4464038)))

(declare-fun b!7484458 () Bool)

(assert (=> b!7484458 (= e!4464038 tp_is_empty!49527)))

(declare-fun b!7484461 () Bool)

(declare-fun tp!2170703 () Bool)

(declare-fun tp!2170707 () Bool)

(assert (=> b!7484461 (= e!4464038 (and tp!2170703 tp!2170707))))

(declare-fun b!7484459 () Bool)

(declare-fun tp!2170704 () Bool)

(declare-fun tp!2170706 () Bool)

(assert (=> b!7484459 (= e!4464038 (and tp!2170704 tp!2170706))))

(assert (= (and b!7483727 ((_ is ElementMatch!19619) (regOne!39751 r2!5783))) b!7484458))

(assert (= (and b!7483727 ((_ is Concat!28464) (regOne!39751 r2!5783))) b!7484459))

(assert (= (and b!7483727 ((_ is Star!19619) (regOne!39751 r2!5783))) b!7484460))

(assert (= (and b!7483727 ((_ is Union!19619) (regOne!39751 r2!5783))) b!7484461))

(declare-fun b!7484466 () Bool)

(declare-fun e!4464041 () Bool)

(declare-fun tp!2170712 () Bool)

(assert (=> b!7484466 (= e!4464041 tp!2170712)))

(assert (=> b!7483727 (= tp!2170655 e!4464041)))

(declare-fun b!7484464 () Bool)

(assert (=> b!7484464 (= e!4464041 tp_is_empty!49527)))

(declare-fun b!7484467 () Bool)

(declare-fun tp!2170710 () Bool)

(declare-fun tp!2170714 () Bool)

(assert (=> b!7484467 (= e!4464041 (and tp!2170710 tp!2170714))))

(declare-fun b!7484465 () Bool)

(declare-fun tp!2170711 () Bool)

(declare-fun tp!2170713 () Bool)

(assert (=> b!7484465 (= e!4464041 (and tp!2170711 tp!2170713))))

(assert (= (and b!7483727 ((_ is ElementMatch!19619) (regTwo!39751 r2!5783))) b!7484464))

(assert (= (and b!7483727 ((_ is Concat!28464) (regTwo!39751 r2!5783))) b!7484465))

(assert (= (and b!7483727 ((_ is Star!19619) (regTwo!39751 r2!5783))) b!7484466))

(assert (= (and b!7483727 ((_ is Union!19619) (regTwo!39751 r2!5783))) b!7484467))

(declare-fun b!7484471 () Bool)

(declare-fun e!4464043 () Bool)

(declare-fun tp!2170718 () Bool)

(assert (=> b!7484471 (= e!4464043 tp!2170718)))

(assert (=> b!7483724 (= tp!2170652 e!4464043)))

(declare-fun b!7484469 () Bool)

(assert (=> b!7484469 (= e!4464043 tp_is_empty!49527)))

(declare-fun b!7484472 () Bool)

(declare-fun tp!2170716 () Bool)

(declare-fun tp!2170720 () Bool)

(assert (=> b!7484472 (= e!4464043 (and tp!2170716 tp!2170720))))

(declare-fun b!7484470 () Bool)

(declare-fun tp!2170717 () Bool)

(declare-fun tp!2170719 () Bool)

(assert (=> b!7484470 (= e!4464043 (and tp!2170717 tp!2170719))))

(assert (= (and b!7483724 ((_ is ElementMatch!19619) (regOne!39751 rTail!78))) b!7484469))

(assert (= (and b!7483724 ((_ is Concat!28464) (regOne!39751 rTail!78))) b!7484470))

(assert (= (and b!7483724 ((_ is Star!19619) (regOne!39751 rTail!78))) b!7484471))

(assert (= (and b!7483724 ((_ is Union!19619) (regOne!39751 rTail!78))) b!7484472))

(declare-fun b!7484481 () Bool)

(declare-fun e!4464046 () Bool)

(declare-fun tp!2170727 () Bool)

(assert (=> b!7484481 (= e!4464046 tp!2170727)))

(assert (=> b!7483724 (= tp!2170667 e!4464046)))

(declare-fun b!7484479 () Bool)

(assert (=> b!7484479 (= e!4464046 tp_is_empty!49527)))

(declare-fun b!7484482 () Bool)

(declare-fun tp!2170723 () Bool)

(declare-fun tp!2170729 () Bool)

(assert (=> b!7484482 (= e!4464046 (and tp!2170723 tp!2170729))))

(declare-fun b!7484480 () Bool)

(declare-fun tp!2170726 () Bool)

(declare-fun tp!2170728 () Bool)

(assert (=> b!7484480 (= e!4464046 (and tp!2170726 tp!2170728))))

(assert (= (and b!7483724 ((_ is ElementMatch!19619) (regTwo!39751 rTail!78))) b!7484479))

(assert (= (and b!7483724 ((_ is Concat!28464) (regTwo!39751 rTail!78))) b!7484480))

(assert (= (and b!7483724 ((_ is Star!19619) (regTwo!39751 rTail!78))) b!7484481))

(assert (= (and b!7483724 ((_ is Union!19619) (regTwo!39751 rTail!78))) b!7484482))

(declare-fun b!7484489 () Bool)

(declare-fun e!4464047 () Bool)

(declare-fun tp!2170738 () Bool)

(assert (=> b!7484489 (= e!4464047 tp!2170738)))

(assert (=> b!7483729 (= tp!2170654 e!4464047)))

(declare-fun b!7484487 () Bool)

(assert (=> b!7484487 (= e!4464047 tp_is_empty!49527)))

(declare-fun b!7484490 () Bool)

(declare-fun tp!2170736 () Bool)

(declare-fun tp!2170740 () Bool)

(assert (=> b!7484490 (= e!4464047 (and tp!2170736 tp!2170740))))

(declare-fun b!7484488 () Bool)

(declare-fun tp!2170737 () Bool)

(declare-fun tp!2170739 () Bool)

(assert (=> b!7484488 (= e!4464047 (and tp!2170737 tp!2170739))))

(assert (= (and b!7483729 ((_ is ElementMatch!19619) (regOne!39750 rTail!78))) b!7484487))

(assert (= (and b!7483729 ((_ is Concat!28464) (regOne!39750 rTail!78))) b!7484488))

(assert (= (and b!7483729 ((_ is Star!19619) (regOne!39750 rTail!78))) b!7484489))

(assert (= (and b!7483729 ((_ is Union!19619) (regOne!39750 rTail!78))) b!7484490))

(declare-fun b!7484493 () Bool)

(declare-fun e!4464048 () Bool)

(declare-fun tp!2170743 () Bool)

(assert (=> b!7484493 (= e!4464048 tp!2170743)))

(assert (=> b!7483729 (= tp!2170665 e!4464048)))

(declare-fun b!7484491 () Bool)

(assert (=> b!7484491 (= e!4464048 tp_is_empty!49527)))

(declare-fun b!7484494 () Bool)

(declare-fun tp!2170741 () Bool)

(declare-fun tp!2170745 () Bool)

(assert (=> b!7484494 (= e!4464048 (and tp!2170741 tp!2170745))))

(declare-fun b!7484492 () Bool)

(declare-fun tp!2170742 () Bool)

(declare-fun tp!2170744 () Bool)

(assert (=> b!7484492 (= e!4464048 (and tp!2170742 tp!2170744))))

(assert (= (and b!7483729 ((_ is ElementMatch!19619) (regTwo!39750 rTail!78))) b!7484491))

(assert (= (and b!7483729 ((_ is Concat!28464) (regTwo!39750 rTail!78))) b!7484492))

(assert (= (and b!7483729 ((_ is Star!19619) (regTwo!39750 rTail!78))) b!7484493))

(assert (= (and b!7483729 ((_ is Union!19619) (regTwo!39750 rTail!78))) b!7484494))

(declare-fun b!7484497 () Bool)

(declare-fun e!4464049 () Bool)

(declare-fun tp!2170748 () Bool)

(assert (=> b!7484497 (= e!4464049 tp!2170748)))

(assert (=> b!7483718 (= tp!2170663 e!4464049)))

(declare-fun b!7484495 () Bool)

(assert (=> b!7484495 (= e!4464049 tp_is_empty!49527)))

(declare-fun b!7484498 () Bool)

(declare-fun tp!2170746 () Bool)

(declare-fun tp!2170750 () Bool)

(assert (=> b!7484498 (= e!4464049 (and tp!2170746 tp!2170750))))

(declare-fun b!7484496 () Bool)

(declare-fun tp!2170747 () Bool)

(declare-fun tp!2170749 () Bool)

(assert (=> b!7484496 (= e!4464049 (and tp!2170747 tp!2170749))))

(assert (= (and b!7483718 ((_ is ElementMatch!19619) (reg!19948 rTail!78))) b!7484495))

(assert (= (and b!7483718 ((_ is Concat!28464) (reg!19948 rTail!78))) b!7484496))

(assert (= (and b!7483718 ((_ is Star!19619) (reg!19948 rTail!78))) b!7484497))

(assert (= (and b!7483718 ((_ is Union!19619) (reg!19948 rTail!78))) b!7484498))

(declare-fun b!7484505 () Bool)

(declare-fun e!4464051 () Bool)

(declare-fun tp!2170758 () Bool)

(assert (=> b!7484505 (= e!4464051 tp!2170758)))

(assert (=> b!7483734 (= tp!2170660 e!4464051)))

(declare-fun b!7484503 () Bool)

(assert (=> b!7484503 (= e!4464051 tp_is_empty!49527)))

(declare-fun b!7484506 () Bool)

(declare-fun tp!2170756 () Bool)

(declare-fun tp!2170760 () Bool)

(assert (=> b!7484506 (= e!4464051 (and tp!2170756 tp!2170760))))

(declare-fun b!7484504 () Bool)

(declare-fun tp!2170757 () Bool)

(declare-fun tp!2170759 () Bool)

(assert (=> b!7484504 (= e!4464051 (and tp!2170757 tp!2170759))))

(assert (= (and b!7483734 ((_ is ElementMatch!19619) (reg!19948 r2!5783))) b!7484503))

(assert (= (and b!7483734 ((_ is Concat!28464) (reg!19948 r2!5783))) b!7484504))

(assert (= (and b!7483734 ((_ is Star!19619) (reg!19948 r2!5783))) b!7484505))

(assert (= (and b!7483734 ((_ is Union!19619) (reg!19948 r2!5783))) b!7484506))

(declare-fun b!7484519 () Bool)

(declare-fun e!4464056 () Bool)

(declare-fun tp!2170773 () Bool)

(assert (=> b!7484519 (= e!4464056 (and tp_is_empty!49527 tp!2170773))))

(assert (=> b!7483720 (= tp!2170657 e!4464056)))

(assert (= (and b!7483720 ((_ is Cons!72211) (t!386904 s!13591))) b!7484519))

(declare-fun b!7484525 () Bool)

(declare-fun e!4464057 () Bool)

(declare-fun tp!2170779 () Bool)

(assert (=> b!7484525 (= e!4464057 tp!2170779)))

(assert (=> b!7483735 (= tp!2170661 e!4464057)))

(declare-fun b!7484521 () Bool)

(assert (=> b!7484521 (= e!4464057 tp_is_empty!49527)))

(declare-fun b!7484527 () Bool)

(declare-fun tp!2170775 () Bool)

(declare-fun tp!2170783 () Bool)

(assert (=> b!7484527 (= e!4464057 (and tp!2170775 tp!2170783))))

(declare-fun b!7484523 () Bool)

(declare-fun tp!2170777 () Bool)

(declare-fun tp!2170781 () Bool)

(assert (=> b!7484523 (= e!4464057 (and tp!2170777 tp!2170781))))

(assert (= (and b!7483735 ((_ is ElementMatch!19619) (regOne!39750 r1!5845))) b!7484521))

(assert (= (and b!7483735 ((_ is Concat!28464) (regOne!39750 r1!5845))) b!7484523))

(assert (= (and b!7483735 ((_ is Star!19619) (regOne!39750 r1!5845))) b!7484525))

(assert (= (and b!7483735 ((_ is Union!19619) (regOne!39750 r1!5845))) b!7484527))

(declare-fun b!7484534 () Bool)

(declare-fun e!4464060 () Bool)

(declare-fun tp!2170791 () Bool)

(assert (=> b!7484534 (= e!4464060 tp!2170791)))

(assert (=> b!7483735 (= tp!2170656 e!4464060)))

(declare-fun b!7484532 () Bool)

(assert (=> b!7484532 (= e!4464060 tp_is_empty!49527)))

(declare-fun b!7484535 () Bool)

(declare-fun tp!2170789 () Bool)

(declare-fun tp!2170793 () Bool)

(assert (=> b!7484535 (= e!4464060 (and tp!2170789 tp!2170793))))

(declare-fun b!7484533 () Bool)

(declare-fun tp!2170790 () Bool)

(declare-fun tp!2170792 () Bool)

(assert (=> b!7484533 (= e!4464060 (and tp!2170790 tp!2170792))))

(assert (= (and b!7483735 ((_ is ElementMatch!19619) (regTwo!39750 r1!5845))) b!7484532))

(assert (= (and b!7483735 ((_ is Concat!28464) (regTwo!39750 r1!5845))) b!7484533))

(assert (= (and b!7483735 ((_ is Star!19619) (regTwo!39750 r1!5845))) b!7484534))

(assert (= (and b!7483735 ((_ is Union!19619) (regTwo!39750 r1!5845))) b!7484535))

(check-sat (not b!7483979) (not b!7484097) (not b!7484242) (not b!7484497) (not b!7484374) (not bm!687054) (not bm!687031) (not b!7484534) (not b!7484480) (not b!7483771) (not b!7484041) (not bm!687013) (not b!7484450) (not b!7484396) (not b!7484449) (not b!7484168) (not b!7484446) (not b!7484434) (not b!7484046) (not b!7484117) (not b!7484430) (not bm!687014) (not b!7484047) (not d!2300609) (not b!7484403) (not b!7483836) (not b!7484451) (not b!7484505) (not b!7484465) (not bm!686998) (not b!7484302) (not b!7484240) (not b!7484490) (not b!7484115) (not b!7484466) (not b!7484321) (not b!7484533) (not b!7484395) (not b!7484400) (not d!2300591) (not b!7484445) (not b!7484527) (not bm!687053) (not b!7484373) (not b!7484116) (not b!7484244) (not b!7484467) (not b!7484494) (not b!7484489) (not b!7483975) (not b!7484454) (not b!7484472) (not d!2300597) (not d!2300617) (not b!7484368) (not bm!687030) (not b!7484317) (not b!7484307) (not b!7484523) (not b!7484111) (not bm!687047) (not b!7484310) (not d!2300635) (not d!2300535) (not b!7483980) (not b!7483843) (not b!7484375) (not bm!687038) (not b!7484176) (not b!7483943) (not b!7484402) (not d!2300619) (not b!7484292) (not b!7484470) (not b!7484322) (not bm!686997) (not d!2300563) (not d!2300515) (not b!7484432) (not b!7484173) (not bm!687035) tp_is_empty!49527 (not b!7484428) (not d!2300613) (not b!7484174) (not b!7484498) (not d!2300547) (not b!7484247) (not b!7484169) (not b!7484360) (not b!7483840) (not b!7484492) (not b!7484110) (not b!7484370) (not bm!687052) (not d!2300559) (not b!7484447) (not b!7484175) (not b!7484471) (not d!2300525) (not b!7483835) (not bm!687004) (not b!7483841) (not b!7484049) (not d!2300561) (not b!7483842) (not b!7483982) (not b!7484251) (not bm!687027) (not d!2300513) (not b!7484429) (not b!7483981) (not b!7483762) (not bm!686995) (not d!2300509) (not d!2300545) (not b!7484482) (not b!7484401) (not b!7483990) (not d!2300497) (not b!7484339) (not b!7484455) (not b!7484525) (not b!7484303) (not b!7484246) (not bm!687049) (not b!7484118) (not b!7484048) (not bm!687062) (not d!2300533) (not b!7484433) (not b!7484075) (not d!2300633) (not bm!687044) (not b!7484309) (not bm!687061) (not bm!687034) (not b!7484316) (not bm!687021) (not bm!687046) (not b!7484324) (not bm!687023) (not b!7484323) (not b!7484285) (not b!7484460) (not b!7484504) (not b!7484308) (not b!7484488) (not b!7484506) (not b!7484453) (not d!2300615) (not d!2300575) (not d!2300599) (not b!7483974) (not b!7484459) (not b!7483997) (not b!7484332) (not d!2300567) (not b!7484493) (not b!7484258) (not d!2300565) (not b!7484535) (not b!7484068) (not b!7484461) (not b!7484519) (not b!7484496) (not bm!687022) (not b!7484481) (not bm!687051) (not bm!686994) (not bm!687050) (not b!7483950) (not b!7484372) (not d!2300631) (not bm!687067) (not b!7484042) (not b!7484245) (not b!7484090) (not d!2300595))
(check-sat)
