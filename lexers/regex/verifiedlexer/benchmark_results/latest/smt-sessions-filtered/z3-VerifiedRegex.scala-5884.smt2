; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!288324 () Bool)

(assert start!288324)

(declare-fun b!2984328 () Bool)

(declare-fun e!1876645 () Bool)

(declare-fun tp!949601 () Bool)

(declare-fun tp!949598 () Bool)

(assert (=> b!2984328 (= e!1876645 (and tp!949601 tp!949598))))

(declare-fun res!1230804 () Bool)

(declare-fun e!1876641 () Bool)

(assert (=> start!288324 (=> (not res!1230804) (not e!1876641))))

(declare-datatypes ((C!18824 0))(
  ( (C!18825 (val!11448 Int)) )
))
(declare-datatypes ((Regex!9319 0))(
  ( (ElementMatch!9319 (c!490293 C!18824)) (Concat!14640 (regOne!19150 Regex!9319) (regTwo!19150 Regex!9319)) (EmptyExpr!9319) (Star!9319 (reg!9648 Regex!9319)) (EmptyLang!9319) (Union!9319 (regOne!19151 Regex!9319) (regTwo!19151 Regex!9319)) )
))
(declare-fun r!17423 () Regex!9319)

(declare-fun validRegex!4052 (Regex!9319) Bool)

(assert (=> start!288324 (= res!1230804 (validRegex!4052 r!17423))))

(assert (=> start!288324 e!1876641))

(assert (=> start!288324 e!1876645))

(declare-fun e!1876642 () Bool)

(assert (=> start!288324 e!1876642))

(declare-fun b!2984329 () Bool)

(declare-fun e!1876643 () Bool)

(assert (=> b!2984329 (= e!1876643 true)))

(declare-fun lt!1039112 () Bool)

(declare-fun lt!1039111 () Regex!9319)

(declare-datatypes ((List!35184 0))(
  ( (Nil!35060) (Cons!35060 (h!40480 C!18824) (t!234249 List!35184)) )
))
(declare-fun s!11993 () List!35184)

(declare-fun matchR!4201 (Regex!9319 List!35184) Bool)

(assert (=> b!2984329 (= lt!1039112 (matchR!4201 (Star!9319 lt!1039111) s!11993))))

(declare-fun b!2984330 () Bool)

(declare-fun tp!949596 () Bool)

(declare-fun tp!949597 () Bool)

(assert (=> b!2984330 (= e!1876645 (and tp!949596 tp!949597))))

(declare-fun b!2984331 () Bool)

(declare-fun tp_is_empty!16201 () Bool)

(declare-fun tp!949599 () Bool)

(assert (=> b!2984331 (= e!1876642 (and tp_is_empty!16201 tp!949599))))

(declare-fun b!2984332 () Bool)

(declare-fun e!1876644 () Bool)

(assert (=> b!2984332 (= e!1876644 e!1876643)))

(declare-fun res!1230802 () Bool)

(assert (=> b!2984332 (=> res!1230802 e!1876643)))

(declare-fun isEmptyLang!433 (Regex!9319) Bool)

(assert (=> b!2984332 (= res!1230802 (isEmptyLang!433 lt!1039111))))

(declare-fun simplify!320 (Regex!9319) Regex!9319)

(assert (=> b!2984332 (= lt!1039111 (simplify!320 (reg!9648 r!17423)))))

(declare-fun b!2984333 () Bool)

(assert (=> b!2984333 (= e!1876641 (not e!1876644))))

(declare-fun res!1230803 () Bool)

(assert (=> b!2984333 (=> res!1230803 e!1876644)))

(declare-fun lt!1039113 () Bool)

(get-info :version)

(assert (=> b!2984333 (= res!1230803 (or lt!1039113 ((_ is Concat!14640) r!17423) ((_ is Union!9319) r!17423) (not ((_ is Star!9319) r!17423))))))

(declare-fun matchRSpec!1456 (Regex!9319 List!35184) Bool)

(assert (=> b!2984333 (= lt!1039113 (matchRSpec!1456 r!17423 s!11993))))

(assert (=> b!2984333 (= lt!1039113 (matchR!4201 r!17423 s!11993))))

(declare-datatypes ((Unit!49041 0))(
  ( (Unit!49042) )
))
(declare-fun lt!1039114 () Unit!49041)

(declare-fun mainMatchTheorem!1456 (Regex!9319 List!35184) Unit!49041)

(assert (=> b!2984333 (= lt!1039114 (mainMatchTheorem!1456 r!17423 s!11993))))

(declare-fun b!2984334 () Bool)

(declare-fun tp!949600 () Bool)

(assert (=> b!2984334 (= e!1876645 tp!949600)))

(declare-fun b!2984335 () Bool)

(assert (=> b!2984335 (= e!1876645 tp_is_empty!16201)))

(assert (= (and start!288324 res!1230804) b!2984333))

(assert (= (and b!2984333 (not res!1230803)) b!2984332))

(assert (= (and b!2984332 (not res!1230802)) b!2984329))

(assert (= (and start!288324 ((_ is ElementMatch!9319) r!17423)) b!2984335))

(assert (= (and start!288324 ((_ is Concat!14640) r!17423)) b!2984328))

(assert (= (and start!288324 ((_ is Star!9319) r!17423)) b!2984334))

(assert (= (and start!288324 ((_ is Union!9319) r!17423)) b!2984330))

(assert (= (and start!288324 ((_ is Cons!35060) s!11993)) b!2984331))

(declare-fun m!3344167 () Bool)

(assert (=> start!288324 m!3344167))

(declare-fun m!3344169 () Bool)

(assert (=> b!2984329 m!3344169))

(declare-fun m!3344171 () Bool)

(assert (=> b!2984332 m!3344171))

(declare-fun m!3344173 () Bool)

(assert (=> b!2984332 m!3344173))

(declare-fun m!3344175 () Bool)

(assert (=> b!2984333 m!3344175))

(declare-fun m!3344177 () Bool)

(assert (=> b!2984333 m!3344177))

(declare-fun m!3344179 () Bool)

(assert (=> b!2984333 m!3344179))

(check-sat (not start!288324) (not b!2984331) (not b!2984328) (not b!2984329) tp_is_empty!16201 (not b!2984334) (not b!2984333) (not b!2984332) (not b!2984330))
(check-sat)
