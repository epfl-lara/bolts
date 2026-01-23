; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!293446 () Bool)

(assert start!293446)

(declare-fun b!3080588 () Bool)

(declare-fun e!1927015 () Bool)

(declare-datatypes ((C!19258 0))(
  ( (C!19259 (val!11665 Int)) )
))
(declare-datatypes ((Regex!9536 0))(
  ( (ElementMatch!9536 (c!512904 C!19258)) (Concat!14857 (regOne!19584 Regex!9536) (regTwo!19584 Regex!9536)) (EmptyExpr!9536) (Star!9536 (reg!9865 Regex!9536)) (EmptyLang!9536) (Union!9536 (regOne!19585 Regex!9536) (regTwo!19585 Regex!9536)) )
))
(declare-fun lt!1053192 () Regex!9536)

(declare-fun validRegex!4269 (Regex!9536) Bool)

(assert (=> b!3080588 (= e!1927015 (validRegex!4269 lt!1053192))))

(declare-fun lt!1053190 () Regex!9536)

(declare-datatypes ((List!35401 0))(
  ( (Nil!35277) (Cons!35277 (h!40697 C!19258) (t!234466 List!35401)) )
))
(declare-fun s!11993 () List!35401)

(declare-fun matchRSpec!1673 (Regex!9536 List!35401) Bool)

(assert (=> b!3080588 (matchRSpec!1673 lt!1053190 s!11993)))

(declare-datatypes ((Unit!49511 0))(
  ( (Unit!49512) )
))
(declare-fun lt!1053189 () Unit!49511)

(declare-fun mainMatchTheorem!1673 (Regex!9536 List!35401) Unit!49511)

(assert (=> b!3080588 (= lt!1053189 (mainMatchTheorem!1673 lt!1053190 s!11993))))

(declare-fun b!3080589 () Bool)

(declare-fun e!1927013 () Bool)

(declare-fun tp!970359 () Bool)

(declare-fun tp!970361 () Bool)

(assert (=> b!3080589 (= e!1927013 (and tp!970359 tp!970361))))

(declare-fun b!3080590 () Bool)

(declare-fun res!1263957 () Bool)

(declare-fun e!1927012 () Bool)

(assert (=> b!3080590 (=> res!1263957 e!1927012)))

(declare-fun lt!1053191 () Regex!9536)

(declare-fun isEmptyLang!587 (Regex!9536) Bool)

(assert (=> b!3080590 (= res!1263957 (isEmptyLang!587 lt!1053191))))

(declare-fun b!3080591 () Bool)

(declare-fun res!1263963 () Bool)

(declare-fun e!1927014 () Bool)

(assert (=> b!3080591 (=> res!1263963 e!1927014)))

(declare-fun isEmpty!19612 (List!35401) Bool)

(assert (=> b!3080591 (= res!1263963 (isEmpty!19612 s!11993))))

(declare-fun b!3080592 () Bool)

(declare-fun res!1263960 () Bool)

(assert (=> b!3080592 (=> res!1263960 e!1927012)))

(declare-fun isEmptyExpr!593 (Regex!9536) Bool)

(assert (=> b!3080592 (= res!1263960 (isEmptyExpr!593 lt!1053192))))

(declare-fun b!3080593 () Bool)

(declare-fun e!1927017 () Bool)

(assert (=> b!3080593 (= e!1927017 (not e!1927014))))

(declare-fun res!1263962 () Bool)

(assert (=> b!3080593 (=> res!1263962 e!1927014)))

(declare-fun lt!1053194 () Bool)

(declare-fun r!17423 () Regex!9536)

(assert (=> b!3080593 (= res!1263962 (or lt!1053194 (not (is-Concat!14857 r!17423))))))

(assert (=> b!3080593 (= lt!1053194 (matchRSpec!1673 r!17423 s!11993))))

(declare-fun matchR!4418 (Regex!9536 List!35401) Bool)

(assert (=> b!3080593 (= lt!1053194 (matchR!4418 r!17423 s!11993))))

(declare-fun lt!1053193 () Unit!49511)

(assert (=> b!3080593 (= lt!1053193 (mainMatchTheorem!1673 r!17423 s!11993))))

(declare-fun res!1263961 () Bool)

(assert (=> start!293446 (=> (not res!1263961) (not e!1927017))))

(assert (=> start!293446 (= res!1263961 (validRegex!4269 r!17423))))

(assert (=> start!293446 e!1927017))

(assert (=> start!293446 e!1927013))

(declare-fun e!1927016 () Bool)

(assert (=> start!293446 e!1927016))

(declare-fun b!3080594 () Bool)

(declare-fun tp_is_empty!16635 () Bool)

(assert (=> b!3080594 (= e!1927013 tp_is_empty!16635)))

(declare-fun b!3080595 () Bool)

(declare-fun res!1263958 () Bool)

(assert (=> b!3080595 (=> res!1263958 e!1927012)))

(assert (=> b!3080595 (= res!1263958 (isEmptyExpr!593 lt!1053191))))

(declare-fun b!3080596 () Bool)

(declare-fun tp!970362 () Bool)

(declare-fun tp!970358 () Bool)

(assert (=> b!3080596 (= e!1927013 (and tp!970362 tp!970358))))

(declare-fun b!3080597 () Bool)

(declare-fun tp!970363 () Bool)

(assert (=> b!3080597 (= e!1927013 tp!970363)))

(declare-fun b!3080598 () Bool)

(assert (=> b!3080598 (= e!1927012 e!1927015)))

(declare-fun res!1263964 () Bool)

(assert (=> b!3080598 (=> res!1263964 e!1927015)))

(assert (=> b!3080598 (= res!1263964 (not (matchR!4418 lt!1053190 s!11993)))))

(assert (=> b!3080598 (= lt!1053190 (Concat!14857 lt!1053192 lt!1053191))))

(declare-fun b!3080599 () Bool)

(assert (=> b!3080599 (= e!1927014 e!1927012)))

(declare-fun res!1263959 () Bool)

(assert (=> b!3080599 (=> res!1263959 e!1927012)))

(assert (=> b!3080599 (= res!1263959 (isEmptyLang!587 lt!1053192))))

(declare-fun simplify!491 (Regex!9536) Regex!9536)

(assert (=> b!3080599 (= lt!1053191 (simplify!491 (regTwo!19584 r!17423)))))

(assert (=> b!3080599 (= lt!1053192 (simplify!491 (regOne!19584 r!17423)))))

(declare-fun b!3080600 () Bool)

(declare-fun tp!970360 () Bool)

(assert (=> b!3080600 (= e!1927016 (and tp_is_empty!16635 tp!970360))))

(assert (= (and start!293446 res!1263961) b!3080593))

(assert (= (and b!3080593 (not res!1263962)) b!3080591))

(assert (= (and b!3080591 (not res!1263963)) b!3080599))

(assert (= (and b!3080599 (not res!1263959)) b!3080590))

(assert (= (and b!3080590 (not res!1263957)) b!3080592))

(assert (= (and b!3080592 (not res!1263960)) b!3080595))

(assert (= (and b!3080595 (not res!1263958)) b!3080598))

(assert (= (and b!3080598 (not res!1263964)) b!3080588))

(assert (= (and start!293446 (is-ElementMatch!9536 r!17423)) b!3080594))

(assert (= (and start!293446 (is-Concat!14857 r!17423)) b!3080589))

(assert (= (and start!293446 (is-Star!9536 r!17423)) b!3080597))

(assert (= (and start!293446 (is-Union!9536 r!17423)) b!3080596))

(assert (= (and start!293446 (is-Cons!35277 s!11993)) b!3080600))

(declare-fun m!3389993 () Bool)

(assert (=> b!3080599 m!3389993))

(declare-fun m!3389995 () Bool)

(assert (=> b!3080599 m!3389995))

(declare-fun m!3389997 () Bool)

(assert (=> b!3080599 m!3389997))

(declare-fun m!3389999 () Bool)

(assert (=> b!3080590 m!3389999))

(declare-fun m!3390001 () Bool)

(assert (=> b!3080591 m!3390001))

(declare-fun m!3390003 () Bool)

(assert (=> b!3080592 m!3390003))

(declare-fun m!3390005 () Bool)

(assert (=> b!3080598 m!3390005))

(declare-fun m!3390007 () Bool)

(assert (=> b!3080588 m!3390007))

(declare-fun m!3390009 () Bool)

(assert (=> b!3080588 m!3390009))

(declare-fun m!3390011 () Bool)

(assert (=> b!3080588 m!3390011))

(declare-fun m!3390013 () Bool)

(assert (=> b!3080593 m!3390013))

(declare-fun m!3390015 () Bool)

(assert (=> b!3080593 m!3390015))

(declare-fun m!3390017 () Bool)

(assert (=> b!3080593 m!3390017))

(declare-fun m!3390019 () Bool)

(assert (=> b!3080595 m!3390019))

(declare-fun m!3390021 () Bool)

(assert (=> start!293446 m!3390021))

(push 1)

(assert (not b!3080595))

(assert (not b!3080591))

(assert (not b!3080599))

(assert (not b!3080596))

(assert (not b!3080588))

(assert tp_is_empty!16635)

(assert (not b!3080592))

(assert (not start!293446))

(assert (not b!3080593))

(assert (not b!3080597))

(assert (not b!3080589))

(assert (not b!3080598))

(assert (not b!3080600))

(assert (not b!3080590))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!857468 () Bool)

(assert (=> d!857468 (= (isEmptyExpr!593 lt!1053192) (is-EmptyExpr!9536 lt!1053192))))

(assert (=> b!3080592 d!857468))

(declare-fun b!3080695 () Bool)

(declare-fun res!1264025 () Bool)

(declare-fun e!1927073 () Bool)

(assert (=> b!3080695 (=> res!1264025 e!1927073)))

(assert (=> b!3080695 (= res!1264025 (not (is-ElementMatch!9536 lt!1053190)))))

(declare-fun e!1927075 () Bool)

(assert (=> b!3080695 (= e!1927075 e!1927073)))

(declare-fun b!3080696 () Bool)

(declare-fun e!1927076 () Bool)

(assert (=> b!3080696 (= e!1927076 e!1927075)))

(declare-fun c!512919 () Bool)

(assert (=> b!3080696 (= c!512919 (is-EmptyLang!9536 lt!1053190))))

(declare-fun b!3080697 () Bool)

(declare-fun lt!1053215 () Bool)

(assert (=> b!3080697 (= e!1927075 (not lt!1053215))))

(declare-fun b!3080698 () Bool)

(declare-fun e!1927074 () Bool)

(declare-fun e!1927071 () Bool)

(assert (=> b!3080698 (= e!1927074 e!1927071)))

(declare-fun res!1264021 () Bool)

(assert (=> b!3080698 (=> res!1264021 e!1927071)))

(declare-fun call!214680 () Bool)

(assert (=> b!3080698 (= res!1264021 call!214680)))

(declare-fun d!857470 () Bool)

(assert (=> d!857470 e!1927076))

(declare-fun c!512920 () Bool)

(assert (=> d!857470 (= c!512920 (is-EmptyExpr!9536 lt!1053190))))

(declare-fun e!1927077 () Bool)

(assert (=> d!857470 (= lt!1053215 e!1927077)))

(declare-fun c!512918 () Bool)

(assert (=> d!857470 (= c!512918 (isEmpty!19612 s!11993))))

(assert (=> d!857470 (validRegex!4269 lt!1053190)))

(assert (=> d!857470 (= (matchR!4418 lt!1053190 s!11993) lt!1053215)))

(declare-fun b!3080699 () Bool)

(declare-fun res!1264022 () Bool)

(assert (=> b!3080699 (=> res!1264022 e!1927071)))

(declare-fun tail!5063 (List!35401) List!35401)

(assert (=> b!3080699 (= res!1264022 (not (isEmpty!19612 (tail!5063 s!11993))))))

(declare-fun b!3080700 () Bool)

(declare-fun res!1264020 () Bool)

(declare-fun e!1927072 () Bool)

(assert (=> b!3080700 (=> (not res!1264020) (not e!1927072))))

(assert (=> b!3080700 (= res!1264020 (isEmpty!19612 (tail!5063 s!11993)))))

(declare-fun b!3080701 () Bool)

(assert (=> b!3080701 (= e!1927076 (= lt!1053215 call!214680))))

(declare-fun b!3080702 () Bool)

(declare-fun res!1264024 () Bool)

(assert (=> b!3080702 (=> res!1264024 e!1927073)))

(assert (=> b!3080702 (= res!1264024 e!1927072)))

(declare-fun res!1264023 () Bool)

(assert (=> b!3080702 (=> (not res!1264023) (not e!1927072))))

(assert (=> b!3080702 (= res!1264023 lt!1053215)))

(declare-fun b!3080703 () Bool)

(declare-fun head!6837 (List!35401) C!19258)

(assert (=> b!3080703 (= e!1927072 (= (head!6837 s!11993) (c!512904 lt!1053190)))))

(declare-fun bm!214675 () Bool)

(assert (=> bm!214675 (= call!214680 (isEmpty!19612 s!11993))))

(declare-fun b!3080704 () Bool)

(declare-fun nullable!3182 (Regex!9536) Bool)

(assert (=> b!3080704 (= e!1927077 (nullable!3182 lt!1053190))))

(declare-fun b!3080705 () Bool)

(assert (=> b!3080705 (= e!1927073 e!1927074)))

(declare-fun res!1264026 () Bool)

(assert (=> b!3080705 (=> (not res!1264026) (not e!1927074))))

(assert (=> b!3080705 (= res!1264026 (not lt!1053215))))

(declare-fun b!3080706 () Bool)

(assert (=> b!3080706 (= e!1927071 (not (= (head!6837 s!11993) (c!512904 lt!1053190))))))

(declare-fun b!3080707 () Bool)

(declare-fun res!1264027 () Bool)

(assert (=> b!3080707 (=> (not res!1264027) (not e!1927072))))

(assert (=> b!3080707 (= res!1264027 (not call!214680))))

(declare-fun b!3080708 () Bool)

(declare-fun derivativeStep!2778 (Regex!9536 C!19258) Regex!9536)

(assert (=> b!3080708 (= e!1927077 (matchR!4418 (derivativeStep!2778 lt!1053190 (head!6837 s!11993)) (tail!5063 s!11993)))))

(assert (= (and d!857470 c!512918) b!3080704))

(assert (= (and d!857470 (not c!512918)) b!3080708))

(assert (= (and d!857470 c!512920) b!3080701))

(assert (= (and d!857470 (not c!512920)) b!3080696))

(assert (= (and b!3080696 c!512919) b!3080697))

(assert (= (and b!3080696 (not c!512919)) b!3080695))

(assert (= (and b!3080695 (not res!1264025)) b!3080702))

(assert (= (and b!3080702 res!1264023) b!3080707))

(assert (= (and b!3080707 res!1264027) b!3080700))

(assert (= (and b!3080700 res!1264020) b!3080703))

(assert (= (and b!3080702 (not res!1264024)) b!3080705))

(assert (= (and b!3080705 res!1264026) b!3080698))

(assert (= (and b!3080698 (not res!1264021)) b!3080699))

(assert (= (and b!3080699 (not res!1264022)) b!3080706))

(assert (= (or b!3080701 b!3080707 b!3080698) bm!214675))

(assert (=> d!857470 m!3390001))

(declare-fun m!3390059 () Bool)

(assert (=> d!857470 m!3390059))

(assert (=> bm!214675 m!3390001))

(declare-fun m!3390061 () Bool)

(assert (=> b!3080700 m!3390061))

(assert (=> b!3080700 m!3390061))

(declare-fun m!3390063 () Bool)

(assert (=> b!3080700 m!3390063))

(declare-fun m!3390065 () Bool)

(assert (=> b!3080704 m!3390065))

(declare-fun m!3390067 () Bool)

(assert (=> b!3080703 m!3390067))

(assert (=> b!3080706 m!3390067))

(assert (=> b!3080708 m!3390067))

(assert (=> b!3080708 m!3390067))

(declare-fun m!3390069 () Bool)

(assert (=> b!3080708 m!3390069))

(assert (=> b!3080708 m!3390061))

(assert (=> b!3080708 m!3390069))

(assert (=> b!3080708 m!3390061))

(declare-fun m!3390071 () Bool)

(assert (=> b!3080708 m!3390071))

(assert (=> b!3080699 m!3390061))

(assert (=> b!3080699 m!3390061))

(assert (=> b!3080699 m!3390063))

(assert (=> b!3080598 d!857470))

(declare-fun b!3080770 () Bool)

(assert (=> b!3080770 true))

(assert (=> b!3080770 true))

(declare-fun bs!532890 () Bool)

(declare-fun b!3080765 () Bool)

(assert (= bs!532890 (and b!3080765 b!3080770)))

(declare-fun lambda!114304 () Int)

(declare-fun lambda!114303 () Int)

(assert (=> bs!532890 (not (= lambda!114304 lambda!114303))))

(assert (=> b!3080765 true))

(assert (=> b!3080765 true))

(declare-fun bm!214680 () Bool)

(declare-fun call!214685 () Bool)

(assert (=> bm!214680 (= call!214685 (isEmpty!19612 s!11993))))

(declare-fun b!3080763 () Bool)

(declare-fun e!1927114 () Bool)

(declare-fun e!1927113 () Bool)

(assert (=> b!3080763 (= e!1927114 e!1927113)))

(declare-fun res!1264051 () Bool)

(assert (=> b!3080763 (= res!1264051 (not (is-EmptyLang!9536 r!17423)))))

(assert (=> b!3080763 (=> (not res!1264051) (not e!1927113))))

(declare-fun b!3080764 () Bool)

(assert (=> b!3080764 (= e!1927114 call!214685)))

(declare-fun e!1927115 () Bool)

(declare-fun call!214686 () Bool)

(assert (=> b!3080765 (= e!1927115 call!214686)))

(declare-fun b!3080766 () Bool)

(declare-fun c!512937 () Bool)

(assert (=> b!3080766 (= c!512937 (is-Union!9536 r!17423))))

(declare-fun e!1927116 () Bool)

(declare-fun e!1927110 () Bool)

(assert (=> b!3080766 (= e!1927116 e!1927110)))

(declare-fun bm!214681 () Bool)

(declare-fun c!512940 () Bool)

(declare-fun Exists!1799 (Int) Bool)

(assert (=> bm!214681 (= call!214686 (Exists!1799 (ite c!512940 lambda!114303 lambda!114304)))))

(declare-fun b!3080768 () Bool)

(declare-fun e!1927112 () Bool)

(assert (=> b!3080768 (= e!1927112 (matchRSpec!1673 (regTwo!19585 r!17423) s!11993))))

(declare-fun b!3080769 () Bool)

(assert (=> b!3080769 (= e!1927110 e!1927112)))

(declare-fun res!1264050 () Bool)

(assert (=> b!3080769 (= res!1264050 (matchRSpec!1673 (regOne!19585 r!17423) s!11993))))

(assert (=> b!3080769 (=> res!1264050 e!1927112)))

(declare-fun e!1927111 () Bool)

(assert (=> b!3080770 (= e!1927111 call!214686)))

(declare-fun b!3080771 () Bool)

(assert (=> b!3080771 (= e!1927110 e!1927115)))

(assert (=> b!3080771 (= c!512940 (is-Star!9536 r!17423))))

(declare-fun b!3080772 () Bool)

(assert (=> b!3080772 (= e!1927116 (= s!11993 (Cons!35277 (c!512904 r!17423) Nil!35277)))))

(declare-fun b!3080773 () Bool)

(declare-fun c!512939 () Bool)

(assert (=> b!3080773 (= c!512939 (is-ElementMatch!9536 r!17423))))

(assert (=> b!3080773 (= e!1927113 e!1927116)))

(declare-fun d!857476 () Bool)

(declare-fun c!512938 () Bool)

(assert (=> d!857476 (= c!512938 (is-EmptyExpr!9536 r!17423))))

(assert (=> d!857476 (= (matchRSpec!1673 r!17423 s!11993) e!1927114)))

(declare-fun b!3080767 () Bool)

(declare-fun res!1264052 () Bool)

(assert (=> b!3080767 (=> res!1264052 e!1927111)))

(assert (=> b!3080767 (= res!1264052 call!214685)))

(assert (=> b!3080767 (= e!1927115 e!1927111)))

(assert (= (and d!857476 c!512938) b!3080764))

(assert (= (and d!857476 (not c!512938)) b!3080763))

(assert (= (and b!3080763 res!1264051) b!3080773))

(assert (= (and b!3080773 c!512939) b!3080772))

(assert (= (and b!3080773 (not c!512939)) b!3080766))

(assert (= (and b!3080766 c!512937) b!3080769))

(assert (= (and b!3080766 (not c!512937)) b!3080771))

(assert (= (and b!3080769 (not res!1264050)) b!3080768))

(assert (= (and b!3080771 c!512940) b!3080767))

(assert (= (and b!3080771 (not c!512940)) b!3080765))

(assert (= (and b!3080767 (not res!1264052)) b!3080770))

(assert (= (or b!3080770 b!3080765) bm!214681))

(assert (= (or b!3080764 b!3080767) bm!214680))

(assert (=> bm!214680 m!3390001))

(declare-fun m!3390073 () Bool)

(assert (=> bm!214681 m!3390073))

(declare-fun m!3390075 () Bool)

(assert (=> b!3080768 m!3390075))

(declare-fun m!3390077 () Bool)

(assert (=> b!3080769 m!3390077))

(assert (=> b!3080593 d!857476))

(declare-fun b!3080778 () Bool)

(declare-fun res!1264058 () Bool)

(declare-fun e!1927119 () Bool)

(assert (=> b!3080778 (=> res!1264058 e!1927119)))

(assert (=> b!3080778 (= res!1264058 (not (is-ElementMatch!9536 r!17423)))))

(declare-fun e!1927121 () Bool)

(assert (=> b!3080778 (= e!1927121 e!1927119)))

(declare-fun b!3080779 () Bool)

(declare-fun e!1927122 () Bool)

(assert (=> b!3080779 (= e!1927122 e!1927121)))

(declare-fun c!512942 () Bool)

(assert (=> b!3080779 (= c!512942 (is-EmptyLang!9536 r!17423))))

(declare-fun b!3080780 () Bool)

(declare-fun lt!1053216 () Bool)

(assert (=> b!3080780 (= e!1927121 (not lt!1053216))))

(declare-fun b!3080781 () Bool)

(declare-fun e!1927120 () Bool)

(declare-fun e!1927117 () Bool)

(assert (=> b!3080781 (= e!1927120 e!1927117)))

(declare-fun res!1264054 () Bool)

(assert (=> b!3080781 (=> res!1264054 e!1927117)))

(declare-fun call!214687 () Bool)

(assert (=> b!3080781 (= res!1264054 call!214687)))

(declare-fun d!857478 () Bool)

(assert (=> d!857478 e!1927122))

(declare-fun c!512943 () Bool)

(assert (=> d!857478 (= c!512943 (is-EmptyExpr!9536 r!17423))))

(declare-fun e!1927123 () Bool)

(assert (=> d!857478 (= lt!1053216 e!1927123)))

(declare-fun c!512941 () Bool)

(assert (=> d!857478 (= c!512941 (isEmpty!19612 s!11993))))

(assert (=> d!857478 (validRegex!4269 r!17423)))

(assert (=> d!857478 (= (matchR!4418 r!17423 s!11993) lt!1053216)))

(declare-fun b!3080782 () Bool)

(declare-fun res!1264055 () Bool)

(assert (=> b!3080782 (=> res!1264055 e!1927117)))

(assert (=> b!3080782 (= res!1264055 (not (isEmpty!19612 (tail!5063 s!11993))))))

(declare-fun b!3080783 () Bool)

(declare-fun res!1264053 () Bool)

(declare-fun e!1927118 () Bool)

(assert (=> b!3080783 (=> (not res!1264053) (not e!1927118))))

(assert (=> b!3080783 (= res!1264053 (isEmpty!19612 (tail!5063 s!11993)))))

(declare-fun b!3080784 () Bool)

(assert (=> b!3080784 (= e!1927122 (= lt!1053216 call!214687))))

(declare-fun b!3080785 () Bool)

(declare-fun res!1264057 () Bool)

(assert (=> b!3080785 (=> res!1264057 e!1927119)))

(assert (=> b!3080785 (= res!1264057 e!1927118)))

(declare-fun res!1264056 () Bool)

(assert (=> b!3080785 (=> (not res!1264056) (not e!1927118))))

(assert (=> b!3080785 (= res!1264056 lt!1053216)))

(declare-fun b!3080786 () Bool)

(assert (=> b!3080786 (= e!1927118 (= (head!6837 s!11993) (c!512904 r!17423)))))

(declare-fun bm!214682 () Bool)

(assert (=> bm!214682 (= call!214687 (isEmpty!19612 s!11993))))

(declare-fun b!3080787 () Bool)

(assert (=> b!3080787 (= e!1927123 (nullable!3182 r!17423))))

(declare-fun b!3080788 () Bool)

(assert (=> b!3080788 (= e!1927119 e!1927120)))

(declare-fun res!1264059 () Bool)

(assert (=> b!3080788 (=> (not res!1264059) (not e!1927120))))

(assert (=> b!3080788 (= res!1264059 (not lt!1053216))))

(declare-fun b!3080789 () Bool)

(assert (=> b!3080789 (= e!1927117 (not (= (head!6837 s!11993) (c!512904 r!17423))))))

(declare-fun b!3080790 () Bool)

(declare-fun res!1264060 () Bool)

(assert (=> b!3080790 (=> (not res!1264060) (not e!1927118))))

(assert (=> b!3080790 (= res!1264060 (not call!214687))))

(declare-fun b!3080791 () Bool)

(assert (=> b!3080791 (= e!1927123 (matchR!4418 (derivativeStep!2778 r!17423 (head!6837 s!11993)) (tail!5063 s!11993)))))

(assert (= (and d!857478 c!512941) b!3080787))

(assert (= (and d!857478 (not c!512941)) b!3080791))

(assert (= (and d!857478 c!512943) b!3080784))

(assert (= (and d!857478 (not c!512943)) b!3080779))

(assert (= (and b!3080779 c!512942) b!3080780))

(assert (= (and b!3080779 (not c!512942)) b!3080778))

(assert (= (and b!3080778 (not res!1264058)) b!3080785))

(assert (= (and b!3080785 res!1264056) b!3080790))

(assert (= (and b!3080790 res!1264060) b!3080783))

(assert (= (and b!3080783 res!1264053) b!3080786))

(assert (= (and b!3080785 (not res!1264057)) b!3080788))

(assert (= (and b!3080788 res!1264059) b!3080781))

(assert (= (and b!3080781 (not res!1264054)) b!3080782))

(assert (= (and b!3080782 (not res!1264055)) b!3080789))

(assert (= (or b!3080784 b!3080790 b!3080781) bm!214682))

(assert (=> d!857478 m!3390001))

(assert (=> d!857478 m!3390021))

(assert (=> bm!214682 m!3390001))

(assert (=> b!3080783 m!3390061))

(assert (=> b!3080783 m!3390061))

(assert (=> b!3080783 m!3390063))

(declare-fun m!3390079 () Bool)

(assert (=> b!3080787 m!3390079))

(assert (=> b!3080786 m!3390067))

(assert (=> b!3080789 m!3390067))

(assert (=> b!3080791 m!3390067))

(assert (=> b!3080791 m!3390067))

(declare-fun m!3390081 () Bool)

(assert (=> b!3080791 m!3390081))

(assert (=> b!3080791 m!3390061))

(assert (=> b!3080791 m!3390081))

(assert (=> b!3080791 m!3390061))

(declare-fun m!3390083 () Bool)

(assert (=> b!3080791 m!3390083))

(assert (=> b!3080782 m!3390061))

(assert (=> b!3080782 m!3390061))

(assert (=> b!3080782 m!3390063))

(assert (=> b!3080593 d!857478))

(declare-fun d!857480 () Bool)

(assert (=> d!857480 (= (matchR!4418 r!17423 s!11993) (matchRSpec!1673 r!17423 s!11993))))

(declare-fun lt!1053219 () Unit!49511)

(declare-fun choose!18263 (Regex!9536 List!35401) Unit!49511)

(assert (=> d!857480 (= lt!1053219 (choose!18263 r!17423 s!11993))))

(assert (=> d!857480 (validRegex!4269 r!17423)))

(assert (=> d!857480 (= (mainMatchTheorem!1673 r!17423 s!11993) lt!1053219)))

(declare-fun bs!532891 () Bool)

(assert (= bs!532891 d!857480))

(assert (=> bs!532891 m!3390015))

(assert (=> bs!532891 m!3390013))

(declare-fun m!3390085 () Bool)

(assert (=> bs!532891 m!3390085))

(assert (=> bs!532891 m!3390021))

(assert (=> b!3080593 d!857480))

(declare-fun b!3080810 () Bool)

(declare-fun e!1927142 () Bool)

(declare-fun e!1927144 () Bool)

(assert (=> b!3080810 (= e!1927142 e!1927144)))

(declare-fun res!1264071 () Bool)

(assert (=> b!3080810 (= res!1264071 (not (nullable!3182 (reg!9865 r!17423))))))

(assert (=> b!3080810 (=> (not res!1264071) (not e!1927144))))

(declare-fun d!857482 () Bool)

(declare-fun res!1264072 () Bool)

(declare-fun e!1927141 () Bool)

(assert (=> d!857482 (=> res!1264072 e!1927141)))

(assert (=> d!857482 (= res!1264072 (is-ElementMatch!9536 r!17423))))

(assert (=> d!857482 (= (validRegex!4269 r!17423) e!1927141)))

(declare-fun bm!214689 () Bool)

(declare-fun call!214694 () Bool)

(declare-fun call!214696 () Bool)

(assert (=> bm!214689 (= call!214694 call!214696)))

(declare-fun c!512949 () Bool)

(declare-fun c!512948 () Bool)

(declare-fun bm!214690 () Bool)

(assert (=> bm!214690 (= call!214696 (validRegex!4269 (ite c!512948 (reg!9865 r!17423) (ite c!512949 (regTwo!19585 r!17423) (regOne!19584 r!17423)))))))

(declare-fun b!3080811 () Bool)

(declare-fun e!1927138 () Bool)

(assert (=> b!3080811 (= e!1927142 e!1927138)))

(assert (=> b!3080811 (= c!512949 (is-Union!9536 r!17423))))

(declare-fun b!3080812 () Bool)

(declare-fun e!1927139 () Bool)

(declare-fun e!1927143 () Bool)

(assert (=> b!3080812 (= e!1927139 e!1927143)))

(declare-fun res!1264073 () Bool)

(assert (=> b!3080812 (=> (not res!1264073) (not e!1927143))))

(assert (=> b!3080812 (= res!1264073 call!214694)))

(declare-fun b!3080813 () Bool)

(assert (=> b!3080813 (= e!1927144 call!214696)))

(declare-fun b!3080814 () Bool)

(declare-fun call!214695 () Bool)

(assert (=> b!3080814 (= e!1927143 call!214695)))

(declare-fun bm!214691 () Bool)

(assert (=> bm!214691 (= call!214695 (validRegex!4269 (ite c!512949 (regOne!19585 r!17423) (regTwo!19584 r!17423))))))

(declare-fun b!3080815 () Bool)

(assert (=> b!3080815 (= e!1927141 e!1927142)))

(assert (=> b!3080815 (= c!512948 (is-Star!9536 r!17423))))

(declare-fun b!3080816 () Bool)

(declare-fun res!1264074 () Bool)

(assert (=> b!3080816 (=> res!1264074 e!1927139)))

(assert (=> b!3080816 (= res!1264074 (not (is-Concat!14857 r!17423)))))

(assert (=> b!3080816 (= e!1927138 e!1927139)))

(declare-fun b!3080817 () Bool)

(declare-fun res!1264075 () Bool)

(declare-fun e!1927140 () Bool)

(assert (=> b!3080817 (=> (not res!1264075) (not e!1927140))))

(assert (=> b!3080817 (= res!1264075 call!214695)))

(assert (=> b!3080817 (= e!1927138 e!1927140)))

(declare-fun b!3080818 () Bool)

(assert (=> b!3080818 (= e!1927140 call!214694)))

(assert (= (and d!857482 (not res!1264072)) b!3080815))

(assert (= (and b!3080815 c!512948) b!3080810))

(assert (= (and b!3080815 (not c!512948)) b!3080811))

(assert (= (and b!3080810 res!1264071) b!3080813))

(assert (= (and b!3080811 c!512949) b!3080817))

(assert (= (and b!3080811 (not c!512949)) b!3080816))

(assert (= (and b!3080817 res!1264075) b!3080818))

(assert (= (and b!3080816 (not res!1264074)) b!3080812))

(assert (= (and b!3080812 res!1264073) b!3080814))

(assert (= (or b!3080817 b!3080814) bm!214691))

(assert (= (or b!3080818 b!3080812) bm!214689))

(assert (= (or b!3080813 bm!214689) bm!214690))

(declare-fun m!3390087 () Bool)

(assert (=> b!3080810 m!3390087))

(declare-fun m!3390089 () Bool)

(assert (=> bm!214690 m!3390089))

(declare-fun m!3390091 () Bool)

(assert (=> bm!214691 m!3390091))

(assert (=> start!293446 d!857482))

(declare-fun b!3080819 () Bool)

(declare-fun e!1927149 () Bool)

(declare-fun e!1927151 () Bool)

(assert (=> b!3080819 (= e!1927149 e!1927151)))

(declare-fun res!1264076 () Bool)

(assert (=> b!3080819 (= res!1264076 (not (nullable!3182 (reg!9865 lt!1053192))))))

(assert (=> b!3080819 (=> (not res!1264076) (not e!1927151))))

(declare-fun d!857484 () Bool)

(declare-fun res!1264077 () Bool)

(declare-fun e!1927148 () Bool)

(assert (=> d!857484 (=> res!1264077 e!1927148)))

(assert (=> d!857484 (= res!1264077 (is-ElementMatch!9536 lt!1053192))))

(assert (=> d!857484 (= (validRegex!4269 lt!1053192) e!1927148)))

(declare-fun bm!214692 () Bool)

(declare-fun call!214697 () Bool)

(declare-fun call!214699 () Bool)

(assert (=> bm!214692 (= call!214697 call!214699)))

(declare-fun c!512951 () Bool)

(declare-fun bm!214693 () Bool)

(declare-fun c!512950 () Bool)

(assert (=> bm!214693 (= call!214699 (validRegex!4269 (ite c!512950 (reg!9865 lt!1053192) (ite c!512951 (regTwo!19585 lt!1053192) (regOne!19584 lt!1053192)))))))

(declare-fun b!3080820 () Bool)

(declare-fun e!1927145 () Bool)

(assert (=> b!3080820 (= e!1927149 e!1927145)))

(assert (=> b!3080820 (= c!512951 (is-Union!9536 lt!1053192))))

(declare-fun b!3080821 () Bool)

(declare-fun e!1927146 () Bool)

(declare-fun e!1927150 () Bool)

(assert (=> b!3080821 (= e!1927146 e!1927150)))

(declare-fun res!1264078 () Bool)

(assert (=> b!3080821 (=> (not res!1264078) (not e!1927150))))

(assert (=> b!3080821 (= res!1264078 call!214697)))

(declare-fun b!3080822 () Bool)

(assert (=> b!3080822 (= e!1927151 call!214699)))

(declare-fun b!3080823 () Bool)

(declare-fun call!214698 () Bool)

(assert (=> b!3080823 (= e!1927150 call!214698)))

(declare-fun bm!214694 () Bool)

(assert (=> bm!214694 (= call!214698 (validRegex!4269 (ite c!512951 (regOne!19585 lt!1053192) (regTwo!19584 lt!1053192))))))

(declare-fun b!3080824 () Bool)

(assert (=> b!3080824 (= e!1927148 e!1927149)))

(assert (=> b!3080824 (= c!512950 (is-Star!9536 lt!1053192))))

(declare-fun b!3080825 () Bool)

(declare-fun res!1264079 () Bool)

(assert (=> b!3080825 (=> res!1264079 e!1927146)))

(assert (=> b!3080825 (= res!1264079 (not (is-Concat!14857 lt!1053192)))))

(assert (=> b!3080825 (= e!1927145 e!1927146)))

(declare-fun b!3080826 () Bool)

(declare-fun res!1264080 () Bool)

(declare-fun e!1927147 () Bool)

(assert (=> b!3080826 (=> (not res!1264080) (not e!1927147))))

(assert (=> b!3080826 (= res!1264080 call!214698)))

(assert (=> b!3080826 (= e!1927145 e!1927147)))

(declare-fun b!3080827 () Bool)

(assert (=> b!3080827 (= e!1927147 call!214697)))

(assert (= (and d!857484 (not res!1264077)) b!3080824))

(assert (= (and b!3080824 c!512950) b!3080819))

(assert (= (and b!3080824 (not c!512950)) b!3080820))

(assert (= (and b!3080819 res!1264076) b!3080822))

(assert (= (and b!3080820 c!512951) b!3080826))

(assert (= (and b!3080820 (not c!512951)) b!3080825))

(assert (= (and b!3080826 res!1264080) b!3080827))

(assert (= (and b!3080825 (not res!1264079)) b!3080821))

(assert (= (and b!3080821 res!1264078) b!3080823))

(assert (= (or b!3080826 b!3080823) bm!214694))

(assert (= (or b!3080827 b!3080821) bm!214692))

(assert (= (or b!3080822 bm!214692) bm!214693))

(declare-fun m!3390093 () Bool)

(assert (=> b!3080819 m!3390093))

(declare-fun m!3390095 () Bool)

(assert (=> bm!214693 m!3390095))

(declare-fun m!3390097 () Bool)

(assert (=> bm!214694 m!3390097))

(assert (=> b!3080588 d!857484))

(declare-fun bs!532892 () Bool)

(declare-fun b!3080835 () Bool)

(assert (= bs!532892 (and b!3080835 b!3080770)))

(declare-fun lambda!114305 () Int)

(assert (=> bs!532892 (= (and (= (reg!9865 lt!1053190) (reg!9865 r!17423)) (= lt!1053190 r!17423)) (= lambda!114305 lambda!114303))))

(declare-fun bs!532893 () Bool)

(assert (= bs!532893 (and b!3080835 b!3080765)))

(assert (=> bs!532893 (not (= lambda!114305 lambda!114304))))

(assert (=> b!3080835 true))

(assert (=> b!3080835 true))

(declare-fun bs!532894 () Bool)

(declare-fun b!3080830 () Bool)

(assert (= bs!532894 (and b!3080830 b!3080770)))

(declare-fun lambda!114306 () Int)

(assert (=> bs!532894 (not (= lambda!114306 lambda!114303))))

(declare-fun bs!532895 () Bool)

(assert (= bs!532895 (and b!3080830 b!3080765)))

(assert (=> bs!532895 (= (and (= (regOne!19584 lt!1053190) (regOne!19584 r!17423)) (= (regTwo!19584 lt!1053190) (regTwo!19584 r!17423))) (= lambda!114306 lambda!114304))))

(declare-fun bs!532896 () Bool)

(assert (= bs!532896 (and b!3080830 b!3080835)))

(assert (=> bs!532896 (not (= lambda!114306 lambda!114305))))

(assert (=> b!3080830 true))

(assert (=> b!3080830 true))

(declare-fun bm!214695 () Bool)

(declare-fun call!214700 () Bool)

(assert (=> bm!214695 (= call!214700 (isEmpty!19612 s!11993))))

(declare-fun b!3080828 () Bool)

(declare-fun e!1927156 () Bool)

(declare-fun e!1927155 () Bool)

(assert (=> b!3080828 (= e!1927156 e!1927155)))

(declare-fun res!1264082 () Bool)

(assert (=> b!3080828 (= res!1264082 (not (is-EmptyLang!9536 lt!1053190)))))

(assert (=> b!3080828 (=> (not res!1264082) (not e!1927155))))

(declare-fun b!3080829 () Bool)

(assert (=> b!3080829 (= e!1927156 call!214700)))

(declare-fun e!1927157 () Bool)

(declare-fun call!214701 () Bool)

(assert (=> b!3080830 (= e!1927157 call!214701)))

(declare-fun b!3080831 () Bool)

(declare-fun c!512952 () Bool)

(assert (=> b!3080831 (= c!512952 (is-Union!9536 lt!1053190))))

(declare-fun e!1927158 () Bool)

(declare-fun e!1927152 () Bool)

(assert (=> b!3080831 (= e!1927158 e!1927152)))

(declare-fun c!512955 () Bool)

(declare-fun bm!214696 () Bool)

(assert (=> bm!214696 (= call!214701 (Exists!1799 (ite c!512955 lambda!114305 lambda!114306)))))

(declare-fun b!3080833 () Bool)

(declare-fun e!1927154 () Bool)

(assert (=> b!3080833 (= e!1927154 (matchRSpec!1673 (regTwo!19585 lt!1053190) s!11993))))

(declare-fun b!3080834 () Bool)

(assert (=> b!3080834 (= e!1927152 e!1927154)))

(declare-fun res!1264081 () Bool)

(assert (=> b!3080834 (= res!1264081 (matchRSpec!1673 (regOne!19585 lt!1053190) s!11993))))

(assert (=> b!3080834 (=> res!1264081 e!1927154)))

(declare-fun e!1927153 () Bool)

(assert (=> b!3080835 (= e!1927153 call!214701)))

(declare-fun b!3080836 () Bool)

(assert (=> b!3080836 (= e!1927152 e!1927157)))

(assert (=> b!3080836 (= c!512955 (is-Star!9536 lt!1053190))))

(declare-fun b!3080837 () Bool)

(assert (=> b!3080837 (= e!1927158 (= s!11993 (Cons!35277 (c!512904 lt!1053190) Nil!35277)))))

(declare-fun b!3080838 () Bool)

(declare-fun c!512954 () Bool)

(assert (=> b!3080838 (= c!512954 (is-ElementMatch!9536 lt!1053190))))

(assert (=> b!3080838 (= e!1927155 e!1927158)))

(declare-fun d!857486 () Bool)

(declare-fun c!512953 () Bool)

(assert (=> d!857486 (= c!512953 (is-EmptyExpr!9536 lt!1053190))))

(assert (=> d!857486 (= (matchRSpec!1673 lt!1053190 s!11993) e!1927156)))

(declare-fun b!3080832 () Bool)

(declare-fun res!1264083 () Bool)

(assert (=> b!3080832 (=> res!1264083 e!1927153)))

(assert (=> b!3080832 (= res!1264083 call!214700)))

(assert (=> b!3080832 (= e!1927157 e!1927153)))

(assert (= (and d!857486 c!512953) b!3080829))

(assert (= (and d!857486 (not c!512953)) b!3080828))

(assert (= (and b!3080828 res!1264082) b!3080838))

(assert (= (and b!3080838 c!512954) b!3080837))

(assert (= (and b!3080838 (not c!512954)) b!3080831))

(assert (= (and b!3080831 c!512952) b!3080834))

(assert (= (and b!3080831 (not c!512952)) b!3080836))

(assert (= (and b!3080834 (not res!1264081)) b!3080833))

(assert (= (and b!3080836 c!512955) b!3080832))

(assert (= (and b!3080836 (not c!512955)) b!3080830))

(assert (= (and b!3080832 (not res!1264083)) b!3080835))

(assert (= (or b!3080835 b!3080830) bm!214696))

(assert (= (or b!3080829 b!3080832) bm!214695))

(assert (=> bm!214695 m!3390001))

(declare-fun m!3390099 () Bool)

(assert (=> bm!214696 m!3390099))

(declare-fun m!3390101 () Bool)

(assert (=> b!3080833 m!3390101))

(declare-fun m!3390103 () Bool)

(assert (=> b!3080834 m!3390103))

(assert (=> b!3080588 d!857486))

(declare-fun d!857488 () Bool)

(assert (=> d!857488 (= (matchR!4418 lt!1053190 s!11993) (matchRSpec!1673 lt!1053190 s!11993))))

(declare-fun lt!1053220 () Unit!49511)

(assert (=> d!857488 (= lt!1053220 (choose!18263 lt!1053190 s!11993))))

(assert (=> d!857488 (validRegex!4269 lt!1053190)))

(assert (=> d!857488 (= (mainMatchTheorem!1673 lt!1053190 s!11993) lt!1053220)))

(declare-fun bs!532897 () Bool)

(assert (= bs!532897 d!857488))

(assert (=> bs!532897 m!3390005))

(assert (=> bs!532897 m!3390009))

(declare-fun m!3390105 () Bool)

(assert (=> bs!532897 m!3390105))

(assert (=> bs!532897 m!3390059))

(assert (=> b!3080588 d!857488))

(declare-fun d!857490 () Bool)

(assert (=> d!857490 (= (isEmptyLang!587 lt!1053192) (is-EmptyLang!9536 lt!1053192))))

(assert (=> b!3080599 d!857490))

(declare-fun b!3080889 () Bool)

(declare-fun e!1927200 () Regex!9536)

(assert (=> b!3080889 (= e!1927200 (regTwo!19584 r!17423))))

(declare-fun b!3080890 () Bool)

(declare-fun e!1927189 () Bool)

(declare-fun lt!1053235 () Regex!9536)

(assert (=> b!3080890 (= e!1927189 (= (nullable!3182 lt!1053235) (nullable!3182 (regTwo!19584 r!17423))))))

(declare-fun b!3080891 () Bool)

(declare-fun e!1927187 () Regex!9536)

(declare-fun e!1927194 () Regex!9536)

(assert (=> b!3080891 (= e!1927187 e!1927194)))

(declare-fun c!512980 () Bool)

(declare-fun call!214721 () Bool)

(assert (=> b!3080891 (= c!512980 call!214721)))

(declare-fun bm!214711 () Bool)

(declare-fun call!214716 () Regex!9536)

(declare-fun call!214720 () Regex!9536)

(assert (=> bm!214711 (= call!214716 call!214720)))

(declare-fun b!3080892 () Bool)

(declare-fun e!1927193 () Regex!9536)

(declare-fun lt!1053236 () Regex!9536)

(assert (=> b!3080892 (= e!1927193 (Star!9536 lt!1053236))))

(declare-fun b!3080894 () Bool)

(assert (=> b!3080894 (= e!1927193 EmptyExpr!9536)))

(declare-fun b!3080895 () Bool)

(declare-fun lt!1053233 () Regex!9536)

(declare-fun lt!1053237 () Regex!9536)

(assert (=> b!3080895 (= e!1927194 (Concat!14857 lt!1053233 lt!1053237))))

(declare-fun b!3080896 () Bool)

(declare-fun c!512979 () Bool)

(assert (=> b!3080896 (= c!512979 (is-Union!9536 (regTwo!19584 r!17423)))))

(declare-fun e!1927199 () Regex!9536)

(declare-fun e!1927188 () Regex!9536)

(assert (=> b!3080896 (= e!1927199 e!1927188)))

(declare-fun b!3080897 () Bool)

(declare-fun e!1927195 () Regex!9536)

(assert (=> b!3080897 (= e!1927195 e!1927199)))

(declare-fun c!512984 () Bool)

(assert (=> b!3080897 (= c!512984 (is-Star!9536 (regTwo!19584 r!17423)))))

(declare-fun b!3080898 () Bool)

(declare-fun c!512983 () Bool)

(declare-fun e!1927197 () Bool)

(assert (=> b!3080898 (= c!512983 e!1927197)))

(declare-fun res!1264091 () Bool)

(assert (=> b!3080898 (=> res!1264091 e!1927197)))

(declare-fun call!214717 () Bool)

(assert (=> b!3080898 (= res!1264091 call!214717)))

(assert (=> b!3080898 (= lt!1053236 call!214720)))

(assert (=> b!3080898 (= e!1927199 e!1927193)))

(declare-fun b!3080899 () Bool)

(declare-fun c!512978 () Bool)

(assert (=> b!3080899 (= c!512978 (isEmptyExpr!593 lt!1053233))))

(declare-fun e!1927198 () Regex!9536)

(assert (=> b!3080899 (= e!1927198 e!1927187)))

(declare-fun bm!214712 () Bool)

(assert (=> bm!214712 (= call!214721 (isEmptyExpr!593 (ite c!512984 lt!1053236 lt!1053237)))))

(declare-fun lt!1053234 () Regex!9536)

(declare-fun bm!214713 () Bool)

(assert (=> bm!214713 (= call!214717 (isEmptyLang!587 (ite c!512984 lt!1053236 (ite c!512979 lt!1053234 lt!1053233))))))

(declare-fun b!3080900 () Bool)

(assert (=> b!3080900 (= e!1927188 e!1927198)))

(declare-fun call!214719 () Regex!9536)

(assert (=> b!3080900 (= lt!1053233 call!214719)))

(assert (=> b!3080900 (= lt!1053237 call!214716)))

(declare-fun res!1264092 () Bool)

(declare-fun call!214718 () Bool)

(assert (=> b!3080900 (= res!1264092 call!214718)))

(declare-fun e!1927190 () Bool)

(assert (=> b!3080900 (=> res!1264092 e!1927190)))

(declare-fun c!512985 () Bool)

(assert (=> b!3080900 (= c!512985 e!1927190)))

(declare-fun bm!214714 () Bool)

(assert (=> bm!214714 (= call!214719 (simplify!491 (ite c!512979 (regTwo!19585 (regTwo!19584 r!17423)) (regOne!19584 (regTwo!19584 r!17423)))))))

(declare-fun b!3080901 () Bool)

(assert (=> b!3080901 (= e!1927197 call!214721)))

(declare-fun b!3080902 () Bool)

(declare-fun call!214722 () Bool)

(assert (=> b!3080902 (= e!1927190 call!214722)))

(declare-fun b!3080893 () Bool)

(assert (=> b!3080893 (= e!1927187 lt!1053237)))

(declare-fun d!857492 () Bool)

(assert (=> d!857492 e!1927189))

(declare-fun res!1264090 () Bool)

(assert (=> d!857492 (=> (not res!1264090) (not e!1927189))))

(assert (=> d!857492 (= res!1264090 (validRegex!4269 lt!1053235))))

(declare-fun e!1927196 () Regex!9536)

(assert (=> d!857492 (= lt!1053235 e!1927196)))

(declare-fun c!512981 () Bool)

(assert (=> d!857492 (= c!512981 (is-EmptyLang!9536 (regTwo!19584 r!17423)))))

(assert (=> d!857492 (validRegex!4269 (regTwo!19584 r!17423))))

(assert (=> d!857492 (= (simplify!491 (regTwo!19584 r!17423)) lt!1053235)))

(declare-fun b!3080903 () Bool)

(assert (=> b!3080903 (= e!1927198 EmptyLang!9536)))

(declare-fun b!3080904 () Bool)

(declare-fun e!1927191 () Regex!9536)

(assert (=> b!3080904 (= e!1927188 e!1927191)))

(declare-fun lt!1053238 () Regex!9536)

(assert (=> b!3080904 (= lt!1053238 call!214716)))

(assert (=> b!3080904 (= lt!1053234 call!214719)))

(declare-fun c!512982 () Bool)

(assert (=> b!3080904 (= c!512982 call!214722)))

(declare-fun b!3080905 () Bool)

(assert (=> b!3080905 (= e!1927194 lt!1053233)))

(declare-fun bm!214715 () Bool)

(assert (=> bm!214715 (= call!214722 (isEmptyLang!587 (ite c!512979 lt!1053238 lt!1053237)))))

(declare-fun bm!214716 () Bool)

(assert (=> bm!214716 (= call!214720 (simplify!491 (ite c!512984 (reg!9865 (regTwo!19584 r!17423)) (ite c!512979 (regOne!19585 (regTwo!19584 r!17423)) (regTwo!19584 (regTwo!19584 r!17423))))))))

(declare-fun b!3080906 () Bool)

(declare-fun e!1927192 () Regex!9536)

(assert (=> b!3080906 (= e!1927192 lt!1053238)))

(declare-fun b!3080907 () Bool)

(assert (=> b!3080907 (= e!1927196 EmptyLang!9536)))

(declare-fun b!3080908 () Bool)

(assert (=> b!3080908 (= e!1927196 e!1927200)))

(declare-fun c!512987 () Bool)

(assert (=> b!3080908 (= c!512987 (is-ElementMatch!9536 (regTwo!19584 r!17423)))))

(declare-fun b!3080909 () Bool)

(assert (=> b!3080909 (= e!1927191 lt!1053234)))

(declare-fun bm!214717 () Bool)

(assert (=> bm!214717 (= call!214718 call!214717)))

(declare-fun b!3080910 () Bool)

(declare-fun c!512988 () Bool)

(assert (=> b!3080910 (= c!512988 (is-EmptyExpr!9536 (regTwo!19584 r!17423)))))

(assert (=> b!3080910 (= e!1927200 e!1927195)))

(declare-fun b!3080911 () Bool)

(assert (=> b!3080911 (= e!1927192 (Union!9536 lt!1053238 lt!1053234))))

(declare-fun b!3080912 () Bool)

(declare-fun c!512986 () Bool)

(assert (=> b!3080912 (= c!512986 call!214718)))

(assert (=> b!3080912 (= e!1927191 e!1927192)))

(declare-fun b!3080913 () Bool)

(assert (=> b!3080913 (= e!1927195 EmptyExpr!9536)))

(assert (= (and d!857492 c!512981) b!3080907))

(assert (= (and d!857492 (not c!512981)) b!3080908))

(assert (= (and b!3080908 c!512987) b!3080889))

(assert (= (and b!3080908 (not c!512987)) b!3080910))

(assert (= (and b!3080910 c!512988) b!3080913))

(assert (= (and b!3080910 (not c!512988)) b!3080897))

(assert (= (and b!3080897 c!512984) b!3080898))

(assert (= (and b!3080897 (not c!512984)) b!3080896))

(assert (= (and b!3080898 (not res!1264091)) b!3080901))

(assert (= (and b!3080898 c!512983) b!3080894))

(assert (= (and b!3080898 (not c!512983)) b!3080892))

(assert (= (and b!3080896 c!512979) b!3080904))

(assert (= (and b!3080896 (not c!512979)) b!3080900))

(assert (= (and b!3080904 c!512982) b!3080909))

(assert (= (and b!3080904 (not c!512982)) b!3080912))

(assert (= (and b!3080912 c!512986) b!3080906))

(assert (= (and b!3080912 (not c!512986)) b!3080911))

(assert (= (and b!3080900 (not res!1264092)) b!3080902))

(assert (= (and b!3080900 c!512985) b!3080903))

(assert (= (and b!3080900 (not c!512985)) b!3080899))

(assert (= (and b!3080899 c!512978) b!3080893))

(assert (= (and b!3080899 (not c!512978)) b!3080891))

(assert (= (and b!3080891 c!512980) b!3080905))

(assert (= (and b!3080891 (not c!512980)) b!3080895))

(assert (= (or b!3080904 b!3080900) bm!214711))

(assert (= (or b!3080904 b!3080900) bm!214714))

(assert (= (or b!3080912 b!3080900) bm!214717))

(assert (= (or b!3080904 b!3080902) bm!214715))

(assert (= (or b!3080901 b!3080891) bm!214712))

(assert (= (or b!3080898 bm!214711) bm!214716))

(assert (= (or b!3080898 bm!214717) bm!214713))

(assert (= (and d!857492 res!1264090) b!3080890))

(declare-fun m!3390107 () Bool)

(assert (=> b!3080890 m!3390107))

(declare-fun m!3390109 () Bool)

(assert (=> b!3080890 m!3390109))

(declare-fun m!3390111 () Bool)

(assert (=> b!3080899 m!3390111))

(declare-fun m!3390113 () Bool)

(assert (=> bm!214715 m!3390113))

(declare-fun m!3390115 () Bool)

(assert (=> bm!214713 m!3390115))

(declare-fun m!3390117 () Bool)

(assert (=> bm!214714 m!3390117))

(declare-fun m!3390119 () Bool)

(assert (=> bm!214712 m!3390119))

(declare-fun m!3390121 () Bool)

(assert (=> bm!214716 m!3390121))

(declare-fun m!3390123 () Bool)

(assert (=> d!857492 m!3390123))

(declare-fun m!3390125 () Bool)

(assert (=> d!857492 m!3390125))

(assert (=> b!3080599 d!857492))

(declare-fun b!3080920 () Bool)

(declare-fun e!1927216 () Regex!9536)

(assert (=> b!3080920 (= e!1927216 (regOne!19584 r!17423))))

(declare-fun b!3080921 () Bool)

(declare-fun e!1927205 () Bool)

(declare-fun lt!1053241 () Regex!9536)

(assert (=> b!3080921 (= e!1927205 (= (nullable!3182 lt!1053241) (nullable!3182 (regOne!19584 r!17423))))))

(declare-fun b!3080922 () Bool)

(declare-fun e!1927203 () Regex!9536)

(declare-fun e!1927210 () Regex!9536)

(assert (=> b!3080922 (= e!1927203 e!1927210)))

(declare-fun c!512991 () Bool)

(declare-fun call!214728 () Bool)

(assert (=> b!3080922 (= c!512991 call!214728)))

(declare-fun bm!214718 () Bool)

(declare-fun call!214723 () Regex!9536)

(declare-fun call!214727 () Regex!9536)

(assert (=> bm!214718 (= call!214723 call!214727)))

(declare-fun b!3080923 () Bool)

(declare-fun e!1927209 () Regex!9536)

(declare-fun lt!1053242 () Regex!9536)

(assert (=> b!3080923 (= e!1927209 (Star!9536 lt!1053242))))

(declare-fun b!3080925 () Bool)

(assert (=> b!3080925 (= e!1927209 EmptyExpr!9536)))

(declare-fun b!3080926 () Bool)

(declare-fun lt!1053239 () Regex!9536)

(declare-fun lt!1053243 () Regex!9536)

(assert (=> b!3080926 (= e!1927210 (Concat!14857 lt!1053239 lt!1053243))))

(declare-fun b!3080927 () Bool)

(declare-fun c!512990 () Bool)

(assert (=> b!3080927 (= c!512990 (is-Union!9536 (regOne!19584 r!17423)))))

(declare-fun e!1927215 () Regex!9536)

(declare-fun e!1927204 () Regex!9536)

(assert (=> b!3080927 (= e!1927215 e!1927204)))

(declare-fun b!3080928 () Bool)

(declare-fun e!1927211 () Regex!9536)

(assert (=> b!3080928 (= e!1927211 e!1927215)))

(declare-fun c!512995 () Bool)

(assert (=> b!3080928 (= c!512995 (is-Star!9536 (regOne!19584 r!17423)))))

(declare-fun b!3080929 () Bool)

(declare-fun c!512994 () Bool)

(declare-fun e!1927213 () Bool)

(assert (=> b!3080929 (= c!512994 e!1927213)))

(declare-fun res!1264100 () Bool)

(assert (=> b!3080929 (=> res!1264100 e!1927213)))

(declare-fun call!214724 () Bool)

(assert (=> b!3080929 (= res!1264100 call!214724)))

(assert (=> b!3080929 (= lt!1053242 call!214727)))

(assert (=> b!3080929 (= e!1927215 e!1927209)))

(declare-fun b!3080930 () Bool)

(declare-fun c!512989 () Bool)

(assert (=> b!3080930 (= c!512989 (isEmptyExpr!593 lt!1053239))))

(declare-fun e!1927214 () Regex!9536)

(assert (=> b!3080930 (= e!1927214 e!1927203)))

(declare-fun bm!214719 () Bool)

(assert (=> bm!214719 (= call!214728 (isEmptyExpr!593 (ite c!512995 lt!1053242 lt!1053243)))))

(declare-fun bm!214720 () Bool)

(declare-fun lt!1053240 () Regex!9536)

(assert (=> bm!214720 (= call!214724 (isEmptyLang!587 (ite c!512995 lt!1053242 (ite c!512990 lt!1053240 lt!1053239))))))

(declare-fun b!3080931 () Bool)

(assert (=> b!3080931 (= e!1927204 e!1927214)))

(declare-fun call!214726 () Regex!9536)

(assert (=> b!3080931 (= lt!1053239 call!214726)))

(assert (=> b!3080931 (= lt!1053243 call!214723)))

(declare-fun res!1264101 () Bool)

(declare-fun call!214725 () Bool)

(assert (=> b!3080931 (= res!1264101 call!214725)))

(declare-fun e!1927206 () Bool)

(assert (=> b!3080931 (=> res!1264101 e!1927206)))

(declare-fun c!512996 () Bool)

(assert (=> b!3080931 (= c!512996 e!1927206)))

(declare-fun bm!214721 () Bool)

(assert (=> bm!214721 (= call!214726 (simplify!491 (ite c!512990 (regTwo!19585 (regOne!19584 r!17423)) (regOne!19584 (regOne!19584 r!17423)))))))

(declare-fun b!3080932 () Bool)

(assert (=> b!3080932 (= e!1927213 call!214728)))

(declare-fun b!3080933 () Bool)

(declare-fun call!214729 () Bool)

(assert (=> b!3080933 (= e!1927206 call!214729)))

(declare-fun b!3080924 () Bool)

(assert (=> b!3080924 (= e!1927203 lt!1053243)))

(declare-fun d!857494 () Bool)

(assert (=> d!857494 e!1927205))

(declare-fun res!1264099 () Bool)

(assert (=> d!857494 (=> (not res!1264099) (not e!1927205))))

(assert (=> d!857494 (= res!1264099 (validRegex!4269 lt!1053241))))

(declare-fun e!1927212 () Regex!9536)

(assert (=> d!857494 (= lt!1053241 e!1927212)))

(declare-fun c!512992 () Bool)

(assert (=> d!857494 (= c!512992 (is-EmptyLang!9536 (regOne!19584 r!17423)))))

(assert (=> d!857494 (validRegex!4269 (regOne!19584 r!17423))))

(assert (=> d!857494 (= (simplify!491 (regOne!19584 r!17423)) lt!1053241)))

(declare-fun b!3080934 () Bool)

(assert (=> b!3080934 (= e!1927214 EmptyLang!9536)))

(declare-fun b!3080935 () Bool)

(declare-fun e!1927207 () Regex!9536)

(assert (=> b!3080935 (= e!1927204 e!1927207)))

(declare-fun lt!1053244 () Regex!9536)

(assert (=> b!3080935 (= lt!1053244 call!214723)))

(assert (=> b!3080935 (= lt!1053240 call!214726)))

(declare-fun c!512993 () Bool)

(assert (=> b!3080935 (= c!512993 call!214729)))

(declare-fun b!3080936 () Bool)

(assert (=> b!3080936 (= e!1927210 lt!1053239)))

(declare-fun bm!214722 () Bool)

(assert (=> bm!214722 (= call!214729 (isEmptyLang!587 (ite c!512990 lt!1053244 lt!1053243)))))

(declare-fun bm!214723 () Bool)

(assert (=> bm!214723 (= call!214727 (simplify!491 (ite c!512995 (reg!9865 (regOne!19584 r!17423)) (ite c!512990 (regOne!19585 (regOne!19584 r!17423)) (regTwo!19584 (regOne!19584 r!17423))))))))

(declare-fun b!3080937 () Bool)

(declare-fun e!1927208 () Regex!9536)

(assert (=> b!3080937 (= e!1927208 lt!1053244)))

(declare-fun b!3080938 () Bool)

(assert (=> b!3080938 (= e!1927212 EmptyLang!9536)))

(declare-fun b!3080939 () Bool)

(assert (=> b!3080939 (= e!1927212 e!1927216)))

(declare-fun c!512998 () Bool)

(assert (=> b!3080939 (= c!512998 (is-ElementMatch!9536 (regOne!19584 r!17423)))))

(declare-fun b!3080940 () Bool)

(assert (=> b!3080940 (= e!1927207 lt!1053240)))

(declare-fun bm!214724 () Bool)

(assert (=> bm!214724 (= call!214725 call!214724)))

(declare-fun b!3080941 () Bool)

(declare-fun c!512999 () Bool)

(assert (=> b!3080941 (= c!512999 (is-EmptyExpr!9536 (regOne!19584 r!17423)))))

(assert (=> b!3080941 (= e!1927216 e!1927211)))

(declare-fun b!3080942 () Bool)

(assert (=> b!3080942 (= e!1927208 (Union!9536 lt!1053244 lt!1053240))))

(declare-fun b!3080943 () Bool)

(declare-fun c!512997 () Bool)

(assert (=> b!3080943 (= c!512997 call!214725)))

(assert (=> b!3080943 (= e!1927207 e!1927208)))

(declare-fun b!3080944 () Bool)

(assert (=> b!3080944 (= e!1927211 EmptyExpr!9536)))

(assert (= (and d!857494 c!512992) b!3080938))

(assert (= (and d!857494 (not c!512992)) b!3080939))

(assert (= (and b!3080939 c!512998) b!3080920))

(assert (= (and b!3080939 (not c!512998)) b!3080941))

(assert (= (and b!3080941 c!512999) b!3080944))

(assert (= (and b!3080941 (not c!512999)) b!3080928))

(assert (= (and b!3080928 c!512995) b!3080929))

(assert (= (and b!3080928 (not c!512995)) b!3080927))

(assert (= (and b!3080929 (not res!1264100)) b!3080932))

(assert (= (and b!3080929 c!512994) b!3080925))

(assert (= (and b!3080929 (not c!512994)) b!3080923))

(assert (= (and b!3080927 c!512990) b!3080935))

(assert (= (and b!3080927 (not c!512990)) b!3080931))

(assert (= (and b!3080935 c!512993) b!3080940))

(assert (= (and b!3080935 (not c!512993)) b!3080943))

(assert (= (and b!3080943 c!512997) b!3080937))

(assert (= (and b!3080943 (not c!512997)) b!3080942))

(assert (= (and b!3080931 (not res!1264101)) b!3080933))

(assert (= (and b!3080931 c!512996) b!3080934))

(assert (= (and b!3080931 (not c!512996)) b!3080930))

(assert (= (and b!3080930 c!512989) b!3080924))

(assert (= (and b!3080930 (not c!512989)) b!3080922))

(assert (= (and b!3080922 c!512991) b!3080936))

(assert (= (and b!3080922 (not c!512991)) b!3080926))

(assert (= (or b!3080935 b!3080931) bm!214718))

(assert (= (or b!3080935 b!3080931) bm!214721))

(assert (= (or b!3080943 b!3080931) bm!214724))

(assert (= (or b!3080935 b!3080933) bm!214722))

(assert (= (or b!3080932 b!3080922) bm!214719))

(assert (= (or b!3080929 bm!214718) bm!214723))

(assert (= (or b!3080929 bm!214724) bm!214720))

(assert (= (and d!857494 res!1264099) b!3080921))

(declare-fun m!3390127 () Bool)

(assert (=> b!3080921 m!3390127))

(declare-fun m!3390129 () Bool)

(assert (=> b!3080921 m!3390129))

(declare-fun m!3390131 () Bool)

(assert (=> b!3080930 m!3390131))

(declare-fun m!3390133 () Bool)

(assert (=> bm!214722 m!3390133))

(declare-fun m!3390135 () Bool)

(assert (=> bm!214720 m!3390135))

(declare-fun m!3390137 () Bool)

(assert (=> bm!214721 m!3390137))

(declare-fun m!3390139 () Bool)

(assert (=> bm!214719 m!3390139))

(declare-fun m!3390141 () Bool)

(assert (=> bm!214723 m!3390141))

(declare-fun m!3390143 () Bool)

(assert (=> d!857494 m!3390143))

(declare-fun m!3390145 () Bool)

(assert (=> d!857494 m!3390145))

(assert (=> b!3080599 d!857494))

(declare-fun d!857496 () Bool)

(assert (=> d!857496 (= (isEmptyExpr!593 lt!1053191) (is-EmptyExpr!9536 lt!1053191))))

(assert (=> b!3080595 d!857496))

(declare-fun d!857498 () Bool)

(assert (=> d!857498 (= (isEmptyLang!587 lt!1053191) (is-EmptyLang!9536 lt!1053191))))

(assert (=> b!3080590 d!857498))

(declare-fun d!857500 () Bool)

(assert (=> d!857500 (= (isEmpty!19612 s!11993) (is-Nil!35277 s!11993))))

(assert (=> b!3080591 d!857500))

(declare-fun b!3080960 () Bool)

(declare-fun e!1927221 () Bool)

(declare-fun tp!970393 () Bool)

(declare-fun tp!970396 () Bool)

(assert (=> b!3080960 (= e!1927221 (and tp!970393 tp!970396))))

(assert (=> b!3080589 (= tp!970359 e!1927221)))

(declare-fun b!3080962 () Bool)

(declare-fun tp!970395 () Bool)

(declare-fun tp!970394 () Bool)

(assert (=> b!3080962 (= e!1927221 (and tp!970395 tp!970394))))

(declare-fun b!3080959 () Bool)

(assert (=> b!3080959 (= e!1927221 tp_is_empty!16635)))

(declare-fun b!3080961 () Bool)

(declare-fun tp!970392 () Bool)

(assert (=> b!3080961 (= e!1927221 tp!970392)))

(assert (= (and b!3080589 (is-ElementMatch!9536 (regOne!19584 r!17423))) b!3080959))

(assert (= (and b!3080589 (is-Concat!14857 (regOne!19584 r!17423))) b!3080960))

(assert (= (and b!3080589 (is-Star!9536 (regOne!19584 r!17423))) b!3080961))

(assert (= (and b!3080589 (is-Union!9536 (regOne!19584 r!17423))) b!3080962))

(declare-fun b!3080964 () Bool)

(declare-fun e!1927222 () Bool)

(declare-fun tp!970398 () Bool)

(declare-fun tp!970401 () Bool)

(assert (=> b!3080964 (= e!1927222 (and tp!970398 tp!970401))))

(assert (=> b!3080589 (= tp!970361 e!1927222)))

(declare-fun b!3080966 () Bool)

(declare-fun tp!970400 () Bool)

(declare-fun tp!970399 () Bool)

(assert (=> b!3080966 (= e!1927222 (and tp!970400 tp!970399))))

(declare-fun b!3080963 () Bool)

(assert (=> b!3080963 (= e!1927222 tp_is_empty!16635)))

(declare-fun b!3080965 () Bool)

(declare-fun tp!970397 () Bool)

(assert (=> b!3080965 (= e!1927222 tp!970397)))

(assert (= (and b!3080589 (is-ElementMatch!9536 (regTwo!19584 r!17423))) b!3080963))

(assert (= (and b!3080589 (is-Concat!14857 (regTwo!19584 r!17423))) b!3080964))

(assert (= (and b!3080589 (is-Star!9536 (regTwo!19584 r!17423))) b!3080965))

(assert (= (and b!3080589 (is-Union!9536 (regTwo!19584 r!17423))) b!3080966))

(declare-fun b!3080971 () Bool)

(declare-fun e!1927225 () Bool)

(declare-fun tp!970404 () Bool)

(assert (=> b!3080971 (= e!1927225 (and tp_is_empty!16635 tp!970404))))

(assert (=> b!3080600 (= tp!970360 e!1927225)))

(assert (= (and b!3080600 (is-Cons!35277 (t!234466 s!11993))) b!3080971))

(declare-fun b!3080973 () Bool)

(declare-fun e!1927226 () Bool)

(declare-fun tp!970406 () Bool)

(declare-fun tp!970409 () Bool)

(assert (=> b!3080973 (= e!1927226 (and tp!970406 tp!970409))))

(assert (=> b!3080596 (= tp!970362 e!1927226)))

(declare-fun b!3080975 () Bool)

(declare-fun tp!970408 () Bool)

(declare-fun tp!970407 () Bool)

(assert (=> b!3080975 (= e!1927226 (and tp!970408 tp!970407))))

(declare-fun b!3080972 () Bool)

(assert (=> b!3080972 (= e!1927226 tp_is_empty!16635)))

(declare-fun b!3080974 () Bool)

(declare-fun tp!970405 () Bool)

(assert (=> b!3080974 (= e!1927226 tp!970405)))

(assert (= (and b!3080596 (is-ElementMatch!9536 (regOne!19585 r!17423))) b!3080972))

(assert (= (and b!3080596 (is-Concat!14857 (regOne!19585 r!17423))) b!3080973))

(assert (= (and b!3080596 (is-Star!9536 (regOne!19585 r!17423))) b!3080974))

(assert (= (and b!3080596 (is-Union!9536 (regOne!19585 r!17423))) b!3080975))

(declare-fun b!3080977 () Bool)

(declare-fun e!1927227 () Bool)

(declare-fun tp!970411 () Bool)

(declare-fun tp!970414 () Bool)

(assert (=> b!3080977 (= e!1927227 (and tp!970411 tp!970414))))

(assert (=> b!3080596 (= tp!970358 e!1927227)))

(declare-fun b!3080979 () Bool)

(declare-fun tp!970413 () Bool)

(declare-fun tp!970412 () Bool)

(assert (=> b!3080979 (= e!1927227 (and tp!970413 tp!970412))))

(declare-fun b!3080976 () Bool)

(assert (=> b!3080976 (= e!1927227 tp_is_empty!16635)))

(declare-fun b!3080978 () Bool)

(declare-fun tp!970410 () Bool)

(assert (=> b!3080978 (= e!1927227 tp!970410)))

(assert (= (and b!3080596 (is-ElementMatch!9536 (regTwo!19585 r!17423))) b!3080976))

(assert (= (and b!3080596 (is-Concat!14857 (regTwo!19585 r!17423))) b!3080977))

(assert (= (and b!3080596 (is-Star!9536 (regTwo!19585 r!17423))) b!3080978))

(assert (= (and b!3080596 (is-Union!9536 (regTwo!19585 r!17423))) b!3080979))

(declare-fun b!3080981 () Bool)

(declare-fun e!1927228 () Bool)

(declare-fun tp!970416 () Bool)

(declare-fun tp!970419 () Bool)

(assert (=> b!3080981 (= e!1927228 (and tp!970416 tp!970419))))

(assert (=> b!3080597 (= tp!970363 e!1927228)))

(declare-fun b!3080983 () Bool)

(declare-fun tp!970418 () Bool)

(declare-fun tp!970417 () Bool)

(assert (=> b!3080983 (= e!1927228 (and tp!970418 tp!970417))))

(declare-fun b!3080980 () Bool)

(assert (=> b!3080980 (= e!1927228 tp_is_empty!16635)))

(declare-fun b!3080982 () Bool)

(declare-fun tp!970415 () Bool)

(assert (=> b!3080982 (= e!1927228 tp!970415)))

(assert (= (and b!3080597 (is-ElementMatch!9536 (reg!9865 r!17423))) b!3080980))

(assert (= (and b!3080597 (is-Concat!14857 (reg!9865 r!17423))) b!3080981))

(assert (= (and b!3080597 (is-Star!9536 (reg!9865 r!17423))) b!3080982))

(assert (= (and b!3080597 (is-Union!9536 (reg!9865 r!17423))) b!3080983))

(push 1)

(assert (not b!3080834))

(assert (not bm!214694))

(assert (not bm!214719))

(assert (not bm!214714))

(assert (not d!857492))

(assert (not bm!214712))

(assert (not b!3080974))

(assert (not b!3080769))

(assert (not bm!214720))

(assert (not b!3080708))

(assert (not b!3080791))

(assert (not bm!214716))

(assert (not bm!214693))

(assert (not b!3080700))

(assert (not d!857494))

(assert (not bm!214695))

(assert (not bm!214690))

(assert (not b!3080979))

(assert (not bm!214715))

(assert (not bm!214675))

(assert (not b!3080975))

(assert (not d!857470))

(assert (not bm!214680))

(assert (not b!3080961))

(assert (not b!3080782))

(assert (not b!3080978))

(assert (not b!3080966))

(assert (not b!3080786))

(assert (not b!3080810))

(assert (not b!3080930))

(assert (not b!3080890))

(assert (not bm!214691))

(assert (not bm!214713))

(assert (not bm!214682))

(assert (not b!3080982))

(assert (not b!3080962))

(assert (not b!3080706))

(assert (not b!3080983))

(assert (not d!857480))

(assert (not b!3080833))

(assert (not b!3080973))

(assert (not b!3080981))

(assert (not bm!214723))

(assert (not b!3080787))

(assert (not b!3080768))

(assert (not b!3080789))

(assert (not b!3080960))

(assert (not bm!214681))

(assert (not bm!214696))

(assert tp_is_empty!16635)

(assert (not b!3080819))

(assert (not b!3080704))

(assert (not b!3080964))

(assert (not b!3080965))

(assert (not b!3080783))

(assert (not b!3080699))

(assert (not b!3080899))

(assert (not b!3080703))

(assert (not b!3080977))

(assert (not b!3080971))

(assert (not b!3080921))

(assert (not d!857478))

(assert (not d!857488))

(assert (not bm!214721))

(assert (not bm!214722))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

