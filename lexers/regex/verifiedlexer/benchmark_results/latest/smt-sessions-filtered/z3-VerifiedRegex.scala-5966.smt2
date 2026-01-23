; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!292076 () Bool)

(assert start!292076)

(declare-fun res!1256116 () Bool)

(declare-fun e!1915965 () Bool)

(assert (=> start!292076 (=> (not res!1256116) (not e!1915965))))

(declare-datatypes ((C!19152 0))(
  ( (C!19153 (val!11612 Int)) )
))
(declare-datatypes ((Regex!9483 0))(
  ( (ElementMatch!9483 (c!507795 C!19152)) (Concat!14804 (regOne!19478 Regex!9483) (regTwo!19478 Regex!9483)) (EmptyExpr!9483) (Star!9483 (reg!9812 Regex!9483)) (EmptyLang!9483) (Union!9483 (regOne!19479 Regex!9483) (regTwo!19479 Regex!9483)) )
))
(declare-fun r!17423 () Regex!9483)

(declare-fun validRegex!4216 (Regex!9483) Bool)

(assert (=> start!292076 (= res!1256116 (validRegex!4216 r!17423))))

(assert (=> start!292076 e!1915965))

(declare-fun e!1915968 () Bool)

(assert (=> start!292076 e!1915968))

(declare-fun e!1915967 () Bool)

(assert (=> start!292076 e!1915967))

(declare-fun b!3059530 () Bool)

(declare-fun tp!967103 () Bool)

(declare-fun tp!967100 () Bool)

(assert (=> b!3059530 (= e!1915968 (and tp!967103 tp!967100))))

(declare-fun b!3059531 () Bool)

(declare-fun tp!967102 () Bool)

(assert (=> b!3059531 (= e!1915968 tp!967102)))

(declare-fun b!3059532 () Bool)

(declare-fun res!1256115 () Bool)

(declare-fun e!1915969 () Bool)

(assert (=> b!3059532 (=> res!1256115 e!1915969)))

(declare-fun lt!1049638 () Regex!9483)

(declare-fun isEmptyExpr!540 (Regex!9483) Bool)

(assert (=> b!3059532 (= res!1256115 (not (isEmptyExpr!540 lt!1049638)))))

(declare-fun b!3059533 () Bool)

(declare-fun res!1256114 () Bool)

(declare-fun e!1915966 () Bool)

(assert (=> b!3059533 (=> res!1256114 e!1915966)))

(declare-datatypes ((List!35348 0))(
  ( (Nil!35224) (Cons!35224 (h!40644 C!19152) (t!234413 List!35348)) )
))
(declare-fun matchR!4365 (Regex!9483 List!35348) Bool)

(assert (=> b!3059533 (= res!1256114 (not (matchR!4365 (regOne!19478 r!17423) Nil!35224)))))

(declare-fun b!3059534 () Bool)

(declare-fun res!1256119 () Bool)

(declare-fun e!1915964 () Bool)

(assert (=> b!3059534 (=> res!1256119 e!1915964)))

(declare-fun s!11993 () List!35348)

(declare-fun isEmpty!19539 (List!35348) Bool)

(assert (=> b!3059534 (= res!1256119 (isEmpty!19539 s!11993))))

(declare-fun b!3059535 () Bool)

(declare-fun tp!967101 () Bool)

(declare-fun tp!967104 () Bool)

(assert (=> b!3059535 (= e!1915968 (and tp!967101 tp!967104))))

(declare-fun b!3059536 () Bool)

(assert (=> b!3059536 (= e!1915965 (not e!1915964))))

(declare-fun res!1256118 () Bool)

(assert (=> b!3059536 (=> res!1256118 e!1915964)))

(declare-fun lt!1049636 () Bool)

(get-info :version)

(assert (=> b!3059536 (= res!1256118 (or lt!1049636 (not ((_ is Concat!14804) r!17423))))))

(declare-fun matchRSpec!1620 (Regex!9483 List!35348) Bool)

(assert (=> b!3059536 (= lt!1049636 (matchRSpec!1620 r!17423 s!11993))))

(assert (=> b!3059536 (= lt!1049636 (matchR!4365 r!17423 s!11993))))

(declare-datatypes ((Unit!49405 0))(
  ( (Unit!49406) )
))
(declare-fun lt!1049639 () Unit!49405)

(declare-fun mainMatchTheorem!1620 (Regex!9483 List!35348) Unit!49405)

(assert (=> b!3059536 (= lt!1049639 (mainMatchTheorem!1620 r!17423 s!11993))))

(declare-fun b!3059537 () Bool)

(declare-fun tp_is_empty!16529 () Bool)

(declare-fun tp!967105 () Bool)

(assert (=> b!3059537 (= e!1915967 (and tp_is_empty!16529 tp!967105))))

(declare-fun b!3059538 () Bool)

(assert (=> b!3059538 (= e!1915968 tp_is_empty!16529)))

(declare-fun b!3059539 () Bool)

(declare-fun res!1256120 () Bool)

(assert (=> b!3059539 (=> res!1256120 e!1915969)))

(declare-fun lt!1049640 () Regex!9483)

(declare-fun isEmptyLang!534 (Regex!9483) Bool)

(assert (=> b!3059539 (= res!1256120 (isEmptyLang!534 lt!1049640))))

(declare-fun b!3059540 () Bool)

(assert (=> b!3059540 (= e!1915966 (validRegex!4216 (regOne!19478 r!17423)))))

(declare-fun b!3059541 () Bool)

(assert (=> b!3059541 (= e!1915964 e!1915969)))

(declare-fun res!1256121 () Bool)

(assert (=> b!3059541 (=> res!1256121 e!1915969)))

(assert (=> b!3059541 (= res!1256121 (isEmptyLang!534 lt!1049638))))

(declare-fun simplify!438 (Regex!9483) Regex!9483)

(assert (=> b!3059541 (= lt!1049640 (simplify!438 (regTwo!19478 r!17423)))))

(assert (=> b!3059541 (= lt!1049638 (simplify!438 (regOne!19478 r!17423)))))

(declare-fun b!3059542 () Bool)

(declare-fun res!1256117 () Bool)

(assert (=> b!3059542 (=> res!1256117 e!1915966)))

(declare-fun nullable!3129 (Regex!9483) Bool)

(assert (=> b!3059542 (= res!1256117 (not (nullable!3129 (regOne!19478 r!17423))))))

(declare-fun b!3059543 () Bool)

(assert (=> b!3059543 (= e!1915969 e!1915966)))

(declare-fun res!1256122 () Bool)

(assert (=> b!3059543 (=> res!1256122 e!1915966)))

(declare-fun lt!1049635 () Bool)

(assert (=> b!3059543 (= res!1256122 (not lt!1049635))))

(assert (=> b!3059543 (= lt!1049635 (matchR!4365 lt!1049640 s!11993))))

(assert (=> b!3059543 (= lt!1049635 (matchR!4365 (regTwo!19478 r!17423) s!11993))))

(declare-fun lt!1049637 () Unit!49405)

(declare-fun lemmaSimplifySound!268 (Regex!9483 List!35348) Unit!49405)

(assert (=> b!3059543 (= lt!1049637 (lemmaSimplifySound!268 (regTwo!19478 r!17423) s!11993))))

(assert (= (and start!292076 res!1256116) b!3059536))

(assert (= (and b!3059536 (not res!1256118)) b!3059534))

(assert (= (and b!3059534 (not res!1256119)) b!3059541))

(assert (= (and b!3059541 (not res!1256121)) b!3059539))

(assert (= (and b!3059539 (not res!1256120)) b!3059532))

(assert (= (and b!3059532 (not res!1256115)) b!3059543))

(assert (= (and b!3059543 (not res!1256122)) b!3059542))

(assert (= (and b!3059542 (not res!1256117)) b!3059533))

(assert (= (and b!3059533 (not res!1256114)) b!3059540))

(assert (= (and start!292076 ((_ is ElementMatch!9483) r!17423)) b!3059538))

(assert (= (and start!292076 ((_ is Concat!14804) r!17423)) b!3059535))

(assert (= (and start!292076 ((_ is Star!9483) r!17423)) b!3059531))

(assert (= (and start!292076 ((_ is Union!9483) r!17423)) b!3059530))

(assert (= (and start!292076 ((_ is Cons!35224) s!11993)) b!3059537))

(declare-fun m!3381017 () Bool)

(assert (=> b!3059532 m!3381017))

(declare-fun m!3381019 () Bool)

(assert (=> b!3059543 m!3381019))

(declare-fun m!3381021 () Bool)

(assert (=> b!3059543 m!3381021))

(declare-fun m!3381023 () Bool)

(assert (=> b!3059543 m!3381023))

(declare-fun m!3381025 () Bool)

(assert (=> b!3059539 m!3381025))

(declare-fun m!3381027 () Bool)

(assert (=> b!3059536 m!3381027))

(declare-fun m!3381029 () Bool)

(assert (=> b!3059536 m!3381029))

(declare-fun m!3381031 () Bool)

(assert (=> b!3059536 m!3381031))

(declare-fun m!3381033 () Bool)

(assert (=> b!3059540 m!3381033))

(declare-fun m!3381035 () Bool)

(assert (=> b!3059541 m!3381035))

(declare-fun m!3381037 () Bool)

(assert (=> b!3059541 m!3381037))

(declare-fun m!3381039 () Bool)

(assert (=> b!3059541 m!3381039))

(declare-fun m!3381041 () Bool)

(assert (=> start!292076 m!3381041))

(declare-fun m!3381043 () Bool)

(assert (=> b!3059534 m!3381043))

(declare-fun m!3381045 () Bool)

(assert (=> b!3059542 m!3381045))

(declare-fun m!3381047 () Bool)

(assert (=> b!3059533 m!3381047))

(check-sat (not b!3059535) (not b!3059533) (not b!3059541) (not start!292076) tp_is_empty!16529 (not b!3059542) (not b!3059543) (not b!3059531) (not b!3059537) (not b!3059540) (not b!3059530) (not b!3059539) (not b!3059536) (not b!3059532) (not b!3059534))
(check-sat)
(get-model)

(declare-fun b!3059604 () Bool)

(declare-fun e!1916008 () Bool)

(declare-fun e!1916011 () Bool)

(assert (=> b!3059604 (= e!1916008 e!1916011)))

(declare-fun c!507810 () Bool)

(assert (=> b!3059604 (= c!507810 ((_ is Star!9483) r!17423))))

(declare-fun bm!211498 () Bool)

(declare-fun call!211504 () Bool)

(declare-fun call!211503 () Bool)

(assert (=> bm!211498 (= call!211504 call!211503)))

(declare-fun b!3059605 () Bool)

(declare-fun e!1916005 () Bool)

(assert (=> b!3059605 (= e!1916005 call!211504)))

(declare-fun b!3059606 () Bool)

(declare-fun e!1916010 () Bool)

(assert (=> b!3059606 (= e!1916010 e!1916005)))

(declare-fun res!1256159 () Bool)

(assert (=> b!3059606 (=> (not res!1256159) (not e!1916005))))

(declare-fun call!211502 () Bool)

(assert (=> b!3059606 (= res!1256159 call!211502)))

(declare-fun b!3059607 () Bool)

(declare-fun res!1256160 () Bool)

(declare-fun e!1916007 () Bool)

(assert (=> b!3059607 (=> (not res!1256160) (not e!1916007))))

(assert (=> b!3059607 (= res!1256160 call!211504)))

(declare-fun e!1916006 () Bool)

(assert (=> b!3059607 (= e!1916006 e!1916007)))

(declare-fun b!3059608 () Bool)

(assert (=> b!3059608 (= e!1916007 call!211502)))

(declare-fun b!3059609 () Bool)

(assert (=> b!3059609 (= e!1916011 e!1916006)))

(declare-fun c!507809 () Bool)

(assert (=> b!3059609 (= c!507809 ((_ is Union!9483) r!17423))))

(declare-fun d!855097 () Bool)

(declare-fun res!1256161 () Bool)

(assert (=> d!855097 (=> res!1256161 e!1916008)))

(assert (=> d!855097 (= res!1256161 ((_ is ElementMatch!9483) r!17423))))

(assert (=> d!855097 (= (validRegex!4216 r!17423) e!1916008)))

(declare-fun bm!211497 () Bool)

(assert (=> bm!211497 (= call!211502 (validRegex!4216 (ite c!507809 (regTwo!19479 r!17423) (regOne!19478 r!17423))))))

(declare-fun b!3059610 () Bool)

(declare-fun e!1916009 () Bool)

(assert (=> b!3059610 (= e!1916009 call!211503)))

(declare-fun bm!211499 () Bool)

(assert (=> bm!211499 (= call!211503 (validRegex!4216 (ite c!507810 (reg!9812 r!17423) (ite c!507809 (regOne!19479 r!17423) (regTwo!19478 r!17423)))))))

(declare-fun b!3059611 () Bool)

(declare-fun res!1256158 () Bool)

(assert (=> b!3059611 (=> res!1256158 e!1916010)))

(assert (=> b!3059611 (= res!1256158 (not ((_ is Concat!14804) r!17423)))))

(assert (=> b!3059611 (= e!1916006 e!1916010)))

(declare-fun b!3059612 () Bool)

(assert (=> b!3059612 (= e!1916011 e!1916009)))

(declare-fun res!1256157 () Bool)

(assert (=> b!3059612 (= res!1256157 (not (nullable!3129 (reg!9812 r!17423))))))

(assert (=> b!3059612 (=> (not res!1256157) (not e!1916009))))

(assert (= (and d!855097 (not res!1256161)) b!3059604))

(assert (= (and b!3059604 c!507810) b!3059612))

(assert (= (and b!3059604 (not c!507810)) b!3059609))

(assert (= (and b!3059612 res!1256157) b!3059610))

(assert (= (and b!3059609 c!507809) b!3059607))

(assert (= (and b!3059609 (not c!507809)) b!3059611))

(assert (= (and b!3059607 res!1256160) b!3059608))

(assert (= (and b!3059611 (not res!1256158)) b!3059606))

(assert (= (and b!3059606 res!1256159) b!3059605))

(assert (= (or b!3059607 b!3059605) bm!211498))

(assert (= (or b!3059608 b!3059606) bm!211497))

(assert (= (or b!3059610 bm!211498) bm!211499))

(declare-fun m!3381063 () Bool)

(assert (=> bm!211497 m!3381063))

(declare-fun m!3381065 () Bool)

(assert (=> bm!211499 m!3381065))

(declare-fun m!3381067 () Bool)

(assert (=> b!3059612 m!3381067))

(assert (=> start!292076 d!855097))

(declare-fun d!855103 () Bool)

(assert (=> d!855103 (= (isEmptyLang!534 lt!1049638) ((_ is EmptyLang!9483) lt!1049638))))

(assert (=> b!3059541 d!855103))

(declare-fun b!3059835 () Bool)

(declare-fun e!1916148 () Regex!9483)

(declare-fun e!1916154 () Regex!9483)

(assert (=> b!3059835 (= e!1916148 e!1916154)))

(declare-fun c!507896 () Bool)

(assert (=> b!3059835 (= c!507896 ((_ is Star!9483) (regTwo!19478 r!17423)))))

(declare-fun b!3059836 () Bool)

(declare-fun e!1916152 () Regex!9483)

(declare-fun e!1916150 () Regex!9483)

(assert (=> b!3059836 (= e!1916152 e!1916150)))

(declare-fun c!507904 () Bool)

(declare-fun lt!1049689 () Regex!9483)

(assert (=> b!3059836 (= c!507904 (isEmptyExpr!540 lt!1049689))))

(declare-fun b!3059837 () Bool)

(declare-fun e!1916156 () Regex!9483)

(declare-fun e!1916153 () Regex!9483)

(assert (=> b!3059837 (= e!1916156 e!1916153)))

(declare-fun lt!1049687 () Regex!9483)

(declare-fun call!211563 () Regex!9483)

(assert (=> b!3059837 (= lt!1049687 call!211563)))

(declare-fun lt!1049685 () Regex!9483)

(declare-fun call!211564 () Regex!9483)

(assert (=> b!3059837 (= lt!1049685 call!211564)))

(declare-fun c!507899 () Bool)

(declare-fun call!211562 () Bool)

(assert (=> b!3059837 (= c!507899 call!211562)))

(declare-fun b!3059838 () Bool)

(declare-fun e!1916146 () Bool)

(declare-fun lt!1049688 () Regex!9483)

(assert (=> b!3059838 (= e!1916146 (= (nullable!3129 lt!1049688) (nullable!3129 (regTwo!19478 r!17423))))))

(declare-fun bm!211555 () Bool)

(declare-fun call!211566 () Regex!9483)

(declare-fun c!507898 () Bool)

(assert (=> bm!211555 (= call!211566 (simplify!438 (ite c!507896 (reg!9812 (regTwo!19478 r!17423)) (ite c!507898 (regOne!19479 (regTwo!19478 r!17423)) (regTwo!19478 (regTwo!19478 r!17423))))))))

(declare-fun b!3059839 () Bool)

(declare-fun e!1916149 () Regex!9483)

(assert (=> b!3059839 (= e!1916149 EmptyLang!9483)))

(declare-fun b!3059840 () Bool)

(declare-fun c!507906 () Bool)

(assert (=> b!3059840 (= c!507906 ((_ is EmptyExpr!9483) (regTwo!19478 r!17423)))))

(declare-fun e!1916155 () Regex!9483)

(assert (=> b!3059840 (= e!1916155 e!1916148)))

(declare-fun b!3059841 () Bool)

(assert (=> b!3059841 (= e!1916149 e!1916155)))

(declare-fun c!507902 () Bool)

(assert (=> b!3059841 (= c!507902 ((_ is ElementMatch!9483) (regTwo!19478 r!17423)))))

(declare-fun b!3059842 () Bool)

(declare-fun lt!1049684 () Regex!9483)

(assert (=> b!3059842 (= e!1916150 lt!1049684)))

(declare-fun d!855107 () Bool)

(assert (=> d!855107 e!1916146))

(declare-fun res!1256215 () Bool)

(assert (=> d!855107 (=> (not res!1256215) (not e!1916146))))

(assert (=> d!855107 (= res!1256215 (validRegex!4216 lt!1049688))))

(assert (=> d!855107 (= lt!1049688 e!1916149)))

(declare-fun c!507900 () Bool)

(assert (=> d!855107 (= c!507900 ((_ is EmptyLang!9483) (regTwo!19478 r!17423)))))

(assert (=> d!855107 (validRegex!4216 (regTwo!19478 r!17423))))

(assert (=> d!855107 (= (simplify!438 (regTwo!19478 r!17423)) lt!1049688)))

(declare-fun b!3059843 () Bool)

(declare-fun e!1916158 () Regex!9483)

(assert (=> b!3059843 (= e!1916156 e!1916158)))

(assert (=> b!3059843 (= lt!1049684 call!211564)))

(assert (=> b!3059843 (= lt!1049689 call!211563)))

(declare-fun res!1256214 () Bool)

(assert (=> b!3059843 (= res!1256214 call!211562)))

(declare-fun e!1916145 () Bool)

(assert (=> b!3059843 (=> res!1256214 e!1916145)))

(declare-fun c!507901 () Bool)

(assert (=> b!3059843 (= c!507901 e!1916145)))

(declare-fun b!3059844 () Bool)

(declare-fun c!507905 () Bool)

(declare-fun call!211561 () Bool)

(assert (=> b!3059844 (= c!507905 call!211561)))

(assert (=> b!3059844 (= e!1916158 e!1916152)))

(declare-fun b!3059845 () Bool)

(declare-fun e!1916157 () Regex!9483)

(assert (=> b!3059845 (= e!1916157 lt!1049687)))

(declare-fun b!3059846 () Bool)

(assert (=> b!3059846 (= e!1916152 lt!1049689)))

(declare-fun b!3059847 () Bool)

(assert (=> b!3059847 (= e!1916148 EmptyExpr!9483)))

(declare-fun bm!211556 () Bool)

(assert (=> bm!211556 (= call!211563 call!211566)))

(declare-fun lt!1049686 () Regex!9483)

(declare-fun bm!211557 () Bool)

(assert (=> bm!211557 (= call!211561 (isEmptyExpr!540 (ite c!507896 lt!1049686 lt!1049684)))))

(declare-fun bm!211558 () Bool)

(declare-fun call!211565 () Bool)

(declare-fun call!211560 () Bool)

(assert (=> bm!211558 (= call!211565 call!211560)))

(declare-fun b!3059848 () Bool)

(assert (=> b!3059848 (= e!1916157 (Union!9483 lt!1049687 lt!1049685))))

(declare-fun b!3059849 () Bool)

(assert (=> b!3059849 (= e!1916153 lt!1049685)))

(declare-fun b!3059850 () Bool)

(assert (=> b!3059850 (= e!1916145 call!211565)))

(declare-fun b!3059851 () Bool)

(declare-fun e!1916147 () Regex!9483)

(assert (=> b!3059851 (= e!1916147 EmptyExpr!9483)))

(declare-fun bm!211559 () Bool)

(assert (=> bm!211559 (= call!211560 (isEmptyLang!534 (ite c!507896 lt!1049686 (ite c!507898 lt!1049685 lt!1049689))))))

(declare-fun b!3059852 () Bool)

(assert (=> b!3059852 (= c!507898 ((_ is Union!9483) (regTwo!19478 r!17423)))))

(assert (=> b!3059852 (= e!1916154 e!1916156)))

(declare-fun b!3059853 () Bool)

(assert (=> b!3059853 (= e!1916158 EmptyLang!9483)))

(declare-fun b!3059854 () Bool)

(declare-fun c!507903 () Bool)

(assert (=> b!3059854 (= c!507903 call!211565)))

(assert (=> b!3059854 (= e!1916153 e!1916157)))

(declare-fun b!3059855 () Bool)

(declare-fun c!507897 () Bool)

(declare-fun e!1916151 () Bool)

(assert (=> b!3059855 (= c!507897 e!1916151)))

(declare-fun res!1256216 () Bool)

(assert (=> b!3059855 (=> res!1256216 e!1916151)))

(assert (=> b!3059855 (= res!1256216 call!211560)))

(assert (=> b!3059855 (= lt!1049686 call!211566)))

(assert (=> b!3059855 (= e!1916154 e!1916147)))

(declare-fun b!3059856 () Bool)

(assert (=> b!3059856 (= e!1916155 (regTwo!19478 r!17423))))

(declare-fun bm!211560 () Bool)

(assert (=> bm!211560 (= call!211564 (simplify!438 (ite c!507898 (regTwo!19479 (regTwo!19478 r!17423)) (regOne!19478 (regTwo!19478 r!17423)))))))

(declare-fun bm!211561 () Bool)

(assert (=> bm!211561 (= call!211562 (isEmptyLang!534 (ite c!507898 lt!1049687 lt!1049684)))))

(declare-fun b!3059857 () Bool)

(assert (=> b!3059857 (= e!1916147 (Star!9483 lt!1049686))))

(declare-fun b!3059858 () Bool)

(assert (=> b!3059858 (= e!1916151 call!211561)))

(declare-fun b!3059859 () Bool)

(assert (=> b!3059859 (= e!1916150 (Concat!14804 lt!1049684 lt!1049689))))

(assert (= (and d!855107 c!507900) b!3059839))

(assert (= (and d!855107 (not c!507900)) b!3059841))

(assert (= (and b!3059841 c!507902) b!3059856))

(assert (= (and b!3059841 (not c!507902)) b!3059840))

(assert (= (and b!3059840 c!507906) b!3059847))

(assert (= (and b!3059840 (not c!507906)) b!3059835))

(assert (= (and b!3059835 c!507896) b!3059855))

(assert (= (and b!3059835 (not c!507896)) b!3059852))

(assert (= (and b!3059855 (not res!1256216)) b!3059858))

(assert (= (and b!3059855 c!507897) b!3059851))

(assert (= (and b!3059855 (not c!507897)) b!3059857))

(assert (= (and b!3059852 c!507898) b!3059837))

(assert (= (and b!3059852 (not c!507898)) b!3059843))

(assert (= (and b!3059837 c!507899) b!3059849))

(assert (= (and b!3059837 (not c!507899)) b!3059854))

(assert (= (and b!3059854 c!507903) b!3059845))

(assert (= (and b!3059854 (not c!507903)) b!3059848))

(assert (= (and b!3059843 (not res!1256214)) b!3059850))

(assert (= (and b!3059843 c!507901) b!3059853))

(assert (= (and b!3059843 (not c!507901)) b!3059844))

(assert (= (and b!3059844 c!507905) b!3059846))

(assert (= (and b!3059844 (not c!507905)) b!3059836))

(assert (= (and b!3059836 c!507904) b!3059842))

(assert (= (and b!3059836 (not c!507904)) b!3059859))

(assert (= (or b!3059837 b!3059843) bm!211556))

(assert (= (or b!3059837 b!3059843) bm!211560))

(assert (= (or b!3059854 b!3059850) bm!211558))

(assert (= (or b!3059837 b!3059843) bm!211561))

(assert (= (or b!3059858 b!3059844) bm!211557))

(assert (= (or b!3059855 bm!211556) bm!211555))

(assert (= (or b!3059855 bm!211558) bm!211559))

(assert (= (and d!855107 res!1256215) b!3059838))

(declare-fun m!3381125 () Bool)

(assert (=> bm!211560 m!3381125))

(declare-fun m!3381127 () Bool)

(assert (=> d!855107 m!3381127))

(declare-fun m!3381129 () Bool)

(assert (=> d!855107 m!3381129))

(declare-fun m!3381131 () Bool)

(assert (=> bm!211555 m!3381131))

(declare-fun m!3381133 () Bool)

(assert (=> bm!211559 m!3381133))

(declare-fun m!3381135 () Bool)

(assert (=> bm!211557 m!3381135))

(declare-fun m!3381137 () Bool)

(assert (=> bm!211561 m!3381137))

(declare-fun m!3381139 () Bool)

(assert (=> b!3059838 m!3381139))

(declare-fun m!3381141 () Bool)

(assert (=> b!3059838 m!3381141))

(declare-fun m!3381143 () Bool)

(assert (=> b!3059836 m!3381143))

(assert (=> b!3059541 d!855107))

(declare-fun b!3059860 () Bool)

(declare-fun e!1916162 () Regex!9483)

(declare-fun e!1916168 () Regex!9483)

(assert (=> b!3059860 (= e!1916162 e!1916168)))

(declare-fun c!507907 () Bool)

(assert (=> b!3059860 (= c!507907 ((_ is Star!9483) (regOne!19478 r!17423)))))

(declare-fun b!3059861 () Bool)

(declare-fun e!1916166 () Regex!9483)

(declare-fun e!1916164 () Regex!9483)

(assert (=> b!3059861 (= e!1916166 e!1916164)))

(declare-fun c!507915 () Bool)

(declare-fun lt!1049695 () Regex!9483)

(assert (=> b!3059861 (= c!507915 (isEmptyExpr!540 lt!1049695))))

(declare-fun b!3059862 () Bool)

(declare-fun e!1916170 () Regex!9483)

(declare-fun e!1916167 () Regex!9483)

(assert (=> b!3059862 (= e!1916170 e!1916167)))

(declare-fun lt!1049693 () Regex!9483)

(declare-fun call!211570 () Regex!9483)

(assert (=> b!3059862 (= lt!1049693 call!211570)))

(declare-fun lt!1049691 () Regex!9483)

(declare-fun call!211571 () Regex!9483)

(assert (=> b!3059862 (= lt!1049691 call!211571)))

(declare-fun c!507910 () Bool)

(declare-fun call!211569 () Bool)

(assert (=> b!3059862 (= c!507910 call!211569)))

(declare-fun b!3059863 () Bool)

(declare-fun e!1916160 () Bool)

(declare-fun lt!1049694 () Regex!9483)

(assert (=> b!3059863 (= e!1916160 (= (nullable!3129 lt!1049694) (nullable!3129 (regOne!19478 r!17423))))))

(declare-fun call!211573 () Regex!9483)

(declare-fun c!507909 () Bool)

(declare-fun bm!211562 () Bool)

(assert (=> bm!211562 (= call!211573 (simplify!438 (ite c!507907 (reg!9812 (regOne!19478 r!17423)) (ite c!507909 (regOne!19479 (regOne!19478 r!17423)) (regTwo!19478 (regOne!19478 r!17423))))))))

(declare-fun b!3059864 () Bool)

(declare-fun e!1916163 () Regex!9483)

(assert (=> b!3059864 (= e!1916163 EmptyLang!9483)))

(declare-fun b!3059865 () Bool)

(declare-fun c!507917 () Bool)

(assert (=> b!3059865 (= c!507917 ((_ is EmptyExpr!9483) (regOne!19478 r!17423)))))

(declare-fun e!1916169 () Regex!9483)

(assert (=> b!3059865 (= e!1916169 e!1916162)))

(declare-fun b!3059866 () Bool)

(assert (=> b!3059866 (= e!1916163 e!1916169)))

(declare-fun c!507913 () Bool)

(assert (=> b!3059866 (= c!507913 ((_ is ElementMatch!9483) (regOne!19478 r!17423)))))

(declare-fun b!3059867 () Bool)

(declare-fun lt!1049690 () Regex!9483)

(assert (=> b!3059867 (= e!1916164 lt!1049690)))

(declare-fun d!855125 () Bool)

(assert (=> d!855125 e!1916160))

(declare-fun res!1256218 () Bool)

(assert (=> d!855125 (=> (not res!1256218) (not e!1916160))))

(assert (=> d!855125 (= res!1256218 (validRegex!4216 lt!1049694))))

(assert (=> d!855125 (= lt!1049694 e!1916163)))

(declare-fun c!507911 () Bool)

(assert (=> d!855125 (= c!507911 ((_ is EmptyLang!9483) (regOne!19478 r!17423)))))

(assert (=> d!855125 (validRegex!4216 (regOne!19478 r!17423))))

(assert (=> d!855125 (= (simplify!438 (regOne!19478 r!17423)) lt!1049694)))

(declare-fun b!3059868 () Bool)

(declare-fun e!1916172 () Regex!9483)

(assert (=> b!3059868 (= e!1916170 e!1916172)))

(assert (=> b!3059868 (= lt!1049690 call!211571)))

(assert (=> b!3059868 (= lt!1049695 call!211570)))

(declare-fun res!1256217 () Bool)

(assert (=> b!3059868 (= res!1256217 call!211569)))

(declare-fun e!1916159 () Bool)

(assert (=> b!3059868 (=> res!1256217 e!1916159)))

(declare-fun c!507912 () Bool)

(assert (=> b!3059868 (= c!507912 e!1916159)))

(declare-fun b!3059869 () Bool)

(declare-fun c!507916 () Bool)

(declare-fun call!211568 () Bool)

(assert (=> b!3059869 (= c!507916 call!211568)))

(assert (=> b!3059869 (= e!1916172 e!1916166)))

(declare-fun b!3059870 () Bool)

(declare-fun e!1916171 () Regex!9483)

(assert (=> b!3059870 (= e!1916171 lt!1049693)))

(declare-fun b!3059871 () Bool)

(assert (=> b!3059871 (= e!1916166 lt!1049695)))

(declare-fun b!3059872 () Bool)

(assert (=> b!3059872 (= e!1916162 EmptyExpr!9483)))

(declare-fun bm!211563 () Bool)

(assert (=> bm!211563 (= call!211570 call!211573)))

(declare-fun lt!1049692 () Regex!9483)

(declare-fun bm!211564 () Bool)

(assert (=> bm!211564 (= call!211568 (isEmptyExpr!540 (ite c!507907 lt!1049692 lt!1049690)))))

(declare-fun bm!211565 () Bool)

(declare-fun call!211572 () Bool)

(declare-fun call!211567 () Bool)

(assert (=> bm!211565 (= call!211572 call!211567)))

(declare-fun b!3059873 () Bool)

(assert (=> b!3059873 (= e!1916171 (Union!9483 lt!1049693 lt!1049691))))

(declare-fun b!3059874 () Bool)

(assert (=> b!3059874 (= e!1916167 lt!1049691)))

(declare-fun b!3059875 () Bool)

(assert (=> b!3059875 (= e!1916159 call!211572)))

(declare-fun b!3059876 () Bool)

(declare-fun e!1916161 () Regex!9483)

(assert (=> b!3059876 (= e!1916161 EmptyExpr!9483)))

(declare-fun bm!211566 () Bool)

(assert (=> bm!211566 (= call!211567 (isEmptyLang!534 (ite c!507907 lt!1049692 (ite c!507909 lt!1049691 lt!1049695))))))

(declare-fun b!3059877 () Bool)

(assert (=> b!3059877 (= c!507909 ((_ is Union!9483) (regOne!19478 r!17423)))))

(assert (=> b!3059877 (= e!1916168 e!1916170)))

(declare-fun b!3059878 () Bool)

(assert (=> b!3059878 (= e!1916172 EmptyLang!9483)))

(declare-fun b!3059879 () Bool)

(declare-fun c!507914 () Bool)

(assert (=> b!3059879 (= c!507914 call!211572)))

(assert (=> b!3059879 (= e!1916167 e!1916171)))

(declare-fun b!3059880 () Bool)

(declare-fun c!507908 () Bool)

(declare-fun e!1916165 () Bool)

(assert (=> b!3059880 (= c!507908 e!1916165)))

(declare-fun res!1256219 () Bool)

(assert (=> b!3059880 (=> res!1256219 e!1916165)))

(assert (=> b!3059880 (= res!1256219 call!211567)))

(assert (=> b!3059880 (= lt!1049692 call!211573)))

(assert (=> b!3059880 (= e!1916168 e!1916161)))

(declare-fun b!3059881 () Bool)

(assert (=> b!3059881 (= e!1916169 (regOne!19478 r!17423))))

(declare-fun bm!211567 () Bool)

(assert (=> bm!211567 (= call!211571 (simplify!438 (ite c!507909 (regTwo!19479 (regOne!19478 r!17423)) (regOne!19478 (regOne!19478 r!17423)))))))

(declare-fun bm!211568 () Bool)

(assert (=> bm!211568 (= call!211569 (isEmptyLang!534 (ite c!507909 lt!1049693 lt!1049690)))))

(declare-fun b!3059882 () Bool)

(assert (=> b!3059882 (= e!1916161 (Star!9483 lt!1049692))))

(declare-fun b!3059883 () Bool)

(assert (=> b!3059883 (= e!1916165 call!211568)))

(declare-fun b!3059884 () Bool)

(assert (=> b!3059884 (= e!1916164 (Concat!14804 lt!1049690 lt!1049695))))

(assert (= (and d!855125 c!507911) b!3059864))

(assert (= (and d!855125 (not c!507911)) b!3059866))

(assert (= (and b!3059866 c!507913) b!3059881))

(assert (= (and b!3059866 (not c!507913)) b!3059865))

(assert (= (and b!3059865 c!507917) b!3059872))

(assert (= (and b!3059865 (not c!507917)) b!3059860))

(assert (= (and b!3059860 c!507907) b!3059880))

(assert (= (and b!3059860 (not c!507907)) b!3059877))

(assert (= (and b!3059880 (not res!1256219)) b!3059883))

(assert (= (and b!3059880 c!507908) b!3059876))

(assert (= (and b!3059880 (not c!507908)) b!3059882))

(assert (= (and b!3059877 c!507909) b!3059862))

(assert (= (and b!3059877 (not c!507909)) b!3059868))

(assert (= (and b!3059862 c!507910) b!3059874))

(assert (= (and b!3059862 (not c!507910)) b!3059879))

(assert (= (and b!3059879 c!507914) b!3059870))

(assert (= (and b!3059879 (not c!507914)) b!3059873))

(assert (= (and b!3059868 (not res!1256217)) b!3059875))

(assert (= (and b!3059868 c!507912) b!3059878))

(assert (= (and b!3059868 (not c!507912)) b!3059869))

(assert (= (and b!3059869 c!507916) b!3059871))

(assert (= (and b!3059869 (not c!507916)) b!3059861))

(assert (= (and b!3059861 c!507915) b!3059867))

(assert (= (and b!3059861 (not c!507915)) b!3059884))

(assert (= (or b!3059862 b!3059868) bm!211563))

(assert (= (or b!3059862 b!3059868) bm!211567))

(assert (= (or b!3059879 b!3059875) bm!211565))

(assert (= (or b!3059862 b!3059868) bm!211568))

(assert (= (or b!3059883 b!3059869) bm!211564))

(assert (= (or b!3059880 bm!211563) bm!211562))

(assert (= (or b!3059880 bm!211565) bm!211566))

(assert (= (and d!855125 res!1256218) b!3059863))

(declare-fun m!3381145 () Bool)

(assert (=> bm!211567 m!3381145))

(declare-fun m!3381147 () Bool)

(assert (=> d!855125 m!3381147))

(assert (=> d!855125 m!3381033))

(declare-fun m!3381149 () Bool)

(assert (=> bm!211562 m!3381149))

(declare-fun m!3381151 () Bool)

(assert (=> bm!211566 m!3381151))

(declare-fun m!3381153 () Bool)

(assert (=> bm!211564 m!3381153))

(declare-fun m!3381155 () Bool)

(assert (=> bm!211568 m!3381155))

(declare-fun m!3381157 () Bool)

(assert (=> b!3059863 m!3381157))

(assert (=> b!3059863 m!3381045))

(declare-fun m!3381159 () Bool)

(assert (=> b!3059861 m!3381159))

(assert (=> b!3059541 d!855125))

(declare-fun b!3059885 () Bool)

(declare-fun e!1916176 () Bool)

(declare-fun e!1916179 () Bool)

(assert (=> b!3059885 (= e!1916176 e!1916179)))

(declare-fun c!507919 () Bool)

(assert (=> b!3059885 (= c!507919 ((_ is Star!9483) (regOne!19478 r!17423)))))

(declare-fun bm!211570 () Bool)

(declare-fun call!211576 () Bool)

(declare-fun call!211575 () Bool)

(assert (=> bm!211570 (= call!211576 call!211575)))

(declare-fun b!3059886 () Bool)

(declare-fun e!1916173 () Bool)

(assert (=> b!3059886 (= e!1916173 call!211576)))

(declare-fun b!3059887 () Bool)

(declare-fun e!1916178 () Bool)

(assert (=> b!3059887 (= e!1916178 e!1916173)))

(declare-fun res!1256222 () Bool)

(assert (=> b!3059887 (=> (not res!1256222) (not e!1916173))))

(declare-fun call!211574 () Bool)

(assert (=> b!3059887 (= res!1256222 call!211574)))

(declare-fun b!3059888 () Bool)

(declare-fun res!1256223 () Bool)

(declare-fun e!1916175 () Bool)

(assert (=> b!3059888 (=> (not res!1256223) (not e!1916175))))

(assert (=> b!3059888 (= res!1256223 call!211576)))

(declare-fun e!1916174 () Bool)

(assert (=> b!3059888 (= e!1916174 e!1916175)))

(declare-fun b!3059889 () Bool)

(assert (=> b!3059889 (= e!1916175 call!211574)))

(declare-fun b!3059890 () Bool)

(assert (=> b!3059890 (= e!1916179 e!1916174)))

(declare-fun c!507918 () Bool)

(assert (=> b!3059890 (= c!507918 ((_ is Union!9483) (regOne!19478 r!17423)))))

(declare-fun d!855127 () Bool)

(declare-fun res!1256224 () Bool)

(assert (=> d!855127 (=> res!1256224 e!1916176)))

(assert (=> d!855127 (= res!1256224 ((_ is ElementMatch!9483) (regOne!19478 r!17423)))))

(assert (=> d!855127 (= (validRegex!4216 (regOne!19478 r!17423)) e!1916176)))

(declare-fun bm!211569 () Bool)

(assert (=> bm!211569 (= call!211574 (validRegex!4216 (ite c!507918 (regTwo!19479 (regOne!19478 r!17423)) (regOne!19478 (regOne!19478 r!17423)))))))

(declare-fun b!3059891 () Bool)

(declare-fun e!1916177 () Bool)

(assert (=> b!3059891 (= e!1916177 call!211575)))

(declare-fun bm!211571 () Bool)

(assert (=> bm!211571 (= call!211575 (validRegex!4216 (ite c!507919 (reg!9812 (regOne!19478 r!17423)) (ite c!507918 (regOne!19479 (regOne!19478 r!17423)) (regTwo!19478 (regOne!19478 r!17423))))))))

(declare-fun b!3059892 () Bool)

(declare-fun res!1256221 () Bool)

(assert (=> b!3059892 (=> res!1256221 e!1916178)))

(assert (=> b!3059892 (= res!1256221 (not ((_ is Concat!14804) (regOne!19478 r!17423))))))

(assert (=> b!3059892 (= e!1916174 e!1916178)))

(declare-fun b!3059893 () Bool)

(assert (=> b!3059893 (= e!1916179 e!1916177)))

(declare-fun res!1256220 () Bool)

(assert (=> b!3059893 (= res!1256220 (not (nullable!3129 (reg!9812 (regOne!19478 r!17423)))))))

(assert (=> b!3059893 (=> (not res!1256220) (not e!1916177))))

(assert (= (and d!855127 (not res!1256224)) b!3059885))

(assert (= (and b!3059885 c!507919) b!3059893))

(assert (= (and b!3059885 (not c!507919)) b!3059890))

(assert (= (and b!3059893 res!1256220) b!3059891))

(assert (= (and b!3059890 c!507918) b!3059888))

(assert (= (and b!3059890 (not c!507918)) b!3059892))

(assert (= (and b!3059888 res!1256223) b!3059889))

(assert (= (and b!3059892 (not res!1256221)) b!3059887))

(assert (= (and b!3059887 res!1256222) b!3059886))

(assert (= (or b!3059888 b!3059886) bm!211570))

(assert (= (or b!3059889 b!3059887) bm!211569))

(assert (= (or b!3059891 bm!211570) bm!211571))

(declare-fun m!3381161 () Bool)

(assert (=> bm!211569 m!3381161))

(declare-fun m!3381163 () Bool)

(assert (=> bm!211571 m!3381163))

(declare-fun m!3381165 () Bool)

(assert (=> b!3059893 m!3381165))

(assert (=> b!3059540 d!855127))

(declare-fun d!855129 () Bool)

(declare-fun nullableFct!889 (Regex!9483) Bool)

(assert (=> d!855129 (= (nullable!3129 (regOne!19478 r!17423)) (nullableFct!889 (regOne!19478 r!17423)))))

(declare-fun bs!532435 () Bool)

(assert (= bs!532435 d!855129))

(declare-fun m!3381167 () Bool)

(assert (=> bs!532435 m!3381167))

(assert (=> b!3059542 d!855129))

(declare-fun b!3060020 () Bool)

(assert (=> b!3060020 true))

(assert (=> b!3060020 true))

(declare-fun bs!532439 () Bool)

(declare-fun b!3060023 () Bool)

(assert (= bs!532439 (and b!3060023 b!3060020)))

(declare-fun lambda!113862 () Int)

(declare-fun lambda!113861 () Int)

(assert (=> bs!532439 (not (= lambda!113862 lambda!113861))))

(assert (=> b!3060023 true))

(assert (=> b!3060023 true))

(declare-fun b!3060014 () Bool)

(declare-fun e!1916239 () Bool)

(declare-fun e!1916235 () Bool)

(assert (=> b!3060014 (= e!1916239 e!1916235)))

(declare-fun res!1256271 () Bool)

(assert (=> b!3060014 (= res!1256271 (matchRSpec!1620 (regOne!19479 r!17423) s!11993))))

(assert (=> b!3060014 (=> res!1256271 e!1916235)))

(declare-fun bm!211584 () Bool)

(declare-fun call!211590 () Bool)

(assert (=> bm!211584 (= call!211590 (isEmpty!19539 s!11993))))

(declare-fun b!3060015 () Bool)

(declare-fun e!1916233 () Bool)

(declare-fun e!1916236 () Bool)

(assert (=> b!3060015 (= e!1916233 e!1916236)))

(declare-fun res!1256270 () Bool)

(assert (=> b!3060015 (= res!1256270 (not ((_ is EmptyLang!9483) r!17423)))))

(assert (=> b!3060015 (=> (not res!1256270) (not e!1916236))))

(declare-fun b!3060016 () Bool)

(declare-fun res!1256272 () Bool)

(declare-fun e!1916237 () Bool)

(assert (=> b!3060016 (=> res!1256272 e!1916237)))

(assert (=> b!3060016 (= res!1256272 call!211590)))

(declare-fun e!1916238 () Bool)

(assert (=> b!3060016 (= e!1916238 e!1916237)))

(declare-fun b!3060017 () Bool)

(assert (=> b!3060017 (= e!1916239 e!1916238)))

(declare-fun c!507940 () Bool)

(assert (=> b!3060017 (= c!507940 ((_ is Star!9483) r!17423))))

(declare-fun d!855131 () Bool)

(declare-fun c!507939 () Bool)

(assert (=> d!855131 (= c!507939 ((_ is EmptyExpr!9483) r!17423))))

(assert (=> d!855131 (= (matchRSpec!1620 r!17423 s!11993) e!1916233)))

(declare-fun b!3060018 () Bool)

(declare-fun c!507941 () Bool)

(assert (=> b!3060018 (= c!507941 ((_ is Union!9483) r!17423))))

(declare-fun e!1916234 () Bool)

(assert (=> b!3060018 (= e!1916234 e!1916239)))

(declare-fun bm!211585 () Bool)

(declare-fun call!211589 () Bool)

(declare-fun Exists!1746 (Int) Bool)

(assert (=> bm!211585 (= call!211589 (Exists!1746 (ite c!507940 lambda!113861 lambda!113862)))))

(declare-fun b!3060019 () Bool)

(assert (=> b!3060019 (= e!1916233 call!211590)))

(assert (=> b!3060020 (= e!1916237 call!211589)))

(declare-fun b!3060021 () Bool)

(assert (=> b!3060021 (= e!1916235 (matchRSpec!1620 (regTwo!19479 r!17423) s!11993))))

(declare-fun b!3060022 () Bool)

(assert (=> b!3060022 (= e!1916234 (= s!11993 (Cons!35224 (c!507795 r!17423) Nil!35224)))))

(assert (=> b!3060023 (= e!1916238 call!211589)))

(declare-fun b!3060024 () Bool)

(declare-fun c!507938 () Bool)

(assert (=> b!3060024 (= c!507938 ((_ is ElementMatch!9483) r!17423))))

(assert (=> b!3060024 (= e!1916236 e!1916234)))

(assert (= (and d!855131 c!507939) b!3060019))

(assert (= (and d!855131 (not c!507939)) b!3060015))

(assert (= (and b!3060015 res!1256270) b!3060024))

(assert (= (and b!3060024 c!507938) b!3060022))

(assert (= (and b!3060024 (not c!507938)) b!3060018))

(assert (= (and b!3060018 c!507941) b!3060014))

(assert (= (and b!3060018 (not c!507941)) b!3060017))

(assert (= (and b!3060014 (not res!1256271)) b!3060021))

(assert (= (and b!3060017 c!507940) b!3060016))

(assert (= (and b!3060017 (not c!507940)) b!3060023))

(assert (= (and b!3060016 (not res!1256272)) b!3060020))

(assert (= (or b!3060020 b!3060023) bm!211585))

(assert (= (or b!3060019 b!3060016) bm!211584))

(declare-fun m!3381197 () Bool)

(assert (=> b!3060014 m!3381197))

(assert (=> bm!211584 m!3381043))

(declare-fun m!3381199 () Bool)

(assert (=> bm!211585 m!3381199))

(declare-fun m!3381201 () Bool)

(assert (=> b!3060021 m!3381201))

(assert (=> b!3059536 d!855131))

(declare-fun b!3060057 () Bool)

(declare-fun e!1916256 () Bool)

(declare-fun head!6784 (List!35348) C!19152)

(assert (=> b!3060057 (= e!1916256 (not (= (head!6784 s!11993) (c!507795 r!17423))))))

(declare-fun b!3060058 () Bool)

(declare-fun res!1256290 () Bool)

(assert (=> b!3060058 (=> res!1256290 e!1916256)))

(declare-fun tail!5010 (List!35348) List!35348)

(assert (=> b!3060058 (= res!1256290 (not (isEmpty!19539 (tail!5010 s!11993))))))

(declare-fun b!3060059 () Bool)

(declare-fun e!1916255 () Bool)

(declare-fun e!1916257 () Bool)

(assert (=> b!3060059 (= e!1916255 e!1916257)))

(declare-fun c!507948 () Bool)

(assert (=> b!3060059 (= c!507948 ((_ is EmptyLang!9483) r!17423))))

(declare-fun bm!211588 () Bool)

(declare-fun call!211593 () Bool)

(assert (=> bm!211588 (= call!211593 (isEmpty!19539 s!11993))))

(declare-fun d!855143 () Bool)

(assert (=> d!855143 e!1916255))

(declare-fun c!507950 () Bool)

(assert (=> d!855143 (= c!507950 ((_ is EmptyExpr!9483) r!17423))))

(declare-fun lt!1049703 () Bool)

(declare-fun e!1916260 () Bool)

(assert (=> d!855143 (= lt!1049703 e!1916260)))

(declare-fun c!507949 () Bool)

(assert (=> d!855143 (= c!507949 (isEmpty!19539 s!11993))))

(assert (=> d!855143 (validRegex!4216 r!17423)))

(assert (=> d!855143 (= (matchR!4365 r!17423 s!11993) lt!1049703)))

(declare-fun b!3060060 () Bool)

(declare-fun e!1916259 () Bool)

(assert (=> b!3060060 (= e!1916259 e!1916256)))

(declare-fun res!1256294 () Bool)

(assert (=> b!3060060 (=> res!1256294 e!1916256)))

(assert (=> b!3060060 (= res!1256294 call!211593)))

(declare-fun b!3060061 () Bool)

(declare-fun res!1256293 () Bool)

(declare-fun e!1916258 () Bool)

(assert (=> b!3060061 (=> res!1256293 e!1916258)))

(declare-fun e!1916254 () Bool)

(assert (=> b!3060061 (= res!1256293 e!1916254)))

(declare-fun res!1256295 () Bool)

(assert (=> b!3060061 (=> (not res!1256295) (not e!1916254))))

(assert (=> b!3060061 (= res!1256295 lt!1049703)))

(declare-fun b!3060062 () Bool)

(declare-fun derivativeStep!2725 (Regex!9483 C!19152) Regex!9483)

(assert (=> b!3060062 (= e!1916260 (matchR!4365 (derivativeStep!2725 r!17423 (head!6784 s!11993)) (tail!5010 s!11993)))))

(declare-fun b!3060063 () Bool)

(declare-fun res!1256296 () Bool)

(assert (=> b!3060063 (=> (not res!1256296) (not e!1916254))))

(assert (=> b!3060063 (= res!1256296 (isEmpty!19539 (tail!5010 s!11993)))))

(declare-fun b!3060064 () Bool)

(assert (=> b!3060064 (= e!1916254 (= (head!6784 s!11993) (c!507795 r!17423)))))

(declare-fun b!3060065 () Bool)

(assert (=> b!3060065 (= e!1916260 (nullable!3129 r!17423))))

(declare-fun b!3060066 () Bool)

(assert (=> b!3060066 (= e!1916258 e!1916259)))

(declare-fun res!1256291 () Bool)

(assert (=> b!3060066 (=> (not res!1256291) (not e!1916259))))

(assert (=> b!3060066 (= res!1256291 (not lt!1049703))))

(declare-fun b!3060067 () Bool)

(declare-fun res!1256289 () Bool)

(assert (=> b!3060067 (=> (not res!1256289) (not e!1916254))))

(assert (=> b!3060067 (= res!1256289 (not call!211593))))

(declare-fun b!3060068 () Bool)

(assert (=> b!3060068 (= e!1916257 (not lt!1049703))))

(declare-fun b!3060069 () Bool)

(declare-fun res!1256292 () Bool)

(assert (=> b!3060069 (=> res!1256292 e!1916258)))

(assert (=> b!3060069 (= res!1256292 (not ((_ is ElementMatch!9483) r!17423)))))

(assert (=> b!3060069 (= e!1916257 e!1916258)))

(declare-fun b!3060070 () Bool)

(assert (=> b!3060070 (= e!1916255 (= lt!1049703 call!211593))))

(assert (= (and d!855143 c!507949) b!3060065))

(assert (= (and d!855143 (not c!507949)) b!3060062))

(assert (= (and d!855143 c!507950) b!3060070))

(assert (= (and d!855143 (not c!507950)) b!3060059))

(assert (= (and b!3060059 c!507948) b!3060068))

(assert (= (and b!3060059 (not c!507948)) b!3060069))

(assert (= (and b!3060069 (not res!1256292)) b!3060061))

(assert (= (and b!3060061 res!1256295) b!3060067))

(assert (= (and b!3060067 res!1256289) b!3060063))

(assert (= (and b!3060063 res!1256296) b!3060064))

(assert (= (and b!3060061 (not res!1256293)) b!3060066))

(assert (= (and b!3060066 res!1256291) b!3060060))

(assert (= (and b!3060060 (not res!1256294)) b!3060058))

(assert (= (and b!3060058 (not res!1256290)) b!3060057))

(assert (= (or b!3060070 b!3060060 b!3060067) bm!211588))

(declare-fun m!3381203 () Bool)

(assert (=> b!3060058 m!3381203))

(assert (=> b!3060058 m!3381203))

(declare-fun m!3381205 () Bool)

(assert (=> b!3060058 m!3381205))

(declare-fun m!3381207 () Bool)

(assert (=> b!3060057 m!3381207))

(assert (=> b!3060063 m!3381203))

(assert (=> b!3060063 m!3381203))

(assert (=> b!3060063 m!3381205))

(assert (=> d!855143 m!3381043))

(assert (=> d!855143 m!3381041))

(assert (=> bm!211588 m!3381043))

(assert (=> b!3060062 m!3381207))

(assert (=> b!3060062 m!3381207))

(declare-fun m!3381209 () Bool)

(assert (=> b!3060062 m!3381209))

(assert (=> b!3060062 m!3381203))

(assert (=> b!3060062 m!3381209))

(assert (=> b!3060062 m!3381203))

(declare-fun m!3381211 () Bool)

(assert (=> b!3060062 m!3381211))

(declare-fun m!3381213 () Bool)

(assert (=> b!3060065 m!3381213))

(assert (=> b!3060064 m!3381207))

(assert (=> b!3059536 d!855143))

(declare-fun d!855145 () Bool)

(assert (=> d!855145 (= (matchR!4365 r!17423 s!11993) (matchRSpec!1620 r!17423 s!11993))))

(declare-fun lt!1049706 () Unit!49405)

(declare-fun choose!18118 (Regex!9483 List!35348) Unit!49405)

(assert (=> d!855145 (= lt!1049706 (choose!18118 r!17423 s!11993))))

(assert (=> d!855145 (validRegex!4216 r!17423)))

(assert (=> d!855145 (= (mainMatchTheorem!1620 r!17423 s!11993) lt!1049706)))

(declare-fun bs!532440 () Bool)

(assert (= bs!532440 d!855145))

(assert (=> bs!532440 m!3381029))

(assert (=> bs!532440 m!3381027))

(declare-fun m!3381215 () Bool)

(assert (=> bs!532440 m!3381215))

(assert (=> bs!532440 m!3381041))

(assert (=> b!3059536 d!855145))

(declare-fun b!3060071 () Bool)

(declare-fun e!1916263 () Bool)

(assert (=> b!3060071 (= e!1916263 (not (= (head!6784 Nil!35224) (c!507795 (regOne!19478 r!17423)))))))

(declare-fun b!3060072 () Bool)

(declare-fun res!1256298 () Bool)

(assert (=> b!3060072 (=> res!1256298 e!1916263)))

(assert (=> b!3060072 (= res!1256298 (not (isEmpty!19539 (tail!5010 Nil!35224))))))

(declare-fun b!3060073 () Bool)

(declare-fun e!1916262 () Bool)

(declare-fun e!1916264 () Bool)

(assert (=> b!3060073 (= e!1916262 e!1916264)))

(declare-fun c!507951 () Bool)

(assert (=> b!3060073 (= c!507951 ((_ is EmptyLang!9483) (regOne!19478 r!17423)))))

(declare-fun bm!211589 () Bool)

(declare-fun call!211594 () Bool)

(assert (=> bm!211589 (= call!211594 (isEmpty!19539 Nil!35224))))

(declare-fun d!855147 () Bool)

(assert (=> d!855147 e!1916262))

(declare-fun c!507953 () Bool)

(assert (=> d!855147 (= c!507953 ((_ is EmptyExpr!9483) (regOne!19478 r!17423)))))

(declare-fun lt!1049707 () Bool)

(declare-fun e!1916267 () Bool)

(assert (=> d!855147 (= lt!1049707 e!1916267)))

(declare-fun c!507952 () Bool)

(assert (=> d!855147 (= c!507952 (isEmpty!19539 Nil!35224))))

(assert (=> d!855147 (validRegex!4216 (regOne!19478 r!17423))))

(assert (=> d!855147 (= (matchR!4365 (regOne!19478 r!17423) Nil!35224) lt!1049707)))

(declare-fun b!3060074 () Bool)

(declare-fun e!1916266 () Bool)

(assert (=> b!3060074 (= e!1916266 e!1916263)))

(declare-fun res!1256302 () Bool)

(assert (=> b!3060074 (=> res!1256302 e!1916263)))

(assert (=> b!3060074 (= res!1256302 call!211594)))

(declare-fun b!3060075 () Bool)

(declare-fun res!1256301 () Bool)

(declare-fun e!1916265 () Bool)

(assert (=> b!3060075 (=> res!1256301 e!1916265)))

(declare-fun e!1916261 () Bool)

(assert (=> b!3060075 (= res!1256301 e!1916261)))

(declare-fun res!1256303 () Bool)

(assert (=> b!3060075 (=> (not res!1256303) (not e!1916261))))

(assert (=> b!3060075 (= res!1256303 lt!1049707)))

(declare-fun b!3060076 () Bool)

(assert (=> b!3060076 (= e!1916267 (matchR!4365 (derivativeStep!2725 (regOne!19478 r!17423) (head!6784 Nil!35224)) (tail!5010 Nil!35224)))))

(declare-fun b!3060077 () Bool)

(declare-fun res!1256304 () Bool)

(assert (=> b!3060077 (=> (not res!1256304) (not e!1916261))))

(assert (=> b!3060077 (= res!1256304 (isEmpty!19539 (tail!5010 Nil!35224)))))

(declare-fun b!3060078 () Bool)

(assert (=> b!3060078 (= e!1916261 (= (head!6784 Nil!35224) (c!507795 (regOne!19478 r!17423))))))

(declare-fun b!3060079 () Bool)

(assert (=> b!3060079 (= e!1916267 (nullable!3129 (regOne!19478 r!17423)))))

(declare-fun b!3060080 () Bool)

(assert (=> b!3060080 (= e!1916265 e!1916266)))

(declare-fun res!1256299 () Bool)

(assert (=> b!3060080 (=> (not res!1256299) (not e!1916266))))

(assert (=> b!3060080 (= res!1256299 (not lt!1049707))))

(declare-fun b!3060081 () Bool)

(declare-fun res!1256297 () Bool)

(assert (=> b!3060081 (=> (not res!1256297) (not e!1916261))))

(assert (=> b!3060081 (= res!1256297 (not call!211594))))

(declare-fun b!3060082 () Bool)

(assert (=> b!3060082 (= e!1916264 (not lt!1049707))))

(declare-fun b!3060083 () Bool)

(declare-fun res!1256300 () Bool)

(assert (=> b!3060083 (=> res!1256300 e!1916265)))

(assert (=> b!3060083 (= res!1256300 (not ((_ is ElementMatch!9483) (regOne!19478 r!17423))))))

(assert (=> b!3060083 (= e!1916264 e!1916265)))

(declare-fun b!3060084 () Bool)

(assert (=> b!3060084 (= e!1916262 (= lt!1049707 call!211594))))

(assert (= (and d!855147 c!507952) b!3060079))

(assert (= (and d!855147 (not c!507952)) b!3060076))

(assert (= (and d!855147 c!507953) b!3060084))

(assert (= (and d!855147 (not c!507953)) b!3060073))

(assert (= (and b!3060073 c!507951) b!3060082))

(assert (= (and b!3060073 (not c!507951)) b!3060083))

(assert (= (and b!3060083 (not res!1256300)) b!3060075))

(assert (= (and b!3060075 res!1256303) b!3060081))

(assert (= (and b!3060081 res!1256297) b!3060077))

(assert (= (and b!3060077 res!1256304) b!3060078))

(assert (= (and b!3060075 (not res!1256301)) b!3060080))

(assert (= (and b!3060080 res!1256299) b!3060074))

(assert (= (and b!3060074 (not res!1256302)) b!3060072))

(assert (= (and b!3060072 (not res!1256298)) b!3060071))

(assert (= (or b!3060084 b!3060074 b!3060081) bm!211589))

(declare-fun m!3381217 () Bool)

(assert (=> b!3060072 m!3381217))

(assert (=> b!3060072 m!3381217))

(declare-fun m!3381219 () Bool)

(assert (=> b!3060072 m!3381219))

(declare-fun m!3381221 () Bool)

(assert (=> b!3060071 m!3381221))

(assert (=> b!3060077 m!3381217))

(assert (=> b!3060077 m!3381217))

(assert (=> b!3060077 m!3381219))

(declare-fun m!3381223 () Bool)

(assert (=> d!855147 m!3381223))

(assert (=> d!855147 m!3381033))

(assert (=> bm!211589 m!3381223))

(assert (=> b!3060076 m!3381221))

(assert (=> b!3060076 m!3381221))

(declare-fun m!3381225 () Bool)

(assert (=> b!3060076 m!3381225))

(assert (=> b!3060076 m!3381217))

(assert (=> b!3060076 m!3381225))

(assert (=> b!3060076 m!3381217))

(declare-fun m!3381227 () Bool)

(assert (=> b!3060076 m!3381227))

(assert (=> b!3060079 m!3381045))

(assert (=> b!3060078 m!3381221))

(assert (=> b!3059533 d!855147))

(declare-fun d!855149 () Bool)

(assert (=> d!855149 (= (isEmptyExpr!540 lt!1049638) ((_ is EmptyExpr!9483) lt!1049638))))

(assert (=> b!3059532 d!855149))

(declare-fun b!3060085 () Bool)

(declare-fun e!1916270 () Bool)

(assert (=> b!3060085 (= e!1916270 (not (= (head!6784 s!11993) (c!507795 lt!1049640))))))

(declare-fun b!3060086 () Bool)

(declare-fun res!1256306 () Bool)

(assert (=> b!3060086 (=> res!1256306 e!1916270)))

(assert (=> b!3060086 (= res!1256306 (not (isEmpty!19539 (tail!5010 s!11993))))))

(declare-fun b!3060087 () Bool)

(declare-fun e!1916269 () Bool)

(declare-fun e!1916271 () Bool)

(assert (=> b!3060087 (= e!1916269 e!1916271)))

(declare-fun c!507954 () Bool)

(assert (=> b!3060087 (= c!507954 ((_ is EmptyLang!9483) lt!1049640))))

(declare-fun bm!211590 () Bool)

(declare-fun call!211595 () Bool)

(assert (=> bm!211590 (= call!211595 (isEmpty!19539 s!11993))))

(declare-fun d!855151 () Bool)

(assert (=> d!855151 e!1916269))

(declare-fun c!507956 () Bool)

(assert (=> d!855151 (= c!507956 ((_ is EmptyExpr!9483) lt!1049640))))

(declare-fun lt!1049708 () Bool)

(declare-fun e!1916274 () Bool)

(assert (=> d!855151 (= lt!1049708 e!1916274)))

(declare-fun c!507955 () Bool)

(assert (=> d!855151 (= c!507955 (isEmpty!19539 s!11993))))

(assert (=> d!855151 (validRegex!4216 lt!1049640)))

(assert (=> d!855151 (= (matchR!4365 lt!1049640 s!11993) lt!1049708)))

(declare-fun b!3060088 () Bool)

(declare-fun e!1916273 () Bool)

(assert (=> b!3060088 (= e!1916273 e!1916270)))

(declare-fun res!1256310 () Bool)

(assert (=> b!3060088 (=> res!1256310 e!1916270)))

(assert (=> b!3060088 (= res!1256310 call!211595)))

(declare-fun b!3060089 () Bool)

(declare-fun res!1256309 () Bool)

(declare-fun e!1916272 () Bool)

(assert (=> b!3060089 (=> res!1256309 e!1916272)))

(declare-fun e!1916268 () Bool)

(assert (=> b!3060089 (= res!1256309 e!1916268)))

(declare-fun res!1256311 () Bool)

(assert (=> b!3060089 (=> (not res!1256311) (not e!1916268))))

(assert (=> b!3060089 (= res!1256311 lt!1049708)))

(declare-fun b!3060090 () Bool)

(assert (=> b!3060090 (= e!1916274 (matchR!4365 (derivativeStep!2725 lt!1049640 (head!6784 s!11993)) (tail!5010 s!11993)))))

(declare-fun b!3060091 () Bool)

(declare-fun res!1256312 () Bool)

(assert (=> b!3060091 (=> (not res!1256312) (not e!1916268))))

(assert (=> b!3060091 (= res!1256312 (isEmpty!19539 (tail!5010 s!11993)))))

(declare-fun b!3060092 () Bool)

(assert (=> b!3060092 (= e!1916268 (= (head!6784 s!11993) (c!507795 lt!1049640)))))

(declare-fun b!3060093 () Bool)

(assert (=> b!3060093 (= e!1916274 (nullable!3129 lt!1049640))))

(declare-fun b!3060094 () Bool)

(assert (=> b!3060094 (= e!1916272 e!1916273)))

(declare-fun res!1256307 () Bool)

(assert (=> b!3060094 (=> (not res!1256307) (not e!1916273))))

(assert (=> b!3060094 (= res!1256307 (not lt!1049708))))

(declare-fun b!3060095 () Bool)

(declare-fun res!1256305 () Bool)

(assert (=> b!3060095 (=> (not res!1256305) (not e!1916268))))

(assert (=> b!3060095 (= res!1256305 (not call!211595))))

(declare-fun b!3060096 () Bool)

(assert (=> b!3060096 (= e!1916271 (not lt!1049708))))

(declare-fun b!3060097 () Bool)

(declare-fun res!1256308 () Bool)

(assert (=> b!3060097 (=> res!1256308 e!1916272)))

(assert (=> b!3060097 (= res!1256308 (not ((_ is ElementMatch!9483) lt!1049640)))))

(assert (=> b!3060097 (= e!1916271 e!1916272)))

(declare-fun b!3060098 () Bool)

(assert (=> b!3060098 (= e!1916269 (= lt!1049708 call!211595))))

(assert (= (and d!855151 c!507955) b!3060093))

(assert (= (and d!855151 (not c!507955)) b!3060090))

(assert (= (and d!855151 c!507956) b!3060098))

(assert (= (and d!855151 (not c!507956)) b!3060087))

(assert (= (and b!3060087 c!507954) b!3060096))

(assert (= (and b!3060087 (not c!507954)) b!3060097))

(assert (= (and b!3060097 (not res!1256308)) b!3060089))

(assert (= (and b!3060089 res!1256311) b!3060095))

(assert (= (and b!3060095 res!1256305) b!3060091))

(assert (= (and b!3060091 res!1256312) b!3060092))

(assert (= (and b!3060089 (not res!1256309)) b!3060094))

(assert (= (and b!3060094 res!1256307) b!3060088))

(assert (= (and b!3060088 (not res!1256310)) b!3060086))

(assert (= (and b!3060086 (not res!1256306)) b!3060085))

(assert (= (or b!3060098 b!3060088 b!3060095) bm!211590))

(assert (=> b!3060086 m!3381203))

(assert (=> b!3060086 m!3381203))

(assert (=> b!3060086 m!3381205))

(assert (=> b!3060085 m!3381207))

(assert (=> b!3060091 m!3381203))

(assert (=> b!3060091 m!3381203))

(assert (=> b!3060091 m!3381205))

(assert (=> d!855151 m!3381043))

(declare-fun m!3381229 () Bool)

(assert (=> d!855151 m!3381229))

(assert (=> bm!211590 m!3381043))

(assert (=> b!3060090 m!3381207))

(assert (=> b!3060090 m!3381207))

(declare-fun m!3381231 () Bool)

(assert (=> b!3060090 m!3381231))

(assert (=> b!3060090 m!3381203))

(assert (=> b!3060090 m!3381231))

(assert (=> b!3060090 m!3381203))

(declare-fun m!3381233 () Bool)

(assert (=> b!3060090 m!3381233))

(declare-fun m!3381235 () Bool)

(assert (=> b!3060093 m!3381235))

(assert (=> b!3060092 m!3381207))

(assert (=> b!3059543 d!855151))

(declare-fun b!3060099 () Bool)

(declare-fun e!1916277 () Bool)

(assert (=> b!3060099 (= e!1916277 (not (= (head!6784 s!11993) (c!507795 (regTwo!19478 r!17423)))))))

(declare-fun b!3060100 () Bool)

(declare-fun res!1256314 () Bool)

(assert (=> b!3060100 (=> res!1256314 e!1916277)))

(assert (=> b!3060100 (= res!1256314 (not (isEmpty!19539 (tail!5010 s!11993))))))

(declare-fun b!3060101 () Bool)

(declare-fun e!1916276 () Bool)

(declare-fun e!1916278 () Bool)

(assert (=> b!3060101 (= e!1916276 e!1916278)))

(declare-fun c!507957 () Bool)

(assert (=> b!3060101 (= c!507957 ((_ is EmptyLang!9483) (regTwo!19478 r!17423)))))

(declare-fun bm!211591 () Bool)

(declare-fun call!211596 () Bool)

(assert (=> bm!211591 (= call!211596 (isEmpty!19539 s!11993))))

(declare-fun d!855153 () Bool)

(assert (=> d!855153 e!1916276))

(declare-fun c!507959 () Bool)

(assert (=> d!855153 (= c!507959 ((_ is EmptyExpr!9483) (regTwo!19478 r!17423)))))

(declare-fun lt!1049709 () Bool)

(declare-fun e!1916281 () Bool)

(assert (=> d!855153 (= lt!1049709 e!1916281)))

(declare-fun c!507958 () Bool)

(assert (=> d!855153 (= c!507958 (isEmpty!19539 s!11993))))

(assert (=> d!855153 (validRegex!4216 (regTwo!19478 r!17423))))

(assert (=> d!855153 (= (matchR!4365 (regTwo!19478 r!17423) s!11993) lt!1049709)))

(declare-fun b!3060102 () Bool)

(declare-fun e!1916280 () Bool)

(assert (=> b!3060102 (= e!1916280 e!1916277)))

(declare-fun res!1256318 () Bool)

(assert (=> b!3060102 (=> res!1256318 e!1916277)))

(assert (=> b!3060102 (= res!1256318 call!211596)))

(declare-fun b!3060103 () Bool)

(declare-fun res!1256317 () Bool)

(declare-fun e!1916279 () Bool)

(assert (=> b!3060103 (=> res!1256317 e!1916279)))

(declare-fun e!1916275 () Bool)

(assert (=> b!3060103 (= res!1256317 e!1916275)))

(declare-fun res!1256319 () Bool)

(assert (=> b!3060103 (=> (not res!1256319) (not e!1916275))))

(assert (=> b!3060103 (= res!1256319 lt!1049709)))

(declare-fun b!3060104 () Bool)

(assert (=> b!3060104 (= e!1916281 (matchR!4365 (derivativeStep!2725 (regTwo!19478 r!17423) (head!6784 s!11993)) (tail!5010 s!11993)))))

(declare-fun b!3060105 () Bool)

(declare-fun res!1256320 () Bool)

(assert (=> b!3060105 (=> (not res!1256320) (not e!1916275))))

(assert (=> b!3060105 (= res!1256320 (isEmpty!19539 (tail!5010 s!11993)))))

(declare-fun b!3060106 () Bool)

(assert (=> b!3060106 (= e!1916275 (= (head!6784 s!11993) (c!507795 (regTwo!19478 r!17423))))))

(declare-fun b!3060107 () Bool)

(assert (=> b!3060107 (= e!1916281 (nullable!3129 (regTwo!19478 r!17423)))))

(declare-fun b!3060108 () Bool)

(assert (=> b!3060108 (= e!1916279 e!1916280)))

(declare-fun res!1256315 () Bool)

(assert (=> b!3060108 (=> (not res!1256315) (not e!1916280))))

(assert (=> b!3060108 (= res!1256315 (not lt!1049709))))

(declare-fun b!3060109 () Bool)

(declare-fun res!1256313 () Bool)

(assert (=> b!3060109 (=> (not res!1256313) (not e!1916275))))

(assert (=> b!3060109 (= res!1256313 (not call!211596))))

(declare-fun b!3060110 () Bool)

(assert (=> b!3060110 (= e!1916278 (not lt!1049709))))

(declare-fun b!3060111 () Bool)

(declare-fun res!1256316 () Bool)

(assert (=> b!3060111 (=> res!1256316 e!1916279)))

(assert (=> b!3060111 (= res!1256316 (not ((_ is ElementMatch!9483) (regTwo!19478 r!17423))))))

(assert (=> b!3060111 (= e!1916278 e!1916279)))

(declare-fun b!3060112 () Bool)

(assert (=> b!3060112 (= e!1916276 (= lt!1049709 call!211596))))

(assert (= (and d!855153 c!507958) b!3060107))

(assert (= (and d!855153 (not c!507958)) b!3060104))

(assert (= (and d!855153 c!507959) b!3060112))

(assert (= (and d!855153 (not c!507959)) b!3060101))

(assert (= (and b!3060101 c!507957) b!3060110))

(assert (= (and b!3060101 (not c!507957)) b!3060111))

(assert (= (and b!3060111 (not res!1256316)) b!3060103))

(assert (= (and b!3060103 res!1256319) b!3060109))

(assert (= (and b!3060109 res!1256313) b!3060105))

(assert (= (and b!3060105 res!1256320) b!3060106))

(assert (= (and b!3060103 (not res!1256317)) b!3060108))

(assert (= (and b!3060108 res!1256315) b!3060102))

(assert (= (and b!3060102 (not res!1256318)) b!3060100))

(assert (= (and b!3060100 (not res!1256314)) b!3060099))

(assert (= (or b!3060112 b!3060102 b!3060109) bm!211591))

(assert (=> b!3060100 m!3381203))

(assert (=> b!3060100 m!3381203))

(assert (=> b!3060100 m!3381205))

(assert (=> b!3060099 m!3381207))

(assert (=> b!3060105 m!3381203))

(assert (=> b!3060105 m!3381203))

(assert (=> b!3060105 m!3381205))

(assert (=> d!855153 m!3381043))

(assert (=> d!855153 m!3381129))

(assert (=> bm!211591 m!3381043))

(assert (=> b!3060104 m!3381207))

(assert (=> b!3060104 m!3381207))

(declare-fun m!3381237 () Bool)

(assert (=> b!3060104 m!3381237))

(assert (=> b!3060104 m!3381203))

(assert (=> b!3060104 m!3381237))

(assert (=> b!3060104 m!3381203))

(declare-fun m!3381239 () Bool)

(assert (=> b!3060104 m!3381239))

(assert (=> b!3060107 m!3381141))

(assert (=> b!3060106 m!3381207))

(assert (=> b!3059543 d!855153))

(declare-fun d!855155 () Bool)

(assert (=> d!855155 (= (matchR!4365 (regTwo!19478 r!17423) s!11993) (matchR!4365 (simplify!438 (regTwo!19478 r!17423)) s!11993))))

(declare-fun lt!1049712 () Unit!49405)

(declare-fun choose!18119 (Regex!9483 List!35348) Unit!49405)

(assert (=> d!855155 (= lt!1049712 (choose!18119 (regTwo!19478 r!17423) s!11993))))

(assert (=> d!855155 (validRegex!4216 (regTwo!19478 r!17423))))

(assert (=> d!855155 (= (lemmaSimplifySound!268 (regTwo!19478 r!17423) s!11993) lt!1049712)))

(declare-fun bs!532441 () Bool)

(assert (= bs!532441 d!855155))

(assert (=> bs!532441 m!3381129))

(assert (=> bs!532441 m!3381021))

(assert (=> bs!532441 m!3381037))

(declare-fun m!3381241 () Bool)

(assert (=> bs!532441 m!3381241))

(assert (=> bs!532441 m!3381037))

(declare-fun m!3381243 () Bool)

(assert (=> bs!532441 m!3381243))

(assert (=> b!3059543 d!855155))

(declare-fun d!855157 () Bool)

(assert (=> d!855157 (= (isEmpty!19539 s!11993) ((_ is Nil!35224) s!11993))))

(assert (=> b!3059534 d!855157))

(declare-fun d!855159 () Bool)

(assert (=> d!855159 (= (isEmptyLang!534 lt!1049640) ((_ is EmptyLang!9483) lt!1049640))))

(assert (=> b!3059539 d!855159))

(declare-fun b!3060123 () Bool)

(declare-fun e!1916284 () Bool)

(assert (=> b!3060123 (= e!1916284 tp_is_empty!16529)))

(declare-fun b!3060124 () Bool)

(declare-fun tp!967158 () Bool)

(declare-fun tp!967156 () Bool)

(assert (=> b!3060124 (= e!1916284 (and tp!967158 tp!967156))))

(assert (=> b!3059530 (= tp!967103 e!1916284)))

(declare-fun b!3060125 () Bool)

(declare-fun tp!967154 () Bool)

(assert (=> b!3060125 (= e!1916284 tp!967154)))

(declare-fun b!3060126 () Bool)

(declare-fun tp!967157 () Bool)

(declare-fun tp!967155 () Bool)

(assert (=> b!3060126 (= e!1916284 (and tp!967157 tp!967155))))

(assert (= (and b!3059530 ((_ is ElementMatch!9483) (regOne!19479 r!17423))) b!3060123))

(assert (= (and b!3059530 ((_ is Concat!14804) (regOne!19479 r!17423))) b!3060124))

(assert (= (and b!3059530 ((_ is Star!9483) (regOne!19479 r!17423))) b!3060125))

(assert (= (and b!3059530 ((_ is Union!9483) (regOne!19479 r!17423))) b!3060126))

(declare-fun b!3060127 () Bool)

(declare-fun e!1916285 () Bool)

(assert (=> b!3060127 (= e!1916285 tp_is_empty!16529)))

(declare-fun b!3060128 () Bool)

(declare-fun tp!967163 () Bool)

(declare-fun tp!967161 () Bool)

(assert (=> b!3060128 (= e!1916285 (and tp!967163 tp!967161))))

(assert (=> b!3059530 (= tp!967100 e!1916285)))

(declare-fun b!3060129 () Bool)

(declare-fun tp!967159 () Bool)

(assert (=> b!3060129 (= e!1916285 tp!967159)))

(declare-fun b!3060130 () Bool)

(declare-fun tp!967162 () Bool)

(declare-fun tp!967160 () Bool)

(assert (=> b!3060130 (= e!1916285 (and tp!967162 tp!967160))))

(assert (= (and b!3059530 ((_ is ElementMatch!9483) (regTwo!19479 r!17423))) b!3060127))

(assert (= (and b!3059530 ((_ is Concat!14804) (regTwo!19479 r!17423))) b!3060128))

(assert (= (and b!3059530 ((_ is Star!9483) (regTwo!19479 r!17423))) b!3060129))

(assert (= (and b!3059530 ((_ is Union!9483) (regTwo!19479 r!17423))) b!3060130))

(declare-fun b!3060131 () Bool)

(declare-fun e!1916286 () Bool)

(assert (=> b!3060131 (= e!1916286 tp_is_empty!16529)))

(declare-fun b!3060132 () Bool)

(declare-fun tp!967168 () Bool)

(declare-fun tp!967166 () Bool)

(assert (=> b!3060132 (= e!1916286 (and tp!967168 tp!967166))))

(assert (=> b!3059535 (= tp!967101 e!1916286)))

(declare-fun b!3060133 () Bool)

(declare-fun tp!967164 () Bool)

(assert (=> b!3060133 (= e!1916286 tp!967164)))

(declare-fun b!3060134 () Bool)

(declare-fun tp!967167 () Bool)

(declare-fun tp!967165 () Bool)

(assert (=> b!3060134 (= e!1916286 (and tp!967167 tp!967165))))

(assert (= (and b!3059535 ((_ is ElementMatch!9483) (regOne!19478 r!17423))) b!3060131))

(assert (= (and b!3059535 ((_ is Concat!14804) (regOne!19478 r!17423))) b!3060132))

(assert (= (and b!3059535 ((_ is Star!9483) (regOne!19478 r!17423))) b!3060133))

(assert (= (and b!3059535 ((_ is Union!9483) (regOne!19478 r!17423))) b!3060134))

(declare-fun b!3060135 () Bool)

(declare-fun e!1916287 () Bool)

(assert (=> b!3060135 (= e!1916287 tp_is_empty!16529)))

(declare-fun b!3060136 () Bool)

(declare-fun tp!967173 () Bool)

(declare-fun tp!967171 () Bool)

(assert (=> b!3060136 (= e!1916287 (and tp!967173 tp!967171))))

(assert (=> b!3059535 (= tp!967104 e!1916287)))

(declare-fun b!3060137 () Bool)

(declare-fun tp!967169 () Bool)

(assert (=> b!3060137 (= e!1916287 tp!967169)))

(declare-fun b!3060138 () Bool)

(declare-fun tp!967172 () Bool)

(declare-fun tp!967170 () Bool)

(assert (=> b!3060138 (= e!1916287 (and tp!967172 tp!967170))))

(assert (= (and b!3059535 ((_ is ElementMatch!9483) (regTwo!19478 r!17423))) b!3060135))

(assert (= (and b!3059535 ((_ is Concat!14804) (regTwo!19478 r!17423))) b!3060136))

(assert (= (and b!3059535 ((_ is Star!9483) (regTwo!19478 r!17423))) b!3060137))

(assert (= (and b!3059535 ((_ is Union!9483) (regTwo!19478 r!17423))) b!3060138))

(declare-fun b!3060143 () Bool)

(declare-fun e!1916290 () Bool)

(declare-fun tp!967176 () Bool)

(assert (=> b!3060143 (= e!1916290 (and tp_is_empty!16529 tp!967176))))

(assert (=> b!3059537 (= tp!967105 e!1916290)))

(assert (= (and b!3059537 ((_ is Cons!35224) (t!234413 s!11993))) b!3060143))

(declare-fun b!3060144 () Bool)

(declare-fun e!1916291 () Bool)

(assert (=> b!3060144 (= e!1916291 tp_is_empty!16529)))

(declare-fun b!3060145 () Bool)

(declare-fun tp!967181 () Bool)

(declare-fun tp!967179 () Bool)

(assert (=> b!3060145 (= e!1916291 (and tp!967181 tp!967179))))

(assert (=> b!3059531 (= tp!967102 e!1916291)))

(declare-fun b!3060146 () Bool)

(declare-fun tp!967177 () Bool)

(assert (=> b!3060146 (= e!1916291 tp!967177)))

(declare-fun b!3060147 () Bool)

(declare-fun tp!967180 () Bool)

(declare-fun tp!967178 () Bool)

(assert (=> b!3060147 (= e!1916291 (and tp!967180 tp!967178))))

(assert (= (and b!3059531 ((_ is ElementMatch!9483) (reg!9812 r!17423))) b!3060144))

(assert (= (and b!3059531 ((_ is Concat!14804) (reg!9812 r!17423))) b!3060145))

(assert (= (and b!3059531 ((_ is Star!9483) (reg!9812 r!17423))) b!3060146))

(assert (= (and b!3059531 ((_ is Union!9483) (reg!9812 r!17423))) b!3060147))

(check-sat (not bm!211584) (not b!3060143) (not b!3060063) (not b!3060134) (not b!3060137) (not b!3059863) (not d!855143) (not bm!211568) (not bm!211499) (not b!3060136) (not d!855129) (not b!3059838) (not bm!211561) (not bm!211559) (not b!3060106) (not d!855147) (not b!3060071) (not b!3060076) (not b!3060128) (not b!3060091) (not bm!211589) (not b!3060079) (not bm!211562) (not b!3060146) (not b!3059612) (not b!3060147) (not b!3060092) (not b!3060086) (not b!3060062) (not b!3060014) (not b!3060125) (not b!3060129) (not bm!211497) (not bm!211585) (not b!3060072) (not b!3060077) (not b!3059861) (not b!3060126) (not bm!211566) (not b!3060064) (not b!3060065) (not b!3060058) (not b!3060104) (not bm!211571) (not bm!211555) (not bm!211590) (not d!855107) (not b!3060078) (not d!855155) (not b!3060133) (not d!855145) (not b!3060057) (not b!3060132) (not b!3060124) (not b!3060130) (not b!3059893) (not b!3060107) (not b!3060099) (not bm!211564) (not bm!211569) (not b!3060021) (not b!3059836) (not b!3060090) (not bm!211588) (not d!855151) (not d!855153) (not bm!211591) (not bm!211560) (not b!3060105) (not d!855125) (not b!3060093) (not b!3060100) (not b!3060138) tp_is_empty!16529 (not b!3060085) (not b!3060145) (not bm!211557) (not bm!211567))
(check-sat)
