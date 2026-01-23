; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!286032 () Bool)

(assert start!286032)

(declare-fun b!2948239 () Bool)

(declare-fun e!1857139 () Bool)

(declare-fun tp!942748 () Bool)

(assert (=> b!2948239 (= e!1857139 tp!942748)))

(declare-fun b!2948240 () Bool)

(declare-fun res!1216569 () Bool)

(declare-fun e!1857135 () Bool)

(assert (=> b!2948240 (=> res!1216569 e!1857135)))

(declare-datatypes ((C!18468 0))(
  ( (C!18469 (val!11270 Int)) )
))
(declare-datatypes ((Regex!9141 0))(
  ( (ElementMatch!9141 (c!482453 C!18468)) (Concat!14462 (regOne!18794 Regex!9141) (regTwo!18794 Regex!9141)) (EmptyExpr!9141) (Star!9141 (reg!9470 Regex!9141)) (EmptyLang!9141) (Union!9141 (regOne!18795 Regex!9141) (regTwo!18795 Regex!9141)) )
))
(declare-fun lt!1031535 () Regex!9141)

(declare-fun lt!1031534 () Regex!9141)

(declare-datatypes ((List!35006 0))(
  ( (Nil!34882) (Cons!34882 (h!40302 C!18468) (t!234071 List!35006)) )
))
(declare-fun s!11993 () List!35006)

(declare-fun matchR!4023 (Regex!9141 List!35006) Bool)

(assert (=> b!2948240 (= res!1216569 (not (matchR!4023 (Concat!14462 lt!1031535 lt!1031534) s!11993)))))

(declare-fun b!2948241 () Bool)

(declare-fun tp_is_empty!15845 () Bool)

(assert (=> b!2948241 (= e!1857139 tp_is_empty!15845)))

(declare-fun b!2948242 () Bool)

(declare-fun e!1857138 () Bool)

(declare-fun tp!942744 () Bool)

(assert (=> b!2948242 (= e!1857138 (and tp_is_empty!15845 tp!942744))))

(declare-fun b!2948243 () Bool)

(declare-fun res!1216568 () Bool)

(assert (=> b!2948243 (=> res!1216568 e!1857135)))

(declare-fun isEmptyLang!263 (Regex!9141) Bool)

(assert (=> b!2948243 (= res!1216568 (isEmptyLang!263 lt!1031534))))

(declare-fun b!2948244 () Bool)

(assert (=> b!2948244 (= e!1857135 true)))

(declare-fun b!2948245 () Bool)

(declare-fun e!1857137 () Bool)

(declare-fun e!1857136 () Bool)

(assert (=> b!2948245 (= e!1857137 (not e!1857136))))

(declare-fun res!1216563 () Bool)

(assert (=> b!2948245 (=> res!1216563 e!1857136)))

(declare-fun lt!1031532 () Bool)

(declare-fun r!17423 () Regex!9141)

(get-info :version)

(assert (=> b!2948245 (= res!1216563 (or lt!1031532 (not ((_ is Concat!14462) r!17423))))))

(declare-fun matchRSpec!1278 (Regex!9141 List!35006) Bool)

(assert (=> b!2948245 (= lt!1031532 (matchRSpec!1278 r!17423 s!11993))))

(assert (=> b!2948245 (= lt!1031532 (matchR!4023 r!17423 s!11993))))

(declare-datatypes ((Unit!48661 0))(
  ( (Unit!48662) )
))
(declare-fun lt!1031533 () Unit!48661)

(declare-fun mainMatchTheorem!1278 (Regex!9141 List!35006) Unit!48661)

(assert (=> b!2948245 (= lt!1031533 (mainMatchTheorem!1278 r!17423 s!11993))))

(declare-fun b!2948246 () Bool)

(declare-fun tp!942749 () Bool)

(declare-fun tp!942746 () Bool)

(assert (=> b!2948246 (= e!1857139 (and tp!942749 tp!942746))))

(declare-fun b!2948247 () Bool)

(declare-fun tp!942747 () Bool)

(declare-fun tp!942745 () Bool)

(assert (=> b!2948247 (= e!1857139 (and tp!942747 tp!942745))))

(declare-fun b!2948248 () Bool)

(declare-fun res!1216570 () Bool)

(assert (=> b!2948248 (=> res!1216570 e!1857135)))

(declare-fun isEmptyExpr!344 (Regex!9141) Bool)

(assert (=> b!2948248 (= res!1216570 (isEmptyExpr!344 lt!1031534))))

(declare-fun b!2948249 () Bool)

(declare-fun res!1216567 () Bool)

(assert (=> b!2948249 (=> res!1216567 e!1857136)))

(declare-fun isEmpty!19143 (List!35006) Bool)

(assert (=> b!2948249 (= res!1216567 (isEmpty!19143 s!11993))))

(declare-fun res!1216565 () Bool)

(assert (=> start!286032 (=> (not res!1216565) (not e!1857137))))

(declare-fun validRegex!3874 (Regex!9141) Bool)

(assert (=> start!286032 (= res!1216565 (validRegex!3874 r!17423))))

(assert (=> start!286032 e!1857137))

(assert (=> start!286032 e!1857139))

(assert (=> start!286032 e!1857138))

(declare-fun b!2948250 () Bool)

(assert (=> b!2948250 (= e!1857136 e!1857135)))

(declare-fun res!1216564 () Bool)

(assert (=> b!2948250 (=> res!1216564 e!1857135)))

(assert (=> b!2948250 (= res!1216564 (isEmptyLang!263 lt!1031535))))

(declare-fun simplify!146 (Regex!9141) Regex!9141)

(assert (=> b!2948250 (= lt!1031534 (simplify!146 (regTwo!18794 r!17423)))))

(assert (=> b!2948250 (= lt!1031535 (simplify!146 (regOne!18794 r!17423)))))

(declare-fun b!2948251 () Bool)

(declare-fun res!1216566 () Bool)

(assert (=> b!2948251 (=> res!1216566 e!1857135)))

(assert (=> b!2948251 (= res!1216566 (isEmptyExpr!344 lt!1031535))))

(assert (= (and start!286032 res!1216565) b!2948245))

(assert (= (and b!2948245 (not res!1216563)) b!2948249))

(assert (= (and b!2948249 (not res!1216567)) b!2948250))

(assert (= (and b!2948250 (not res!1216564)) b!2948243))

(assert (= (and b!2948243 (not res!1216568)) b!2948251))

(assert (= (and b!2948251 (not res!1216566)) b!2948248))

(assert (= (and b!2948248 (not res!1216570)) b!2948240))

(assert (= (and b!2948240 (not res!1216569)) b!2948244))

(assert (= (and start!286032 ((_ is ElementMatch!9141) r!17423)) b!2948241))

(assert (= (and start!286032 ((_ is Concat!14462) r!17423)) b!2948247))

(assert (= (and start!286032 ((_ is Star!9141) r!17423)) b!2948239))

(assert (= (and start!286032 ((_ is Union!9141) r!17423)) b!2948246))

(assert (= (and start!286032 ((_ is Cons!34882) s!11993)) b!2948242))

(declare-fun m!3328545 () Bool)

(assert (=> b!2948245 m!3328545))

(declare-fun m!3328547 () Bool)

(assert (=> b!2948245 m!3328547))

(declare-fun m!3328549 () Bool)

(assert (=> b!2948245 m!3328549))

(declare-fun m!3328551 () Bool)

(assert (=> b!2948243 m!3328551))

(declare-fun m!3328553 () Bool)

(assert (=> b!2948251 m!3328553))

(declare-fun m!3328555 () Bool)

(assert (=> start!286032 m!3328555))

(declare-fun m!3328557 () Bool)

(assert (=> b!2948250 m!3328557))

(declare-fun m!3328559 () Bool)

(assert (=> b!2948250 m!3328559))

(declare-fun m!3328561 () Bool)

(assert (=> b!2948250 m!3328561))

(declare-fun m!3328563 () Bool)

(assert (=> b!2948249 m!3328563))

(declare-fun m!3328565 () Bool)

(assert (=> b!2948248 m!3328565))

(declare-fun m!3328567 () Bool)

(assert (=> b!2948240 m!3328567))

(check-sat (not b!2948242) (not b!2948239) tp_is_empty!15845 (not b!2948248) (not start!286032) (not b!2948247) (not b!2948240) (not b!2948245) (not b!2948246) (not b!2948249) (not b!2948243) (not b!2948251) (not b!2948250))
(check-sat)
