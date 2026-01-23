; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!720018 () Bool)

(assert start!720018)

(declare-fun b!7380530 () Bool)

(declare-fun e!4417904 () Bool)

(declare-fun e!4417900 () Bool)

(assert (=> b!7380530 (= e!4417904 e!4417900)))

(declare-fun res!2976873 () Bool)

(assert (=> b!7380530 (=> (not res!2976873) (not e!4417900))))

(declare-datatypes ((C!38918 0))(
  ( (C!38919 (val!29819 Int)) )
))
(declare-datatypes ((Regex!19322 0))(
  ( (ElementMatch!19322 (c!1371802 C!38918)) (Concat!28167 (regOne!39156 Regex!19322) (regTwo!39156 Regex!19322)) (EmptyExpr!19322) (Star!19322 (reg!19651 Regex!19322)) (EmptyLang!19322) (Union!19322 (regOne!39157 Regex!19322) (regTwo!39157 Regex!19322)) )
))
(declare-fun lt!2616858 () Regex!19322)

(declare-fun validRegex!9918 (Regex!19322) Bool)

(assert (=> b!7380530 (= res!2976873 (validRegex!9918 lt!2616858))))

(declare-fun r1!2370 () Regex!19322)

(assert (=> b!7380530 (= lt!2616858 (Star!19322 (reg!19651 r1!2370)))))

(declare-fun b!7380531 () Bool)

(declare-fun e!4417905 () Bool)

(declare-fun nullable!8396 (Regex!19322) Bool)

(assert (=> b!7380531 (= e!4417905 (not (nullable!8396 (regOne!39156 r1!2370))))))

(declare-fun b!7380532 () Bool)

(declare-fun e!4417906 () Bool)

(declare-fun tp!2099330 () Bool)

(assert (=> b!7380532 (= e!4417906 tp!2099330)))

(declare-fun b!7380533 () Bool)

(declare-fun e!4417899 () Bool)

(declare-fun tp!2099324 () Bool)

(assert (=> b!7380533 (= e!4417899 tp!2099324)))

(declare-fun b!7380534 () Bool)

(declare-fun tp!2099329 () Bool)

(declare-fun tp!2099326 () Bool)

(assert (=> b!7380534 (= e!4417906 (and tp!2099329 tp!2099326))))

(declare-fun b!7380535 () Bool)

(declare-fun e!4417903 () Bool)

(declare-fun e!4417907 () Bool)

(assert (=> b!7380535 (= e!4417903 e!4417907)))

(declare-fun res!2976870 () Bool)

(assert (=> b!7380535 (=> (not res!2976870) (not e!4417907))))

(declare-datatypes ((List!71818 0))(
  ( (Nil!71694) (Cons!71694 (h!78142 Regex!19322) (t!386307 List!71818)) )
))
(declare-datatypes ((Context!16524 0))(
  ( (Context!16525 (exprs!8762 List!71818)) )
))
(declare-fun cWitness!61 () Context!16524)

(declare-fun lt!2616856 () (Set Context!16524))

(assert (=> b!7380535 (= res!2976870 (set.member cWitness!61 lt!2616856))))

(declare-fun c!10362 () C!38918)

(declare-fun ct1!282 () Context!16524)

(declare-fun derivationStepZipperDown!3148 (Regex!19322 Context!16524 C!38918) (Set Context!16524))

(assert (=> b!7380535 (= lt!2616856 (derivationStepZipperDown!3148 r1!2370 ct1!282 c!10362))))

(declare-fun b!7380536 () Bool)

(assert (=> b!7380536 (= e!4417907 e!4417904)))

(declare-fun res!2976876 () Bool)

(assert (=> b!7380536 (=> (not res!2976876) (not e!4417904))))

(assert (=> b!7380536 (= res!2976876 (and (or (not (is-ElementMatch!19322 r1!2370)) (not (= c!10362 (c!1371802 r1!2370)))) (not (is-Union!19322 r1!2370))))))

(declare-fun lt!2616859 () (Set Context!16524))

(declare-fun ct2!378 () Context!16524)

(declare-fun ++!17138 (List!71818 List!71818) List!71818)

(assert (=> b!7380536 (= lt!2616859 (derivationStepZipperDown!3148 r1!2370 (Context!16525 (++!17138 (exprs!8762 ct1!282) (exprs!8762 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165593 0))(
  ( (Unit!165594) )
))
(declare-fun lt!2616857 () Unit!165593)

(declare-fun lambda!458522 () Int)

(declare-fun lemmaConcatPreservesForall!1995 (List!71818 List!71818 Int) Unit!165593)

(assert (=> b!7380536 (= lt!2616857 (lemmaConcatPreservesForall!1995 (exprs!8762 ct1!282) (exprs!8762 ct2!378) lambda!458522))))

(declare-fun b!7380537 () Bool)

(declare-fun res!2976869 () Bool)

(assert (=> b!7380537 (=> (not res!2976869) (not e!4417904))))

(assert (=> b!7380537 (= res!2976869 (and (not (is-Concat!28167 r1!2370)) (is-Star!19322 r1!2370)))))

(declare-fun b!7380538 () Bool)

(declare-fun tp!2099331 () Bool)

(declare-fun tp!2099325 () Bool)

(assert (=> b!7380538 (= e!4417906 (and tp!2099331 tp!2099325))))

(declare-fun b!7380540 () Bool)

(assert (=> b!7380540 (= e!4417900 (not (validRegex!9918 (reg!19651 r1!2370))))))

(declare-fun b!7380541 () Bool)

(declare-fun res!2976872 () Bool)

(assert (=> b!7380541 (=> (not res!2976872) (not e!4417900))))

(declare-fun $colon$colon!3300 (List!71818 Regex!19322) List!71818)

(assert (=> b!7380541 (= res!2976872 (= lt!2616856 (derivationStepZipperDown!3148 (reg!19651 r1!2370) (Context!16525 ($colon$colon!3300 (exprs!8762 ct1!282) lt!2616858)) c!10362)))))

(declare-fun b!7380542 () Bool)

(declare-fun tp_is_empty!48889 () Bool)

(assert (=> b!7380542 (= e!4417906 tp_is_empty!48889)))

(declare-fun b!7380543 () Bool)

(declare-fun e!4417902 () Bool)

(declare-fun tp!2099328 () Bool)

(assert (=> b!7380543 (= e!4417902 tp!2099328)))

(declare-fun b!7380544 () Bool)

(declare-fun e!4417901 () Bool)

(declare-fun tp!2099327 () Bool)

(assert (=> b!7380544 (= e!4417901 tp!2099327)))

(declare-fun res!2976875 () Bool)

(assert (=> start!720018 (=> (not res!2976875) (not e!4417903))))

(assert (=> start!720018 (= res!2976875 (validRegex!9918 r1!2370))))

(assert (=> start!720018 e!4417903))

(assert (=> start!720018 tp_is_empty!48889))

(declare-fun inv!91646 (Context!16524) Bool)

(assert (=> start!720018 (and (inv!91646 cWitness!61) e!4417902)))

(assert (=> start!720018 (and (inv!91646 ct1!282) e!4417901)))

(assert (=> start!720018 e!4417906))

(assert (=> start!720018 (and (inv!91646 ct2!378) e!4417899)))

(declare-fun b!7380539 () Bool)

(declare-fun res!2976874 () Bool)

(assert (=> b!7380539 (=> (not res!2976874) (not e!4417904))))

(assert (=> b!7380539 (= res!2976874 e!4417905)))

(declare-fun res!2976871 () Bool)

(assert (=> b!7380539 (=> res!2976871 e!4417905)))

(assert (=> b!7380539 (= res!2976871 (not (is-Concat!28167 r1!2370)))))

(assert (= (and start!720018 res!2976875) b!7380535))

(assert (= (and b!7380535 res!2976870) b!7380536))

(assert (= (and b!7380536 res!2976876) b!7380539))

(assert (= (and b!7380539 (not res!2976871)) b!7380531))

(assert (= (and b!7380539 res!2976874) b!7380537))

(assert (= (and b!7380537 res!2976869) b!7380530))

(assert (= (and b!7380530 res!2976873) b!7380541))

(assert (= (and b!7380541 res!2976872) b!7380540))

(assert (= start!720018 b!7380543))

(assert (= start!720018 b!7380544))

(assert (= (and start!720018 (is-ElementMatch!19322 r1!2370)) b!7380542))

(assert (= (and start!720018 (is-Concat!28167 r1!2370)) b!7380534))

(assert (= (and start!720018 (is-Star!19322 r1!2370)) b!7380532))

(assert (= (and start!720018 (is-Union!19322 r1!2370)) b!7380538))

(assert (= start!720018 b!7380533))

(declare-fun m!8030710 () Bool)

(assert (=> b!7380540 m!8030710))

(declare-fun m!8030712 () Bool)

(assert (=> b!7380530 m!8030712))

(declare-fun m!8030714 () Bool)

(assert (=> b!7380531 m!8030714))

(declare-fun m!8030716 () Bool)

(assert (=> b!7380536 m!8030716))

(declare-fun m!8030718 () Bool)

(assert (=> b!7380536 m!8030718))

(declare-fun m!8030720 () Bool)

(assert (=> b!7380536 m!8030720))

(declare-fun m!8030722 () Bool)

(assert (=> start!720018 m!8030722))

(declare-fun m!8030724 () Bool)

(assert (=> start!720018 m!8030724))

(declare-fun m!8030726 () Bool)

(assert (=> start!720018 m!8030726))

(declare-fun m!8030728 () Bool)

(assert (=> start!720018 m!8030728))

(declare-fun m!8030730 () Bool)

(assert (=> b!7380541 m!8030730))

(declare-fun m!8030732 () Bool)

(assert (=> b!7380541 m!8030732))

(declare-fun m!8030734 () Bool)

(assert (=> b!7380535 m!8030734))

(declare-fun m!8030736 () Bool)

(assert (=> b!7380535 m!8030736))

(push 1)

(assert (not start!720018))

(assert tp_is_empty!48889)

(assert (not b!7380531))

(assert (not b!7380544))

(assert (not b!7380532))

(assert (not b!7380538))

(assert (not b!7380536))

(assert (not b!7380533))

(assert (not b!7380530))

(assert (not b!7380541))

(assert (not b!7380543))

(assert (not b!7380535))

(assert (not b!7380534))

(assert (not b!7380540))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7380608 () Bool)

(declare-fun e!4417951 () Bool)

(declare-fun call!678953 () Bool)

(assert (=> b!7380608 (= e!4417951 call!678953)))

(declare-fun b!7380609 () Bool)

(declare-fun res!2976913 () Bool)

(declare-fun e!4417955 () Bool)

(assert (=> b!7380609 (=> res!2976913 e!4417955)))

(assert (=> b!7380609 (= res!2976913 (not (is-Concat!28167 r1!2370)))))

(declare-fun e!4417953 () Bool)

(assert (=> b!7380609 (= e!4417953 e!4417955)))

(declare-fun b!7380610 () Bool)

(declare-fun e!4417950 () Bool)

(declare-fun call!678954 () Bool)

(assert (=> b!7380610 (= e!4417950 call!678954)))

(declare-fun b!7380611 () Bool)

(declare-fun e!4417949 () Bool)

(assert (=> b!7380611 (= e!4417949 e!4417953)))

(declare-fun c!1371809 () Bool)

(assert (=> b!7380611 (= c!1371809 (is-Union!19322 r1!2370))))

(declare-fun d!2285552 () Bool)

(declare-fun res!2976915 () Bool)

(declare-fun e!4417952 () Bool)

(assert (=> d!2285552 (=> res!2976915 e!4417952)))

(assert (=> d!2285552 (= res!2976915 (is-ElementMatch!19322 r1!2370))))

(assert (=> d!2285552 (= (validRegex!9918 r1!2370) e!4417952)))

(declare-fun b!7380612 () Bool)

(assert (=> b!7380612 (= e!4417949 e!4417950)))

(declare-fun res!2976912 () Bool)

(assert (=> b!7380612 (= res!2976912 (not (nullable!8396 (reg!19651 r1!2370))))))

(assert (=> b!7380612 (=> (not res!2976912) (not e!4417950))))

(declare-fun b!7380613 () Bool)

(declare-fun e!4417954 () Bool)

(declare-fun call!678952 () Bool)

(assert (=> b!7380613 (= e!4417954 call!678952)))

(declare-fun bm!678947 () Bool)

(declare-fun c!1371808 () Bool)

(assert (=> bm!678947 (= call!678954 (validRegex!9918 (ite c!1371808 (reg!19651 r1!2370) (ite c!1371809 (regOne!39157 r1!2370) (regTwo!39156 r1!2370)))))))

(declare-fun b!7380614 () Bool)

(assert (=> b!7380614 (= e!4417952 e!4417949)))

(assert (=> b!7380614 (= c!1371808 (is-Star!19322 r1!2370))))

(declare-fun bm!678948 () Bool)

(assert (=> bm!678948 (= call!678953 (validRegex!9918 (ite c!1371809 (regTwo!39157 r1!2370) (regOne!39156 r1!2370))))))

(declare-fun b!7380615 () Bool)

(declare-fun res!2976911 () Bool)

(assert (=> b!7380615 (=> (not res!2976911) (not e!4417951))))

(assert (=> b!7380615 (= res!2976911 call!678952)))

(assert (=> b!7380615 (= e!4417953 e!4417951)))

(declare-fun b!7380616 () Bool)

(assert (=> b!7380616 (= e!4417955 e!4417954)))

(declare-fun res!2976914 () Bool)

(assert (=> b!7380616 (=> (not res!2976914) (not e!4417954))))

(assert (=> b!7380616 (= res!2976914 call!678953)))

(declare-fun bm!678949 () Bool)

(assert (=> bm!678949 (= call!678952 call!678954)))

(assert (= (and d!2285552 (not res!2976915)) b!7380614))

(assert (= (and b!7380614 c!1371808) b!7380612))

(assert (= (and b!7380614 (not c!1371808)) b!7380611))

(assert (= (and b!7380612 res!2976912) b!7380610))

(assert (= (and b!7380611 c!1371809) b!7380615))

(assert (= (and b!7380611 (not c!1371809)) b!7380609))

(assert (= (and b!7380615 res!2976911) b!7380608))

(assert (= (and b!7380609 (not res!2976913)) b!7380616))

(assert (= (and b!7380616 res!2976914) b!7380613))

(assert (= (or b!7380615 b!7380613) bm!678949))

(assert (= (or b!7380608 b!7380616) bm!678948))

(assert (= (or b!7380610 bm!678949) bm!678947))

(declare-fun m!8030766 () Bool)

(assert (=> b!7380612 m!8030766))

(declare-fun m!8030768 () Bool)

(assert (=> bm!678947 m!8030768))

(declare-fun m!8030770 () Bool)

(assert (=> bm!678948 m!8030770))

(assert (=> start!720018 d!2285552))

(declare-fun bs!1921560 () Bool)

(declare-fun d!2285554 () Bool)

(assert (= bs!1921560 (and d!2285554 b!7380536)))

(declare-fun lambda!458528 () Int)

(assert (=> bs!1921560 (= lambda!458528 lambda!458522)))

(declare-fun forall!18110 (List!71818 Int) Bool)

(assert (=> d!2285554 (= (inv!91646 cWitness!61) (forall!18110 (exprs!8762 cWitness!61) lambda!458528))))

(declare-fun bs!1921561 () Bool)

(assert (= bs!1921561 d!2285554))

(declare-fun m!8030772 () Bool)

(assert (=> bs!1921561 m!8030772))

(assert (=> start!720018 d!2285554))

(declare-fun bs!1921562 () Bool)

(declare-fun d!2285556 () Bool)

(assert (= bs!1921562 (and d!2285556 b!7380536)))

(declare-fun lambda!458529 () Int)

(assert (=> bs!1921562 (= lambda!458529 lambda!458522)))

(declare-fun bs!1921563 () Bool)

(assert (= bs!1921563 (and d!2285556 d!2285554)))

(assert (=> bs!1921563 (= lambda!458529 lambda!458528)))

(assert (=> d!2285556 (= (inv!91646 ct1!282) (forall!18110 (exprs!8762 ct1!282) lambda!458529))))

(declare-fun bs!1921564 () Bool)

(assert (= bs!1921564 d!2285556))

(declare-fun m!8030774 () Bool)

(assert (=> bs!1921564 m!8030774))

(assert (=> start!720018 d!2285556))

(declare-fun bs!1921565 () Bool)

(declare-fun d!2285558 () Bool)

(assert (= bs!1921565 (and d!2285558 b!7380536)))

(declare-fun lambda!458530 () Int)

(assert (=> bs!1921565 (= lambda!458530 lambda!458522)))

(declare-fun bs!1921566 () Bool)

(assert (= bs!1921566 (and d!2285558 d!2285554)))

(assert (=> bs!1921566 (= lambda!458530 lambda!458528)))

(declare-fun bs!1921567 () Bool)

(assert (= bs!1921567 (and d!2285558 d!2285556)))

(assert (=> bs!1921567 (= lambda!458530 lambda!458529)))

(assert (=> d!2285558 (= (inv!91646 ct2!378) (forall!18110 (exprs!8762 ct2!378) lambda!458530))))

(declare-fun bs!1921568 () Bool)

(assert (= bs!1921568 d!2285558))

(declare-fun m!8030776 () Bool)

(assert (=> bs!1921568 m!8030776))

(assert (=> start!720018 d!2285558))

(declare-fun b!7380617 () Bool)

(declare-fun e!4417958 () Bool)

(declare-fun call!678956 () Bool)

(assert (=> b!7380617 (= e!4417958 call!678956)))

(declare-fun b!7380618 () Bool)

(declare-fun res!2976918 () Bool)

(declare-fun e!4417962 () Bool)

(assert (=> b!7380618 (=> res!2976918 e!4417962)))

(assert (=> b!7380618 (= res!2976918 (not (is-Concat!28167 lt!2616858)))))

(declare-fun e!4417960 () Bool)

(assert (=> b!7380618 (= e!4417960 e!4417962)))

(declare-fun b!7380619 () Bool)

(declare-fun e!4417957 () Bool)

(declare-fun call!678957 () Bool)

(assert (=> b!7380619 (= e!4417957 call!678957)))

(declare-fun b!7380620 () Bool)

(declare-fun e!4417956 () Bool)

(assert (=> b!7380620 (= e!4417956 e!4417960)))

(declare-fun c!1371811 () Bool)

(assert (=> b!7380620 (= c!1371811 (is-Union!19322 lt!2616858))))

(declare-fun d!2285560 () Bool)

(declare-fun res!2976920 () Bool)

(declare-fun e!4417959 () Bool)

(assert (=> d!2285560 (=> res!2976920 e!4417959)))

(assert (=> d!2285560 (= res!2976920 (is-ElementMatch!19322 lt!2616858))))

(assert (=> d!2285560 (= (validRegex!9918 lt!2616858) e!4417959)))

(declare-fun b!7380621 () Bool)

(assert (=> b!7380621 (= e!4417956 e!4417957)))

(declare-fun res!2976917 () Bool)

(assert (=> b!7380621 (= res!2976917 (not (nullable!8396 (reg!19651 lt!2616858))))))

(assert (=> b!7380621 (=> (not res!2976917) (not e!4417957))))

(declare-fun b!7380622 () Bool)

(declare-fun e!4417961 () Bool)

(declare-fun call!678955 () Bool)

(assert (=> b!7380622 (= e!4417961 call!678955)))

(declare-fun bm!678950 () Bool)

(declare-fun c!1371810 () Bool)

(assert (=> bm!678950 (= call!678957 (validRegex!9918 (ite c!1371810 (reg!19651 lt!2616858) (ite c!1371811 (regOne!39157 lt!2616858) (regTwo!39156 lt!2616858)))))))

(declare-fun b!7380623 () Bool)

(assert (=> b!7380623 (= e!4417959 e!4417956)))

(assert (=> b!7380623 (= c!1371810 (is-Star!19322 lt!2616858))))

(declare-fun bm!678951 () Bool)

(assert (=> bm!678951 (= call!678956 (validRegex!9918 (ite c!1371811 (regTwo!39157 lt!2616858) (regOne!39156 lt!2616858))))))

(declare-fun b!7380624 () Bool)

(declare-fun res!2976916 () Bool)

(assert (=> b!7380624 (=> (not res!2976916) (not e!4417958))))

(assert (=> b!7380624 (= res!2976916 call!678955)))

(assert (=> b!7380624 (= e!4417960 e!4417958)))

(declare-fun b!7380625 () Bool)

(assert (=> b!7380625 (= e!4417962 e!4417961)))

(declare-fun res!2976919 () Bool)

(assert (=> b!7380625 (=> (not res!2976919) (not e!4417961))))

(assert (=> b!7380625 (= res!2976919 call!678956)))

(declare-fun bm!678952 () Bool)

(assert (=> bm!678952 (= call!678955 call!678957)))

(assert (= (and d!2285560 (not res!2976920)) b!7380623))

(assert (= (and b!7380623 c!1371810) b!7380621))

(assert (= (and b!7380623 (not c!1371810)) b!7380620))

(assert (= (and b!7380621 res!2976917) b!7380619))

(assert (= (and b!7380620 c!1371811) b!7380624))

(assert (= (and b!7380620 (not c!1371811)) b!7380618))

(assert (= (and b!7380624 res!2976916) b!7380617))

(assert (= (and b!7380618 (not res!2976918)) b!7380625))

(assert (= (and b!7380625 res!2976919) b!7380622))

(assert (= (or b!7380624 b!7380622) bm!678952))

(assert (= (or b!7380617 b!7380625) bm!678951))

(assert (= (or b!7380619 bm!678952) bm!678950))

(declare-fun m!8030778 () Bool)

(assert (=> b!7380621 m!8030778))

(declare-fun m!8030780 () Bool)

(assert (=> bm!678950 m!8030780))

(declare-fun m!8030782 () Bool)

(assert (=> bm!678951 m!8030782))

(assert (=> b!7380530 d!2285560))

(declare-fun b!7380648 () Bool)

(declare-fun e!4417977 () Bool)

(assert (=> b!7380648 (= e!4417977 (nullable!8396 (regOne!39156 r1!2370)))))

(declare-fun b!7380649 () Bool)

(declare-fun e!4417976 () (Set Context!16524))

(declare-fun call!678973 () (Set Context!16524))

(declare-fun call!678975 () (Set Context!16524))

(assert (=> b!7380649 (= e!4417976 (set.union call!678973 call!678975))))

(declare-fun c!1371822 () Bool)

(declare-fun bm!678965 () Bool)

(declare-fun call!678970 () List!71818)

(assert (=> bm!678965 (= call!678973 (derivationStepZipperDown!3148 (ite c!1371822 (regOne!39157 r1!2370) (regOne!39156 r1!2370)) (ite c!1371822 ct1!282 (Context!16525 call!678970)) c!10362))))

(declare-fun d!2285562 () Bool)

(declare-fun c!1371826 () Bool)

(assert (=> d!2285562 (= c!1371826 (and (is-ElementMatch!19322 r1!2370) (= (c!1371802 r1!2370) c!10362)))))

(declare-fun e!4417978 () (Set Context!16524))

(assert (=> d!2285562 (= (derivationStepZipperDown!3148 r1!2370 ct1!282 c!10362) e!4417978)))

(declare-fun bm!678966 () Bool)

(declare-fun c!1371823 () Bool)

(declare-fun c!1371824 () Bool)

(assert (=> bm!678966 (= call!678970 ($colon$colon!3300 (exprs!8762 ct1!282) (ite (or c!1371823 c!1371824) (regTwo!39156 r1!2370) r1!2370)))))

(declare-fun b!7380650 () Bool)

(declare-fun e!4417975 () (Set Context!16524))

(assert (=> b!7380650 (= e!4417978 e!4417975)))

(assert (=> b!7380650 (= c!1371822 (is-Union!19322 r1!2370))))

(declare-fun b!7380651 () Bool)

(declare-fun call!678974 () (Set Context!16524))

(assert (=> b!7380651 (= e!4417975 (set.union call!678973 call!678974))))

(declare-fun b!7380652 () Bool)

(assert (=> b!7380652 (= c!1371823 e!4417977)))

(declare-fun res!2976923 () Bool)

(assert (=> b!7380652 (=> (not res!2976923) (not e!4417977))))

(assert (=> b!7380652 (= res!2976923 (is-Concat!28167 r1!2370))))

(assert (=> b!7380652 (= e!4417975 e!4417976)))

(declare-fun b!7380653 () Bool)

(assert (=> b!7380653 (= e!4417978 (set.insert ct1!282 (as set.empty (Set Context!16524))))))

(declare-fun bm!678967 () Bool)

(declare-fun call!678971 () List!71818)

(assert (=> bm!678967 (= call!678971 call!678970)))

(declare-fun b!7380654 () Bool)

(declare-fun e!4417979 () (Set Context!16524))

(declare-fun call!678972 () (Set Context!16524))

(assert (=> b!7380654 (= e!4417979 call!678972)))

(declare-fun b!7380655 () Bool)

(declare-fun e!4417980 () (Set Context!16524))

(assert (=> b!7380655 (= e!4417980 call!678972)))

(declare-fun bm!678968 () Bool)

(assert (=> bm!678968 (= call!678975 call!678974)))

(declare-fun bm!678969 () Bool)

(assert (=> bm!678969 (= call!678972 call!678975)))

(declare-fun b!7380656 () Bool)

(assert (=> b!7380656 (= e!4417976 e!4417980)))

(assert (=> b!7380656 (= c!1371824 (is-Concat!28167 r1!2370))))

(declare-fun b!7380657 () Bool)

(assert (=> b!7380657 (= e!4417979 (as set.empty (Set Context!16524)))))

(declare-fun b!7380658 () Bool)

(declare-fun c!1371825 () Bool)

(assert (=> b!7380658 (= c!1371825 (is-Star!19322 r1!2370))))

(assert (=> b!7380658 (= e!4417980 e!4417979)))

(declare-fun bm!678970 () Bool)

(assert (=> bm!678970 (= call!678974 (derivationStepZipperDown!3148 (ite c!1371822 (regTwo!39157 r1!2370) (ite c!1371823 (regTwo!39156 r1!2370) (ite c!1371824 (regOne!39156 r1!2370) (reg!19651 r1!2370)))) (ite (or c!1371822 c!1371823) ct1!282 (Context!16525 call!678971)) c!10362))))

(assert (= (and d!2285562 c!1371826) b!7380653))

(assert (= (and d!2285562 (not c!1371826)) b!7380650))

(assert (= (and b!7380650 c!1371822) b!7380651))

(assert (= (and b!7380650 (not c!1371822)) b!7380652))

(assert (= (and b!7380652 res!2976923) b!7380648))

(assert (= (and b!7380652 c!1371823) b!7380649))

(assert (= (and b!7380652 (not c!1371823)) b!7380656))

(assert (= (and b!7380656 c!1371824) b!7380655))

(assert (= (and b!7380656 (not c!1371824)) b!7380658))

(assert (= (and b!7380658 c!1371825) b!7380654))

(assert (= (and b!7380658 (not c!1371825)) b!7380657))

(assert (= (or b!7380655 b!7380654) bm!678967))

(assert (= (or b!7380655 b!7380654) bm!678969))

(assert (= (or b!7380649 bm!678969) bm!678968))

(assert (= (or b!7380649 bm!678967) bm!678966))

(assert (= (or b!7380651 bm!678968) bm!678970))

(assert (= (or b!7380651 b!7380649) bm!678965))

(assert (=> b!7380648 m!8030714))

(declare-fun m!8030784 () Bool)

(assert (=> b!7380653 m!8030784))

(declare-fun m!8030786 () Bool)

(assert (=> bm!678970 m!8030786))

(declare-fun m!8030788 () Bool)

(assert (=> bm!678965 m!8030788))

(declare-fun m!8030790 () Bool)

(assert (=> bm!678966 m!8030790))

(assert (=> b!7380535 d!2285562))

(declare-fun b!7380663 () Bool)

(declare-fun e!4417985 () Bool)

(assert (=> b!7380663 (= e!4417985 (nullable!8396 (regOne!39156 r1!2370)))))

(declare-fun b!7380664 () Bool)

(declare-fun e!4417984 () (Set Context!16524))

(declare-fun call!678979 () (Set Context!16524))

(declare-fun call!678981 () (Set Context!16524))

(assert (=> b!7380664 (= e!4417984 (set.union call!678979 call!678981))))

(declare-fun call!678976 () List!71818)

(declare-fun bm!678971 () Bool)

(declare-fun c!1371829 () Bool)

(assert (=> bm!678971 (= call!678979 (derivationStepZipperDown!3148 (ite c!1371829 (regOne!39157 r1!2370) (regOne!39156 r1!2370)) (ite c!1371829 (Context!16525 (++!17138 (exprs!8762 ct1!282) (exprs!8762 ct2!378))) (Context!16525 call!678976)) c!10362))))

(declare-fun d!2285566 () Bool)

(declare-fun c!1371833 () Bool)

(assert (=> d!2285566 (= c!1371833 (and (is-ElementMatch!19322 r1!2370) (= (c!1371802 r1!2370) c!10362)))))

(declare-fun e!4417986 () (Set Context!16524))

(assert (=> d!2285566 (= (derivationStepZipperDown!3148 r1!2370 (Context!16525 (++!17138 (exprs!8762 ct1!282) (exprs!8762 ct2!378))) c!10362) e!4417986)))

(declare-fun c!1371831 () Bool)

(declare-fun bm!678972 () Bool)

(declare-fun c!1371830 () Bool)

(assert (=> bm!678972 (= call!678976 ($colon$colon!3300 (exprs!8762 (Context!16525 (++!17138 (exprs!8762 ct1!282) (exprs!8762 ct2!378)))) (ite (or c!1371830 c!1371831) (regTwo!39156 r1!2370) r1!2370)))))

(declare-fun b!7380665 () Bool)

(declare-fun e!4417983 () (Set Context!16524))

(assert (=> b!7380665 (= e!4417986 e!4417983)))

(assert (=> b!7380665 (= c!1371829 (is-Union!19322 r1!2370))))

(declare-fun b!7380666 () Bool)

(declare-fun call!678980 () (Set Context!16524))

(assert (=> b!7380666 (= e!4417983 (set.union call!678979 call!678980))))

(declare-fun b!7380667 () Bool)

(assert (=> b!7380667 (= c!1371830 e!4417985)))

(declare-fun res!2976924 () Bool)

(assert (=> b!7380667 (=> (not res!2976924) (not e!4417985))))

(assert (=> b!7380667 (= res!2976924 (is-Concat!28167 r1!2370))))

(assert (=> b!7380667 (= e!4417983 e!4417984)))

(declare-fun b!7380668 () Bool)

(assert (=> b!7380668 (= e!4417986 (set.insert (Context!16525 (++!17138 (exprs!8762 ct1!282) (exprs!8762 ct2!378))) (as set.empty (Set Context!16524))))))

(declare-fun bm!678973 () Bool)

(declare-fun call!678977 () List!71818)

(assert (=> bm!678973 (= call!678977 call!678976)))

(declare-fun b!7380669 () Bool)

(declare-fun e!4417987 () (Set Context!16524))

(declare-fun call!678978 () (Set Context!16524))

(assert (=> b!7380669 (= e!4417987 call!678978)))

(declare-fun b!7380670 () Bool)

(declare-fun e!4417988 () (Set Context!16524))

(assert (=> b!7380670 (= e!4417988 call!678978)))

(declare-fun bm!678974 () Bool)

(assert (=> bm!678974 (= call!678981 call!678980)))

(declare-fun bm!678975 () Bool)

(assert (=> bm!678975 (= call!678978 call!678981)))

(declare-fun b!7380675 () Bool)

(assert (=> b!7380675 (= e!4417984 e!4417988)))

(assert (=> b!7380675 (= c!1371831 (is-Concat!28167 r1!2370))))

(declare-fun b!7380676 () Bool)

(assert (=> b!7380676 (= e!4417987 (as set.empty (Set Context!16524)))))

(declare-fun b!7380677 () Bool)

(declare-fun c!1371832 () Bool)

(assert (=> b!7380677 (= c!1371832 (is-Star!19322 r1!2370))))

(assert (=> b!7380677 (= e!4417988 e!4417987)))

(declare-fun bm!678976 () Bool)

(assert (=> bm!678976 (= call!678980 (derivationStepZipperDown!3148 (ite c!1371829 (regTwo!39157 r1!2370) (ite c!1371830 (regTwo!39156 r1!2370) (ite c!1371831 (regOne!39156 r1!2370) (reg!19651 r1!2370)))) (ite (or c!1371829 c!1371830) (Context!16525 (++!17138 (exprs!8762 ct1!282) (exprs!8762 ct2!378))) (Context!16525 call!678977)) c!10362))))

(assert (= (and d!2285566 c!1371833) b!7380668))

(assert (= (and d!2285566 (not c!1371833)) b!7380665))

(assert (= (and b!7380665 c!1371829) b!7380666))

(assert (= (and b!7380665 (not c!1371829)) b!7380667))

(assert (= (and b!7380667 res!2976924) b!7380663))

(assert (= (and b!7380667 c!1371830) b!7380664))

(assert (= (and b!7380667 (not c!1371830)) b!7380675))

(assert (= (and b!7380675 c!1371831) b!7380670))

(assert (= (and b!7380675 (not c!1371831)) b!7380677))

(assert (= (and b!7380677 c!1371832) b!7380669))

(assert (= (and b!7380677 (not c!1371832)) b!7380676))

(assert (= (or b!7380670 b!7380669) bm!678973))

(assert (= (or b!7380670 b!7380669) bm!678975))

(assert (= (or b!7380664 bm!678975) bm!678974))

(assert (= (or b!7380664 bm!678973) bm!678972))

(assert (= (or b!7380666 bm!678974) bm!678976))

(assert (= (or b!7380666 b!7380664) bm!678971))

(assert (=> b!7380663 m!8030714))

(declare-fun m!8030792 () Bool)

(assert (=> b!7380668 m!8030792))

(declare-fun m!8030794 () Bool)

(assert (=> bm!678976 m!8030794))

(declare-fun m!8030796 () Bool)

(assert (=> bm!678971 m!8030796))

(declare-fun m!8030798 () Bool)

(assert (=> bm!678972 m!8030798))

(assert (=> b!7380536 d!2285566))

(declare-fun lt!2616874 () List!71818)

(declare-fun b!7380703 () Bool)

(declare-fun e!4418004 () Bool)

(assert (=> b!7380703 (= e!4418004 (or (not (= (exprs!8762 ct2!378) Nil!71694)) (= lt!2616874 (exprs!8762 ct1!282))))))

(declare-fun b!7380701 () Bool)

(declare-fun e!4418003 () List!71818)

(assert (=> b!7380701 (= e!4418003 (Cons!71694 (h!78142 (exprs!8762 ct1!282)) (++!17138 (t!386307 (exprs!8762 ct1!282)) (exprs!8762 ct2!378))))))

(declare-fun b!7380700 () Bool)

(assert (=> b!7380700 (= e!4418003 (exprs!8762 ct2!378))))

(declare-fun d!2285568 () Bool)

(assert (=> d!2285568 e!4418004))

(declare-fun res!2976931 () Bool)

(assert (=> d!2285568 (=> (not res!2976931) (not e!4418004))))

(declare-fun content!15183 (List!71818) (Set Regex!19322))

(assert (=> d!2285568 (= res!2976931 (= (content!15183 lt!2616874) (set.union (content!15183 (exprs!8762 ct1!282)) (content!15183 (exprs!8762 ct2!378)))))))

(assert (=> d!2285568 (= lt!2616874 e!4418003)))

(declare-fun c!1371844 () Bool)

(assert (=> d!2285568 (= c!1371844 (is-Nil!71694 (exprs!8762 ct1!282)))))

(assert (=> d!2285568 (= (++!17138 (exprs!8762 ct1!282) (exprs!8762 ct2!378)) lt!2616874)))

(declare-fun b!7380702 () Bool)

(declare-fun res!2976932 () Bool)

(assert (=> b!7380702 (=> (not res!2976932) (not e!4418004))))

(declare-fun size!42161 (List!71818) Int)

(assert (=> b!7380702 (= res!2976932 (= (size!42161 lt!2616874) (+ (size!42161 (exprs!8762 ct1!282)) (size!42161 (exprs!8762 ct2!378)))))))

(assert (= (and d!2285568 c!1371844) b!7380700))

(assert (= (and d!2285568 (not c!1371844)) b!7380701))

(assert (= (and d!2285568 res!2976931) b!7380702))

(assert (= (and b!7380702 res!2976932) b!7380703))

(declare-fun m!8030800 () Bool)

(assert (=> b!7380701 m!8030800))

(declare-fun m!8030802 () Bool)

(assert (=> d!2285568 m!8030802))

(declare-fun m!8030804 () Bool)

(assert (=> d!2285568 m!8030804))

(declare-fun m!8030806 () Bool)

(assert (=> d!2285568 m!8030806))

(declare-fun m!8030808 () Bool)

(assert (=> b!7380702 m!8030808))

(declare-fun m!8030810 () Bool)

(assert (=> b!7380702 m!8030810))

(declare-fun m!8030812 () Bool)

(assert (=> b!7380702 m!8030812))

(assert (=> b!7380536 d!2285568))

(declare-fun d!2285570 () Bool)

(assert (=> d!2285570 (forall!18110 (++!17138 (exprs!8762 ct1!282) (exprs!8762 ct2!378)) lambda!458522)))

(declare-fun lt!2616877 () Unit!165593)

(declare-fun choose!57343 (List!71818 List!71818 Int) Unit!165593)

(assert (=> d!2285570 (= lt!2616877 (choose!57343 (exprs!8762 ct1!282) (exprs!8762 ct2!378) lambda!458522))))

(assert (=> d!2285570 (forall!18110 (exprs!8762 ct1!282) lambda!458522)))

(assert (=> d!2285570 (= (lemmaConcatPreservesForall!1995 (exprs!8762 ct1!282) (exprs!8762 ct2!378) lambda!458522) lt!2616877)))

(declare-fun bs!1921569 () Bool)

(assert (= bs!1921569 d!2285570))

(assert (=> bs!1921569 m!8030716))

(assert (=> bs!1921569 m!8030716))

(declare-fun m!8030814 () Bool)

(assert (=> bs!1921569 m!8030814))

(declare-fun m!8030816 () Bool)

(assert (=> bs!1921569 m!8030816))

(declare-fun m!8030818 () Bool)

(assert (=> bs!1921569 m!8030818))

(assert (=> b!7380536 d!2285570))

(declare-fun b!7380704 () Bool)

(declare-fun e!4418007 () Bool)

(assert (=> b!7380704 (= e!4418007 (nullable!8396 (regOne!39156 (reg!19651 r1!2370))))))

(declare-fun b!7380705 () Bool)

(declare-fun e!4418006 () (Set Context!16524))

(declare-fun call!678997 () (Set Context!16524))

(declare-fun call!678999 () (Set Context!16524))

(assert (=> b!7380705 (= e!4418006 (set.union call!678997 call!678999))))

(declare-fun call!678994 () List!71818)

(declare-fun bm!678989 () Bool)

(declare-fun c!1371845 () Bool)

(assert (=> bm!678989 (= call!678997 (derivationStepZipperDown!3148 (ite c!1371845 (regOne!39157 (reg!19651 r1!2370)) (regOne!39156 (reg!19651 r1!2370))) (ite c!1371845 (Context!16525 ($colon$colon!3300 (exprs!8762 ct1!282) lt!2616858)) (Context!16525 call!678994)) c!10362))))

(declare-fun d!2285572 () Bool)

(declare-fun c!1371849 () Bool)

(assert (=> d!2285572 (= c!1371849 (and (is-ElementMatch!19322 (reg!19651 r1!2370)) (= (c!1371802 (reg!19651 r1!2370)) c!10362)))))

(declare-fun e!4418008 () (Set Context!16524))

(assert (=> d!2285572 (= (derivationStepZipperDown!3148 (reg!19651 r1!2370) (Context!16525 ($colon$colon!3300 (exprs!8762 ct1!282) lt!2616858)) c!10362) e!4418008)))

(declare-fun bm!678990 () Bool)

(declare-fun c!1371847 () Bool)

(declare-fun c!1371846 () Bool)

(assert (=> bm!678990 (= call!678994 ($colon$colon!3300 (exprs!8762 (Context!16525 ($colon$colon!3300 (exprs!8762 ct1!282) lt!2616858))) (ite (or c!1371846 c!1371847) (regTwo!39156 (reg!19651 r1!2370)) (reg!19651 r1!2370))))))

(declare-fun b!7380706 () Bool)

(declare-fun e!4418005 () (Set Context!16524))

(assert (=> b!7380706 (= e!4418008 e!4418005)))

(assert (=> b!7380706 (= c!1371845 (is-Union!19322 (reg!19651 r1!2370)))))

(declare-fun b!7380707 () Bool)

(declare-fun call!678998 () (Set Context!16524))

(assert (=> b!7380707 (= e!4418005 (set.union call!678997 call!678998))))

(declare-fun b!7380708 () Bool)

(assert (=> b!7380708 (= c!1371846 e!4418007)))

(declare-fun res!2976933 () Bool)

(assert (=> b!7380708 (=> (not res!2976933) (not e!4418007))))

(assert (=> b!7380708 (= res!2976933 (is-Concat!28167 (reg!19651 r1!2370)))))

(assert (=> b!7380708 (= e!4418005 e!4418006)))

(declare-fun b!7380709 () Bool)

(assert (=> b!7380709 (= e!4418008 (set.insert (Context!16525 ($colon$colon!3300 (exprs!8762 ct1!282) lt!2616858)) (as set.empty (Set Context!16524))))))

(declare-fun bm!678991 () Bool)

(declare-fun call!678995 () List!71818)

(assert (=> bm!678991 (= call!678995 call!678994)))

(declare-fun b!7380710 () Bool)

(declare-fun e!4418009 () (Set Context!16524))

(declare-fun call!678996 () (Set Context!16524))

(assert (=> b!7380710 (= e!4418009 call!678996)))

(declare-fun b!7380711 () Bool)

(declare-fun e!4418010 () (Set Context!16524))

(assert (=> b!7380711 (= e!4418010 call!678996)))

(declare-fun bm!678992 () Bool)

(assert (=> bm!678992 (= call!678999 call!678998)))

(declare-fun bm!678993 () Bool)

(assert (=> bm!678993 (= call!678996 call!678999)))

(declare-fun b!7380712 () Bool)

(assert (=> b!7380712 (= e!4418006 e!4418010)))

(assert (=> b!7380712 (= c!1371847 (is-Concat!28167 (reg!19651 r1!2370)))))

(declare-fun b!7380713 () Bool)

(assert (=> b!7380713 (= e!4418009 (as set.empty (Set Context!16524)))))

(declare-fun b!7380714 () Bool)

(declare-fun c!1371848 () Bool)

(assert (=> b!7380714 (= c!1371848 (is-Star!19322 (reg!19651 r1!2370)))))

(assert (=> b!7380714 (= e!4418010 e!4418009)))

(declare-fun bm!678994 () Bool)

(assert (=> bm!678994 (= call!678998 (derivationStepZipperDown!3148 (ite c!1371845 (regTwo!39157 (reg!19651 r1!2370)) (ite c!1371846 (regTwo!39156 (reg!19651 r1!2370)) (ite c!1371847 (regOne!39156 (reg!19651 r1!2370)) (reg!19651 (reg!19651 r1!2370))))) (ite (or c!1371845 c!1371846) (Context!16525 ($colon$colon!3300 (exprs!8762 ct1!282) lt!2616858)) (Context!16525 call!678995)) c!10362))))

(assert (= (and d!2285572 c!1371849) b!7380709))

(assert (= (and d!2285572 (not c!1371849)) b!7380706))

(assert (= (and b!7380706 c!1371845) b!7380707))

(assert (= (and b!7380706 (not c!1371845)) b!7380708))

(assert (= (and b!7380708 res!2976933) b!7380704))

(assert (= (and b!7380708 c!1371846) b!7380705))

(assert (= (and b!7380708 (not c!1371846)) b!7380712))

(assert (= (and b!7380712 c!1371847) b!7380711))

(assert (= (and b!7380712 (not c!1371847)) b!7380714))

(assert (= (and b!7380714 c!1371848) b!7380710))

(assert (= (and b!7380714 (not c!1371848)) b!7380713))

(assert (= (or b!7380711 b!7380710) bm!678991))

(assert (= (or b!7380711 b!7380710) bm!678993))

(assert (= (or b!7380705 bm!678993) bm!678992))

(assert (= (or b!7380705 bm!678991) bm!678990))

(assert (= (or b!7380707 bm!678992) bm!678994))

(assert (= (or b!7380707 b!7380705) bm!678989))

(declare-fun m!8030820 () Bool)

(assert (=> b!7380704 m!8030820))

(declare-fun m!8030822 () Bool)

(assert (=> b!7380709 m!8030822))

(declare-fun m!8030824 () Bool)

(assert (=> bm!678994 m!8030824))

(declare-fun m!8030826 () Bool)

(assert (=> bm!678989 m!8030826))

(declare-fun m!8030828 () Bool)

(assert (=> bm!678990 m!8030828))

(assert (=> b!7380541 d!2285572))

(declare-fun d!2285574 () Bool)

(assert (=> d!2285574 (= ($colon$colon!3300 (exprs!8762 ct1!282) lt!2616858) (Cons!71694 lt!2616858 (exprs!8762 ct1!282)))))

(assert (=> b!7380541 d!2285574))

(declare-fun b!7380715 () Bool)

(declare-fun e!4418013 () Bool)

(declare-fun call!679001 () Bool)

(assert (=> b!7380715 (= e!4418013 call!679001)))

(declare-fun b!7380716 () Bool)

(declare-fun res!2976936 () Bool)

(declare-fun e!4418017 () Bool)

(assert (=> b!7380716 (=> res!2976936 e!4418017)))

(assert (=> b!7380716 (= res!2976936 (not (is-Concat!28167 (reg!19651 r1!2370))))))

(declare-fun e!4418015 () Bool)

(assert (=> b!7380716 (= e!4418015 e!4418017)))

(declare-fun b!7380717 () Bool)

(declare-fun e!4418012 () Bool)

(declare-fun call!679002 () Bool)

(assert (=> b!7380717 (= e!4418012 call!679002)))

(declare-fun b!7380718 () Bool)

(declare-fun e!4418011 () Bool)

(assert (=> b!7380718 (= e!4418011 e!4418015)))

(declare-fun c!1371851 () Bool)

(assert (=> b!7380718 (= c!1371851 (is-Union!19322 (reg!19651 r1!2370)))))

(declare-fun d!2285576 () Bool)

(declare-fun res!2976938 () Bool)

(declare-fun e!4418014 () Bool)

(assert (=> d!2285576 (=> res!2976938 e!4418014)))

(assert (=> d!2285576 (= res!2976938 (is-ElementMatch!19322 (reg!19651 r1!2370)))))

(assert (=> d!2285576 (= (validRegex!9918 (reg!19651 r1!2370)) e!4418014)))

(declare-fun b!7380719 () Bool)

(assert (=> b!7380719 (= e!4418011 e!4418012)))

(declare-fun res!2976935 () Bool)

(assert (=> b!7380719 (= res!2976935 (not (nullable!8396 (reg!19651 (reg!19651 r1!2370)))))))

(assert (=> b!7380719 (=> (not res!2976935) (not e!4418012))))

(declare-fun b!7380720 () Bool)

(declare-fun e!4418016 () Bool)

(declare-fun call!679000 () Bool)

(assert (=> b!7380720 (= e!4418016 call!679000)))

(declare-fun c!1371850 () Bool)

(declare-fun bm!678995 () Bool)

(assert (=> bm!678995 (= call!679002 (validRegex!9918 (ite c!1371850 (reg!19651 (reg!19651 r1!2370)) (ite c!1371851 (regOne!39157 (reg!19651 r1!2370)) (regTwo!39156 (reg!19651 r1!2370))))))))

(declare-fun b!7380721 () Bool)

(assert (=> b!7380721 (= e!4418014 e!4418011)))

(assert (=> b!7380721 (= c!1371850 (is-Star!19322 (reg!19651 r1!2370)))))

(declare-fun bm!678996 () Bool)

(assert (=> bm!678996 (= call!679001 (validRegex!9918 (ite c!1371851 (regTwo!39157 (reg!19651 r1!2370)) (regOne!39156 (reg!19651 r1!2370)))))))

(declare-fun b!7380722 () Bool)

(declare-fun res!2976934 () Bool)

(assert (=> b!7380722 (=> (not res!2976934) (not e!4418013))))

(assert (=> b!7380722 (= res!2976934 call!679000)))

(assert (=> b!7380722 (= e!4418015 e!4418013)))

(declare-fun b!7380723 () Bool)

(assert (=> b!7380723 (= e!4418017 e!4418016)))

(declare-fun res!2976937 () Bool)

(assert (=> b!7380723 (=> (not res!2976937) (not e!4418016))))

(assert (=> b!7380723 (= res!2976937 call!679001)))

(declare-fun bm!678997 () Bool)

(assert (=> bm!678997 (= call!679000 call!679002)))

(assert (= (and d!2285576 (not res!2976938)) b!7380721))

(assert (= (and b!7380721 c!1371850) b!7380719))

(assert (= (and b!7380721 (not c!1371850)) b!7380718))

(assert (= (and b!7380719 res!2976935) b!7380717))

(assert (= (and b!7380718 c!1371851) b!7380722))

(assert (= (and b!7380718 (not c!1371851)) b!7380716))

(assert (= (and b!7380722 res!2976934) b!7380715))

(assert (= (and b!7380716 (not res!2976936)) b!7380723))

(assert (= (and b!7380723 res!2976937) b!7380720))

(assert (= (or b!7380722 b!7380720) bm!678997))

(assert (= (or b!7380715 b!7380723) bm!678996))

(assert (= (or b!7380717 bm!678997) bm!678995))

(declare-fun m!8030830 () Bool)

(assert (=> b!7380719 m!8030830))

(declare-fun m!8030832 () Bool)

(assert (=> bm!678995 m!8030832))

(declare-fun m!8030834 () Bool)

(assert (=> bm!678996 m!8030834))

(assert (=> b!7380540 d!2285576))

(declare-fun d!2285578 () Bool)

(declare-fun nullableFct!3367 (Regex!19322) Bool)

(assert (=> d!2285578 (= (nullable!8396 (regOne!39156 r1!2370)) (nullableFct!3367 (regOne!39156 r1!2370)))))

(declare-fun bs!1921570 () Bool)

(assert (= bs!1921570 d!2285578))

(declare-fun m!8030836 () Bool)

(assert (=> bs!1921570 m!8030836))

(assert (=> b!7380531 d!2285578))

(declare-fun e!4418020 () Bool)

(assert (=> b!7380534 (= tp!2099329 e!4418020)))

(declare-fun b!7380737 () Bool)

(declare-fun tp!2099367 () Bool)

(declare-fun tp!2099370 () Bool)

(assert (=> b!7380737 (= e!4418020 (and tp!2099367 tp!2099370))))

(declare-fun b!7380735 () Bool)

(declare-fun tp!2099368 () Bool)

(declare-fun tp!2099366 () Bool)

(assert (=> b!7380735 (= e!4418020 (and tp!2099368 tp!2099366))))

(declare-fun b!7380734 () Bool)

(assert (=> b!7380734 (= e!4418020 tp_is_empty!48889)))

(declare-fun b!7380736 () Bool)

(declare-fun tp!2099369 () Bool)

(assert (=> b!7380736 (= e!4418020 tp!2099369)))

(assert (= (and b!7380534 (is-ElementMatch!19322 (regOne!39156 r1!2370))) b!7380734))

(assert (= (and b!7380534 (is-Concat!28167 (regOne!39156 r1!2370))) b!7380735))

(assert (= (and b!7380534 (is-Star!19322 (regOne!39156 r1!2370))) b!7380736))

(assert (= (and b!7380534 (is-Union!19322 (regOne!39156 r1!2370))) b!7380737))

(declare-fun e!4418021 () Bool)

(assert (=> b!7380534 (= tp!2099326 e!4418021)))

(declare-fun b!7380741 () Bool)

(declare-fun tp!2099372 () Bool)

(declare-fun tp!2099375 () Bool)

(assert (=> b!7380741 (= e!4418021 (and tp!2099372 tp!2099375))))

(declare-fun b!7380739 () Bool)

(declare-fun tp!2099373 () Bool)

(declare-fun tp!2099371 () Bool)

(assert (=> b!7380739 (= e!4418021 (and tp!2099373 tp!2099371))))

(declare-fun b!7380738 () Bool)

(assert (=> b!7380738 (= e!4418021 tp_is_empty!48889)))

(declare-fun b!7380740 () Bool)

(declare-fun tp!2099374 () Bool)

(assert (=> b!7380740 (= e!4418021 tp!2099374)))

(assert (= (and b!7380534 (is-ElementMatch!19322 (regTwo!39156 r1!2370))) b!7380738))

(assert (= (and b!7380534 (is-Concat!28167 (regTwo!39156 r1!2370))) b!7380739))

(assert (= (and b!7380534 (is-Star!19322 (regTwo!39156 r1!2370))) b!7380740))

(assert (= (and b!7380534 (is-Union!19322 (regTwo!39156 r1!2370))) b!7380741))

(declare-fun e!4418022 () Bool)

(assert (=> b!7380538 (= tp!2099331 e!4418022)))

(declare-fun b!7380745 () Bool)

(declare-fun tp!2099377 () Bool)

(declare-fun tp!2099380 () Bool)

(assert (=> b!7380745 (= e!4418022 (and tp!2099377 tp!2099380))))

(declare-fun b!7380743 () Bool)

(declare-fun tp!2099378 () Bool)

(declare-fun tp!2099376 () Bool)

(assert (=> b!7380743 (= e!4418022 (and tp!2099378 tp!2099376))))

(declare-fun b!7380742 () Bool)

(assert (=> b!7380742 (= e!4418022 tp_is_empty!48889)))

(declare-fun b!7380744 () Bool)

(declare-fun tp!2099379 () Bool)

(assert (=> b!7380744 (= e!4418022 tp!2099379)))

(assert (= (and b!7380538 (is-ElementMatch!19322 (regOne!39157 r1!2370))) b!7380742))

(assert (= (and b!7380538 (is-Concat!28167 (regOne!39157 r1!2370))) b!7380743))

(assert (= (and b!7380538 (is-Star!19322 (regOne!39157 r1!2370))) b!7380744))

(assert (= (and b!7380538 (is-Union!19322 (regOne!39157 r1!2370))) b!7380745))

(declare-fun e!4418023 () Bool)

(assert (=> b!7380538 (= tp!2099325 e!4418023)))

(declare-fun b!7380749 () Bool)

(declare-fun tp!2099382 () Bool)

(declare-fun tp!2099385 () Bool)

(assert (=> b!7380749 (= e!4418023 (and tp!2099382 tp!2099385))))

(declare-fun b!7380747 () Bool)

(declare-fun tp!2099383 () Bool)

(declare-fun tp!2099381 () Bool)

(assert (=> b!7380747 (= e!4418023 (and tp!2099383 tp!2099381))))

(declare-fun b!7380746 () Bool)

(assert (=> b!7380746 (= e!4418023 tp_is_empty!48889)))

(declare-fun b!7380748 () Bool)

(declare-fun tp!2099384 () Bool)

(assert (=> b!7380748 (= e!4418023 tp!2099384)))

(assert (= (and b!7380538 (is-ElementMatch!19322 (regTwo!39157 r1!2370))) b!7380746))

(assert (= (and b!7380538 (is-Concat!28167 (regTwo!39157 r1!2370))) b!7380747))

(assert (= (and b!7380538 (is-Star!19322 (regTwo!39157 r1!2370))) b!7380748))

(assert (= (and b!7380538 (is-Union!19322 (regTwo!39157 r1!2370))) b!7380749))

(declare-fun b!7380754 () Bool)

(declare-fun e!4418026 () Bool)

(declare-fun tp!2099390 () Bool)

(declare-fun tp!2099391 () Bool)

(assert (=> b!7380754 (= e!4418026 (and tp!2099390 tp!2099391))))

(assert (=> b!7380543 (= tp!2099328 e!4418026)))

(assert (= (and b!7380543 (is-Cons!71694 (exprs!8762 cWitness!61))) b!7380754))

(declare-fun b!7380755 () Bool)

(declare-fun e!4418027 () Bool)

(declare-fun tp!2099392 () Bool)

(declare-fun tp!2099393 () Bool)

(assert (=> b!7380755 (= e!4418027 (and tp!2099392 tp!2099393))))

(assert (=> b!7380544 (= tp!2099327 e!4418027)))

(assert (= (and b!7380544 (is-Cons!71694 (exprs!8762 ct1!282))) b!7380755))

(declare-fun b!7380756 () Bool)

(declare-fun e!4418028 () Bool)

(declare-fun tp!2099394 () Bool)

(declare-fun tp!2099395 () Bool)

(assert (=> b!7380756 (= e!4418028 (and tp!2099394 tp!2099395))))

(assert (=> b!7380533 (= tp!2099324 e!4418028)))

(assert (= (and b!7380533 (is-Cons!71694 (exprs!8762 ct2!378))) b!7380756))

(declare-fun e!4418029 () Bool)

(assert (=> b!7380532 (= tp!2099330 e!4418029)))

(declare-fun b!7380760 () Bool)

(declare-fun tp!2099397 () Bool)

(declare-fun tp!2099400 () Bool)

(assert (=> b!7380760 (= e!4418029 (and tp!2099397 tp!2099400))))

(declare-fun b!7380758 () Bool)

(declare-fun tp!2099398 () Bool)

(declare-fun tp!2099396 () Bool)

(assert (=> b!7380758 (= e!4418029 (and tp!2099398 tp!2099396))))

(declare-fun b!7380757 () Bool)

(assert (=> b!7380757 (= e!4418029 tp_is_empty!48889)))

(declare-fun b!7380759 () Bool)

(declare-fun tp!2099399 () Bool)

(assert (=> b!7380759 (= e!4418029 tp!2099399)))

(assert (= (and b!7380532 (is-ElementMatch!19322 (reg!19651 r1!2370))) b!7380757))

(assert (= (and b!7380532 (is-Concat!28167 (reg!19651 r1!2370))) b!7380758))

(assert (= (and b!7380532 (is-Star!19322 (reg!19651 r1!2370))) b!7380759))

(assert (= (and b!7380532 (is-Union!19322 (reg!19651 r1!2370))) b!7380760))

(push 1)

(assert (not b!7380621))

(assert (not b!7380755))

(assert (not bm!678966))

(assert (not b!7380663))

(assert (not b!7380737))

(assert (not bm!678971))

(assert (not bm!678990))

(assert (not b!7380739))

(assert (not b!7380704))

(assert (not bm!678994))

(assert (not b!7380743))

(assert (not bm!678970))

(assert (not d!2285570))

(assert (not b!7380748))

(assert tp_is_empty!48889)

(assert (not b!7380735))

(assert (not d!2285568))

(assert (not bm!678996))

(assert (not b!7380747))

(assert (not b!7380741))

(assert (not b!7380749))

(assert (not bm!678950))

(assert (not b!7380744))

(assert (not b!7380648))

(assert (not b!7380754))

(assert (not b!7380758))

(assert (not b!7380745))

(assert (not b!7380756))

(assert (not b!7380760))

(assert (not b!7380612))

(assert (not bm!678976))

(assert (not bm!678948))

(assert (not bm!678995))

(assert (not bm!678965))

(assert (not b!7380702))

(assert (not d!2285556))

(assert (not bm!678989))

(assert (not d!2285554))

(assert (not b!7380759))

(assert (not b!7380701))

(assert (not b!7380719))

(assert (not bm!678972))

(assert (not d!2285578))

(assert (not bm!678947))

(assert (not d!2285558))

(assert (not bm!678951))

(assert (not b!7380740))

(assert (not b!7380736))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

