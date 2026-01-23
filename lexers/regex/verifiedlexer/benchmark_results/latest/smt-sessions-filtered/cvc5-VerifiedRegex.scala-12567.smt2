; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697178 () Bool)

(assert start!697178)

(declare-fun bs!1889542 () Bool)

(declare-fun b!7150744 () Bool)

(assert (= bs!1889542 (and b!7150744 start!697178)))

(declare-fun lambda!436122 () Int)

(declare-fun lambda!436121 () Int)

(assert (=> bs!1889542 (not (= lambda!436122 lambda!436121))))

(declare-fun b!7150738 () Bool)

(declare-fun e!4296574 () Bool)

(declare-fun tp!1974619 () Bool)

(declare-fun tp!1974620 () Bool)

(assert (=> b!7150738 (= e!4296574 (and tp!1974619 tp!1974620))))

(declare-fun b!7150739 () Bool)

(declare-fun res!2916752 () Bool)

(declare-fun e!4296575 () Bool)

(assert (=> b!7150739 (=> (not res!2916752) (not e!4296575))))

(declare-datatypes ((C!36758 0))(
  ( (C!36759 (val!28327 Int)) )
))
(declare-datatypes ((Regex!18242 0))(
  ( (ElementMatch!18242 (c!1333145 C!36758)) (Concat!27087 (regOne!36996 Regex!18242) (regTwo!36996 Regex!18242)) (EmptyExpr!18242) (Star!18242 (reg!18571 Regex!18242)) (EmptyLang!18242) (Union!18242 (regOne!36997 Regex!18242) (regTwo!36997 Regex!18242)) )
))
(declare-fun r!13911 () Regex!18242)

(declare-datatypes ((List!69546 0))(
  ( (Nil!69422) (Cons!69422 (h!75870 Regex!18242) (t!383563 List!69546)) )
))
(declare-fun l!9154 () List!69546)

(declare-fun generalisedConcat!2417 (List!69546) Regex!18242)

(assert (=> b!7150739 (= res!2916752 (= r!13911 (generalisedConcat!2417 l!9154)))))

(declare-fun b!7150740 () Bool)

(declare-fun e!4296573 () Bool)

(declare-fun tp!1974615 () Bool)

(declare-fun tp!1974616 () Bool)

(assert (=> b!7150740 (= e!4296573 (and tp!1974615 tp!1974616))))

(declare-fun b!7150741 () Bool)

(declare-fun tp_is_empty!46121 () Bool)

(assert (=> b!7150741 (= e!4296573 tp_is_empty!46121)))

(declare-fun b!7150742 () Bool)

(declare-fun res!2916754 () Bool)

(assert (=> b!7150742 (=> (not res!2916754) (not e!4296575))))

(declare-fun e!4296576 () Bool)

(assert (=> b!7150742 (= res!2916754 e!4296576)))

(declare-fun res!2916753 () Bool)

(assert (=> b!7150742 (=> res!2916753 e!4296576)))

(assert (=> b!7150742 (= res!2916753 (not (is-Cons!69422 l!9154)))))

(declare-fun b!7150743 () Bool)

(declare-fun isEmpty!40112 (List!69546) Bool)

(assert (=> b!7150743 (= e!4296576 (not (isEmpty!40112 (t!383563 l!9154))))))

(declare-fun nullable!7731 (Regex!18242) Bool)

(declare-fun forall!17082 (List!69546 Int) Bool)

(assert (=> b!7150744 (= e!4296575 (not (= (nullable!7731 r!13911) (forall!17082 l!9154 lambda!436122))))))

(declare-fun b!7150745 () Bool)

(declare-fun tp!1974614 () Bool)

(assert (=> b!7150745 (= e!4296573 tp!1974614)))

(declare-fun b!7150746 () Bool)

(declare-fun res!2916755 () Bool)

(assert (=> b!7150746 (=> (not res!2916755) (not e!4296575))))

(assert (=> b!7150746 (= res!2916755 (and (is-Cons!69422 l!9154) (not (is-Concat!27087 r!13911))))))

(declare-fun res!2916756 () Bool)

(assert (=> start!697178 (=> (not res!2916756) (not e!4296575))))

(assert (=> start!697178 (= res!2916756 (forall!17082 l!9154 lambda!436121))))

(assert (=> start!697178 e!4296575))

(assert (=> start!697178 e!4296574))

(assert (=> start!697178 e!4296573))

(declare-fun b!7150747 () Bool)

(declare-fun tp!1974618 () Bool)

(declare-fun tp!1974617 () Bool)

(assert (=> b!7150747 (= e!4296573 (and tp!1974618 tp!1974617))))

(assert (= (and start!697178 res!2916756) b!7150739))

(assert (= (and b!7150739 res!2916752) b!7150742))

(assert (= (and b!7150742 (not res!2916753)) b!7150743))

(assert (= (and b!7150742 res!2916754) b!7150746))

(assert (= (and b!7150746 res!2916755) b!7150744))

(assert (= (and start!697178 (is-Cons!69422 l!9154)) b!7150738))

(assert (= (and start!697178 (is-ElementMatch!18242 r!13911)) b!7150741))

(assert (= (and start!697178 (is-Concat!27087 r!13911)) b!7150740))

(assert (= (and start!697178 (is-Star!18242 r!13911)) b!7150745))

(assert (= (and start!697178 (is-Union!18242 r!13911)) b!7150747))

(declare-fun m!7861180 () Bool)

(assert (=> b!7150739 m!7861180))

(declare-fun m!7861182 () Bool)

(assert (=> b!7150743 m!7861182))

(declare-fun m!7861184 () Bool)

(assert (=> b!7150744 m!7861184))

(declare-fun m!7861186 () Bool)

(assert (=> b!7150744 m!7861186))

(declare-fun m!7861188 () Bool)

(assert (=> start!697178 m!7861188))

(push 1)

(assert (not b!7150744))

(assert (not b!7150738))

(assert (not b!7150740))

(assert (not b!7150739))

(assert (not b!7150745))

(assert tp_is_empty!46121)

(assert (not b!7150743))

(assert (not b!7150747))

(assert (not start!697178))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2228898 () Bool)

(declare-fun res!2916776 () Bool)

(declare-fun e!4296593 () Bool)

(assert (=> d!2228898 (=> res!2916776 e!4296593)))

(assert (=> d!2228898 (= res!2916776 (is-Nil!69422 l!9154))))

(assert (=> d!2228898 (= (forall!17082 l!9154 lambda!436121) e!4296593)))

(declare-fun b!7150782 () Bool)

(declare-fun e!4296594 () Bool)

(assert (=> b!7150782 (= e!4296593 e!4296594)))

(declare-fun res!2916777 () Bool)

(assert (=> b!7150782 (=> (not res!2916777) (not e!4296594))))

(declare-fun dynLambda!28282 (Int Regex!18242) Bool)

(assert (=> b!7150782 (= res!2916777 (dynLambda!28282 lambda!436121 (h!75870 l!9154)))))

(declare-fun b!7150783 () Bool)

(assert (=> b!7150783 (= e!4296594 (forall!17082 (t!383563 l!9154) lambda!436121))))

(assert (= (and d!2228898 (not res!2916776)) b!7150782))

(assert (= (and b!7150782 res!2916777) b!7150783))

(declare-fun b_lambda!273035 () Bool)

(assert (=> (not b_lambda!273035) (not b!7150782)))

(declare-fun m!7861200 () Bool)

(assert (=> b!7150782 m!7861200))

(declare-fun m!7861202 () Bool)

(assert (=> b!7150783 m!7861202))

(assert (=> start!697178 d!2228898))

(declare-fun d!2228900 () Bool)

(assert (=> d!2228900 (= (isEmpty!40112 (t!383563 l!9154)) (is-Nil!69422 (t!383563 l!9154)))))

(assert (=> b!7150743 d!2228900))

(declare-fun d!2228902 () Bool)

(declare-fun nullableFct!3009 (Regex!18242) Bool)

(assert (=> d!2228902 (= (nullable!7731 r!13911) (nullableFct!3009 r!13911))))

(declare-fun bs!1889544 () Bool)

(assert (= bs!1889544 d!2228902))

(declare-fun m!7861204 () Bool)

(assert (=> bs!1889544 m!7861204))

(assert (=> b!7150744 d!2228902))

(declare-fun d!2228904 () Bool)

(declare-fun res!2916778 () Bool)

(declare-fun e!4296595 () Bool)

(assert (=> d!2228904 (=> res!2916778 e!4296595)))

(assert (=> d!2228904 (= res!2916778 (is-Nil!69422 l!9154))))

(assert (=> d!2228904 (= (forall!17082 l!9154 lambda!436122) e!4296595)))

(declare-fun b!7150784 () Bool)

(declare-fun e!4296596 () Bool)

(assert (=> b!7150784 (= e!4296595 e!4296596)))

(declare-fun res!2916779 () Bool)

(assert (=> b!7150784 (=> (not res!2916779) (not e!4296596))))

(assert (=> b!7150784 (= res!2916779 (dynLambda!28282 lambda!436122 (h!75870 l!9154)))))

(declare-fun b!7150785 () Bool)

(assert (=> b!7150785 (= e!4296596 (forall!17082 (t!383563 l!9154) lambda!436122))))

(assert (= (and d!2228904 (not res!2916778)) b!7150784))

(assert (= (and b!7150784 res!2916779) b!7150785))

(declare-fun b_lambda!273037 () Bool)

(assert (=> (not b_lambda!273037) (not b!7150784)))

(declare-fun m!7861206 () Bool)

(assert (=> b!7150784 m!7861206))

(declare-fun m!7861208 () Bool)

(assert (=> b!7150785 m!7861208))

(assert (=> b!7150744 d!2228904))

(declare-fun bs!1889546 () Bool)

(declare-fun d!2228906 () Bool)

(assert (= bs!1889546 (and d!2228906 start!697178)))

(declare-fun lambda!436131 () Int)

(assert (=> bs!1889546 (= lambda!436131 lambda!436121)))

(declare-fun bs!1889547 () Bool)

(assert (= bs!1889547 (and d!2228906 b!7150744)))

(assert (=> bs!1889547 (not (= lambda!436131 lambda!436122))))

(declare-fun b!7150806 () Bool)

(declare-fun e!4296614 () Bool)

(declare-fun lt!2569091 () Regex!18242)

(declare-fun isEmptyExpr!2068 (Regex!18242) Bool)

(assert (=> b!7150806 (= e!4296614 (isEmptyExpr!2068 lt!2569091))))

(declare-fun b!7150807 () Bool)

(declare-fun e!4296610 () Bool)

(assert (=> b!7150807 (= e!4296614 e!4296610)))

(declare-fun c!1333156 () Bool)

(declare-fun tail!14018 (List!69546) List!69546)

(assert (=> b!7150807 (= c!1333156 (isEmpty!40112 (tail!14018 l!9154)))))

(declare-fun b!7150808 () Bool)

(declare-fun e!4296613 () Regex!18242)

(declare-fun e!4296611 () Regex!18242)

(assert (=> b!7150808 (= e!4296613 e!4296611)))

(declare-fun c!1333155 () Bool)

(assert (=> b!7150808 (= c!1333155 (is-Cons!69422 l!9154))))

(declare-fun b!7150809 () Bool)

(assert (=> b!7150809 (= e!4296611 EmptyExpr!18242)))

(declare-fun b!7150810 () Bool)

(assert (=> b!7150810 (= e!4296611 (Concat!27087 (h!75870 l!9154) (generalisedConcat!2417 (t!383563 l!9154))))))

(declare-fun b!7150811 () Bool)

(declare-fun e!4296612 () Bool)

(assert (=> b!7150811 (= e!4296612 e!4296614)))

(declare-fun c!1333158 () Bool)

(assert (=> b!7150811 (= c!1333158 (isEmpty!40112 l!9154))))

(declare-fun b!7150812 () Bool)

(declare-fun e!4296609 () Bool)

(assert (=> b!7150812 (= e!4296609 (isEmpty!40112 (t!383563 l!9154)))))

(assert (=> d!2228906 e!4296612))

(declare-fun res!2916785 () Bool)

(assert (=> d!2228906 (=> (not res!2916785) (not e!4296612))))

(declare-fun validRegex!9397 (Regex!18242) Bool)

(assert (=> d!2228906 (= res!2916785 (validRegex!9397 lt!2569091))))

(assert (=> d!2228906 (= lt!2569091 e!4296613)))

(declare-fun c!1333157 () Bool)

(assert (=> d!2228906 (= c!1333157 e!4296609)))

(declare-fun res!2916784 () Bool)

(assert (=> d!2228906 (=> (not res!2916784) (not e!4296609))))

(assert (=> d!2228906 (= res!2916784 (is-Cons!69422 l!9154))))

(assert (=> d!2228906 (forall!17082 l!9154 lambda!436131)))

(assert (=> d!2228906 (= (generalisedConcat!2417 l!9154) lt!2569091)))

(declare-fun b!7150813 () Bool)

(declare-fun head!14549 (List!69546) Regex!18242)

(assert (=> b!7150813 (= e!4296610 (= lt!2569091 (head!14549 l!9154)))))

(declare-fun b!7150814 () Bool)

(assert (=> b!7150814 (= e!4296613 (h!75870 l!9154))))

(declare-fun b!7150815 () Bool)

(declare-fun isConcat!1590 (Regex!18242) Bool)

(assert (=> b!7150815 (= e!4296610 (isConcat!1590 lt!2569091))))

(assert (= (and d!2228906 res!2916784) b!7150812))

(assert (= (and d!2228906 c!1333157) b!7150814))

(assert (= (and d!2228906 (not c!1333157)) b!7150808))

(assert (= (and b!7150808 c!1333155) b!7150810))

(assert (= (and b!7150808 (not c!1333155)) b!7150809))

(assert (= (and d!2228906 res!2916785) b!7150811))

(assert (= (and b!7150811 c!1333158) b!7150806))

(assert (= (and b!7150811 (not c!1333158)) b!7150807))

(assert (= (and b!7150807 c!1333156) b!7150813))

(assert (= (and b!7150807 (not c!1333156)) b!7150815))

(declare-fun m!7861212 () Bool)

(assert (=> b!7150811 m!7861212))

(declare-fun m!7861214 () Bool)

(assert (=> b!7150815 m!7861214))

(declare-fun m!7861216 () Bool)

(assert (=> b!7150813 m!7861216))

(declare-fun m!7861218 () Bool)

(assert (=> b!7150806 m!7861218))

(declare-fun m!7861220 () Bool)

(assert (=> b!7150810 m!7861220))

(declare-fun m!7861222 () Bool)

(assert (=> b!7150807 m!7861222))

(assert (=> b!7150807 m!7861222))

(declare-fun m!7861224 () Bool)

(assert (=> b!7150807 m!7861224))

(assert (=> b!7150812 m!7861182))

(declare-fun m!7861226 () Bool)

(assert (=> d!2228906 m!7861226))

(declare-fun m!7861228 () Bool)

(assert (=> d!2228906 m!7861228))

(assert (=> b!7150739 d!2228906))

(declare-fun b!7150830 () Bool)

(declare-fun e!4296621 () Bool)

(declare-fun tp!1974652 () Bool)

(assert (=> b!7150830 (= e!4296621 tp!1974652)))

(assert (=> b!7150745 (= tp!1974614 e!4296621)))

(declare-fun b!7150829 () Bool)

(declare-fun tp!1974654 () Bool)

(declare-fun tp!1974653 () Bool)

(assert (=> b!7150829 (= e!4296621 (and tp!1974654 tp!1974653))))

(declare-fun b!7150831 () Bool)

(declare-fun tp!1974655 () Bool)

(declare-fun tp!1974656 () Bool)

(assert (=> b!7150831 (= e!4296621 (and tp!1974655 tp!1974656))))

(declare-fun b!7150828 () Bool)

(assert (=> b!7150828 (= e!4296621 tp_is_empty!46121)))

(assert (= (and b!7150745 (is-ElementMatch!18242 (reg!18571 r!13911))) b!7150828))

(assert (= (and b!7150745 (is-Concat!27087 (reg!18571 r!13911))) b!7150829))

(assert (= (and b!7150745 (is-Star!18242 (reg!18571 r!13911))) b!7150830))

(assert (= (and b!7150745 (is-Union!18242 (reg!18571 r!13911))) b!7150831))

(declare-fun b!7150836 () Bool)

(declare-fun e!4296622 () Bool)

(declare-fun tp!1974657 () Bool)

(assert (=> b!7150836 (= e!4296622 tp!1974657)))

(assert (=> b!7150740 (= tp!1974615 e!4296622)))

(declare-fun b!7150835 () Bool)

(declare-fun tp!1974659 () Bool)

(declare-fun tp!1974658 () Bool)

(assert (=> b!7150835 (= e!4296622 (and tp!1974659 tp!1974658))))

(declare-fun b!7150837 () Bool)

(declare-fun tp!1974660 () Bool)

(declare-fun tp!1974661 () Bool)

(assert (=> b!7150837 (= e!4296622 (and tp!1974660 tp!1974661))))

(declare-fun b!7150834 () Bool)

(assert (=> b!7150834 (= e!4296622 tp_is_empty!46121)))

(assert (= (and b!7150740 (is-ElementMatch!18242 (regOne!36996 r!13911))) b!7150834))

(assert (= (and b!7150740 (is-Concat!27087 (regOne!36996 r!13911))) b!7150835))

(assert (= (and b!7150740 (is-Star!18242 (regOne!36996 r!13911))) b!7150836))

(assert (= (and b!7150740 (is-Union!18242 (regOne!36996 r!13911))) b!7150837))

(declare-fun b!7150840 () Bool)

(declare-fun e!4296623 () Bool)

(declare-fun tp!1974662 () Bool)

(assert (=> b!7150840 (= e!4296623 tp!1974662)))

(assert (=> b!7150740 (= tp!1974616 e!4296623)))

(declare-fun b!7150839 () Bool)

(declare-fun tp!1974664 () Bool)

(declare-fun tp!1974663 () Bool)

(assert (=> b!7150839 (= e!4296623 (and tp!1974664 tp!1974663))))

(declare-fun b!7150841 () Bool)

(declare-fun tp!1974665 () Bool)

(declare-fun tp!1974666 () Bool)

(assert (=> b!7150841 (= e!4296623 (and tp!1974665 tp!1974666))))

(declare-fun b!7150838 () Bool)

(assert (=> b!7150838 (= e!4296623 tp_is_empty!46121)))

(assert (= (and b!7150740 (is-ElementMatch!18242 (regTwo!36996 r!13911))) b!7150838))

(assert (= (and b!7150740 (is-Concat!27087 (regTwo!36996 r!13911))) b!7150839))

(assert (= (and b!7150740 (is-Star!18242 (regTwo!36996 r!13911))) b!7150840))

(assert (= (and b!7150740 (is-Union!18242 (regTwo!36996 r!13911))) b!7150841))

(declare-fun b!7150844 () Bool)

(declare-fun e!4296624 () Bool)

(declare-fun tp!1974667 () Bool)

(assert (=> b!7150844 (= e!4296624 tp!1974667)))

(assert (=> b!7150747 (= tp!1974618 e!4296624)))

(declare-fun b!7150843 () Bool)

(declare-fun tp!1974669 () Bool)

(declare-fun tp!1974668 () Bool)

(assert (=> b!7150843 (= e!4296624 (and tp!1974669 tp!1974668))))

(declare-fun b!7150845 () Bool)

(declare-fun tp!1974670 () Bool)

(declare-fun tp!1974671 () Bool)

(assert (=> b!7150845 (= e!4296624 (and tp!1974670 tp!1974671))))

(declare-fun b!7150842 () Bool)

(assert (=> b!7150842 (= e!4296624 tp_is_empty!46121)))

(assert (= (and b!7150747 (is-ElementMatch!18242 (regOne!36997 r!13911))) b!7150842))

(assert (= (and b!7150747 (is-Concat!27087 (regOne!36997 r!13911))) b!7150843))

(assert (= (and b!7150747 (is-Star!18242 (regOne!36997 r!13911))) b!7150844))

(assert (= (and b!7150747 (is-Union!18242 (regOne!36997 r!13911))) b!7150845))

(declare-fun b!7150848 () Bool)

(declare-fun e!4296625 () Bool)

(declare-fun tp!1974672 () Bool)

(assert (=> b!7150848 (= e!4296625 tp!1974672)))

(assert (=> b!7150747 (= tp!1974617 e!4296625)))

(declare-fun b!7150847 () Bool)

(declare-fun tp!1974674 () Bool)

(declare-fun tp!1974673 () Bool)

(assert (=> b!7150847 (= e!4296625 (and tp!1974674 tp!1974673))))

(declare-fun b!7150849 () Bool)

(declare-fun tp!1974675 () Bool)

(declare-fun tp!1974676 () Bool)

(assert (=> b!7150849 (= e!4296625 (and tp!1974675 tp!1974676))))

(declare-fun b!7150846 () Bool)

(assert (=> b!7150846 (= e!4296625 tp_is_empty!46121)))

(assert (= (and b!7150747 (is-ElementMatch!18242 (regTwo!36997 r!13911))) b!7150846))

(assert (= (and b!7150747 (is-Concat!27087 (regTwo!36997 r!13911))) b!7150847))

(assert (= (and b!7150747 (is-Star!18242 (regTwo!36997 r!13911))) b!7150848))

(assert (= (and b!7150747 (is-Union!18242 (regTwo!36997 r!13911))) b!7150849))

(declare-fun b!7150852 () Bool)

(declare-fun e!4296626 () Bool)

(declare-fun tp!1974677 () Bool)

(assert (=> b!7150852 (= e!4296626 tp!1974677)))

(assert (=> b!7150738 (= tp!1974619 e!4296626)))

(declare-fun b!7150851 () Bool)

(declare-fun tp!1974679 () Bool)

(declare-fun tp!1974678 () Bool)

(assert (=> b!7150851 (= e!4296626 (and tp!1974679 tp!1974678))))

(declare-fun b!7150853 () Bool)

(declare-fun tp!1974680 () Bool)

(declare-fun tp!1974681 () Bool)

(assert (=> b!7150853 (= e!4296626 (and tp!1974680 tp!1974681))))

(declare-fun b!7150850 () Bool)

(assert (=> b!7150850 (= e!4296626 tp_is_empty!46121)))

(assert (= (and b!7150738 (is-ElementMatch!18242 (h!75870 l!9154))) b!7150850))

(assert (= (and b!7150738 (is-Concat!27087 (h!75870 l!9154))) b!7150851))

(assert (= (and b!7150738 (is-Star!18242 (h!75870 l!9154))) b!7150852))

(assert (= (and b!7150738 (is-Union!18242 (h!75870 l!9154))) b!7150853))

(declare-fun b!7150858 () Bool)

(declare-fun e!4296629 () Bool)

(declare-fun tp!1974686 () Bool)

(declare-fun tp!1974687 () Bool)

(assert (=> b!7150858 (= e!4296629 (and tp!1974686 tp!1974687))))

(assert (=> b!7150738 (= tp!1974620 e!4296629)))

(assert (= (and b!7150738 (is-Cons!69422 (t!383563 l!9154))) b!7150858))

(declare-fun b_lambda!273039 () Bool)

(assert (= b_lambda!273035 (or start!697178 b_lambda!273039)))

(declare-fun bs!1889548 () Bool)

(declare-fun d!2228912 () Bool)

(assert (= bs!1889548 (and d!2228912 start!697178)))

(assert (=> bs!1889548 (= (dynLambda!28282 lambda!436121 (h!75870 l!9154)) (validRegex!9397 (h!75870 l!9154)))))

(declare-fun m!7861230 () Bool)

(assert (=> bs!1889548 m!7861230))

(assert (=> b!7150782 d!2228912))

(declare-fun b_lambda!273041 () Bool)

(assert (= b_lambda!273037 (or b!7150744 b_lambda!273041)))

(declare-fun bs!1889549 () Bool)

(declare-fun d!2228914 () Bool)

(assert (= bs!1889549 (and d!2228914 b!7150744)))

(assert (=> bs!1889549 (= (dynLambda!28282 lambda!436122 (h!75870 l!9154)) (nullable!7731 (h!75870 l!9154)))))

(declare-fun m!7861232 () Bool)

(assert (=> bs!1889549 m!7861232))

(assert (=> b!7150784 d!2228914))

(push 1)

(assert (not b!7150839))

(assert (not b!7150831))

(assert (not b!7150830))

(assert (not b!7150841))

(assert (not b_lambda!273041))

(assert (not b!7150783))

(assert (not d!2228906))

(assert (not b!7150785))

(assert (not b!7150836))

(assert (not b!7150851))

(assert (not b!7150813))

(assert (not bs!1889548))

(assert (not b!7150849))

(assert (not b!7150835))

(assert (not d!2228902))

(assert (not b!7150829))

(assert (not b!7150844))

(assert (not b!7150843))

(assert (not b!7150852))

(assert (not b!7150815))

(assert (not b!7150848))

(assert (not bs!1889549))

(assert (not b_lambda!273039))

(assert (not b!7150807))

(assert (not b!7150840))

(assert (not b!7150812))

(assert (not b!7150811))

(assert (not b!7150858))

(assert (not b!7150810))

(assert (not b!7150847))

(assert (not b!7150853))

(assert (not b!7150845))

(assert (not b!7150806))

(assert (not b!7150837))

(assert tp_is_empty!46121)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

