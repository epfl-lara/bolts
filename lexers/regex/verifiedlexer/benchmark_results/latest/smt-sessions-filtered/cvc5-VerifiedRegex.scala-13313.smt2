; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!723392 () Bool)

(assert start!723392)

(declare-fun b!7450819 () Bool)

(assert (=> b!7450819 true))

(assert (=> b!7450819 true))

(assert (=> b!7450819 true))

(declare-fun lambda!460847 () Int)

(declare-fun lambda!460846 () Int)

(assert (=> b!7450819 (not (= lambda!460847 lambda!460846))))

(assert (=> b!7450819 true))

(assert (=> b!7450819 true))

(assert (=> b!7450819 true))

(declare-fun b!7450804 () Bool)

(declare-fun e!4447691 () Bool)

(declare-fun tp_is_empty!49265 () Bool)

(assert (=> b!7450804 (= e!4447691 tp_is_empty!49265)))

(declare-fun b!7450805 () Bool)

(declare-fun e!4447689 () Bool)

(assert (=> b!7450805 (= e!4447689 tp_is_empty!49265)))

(declare-fun b!7450806 () Bool)

(declare-fun e!4447688 () Bool)

(assert (=> b!7450806 (= e!4447688 tp_is_empty!49265)))

(declare-fun b!7450807 () Bool)

(declare-fun tp!2158746 () Bool)

(declare-fun tp!2158747 () Bool)

(assert (=> b!7450807 (= e!4447688 (and tp!2158746 tp!2158747))))

(declare-fun res!2988592 () Bool)

(declare-fun e!4447690 () Bool)

(assert (=> start!723392 (=> (not res!2988592) (not e!4447690))))

(declare-datatypes ((C!39250 0))(
  ( (C!39251 (val!30023 Int)) )
))
(declare-datatypes ((Regex!19488 0))(
  ( (ElementMatch!19488 (c!1377835 C!39250)) (Concat!28333 (regOne!39488 Regex!19488) (regTwo!39488 Regex!19488)) (EmptyExpr!19488) (Star!19488 (reg!19817 Regex!19488)) (EmptyLang!19488) (Union!19488 (regOne!39489 Regex!19488) (regTwo!39489 Regex!19488)) )
))
(declare-fun r1!5845 () Regex!19488)

(declare-fun validRegex!10002 (Regex!19488) Bool)

(assert (=> start!723392 (= res!2988592 (validRegex!10002 r1!5845))))

(assert (=> start!723392 e!4447690))

(assert (=> start!723392 e!4447691))

(assert (=> start!723392 e!4447688))

(assert (=> start!723392 e!4447689))

(declare-fun e!4447687 () Bool)

(assert (=> start!723392 e!4447687))

(declare-fun b!7450808 () Bool)

(declare-fun tp!2158742 () Bool)

(declare-fun tp!2158732 () Bool)

(assert (=> b!7450808 (= e!4447691 (and tp!2158742 tp!2158732))))

(declare-fun b!7450809 () Bool)

(declare-fun tp!2158738 () Bool)

(assert (=> b!7450809 (= e!4447691 tp!2158738)))

(declare-fun b!7450810 () Bool)

(declare-fun e!4447692 () Bool)

(assert (=> b!7450810 (= e!4447690 (not e!4447692))))

(declare-fun res!2988590 () Bool)

(assert (=> b!7450810 (=> res!2988590 e!4447692)))

(declare-fun lt!2620090 () Bool)

(assert (=> b!7450810 (= res!2988590 (not lt!2620090))))

(declare-fun lt!2620088 () Regex!19488)

(declare-datatypes ((List!72204 0))(
  ( (Nil!72080) (Cons!72080 (h!78528 C!39250) (t!386773 List!72204)) )
))
(declare-fun s!13591 () List!72204)

(declare-fun matchR!9252 (Regex!19488 List!72204) Bool)

(declare-fun matchRSpec!4167 (Regex!19488 List!72204) Bool)

(assert (=> b!7450810 (= (matchR!9252 lt!2620088 s!13591) (matchRSpec!4167 lt!2620088 s!13591))))

(declare-datatypes ((Unit!165811 0))(
  ( (Unit!165812) )
))
(declare-fun lt!2620093 () Unit!165811)

(declare-fun mainMatchTheorem!4161 (Regex!19488 List!72204) Unit!165811)

(assert (=> b!7450810 (= lt!2620093 (mainMatchTheorem!4161 lt!2620088 s!13591))))

(declare-fun lt!2620087 () Regex!19488)

(assert (=> b!7450810 (= lt!2620090 (matchRSpec!4167 lt!2620087 s!13591))))

(assert (=> b!7450810 (= lt!2620090 (matchR!9252 lt!2620087 s!13591))))

(declare-fun lt!2620094 () Unit!165811)

(assert (=> b!7450810 (= lt!2620094 (mainMatchTheorem!4161 lt!2620087 s!13591))))

(declare-fun r2!5783 () Regex!19488)

(declare-fun rTail!78 () Regex!19488)

(assert (=> b!7450810 (= lt!2620088 (Union!19488 (Concat!28333 r1!5845 rTail!78) (Concat!28333 r2!5783 rTail!78)))))

(declare-fun lt!2620092 () Regex!19488)

(assert (=> b!7450810 (= lt!2620087 (Concat!28333 lt!2620092 rTail!78))))

(assert (=> b!7450810 (= lt!2620092 (Union!19488 r1!5845 r2!5783))))

(declare-fun b!7450811 () Bool)

(declare-fun tp!2158734 () Bool)

(assert (=> b!7450811 (= e!4447688 tp!2158734)))

(declare-fun b!7450812 () Bool)

(declare-fun tp!2158735 () Bool)

(declare-fun tp!2158744 () Bool)

(assert (=> b!7450812 (= e!4447691 (and tp!2158735 tp!2158744))))

(declare-fun b!7450813 () Bool)

(declare-fun tp!2158745 () Bool)

(assert (=> b!7450813 (= e!4447687 (and tp_is_empty!49265 tp!2158745))))

(declare-fun b!7450814 () Bool)

(declare-fun tp!2158737 () Bool)

(declare-fun tp!2158733 () Bool)

(assert (=> b!7450814 (= e!4447688 (and tp!2158737 tp!2158733))))

(declare-fun b!7450815 () Bool)

(declare-fun tp!2158739 () Bool)

(assert (=> b!7450815 (= e!4447689 tp!2158739)))

(declare-fun b!7450816 () Bool)

(declare-fun res!2988589 () Bool)

(assert (=> b!7450816 (=> (not res!2988589) (not e!4447690))))

(assert (=> b!7450816 (= res!2988589 (validRegex!10002 rTail!78))))

(declare-fun b!7450817 () Bool)

(declare-fun tp!2158736 () Bool)

(declare-fun tp!2158741 () Bool)

(assert (=> b!7450817 (= e!4447689 (and tp!2158736 tp!2158741))))

(declare-fun b!7450818 () Bool)

(declare-fun tp!2158743 () Bool)

(declare-fun tp!2158740 () Bool)

(assert (=> b!7450818 (= e!4447689 (and tp!2158743 tp!2158740))))

(declare-fun lt!2620089 () Bool)

(assert (=> b!7450819 (= e!4447692 lt!2620089)))

(declare-fun Exists!4109 (Int) Bool)

(assert (=> b!7450819 (= (Exists!4109 lambda!460846) (Exists!4109 lambda!460847))))

(declare-fun lt!2620091 () Unit!165811)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2445 (Regex!19488 Regex!19488 List!72204) Unit!165811)

(assert (=> b!7450819 (= lt!2620091 (lemmaExistCutMatchRandMatchRSpecEquivalent!2445 lt!2620092 rTail!78 s!13591))))

(assert (=> b!7450819 (= lt!2620089 (Exists!4109 lambda!460846))))

(declare-datatypes ((tuple2!68430 0))(
  ( (tuple2!68431 (_1!37518 List!72204) (_2!37518 List!72204)) )
))
(declare-datatypes ((Option!17047 0))(
  ( (None!17046) (Some!17046 (v!54175 tuple2!68430)) )
))
(declare-fun isDefined!13736 (Option!17047) Bool)

(declare-fun findConcatSeparation!3169 (Regex!19488 Regex!19488 List!72204 List!72204 List!72204) Option!17047)

(assert (=> b!7450819 (= lt!2620089 (isDefined!13736 (findConcatSeparation!3169 lt!2620092 rTail!78 Nil!72080 s!13591 s!13591)))))

(declare-fun lt!2620086 () Unit!165811)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2927 (Regex!19488 Regex!19488 List!72204) Unit!165811)

(assert (=> b!7450819 (= lt!2620086 (lemmaFindConcatSeparationEquivalentToExists!2927 lt!2620092 rTail!78 s!13591))))

(declare-fun b!7450820 () Bool)

(declare-fun res!2988591 () Bool)

(assert (=> b!7450820 (=> (not res!2988591) (not e!4447690))))

(assert (=> b!7450820 (= res!2988591 (validRegex!10002 r2!5783))))

(assert (= (and start!723392 res!2988592) b!7450820))

(assert (= (and b!7450820 res!2988591) b!7450816))

(assert (= (and b!7450816 res!2988589) b!7450810))

(assert (= (and b!7450810 (not res!2988590)) b!7450819))

(assert (= (and start!723392 (is-ElementMatch!19488 r1!5845)) b!7450804))

(assert (= (and start!723392 (is-Concat!28333 r1!5845)) b!7450808))

(assert (= (and start!723392 (is-Star!19488 r1!5845)) b!7450809))

(assert (= (and start!723392 (is-Union!19488 r1!5845)) b!7450812))

(assert (= (and start!723392 (is-ElementMatch!19488 r2!5783)) b!7450806))

(assert (= (and start!723392 (is-Concat!28333 r2!5783)) b!7450807))

(assert (= (and start!723392 (is-Star!19488 r2!5783)) b!7450811))

(assert (= (and start!723392 (is-Union!19488 r2!5783)) b!7450814))

(assert (= (and start!723392 (is-ElementMatch!19488 rTail!78)) b!7450805))

(assert (= (and start!723392 (is-Concat!28333 rTail!78)) b!7450817))

(assert (= (and start!723392 (is-Star!19488 rTail!78)) b!7450815))

(assert (= (and start!723392 (is-Union!19488 rTail!78)) b!7450818))

(assert (= (and start!723392 (is-Cons!72080 s!13591)) b!7450813))

(declare-fun m!8056892 () Bool)

(assert (=> b!7450820 m!8056892))

(declare-fun m!8056894 () Bool)

(assert (=> b!7450819 m!8056894))

(declare-fun m!8056896 () Bool)

(assert (=> b!7450819 m!8056896))

(declare-fun m!8056898 () Bool)

(assert (=> b!7450819 m!8056898))

(declare-fun m!8056900 () Bool)

(assert (=> b!7450819 m!8056900))

(declare-fun m!8056902 () Bool)

(assert (=> b!7450819 m!8056902))

(assert (=> b!7450819 m!8056894))

(assert (=> b!7450819 m!8056900))

(declare-fun m!8056904 () Bool)

(assert (=> b!7450819 m!8056904))

(declare-fun m!8056906 () Bool)

(assert (=> b!7450810 m!8056906))

(declare-fun m!8056908 () Bool)

(assert (=> b!7450810 m!8056908))

(declare-fun m!8056910 () Bool)

(assert (=> b!7450810 m!8056910))

(declare-fun m!8056912 () Bool)

(assert (=> b!7450810 m!8056912))

(declare-fun m!8056914 () Bool)

(assert (=> b!7450810 m!8056914))

(declare-fun m!8056916 () Bool)

(assert (=> b!7450810 m!8056916))

(declare-fun m!8056918 () Bool)

(assert (=> start!723392 m!8056918))

(declare-fun m!8056920 () Bool)

(assert (=> b!7450816 m!8056920))

(push 1)

(assert (not b!7450807))

(assert (not b!7450814))

(assert (not b!7450818))

(assert tp_is_empty!49265)

(assert (not start!723392))

(assert (not b!7450809))

(assert (not b!7450815))

(assert (not b!7450812))

(assert (not b!7450817))

(assert (not b!7450810))

(assert (not b!7450808))

(assert (not b!7450816))

(assert (not b!7450819))

(assert (not b!7450813))

(assert (not b!7450820))

(assert (not b!7450811))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7450910 () Bool)

(declare-fun e!4447731 () Bool)

(declare-fun call!684583 () Bool)

(assert (=> b!7450910 (= e!4447731 call!684583)))

(declare-fun bm!684576 () Bool)

(declare-fun call!684581 () Bool)

(declare-fun c!1377841 () Bool)

(assert (=> bm!684576 (= call!684581 (validRegex!10002 (ite c!1377841 (regOne!39489 rTail!78) (regOne!39488 rTail!78))))))

(declare-fun c!1377842 () Bool)

(declare-fun bm!684577 () Bool)

(declare-fun call!684582 () Bool)

(assert (=> bm!684577 (= call!684582 (validRegex!10002 (ite c!1377842 (reg!19817 rTail!78) (ite c!1377841 (regTwo!39489 rTail!78) (regTwo!39488 rTail!78)))))))

(declare-fun b!7450911 () Bool)

(declare-fun res!2988627 () Bool)

(declare-fun e!4447736 () Bool)

(assert (=> b!7450911 (=> (not res!2988627) (not e!4447736))))

(assert (=> b!7450911 (= res!2988627 call!684581)))

(declare-fun e!4447733 () Bool)

(assert (=> b!7450911 (= e!4447733 e!4447736)))

(declare-fun b!7450912 () Bool)

(declare-fun e!4447732 () Bool)

(declare-fun e!4447734 () Bool)

(assert (=> b!7450912 (= e!4447732 e!4447734)))

(declare-fun res!2988628 () Bool)

(declare-fun nullable!8492 (Regex!19488) Bool)

(assert (=> b!7450912 (= res!2988628 (not (nullable!8492 (reg!19817 rTail!78))))))

(assert (=> b!7450912 (=> (not res!2988628) (not e!4447734))))

(declare-fun b!7450913 () Bool)

(declare-fun res!2988631 () Bool)

(declare-fun e!4447737 () Bool)

(assert (=> b!7450913 (=> res!2988631 e!4447737)))

(assert (=> b!7450913 (= res!2988631 (not (is-Concat!28333 rTail!78)))))

(assert (=> b!7450913 (= e!4447733 e!4447737)))

(declare-fun d!2296994 () Bool)

(declare-fun res!2988630 () Bool)

(declare-fun e!4447735 () Bool)

(assert (=> d!2296994 (=> res!2988630 e!4447735)))

(assert (=> d!2296994 (= res!2988630 (is-ElementMatch!19488 rTail!78))))

(assert (=> d!2296994 (= (validRegex!10002 rTail!78) e!4447735)))

(declare-fun b!7450914 () Bool)

(assert (=> b!7450914 (= e!4447735 e!4447732)))

(assert (=> b!7450914 (= c!1377842 (is-Star!19488 rTail!78))))

(declare-fun b!7450915 () Bool)

(assert (=> b!7450915 (= e!4447736 call!684583)))

(declare-fun bm!684578 () Bool)

(assert (=> bm!684578 (= call!684583 call!684582)))

(declare-fun b!7450916 () Bool)

(assert (=> b!7450916 (= e!4447732 e!4447733)))

(assert (=> b!7450916 (= c!1377841 (is-Union!19488 rTail!78))))

(declare-fun b!7450917 () Bool)

(assert (=> b!7450917 (= e!4447734 call!684582)))

(declare-fun b!7450918 () Bool)

(assert (=> b!7450918 (= e!4447737 e!4447731)))

(declare-fun res!2988629 () Bool)

(assert (=> b!7450918 (=> (not res!2988629) (not e!4447731))))

(assert (=> b!7450918 (= res!2988629 call!684581)))

(assert (= (and d!2296994 (not res!2988630)) b!7450914))

(assert (= (and b!7450914 c!1377842) b!7450912))

(assert (= (and b!7450914 (not c!1377842)) b!7450916))

(assert (= (and b!7450912 res!2988628) b!7450917))

(assert (= (and b!7450916 c!1377841) b!7450911))

(assert (= (and b!7450916 (not c!1377841)) b!7450913))

(assert (= (and b!7450911 res!2988627) b!7450915))

(assert (= (and b!7450913 (not res!2988631)) b!7450918))

(assert (= (and b!7450918 res!2988629) b!7450910))

(assert (= (or b!7450915 b!7450910) bm!684578))

(assert (= (or b!7450911 b!7450918) bm!684576))

(assert (= (or b!7450917 bm!684578) bm!684577))

(declare-fun m!8056952 () Bool)

(assert (=> bm!684576 m!8056952))

(declare-fun m!8056954 () Bool)

(assert (=> bm!684577 m!8056954))

(declare-fun m!8056956 () Bool)

(assert (=> b!7450912 m!8056956))

(assert (=> b!7450816 d!2296994))

(declare-fun b!7450919 () Bool)

(declare-fun e!4447738 () Bool)

(declare-fun call!684586 () Bool)

(assert (=> b!7450919 (= e!4447738 call!684586)))

(declare-fun bm!684579 () Bool)

(declare-fun call!684584 () Bool)

(declare-fun c!1377843 () Bool)

(assert (=> bm!684579 (= call!684584 (validRegex!10002 (ite c!1377843 (regOne!39489 r2!5783) (regOne!39488 r2!5783))))))

(declare-fun call!684585 () Bool)

(declare-fun c!1377844 () Bool)

(declare-fun bm!684580 () Bool)

(assert (=> bm!684580 (= call!684585 (validRegex!10002 (ite c!1377844 (reg!19817 r2!5783) (ite c!1377843 (regTwo!39489 r2!5783) (regTwo!39488 r2!5783)))))))

(declare-fun b!7450920 () Bool)

(declare-fun res!2988632 () Bool)

(declare-fun e!4447743 () Bool)

(assert (=> b!7450920 (=> (not res!2988632) (not e!4447743))))

(assert (=> b!7450920 (= res!2988632 call!684584)))

(declare-fun e!4447740 () Bool)

(assert (=> b!7450920 (= e!4447740 e!4447743)))

(declare-fun b!7450921 () Bool)

(declare-fun e!4447739 () Bool)

(declare-fun e!4447741 () Bool)

(assert (=> b!7450921 (= e!4447739 e!4447741)))

(declare-fun res!2988633 () Bool)

(assert (=> b!7450921 (= res!2988633 (not (nullable!8492 (reg!19817 r2!5783))))))

(assert (=> b!7450921 (=> (not res!2988633) (not e!4447741))))

(declare-fun b!7450922 () Bool)

(declare-fun res!2988636 () Bool)

(declare-fun e!4447744 () Bool)

(assert (=> b!7450922 (=> res!2988636 e!4447744)))

(assert (=> b!7450922 (= res!2988636 (not (is-Concat!28333 r2!5783)))))

(assert (=> b!7450922 (= e!4447740 e!4447744)))

(declare-fun d!2296996 () Bool)

(declare-fun res!2988635 () Bool)

(declare-fun e!4447742 () Bool)

(assert (=> d!2296996 (=> res!2988635 e!4447742)))

(assert (=> d!2296996 (= res!2988635 (is-ElementMatch!19488 r2!5783))))

(assert (=> d!2296996 (= (validRegex!10002 r2!5783) e!4447742)))

(declare-fun b!7450923 () Bool)

(assert (=> b!7450923 (= e!4447742 e!4447739)))

(assert (=> b!7450923 (= c!1377844 (is-Star!19488 r2!5783))))

(declare-fun b!7450924 () Bool)

(assert (=> b!7450924 (= e!4447743 call!684586)))

(declare-fun bm!684581 () Bool)

(assert (=> bm!684581 (= call!684586 call!684585)))

(declare-fun b!7450925 () Bool)

(assert (=> b!7450925 (= e!4447739 e!4447740)))

(assert (=> b!7450925 (= c!1377843 (is-Union!19488 r2!5783))))

(declare-fun b!7450926 () Bool)

(assert (=> b!7450926 (= e!4447741 call!684585)))

(declare-fun b!7450927 () Bool)

(assert (=> b!7450927 (= e!4447744 e!4447738)))

(declare-fun res!2988634 () Bool)

(assert (=> b!7450927 (=> (not res!2988634) (not e!4447738))))

(assert (=> b!7450927 (= res!2988634 call!684584)))

(assert (= (and d!2296996 (not res!2988635)) b!7450923))

(assert (= (and b!7450923 c!1377844) b!7450921))

(assert (= (and b!7450923 (not c!1377844)) b!7450925))

(assert (= (and b!7450921 res!2988633) b!7450926))

(assert (= (and b!7450925 c!1377843) b!7450920))

(assert (= (and b!7450925 (not c!1377843)) b!7450922))

(assert (= (and b!7450920 res!2988632) b!7450924))

(assert (= (and b!7450922 (not res!2988636)) b!7450927))

(assert (= (and b!7450927 res!2988634) b!7450919))

(assert (= (or b!7450924 b!7450919) bm!684581))

(assert (= (or b!7450920 b!7450927) bm!684579))

(assert (= (or b!7450926 bm!684581) bm!684580))

(declare-fun m!8056958 () Bool)

(assert (=> bm!684579 m!8056958))

(declare-fun m!8056960 () Bool)

(assert (=> bm!684580 m!8056960))

(declare-fun m!8056962 () Bool)

(assert (=> b!7450921 m!8056962))

(assert (=> b!7450820 d!2296996))

(declare-fun b!7450928 () Bool)

(declare-fun e!4447745 () Bool)

(declare-fun call!684589 () Bool)

(assert (=> b!7450928 (= e!4447745 call!684589)))

(declare-fun bm!684582 () Bool)

(declare-fun call!684587 () Bool)

(declare-fun c!1377845 () Bool)

(assert (=> bm!684582 (= call!684587 (validRegex!10002 (ite c!1377845 (regOne!39489 r1!5845) (regOne!39488 r1!5845))))))

(declare-fun bm!684583 () Bool)

(declare-fun call!684588 () Bool)

(declare-fun c!1377846 () Bool)

(assert (=> bm!684583 (= call!684588 (validRegex!10002 (ite c!1377846 (reg!19817 r1!5845) (ite c!1377845 (regTwo!39489 r1!5845) (regTwo!39488 r1!5845)))))))

(declare-fun b!7450929 () Bool)

(declare-fun res!2988637 () Bool)

(declare-fun e!4447750 () Bool)

(assert (=> b!7450929 (=> (not res!2988637) (not e!4447750))))

(assert (=> b!7450929 (= res!2988637 call!684587)))

(declare-fun e!4447747 () Bool)

(assert (=> b!7450929 (= e!4447747 e!4447750)))

(declare-fun b!7450930 () Bool)

(declare-fun e!4447746 () Bool)

(declare-fun e!4447748 () Bool)

(assert (=> b!7450930 (= e!4447746 e!4447748)))

(declare-fun res!2988638 () Bool)

(assert (=> b!7450930 (= res!2988638 (not (nullable!8492 (reg!19817 r1!5845))))))

(assert (=> b!7450930 (=> (not res!2988638) (not e!4447748))))

(declare-fun b!7450931 () Bool)

(declare-fun res!2988641 () Bool)

(declare-fun e!4447751 () Bool)

(assert (=> b!7450931 (=> res!2988641 e!4447751)))

(assert (=> b!7450931 (= res!2988641 (not (is-Concat!28333 r1!5845)))))

(assert (=> b!7450931 (= e!4447747 e!4447751)))

(declare-fun d!2296998 () Bool)

(declare-fun res!2988640 () Bool)

(declare-fun e!4447749 () Bool)

(assert (=> d!2296998 (=> res!2988640 e!4447749)))

(assert (=> d!2296998 (= res!2988640 (is-ElementMatch!19488 r1!5845))))

(assert (=> d!2296998 (= (validRegex!10002 r1!5845) e!4447749)))

(declare-fun b!7450932 () Bool)

(assert (=> b!7450932 (= e!4447749 e!4447746)))

(assert (=> b!7450932 (= c!1377846 (is-Star!19488 r1!5845))))

(declare-fun b!7450933 () Bool)

(assert (=> b!7450933 (= e!4447750 call!684589)))

(declare-fun bm!684584 () Bool)

(assert (=> bm!684584 (= call!684589 call!684588)))

(declare-fun b!7450934 () Bool)

(assert (=> b!7450934 (= e!4447746 e!4447747)))

(assert (=> b!7450934 (= c!1377845 (is-Union!19488 r1!5845))))

(declare-fun b!7450935 () Bool)

(assert (=> b!7450935 (= e!4447748 call!684588)))

(declare-fun b!7450936 () Bool)

(assert (=> b!7450936 (= e!4447751 e!4447745)))

(declare-fun res!2988639 () Bool)

(assert (=> b!7450936 (=> (not res!2988639) (not e!4447745))))

(assert (=> b!7450936 (= res!2988639 call!684587)))

(assert (= (and d!2296998 (not res!2988640)) b!7450932))

(assert (= (and b!7450932 c!1377846) b!7450930))

(assert (= (and b!7450932 (not c!1377846)) b!7450934))

(assert (= (and b!7450930 res!2988638) b!7450935))

(assert (= (and b!7450934 c!1377845) b!7450929))

(assert (= (and b!7450934 (not c!1377845)) b!7450931))

(assert (= (and b!7450929 res!2988637) b!7450933))

(assert (= (and b!7450931 (not res!2988641)) b!7450936))

(assert (= (and b!7450936 res!2988639) b!7450928))

(assert (= (or b!7450933 b!7450928) bm!684584))

(assert (= (or b!7450929 b!7450936) bm!684582))

(assert (= (or b!7450935 bm!684584) bm!684583))

(declare-fun m!8056964 () Bool)

(assert (=> bm!684582 m!8056964))

(declare-fun m!8056966 () Bool)

(assert (=> bm!684583 m!8056966))

(declare-fun m!8056968 () Bool)

(assert (=> b!7450930 m!8056968))

(assert (=> start!723392 d!2296998))

(declare-fun bs!1926984 () Bool)

(declare-fun b!7450995 () Bool)

(assert (= bs!1926984 (and b!7450995 b!7450819)))

(declare-fun lambda!460860 () Int)

(assert (=> bs!1926984 (not (= lambda!460860 lambda!460846))))

(assert (=> bs!1926984 (not (= lambda!460860 lambda!460847))))

(assert (=> b!7450995 true))

(assert (=> b!7450995 true))

(declare-fun bs!1926985 () Bool)

(declare-fun b!7450996 () Bool)

(assert (= bs!1926985 (and b!7450996 b!7450819)))

(declare-fun lambda!460861 () Int)

(assert (=> bs!1926985 (not (= lambda!460861 lambda!460846))))

(assert (=> bs!1926985 (= (and (= (regOne!39488 lt!2620087) lt!2620092) (= (regTwo!39488 lt!2620087) rTail!78)) (= lambda!460861 lambda!460847))))

(declare-fun bs!1926986 () Bool)

(assert (= bs!1926986 (and b!7450996 b!7450995)))

(assert (=> bs!1926986 (not (= lambda!460861 lambda!460860))))

(assert (=> b!7450996 true))

(assert (=> b!7450996 true))

(declare-fun b!7450987 () Bool)

(declare-fun e!4447785 () Bool)

(declare-fun e!4447790 () Bool)

(assert (=> b!7450987 (= e!4447785 e!4447790)))

(declare-fun res!2988670 () Bool)

(assert (=> b!7450987 (= res!2988670 (not (is-EmptyLang!19488 lt!2620087)))))

(assert (=> b!7450987 (=> (not res!2988670) (not e!4447790))))

(declare-fun b!7450988 () Bool)

(declare-fun e!4447788 () Bool)

(declare-fun e!4447789 () Bool)

(assert (=> b!7450988 (= e!4447788 e!4447789)))

(declare-fun c!1377862 () Bool)

(assert (=> b!7450988 (= c!1377862 (is-Star!19488 lt!2620087))))

(declare-fun bm!684593 () Bool)

(declare-fun call!684599 () Bool)

(assert (=> bm!684593 (= call!684599 (Exists!4109 (ite c!1377862 lambda!460860 lambda!460861)))))

(declare-fun b!7450989 () Bool)

(declare-fun call!684598 () Bool)

(assert (=> b!7450989 (= e!4447785 call!684598)))

(declare-fun bm!684594 () Bool)

(declare-fun isEmpty!41099 (List!72204) Bool)

(assert (=> bm!684594 (= call!684598 (isEmpty!41099 s!13591))))

(declare-fun b!7450990 () Bool)

(declare-fun res!2988669 () Bool)

(declare-fun e!4447787 () Bool)

(assert (=> b!7450990 (=> res!2988669 e!4447787)))

(assert (=> b!7450990 (= res!2988669 call!684598)))

(assert (=> b!7450990 (= e!4447789 e!4447787)))

(declare-fun b!7450991 () Bool)

(declare-fun c!1377861 () Bool)

(assert (=> b!7450991 (= c!1377861 (is-ElementMatch!19488 lt!2620087))))

(declare-fun e!4447786 () Bool)

(assert (=> b!7450991 (= e!4447790 e!4447786)))

(declare-fun b!7450992 () Bool)

(declare-fun c!1377860 () Bool)

(assert (=> b!7450992 (= c!1377860 (is-Union!19488 lt!2620087))))

(assert (=> b!7450992 (= e!4447786 e!4447788)))

(declare-fun b!7450994 () Bool)

(assert (=> b!7450994 (= e!4447786 (= s!13591 (Cons!72080 (c!1377835 lt!2620087) Nil!72080)))))

(assert (=> b!7450995 (= e!4447787 call!684599)))

(assert (=> b!7450996 (= e!4447789 call!684599)))

(declare-fun b!7450997 () Bool)

(declare-fun e!4447784 () Bool)

(assert (=> b!7450997 (= e!4447784 (matchRSpec!4167 (regTwo!39489 lt!2620087) s!13591))))

(declare-fun b!7450993 () Bool)

(assert (=> b!7450993 (= e!4447788 e!4447784)))

(declare-fun res!2988668 () Bool)

(assert (=> b!7450993 (= res!2988668 (matchRSpec!4167 (regOne!39489 lt!2620087) s!13591))))

(assert (=> b!7450993 (=> res!2988668 e!4447784)))

(declare-fun d!2297000 () Bool)

(declare-fun c!1377859 () Bool)

(assert (=> d!2297000 (= c!1377859 (is-EmptyExpr!19488 lt!2620087))))

(assert (=> d!2297000 (= (matchRSpec!4167 lt!2620087 s!13591) e!4447785)))

(assert (= (and d!2297000 c!1377859) b!7450989))

(assert (= (and d!2297000 (not c!1377859)) b!7450987))

(assert (= (and b!7450987 res!2988670) b!7450991))

(assert (= (and b!7450991 c!1377861) b!7450994))

(assert (= (and b!7450991 (not c!1377861)) b!7450992))

(assert (= (and b!7450992 c!1377860) b!7450993))

(assert (= (and b!7450992 (not c!1377860)) b!7450988))

(assert (= (and b!7450993 (not res!2988668)) b!7450997))

(assert (= (and b!7450988 c!1377862) b!7450990))

(assert (= (and b!7450988 (not c!1377862)) b!7450996))

(assert (= (and b!7450990 (not res!2988669)) b!7450995))

(assert (= (or b!7450995 b!7450996) bm!684593))

(assert (= (or b!7450989 b!7450990) bm!684594))

(declare-fun m!8056970 () Bool)

(assert (=> bm!684593 m!8056970))

(declare-fun m!8056972 () Bool)

(assert (=> bm!684594 m!8056972))

(declare-fun m!8056974 () Bool)

(assert (=> b!7450997 m!8056974))

(declare-fun m!8056976 () Bool)

(assert (=> b!7450993 m!8056976))

(assert (=> b!7450810 d!2297000))

(declare-fun d!2297004 () Bool)

(assert (=> d!2297004 (= (matchR!9252 lt!2620087 s!13591) (matchRSpec!4167 lt!2620087 s!13591))))

(declare-fun lt!2620124 () Unit!165811)

(declare-fun choose!57596 (Regex!19488 List!72204) Unit!165811)

(assert (=> d!2297004 (= lt!2620124 (choose!57596 lt!2620087 s!13591))))

(assert (=> d!2297004 (validRegex!10002 lt!2620087)))

(assert (=> d!2297004 (= (mainMatchTheorem!4161 lt!2620087 s!13591) lt!2620124)))

(declare-fun bs!1926987 () Bool)

(assert (= bs!1926987 d!2297004))

(assert (=> bs!1926987 m!8056916))

(assert (=> bs!1926987 m!8056914))

(declare-fun m!8056978 () Bool)

(assert (=> bs!1926987 m!8056978))

(declare-fun m!8056980 () Bool)

(assert (=> bs!1926987 m!8056980))

(assert (=> b!7450810 d!2297004))

(declare-fun b!7451044 () Bool)

(declare-fun e!4447821 () Bool)

(declare-fun lt!2620127 () Bool)

(declare-fun call!684610 () Bool)

(assert (=> b!7451044 (= e!4447821 (= lt!2620127 call!684610))))

(declare-fun b!7451045 () Bool)

(declare-fun e!4447822 () Bool)

(declare-fun head!15291 (List!72204) C!39250)

(assert (=> b!7451045 (= e!4447822 (not (= (head!15291 s!13591) (c!1377835 lt!2620087))))))

(declare-fun b!7451046 () Bool)

(declare-fun e!4447820 () Bool)

(assert (=> b!7451046 (= e!4447821 e!4447820)))

(declare-fun c!1377874 () Bool)

(assert (=> b!7451046 (= c!1377874 (is-EmptyLang!19488 lt!2620087))))

(declare-fun b!7451047 () Bool)

(declare-fun e!4447819 () Bool)

(declare-fun derivativeStep!5551 (Regex!19488 C!39250) Regex!19488)

(declare-fun tail!14860 (List!72204) List!72204)

(assert (=> b!7451047 (= e!4447819 (matchR!9252 (derivativeStep!5551 lt!2620087 (head!15291 s!13591)) (tail!14860 s!13591)))))

(declare-fun b!7451048 () Bool)

(declare-fun res!2988701 () Bool)

(declare-fun e!4447823 () Bool)

(assert (=> b!7451048 (=> res!2988701 e!4447823)))

(assert (=> b!7451048 (= res!2988701 (not (is-ElementMatch!19488 lt!2620087)))))

(assert (=> b!7451048 (= e!4447820 e!4447823)))

(declare-fun b!7451049 () Bool)

(declare-fun res!2988703 () Bool)

(declare-fun e!4447824 () Bool)

(assert (=> b!7451049 (=> (not res!2988703) (not e!4447824))))

(assert (=> b!7451049 (= res!2988703 (not call!684610))))

(declare-fun b!7451050 () Bool)

(declare-fun e!4447825 () Bool)

(assert (=> b!7451050 (= e!4447823 e!4447825)))

(declare-fun res!2988700 () Bool)

(assert (=> b!7451050 (=> (not res!2988700) (not e!4447825))))

(assert (=> b!7451050 (= res!2988700 (not lt!2620127))))

(declare-fun b!7451051 () Bool)

(declare-fun res!2988697 () Bool)

(assert (=> b!7451051 (=> res!2988697 e!4447823)))

(assert (=> b!7451051 (= res!2988697 e!4447824)))

(declare-fun res!2988698 () Bool)

(assert (=> b!7451051 (=> (not res!2988698) (not e!4447824))))

(assert (=> b!7451051 (= res!2988698 lt!2620127)))

(declare-fun b!7451052 () Bool)

(declare-fun res!2988704 () Bool)

(assert (=> b!7451052 (=> (not res!2988704) (not e!4447824))))

(assert (=> b!7451052 (= res!2988704 (isEmpty!41099 (tail!14860 s!13591)))))

(declare-fun d!2297006 () Bool)

(assert (=> d!2297006 e!4447821))

(declare-fun c!1377873 () Bool)

(assert (=> d!2297006 (= c!1377873 (is-EmptyExpr!19488 lt!2620087))))

(assert (=> d!2297006 (= lt!2620127 e!4447819)))

(declare-fun c!1377875 () Bool)

(assert (=> d!2297006 (= c!1377875 (isEmpty!41099 s!13591))))

(assert (=> d!2297006 (validRegex!10002 lt!2620087)))

(assert (=> d!2297006 (= (matchR!9252 lt!2620087 s!13591) lt!2620127)))

(declare-fun b!7451053 () Bool)

(assert (=> b!7451053 (= e!4447820 (not lt!2620127))))

(declare-fun b!7451054 () Bool)

(assert (=> b!7451054 (= e!4447824 (= (head!15291 s!13591) (c!1377835 lt!2620087)))))

(declare-fun b!7451055 () Bool)

(declare-fun res!2988702 () Bool)

(assert (=> b!7451055 (=> res!2988702 e!4447822)))

(assert (=> b!7451055 (= res!2988702 (not (isEmpty!41099 (tail!14860 s!13591))))))

(declare-fun b!7451056 () Bool)

(assert (=> b!7451056 (= e!4447819 (nullable!8492 lt!2620087))))

(declare-fun b!7451057 () Bool)

(assert (=> b!7451057 (= e!4447825 e!4447822)))

(declare-fun res!2988699 () Bool)

(assert (=> b!7451057 (=> res!2988699 e!4447822)))

(assert (=> b!7451057 (= res!2988699 call!684610)))

(declare-fun bm!684605 () Bool)

(assert (=> bm!684605 (= call!684610 (isEmpty!41099 s!13591))))

(assert (= (and d!2297006 c!1377875) b!7451056))

(assert (= (and d!2297006 (not c!1377875)) b!7451047))

(assert (= (and d!2297006 c!1377873) b!7451044))

(assert (= (and d!2297006 (not c!1377873)) b!7451046))

(assert (= (and b!7451046 c!1377874) b!7451053))

(assert (= (and b!7451046 (not c!1377874)) b!7451048))

(assert (= (and b!7451048 (not res!2988701)) b!7451051))

(assert (= (and b!7451051 res!2988698) b!7451049))

(assert (= (and b!7451049 res!2988703) b!7451052))

(assert (= (and b!7451052 res!2988704) b!7451054))

(assert (= (and b!7451051 (not res!2988697)) b!7451050))

(assert (= (and b!7451050 res!2988700) b!7451057))

(assert (= (and b!7451057 (not res!2988699)) b!7451055))

(assert (= (and b!7451055 (not res!2988702)) b!7451045))

(assert (= (or b!7451044 b!7451049 b!7451057) bm!684605))

(declare-fun m!8056994 () Bool)

(assert (=> b!7451047 m!8056994))

(assert (=> b!7451047 m!8056994))

(declare-fun m!8056996 () Bool)

(assert (=> b!7451047 m!8056996))

(declare-fun m!8056998 () Bool)

(assert (=> b!7451047 m!8056998))

(assert (=> b!7451047 m!8056996))

(assert (=> b!7451047 m!8056998))

(declare-fun m!8057000 () Bool)

(assert (=> b!7451047 m!8057000))

(assert (=> b!7451052 m!8056998))

(assert (=> b!7451052 m!8056998))

(declare-fun m!8057002 () Bool)

(assert (=> b!7451052 m!8057002))

(assert (=> bm!684605 m!8056972))

(assert (=> b!7451045 m!8056994))

(assert (=> b!7451055 m!8056998))

(assert (=> b!7451055 m!8056998))

(assert (=> b!7451055 m!8057002))

(assert (=> b!7451054 m!8056994))

(assert (=> d!2297006 m!8056972))

(assert (=> d!2297006 m!8056980))

(declare-fun m!8057004 () Bool)

(assert (=> b!7451056 m!8057004))

(assert (=> b!7450810 d!2297006))

(declare-fun bs!1926988 () Bool)

(declare-fun b!7451066 () Bool)

(assert (= bs!1926988 (and b!7451066 b!7450819)))

(declare-fun lambda!460862 () Int)

(assert (=> bs!1926988 (not (= lambda!460862 lambda!460846))))

(assert (=> bs!1926988 (not (= lambda!460862 lambda!460847))))

(declare-fun bs!1926989 () Bool)

(assert (= bs!1926989 (and b!7451066 b!7450995)))

(assert (=> bs!1926989 (= (and (= (reg!19817 lt!2620088) (reg!19817 lt!2620087)) (= lt!2620088 lt!2620087)) (= lambda!460862 lambda!460860))))

(declare-fun bs!1926990 () Bool)

(assert (= bs!1926990 (and b!7451066 b!7450996)))

(assert (=> bs!1926990 (not (= lambda!460862 lambda!460861))))

(assert (=> b!7451066 true))

(assert (=> b!7451066 true))

(declare-fun bs!1926991 () Bool)

(declare-fun b!7451067 () Bool)

(assert (= bs!1926991 (and b!7451067 b!7450995)))

(declare-fun lambda!460863 () Int)

(assert (=> bs!1926991 (not (= lambda!460863 lambda!460860))))

(declare-fun bs!1926992 () Bool)

(assert (= bs!1926992 (and b!7451067 b!7450996)))

(assert (=> bs!1926992 (= (and (= (regOne!39488 lt!2620088) (regOne!39488 lt!2620087)) (= (regTwo!39488 lt!2620088) (regTwo!39488 lt!2620087))) (= lambda!460863 lambda!460861))))

(declare-fun bs!1926993 () Bool)

(assert (= bs!1926993 (and b!7451067 b!7450819)))

(assert (=> bs!1926993 (not (= lambda!460863 lambda!460846))))

(assert (=> bs!1926993 (= (and (= (regOne!39488 lt!2620088) lt!2620092) (= (regTwo!39488 lt!2620088) rTail!78)) (= lambda!460863 lambda!460847))))

(declare-fun bs!1926994 () Bool)

(assert (= bs!1926994 (and b!7451067 b!7451066)))

(assert (=> bs!1926994 (not (= lambda!460863 lambda!460862))))

(assert (=> b!7451067 true))

(assert (=> b!7451067 true))

(declare-fun b!7451058 () Bool)

(declare-fun e!4447827 () Bool)

(declare-fun e!4447832 () Bool)

(assert (=> b!7451058 (= e!4447827 e!4447832)))

(declare-fun res!2988707 () Bool)

(assert (=> b!7451058 (= res!2988707 (not (is-EmptyLang!19488 lt!2620088)))))

(assert (=> b!7451058 (=> (not res!2988707) (not e!4447832))))

(declare-fun b!7451059 () Bool)

(declare-fun e!4447830 () Bool)

(declare-fun e!4447831 () Bool)

(assert (=> b!7451059 (= e!4447830 e!4447831)))

(declare-fun c!1377879 () Bool)

(assert (=> b!7451059 (= c!1377879 (is-Star!19488 lt!2620088))))

(declare-fun call!684612 () Bool)

(declare-fun bm!684606 () Bool)

(assert (=> bm!684606 (= call!684612 (Exists!4109 (ite c!1377879 lambda!460862 lambda!460863)))))

(declare-fun b!7451060 () Bool)

(declare-fun call!684611 () Bool)

(assert (=> b!7451060 (= e!4447827 call!684611)))

(declare-fun bm!684607 () Bool)

(assert (=> bm!684607 (= call!684611 (isEmpty!41099 s!13591))))

(declare-fun b!7451061 () Bool)

(declare-fun res!2988706 () Bool)

(declare-fun e!4447829 () Bool)

(assert (=> b!7451061 (=> res!2988706 e!4447829)))

(assert (=> b!7451061 (= res!2988706 call!684611)))

(assert (=> b!7451061 (= e!4447831 e!4447829)))

(declare-fun b!7451062 () Bool)

(declare-fun c!1377878 () Bool)

(assert (=> b!7451062 (= c!1377878 (is-ElementMatch!19488 lt!2620088))))

(declare-fun e!4447828 () Bool)

(assert (=> b!7451062 (= e!4447832 e!4447828)))

(declare-fun b!7451063 () Bool)

(declare-fun c!1377877 () Bool)

(assert (=> b!7451063 (= c!1377877 (is-Union!19488 lt!2620088))))

(assert (=> b!7451063 (= e!4447828 e!4447830)))

(declare-fun b!7451065 () Bool)

(assert (=> b!7451065 (= e!4447828 (= s!13591 (Cons!72080 (c!1377835 lt!2620088) Nil!72080)))))

(assert (=> b!7451066 (= e!4447829 call!684612)))

(assert (=> b!7451067 (= e!4447831 call!684612)))

(declare-fun b!7451068 () Bool)

(declare-fun e!4447826 () Bool)

(assert (=> b!7451068 (= e!4447826 (matchRSpec!4167 (regTwo!39489 lt!2620088) s!13591))))

(declare-fun b!7451064 () Bool)

(assert (=> b!7451064 (= e!4447830 e!4447826)))

(declare-fun res!2988705 () Bool)

(assert (=> b!7451064 (= res!2988705 (matchRSpec!4167 (regOne!39489 lt!2620088) s!13591))))

(assert (=> b!7451064 (=> res!2988705 e!4447826)))

(declare-fun d!2297012 () Bool)

(declare-fun c!1377876 () Bool)

(assert (=> d!2297012 (= c!1377876 (is-EmptyExpr!19488 lt!2620088))))

(assert (=> d!2297012 (= (matchRSpec!4167 lt!2620088 s!13591) e!4447827)))

(assert (= (and d!2297012 c!1377876) b!7451060))

(assert (= (and d!2297012 (not c!1377876)) b!7451058))

(assert (= (and b!7451058 res!2988707) b!7451062))

(assert (= (and b!7451062 c!1377878) b!7451065))

(assert (= (and b!7451062 (not c!1377878)) b!7451063))

(assert (= (and b!7451063 c!1377877) b!7451064))

(assert (= (and b!7451063 (not c!1377877)) b!7451059))

(assert (= (and b!7451064 (not res!2988705)) b!7451068))

(assert (= (and b!7451059 c!1377879) b!7451061))

(assert (= (and b!7451059 (not c!1377879)) b!7451067))

(assert (= (and b!7451061 (not res!2988706)) b!7451066))

(assert (= (or b!7451066 b!7451067) bm!684606))

(assert (= (or b!7451060 b!7451061) bm!684607))

(declare-fun m!8057006 () Bool)

(assert (=> bm!684606 m!8057006))

(assert (=> bm!684607 m!8056972))

(declare-fun m!8057008 () Bool)

(assert (=> b!7451068 m!8057008))

(declare-fun m!8057010 () Bool)

(assert (=> b!7451064 m!8057010))

(assert (=> b!7450810 d!2297012))

(declare-fun b!7451085 () Bool)

(declare-fun e!4447845 () Bool)

(declare-fun lt!2620128 () Bool)

(declare-fun call!684613 () Bool)

(assert (=> b!7451085 (= e!4447845 (= lt!2620128 call!684613))))

(declare-fun b!7451086 () Bool)

(declare-fun e!4447846 () Bool)

(assert (=> b!7451086 (= e!4447846 (not (= (head!15291 s!13591) (c!1377835 lt!2620088))))))

(declare-fun b!7451087 () Bool)

(declare-fun e!4447844 () Bool)

(assert (=> b!7451087 (= e!4447845 e!4447844)))

(declare-fun c!1377887 () Bool)

(assert (=> b!7451087 (= c!1377887 (is-EmptyLang!19488 lt!2620088))))

(declare-fun b!7451088 () Bool)

(declare-fun e!4447843 () Bool)

(assert (=> b!7451088 (= e!4447843 (matchR!9252 (derivativeStep!5551 lt!2620088 (head!15291 s!13591)) (tail!14860 s!13591)))))

(declare-fun b!7451089 () Bool)

(declare-fun res!2988716 () Bool)

(declare-fun e!4447847 () Bool)

(assert (=> b!7451089 (=> res!2988716 e!4447847)))

(assert (=> b!7451089 (= res!2988716 (not (is-ElementMatch!19488 lt!2620088)))))

(assert (=> b!7451089 (= e!4447844 e!4447847)))

(declare-fun b!7451090 () Bool)

(declare-fun res!2988718 () Bool)

(declare-fun e!4447848 () Bool)

(assert (=> b!7451090 (=> (not res!2988718) (not e!4447848))))

(assert (=> b!7451090 (= res!2988718 (not call!684613))))

(declare-fun b!7451091 () Bool)

(declare-fun e!4447849 () Bool)

(assert (=> b!7451091 (= e!4447847 e!4447849)))

(declare-fun res!2988715 () Bool)

(assert (=> b!7451091 (=> (not res!2988715) (not e!4447849))))

(assert (=> b!7451091 (= res!2988715 (not lt!2620128))))

(declare-fun b!7451092 () Bool)

(declare-fun res!2988712 () Bool)

(assert (=> b!7451092 (=> res!2988712 e!4447847)))

(assert (=> b!7451092 (= res!2988712 e!4447848)))

(declare-fun res!2988713 () Bool)

(assert (=> b!7451092 (=> (not res!2988713) (not e!4447848))))

(assert (=> b!7451092 (= res!2988713 lt!2620128)))

(declare-fun b!7451093 () Bool)

(declare-fun res!2988719 () Bool)

(assert (=> b!7451093 (=> (not res!2988719) (not e!4447848))))

(assert (=> b!7451093 (= res!2988719 (isEmpty!41099 (tail!14860 s!13591)))))

(declare-fun d!2297014 () Bool)

(assert (=> d!2297014 e!4447845))

(declare-fun c!1377886 () Bool)

(assert (=> d!2297014 (= c!1377886 (is-EmptyExpr!19488 lt!2620088))))

(assert (=> d!2297014 (= lt!2620128 e!4447843)))

(declare-fun c!1377888 () Bool)

(assert (=> d!2297014 (= c!1377888 (isEmpty!41099 s!13591))))

(assert (=> d!2297014 (validRegex!10002 lt!2620088)))

(assert (=> d!2297014 (= (matchR!9252 lt!2620088 s!13591) lt!2620128)))

(declare-fun b!7451094 () Bool)

(assert (=> b!7451094 (= e!4447844 (not lt!2620128))))

(declare-fun b!7451095 () Bool)

(assert (=> b!7451095 (= e!4447848 (= (head!15291 s!13591) (c!1377835 lt!2620088)))))

(declare-fun b!7451096 () Bool)

(declare-fun res!2988717 () Bool)

(assert (=> b!7451096 (=> res!2988717 e!4447846)))

(assert (=> b!7451096 (= res!2988717 (not (isEmpty!41099 (tail!14860 s!13591))))))

(declare-fun b!7451097 () Bool)

(assert (=> b!7451097 (= e!4447843 (nullable!8492 lt!2620088))))

(declare-fun b!7451098 () Bool)

(assert (=> b!7451098 (= e!4447849 e!4447846)))

(declare-fun res!2988714 () Bool)

(assert (=> b!7451098 (=> res!2988714 e!4447846)))

(assert (=> b!7451098 (= res!2988714 call!684613)))

(declare-fun bm!684608 () Bool)

(assert (=> bm!684608 (= call!684613 (isEmpty!41099 s!13591))))

(assert (= (and d!2297014 c!1377888) b!7451097))

(assert (= (and d!2297014 (not c!1377888)) b!7451088))

(assert (= (and d!2297014 c!1377886) b!7451085))

(assert (= (and d!2297014 (not c!1377886)) b!7451087))

(assert (= (and b!7451087 c!1377887) b!7451094))

(assert (= (and b!7451087 (not c!1377887)) b!7451089))

(assert (= (and b!7451089 (not res!2988716)) b!7451092))

(assert (= (and b!7451092 res!2988713) b!7451090))

(assert (= (and b!7451090 res!2988718) b!7451093))

(assert (= (and b!7451093 res!2988719) b!7451095))

(assert (= (and b!7451092 (not res!2988712)) b!7451091))

(assert (= (and b!7451091 res!2988715) b!7451098))

(assert (= (and b!7451098 (not res!2988714)) b!7451096))

(assert (= (and b!7451096 (not res!2988717)) b!7451086))

(assert (= (or b!7451085 b!7451090 b!7451098) bm!684608))

(assert (=> b!7451088 m!8056994))

(assert (=> b!7451088 m!8056994))

(declare-fun m!8057012 () Bool)

(assert (=> b!7451088 m!8057012))

(assert (=> b!7451088 m!8056998))

(assert (=> b!7451088 m!8057012))

(assert (=> b!7451088 m!8056998))

(declare-fun m!8057014 () Bool)

(assert (=> b!7451088 m!8057014))

(assert (=> b!7451093 m!8056998))

(assert (=> b!7451093 m!8056998))

(assert (=> b!7451093 m!8057002))

(assert (=> bm!684608 m!8056972))

(assert (=> b!7451086 m!8056994))

(assert (=> b!7451096 m!8056998))

(assert (=> b!7451096 m!8056998))

(assert (=> b!7451096 m!8057002))

(assert (=> b!7451095 m!8056994))

(assert (=> d!2297014 m!8056972))

(declare-fun m!8057016 () Bool)

(assert (=> d!2297014 m!8057016))

(declare-fun m!8057018 () Bool)

(assert (=> b!7451097 m!8057018))

(assert (=> b!7450810 d!2297014))

(declare-fun d!2297016 () Bool)

(assert (=> d!2297016 (= (matchR!9252 lt!2620088 s!13591) (matchRSpec!4167 lt!2620088 s!13591))))

(declare-fun lt!2620129 () Unit!165811)

(assert (=> d!2297016 (= lt!2620129 (choose!57596 lt!2620088 s!13591))))

(assert (=> d!2297016 (validRegex!10002 lt!2620088)))

(assert (=> d!2297016 (= (mainMatchTheorem!4161 lt!2620088 s!13591) lt!2620129)))

(declare-fun bs!1926995 () Bool)

(assert (= bs!1926995 d!2297016))

(assert (=> bs!1926995 m!8056906))

(assert (=> bs!1926995 m!8056912))

(declare-fun m!8057020 () Bool)

(assert (=> bs!1926995 m!8057020))

(assert (=> bs!1926995 m!8057016))

(assert (=> b!7450810 d!2297016))

(declare-fun bs!1926996 () Bool)

(declare-fun d!2297018 () Bool)

(assert (= bs!1926996 (and d!2297018 b!7450995)))

(declare-fun lambda!460870 () Int)

(assert (=> bs!1926996 (not (= lambda!460870 lambda!460860))))

(declare-fun bs!1926997 () Bool)

(assert (= bs!1926997 (and d!2297018 b!7450996)))

(assert (=> bs!1926997 (not (= lambda!460870 lambda!460861))))

(declare-fun bs!1926998 () Bool)

(assert (= bs!1926998 (and d!2297018 b!7451067)))

(assert (=> bs!1926998 (not (= lambda!460870 lambda!460863))))

(declare-fun bs!1926999 () Bool)

(assert (= bs!1926999 (and d!2297018 b!7450819)))

(assert (=> bs!1926999 (= lambda!460870 lambda!460846)))

(assert (=> bs!1926999 (not (= lambda!460870 lambda!460847))))

(declare-fun bs!1927000 () Bool)

(assert (= bs!1927000 (and d!2297018 b!7451066)))

(assert (=> bs!1927000 (not (= lambda!460870 lambda!460862))))

(assert (=> d!2297018 true))

(assert (=> d!2297018 true))

(assert (=> d!2297018 true))

(assert (=> d!2297018 (= (isDefined!13736 (findConcatSeparation!3169 lt!2620092 rTail!78 Nil!72080 s!13591 s!13591)) (Exists!4109 lambda!460870))))

(declare-fun lt!2620132 () Unit!165811)

(declare-fun choose!57597 (Regex!19488 Regex!19488 List!72204) Unit!165811)

(assert (=> d!2297018 (= lt!2620132 (choose!57597 lt!2620092 rTail!78 s!13591))))

(assert (=> d!2297018 (validRegex!10002 lt!2620092)))

(assert (=> d!2297018 (= (lemmaFindConcatSeparationEquivalentToExists!2927 lt!2620092 rTail!78 s!13591) lt!2620132)))

(declare-fun bs!1927001 () Bool)

(assert (= bs!1927001 d!2297018))

(declare-fun m!8057022 () Bool)

(assert (=> bs!1927001 m!8057022))

(assert (=> bs!1927001 m!8056900))

(declare-fun m!8057024 () Bool)

(assert (=> bs!1927001 m!8057024))

(declare-fun m!8057026 () Bool)

(assert (=> bs!1927001 m!8057026))

(assert (=> bs!1927001 m!8056900))

(assert (=> bs!1927001 m!8056904))

(assert (=> b!7450819 d!2297018))

(declare-fun bs!1927003 () Bool)

(declare-fun d!2297020 () Bool)

(assert (= bs!1927003 (and d!2297020 b!7450995)))

(declare-fun lambda!460876 () Int)

(assert (=> bs!1927003 (not (= lambda!460876 lambda!460860))))

(declare-fun bs!1927004 () Bool)

(assert (= bs!1927004 (and d!2297020 b!7450996)))

(assert (=> bs!1927004 (not (= lambda!460876 lambda!460861))))

(declare-fun bs!1927005 () Bool)

(assert (= bs!1927005 (and d!2297020 d!2297018)))

(assert (=> bs!1927005 (= lambda!460876 lambda!460870)))

(declare-fun bs!1927006 () Bool)

(assert (= bs!1927006 (and d!2297020 b!7451067)))

(assert (=> bs!1927006 (not (= lambda!460876 lambda!460863))))

(declare-fun bs!1927007 () Bool)

(assert (= bs!1927007 (and d!2297020 b!7450819)))

(assert (=> bs!1927007 (= lambda!460876 lambda!460846)))

(assert (=> bs!1927007 (not (= lambda!460876 lambda!460847))))

(declare-fun bs!1927008 () Bool)

(assert (= bs!1927008 (and d!2297020 b!7451066)))

(assert (=> bs!1927008 (not (= lambda!460876 lambda!460862))))

(assert (=> d!2297020 true))

(assert (=> d!2297020 true))

(assert (=> d!2297020 true))

(declare-fun lambda!460877 () Int)

(assert (=> bs!1927003 (not (= lambda!460877 lambda!460860))))

(declare-fun bs!1927009 () Bool)

(assert (= bs!1927009 d!2297020))

(assert (=> bs!1927009 (not (= lambda!460877 lambda!460876))))

(assert (=> bs!1927004 (= (and (= lt!2620092 (regOne!39488 lt!2620087)) (= rTail!78 (regTwo!39488 lt!2620087))) (= lambda!460877 lambda!460861))))

(assert (=> bs!1927005 (not (= lambda!460877 lambda!460870))))

(assert (=> bs!1927006 (= (and (= lt!2620092 (regOne!39488 lt!2620088)) (= rTail!78 (regTwo!39488 lt!2620088))) (= lambda!460877 lambda!460863))))

(assert (=> bs!1927007 (not (= lambda!460877 lambda!460846))))

(assert (=> bs!1927007 (= lambda!460877 lambda!460847)))

(assert (=> bs!1927008 (not (= lambda!460877 lambda!460862))))

(assert (=> d!2297020 true))

(assert (=> d!2297020 true))

(assert (=> d!2297020 true))

(assert (=> d!2297020 (= (Exists!4109 lambda!460876) (Exists!4109 lambda!460877))))

(declare-fun lt!2620135 () Unit!165811)

(declare-fun choose!57598 (Regex!19488 Regex!19488 List!72204) Unit!165811)

(assert (=> d!2297020 (= lt!2620135 (choose!57598 lt!2620092 rTail!78 s!13591))))

(assert (=> d!2297020 (validRegex!10002 lt!2620092)))

(assert (=> d!2297020 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2445 lt!2620092 rTail!78 s!13591) lt!2620135)))

(declare-fun m!8057028 () Bool)

(assert (=> bs!1927009 m!8057028))

(declare-fun m!8057030 () Bool)

(assert (=> bs!1927009 m!8057030))

(declare-fun m!8057032 () Bool)

(assert (=> bs!1927009 m!8057032))

(assert (=> bs!1927009 m!8057024))

(assert (=> b!7450819 d!2297020))

(declare-fun d!2297022 () Bool)

(declare-fun choose!57599 (Int) Bool)

(assert (=> d!2297022 (= (Exists!4109 lambda!460846) (choose!57599 lambda!460846))))

(declare-fun bs!1927012 () Bool)

(assert (= bs!1927012 d!2297022))

(declare-fun m!8057034 () Bool)

(assert (=> bs!1927012 m!8057034))

(assert (=> b!7450819 d!2297022))

(declare-fun b!7451184 () Bool)

(declare-fun lt!2620145 () Unit!165811)

(declare-fun lt!2620144 () Unit!165811)

(assert (=> b!7451184 (= lt!2620145 lt!2620144)))

(declare-fun ++!17164 (List!72204 List!72204) List!72204)

(assert (=> b!7451184 (= (++!17164 (++!17164 Nil!72080 (Cons!72080 (h!78528 s!13591) Nil!72080)) (t!386773 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3044 (List!72204 C!39250 List!72204 List!72204) Unit!165811)

(assert (=> b!7451184 (= lt!2620144 (lemmaMoveElementToOtherListKeepsConcatEq!3044 Nil!72080 (h!78528 s!13591) (t!386773 s!13591) s!13591))))

(declare-fun e!4447895 () Option!17047)

(assert (=> b!7451184 (= e!4447895 (findConcatSeparation!3169 lt!2620092 rTail!78 (++!17164 Nil!72080 (Cons!72080 (h!78528 s!13591) Nil!72080)) (t!386773 s!13591) s!13591))))

(declare-fun b!7451185 () Bool)

(declare-fun e!4447899 () Bool)

(declare-fun lt!2620146 () Option!17047)

(declare-fun get!25116 (Option!17047) tuple2!68430)

(assert (=> b!7451185 (= e!4447899 (= (++!17164 (_1!37518 (get!25116 lt!2620146)) (_2!37518 (get!25116 lt!2620146))) s!13591))))

(declare-fun b!7451186 () Bool)

(assert (=> b!7451186 (= e!4447895 None!17046)))

(declare-fun d!2297024 () Bool)

(declare-fun e!4447896 () Bool)

(assert (=> d!2297024 e!4447896))

(declare-fun res!2988777 () Bool)

(assert (=> d!2297024 (=> res!2988777 e!4447896)))

(assert (=> d!2297024 (= res!2988777 e!4447899)))

(declare-fun res!2988776 () Bool)

(assert (=> d!2297024 (=> (not res!2988776) (not e!4447899))))

(assert (=> d!2297024 (= res!2988776 (isDefined!13736 lt!2620146))))

(declare-fun e!4447898 () Option!17047)

(assert (=> d!2297024 (= lt!2620146 e!4447898)))

(declare-fun c!1377905 () Bool)

(declare-fun e!4447897 () Bool)

(assert (=> d!2297024 (= c!1377905 e!4447897)))

(declare-fun res!2988773 () Bool)

(assert (=> d!2297024 (=> (not res!2988773) (not e!4447897))))

(assert (=> d!2297024 (= res!2988773 (matchR!9252 lt!2620092 Nil!72080))))

(assert (=> d!2297024 (validRegex!10002 lt!2620092)))

(assert (=> d!2297024 (= (findConcatSeparation!3169 lt!2620092 rTail!78 Nil!72080 s!13591 s!13591) lt!2620146)))

(declare-fun b!7451187 () Bool)

(assert (=> b!7451187 (= e!4447898 e!4447895)))

(declare-fun c!1377906 () Bool)

(assert (=> b!7451187 (= c!1377906 (is-Nil!72080 s!13591))))

(declare-fun b!7451188 () Bool)

(assert (=> b!7451188 (= e!4447898 (Some!17046 (tuple2!68431 Nil!72080 s!13591)))))

(declare-fun b!7451189 () Bool)

(assert (=> b!7451189 (= e!4447896 (not (isDefined!13736 lt!2620146)))))

(declare-fun b!7451190 () Bool)

(declare-fun res!2988775 () Bool)

(assert (=> b!7451190 (=> (not res!2988775) (not e!4447899))))

(assert (=> b!7451190 (= res!2988775 (matchR!9252 rTail!78 (_2!37518 (get!25116 lt!2620146))))))

(declare-fun b!7451191 () Bool)

(assert (=> b!7451191 (= e!4447897 (matchR!9252 rTail!78 s!13591))))

(declare-fun b!7451192 () Bool)

(declare-fun res!2988774 () Bool)

(assert (=> b!7451192 (=> (not res!2988774) (not e!4447899))))

(assert (=> b!7451192 (= res!2988774 (matchR!9252 lt!2620092 (_1!37518 (get!25116 lt!2620146))))))

(assert (= (and d!2297024 res!2988773) b!7451191))

(assert (= (and d!2297024 c!1377905) b!7451188))

(assert (= (and d!2297024 (not c!1377905)) b!7451187))

(assert (= (and b!7451187 c!1377906) b!7451186))

(assert (= (and b!7451187 (not c!1377906)) b!7451184))

(assert (= (and d!2297024 res!2988776) b!7451192))

(assert (= (and b!7451192 res!2988774) b!7451190))

(assert (= (and b!7451190 res!2988775) b!7451185))

(assert (= (and d!2297024 (not res!2988777)) b!7451189))

(declare-fun m!8057044 () Bool)

(assert (=> b!7451192 m!8057044))

(declare-fun m!8057046 () Bool)

(assert (=> b!7451192 m!8057046))

(declare-fun m!8057048 () Bool)

(assert (=> b!7451191 m!8057048))

(declare-fun m!8057050 () Bool)

(assert (=> d!2297024 m!8057050))

(declare-fun m!8057052 () Bool)

(assert (=> d!2297024 m!8057052))

(assert (=> d!2297024 m!8057024))

(assert (=> b!7451189 m!8057050))

(assert (=> b!7451190 m!8057044))

(declare-fun m!8057054 () Bool)

(assert (=> b!7451190 m!8057054))

(declare-fun m!8057056 () Bool)

(assert (=> b!7451184 m!8057056))

(assert (=> b!7451184 m!8057056))

(declare-fun m!8057058 () Bool)

(assert (=> b!7451184 m!8057058))

(declare-fun m!8057060 () Bool)

(assert (=> b!7451184 m!8057060))

(assert (=> b!7451184 m!8057056))

(declare-fun m!8057062 () Bool)

(assert (=> b!7451184 m!8057062))

(assert (=> b!7451185 m!8057044))

(declare-fun m!8057064 () Bool)

(assert (=> b!7451185 m!8057064))

(assert (=> b!7450819 d!2297024))

(declare-fun d!2297028 () Bool)

(declare-fun isEmpty!41100 (Option!17047) Bool)

(assert (=> d!2297028 (= (isDefined!13736 (findConcatSeparation!3169 lt!2620092 rTail!78 Nil!72080 s!13591 s!13591)) (not (isEmpty!41100 (findConcatSeparation!3169 lt!2620092 rTail!78 Nil!72080 s!13591 s!13591))))))

(declare-fun bs!1927013 () Bool)

(assert (= bs!1927013 d!2297028))

(assert (=> bs!1927013 m!8056900))

(declare-fun m!8057066 () Bool)

(assert (=> bs!1927013 m!8057066))

(assert (=> b!7450819 d!2297028))

(declare-fun d!2297030 () Bool)

(assert (=> d!2297030 (= (Exists!4109 lambda!460847) (choose!57599 lambda!460847))))

(declare-fun bs!1927014 () Bool)

(assert (= bs!1927014 d!2297030))

(declare-fun m!8057068 () Bool)

(assert (=> bs!1927014 m!8057068))

(assert (=> b!7450819 d!2297030))

(declare-fun e!4447902 () Bool)

(assert (=> b!7450811 (= tp!2158734 e!4447902)))

(declare-fun b!7451206 () Bool)

(declare-fun tp!2158807 () Bool)

(declare-fun tp!2158806 () Bool)

(assert (=> b!7451206 (= e!4447902 (and tp!2158807 tp!2158806))))

(declare-fun b!7451203 () Bool)

(assert (=> b!7451203 (= e!4447902 tp_is_empty!49265)))

(declare-fun b!7451205 () Bool)

(declare-fun tp!2158809 () Bool)

(assert (=> b!7451205 (= e!4447902 tp!2158809)))

(declare-fun b!7451204 () Bool)

(declare-fun tp!2158810 () Bool)

(declare-fun tp!2158808 () Bool)

(assert (=> b!7451204 (= e!4447902 (and tp!2158810 tp!2158808))))

(assert (= (and b!7450811 (is-ElementMatch!19488 (reg!19817 r2!5783))) b!7451203))

(assert (= (and b!7450811 (is-Concat!28333 (reg!19817 r2!5783))) b!7451204))

(assert (= (and b!7450811 (is-Star!19488 (reg!19817 r2!5783))) b!7451205))

(assert (= (and b!7450811 (is-Union!19488 (reg!19817 r2!5783))) b!7451206))

(declare-fun e!4447903 () Bool)

(assert (=> b!7450809 (= tp!2158738 e!4447903)))

(declare-fun b!7451210 () Bool)

(declare-fun tp!2158812 () Bool)

(declare-fun tp!2158811 () Bool)

(assert (=> b!7451210 (= e!4447903 (and tp!2158812 tp!2158811))))

(declare-fun b!7451207 () Bool)

(assert (=> b!7451207 (= e!4447903 tp_is_empty!49265)))

(declare-fun b!7451209 () Bool)

(declare-fun tp!2158814 () Bool)

(assert (=> b!7451209 (= e!4447903 tp!2158814)))

(declare-fun b!7451208 () Bool)

(declare-fun tp!2158815 () Bool)

(declare-fun tp!2158813 () Bool)

(assert (=> b!7451208 (= e!4447903 (and tp!2158815 tp!2158813))))

(assert (= (and b!7450809 (is-ElementMatch!19488 (reg!19817 r1!5845))) b!7451207))

(assert (= (and b!7450809 (is-Concat!28333 (reg!19817 r1!5845))) b!7451208))

(assert (= (and b!7450809 (is-Star!19488 (reg!19817 r1!5845))) b!7451209))

(assert (= (and b!7450809 (is-Union!19488 (reg!19817 r1!5845))) b!7451210))

(declare-fun e!4447904 () Bool)

(assert (=> b!7450815 (= tp!2158739 e!4447904)))

(declare-fun b!7451214 () Bool)

(declare-fun tp!2158817 () Bool)

(declare-fun tp!2158816 () Bool)

(assert (=> b!7451214 (= e!4447904 (and tp!2158817 tp!2158816))))

(declare-fun b!7451211 () Bool)

(assert (=> b!7451211 (= e!4447904 tp_is_empty!49265)))

(declare-fun b!7451213 () Bool)

(declare-fun tp!2158819 () Bool)

(assert (=> b!7451213 (= e!4447904 tp!2158819)))

(declare-fun b!7451212 () Bool)

(declare-fun tp!2158820 () Bool)

(declare-fun tp!2158818 () Bool)

(assert (=> b!7451212 (= e!4447904 (and tp!2158820 tp!2158818))))

(assert (= (and b!7450815 (is-ElementMatch!19488 (reg!19817 rTail!78))) b!7451211))

(assert (= (and b!7450815 (is-Concat!28333 (reg!19817 rTail!78))) b!7451212))

(assert (= (and b!7450815 (is-Star!19488 (reg!19817 rTail!78))) b!7451213))

(assert (= (and b!7450815 (is-Union!19488 (reg!19817 rTail!78))) b!7451214))

(declare-fun b!7451219 () Bool)

(declare-fun e!4447907 () Bool)

(declare-fun tp!2158823 () Bool)

(assert (=> b!7451219 (= e!4447907 (and tp_is_empty!49265 tp!2158823))))

(assert (=> b!7450813 (= tp!2158745 e!4447907)))

(assert (= (and b!7450813 (is-Cons!72080 (t!386773 s!13591))) b!7451219))

(declare-fun e!4447908 () Bool)

(assert (=> b!7450808 (= tp!2158742 e!4447908)))

(declare-fun b!7451223 () Bool)

(declare-fun tp!2158825 () Bool)

(declare-fun tp!2158824 () Bool)

(assert (=> b!7451223 (= e!4447908 (and tp!2158825 tp!2158824))))

(declare-fun b!7451220 () Bool)

(assert (=> b!7451220 (= e!4447908 tp_is_empty!49265)))

(declare-fun b!7451222 () Bool)

(declare-fun tp!2158827 () Bool)

(assert (=> b!7451222 (= e!4447908 tp!2158827)))

(declare-fun b!7451221 () Bool)

(declare-fun tp!2158828 () Bool)

(declare-fun tp!2158826 () Bool)

(assert (=> b!7451221 (= e!4447908 (and tp!2158828 tp!2158826))))

(assert (= (and b!7450808 (is-ElementMatch!19488 (regOne!39488 r1!5845))) b!7451220))

(assert (= (and b!7450808 (is-Concat!28333 (regOne!39488 r1!5845))) b!7451221))

(assert (= (and b!7450808 (is-Star!19488 (regOne!39488 r1!5845))) b!7451222))

(assert (= (and b!7450808 (is-Union!19488 (regOne!39488 r1!5845))) b!7451223))

(declare-fun e!4447909 () Bool)

(assert (=> b!7450808 (= tp!2158732 e!4447909)))

(declare-fun b!7451227 () Bool)

(declare-fun tp!2158830 () Bool)

(declare-fun tp!2158829 () Bool)

(assert (=> b!7451227 (= e!4447909 (and tp!2158830 tp!2158829))))

(declare-fun b!7451224 () Bool)

(assert (=> b!7451224 (= e!4447909 tp_is_empty!49265)))

(declare-fun b!7451226 () Bool)

(declare-fun tp!2158832 () Bool)

(assert (=> b!7451226 (= e!4447909 tp!2158832)))

(declare-fun b!7451225 () Bool)

(declare-fun tp!2158833 () Bool)

(declare-fun tp!2158831 () Bool)

(assert (=> b!7451225 (= e!4447909 (and tp!2158833 tp!2158831))))

(assert (= (and b!7450808 (is-ElementMatch!19488 (regTwo!39488 r1!5845))) b!7451224))

(assert (= (and b!7450808 (is-Concat!28333 (regTwo!39488 r1!5845))) b!7451225))

(assert (= (and b!7450808 (is-Star!19488 (regTwo!39488 r1!5845))) b!7451226))

(assert (= (and b!7450808 (is-Union!19488 (regTwo!39488 r1!5845))) b!7451227))

(declare-fun e!4447910 () Bool)

(assert (=> b!7450814 (= tp!2158737 e!4447910)))

(declare-fun b!7451231 () Bool)

(declare-fun tp!2158835 () Bool)

(declare-fun tp!2158834 () Bool)

(assert (=> b!7451231 (= e!4447910 (and tp!2158835 tp!2158834))))

(declare-fun b!7451228 () Bool)

(assert (=> b!7451228 (= e!4447910 tp_is_empty!49265)))

(declare-fun b!7451230 () Bool)

(declare-fun tp!2158837 () Bool)

(assert (=> b!7451230 (= e!4447910 tp!2158837)))

(declare-fun b!7451229 () Bool)

(declare-fun tp!2158838 () Bool)

(declare-fun tp!2158836 () Bool)

(assert (=> b!7451229 (= e!4447910 (and tp!2158838 tp!2158836))))

(assert (= (and b!7450814 (is-ElementMatch!19488 (regOne!39489 r2!5783))) b!7451228))

(assert (= (and b!7450814 (is-Concat!28333 (regOne!39489 r2!5783))) b!7451229))

(assert (= (and b!7450814 (is-Star!19488 (regOne!39489 r2!5783))) b!7451230))

(assert (= (and b!7450814 (is-Union!19488 (regOne!39489 r2!5783))) b!7451231))

(declare-fun e!4447911 () Bool)

(assert (=> b!7450814 (= tp!2158733 e!4447911)))

(declare-fun b!7451235 () Bool)

(declare-fun tp!2158840 () Bool)

(declare-fun tp!2158839 () Bool)

(assert (=> b!7451235 (= e!4447911 (and tp!2158840 tp!2158839))))

(declare-fun b!7451232 () Bool)

(assert (=> b!7451232 (= e!4447911 tp_is_empty!49265)))

(declare-fun b!7451234 () Bool)

(declare-fun tp!2158842 () Bool)

(assert (=> b!7451234 (= e!4447911 tp!2158842)))

(declare-fun b!7451233 () Bool)

(declare-fun tp!2158843 () Bool)

(declare-fun tp!2158841 () Bool)

(assert (=> b!7451233 (= e!4447911 (and tp!2158843 tp!2158841))))

(assert (= (and b!7450814 (is-ElementMatch!19488 (regTwo!39489 r2!5783))) b!7451232))

(assert (= (and b!7450814 (is-Concat!28333 (regTwo!39489 r2!5783))) b!7451233))

(assert (= (and b!7450814 (is-Star!19488 (regTwo!39489 r2!5783))) b!7451234))

(assert (= (and b!7450814 (is-Union!19488 (regTwo!39489 r2!5783))) b!7451235))

(declare-fun e!4447912 () Bool)

(assert (=> b!7450817 (= tp!2158736 e!4447912)))

(declare-fun b!7451239 () Bool)

(declare-fun tp!2158845 () Bool)

(declare-fun tp!2158844 () Bool)

(assert (=> b!7451239 (= e!4447912 (and tp!2158845 tp!2158844))))

(declare-fun b!7451236 () Bool)

(assert (=> b!7451236 (= e!4447912 tp_is_empty!49265)))

(declare-fun b!7451238 () Bool)

(declare-fun tp!2158847 () Bool)

(assert (=> b!7451238 (= e!4447912 tp!2158847)))

(declare-fun b!7451237 () Bool)

(declare-fun tp!2158848 () Bool)

(declare-fun tp!2158846 () Bool)

(assert (=> b!7451237 (= e!4447912 (and tp!2158848 tp!2158846))))

(assert (= (and b!7450817 (is-ElementMatch!19488 (regOne!39488 rTail!78))) b!7451236))

(assert (= (and b!7450817 (is-Concat!28333 (regOne!39488 rTail!78))) b!7451237))

(assert (= (and b!7450817 (is-Star!19488 (regOne!39488 rTail!78))) b!7451238))

(assert (= (and b!7450817 (is-Union!19488 (regOne!39488 rTail!78))) b!7451239))

(declare-fun e!4447913 () Bool)

(assert (=> b!7450817 (= tp!2158741 e!4447913)))

(declare-fun b!7451243 () Bool)

(declare-fun tp!2158850 () Bool)

(declare-fun tp!2158849 () Bool)

(assert (=> b!7451243 (= e!4447913 (and tp!2158850 tp!2158849))))

(declare-fun b!7451240 () Bool)

(assert (=> b!7451240 (= e!4447913 tp_is_empty!49265)))

(declare-fun b!7451242 () Bool)

(declare-fun tp!2158852 () Bool)

(assert (=> b!7451242 (= e!4447913 tp!2158852)))

(declare-fun b!7451241 () Bool)

(declare-fun tp!2158853 () Bool)

(declare-fun tp!2158851 () Bool)

(assert (=> b!7451241 (= e!4447913 (and tp!2158853 tp!2158851))))

(assert (= (and b!7450817 (is-ElementMatch!19488 (regTwo!39488 rTail!78))) b!7451240))

(assert (= (and b!7450817 (is-Concat!28333 (regTwo!39488 rTail!78))) b!7451241))

(assert (= (and b!7450817 (is-Star!19488 (regTwo!39488 rTail!78))) b!7451242))

(assert (= (and b!7450817 (is-Union!19488 (regTwo!39488 rTail!78))) b!7451243))

(declare-fun e!4447914 () Bool)

(assert (=> b!7450812 (= tp!2158735 e!4447914)))

(declare-fun b!7451247 () Bool)

(declare-fun tp!2158855 () Bool)

(declare-fun tp!2158854 () Bool)

(assert (=> b!7451247 (= e!4447914 (and tp!2158855 tp!2158854))))

(declare-fun b!7451244 () Bool)

(assert (=> b!7451244 (= e!4447914 tp_is_empty!49265)))

(declare-fun b!7451246 () Bool)

(declare-fun tp!2158857 () Bool)

(assert (=> b!7451246 (= e!4447914 tp!2158857)))

(declare-fun b!7451245 () Bool)

(declare-fun tp!2158858 () Bool)

(declare-fun tp!2158856 () Bool)

(assert (=> b!7451245 (= e!4447914 (and tp!2158858 tp!2158856))))

(assert (= (and b!7450812 (is-ElementMatch!19488 (regOne!39489 r1!5845))) b!7451244))

(assert (= (and b!7450812 (is-Concat!28333 (regOne!39489 r1!5845))) b!7451245))

(assert (= (and b!7450812 (is-Star!19488 (regOne!39489 r1!5845))) b!7451246))

(assert (= (and b!7450812 (is-Union!19488 (regOne!39489 r1!5845))) b!7451247))

(declare-fun e!4447915 () Bool)

(assert (=> b!7450812 (= tp!2158744 e!4447915)))

(declare-fun b!7451251 () Bool)

(declare-fun tp!2158860 () Bool)

(declare-fun tp!2158859 () Bool)

(assert (=> b!7451251 (= e!4447915 (and tp!2158860 tp!2158859))))

(declare-fun b!7451248 () Bool)

(assert (=> b!7451248 (= e!4447915 tp_is_empty!49265)))

(declare-fun b!7451250 () Bool)

(declare-fun tp!2158862 () Bool)

(assert (=> b!7451250 (= e!4447915 tp!2158862)))

(declare-fun b!7451249 () Bool)

(declare-fun tp!2158863 () Bool)

(declare-fun tp!2158861 () Bool)

(assert (=> b!7451249 (= e!4447915 (and tp!2158863 tp!2158861))))

(assert (= (and b!7450812 (is-ElementMatch!19488 (regTwo!39489 r1!5845))) b!7451248))

(assert (= (and b!7450812 (is-Concat!28333 (regTwo!39489 r1!5845))) b!7451249))

(assert (= (and b!7450812 (is-Star!19488 (regTwo!39489 r1!5845))) b!7451250))

(assert (= (and b!7450812 (is-Union!19488 (regTwo!39489 r1!5845))) b!7451251))

(declare-fun e!4447916 () Bool)

(assert (=> b!7450807 (= tp!2158746 e!4447916)))

(declare-fun b!7451255 () Bool)

(declare-fun tp!2158865 () Bool)

(declare-fun tp!2158864 () Bool)

(assert (=> b!7451255 (= e!4447916 (and tp!2158865 tp!2158864))))

(declare-fun b!7451252 () Bool)

(assert (=> b!7451252 (= e!4447916 tp_is_empty!49265)))

(declare-fun b!7451254 () Bool)

(declare-fun tp!2158867 () Bool)

(assert (=> b!7451254 (= e!4447916 tp!2158867)))

(declare-fun b!7451253 () Bool)

(declare-fun tp!2158868 () Bool)

(declare-fun tp!2158866 () Bool)

(assert (=> b!7451253 (= e!4447916 (and tp!2158868 tp!2158866))))

(assert (= (and b!7450807 (is-ElementMatch!19488 (regOne!39488 r2!5783))) b!7451252))

(assert (= (and b!7450807 (is-Concat!28333 (regOne!39488 r2!5783))) b!7451253))

(assert (= (and b!7450807 (is-Star!19488 (regOne!39488 r2!5783))) b!7451254))

(assert (= (and b!7450807 (is-Union!19488 (regOne!39488 r2!5783))) b!7451255))

(declare-fun e!4447917 () Bool)

(assert (=> b!7450807 (= tp!2158747 e!4447917)))

(declare-fun b!7451259 () Bool)

(declare-fun tp!2158870 () Bool)

(declare-fun tp!2158869 () Bool)

(assert (=> b!7451259 (= e!4447917 (and tp!2158870 tp!2158869))))

(declare-fun b!7451256 () Bool)

(assert (=> b!7451256 (= e!4447917 tp_is_empty!49265)))

(declare-fun b!7451258 () Bool)

(declare-fun tp!2158872 () Bool)

(assert (=> b!7451258 (= e!4447917 tp!2158872)))

(declare-fun b!7451257 () Bool)

(declare-fun tp!2158873 () Bool)

(declare-fun tp!2158871 () Bool)

(assert (=> b!7451257 (= e!4447917 (and tp!2158873 tp!2158871))))

(assert (= (and b!7450807 (is-ElementMatch!19488 (regTwo!39488 r2!5783))) b!7451256))

(assert (= (and b!7450807 (is-Concat!28333 (regTwo!39488 r2!5783))) b!7451257))

(assert (= (and b!7450807 (is-Star!19488 (regTwo!39488 r2!5783))) b!7451258))

(assert (= (and b!7450807 (is-Union!19488 (regTwo!39488 r2!5783))) b!7451259))

(declare-fun e!4447918 () Bool)

(assert (=> b!7450818 (= tp!2158743 e!4447918)))

(declare-fun b!7451263 () Bool)

(declare-fun tp!2158875 () Bool)

(declare-fun tp!2158874 () Bool)

(assert (=> b!7451263 (= e!4447918 (and tp!2158875 tp!2158874))))

(declare-fun b!7451260 () Bool)

(assert (=> b!7451260 (= e!4447918 tp_is_empty!49265)))

(declare-fun b!7451262 () Bool)

(declare-fun tp!2158877 () Bool)

(assert (=> b!7451262 (= e!4447918 tp!2158877)))

(declare-fun b!7451261 () Bool)

(declare-fun tp!2158878 () Bool)

(declare-fun tp!2158876 () Bool)

(assert (=> b!7451261 (= e!4447918 (and tp!2158878 tp!2158876))))

(assert (= (and b!7450818 (is-ElementMatch!19488 (regOne!39489 rTail!78))) b!7451260))

(assert (= (and b!7450818 (is-Concat!28333 (regOne!39489 rTail!78))) b!7451261))

(assert (= (and b!7450818 (is-Star!19488 (regOne!39489 rTail!78))) b!7451262))

(assert (= (and b!7450818 (is-Union!19488 (regOne!39489 rTail!78))) b!7451263))

(declare-fun e!4447919 () Bool)

(assert (=> b!7450818 (= tp!2158740 e!4447919)))

(declare-fun b!7451267 () Bool)

(declare-fun tp!2158880 () Bool)

(declare-fun tp!2158879 () Bool)

(assert (=> b!7451267 (= e!4447919 (and tp!2158880 tp!2158879))))

(declare-fun b!7451264 () Bool)

(assert (=> b!7451264 (= e!4447919 tp_is_empty!49265)))

(declare-fun b!7451266 () Bool)

(declare-fun tp!2158882 () Bool)

(assert (=> b!7451266 (= e!4447919 tp!2158882)))

(declare-fun b!7451265 () Bool)

(declare-fun tp!2158883 () Bool)

(declare-fun tp!2158881 () Bool)

(assert (=> b!7451265 (= e!4447919 (and tp!2158883 tp!2158881))))

(assert (= (and b!7450818 (is-ElementMatch!19488 (regTwo!39489 rTail!78))) b!7451264))

(assert (= (and b!7450818 (is-Concat!28333 (regTwo!39489 rTail!78))) b!7451265))

(assert (= (and b!7450818 (is-Star!19488 (regTwo!39489 rTail!78))) b!7451266))

(assert (= (and b!7450818 (is-Union!19488 (regTwo!39489 rTail!78))) b!7451267))

(push 1)

(assert (not bm!684594))

(assert (not b!7451214))

(assert (not b!7451047))

(assert (not d!2297016))

(assert (not b!7451258))

(assert (not b!7451254))

(assert (not b!7451261))

(assert (not b!7451191))

(assert (not b!7451257))

(assert (not b!7451204))

(assert (not b!7451255))

(assert (not d!2297018))

(assert (not b!7451249))

(assert (not b!7451231))

(assert (not b!7451230))

(assert (not b!7451095))

(assert (not b!7451233))

(assert (not b!7450912))

(assert (not bm!684593))

(assert (not b!7451192))

(assert (not b!7451086))

(assert (not d!2297022))

(assert (not b!7451238))

(assert (not bm!684579))

(assert (not b!7450997))

(assert (not b!7451213))

(assert (not d!2297020))

(assert (not b!7451246))

(assert (not b!7451088))

(assert (not b!7451205))

(assert (not bm!684607))

(assert tp_is_empty!49265)

(assert (not b!7451226))

(assert (not b!7451097))

(assert (not b!7451253))

(assert (not b!7451242))

(assert (not b!7451223))

(assert (not d!2297028))

(assert (not b!7451210))

(assert (not bm!684582))

(assert (not b!7451054))

(assert (not b!7451045))

(assert (not b!7451259))

(assert (not d!2297004))

(assert (not b!7451185))

(assert (not d!2297006))

(assert (not bm!684605))

(assert (not bm!684583))

(assert (not bm!684606))

(assert (not d!2297024))

(assert (not b!7450993))

(assert (not b!7451222))

(assert (not bm!684576))

(assert (not b!7451096))

(assert (not b!7451190))

(assert (not b!7451225))

(assert (not b!7451250))

(assert (not b!7451227))

(assert (not b!7451251))

(assert (not b!7451247))

(assert (not b!7451243))

(assert (not b!7451229))

(assert (not b!7451245))

(assert (not b!7451241))

(assert (not b!7451262))

(assert (not bm!684608))

(assert (not b!7451219))

(assert (not b!7451055))

(assert (not bm!684580))

(assert (not b!7451212))

(assert (not b!7450921))

(assert (not b!7451206))

(assert (not b!7451263))

(assert (not b!7451052))

(assert (not b!7451267))

(assert (not b!7451056))

(assert (not b!7451064))

(assert (not b!7450930))

(assert (not b!7451209))

(assert (not bm!684577))

(assert (not b!7451234))

(assert (not b!7451221))

(assert (not d!2297030))

(assert (not b!7451237))

(assert (not b!7451184))

(assert (not b!7451265))

(assert (not b!7451093))

(assert (not b!7451239))

(assert (not b!7451068))

(assert (not d!2297014))

(assert (not b!7451208))

(assert (not b!7451266))

(assert (not b!7451235))

(assert (not b!7451189))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

