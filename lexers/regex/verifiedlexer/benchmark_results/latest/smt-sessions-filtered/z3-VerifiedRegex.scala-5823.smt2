; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!286924 () Bool)

(assert start!286924)

(declare-fun b!2961702 () Bool)

(declare-fun e!1864238 () Bool)

(declare-fun e!1864240 () Bool)

(assert (=> b!2961702 (= e!1864238 (not e!1864240))))

(declare-fun res!1221898 () Bool)

(assert (=> b!2961702 (=> res!1221898 e!1864240)))

(declare-fun lt!1034232 () Bool)

(declare-datatypes ((C!18580 0))(
  ( (C!18581 (val!11326 Int)) )
))
(declare-datatypes ((Regex!9197 0))(
  ( (ElementMatch!9197 (c!485427 C!18580)) (Concat!14518 (regOne!18906 Regex!9197) (regTwo!18906 Regex!9197)) (EmptyExpr!9197) (Star!9197 (reg!9526 Regex!9197)) (EmptyLang!9197) (Union!9197 (regOne!18907 Regex!9197) (regTwo!18907 Regex!9197)) )
))
(declare-fun r!17423 () Regex!9197)

(get-info :version)

(assert (=> b!2961702 (= res!1221898 (or lt!1034232 ((_ is Concat!14518) r!17423) (not ((_ is Union!9197) r!17423))))))

(declare-datatypes ((List!35062 0))(
  ( (Nil!34938) (Cons!34938 (h!40358 C!18580) (t!234127 List!35062)) )
))
(declare-fun s!11993 () List!35062)

(declare-fun matchRSpec!1334 (Regex!9197 List!35062) Bool)

(assert (=> b!2961702 (= lt!1034232 (matchRSpec!1334 r!17423 s!11993))))

(declare-fun matchR!4079 (Regex!9197 List!35062) Bool)

(assert (=> b!2961702 (= lt!1034232 (matchR!4079 r!17423 s!11993))))

(declare-datatypes ((Unit!48773 0))(
  ( (Unit!48774) )
))
(declare-fun lt!1034234 () Unit!48773)

(declare-fun mainMatchTheorem!1334 (Regex!9197 List!35062) Unit!48773)

(assert (=> b!2961702 (= lt!1034234 (mainMatchTheorem!1334 r!17423 s!11993))))

(declare-fun b!2961703 () Bool)

(declare-fun e!1864241 () Bool)

(declare-fun tp_is_empty!15957 () Bool)

(declare-fun tp!945124 () Bool)

(assert (=> b!2961703 (= e!1864241 (and tp_is_empty!15957 tp!945124))))

(declare-fun b!2961704 () Bool)

(declare-fun e!1864239 () Bool)

(declare-fun tp!945125 () Bool)

(declare-fun tp!945122 () Bool)

(assert (=> b!2961704 (= e!1864239 (and tp!945125 tp!945122))))

(declare-fun b!2961705 () Bool)

(assert (=> b!2961705 (= e!1864239 tp_is_empty!15957)))

(declare-fun b!2961706 () Bool)

(declare-fun e!1864237 () Bool)

(assert (=> b!2961706 (= e!1864240 e!1864237)))

(declare-fun res!1221899 () Bool)

(assert (=> b!2961706 (=> res!1221899 e!1864237)))

(declare-fun lt!1034233 () Regex!9197)

(declare-fun isEmptyLang!315 (Regex!9197) Bool)

(assert (=> b!2961706 (= res!1221899 (not (isEmptyLang!315 lt!1034233)))))

(declare-fun lt!1034231 () Regex!9197)

(declare-fun simplify!200 (Regex!9197) Regex!9197)

(assert (=> b!2961706 (= lt!1034231 (simplify!200 (regTwo!18907 r!17423)))))

(assert (=> b!2961706 (= lt!1034233 (simplify!200 (regOne!18907 r!17423)))))

(declare-fun res!1221900 () Bool)

(assert (=> start!286924 (=> (not res!1221900) (not e!1864238))))

(declare-fun validRegex!3930 (Regex!9197) Bool)

(assert (=> start!286924 (= res!1221900 (validRegex!3930 r!17423))))

(assert (=> start!286924 e!1864238))

(assert (=> start!286924 e!1864239))

(assert (=> start!286924 e!1864241))

(declare-fun b!2961707 () Bool)

(assert (=> b!2961707 (= e!1864237 true)))

(assert (=> b!2961707 (= (matchR!4079 (regTwo!18907 r!17423) s!11993) (matchR!4079 lt!1034231 s!11993))))

(declare-fun lt!1034230 () Unit!48773)

(declare-fun lemmaSimplifySound!126 (Regex!9197 List!35062) Unit!48773)

(assert (=> b!2961707 (= lt!1034230 (lemmaSimplifySound!126 (regTwo!18907 r!17423) s!11993))))

(declare-fun b!2961708 () Bool)

(declare-fun tp!945123 () Bool)

(declare-fun tp!945121 () Bool)

(assert (=> b!2961708 (= e!1864239 (and tp!945123 tp!945121))))

(declare-fun b!2961709 () Bool)

(declare-fun tp!945120 () Bool)

(assert (=> b!2961709 (= e!1864239 tp!945120)))

(assert (= (and start!286924 res!1221900) b!2961702))

(assert (= (and b!2961702 (not res!1221898)) b!2961706))

(assert (= (and b!2961706 (not res!1221899)) b!2961707))

(assert (= (and start!286924 ((_ is ElementMatch!9197) r!17423)) b!2961705))

(assert (= (and start!286924 ((_ is Concat!14518) r!17423)) b!2961704))

(assert (= (and start!286924 ((_ is Star!9197) r!17423)) b!2961709))

(assert (= (and start!286924 ((_ is Union!9197) r!17423)) b!2961708))

(assert (= (and start!286924 ((_ is Cons!34938) s!11993)) b!2961703))

(declare-fun m!3334523 () Bool)

(assert (=> b!2961702 m!3334523))

(declare-fun m!3334525 () Bool)

(assert (=> b!2961702 m!3334525))

(declare-fun m!3334527 () Bool)

(assert (=> b!2961702 m!3334527))

(declare-fun m!3334529 () Bool)

(assert (=> b!2961706 m!3334529))

(declare-fun m!3334531 () Bool)

(assert (=> b!2961706 m!3334531))

(declare-fun m!3334533 () Bool)

(assert (=> b!2961706 m!3334533))

(declare-fun m!3334535 () Bool)

(assert (=> start!286924 m!3334535))

(declare-fun m!3334537 () Bool)

(assert (=> b!2961707 m!3334537))

(declare-fun m!3334539 () Bool)

(assert (=> b!2961707 m!3334539))

(declare-fun m!3334541 () Bool)

(assert (=> b!2961707 m!3334541))

(check-sat (not b!2961708) (not b!2961706) (not b!2961704) (not b!2961707) (not b!2961709) (not b!2961702) tp_is_empty!15957 (not start!286924) (not b!2961703))
(check-sat)
