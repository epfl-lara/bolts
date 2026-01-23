; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667788 () Bool)

(assert start!667788)

(declare-fun b!6959592 () Bool)

(declare-fun e!4184586 () Bool)

(declare-fun e!4184583 () Bool)

(assert (=> b!6959592 (= e!4184586 e!4184583)))

(declare-fun res!2839793 () Bool)

(assert (=> b!6959592 (=> res!2839793 e!4184583)))

(declare-datatypes ((C!34422 0))(
  ( (C!34423 (val!26913 Int)) )
))
(declare-datatypes ((Regex!17076 0))(
  ( (ElementMatch!17076 (c!1290506 C!34422)) (Concat!25921 (regOne!34664 Regex!17076) (regTwo!34664 Regex!17076)) (EmptyExpr!17076) (Star!17076 (reg!17405 Regex!17076)) (EmptyLang!17076) (Union!17076 (regOne!34665 Regex!17076) (regTwo!34665 Regex!17076)) )
))
(declare-datatypes ((List!66837 0))(
  ( (Nil!66713) (Cons!66713 (h!73161 Regex!17076) (t!380580 List!66837)) )
))
(declare-fun lt!2478813 () List!66837)

(declare-fun isEmpty!38939 (List!66837) Bool)

(assert (=> b!6959592 (= res!2839793 (not (isEmpty!38939 lt!2478813)))))

(declare-fun l!9142 () List!66837)

(declare-fun tail!13020 (List!66837) List!66837)

(assert (=> b!6959592 (= lt!2478813 (tail!13020 l!9142))))

(declare-fun b!6959593 () Bool)

(declare-fun e!4184582 () Bool)

(declare-fun tp!1918703 () Bool)

(declare-fun tp!1918699 () Bool)

(assert (=> b!6959593 (= e!4184582 (and tp!1918703 tp!1918699))))

(declare-fun b!6959594 () Bool)

(declare-fun e!4184584 () Bool)

(declare-fun tp!1918705 () Bool)

(declare-fun tp!1918702 () Bool)

(assert (=> b!6959594 (= e!4184584 (and tp!1918705 tp!1918702))))

(declare-fun b!6959595 () Bool)

(declare-fun e!4184581 () Bool)

(assert (=> b!6959595 (= e!4184581 (not e!4184586))))

(declare-fun res!2839795 () Bool)

(assert (=> b!6959595 (=> res!2839795 e!4184586)))

(declare-fun r!13765 () Regex!17076)

(assert (=> b!6959595 (= res!2839795 (not (is-Union!17076 r!13765)))))

(declare-datatypes ((List!66838 0))(
  ( (Nil!66714) (Cons!66714 (h!73162 C!34422) (t!380581 List!66838)) )
))
(declare-fun s!9351 () List!66838)

(declare-fun matchR!9182 (Regex!17076 List!66838) Bool)

(declare-fun matchRSpec!4097 (Regex!17076 List!66838) Bool)

(assert (=> b!6959595 (= (matchR!9182 r!13765 s!9351) (matchRSpec!4097 r!13765 s!9351))))

(declare-datatypes ((Unit!160812 0))(
  ( (Unit!160813) )
))
(declare-fun lt!2478812 () Unit!160812)

(declare-fun mainMatchTheorem!4091 (Regex!17076 List!66838) Unit!160812)

(assert (=> b!6959595 (= lt!2478812 (mainMatchTheorem!4091 r!13765 s!9351))))

(declare-fun b!6959596 () Bool)

(declare-fun e!4184585 () Bool)

(declare-fun tp_is_empty!43377 () Bool)

(declare-fun tp!1918698 () Bool)

(assert (=> b!6959596 (= e!4184585 (and tp_is_empty!43377 tp!1918698))))

(declare-fun b!6959597 () Bool)

(declare-fun res!2839797 () Bool)

(assert (=> b!6959597 (=> res!2839797 e!4184583)))

(declare-fun generalisedUnion!2551 (List!66837) Regex!17076)

(assert (=> b!6959597 (= res!2839797 (not (= (generalisedUnion!2551 lt!2478813) EmptyLang!17076)))))

(declare-fun b!6959598 () Bool)

(declare-fun tp!1918700 () Bool)

(assert (=> b!6959598 (= e!4184584 tp!1918700)))

(declare-fun b!6959599 () Bool)

(assert (=> b!6959599 (= e!4184584 tp_is_empty!43377)))

(declare-fun res!2839796 () Bool)

(assert (=> start!667788 (=> (not res!2839796) (not e!4184581))))

(declare-fun lambda!397073 () Int)

(declare-fun forall!15947 (List!66837 Int) Bool)

(assert (=> start!667788 (= res!2839796 (forall!15947 l!9142 lambda!397073))))

(assert (=> start!667788 e!4184581))

(assert (=> start!667788 e!4184582))

(assert (=> start!667788 e!4184584))

(assert (=> start!667788 e!4184585))

(declare-fun b!6959600 () Bool)

(declare-fun tp!1918704 () Bool)

(declare-fun tp!1918701 () Bool)

(assert (=> b!6959600 (= e!4184584 (and tp!1918704 tp!1918701))))

(declare-fun b!6959601 () Bool)

(declare-fun res!2839794 () Bool)

(assert (=> b!6959601 (=> res!2839794 e!4184586)))

(assert (=> b!6959601 (= res!2839794 (isEmpty!38939 l!9142))))

(declare-fun b!6959602 () Bool)

(declare-fun res!2839798 () Bool)

(assert (=> b!6959602 (=> (not res!2839798) (not e!4184581))))

(assert (=> b!6959602 (= res!2839798 (= r!13765 (generalisedUnion!2551 l!9142)))))

(declare-fun b!6959603 () Bool)

(declare-fun validRegex!8776 (Regex!17076) Bool)

(assert (=> b!6959603 (= e!4184583 (validRegex!8776 r!13765))))

(assert (= (and start!667788 res!2839796) b!6959602))

(assert (= (and b!6959602 res!2839798) b!6959595))

(assert (= (and b!6959595 (not res!2839795)) b!6959601))

(assert (= (and b!6959601 (not res!2839794)) b!6959592))

(assert (= (and b!6959592 (not res!2839793)) b!6959597))

(assert (= (and b!6959597 (not res!2839797)) b!6959603))

(assert (= (and start!667788 (is-Cons!66713 l!9142)) b!6959593))

(assert (= (and start!667788 (is-ElementMatch!17076 r!13765)) b!6959599))

(assert (= (and start!667788 (is-Concat!25921 r!13765)) b!6959600))

(assert (= (and start!667788 (is-Star!17076 r!13765)) b!6959598))

(assert (= (and start!667788 (is-Union!17076 r!13765)) b!6959594))

(assert (= (and start!667788 (is-Cons!66714 s!9351)) b!6959596))

(declare-fun m!7655620 () Bool)

(assert (=> start!667788 m!7655620))

(declare-fun m!7655622 () Bool)

(assert (=> b!6959602 m!7655622))

(declare-fun m!7655624 () Bool)

(assert (=> b!6959597 m!7655624))

(declare-fun m!7655626 () Bool)

(assert (=> b!6959603 m!7655626))

(declare-fun m!7655628 () Bool)

(assert (=> b!6959595 m!7655628))

(declare-fun m!7655630 () Bool)

(assert (=> b!6959595 m!7655630))

(declare-fun m!7655632 () Bool)

(assert (=> b!6959595 m!7655632))

(declare-fun m!7655634 () Bool)

(assert (=> b!6959601 m!7655634))

(declare-fun m!7655636 () Bool)

(assert (=> b!6959592 m!7655636))

(declare-fun m!7655638 () Bool)

(assert (=> b!6959592 m!7655638))

(push 1)

(assert (not b!6959596))

(assert (not b!6959602))

(assert (not b!6959598))

(assert tp_is_empty!43377)

(assert (not b!6959601))

(assert (not b!6959600))

(assert (not start!667788))

(assert (not b!6959597))

(assert (not b!6959595))

(assert (not b!6959593))

(assert (not b!6959603))

(assert (not b!6959592))

(assert (not b!6959594))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6959668 () Bool)

(declare-fun res!2839839 () Bool)

(declare-fun e!4184620 () Bool)

(assert (=> b!6959668 (=> res!2839839 e!4184620)))

(declare-fun e!4184619 () Bool)

(assert (=> b!6959668 (= res!2839839 e!4184619)))

(declare-fun res!2839837 () Bool)

(assert (=> b!6959668 (=> (not res!2839837) (not e!4184619))))

(declare-fun lt!2478822 () Bool)

(assert (=> b!6959668 (= res!2839837 lt!2478822)))

(declare-fun b!6959669 () Bool)

(declare-fun res!2839833 () Bool)

(declare-fun e!4184625 () Bool)

(assert (=> b!6959669 (=> res!2839833 e!4184625)))

(declare-fun isEmpty!38941 (List!66838) Bool)

(declare-fun tail!13022 (List!66838) List!66838)

(assert (=> b!6959669 (= res!2839833 (not (isEmpty!38941 (tail!13022 s!9351))))))

(declare-fun b!6959670 () Bool)

(declare-fun e!4184623 () Bool)

(declare-fun e!4184624 () Bool)

(assert (=> b!6959670 (= e!4184623 e!4184624)))

(declare-fun c!1290515 () Bool)

(assert (=> b!6959670 (= c!1290515 (is-EmptyLang!17076 r!13765))))

(declare-fun b!6959671 () Bool)

(declare-fun e!4184621 () Bool)

(declare-fun derivativeStep!5509 (Regex!17076 C!34422) Regex!17076)

(declare-fun head!13966 (List!66838) C!34422)

(assert (=> b!6959671 (= e!4184621 (matchR!9182 (derivativeStep!5509 r!13765 (head!13966 s!9351)) (tail!13022 s!9351)))))

(declare-fun b!6959672 () Bool)

(assert (=> b!6959672 (= e!4184624 (not lt!2478822))))

(declare-fun b!6959673 () Bool)

(assert (=> b!6959673 (= e!4184619 (= (head!13966 s!9351) (c!1290506 r!13765)))))

(declare-fun b!6959674 () Bool)

(declare-fun e!4184622 () Bool)

(assert (=> b!6959674 (= e!4184620 e!4184622)))

(declare-fun res!2839840 () Bool)

(assert (=> b!6959674 (=> (not res!2839840) (not e!4184622))))

(assert (=> b!6959674 (= res!2839840 (not lt!2478822))))

(declare-fun b!6959675 () Bool)

(assert (=> b!6959675 (= e!4184622 e!4184625)))

(declare-fun res!2839834 () Bool)

(assert (=> b!6959675 (=> res!2839834 e!4184625)))

(declare-fun call!631948 () Bool)

(assert (=> b!6959675 (= res!2839834 call!631948)))

(declare-fun b!6959676 () Bool)

(declare-fun res!2839836 () Bool)

(assert (=> b!6959676 (=> (not res!2839836) (not e!4184619))))

(assert (=> b!6959676 (= res!2839836 (not call!631948))))

(declare-fun d!2169904 () Bool)

(assert (=> d!2169904 e!4184623))

(declare-fun c!1290514 () Bool)

(assert (=> d!2169904 (= c!1290514 (is-EmptyExpr!17076 r!13765))))

(assert (=> d!2169904 (= lt!2478822 e!4184621)))

(declare-fun c!1290516 () Bool)

(assert (=> d!2169904 (= c!1290516 (isEmpty!38941 s!9351))))

(assert (=> d!2169904 (validRegex!8776 r!13765)))

(assert (=> d!2169904 (= (matchR!9182 r!13765 s!9351) lt!2478822)))

(declare-fun b!6959677 () Bool)

(declare-fun res!2839835 () Bool)

(assert (=> b!6959677 (=> res!2839835 e!4184620)))

(assert (=> b!6959677 (= res!2839835 (not (is-ElementMatch!17076 r!13765)))))

(assert (=> b!6959677 (= e!4184624 e!4184620)))

(declare-fun b!6959678 () Bool)

(declare-fun nullable!6883 (Regex!17076) Bool)

(assert (=> b!6959678 (= e!4184621 (nullable!6883 r!13765))))

(declare-fun bm!631943 () Bool)

(assert (=> bm!631943 (= call!631948 (isEmpty!38941 s!9351))))

(declare-fun b!6959679 () Bool)

(declare-fun res!2839838 () Bool)

(assert (=> b!6959679 (=> (not res!2839838) (not e!4184619))))

(assert (=> b!6959679 (= res!2839838 (isEmpty!38941 (tail!13022 s!9351)))))

(declare-fun b!6959680 () Bool)

(assert (=> b!6959680 (= e!4184625 (not (= (head!13966 s!9351) (c!1290506 r!13765))))))

(declare-fun b!6959681 () Bool)

(assert (=> b!6959681 (= e!4184623 (= lt!2478822 call!631948))))

(assert (= (and d!2169904 c!1290516) b!6959678))

(assert (= (and d!2169904 (not c!1290516)) b!6959671))

(assert (= (and d!2169904 c!1290514) b!6959681))

(assert (= (and d!2169904 (not c!1290514)) b!6959670))

(assert (= (and b!6959670 c!1290515) b!6959672))

(assert (= (and b!6959670 (not c!1290515)) b!6959677))

(assert (= (and b!6959677 (not res!2839835)) b!6959668))

(assert (= (and b!6959668 res!2839837) b!6959676))

(assert (= (and b!6959676 res!2839836) b!6959679))

(assert (= (and b!6959679 res!2839838) b!6959673))

(assert (= (and b!6959668 (not res!2839839)) b!6959674))

(assert (= (and b!6959674 res!2839840) b!6959675))

(assert (= (and b!6959675 (not res!2839834)) b!6959669))

(assert (= (and b!6959669 (not res!2839833)) b!6959680))

(assert (= (or b!6959681 b!6959675 b!6959676) bm!631943))

(declare-fun m!7655660 () Bool)

(assert (=> b!6959680 m!7655660))

(assert (=> b!6959671 m!7655660))

(assert (=> b!6959671 m!7655660))

(declare-fun m!7655662 () Bool)

(assert (=> b!6959671 m!7655662))

(declare-fun m!7655664 () Bool)

(assert (=> b!6959671 m!7655664))

(assert (=> b!6959671 m!7655662))

(assert (=> b!6959671 m!7655664))

(declare-fun m!7655666 () Bool)

(assert (=> b!6959671 m!7655666))

(declare-fun m!7655668 () Bool)

(assert (=> b!6959678 m!7655668))

(declare-fun m!7655670 () Bool)

(assert (=> d!2169904 m!7655670))

(assert (=> d!2169904 m!7655626))

(assert (=> bm!631943 m!7655670))

(assert (=> b!6959669 m!7655664))

(assert (=> b!6959669 m!7655664))

(declare-fun m!7655672 () Bool)

(assert (=> b!6959669 m!7655672))

(assert (=> b!6959673 m!7655660))

(assert (=> b!6959679 m!7655664))

(assert (=> b!6959679 m!7655664))

(assert (=> b!6959679 m!7655672))

(assert (=> b!6959595 d!2169904))

(declare-fun b!6959751 () Bool)

(assert (=> b!6959751 true))

(assert (=> b!6959751 true))

(declare-fun bs!1858272 () Bool)

(declare-fun b!6959748 () Bool)

(assert (= bs!1858272 (and b!6959748 b!6959751)))

(declare-fun lambda!397082 () Int)

(declare-fun lambda!397081 () Int)

(assert (=> bs!1858272 (not (= lambda!397082 lambda!397081))))

(assert (=> b!6959748 true))

(assert (=> b!6959748 true))

(declare-fun d!2169908 () Bool)

(declare-fun c!1290534 () Bool)

(assert (=> d!2169908 (= c!1290534 (is-EmptyExpr!17076 r!13765))))

(declare-fun e!4184671 () Bool)

(assert (=> d!2169908 (= (matchRSpec!4097 r!13765 s!9351) e!4184671)))

(declare-fun b!6959741 () Bool)

(declare-fun c!1290533 () Bool)

(assert (=> b!6959741 (= c!1290533 (is-ElementMatch!17076 r!13765))))

(declare-fun e!4184666 () Bool)

(declare-fun e!4184668 () Bool)

(assert (=> b!6959741 (= e!4184666 e!4184668)))

(declare-fun b!6959742 () Bool)

(declare-fun res!2839873 () Bool)

(declare-fun e!4184669 () Bool)

(assert (=> b!6959742 (=> res!2839873 e!4184669)))

(declare-fun call!631962 () Bool)

(assert (=> b!6959742 (= res!2839873 call!631962)))

(declare-fun e!4184670 () Bool)

(assert (=> b!6959742 (= e!4184670 e!4184669)))

(declare-fun b!6959743 () Bool)

(assert (=> b!6959743 (= e!4184671 e!4184666)))

(declare-fun res!2839872 () Bool)

(assert (=> b!6959743 (= res!2839872 (not (is-EmptyLang!17076 r!13765)))))

(assert (=> b!6959743 (=> (not res!2839872) (not e!4184666))))

(declare-fun b!6959744 () Bool)

(assert (=> b!6959744 (= e!4184668 (= s!9351 (Cons!66714 (c!1290506 r!13765) Nil!66714)))))

(declare-fun bm!631957 () Bool)

(assert (=> bm!631957 (= call!631962 (isEmpty!38941 s!9351))))

(declare-fun b!6959745 () Bool)

(declare-fun c!1290532 () Bool)

(assert (=> b!6959745 (= c!1290532 (is-Union!17076 r!13765))))

(declare-fun e!4184667 () Bool)

(assert (=> b!6959745 (= e!4184668 e!4184667)))

(declare-fun b!6959746 () Bool)

(assert (=> b!6959746 (= e!4184671 call!631962)))

(declare-fun b!6959747 () Bool)

(declare-fun e!4184665 () Bool)

(assert (=> b!6959747 (= e!4184667 e!4184665)))

(declare-fun res!2839874 () Bool)

(assert (=> b!6959747 (= res!2839874 (matchRSpec!4097 (regOne!34665 r!13765) s!9351))))

(assert (=> b!6959747 (=> res!2839874 e!4184665)))

(declare-fun call!631963 () Bool)

(assert (=> b!6959748 (= e!4184670 call!631963)))

(declare-fun b!6959749 () Bool)

(assert (=> b!6959749 (= e!4184665 (matchRSpec!4097 (regTwo!34665 r!13765) s!9351))))

(declare-fun b!6959750 () Bool)

(assert (=> b!6959750 (= e!4184667 e!4184670)))

(declare-fun c!1290531 () Bool)

(assert (=> b!6959750 (= c!1290531 (is-Star!17076 r!13765))))

(declare-fun bm!631958 () Bool)

(declare-fun Exists!4065 (Int) Bool)

(assert (=> bm!631958 (= call!631963 (Exists!4065 (ite c!1290531 lambda!397081 lambda!397082)))))

(assert (=> b!6959751 (= e!4184669 call!631963)))

(assert (= (and d!2169908 c!1290534) b!6959746))

(assert (= (and d!2169908 (not c!1290534)) b!6959743))

(assert (= (and b!6959743 res!2839872) b!6959741))

(assert (= (and b!6959741 c!1290533) b!6959744))

(assert (= (and b!6959741 (not c!1290533)) b!6959745))

(assert (= (and b!6959745 c!1290532) b!6959747))

(assert (= (and b!6959745 (not c!1290532)) b!6959750))

(assert (= (and b!6959747 (not res!2839874)) b!6959749))

(assert (= (and b!6959750 c!1290531) b!6959742))

(assert (= (and b!6959750 (not c!1290531)) b!6959748))

(assert (= (and b!6959742 (not res!2839873)) b!6959751))

(assert (= (or b!6959751 b!6959748) bm!631958))

(assert (= (or b!6959746 b!6959742) bm!631957))

(assert (=> bm!631957 m!7655670))

(declare-fun m!7655680 () Bool)

(assert (=> b!6959747 m!7655680))

(declare-fun m!7655682 () Bool)

(assert (=> b!6959749 m!7655682))

(declare-fun m!7655684 () Bool)

(assert (=> bm!631958 m!7655684))

(assert (=> b!6959595 d!2169908))

(declare-fun d!2169912 () Bool)

(assert (=> d!2169912 (= (matchR!9182 r!13765 s!9351) (matchRSpec!4097 r!13765 s!9351))))

(declare-fun lt!2478825 () Unit!160812)

(declare-fun choose!51876 (Regex!17076 List!66838) Unit!160812)

(assert (=> d!2169912 (= lt!2478825 (choose!51876 r!13765 s!9351))))

(assert (=> d!2169912 (validRegex!8776 r!13765)))

(assert (=> d!2169912 (= (mainMatchTheorem!4091 r!13765 s!9351) lt!2478825)))

(declare-fun bs!1858273 () Bool)

(assert (= bs!1858273 d!2169912))

(assert (=> bs!1858273 m!7655628))

(assert (=> bs!1858273 m!7655630))

(declare-fun m!7655686 () Bool)

(assert (=> bs!1858273 m!7655686))

(assert (=> bs!1858273 m!7655626))

(assert (=> b!6959595 d!2169912))

(declare-fun d!2169914 () Bool)

(declare-fun res!2839879 () Bool)

(declare-fun e!4184676 () Bool)

(assert (=> d!2169914 (=> res!2839879 e!4184676)))

(assert (=> d!2169914 (= res!2839879 (is-Nil!66713 l!9142))))

(assert (=> d!2169914 (= (forall!15947 l!9142 lambda!397073) e!4184676)))

(declare-fun b!6959760 () Bool)

(declare-fun e!4184677 () Bool)

(assert (=> b!6959760 (= e!4184676 e!4184677)))

(declare-fun res!2839880 () Bool)

(assert (=> b!6959760 (=> (not res!2839880) (not e!4184677))))

(declare-fun dynLambda!26607 (Int Regex!17076) Bool)

(assert (=> b!6959760 (= res!2839880 (dynLambda!26607 lambda!397073 (h!73161 l!9142)))))

(declare-fun b!6959761 () Bool)

(assert (=> b!6959761 (= e!4184677 (forall!15947 (t!380580 l!9142) lambda!397073))))

(assert (= (and d!2169914 (not res!2839879)) b!6959760))

(assert (= (and b!6959760 res!2839880) b!6959761))

(declare-fun b_lambda!260537 () Bool)

(assert (=> (not b_lambda!260537) (not b!6959760)))

(declare-fun m!7655688 () Bool)

(assert (=> b!6959760 m!7655688))

(declare-fun m!7655690 () Bool)

(assert (=> b!6959761 m!7655690))

(assert (=> start!667788 d!2169914))

(declare-fun b!6959808 () Bool)

(declare-fun res!2839907 () Bool)

(declare-fun e!4184708 () Bool)

(assert (=> b!6959808 (=> (not res!2839907) (not e!4184708))))

(declare-fun call!631972 () Bool)

(assert (=> b!6959808 (= res!2839907 call!631972)))

(declare-fun e!4184712 () Bool)

(assert (=> b!6959808 (= e!4184712 e!4184708)))

(declare-fun c!1290545 () Bool)

(declare-fun c!1290546 () Bool)

(declare-fun call!631971 () Bool)

(declare-fun bm!631965 () Bool)

(assert (=> bm!631965 (= call!631971 (validRegex!8776 (ite c!1290546 (reg!17405 r!13765) (ite c!1290545 (regOne!34665 r!13765) (regOne!34664 r!13765)))))))

(declare-fun b!6959810 () Bool)

(declare-fun e!4184709 () Bool)

(declare-fun e!4184711 () Bool)

(assert (=> b!6959810 (= e!4184709 e!4184711)))

(assert (=> b!6959810 (= c!1290546 (is-Star!17076 r!13765))))

(declare-fun b!6959811 () Bool)

(declare-fun call!631970 () Bool)

(assert (=> b!6959811 (= e!4184708 call!631970)))

(declare-fun b!6959812 () Bool)

(assert (=> b!6959812 (= e!4184711 e!4184712)))

(assert (=> b!6959812 (= c!1290545 (is-Union!17076 r!13765))))

(declare-fun b!6959813 () Bool)

(declare-fun e!4184710 () Bool)

(assert (=> b!6959813 (= e!4184710 call!631971)))

(declare-fun bm!631966 () Bool)

(assert (=> bm!631966 (= call!631970 (validRegex!8776 (ite c!1290545 (regTwo!34665 r!13765) (regTwo!34664 r!13765))))))

(declare-fun b!6959814 () Bool)

(declare-fun res!2839908 () Bool)

(declare-fun e!4184706 () Bool)

(assert (=> b!6959814 (=> res!2839908 e!4184706)))

(assert (=> b!6959814 (= res!2839908 (not (is-Concat!25921 r!13765)))))

(assert (=> b!6959814 (= e!4184712 e!4184706)))

(declare-fun b!6959815 () Bool)

(declare-fun e!4184707 () Bool)

(assert (=> b!6959815 (= e!4184707 call!631970)))

(declare-fun bm!631967 () Bool)

(assert (=> bm!631967 (= call!631972 call!631971)))

(declare-fun b!6959816 () Bool)

(assert (=> b!6959816 (= e!4184711 e!4184710)))

(declare-fun res!2839909 () Bool)

(assert (=> b!6959816 (= res!2839909 (not (nullable!6883 (reg!17405 r!13765))))))

(assert (=> b!6959816 (=> (not res!2839909) (not e!4184710))))

(declare-fun b!6959809 () Bool)

(assert (=> b!6959809 (= e!4184706 e!4184707)))

(declare-fun res!2839911 () Bool)

(assert (=> b!6959809 (=> (not res!2839911) (not e!4184707))))

(assert (=> b!6959809 (= res!2839911 call!631972)))

(declare-fun d!2169916 () Bool)

(declare-fun res!2839910 () Bool)

(assert (=> d!2169916 (=> res!2839910 e!4184709)))

(assert (=> d!2169916 (= res!2839910 (is-ElementMatch!17076 r!13765))))

(assert (=> d!2169916 (= (validRegex!8776 r!13765) e!4184709)))

(assert (= (and d!2169916 (not res!2839910)) b!6959810))

(assert (= (and b!6959810 c!1290546) b!6959816))

(assert (= (and b!6959810 (not c!1290546)) b!6959812))

(assert (= (and b!6959816 res!2839909) b!6959813))

(assert (= (and b!6959812 c!1290545) b!6959808))

(assert (= (and b!6959812 (not c!1290545)) b!6959814))

(assert (= (and b!6959808 res!2839907) b!6959811))

(assert (= (and b!6959814 (not res!2839908)) b!6959809))

(assert (= (and b!6959809 res!2839911) b!6959815))

(assert (= (or b!6959808 b!6959809) bm!631967))

(assert (= (or b!6959811 b!6959815) bm!631966))

(assert (= (or b!6959813 bm!631967) bm!631965))

(declare-fun m!7655692 () Bool)

(assert (=> bm!631965 m!7655692))

(declare-fun m!7655694 () Bool)

(assert (=> bm!631966 m!7655694))

(declare-fun m!7655696 () Bool)

(assert (=> b!6959816 m!7655696))

(assert (=> b!6959603 d!2169916))

(declare-fun bs!1858274 () Bool)

(declare-fun d!2169918 () Bool)

(assert (= bs!1858274 (and d!2169918 start!667788)))

(declare-fun lambda!397085 () Int)

(assert (=> bs!1858274 (= lambda!397085 lambda!397073)))

(declare-fun e!4184727 () Bool)

(assert (=> d!2169918 e!4184727))

(declare-fun res!2839917 () Bool)

(assert (=> d!2169918 (=> (not res!2839917) (not e!4184727))))

(declare-fun lt!2478830 () Regex!17076)

(assert (=> d!2169918 (= res!2839917 (validRegex!8776 lt!2478830))))

(declare-fun e!4184728 () Regex!17076)

(assert (=> d!2169918 (= lt!2478830 e!4184728)))

(declare-fun c!1290555 () Bool)

(declare-fun e!4184725 () Bool)

(assert (=> d!2169918 (= c!1290555 e!4184725)))

(declare-fun res!2839916 () Bool)

(assert (=> d!2169918 (=> (not res!2839916) (not e!4184725))))

(assert (=> d!2169918 (= res!2839916 (is-Cons!66713 lt!2478813))))

(assert (=> d!2169918 (forall!15947 lt!2478813 lambda!397085)))

(assert (=> d!2169918 (= (generalisedUnion!2551 lt!2478813) lt!2478830)))

(declare-fun b!6959837 () Bool)

(declare-fun e!4184730 () Bool)

(declare-fun head!13967 (List!66837) Regex!17076)

(assert (=> b!6959837 (= e!4184730 (= lt!2478830 (head!13967 lt!2478813)))))

(declare-fun b!6959838 () Bool)

(assert (=> b!6959838 (= e!4184728 (h!73161 lt!2478813))))

(declare-fun b!6959839 () Bool)

(declare-fun e!4184729 () Bool)

(assert (=> b!6959839 (= e!4184727 e!4184729)))

(declare-fun c!1290556 () Bool)

(assert (=> b!6959839 (= c!1290556 (isEmpty!38939 lt!2478813))))

(declare-fun b!6959840 () Bool)

(declare-fun isEmptyLang!2036 (Regex!17076) Bool)

(assert (=> b!6959840 (= e!4184729 (isEmptyLang!2036 lt!2478830))))

(declare-fun b!6959841 () Bool)

(declare-fun isUnion!1464 (Regex!17076) Bool)

(assert (=> b!6959841 (= e!4184730 (isUnion!1464 lt!2478830))))

(declare-fun b!6959842 () Bool)

(declare-fun e!4184726 () Regex!17076)

(assert (=> b!6959842 (= e!4184728 e!4184726)))

(declare-fun c!1290557 () Bool)

(assert (=> b!6959842 (= c!1290557 (is-Cons!66713 lt!2478813))))

(declare-fun b!6959843 () Bool)

(assert (=> b!6959843 (= e!4184726 (Union!17076 (h!73161 lt!2478813) (generalisedUnion!2551 (t!380580 lt!2478813))))))

(declare-fun b!6959844 () Bool)

(assert (=> b!6959844 (= e!4184726 EmptyLang!17076)))

(declare-fun b!6959845 () Bool)

(assert (=> b!6959845 (= e!4184725 (isEmpty!38939 (t!380580 lt!2478813)))))

(declare-fun b!6959846 () Bool)

(assert (=> b!6959846 (= e!4184729 e!4184730)))

(declare-fun c!1290558 () Bool)

(assert (=> b!6959846 (= c!1290558 (isEmpty!38939 (tail!13020 lt!2478813)))))

(assert (= (and d!2169918 res!2839916) b!6959845))

(assert (= (and d!2169918 c!1290555) b!6959838))

(assert (= (and d!2169918 (not c!1290555)) b!6959842))

(assert (= (and b!6959842 c!1290557) b!6959843))

(assert (= (and b!6959842 (not c!1290557)) b!6959844))

(assert (= (and d!2169918 res!2839917) b!6959839))

(assert (= (and b!6959839 c!1290556) b!6959840))

(assert (= (and b!6959839 (not c!1290556)) b!6959846))

(assert (= (and b!6959846 c!1290558) b!6959837))

(assert (= (and b!6959846 (not c!1290558)) b!6959841))

(declare-fun m!7655698 () Bool)

(assert (=> b!6959845 m!7655698))

(declare-fun m!7655700 () Bool)

(assert (=> b!6959841 m!7655700))

(declare-fun m!7655702 () Bool)

(assert (=> d!2169918 m!7655702))

(declare-fun m!7655704 () Bool)

(assert (=> d!2169918 m!7655704))

(declare-fun m!7655706 () Bool)

(assert (=> b!6959843 m!7655706))

(declare-fun m!7655708 () Bool)

(assert (=> b!6959840 m!7655708))

(assert (=> b!6959839 m!7655636))

(declare-fun m!7655710 () Bool)

(assert (=> b!6959846 m!7655710))

(assert (=> b!6959846 m!7655710))

(declare-fun m!7655712 () Bool)

(assert (=> b!6959846 m!7655712))

(declare-fun m!7655714 () Bool)

(assert (=> b!6959837 m!7655714))

(assert (=> b!6959597 d!2169918))

(declare-fun d!2169920 () Bool)

(assert (=> d!2169920 (= (isEmpty!38939 lt!2478813) (is-Nil!66713 lt!2478813))))

(assert (=> b!6959592 d!2169920))

(declare-fun d!2169922 () Bool)

(assert (=> d!2169922 (= (tail!13020 l!9142) (t!380580 l!9142))))

(assert (=> b!6959592 d!2169922))

(declare-fun bs!1858275 () Bool)

(declare-fun d!2169924 () Bool)

(assert (= bs!1858275 (and d!2169924 start!667788)))

(declare-fun lambda!397086 () Int)

(assert (=> bs!1858275 (= lambda!397086 lambda!397073)))

(declare-fun bs!1858276 () Bool)

(assert (= bs!1858276 (and d!2169924 d!2169918)))

(assert (=> bs!1858276 (= lambda!397086 lambda!397085)))

(declare-fun e!4184740 () Bool)

(assert (=> d!2169924 e!4184740))

(declare-fun res!2839927 () Bool)

(assert (=> d!2169924 (=> (not res!2839927) (not e!4184740))))

(declare-fun lt!2478832 () Regex!17076)

(assert (=> d!2169924 (= res!2839927 (validRegex!8776 lt!2478832))))

(declare-fun e!4184741 () Regex!17076)

(assert (=> d!2169924 (= lt!2478832 e!4184741)))

(declare-fun c!1290562 () Bool)

(declare-fun e!4184738 () Bool)

(assert (=> d!2169924 (= c!1290562 e!4184738)))

(declare-fun res!2839926 () Bool)

(assert (=> d!2169924 (=> (not res!2839926) (not e!4184738))))

(assert (=> d!2169924 (= res!2839926 (is-Cons!66713 l!9142))))

(assert (=> d!2169924 (forall!15947 l!9142 lambda!397086)))

(assert (=> d!2169924 (= (generalisedUnion!2551 l!9142) lt!2478832)))

(declare-fun b!6959861 () Bool)

(declare-fun e!4184743 () Bool)

(assert (=> b!6959861 (= e!4184743 (= lt!2478832 (head!13967 l!9142)))))

(declare-fun b!6959862 () Bool)

(assert (=> b!6959862 (= e!4184741 (h!73161 l!9142))))

(declare-fun b!6959863 () Bool)

(declare-fun e!4184742 () Bool)

(assert (=> b!6959863 (= e!4184740 e!4184742)))

(declare-fun c!1290563 () Bool)

(assert (=> b!6959863 (= c!1290563 (isEmpty!38939 l!9142))))

(declare-fun b!6959864 () Bool)

(assert (=> b!6959864 (= e!4184742 (isEmptyLang!2036 lt!2478832))))

(declare-fun b!6959865 () Bool)

(assert (=> b!6959865 (= e!4184743 (isUnion!1464 lt!2478832))))

(declare-fun b!6959866 () Bool)

(declare-fun e!4184739 () Regex!17076)

(assert (=> b!6959866 (= e!4184741 e!4184739)))

(declare-fun c!1290564 () Bool)

(assert (=> b!6959866 (= c!1290564 (is-Cons!66713 l!9142))))

(declare-fun b!6959867 () Bool)

(assert (=> b!6959867 (= e!4184739 (Union!17076 (h!73161 l!9142) (generalisedUnion!2551 (t!380580 l!9142))))))

(declare-fun b!6959868 () Bool)

(assert (=> b!6959868 (= e!4184739 EmptyLang!17076)))

(declare-fun b!6959869 () Bool)

(assert (=> b!6959869 (= e!4184738 (isEmpty!38939 (t!380580 l!9142)))))

(declare-fun b!6959870 () Bool)

(assert (=> b!6959870 (= e!4184742 e!4184743)))

(declare-fun c!1290565 () Bool)

(assert (=> b!6959870 (= c!1290565 (isEmpty!38939 (tail!13020 l!9142)))))

(assert (= (and d!2169924 res!2839926) b!6959869))

(assert (= (and d!2169924 c!1290562) b!6959862))

(assert (= (and d!2169924 (not c!1290562)) b!6959866))

(assert (= (and b!6959866 c!1290564) b!6959867))

(assert (= (and b!6959866 (not c!1290564)) b!6959868))

(assert (= (and d!2169924 res!2839927) b!6959863))

(assert (= (and b!6959863 c!1290563) b!6959864))

(assert (= (and b!6959863 (not c!1290563)) b!6959870))

(assert (= (and b!6959870 c!1290565) b!6959861))

(assert (= (and b!6959870 (not c!1290565)) b!6959865))

(declare-fun m!7655720 () Bool)

(assert (=> b!6959869 m!7655720))

(declare-fun m!7655722 () Bool)

(assert (=> b!6959865 m!7655722))

(declare-fun m!7655724 () Bool)

(assert (=> d!2169924 m!7655724))

(declare-fun m!7655728 () Bool)

(assert (=> d!2169924 m!7655728))

(declare-fun m!7655730 () Bool)

(assert (=> b!6959867 m!7655730))

(declare-fun m!7655732 () Bool)

(assert (=> b!6959864 m!7655732))

(assert (=> b!6959863 m!7655634))

(assert (=> b!6959870 m!7655638))

(assert (=> b!6959870 m!7655638))

(declare-fun m!7655736 () Bool)

(assert (=> b!6959870 m!7655736))

(declare-fun m!7655738 () Bool)

(assert (=> b!6959861 m!7655738))

(assert (=> b!6959602 d!2169924))

(declare-fun d!2169926 () Bool)

(assert (=> d!2169926 (= (isEmpty!38939 l!9142) (is-Nil!66713 l!9142))))

(assert (=> b!6959601 d!2169926))

(declare-fun b!6959883 () Bool)

(declare-fun e!4184746 () Bool)

(declare-fun tp!1918744 () Bool)

(assert (=> b!6959883 (= e!4184746 tp!1918744)))

(assert (=> b!6959600 (= tp!1918704 e!4184746)))

(declare-fun b!6959882 () Bool)

(declare-fun tp!1918740 () Bool)

(declare-fun tp!1918741 () Bool)

(assert (=> b!6959882 (= e!4184746 (and tp!1918740 tp!1918741))))

(declare-fun b!6959881 () Bool)

(assert (=> b!6959881 (= e!4184746 tp_is_empty!43377)))

(declare-fun b!6959884 () Bool)

(declare-fun tp!1918742 () Bool)

(declare-fun tp!1918743 () Bool)

(assert (=> b!6959884 (= e!4184746 (and tp!1918742 tp!1918743))))

(assert (= (and b!6959600 (is-ElementMatch!17076 (regOne!34664 r!13765))) b!6959881))

(assert (= (and b!6959600 (is-Concat!25921 (regOne!34664 r!13765))) b!6959882))

(assert (= (and b!6959600 (is-Star!17076 (regOne!34664 r!13765))) b!6959883))

(assert (= (and b!6959600 (is-Union!17076 (regOne!34664 r!13765))) b!6959884))

(declare-fun b!6959887 () Bool)

(declare-fun e!4184747 () Bool)

(declare-fun tp!1918749 () Bool)

(assert (=> b!6959887 (= e!4184747 tp!1918749)))

(assert (=> b!6959600 (= tp!1918701 e!4184747)))

(declare-fun b!6959886 () Bool)

(declare-fun tp!1918745 () Bool)

(declare-fun tp!1918746 () Bool)

(assert (=> b!6959886 (= e!4184747 (and tp!1918745 tp!1918746))))

(declare-fun b!6959885 () Bool)

(assert (=> b!6959885 (= e!4184747 tp_is_empty!43377)))

(declare-fun b!6959888 () Bool)

(declare-fun tp!1918747 () Bool)

(declare-fun tp!1918748 () Bool)

(assert (=> b!6959888 (= e!4184747 (and tp!1918747 tp!1918748))))

(assert (= (and b!6959600 (is-ElementMatch!17076 (regTwo!34664 r!13765))) b!6959885))

(assert (= (and b!6959600 (is-Concat!25921 (regTwo!34664 r!13765))) b!6959886))

(assert (= (and b!6959600 (is-Star!17076 (regTwo!34664 r!13765))) b!6959887))

(assert (= (and b!6959600 (is-Union!17076 (regTwo!34664 r!13765))) b!6959888))

(declare-fun b!6959891 () Bool)

(declare-fun e!4184748 () Bool)

(declare-fun tp!1918754 () Bool)

(assert (=> b!6959891 (= e!4184748 tp!1918754)))

(assert (=> b!6959594 (= tp!1918705 e!4184748)))

(declare-fun b!6959890 () Bool)

(declare-fun tp!1918750 () Bool)

(declare-fun tp!1918751 () Bool)

(assert (=> b!6959890 (= e!4184748 (and tp!1918750 tp!1918751))))

(declare-fun b!6959889 () Bool)

(assert (=> b!6959889 (= e!4184748 tp_is_empty!43377)))

(declare-fun b!6959892 () Bool)

(declare-fun tp!1918752 () Bool)

(declare-fun tp!1918753 () Bool)

(assert (=> b!6959892 (= e!4184748 (and tp!1918752 tp!1918753))))

(assert (= (and b!6959594 (is-ElementMatch!17076 (regOne!34665 r!13765))) b!6959889))

(assert (= (and b!6959594 (is-Concat!25921 (regOne!34665 r!13765))) b!6959890))

(assert (= (and b!6959594 (is-Star!17076 (regOne!34665 r!13765))) b!6959891))

(assert (= (and b!6959594 (is-Union!17076 (regOne!34665 r!13765))) b!6959892))

(declare-fun b!6959895 () Bool)

(declare-fun e!4184749 () Bool)

(declare-fun tp!1918759 () Bool)

(assert (=> b!6959895 (= e!4184749 tp!1918759)))

(assert (=> b!6959594 (= tp!1918702 e!4184749)))

(declare-fun b!6959894 () Bool)

(declare-fun tp!1918755 () Bool)

(declare-fun tp!1918756 () Bool)

(assert (=> b!6959894 (= e!4184749 (and tp!1918755 tp!1918756))))

(declare-fun b!6959893 () Bool)

(assert (=> b!6959893 (= e!4184749 tp_is_empty!43377)))

(declare-fun b!6959896 () Bool)

(declare-fun tp!1918757 () Bool)

(declare-fun tp!1918758 () Bool)

(assert (=> b!6959896 (= e!4184749 (and tp!1918757 tp!1918758))))

(assert (= (and b!6959594 (is-ElementMatch!17076 (regTwo!34665 r!13765))) b!6959893))

(assert (= (and b!6959594 (is-Concat!25921 (regTwo!34665 r!13765))) b!6959894))

(assert (= (and b!6959594 (is-Star!17076 (regTwo!34665 r!13765))) b!6959895))

(assert (= (and b!6959594 (is-Union!17076 (regTwo!34665 r!13765))) b!6959896))

(declare-fun b!6959899 () Bool)

(declare-fun e!4184750 () Bool)

(declare-fun tp!1918764 () Bool)

(assert (=> b!6959899 (= e!4184750 tp!1918764)))

(assert (=> b!6959593 (= tp!1918703 e!4184750)))

(declare-fun b!6959898 () Bool)

(declare-fun tp!1918760 () Bool)

(declare-fun tp!1918761 () Bool)

(assert (=> b!6959898 (= e!4184750 (and tp!1918760 tp!1918761))))

(declare-fun b!6959897 () Bool)

(assert (=> b!6959897 (= e!4184750 tp_is_empty!43377)))

(declare-fun b!6959900 () Bool)

(declare-fun tp!1918762 () Bool)

(declare-fun tp!1918763 () Bool)

(assert (=> b!6959900 (= e!4184750 (and tp!1918762 tp!1918763))))

(assert (= (and b!6959593 (is-ElementMatch!17076 (h!73161 l!9142))) b!6959897))

(assert (= (and b!6959593 (is-Concat!25921 (h!73161 l!9142))) b!6959898))

(assert (= (and b!6959593 (is-Star!17076 (h!73161 l!9142))) b!6959899))

(assert (= (and b!6959593 (is-Union!17076 (h!73161 l!9142))) b!6959900))

(declare-fun b!6959905 () Bool)

(declare-fun e!4184753 () Bool)

(declare-fun tp!1918769 () Bool)

(declare-fun tp!1918770 () Bool)

(assert (=> b!6959905 (= e!4184753 (and tp!1918769 tp!1918770))))

(assert (=> b!6959593 (= tp!1918699 e!4184753)))

(assert (= (and b!6959593 (is-Cons!66713 (t!380580 l!9142))) b!6959905))

(declare-fun b!6959908 () Bool)

(declare-fun e!4184754 () Bool)

(declare-fun tp!1918775 () Bool)

(assert (=> b!6959908 (= e!4184754 tp!1918775)))

(assert (=> b!6959598 (= tp!1918700 e!4184754)))

(declare-fun b!6959907 () Bool)

(declare-fun tp!1918771 () Bool)

(declare-fun tp!1918772 () Bool)

(assert (=> b!6959907 (= e!4184754 (and tp!1918771 tp!1918772))))

(declare-fun b!6959906 () Bool)

(assert (=> b!6959906 (= e!4184754 tp_is_empty!43377)))

(declare-fun b!6959909 () Bool)

(declare-fun tp!1918773 () Bool)

(declare-fun tp!1918774 () Bool)

(assert (=> b!6959909 (= e!4184754 (and tp!1918773 tp!1918774))))

(assert (= (and b!6959598 (is-ElementMatch!17076 (reg!17405 r!13765))) b!6959906))

(assert (= (and b!6959598 (is-Concat!25921 (reg!17405 r!13765))) b!6959907))

(assert (= (and b!6959598 (is-Star!17076 (reg!17405 r!13765))) b!6959908))

(assert (= (and b!6959598 (is-Union!17076 (reg!17405 r!13765))) b!6959909))

(declare-fun b!6959914 () Bool)

(declare-fun e!4184757 () Bool)

(declare-fun tp!1918778 () Bool)

(assert (=> b!6959914 (= e!4184757 (and tp_is_empty!43377 tp!1918778))))

(assert (=> b!6959596 (= tp!1918698 e!4184757)))

(assert (= (and b!6959596 (is-Cons!66714 (t!380581 s!9351))) b!6959914))

(declare-fun b_lambda!260539 () Bool)

(assert (= b_lambda!260537 (or start!667788 b_lambda!260539)))

(declare-fun bs!1858277 () Bool)

(declare-fun d!2169930 () Bool)

(assert (= bs!1858277 (and d!2169930 start!667788)))

(assert (=> bs!1858277 (= (dynLambda!26607 lambda!397073 (h!73161 l!9142)) (validRegex!8776 (h!73161 l!9142)))))

(declare-fun m!7655746 () Bool)

(assert (=> bs!1858277 m!7655746))

(assert (=> b!6959760 d!2169930))

(push 1)

(assert (not b!6959914))

(assert (not b!6959749))

(assert (not b!6959840))

(assert (not b!6959882))

(assert (not b!6959894))

(assert (not d!2169904))

(assert (not b!6959816))

(assert (not d!2169912))

(assert (not b!6959679))

(assert (not b!6959896))

(assert (not bm!631965))

(assert (not bm!631943))

(assert (not b!6959900))

(assert (not bm!631957))

(assert (not b!6959864))

(assert (not b!6959870))

(assert (not b!6959673))

(assert (not b!6959886))

(assert (not b!6959865))

(assert (not b!6959747))

(assert (not d!2169924))

(assert (not b!6959892))

(assert (not b!6959890))

(assert (not b!6959899))

(assert (not bm!631966))

(assert tp_is_empty!43377)

(assert (not b!6959883))

(assert (not b_lambda!260539))

(assert (not bm!631958))

(assert (not bs!1858277))

(assert (not b!6959841))

(assert (not b!6959907))

(assert (not b!6959905))

(assert (not b!6959843))

(assert (not b!6959669))

(assert (not b!6959891))

(assert (not b!6959837))

(assert (not b!6959863))

(assert (not b!6959909))

(assert (not b!6959895))

(assert (not b!6959845))

(assert (not b!6959839))

(assert (not b!6959884))

(assert (not b!6959680))

(assert (not b!6959908))

(assert (not b!6959846))

(assert (not b!6959761))

(assert (not b!6959887))

(assert (not b!6959898))

(assert (not d!2169918))

(assert (not b!6959869))

(assert (not b!6959867))

(assert (not b!6959861))

(assert (not b!6959671))

(assert (not b!6959888))

(assert (not b!6959678))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

