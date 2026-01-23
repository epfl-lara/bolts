; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!81812 () Bool)

(assert start!81812)

(declare-fun b!909830 () Bool)

(assert (=> b!909830 true))

(assert (=> b!909830 true))

(declare-fun lambda!28946 () Int)

(declare-fun lambda!28945 () Int)

(assert (=> b!909830 (not (= lambda!28946 lambda!28945))))

(assert (=> b!909830 true))

(assert (=> b!909830 true))

(declare-fun b!909826 () Bool)

(declare-fun e!593680 () Bool)

(declare-fun tp_is_empty!4491 () Bool)

(assert (=> b!909826 (= e!593680 tp_is_empty!4491)))

(declare-fun b!909827 () Bool)

(declare-fun e!593677 () Bool)

(declare-fun tp!284653 () Bool)

(assert (=> b!909827 (= e!593677 (and tp_is_empty!4491 tp!284653))))

(declare-fun b!909828 () Bool)

(declare-fun tp!284650 () Bool)

(assert (=> b!909828 (= e!593680 tp!284650)))

(declare-fun b!909829 () Bool)

(declare-fun tp!284651 () Bool)

(declare-fun tp!284654 () Bool)

(assert (=> b!909829 (= e!593680 (and tp!284651 tp!284654))))

(declare-fun e!593678 () Bool)

(declare-fun e!593679 () Bool)

(assert (=> b!909830 (= e!593678 e!593679)))

(declare-fun res!413737 () Bool)

(assert (=> b!909830 (=> res!413737 e!593679)))

(declare-datatypes ((C!5418 0))(
  ( (C!5419 (val!2957 Int)) )
))
(declare-datatypes ((List!9654 0))(
  ( (Nil!9638) (Cons!9638 (h!15039 C!5418) (t!100700 List!9654)) )
))
(declare-fun s!10566 () List!9654)

(declare-fun isEmpty!5851 (List!9654) Bool)

(assert (=> b!909830 (= res!413737 (isEmpty!5851 s!10566))))

(declare-fun Exists!197 (Int) Bool)

(assert (=> b!909830 (= (Exists!197 lambda!28945) (Exists!197 lambda!28946))))

(declare-datatypes ((Unit!14467 0))(
  ( (Unit!14468) )
))
(declare-fun lt!336415 () Unit!14467)

(declare-datatypes ((Regex!2424 0))(
  ( (ElementMatch!2424 (c!147361 C!5418)) (Concat!4257 (regOne!5360 Regex!2424) (regTwo!5360 Regex!2424)) (EmptyExpr!2424) (Star!2424 (reg!2753 Regex!2424)) (EmptyLang!2424) (Union!2424 (regOne!5361 Regex!2424) (regTwo!5361 Regex!2424)) )
))
(declare-fun r!15766 () Regex!2424)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!111 (Regex!2424 Regex!2424 List!9654) Unit!14467)

(assert (=> b!909830 (= lt!336415 (lemmaExistCutMatchRandMatchRSpecEquivalent!111 (regOne!5360 r!15766) EmptyExpr!2424 s!10566))))

(declare-datatypes ((tuple2!10838 0))(
  ( (tuple2!10839 (_1!6245 List!9654) (_2!6245 List!9654)) )
))
(declare-datatypes ((Option!2061 0))(
  ( (None!2060) (Some!2060 (v!19477 tuple2!10838)) )
))
(declare-fun lt!336416 () Option!2061)

(declare-fun isDefined!1703 (Option!2061) Bool)

(assert (=> b!909830 (= (isDefined!1703 lt!336416) (Exists!197 lambda!28945))))

(declare-fun findConcatSeparation!167 (Regex!2424 Regex!2424 List!9654 List!9654 List!9654) Option!2061)

(assert (=> b!909830 (= lt!336416 (findConcatSeparation!167 (regOne!5360 r!15766) EmptyExpr!2424 Nil!9638 s!10566 s!10566))))

(declare-fun lt!336417 () Unit!14467)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!167 (Regex!2424 Regex!2424 List!9654) Unit!14467)

(assert (=> b!909830 (= lt!336417 (lemmaFindConcatSeparationEquivalentToExists!167 (regOne!5360 r!15766) EmptyExpr!2424 s!10566))))

(declare-fun b!909831 () Bool)

(declare-fun tp!284649 () Bool)

(declare-fun tp!284652 () Bool)

(assert (=> b!909831 (= e!593680 (and tp!284649 tp!284652))))

(declare-fun b!909832 () Bool)

(declare-fun res!413738 () Bool)

(assert (=> b!909832 (=> res!413738 e!593679)))

(declare-fun isEmpty!5852 (Option!2061) Bool)

(assert (=> b!909832 (= res!413738 (not (isEmpty!5852 lt!336416)))))

(declare-fun b!909834 () Bool)

(declare-fun e!593676 () Bool)

(assert (=> b!909834 (= e!593676 (not e!593678))))

(declare-fun res!413739 () Bool)

(assert (=> b!909834 (=> res!413739 e!593678)))

(declare-fun lt!336419 () Bool)

(assert (=> b!909834 (= res!413739 (or lt!336419 (and (is-Concat!4257 r!15766) (is-EmptyExpr!2424 (regOne!5360 r!15766))) (not (is-Concat!4257 r!15766)) (not (is-EmptyExpr!2424 (regTwo!5360 r!15766)))))))

(declare-fun matchRSpec!225 (Regex!2424 List!9654) Bool)

(assert (=> b!909834 (= lt!336419 (matchRSpec!225 r!15766 s!10566))))

(declare-fun matchR!962 (Regex!2424 List!9654) Bool)

(assert (=> b!909834 (= lt!336419 (matchR!962 r!15766 s!10566))))

(declare-fun lt!336414 () Unit!14467)

(declare-fun mainMatchTheorem!225 (Regex!2424 List!9654) Unit!14467)

(assert (=> b!909834 (= lt!336414 (mainMatchTheorem!225 r!15766 s!10566))))

(declare-fun b!909833 () Bool)

(declare-fun validRegex!893 (Regex!2424) Bool)

(assert (=> b!909833 (= e!593679 (validRegex!893 (regOne!5360 r!15766)))))

(declare-fun removeUselessConcat!109 (Regex!2424) Regex!2424)

(assert (=> b!909833 (= (matchR!962 (regOne!5360 r!15766) s!10566) (matchR!962 (removeUselessConcat!109 (regOne!5360 r!15766)) s!10566))))

(declare-fun lt!336418 () Unit!14467)

(declare-fun lemmaRemoveUselessConcatSound!95 (Regex!2424 List!9654) Unit!14467)

(assert (=> b!909833 (= lt!336418 (lemmaRemoveUselessConcatSound!95 (regOne!5360 r!15766) s!10566))))

(declare-fun res!413740 () Bool)

(assert (=> start!81812 (=> (not res!413740) (not e!593676))))

(assert (=> start!81812 (= res!413740 (validRegex!893 r!15766))))

(assert (=> start!81812 e!593676))

(assert (=> start!81812 e!593680))

(assert (=> start!81812 e!593677))

(assert (= (and start!81812 res!413740) b!909834))

(assert (= (and b!909834 (not res!413739)) b!909830))

(assert (= (and b!909830 (not res!413737)) b!909832))

(assert (= (and b!909832 (not res!413738)) b!909833))

(assert (= (and start!81812 (is-ElementMatch!2424 r!15766)) b!909826))

(assert (= (and start!81812 (is-Concat!4257 r!15766)) b!909829))

(assert (= (and start!81812 (is-Star!2424 r!15766)) b!909828))

(assert (= (and start!81812 (is-Union!2424 r!15766)) b!909831))

(assert (= (and start!81812 (is-Cons!9638 s!10566)) b!909827))

(declare-fun m!1142737 () Bool)

(assert (=> b!909832 m!1142737))

(declare-fun m!1142739 () Bool)

(assert (=> b!909830 m!1142739))

(declare-fun m!1142741 () Bool)

(assert (=> b!909830 m!1142741))

(declare-fun m!1142743 () Bool)

(assert (=> b!909830 m!1142743))

(declare-fun m!1142745 () Bool)

(assert (=> b!909830 m!1142745))

(declare-fun m!1142747 () Bool)

(assert (=> b!909830 m!1142747))

(assert (=> b!909830 m!1142745))

(declare-fun m!1142749 () Bool)

(assert (=> b!909830 m!1142749))

(declare-fun m!1142751 () Bool)

(assert (=> b!909830 m!1142751))

(declare-fun m!1142753 () Bool)

(assert (=> b!909833 m!1142753))

(declare-fun m!1142755 () Bool)

(assert (=> b!909833 m!1142755))

(declare-fun m!1142757 () Bool)

(assert (=> b!909833 m!1142757))

(assert (=> b!909833 m!1142755))

(declare-fun m!1142759 () Bool)

(assert (=> b!909833 m!1142759))

(declare-fun m!1142761 () Bool)

(assert (=> b!909833 m!1142761))

(declare-fun m!1142763 () Bool)

(assert (=> b!909834 m!1142763))

(declare-fun m!1142765 () Bool)

(assert (=> b!909834 m!1142765))

(declare-fun m!1142767 () Bool)

(assert (=> b!909834 m!1142767))

(declare-fun m!1142769 () Bool)

(assert (=> start!81812 m!1142769))

(push 1)

(assert (not b!909833))

(assert (not b!909834))

(assert (not start!81812))

(assert (not b!909828))

(assert tp_is_empty!4491)

(assert (not b!909830))

(assert (not b!909829))

(assert (not b!909831))

(assert (not b!909827))

(assert (not b!909832))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!909910 () Bool)

(declare-fun res!413787 () Bool)

(declare-fun e!593717 () Bool)

(assert (=> b!909910 (=> res!413787 e!593717)))

(assert (=> b!909910 (= res!413787 (not (is-ElementMatch!2424 (regOne!5360 r!15766))))))

(declare-fun e!593719 () Bool)

(assert (=> b!909910 (= e!593719 e!593717)))

(declare-fun b!909911 () Bool)

(declare-fun res!413783 () Bool)

(assert (=> b!909911 (=> res!413783 e!593717)))

(declare-fun e!593722 () Bool)

(assert (=> b!909911 (= res!413783 e!593722)))

(declare-fun res!413786 () Bool)

(assert (=> b!909911 (=> (not res!413786) (not e!593722))))

(declare-fun lt!336440 () Bool)

(assert (=> b!909911 (= res!413786 lt!336440)))

(declare-fun b!909912 () Bool)

(declare-fun e!593721 () Bool)

(declare-fun head!1618 (List!9654) C!5418)

(assert (=> b!909912 (= e!593721 (not (= (head!1618 s!10566) (c!147361 (regOne!5360 r!15766)))))))

(declare-fun b!909913 () Bool)

(declare-fun res!413788 () Bool)

(assert (=> b!909913 (=> res!413788 e!593721)))

(declare-fun tail!1180 (List!9654) List!9654)

(assert (=> b!909913 (= res!413788 (not (isEmpty!5851 (tail!1180 s!10566))))))

(declare-fun b!909914 () Bool)

(declare-fun e!593716 () Bool)

(declare-fun call!54614 () Bool)

(assert (=> b!909914 (= e!593716 (= lt!336440 call!54614))))

(declare-fun b!909915 () Bool)

(assert (=> b!909915 (= e!593716 e!593719)))

(declare-fun c!147371 () Bool)

(assert (=> b!909915 (= c!147371 (is-EmptyLang!2424 (regOne!5360 r!15766)))))

(declare-fun b!909916 () Bool)

(assert (=> b!909916 (= e!593722 (= (head!1618 s!10566) (c!147361 (regOne!5360 r!15766))))))

(declare-fun b!909917 () Bool)

(declare-fun e!593720 () Bool)

(assert (=> b!909917 (= e!593717 e!593720)))

(declare-fun res!413781 () Bool)

(assert (=> b!909917 (=> (not res!413781) (not e!593720))))

(assert (=> b!909917 (= res!413781 (not lt!336440))))

(declare-fun b!909918 () Bool)

(declare-fun res!413785 () Bool)

(assert (=> b!909918 (=> (not res!413785) (not e!593722))))

(assert (=> b!909918 (= res!413785 (isEmpty!5851 (tail!1180 s!10566)))))

(declare-fun b!909919 () Bool)

(declare-fun res!413782 () Bool)

(assert (=> b!909919 (=> (not res!413782) (not e!593722))))

(assert (=> b!909919 (= res!413782 (not call!54614))))

(declare-fun b!909920 () Bool)

(declare-fun e!593718 () Bool)

(declare-fun nullable!655 (Regex!2424) Bool)

(assert (=> b!909920 (= e!593718 (nullable!655 (regOne!5360 r!15766)))))

(declare-fun bm!54609 () Bool)

(assert (=> bm!54609 (= call!54614 (isEmpty!5851 s!10566))))

(declare-fun b!909922 () Bool)

(declare-fun derivativeStep!465 (Regex!2424 C!5418) Regex!2424)

(assert (=> b!909922 (= e!593718 (matchR!962 (derivativeStep!465 (regOne!5360 r!15766) (head!1618 s!10566)) (tail!1180 s!10566)))))

(declare-fun b!909923 () Bool)

(assert (=> b!909923 (= e!593720 e!593721)))

(declare-fun res!413784 () Bool)

(assert (=> b!909923 (=> res!413784 e!593721)))

(assert (=> b!909923 (= res!413784 call!54614)))

(declare-fun b!909921 () Bool)

(assert (=> b!909921 (= e!593719 (not lt!336440))))

(declare-fun d!279180 () Bool)

(assert (=> d!279180 e!593716))

(declare-fun c!147370 () Bool)

(assert (=> d!279180 (= c!147370 (is-EmptyExpr!2424 (regOne!5360 r!15766)))))

(assert (=> d!279180 (= lt!336440 e!593718)))

(declare-fun c!147369 () Bool)

(assert (=> d!279180 (= c!147369 (isEmpty!5851 s!10566))))

(assert (=> d!279180 (validRegex!893 (regOne!5360 r!15766))))

(assert (=> d!279180 (= (matchR!962 (regOne!5360 r!15766) s!10566) lt!336440)))

(assert (= (and d!279180 c!147369) b!909920))

(assert (= (and d!279180 (not c!147369)) b!909922))

(assert (= (and d!279180 c!147370) b!909914))

(assert (= (and d!279180 (not c!147370)) b!909915))

(assert (= (and b!909915 c!147371) b!909921))

(assert (= (and b!909915 (not c!147371)) b!909910))

(assert (= (and b!909910 (not res!413787)) b!909911))

(assert (= (and b!909911 res!413786) b!909919))

(assert (= (and b!909919 res!413782) b!909918))

(assert (= (and b!909918 res!413785) b!909916))

(assert (= (and b!909911 (not res!413783)) b!909917))

(assert (= (and b!909917 res!413781) b!909923))

(assert (= (and b!909923 (not res!413784)) b!909913))

(assert (= (and b!909913 (not res!413788)) b!909912))

(assert (= (or b!909914 b!909923 b!909919) bm!54609))

(declare-fun m!1142805 () Bool)

(assert (=> b!909913 m!1142805))

(assert (=> b!909913 m!1142805))

(declare-fun m!1142807 () Bool)

(assert (=> b!909913 m!1142807))

(assert (=> b!909918 m!1142805))

(assert (=> b!909918 m!1142805))

(assert (=> b!909918 m!1142807))

(declare-fun m!1142809 () Bool)

(assert (=> b!909920 m!1142809))

(assert (=> d!279180 m!1142749))

(assert (=> d!279180 m!1142759))

(declare-fun m!1142811 () Bool)

(assert (=> b!909916 m!1142811))

(assert (=> b!909912 m!1142811))

(assert (=> bm!54609 m!1142749))

(assert (=> b!909922 m!1142811))

(assert (=> b!909922 m!1142811))

(declare-fun m!1142813 () Bool)

(assert (=> b!909922 m!1142813))

(assert (=> b!909922 m!1142805))

(assert (=> b!909922 m!1142813))

(assert (=> b!909922 m!1142805))

(declare-fun m!1142815 () Bool)

(assert (=> b!909922 m!1142815))

(assert (=> b!909833 d!279180))

(declare-fun b!909942 () Bool)

(declare-fun e!593737 () Bool)

(declare-fun call!54623 () Bool)

(assert (=> b!909942 (= e!593737 call!54623)))

(declare-fun c!147376 () Bool)

(declare-fun bm!54616 () Bool)

(declare-fun c!147377 () Bool)

(assert (=> bm!54616 (= call!54623 (validRegex!893 (ite c!147376 (reg!2753 (regOne!5360 r!15766)) (ite c!147377 (regTwo!5361 (regOne!5360 r!15766)) (regTwo!5360 (regOne!5360 r!15766))))))))

(declare-fun b!909943 () Bool)

(declare-fun e!593740 () Bool)

(assert (=> b!909943 (= e!593740 e!593737)))

(declare-fun res!413801 () Bool)

(assert (=> b!909943 (= res!413801 (not (nullable!655 (reg!2753 (regOne!5360 r!15766)))))))

(assert (=> b!909943 (=> (not res!413801) (not e!593737))))

(declare-fun b!909944 () Bool)

(declare-fun e!593741 () Bool)

(assert (=> b!909944 (= e!593740 e!593741)))

(assert (=> b!909944 (= c!147377 (is-Union!2424 (regOne!5360 r!15766)))))

(declare-fun b!909945 () Bool)

(declare-fun e!593738 () Bool)

(declare-fun call!54621 () Bool)

(assert (=> b!909945 (= e!593738 call!54621)))

(declare-fun b!909946 () Bool)

(declare-fun res!413799 () Bool)

(declare-fun e!593742 () Bool)

(assert (=> b!909946 (=> res!413799 e!593742)))

(assert (=> b!909946 (= res!413799 (not (is-Concat!4257 (regOne!5360 r!15766))))))

(assert (=> b!909946 (= e!593741 e!593742)))

(declare-fun bm!54618 () Bool)

(declare-fun call!54622 () Bool)

(assert (=> bm!54618 (= call!54622 (validRegex!893 (ite c!147377 (regOne!5361 (regOne!5360 r!15766)) (regOne!5360 (regOne!5360 r!15766)))))))

(declare-fun d!279182 () Bool)

(declare-fun res!413800 () Bool)

(declare-fun e!593739 () Bool)

(assert (=> d!279182 (=> res!413800 e!593739)))

(assert (=> d!279182 (= res!413800 (is-ElementMatch!2424 (regOne!5360 r!15766)))))

(assert (=> d!279182 (= (validRegex!893 (regOne!5360 r!15766)) e!593739)))

(declare-fun bm!54617 () Bool)

(assert (=> bm!54617 (= call!54621 call!54623)))

(declare-fun b!909947 () Bool)

(assert (=> b!909947 (= e!593739 e!593740)))

(assert (=> b!909947 (= c!147376 (is-Star!2424 (regOne!5360 r!15766)))))

(declare-fun b!909948 () Bool)

(declare-fun res!413803 () Bool)

(declare-fun e!593743 () Bool)

(assert (=> b!909948 (=> (not res!413803) (not e!593743))))

(assert (=> b!909948 (= res!413803 call!54622)))

(assert (=> b!909948 (= e!593741 e!593743)))

(declare-fun b!909949 () Bool)

(assert (=> b!909949 (= e!593743 call!54621)))

(declare-fun b!909950 () Bool)

(assert (=> b!909950 (= e!593742 e!593738)))

(declare-fun res!413802 () Bool)

(assert (=> b!909950 (=> (not res!413802) (not e!593738))))

(assert (=> b!909950 (= res!413802 call!54622)))

(assert (= (and d!279182 (not res!413800)) b!909947))

(assert (= (and b!909947 c!147376) b!909943))

(assert (= (and b!909947 (not c!147376)) b!909944))

(assert (= (and b!909943 res!413801) b!909942))

(assert (= (and b!909944 c!147377) b!909948))

(assert (= (and b!909944 (not c!147377)) b!909946))

(assert (= (and b!909948 res!413803) b!909949))

(assert (= (and b!909946 (not res!413799)) b!909950))

(assert (= (and b!909950 res!413802) b!909945))

(assert (= (or b!909949 b!909945) bm!54617))

(assert (= (or b!909948 b!909950) bm!54618))

(assert (= (or b!909942 bm!54617) bm!54616))

(declare-fun m!1142817 () Bool)

(assert (=> bm!54616 m!1142817))

(declare-fun m!1142819 () Bool)

(assert (=> b!909943 m!1142819))

(declare-fun m!1142821 () Bool)

(assert (=> bm!54618 m!1142821))

(assert (=> b!909833 d!279182))

(declare-fun b!909951 () Bool)

(declare-fun res!413810 () Bool)

(declare-fun e!593745 () Bool)

(assert (=> b!909951 (=> res!413810 e!593745)))

(assert (=> b!909951 (= res!413810 (not (is-ElementMatch!2424 (removeUselessConcat!109 (regOne!5360 r!15766)))))))

(declare-fun e!593747 () Bool)

(assert (=> b!909951 (= e!593747 e!593745)))

(declare-fun b!909952 () Bool)

(declare-fun res!413806 () Bool)

(assert (=> b!909952 (=> res!413806 e!593745)))

(declare-fun e!593750 () Bool)

(assert (=> b!909952 (= res!413806 e!593750)))

(declare-fun res!413809 () Bool)

(assert (=> b!909952 (=> (not res!413809) (not e!593750))))

(declare-fun lt!336441 () Bool)

(assert (=> b!909952 (= res!413809 lt!336441)))

(declare-fun b!909953 () Bool)

(declare-fun e!593749 () Bool)

(assert (=> b!909953 (= e!593749 (not (= (head!1618 s!10566) (c!147361 (removeUselessConcat!109 (regOne!5360 r!15766))))))))

(declare-fun b!909954 () Bool)

(declare-fun res!413811 () Bool)

(assert (=> b!909954 (=> res!413811 e!593749)))

(assert (=> b!909954 (= res!413811 (not (isEmpty!5851 (tail!1180 s!10566))))))

(declare-fun b!909955 () Bool)

(declare-fun e!593744 () Bool)

(declare-fun call!54624 () Bool)

(assert (=> b!909955 (= e!593744 (= lt!336441 call!54624))))

(declare-fun b!909956 () Bool)

(assert (=> b!909956 (= e!593744 e!593747)))

(declare-fun c!147380 () Bool)

(assert (=> b!909956 (= c!147380 (is-EmptyLang!2424 (removeUselessConcat!109 (regOne!5360 r!15766))))))

(declare-fun b!909957 () Bool)

(assert (=> b!909957 (= e!593750 (= (head!1618 s!10566) (c!147361 (removeUselessConcat!109 (regOne!5360 r!15766)))))))

(declare-fun b!909958 () Bool)

(declare-fun e!593748 () Bool)

(assert (=> b!909958 (= e!593745 e!593748)))

(declare-fun res!413804 () Bool)

(assert (=> b!909958 (=> (not res!413804) (not e!593748))))

(assert (=> b!909958 (= res!413804 (not lt!336441))))

(declare-fun b!909959 () Bool)

(declare-fun res!413808 () Bool)

(assert (=> b!909959 (=> (not res!413808) (not e!593750))))

(assert (=> b!909959 (= res!413808 (isEmpty!5851 (tail!1180 s!10566)))))

(declare-fun b!909960 () Bool)

(declare-fun res!413805 () Bool)

(assert (=> b!909960 (=> (not res!413805) (not e!593750))))

(assert (=> b!909960 (= res!413805 (not call!54624))))

(declare-fun b!909961 () Bool)

(declare-fun e!593746 () Bool)

(assert (=> b!909961 (= e!593746 (nullable!655 (removeUselessConcat!109 (regOne!5360 r!15766))))))

(declare-fun bm!54619 () Bool)

(assert (=> bm!54619 (= call!54624 (isEmpty!5851 s!10566))))

(declare-fun b!909963 () Bool)

(assert (=> b!909963 (= e!593746 (matchR!962 (derivativeStep!465 (removeUselessConcat!109 (regOne!5360 r!15766)) (head!1618 s!10566)) (tail!1180 s!10566)))))

(declare-fun b!909964 () Bool)

(assert (=> b!909964 (= e!593748 e!593749)))

(declare-fun res!413807 () Bool)

(assert (=> b!909964 (=> res!413807 e!593749)))

(assert (=> b!909964 (= res!413807 call!54624)))

(declare-fun b!909962 () Bool)

(assert (=> b!909962 (= e!593747 (not lt!336441))))

(declare-fun d!279188 () Bool)

(assert (=> d!279188 e!593744))

(declare-fun c!147379 () Bool)

(assert (=> d!279188 (= c!147379 (is-EmptyExpr!2424 (removeUselessConcat!109 (regOne!5360 r!15766))))))

(assert (=> d!279188 (= lt!336441 e!593746)))

(declare-fun c!147378 () Bool)

(assert (=> d!279188 (= c!147378 (isEmpty!5851 s!10566))))

(assert (=> d!279188 (validRegex!893 (removeUselessConcat!109 (regOne!5360 r!15766)))))

(assert (=> d!279188 (= (matchR!962 (removeUselessConcat!109 (regOne!5360 r!15766)) s!10566) lt!336441)))

(assert (= (and d!279188 c!147378) b!909961))

(assert (= (and d!279188 (not c!147378)) b!909963))

(assert (= (and d!279188 c!147379) b!909955))

(assert (= (and d!279188 (not c!147379)) b!909956))

(assert (= (and b!909956 c!147380) b!909962))

(assert (= (and b!909956 (not c!147380)) b!909951))

(assert (= (and b!909951 (not res!413810)) b!909952))

(assert (= (and b!909952 res!413809) b!909960))

(assert (= (and b!909960 res!413805) b!909959))

(assert (= (and b!909959 res!413808) b!909957))

(assert (= (and b!909952 (not res!413806)) b!909958))

(assert (= (and b!909958 res!413804) b!909964))

(assert (= (and b!909964 (not res!413807)) b!909954))

(assert (= (and b!909954 (not res!413811)) b!909953))

(assert (= (or b!909955 b!909964 b!909960) bm!54619))

(assert (=> b!909954 m!1142805))

(assert (=> b!909954 m!1142805))

(assert (=> b!909954 m!1142807))

(assert (=> b!909959 m!1142805))

(assert (=> b!909959 m!1142805))

(assert (=> b!909959 m!1142807))

(assert (=> b!909961 m!1142755))

(declare-fun m!1142823 () Bool)

(assert (=> b!909961 m!1142823))

(assert (=> d!279188 m!1142749))

(assert (=> d!279188 m!1142755))

(declare-fun m!1142825 () Bool)

(assert (=> d!279188 m!1142825))

(assert (=> b!909957 m!1142811))

(assert (=> b!909953 m!1142811))

(assert (=> bm!54619 m!1142749))

(assert (=> b!909963 m!1142811))

(assert (=> b!909963 m!1142755))

(assert (=> b!909963 m!1142811))

(declare-fun m!1142827 () Bool)

(assert (=> b!909963 m!1142827))

(assert (=> b!909963 m!1142805))

(assert (=> b!909963 m!1142827))

(assert (=> b!909963 m!1142805))

(declare-fun m!1142829 () Bool)

(assert (=> b!909963 m!1142829))

(assert (=> b!909833 d!279188))

(declare-fun d!279190 () Bool)

(assert (=> d!279190 (= (matchR!962 (regOne!5360 r!15766) s!10566) (matchR!962 (removeUselessConcat!109 (regOne!5360 r!15766)) s!10566))))

(declare-fun lt!336444 () Unit!14467)

(declare-fun choose!5523 (Regex!2424 List!9654) Unit!14467)

(assert (=> d!279190 (= lt!336444 (choose!5523 (regOne!5360 r!15766) s!10566))))

(assert (=> d!279190 (validRegex!893 (regOne!5360 r!15766))))

(assert (=> d!279190 (= (lemmaRemoveUselessConcatSound!95 (regOne!5360 r!15766) s!10566) lt!336444)))

(declare-fun bs!235700 () Bool)

(assert (= bs!235700 d!279190))

(assert (=> bs!235700 m!1142753))

(declare-fun m!1142831 () Bool)

(assert (=> bs!235700 m!1142831))

(assert (=> bs!235700 m!1142759))

(assert (=> bs!235700 m!1142755))

(assert (=> bs!235700 m!1142755))

(assert (=> bs!235700 m!1142757))

(assert (=> b!909833 d!279190))

(declare-fun b!910009 () Bool)

(declare-fun e!593780 () Regex!2424)

(declare-fun call!54636 () Regex!2424)

(assert (=> b!910009 (= e!593780 call!54636)))

(declare-fun b!910010 () Bool)

(declare-fun c!147403 () Bool)

(assert (=> b!910010 (= c!147403 (is-Concat!4257 (regOne!5360 r!15766)))))

(declare-fun e!593779 () Regex!2424)

(declare-fun e!593777 () Regex!2424)

(assert (=> b!910010 (= e!593779 e!593777)))

(declare-fun b!910011 () Bool)

(declare-fun e!593781 () Bool)

(declare-fun lt!336447 () Regex!2424)

(assert (=> b!910011 (= e!593781 (= (nullable!655 lt!336447) (nullable!655 (regOne!5360 r!15766))))))

(declare-fun b!910012 () Bool)

(declare-fun e!593782 () Regex!2424)

(assert (=> b!910012 (= e!593777 e!593782)))

(declare-fun c!147401 () Bool)

(assert (=> b!910012 (= c!147401 (is-Union!2424 (regOne!5360 r!15766)))))

(declare-fun b!910013 () Bool)

(declare-fun call!54637 () Regex!2424)

(declare-fun call!54639 () Regex!2424)

(assert (=> b!910013 (= e!593777 (Concat!4257 call!54637 call!54639))))

(declare-fun bm!54630 () Bool)

(declare-fun c!147399 () Bool)

(declare-fun c!147402 () Bool)

(assert (=> bm!54630 (= call!54636 (removeUselessConcat!109 (ite c!147399 (regTwo!5360 (regOne!5360 r!15766)) (ite c!147402 (regOne!5360 (regOne!5360 r!15766)) (ite c!147403 (regTwo!5360 (regOne!5360 r!15766)) (regOne!5361 (regOne!5360 r!15766)))))))))

(declare-fun b!910014 () Bool)

(declare-fun c!147400 () Bool)

(assert (=> b!910014 (= c!147400 (is-Star!2424 (regOne!5360 r!15766)))))

(declare-fun e!593778 () Regex!2424)

(assert (=> b!910014 (= e!593782 e!593778)))

(declare-fun bm!54631 () Bool)

(declare-fun call!54638 () Regex!2424)

(assert (=> bm!54631 (= call!54638 call!54636)))

(declare-fun bm!54632 () Bool)

(declare-fun call!54635 () Regex!2424)

(assert (=> bm!54632 (= call!54635 call!54637)))

(declare-fun b!910015 () Bool)

(assert (=> b!910015 (= e!593778 (regOne!5360 r!15766))))

(declare-fun b!910016 () Bool)

(assert (=> b!910016 (= e!593780 e!593779)))

(assert (=> b!910016 (= c!147402 (and (is-Concat!4257 (regOne!5360 r!15766)) (is-EmptyExpr!2424 (regTwo!5360 (regOne!5360 r!15766)))))))

(declare-fun bm!54633 () Bool)

(assert (=> bm!54633 (= call!54639 call!54638)))

(declare-fun b!910017 () Bool)

(assert (=> b!910017 (= e!593782 (Union!2424 call!54639 call!54635))))

(declare-fun d!279192 () Bool)

(assert (=> d!279192 e!593781))

(declare-fun res!413820 () Bool)

(assert (=> d!279192 (=> (not res!413820) (not e!593781))))

(assert (=> d!279192 (= res!413820 (validRegex!893 lt!336447))))

(assert (=> d!279192 (= lt!336447 e!593780)))

(assert (=> d!279192 (= c!147399 (and (is-Concat!4257 (regOne!5360 r!15766)) (is-EmptyExpr!2424 (regOne!5360 (regOne!5360 r!15766)))))))

(assert (=> d!279192 (validRegex!893 (regOne!5360 r!15766))))

(assert (=> d!279192 (= (removeUselessConcat!109 (regOne!5360 r!15766)) lt!336447)))

(declare-fun b!910018 () Bool)

(assert (=> b!910018 (= e!593779 call!54638)))

(declare-fun b!910019 () Bool)

(assert (=> b!910019 (= e!593778 (Star!2424 call!54635))))

(declare-fun bm!54634 () Bool)

(assert (=> bm!54634 (= call!54637 (removeUselessConcat!109 (ite c!147403 (regOne!5360 (regOne!5360 r!15766)) (ite c!147401 (regTwo!5361 (regOne!5360 r!15766)) (reg!2753 (regOne!5360 r!15766))))))))

(assert (= (and d!279192 c!147399) b!910009))

(assert (= (and d!279192 (not c!147399)) b!910016))

(assert (= (and b!910016 c!147402) b!910018))

(assert (= (and b!910016 (not c!147402)) b!910010))

(assert (= (and b!910010 c!147403) b!910013))

(assert (= (and b!910010 (not c!147403)) b!910012))

(assert (= (and b!910012 c!147401) b!910017))

(assert (= (and b!910012 (not c!147401)) b!910014))

(assert (= (and b!910014 c!147400) b!910019))

(assert (= (and b!910014 (not c!147400)) b!910015))

(assert (= (or b!910017 b!910019) bm!54632))

(assert (= (or b!910013 b!910017) bm!54633))

(assert (= (or b!910013 bm!54632) bm!54634))

(assert (= (or b!910018 bm!54633) bm!54631))

(assert (= (or b!910009 bm!54631) bm!54630))

(assert (= (and d!279192 res!413820) b!910011))

(declare-fun m!1142833 () Bool)

(assert (=> b!910011 m!1142833))

(assert (=> b!910011 m!1142809))

(declare-fun m!1142835 () Bool)

(assert (=> bm!54630 m!1142835))

(declare-fun m!1142837 () Bool)

(assert (=> d!279192 m!1142837))

(assert (=> d!279192 m!1142759))

(declare-fun m!1142839 () Bool)

(assert (=> bm!54634 m!1142839))

(assert (=> b!909833 d!279192))

(declare-fun b!910026 () Bool)

(declare-fun e!593785 () Bool)

(declare-fun call!54642 () Bool)

(assert (=> b!910026 (= e!593785 call!54642)))

(declare-fun bm!54635 () Bool)

(declare-fun c!147404 () Bool)

(declare-fun c!147405 () Bool)

(assert (=> bm!54635 (= call!54642 (validRegex!893 (ite c!147404 (reg!2753 r!15766) (ite c!147405 (regTwo!5361 r!15766) (regTwo!5360 r!15766)))))))

(declare-fun b!910027 () Bool)

(declare-fun e!593788 () Bool)

(assert (=> b!910027 (= e!593788 e!593785)))

(declare-fun res!413829 () Bool)

(assert (=> b!910027 (= res!413829 (not (nullable!655 (reg!2753 r!15766))))))

(assert (=> b!910027 (=> (not res!413829) (not e!593785))))

(declare-fun b!910028 () Bool)

(declare-fun e!593789 () Bool)

(assert (=> b!910028 (= e!593788 e!593789)))

(assert (=> b!910028 (= c!147405 (is-Union!2424 r!15766))))

(declare-fun b!910029 () Bool)

(declare-fun e!593786 () Bool)

(declare-fun call!54640 () Bool)

(assert (=> b!910029 (= e!593786 call!54640)))

(declare-fun b!910030 () Bool)

(declare-fun res!413827 () Bool)

(declare-fun e!593790 () Bool)

(assert (=> b!910030 (=> res!413827 e!593790)))

(assert (=> b!910030 (= res!413827 (not (is-Concat!4257 r!15766)))))

(assert (=> b!910030 (= e!593789 e!593790)))

(declare-fun bm!54637 () Bool)

(declare-fun call!54641 () Bool)

(assert (=> bm!54637 (= call!54641 (validRegex!893 (ite c!147405 (regOne!5361 r!15766) (regOne!5360 r!15766))))))

(declare-fun d!279194 () Bool)

(declare-fun res!413828 () Bool)

(declare-fun e!593787 () Bool)

(assert (=> d!279194 (=> res!413828 e!593787)))

(assert (=> d!279194 (= res!413828 (is-ElementMatch!2424 r!15766))))

(assert (=> d!279194 (= (validRegex!893 r!15766) e!593787)))

(declare-fun bm!54636 () Bool)

(assert (=> bm!54636 (= call!54640 call!54642)))

(declare-fun b!910031 () Bool)

(assert (=> b!910031 (= e!593787 e!593788)))

(assert (=> b!910031 (= c!147404 (is-Star!2424 r!15766))))

(declare-fun b!910032 () Bool)

(declare-fun res!413831 () Bool)

(declare-fun e!593791 () Bool)

(assert (=> b!910032 (=> (not res!413831) (not e!593791))))

(assert (=> b!910032 (= res!413831 call!54641)))

(assert (=> b!910032 (= e!593789 e!593791)))

(declare-fun b!910033 () Bool)

(assert (=> b!910033 (= e!593791 call!54640)))

(declare-fun b!910034 () Bool)

(assert (=> b!910034 (= e!593790 e!593786)))

(declare-fun res!413830 () Bool)

(assert (=> b!910034 (=> (not res!413830) (not e!593786))))

(assert (=> b!910034 (= res!413830 call!54641)))

(assert (= (and d!279194 (not res!413828)) b!910031))

(assert (= (and b!910031 c!147404) b!910027))

(assert (= (and b!910031 (not c!147404)) b!910028))

(assert (= (and b!910027 res!413829) b!910026))

(assert (= (and b!910028 c!147405) b!910032))

(assert (= (and b!910028 (not c!147405)) b!910030))

(assert (= (and b!910032 res!413831) b!910033))

(assert (= (and b!910030 (not res!413827)) b!910034))

(assert (= (and b!910034 res!413830) b!910029))

(assert (= (or b!910033 b!910029) bm!54636))

(assert (= (or b!910032 b!910034) bm!54637))

(assert (= (or b!910026 bm!54636) bm!54635))

(declare-fun m!1142841 () Bool)

(assert (=> bm!54635 m!1142841))

(declare-fun m!1142843 () Bool)

(assert (=> b!910027 m!1142843))

(declare-fun m!1142845 () Bool)

(assert (=> bm!54637 m!1142845))

(assert (=> start!81812 d!279194))

(declare-fun d!279196 () Bool)

(assert (=> d!279196 (= (isEmpty!5852 lt!336416) (not (is-Some!2060 lt!336416)))))

(assert (=> b!909832 d!279196))

(declare-fun d!279198 () Bool)

(declare-fun e!593808 () Bool)

(assert (=> d!279198 e!593808))

(declare-fun res!413850 () Bool)

(assert (=> d!279198 (=> res!413850 e!593808)))

(declare-fun e!593806 () Bool)

(assert (=> d!279198 (= res!413850 e!593806)))

(declare-fun res!413848 () Bool)

(assert (=> d!279198 (=> (not res!413848) (not e!593806))))

(declare-fun lt!336454 () Option!2061)

(assert (=> d!279198 (= res!413848 (isDefined!1703 lt!336454))))

(declare-fun e!593807 () Option!2061)

(assert (=> d!279198 (= lt!336454 e!593807)))

(declare-fun c!147410 () Bool)

(declare-fun e!593804 () Bool)

(assert (=> d!279198 (= c!147410 e!593804)))

(declare-fun res!413847 () Bool)

(assert (=> d!279198 (=> (not res!413847) (not e!593804))))

(assert (=> d!279198 (= res!413847 (matchR!962 (regOne!5360 r!15766) Nil!9638))))

(assert (=> d!279198 (validRegex!893 (regOne!5360 r!15766))))

(assert (=> d!279198 (= (findConcatSeparation!167 (regOne!5360 r!15766) EmptyExpr!2424 Nil!9638 s!10566 s!10566) lt!336454)))

(declare-fun b!910057 () Bool)

(assert (=> b!910057 (= e!593804 (matchR!962 EmptyExpr!2424 s!10566))))

(declare-fun b!910058 () Bool)

(assert (=> b!910058 (= e!593807 (Some!2060 (tuple2!10839 Nil!9638 s!10566)))))

(declare-fun b!910059 () Bool)

(declare-fun res!413846 () Bool)

(assert (=> b!910059 (=> (not res!413846) (not e!593806))))

(declare-fun get!3103 (Option!2061) tuple2!10838)

(assert (=> b!910059 (= res!413846 (matchR!962 EmptyExpr!2424 (_2!6245 (get!3103 lt!336454))))))

(declare-fun b!910060 () Bool)

(declare-fun e!593805 () Option!2061)

(assert (=> b!910060 (= e!593807 e!593805)))

(declare-fun c!147411 () Bool)

(assert (=> b!910060 (= c!147411 (is-Nil!9638 s!10566))))

(declare-fun b!910061 () Bool)

(assert (=> b!910061 (= e!593805 None!2060)))

(declare-fun b!910062 () Bool)

(declare-fun ++!2533 (List!9654 List!9654) List!9654)

(assert (=> b!910062 (= e!593806 (= (++!2533 (_1!6245 (get!3103 lt!336454)) (_2!6245 (get!3103 lt!336454))) s!10566))))

(declare-fun b!910063 () Bool)

(assert (=> b!910063 (= e!593808 (not (isDefined!1703 lt!336454)))))

(declare-fun b!910064 () Bool)

(declare-fun res!413849 () Bool)

(assert (=> b!910064 (=> (not res!413849) (not e!593806))))

(assert (=> b!910064 (= res!413849 (matchR!962 (regOne!5360 r!15766) (_1!6245 (get!3103 lt!336454))))))

(declare-fun b!910065 () Bool)

(declare-fun lt!336455 () Unit!14467)

(declare-fun lt!336456 () Unit!14467)

(assert (=> b!910065 (= lt!336455 lt!336456)))

(assert (=> b!910065 (= (++!2533 (++!2533 Nil!9638 (Cons!9638 (h!15039 s!10566) Nil!9638)) (t!100700 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!150 (List!9654 C!5418 List!9654 List!9654) Unit!14467)

(assert (=> b!910065 (= lt!336456 (lemmaMoveElementToOtherListKeepsConcatEq!150 Nil!9638 (h!15039 s!10566) (t!100700 s!10566) s!10566))))

(assert (=> b!910065 (= e!593805 (findConcatSeparation!167 (regOne!5360 r!15766) EmptyExpr!2424 (++!2533 Nil!9638 (Cons!9638 (h!15039 s!10566) Nil!9638)) (t!100700 s!10566) s!10566))))

(assert (= (and d!279198 res!413847) b!910057))

(assert (= (and d!279198 c!147410) b!910058))

(assert (= (and d!279198 (not c!147410)) b!910060))

(assert (= (and b!910060 c!147411) b!910061))

(assert (= (and b!910060 (not c!147411)) b!910065))

(assert (= (and d!279198 res!413848) b!910064))

(assert (= (and b!910064 res!413849) b!910059))

(assert (= (and b!910059 res!413846) b!910062))

(assert (= (and d!279198 (not res!413850)) b!910063))

(declare-fun m!1142847 () Bool)

(assert (=> b!910057 m!1142847))

(declare-fun m!1142849 () Bool)

(assert (=> d!279198 m!1142849))

(declare-fun m!1142851 () Bool)

(assert (=> d!279198 m!1142851))

(assert (=> d!279198 m!1142759))

(declare-fun m!1142853 () Bool)

(assert (=> b!910064 m!1142853))

(declare-fun m!1142855 () Bool)

(assert (=> b!910064 m!1142855))

(assert (=> b!910063 m!1142849))

(assert (=> b!910059 m!1142853))

(declare-fun m!1142857 () Bool)

(assert (=> b!910059 m!1142857))

(assert (=> b!910062 m!1142853))

(declare-fun m!1142859 () Bool)

(assert (=> b!910062 m!1142859))

(declare-fun m!1142861 () Bool)

(assert (=> b!910065 m!1142861))

(assert (=> b!910065 m!1142861))

(declare-fun m!1142863 () Bool)

(assert (=> b!910065 m!1142863))

(declare-fun m!1142865 () Bool)

(assert (=> b!910065 m!1142865))

(assert (=> b!910065 m!1142861))

(declare-fun m!1142867 () Bool)

(assert (=> b!910065 m!1142867))

(assert (=> b!909830 d!279198))

(declare-fun d!279200 () Bool)

(assert (=> d!279200 (= (isEmpty!5851 s!10566) (is-Nil!9638 s!10566))))

(assert (=> b!909830 d!279200))

(declare-fun d!279202 () Bool)

(assert (=> d!279202 (= (isDefined!1703 lt!336416) (not (isEmpty!5852 lt!336416)))))

(declare-fun bs!235701 () Bool)

(assert (= bs!235701 d!279202))

(assert (=> bs!235701 m!1142737))

(assert (=> b!909830 d!279202))

(declare-fun d!279204 () Bool)

(declare-fun choose!5524 (Int) Bool)

(assert (=> d!279204 (= (Exists!197 lambda!28945) (choose!5524 lambda!28945))))

(declare-fun bs!235702 () Bool)

(assert (= bs!235702 d!279204))

(declare-fun m!1142869 () Bool)

(assert (=> bs!235702 m!1142869))

(assert (=> b!909830 d!279204))

(declare-fun d!279206 () Bool)

(assert (=> d!279206 (= (Exists!197 lambda!28946) (choose!5524 lambda!28946))))

(declare-fun bs!235703 () Bool)

(assert (= bs!235703 d!279206))

(declare-fun m!1142871 () Bool)

(assert (=> bs!235703 m!1142871))

(assert (=> b!909830 d!279206))

(declare-fun bs!235707 () Bool)

(declare-fun d!279208 () Bool)

(assert (= bs!235707 (and d!279208 b!909830)))

(declare-fun lambda!28963 () Int)

(assert (=> bs!235707 (= lambda!28963 lambda!28945)))

(assert (=> bs!235707 (not (= lambda!28963 lambda!28946))))

(assert (=> d!279208 true))

(assert (=> d!279208 true))

(assert (=> d!279208 true))

(assert (=> d!279208 (= (isDefined!1703 (findConcatSeparation!167 (regOne!5360 r!15766) EmptyExpr!2424 Nil!9638 s!10566 s!10566)) (Exists!197 lambda!28963))))

(declare-fun lt!336459 () Unit!14467)

(declare-fun choose!5525 (Regex!2424 Regex!2424 List!9654) Unit!14467)

(assert (=> d!279208 (= lt!336459 (choose!5525 (regOne!5360 r!15766) EmptyExpr!2424 s!10566))))

(assert (=> d!279208 (validRegex!893 (regOne!5360 r!15766))))

(assert (=> d!279208 (= (lemmaFindConcatSeparationEquivalentToExists!167 (regOne!5360 r!15766) EmptyExpr!2424 s!10566) lt!336459)))

(declare-fun bs!235708 () Bool)

(assert (= bs!235708 d!279208))

(assert (=> bs!235708 m!1142759))

(declare-fun m!1142879 () Bool)

(assert (=> bs!235708 m!1142879))

(declare-fun m!1142881 () Bool)

(assert (=> bs!235708 m!1142881))

(assert (=> bs!235708 m!1142741))

(declare-fun m!1142883 () Bool)

(assert (=> bs!235708 m!1142883))

(assert (=> bs!235708 m!1142741))

(assert (=> b!909830 d!279208))

(declare-fun bs!235709 () Bool)

(declare-fun d!279212 () Bool)

(assert (= bs!235709 (and d!279212 b!909830)))

(declare-fun lambda!28968 () Int)

(assert (=> bs!235709 (= lambda!28968 lambda!28945)))

(assert (=> bs!235709 (not (= lambda!28968 lambda!28946))))

(declare-fun bs!235710 () Bool)

(assert (= bs!235710 (and d!279212 d!279208)))

(assert (=> bs!235710 (= lambda!28968 lambda!28963)))

(assert (=> d!279212 true))

(assert (=> d!279212 true))

(assert (=> d!279212 true))

(declare-fun lambda!28969 () Int)

(assert (=> bs!235709 (not (= lambda!28969 lambda!28945))))

(assert (=> bs!235709 (= lambda!28969 lambda!28946)))

(assert (=> bs!235710 (not (= lambda!28969 lambda!28963))))

(declare-fun bs!235711 () Bool)

(assert (= bs!235711 d!279212))

(assert (=> bs!235711 (not (= lambda!28969 lambda!28968))))

(assert (=> d!279212 true))

(assert (=> d!279212 true))

(assert (=> d!279212 true))

(assert (=> d!279212 (= (Exists!197 lambda!28968) (Exists!197 lambda!28969))))

(declare-fun lt!336462 () Unit!14467)

(declare-fun choose!5526 (Regex!2424 Regex!2424 List!9654) Unit!14467)

(assert (=> d!279212 (= lt!336462 (choose!5526 (regOne!5360 r!15766) EmptyExpr!2424 s!10566))))

(assert (=> d!279212 (validRegex!893 (regOne!5360 r!15766))))

(assert (=> d!279212 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!111 (regOne!5360 r!15766) EmptyExpr!2424 s!10566) lt!336462)))

(declare-fun m!1142885 () Bool)

(assert (=> bs!235711 m!1142885))

(declare-fun m!1142887 () Bool)

(assert (=> bs!235711 m!1142887))

(declare-fun m!1142889 () Bool)

(assert (=> bs!235711 m!1142889))

(assert (=> bs!235711 m!1142759))

(assert (=> b!909830 d!279212))

(declare-fun bs!235712 () Bool)

(declare-fun b!910156 () Bool)

(assert (= bs!235712 (and b!910156 d!279212)))

(declare-fun lambda!28974 () Int)

(assert (=> bs!235712 (not (= lambda!28974 lambda!28968))))

(declare-fun bs!235713 () Bool)

(assert (= bs!235713 (and b!910156 b!909830)))

(assert (=> bs!235713 (not (= lambda!28974 lambda!28945))))

(assert (=> bs!235712 (not (= lambda!28974 lambda!28969))))

(declare-fun bs!235714 () Bool)

(assert (= bs!235714 (and b!910156 d!279208)))

(assert (=> bs!235714 (not (= lambda!28974 lambda!28963))))

(assert (=> bs!235713 (not (= lambda!28974 lambda!28946))))

(assert (=> b!910156 true))

(assert (=> b!910156 true))

(declare-fun bs!235715 () Bool)

(declare-fun b!910151 () Bool)

(assert (= bs!235715 (and b!910151 d!279212)))

(declare-fun lambda!28975 () Int)

(assert (=> bs!235715 (not (= lambda!28975 lambda!28968))))

(declare-fun bs!235716 () Bool)

(assert (= bs!235716 (and b!910151 b!909830)))

(assert (=> bs!235716 (not (= lambda!28975 lambda!28945))))

(assert (=> bs!235715 (= (= (regTwo!5360 r!15766) EmptyExpr!2424) (= lambda!28975 lambda!28969))))

(declare-fun bs!235717 () Bool)

(assert (= bs!235717 (and b!910151 d!279208)))

(assert (=> bs!235717 (not (= lambda!28975 lambda!28963))))

(declare-fun bs!235718 () Bool)

(assert (= bs!235718 (and b!910151 b!910156)))

(assert (=> bs!235718 (not (= lambda!28975 lambda!28974))))

(assert (=> bs!235716 (= (= (regTwo!5360 r!15766) EmptyExpr!2424) (= lambda!28975 lambda!28946))))

(assert (=> b!910151 true))

(assert (=> b!910151 true))

(declare-fun bm!54650 () Bool)

(declare-fun call!54655 () Bool)

(assert (=> bm!54650 (= call!54655 (isEmpty!5851 s!10566))))

(declare-fun d!279214 () Bool)

(declare-fun c!147432 () Bool)

(assert (=> d!279214 (= c!147432 (is-EmptyExpr!2424 r!15766))))

(declare-fun e!593857 () Bool)

(assert (=> d!279214 (= (matchRSpec!225 r!15766 s!10566) e!593857)))

(declare-fun b!910149 () Bool)

(assert (=> b!910149 (= e!593857 call!54655)))

(declare-fun b!910150 () Bool)

(declare-fun e!593854 () Bool)

(declare-fun e!593858 () Bool)

(assert (=> b!910150 (= e!593854 e!593858)))

(declare-fun res!413899 () Bool)

(assert (=> b!910150 (= res!413899 (matchRSpec!225 (regOne!5361 r!15766) s!10566))))

(assert (=> b!910150 (=> res!413899 e!593858)))

(declare-fun e!593855 () Bool)

(declare-fun call!54656 () Bool)

(assert (=> b!910151 (= e!593855 call!54656)))

(declare-fun b!910152 () Bool)

(declare-fun c!147430 () Bool)

(assert (=> b!910152 (= c!147430 (is-ElementMatch!2424 r!15766))))

(declare-fun e!593856 () Bool)

(declare-fun e!593859 () Bool)

(assert (=> b!910152 (= e!593856 e!593859)))

(declare-fun b!910153 () Bool)

(assert (=> b!910153 (= e!593854 e!593855)))

(declare-fun c!147433 () Bool)

(assert (=> b!910153 (= c!147433 (is-Star!2424 r!15766))))

(declare-fun b!910154 () Bool)

(assert (=> b!910154 (= e!593858 (matchRSpec!225 (regTwo!5361 r!15766) s!10566))))

(declare-fun b!910155 () Bool)

(declare-fun res!413900 () Bool)

(declare-fun e!593860 () Bool)

(assert (=> b!910155 (=> res!413900 e!593860)))

(assert (=> b!910155 (= res!413900 call!54655)))

(assert (=> b!910155 (= e!593855 e!593860)))

(assert (=> b!910156 (= e!593860 call!54656)))

(declare-fun bm!54651 () Bool)

(assert (=> bm!54651 (= call!54656 (Exists!197 (ite c!147433 lambda!28974 lambda!28975)))))

(declare-fun b!910157 () Bool)

(assert (=> b!910157 (= e!593859 (= s!10566 (Cons!9638 (c!147361 r!15766) Nil!9638)))))

(declare-fun b!910158 () Bool)

(declare-fun c!147431 () Bool)

(assert (=> b!910158 (= c!147431 (is-Union!2424 r!15766))))

(assert (=> b!910158 (= e!593859 e!593854)))

(declare-fun b!910159 () Bool)

(assert (=> b!910159 (= e!593857 e!593856)))

(declare-fun res!413898 () Bool)

(assert (=> b!910159 (= res!413898 (not (is-EmptyLang!2424 r!15766)))))

(assert (=> b!910159 (=> (not res!413898) (not e!593856))))

(assert (= (and d!279214 c!147432) b!910149))

(assert (= (and d!279214 (not c!147432)) b!910159))

(assert (= (and b!910159 res!413898) b!910152))

(assert (= (and b!910152 c!147430) b!910157))

(assert (= (and b!910152 (not c!147430)) b!910158))

(assert (= (and b!910158 c!147431) b!910150))

(assert (= (and b!910158 (not c!147431)) b!910153))

(assert (= (and b!910150 (not res!413899)) b!910154))

(assert (= (and b!910153 c!147433) b!910155))

(assert (= (and b!910153 (not c!147433)) b!910151))

(assert (= (and b!910155 (not res!413900)) b!910156))

(assert (= (or b!910156 b!910151) bm!54651))

(assert (= (or b!910149 b!910155) bm!54650))

(assert (=> bm!54650 m!1142749))

(declare-fun m!1142899 () Bool)

(assert (=> b!910150 m!1142899))

(declare-fun m!1142903 () Bool)

(assert (=> b!910154 m!1142903))

(declare-fun m!1142905 () Bool)

(assert (=> bm!54651 m!1142905))

(assert (=> b!909834 d!279214))

(declare-fun b!910174 () Bool)

(declare-fun res!413915 () Bool)

(declare-fun e!593869 () Bool)

(assert (=> b!910174 (=> res!413915 e!593869)))

(assert (=> b!910174 (= res!413915 (not (is-ElementMatch!2424 r!15766)))))

(declare-fun e!593871 () Bool)

(assert (=> b!910174 (= e!593871 e!593869)))

(declare-fun b!910175 () Bool)

(declare-fun res!413911 () Bool)

(assert (=> b!910175 (=> res!413911 e!593869)))

(declare-fun e!593874 () Bool)

(assert (=> b!910175 (= res!413911 e!593874)))

(declare-fun res!413914 () Bool)

(assert (=> b!910175 (=> (not res!413914) (not e!593874))))

(declare-fun lt!336466 () Bool)

(assert (=> b!910175 (= res!413914 lt!336466)))

(declare-fun b!910176 () Bool)

(declare-fun e!593873 () Bool)

(assert (=> b!910176 (= e!593873 (not (= (head!1618 s!10566) (c!147361 r!15766))))))

(declare-fun b!910177 () Bool)

(declare-fun res!413916 () Bool)

(assert (=> b!910177 (=> res!413916 e!593873)))

(assert (=> b!910177 (= res!413916 (not (isEmpty!5851 (tail!1180 s!10566))))))

(declare-fun b!910178 () Bool)

(declare-fun e!593868 () Bool)

(declare-fun call!54658 () Bool)

(assert (=> b!910178 (= e!593868 (= lt!336466 call!54658))))

(declare-fun b!910179 () Bool)

(assert (=> b!910179 (= e!593868 e!593871)))

(declare-fun c!147439 () Bool)

(assert (=> b!910179 (= c!147439 (is-EmptyLang!2424 r!15766))))

(declare-fun b!910180 () Bool)

(assert (=> b!910180 (= e!593874 (= (head!1618 s!10566) (c!147361 r!15766)))))

(declare-fun b!910181 () Bool)

(declare-fun e!593872 () Bool)

(assert (=> b!910181 (= e!593869 e!593872)))

(declare-fun res!413909 () Bool)

(assert (=> b!910181 (=> (not res!413909) (not e!593872))))

(assert (=> b!910181 (= res!413909 (not lt!336466))))

(declare-fun b!910182 () Bool)

(declare-fun res!413913 () Bool)

(assert (=> b!910182 (=> (not res!413913) (not e!593874))))

(assert (=> b!910182 (= res!413913 (isEmpty!5851 (tail!1180 s!10566)))))

(declare-fun b!910183 () Bool)

(declare-fun res!413910 () Bool)

(assert (=> b!910183 (=> (not res!413910) (not e!593874))))

(assert (=> b!910183 (= res!413910 (not call!54658))))

(declare-fun b!910184 () Bool)

(declare-fun e!593870 () Bool)

(assert (=> b!910184 (= e!593870 (nullable!655 r!15766))))

(declare-fun bm!54653 () Bool)

(assert (=> bm!54653 (= call!54658 (isEmpty!5851 s!10566))))

(declare-fun b!910186 () Bool)

(assert (=> b!910186 (= e!593870 (matchR!962 (derivativeStep!465 r!15766 (head!1618 s!10566)) (tail!1180 s!10566)))))

(declare-fun b!910187 () Bool)

(assert (=> b!910187 (= e!593872 e!593873)))

(declare-fun res!413912 () Bool)

(assert (=> b!910187 (=> res!413912 e!593873)))

(assert (=> b!910187 (= res!413912 call!54658)))

(declare-fun b!910185 () Bool)

(assert (=> b!910185 (= e!593871 (not lt!336466))))

(declare-fun d!279216 () Bool)

(assert (=> d!279216 e!593868))

(declare-fun c!147438 () Bool)

(assert (=> d!279216 (= c!147438 (is-EmptyExpr!2424 r!15766))))

(assert (=> d!279216 (= lt!336466 e!593870)))

(declare-fun c!147437 () Bool)

(assert (=> d!279216 (= c!147437 (isEmpty!5851 s!10566))))

(assert (=> d!279216 (validRegex!893 r!15766)))

(assert (=> d!279216 (= (matchR!962 r!15766 s!10566) lt!336466)))

(assert (= (and d!279216 c!147437) b!910184))

(assert (= (and d!279216 (not c!147437)) b!910186))

(assert (= (and d!279216 c!147438) b!910178))

(assert (= (and d!279216 (not c!147438)) b!910179))

(assert (= (and b!910179 c!147439) b!910185))

(assert (= (and b!910179 (not c!147439)) b!910174))

(assert (= (and b!910174 (not res!413915)) b!910175))

(assert (= (and b!910175 res!413914) b!910183))

(assert (= (and b!910183 res!413910) b!910182))

(assert (= (and b!910182 res!413913) b!910180))

(assert (= (and b!910175 (not res!413911)) b!910181))

(assert (= (and b!910181 res!413909) b!910187))

(assert (= (and b!910187 (not res!413912)) b!910177))

(assert (= (and b!910177 (not res!413916)) b!910176))

(assert (= (or b!910178 b!910187 b!910183) bm!54653))

(assert (=> b!910177 m!1142805))

(assert (=> b!910177 m!1142805))

(assert (=> b!910177 m!1142807))

(assert (=> b!910182 m!1142805))

(assert (=> b!910182 m!1142805))

(assert (=> b!910182 m!1142807))

(declare-fun m!1142909 () Bool)

(assert (=> b!910184 m!1142909))

(assert (=> d!279216 m!1142749))

(assert (=> d!279216 m!1142769))

(assert (=> b!910180 m!1142811))

(assert (=> b!910176 m!1142811))

(assert (=> bm!54653 m!1142749))

(assert (=> b!910186 m!1142811))

(assert (=> b!910186 m!1142811))

(declare-fun m!1142911 () Bool)

(assert (=> b!910186 m!1142911))

(assert (=> b!910186 m!1142805))

(assert (=> b!910186 m!1142911))

(assert (=> b!910186 m!1142805))

(declare-fun m!1142913 () Bool)

(assert (=> b!910186 m!1142913))

(assert (=> b!909834 d!279216))

(declare-fun d!279220 () Bool)

(assert (=> d!279220 (= (matchR!962 r!15766 s!10566) (matchRSpec!225 r!15766 s!10566))))

(declare-fun lt!336469 () Unit!14467)

(declare-fun choose!5527 (Regex!2424 List!9654) Unit!14467)

(assert (=> d!279220 (= lt!336469 (choose!5527 r!15766 s!10566))))

(assert (=> d!279220 (validRegex!893 r!15766)))

(assert (=> d!279220 (= (mainMatchTheorem!225 r!15766 s!10566) lt!336469)))

(declare-fun bs!235719 () Bool)

(assert (= bs!235719 d!279220))

(assert (=> bs!235719 m!1142765))

(assert (=> bs!235719 m!1142763))

(declare-fun m!1142915 () Bool)

(assert (=> bs!235719 m!1142915))

(assert (=> bs!235719 m!1142769))

(assert (=> b!909834 d!279220))

(declare-fun b!910192 () Bool)

(declare-fun e!593877 () Bool)

(declare-fun tp!284675 () Bool)

(assert (=> b!910192 (= e!593877 (and tp_is_empty!4491 tp!284675))))

(assert (=> b!909827 (= tp!284653 e!593877)))

(assert (= (and b!909827 (is-Cons!9638 (t!100700 s!10566))) b!910192))

(declare-fun b!910206 () Bool)

(declare-fun e!593880 () Bool)

(declare-fun tp!284690 () Bool)

(declare-fun tp!284689 () Bool)

(assert (=> b!910206 (= e!593880 (and tp!284690 tp!284689))))

(assert (=> b!909828 (= tp!284650 e!593880)))

(declare-fun b!910204 () Bool)

(declare-fun tp!284687 () Bool)

(declare-fun tp!284688 () Bool)

(assert (=> b!910204 (= e!593880 (and tp!284687 tp!284688))))

(declare-fun b!910203 () Bool)

(assert (=> b!910203 (= e!593880 tp_is_empty!4491)))

(declare-fun b!910205 () Bool)

(declare-fun tp!284686 () Bool)

(assert (=> b!910205 (= e!593880 tp!284686)))

(assert (= (and b!909828 (is-ElementMatch!2424 (reg!2753 r!15766))) b!910203))

(assert (= (and b!909828 (is-Concat!4257 (reg!2753 r!15766))) b!910204))

(assert (= (and b!909828 (is-Star!2424 (reg!2753 r!15766))) b!910205))

(assert (= (and b!909828 (is-Union!2424 (reg!2753 r!15766))) b!910206))

(declare-fun b!910210 () Bool)

(declare-fun e!593881 () Bool)

(declare-fun tp!284695 () Bool)

(declare-fun tp!284694 () Bool)

(assert (=> b!910210 (= e!593881 (and tp!284695 tp!284694))))

(assert (=> b!909831 (= tp!284649 e!593881)))

(declare-fun b!910208 () Bool)

(declare-fun tp!284692 () Bool)

(declare-fun tp!284693 () Bool)

(assert (=> b!910208 (= e!593881 (and tp!284692 tp!284693))))

(declare-fun b!910207 () Bool)

(assert (=> b!910207 (= e!593881 tp_is_empty!4491)))

(declare-fun b!910209 () Bool)

(declare-fun tp!284691 () Bool)

(assert (=> b!910209 (= e!593881 tp!284691)))

(assert (= (and b!909831 (is-ElementMatch!2424 (regOne!5361 r!15766))) b!910207))

(assert (= (and b!909831 (is-Concat!4257 (regOne!5361 r!15766))) b!910208))

(assert (= (and b!909831 (is-Star!2424 (regOne!5361 r!15766))) b!910209))

(assert (= (and b!909831 (is-Union!2424 (regOne!5361 r!15766))) b!910210))

(declare-fun b!910214 () Bool)

(declare-fun e!593882 () Bool)

(declare-fun tp!284700 () Bool)

(declare-fun tp!284699 () Bool)

(assert (=> b!910214 (= e!593882 (and tp!284700 tp!284699))))

(assert (=> b!909831 (= tp!284652 e!593882)))

(declare-fun b!910212 () Bool)

(declare-fun tp!284697 () Bool)

(declare-fun tp!284698 () Bool)

(assert (=> b!910212 (= e!593882 (and tp!284697 tp!284698))))

(declare-fun b!910211 () Bool)

(assert (=> b!910211 (= e!593882 tp_is_empty!4491)))

(declare-fun b!910213 () Bool)

(declare-fun tp!284696 () Bool)

(assert (=> b!910213 (= e!593882 tp!284696)))

(assert (= (and b!909831 (is-ElementMatch!2424 (regTwo!5361 r!15766))) b!910211))

(assert (= (and b!909831 (is-Concat!4257 (regTwo!5361 r!15766))) b!910212))

(assert (= (and b!909831 (is-Star!2424 (regTwo!5361 r!15766))) b!910213))

(assert (= (and b!909831 (is-Union!2424 (regTwo!5361 r!15766))) b!910214))

(declare-fun b!910218 () Bool)

(declare-fun e!593883 () Bool)

(declare-fun tp!284705 () Bool)

(declare-fun tp!284704 () Bool)

(assert (=> b!910218 (= e!593883 (and tp!284705 tp!284704))))

(assert (=> b!909829 (= tp!284651 e!593883)))

(declare-fun b!910216 () Bool)

(declare-fun tp!284702 () Bool)

(declare-fun tp!284703 () Bool)

(assert (=> b!910216 (= e!593883 (and tp!284702 tp!284703))))

(declare-fun b!910215 () Bool)

(assert (=> b!910215 (= e!593883 tp_is_empty!4491)))

(declare-fun b!910217 () Bool)

(declare-fun tp!284701 () Bool)

(assert (=> b!910217 (= e!593883 tp!284701)))

(assert (= (and b!909829 (is-ElementMatch!2424 (regOne!5360 r!15766))) b!910215))

(assert (= (and b!909829 (is-Concat!4257 (regOne!5360 r!15766))) b!910216))

(assert (= (and b!909829 (is-Star!2424 (regOne!5360 r!15766))) b!910217))

(assert (= (and b!909829 (is-Union!2424 (regOne!5360 r!15766))) b!910218))

(declare-fun b!910222 () Bool)

(declare-fun e!593884 () Bool)

(declare-fun tp!284710 () Bool)

(declare-fun tp!284709 () Bool)

(assert (=> b!910222 (= e!593884 (and tp!284710 tp!284709))))

(assert (=> b!909829 (= tp!284654 e!593884)))

(declare-fun b!910220 () Bool)

(declare-fun tp!284707 () Bool)

(declare-fun tp!284708 () Bool)

(assert (=> b!910220 (= e!593884 (and tp!284707 tp!284708))))

(declare-fun b!910219 () Bool)

(assert (=> b!910219 (= e!593884 tp_is_empty!4491)))

(declare-fun b!910221 () Bool)

(declare-fun tp!284706 () Bool)

(assert (=> b!910221 (= e!593884 tp!284706)))

(assert (= (and b!909829 (is-ElementMatch!2424 (regTwo!5360 r!15766))) b!910219))

(assert (= (and b!909829 (is-Concat!4257 (regTwo!5360 r!15766))) b!910220))

(assert (= (and b!909829 (is-Star!2424 (regTwo!5360 r!15766))) b!910221))

(assert (= (and b!909829 (is-Union!2424 (regTwo!5360 r!15766))) b!910222))

(push 1)

(assert (not bm!54630))

(assert (not b!910059))

(assert (not d!279206))

(assert (not b!910064))

(assert (not d!279208))

(assert (not b!910063))

(assert (not b!910154))

(assert (not b!909920))

(assert (not bm!54616))

(assert (not bm!54618))

(assert (not b!910180))

(assert (not b!909957))

(assert (not b!910222))

(assert (not b!910150))

(assert (not b!910182))

(assert (not bm!54650))

(assert (not bm!54651))

(assert (not b!910011))

(assert (not d!279192))

(assert (not b!910027))

(assert (not b!909953))

(assert (not d!279220))

(assert (not b!910214))

(assert (not b!910206))

(assert (not d!279198))

(assert (not b!910176))

(assert (not b!910057))

(assert (not bm!54619))

(assert (not bm!54637))

(assert (not b!909916))

(assert (not bm!54634))

(assert (not b!910221))

(assert (not b!910065))

(assert (not b!909963))

(assert (not b!910213))

(assert (not b!910210))

(assert (not b!909918))

(assert (not b!910216))

(assert (not d!279202))

(assert (not b!910208))

(assert (not b!910186))

(assert (not b!909954))

(assert (not d!279190))

(assert (not b!910205))

(assert (not bm!54609))

(assert (not d!279204))

(assert (not b!910209))

(assert (not b!909959))

(assert (not b!909912))

(assert (not b!910177))

(assert (not b!910192))

(assert (not b!909913))

(assert (not d!279180))

(assert (not bm!54635))

(assert (not d!279212))

(assert (not b!910217))

(assert tp_is_empty!4491)

(assert (not b!909961))

(assert (not b!910220))

(assert (not b!910218))

(assert (not d!279216))

(assert (not d!279188))

(assert (not bm!54653))

(assert (not b!909943))

(assert (not b!910204))

(assert (not b!909922))

(assert (not b!910212))

(assert (not b!910184))

(assert (not b!910062))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

