; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285800 () Bool)

(assert start!285800)

(declare-fun b!2944191 () Bool)

(assert (=> b!2944191 true))

(assert (=> b!2944191 true))

(declare-fun b!2944187 () Bool)

(declare-fun res!1215131 () Bool)

(declare-fun e!1855053 () Bool)

(assert (=> b!2944187 (=> res!1215131 e!1855053)))

(declare-datatypes ((C!18432 0))(
  ( (C!18433 (val!11252 Int)) )
))
(declare-datatypes ((Regex!9123 0))(
  ( (ElementMatch!9123 (c!481501 C!18432)) (Concat!14444 (regOne!18758 Regex!9123) (regTwo!18758 Regex!9123)) (EmptyExpr!9123) (Star!9123 (reg!9452 Regex!9123)) (EmptyLang!9123) (Union!9123 (regOne!18759 Regex!9123) (regTwo!18759 Regex!9123)) )
))
(declare-fun lt!1030855 () Regex!9123)

(declare-fun isEmptyExpr!326 (Regex!9123) Bool)

(assert (=> b!2944187 (= res!1215131 (not (isEmptyExpr!326 lt!1030855)))))

(declare-fun b!2944188 () Bool)

(declare-fun e!1855049 () Bool)

(declare-fun tp!941969 () Bool)

(assert (=> b!2944188 (= e!1855049 tp!941969)))

(declare-fun b!2944189 () Bool)

(declare-fun res!1215135 () Bool)

(declare-fun e!1855052 () Bool)

(assert (=> b!2944189 (=> res!1215135 e!1855052)))

(declare-datatypes ((List!34988 0))(
  ( (Nil!34864) (Cons!34864 (h!40284 C!18432) (t!234053 List!34988)) )
))
(declare-fun s!11993 () List!34988)

(declare-fun isEmpty!19125 (List!34988) Bool)

(assert (=> b!2944189 (= res!1215135 (isEmpty!19125 s!11993))))

(declare-fun b!2944190 () Bool)

(declare-fun tp!941968 () Bool)

(declare-fun tp!941964 () Bool)

(assert (=> b!2944190 (= e!1855049 (and tp!941968 tp!941964))))

(declare-fun b!2944192 () Bool)

(declare-fun res!1215136 () Bool)

(assert (=> b!2944192 (=> res!1215136 e!1855053)))

(declare-fun isEmptyLang!245 (Regex!9123) Bool)

(assert (=> b!2944192 (= res!1215136 (isEmptyLang!245 lt!1030855))))

(declare-fun b!2944193 () Bool)

(declare-fun tp!941966 () Bool)

(declare-fun tp!941967 () Bool)

(assert (=> b!2944193 (= e!1855049 (and tp!941966 tp!941967))))

(declare-fun b!2944194 () Bool)

(declare-fun res!1215133 () Bool)

(assert (=> b!2944194 (=> res!1215133 e!1855053)))

(declare-fun lt!1030858 () Regex!9123)

(assert (=> b!2944194 (= res!1215133 (isEmptyExpr!326 lt!1030858))))

(declare-fun b!2944195 () Bool)

(declare-fun e!1855048 () Bool)

(assert (=> b!2944195 (= e!1855048 (not e!1855052))))

(declare-fun res!1215130 () Bool)

(assert (=> b!2944195 (=> res!1215130 e!1855052)))

(declare-fun lt!1030861 () Bool)

(declare-fun r!17423 () Regex!9123)

(get-info :version)

(assert (=> b!2944195 (= res!1215130 (or lt!1030861 (not ((_ is Concat!14444) r!17423))))))

(declare-fun matchRSpec!1260 (Regex!9123 List!34988) Bool)

(assert (=> b!2944195 (= lt!1030861 (matchRSpec!1260 r!17423 s!11993))))

(declare-fun matchR!4005 (Regex!9123 List!34988) Bool)

(assert (=> b!2944195 (= lt!1030861 (matchR!4005 r!17423 s!11993))))

(declare-datatypes ((Unit!48625 0))(
  ( (Unit!48626) )
))
(declare-fun lt!1030854 () Unit!48625)

(declare-fun mainMatchTheorem!1260 (Regex!9123 List!34988) Unit!48625)

(assert (=> b!2944195 (= lt!1030854 (mainMatchTheorem!1260 r!17423 s!11993))))

(declare-fun b!2944196 () Bool)

(declare-fun tp_is_empty!15809 () Bool)

(assert (=> b!2944196 (= e!1855049 tp_is_empty!15809)))

(declare-fun b!2944197 () Bool)

(declare-fun e!1855050 () Bool)

(assert (=> b!2944197 (= e!1855053 e!1855050)))

(declare-fun res!1215134 () Bool)

(assert (=> b!2944197 (=> res!1215134 e!1855050)))

(declare-fun lt!1030856 () Bool)

(assert (=> b!2944197 (= res!1215134 (not lt!1030856))))

(assert (=> b!2944197 (= (matchR!4005 (regTwo!18758 r!17423) Nil!34864) (matchR!4005 lt!1030855 Nil!34864))))

(declare-fun lt!1030857 () Unit!48625)

(declare-fun lemmaSimplifySound!110 (Regex!9123 List!34988) Unit!48625)

(assert (=> b!2944197 (= lt!1030857 (lemmaSimplifySound!110 (regTwo!18758 r!17423) Nil!34864))))

(assert (=> b!2944197 (= lt!1030856 (matchR!4005 lt!1030858 s!11993))))

(assert (=> b!2944197 (= lt!1030856 (matchR!4005 (regOne!18758 r!17423) s!11993))))

(declare-fun lt!1030859 () Unit!48625)

(assert (=> b!2944197 (= lt!1030859 (lemmaSimplifySound!110 (regOne!18758 r!17423) s!11993))))

(declare-fun b!2944198 () Bool)

(declare-fun e!1855051 () Bool)

(declare-fun tp!941965 () Bool)

(assert (=> b!2944198 (= e!1855051 (and tp_is_empty!15809 tp!941965))))

(declare-fun b!2944199 () Bool)

(assert (=> b!2944199 (= e!1855052 e!1855053)))

(declare-fun res!1215132 () Bool)

(assert (=> b!2944199 (=> res!1215132 e!1855053)))

(assert (=> b!2944199 (= res!1215132 (isEmptyLang!245 lt!1030858))))

(declare-fun simplify!128 (Regex!9123) Regex!9123)

(assert (=> b!2944199 (= lt!1030855 (simplify!128 (regTwo!18758 r!17423)))))

(assert (=> b!2944199 (= lt!1030858 (simplify!128 (regOne!18758 r!17423)))))

(declare-fun res!1215129 () Bool)

(assert (=> start!285800 (=> (not res!1215129) (not e!1855048))))

(declare-fun validRegex!3856 (Regex!9123) Bool)

(assert (=> start!285800 (= res!1215129 (validRegex!3856 r!17423))))

(assert (=> start!285800 e!1855048))

(assert (=> start!285800 e!1855049))

(assert (=> start!285800 e!1855051))

(assert (=> b!2944191 (= e!1855050 true)))

(declare-fun lambda!109576 () Int)

(declare-fun Exists!1461 (Int) Bool)

(assert (=> b!2944191 (Exists!1461 lambda!109576)))

(declare-fun lt!1030853 () Unit!48625)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!808 (Regex!9123 Regex!9123 List!34988) Unit!48625)

(assert (=> b!2944191 (= lt!1030853 (lemmaFindConcatSeparationEquivalentToExists!808 (regOne!18758 r!17423) (regTwo!18758 r!17423) s!11993))))

(declare-datatypes ((tuple2!33808 0))(
  ( (tuple2!33809 (_1!20036 List!34988) (_2!20036 List!34988)) )
))
(declare-datatypes ((Option!6636 0))(
  ( (None!6635) (Some!6635 (v!34769 tuple2!33808)) )
))
(declare-fun isDefined!5187 (Option!6636) Bool)

(declare-fun findConcatSeparation!1030 (Regex!9123 Regex!9123 List!34988 List!34988 List!34988) Option!6636)

(assert (=> b!2944191 (isDefined!5187 (findConcatSeparation!1030 (regOne!18758 r!17423) (regTwo!18758 r!17423) Nil!34864 s!11993 s!11993))))

(declare-fun lt!1030860 () Unit!48625)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!18 (Regex!9123 Regex!9123 List!34988 List!34988 List!34988 List!34988 List!34988) Unit!48625)

(assert (=> b!2944191 (= lt!1030860 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!18 (regOne!18758 r!17423) (regTwo!18758 r!17423) s!11993 Nil!34864 s!11993 Nil!34864 s!11993))))

(assert (= (and start!285800 res!1215129) b!2944195))

(assert (= (and b!2944195 (not res!1215130)) b!2944189))

(assert (= (and b!2944189 (not res!1215135)) b!2944199))

(assert (= (and b!2944199 (not res!1215132)) b!2944192))

(assert (= (and b!2944192 (not res!1215136)) b!2944194))

(assert (= (and b!2944194 (not res!1215133)) b!2944187))

(assert (= (and b!2944187 (not res!1215131)) b!2944197))

(assert (= (and b!2944197 (not res!1215134)) b!2944191))

(assert (= (and start!285800 ((_ is ElementMatch!9123) r!17423)) b!2944196))

(assert (= (and start!285800 ((_ is Concat!14444) r!17423)) b!2944190))

(assert (= (and start!285800 ((_ is Star!9123) r!17423)) b!2944188))

(assert (= (and start!285800 ((_ is Union!9123) r!17423)) b!2944193))

(assert (= (and start!285800 ((_ is Cons!34864) s!11993)) b!2944198))

(declare-fun m!3326997 () Bool)

(assert (=> b!2944199 m!3326997))

(declare-fun m!3326999 () Bool)

(assert (=> b!2944199 m!3326999))

(declare-fun m!3327001 () Bool)

(assert (=> b!2944199 m!3327001))

(declare-fun m!3327003 () Bool)

(assert (=> b!2944192 m!3327003))

(declare-fun m!3327005 () Bool)

(assert (=> b!2944191 m!3327005))

(declare-fun m!3327007 () Bool)

(assert (=> b!2944191 m!3327007))

(declare-fun m!3327009 () Bool)

(assert (=> b!2944191 m!3327009))

(declare-fun m!3327011 () Bool)

(assert (=> b!2944191 m!3327011))

(assert (=> b!2944191 m!3327007))

(declare-fun m!3327013 () Bool)

(assert (=> b!2944191 m!3327013))

(declare-fun m!3327015 () Bool)

(assert (=> b!2944197 m!3327015))

(declare-fun m!3327017 () Bool)

(assert (=> b!2944197 m!3327017))

(declare-fun m!3327019 () Bool)

(assert (=> b!2944197 m!3327019))

(declare-fun m!3327021 () Bool)

(assert (=> b!2944197 m!3327021))

(declare-fun m!3327023 () Bool)

(assert (=> b!2944197 m!3327023))

(declare-fun m!3327025 () Bool)

(assert (=> b!2944197 m!3327025))

(declare-fun m!3327027 () Bool)

(assert (=> b!2944187 m!3327027))

(declare-fun m!3327029 () Bool)

(assert (=> b!2944189 m!3327029))

(declare-fun m!3327031 () Bool)

(assert (=> b!2944194 m!3327031))

(declare-fun m!3327033 () Bool)

(assert (=> start!285800 m!3327033))

(declare-fun m!3327035 () Bool)

(assert (=> b!2944195 m!3327035))

(declare-fun m!3327037 () Bool)

(assert (=> b!2944195 m!3327037))

(declare-fun m!3327039 () Bool)

(assert (=> b!2944195 m!3327039))

(check-sat (not b!2944187) tp_is_empty!15809 (not b!2944199) (not b!2944189) (not b!2944188) (not start!285800) (not b!2944191) (not b!2944198) (not b!2944192) (not b!2944190) (not b!2944195) (not b!2944197) (not b!2944194) (not b!2944193))
(check-sat)
