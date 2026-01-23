; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!292440 () Bool)

(assert start!292440)

(declare-fun b!3064737 () Bool)

(assert (=> b!3064737 true))

(assert (=> b!3064737 true))

(declare-fun b!3064727 () Bool)

(declare-fun e!1918687 () Bool)

(declare-fun e!1918686 () Bool)

(assert (=> b!3064727 (= e!1918687 (not e!1918686))))

(declare-fun res!1258131 () Bool)

(assert (=> b!3064727 (=> res!1258131 e!1918686)))

(declare-fun lt!1050522 () Bool)

(declare-datatypes ((C!19180 0))(
  ( (C!19181 (val!11626 Int)) )
))
(declare-datatypes ((Regex!9497 0))(
  ( (ElementMatch!9497 (c!509021 C!19180)) (Concat!14818 (regOne!19506 Regex!9497) (regTwo!19506 Regex!9497)) (EmptyExpr!9497) (Star!9497 (reg!9826 Regex!9497)) (EmptyLang!9497) (Union!9497 (regOne!19507 Regex!9497) (regTwo!19507 Regex!9497)) )
))
(declare-fun r!17423 () Regex!9497)

(get-info :version)

(assert (=> b!3064727 (= res!1258131 (or lt!1050522 (not ((_ is Concat!14818) r!17423))))))

(declare-datatypes ((List!35362 0))(
  ( (Nil!35238) (Cons!35238 (h!40658 C!19180) (t!234427 List!35362)) )
))
(declare-fun s!11993 () List!35362)

(declare-fun matchRSpec!1634 (Regex!9497 List!35362) Bool)

(assert (=> b!3064727 (= lt!1050522 (matchRSpec!1634 r!17423 s!11993))))

(declare-fun matchR!4379 (Regex!9497 List!35362) Bool)

(assert (=> b!3064727 (= lt!1050522 (matchR!4379 r!17423 s!11993))))

(declare-datatypes ((Unit!49433 0))(
  ( (Unit!49434) )
))
(declare-fun lt!1050524 () Unit!49433)

(declare-fun mainMatchTheorem!1634 (Regex!9497 List!35362) Unit!49433)

(assert (=> b!3064727 (= lt!1050524 (mainMatchTheorem!1634 r!17423 s!11993))))

(declare-fun res!1258134 () Bool)

(assert (=> start!292440 (=> (not res!1258134) (not e!1918687))))

(declare-fun validRegex!4230 (Regex!9497) Bool)

(assert (=> start!292440 (= res!1258134 (validRegex!4230 r!17423))))

(assert (=> start!292440 e!1918687))

(declare-fun e!1918682 () Bool)

(assert (=> start!292440 e!1918682))

(declare-fun e!1918684 () Bool)

(assert (=> start!292440 e!1918684))

(declare-fun b!3064728 () Bool)

(declare-fun tp_is_empty!16557 () Bool)

(declare-fun tp!967887 () Bool)

(assert (=> b!3064728 (= e!1918684 (and tp_is_empty!16557 tp!967887))))

(declare-fun b!3064729 () Bool)

(declare-fun res!1258128 () Bool)

(declare-fun e!1918685 () Bool)

(assert (=> b!3064729 (=> res!1258128 e!1918685)))

(declare-fun lt!1050528 () Regex!9497)

(declare-fun isEmptyLang!548 (Regex!9497) Bool)

(assert (=> b!3064729 (= res!1258128 (isEmptyLang!548 lt!1050528))))

(declare-fun b!3064730 () Bool)

(declare-fun res!1258136 () Bool)

(assert (=> b!3064730 (=> res!1258136 e!1918686)))

(declare-fun isEmpty!19559 (List!35362) Bool)

(assert (=> b!3064730 (= res!1258136 (isEmpty!19559 s!11993))))

(declare-fun b!3064731 () Bool)

(declare-fun tp!967886 () Bool)

(declare-fun tp!967884 () Bool)

(assert (=> b!3064731 (= e!1918682 (and tp!967886 tp!967884))))

(declare-fun b!3064732 () Bool)

(declare-fun res!1258135 () Bool)

(declare-fun e!1918683 () Bool)

(assert (=> b!3064732 (=> res!1258135 e!1918683)))

(declare-fun nullable!3143 (Regex!9497) Bool)

(assert (=> b!3064732 (= res!1258135 (not (nullable!3143 (regOne!19506 r!17423))))))

(declare-fun b!3064733 () Bool)

(assert (=> b!3064733 (= e!1918686 e!1918685)))

(declare-fun res!1258132 () Bool)

(assert (=> b!3064733 (=> res!1258132 e!1918685)))

(declare-fun lt!1050525 () Regex!9497)

(assert (=> b!3064733 (= res!1258132 (isEmptyLang!548 lt!1050525))))

(declare-fun simplify!452 (Regex!9497) Regex!9497)

(assert (=> b!3064733 (= lt!1050528 (simplify!452 (regTwo!19506 r!17423)))))

(assert (=> b!3064733 (= lt!1050525 (simplify!452 (regOne!19506 r!17423)))))

(declare-fun b!3064734 () Bool)

(assert (=> b!3064734 (= e!1918685 e!1918683)))

(declare-fun res!1258130 () Bool)

(assert (=> b!3064734 (=> res!1258130 e!1918683)))

(declare-fun lt!1050521 () Bool)

(assert (=> b!3064734 (= res!1258130 (not lt!1050521))))

(assert (=> b!3064734 (= lt!1050521 (matchR!4379 lt!1050528 s!11993))))

(assert (=> b!3064734 (= lt!1050521 (matchR!4379 (regTwo!19506 r!17423) s!11993))))

(declare-fun lt!1050526 () Unit!49433)

(declare-fun lemmaSimplifySound!282 (Regex!9497 List!35362) Unit!49433)

(assert (=> b!3064734 (= lt!1050526 (lemmaSimplifySound!282 (regTwo!19506 r!17423) s!11993))))

(declare-fun b!3064735 () Bool)

(declare-fun res!1258127 () Bool)

(assert (=> b!3064735 (=> res!1258127 e!1918685)))

(declare-fun isEmptyExpr!554 (Regex!9497) Bool)

(assert (=> b!3064735 (= res!1258127 (not (isEmptyExpr!554 lt!1050525)))))

(declare-fun b!3064736 () Bool)

(declare-fun tp!967889 () Bool)

(declare-fun tp!967888 () Bool)

(assert (=> b!3064736 (= e!1918682 (and tp!967889 tp!967888))))

(declare-fun e!1918681 () Bool)

(assert (=> b!3064737 (= e!1918683 e!1918681)))

(declare-fun res!1258129 () Bool)

(assert (=> b!3064737 (=> res!1258129 e!1918681)))

(assert (=> b!3064737 (= res!1258129 (not (validRegex!4230 (regOne!19506 r!17423))))))

(declare-fun lambda!113952 () Int)

(declare-fun Exists!1760 (Int) Bool)

(assert (=> b!3064737 (Exists!1760 lambda!113952)))

(declare-fun lt!1050523 () Unit!49433)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!982 (Regex!9497 Regex!9497 List!35362) Unit!49433)

(assert (=> b!3064737 (= lt!1050523 (lemmaFindConcatSeparationEquivalentToExists!982 (regOne!19506 r!17423) (regTwo!19506 r!17423) s!11993))))

(declare-datatypes ((tuple2!34164 0))(
  ( (tuple2!34165 (_1!20214 List!35362) (_2!20214 List!35362)) )
))
(declare-datatypes ((Option!6814 0))(
  ( (None!6813) (Some!6813 (v!34947 tuple2!34164)) )
))
(declare-fun isDefined!5365 (Option!6814) Bool)

(declare-fun findConcatSeparation!1208 (Regex!9497 Regex!9497 List!35362 List!35362 List!35362) Option!6814)

(assert (=> b!3064737 (isDefined!5365 (findConcatSeparation!1208 (regOne!19506 r!17423) (regTwo!19506 r!17423) Nil!35238 s!11993 s!11993))))

(declare-fun lt!1050527 () Unit!49433)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!28 (Regex!9497 Regex!9497 List!35362 List!35362 List!35362 List!35362 List!35362) Unit!49433)

(assert (=> b!3064737 (= lt!1050527 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!28 (regOne!19506 r!17423) (regTwo!19506 r!17423) Nil!35238 s!11993 s!11993 Nil!35238 s!11993))))

(declare-fun b!3064738 () Bool)

(assert (=> b!3064738 (= e!1918681 (validRegex!4230 (regTwo!19506 r!17423)))))

(declare-fun b!3064739 () Bool)

(assert (=> b!3064739 (= e!1918682 tp_is_empty!16557)))

(declare-fun b!3064740 () Bool)

(declare-fun tp!967885 () Bool)

(assert (=> b!3064740 (= e!1918682 tp!967885)))

(declare-fun b!3064741 () Bool)

(declare-fun res!1258133 () Bool)

(assert (=> b!3064741 (=> res!1258133 e!1918683)))

(assert (=> b!3064741 (= res!1258133 (not (matchR!4379 (regOne!19506 r!17423) Nil!35238)))))

(assert (= (and start!292440 res!1258134) b!3064727))

(assert (= (and b!3064727 (not res!1258131)) b!3064730))

(assert (= (and b!3064730 (not res!1258136)) b!3064733))

(assert (= (and b!3064733 (not res!1258132)) b!3064729))

(assert (= (and b!3064729 (not res!1258128)) b!3064735))

(assert (= (and b!3064735 (not res!1258127)) b!3064734))

(assert (= (and b!3064734 (not res!1258130)) b!3064732))

(assert (= (and b!3064732 (not res!1258135)) b!3064741))

(assert (= (and b!3064741 (not res!1258133)) b!3064737))

(assert (= (and b!3064737 (not res!1258129)) b!3064738))

(assert (= (and start!292440 ((_ is ElementMatch!9497) r!17423)) b!3064739))

(assert (= (and start!292440 ((_ is Concat!14818) r!17423)) b!3064736))

(assert (= (and start!292440 ((_ is Star!9497) r!17423)) b!3064740))

(assert (= (and start!292440 ((_ is Union!9497) r!17423)) b!3064731))

(assert (= (and start!292440 ((_ is Cons!35238) s!11993)) b!3064728))

(declare-fun m!3383157 () Bool)

(assert (=> b!3064737 m!3383157))

(declare-fun m!3383159 () Bool)

(assert (=> b!3064737 m!3383159))

(declare-fun m!3383161 () Bool)

(assert (=> b!3064737 m!3383161))

(declare-fun m!3383163 () Bool)

(assert (=> b!3064737 m!3383163))

(assert (=> b!3064737 m!3383161))

(declare-fun m!3383165 () Bool)

(assert (=> b!3064737 m!3383165))

(declare-fun m!3383167 () Bool)

(assert (=> b!3064737 m!3383167))

(declare-fun m!3383169 () Bool)

(assert (=> b!3064741 m!3383169))

(declare-fun m!3383171 () Bool)

(assert (=> start!292440 m!3383171))

(declare-fun m!3383173 () Bool)

(assert (=> b!3064730 m!3383173))

(declare-fun m!3383175 () Bool)

(assert (=> b!3064734 m!3383175))

(declare-fun m!3383177 () Bool)

(assert (=> b!3064734 m!3383177))

(declare-fun m!3383179 () Bool)

(assert (=> b!3064734 m!3383179))

(declare-fun m!3383181 () Bool)

(assert (=> b!3064733 m!3383181))

(declare-fun m!3383183 () Bool)

(assert (=> b!3064733 m!3383183))

(declare-fun m!3383185 () Bool)

(assert (=> b!3064733 m!3383185))

(declare-fun m!3383187 () Bool)

(assert (=> b!3064727 m!3383187))

(declare-fun m!3383189 () Bool)

(assert (=> b!3064727 m!3383189))

(declare-fun m!3383191 () Bool)

(assert (=> b!3064727 m!3383191))

(declare-fun m!3383193 () Bool)

(assert (=> b!3064729 m!3383193))

(declare-fun m!3383195 () Bool)

(assert (=> b!3064735 m!3383195))

(declare-fun m!3383197 () Bool)

(assert (=> b!3064732 m!3383197))

(declare-fun m!3383199 () Bool)

(assert (=> b!3064738 m!3383199))

(check-sat (not b!3064741) (not b!3064732) (not b!3064733) (not b!3064734) (not b!3064729) (not b!3064731) (not b!3064740) (not b!3064728) (not b!3064737) (not b!3064736) (not start!292440) (not b!3064727) (not b!3064738) tp_is_empty!16557 (not b!3064735) (not b!3064730))
(check-sat)
(get-model)

(declare-fun b!3064782 () Bool)

(declare-fun res!1258159 () Bool)

(declare-fun e!1918720 () Bool)

(assert (=> b!3064782 (=> res!1258159 e!1918720)))

(assert (=> b!3064782 (= res!1258159 (not ((_ is Concat!14818) r!17423)))))

(declare-fun e!1918716 () Bool)

(assert (=> b!3064782 (= e!1918716 e!1918720)))

(declare-fun bm!212246 () Bool)

(declare-fun call!212252 () Bool)

(declare-fun call!212251 () Bool)

(assert (=> bm!212246 (= call!212252 call!212251)))

(declare-fun bm!212247 () Bool)

(declare-fun call!212253 () Bool)

(declare-fun c!509030 () Bool)

(assert (=> bm!212247 (= call!212253 (validRegex!4230 (ite c!509030 (regOne!19507 r!17423) (regTwo!19506 r!17423))))))

(declare-fun b!3064783 () Bool)

(declare-fun e!1918722 () Bool)

(declare-fun e!1918719 () Bool)

(assert (=> b!3064783 (= e!1918722 e!1918719)))

(declare-fun res!1258158 () Bool)

(assert (=> b!3064783 (= res!1258158 (not (nullable!3143 (reg!9826 r!17423))))))

(assert (=> b!3064783 (=> (not res!1258158) (not e!1918719))))

(declare-fun c!509031 () Bool)

(declare-fun bm!212248 () Bool)

(assert (=> bm!212248 (= call!212251 (validRegex!4230 (ite c!509031 (reg!9826 r!17423) (ite c!509030 (regTwo!19507 r!17423) (regOne!19506 r!17423)))))))

(declare-fun b!3064784 () Bool)

(declare-fun e!1918718 () Bool)

(assert (=> b!3064784 (= e!1918720 e!1918718)))

(declare-fun res!1258157 () Bool)

(assert (=> b!3064784 (=> (not res!1258157) (not e!1918718))))

(assert (=> b!3064784 (= res!1258157 call!212252)))

(declare-fun b!3064785 () Bool)

(assert (=> b!3064785 (= e!1918719 call!212251)))

(declare-fun d!855624 () Bool)

(declare-fun res!1258160 () Bool)

(declare-fun e!1918717 () Bool)

(assert (=> d!855624 (=> res!1258160 e!1918717)))

(assert (=> d!855624 (= res!1258160 ((_ is ElementMatch!9497) r!17423))))

(assert (=> d!855624 (= (validRegex!4230 r!17423) e!1918717)))

(declare-fun b!3064786 () Bool)

(assert (=> b!3064786 (= e!1918722 e!1918716)))

(assert (=> b!3064786 (= c!509030 ((_ is Union!9497) r!17423))))

(declare-fun b!3064787 () Bool)

(assert (=> b!3064787 (= e!1918718 call!212253)))

(declare-fun b!3064788 () Bool)

(declare-fun res!1258161 () Bool)

(declare-fun e!1918721 () Bool)

(assert (=> b!3064788 (=> (not res!1258161) (not e!1918721))))

(assert (=> b!3064788 (= res!1258161 call!212253)))

(assert (=> b!3064788 (= e!1918716 e!1918721)))

(declare-fun b!3064789 () Bool)

(assert (=> b!3064789 (= e!1918721 call!212252)))

(declare-fun b!3064790 () Bool)

(assert (=> b!3064790 (= e!1918717 e!1918722)))

(assert (=> b!3064790 (= c!509031 ((_ is Star!9497) r!17423))))

(assert (= (and d!855624 (not res!1258160)) b!3064790))

(assert (= (and b!3064790 c!509031) b!3064783))

(assert (= (and b!3064790 (not c!509031)) b!3064786))

(assert (= (and b!3064783 res!1258158) b!3064785))

(assert (= (and b!3064786 c!509030) b!3064788))

(assert (= (and b!3064786 (not c!509030)) b!3064782))

(assert (= (and b!3064788 res!1258161) b!3064789))

(assert (= (and b!3064782 (not res!1258159)) b!3064784))

(assert (= (and b!3064784 res!1258157) b!3064787))

(assert (= (or b!3064788 b!3064787) bm!212247))

(assert (= (or b!3064789 b!3064784) bm!212246))

(assert (= (or b!3064785 bm!212246) bm!212248))

(declare-fun m!3383203 () Bool)

(assert (=> bm!212247 m!3383203))

(declare-fun m!3383205 () Bool)

(assert (=> b!3064783 m!3383205))

(declare-fun m!3383207 () Bool)

(assert (=> bm!212248 m!3383207))

(assert (=> start!292440 d!855624))

(declare-fun d!855630 () Bool)

(assert (=> d!855630 (= (isEmptyExpr!554 lt!1050525) ((_ is EmptyExpr!9497) lt!1050525))))

(assert (=> b!3064735 d!855630))

(declare-fun d!855632 () Bool)

(assert (=> d!855632 (= (isEmpty!19559 s!11993) ((_ is Nil!35238) s!11993))))

(assert (=> b!3064730 d!855632))

(declare-fun b!3064855 () Bool)

(declare-fun e!1918759 () Bool)

(declare-fun e!1918761 () Bool)

(assert (=> b!3064855 (= e!1918759 e!1918761)))

(declare-fun res!1258200 () Bool)

(assert (=> b!3064855 (=> res!1258200 e!1918761)))

(declare-fun call!212265 () Bool)

(assert (=> b!3064855 (= res!1258200 call!212265)))

(declare-fun b!3064856 () Bool)

(declare-fun res!1258205 () Bool)

(assert (=> b!3064856 (=> res!1258205 e!1918761)))

(declare-fun tail!5024 (List!35362) List!35362)

(assert (=> b!3064856 (= res!1258205 (not (isEmpty!19559 (tail!5024 Nil!35238))))))

(declare-fun b!3064857 () Bool)

(declare-fun res!1258204 () Bool)

(declare-fun e!1918762 () Bool)

(assert (=> b!3064857 (=> res!1258204 e!1918762)))

(declare-fun e!1918760 () Bool)

(assert (=> b!3064857 (= res!1258204 e!1918760)))

(declare-fun res!1258203 () Bool)

(assert (=> b!3064857 (=> (not res!1258203) (not e!1918760))))

(declare-fun lt!1050545 () Bool)

(assert (=> b!3064857 (= res!1258203 lt!1050545)))

(declare-fun b!3064858 () Bool)

(declare-fun e!1918764 () Bool)

(assert (=> b!3064858 (= e!1918764 (not lt!1050545))))

(declare-fun b!3064859 () Bool)

(declare-fun res!1258201 () Bool)

(assert (=> b!3064859 (=> res!1258201 e!1918762)))

(assert (=> b!3064859 (= res!1258201 (not ((_ is ElementMatch!9497) (regOne!19506 r!17423))))))

(assert (=> b!3064859 (= e!1918764 e!1918762)))

(declare-fun b!3064860 () Bool)

(declare-fun e!1918765 () Bool)

(assert (=> b!3064860 (= e!1918765 e!1918764)))

(declare-fun c!509048 () Bool)

(assert (=> b!3064860 (= c!509048 ((_ is EmptyLang!9497) (regOne!19506 r!17423)))))

(declare-fun d!855634 () Bool)

(assert (=> d!855634 e!1918765))

(declare-fun c!509046 () Bool)

(assert (=> d!855634 (= c!509046 ((_ is EmptyExpr!9497) (regOne!19506 r!17423)))))

(declare-fun e!1918763 () Bool)

(assert (=> d!855634 (= lt!1050545 e!1918763)))

(declare-fun c!509047 () Bool)

(assert (=> d!855634 (= c!509047 (isEmpty!19559 Nil!35238))))

(assert (=> d!855634 (validRegex!4230 (regOne!19506 r!17423))))

(assert (=> d!855634 (= (matchR!4379 (regOne!19506 r!17423) Nil!35238) lt!1050545)))

(declare-fun b!3064861 () Bool)

(declare-fun head!6798 (List!35362) C!19180)

(assert (=> b!3064861 (= e!1918760 (= (head!6798 Nil!35238) (c!509021 (regOne!19506 r!17423))))))

(declare-fun b!3064862 () Bool)

(assert (=> b!3064862 (= e!1918762 e!1918759)))

(declare-fun res!1258199 () Bool)

(assert (=> b!3064862 (=> (not res!1258199) (not e!1918759))))

(assert (=> b!3064862 (= res!1258199 (not lt!1050545))))

(declare-fun bm!212260 () Bool)

(assert (=> bm!212260 (= call!212265 (isEmpty!19559 Nil!35238))))

(declare-fun b!3064863 () Bool)

(declare-fun res!1258202 () Bool)

(assert (=> b!3064863 (=> (not res!1258202) (not e!1918760))))

(assert (=> b!3064863 (= res!1258202 (not call!212265))))

(declare-fun b!3064864 () Bool)

(declare-fun res!1258198 () Bool)

(assert (=> b!3064864 (=> (not res!1258198) (not e!1918760))))

(assert (=> b!3064864 (= res!1258198 (isEmpty!19559 (tail!5024 Nil!35238)))))

(declare-fun b!3064865 () Bool)

(assert (=> b!3064865 (= e!1918765 (= lt!1050545 call!212265))))

(declare-fun b!3064866 () Bool)

(assert (=> b!3064866 (= e!1918763 (nullable!3143 (regOne!19506 r!17423)))))

(declare-fun b!3064867 () Bool)

(declare-fun derivativeStep!2739 (Regex!9497 C!19180) Regex!9497)

(assert (=> b!3064867 (= e!1918763 (matchR!4379 (derivativeStep!2739 (regOne!19506 r!17423) (head!6798 Nil!35238)) (tail!5024 Nil!35238)))))

(declare-fun b!3064868 () Bool)

(assert (=> b!3064868 (= e!1918761 (not (= (head!6798 Nil!35238) (c!509021 (regOne!19506 r!17423)))))))

(assert (= (and d!855634 c!509047) b!3064866))

(assert (= (and d!855634 (not c!509047)) b!3064867))

(assert (= (and d!855634 c!509046) b!3064865))

(assert (= (and d!855634 (not c!509046)) b!3064860))

(assert (= (and b!3064860 c!509048) b!3064858))

(assert (= (and b!3064860 (not c!509048)) b!3064859))

(assert (= (and b!3064859 (not res!1258201)) b!3064857))

(assert (= (and b!3064857 res!1258203) b!3064863))

(assert (= (and b!3064863 res!1258202) b!3064864))

(assert (= (and b!3064864 res!1258198) b!3064861))

(assert (= (and b!3064857 (not res!1258204)) b!3064862))

(assert (= (and b!3064862 res!1258199) b!3064855))

(assert (= (and b!3064855 (not res!1258200)) b!3064856))

(assert (= (and b!3064856 (not res!1258205)) b!3064868))

(assert (= (or b!3064865 b!3064855 b!3064863) bm!212260))

(declare-fun m!3383237 () Bool)

(assert (=> b!3064856 m!3383237))

(assert (=> b!3064856 m!3383237))

(declare-fun m!3383239 () Bool)

(assert (=> b!3064856 m!3383239))

(declare-fun m!3383241 () Bool)

(assert (=> b!3064861 m!3383241))

(assert (=> b!3064868 m!3383241))

(declare-fun m!3383243 () Bool)

(assert (=> d!855634 m!3383243))

(assert (=> d!855634 m!3383159))

(assert (=> bm!212260 m!3383243))

(assert (=> b!3064867 m!3383241))

(assert (=> b!3064867 m!3383241))

(declare-fun m!3383245 () Bool)

(assert (=> b!3064867 m!3383245))

(assert (=> b!3064867 m!3383237))

(assert (=> b!3064867 m!3383245))

(assert (=> b!3064867 m!3383237))

(declare-fun m!3383247 () Bool)

(assert (=> b!3064867 m!3383247))

(assert (=> b!3064866 m!3383197))

(assert (=> b!3064864 m!3383237))

(assert (=> b!3064864 m!3383237))

(assert (=> b!3064864 m!3383239))

(assert (=> b!3064741 d!855634))

(declare-fun d!855644 () Bool)

(declare-fun choose!18157 (Int) Bool)

(assert (=> d!855644 (= (Exists!1760 lambda!113952) (choose!18157 lambda!113952))))

(declare-fun bs!532535 () Bool)

(assert (= bs!532535 d!855644))

(declare-fun m!3383253 () Bool)

(assert (=> bs!532535 m!3383253))

(assert (=> b!3064737 d!855644))

(declare-fun b!3064873 () Bool)

(declare-fun res!1258212 () Bool)

(declare-fun e!1918772 () Bool)

(assert (=> b!3064873 (=> res!1258212 e!1918772)))

(assert (=> b!3064873 (= res!1258212 (not ((_ is Concat!14818) (regOne!19506 r!17423))))))

(declare-fun e!1918768 () Bool)

(assert (=> b!3064873 (= e!1918768 e!1918772)))

(declare-fun bm!212261 () Bool)

(declare-fun call!212267 () Bool)

(declare-fun call!212266 () Bool)

(assert (=> bm!212261 (= call!212267 call!212266)))

(declare-fun bm!212262 () Bool)

(declare-fun call!212268 () Bool)

(declare-fun c!509049 () Bool)

(assert (=> bm!212262 (= call!212268 (validRegex!4230 (ite c!509049 (regOne!19507 (regOne!19506 r!17423)) (regTwo!19506 (regOne!19506 r!17423)))))))

(declare-fun b!3064874 () Bool)

(declare-fun e!1918774 () Bool)

(declare-fun e!1918771 () Bool)

(assert (=> b!3064874 (= e!1918774 e!1918771)))

(declare-fun res!1258211 () Bool)

(assert (=> b!3064874 (= res!1258211 (not (nullable!3143 (reg!9826 (regOne!19506 r!17423)))))))

(assert (=> b!3064874 (=> (not res!1258211) (not e!1918771))))

(declare-fun bm!212263 () Bool)

(declare-fun c!509050 () Bool)

(assert (=> bm!212263 (= call!212266 (validRegex!4230 (ite c!509050 (reg!9826 (regOne!19506 r!17423)) (ite c!509049 (regTwo!19507 (regOne!19506 r!17423)) (regOne!19506 (regOne!19506 r!17423))))))))

(declare-fun b!3064875 () Bool)

(declare-fun e!1918770 () Bool)

(assert (=> b!3064875 (= e!1918772 e!1918770)))

(declare-fun res!1258210 () Bool)

(assert (=> b!3064875 (=> (not res!1258210) (not e!1918770))))

(assert (=> b!3064875 (= res!1258210 call!212267)))

(declare-fun b!3064876 () Bool)

(assert (=> b!3064876 (= e!1918771 call!212266)))

(declare-fun d!855648 () Bool)

(declare-fun res!1258213 () Bool)

(declare-fun e!1918769 () Bool)

(assert (=> d!855648 (=> res!1258213 e!1918769)))

(assert (=> d!855648 (= res!1258213 ((_ is ElementMatch!9497) (regOne!19506 r!17423)))))

(assert (=> d!855648 (= (validRegex!4230 (regOne!19506 r!17423)) e!1918769)))

(declare-fun b!3064877 () Bool)

(assert (=> b!3064877 (= e!1918774 e!1918768)))

(assert (=> b!3064877 (= c!509049 ((_ is Union!9497) (regOne!19506 r!17423)))))

(declare-fun b!3064878 () Bool)

(assert (=> b!3064878 (= e!1918770 call!212268)))

(declare-fun b!3064879 () Bool)

(declare-fun res!1258214 () Bool)

(declare-fun e!1918773 () Bool)

(assert (=> b!3064879 (=> (not res!1258214) (not e!1918773))))

(assert (=> b!3064879 (= res!1258214 call!212268)))

(assert (=> b!3064879 (= e!1918768 e!1918773)))

(declare-fun b!3064880 () Bool)

(assert (=> b!3064880 (= e!1918773 call!212267)))

(declare-fun b!3064881 () Bool)

(assert (=> b!3064881 (= e!1918769 e!1918774)))

(assert (=> b!3064881 (= c!509050 ((_ is Star!9497) (regOne!19506 r!17423)))))

(assert (= (and d!855648 (not res!1258213)) b!3064881))

(assert (= (and b!3064881 c!509050) b!3064874))

(assert (= (and b!3064881 (not c!509050)) b!3064877))

(assert (= (and b!3064874 res!1258211) b!3064876))

(assert (= (and b!3064877 c!509049) b!3064879))

(assert (= (and b!3064877 (not c!509049)) b!3064873))

(assert (= (and b!3064879 res!1258214) b!3064880))

(assert (= (and b!3064873 (not res!1258212)) b!3064875))

(assert (= (and b!3064875 res!1258210) b!3064878))

(assert (= (or b!3064879 b!3064878) bm!212262))

(assert (= (or b!3064880 b!3064875) bm!212261))

(assert (= (or b!3064876 bm!212261) bm!212263))

(declare-fun m!3383255 () Bool)

(assert (=> bm!212262 m!3383255))

(declare-fun m!3383257 () Bool)

(assert (=> b!3064874 m!3383257))

(declare-fun m!3383259 () Bool)

(assert (=> bm!212263 m!3383259))

(assert (=> b!3064737 d!855648))

(declare-fun d!855656 () Bool)

(assert (=> d!855656 (isDefined!5365 (findConcatSeparation!1208 (regOne!19506 r!17423) (regTwo!19506 r!17423) Nil!35238 s!11993 s!11993))))

(declare-fun lt!1050561 () Unit!49433)

(declare-fun choose!18158 (Regex!9497 Regex!9497 List!35362 List!35362 List!35362 List!35362 List!35362) Unit!49433)

(assert (=> d!855656 (= lt!1050561 (choose!18158 (regOne!19506 r!17423) (regTwo!19506 r!17423) Nil!35238 s!11993 s!11993 Nil!35238 s!11993))))

(assert (=> d!855656 (validRegex!4230 (regOne!19506 r!17423))))

(assert (=> d!855656 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!28 (regOne!19506 r!17423) (regTwo!19506 r!17423) Nil!35238 s!11993 s!11993 Nil!35238 s!11993) lt!1050561)))

(declare-fun bs!532536 () Bool)

(assert (= bs!532536 d!855656))

(assert (=> bs!532536 m!3383161))

(assert (=> bs!532536 m!3383161))

(assert (=> bs!532536 m!3383163))

(declare-fun m!3383261 () Bool)

(assert (=> bs!532536 m!3383261))

(assert (=> bs!532536 m!3383159))

(assert (=> b!3064737 d!855656))

(declare-fun d!855658 () Bool)

(declare-fun isEmpty!19561 (Option!6814) Bool)

(assert (=> d!855658 (= (isDefined!5365 (findConcatSeparation!1208 (regOne!19506 r!17423) (regTwo!19506 r!17423) Nil!35238 s!11993 s!11993)) (not (isEmpty!19561 (findConcatSeparation!1208 (regOne!19506 r!17423) (regTwo!19506 r!17423) Nil!35238 s!11993 s!11993))))))

(declare-fun bs!532537 () Bool)

(assert (= bs!532537 d!855658))

(assert (=> bs!532537 m!3383161))

(declare-fun m!3383263 () Bool)

(assert (=> bs!532537 m!3383263))

(assert (=> b!3064737 d!855658))

(declare-fun b!3065080 () Bool)

(declare-fun e!1918889 () Bool)

(assert (=> b!3065080 (= e!1918889 (matchR!4379 (regTwo!19506 r!17423) s!11993))))

(declare-fun b!3065081 () Bool)

(declare-fun e!1918891 () Bool)

(declare-fun lt!1050583 () Option!6814)

(declare-fun ++!8462 (List!35362 List!35362) List!35362)

(declare-fun get!11029 (Option!6814) tuple2!34164)

(assert (=> b!3065081 (= e!1918891 (= (++!8462 (_1!20214 (get!11029 lt!1050583)) (_2!20214 (get!11029 lt!1050583))) s!11993))))

(declare-fun b!3065082 () Bool)

(declare-fun res!1258279 () Bool)

(assert (=> b!3065082 (=> (not res!1258279) (not e!1918891))))

(assert (=> b!3065082 (= res!1258279 (matchR!4379 (regTwo!19506 r!17423) (_2!20214 (get!11029 lt!1050583))))))

(declare-fun b!3065083 () Bool)

(declare-fun res!1258277 () Bool)

(assert (=> b!3065083 (=> (not res!1258277) (not e!1918891))))

(assert (=> b!3065083 (= res!1258277 (matchR!4379 (regOne!19506 r!17423) (_1!20214 (get!11029 lt!1050583))))))

(declare-fun b!3065084 () Bool)

(declare-fun e!1918888 () Option!6814)

(declare-fun e!1918887 () Option!6814)

(assert (=> b!3065084 (= e!1918888 e!1918887)))

(declare-fun c!509120 () Bool)

(assert (=> b!3065084 (= c!509120 ((_ is Nil!35238) s!11993))))

(declare-fun b!3065085 () Bool)

(declare-fun lt!1050584 () Unit!49433)

(declare-fun lt!1050582 () Unit!49433)

(assert (=> b!3065085 (= lt!1050584 lt!1050582)))

(assert (=> b!3065085 (= (++!8462 (++!8462 Nil!35238 (Cons!35238 (h!40658 s!11993) Nil!35238)) (t!234427 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1065 (List!35362 C!19180 List!35362 List!35362) Unit!49433)

(assert (=> b!3065085 (= lt!1050582 (lemmaMoveElementToOtherListKeepsConcatEq!1065 Nil!35238 (h!40658 s!11993) (t!234427 s!11993) s!11993))))

(assert (=> b!3065085 (= e!1918887 (findConcatSeparation!1208 (regOne!19506 r!17423) (regTwo!19506 r!17423) (++!8462 Nil!35238 (Cons!35238 (h!40658 s!11993) Nil!35238)) (t!234427 s!11993) s!11993))))

(declare-fun b!3065086 () Bool)

(declare-fun e!1918890 () Bool)

(assert (=> b!3065086 (= e!1918890 (not (isDefined!5365 lt!1050583)))))

(declare-fun b!3065088 () Bool)

(assert (=> b!3065088 (= e!1918888 (Some!6813 (tuple2!34165 Nil!35238 s!11993)))))

(declare-fun b!3065087 () Bool)

(assert (=> b!3065087 (= e!1918887 None!6813)))

(declare-fun d!855660 () Bool)

(assert (=> d!855660 e!1918890))

(declare-fun res!1258280 () Bool)

(assert (=> d!855660 (=> res!1258280 e!1918890)))

(assert (=> d!855660 (= res!1258280 e!1918891)))

(declare-fun res!1258281 () Bool)

(assert (=> d!855660 (=> (not res!1258281) (not e!1918891))))

(assert (=> d!855660 (= res!1258281 (isDefined!5365 lt!1050583))))

(assert (=> d!855660 (= lt!1050583 e!1918888)))

(declare-fun c!509119 () Bool)

(assert (=> d!855660 (= c!509119 e!1918889)))

(declare-fun res!1258278 () Bool)

(assert (=> d!855660 (=> (not res!1258278) (not e!1918889))))

(assert (=> d!855660 (= res!1258278 (matchR!4379 (regOne!19506 r!17423) Nil!35238))))

(assert (=> d!855660 (validRegex!4230 (regOne!19506 r!17423))))

(assert (=> d!855660 (= (findConcatSeparation!1208 (regOne!19506 r!17423) (regTwo!19506 r!17423) Nil!35238 s!11993 s!11993) lt!1050583)))

(assert (= (and d!855660 res!1258278) b!3065080))

(assert (= (and d!855660 c!509119) b!3065088))

(assert (= (and d!855660 (not c!509119)) b!3065084))

(assert (= (and b!3065084 c!509120) b!3065087))

(assert (= (and b!3065084 (not c!509120)) b!3065085))

(assert (= (and d!855660 res!1258281) b!3065083))

(assert (= (and b!3065083 res!1258277) b!3065082))

(assert (= (and b!3065082 res!1258279) b!3065081))

(assert (= (and d!855660 (not res!1258280)) b!3065086))

(assert (=> b!3065080 m!3383177))

(declare-fun m!3383323 () Bool)

(assert (=> b!3065085 m!3383323))

(assert (=> b!3065085 m!3383323))

(declare-fun m!3383325 () Bool)

(assert (=> b!3065085 m!3383325))

(declare-fun m!3383327 () Bool)

(assert (=> b!3065085 m!3383327))

(assert (=> b!3065085 m!3383323))

(declare-fun m!3383329 () Bool)

(assert (=> b!3065085 m!3383329))

(declare-fun m!3383331 () Bool)

(assert (=> b!3065082 m!3383331))

(declare-fun m!3383333 () Bool)

(assert (=> b!3065082 m!3383333))

(assert (=> b!3065081 m!3383331))

(declare-fun m!3383335 () Bool)

(assert (=> b!3065081 m!3383335))

(declare-fun m!3383337 () Bool)

(assert (=> d!855660 m!3383337))

(assert (=> d!855660 m!3383169))

(assert (=> d!855660 m!3383159))

(assert (=> b!3065086 m!3383337))

(assert (=> b!3065083 m!3383331))

(declare-fun m!3383339 () Bool)

(assert (=> b!3065083 m!3383339))

(assert (=> b!3064737 d!855660))

(declare-fun bs!532546 () Bool)

(declare-fun d!855672 () Bool)

(assert (= bs!532546 (and d!855672 b!3064737)))

(declare-fun lambda!113964 () Int)

(assert (=> bs!532546 (= lambda!113964 lambda!113952)))

(assert (=> d!855672 true))

(assert (=> d!855672 true))

(assert (=> d!855672 true))

(assert (=> d!855672 (= (isDefined!5365 (findConcatSeparation!1208 (regOne!19506 r!17423) (regTwo!19506 r!17423) Nil!35238 s!11993 s!11993)) (Exists!1760 lambda!113964))))

(declare-fun lt!1050597 () Unit!49433)

(declare-fun choose!18159 (Regex!9497 Regex!9497 List!35362) Unit!49433)

(assert (=> d!855672 (= lt!1050597 (choose!18159 (regOne!19506 r!17423) (regTwo!19506 r!17423) s!11993))))

(assert (=> d!855672 (validRegex!4230 (regOne!19506 r!17423))))

(assert (=> d!855672 (= (lemmaFindConcatSeparationEquivalentToExists!982 (regOne!19506 r!17423) (regTwo!19506 r!17423) s!11993) lt!1050597)))

(declare-fun bs!532547 () Bool)

(assert (= bs!532547 d!855672))

(assert (=> bs!532547 m!3383161))

(assert (=> bs!532547 m!3383159))

(assert (=> bs!532547 m!3383161))

(assert (=> bs!532547 m!3383163))

(declare-fun m!3383379 () Bool)

(assert (=> bs!532547 m!3383379))

(declare-fun m!3383381 () Bool)

(assert (=> bs!532547 m!3383381))

(assert (=> b!3064737 d!855672))

(declare-fun d!855688 () Bool)

(declare-fun nullableFct!902 (Regex!9497) Bool)

(assert (=> d!855688 (= (nullable!3143 (regOne!19506 r!17423)) (nullableFct!902 (regOne!19506 r!17423)))))

(declare-fun bs!532548 () Bool)

(assert (= bs!532548 d!855688))

(declare-fun m!3383383 () Bool)

(assert (=> bs!532548 m!3383383))

(assert (=> b!3064732 d!855688))

(declare-fun bs!532549 () Bool)

(declare-fun b!3065226 () Bool)

(assert (= bs!532549 (and b!3065226 b!3064737)))

(declare-fun lambda!113969 () Int)

(assert (=> bs!532549 (not (= lambda!113969 lambda!113952))))

(declare-fun bs!532550 () Bool)

(assert (= bs!532550 (and b!3065226 d!855672)))

(assert (=> bs!532550 (not (= lambda!113969 lambda!113964))))

(assert (=> b!3065226 true))

(assert (=> b!3065226 true))

(declare-fun bs!532551 () Bool)

(declare-fun b!3065230 () Bool)

(assert (= bs!532551 (and b!3065230 b!3064737)))

(declare-fun lambda!113970 () Int)

(assert (=> bs!532551 (not (= lambda!113970 lambda!113952))))

(declare-fun bs!532552 () Bool)

(assert (= bs!532552 (and b!3065230 d!855672)))

(assert (=> bs!532552 (not (= lambda!113970 lambda!113964))))

(declare-fun bs!532553 () Bool)

(assert (= bs!532553 (and b!3065230 b!3065226)))

(assert (=> bs!532553 (not (= lambda!113970 lambda!113969))))

(assert (=> b!3065230 true))

(assert (=> b!3065230 true))

(declare-fun b!3065225 () Bool)

(declare-fun c!509146 () Bool)

(assert (=> b!3065225 (= c!509146 ((_ is Union!9497) r!17423))))

(declare-fun e!1918963 () Bool)

(declare-fun e!1918958 () Bool)

(assert (=> b!3065225 (= e!1918963 e!1918958)))

(declare-fun e!1918957 () Bool)

(declare-fun call!212319 () Bool)

(assert (=> b!3065226 (= e!1918957 call!212319)))

(declare-fun b!3065227 () Bool)

(declare-fun res!1258341 () Bool)

(assert (=> b!3065227 (=> res!1258341 e!1918957)))

(declare-fun call!212320 () Bool)

(assert (=> b!3065227 (= res!1258341 call!212320)))

(declare-fun e!1918959 () Bool)

(assert (=> b!3065227 (= e!1918959 e!1918957)))

(declare-fun d!855690 () Bool)

(declare-fun c!509145 () Bool)

(assert (=> d!855690 (= c!509145 ((_ is EmptyExpr!9497) r!17423))))

(declare-fun e!1918961 () Bool)

(assert (=> d!855690 (= (matchRSpec!1634 r!17423 s!11993) e!1918961)))

(declare-fun c!509143 () Bool)

(declare-fun bm!212314 () Bool)

(assert (=> bm!212314 (= call!212319 (Exists!1760 (ite c!509143 lambda!113969 lambda!113970)))))

(declare-fun b!3065228 () Bool)

(assert (=> b!3065228 (= e!1918963 (= s!11993 (Cons!35238 (c!509021 r!17423) Nil!35238)))))

(declare-fun b!3065229 () Bool)

(declare-fun e!1918960 () Bool)

(assert (=> b!3065229 (= e!1918961 e!1918960)))

(declare-fun res!1258339 () Bool)

(assert (=> b!3065229 (= res!1258339 (not ((_ is EmptyLang!9497) r!17423)))))

(assert (=> b!3065229 (=> (not res!1258339) (not e!1918960))))

(assert (=> b!3065230 (= e!1918959 call!212319)))

(declare-fun bm!212315 () Bool)

(assert (=> bm!212315 (= call!212320 (isEmpty!19559 s!11993))))

(declare-fun b!3065231 () Bool)

(declare-fun e!1918962 () Bool)

(assert (=> b!3065231 (= e!1918962 (matchRSpec!1634 (regTwo!19507 r!17423) s!11993))))

(declare-fun b!3065232 () Bool)

(assert (=> b!3065232 (= e!1918958 e!1918959)))

(assert (=> b!3065232 (= c!509143 ((_ is Star!9497) r!17423))))

(declare-fun b!3065233 () Bool)

(declare-fun c!509144 () Bool)

(assert (=> b!3065233 (= c!509144 ((_ is ElementMatch!9497) r!17423))))

(assert (=> b!3065233 (= e!1918960 e!1918963)))

(declare-fun b!3065234 () Bool)

(assert (=> b!3065234 (= e!1918961 call!212320)))

(declare-fun b!3065235 () Bool)

(assert (=> b!3065235 (= e!1918958 e!1918962)))

(declare-fun res!1258340 () Bool)

(assert (=> b!3065235 (= res!1258340 (matchRSpec!1634 (regOne!19507 r!17423) s!11993))))

(assert (=> b!3065235 (=> res!1258340 e!1918962)))

(assert (= (and d!855690 c!509145) b!3065234))

(assert (= (and d!855690 (not c!509145)) b!3065229))

(assert (= (and b!3065229 res!1258339) b!3065233))

(assert (= (and b!3065233 c!509144) b!3065228))

(assert (= (and b!3065233 (not c!509144)) b!3065225))

(assert (= (and b!3065225 c!509146) b!3065235))

(assert (= (and b!3065225 (not c!509146)) b!3065232))

(assert (= (and b!3065235 (not res!1258340)) b!3065231))

(assert (= (and b!3065232 c!509143) b!3065227))

(assert (= (and b!3065232 (not c!509143)) b!3065230))

(assert (= (and b!3065227 (not res!1258341)) b!3065226))

(assert (= (or b!3065226 b!3065230) bm!212314))

(assert (= (or b!3065234 b!3065227) bm!212315))

(declare-fun m!3383385 () Bool)

(assert (=> bm!212314 m!3383385))

(assert (=> bm!212315 m!3383173))

(declare-fun m!3383387 () Bool)

(assert (=> b!3065231 m!3383387))

(declare-fun m!3383389 () Bool)

(assert (=> b!3065235 m!3383389))

(assert (=> b!3064727 d!855690))

(declare-fun b!3065236 () Bool)

(declare-fun e!1918964 () Bool)

(declare-fun e!1918966 () Bool)

(assert (=> b!3065236 (= e!1918964 e!1918966)))

(declare-fun res!1258344 () Bool)

(assert (=> b!3065236 (=> res!1258344 e!1918966)))

(declare-fun call!212321 () Bool)

(assert (=> b!3065236 (= res!1258344 call!212321)))

(declare-fun b!3065237 () Bool)

(declare-fun res!1258349 () Bool)

(assert (=> b!3065237 (=> res!1258349 e!1918966)))

(assert (=> b!3065237 (= res!1258349 (not (isEmpty!19559 (tail!5024 s!11993))))))

(declare-fun b!3065238 () Bool)

(declare-fun res!1258348 () Bool)

(declare-fun e!1918967 () Bool)

(assert (=> b!3065238 (=> res!1258348 e!1918967)))

(declare-fun e!1918965 () Bool)

(assert (=> b!3065238 (= res!1258348 e!1918965)))

(declare-fun res!1258347 () Bool)

(assert (=> b!3065238 (=> (not res!1258347) (not e!1918965))))

(declare-fun lt!1050598 () Bool)

(assert (=> b!3065238 (= res!1258347 lt!1050598)))

(declare-fun b!3065239 () Bool)

(declare-fun e!1918969 () Bool)

(assert (=> b!3065239 (= e!1918969 (not lt!1050598))))

(declare-fun b!3065240 () Bool)

(declare-fun res!1258345 () Bool)

(assert (=> b!3065240 (=> res!1258345 e!1918967)))

(assert (=> b!3065240 (= res!1258345 (not ((_ is ElementMatch!9497) r!17423)))))

(assert (=> b!3065240 (= e!1918969 e!1918967)))

(declare-fun b!3065241 () Bool)

(declare-fun e!1918970 () Bool)

(assert (=> b!3065241 (= e!1918970 e!1918969)))

(declare-fun c!509149 () Bool)

(assert (=> b!3065241 (= c!509149 ((_ is EmptyLang!9497) r!17423))))

(declare-fun d!855692 () Bool)

(assert (=> d!855692 e!1918970))

(declare-fun c!509147 () Bool)

(assert (=> d!855692 (= c!509147 ((_ is EmptyExpr!9497) r!17423))))

(declare-fun e!1918968 () Bool)

(assert (=> d!855692 (= lt!1050598 e!1918968)))

(declare-fun c!509148 () Bool)

(assert (=> d!855692 (= c!509148 (isEmpty!19559 s!11993))))

(assert (=> d!855692 (validRegex!4230 r!17423)))

(assert (=> d!855692 (= (matchR!4379 r!17423 s!11993) lt!1050598)))

(declare-fun b!3065242 () Bool)

(assert (=> b!3065242 (= e!1918965 (= (head!6798 s!11993) (c!509021 r!17423)))))

(declare-fun b!3065243 () Bool)

(assert (=> b!3065243 (= e!1918967 e!1918964)))

(declare-fun res!1258343 () Bool)

(assert (=> b!3065243 (=> (not res!1258343) (not e!1918964))))

(assert (=> b!3065243 (= res!1258343 (not lt!1050598))))

(declare-fun bm!212316 () Bool)

(assert (=> bm!212316 (= call!212321 (isEmpty!19559 s!11993))))

(declare-fun b!3065244 () Bool)

(declare-fun res!1258346 () Bool)

(assert (=> b!3065244 (=> (not res!1258346) (not e!1918965))))

(assert (=> b!3065244 (= res!1258346 (not call!212321))))

(declare-fun b!3065245 () Bool)

(declare-fun res!1258342 () Bool)

(assert (=> b!3065245 (=> (not res!1258342) (not e!1918965))))

(assert (=> b!3065245 (= res!1258342 (isEmpty!19559 (tail!5024 s!11993)))))

(declare-fun b!3065246 () Bool)

(assert (=> b!3065246 (= e!1918970 (= lt!1050598 call!212321))))

(declare-fun b!3065247 () Bool)

(assert (=> b!3065247 (= e!1918968 (nullable!3143 r!17423))))

(declare-fun b!3065248 () Bool)

(assert (=> b!3065248 (= e!1918968 (matchR!4379 (derivativeStep!2739 r!17423 (head!6798 s!11993)) (tail!5024 s!11993)))))

(declare-fun b!3065249 () Bool)

(assert (=> b!3065249 (= e!1918966 (not (= (head!6798 s!11993) (c!509021 r!17423))))))

(assert (= (and d!855692 c!509148) b!3065247))

(assert (= (and d!855692 (not c!509148)) b!3065248))

(assert (= (and d!855692 c!509147) b!3065246))

(assert (= (and d!855692 (not c!509147)) b!3065241))

(assert (= (and b!3065241 c!509149) b!3065239))

(assert (= (and b!3065241 (not c!509149)) b!3065240))

(assert (= (and b!3065240 (not res!1258345)) b!3065238))

(assert (= (and b!3065238 res!1258347) b!3065244))

(assert (= (and b!3065244 res!1258346) b!3065245))

(assert (= (and b!3065245 res!1258342) b!3065242))

(assert (= (and b!3065238 (not res!1258348)) b!3065243))

(assert (= (and b!3065243 res!1258343) b!3065236))

(assert (= (and b!3065236 (not res!1258344)) b!3065237))

(assert (= (and b!3065237 (not res!1258349)) b!3065249))

(assert (= (or b!3065246 b!3065236 b!3065244) bm!212316))

(declare-fun m!3383391 () Bool)

(assert (=> b!3065237 m!3383391))

(assert (=> b!3065237 m!3383391))

(declare-fun m!3383393 () Bool)

(assert (=> b!3065237 m!3383393))

(declare-fun m!3383395 () Bool)

(assert (=> b!3065242 m!3383395))

(assert (=> b!3065249 m!3383395))

(assert (=> d!855692 m!3383173))

(assert (=> d!855692 m!3383171))

(assert (=> bm!212316 m!3383173))

(assert (=> b!3065248 m!3383395))

(assert (=> b!3065248 m!3383395))

(declare-fun m!3383397 () Bool)

(assert (=> b!3065248 m!3383397))

(assert (=> b!3065248 m!3383391))

(assert (=> b!3065248 m!3383397))

(assert (=> b!3065248 m!3383391))

(declare-fun m!3383399 () Bool)

(assert (=> b!3065248 m!3383399))

(declare-fun m!3383401 () Bool)

(assert (=> b!3065247 m!3383401))

(assert (=> b!3065245 m!3383391))

(assert (=> b!3065245 m!3383391))

(assert (=> b!3065245 m!3383393))

(assert (=> b!3064727 d!855692))

(declare-fun d!855694 () Bool)

(assert (=> d!855694 (= (matchR!4379 r!17423 s!11993) (matchRSpec!1634 r!17423 s!11993))))

(declare-fun lt!1050601 () Unit!49433)

(declare-fun choose!18161 (Regex!9497 List!35362) Unit!49433)

(assert (=> d!855694 (= lt!1050601 (choose!18161 r!17423 s!11993))))

(assert (=> d!855694 (validRegex!4230 r!17423)))

(assert (=> d!855694 (= (mainMatchTheorem!1634 r!17423 s!11993) lt!1050601)))

(declare-fun bs!532554 () Bool)

(assert (= bs!532554 d!855694))

(assert (=> bs!532554 m!3383189))

(assert (=> bs!532554 m!3383187))

(declare-fun m!3383403 () Bool)

(assert (=> bs!532554 m!3383403))

(assert (=> bs!532554 m!3383171))

(assert (=> b!3064727 d!855694))

(declare-fun b!3065250 () Bool)

(declare-fun res!1258352 () Bool)

(declare-fun e!1918975 () Bool)

(assert (=> b!3065250 (=> res!1258352 e!1918975)))

(assert (=> b!3065250 (= res!1258352 (not ((_ is Concat!14818) (regTwo!19506 r!17423))))))

(declare-fun e!1918971 () Bool)

(assert (=> b!3065250 (= e!1918971 e!1918975)))

(declare-fun bm!212317 () Bool)

(declare-fun call!212323 () Bool)

(declare-fun call!212322 () Bool)

(assert (=> bm!212317 (= call!212323 call!212322)))

(declare-fun bm!212318 () Bool)

(declare-fun call!212324 () Bool)

(declare-fun c!509150 () Bool)

(assert (=> bm!212318 (= call!212324 (validRegex!4230 (ite c!509150 (regOne!19507 (regTwo!19506 r!17423)) (regTwo!19506 (regTwo!19506 r!17423)))))))

(declare-fun b!3065251 () Bool)

(declare-fun e!1918977 () Bool)

(declare-fun e!1918974 () Bool)

(assert (=> b!3065251 (= e!1918977 e!1918974)))

(declare-fun res!1258351 () Bool)

(assert (=> b!3065251 (= res!1258351 (not (nullable!3143 (reg!9826 (regTwo!19506 r!17423)))))))

(assert (=> b!3065251 (=> (not res!1258351) (not e!1918974))))

(declare-fun c!509151 () Bool)

(declare-fun bm!212319 () Bool)

(assert (=> bm!212319 (= call!212322 (validRegex!4230 (ite c!509151 (reg!9826 (regTwo!19506 r!17423)) (ite c!509150 (regTwo!19507 (regTwo!19506 r!17423)) (regOne!19506 (regTwo!19506 r!17423))))))))

(declare-fun b!3065252 () Bool)

(declare-fun e!1918973 () Bool)

(assert (=> b!3065252 (= e!1918975 e!1918973)))

(declare-fun res!1258350 () Bool)

(assert (=> b!3065252 (=> (not res!1258350) (not e!1918973))))

(assert (=> b!3065252 (= res!1258350 call!212323)))

(declare-fun b!3065253 () Bool)

(assert (=> b!3065253 (= e!1918974 call!212322)))

(declare-fun d!855696 () Bool)

(declare-fun res!1258353 () Bool)

(declare-fun e!1918972 () Bool)

(assert (=> d!855696 (=> res!1258353 e!1918972)))

(assert (=> d!855696 (= res!1258353 ((_ is ElementMatch!9497) (regTwo!19506 r!17423)))))

(assert (=> d!855696 (= (validRegex!4230 (regTwo!19506 r!17423)) e!1918972)))

(declare-fun b!3065254 () Bool)

(assert (=> b!3065254 (= e!1918977 e!1918971)))

(assert (=> b!3065254 (= c!509150 ((_ is Union!9497) (regTwo!19506 r!17423)))))

(declare-fun b!3065255 () Bool)

(assert (=> b!3065255 (= e!1918973 call!212324)))

(declare-fun b!3065256 () Bool)

(declare-fun res!1258354 () Bool)

(declare-fun e!1918976 () Bool)

(assert (=> b!3065256 (=> (not res!1258354) (not e!1918976))))

(assert (=> b!3065256 (= res!1258354 call!212324)))

(assert (=> b!3065256 (= e!1918971 e!1918976)))

(declare-fun b!3065257 () Bool)

(assert (=> b!3065257 (= e!1918976 call!212323)))

(declare-fun b!3065258 () Bool)

(assert (=> b!3065258 (= e!1918972 e!1918977)))

(assert (=> b!3065258 (= c!509151 ((_ is Star!9497) (regTwo!19506 r!17423)))))

(assert (= (and d!855696 (not res!1258353)) b!3065258))

(assert (= (and b!3065258 c!509151) b!3065251))

(assert (= (and b!3065258 (not c!509151)) b!3065254))

(assert (= (and b!3065251 res!1258351) b!3065253))

(assert (= (and b!3065254 c!509150) b!3065256))

(assert (= (and b!3065254 (not c!509150)) b!3065250))

(assert (= (and b!3065256 res!1258354) b!3065257))

(assert (= (and b!3065250 (not res!1258352)) b!3065252))

(assert (= (and b!3065252 res!1258350) b!3065255))

(assert (= (or b!3065256 b!3065255) bm!212318))

(assert (= (or b!3065257 b!3065252) bm!212317))

(assert (= (or b!3065253 bm!212317) bm!212319))

(declare-fun m!3383405 () Bool)

(assert (=> bm!212318 m!3383405))

(declare-fun m!3383407 () Bool)

(assert (=> b!3065251 m!3383407))

(declare-fun m!3383409 () Bool)

(assert (=> bm!212319 m!3383409))

(assert (=> b!3064738 d!855696))

(declare-fun d!855698 () Bool)

(assert (=> d!855698 (= (isEmptyLang!548 lt!1050525) ((_ is EmptyLang!9497) lt!1050525))))

(assert (=> b!3064733 d!855698))

(declare-fun bm!212334 () Bool)

(declare-fun call!212339 () Bool)

(declare-fun call!212342 () Bool)

(assert (=> bm!212334 (= call!212339 call!212342)))

(declare-fun b!3065309 () Bool)

(declare-fun e!1919006 () Regex!9497)

(assert (=> b!3065309 (= e!1919006 EmptyLang!9497)))

(declare-fun b!3065310 () Bool)

(declare-fun e!1919008 () Regex!9497)

(assert (=> b!3065310 (= e!1919008 e!1919006)))

(declare-fun lt!1050618 () Regex!9497)

(declare-fun call!212343 () Regex!9497)

(assert (=> b!3065310 (= lt!1050618 call!212343)))

(declare-fun lt!1050615 () Regex!9497)

(declare-fun call!212340 () Regex!9497)

(assert (=> b!3065310 (= lt!1050615 call!212340)))

(declare-fun res!1258363 () Bool)

(declare-fun call!212344 () Bool)

(assert (=> b!3065310 (= res!1258363 call!212344)))

(declare-fun e!1919007 () Bool)

(assert (=> b!3065310 (=> res!1258363 e!1919007)))

(declare-fun c!509183 () Bool)

(assert (=> b!3065310 (= c!509183 e!1919007)))

(declare-fun b!3065311 () Bool)

(declare-fun c!509176 () Bool)

(assert (=> b!3065311 (= c!509176 (isEmptyExpr!554 lt!1050618))))

(declare-fun e!1919013 () Regex!9497)

(assert (=> b!3065311 (= e!1919006 e!1919013)))

(declare-fun bm!212335 () Bool)

(declare-fun c!509177 () Bool)

(declare-fun call!212341 () Regex!9497)

(declare-fun c!509179 () Bool)

(assert (=> bm!212335 (= call!212341 (simplify!452 (ite c!509179 (reg!9826 (regTwo!19506 r!17423)) (ite c!509177 (regTwo!19507 (regTwo!19506 r!17423)) (regOne!19506 (regTwo!19506 r!17423))))))))

(declare-fun b!3065312 () Bool)

(declare-fun e!1919012 () Bool)

(declare-fun lt!1050614 () Regex!9497)

(assert (=> b!3065312 (= e!1919012 (= (nullable!3143 lt!1050614) (nullable!3143 (regTwo!19506 r!17423))))))

(declare-fun b!3065313 () Bool)

(declare-fun e!1919016 () Regex!9497)

(declare-fun e!1919009 () Regex!9497)

(assert (=> b!3065313 (= e!1919016 e!1919009)))

(declare-fun c!509178 () Bool)

(assert (=> b!3065313 (= c!509178 ((_ is ElementMatch!9497) (regTwo!19506 r!17423)))))

(declare-fun b!3065314 () Bool)

(declare-fun e!1919010 () Regex!9497)

(assert (=> b!3065314 (= e!1919010 EmptyExpr!9497)))

(declare-fun b!3065315 () Bool)

(declare-fun c!509181 () Bool)

(assert (=> b!3065315 (= c!509181 call!212344)))

(declare-fun e!1919014 () Regex!9497)

(declare-fun e!1919018 () Regex!9497)

(assert (=> b!3065315 (= e!1919014 e!1919018)))

(declare-fun bm!212336 () Bool)

(declare-fun lt!1050617 () Regex!9497)

(assert (=> bm!212336 (= call!212344 (isEmptyLang!548 (ite c!509177 lt!1050617 lt!1050618)))))

(declare-fun b!3065316 () Bool)

(assert (=> b!3065316 (= e!1919007 call!212339)))

(declare-fun bm!212337 () Bool)

(assert (=> bm!212337 (= call!212340 (simplify!452 (ite c!509177 (regOne!19507 (regTwo!19506 r!17423)) (regTwo!19506 (regTwo!19506 r!17423)))))))

(declare-fun bm!212338 () Bool)

(assert (=> bm!212338 (= call!212343 call!212341)))

(declare-fun b!3065317 () Bool)

(declare-fun e!1919015 () Bool)

(declare-fun call!212345 () Bool)

(assert (=> b!3065317 (= e!1919015 call!212345)))

(declare-fun d!855700 () Bool)

(assert (=> d!855700 e!1919012))

(declare-fun res!1258361 () Bool)

(assert (=> d!855700 (=> (not res!1258361) (not e!1919012))))

(assert (=> d!855700 (= res!1258361 (validRegex!4230 lt!1050614))))

(assert (=> d!855700 (= lt!1050614 e!1919016)))

(declare-fun c!509175 () Bool)

(assert (=> d!855700 (= c!509175 ((_ is EmptyLang!9497) (regTwo!19506 r!17423)))))

(assert (=> d!855700 (validRegex!4230 (regTwo!19506 r!17423))))

(assert (=> d!855700 (= (simplify!452 (regTwo!19506 r!17423)) lt!1050614)))

(declare-fun b!3065318 () Bool)

(assert (=> b!3065318 (= e!1919008 e!1919014)))

(declare-fun lt!1050616 () Regex!9497)

(assert (=> b!3065318 (= lt!1050616 call!212340)))

(assert (=> b!3065318 (= lt!1050617 call!212343)))

(declare-fun c!509174 () Bool)

(assert (=> b!3065318 (= c!509174 call!212339)))

(declare-fun lt!1050619 () Regex!9497)

(declare-fun bm!212339 () Bool)

(assert (=> bm!212339 (= call!212342 (isEmptyLang!548 (ite c!509179 lt!1050619 (ite c!509177 lt!1050616 lt!1050615))))))

(declare-fun b!3065319 () Bool)

(declare-fun c!509180 () Bool)

(assert (=> b!3065319 (= c!509180 e!1919015)))

(declare-fun res!1258362 () Bool)

(assert (=> b!3065319 (=> res!1258362 e!1919015)))

(assert (=> b!3065319 (= res!1258362 call!212342)))

(assert (=> b!3065319 (= lt!1050619 call!212341)))

(declare-fun e!1919019 () Regex!9497)

(declare-fun e!1919017 () Regex!9497)

(assert (=> b!3065319 (= e!1919019 e!1919017)))

(declare-fun b!3065320 () Bool)

(assert (=> b!3065320 (= e!1919017 (Star!9497 lt!1050619))))

(declare-fun b!3065321 () Bool)

(assert (=> b!3065321 (= e!1919014 lt!1050617)))

(declare-fun b!3065322 () Bool)

(assert (=> b!3065322 (= e!1919013 lt!1050615)))

(declare-fun b!3065323 () Bool)

(assert (=> b!3065323 (= e!1919010 e!1919019)))

(assert (=> b!3065323 (= c!509179 ((_ is Star!9497) (regTwo!19506 r!17423)))))

(declare-fun bm!212340 () Bool)

(assert (=> bm!212340 (= call!212345 (isEmptyExpr!554 (ite c!509179 lt!1050619 lt!1050615)))))

(declare-fun b!3065324 () Bool)

(assert (=> b!3065324 (= e!1919016 EmptyLang!9497)))

(declare-fun b!3065325 () Bool)

(assert (=> b!3065325 (= e!1919009 (regTwo!19506 r!17423))))

(declare-fun b!3065326 () Bool)

(assert (=> b!3065326 (= c!509177 ((_ is Union!9497) (regTwo!19506 r!17423)))))

(assert (=> b!3065326 (= e!1919019 e!1919008)))

(declare-fun b!3065327 () Bool)

(assert (=> b!3065327 (= e!1919018 (Union!9497 lt!1050616 lt!1050617))))

(declare-fun b!3065328 () Bool)

(declare-fun e!1919011 () Regex!9497)

(assert (=> b!3065328 (= e!1919013 e!1919011)))

(declare-fun c!509184 () Bool)

(assert (=> b!3065328 (= c!509184 call!212345)))

(declare-fun b!3065329 () Bool)

(assert (=> b!3065329 (= e!1919017 EmptyExpr!9497)))

(declare-fun b!3065330 () Bool)

(assert (=> b!3065330 (= e!1919011 (Concat!14818 lt!1050618 lt!1050615))))

(declare-fun b!3065331 () Bool)

(declare-fun c!509182 () Bool)

(assert (=> b!3065331 (= c!509182 ((_ is EmptyExpr!9497) (regTwo!19506 r!17423)))))

(assert (=> b!3065331 (= e!1919009 e!1919010)))

(declare-fun b!3065332 () Bool)

(assert (=> b!3065332 (= e!1919018 lt!1050616)))

(declare-fun b!3065333 () Bool)

(assert (=> b!3065333 (= e!1919011 lt!1050618)))

(assert (= (and d!855700 c!509175) b!3065324))

(assert (= (and d!855700 (not c!509175)) b!3065313))

(assert (= (and b!3065313 c!509178) b!3065325))

(assert (= (and b!3065313 (not c!509178)) b!3065331))

(assert (= (and b!3065331 c!509182) b!3065314))

(assert (= (and b!3065331 (not c!509182)) b!3065323))

(assert (= (and b!3065323 c!509179) b!3065319))

(assert (= (and b!3065323 (not c!509179)) b!3065326))

(assert (= (and b!3065319 (not res!1258362)) b!3065317))

(assert (= (and b!3065319 c!509180) b!3065329))

(assert (= (and b!3065319 (not c!509180)) b!3065320))

(assert (= (and b!3065326 c!509177) b!3065318))

(assert (= (and b!3065326 (not c!509177)) b!3065310))

(assert (= (and b!3065318 c!509174) b!3065321))

(assert (= (and b!3065318 (not c!509174)) b!3065315))

(assert (= (and b!3065315 c!509181) b!3065332))

(assert (= (and b!3065315 (not c!509181)) b!3065327))

(assert (= (and b!3065310 (not res!1258363)) b!3065316))

(assert (= (and b!3065310 c!509183) b!3065309))

(assert (= (and b!3065310 (not c!509183)) b!3065311))

(assert (= (and b!3065311 c!509176) b!3065322))

(assert (= (and b!3065311 (not c!509176)) b!3065328))

(assert (= (and b!3065328 c!509184) b!3065333))

(assert (= (and b!3065328 (not c!509184)) b!3065330))

(assert (= (or b!3065318 b!3065310) bm!212337))

(assert (= (or b!3065318 b!3065310) bm!212338))

(assert (= (or b!3065318 b!3065316) bm!212334))

(assert (= (or b!3065315 b!3065310) bm!212336))

(assert (= (or b!3065317 b!3065328) bm!212340))

(assert (= (or b!3065319 bm!212338) bm!212335))

(assert (= (or b!3065319 bm!212334) bm!212339))

(assert (= (and d!855700 res!1258361) b!3065312))

(declare-fun m!3383411 () Bool)

(assert (=> bm!212337 m!3383411))

(declare-fun m!3383413 () Bool)

(assert (=> bm!212336 m!3383413))

(declare-fun m!3383415 () Bool)

(assert (=> bm!212335 m!3383415))

(declare-fun m!3383417 () Bool)

(assert (=> d!855700 m!3383417))

(assert (=> d!855700 m!3383199))

(declare-fun m!3383419 () Bool)

(assert (=> bm!212340 m!3383419))

(declare-fun m!3383421 () Bool)

(assert (=> b!3065312 m!3383421))

(declare-fun m!3383423 () Bool)

(assert (=> b!3065312 m!3383423))

(declare-fun m!3383425 () Bool)

(assert (=> b!3065311 m!3383425))

(declare-fun m!3383427 () Bool)

(assert (=> bm!212339 m!3383427))

(assert (=> b!3064733 d!855700))

(declare-fun bm!212341 () Bool)

(declare-fun call!212346 () Bool)

(declare-fun call!212349 () Bool)

(assert (=> bm!212341 (= call!212346 call!212349)))

(declare-fun b!3065334 () Bool)

(declare-fun e!1919020 () Regex!9497)

(assert (=> b!3065334 (= e!1919020 EmptyLang!9497)))

(declare-fun b!3065335 () Bool)

(declare-fun e!1919022 () Regex!9497)

(assert (=> b!3065335 (= e!1919022 e!1919020)))

(declare-fun lt!1050624 () Regex!9497)

(declare-fun call!212350 () Regex!9497)

(assert (=> b!3065335 (= lt!1050624 call!212350)))

(declare-fun lt!1050621 () Regex!9497)

(declare-fun call!212347 () Regex!9497)

(assert (=> b!3065335 (= lt!1050621 call!212347)))

(declare-fun res!1258366 () Bool)

(declare-fun call!212351 () Bool)

(assert (=> b!3065335 (= res!1258366 call!212351)))

(declare-fun e!1919021 () Bool)

(assert (=> b!3065335 (=> res!1258366 e!1919021)))

(declare-fun c!509194 () Bool)

(assert (=> b!3065335 (= c!509194 e!1919021)))

(declare-fun b!3065336 () Bool)

(declare-fun c!509187 () Bool)

(assert (=> b!3065336 (= c!509187 (isEmptyExpr!554 lt!1050624))))

(declare-fun e!1919027 () Regex!9497)

(assert (=> b!3065336 (= e!1919020 e!1919027)))

(declare-fun c!509188 () Bool)

(declare-fun bm!212342 () Bool)

(declare-fun call!212348 () Regex!9497)

(declare-fun c!509190 () Bool)

(assert (=> bm!212342 (= call!212348 (simplify!452 (ite c!509190 (reg!9826 (regOne!19506 r!17423)) (ite c!509188 (regTwo!19507 (regOne!19506 r!17423)) (regOne!19506 (regOne!19506 r!17423))))))))

(declare-fun b!3065337 () Bool)

(declare-fun e!1919026 () Bool)

(declare-fun lt!1050620 () Regex!9497)

(assert (=> b!3065337 (= e!1919026 (= (nullable!3143 lt!1050620) (nullable!3143 (regOne!19506 r!17423))))))

(declare-fun b!3065338 () Bool)

(declare-fun e!1919030 () Regex!9497)

(declare-fun e!1919023 () Regex!9497)

(assert (=> b!3065338 (= e!1919030 e!1919023)))

(declare-fun c!509189 () Bool)

(assert (=> b!3065338 (= c!509189 ((_ is ElementMatch!9497) (regOne!19506 r!17423)))))

(declare-fun b!3065339 () Bool)

(declare-fun e!1919024 () Regex!9497)

(assert (=> b!3065339 (= e!1919024 EmptyExpr!9497)))

(declare-fun b!3065340 () Bool)

(declare-fun c!509192 () Bool)

(assert (=> b!3065340 (= c!509192 call!212351)))

(declare-fun e!1919028 () Regex!9497)

(declare-fun e!1919032 () Regex!9497)

(assert (=> b!3065340 (= e!1919028 e!1919032)))

(declare-fun bm!212343 () Bool)

(declare-fun lt!1050623 () Regex!9497)

(assert (=> bm!212343 (= call!212351 (isEmptyLang!548 (ite c!509188 lt!1050623 lt!1050624)))))

(declare-fun b!3065341 () Bool)

(assert (=> b!3065341 (= e!1919021 call!212346)))

(declare-fun bm!212344 () Bool)

(assert (=> bm!212344 (= call!212347 (simplify!452 (ite c!509188 (regOne!19507 (regOne!19506 r!17423)) (regTwo!19506 (regOne!19506 r!17423)))))))

(declare-fun bm!212345 () Bool)

(assert (=> bm!212345 (= call!212350 call!212348)))

(declare-fun b!3065342 () Bool)

(declare-fun e!1919029 () Bool)

(declare-fun call!212352 () Bool)

(assert (=> b!3065342 (= e!1919029 call!212352)))

(declare-fun d!855702 () Bool)

(assert (=> d!855702 e!1919026))

(declare-fun res!1258364 () Bool)

(assert (=> d!855702 (=> (not res!1258364) (not e!1919026))))

(assert (=> d!855702 (= res!1258364 (validRegex!4230 lt!1050620))))

(assert (=> d!855702 (= lt!1050620 e!1919030)))

(declare-fun c!509186 () Bool)

(assert (=> d!855702 (= c!509186 ((_ is EmptyLang!9497) (regOne!19506 r!17423)))))

(assert (=> d!855702 (validRegex!4230 (regOne!19506 r!17423))))

(assert (=> d!855702 (= (simplify!452 (regOne!19506 r!17423)) lt!1050620)))

(declare-fun b!3065343 () Bool)

(assert (=> b!3065343 (= e!1919022 e!1919028)))

(declare-fun lt!1050622 () Regex!9497)

(assert (=> b!3065343 (= lt!1050622 call!212347)))

(assert (=> b!3065343 (= lt!1050623 call!212350)))

(declare-fun c!509185 () Bool)

(assert (=> b!3065343 (= c!509185 call!212346)))

(declare-fun bm!212346 () Bool)

(declare-fun lt!1050625 () Regex!9497)

(assert (=> bm!212346 (= call!212349 (isEmptyLang!548 (ite c!509190 lt!1050625 (ite c!509188 lt!1050622 lt!1050621))))))

(declare-fun b!3065344 () Bool)

(declare-fun c!509191 () Bool)

(assert (=> b!3065344 (= c!509191 e!1919029)))

(declare-fun res!1258365 () Bool)

(assert (=> b!3065344 (=> res!1258365 e!1919029)))

(assert (=> b!3065344 (= res!1258365 call!212349)))

(assert (=> b!3065344 (= lt!1050625 call!212348)))

(declare-fun e!1919033 () Regex!9497)

(declare-fun e!1919031 () Regex!9497)

(assert (=> b!3065344 (= e!1919033 e!1919031)))

(declare-fun b!3065345 () Bool)

(assert (=> b!3065345 (= e!1919031 (Star!9497 lt!1050625))))

(declare-fun b!3065346 () Bool)

(assert (=> b!3065346 (= e!1919028 lt!1050623)))

(declare-fun b!3065347 () Bool)

(assert (=> b!3065347 (= e!1919027 lt!1050621)))

(declare-fun b!3065348 () Bool)

(assert (=> b!3065348 (= e!1919024 e!1919033)))

(assert (=> b!3065348 (= c!509190 ((_ is Star!9497) (regOne!19506 r!17423)))))

(declare-fun bm!212347 () Bool)

(assert (=> bm!212347 (= call!212352 (isEmptyExpr!554 (ite c!509190 lt!1050625 lt!1050621)))))

(declare-fun b!3065349 () Bool)

(assert (=> b!3065349 (= e!1919030 EmptyLang!9497)))

(declare-fun b!3065350 () Bool)

(assert (=> b!3065350 (= e!1919023 (regOne!19506 r!17423))))

(declare-fun b!3065351 () Bool)

(assert (=> b!3065351 (= c!509188 ((_ is Union!9497) (regOne!19506 r!17423)))))

(assert (=> b!3065351 (= e!1919033 e!1919022)))

(declare-fun b!3065352 () Bool)

(assert (=> b!3065352 (= e!1919032 (Union!9497 lt!1050622 lt!1050623))))

(declare-fun b!3065353 () Bool)

(declare-fun e!1919025 () Regex!9497)

(assert (=> b!3065353 (= e!1919027 e!1919025)))

(declare-fun c!509195 () Bool)

(assert (=> b!3065353 (= c!509195 call!212352)))

(declare-fun b!3065354 () Bool)

(assert (=> b!3065354 (= e!1919031 EmptyExpr!9497)))

(declare-fun b!3065355 () Bool)

(assert (=> b!3065355 (= e!1919025 (Concat!14818 lt!1050624 lt!1050621))))

(declare-fun b!3065356 () Bool)

(declare-fun c!509193 () Bool)

(assert (=> b!3065356 (= c!509193 ((_ is EmptyExpr!9497) (regOne!19506 r!17423)))))

(assert (=> b!3065356 (= e!1919023 e!1919024)))

(declare-fun b!3065357 () Bool)

(assert (=> b!3065357 (= e!1919032 lt!1050622)))

(declare-fun b!3065358 () Bool)

(assert (=> b!3065358 (= e!1919025 lt!1050624)))

(assert (= (and d!855702 c!509186) b!3065349))

(assert (= (and d!855702 (not c!509186)) b!3065338))

(assert (= (and b!3065338 c!509189) b!3065350))

(assert (= (and b!3065338 (not c!509189)) b!3065356))

(assert (= (and b!3065356 c!509193) b!3065339))

(assert (= (and b!3065356 (not c!509193)) b!3065348))

(assert (= (and b!3065348 c!509190) b!3065344))

(assert (= (and b!3065348 (not c!509190)) b!3065351))

(assert (= (and b!3065344 (not res!1258365)) b!3065342))

(assert (= (and b!3065344 c!509191) b!3065354))

(assert (= (and b!3065344 (not c!509191)) b!3065345))

(assert (= (and b!3065351 c!509188) b!3065343))

(assert (= (and b!3065351 (not c!509188)) b!3065335))

(assert (= (and b!3065343 c!509185) b!3065346))

(assert (= (and b!3065343 (not c!509185)) b!3065340))

(assert (= (and b!3065340 c!509192) b!3065357))

(assert (= (and b!3065340 (not c!509192)) b!3065352))

(assert (= (and b!3065335 (not res!1258366)) b!3065341))

(assert (= (and b!3065335 c!509194) b!3065334))

(assert (= (and b!3065335 (not c!509194)) b!3065336))

(assert (= (and b!3065336 c!509187) b!3065347))

(assert (= (and b!3065336 (not c!509187)) b!3065353))

(assert (= (and b!3065353 c!509195) b!3065358))

(assert (= (and b!3065353 (not c!509195)) b!3065355))

(assert (= (or b!3065343 b!3065335) bm!212344))

(assert (= (or b!3065343 b!3065335) bm!212345))

(assert (= (or b!3065343 b!3065341) bm!212341))

(assert (= (or b!3065340 b!3065335) bm!212343))

(assert (= (or b!3065342 b!3065353) bm!212347))

(assert (= (or b!3065344 bm!212345) bm!212342))

(assert (= (or b!3065344 bm!212341) bm!212346))

(assert (= (and d!855702 res!1258364) b!3065337))

(declare-fun m!3383429 () Bool)

(assert (=> bm!212344 m!3383429))

(declare-fun m!3383431 () Bool)

(assert (=> bm!212343 m!3383431))

(declare-fun m!3383433 () Bool)

(assert (=> bm!212342 m!3383433))

(declare-fun m!3383435 () Bool)

(assert (=> d!855702 m!3383435))

(assert (=> d!855702 m!3383159))

(declare-fun m!3383437 () Bool)

(assert (=> bm!212347 m!3383437))

(declare-fun m!3383439 () Bool)

(assert (=> b!3065337 m!3383439))

(assert (=> b!3065337 m!3383197))

(declare-fun m!3383441 () Bool)

(assert (=> b!3065336 m!3383441))

(declare-fun m!3383443 () Bool)

(assert (=> bm!212346 m!3383443))

(assert (=> b!3064733 d!855702))

(declare-fun b!3065359 () Bool)

(declare-fun e!1919034 () Bool)

(declare-fun e!1919036 () Bool)

(assert (=> b!3065359 (= e!1919034 e!1919036)))

(declare-fun res!1258369 () Bool)

(assert (=> b!3065359 (=> res!1258369 e!1919036)))

(declare-fun call!212353 () Bool)

(assert (=> b!3065359 (= res!1258369 call!212353)))

(declare-fun b!3065360 () Bool)

(declare-fun res!1258374 () Bool)

(assert (=> b!3065360 (=> res!1258374 e!1919036)))

(assert (=> b!3065360 (= res!1258374 (not (isEmpty!19559 (tail!5024 s!11993))))))

(declare-fun b!3065361 () Bool)

(declare-fun res!1258373 () Bool)

(declare-fun e!1919037 () Bool)

(assert (=> b!3065361 (=> res!1258373 e!1919037)))

(declare-fun e!1919035 () Bool)

(assert (=> b!3065361 (= res!1258373 e!1919035)))

(declare-fun res!1258372 () Bool)

(assert (=> b!3065361 (=> (not res!1258372) (not e!1919035))))

(declare-fun lt!1050626 () Bool)

(assert (=> b!3065361 (= res!1258372 lt!1050626)))

(declare-fun b!3065362 () Bool)

(declare-fun e!1919039 () Bool)

(assert (=> b!3065362 (= e!1919039 (not lt!1050626))))

(declare-fun b!3065363 () Bool)

(declare-fun res!1258370 () Bool)

(assert (=> b!3065363 (=> res!1258370 e!1919037)))

(assert (=> b!3065363 (= res!1258370 (not ((_ is ElementMatch!9497) lt!1050528)))))

(assert (=> b!3065363 (= e!1919039 e!1919037)))

(declare-fun b!3065364 () Bool)

(declare-fun e!1919040 () Bool)

(assert (=> b!3065364 (= e!1919040 e!1919039)))

(declare-fun c!509198 () Bool)

(assert (=> b!3065364 (= c!509198 ((_ is EmptyLang!9497) lt!1050528))))

(declare-fun d!855704 () Bool)

(assert (=> d!855704 e!1919040))

(declare-fun c!509196 () Bool)

(assert (=> d!855704 (= c!509196 ((_ is EmptyExpr!9497) lt!1050528))))

(declare-fun e!1919038 () Bool)

(assert (=> d!855704 (= lt!1050626 e!1919038)))

(declare-fun c!509197 () Bool)

(assert (=> d!855704 (= c!509197 (isEmpty!19559 s!11993))))

(assert (=> d!855704 (validRegex!4230 lt!1050528)))

(assert (=> d!855704 (= (matchR!4379 lt!1050528 s!11993) lt!1050626)))

(declare-fun b!3065365 () Bool)

(assert (=> b!3065365 (= e!1919035 (= (head!6798 s!11993) (c!509021 lt!1050528)))))

(declare-fun b!3065366 () Bool)

(assert (=> b!3065366 (= e!1919037 e!1919034)))

(declare-fun res!1258368 () Bool)

(assert (=> b!3065366 (=> (not res!1258368) (not e!1919034))))

(assert (=> b!3065366 (= res!1258368 (not lt!1050626))))

(declare-fun bm!212348 () Bool)

(assert (=> bm!212348 (= call!212353 (isEmpty!19559 s!11993))))

(declare-fun b!3065367 () Bool)

(declare-fun res!1258371 () Bool)

(assert (=> b!3065367 (=> (not res!1258371) (not e!1919035))))

(assert (=> b!3065367 (= res!1258371 (not call!212353))))

(declare-fun b!3065368 () Bool)

(declare-fun res!1258367 () Bool)

(assert (=> b!3065368 (=> (not res!1258367) (not e!1919035))))

(assert (=> b!3065368 (= res!1258367 (isEmpty!19559 (tail!5024 s!11993)))))

(declare-fun b!3065369 () Bool)

(assert (=> b!3065369 (= e!1919040 (= lt!1050626 call!212353))))

(declare-fun b!3065370 () Bool)

(assert (=> b!3065370 (= e!1919038 (nullable!3143 lt!1050528))))

(declare-fun b!3065371 () Bool)

(assert (=> b!3065371 (= e!1919038 (matchR!4379 (derivativeStep!2739 lt!1050528 (head!6798 s!11993)) (tail!5024 s!11993)))))

(declare-fun b!3065372 () Bool)

(assert (=> b!3065372 (= e!1919036 (not (= (head!6798 s!11993) (c!509021 lt!1050528))))))

(assert (= (and d!855704 c!509197) b!3065370))

(assert (= (and d!855704 (not c!509197)) b!3065371))

(assert (= (and d!855704 c!509196) b!3065369))

(assert (= (and d!855704 (not c!509196)) b!3065364))

(assert (= (and b!3065364 c!509198) b!3065362))

(assert (= (and b!3065364 (not c!509198)) b!3065363))

(assert (= (and b!3065363 (not res!1258370)) b!3065361))

(assert (= (and b!3065361 res!1258372) b!3065367))

(assert (= (and b!3065367 res!1258371) b!3065368))

(assert (= (and b!3065368 res!1258367) b!3065365))

(assert (= (and b!3065361 (not res!1258373)) b!3065366))

(assert (= (and b!3065366 res!1258368) b!3065359))

(assert (= (and b!3065359 (not res!1258369)) b!3065360))

(assert (= (and b!3065360 (not res!1258374)) b!3065372))

(assert (= (or b!3065369 b!3065359 b!3065367) bm!212348))

(assert (=> b!3065360 m!3383391))

(assert (=> b!3065360 m!3383391))

(assert (=> b!3065360 m!3383393))

(assert (=> b!3065365 m!3383395))

(assert (=> b!3065372 m!3383395))

(assert (=> d!855704 m!3383173))

(declare-fun m!3383445 () Bool)

(assert (=> d!855704 m!3383445))

(assert (=> bm!212348 m!3383173))

(assert (=> b!3065371 m!3383395))

(assert (=> b!3065371 m!3383395))

(declare-fun m!3383447 () Bool)

(assert (=> b!3065371 m!3383447))

(assert (=> b!3065371 m!3383391))

(assert (=> b!3065371 m!3383447))

(assert (=> b!3065371 m!3383391))

(declare-fun m!3383449 () Bool)

(assert (=> b!3065371 m!3383449))

(declare-fun m!3383451 () Bool)

(assert (=> b!3065370 m!3383451))

(assert (=> b!3065368 m!3383391))

(assert (=> b!3065368 m!3383391))

(assert (=> b!3065368 m!3383393))

(assert (=> b!3064734 d!855704))

(declare-fun b!3065373 () Bool)

(declare-fun e!1919041 () Bool)

(declare-fun e!1919043 () Bool)

(assert (=> b!3065373 (= e!1919041 e!1919043)))

(declare-fun res!1258377 () Bool)

(assert (=> b!3065373 (=> res!1258377 e!1919043)))

(declare-fun call!212354 () Bool)

(assert (=> b!3065373 (= res!1258377 call!212354)))

(declare-fun b!3065374 () Bool)

(declare-fun res!1258382 () Bool)

(assert (=> b!3065374 (=> res!1258382 e!1919043)))

(assert (=> b!3065374 (= res!1258382 (not (isEmpty!19559 (tail!5024 s!11993))))))

(declare-fun b!3065375 () Bool)

(declare-fun res!1258381 () Bool)

(declare-fun e!1919044 () Bool)

(assert (=> b!3065375 (=> res!1258381 e!1919044)))

(declare-fun e!1919042 () Bool)

(assert (=> b!3065375 (= res!1258381 e!1919042)))

(declare-fun res!1258380 () Bool)

(assert (=> b!3065375 (=> (not res!1258380) (not e!1919042))))

(declare-fun lt!1050627 () Bool)

(assert (=> b!3065375 (= res!1258380 lt!1050627)))

(declare-fun b!3065376 () Bool)

(declare-fun e!1919046 () Bool)

(assert (=> b!3065376 (= e!1919046 (not lt!1050627))))

(declare-fun b!3065377 () Bool)

(declare-fun res!1258378 () Bool)

(assert (=> b!3065377 (=> res!1258378 e!1919044)))

(assert (=> b!3065377 (= res!1258378 (not ((_ is ElementMatch!9497) (regTwo!19506 r!17423))))))

(assert (=> b!3065377 (= e!1919046 e!1919044)))

(declare-fun b!3065378 () Bool)

(declare-fun e!1919047 () Bool)

(assert (=> b!3065378 (= e!1919047 e!1919046)))

(declare-fun c!509201 () Bool)

(assert (=> b!3065378 (= c!509201 ((_ is EmptyLang!9497) (regTwo!19506 r!17423)))))

(declare-fun d!855706 () Bool)

(assert (=> d!855706 e!1919047))

(declare-fun c!509199 () Bool)

(assert (=> d!855706 (= c!509199 ((_ is EmptyExpr!9497) (regTwo!19506 r!17423)))))

(declare-fun e!1919045 () Bool)

(assert (=> d!855706 (= lt!1050627 e!1919045)))

(declare-fun c!509200 () Bool)

(assert (=> d!855706 (= c!509200 (isEmpty!19559 s!11993))))

(assert (=> d!855706 (validRegex!4230 (regTwo!19506 r!17423))))

(assert (=> d!855706 (= (matchR!4379 (regTwo!19506 r!17423) s!11993) lt!1050627)))

(declare-fun b!3065379 () Bool)

(assert (=> b!3065379 (= e!1919042 (= (head!6798 s!11993) (c!509021 (regTwo!19506 r!17423))))))

(declare-fun b!3065380 () Bool)

(assert (=> b!3065380 (= e!1919044 e!1919041)))

(declare-fun res!1258376 () Bool)

(assert (=> b!3065380 (=> (not res!1258376) (not e!1919041))))

(assert (=> b!3065380 (= res!1258376 (not lt!1050627))))

(declare-fun bm!212349 () Bool)

(assert (=> bm!212349 (= call!212354 (isEmpty!19559 s!11993))))

(declare-fun b!3065381 () Bool)

(declare-fun res!1258379 () Bool)

(assert (=> b!3065381 (=> (not res!1258379) (not e!1919042))))

(assert (=> b!3065381 (= res!1258379 (not call!212354))))

(declare-fun b!3065382 () Bool)

(declare-fun res!1258375 () Bool)

(assert (=> b!3065382 (=> (not res!1258375) (not e!1919042))))

(assert (=> b!3065382 (= res!1258375 (isEmpty!19559 (tail!5024 s!11993)))))

(declare-fun b!3065383 () Bool)

(assert (=> b!3065383 (= e!1919047 (= lt!1050627 call!212354))))

(declare-fun b!3065384 () Bool)

(assert (=> b!3065384 (= e!1919045 (nullable!3143 (regTwo!19506 r!17423)))))

(declare-fun b!3065385 () Bool)

(assert (=> b!3065385 (= e!1919045 (matchR!4379 (derivativeStep!2739 (regTwo!19506 r!17423) (head!6798 s!11993)) (tail!5024 s!11993)))))

(declare-fun b!3065386 () Bool)

(assert (=> b!3065386 (= e!1919043 (not (= (head!6798 s!11993) (c!509021 (regTwo!19506 r!17423)))))))

(assert (= (and d!855706 c!509200) b!3065384))

(assert (= (and d!855706 (not c!509200)) b!3065385))

(assert (= (and d!855706 c!509199) b!3065383))

(assert (= (and d!855706 (not c!509199)) b!3065378))

(assert (= (and b!3065378 c!509201) b!3065376))

(assert (= (and b!3065378 (not c!509201)) b!3065377))

(assert (= (and b!3065377 (not res!1258378)) b!3065375))

(assert (= (and b!3065375 res!1258380) b!3065381))

(assert (= (and b!3065381 res!1258379) b!3065382))

(assert (= (and b!3065382 res!1258375) b!3065379))

(assert (= (and b!3065375 (not res!1258381)) b!3065380))

(assert (= (and b!3065380 res!1258376) b!3065373))

(assert (= (and b!3065373 (not res!1258377)) b!3065374))

(assert (= (and b!3065374 (not res!1258382)) b!3065386))

(assert (= (or b!3065383 b!3065373 b!3065381) bm!212349))

(assert (=> b!3065374 m!3383391))

(assert (=> b!3065374 m!3383391))

(assert (=> b!3065374 m!3383393))

(assert (=> b!3065379 m!3383395))

(assert (=> b!3065386 m!3383395))

(assert (=> d!855706 m!3383173))

(assert (=> d!855706 m!3383199))

(assert (=> bm!212349 m!3383173))

(assert (=> b!3065385 m!3383395))

(assert (=> b!3065385 m!3383395))

(declare-fun m!3383453 () Bool)

(assert (=> b!3065385 m!3383453))

(assert (=> b!3065385 m!3383391))

(assert (=> b!3065385 m!3383453))

(assert (=> b!3065385 m!3383391))

(declare-fun m!3383455 () Bool)

(assert (=> b!3065385 m!3383455))

(assert (=> b!3065384 m!3383423))

(assert (=> b!3065382 m!3383391))

(assert (=> b!3065382 m!3383391))

(assert (=> b!3065382 m!3383393))

(assert (=> b!3064734 d!855706))

(declare-fun d!855708 () Bool)

(assert (=> d!855708 (= (matchR!4379 (regTwo!19506 r!17423) s!11993) (matchR!4379 (simplify!452 (regTwo!19506 r!17423)) s!11993))))

(declare-fun lt!1050630 () Unit!49433)

(declare-fun choose!18162 (Regex!9497 List!35362) Unit!49433)

(assert (=> d!855708 (= lt!1050630 (choose!18162 (regTwo!19506 r!17423) s!11993))))

(assert (=> d!855708 (validRegex!4230 (regTwo!19506 r!17423))))

(assert (=> d!855708 (= (lemmaSimplifySound!282 (regTwo!19506 r!17423) s!11993) lt!1050630)))

(declare-fun bs!532555 () Bool)

(assert (= bs!532555 d!855708))

(assert (=> bs!532555 m!3383183))

(declare-fun m!3383457 () Bool)

(assert (=> bs!532555 m!3383457))

(assert (=> bs!532555 m!3383183))

(assert (=> bs!532555 m!3383199))

(declare-fun m!3383459 () Bool)

(assert (=> bs!532555 m!3383459))

(assert (=> bs!532555 m!3383177))

(assert (=> b!3064734 d!855708))

(declare-fun d!855710 () Bool)

(assert (=> d!855710 (= (isEmptyLang!548 lt!1050528) ((_ is EmptyLang!9497) lt!1050528))))

(assert (=> b!3064729 d!855710))

(declare-fun b!3065397 () Bool)

(declare-fun e!1919050 () Bool)

(assert (=> b!3065397 (= e!1919050 tp_is_empty!16557)))

(declare-fun b!3065400 () Bool)

(declare-fun tp!967942 () Bool)

(declare-fun tp!967941 () Bool)

(assert (=> b!3065400 (= e!1919050 (and tp!967942 tp!967941))))

(assert (=> b!3064740 (= tp!967885 e!1919050)))

(declare-fun b!3065398 () Bool)

(declare-fun tp!967940 () Bool)

(declare-fun tp!967939 () Bool)

(assert (=> b!3065398 (= e!1919050 (and tp!967940 tp!967939))))

(declare-fun b!3065399 () Bool)

(declare-fun tp!967938 () Bool)

(assert (=> b!3065399 (= e!1919050 tp!967938)))

(assert (= (and b!3064740 ((_ is ElementMatch!9497) (reg!9826 r!17423))) b!3065397))

(assert (= (and b!3064740 ((_ is Concat!14818) (reg!9826 r!17423))) b!3065398))

(assert (= (and b!3064740 ((_ is Star!9497) (reg!9826 r!17423))) b!3065399))

(assert (= (and b!3064740 ((_ is Union!9497) (reg!9826 r!17423))) b!3065400))

(declare-fun b!3065401 () Bool)

(declare-fun e!1919051 () Bool)

(assert (=> b!3065401 (= e!1919051 tp_is_empty!16557)))

(declare-fun b!3065404 () Bool)

(declare-fun tp!967947 () Bool)

(declare-fun tp!967946 () Bool)

(assert (=> b!3065404 (= e!1919051 (and tp!967947 tp!967946))))

(assert (=> b!3064736 (= tp!967889 e!1919051)))

(declare-fun b!3065402 () Bool)

(declare-fun tp!967945 () Bool)

(declare-fun tp!967944 () Bool)

(assert (=> b!3065402 (= e!1919051 (and tp!967945 tp!967944))))

(declare-fun b!3065403 () Bool)

(declare-fun tp!967943 () Bool)

(assert (=> b!3065403 (= e!1919051 tp!967943)))

(assert (= (and b!3064736 ((_ is ElementMatch!9497) (regOne!19506 r!17423))) b!3065401))

(assert (= (and b!3064736 ((_ is Concat!14818) (regOne!19506 r!17423))) b!3065402))

(assert (= (and b!3064736 ((_ is Star!9497) (regOne!19506 r!17423))) b!3065403))

(assert (= (and b!3064736 ((_ is Union!9497) (regOne!19506 r!17423))) b!3065404))

(declare-fun b!3065405 () Bool)

(declare-fun e!1919052 () Bool)

(assert (=> b!3065405 (= e!1919052 tp_is_empty!16557)))

(declare-fun b!3065408 () Bool)

(declare-fun tp!967952 () Bool)

(declare-fun tp!967951 () Bool)

(assert (=> b!3065408 (= e!1919052 (and tp!967952 tp!967951))))

(assert (=> b!3064736 (= tp!967888 e!1919052)))

(declare-fun b!3065406 () Bool)

(declare-fun tp!967950 () Bool)

(declare-fun tp!967949 () Bool)

(assert (=> b!3065406 (= e!1919052 (and tp!967950 tp!967949))))

(declare-fun b!3065407 () Bool)

(declare-fun tp!967948 () Bool)

(assert (=> b!3065407 (= e!1919052 tp!967948)))

(assert (= (and b!3064736 ((_ is ElementMatch!9497) (regTwo!19506 r!17423))) b!3065405))

(assert (= (and b!3064736 ((_ is Concat!14818) (regTwo!19506 r!17423))) b!3065406))

(assert (= (and b!3064736 ((_ is Star!9497) (regTwo!19506 r!17423))) b!3065407))

(assert (= (and b!3064736 ((_ is Union!9497) (regTwo!19506 r!17423))) b!3065408))

(declare-fun b!3065409 () Bool)

(declare-fun e!1919053 () Bool)

(assert (=> b!3065409 (= e!1919053 tp_is_empty!16557)))

(declare-fun b!3065412 () Bool)

(declare-fun tp!967957 () Bool)

(declare-fun tp!967956 () Bool)

(assert (=> b!3065412 (= e!1919053 (and tp!967957 tp!967956))))

(assert (=> b!3064731 (= tp!967886 e!1919053)))

(declare-fun b!3065410 () Bool)

(declare-fun tp!967955 () Bool)

(declare-fun tp!967954 () Bool)

(assert (=> b!3065410 (= e!1919053 (and tp!967955 tp!967954))))

(declare-fun b!3065411 () Bool)

(declare-fun tp!967953 () Bool)

(assert (=> b!3065411 (= e!1919053 tp!967953)))

(assert (= (and b!3064731 ((_ is ElementMatch!9497) (regOne!19507 r!17423))) b!3065409))

(assert (= (and b!3064731 ((_ is Concat!14818) (regOne!19507 r!17423))) b!3065410))

(assert (= (and b!3064731 ((_ is Star!9497) (regOne!19507 r!17423))) b!3065411))

(assert (= (and b!3064731 ((_ is Union!9497) (regOne!19507 r!17423))) b!3065412))

(declare-fun b!3065413 () Bool)

(declare-fun e!1919054 () Bool)

(assert (=> b!3065413 (= e!1919054 tp_is_empty!16557)))

(declare-fun b!3065416 () Bool)

(declare-fun tp!967962 () Bool)

(declare-fun tp!967961 () Bool)

(assert (=> b!3065416 (= e!1919054 (and tp!967962 tp!967961))))

(assert (=> b!3064731 (= tp!967884 e!1919054)))

(declare-fun b!3065414 () Bool)

(declare-fun tp!967960 () Bool)

(declare-fun tp!967959 () Bool)

(assert (=> b!3065414 (= e!1919054 (and tp!967960 tp!967959))))

(declare-fun b!3065415 () Bool)

(declare-fun tp!967958 () Bool)

(assert (=> b!3065415 (= e!1919054 tp!967958)))

(assert (= (and b!3064731 ((_ is ElementMatch!9497) (regTwo!19507 r!17423))) b!3065413))

(assert (= (and b!3064731 ((_ is Concat!14818) (regTwo!19507 r!17423))) b!3065414))

(assert (= (and b!3064731 ((_ is Star!9497) (regTwo!19507 r!17423))) b!3065415))

(assert (= (and b!3064731 ((_ is Union!9497) (regTwo!19507 r!17423))) b!3065416))

(declare-fun b!3065421 () Bool)

(declare-fun e!1919057 () Bool)

(declare-fun tp!967965 () Bool)

(assert (=> b!3065421 (= e!1919057 (and tp_is_empty!16557 tp!967965))))

(assert (=> b!3064728 (= tp!967887 e!1919057)))

(assert (= (and b!3064728 ((_ is Cons!35238) (t!234427 s!11993))) b!3065421))

(check-sat (not d!855644) (not b!3065400) (not bm!212316) (not b!3065235) (not bm!212340) (not bm!212336) (not bm!212346) (not b!3065386) (not b!3065365) (not b!3065237) (not b!3064867) (not d!855656) (not b!3065379) (not b!3065408) (not b!3065421) (not b!3065374) (not b!3065245) (not bm!212344) (not d!855700) (not d!855694) (not b!3065370) (not b!3065312) (not bm!212314) (not bm!212348) (not b!3065402) (not bm!212335) (not b!3064856) (not b!3065249) (not d!855704) (not bm!212343) (not bm!212248) (not d!855672) (not bm!212337) (not b!3065247) (not b!3064866) (not d!855658) (not bm!212339) (not bm!212347) (not b!3065336) (not b!3065404) (not bm!212247) (not d!855688) (not bm!212260) (not b!3065411) (not bm!212318) (not b!3065248) (not b!3065081) (not b!3065082) (not b!3065311) (not b!3065416) (not b!3065407) (not b!3064864) (not b!3065085) (not d!855660) (not b!3065398) (not b!3065382) (not b!3065412) (not b!3065406) (not bm!212315) (not b!3065251) (not d!855692) tp_is_empty!16557 (not b!3065414) (not b!3065086) (not b!3065231) (not b!3065080) (not b!3065083) (not d!855708) (not b!3064861) (not b!3065368) (not b!3065415) (not b!3065403) (not b!3065242) (not b!3065360) (not b!3065337) (not b!3064783) (not b!3065399) (not bm!212319) (not d!855702) (not b!3065384) (not bm!212262) (not b!3064868) (not bm!212263) (not b!3065371) (not d!855634) (not b!3065372) (not bm!212349) (not b!3065410) (not b!3065385) (not d!855706) (not bm!212342) (not b!3064874))
(check-sat)
