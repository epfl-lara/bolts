; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!282308 () Bool)

(assert start!282308)

(declare-fun b!2898583 () Bool)

(declare-fun e!1830894 () Bool)

(declare-datatypes ((C!17894 0))(
  ( (C!17895 (val!10981 Int)) )
))
(declare-datatypes ((Regex!8856 0))(
  ( (ElementMatch!8856 (c!472039 C!17894)) (Concat!14177 (regOne!18224 Regex!8856) (regTwo!18224 Regex!8856)) (EmptyExpr!8856) (Star!8856 (reg!9185 Regex!8856)) (EmptyLang!8856) (Union!8856 (regOne!18225 Regex!8856) (regTwo!18225 Regex!8856)) )
))
(declare-fun r!23079 () Regex!8856)

(declare-fun regexDepth!80 (Regex!8856) Int)

(assert (=> b!2898583 (= e!1830894 (< (regexDepth!80 (regTwo!18224 r!23079)) (regexDepth!80 r!23079)))))

(declare-fun res!1198212 () Bool)

(declare-fun e!1830893 () Bool)

(assert (=> start!282308 (=> (not res!1198212) (not e!1830893))))

(declare-fun validRegex!3629 (Regex!8856) Bool)

(assert (=> start!282308 (= res!1198212 (validRegex!3629 r!23079))))

(assert (=> start!282308 e!1830893))

(declare-fun e!1830896 () Bool)

(assert (=> start!282308 e!1830896))

(declare-fun b!2898584 () Bool)

(declare-fun tp!930362 () Bool)

(declare-fun tp!930364 () Bool)

(assert (=> b!2898584 (= e!1830896 (and tp!930362 tp!930364))))

(declare-fun b!2898585 () Bool)

(declare-fun res!1198213 () Bool)

(assert (=> b!2898585 (=> (not res!1198213) (not e!1830893))))

(assert (=> b!2898585 (= res!1198213 (and (not (is-EmptyExpr!8856 r!23079)) (not (is-EmptyLang!8856 r!23079)) (not (is-ElementMatch!8856 r!23079)) (not (is-Star!8856 r!23079)) (not (is-Union!8856 r!23079))))))

(declare-fun b!2898586 () Bool)

(declare-fun tp!930360 () Bool)

(declare-fun tp!930361 () Bool)

(assert (=> b!2898586 (= e!1830896 (and tp!930360 tp!930361))))

(declare-fun b!2898587 () Bool)

(declare-fun tp_is_empty!15299 () Bool)

(assert (=> b!2898587 (= e!1830896 tp_is_empty!15299)))

(declare-fun b!2898588 () Bool)

(declare-fun e!1830892 () Bool)

(assert (=> b!2898588 (= e!1830892 (not e!1830894))))

(declare-fun res!1198215 () Bool)

(assert (=> b!2898588 (=> res!1198215 e!1830894)))

(assert (=> b!2898588 (= res!1198215 (not (validRegex!3629 (regTwo!18224 r!23079))))))

(declare-datatypes ((List!34657 0))(
  ( (Nil!34533) (Cons!34533 (h!39953 C!17894) (t!233700 List!34657)) )
))
(declare-datatypes ((Option!6529 0))(
  ( (None!6528) (Some!6528 (v!34654 List!34657)) )
))
(declare-fun lt!1021869 () Option!6529)

(declare-fun matchR!3814 (Regex!8856 List!34657) Bool)

(declare-fun get!10475 (Option!6529) List!34657)

(assert (=> b!2898588 (matchR!3814 (regOne!18224 r!23079) (get!10475 lt!1021869))))

(declare-datatypes ((Unit!48117 0))(
  ( (Unit!48118) )
))
(declare-fun lt!1021870 () Unit!48117)

(declare-fun lemmaGetWitnessMatches!113 (Regex!8856) Unit!48117)

(assert (=> b!2898588 (= lt!1021870 (lemmaGetWitnessMatches!113 (regOne!18224 r!23079)))))

(declare-fun b!2898589 () Bool)

(declare-fun e!1830895 () Bool)

(assert (=> b!2898589 (= e!1830893 e!1830895)))

(declare-fun res!1198216 () Bool)

(assert (=> b!2898589 (=> (not res!1198216) (not e!1830895))))

(assert (=> b!2898589 (= res!1198216 (is-Some!6528 lt!1021869))))

(declare-fun getLanguageWitness!563 (Regex!8856) Option!6529)

(assert (=> b!2898589 (= lt!1021869 (getLanguageWitness!563 (regOne!18224 r!23079)))))

(declare-fun b!2898590 () Bool)

(assert (=> b!2898590 (= e!1830895 e!1830892)))

(declare-fun res!1198218 () Bool)

(assert (=> b!2898590 (=> (not res!1198218) (not e!1830892))))

(declare-fun lt!1021871 () Option!6529)

(assert (=> b!2898590 (= res!1198218 (is-Some!6528 lt!1021871))))

(assert (=> b!2898590 (= lt!1021871 (getLanguageWitness!563 (regTwo!18224 r!23079)))))

(declare-fun b!2898591 () Bool)

(declare-fun tp!930363 () Bool)

(assert (=> b!2898591 (= e!1830896 tp!930363)))

(declare-fun b!2898592 () Bool)

(declare-fun res!1198214 () Bool)

(assert (=> b!2898592 (=> res!1198214 e!1830894)))

(declare-fun isDefined!5093 (Option!6529) Bool)

(assert (=> b!2898592 (= res!1198214 (not (isDefined!5093 lt!1021871)))))

(declare-fun b!2898593 () Bool)

(declare-fun res!1198217 () Bool)

(assert (=> b!2898593 (=> (not res!1198217) (not e!1830893))))

(assert (=> b!2898593 (= res!1198217 (isDefined!5093 (getLanguageWitness!563 r!23079)))))

(assert (= (and start!282308 res!1198212) b!2898593))

(assert (= (and b!2898593 res!1198217) b!2898585))

(assert (= (and b!2898585 res!1198213) b!2898589))

(assert (= (and b!2898589 res!1198216) b!2898590))

(assert (= (and b!2898590 res!1198218) b!2898588))

(assert (= (and b!2898588 (not res!1198215)) b!2898592))

(assert (= (and b!2898592 (not res!1198214)) b!2898583))

(assert (= (and start!282308 (is-ElementMatch!8856 r!23079)) b!2898587))

(assert (= (and start!282308 (is-Concat!14177 r!23079)) b!2898584))

(assert (= (and start!282308 (is-Star!8856 r!23079)) b!2898591))

(assert (= (and start!282308 (is-Union!8856 r!23079)) b!2898586))

(declare-fun m!3305115 () Bool)

(assert (=> b!2898592 m!3305115))

(declare-fun m!3305117 () Bool)

(assert (=> b!2898583 m!3305117))

(declare-fun m!3305119 () Bool)

(assert (=> b!2898583 m!3305119))

(declare-fun m!3305121 () Bool)

(assert (=> b!2898589 m!3305121))

(declare-fun m!3305123 () Bool)

(assert (=> b!2898590 m!3305123))

(declare-fun m!3305125 () Bool)

(assert (=> b!2898588 m!3305125))

(declare-fun m!3305127 () Bool)

(assert (=> b!2898588 m!3305127))

(assert (=> b!2898588 m!3305127))

(declare-fun m!3305129 () Bool)

(assert (=> b!2898588 m!3305129))

(declare-fun m!3305131 () Bool)

(assert (=> b!2898588 m!3305131))

(declare-fun m!3305133 () Bool)

(assert (=> start!282308 m!3305133))

(declare-fun m!3305135 () Bool)

(assert (=> b!2898593 m!3305135))

(assert (=> b!2898593 m!3305135))

(declare-fun m!3305137 () Bool)

(assert (=> b!2898593 m!3305137))

(push 1)

(assert (not b!2898588))

(assert (not b!2898593))

(assert (not start!282308))

(assert (not b!2898592))

(assert (not b!2898583))

(assert (not b!2898590))

(assert (not b!2898584))

(assert tp_is_empty!15299)

(assert (not b!2898589))

(assert (not b!2898586))

(assert (not b!2898591))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2898677 () Bool)

(declare-fun e!1830943 () Option!6529)

(assert (=> b!2898677 (= e!1830943 None!6528)))

(declare-fun bm!188722 () Bool)

(declare-fun call!188727 () Option!6529)

(declare-fun c!472061 () Bool)

(assert (=> bm!188722 (= call!188727 (getLanguageWitness!563 (ite c!472061 (regTwo!18225 (regOne!18224 r!23079)) (regOne!18224 (regOne!18224 r!23079)))))))

(declare-fun b!2898678 () Bool)

(declare-fun e!1830948 () Option!6529)

(assert (=> b!2898678 (= e!1830948 None!6528)))

(declare-fun b!2898679 () Bool)

(declare-fun e!1830946 () Option!6529)

(assert (=> b!2898679 (= e!1830946 None!6528)))

(declare-fun b!2898681 () Bool)

(declare-fun c!472067 () Bool)

(declare-fun lt!1021888 () Option!6529)

(assert (=> b!2898681 (= c!472067 (is-Some!6528 lt!1021888))))

(declare-fun call!188728 () Option!6529)

(assert (=> b!2898681 (= lt!1021888 call!188728)))

(assert (=> b!2898681 (= e!1830943 e!1830946)))

(declare-fun b!2898682 () Bool)

(declare-fun c!472064 () Bool)

(assert (=> b!2898682 (= c!472064 (is-ElementMatch!8856 (regOne!18224 r!23079)))))

(declare-fun e!1830942 () Option!6529)

(assert (=> b!2898682 (= e!1830948 e!1830942)))

(declare-fun b!2898683 () Bool)

(declare-fun e!1830949 () Option!6529)

(declare-fun lt!1021887 () Option!6529)

(assert (=> b!2898683 (= e!1830949 lt!1021887)))

(declare-fun b!2898684 () Bool)

(assert (=> b!2898684 (= e!1830942 (Some!6528 (Cons!34533 (c!472039 (regOne!18224 r!23079)) Nil!34533)))))

(declare-fun bm!188723 () Bool)

(assert (=> bm!188723 (= call!188728 (getLanguageWitness!563 (ite c!472061 (regOne!18225 (regOne!18224 r!23079)) (regTwo!18224 (regOne!18224 r!23079)))))))

(declare-fun b!2898680 () Bool)

(declare-fun lt!1021889 () Option!6529)

(declare-fun ++!8254 (List!34657 List!34657) List!34657)

(assert (=> b!2898680 (= e!1830946 (Some!6528 (++!8254 (v!34654 lt!1021889) (v!34654 lt!1021888))))))

(declare-fun d!835182 () Bool)

(declare-fun c!472063 () Bool)

(assert (=> d!835182 (= c!472063 (is-EmptyExpr!8856 (regOne!18224 r!23079)))))

(declare-fun e!1830944 () Option!6529)

(assert (=> d!835182 (= (getLanguageWitness!563 (regOne!18224 r!23079)) e!1830944)))

(declare-fun b!2898685 () Bool)

(assert (=> b!2898685 (= e!1830944 e!1830948)))

(declare-fun c!472068 () Bool)

(assert (=> b!2898685 (= c!472068 (is-EmptyLang!8856 (regOne!18224 r!23079)))))

(declare-fun b!2898686 () Bool)

(declare-fun e!1830945 () Option!6529)

(assert (=> b!2898686 (= e!1830945 (Some!6528 Nil!34533))))

(declare-fun b!2898687 () Bool)

(assert (=> b!2898687 (= e!1830942 e!1830945)))

(declare-fun c!472062 () Bool)

(assert (=> b!2898687 (= c!472062 (is-Star!8856 (regOne!18224 r!23079)))))

(declare-fun b!2898688 () Bool)

(assert (=> b!2898688 (= e!1830949 call!188727)))

(declare-fun b!2898689 () Bool)

(assert (=> b!2898689 (= c!472061 (is-Union!8856 (regOne!18224 r!23079)))))

(declare-fun e!1830947 () Option!6529)

(assert (=> b!2898689 (= e!1830945 e!1830947)))

(declare-fun b!2898690 () Bool)

(assert (=> b!2898690 (= e!1830947 e!1830943)))

(assert (=> b!2898690 (= lt!1021889 call!188727)))

(declare-fun c!472065 () Bool)

(assert (=> b!2898690 (= c!472065 (is-Some!6528 lt!1021889))))

(declare-fun b!2898691 () Bool)

(assert (=> b!2898691 (= e!1830944 (Some!6528 Nil!34533))))

(declare-fun b!2898692 () Bool)

(assert (=> b!2898692 (= e!1830947 e!1830949)))

(assert (=> b!2898692 (= lt!1021887 call!188728)))

(declare-fun c!472066 () Bool)

(assert (=> b!2898692 (= c!472066 (is-Some!6528 lt!1021887))))

(assert (= (and d!835182 c!472063) b!2898691))

(assert (= (and d!835182 (not c!472063)) b!2898685))

(assert (= (and b!2898685 c!472068) b!2898678))

(assert (= (and b!2898685 (not c!472068)) b!2898682))

(assert (= (and b!2898682 c!472064) b!2898684))

(assert (= (and b!2898682 (not c!472064)) b!2898687))

(assert (= (and b!2898687 c!472062) b!2898686))

(assert (= (and b!2898687 (not c!472062)) b!2898689))

(assert (= (and b!2898689 c!472061) b!2898692))

(assert (= (and b!2898689 (not c!472061)) b!2898690))

(assert (= (and b!2898692 c!472066) b!2898683))

(assert (= (and b!2898692 (not c!472066)) b!2898688))

(assert (= (and b!2898690 c!472065) b!2898681))

(assert (= (and b!2898690 (not c!472065)) b!2898677))

(assert (= (and b!2898681 c!472067) b!2898680))

(assert (= (and b!2898681 (not c!472067)) b!2898679))

(assert (= (or b!2898688 b!2898690) bm!188722))

(assert (= (or b!2898692 b!2898681) bm!188723))

(declare-fun m!3305165 () Bool)

(assert (=> bm!188722 m!3305165))

(declare-fun m!3305167 () Bool)

(assert (=> bm!188723 m!3305167))

(declare-fun m!3305169 () Bool)

(assert (=> b!2898680 m!3305169))

(assert (=> b!2898589 d!835182))

(declare-fun b!2898693 () Bool)

(declare-fun e!1830951 () Option!6529)

(assert (=> b!2898693 (= e!1830951 None!6528)))

(declare-fun bm!188724 () Bool)

(declare-fun call!188729 () Option!6529)

(declare-fun c!472069 () Bool)

(assert (=> bm!188724 (= call!188729 (getLanguageWitness!563 (ite c!472069 (regTwo!18225 (regTwo!18224 r!23079)) (regOne!18224 (regTwo!18224 r!23079)))))))

(declare-fun b!2898694 () Bool)

(declare-fun e!1830956 () Option!6529)

(assert (=> b!2898694 (= e!1830956 None!6528)))

(declare-fun b!2898695 () Bool)

(declare-fun e!1830954 () Option!6529)

(assert (=> b!2898695 (= e!1830954 None!6528)))

(declare-fun b!2898697 () Bool)

(declare-fun c!472075 () Bool)

(declare-fun lt!1021891 () Option!6529)

(assert (=> b!2898697 (= c!472075 (is-Some!6528 lt!1021891))))

(declare-fun call!188730 () Option!6529)

(assert (=> b!2898697 (= lt!1021891 call!188730)))

(assert (=> b!2898697 (= e!1830951 e!1830954)))

(declare-fun b!2898698 () Bool)

(declare-fun c!472072 () Bool)

(assert (=> b!2898698 (= c!472072 (is-ElementMatch!8856 (regTwo!18224 r!23079)))))

(declare-fun e!1830950 () Option!6529)

(assert (=> b!2898698 (= e!1830956 e!1830950)))

(declare-fun b!2898699 () Bool)

(declare-fun e!1830957 () Option!6529)

(declare-fun lt!1021890 () Option!6529)

(assert (=> b!2898699 (= e!1830957 lt!1021890)))

(declare-fun b!2898700 () Bool)

(assert (=> b!2898700 (= e!1830950 (Some!6528 (Cons!34533 (c!472039 (regTwo!18224 r!23079)) Nil!34533)))))

(declare-fun bm!188725 () Bool)

(assert (=> bm!188725 (= call!188730 (getLanguageWitness!563 (ite c!472069 (regOne!18225 (regTwo!18224 r!23079)) (regTwo!18224 (regTwo!18224 r!23079)))))))

(declare-fun b!2898696 () Bool)

(declare-fun lt!1021892 () Option!6529)

(assert (=> b!2898696 (= e!1830954 (Some!6528 (++!8254 (v!34654 lt!1021892) (v!34654 lt!1021891))))))

(declare-fun d!835186 () Bool)

(declare-fun c!472071 () Bool)

(assert (=> d!835186 (= c!472071 (is-EmptyExpr!8856 (regTwo!18224 r!23079)))))

(declare-fun e!1830952 () Option!6529)

(assert (=> d!835186 (= (getLanguageWitness!563 (regTwo!18224 r!23079)) e!1830952)))

(declare-fun b!2898701 () Bool)

(assert (=> b!2898701 (= e!1830952 e!1830956)))

(declare-fun c!472076 () Bool)

(assert (=> b!2898701 (= c!472076 (is-EmptyLang!8856 (regTwo!18224 r!23079)))))

(declare-fun b!2898702 () Bool)

(declare-fun e!1830953 () Option!6529)

(assert (=> b!2898702 (= e!1830953 (Some!6528 Nil!34533))))

(declare-fun b!2898703 () Bool)

(assert (=> b!2898703 (= e!1830950 e!1830953)))

(declare-fun c!472070 () Bool)

(assert (=> b!2898703 (= c!472070 (is-Star!8856 (regTwo!18224 r!23079)))))

(declare-fun b!2898704 () Bool)

(assert (=> b!2898704 (= e!1830957 call!188729)))

(declare-fun b!2898705 () Bool)

(assert (=> b!2898705 (= c!472069 (is-Union!8856 (regTwo!18224 r!23079)))))

(declare-fun e!1830955 () Option!6529)

(assert (=> b!2898705 (= e!1830953 e!1830955)))

(declare-fun b!2898706 () Bool)

(assert (=> b!2898706 (= e!1830955 e!1830951)))

(assert (=> b!2898706 (= lt!1021892 call!188729)))

(declare-fun c!472073 () Bool)

(assert (=> b!2898706 (= c!472073 (is-Some!6528 lt!1021892))))

(declare-fun b!2898707 () Bool)

(assert (=> b!2898707 (= e!1830952 (Some!6528 Nil!34533))))

(declare-fun b!2898708 () Bool)

(assert (=> b!2898708 (= e!1830955 e!1830957)))

(assert (=> b!2898708 (= lt!1021890 call!188730)))

(declare-fun c!472074 () Bool)

(assert (=> b!2898708 (= c!472074 (is-Some!6528 lt!1021890))))

(assert (= (and d!835186 c!472071) b!2898707))

(assert (= (and d!835186 (not c!472071)) b!2898701))

(assert (= (and b!2898701 c!472076) b!2898694))

(assert (= (and b!2898701 (not c!472076)) b!2898698))

(assert (= (and b!2898698 c!472072) b!2898700))

(assert (= (and b!2898698 (not c!472072)) b!2898703))

(assert (= (and b!2898703 c!472070) b!2898702))

(assert (= (and b!2898703 (not c!472070)) b!2898705))

(assert (= (and b!2898705 c!472069) b!2898708))

(assert (= (and b!2898705 (not c!472069)) b!2898706))

(assert (= (and b!2898708 c!472074) b!2898699))

(assert (= (and b!2898708 (not c!472074)) b!2898704))

(assert (= (and b!2898706 c!472073) b!2898697))

(assert (= (and b!2898706 (not c!472073)) b!2898693))

(assert (= (and b!2898697 c!472075) b!2898696))

(assert (= (and b!2898697 (not c!472075)) b!2898695))

(assert (= (or b!2898704 b!2898706) bm!188724))

(assert (= (or b!2898708 b!2898697) bm!188725))

(declare-fun m!3305171 () Bool)

(assert (=> bm!188724 m!3305171))

(declare-fun m!3305173 () Bool)

(assert (=> bm!188725 m!3305173))

(declare-fun m!3305175 () Bool)

(assert (=> b!2898696 m!3305175))

(assert (=> b!2898590 d!835186))

(declare-fun d!835188 () Bool)

(declare-fun isEmpty!18844 (Option!6529) Bool)

(assert (=> d!835188 (= (isDefined!5093 (getLanguageWitness!563 r!23079)) (not (isEmpty!18844 (getLanguageWitness!563 r!23079))))))

(declare-fun bs!523984 () Bool)

(assert (= bs!523984 d!835188))

(assert (=> bs!523984 m!3305135))

(declare-fun m!3305177 () Bool)

(assert (=> bs!523984 m!3305177))

(assert (=> b!2898593 d!835188))

(declare-fun b!2898709 () Bool)

(declare-fun e!1830959 () Option!6529)

(assert (=> b!2898709 (= e!1830959 None!6528)))

(declare-fun bm!188726 () Bool)

(declare-fun call!188731 () Option!6529)

(declare-fun c!472077 () Bool)

(assert (=> bm!188726 (= call!188731 (getLanguageWitness!563 (ite c!472077 (regTwo!18225 r!23079) (regOne!18224 r!23079))))))

(declare-fun b!2898710 () Bool)

(declare-fun e!1830964 () Option!6529)

(assert (=> b!2898710 (= e!1830964 None!6528)))

(declare-fun b!2898711 () Bool)

(declare-fun e!1830962 () Option!6529)

(assert (=> b!2898711 (= e!1830962 None!6528)))

(declare-fun b!2898713 () Bool)

(declare-fun c!472083 () Bool)

(declare-fun lt!1021894 () Option!6529)

(assert (=> b!2898713 (= c!472083 (is-Some!6528 lt!1021894))))

(declare-fun call!188732 () Option!6529)

(assert (=> b!2898713 (= lt!1021894 call!188732)))

(assert (=> b!2898713 (= e!1830959 e!1830962)))

(declare-fun b!2898714 () Bool)

(declare-fun c!472080 () Bool)

(assert (=> b!2898714 (= c!472080 (is-ElementMatch!8856 r!23079))))

(declare-fun e!1830958 () Option!6529)

(assert (=> b!2898714 (= e!1830964 e!1830958)))

(declare-fun b!2898715 () Bool)

(declare-fun e!1830965 () Option!6529)

(declare-fun lt!1021893 () Option!6529)

(assert (=> b!2898715 (= e!1830965 lt!1021893)))

(declare-fun b!2898716 () Bool)

(assert (=> b!2898716 (= e!1830958 (Some!6528 (Cons!34533 (c!472039 r!23079) Nil!34533)))))

(declare-fun bm!188727 () Bool)

(assert (=> bm!188727 (= call!188732 (getLanguageWitness!563 (ite c!472077 (regOne!18225 r!23079) (regTwo!18224 r!23079))))))

(declare-fun b!2898712 () Bool)

(declare-fun lt!1021895 () Option!6529)

(assert (=> b!2898712 (= e!1830962 (Some!6528 (++!8254 (v!34654 lt!1021895) (v!34654 lt!1021894))))))

(declare-fun d!835190 () Bool)

(declare-fun c!472079 () Bool)

(assert (=> d!835190 (= c!472079 (is-EmptyExpr!8856 r!23079))))

(declare-fun e!1830960 () Option!6529)

(assert (=> d!835190 (= (getLanguageWitness!563 r!23079) e!1830960)))

(declare-fun b!2898717 () Bool)

(assert (=> b!2898717 (= e!1830960 e!1830964)))

(declare-fun c!472084 () Bool)

(assert (=> b!2898717 (= c!472084 (is-EmptyLang!8856 r!23079))))

(declare-fun b!2898718 () Bool)

(declare-fun e!1830961 () Option!6529)

(assert (=> b!2898718 (= e!1830961 (Some!6528 Nil!34533))))

(declare-fun b!2898719 () Bool)

(assert (=> b!2898719 (= e!1830958 e!1830961)))

(declare-fun c!472078 () Bool)

(assert (=> b!2898719 (= c!472078 (is-Star!8856 r!23079))))

(declare-fun b!2898720 () Bool)

(assert (=> b!2898720 (= e!1830965 call!188731)))

(declare-fun b!2898721 () Bool)

(assert (=> b!2898721 (= c!472077 (is-Union!8856 r!23079))))

(declare-fun e!1830963 () Option!6529)

(assert (=> b!2898721 (= e!1830961 e!1830963)))

(declare-fun b!2898722 () Bool)

(assert (=> b!2898722 (= e!1830963 e!1830959)))

(assert (=> b!2898722 (= lt!1021895 call!188731)))

(declare-fun c!472081 () Bool)

(assert (=> b!2898722 (= c!472081 (is-Some!6528 lt!1021895))))

(declare-fun b!2898723 () Bool)

(assert (=> b!2898723 (= e!1830960 (Some!6528 Nil!34533))))

(declare-fun b!2898724 () Bool)

(assert (=> b!2898724 (= e!1830963 e!1830965)))

(assert (=> b!2898724 (= lt!1021893 call!188732)))

(declare-fun c!472082 () Bool)

(assert (=> b!2898724 (= c!472082 (is-Some!6528 lt!1021893))))

(assert (= (and d!835190 c!472079) b!2898723))

(assert (= (and d!835190 (not c!472079)) b!2898717))

(assert (= (and b!2898717 c!472084) b!2898710))

(assert (= (and b!2898717 (not c!472084)) b!2898714))

(assert (= (and b!2898714 c!472080) b!2898716))

(assert (= (and b!2898714 (not c!472080)) b!2898719))

(assert (= (and b!2898719 c!472078) b!2898718))

(assert (= (and b!2898719 (not c!472078)) b!2898721))

(assert (= (and b!2898721 c!472077) b!2898724))

(assert (= (and b!2898721 (not c!472077)) b!2898722))

(assert (= (and b!2898724 c!472082) b!2898715))

(assert (= (and b!2898724 (not c!472082)) b!2898720))

(assert (= (and b!2898722 c!472081) b!2898713))

(assert (= (and b!2898722 (not c!472081)) b!2898709))

(assert (= (and b!2898713 c!472083) b!2898712))

(assert (= (and b!2898713 (not c!472083)) b!2898711))

(assert (= (or b!2898720 b!2898722) bm!188726))

(assert (= (or b!2898724 b!2898713) bm!188727))

(declare-fun m!3305179 () Bool)

(assert (=> bm!188726 m!3305179))

(declare-fun m!3305181 () Bool)

(assert (=> bm!188727 m!3305181))

(declare-fun m!3305183 () Bool)

(assert (=> b!2898712 m!3305183))

(assert (=> b!2898593 d!835190))

(declare-fun bm!188737 () Bool)

(declare-fun call!188742 () Bool)

(declare-fun c!472092 () Bool)

(declare-fun c!472091 () Bool)

(assert (=> bm!188737 (= call!188742 (validRegex!3629 (ite c!472092 (reg!9185 (regTwo!18224 r!23079)) (ite c!472091 (regTwo!18225 (regTwo!18224 r!23079)) (regTwo!18224 (regTwo!18224 r!23079))))))))

(declare-fun b!2898752 () Bool)

(declare-fun e!1830988 () Bool)

(declare-fun e!1830990 () Bool)

(assert (=> b!2898752 (= e!1830988 e!1830990)))

(declare-fun res!1198268 () Bool)

(declare-fun nullable!2756 (Regex!8856) Bool)

(assert (=> b!2898752 (= res!1198268 (not (nullable!2756 (reg!9185 (regTwo!18224 r!23079)))))))

(assert (=> b!2898752 (=> (not res!1198268) (not e!1830990))))

(declare-fun b!2898753 () Bool)

(assert (=> b!2898753 (= e!1830990 call!188742)))

(declare-fun b!2898754 () Bool)

(declare-fun e!1830989 () Bool)

(declare-fun e!1830993 () Bool)

(assert (=> b!2898754 (= e!1830989 e!1830993)))

(declare-fun res!1198266 () Bool)

(assert (=> b!2898754 (=> (not res!1198266) (not e!1830993))))

(declare-fun call!188744 () Bool)

(assert (=> b!2898754 (= res!1198266 call!188744)))

(declare-fun bm!188738 () Bool)

(assert (=> bm!188738 (= call!188744 (validRegex!3629 (ite c!472091 (regOne!18225 (regTwo!18224 r!23079)) (regOne!18224 (regTwo!18224 r!23079)))))))

(declare-fun b!2898755 () Bool)

(declare-fun res!1198267 () Bool)

(assert (=> b!2898755 (=> res!1198267 e!1830989)))

(assert (=> b!2898755 (= res!1198267 (not (is-Concat!14177 (regTwo!18224 r!23079))))))

(declare-fun e!1830991 () Bool)

(assert (=> b!2898755 (= e!1830991 e!1830989)))

(declare-fun bm!188739 () Bool)

(declare-fun call!188743 () Bool)

(assert (=> bm!188739 (= call!188743 call!188742)))

(declare-fun b!2898756 () Bool)

(assert (=> b!2898756 (= e!1830993 call!188743)))

(declare-fun b!2898757 () Bool)

(declare-fun res!1198265 () Bool)

(declare-fun e!1830992 () Bool)

(assert (=> b!2898757 (=> (not res!1198265) (not e!1830992))))

(assert (=> b!2898757 (= res!1198265 call!188744)))

(assert (=> b!2898757 (= e!1830991 e!1830992)))

(declare-fun b!2898758 () Bool)

(assert (=> b!2898758 (= e!1830992 call!188743)))

(declare-fun b!2898759 () Bool)

(declare-fun e!1830987 () Bool)

(assert (=> b!2898759 (= e!1830987 e!1830988)))

(assert (=> b!2898759 (= c!472092 (is-Star!8856 (regTwo!18224 r!23079)))))

(declare-fun b!2898760 () Bool)

(assert (=> b!2898760 (= e!1830988 e!1830991)))

(assert (=> b!2898760 (= c!472091 (is-Union!8856 (regTwo!18224 r!23079)))))

(declare-fun d!835192 () Bool)

(declare-fun res!1198269 () Bool)

(assert (=> d!835192 (=> res!1198269 e!1830987)))

(assert (=> d!835192 (= res!1198269 (is-ElementMatch!8856 (regTwo!18224 r!23079)))))

(assert (=> d!835192 (= (validRegex!3629 (regTwo!18224 r!23079)) e!1830987)))

(assert (= (and d!835192 (not res!1198269)) b!2898759))

(assert (= (and b!2898759 c!472092) b!2898752))

(assert (= (and b!2898759 (not c!472092)) b!2898760))

(assert (= (and b!2898752 res!1198268) b!2898753))

(assert (= (and b!2898760 c!472091) b!2898757))

(assert (= (and b!2898760 (not c!472091)) b!2898755))

(assert (= (and b!2898757 res!1198265) b!2898758))

(assert (= (and b!2898755 (not res!1198267)) b!2898754))

(assert (= (and b!2898754 res!1198266) b!2898756))

(assert (= (or b!2898758 b!2898756) bm!188739))

(assert (= (or b!2898757 b!2898754) bm!188738))

(assert (= (or b!2898753 bm!188739) bm!188737))

(declare-fun m!3305191 () Bool)

(assert (=> bm!188737 m!3305191))

(declare-fun m!3305193 () Bool)

(assert (=> b!2898752 m!3305193))

(declare-fun m!3305195 () Bool)

(assert (=> bm!188738 m!3305195))

(assert (=> b!2898588 d!835192))

(declare-fun b!2898821 () Bool)

(declare-fun e!1831030 () Bool)

(declare-fun lt!1021904 () Bool)

(assert (=> b!2898821 (= e!1831030 (not lt!1021904))))

(declare-fun b!2898822 () Bool)

(declare-fun res!1198290 () Bool)

(declare-fun e!1831025 () Bool)

(assert (=> b!2898822 (=> res!1198290 e!1831025)))

(declare-fun isEmpty!18845 (List!34657) Bool)

(declare-fun tail!4623 (List!34657) List!34657)

(assert (=> b!2898822 (= res!1198290 (not (isEmpty!18845 (tail!4623 (get!10475 lt!1021869)))))))

(declare-fun b!2898823 () Bool)

(declare-fun e!1831027 () Bool)

(assert (=> b!2898823 (= e!1831027 e!1831025)))

(declare-fun res!1198287 () Bool)

(assert (=> b!2898823 (=> res!1198287 e!1831025)))

(declare-fun call!188751 () Bool)

(assert (=> b!2898823 (= res!1198287 call!188751)))

(declare-fun b!2898824 () Bool)

(declare-fun res!1198291 () Bool)

(declare-fun e!1831026 () Bool)

(assert (=> b!2898824 (=> res!1198291 e!1831026)))

(declare-fun e!1831028 () Bool)

(assert (=> b!2898824 (= res!1198291 e!1831028)))

(declare-fun res!1198289 () Bool)

(assert (=> b!2898824 (=> (not res!1198289) (not e!1831028))))

(assert (=> b!2898824 (= res!1198289 lt!1021904)))

(declare-fun d!835196 () Bool)

(declare-fun e!1831029 () Bool)

(assert (=> d!835196 e!1831029))

(declare-fun c!472117 () Bool)

(assert (=> d!835196 (= c!472117 (is-EmptyExpr!8856 (regOne!18224 r!23079)))))

(declare-fun e!1831024 () Bool)

(assert (=> d!835196 (= lt!1021904 e!1831024)))

(declare-fun c!472116 () Bool)

(assert (=> d!835196 (= c!472116 (isEmpty!18845 (get!10475 lt!1021869)))))

(assert (=> d!835196 (validRegex!3629 (regOne!18224 r!23079))))

(assert (=> d!835196 (= (matchR!3814 (regOne!18224 r!23079) (get!10475 lt!1021869)) lt!1021904)))

(declare-fun b!2898825 () Bool)

(declare-fun res!1198288 () Bool)

(assert (=> b!2898825 (=> res!1198288 e!1831026)))

(assert (=> b!2898825 (= res!1198288 (not (is-ElementMatch!8856 (regOne!18224 r!23079))))))

(assert (=> b!2898825 (= e!1831030 e!1831026)))

(declare-fun b!2898826 () Bool)

(declare-fun res!1198286 () Bool)

(assert (=> b!2898826 (=> (not res!1198286) (not e!1831028))))

(assert (=> b!2898826 (= res!1198286 (isEmpty!18845 (tail!4623 (get!10475 lt!1021869))))))

(declare-fun bm!188746 () Bool)

(assert (=> bm!188746 (= call!188751 (isEmpty!18845 (get!10475 lt!1021869)))))

(declare-fun b!2898827 () Bool)

(assert (=> b!2898827 (= e!1831024 (nullable!2756 (regOne!18224 r!23079)))))

(declare-fun b!2898828 () Bool)

(assert (=> b!2898828 (= e!1831029 e!1831030)))

(declare-fun c!472115 () Bool)

(assert (=> b!2898828 (= c!472115 (is-EmptyLang!8856 (regOne!18224 r!23079)))))

(declare-fun b!2898829 () Bool)

(declare-fun head!6398 (List!34657) C!17894)

(assert (=> b!2898829 (= e!1831025 (not (= (head!6398 (get!10475 lt!1021869)) (c!472039 (regOne!18224 r!23079)))))))

(declare-fun b!2898830 () Bool)

(assert (=> b!2898830 (= e!1831026 e!1831027)))

(declare-fun res!1198292 () Bool)

(assert (=> b!2898830 (=> (not res!1198292) (not e!1831027))))

(assert (=> b!2898830 (= res!1198292 (not lt!1021904))))

(declare-fun b!2898831 () Bool)

(declare-fun derivativeStep!2369 (Regex!8856 C!17894) Regex!8856)

(assert (=> b!2898831 (= e!1831024 (matchR!3814 (derivativeStep!2369 (regOne!18224 r!23079) (head!6398 (get!10475 lt!1021869))) (tail!4623 (get!10475 lt!1021869))))))

(declare-fun b!2898832 () Bool)

(assert (=> b!2898832 (= e!1831028 (= (head!6398 (get!10475 lt!1021869)) (c!472039 (regOne!18224 r!23079))))))

(declare-fun b!2898833 () Bool)

(assert (=> b!2898833 (= e!1831029 (= lt!1021904 call!188751))))

(declare-fun b!2898834 () Bool)

(declare-fun res!1198293 () Bool)

(assert (=> b!2898834 (=> (not res!1198293) (not e!1831028))))

(assert (=> b!2898834 (= res!1198293 (not call!188751))))

(assert (= (and d!835196 c!472116) b!2898827))

(assert (= (and d!835196 (not c!472116)) b!2898831))

(assert (= (and d!835196 c!472117) b!2898833))

(assert (= (and d!835196 (not c!472117)) b!2898828))

(assert (= (and b!2898828 c!472115) b!2898821))

(assert (= (and b!2898828 (not c!472115)) b!2898825))

(assert (= (and b!2898825 (not res!1198288)) b!2898824))

(assert (= (and b!2898824 res!1198289) b!2898834))

(assert (= (and b!2898834 res!1198293) b!2898826))

(assert (= (and b!2898826 res!1198286) b!2898832))

(assert (= (and b!2898824 (not res!1198291)) b!2898830))

(assert (= (and b!2898830 res!1198292) b!2898823))

(assert (= (and b!2898823 (not res!1198287)) b!2898822))

(assert (= (and b!2898822 (not res!1198290)) b!2898829))

(assert (= (or b!2898833 b!2898823 b!2898834) bm!188746))

(assert (=> b!2898822 m!3305127))

(declare-fun m!3305197 () Bool)

(assert (=> b!2898822 m!3305197))

(assert (=> b!2898822 m!3305197))

(declare-fun m!3305199 () Bool)

(assert (=> b!2898822 m!3305199))

(assert (=> b!2898832 m!3305127))

(declare-fun m!3305201 () Bool)

(assert (=> b!2898832 m!3305201))

(assert (=> d!835196 m!3305127))

(declare-fun m!3305203 () Bool)

(assert (=> d!835196 m!3305203))

(declare-fun m!3305205 () Bool)

(assert (=> d!835196 m!3305205))

(assert (=> bm!188746 m!3305127))

(assert (=> bm!188746 m!3305203))

(assert (=> b!2898831 m!3305127))

(assert (=> b!2898831 m!3305201))

(assert (=> b!2898831 m!3305201))

(declare-fun m!3305207 () Bool)

(assert (=> b!2898831 m!3305207))

(assert (=> b!2898831 m!3305127))

(assert (=> b!2898831 m!3305197))

(assert (=> b!2898831 m!3305207))

(assert (=> b!2898831 m!3305197))

(declare-fun m!3305209 () Bool)

(assert (=> b!2898831 m!3305209))

(assert (=> b!2898826 m!3305127))

(assert (=> b!2898826 m!3305197))

(assert (=> b!2898826 m!3305197))

(assert (=> b!2898826 m!3305199))

(assert (=> b!2898829 m!3305127))

(assert (=> b!2898829 m!3305201))

(declare-fun m!3305211 () Bool)

(assert (=> b!2898827 m!3305211))

(assert (=> b!2898588 d!835196))

(declare-fun d!835198 () Bool)

(assert (=> d!835198 (= (get!10475 lt!1021869) (v!34654 lt!1021869))))

(assert (=> b!2898588 d!835198))

(declare-fun d!835200 () Bool)

(assert (=> d!835200 (matchR!3814 (regOne!18224 r!23079) (get!10475 (getLanguageWitness!563 (regOne!18224 r!23079))))))

(declare-fun lt!1021907 () Unit!48117)

(declare-fun choose!17079 (Regex!8856) Unit!48117)

(assert (=> d!835200 (= lt!1021907 (choose!17079 (regOne!18224 r!23079)))))

(assert (=> d!835200 (validRegex!3629 (regOne!18224 r!23079))))

(assert (=> d!835200 (= (lemmaGetWitnessMatches!113 (regOne!18224 r!23079)) lt!1021907)))

(declare-fun bs!523985 () Bool)

(assert (= bs!523985 d!835200))

(assert (=> bs!523985 m!3305205))

(assert (=> bs!523985 m!3305121))

(declare-fun m!3305213 () Bool)

(assert (=> bs!523985 m!3305213))

(assert (=> bs!523985 m!3305121))

(declare-fun m!3305215 () Bool)

(assert (=> bs!523985 m!3305215))

(assert (=> bs!523985 m!3305215))

(declare-fun m!3305217 () Bool)

(assert (=> bs!523985 m!3305217))

(assert (=> b!2898588 d!835200))

(declare-fun bm!188768 () Bool)

(declare-fun call!188779 () Int)

(declare-fun c!472151 () Bool)

(assert (=> bm!188768 (= call!188779 (regexDepth!80 (ite c!472151 (regTwo!18225 (regTwo!18224 r!23079)) (regTwo!18224 (regTwo!18224 r!23079)))))))

(declare-fun b!2898910 () Bool)

(declare-fun e!1831076 () Bool)

(declare-fun lt!1021916 () Int)

(declare-fun call!188778 () Int)

(assert (=> b!2898910 (= e!1831076 (> lt!1021916 call!188778))))

(declare-fun b!2898911 () Bool)

(declare-fun res!1198306 () Bool)

(declare-fun e!1831082 () Bool)

(assert (=> b!2898911 (=> (not res!1198306) (not e!1831082))))

(declare-fun call!188776 () Int)

(assert (=> b!2898911 (= res!1198306 (> lt!1021916 call!188776))))

(declare-fun e!1831077 () Bool)

(assert (=> b!2898911 (= e!1831077 e!1831082)))

(declare-fun bm!188769 () Bool)

(declare-fun call!188773 () Int)

(declare-fun call!188774 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!188769 (= call!188773 (maxBigInt!0 call!188774 call!188779))))

(declare-fun call!188777 () Int)

(declare-fun bm!188770 () Bool)

(declare-fun c!472152 () Bool)

(assert (=> bm!188770 (= call!188777 (regexDepth!80 (ite c!472152 (reg!9185 (regTwo!18224 r!23079)) (ite c!472151 (regOne!18225 (regTwo!18224 r!23079)) (regOne!18224 (regTwo!18224 r!23079))))))))

(declare-fun b!2898912 () Bool)

(declare-fun e!1831080 () Int)

(assert (=> b!2898912 (= e!1831080 1)))

(declare-fun b!2898913 () Bool)

(declare-fun c!472154 () Bool)

(assert (=> b!2898913 (= c!472154 (is-Star!8856 (regTwo!18224 r!23079)))))

(declare-fun e!1831074 () Bool)

(assert (=> b!2898913 (= e!1831077 e!1831074)))

(declare-fun b!2898914 () Bool)

(declare-fun e!1831079 () Bool)

(assert (=> b!2898914 (= e!1831079 e!1831077)))

(declare-fun c!472156 () Bool)

(assert (=> b!2898914 (= c!472156 (is-Concat!14177 (regTwo!18224 r!23079)))))

(declare-fun b!2898915 () Bool)

(declare-fun e!1831081 () Int)

(assert (=> b!2898915 (= e!1831081 (+ 1 call!188773))))

(declare-fun d!835202 () Bool)

(declare-fun e!1831075 () Bool)

(assert (=> d!835202 e!1831075))

(declare-fun res!1198305 () Bool)

(assert (=> d!835202 (=> (not res!1198305) (not e!1831075))))

(assert (=> d!835202 (= res!1198305 (> lt!1021916 0))))

(assert (=> d!835202 (= lt!1021916 e!1831080)))

(declare-fun c!472150 () Bool)

(assert (=> d!835202 (= c!472150 (is-ElementMatch!8856 (regTwo!18224 r!23079)))))

(assert (=> d!835202 (= (regexDepth!80 (regTwo!18224 r!23079)) lt!1021916)))

(declare-fun b!2898916 () Bool)

(declare-fun e!1831083 () Int)

(assert (=> b!2898916 (= e!1831083 (+ 1 call!188777))))

(declare-fun b!2898917 () Bool)

(assert (=> b!2898917 (= e!1831080 e!1831083)))

(assert (=> b!2898917 (= c!472152 (is-Star!8856 (regTwo!18224 r!23079)))))

(declare-fun b!2898918 () Bool)

(declare-fun e!1831078 () Int)

(assert (=> b!2898918 (= e!1831078 e!1831081)))

(declare-fun c!472155 () Bool)

(assert (=> b!2898918 (= c!472155 (is-Concat!14177 (regTwo!18224 r!23079)))))

(declare-fun b!2898919 () Bool)

(assert (=> b!2898919 (= e!1831081 1)))

(declare-fun b!2898920 () Bool)

(assert (=> b!2898920 (= e!1831078 (+ 1 call!188773))))

(declare-fun b!2898921 () Bool)

(assert (=> b!2898921 (= e!1831074 (> lt!1021916 call!188776))))

(declare-fun bm!188771 () Bool)

(declare-fun c!472153 () Bool)

(assert (=> bm!188771 (= call!188778 (regexDepth!80 (ite c!472153 (regTwo!18225 (regTwo!18224 r!23079)) (ite c!472156 (regOne!18224 (regTwo!18224 r!23079)) (reg!9185 (regTwo!18224 r!23079))))))))

(declare-fun b!2898922 () Bool)

(declare-fun call!188775 () Int)

(assert (=> b!2898922 (= e!1831082 (> lt!1021916 call!188775))))

(declare-fun bm!188772 () Bool)

(assert (=> bm!188772 (= call!188776 call!188778)))

(declare-fun b!2898923 () Bool)

(assert (=> b!2898923 (= e!1831079 e!1831076)))

(declare-fun res!1198307 () Bool)

(assert (=> b!2898923 (= res!1198307 (> lt!1021916 call!188775))))

(assert (=> b!2898923 (=> (not res!1198307) (not e!1831076))))

(declare-fun b!2898924 () Bool)

(assert (=> b!2898924 (= e!1831074 (= lt!1021916 1))))

(declare-fun bm!188773 () Bool)

(assert (=> bm!188773 (= call!188775 (regexDepth!80 (ite c!472153 (regOne!18225 (regTwo!18224 r!23079)) (regTwo!18224 (regTwo!18224 r!23079)))))))

(declare-fun bm!188774 () Bool)

(assert (=> bm!188774 (= call!188774 call!188777)))

(declare-fun b!2898925 () Bool)

(assert (=> b!2898925 (= c!472151 (is-Union!8856 (regTwo!18224 r!23079)))))

(assert (=> b!2898925 (= e!1831083 e!1831078)))

(declare-fun b!2898926 () Bool)

(assert (=> b!2898926 (= e!1831075 e!1831079)))

(assert (=> b!2898926 (= c!472153 (is-Union!8856 (regTwo!18224 r!23079)))))

(assert (= (and d!835202 c!472150) b!2898912))

(assert (= (and d!835202 (not c!472150)) b!2898917))

(assert (= (and b!2898917 c!472152) b!2898916))

(assert (= (and b!2898917 (not c!472152)) b!2898925))

(assert (= (and b!2898925 c!472151) b!2898920))

(assert (= (and b!2898925 (not c!472151)) b!2898918))

(assert (= (and b!2898918 c!472155) b!2898915))

(assert (= (and b!2898918 (not c!472155)) b!2898919))

(assert (= (or b!2898920 b!2898915) bm!188774))

(assert (= (or b!2898920 b!2898915) bm!188768))

(assert (= (or b!2898920 b!2898915) bm!188769))

(assert (= (or b!2898916 bm!188774) bm!188770))

(assert (= (and d!835202 res!1198305) b!2898926))

(assert (= (and b!2898926 c!472153) b!2898923))

(assert (= (and b!2898926 (not c!472153)) b!2898914))

(assert (= (and b!2898923 res!1198307) b!2898910))

(assert (= (and b!2898914 c!472156) b!2898911))

(assert (= (and b!2898914 (not c!472156)) b!2898913))

(assert (= (and b!2898911 res!1198306) b!2898922))

(assert (= (and b!2898913 c!472154) b!2898921))

(assert (= (and b!2898913 (not c!472154)) b!2898924))

(assert (= (or b!2898911 b!2898921) bm!188772))

(assert (= (or b!2898910 bm!188772) bm!188771))

(assert (= (or b!2898923 b!2898922) bm!188773))

(declare-fun m!3305237 () Bool)

(assert (=> bm!188768 m!3305237))

(declare-fun m!3305239 () Bool)

(assert (=> bm!188773 m!3305239))

(declare-fun m!3305241 () Bool)

(assert (=> bm!188771 m!3305241))

(declare-fun m!3305243 () Bool)

(assert (=> bm!188770 m!3305243))

(declare-fun m!3305245 () Bool)

(assert (=> bm!188769 m!3305245))

(assert (=> b!2898583 d!835202))

(declare-fun bm!188775 () Bool)

(declare-fun call!188786 () Int)

(declare-fun c!472158 () Bool)

(assert (=> bm!188775 (= call!188786 (regexDepth!80 (ite c!472158 (regTwo!18225 r!23079) (regTwo!18224 r!23079))))))

(declare-fun b!2898927 () Bool)

(declare-fun e!1831086 () Bool)

(declare-fun lt!1021917 () Int)

(declare-fun call!188785 () Int)

(assert (=> b!2898927 (= e!1831086 (> lt!1021917 call!188785))))

(declare-fun b!2898928 () Bool)

(declare-fun res!1198309 () Bool)

(declare-fun e!1831092 () Bool)

(assert (=> b!2898928 (=> (not res!1198309) (not e!1831092))))

(declare-fun call!188783 () Int)

(assert (=> b!2898928 (= res!1198309 (> lt!1021917 call!188783))))

(declare-fun e!1831087 () Bool)

(assert (=> b!2898928 (= e!1831087 e!1831092)))

(declare-fun bm!188776 () Bool)

(declare-fun call!188780 () Int)

(declare-fun call!188781 () Int)

(assert (=> bm!188776 (= call!188780 (maxBigInt!0 call!188781 call!188786))))

(declare-fun call!188784 () Int)

(declare-fun c!472159 () Bool)

(declare-fun bm!188777 () Bool)

(assert (=> bm!188777 (= call!188784 (regexDepth!80 (ite c!472159 (reg!9185 r!23079) (ite c!472158 (regOne!18225 r!23079) (regOne!18224 r!23079)))))))

(declare-fun b!2898929 () Bool)

(declare-fun e!1831090 () Int)

(assert (=> b!2898929 (= e!1831090 1)))

(declare-fun b!2898930 () Bool)

(declare-fun c!472161 () Bool)

(assert (=> b!2898930 (= c!472161 (is-Star!8856 r!23079))))

(declare-fun e!1831084 () Bool)

(assert (=> b!2898930 (= e!1831087 e!1831084)))

(declare-fun b!2898931 () Bool)

(declare-fun e!1831089 () Bool)

(assert (=> b!2898931 (= e!1831089 e!1831087)))

(declare-fun c!472163 () Bool)

(assert (=> b!2898931 (= c!472163 (is-Concat!14177 r!23079))))

(declare-fun b!2898932 () Bool)

(declare-fun e!1831091 () Int)

(assert (=> b!2898932 (= e!1831091 (+ 1 call!188780))))

(declare-fun d!835210 () Bool)

(declare-fun e!1831085 () Bool)

(assert (=> d!835210 e!1831085))

(declare-fun res!1198308 () Bool)

(assert (=> d!835210 (=> (not res!1198308) (not e!1831085))))

(assert (=> d!835210 (= res!1198308 (> lt!1021917 0))))

(assert (=> d!835210 (= lt!1021917 e!1831090)))

(declare-fun c!472157 () Bool)

(assert (=> d!835210 (= c!472157 (is-ElementMatch!8856 r!23079))))

(assert (=> d!835210 (= (regexDepth!80 r!23079) lt!1021917)))

(declare-fun b!2898933 () Bool)

(declare-fun e!1831093 () Int)

(assert (=> b!2898933 (= e!1831093 (+ 1 call!188784))))

(declare-fun b!2898934 () Bool)

(assert (=> b!2898934 (= e!1831090 e!1831093)))

(assert (=> b!2898934 (= c!472159 (is-Star!8856 r!23079))))

(declare-fun b!2898935 () Bool)

(declare-fun e!1831088 () Int)

(assert (=> b!2898935 (= e!1831088 e!1831091)))

(declare-fun c!472162 () Bool)

(assert (=> b!2898935 (= c!472162 (is-Concat!14177 r!23079))))

(declare-fun b!2898936 () Bool)

(assert (=> b!2898936 (= e!1831091 1)))

(declare-fun b!2898937 () Bool)

(assert (=> b!2898937 (= e!1831088 (+ 1 call!188780))))

(declare-fun b!2898938 () Bool)

(assert (=> b!2898938 (= e!1831084 (> lt!1021917 call!188783))))

(declare-fun bm!188778 () Bool)

(declare-fun c!472160 () Bool)

(assert (=> bm!188778 (= call!188785 (regexDepth!80 (ite c!472160 (regTwo!18225 r!23079) (ite c!472163 (regOne!18224 r!23079) (reg!9185 r!23079)))))))

(declare-fun b!2898939 () Bool)

(declare-fun call!188782 () Int)

(assert (=> b!2898939 (= e!1831092 (> lt!1021917 call!188782))))

(declare-fun bm!188779 () Bool)

(assert (=> bm!188779 (= call!188783 call!188785)))

(declare-fun b!2898940 () Bool)

(assert (=> b!2898940 (= e!1831089 e!1831086)))

(declare-fun res!1198310 () Bool)

(assert (=> b!2898940 (= res!1198310 (> lt!1021917 call!188782))))

(assert (=> b!2898940 (=> (not res!1198310) (not e!1831086))))

(declare-fun b!2898941 () Bool)

(assert (=> b!2898941 (= e!1831084 (= lt!1021917 1))))

(declare-fun bm!188780 () Bool)

(assert (=> bm!188780 (= call!188782 (regexDepth!80 (ite c!472160 (regOne!18225 r!23079) (regTwo!18224 r!23079))))))

(declare-fun bm!188781 () Bool)

(assert (=> bm!188781 (= call!188781 call!188784)))

(declare-fun b!2898942 () Bool)

(assert (=> b!2898942 (= c!472158 (is-Union!8856 r!23079))))

(assert (=> b!2898942 (= e!1831093 e!1831088)))

(declare-fun b!2898943 () Bool)

(assert (=> b!2898943 (= e!1831085 e!1831089)))

(assert (=> b!2898943 (= c!472160 (is-Union!8856 r!23079))))

(assert (= (and d!835210 c!472157) b!2898929))

(assert (= (and d!835210 (not c!472157)) b!2898934))

(assert (= (and b!2898934 c!472159) b!2898933))

(assert (= (and b!2898934 (not c!472159)) b!2898942))

(assert (= (and b!2898942 c!472158) b!2898937))

(assert (= (and b!2898942 (not c!472158)) b!2898935))

(assert (= (and b!2898935 c!472162) b!2898932))

(assert (= (and b!2898935 (not c!472162)) b!2898936))

(assert (= (or b!2898937 b!2898932) bm!188781))

(assert (= (or b!2898937 b!2898932) bm!188775))

(assert (= (or b!2898937 b!2898932) bm!188776))

(assert (= (or b!2898933 bm!188781) bm!188777))

(assert (= (and d!835210 res!1198308) b!2898943))

(assert (= (and b!2898943 c!472160) b!2898940))

(assert (= (and b!2898943 (not c!472160)) b!2898931))

(assert (= (and b!2898940 res!1198310) b!2898927))

(assert (= (and b!2898931 c!472163) b!2898928))

(assert (= (and b!2898931 (not c!472163)) b!2898930))

(assert (= (and b!2898928 res!1198309) b!2898939))

(assert (= (and b!2898930 c!472161) b!2898938))

(assert (= (and b!2898930 (not c!472161)) b!2898941))

(assert (= (or b!2898928 b!2898938) bm!188779))

(assert (= (or b!2898927 bm!188779) bm!188778))

(assert (= (or b!2898940 b!2898939) bm!188780))

(declare-fun m!3305247 () Bool)

(assert (=> bm!188775 m!3305247))

(declare-fun m!3305249 () Bool)

(assert (=> bm!188780 m!3305249))

(declare-fun m!3305251 () Bool)

(assert (=> bm!188778 m!3305251))

(declare-fun m!3305253 () Bool)

(assert (=> bm!188777 m!3305253))

(declare-fun m!3305255 () Bool)

(assert (=> bm!188776 m!3305255))

(assert (=> b!2898583 d!835210))

(declare-fun call!188787 () Bool)

(declare-fun bm!188782 () Bool)

(declare-fun c!472164 () Bool)

(declare-fun c!472165 () Bool)

(assert (=> bm!188782 (= call!188787 (validRegex!3629 (ite c!472165 (reg!9185 r!23079) (ite c!472164 (regTwo!18225 r!23079) (regTwo!18224 r!23079)))))))

(declare-fun b!2898944 () Bool)

(declare-fun e!1831095 () Bool)

(declare-fun e!1831097 () Bool)

(assert (=> b!2898944 (= e!1831095 e!1831097)))

(declare-fun res!1198314 () Bool)

(assert (=> b!2898944 (= res!1198314 (not (nullable!2756 (reg!9185 r!23079))))))

(assert (=> b!2898944 (=> (not res!1198314) (not e!1831097))))

(declare-fun b!2898945 () Bool)

(assert (=> b!2898945 (= e!1831097 call!188787)))

(declare-fun b!2898946 () Bool)

(declare-fun e!1831096 () Bool)

(declare-fun e!1831100 () Bool)

(assert (=> b!2898946 (= e!1831096 e!1831100)))

(declare-fun res!1198312 () Bool)

(assert (=> b!2898946 (=> (not res!1198312) (not e!1831100))))

(declare-fun call!188789 () Bool)

(assert (=> b!2898946 (= res!1198312 call!188789)))

(declare-fun bm!188783 () Bool)

(assert (=> bm!188783 (= call!188789 (validRegex!3629 (ite c!472164 (regOne!18225 r!23079) (regOne!18224 r!23079))))))

(declare-fun b!2898947 () Bool)

(declare-fun res!1198313 () Bool)

(assert (=> b!2898947 (=> res!1198313 e!1831096)))

(assert (=> b!2898947 (= res!1198313 (not (is-Concat!14177 r!23079)))))

(declare-fun e!1831098 () Bool)

(assert (=> b!2898947 (= e!1831098 e!1831096)))

(declare-fun bm!188784 () Bool)

(declare-fun call!188788 () Bool)

(assert (=> bm!188784 (= call!188788 call!188787)))

(declare-fun b!2898948 () Bool)

(assert (=> b!2898948 (= e!1831100 call!188788)))

(declare-fun b!2898949 () Bool)

(declare-fun res!1198311 () Bool)

(declare-fun e!1831099 () Bool)

(assert (=> b!2898949 (=> (not res!1198311) (not e!1831099))))

(assert (=> b!2898949 (= res!1198311 call!188789)))

(assert (=> b!2898949 (= e!1831098 e!1831099)))

(declare-fun b!2898950 () Bool)

(assert (=> b!2898950 (= e!1831099 call!188788)))

(declare-fun b!2898951 () Bool)

(declare-fun e!1831094 () Bool)

(assert (=> b!2898951 (= e!1831094 e!1831095)))

(assert (=> b!2898951 (= c!472165 (is-Star!8856 r!23079))))

(declare-fun b!2898952 () Bool)

(assert (=> b!2898952 (= e!1831095 e!1831098)))

(assert (=> b!2898952 (= c!472164 (is-Union!8856 r!23079))))

(declare-fun d!835212 () Bool)

(declare-fun res!1198315 () Bool)

(assert (=> d!835212 (=> res!1198315 e!1831094)))

(assert (=> d!835212 (= res!1198315 (is-ElementMatch!8856 r!23079))))

(assert (=> d!835212 (= (validRegex!3629 r!23079) e!1831094)))

(assert (= (and d!835212 (not res!1198315)) b!2898951))

(assert (= (and b!2898951 c!472165) b!2898944))

(assert (= (and b!2898951 (not c!472165)) b!2898952))

(assert (= (and b!2898944 res!1198314) b!2898945))

(assert (= (and b!2898952 c!472164) b!2898949))

(assert (= (and b!2898952 (not c!472164)) b!2898947))

(assert (= (and b!2898949 res!1198311) b!2898950))

(assert (= (and b!2898947 (not res!1198313)) b!2898946))

(assert (= (and b!2898946 res!1198312) b!2898948))

(assert (= (or b!2898950 b!2898948) bm!188784))

(assert (= (or b!2898949 b!2898946) bm!188783))

(assert (= (or b!2898945 bm!188784) bm!188782))

(declare-fun m!3305257 () Bool)

(assert (=> bm!188782 m!3305257))

(declare-fun m!3305259 () Bool)

(assert (=> b!2898944 m!3305259))

(declare-fun m!3305261 () Bool)

(assert (=> bm!188783 m!3305261))

(assert (=> start!282308 d!835212))

(declare-fun d!835214 () Bool)

(assert (=> d!835214 (= (isDefined!5093 lt!1021871) (not (isEmpty!18844 lt!1021871)))))

(declare-fun bs!523986 () Bool)

(assert (= bs!523986 d!835214))

(declare-fun m!3305263 () Bool)

(assert (=> bs!523986 m!3305263))

(assert (=> b!2898592 d!835214))

(declare-fun b!2898965 () Bool)

(declare-fun e!1831103 () Bool)

(declare-fun tp!930392 () Bool)

(assert (=> b!2898965 (= e!1831103 tp!930392)))

(declare-fun b!2898966 () Bool)

(declare-fun tp!930394 () Bool)

(declare-fun tp!930393 () Bool)

(assert (=> b!2898966 (= e!1831103 (and tp!930394 tp!930393))))

(declare-fun b!2898963 () Bool)

(assert (=> b!2898963 (= e!1831103 tp_is_empty!15299)))

(assert (=> b!2898591 (= tp!930363 e!1831103)))

(declare-fun b!2898964 () Bool)

(declare-fun tp!930391 () Bool)

(declare-fun tp!930390 () Bool)

(assert (=> b!2898964 (= e!1831103 (and tp!930391 tp!930390))))

(assert (= (and b!2898591 (is-ElementMatch!8856 (reg!9185 r!23079))) b!2898963))

(assert (= (and b!2898591 (is-Concat!14177 (reg!9185 r!23079))) b!2898964))

(assert (= (and b!2898591 (is-Star!8856 (reg!9185 r!23079))) b!2898965))

(assert (= (and b!2898591 (is-Union!8856 (reg!9185 r!23079))) b!2898966))

(declare-fun b!2898969 () Bool)

(declare-fun e!1831104 () Bool)

(declare-fun tp!930397 () Bool)

(assert (=> b!2898969 (= e!1831104 tp!930397)))

(declare-fun b!2898970 () Bool)

(declare-fun tp!930399 () Bool)

(declare-fun tp!930398 () Bool)

(assert (=> b!2898970 (= e!1831104 (and tp!930399 tp!930398))))

(declare-fun b!2898967 () Bool)

(assert (=> b!2898967 (= e!1831104 tp_is_empty!15299)))

(assert (=> b!2898586 (= tp!930360 e!1831104)))

(declare-fun b!2898968 () Bool)

(declare-fun tp!930396 () Bool)

(declare-fun tp!930395 () Bool)

(assert (=> b!2898968 (= e!1831104 (and tp!930396 tp!930395))))

(assert (= (and b!2898586 (is-ElementMatch!8856 (regOne!18225 r!23079))) b!2898967))

(assert (= (and b!2898586 (is-Concat!14177 (regOne!18225 r!23079))) b!2898968))

(assert (= (and b!2898586 (is-Star!8856 (regOne!18225 r!23079))) b!2898969))

(assert (= (and b!2898586 (is-Union!8856 (regOne!18225 r!23079))) b!2898970))

(declare-fun b!2898973 () Bool)

(declare-fun e!1831105 () Bool)

(declare-fun tp!930402 () Bool)

(assert (=> b!2898973 (= e!1831105 tp!930402)))

(declare-fun b!2898974 () Bool)

(declare-fun tp!930404 () Bool)

(declare-fun tp!930403 () Bool)

(assert (=> b!2898974 (= e!1831105 (and tp!930404 tp!930403))))

(declare-fun b!2898971 () Bool)

(assert (=> b!2898971 (= e!1831105 tp_is_empty!15299)))

(assert (=> b!2898586 (= tp!930361 e!1831105)))

(declare-fun b!2898972 () Bool)

(declare-fun tp!930401 () Bool)

(declare-fun tp!930400 () Bool)

(assert (=> b!2898972 (= e!1831105 (and tp!930401 tp!930400))))

(assert (= (and b!2898586 (is-ElementMatch!8856 (regTwo!18225 r!23079))) b!2898971))

(assert (= (and b!2898586 (is-Concat!14177 (regTwo!18225 r!23079))) b!2898972))

(assert (= (and b!2898586 (is-Star!8856 (regTwo!18225 r!23079))) b!2898973))

(assert (= (and b!2898586 (is-Union!8856 (regTwo!18225 r!23079))) b!2898974))

(declare-fun b!2898977 () Bool)

(declare-fun e!1831106 () Bool)

(declare-fun tp!930407 () Bool)

(assert (=> b!2898977 (= e!1831106 tp!930407)))

(declare-fun b!2898978 () Bool)

(declare-fun tp!930409 () Bool)

(declare-fun tp!930408 () Bool)

(assert (=> b!2898978 (= e!1831106 (and tp!930409 tp!930408))))

(declare-fun b!2898975 () Bool)

(assert (=> b!2898975 (= e!1831106 tp_is_empty!15299)))

(assert (=> b!2898584 (= tp!930362 e!1831106)))

(declare-fun b!2898976 () Bool)

(declare-fun tp!930406 () Bool)

(declare-fun tp!930405 () Bool)

(assert (=> b!2898976 (= e!1831106 (and tp!930406 tp!930405))))

(assert (= (and b!2898584 (is-ElementMatch!8856 (regOne!18224 r!23079))) b!2898975))

(assert (= (and b!2898584 (is-Concat!14177 (regOne!18224 r!23079))) b!2898976))

(assert (= (and b!2898584 (is-Star!8856 (regOne!18224 r!23079))) b!2898977))

(assert (= (and b!2898584 (is-Union!8856 (regOne!18224 r!23079))) b!2898978))

(declare-fun b!2898981 () Bool)

(declare-fun e!1831107 () Bool)

(declare-fun tp!930412 () Bool)

(assert (=> b!2898981 (= e!1831107 tp!930412)))

(declare-fun b!2898982 () Bool)

(declare-fun tp!930414 () Bool)

(declare-fun tp!930413 () Bool)

(assert (=> b!2898982 (= e!1831107 (and tp!930414 tp!930413))))

(declare-fun b!2898979 () Bool)

(assert (=> b!2898979 (= e!1831107 tp_is_empty!15299)))

(assert (=> b!2898584 (= tp!930364 e!1831107)))

(declare-fun b!2898980 () Bool)

(declare-fun tp!930411 () Bool)

(declare-fun tp!930410 () Bool)

(assert (=> b!2898980 (= e!1831107 (and tp!930411 tp!930410))))

(assert (= (and b!2898584 (is-ElementMatch!8856 (regTwo!18224 r!23079))) b!2898979))

(assert (= (and b!2898584 (is-Concat!14177 (regTwo!18224 r!23079))) b!2898980))

(assert (= (and b!2898584 (is-Star!8856 (regTwo!18224 r!23079))) b!2898981))

(assert (= (and b!2898584 (is-Union!8856 (regTwo!18224 r!23079))) b!2898982))

(push 1)

(assert (not b!2898680))

(assert (not b!2898970))

(assert (not b!2898831))

(assert (not b!2898976))

(assert (not bm!188770))

(assert (not bm!188778))

(assert (not b!2898966))

(assert (not b!2898829))

(assert (not bm!188724))

(assert (not bm!188726))

(assert (not bm!188783))

(assert (not bm!188725))

(assert (not b!2898944))

(assert (not b!2898977))

(assert (not bm!188768))

(assert (not bm!188737))

(assert (not bm!188773))

(assert (not b!2898973))

(assert (not b!2898978))

(assert (not b!2898974))

(assert (not bm!188727))

(assert (not bm!188775))

(assert (not b!2898832))

(assert (not b!2898964))

(assert (not d!835200))

(assert (not b!2898712))

(assert (not bm!188780))

(assert (not bm!188776))

(assert (not b!2898826))

(assert (not bm!188738))

(assert (not b!2898969))

(assert (not d!835188))

(assert (not b!2898968))

(assert (not b!2898822))

(assert (not bm!188722))

(assert (not b!2898827))

(assert (not d!835196))

(assert (not bm!188782))

(assert (not b!2898972))

(assert (not b!2898980))

(assert tp_is_empty!15299)

(assert (not b!2898981))

(assert (not bm!188769))

(assert (not bm!188723))

(assert (not b!2898982))

(assert (not d!835214))

(assert (not bm!188777))

(assert (not b!2898965))

(assert (not b!2898752))

(assert (not bm!188746))

(assert (not bm!188771))

(assert (not b!2898696))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

