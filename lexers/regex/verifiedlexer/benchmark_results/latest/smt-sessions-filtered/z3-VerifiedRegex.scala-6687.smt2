; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!350810 () Bool)

(assert start!350810)

(declare-fun b!3727086 () Bool)

(declare-fun e!2306430 () Bool)

(declare-fun tp_is_empty!18841 () Bool)

(assert (=> b!3727086 (= e!2306430 tp_is_empty!18841)))

(declare-fun b!3727087 () Bool)

(declare-fun tp!1134032 () Bool)

(declare-fun tp!1134031 () Bool)

(assert (=> b!3727087 (= e!2306430 (and tp!1134032 tp!1134031))))

(declare-fun b!3727088 () Bool)

(declare-fun res!1513843 () Bool)

(declare-fun e!2306431 () Bool)

(assert (=> b!3727088 (=> (not res!1513843) (not e!2306431))))

(declare-datatypes ((C!22012 0))(
  ( (C!22013 (val!13054 Int)) )
))
(declare-datatypes ((Regex!10913 0))(
  ( (ElementMatch!10913 (c!644899 C!22012)) (Concat!17184 (regOne!22338 Regex!10913) (regTwo!22338 Regex!10913)) (EmptyExpr!10913) (Star!10913 (reg!11242 Regex!10913)) (EmptyLang!10913) (Union!10913 (regOne!22339 Regex!10913) (regTwo!22339 Regex!10913)) )
))
(declare-fun r!26968 () Regex!10913)

(declare-fun cNot!42 () C!22012)

(declare-datatypes ((List!39794 0))(
  ( (Nil!39670) (Cons!39670 (h!45090 C!22012) (t!302477 List!39794)) )
))
(declare-fun contains!8006 (List!39794 C!22012) Bool)

(declare-fun usedCharacters!1176 (Regex!10913) List!39794)

(assert (=> b!3727088 (= res!1513843 (not (contains!8006 (usedCharacters!1176 r!26968) cNot!42)))))

(declare-fun b!3727089 () Bool)

(declare-fun res!1513842 () Bool)

(assert (=> b!3727089 (=> (not res!1513842) (not e!2306431))))

(get-info :version)

(assert (=> b!3727089 (= res!1513842 (and (not ((_ is EmptyExpr!10913) r!26968)) (not ((_ is EmptyLang!10913) r!26968)) (not ((_ is ElementMatch!10913) r!26968)) ((_ is Union!10913) r!26968)))))

(declare-fun res!1513845 () Bool)

(assert (=> start!350810 (=> (not res!1513845) (not e!2306431))))

(declare-fun validRegex!5020 (Regex!10913) Bool)

(assert (=> start!350810 (= res!1513845 (validRegex!5020 r!26968))))

(assert (=> start!350810 e!2306431))

(assert (=> start!350810 e!2306430))

(assert (=> start!350810 tp_is_empty!18841))

(declare-fun b!3727090 () Bool)

(declare-fun tp!1134034 () Bool)

(declare-fun tp!1134030 () Bool)

(assert (=> b!3727090 (= e!2306430 (and tp!1134034 tp!1134030))))

(declare-fun b!3727091 () Bool)

(declare-fun e!2306432 () Bool)

(declare-fun RegexPrimitiveSize!141 (Regex!10913) Int)

(assert (=> b!3727091 (= e!2306432 (< (RegexPrimitiveSize!141 (regTwo!22339 r!26968)) (RegexPrimitiveSize!141 r!26968)))))

(declare-fun b!3727092 () Bool)

(declare-fun tp!1134033 () Bool)

(assert (=> b!3727092 (= e!2306430 tp!1134033)))

(declare-fun b!3727093 () Bool)

(assert (=> b!3727093 (= e!2306431 (not e!2306432))))

(declare-fun res!1513844 () Bool)

(assert (=> b!3727093 (=> res!1513844 e!2306432)))

(assert (=> b!3727093 (= res!1513844 (not (validRegex!5020 (regTwo!22339 r!26968))))))

(declare-fun c!13797 () C!22012)

(declare-fun derivativeStep!3360 (Regex!10913 C!22012) Regex!10913)

(assert (=> b!3727093 (not (contains!8006 (usedCharacters!1176 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) cNot!42))))

(declare-datatypes ((Unit!57576 0))(
  ( (Unit!57577) )
))
(declare-fun lt!1298434 () Unit!57576)

(declare-fun lemmaDerivativeStepDoesNotAddCharToUsedCharacters!44 (Regex!10913 C!22012 C!22012) Unit!57576)

(assert (=> b!3727093 (= lt!1298434 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!44 (regOne!22339 r!26968) c!13797 cNot!42))))

(declare-fun b!3727094 () Bool)

(declare-fun res!1513846 () Bool)

(assert (=> b!3727094 (=> res!1513846 e!2306432)))

(assert (=> b!3727094 (= res!1513846 (contains!8006 (usedCharacters!1176 (regTwo!22339 r!26968)) cNot!42))))

(assert (= (and start!350810 res!1513845) b!3727088))

(assert (= (and b!3727088 res!1513843) b!3727089))

(assert (= (and b!3727089 res!1513842) b!3727093))

(assert (= (and b!3727093 (not res!1513844)) b!3727094))

(assert (= (and b!3727094 (not res!1513846)) b!3727091))

(assert (= (and start!350810 ((_ is ElementMatch!10913) r!26968)) b!3727086))

(assert (= (and start!350810 ((_ is Concat!17184) r!26968)) b!3727090))

(assert (= (and start!350810 ((_ is Star!10913) r!26968)) b!3727092))

(assert (= (and start!350810 ((_ is Union!10913) r!26968)) b!3727087))

(declare-fun m!4228321 () Bool)

(assert (=> start!350810 m!4228321))

(declare-fun m!4228323 () Bool)

(assert (=> b!3727094 m!4228323))

(assert (=> b!3727094 m!4228323))

(declare-fun m!4228325 () Bool)

(assert (=> b!3727094 m!4228325))

(declare-fun m!4228327 () Bool)

(assert (=> b!3727088 m!4228327))

(assert (=> b!3727088 m!4228327))

(declare-fun m!4228329 () Bool)

(assert (=> b!3727088 m!4228329))

(declare-fun m!4228331 () Bool)

(assert (=> b!3727093 m!4228331))

(declare-fun m!4228333 () Bool)

(assert (=> b!3727093 m!4228333))

(declare-fun m!4228335 () Bool)

(assert (=> b!3727093 m!4228335))

(assert (=> b!3727093 m!4228331))

(declare-fun m!4228337 () Bool)

(assert (=> b!3727093 m!4228337))

(assert (=> b!3727093 m!4228335))

(declare-fun m!4228339 () Bool)

(assert (=> b!3727093 m!4228339))

(declare-fun m!4228341 () Bool)

(assert (=> b!3727091 m!4228341))

(declare-fun m!4228343 () Bool)

(assert (=> b!3727091 m!4228343))

(check-sat (not b!3727087) (not b!3727088) (not b!3727094) (not start!350810) tp_is_empty!18841 (not b!3727092) (not b!3727091) (not b!3727093) (not b!3727090))
(check-sat)
(get-model)

(declare-fun bm!271628 () Bool)

(declare-fun call!271633 () Int)

(declare-fun c!644913 () Bool)

(assert (=> bm!271628 (= call!271633 (RegexPrimitiveSize!141 (ite c!644913 (regTwo!22338 (regTwo!22339 r!26968)) (regTwo!22339 (regTwo!22339 r!26968)))))))

(declare-fun c!644911 () Bool)

(declare-fun bm!271629 () Bool)

(declare-fun call!271634 () Int)

(assert (=> bm!271629 (= call!271634 (RegexPrimitiveSize!141 (ite c!644913 (regOne!22338 (regTwo!22339 r!26968)) (ite c!644911 (reg!11242 (regTwo!22339 r!26968)) (regOne!22339 (regTwo!22339 r!26968))))))))

(declare-fun b!3727121 () Bool)

(declare-fun c!644910 () Bool)

(assert (=> b!3727121 (= c!644910 ((_ is EmptyExpr!10913) (regTwo!22339 r!26968)))))

(declare-fun e!2306449 () Int)

(declare-fun e!2306453 () Int)

(assert (=> b!3727121 (= e!2306449 e!2306453)))

(declare-fun d!1090046 () Bool)

(declare-fun lt!1298440 () Int)

(assert (=> d!1090046 (>= lt!1298440 0)))

(declare-fun e!2306450 () Int)

(assert (=> d!1090046 (= lt!1298440 e!2306450)))

(declare-fun c!644912 () Bool)

(assert (=> d!1090046 (= c!644912 ((_ is ElementMatch!10913) (regTwo!22339 r!26968)))))

(assert (=> d!1090046 (= (RegexPrimitiveSize!141 (regTwo!22339 r!26968)) lt!1298440)))

(declare-fun b!3727122 () Bool)

(assert (=> b!3727122 (= e!2306450 1)))

(declare-fun bm!271630 () Bool)

(declare-fun call!271635 () Int)

(assert (=> bm!271630 (= call!271635 call!271634)))

(declare-fun b!3727123 () Bool)

(declare-fun e!2306451 () Int)

(assert (=> b!3727123 (= e!2306451 (+ 1 call!271635))))

(declare-fun b!3727124 () Bool)

(assert (=> b!3727124 (= e!2306450 e!2306449)))

(assert (=> b!3727124 (= c!644913 ((_ is Concat!17184) (regTwo!22339 r!26968)))))

(declare-fun b!3727125 () Bool)

(declare-fun e!2306452 () Int)

(assert (=> b!3727125 (= e!2306452 (+ 1 call!271635 call!271633))))

(declare-fun b!3727126 () Bool)

(assert (=> b!3727126 (= e!2306453 0)))

(declare-fun b!3727127 () Bool)

(declare-fun c!644914 () Bool)

(assert (=> b!3727127 (= c!644914 ((_ is EmptyLang!10913) (regTwo!22339 r!26968)))))

(assert (=> b!3727127 (= e!2306451 e!2306452)))

(declare-fun b!3727128 () Bool)

(assert (=> b!3727128 (= e!2306452 0)))

(declare-fun b!3727129 () Bool)

(assert (=> b!3727129 (= e!2306449 (+ 1 call!271634 call!271633))))

(declare-fun b!3727130 () Bool)

(assert (=> b!3727130 (= e!2306453 e!2306451)))

(assert (=> b!3727130 (= c!644911 ((_ is Star!10913) (regTwo!22339 r!26968)))))

(assert (= (and d!1090046 c!644912) b!3727122))

(assert (= (and d!1090046 (not c!644912)) b!3727124))

(assert (= (and b!3727124 c!644913) b!3727129))

(assert (= (and b!3727124 (not c!644913)) b!3727121))

(assert (= (and b!3727121 c!644910) b!3727126))

(assert (= (and b!3727121 (not c!644910)) b!3727130))

(assert (= (and b!3727130 c!644911) b!3727123))

(assert (= (and b!3727130 (not c!644911)) b!3727127))

(assert (= (and b!3727127 c!644914) b!3727128))

(assert (= (and b!3727127 (not c!644914)) b!3727125))

(assert (= (or b!3727123 b!3727125) bm!271630))

(assert (= (or b!3727129 bm!271630) bm!271629))

(assert (= (or b!3727129 b!3727125) bm!271628))

(declare-fun m!4228351 () Bool)

(assert (=> bm!271628 m!4228351))

(declare-fun m!4228353 () Bool)

(assert (=> bm!271629 m!4228353))

(assert (=> b!3727091 d!1090046))

(declare-fun bm!271631 () Bool)

(declare-fun call!271636 () Int)

(declare-fun c!644918 () Bool)

(assert (=> bm!271631 (= call!271636 (RegexPrimitiveSize!141 (ite c!644918 (regTwo!22338 r!26968) (regTwo!22339 r!26968))))))

(declare-fun bm!271632 () Bool)

(declare-fun call!271637 () Int)

(declare-fun c!644916 () Bool)

(assert (=> bm!271632 (= call!271637 (RegexPrimitiveSize!141 (ite c!644918 (regOne!22338 r!26968) (ite c!644916 (reg!11242 r!26968) (regOne!22339 r!26968)))))))

(declare-fun b!3727131 () Bool)

(declare-fun c!644915 () Bool)

(assert (=> b!3727131 (= c!644915 ((_ is EmptyExpr!10913) r!26968))))

(declare-fun e!2306454 () Int)

(declare-fun e!2306458 () Int)

(assert (=> b!3727131 (= e!2306454 e!2306458)))

(declare-fun d!1090052 () Bool)

(declare-fun lt!1298441 () Int)

(assert (=> d!1090052 (>= lt!1298441 0)))

(declare-fun e!2306455 () Int)

(assert (=> d!1090052 (= lt!1298441 e!2306455)))

(declare-fun c!644917 () Bool)

(assert (=> d!1090052 (= c!644917 ((_ is ElementMatch!10913) r!26968))))

(assert (=> d!1090052 (= (RegexPrimitiveSize!141 r!26968) lt!1298441)))

(declare-fun b!3727132 () Bool)

(assert (=> b!3727132 (= e!2306455 1)))

(declare-fun bm!271633 () Bool)

(declare-fun call!271638 () Int)

(assert (=> bm!271633 (= call!271638 call!271637)))

(declare-fun b!3727133 () Bool)

(declare-fun e!2306456 () Int)

(assert (=> b!3727133 (= e!2306456 (+ 1 call!271638))))

(declare-fun b!3727134 () Bool)

(assert (=> b!3727134 (= e!2306455 e!2306454)))

(assert (=> b!3727134 (= c!644918 ((_ is Concat!17184) r!26968))))

(declare-fun b!3727135 () Bool)

(declare-fun e!2306457 () Int)

(assert (=> b!3727135 (= e!2306457 (+ 1 call!271638 call!271636))))

(declare-fun b!3727136 () Bool)

(assert (=> b!3727136 (= e!2306458 0)))

(declare-fun b!3727137 () Bool)

(declare-fun c!644919 () Bool)

(assert (=> b!3727137 (= c!644919 ((_ is EmptyLang!10913) r!26968))))

(assert (=> b!3727137 (= e!2306456 e!2306457)))

(declare-fun b!3727138 () Bool)

(assert (=> b!3727138 (= e!2306457 0)))

(declare-fun b!3727139 () Bool)

(assert (=> b!3727139 (= e!2306454 (+ 1 call!271637 call!271636))))

(declare-fun b!3727140 () Bool)

(assert (=> b!3727140 (= e!2306458 e!2306456)))

(assert (=> b!3727140 (= c!644916 ((_ is Star!10913) r!26968))))

(assert (= (and d!1090052 c!644917) b!3727132))

(assert (= (and d!1090052 (not c!644917)) b!3727134))

(assert (= (and b!3727134 c!644918) b!3727139))

(assert (= (and b!3727134 (not c!644918)) b!3727131))

(assert (= (and b!3727131 c!644915) b!3727136))

(assert (= (and b!3727131 (not c!644915)) b!3727140))

(assert (= (and b!3727140 c!644916) b!3727133))

(assert (= (and b!3727140 (not c!644916)) b!3727137))

(assert (= (and b!3727137 c!644919) b!3727138))

(assert (= (and b!3727137 (not c!644919)) b!3727135))

(assert (= (or b!3727133 b!3727135) bm!271633))

(assert (= (or b!3727139 bm!271633) bm!271632))

(assert (= (or b!3727139 b!3727135) bm!271631))

(declare-fun m!4228355 () Bool)

(assert (=> bm!271631 m!4228355))

(declare-fun m!4228357 () Bool)

(assert (=> bm!271632 m!4228357))

(assert (=> b!3727091 d!1090052))

(declare-fun d!1090054 () Bool)

(declare-fun lt!1298444 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5770 (List!39794) (InoxSet C!22012))

(assert (=> d!1090054 (= lt!1298444 (select (content!5770 (usedCharacters!1176 (regTwo!22339 r!26968))) cNot!42))))

(declare-fun e!2306471 () Bool)

(assert (=> d!1090054 (= lt!1298444 e!2306471)))

(declare-fun res!1513857 () Bool)

(assert (=> d!1090054 (=> (not res!1513857) (not e!2306471))))

(assert (=> d!1090054 (= res!1513857 ((_ is Cons!39670) (usedCharacters!1176 (regTwo!22339 r!26968))))))

(assert (=> d!1090054 (= (contains!8006 (usedCharacters!1176 (regTwo!22339 r!26968)) cNot!42) lt!1298444)))

(declare-fun b!3727161 () Bool)

(declare-fun e!2306472 () Bool)

(assert (=> b!3727161 (= e!2306471 e!2306472)))

(declare-fun res!1513858 () Bool)

(assert (=> b!3727161 (=> res!1513858 e!2306472)))

(assert (=> b!3727161 (= res!1513858 (= (h!45090 (usedCharacters!1176 (regTwo!22339 r!26968))) cNot!42))))

(declare-fun b!3727162 () Bool)

(assert (=> b!3727162 (= e!2306472 (contains!8006 (t!302477 (usedCharacters!1176 (regTwo!22339 r!26968))) cNot!42))))

(assert (= (and d!1090054 res!1513857) b!3727161))

(assert (= (and b!3727161 (not res!1513858)) b!3727162))

(assert (=> d!1090054 m!4228323))

(declare-fun m!4228359 () Bool)

(assert (=> d!1090054 m!4228359))

(declare-fun m!4228361 () Bool)

(assert (=> d!1090054 m!4228361))

(declare-fun m!4228363 () Bool)

(assert (=> b!3727162 m!4228363))

(assert (=> b!3727094 d!1090054))

(declare-fun b!3727215 () Bool)

(declare-fun e!2306505 () List!39794)

(declare-fun e!2306508 () List!39794)

(assert (=> b!3727215 (= e!2306505 e!2306508)))

(declare-fun c!644949 () Bool)

(assert (=> b!3727215 (= c!644949 ((_ is ElementMatch!10913) (regTwo!22339 r!26968)))))

(declare-fun bm!271664 () Bool)

(declare-fun call!271670 () List!39794)

(declare-fun c!644951 () Bool)

(assert (=> bm!271664 (= call!271670 (usedCharacters!1176 (ite c!644951 (regOne!22339 (regTwo!22339 r!26968)) (regTwo!22338 (regTwo!22339 r!26968)))))))

(declare-fun b!3727216 () Bool)

(assert (=> b!3727216 (= e!2306508 (Cons!39670 (c!644899 (regTwo!22339 r!26968)) Nil!39670))))

(declare-fun bm!271665 () Bool)

(declare-fun call!271672 () List!39794)

(declare-fun call!271671 () List!39794)

(assert (=> bm!271665 (= call!271672 call!271671)))

(declare-fun bm!271666 () Bool)

(declare-fun c!644948 () Bool)

(assert (=> bm!271666 (= call!271671 (usedCharacters!1176 (ite c!644948 (reg!11242 (regTwo!22339 r!26968)) (ite c!644951 (regTwo!22339 (regTwo!22339 r!26968)) (regOne!22338 (regTwo!22339 r!26968))))))))

(declare-fun b!3727218 () Bool)

(declare-fun e!2306506 () List!39794)

(declare-fun call!271669 () List!39794)

(assert (=> b!3727218 (= e!2306506 call!271669)))

(declare-fun b!3727219 () Bool)

(assert (=> b!3727219 (= e!2306506 call!271669)))

(declare-fun b!3727220 () Bool)

(assert (=> b!3727220 (= c!644948 ((_ is Star!10913) (regTwo!22339 r!26968)))))

(declare-fun e!2306507 () List!39794)

(assert (=> b!3727220 (= e!2306508 e!2306507)))

(declare-fun bm!271667 () Bool)

(declare-fun ++!9837 (List!39794 List!39794) List!39794)

(assert (=> bm!271667 (= call!271669 (++!9837 (ite c!644951 call!271670 call!271672) (ite c!644951 call!271672 call!271670)))))

(declare-fun b!3727217 () Bool)

(assert (=> b!3727217 (= e!2306507 e!2306506)))

(assert (=> b!3727217 (= c!644951 ((_ is Union!10913) (regTwo!22339 r!26968)))))

(declare-fun d!1090056 () Bool)

(declare-fun c!644950 () Bool)

(assert (=> d!1090056 (= c!644950 (or ((_ is EmptyExpr!10913) (regTwo!22339 r!26968)) ((_ is EmptyLang!10913) (regTwo!22339 r!26968))))))

(assert (=> d!1090056 (= (usedCharacters!1176 (regTwo!22339 r!26968)) e!2306505)))

(declare-fun b!3727221 () Bool)

(assert (=> b!3727221 (= e!2306505 Nil!39670)))

(declare-fun b!3727222 () Bool)

(assert (=> b!3727222 (= e!2306507 call!271671)))

(assert (= (and d!1090056 c!644950) b!3727221))

(assert (= (and d!1090056 (not c!644950)) b!3727215))

(assert (= (and b!3727215 c!644949) b!3727216))

(assert (= (and b!3727215 (not c!644949)) b!3727220))

(assert (= (and b!3727220 c!644948) b!3727222))

(assert (= (and b!3727220 (not c!644948)) b!3727217))

(assert (= (and b!3727217 c!644951) b!3727219))

(assert (= (and b!3727217 (not c!644951)) b!3727218))

(assert (= (or b!3727219 b!3727218) bm!271664))

(assert (= (or b!3727219 b!3727218) bm!271665))

(assert (= (or b!3727219 b!3727218) bm!271667))

(assert (= (or b!3727222 bm!271665) bm!271666))

(declare-fun m!4228383 () Bool)

(assert (=> bm!271664 m!4228383))

(declare-fun m!4228385 () Bool)

(assert (=> bm!271666 m!4228385))

(declare-fun m!4228387 () Bool)

(assert (=> bm!271667 m!4228387))

(assert (=> b!3727094 d!1090056))

(declare-fun d!1090064 () Bool)

(declare-fun lt!1298446 () Bool)

(assert (=> d!1090064 (= lt!1298446 (select (content!5770 (usedCharacters!1176 r!26968)) cNot!42))))

(declare-fun e!2306509 () Bool)

(assert (=> d!1090064 (= lt!1298446 e!2306509)))

(declare-fun res!1513871 () Bool)

(assert (=> d!1090064 (=> (not res!1513871) (not e!2306509))))

(assert (=> d!1090064 (= res!1513871 ((_ is Cons!39670) (usedCharacters!1176 r!26968)))))

(assert (=> d!1090064 (= (contains!8006 (usedCharacters!1176 r!26968) cNot!42) lt!1298446)))

(declare-fun b!3727223 () Bool)

(declare-fun e!2306510 () Bool)

(assert (=> b!3727223 (= e!2306509 e!2306510)))

(declare-fun res!1513872 () Bool)

(assert (=> b!3727223 (=> res!1513872 e!2306510)))

(assert (=> b!3727223 (= res!1513872 (= (h!45090 (usedCharacters!1176 r!26968)) cNot!42))))

(declare-fun b!3727224 () Bool)

(assert (=> b!3727224 (= e!2306510 (contains!8006 (t!302477 (usedCharacters!1176 r!26968)) cNot!42))))

(assert (= (and d!1090064 res!1513871) b!3727223))

(assert (= (and b!3727223 (not res!1513872)) b!3727224))

(assert (=> d!1090064 m!4228327))

(declare-fun m!4228389 () Bool)

(assert (=> d!1090064 m!4228389))

(declare-fun m!4228391 () Bool)

(assert (=> d!1090064 m!4228391))

(declare-fun m!4228393 () Bool)

(assert (=> b!3727224 m!4228393))

(assert (=> b!3727088 d!1090064))

(declare-fun b!3727225 () Bool)

(declare-fun e!2306511 () List!39794)

(declare-fun e!2306514 () List!39794)

(assert (=> b!3727225 (= e!2306511 e!2306514)))

(declare-fun c!644953 () Bool)

(assert (=> b!3727225 (= c!644953 ((_ is ElementMatch!10913) r!26968))))

(declare-fun bm!271668 () Bool)

(declare-fun call!271674 () List!39794)

(declare-fun c!644955 () Bool)

(assert (=> bm!271668 (= call!271674 (usedCharacters!1176 (ite c!644955 (regOne!22339 r!26968) (regTwo!22338 r!26968))))))

(declare-fun b!3727226 () Bool)

(assert (=> b!3727226 (= e!2306514 (Cons!39670 (c!644899 r!26968) Nil!39670))))

(declare-fun bm!271669 () Bool)

(declare-fun call!271676 () List!39794)

(declare-fun call!271675 () List!39794)

(assert (=> bm!271669 (= call!271676 call!271675)))

(declare-fun bm!271670 () Bool)

(declare-fun c!644952 () Bool)

(assert (=> bm!271670 (= call!271675 (usedCharacters!1176 (ite c!644952 (reg!11242 r!26968) (ite c!644955 (regTwo!22339 r!26968) (regOne!22338 r!26968)))))))

(declare-fun b!3727228 () Bool)

(declare-fun e!2306512 () List!39794)

(declare-fun call!271673 () List!39794)

(assert (=> b!3727228 (= e!2306512 call!271673)))

(declare-fun b!3727229 () Bool)

(assert (=> b!3727229 (= e!2306512 call!271673)))

(declare-fun b!3727230 () Bool)

(assert (=> b!3727230 (= c!644952 ((_ is Star!10913) r!26968))))

(declare-fun e!2306513 () List!39794)

(assert (=> b!3727230 (= e!2306514 e!2306513)))

(declare-fun bm!271671 () Bool)

(assert (=> bm!271671 (= call!271673 (++!9837 (ite c!644955 call!271674 call!271676) (ite c!644955 call!271676 call!271674)))))

(declare-fun b!3727227 () Bool)

(assert (=> b!3727227 (= e!2306513 e!2306512)))

(assert (=> b!3727227 (= c!644955 ((_ is Union!10913) r!26968))))

(declare-fun d!1090066 () Bool)

(declare-fun c!644954 () Bool)

(assert (=> d!1090066 (= c!644954 (or ((_ is EmptyExpr!10913) r!26968) ((_ is EmptyLang!10913) r!26968)))))

(assert (=> d!1090066 (= (usedCharacters!1176 r!26968) e!2306511)))

(declare-fun b!3727231 () Bool)

(assert (=> b!3727231 (= e!2306511 Nil!39670)))

(declare-fun b!3727232 () Bool)

(assert (=> b!3727232 (= e!2306513 call!271675)))

(assert (= (and d!1090066 c!644954) b!3727231))

(assert (= (and d!1090066 (not c!644954)) b!3727225))

(assert (= (and b!3727225 c!644953) b!3727226))

(assert (= (and b!3727225 (not c!644953)) b!3727230))

(assert (= (and b!3727230 c!644952) b!3727232))

(assert (= (and b!3727230 (not c!644952)) b!3727227))

(assert (= (and b!3727227 c!644955) b!3727229))

(assert (= (and b!3727227 (not c!644955)) b!3727228))

(assert (= (or b!3727229 b!3727228) bm!271668))

(assert (= (or b!3727229 b!3727228) bm!271669))

(assert (= (or b!3727229 b!3727228) bm!271671))

(assert (= (or b!3727232 bm!271669) bm!271670))

(declare-fun m!4228395 () Bool)

(assert (=> bm!271668 m!4228395))

(declare-fun m!4228397 () Bool)

(assert (=> bm!271670 m!4228397))

(declare-fun m!4228399 () Bool)

(assert (=> bm!271671 m!4228399))

(assert (=> b!3727088 d!1090066))

(declare-fun b!3727233 () Bool)

(declare-fun e!2306515 () List!39794)

(declare-fun e!2306518 () List!39794)

(assert (=> b!3727233 (= e!2306515 e!2306518)))

(declare-fun c!644957 () Bool)

(assert (=> b!3727233 (= c!644957 ((_ is ElementMatch!10913) (derivativeStep!3360 (regOne!22339 r!26968) c!13797)))))

(declare-fun bm!271672 () Bool)

(declare-fun call!271678 () List!39794)

(declare-fun c!644959 () Bool)

(assert (=> bm!271672 (= call!271678 (usedCharacters!1176 (ite c!644959 (regOne!22339 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (regTwo!22338 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)))))))

(declare-fun b!3727234 () Bool)

(assert (=> b!3727234 (= e!2306518 (Cons!39670 (c!644899 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) Nil!39670))))

(declare-fun bm!271673 () Bool)

(declare-fun call!271680 () List!39794)

(declare-fun call!271679 () List!39794)

(assert (=> bm!271673 (= call!271680 call!271679)))

(declare-fun c!644956 () Bool)

(declare-fun bm!271674 () Bool)

(assert (=> bm!271674 (= call!271679 (usedCharacters!1176 (ite c!644956 (reg!11242 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (ite c!644959 (regTwo!22339 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (regOne!22338 (derivativeStep!3360 (regOne!22339 r!26968) c!13797))))))))

(declare-fun b!3727236 () Bool)

(declare-fun e!2306516 () List!39794)

(declare-fun call!271677 () List!39794)

(assert (=> b!3727236 (= e!2306516 call!271677)))

(declare-fun b!3727237 () Bool)

(assert (=> b!3727237 (= e!2306516 call!271677)))

(declare-fun b!3727238 () Bool)

(assert (=> b!3727238 (= c!644956 ((_ is Star!10913) (derivativeStep!3360 (regOne!22339 r!26968) c!13797)))))

(declare-fun e!2306517 () List!39794)

(assert (=> b!3727238 (= e!2306518 e!2306517)))

(declare-fun bm!271675 () Bool)

(assert (=> bm!271675 (= call!271677 (++!9837 (ite c!644959 call!271678 call!271680) (ite c!644959 call!271680 call!271678)))))

(declare-fun b!3727235 () Bool)

(assert (=> b!3727235 (= e!2306517 e!2306516)))

(assert (=> b!3727235 (= c!644959 ((_ is Union!10913) (derivativeStep!3360 (regOne!22339 r!26968) c!13797)))))

(declare-fun d!1090068 () Bool)

(declare-fun c!644958 () Bool)

(assert (=> d!1090068 (= c!644958 (or ((_ is EmptyExpr!10913) (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) ((_ is EmptyLang!10913) (derivativeStep!3360 (regOne!22339 r!26968) c!13797))))))

(assert (=> d!1090068 (= (usedCharacters!1176 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) e!2306515)))

(declare-fun b!3727239 () Bool)

(assert (=> b!3727239 (= e!2306515 Nil!39670)))

(declare-fun b!3727240 () Bool)

(assert (=> b!3727240 (= e!2306517 call!271679)))

(assert (= (and d!1090068 c!644958) b!3727239))

(assert (= (and d!1090068 (not c!644958)) b!3727233))

(assert (= (and b!3727233 c!644957) b!3727234))

(assert (= (and b!3727233 (not c!644957)) b!3727238))

(assert (= (and b!3727238 c!644956) b!3727240))

(assert (= (and b!3727238 (not c!644956)) b!3727235))

(assert (= (and b!3727235 c!644959) b!3727237))

(assert (= (and b!3727235 (not c!644959)) b!3727236))

(assert (= (or b!3727237 b!3727236) bm!271672))

(assert (= (or b!3727237 b!3727236) bm!271673))

(assert (= (or b!3727237 b!3727236) bm!271675))

(assert (= (or b!3727240 bm!271673) bm!271674))

(declare-fun m!4228401 () Bool)

(assert (=> bm!271672 m!4228401))

(declare-fun m!4228403 () Bool)

(assert (=> bm!271674 m!4228403))

(declare-fun m!4228405 () Bool)

(assert (=> bm!271675 m!4228405))

(assert (=> b!3727093 d!1090068))

(declare-fun lt!1298447 () Bool)

(declare-fun d!1090070 () Bool)

(assert (=> d!1090070 (= lt!1298447 (select (content!5770 (usedCharacters!1176 (derivativeStep!3360 (regOne!22339 r!26968) c!13797))) cNot!42))))

(declare-fun e!2306526 () Bool)

(assert (=> d!1090070 (= lt!1298447 e!2306526)))

(declare-fun res!1513878 () Bool)

(assert (=> d!1090070 (=> (not res!1513878) (not e!2306526))))

(assert (=> d!1090070 (= res!1513878 ((_ is Cons!39670) (usedCharacters!1176 (derivativeStep!3360 (regOne!22339 r!26968) c!13797))))))

(assert (=> d!1090070 (= (contains!8006 (usedCharacters!1176 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) cNot!42) lt!1298447)))

(declare-fun b!3727250 () Bool)

(declare-fun e!2306527 () Bool)

(assert (=> b!3727250 (= e!2306526 e!2306527)))

(declare-fun res!1513879 () Bool)

(assert (=> b!3727250 (=> res!1513879 e!2306527)))

(assert (=> b!3727250 (= res!1513879 (= (h!45090 (usedCharacters!1176 (derivativeStep!3360 (regOne!22339 r!26968) c!13797))) cNot!42))))

(declare-fun b!3727251 () Bool)

(assert (=> b!3727251 (= e!2306527 (contains!8006 (t!302477 (usedCharacters!1176 (derivativeStep!3360 (regOne!22339 r!26968) c!13797))) cNot!42))))

(assert (= (and d!1090070 res!1513878) b!3727250))

(assert (= (and b!3727250 (not res!1513879)) b!3727251))

(assert (=> d!1090070 m!4228331))

(declare-fun m!4228407 () Bool)

(assert (=> d!1090070 m!4228407))

(declare-fun m!4228409 () Bool)

(assert (=> d!1090070 m!4228409))

(declare-fun m!4228411 () Bool)

(assert (=> b!3727251 m!4228411))

(assert (=> b!3727093 d!1090070))

(declare-fun d!1090072 () Bool)

(assert (=> d!1090072 (not (contains!8006 (usedCharacters!1176 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) cNot!42))))

(declare-fun lt!1298451 () Unit!57576)

(declare-fun choose!22225 (Regex!10913 C!22012 C!22012) Unit!57576)

(assert (=> d!1090072 (= lt!1298451 (choose!22225 (regOne!22339 r!26968) c!13797 cNot!42))))

(assert (=> d!1090072 (= (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!44 (regOne!22339 r!26968) c!13797 cNot!42) lt!1298451)))

(declare-fun bs!575046 () Bool)

(assert (= bs!575046 d!1090072))

(assert (=> bs!575046 m!4228335))

(assert (=> bs!575046 m!4228335))

(assert (=> bs!575046 m!4228331))

(assert (=> bs!575046 m!4228331))

(assert (=> bs!575046 m!4228333))

(declare-fun m!4228431 () Bool)

(assert (=> bs!575046 m!4228431))

(assert (=> b!3727093 d!1090072))

(declare-fun bm!271692 () Bool)

(declare-fun call!271699 () Bool)

(declare-fun call!271698 () Bool)

(assert (=> bm!271692 (= call!271699 call!271698)))

(declare-fun b!3727289 () Bool)

(declare-fun e!2306558 () Bool)

(declare-fun e!2306559 () Bool)

(assert (=> b!3727289 (= e!2306558 e!2306559)))

(declare-fun res!1513900 () Bool)

(declare-fun nullable!3821 (Regex!10913) Bool)

(assert (=> b!3727289 (= res!1513900 (not (nullable!3821 (reg!11242 (regTwo!22339 r!26968)))))))

(assert (=> b!3727289 (=> (not res!1513900) (not e!2306559))))

(declare-fun b!3727290 () Bool)

(declare-fun e!2306556 () Bool)

(assert (=> b!3727290 (= e!2306558 e!2306556)))

(declare-fun c!644975 () Bool)

(assert (=> b!3727290 (= c!644975 ((_ is Union!10913) (regTwo!22339 r!26968)))))

(declare-fun d!1090080 () Bool)

(declare-fun res!1513898 () Bool)

(declare-fun e!2306555 () Bool)

(assert (=> d!1090080 (=> res!1513898 e!2306555)))

(assert (=> d!1090080 (= res!1513898 ((_ is ElementMatch!10913) (regTwo!22339 r!26968)))))

(assert (=> d!1090080 (= (validRegex!5020 (regTwo!22339 r!26968)) e!2306555)))

(declare-fun b!3727291 () Bool)

(declare-fun res!1513901 () Bool)

(declare-fun e!2306561 () Bool)

(assert (=> b!3727291 (=> (not res!1513901) (not e!2306561))))

(assert (=> b!3727291 (= res!1513901 call!271699)))

(assert (=> b!3727291 (= e!2306556 e!2306561)))

(declare-fun b!3727292 () Bool)

(declare-fun e!2306560 () Bool)

(declare-fun call!271697 () Bool)

(assert (=> b!3727292 (= e!2306560 call!271697)))

(declare-fun c!644974 () Bool)

(declare-fun bm!271693 () Bool)

(assert (=> bm!271693 (= call!271698 (validRegex!5020 (ite c!644974 (reg!11242 (regTwo!22339 r!26968)) (ite c!644975 (regOne!22339 (regTwo!22339 r!26968)) (regOne!22338 (regTwo!22339 r!26968))))))))

(declare-fun b!3727293 () Bool)

(assert (=> b!3727293 (= e!2306559 call!271698)))

(declare-fun bm!271694 () Bool)

(assert (=> bm!271694 (= call!271697 (validRegex!5020 (ite c!644975 (regTwo!22339 (regTwo!22339 r!26968)) (regTwo!22338 (regTwo!22339 r!26968)))))))

(declare-fun b!3727294 () Bool)

(declare-fun e!2306557 () Bool)

(assert (=> b!3727294 (= e!2306557 e!2306560)))

(declare-fun res!1513899 () Bool)

(assert (=> b!3727294 (=> (not res!1513899) (not e!2306560))))

(assert (=> b!3727294 (= res!1513899 call!271699)))

(declare-fun b!3727295 () Bool)

(assert (=> b!3727295 (= e!2306561 call!271697)))

(declare-fun b!3727296 () Bool)

(declare-fun res!1513897 () Bool)

(assert (=> b!3727296 (=> res!1513897 e!2306557)))

(assert (=> b!3727296 (= res!1513897 (not ((_ is Concat!17184) (regTwo!22339 r!26968))))))

(assert (=> b!3727296 (= e!2306556 e!2306557)))

(declare-fun b!3727297 () Bool)

(assert (=> b!3727297 (= e!2306555 e!2306558)))

(assert (=> b!3727297 (= c!644974 ((_ is Star!10913) (regTwo!22339 r!26968)))))

(assert (= (and d!1090080 (not res!1513898)) b!3727297))

(assert (= (and b!3727297 c!644974) b!3727289))

(assert (= (and b!3727297 (not c!644974)) b!3727290))

(assert (= (and b!3727289 res!1513900) b!3727293))

(assert (= (and b!3727290 c!644975) b!3727291))

(assert (= (and b!3727290 (not c!644975)) b!3727296))

(assert (= (and b!3727291 res!1513901) b!3727295))

(assert (= (and b!3727296 (not res!1513897)) b!3727294))

(assert (= (and b!3727294 res!1513899) b!3727292))

(assert (= (or b!3727295 b!3727292) bm!271694))

(assert (= (or b!3727291 b!3727294) bm!271692))

(assert (= (or b!3727293 bm!271692) bm!271693))

(declare-fun m!4228441 () Bool)

(assert (=> b!3727289 m!4228441))

(declare-fun m!4228443 () Bool)

(assert (=> bm!271693 m!4228443))

(declare-fun m!4228445 () Bool)

(assert (=> bm!271694 m!4228445))

(assert (=> b!3727093 d!1090080))

(declare-fun b!3727368 () Bool)

(declare-fun e!2306600 () Regex!10913)

(declare-fun e!2306598 () Regex!10913)

(assert (=> b!3727368 (= e!2306600 e!2306598)))

(declare-fun c!645014 () Bool)

(assert (=> b!3727368 (= c!645014 ((_ is ElementMatch!10913) (regOne!22339 r!26968)))))

(declare-fun b!3727369 () Bool)

(declare-fun e!2306601 () Regex!10913)

(declare-fun e!2306599 () Regex!10913)

(assert (=> b!3727369 (= e!2306601 e!2306599)))

(declare-fun c!645011 () Bool)

(assert (=> b!3727369 (= c!645011 ((_ is Star!10913) (regOne!22339 r!26968)))))

(declare-fun c!645012 () Bool)

(declare-fun bm!271721 () Bool)

(declare-fun call!271729 () Regex!10913)

(declare-fun c!645013 () Bool)

(assert (=> bm!271721 (= call!271729 (derivativeStep!3360 (ite c!645013 (regTwo!22339 (regOne!22339 r!26968)) (ite c!645011 (reg!11242 (regOne!22339 r!26968)) (ite c!645012 (regTwo!22338 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968))))) c!13797))))

(declare-fun bm!271722 () Bool)

(declare-fun call!271726 () Regex!10913)

(assert (=> bm!271722 (= call!271726 (derivativeStep!3360 (ite c!645013 (regOne!22339 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968))) c!13797))))

(declare-fun bm!271723 () Bool)

(declare-fun call!271728 () Regex!10913)

(assert (=> bm!271723 (= call!271728 call!271729)))

(declare-fun b!3727370 () Bool)

(assert (=> b!3727370 (= c!645013 ((_ is Union!10913) (regOne!22339 r!26968)))))

(assert (=> b!3727370 (= e!2306598 e!2306601)))

(declare-fun call!271727 () Regex!10913)

(declare-fun b!3727371 () Bool)

(declare-fun e!2306597 () Regex!10913)

(assert (=> b!3727371 (= e!2306597 (Union!10913 (Concat!17184 call!271726 (regTwo!22338 (regOne!22339 r!26968))) call!271727))))

(declare-fun b!3727372 () Bool)

(assert (=> b!3727372 (= e!2306600 EmptyLang!10913)))

(declare-fun b!3727373 () Bool)

(assert (=> b!3727373 (= c!645012 (nullable!3821 (regOne!22338 (regOne!22339 r!26968))))))

(assert (=> b!3727373 (= e!2306599 e!2306597)))

(declare-fun b!3727374 () Bool)

(assert (=> b!3727374 (= e!2306598 (ite (= c!13797 (c!644899 (regOne!22339 r!26968))) EmptyExpr!10913 EmptyLang!10913))))

(declare-fun b!3727376 () Bool)

(assert (=> b!3727376 (= e!2306601 (Union!10913 call!271726 call!271729))))

(declare-fun bm!271724 () Bool)

(assert (=> bm!271724 (= call!271727 call!271728)))

(declare-fun b!3727377 () Bool)

(assert (=> b!3727377 (= e!2306599 (Concat!17184 call!271728 (regOne!22339 r!26968)))))

(declare-fun b!3727375 () Bool)

(assert (=> b!3727375 (= e!2306597 (Union!10913 (Concat!17184 call!271727 (regTwo!22338 (regOne!22339 r!26968))) EmptyLang!10913))))

(declare-fun d!1090086 () Bool)

(declare-fun lt!1298462 () Regex!10913)

(assert (=> d!1090086 (validRegex!5020 lt!1298462)))

(assert (=> d!1090086 (= lt!1298462 e!2306600)))

(declare-fun c!645015 () Bool)

(assert (=> d!1090086 (= c!645015 (or ((_ is EmptyExpr!10913) (regOne!22339 r!26968)) ((_ is EmptyLang!10913) (regOne!22339 r!26968))))))

(assert (=> d!1090086 (validRegex!5020 (regOne!22339 r!26968))))

(assert (=> d!1090086 (= (derivativeStep!3360 (regOne!22339 r!26968) c!13797) lt!1298462)))

(assert (= (and d!1090086 c!645015) b!3727372))

(assert (= (and d!1090086 (not c!645015)) b!3727368))

(assert (= (and b!3727368 c!645014) b!3727374))

(assert (= (and b!3727368 (not c!645014)) b!3727370))

(assert (= (and b!3727370 c!645013) b!3727376))

(assert (= (and b!3727370 (not c!645013)) b!3727369))

(assert (= (and b!3727369 c!645011) b!3727377))

(assert (= (and b!3727369 (not c!645011)) b!3727373))

(assert (= (and b!3727373 c!645012) b!3727371))

(assert (= (and b!3727373 (not c!645012)) b!3727375))

(assert (= (or b!3727371 b!3727375) bm!271724))

(assert (= (or b!3727377 bm!271724) bm!271723))

(assert (= (or b!3727376 b!3727371) bm!271722))

(assert (= (or b!3727376 bm!271723) bm!271721))

(declare-fun m!4228457 () Bool)

(assert (=> bm!271721 m!4228457))

(declare-fun m!4228459 () Bool)

(assert (=> bm!271722 m!4228459))

(declare-fun m!4228461 () Bool)

(assert (=> b!3727373 m!4228461))

(declare-fun m!4228463 () Bool)

(assert (=> d!1090086 m!4228463))

(declare-fun m!4228465 () Bool)

(assert (=> d!1090086 m!4228465))

(assert (=> b!3727093 d!1090086))

(declare-fun bm!271725 () Bool)

(declare-fun call!271732 () Bool)

(declare-fun call!271731 () Bool)

(assert (=> bm!271725 (= call!271732 call!271731)))

(declare-fun b!3727378 () Bool)

(declare-fun e!2306605 () Bool)

(declare-fun e!2306606 () Bool)

(assert (=> b!3727378 (= e!2306605 e!2306606)))

(declare-fun res!1513905 () Bool)

(assert (=> b!3727378 (= res!1513905 (not (nullable!3821 (reg!11242 r!26968))))))

(assert (=> b!3727378 (=> (not res!1513905) (not e!2306606))))

(declare-fun b!3727379 () Bool)

(declare-fun e!2306603 () Bool)

(assert (=> b!3727379 (= e!2306605 e!2306603)))

(declare-fun c!645017 () Bool)

(assert (=> b!3727379 (= c!645017 ((_ is Union!10913) r!26968))))

(declare-fun d!1090090 () Bool)

(declare-fun res!1513903 () Bool)

(declare-fun e!2306602 () Bool)

(assert (=> d!1090090 (=> res!1513903 e!2306602)))

(assert (=> d!1090090 (= res!1513903 ((_ is ElementMatch!10913) r!26968))))

(assert (=> d!1090090 (= (validRegex!5020 r!26968) e!2306602)))

(declare-fun b!3727380 () Bool)

(declare-fun res!1513906 () Bool)

(declare-fun e!2306608 () Bool)

(assert (=> b!3727380 (=> (not res!1513906) (not e!2306608))))

(assert (=> b!3727380 (= res!1513906 call!271732)))

(assert (=> b!3727380 (= e!2306603 e!2306608)))

(declare-fun b!3727381 () Bool)

(declare-fun e!2306607 () Bool)

(declare-fun call!271730 () Bool)

(assert (=> b!3727381 (= e!2306607 call!271730)))

(declare-fun c!645016 () Bool)

(declare-fun bm!271726 () Bool)

(assert (=> bm!271726 (= call!271731 (validRegex!5020 (ite c!645016 (reg!11242 r!26968) (ite c!645017 (regOne!22339 r!26968) (regOne!22338 r!26968)))))))

(declare-fun b!3727382 () Bool)

(assert (=> b!3727382 (= e!2306606 call!271731)))

(declare-fun bm!271727 () Bool)

(assert (=> bm!271727 (= call!271730 (validRegex!5020 (ite c!645017 (regTwo!22339 r!26968) (regTwo!22338 r!26968))))))

(declare-fun b!3727383 () Bool)

(declare-fun e!2306604 () Bool)

(assert (=> b!3727383 (= e!2306604 e!2306607)))

(declare-fun res!1513904 () Bool)

(assert (=> b!3727383 (=> (not res!1513904) (not e!2306607))))

(assert (=> b!3727383 (= res!1513904 call!271732)))

(declare-fun b!3727384 () Bool)

(assert (=> b!3727384 (= e!2306608 call!271730)))

(declare-fun b!3727385 () Bool)

(declare-fun res!1513902 () Bool)

(assert (=> b!3727385 (=> res!1513902 e!2306604)))

(assert (=> b!3727385 (= res!1513902 (not ((_ is Concat!17184) r!26968)))))

(assert (=> b!3727385 (= e!2306603 e!2306604)))

(declare-fun b!3727386 () Bool)

(assert (=> b!3727386 (= e!2306602 e!2306605)))

(assert (=> b!3727386 (= c!645016 ((_ is Star!10913) r!26968))))

(assert (= (and d!1090090 (not res!1513903)) b!3727386))

(assert (= (and b!3727386 c!645016) b!3727378))

(assert (= (and b!3727386 (not c!645016)) b!3727379))

(assert (= (and b!3727378 res!1513905) b!3727382))

(assert (= (and b!3727379 c!645017) b!3727380))

(assert (= (and b!3727379 (not c!645017)) b!3727385))

(assert (= (and b!3727380 res!1513906) b!3727384))

(assert (= (and b!3727385 (not res!1513902)) b!3727383))

(assert (= (and b!3727383 res!1513904) b!3727381))

(assert (= (or b!3727384 b!3727381) bm!271727))

(assert (= (or b!3727380 b!3727383) bm!271725))

(assert (= (or b!3727382 bm!271725) bm!271726))

(declare-fun m!4228467 () Bool)

(assert (=> b!3727378 m!4228467))

(declare-fun m!4228469 () Bool)

(assert (=> bm!271726 m!4228469))

(declare-fun m!4228471 () Bool)

(assert (=> bm!271727 m!4228471))

(assert (=> start!350810 d!1090090))

(declare-fun b!3727425 () Bool)

(declare-fun e!2306623 () Bool)

(declare-fun tp!1134051 () Bool)

(assert (=> b!3727425 (= e!2306623 tp!1134051)))

(declare-fun b!3727424 () Bool)

(declare-fun tp!1134048 () Bool)

(declare-fun tp!1134050 () Bool)

(assert (=> b!3727424 (= e!2306623 (and tp!1134048 tp!1134050))))

(declare-fun b!3727426 () Bool)

(declare-fun tp!1134049 () Bool)

(declare-fun tp!1134047 () Bool)

(assert (=> b!3727426 (= e!2306623 (and tp!1134049 tp!1134047))))

(declare-fun b!3727423 () Bool)

(assert (=> b!3727423 (= e!2306623 tp_is_empty!18841)))

(assert (=> b!3727092 (= tp!1134033 e!2306623)))

(assert (= (and b!3727092 ((_ is ElementMatch!10913) (reg!11242 r!26968))) b!3727423))

(assert (= (and b!3727092 ((_ is Concat!17184) (reg!11242 r!26968))) b!3727424))

(assert (= (and b!3727092 ((_ is Star!10913) (reg!11242 r!26968))) b!3727425))

(assert (= (and b!3727092 ((_ is Union!10913) (reg!11242 r!26968))) b!3727426))

(declare-fun b!3727433 () Bool)

(declare-fun e!2306624 () Bool)

(declare-fun tp!1134064 () Bool)

(assert (=> b!3727433 (= e!2306624 tp!1134064)))

(declare-fun b!3727432 () Bool)

(declare-fun tp!1134061 () Bool)

(declare-fun tp!1134063 () Bool)

(assert (=> b!3727432 (= e!2306624 (and tp!1134061 tp!1134063))))

(declare-fun b!3727434 () Bool)

(declare-fun tp!1134062 () Bool)

(declare-fun tp!1134060 () Bool)

(assert (=> b!3727434 (= e!2306624 (and tp!1134062 tp!1134060))))

(declare-fun b!3727431 () Bool)

(assert (=> b!3727431 (= e!2306624 tp_is_empty!18841)))

(assert (=> b!3727090 (= tp!1134034 e!2306624)))

(assert (= (and b!3727090 ((_ is ElementMatch!10913) (regOne!22338 r!26968))) b!3727431))

(assert (= (and b!3727090 ((_ is Concat!17184) (regOne!22338 r!26968))) b!3727432))

(assert (= (and b!3727090 ((_ is Star!10913) (regOne!22338 r!26968))) b!3727433))

(assert (= (and b!3727090 ((_ is Union!10913) (regOne!22338 r!26968))) b!3727434))

(declare-fun b!3727437 () Bool)

(declare-fun e!2306625 () Bool)

(declare-fun tp!1134069 () Bool)

(assert (=> b!3727437 (= e!2306625 tp!1134069)))

(declare-fun b!3727436 () Bool)

(declare-fun tp!1134066 () Bool)

(declare-fun tp!1134068 () Bool)

(assert (=> b!3727436 (= e!2306625 (and tp!1134066 tp!1134068))))

(declare-fun b!3727438 () Bool)

(declare-fun tp!1134067 () Bool)

(declare-fun tp!1134065 () Bool)

(assert (=> b!3727438 (= e!2306625 (and tp!1134067 tp!1134065))))

(declare-fun b!3727435 () Bool)

(assert (=> b!3727435 (= e!2306625 tp_is_empty!18841)))

(assert (=> b!3727090 (= tp!1134030 e!2306625)))

(assert (= (and b!3727090 ((_ is ElementMatch!10913) (regTwo!22338 r!26968))) b!3727435))

(assert (= (and b!3727090 ((_ is Concat!17184) (regTwo!22338 r!26968))) b!3727436))

(assert (= (and b!3727090 ((_ is Star!10913) (regTwo!22338 r!26968))) b!3727437))

(assert (= (and b!3727090 ((_ is Union!10913) (regTwo!22338 r!26968))) b!3727438))

(declare-fun b!3727441 () Bool)

(declare-fun e!2306626 () Bool)

(declare-fun tp!1134074 () Bool)

(assert (=> b!3727441 (= e!2306626 tp!1134074)))

(declare-fun b!3727440 () Bool)

(declare-fun tp!1134071 () Bool)

(declare-fun tp!1134073 () Bool)

(assert (=> b!3727440 (= e!2306626 (and tp!1134071 tp!1134073))))

(declare-fun b!3727442 () Bool)

(declare-fun tp!1134072 () Bool)

(declare-fun tp!1134070 () Bool)

(assert (=> b!3727442 (= e!2306626 (and tp!1134072 tp!1134070))))

(declare-fun b!3727439 () Bool)

(assert (=> b!3727439 (= e!2306626 tp_is_empty!18841)))

(assert (=> b!3727087 (= tp!1134032 e!2306626)))

(assert (= (and b!3727087 ((_ is ElementMatch!10913) (regOne!22339 r!26968))) b!3727439))

(assert (= (and b!3727087 ((_ is Concat!17184) (regOne!22339 r!26968))) b!3727440))

(assert (= (and b!3727087 ((_ is Star!10913) (regOne!22339 r!26968))) b!3727441))

(assert (= (and b!3727087 ((_ is Union!10913) (regOne!22339 r!26968))) b!3727442))

(declare-fun b!3727449 () Bool)

(declare-fun e!2306628 () Bool)

(declare-fun tp!1134084 () Bool)

(assert (=> b!3727449 (= e!2306628 tp!1134084)))

(declare-fun b!3727448 () Bool)

(declare-fun tp!1134081 () Bool)

(declare-fun tp!1134083 () Bool)

(assert (=> b!3727448 (= e!2306628 (and tp!1134081 tp!1134083))))

(declare-fun b!3727450 () Bool)

(declare-fun tp!1134082 () Bool)

(declare-fun tp!1134080 () Bool)

(assert (=> b!3727450 (= e!2306628 (and tp!1134082 tp!1134080))))

(declare-fun b!3727447 () Bool)

(assert (=> b!3727447 (= e!2306628 tp_is_empty!18841)))

(assert (=> b!3727087 (= tp!1134031 e!2306628)))

(assert (= (and b!3727087 ((_ is ElementMatch!10913) (regTwo!22339 r!26968))) b!3727447))

(assert (= (and b!3727087 ((_ is Concat!17184) (regTwo!22339 r!26968))) b!3727448))

(assert (= (and b!3727087 ((_ is Star!10913) (regTwo!22339 r!26968))) b!3727449))

(assert (= (and b!3727087 ((_ is Union!10913) (regTwo!22339 r!26968))) b!3727450))

(check-sat (not bm!271666) (not b!3727437) (not b!3727433) (not bm!271722) (not d!1090070) (not bm!271693) (not bm!271628) (not b!3727442) (not bm!271632) (not bm!271671) (not b!3727440) (not bm!271629) (not bm!271727) (not d!1090064) (not b!3727251) (not bm!271721) (not b!3727448) (not b!3727426) (not d!1090072) (not bm!271674) tp_is_empty!18841 (not b!3727438) (not b!3727441) (not d!1090054) (not bm!271667) (not bm!271672) (not b!3727436) (not b!3727162) (not b!3727424) (not bm!271670) (not bm!271726) (not d!1090086) (not b!3727425) (not b!3727449) (not bm!271664) (not b!3727432) (not b!3727289) (not b!3727373) (not bm!271668) (not bm!271694) (not b!3727224) (not b!3727450) (not b!3727378) (not b!3727434) (not bm!271675) (not bm!271631))
(check-sat)
(get-model)

(declare-fun b!3727476 () Bool)

(declare-fun e!2306637 () List!39794)

(assert (=> b!3727476 (= e!2306637 (Cons!39670 (h!45090 (ite c!644951 call!271670 call!271672)) (++!9837 (t!302477 (ite c!644951 call!271670 call!271672)) (ite c!644951 call!271672 call!271670))))))

(declare-fun d!1090094 () Bool)

(declare-fun e!2306638 () Bool)

(assert (=> d!1090094 e!2306638))

(declare-fun res!1513911 () Bool)

(assert (=> d!1090094 (=> (not res!1513911) (not e!2306638))))

(declare-fun lt!1298467 () List!39794)

(assert (=> d!1090094 (= res!1513911 (= (content!5770 lt!1298467) ((_ map or) (content!5770 (ite c!644951 call!271670 call!271672)) (content!5770 (ite c!644951 call!271672 call!271670)))))))

(assert (=> d!1090094 (= lt!1298467 e!2306637)))

(declare-fun c!645030 () Bool)

(assert (=> d!1090094 (= c!645030 ((_ is Nil!39670) (ite c!644951 call!271670 call!271672)))))

(assert (=> d!1090094 (= (++!9837 (ite c!644951 call!271670 call!271672) (ite c!644951 call!271672 call!271670)) lt!1298467)))

(declare-fun b!3727477 () Bool)

(declare-fun res!1513912 () Bool)

(assert (=> b!3727477 (=> (not res!1513912) (not e!2306638))))

(declare-fun size!30031 (List!39794) Int)

(assert (=> b!3727477 (= res!1513912 (= (size!30031 lt!1298467) (+ (size!30031 (ite c!644951 call!271670 call!271672)) (size!30031 (ite c!644951 call!271672 call!271670)))))))

(declare-fun b!3727475 () Bool)

(assert (=> b!3727475 (= e!2306637 (ite c!644951 call!271672 call!271670))))

(declare-fun b!3727478 () Bool)

(assert (=> b!3727478 (= e!2306638 (or (not (= (ite c!644951 call!271672 call!271670) Nil!39670)) (= lt!1298467 (ite c!644951 call!271670 call!271672))))))

(assert (= (and d!1090094 c!645030) b!3727475))

(assert (= (and d!1090094 (not c!645030)) b!3727476))

(assert (= (and d!1090094 res!1513911) b!3727477))

(assert (= (and b!3727477 res!1513912) b!3727478))

(declare-fun m!4228481 () Bool)

(assert (=> b!3727476 m!4228481))

(declare-fun m!4228483 () Bool)

(assert (=> d!1090094 m!4228483))

(declare-fun m!4228485 () Bool)

(assert (=> d!1090094 m!4228485))

(declare-fun m!4228487 () Bool)

(assert (=> d!1090094 m!4228487))

(declare-fun m!4228489 () Bool)

(assert (=> b!3727477 m!4228489))

(declare-fun m!4228491 () Bool)

(assert (=> b!3727477 m!4228491))

(declare-fun m!4228493 () Bool)

(assert (=> b!3727477 m!4228493))

(assert (=> bm!271667 d!1090094))

(declare-fun d!1090096 () Bool)

(declare-fun nullableFct!1082 (Regex!10913) Bool)

(assert (=> d!1090096 (= (nullable!3821 (regOne!22338 (regOne!22339 r!26968))) (nullableFct!1082 (regOne!22338 (regOne!22339 r!26968))))))

(declare-fun bs!575048 () Bool)

(assert (= bs!575048 d!1090096))

(declare-fun m!4228495 () Bool)

(assert (=> bs!575048 m!4228495))

(assert (=> b!3727373 d!1090096))

(declare-fun b!3727479 () Bool)

(declare-fun e!2306639 () List!39794)

(declare-fun e!2306642 () List!39794)

(assert (=> b!3727479 (= e!2306639 e!2306642)))

(declare-fun c!645032 () Bool)

(assert (=> b!3727479 (= c!645032 ((_ is ElementMatch!10913) (ite c!644952 (reg!11242 r!26968) (ite c!644955 (regTwo!22339 r!26968) (regOne!22338 r!26968)))))))

(declare-fun c!645034 () Bool)

(declare-fun bm!271734 () Bool)

(declare-fun call!271740 () List!39794)

(assert (=> bm!271734 (= call!271740 (usedCharacters!1176 (ite c!645034 (regOne!22339 (ite c!644952 (reg!11242 r!26968) (ite c!644955 (regTwo!22339 r!26968) (regOne!22338 r!26968)))) (regTwo!22338 (ite c!644952 (reg!11242 r!26968) (ite c!644955 (regTwo!22339 r!26968) (regOne!22338 r!26968)))))))))

(declare-fun b!3727480 () Bool)

(assert (=> b!3727480 (= e!2306642 (Cons!39670 (c!644899 (ite c!644952 (reg!11242 r!26968) (ite c!644955 (regTwo!22339 r!26968) (regOne!22338 r!26968)))) Nil!39670))))

(declare-fun bm!271735 () Bool)

(declare-fun call!271742 () List!39794)

(declare-fun call!271741 () List!39794)

(assert (=> bm!271735 (= call!271742 call!271741)))

(declare-fun bm!271736 () Bool)

(declare-fun c!645031 () Bool)

(assert (=> bm!271736 (= call!271741 (usedCharacters!1176 (ite c!645031 (reg!11242 (ite c!644952 (reg!11242 r!26968) (ite c!644955 (regTwo!22339 r!26968) (regOne!22338 r!26968)))) (ite c!645034 (regTwo!22339 (ite c!644952 (reg!11242 r!26968) (ite c!644955 (regTwo!22339 r!26968) (regOne!22338 r!26968)))) (regOne!22338 (ite c!644952 (reg!11242 r!26968) (ite c!644955 (regTwo!22339 r!26968) (regOne!22338 r!26968))))))))))

(declare-fun b!3727482 () Bool)

(declare-fun e!2306640 () List!39794)

(declare-fun call!271739 () List!39794)

(assert (=> b!3727482 (= e!2306640 call!271739)))

(declare-fun b!3727483 () Bool)

(assert (=> b!3727483 (= e!2306640 call!271739)))

(declare-fun b!3727484 () Bool)

(assert (=> b!3727484 (= c!645031 ((_ is Star!10913) (ite c!644952 (reg!11242 r!26968) (ite c!644955 (regTwo!22339 r!26968) (regOne!22338 r!26968)))))))

(declare-fun e!2306641 () List!39794)

(assert (=> b!3727484 (= e!2306642 e!2306641)))

(declare-fun bm!271737 () Bool)

(assert (=> bm!271737 (= call!271739 (++!9837 (ite c!645034 call!271740 call!271742) (ite c!645034 call!271742 call!271740)))))

(declare-fun b!3727481 () Bool)

(assert (=> b!3727481 (= e!2306641 e!2306640)))

(assert (=> b!3727481 (= c!645034 ((_ is Union!10913) (ite c!644952 (reg!11242 r!26968) (ite c!644955 (regTwo!22339 r!26968) (regOne!22338 r!26968)))))))

(declare-fun c!645033 () Bool)

(declare-fun d!1090098 () Bool)

(assert (=> d!1090098 (= c!645033 (or ((_ is EmptyExpr!10913) (ite c!644952 (reg!11242 r!26968) (ite c!644955 (regTwo!22339 r!26968) (regOne!22338 r!26968)))) ((_ is EmptyLang!10913) (ite c!644952 (reg!11242 r!26968) (ite c!644955 (regTwo!22339 r!26968) (regOne!22338 r!26968))))))))

(assert (=> d!1090098 (= (usedCharacters!1176 (ite c!644952 (reg!11242 r!26968) (ite c!644955 (regTwo!22339 r!26968) (regOne!22338 r!26968)))) e!2306639)))

(declare-fun b!3727485 () Bool)

(assert (=> b!3727485 (= e!2306639 Nil!39670)))

(declare-fun b!3727486 () Bool)

(assert (=> b!3727486 (= e!2306641 call!271741)))

(assert (= (and d!1090098 c!645033) b!3727485))

(assert (= (and d!1090098 (not c!645033)) b!3727479))

(assert (= (and b!3727479 c!645032) b!3727480))

(assert (= (and b!3727479 (not c!645032)) b!3727484))

(assert (= (and b!3727484 c!645031) b!3727486))

(assert (= (and b!3727484 (not c!645031)) b!3727481))

(assert (= (and b!3727481 c!645034) b!3727483))

(assert (= (and b!3727481 (not c!645034)) b!3727482))

(assert (= (or b!3727483 b!3727482) bm!271734))

(assert (= (or b!3727483 b!3727482) bm!271735))

(assert (= (or b!3727483 b!3727482) bm!271737))

(assert (= (or b!3727486 bm!271735) bm!271736))

(declare-fun m!4228497 () Bool)

(assert (=> bm!271734 m!4228497))

(declare-fun m!4228499 () Bool)

(assert (=> bm!271736 m!4228499))

(declare-fun m!4228501 () Bool)

(assert (=> bm!271737 m!4228501))

(assert (=> bm!271670 d!1090098))

(assert (=> d!1090072 d!1090070))

(assert (=> d!1090072 d!1090068))

(assert (=> d!1090072 d!1090086))

(declare-fun d!1090100 () Bool)

(assert (=> d!1090100 (not (contains!8006 (usedCharacters!1176 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) cNot!42))))

(assert (=> d!1090100 true))

(declare-fun _$133!104 () Unit!57576)

(assert (=> d!1090100 (= (choose!22225 (regOne!22339 r!26968) c!13797 cNot!42) _$133!104)))

(declare-fun bs!575049 () Bool)

(assert (= bs!575049 d!1090100))

(assert (=> bs!575049 m!4228335))

(assert (=> bs!575049 m!4228335))

(assert (=> bs!575049 m!4228331))

(assert (=> bs!575049 m!4228331))

(assert (=> bs!575049 m!4228333))

(assert (=> d!1090072 d!1090100))

(declare-fun call!271743 () Int)

(declare-fun c!645039 () Bool)

(declare-fun bm!271738 () Bool)

(assert (=> bm!271738 (= call!271743 (RegexPrimitiveSize!141 (ite c!645039 (regTwo!22338 (ite c!644918 (regTwo!22338 r!26968) (regTwo!22339 r!26968))) (regTwo!22339 (ite c!644918 (regTwo!22338 r!26968) (regTwo!22339 r!26968))))))))

(declare-fun c!645037 () Bool)

(declare-fun bm!271739 () Bool)

(declare-fun call!271744 () Int)

(assert (=> bm!271739 (= call!271744 (RegexPrimitiveSize!141 (ite c!645039 (regOne!22338 (ite c!644918 (regTwo!22338 r!26968) (regTwo!22339 r!26968))) (ite c!645037 (reg!11242 (ite c!644918 (regTwo!22338 r!26968) (regTwo!22339 r!26968))) (regOne!22339 (ite c!644918 (regTwo!22338 r!26968) (regTwo!22339 r!26968)))))))))

(declare-fun b!3727487 () Bool)

(declare-fun c!645036 () Bool)

(assert (=> b!3727487 (= c!645036 ((_ is EmptyExpr!10913) (ite c!644918 (regTwo!22338 r!26968) (regTwo!22339 r!26968))))))

(declare-fun e!2306643 () Int)

(declare-fun e!2306647 () Int)

(assert (=> b!3727487 (= e!2306643 e!2306647)))

(declare-fun d!1090102 () Bool)

(declare-fun lt!1298468 () Int)

(assert (=> d!1090102 (>= lt!1298468 0)))

(declare-fun e!2306644 () Int)

(assert (=> d!1090102 (= lt!1298468 e!2306644)))

(declare-fun c!645038 () Bool)

(assert (=> d!1090102 (= c!645038 ((_ is ElementMatch!10913) (ite c!644918 (regTwo!22338 r!26968) (regTwo!22339 r!26968))))))

(assert (=> d!1090102 (= (RegexPrimitiveSize!141 (ite c!644918 (regTwo!22338 r!26968) (regTwo!22339 r!26968))) lt!1298468)))

(declare-fun b!3727488 () Bool)

(assert (=> b!3727488 (= e!2306644 1)))

(declare-fun bm!271740 () Bool)

(declare-fun call!271745 () Int)

(assert (=> bm!271740 (= call!271745 call!271744)))

(declare-fun b!3727489 () Bool)

(declare-fun e!2306645 () Int)

(assert (=> b!3727489 (= e!2306645 (+ 1 call!271745))))

(declare-fun b!3727490 () Bool)

(assert (=> b!3727490 (= e!2306644 e!2306643)))

(assert (=> b!3727490 (= c!645039 ((_ is Concat!17184) (ite c!644918 (regTwo!22338 r!26968) (regTwo!22339 r!26968))))))

(declare-fun b!3727491 () Bool)

(declare-fun e!2306646 () Int)

(assert (=> b!3727491 (= e!2306646 (+ 1 call!271745 call!271743))))

(declare-fun b!3727492 () Bool)

(assert (=> b!3727492 (= e!2306647 0)))

(declare-fun b!3727493 () Bool)

(declare-fun c!645040 () Bool)

(assert (=> b!3727493 (= c!645040 ((_ is EmptyLang!10913) (ite c!644918 (regTwo!22338 r!26968) (regTwo!22339 r!26968))))))

(assert (=> b!3727493 (= e!2306645 e!2306646)))

(declare-fun b!3727494 () Bool)

(assert (=> b!3727494 (= e!2306646 0)))

(declare-fun b!3727495 () Bool)

(assert (=> b!3727495 (= e!2306643 (+ 1 call!271744 call!271743))))

(declare-fun b!3727496 () Bool)

(assert (=> b!3727496 (= e!2306647 e!2306645)))

(assert (=> b!3727496 (= c!645037 ((_ is Star!10913) (ite c!644918 (regTwo!22338 r!26968) (regTwo!22339 r!26968))))))

(assert (= (and d!1090102 c!645038) b!3727488))

(assert (= (and d!1090102 (not c!645038)) b!3727490))

(assert (= (and b!3727490 c!645039) b!3727495))

(assert (= (and b!3727490 (not c!645039)) b!3727487))

(assert (= (and b!3727487 c!645036) b!3727492))

(assert (= (and b!3727487 (not c!645036)) b!3727496))

(assert (= (and b!3727496 c!645037) b!3727489))

(assert (= (and b!3727496 (not c!645037)) b!3727493))

(assert (= (and b!3727493 c!645040) b!3727494))

(assert (= (and b!3727493 (not c!645040)) b!3727491))

(assert (= (or b!3727489 b!3727491) bm!271740))

(assert (= (or b!3727495 bm!271740) bm!271739))

(assert (= (or b!3727495 b!3727491) bm!271738))

(declare-fun m!4228503 () Bool)

(assert (=> bm!271738 m!4228503))

(declare-fun m!4228505 () Bool)

(assert (=> bm!271739 m!4228505))

(assert (=> bm!271631 d!1090102))

(declare-fun e!2306648 () List!39794)

(declare-fun b!3727498 () Bool)

(assert (=> b!3727498 (= e!2306648 (Cons!39670 (h!45090 (ite c!644955 call!271674 call!271676)) (++!9837 (t!302477 (ite c!644955 call!271674 call!271676)) (ite c!644955 call!271676 call!271674))))))

(declare-fun d!1090104 () Bool)

(declare-fun e!2306649 () Bool)

(assert (=> d!1090104 e!2306649))

(declare-fun res!1513913 () Bool)

(assert (=> d!1090104 (=> (not res!1513913) (not e!2306649))))

(declare-fun lt!1298469 () List!39794)

(assert (=> d!1090104 (= res!1513913 (= (content!5770 lt!1298469) ((_ map or) (content!5770 (ite c!644955 call!271674 call!271676)) (content!5770 (ite c!644955 call!271676 call!271674)))))))

(assert (=> d!1090104 (= lt!1298469 e!2306648)))

(declare-fun c!645041 () Bool)

(assert (=> d!1090104 (= c!645041 ((_ is Nil!39670) (ite c!644955 call!271674 call!271676)))))

(assert (=> d!1090104 (= (++!9837 (ite c!644955 call!271674 call!271676) (ite c!644955 call!271676 call!271674)) lt!1298469)))

(declare-fun b!3727499 () Bool)

(declare-fun res!1513914 () Bool)

(assert (=> b!3727499 (=> (not res!1513914) (not e!2306649))))

(assert (=> b!3727499 (= res!1513914 (= (size!30031 lt!1298469) (+ (size!30031 (ite c!644955 call!271674 call!271676)) (size!30031 (ite c!644955 call!271676 call!271674)))))))

(declare-fun b!3727497 () Bool)

(assert (=> b!3727497 (= e!2306648 (ite c!644955 call!271676 call!271674))))

(declare-fun b!3727500 () Bool)

(assert (=> b!3727500 (= e!2306649 (or (not (= (ite c!644955 call!271676 call!271674) Nil!39670)) (= lt!1298469 (ite c!644955 call!271674 call!271676))))))

(assert (= (and d!1090104 c!645041) b!3727497))

(assert (= (and d!1090104 (not c!645041)) b!3727498))

(assert (= (and d!1090104 res!1513913) b!3727499))

(assert (= (and b!3727499 res!1513914) b!3727500))

(declare-fun m!4228507 () Bool)

(assert (=> b!3727498 m!4228507))

(declare-fun m!4228509 () Bool)

(assert (=> d!1090104 m!4228509))

(declare-fun m!4228511 () Bool)

(assert (=> d!1090104 m!4228511))

(declare-fun m!4228513 () Bool)

(assert (=> d!1090104 m!4228513))

(declare-fun m!4228515 () Bool)

(assert (=> b!3727499 m!4228515))

(declare-fun m!4228517 () Bool)

(assert (=> b!3727499 m!4228517))

(declare-fun m!4228519 () Bool)

(assert (=> b!3727499 m!4228519))

(assert (=> bm!271671 d!1090104))

(declare-fun bm!271741 () Bool)

(declare-fun call!271748 () Bool)

(declare-fun call!271747 () Bool)

(assert (=> bm!271741 (= call!271748 call!271747)))

(declare-fun b!3727501 () Bool)

(declare-fun e!2306653 () Bool)

(declare-fun e!2306654 () Bool)

(assert (=> b!3727501 (= e!2306653 e!2306654)))

(declare-fun res!1513918 () Bool)

(assert (=> b!3727501 (= res!1513918 (not (nullable!3821 (reg!11242 lt!1298462))))))

(assert (=> b!3727501 (=> (not res!1513918) (not e!2306654))))

(declare-fun b!3727502 () Bool)

(declare-fun e!2306651 () Bool)

(assert (=> b!3727502 (= e!2306653 e!2306651)))

(declare-fun c!645043 () Bool)

(assert (=> b!3727502 (= c!645043 ((_ is Union!10913) lt!1298462))))

(declare-fun d!1090106 () Bool)

(declare-fun res!1513916 () Bool)

(declare-fun e!2306650 () Bool)

(assert (=> d!1090106 (=> res!1513916 e!2306650)))

(assert (=> d!1090106 (= res!1513916 ((_ is ElementMatch!10913) lt!1298462))))

(assert (=> d!1090106 (= (validRegex!5020 lt!1298462) e!2306650)))

(declare-fun b!3727503 () Bool)

(declare-fun res!1513919 () Bool)

(declare-fun e!2306656 () Bool)

(assert (=> b!3727503 (=> (not res!1513919) (not e!2306656))))

(assert (=> b!3727503 (= res!1513919 call!271748)))

(assert (=> b!3727503 (= e!2306651 e!2306656)))

(declare-fun b!3727504 () Bool)

(declare-fun e!2306655 () Bool)

(declare-fun call!271746 () Bool)

(assert (=> b!3727504 (= e!2306655 call!271746)))

(declare-fun c!645042 () Bool)

(declare-fun bm!271742 () Bool)

(assert (=> bm!271742 (= call!271747 (validRegex!5020 (ite c!645042 (reg!11242 lt!1298462) (ite c!645043 (regOne!22339 lt!1298462) (regOne!22338 lt!1298462)))))))

(declare-fun b!3727505 () Bool)

(assert (=> b!3727505 (= e!2306654 call!271747)))

(declare-fun bm!271743 () Bool)

(assert (=> bm!271743 (= call!271746 (validRegex!5020 (ite c!645043 (regTwo!22339 lt!1298462) (regTwo!22338 lt!1298462))))))

(declare-fun b!3727506 () Bool)

(declare-fun e!2306652 () Bool)

(assert (=> b!3727506 (= e!2306652 e!2306655)))

(declare-fun res!1513917 () Bool)

(assert (=> b!3727506 (=> (not res!1513917) (not e!2306655))))

(assert (=> b!3727506 (= res!1513917 call!271748)))

(declare-fun b!3727507 () Bool)

(assert (=> b!3727507 (= e!2306656 call!271746)))

(declare-fun b!3727508 () Bool)

(declare-fun res!1513915 () Bool)

(assert (=> b!3727508 (=> res!1513915 e!2306652)))

(assert (=> b!3727508 (= res!1513915 (not ((_ is Concat!17184) lt!1298462)))))

(assert (=> b!3727508 (= e!2306651 e!2306652)))

(declare-fun b!3727509 () Bool)

(assert (=> b!3727509 (= e!2306650 e!2306653)))

(assert (=> b!3727509 (= c!645042 ((_ is Star!10913) lt!1298462))))

(assert (= (and d!1090106 (not res!1513916)) b!3727509))

(assert (= (and b!3727509 c!645042) b!3727501))

(assert (= (and b!3727509 (not c!645042)) b!3727502))

(assert (= (and b!3727501 res!1513918) b!3727505))

(assert (= (and b!3727502 c!645043) b!3727503))

(assert (= (and b!3727502 (not c!645043)) b!3727508))

(assert (= (and b!3727503 res!1513919) b!3727507))

(assert (= (and b!3727508 (not res!1513915)) b!3727506))

(assert (= (and b!3727506 res!1513917) b!3727504))

(assert (= (or b!3727507 b!3727504) bm!271743))

(assert (= (or b!3727503 b!3727506) bm!271741))

(assert (= (or b!3727505 bm!271741) bm!271742))

(declare-fun m!4228521 () Bool)

(assert (=> b!3727501 m!4228521))

(declare-fun m!4228523 () Bool)

(assert (=> bm!271742 m!4228523))

(declare-fun m!4228525 () Bool)

(assert (=> bm!271743 m!4228525))

(assert (=> d!1090086 d!1090106))

(declare-fun bm!271744 () Bool)

(declare-fun call!271751 () Bool)

(declare-fun call!271750 () Bool)

(assert (=> bm!271744 (= call!271751 call!271750)))

(declare-fun b!3727510 () Bool)

(declare-fun e!2306660 () Bool)

(declare-fun e!2306661 () Bool)

(assert (=> b!3727510 (= e!2306660 e!2306661)))

(declare-fun res!1513923 () Bool)

(assert (=> b!3727510 (= res!1513923 (not (nullable!3821 (reg!11242 (regOne!22339 r!26968)))))))

(assert (=> b!3727510 (=> (not res!1513923) (not e!2306661))))

(declare-fun b!3727511 () Bool)

(declare-fun e!2306658 () Bool)

(assert (=> b!3727511 (= e!2306660 e!2306658)))

(declare-fun c!645045 () Bool)

(assert (=> b!3727511 (= c!645045 ((_ is Union!10913) (regOne!22339 r!26968)))))

(declare-fun d!1090108 () Bool)

(declare-fun res!1513921 () Bool)

(declare-fun e!2306657 () Bool)

(assert (=> d!1090108 (=> res!1513921 e!2306657)))

(assert (=> d!1090108 (= res!1513921 ((_ is ElementMatch!10913) (regOne!22339 r!26968)))))

(assert (=> d!1090108 (= (validRegex!5020 (regOne!22339 r!26968)) e!2306657)))

(declare-fun b!3727512 () Bool)

(declare-fun res!1513924 () Bool)

(declare-fun e!2306663 () Bool)

(assert (=> b!3727512 (=> (not res!1513924) (not e!2306663))))

(assert (=> b!3727512 (= res!1513924 call!271751)))

(assert (=> b!3727512 (= e!2306658 e!2306663)))

(declare-fun b!3727513 () Bool)

(declare-fun e!2306662 () Bool)

(declare-fun call!271749 () Bool)

(assert (=> b!3727513 (= e!2306662 call!271749)))

(declare-fun bm!271745 () Bool)

(declare-fun c!645044 () Bool)

(assert (=> bm!271745 (= call!271750 (validRegex!5020 (ite c!645044 (reg!11242 (regOne!22339 r!26968)) (ite c!645045 (regOne!22339 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968))))))))

(declare-fun b!3727514 () Bool)

(assert (=> b!3727514 (= e!2306661 call!271750)))

(declare-fun bm!271746 () Bool)

(assert (=> bm!271746 (= call!271749 (validRegex!5020 (ite c!645045 (regTwo!22339 (regOne!22339 r!26968)) (regTwo!22338 (regOne!22339 r!26968)))))))

(declare-fun b!3727515 () Bool)

(declare-fun e!2306659 () Bool)

(assert (=> b!3727515 (= e!2306659 e!2306662)))

(declare-fun res!1513922 () Bool)

(assert (=> b!3727515 (=> (not res!1513922) (not e!2306662))))

(assert (=> b!3727515 (= res!1513922 call!271751)))

(declare-fun b!3727516 () Bool)

(assert (=> b!3727516 (= e!2306663 call!271749)))

(declare-fun b!3727517 () Bool)

(declare-fun res!1513920 () Bool)

(assert (=> b!3727517 (=> res!1513920 e!2306659)))

(assert (=> b!3727517 (= res!1513920 (not ((_ is Concat!17184) (regOne!22339 r!26968))))))

(assert (=> b!3727517 (= e!2306658 e!2306659)))

(declare-fun b!3727518 () Bool)

(assert (=> b!3727518 (= e!2306657 e!2306660)))

(assert (=> b!3727518 (= c!645044 ((_ is Star!10913) (regOne!22339 r!26968)))))

(assert (= (and d!1090108 (not res!1513921)) b!3727518))

(assert (= (and b!3727518 c!645044) b!3727510))

(assert (= (and b!3727518 (not c!645044)) b!3727511))

(assert (= (and b!3727510 res!1513923) b!3727514))

(assert (= (and b!3727511 c!645045) b!3727512))

(assert (= (and b!3727511 (not c!645045)) b!3727517))

(assert (= (and b!3727512 res!1513924) b!3727516))

(assert (= (and b!3727517 (not res!1513920)) b!3727515))

(assert (= (and b!3727515 res!1513922) b!3727513))

(assert (= (or b!3727516 b!3727513) bm!271746))

(assert (= (or b!3727512 b!3727515) bm!271744))

(assert (= (or b!3727514 bm!271744) bm!271745))

(declare-fun m!4228527 () Bool)

(assert (=> b!3727510 m!4228527))

(declare-fun m!4228529 () Bool)

(assert (=> bm!271745 m!4228529))

(declare-fun m!4228531 () Bool)

(assert (=> bm!271746 m!4228531))

(assert (=> d!1090086 d!1090108))

(declare-fun b!3727519 () Bool)

(declare-fun e!2306664 () List!39794)

(declare-fun e!2306667 () List!39794)

(assert (=> b!3727519 (= e!2306664 e!2306667)))

(declare-fun c!645047 () Bool)

(assert (=> b!3727519 (= c!645047 ((_ is ElementMatch!10913) (ite c!644959 (regOne!22339 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (regTwo!22338 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)))))))

(declare-fun call!271753 () List!39794)

(declare-fun bm!271747 () Bool)

(declare-fun c!645049 () Bool)

(assert (=> bm!271747 (= call!271753 (usedCharacters!1176 (ite c!645049 (regOne!22339 (ite c!644959 (regOne!22339 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (regTwo!22338 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)))) (regTwo!22338 (ite c!644959 (regOne!22339 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (regTwo!22338 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)))))))))

(declare-fun b!3727520 () Bool)

(assert (=> b!3727520 (= e!2306667 (Cons!39670 (c!644899 (ite c!644959 (regOne!22339 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (regTwo!22338 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)))) Nil!39670))))

(declare-fun bm!271748 () Bool)

(declare-fun call!271755 () List!39794)

(declare-fun call!271754 () List!39794)

(assert (=> bm!271748 (= call!271755 call!271754)))

(declare-fun c!645046 () Bool)

(declare-fun bm!271749 () Bool)

(assert (=> bm!271749 (= call!271754 (usedCharacters!1176 (ite c!645046 (reg!11242 (ite c!644959 (regOne!22339 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (regTwo!22338 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)))) (ite c!645049 (regTwo!22339 (ite c!644959 (regOne!22339 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (regTwo!22338 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)))) (regOne!22338 (ite c!644959 (regOne!22339 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (regTwo!22338 (derivativeStep!3360 (regOne!22339 r!26968) c!13797))))))))))

(declare-fun b!3727522 () Bool)

(declare-fun e!2306665 () List!39794)

(declare-fun call!271752 () List!39794)

(assert (=> b!3727522 (= e!2306665 call!271752)))

(declare-fun b!3727523 () Bool)

(assert (=> b!3727523 (= e!2306665 call!271752)))

(declare-fun b!3727524 () Bool)

(assert (=> b!3727524 (= c!645046 ((_ is Star!10913) (ite c!644959 (regOne!22339 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (regTwo!22338 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)))))))

(declare-fun e!2306666 () List!39794)

(assert (=> b!3727524 (= e!2306667 e!2306666)))

(declare-fun bm!271750 () Bool)

(assert (=> bm!271750 (= call!271752 (++!9837 (ite c!645049 call!271753 call!271755) (ite c!645049 call!271755 call!271753)))))

(declare-fun b!3727521 () Bool)

(assert (=> b!3727521 (= e!2306666 e!2306665)))

(assert (=> b!3727521 (= c!645049 ((_ is Union!10913) (ite c!644959 (regOne!22339 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (regTwo!22338 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)))))))

(declare-fun c!645048 () Bool)

(declare-fun d!1090110 () Bool)

(assert (=> d!1090110 (= c!645048 (or ((_ is EmptyExpr!10913) (ite c!644959 (regOne!22339 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (regTwo!22338 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)))) ((_ is EmptyLang!10913) (ite c!644959 (regOne!22339 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (regTwo!22338 (derivativeStep!3360 (regOne!22339 r!26968) c!13797))))))))

(assert (=> d!1090110 (= (usedCharacters!1176 (ite c!644959 (regOne!22339 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (regTwo!22338 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)))) e!2306664)))

(declare-fun b!3727525 () Bool)

(assert (=> b!3727525 (= e!2306664 Nil!39670)))

(declare-fun b!3727526 () Bool)

(assert (=> b!3727526 (= e!2306666 call!271754)))

(assert (= (and d!1090110 c!645048) b!3727525))

(assert (= (and d!1090110 (not c!645048)) b!3727519))

(assert (= (and b!3727519 c!645047) b!3727520))

(assert (= (and b!3727519 (not c!645047)) b!3727524))

(assert (= (and b!3727524 c!645046) b!3727526))

(assert (= (and b!3727524 (not c!645046)) b!3727521))

(assert (= (and b!3727521 c!645049) b!3727523))

(assert (= (and b!3727521 (not c!645049)) b!3727522))

(assert (= (or b!3727523 b!3727522) bm!271747))

(assert (= (or b!3727523 b!3727522) bm!271748))

(assert (= (or b!3727523 b!3727522) bm!271750))

(assert (= (or b!3727526 bm!271748) bm!271749))

(declare-fun m!4228533 () Bool)

(assert (=> bm!271747 m!4228533))

(declare-fun m!4228535 () Bool)

(assert (=> bm!271749 m!4228535))

(declare-fun m!4228537 () Bool)

(assert (=> bm!271750 m!4228537))

(assert (=> bm!271672 d!1090110))

(declare-fun c!645053 () Bool)

(declare-fun bm!271751 () Bool)

(declare-fun call!271756 () Int)

(assert (=> bm!271751 (= call!271756 (RegexPrimitiveSize!141 (ite c!645053 (regTwo!22338 (ite c!644918 (regOne!22338 r!26968) (ite c!644916 (reg!11242 r!26968) (regOne!22339 r!26968)))) (regTwo!22339 (ite c!644918 (regOne!22338 r!26968) (ite c!644916 (reg!11242 r!26968) (regOne!22339 r!26968)))))))))

(declare-fun call!271757 () Int)

(declare-fun c!645051 () Bool)

(declare-fun bm!271752 () Bool)

(assert (=> bm!271752 (= call!271757 (RegexPrimitiveSize!141 (ite c!645053 (regOne!22338 (ite c!644918 (regOne!22338 r!26968) (ite c!644916 (reg!11242 r!26968) (regOne!22339 r!26968)))) (ite c!645051 (reg!11242 (ite c!644918 (regOne!22338 r!26968) (ite c!644916 (reg!11242 r!26968) (regOne!22339 r!26968)))) (regOne!22339 (ite c!644918 (regOne!22338 r!26968) (ite c!644916 (reg!11242 r!26968) (regOne!22339 r!26968))))))))))

(declare-fun c!645050 () Bool)

(declare-fun b!3727527 () Bool)

(assert (=> b!3727527 (= c!645050 ((_ is EmptyExpr!10913) (ite c!644918 (regOne!22338 r!26968) (ite c!644916 (reg!11242 r!26968) (regOne!22339 r!26968)))))))

(declare-fun e!2306668 () Int)

(declare-fun e!2306672 () Int)

(assert (=> b!3727527 (= e!2306668 e!2306672)))

(declare-fun d!1090112 () Bool)

(declare-fun lt!1298470 () Int)

(assert (=> d!1090112 (>= lt!1298470 0)))

(declare-fun e!2306669 () Int)

(assert (=> d!1090112 (= lt!1298470 e!2306669)))

(declare-fun c!645052 () Bool)

(assert (=> d!1090112 (= c!645052 ((_ is ElementMatch!10913) (ite c!644918 (regOne!22338 r!26968) (ite c!644916 (reg!11242 r!26968) (regOne!22339 r!26968)))))))

(assert (=> d!1090112 (= (RegexPrimitiveSize!141 (ite c!644918 (regOne!22338 r!26968) (ite c!644916 (reg!11242 r!26968) (regOne!22339 r!26968)))) lt!1298470)))

(declare-fun b!3727528 () Bool)

(assert (=> b!3727528 (= e!2306669 1)))

(declare-fun bm!271753 () Bool)

(declare-fun call!271758 () Int)

(assert (=> bm!271753 (= call!271758 call!271757)))

(declare-fun b!3727529 () Bool)

(declare-fun e!2306670 () Int)

(assert (=> b!3727529 (= e!2306670 (+ 1 call!271758))))

(declare-fun b!3727530 () Bool)

(assert (=> b!3727530 (= e!2306669 e!2306668)))

(assert (=> b!3727530 (= c!645053 ((_ is Concat!17184) (ite c!644918 (regOne!22338 r!26968) (ite c!644916 (reg!11242 r!26968) (regOne!22339 r!26968)))))))

(declare-fun b!3727531 () Bool)

(declare-fun e!2306671 () Int)

(assert (=> b!3727531 (= e!2306671 (+ 1 call!271758 call!271756))))

(declare-fun b!3727532 () Bool)

(assert (=> b!3727532 (= e!2306672 0)))

(declare-fun c!645054 () Bool)

(declare-fun b!3727533 () Bool)

(assert (=> b!3727533 (= c!645054 ((_ is EmptyLang!10913) (ite c!644918 (regOne!22338 r!26968) (ite c!644916 (reg!11242 r!26968) (regOne!22339 r!26968)))))))

(assert (=> b!3727533 (= e!2306670 e!2306671)))

(declare-fun b!3727534 () Bool)

(assert (=> b!3727534 (= e!2306671 0)))

(declare-fun b!3727535 () Bool)

(assert (=> b!3727535 (= e!2306668 (+ 1 call!271757 call!271756))))

(declare-fun b!3727536 () Bool)

(assert (=> b!3727536 (= e!2306672 e!2306670)))

(assert (=> b!3727536 (= c!645051 ((_ is Star!10913) (ite c!644918 (regOne!22338 r!26968) (ite c!644916 (reg!11242 r!26968) (regOne!22339 r!26968)))))))

(assert (= (and d!1090112 c!645052) b!3727528))

(assert (= (and d!1090112 (not c!645052)) b!3727530))

(assert (= (and b!3727530 c!645053) b!3727535))

(assert (= (and b!3727530 (not c!645053)) b!3727527))

(assert (= (and b!3727527 c!645050) b!3727532))

(assert (= (and b!3727527 (not c!645050)) b!3727536))

(assert (= (and b!3727536 c!645051) b!3727529))

(assert (= (and b!3727536 (not c!645051)) b!3727533))

(assert (= (and b!3727533 c!645054) b!3727534))

(assert (= (and b!3727533 (not c!645054)) b!3727531))

(assert (= (or b!3727529 b!3727531) bm!271753))

(assert (= (or b!3727535 bm!271753) bm!271752))

(assert (= (or b!3727535 b!3727531) bm!271751))

(declare-fun m!4228539 () Bool)

(assert (=> bm!271751 m!4228539))

(declare-fun m!4228541 () Bool)

(assert (=> bm!271752 m!4228541))

(assert (=> bm!271632 d!1090112))

(declare-fun d!1090114 () Bool)

(declare-fun c!645057 () Bool)

(assert (=> d!1090114 (= c!645057 ((_ is Nil!39670) (usedCharacters!1176 r!26968)))))

(declare-fun e!2306675 () (InoxSet C!22012))

(assert (=> d!1090114 (= (content!5770 (usedCharacters!1176 r!26968)) e!2306675)))

(declare-fun b!3727541 () Bool)

(assert (=> b!3727541 (= e!2306675 ((as const (Array C!22012 Bool)) false))))

(declare-fun b!3727542 () Bool)

(assert (=> b!3727542 (= e!2306675 ((_ map or) (store ((as const (Array C!22012 Bool)) false) (h!45090 (usedCharacters!1176 r!26968)) true) (content!5770 (t!302477 (usedCharacters!1176 r!26968)))))))

(assert (= (and d!1090114 c!645057) b!3727541))

(assert (= (and d!1090114 (not c!645057)) b!3727542))

(declare-fun m!4228543 () Bool)

(assert (=> b!3727542 m!4228543))

(declare-fun m!4228545 () Bool)

(assert (=> b!3727542 m!4228545))

(assert (=> d!1090064 d!1090114))

(declare-fun b!3727543 () Bool)

(declare-fun e!2306676 () List!39794)

(declare-fun e!2306679 () List!39794)

(assert (=> b!3727543 (= e!2306676 e!2306679)))

(declare-fun c!645059 () Bool)

(assert (=> b!3727543 (= c!645059 ((_ is ElementMatch!10913) (ite c!644951 (regOne!22339 (regTwo!22339 r!26968)) (regTwo!22338 (regTwo!22339 r!26968)))))))

(declare-fun c!645061 () Bool)

(declare-fun bm!271754 () Bool)

(declare-fun call!271760 () List!39794)

(assert (=> bm!271754 (= call!271760 (usedCharacters!1176 (ite c!645061 (regOne!22339 (ite c!644951 (regOne!22339 (regTwo!22339 r!26968)) (regTwo!22338 (regTwo!22339 r!26968)))) (regTwo!22338 (ite c!644951 (regOne!22339 (regTwo!22339 r!26968)) (regTwo!22338 (regTwo!22339 r!26968)))))))))

(declare-fun b!3727544 () Bool)

(assert (=> b!3727544 (= e!2306679 (Cons!39670 (c!644899 (ite c!644951 (regOne!22339 (regTwo!22339 r!26968)) (regTwo!22338 (regTwo!22339 r!26968)))) Nil!39670))))

(declare-fun bm!271755 () Bool)

(declare-fun call!271762 () List!39794)

(declare-fun call!271761 () List!39794)

(assert (=> bm!271755 (= call!271762 call!271761)))

(declare-fun c!645058 () Bool)

(declare-fun bm!271756 () Bool)

(assert (=> bm!271756 (= call!271761 (usedCharacters!1176 (ite c!645058 (reg!11242 (ite c!644951 (regOne!22339 (regTwo!22339 r!26968)) (regTwo!22338 (regTwo!22339 r!26968)))) (ite c!645061 (regTwo!22339 (ite c!644951 (regOne!22339 (regTwo!22339 r!26968)) (regTwo!22338 (regTwo!22339 r!26968)))) (regOne!22338 (ite c!644951 (regOne!22339 (regTwo!22339 r!26968)) (regTwo!22338 (regTwo!22339 r!26968))))))))))

(declare-fun b!3727546 () Bool)

(declare-fun e!2306677 () List!39794)

(declare-fun call!271759 () List!39794)

(assert (=> b!3727546 (= e!2306677 call!271759)))

(declare-fun b!3727547 () Bool)

(assert (=> b!3727547 (= e!2306677 call!271759)))

(declare-fun b!3727548 () Bool)

(assert (=> b!3727548 (= c!645058 ((_ is Star!10913) (ite c!644951 (regOne!22339 (regTwo!22339 r!26968)) (regTwo!22338 (regTwo!22339 r!26968)))))))

(declare-fun e!2306678 () List!39794)

(assert (=> b!3727548 (= e!2306679 e!2306678)))

(declare-fun bm!271757 () Bool)

(assert (=> bm!271757 (= call!271759 (++!9837 (ite c!645061 call!271760 call!271762) (ite c!645061 call!271762 call!271760)))))

(declare-fun b!3727545 () Bool)

(assert (=> b!3727545 (= e!2306678 e!2306677)))

(assert (=> b!3727545 (= c!645061 ((_ is Union!10913) (ite c!644951 (regOne!22339 (regTwo!22339 r!26968)) (regTwo!22338 (regTwo!22339 r!26968)))))))

(declare-fun d!1090116 () Bool)

(declare-fun c!645060 () Bool)

(assert (=> d!1090116 (= c!645060 (or ((_ is EmptyExpr!10913) (ite c!644951 (regOne!22339 (regTwo!22339 r!26968)) (regTwo!22338 (regTwo!22339 r!26968)))) ((_ is EmptyLang!10913) (ite c!644951 (regOne!22339 (regTwo!22339 r!26968)) (regTwo!22338 (regTwo!22339 r!26968))))))))

(assert (=> d!1090116 (= (usedCharacters!1176 (ite c!644951 (regOne!22339 (regTwo!22339 r!26968)) (regTwo!22338 (regTwo!22339 r!26968)))) e!2306676)))

(declare-fun b!3727549 () Bool)

(assert (=> b!3727549 (= e!2306676 Nil!39670)))

(declare-fun b!3727550 () Bool)

(assert (=> b!3727550 (= e!2306678 call!271761)))

(assert (= (and d!1090116 c!645060) b!3727549))

(assert (= (and d!1090116 (not c!645060)) b!3727543))

(assert (= (and b!3727543 c!645059) b!3727544))

(assert (= (and b!3727543 (not c!645059)) b!3727548))

(assert (= (and b!3727548 c!645058) b!3727550))

(assert (= (and b!3727548 (not c!645058)) b!3727545))

(assert (= (and b!3727545 c!645061) b!3727547))

(assert (= (and b!3727545 (not c!645061)) b!3727546))

(assert (= (or b!3727547 b!3727546) bm!271754))

(assert (= (or b!3727547 b!3727546) bm!271755))

(assert (= (or b!3727547 b!3727546) bm!271757))

(assert (= (or b!3727550 bm!271755) bm!271756))

(declare-fun m!4228547 () Bool)

(assert (=> bm!271754 m!4228547))

(declare-fun m!4228549 () Bool)

(assert (=> bm!271756 m!4228549))

(declare-fun m!4228551 () Bool)

(assert (=> bm!271757 m!4228551))

(assert (=> bm!271664 d!1090116))

(declare-fun b!3727551 () Bool)

(declare-fun e!2306683 () Regex!10913)

(declare-fun e!2306681 () Regex!10913)

(assert (=> b!3727551 (= e!2306683 e!2306681)))

(declare-fun c!645065 () Bool)

(assert (=> b!3727551 (= c!645065 ((_ is ElementMatch!10913) (ite c!645013 (regTwo!22339 (regOne!22339 r!26968)) (ite c!645011 (reg!11242 (regOne!22339 r!26968)) (ite c!645012 (regTwo!22338 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968)))))))))

(declare-fun b!3727552 () Bool)

(declare-fun e!2306684 () Regex!10913)

(declare-fun e!2306682 () Regex!10913)

(assert (=> b!3727552 (= e!2306684 e!2306682)))

(declare-fun c!645062 () Bool)

(assert (=> b!3727552 (= c!645062 ((_ is Star!10913) (ite c!645013 (regTwo!22339 (regOne!22339 r!26968)) (ite c!645011 (reg!11242 (regOne!22339 r!26968)) (ite c!645012 (regTwo!22338 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968)))))))))

(declare-fun bm!271758 () Bool)

(declare-fun call!271766 () Regex!10913)

(declare-fun c!645064 () Bool)

(declare-fun c!645063 () Bool)

(assert (=> bm!271758 (= call!271766 (derivativeStep!3360 (ite c!645064 (regTwo!22339 (ite c!645013 (regTwo!22339 (regOne!22339 r!26968)) (ite c!645011 (reg!11242 (regOne!22339 r!26968)) (ite c!645012 (regTwo!22338 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968)))))) (ite c!645062 (reg!11242 (ite c!645013 (regTwo!22339 (regOne!22339 r!26968)) (ite c!645011 (reg!11242 (regOne!22339 r!26968)) (ite c!645012 (regTwo!22338 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968)))))) (ite c!645063 (regTwo!22338 (ite c!645013 (regTwo!22339 (regOne!22339 r!26968)) (ite c!645011 (reg!11242 (regOne!22339 r!26968)) (ite c!645012 (regTwo!22338 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968)))))) (regOne!22338 (ite c!645013 (regTwo!22339 (regOne!22339 r!26968)) (ite c!645011 (reg!11242 (regOne!22339 r!26968)) (ite c!645012 (regTwo!22338 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968))))))))) c!13797))))

(declare-fun call!271763 () Regex!10913)

(declare-fun bm!271759 () Bool)

(assert (=> bm!271759 (= call!271763 (derivativeStep!3360 (ite c!645064 (regOne!22339 (ite c!645013 (regTwo!22339 (regOne!22339 r!26968)) (ite c!645011 (reg!11242 (regOne!22339 r!26968)) (ite c!645012 (regTwo!22338 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968)))))) (regOne!22338 (ite c!645013 (regTwo!22339 (regOne!22339 r!26968)) (ite c!645011 (reg!11242 (regOne!22339 r!26968)) (ite c!645012 (regTwo!22338 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968))))))) c!13797))))

(declare-fun bm!271760 () Bool)

(declare-fun call!271765 () Regex!10913)

(assert (=> bm!271760 (= call!271765 call!271766)))

(declare-fun b!3727553 () Bool)

(assert (=> b!3727553 (= c!645064 ((_ is Union!10913) (ite c!645013 (regTwo!22339 (regOne!22339 r!26968)) (ite c!645011 (reg!11242 (regOne!22339 r!26968)) (ite c!645012 (regTwo!22338 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968)))))))))

(assert (=> b!3727553 (= e!2306681 e!2306684)))

(declare-fun b!3727554 () Bool)

(declare-fun e!2306680 () Regex!10913)

(declare-fun call!271764 () Regex!10913)

(assert (=> b!3727554 (= e!2306680 (Union!10913 (Concat!17184 call!271763 (regTwo!22338 (ite c!645013 (regTwo!22339 (regOne!22339 r!26968)) (ite c!645011 (reg!11242 (regOne!22339 r!26968)) (ite c!645012 (regTwo!22338 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968))))))) call!271764))))

(declare-fun b!3727555 () Bool)

(assert (=> b!3727555 (= e!2306683 EmptyLang!10913)))

(declare-fun b!3727556 () Bool)

(assert (=> b!3727556 (= c!645063 (nullable!3821 (regOne!22338 (ite c!645013 (regTwo!22339 (regOne!22339 r!26968)) (ite c!645011 (reg!11242 (regOne!22339 r!26968)) (ite c!645012 (regTwo!22338 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968))))))))))

(assert (=> b!3727556 (= e!2306682 e!2306680)))

(declare-fun b!3727557 () Bool)

(assert (=> b!3727557 (= e!2306681 (ite (= c!13797 (c!644899 (ite c!645013 (regTwo!22339 (regOne!22339 r!26968)) (ite c!645011 (reg!11242 (regOne!22339 r!26968)) (ite c!645012 (regTwo!22338 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968))))))) EmptyExpr!10913 EmptyLang!10913))))

(declare-fun b!3727559 () Bool)

(assert (=> b!3727559 (= e!2306684 (Union!10913 call!271763 call!271766))))

(declare-fun bm!271761 () Bool)

(assert (=> bm!271761 (= call!271764 call!271765)))

(declare-fun b!3727560 () Bool)

(assert (=> b!3727560 (= e!2306682 (Concat!17184 call!271765 (ite c!645013 (regTwo!22339 (regOne!22339 r!26968)) (ite c!645011 (reg!11242 (regOne!22339 r!26968)) (ite c!645012 (regTwo!22338 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968)))))))))

(declare-fun b!3727558 () Bool)

(assert (=> b!3727558 (= e!2306680 (Union!10913 (Concat!17184 call!271764 (regTwo!22338 (ite c!645013 (regTwo!22339 (regOne!22339 r!26968)) (ite c!645011 (reg!11242 (regOne!22339 r!26968)) (ite c!645012 (regTwo!22338 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968))))))) EmptyLang!10913))))

(declare-fun d!1090118 () Bool)

(declare-fun lt!1298471 () Regex!10913)

(assert (=> d!1090118 (validRegex!5020 lt!1298471)))

(assert (=> d!1090118 (= lt!1298471 e!2306683)))

(declare-fun c!645066 () Bool)

(assert (=> d!1090118 (= c!645066 (or ((_ is EmptyExpr!10913) (ite c!645013 (regTwo!22339 (regOne!22339 r!26968)) (ite c!645011 (reg!11242 (regOne!22339 r!26968)) (ite c!645012 (regTwo!22338 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968)))))) ((_ is EmptyLang!10913) (ite c!645013 (regTwo!22339 (regOne!22339 r!26968)) (ite c!645011 (reg!11242 (regOne!22339 r!26968)) (ite c!645012 (regTwo!22338 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968))))))))))

(assert (=> d!1090118 (validRegex!5020 (ite c!645013 (regTwo!22339 (regOne!22339 r!26968)) (ite c!645011 (reg!11242 (regOne!22339 r!26968)) (ite c!645012 (regTwo!22338 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968))))))))

(assert (=> d!1090118 (= (derivativeStep!3360 (ite c!645013 (regTwo!22339 (regOne!22339 r!26968)) (ite c!645011 (reg!11242 (regOne!22339 r!26968)) (ite c!645012 (regTwo!22338 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968))))) c!13797) lt!1298471)))

(assert (= (and d!1090118 c!645066) b!3727555))

(assert (= (and d!1090118 (not c!645066)) b!3727551))

(assert (= (and b!3727551 c!645065) b!3727557))

(assert (= (and b!3727551 (not c!645065)) b!3727553))

(assert (= (and b!3727553 c!645064) b!3727559))

(assert (= (and b!3727553 (not c!645064)) b!3727552))

(assert (= (and b!3727552 c!645062) b!3727560))

(assert (= (and b!3727552 (not c!645062)) b!3727556))

(assert (= (and b!3727556 c!645063) b!3727554))

(assert (= (and b!3727556 (not c!645063)) b!3727558))

(assert (= (or b!3727554 b!3727558) bm!271761))

(assert (= (or b!3727560 bm!271761) bm!271760))

(assert (= (or b!3727559 b!3727554) bm!271759))

(assert (= (or b!3727559 bm!271760) bm!271758))

(declare-fun m!4228553 () Bool)

(assert (=> bm!271758 m!4228553))

(declare-fun m!4228555 () Bool)

(assert (=> bm!271759 m!4228555))

(declare-fun m!4228557 () Bool)

(assert (=> b!3727556 m!4228557))

(declare-fun m!4228559 () Bool)

(assert (=> d!1090118 m!4228559))

(declare-fun m!4228561 () Bool)

(assert (=> d!1090118 m!4228561))

(assert (=> bm!271721 d!1090118))

(declare-fun d!1090120 () Bool)

(assert (=> d!1090120 (= (nullable!3821 (reg!11242 r!26968)) (nullableFct!1082 (reg!11242 r!26968)))))

(declare-fun bs!575050 () Bool)

(assert (= bs!575050 d!1090120))

(declare-fun m!4228563 () Bool)

(assert (=> bs!575050 m!4228563))

(assert (=> b!3727378 d!1090120))

(declare-fun b!3727561 () Bool)

(declare-fun e!2306685 () List!39794)

(declare-fun e!2306688 () List!39794)

(assert (=> b!3727561 (= e!2306685 e!2306688)))

(declare-fun c!645068 () Bool)

(assert (=> b!3727561 (= c!645068 ((_ is ElementMatch!10913) (ite c!644956 (reg!11242 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (ite c!644959 (regTwo!22339 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (regOne!22338 (derivativeStep!3360 (regOne!22339 r!26968) c!13797))))))))

(declare-fun call!271768 () List!39794)

(declare-fun bm!271762 () Bool)

(declare-fun c!645070 () Bool)

(assert (=> bm!271762 (= call!271768 (usedCharacters!1176 (ite c!645070 (regOne!22339 (ite c!644956 (reg!11242 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (ite c!644959 (regTwo!22339 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (regOne!22338 (derivativeStep!3360 (regOne!22339 r!26968) c!13797))))) (regTwo!22338 (ite c!644956 (reg!11242 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (ite c!644959 (regTwo!22339 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (regOne!22338 (derivativeStep!3360 (regOne!22339 r!26968) c!13797))))))))))

(declare-fun b!3727562 () Bool)

(assert (=> b!3727562 (= e!2306688 (Cons!39670 (c!644899 (ite c!644956 (reg!11242 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (ite c!644959 (regTwo!22339 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (regOne!22338 (derivativeStep!3360 (regOne!22339 r!26968) c!13797))))) Nil!39670))))

(declare-fun bm!271763 () Bool)

(declare-fun call!271770 () List!39794)

(declare-fun call!271769 () List!39794)

(assert (=> bm!271763 (= call!271770 call!271769)))

(declare-fun c!645067 () Bool)

(declare-fun bm!271764 () Bool)

(assert (=> bm!271764 (= call!271769 (usedCharacters!1176 (ite c!645067 (reg!11242 (ite c!644956 (reg!11242 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (ite c!644959 (regTwo!22339 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (regOne!22338 (derivativeStep!3360 (regOne!22339 r!26968) c!13797))))) (ite c!645070 (regTwo!22339 (ite c!644956 (reg!11242 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (ite c!644959 (regTwo!22339 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (regOne!22338 (derivativeStep!3360 (regOne!22339 r!26968) c!13797))))) (regOne!22338 (ite c!644956 (reg!11242 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (ite c!644959 (regTwo!22339 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (regOne!22338 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)))))))))))

(declare-fun b!3727564 () Bool)

(declare-fun e!2306686 () List!39794)

(declare-fun call!271767 () List!39794)

(assert (=> b!3727564 (= e!2306686 call!271767)))

(declare-fun b!3727565 () Bool)

(assert (=> b!3727565 (= e!2306686 call!271767)))

(declare-fun b!3727566 () Bool)

(assert (=> b!3727566 (= c!645067 ((_ is Star!10913) (ite c!644956 (reg!11242 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (ite c!644959 (regTwo!22339 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (regOne!22338 (derivativeStep!3360 (regOne!22339 r!26968) c!13797))))))))

(declare-fun e!2306687 () List!39794)

(assert (=> b!3727566 (= e!2306688 e!2306687)))

(declare-fun bm!271765 () Bool)

(assert (=> bm!271765 (= call!271767 (++!9837 (ite c!645070 call!271768 call!271770) (ite c!645070 call!271770 call!271768)))))

(declare-fun b!3727563 () Bool)

(assert (=> b!3727563 (= e!2306687 e!2306686)))

(assert (=> b!3727563 (= c!645070 ((_ is Union!10913) (ite c!644956 (reg!11242 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (ite c!644959 (regTwo!22339 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (regOne!22338 (derivativeStep!3360 (regOne!22339 r!26968) c!13797))))))))

(declare-fun c!645069 () Bool)

(declare-fun d!1090122 () Bool)

(assert (=> d!1090122 (= c!645069 (or ((_ is EmptyExpr!10913) (ite c!644956 (reg!11242 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (ite c!644959 (regTwo!22339 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (regOne!22338 (derivativeStep!3360 (regOne!22339 r!26968) c!13797))))) ((_ is EmptyLang!10913) (ite c!644956 (reg!11242 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (ite c!644959 (regTwo!22339 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (regOne!22338 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)))))))))

(assert (=> d!1090122 (= (usedCharacters!1176 (ite c!644956 (reg!11242 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (ite c!644959 (regTwo!22339 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)) (regOne!22338 (derivativeStep!3360 (regOne!22339 r!26968) c!13797))))) e!2306685)))

(declare-fun b!3727567 () Bool)

(assert (=> b!3727567 (= e!2306685 Nil!39670)))

(declare-fun b!3727568 () Bool)

(assert (=> b!3727568 (= e!2306687 call!271769)))

(assert (= (and d!1090122 c!645069) b!3727567))

(assert (= (and d!1090122 (not c!645069)) b!3727561))

(assert (= (and b!3727561 c!645068) b!3727562))

(assert (= (and b!3727561 (not c!645068)) b!3727566))

(assert (= (and b!3727566 c!645067) b!3727568))

(assert (= (and b!3727566 (not c!645067)) b!3727563))

(assert (= (and b!3727563 c!645070) b!3727565))

(assert (= (and b!3727563 (not c!645070)) b!3727564))

(assert (= (or b!3727565 b!3727564) bm!271762))

(assert (= (or b!3727565 b!3727564) bm!271763))

(assert (= (or b!3727565 b!3727564) bm!271765))

(assert (= (or b!3727568 bm!271763) bm!271764))

(declare-fun m!4228565 () Bool)

(assert (=> bm!271762 m!4228565))

(declare-fun m!4228567 () Bool)

(assert (=> bm!271764 m!4228567))

(declare-fun m!4228569 () Bool)

(assert (=> bm!271765 m!4228569))

(assert (=> bm!271674 d!1090122))

(declare-fun d!1090124 () Bool)

(assert (=> d!1090124 (= (nullable!3821 (reg!11242 (regTwo!22339 r!26968))) (nullableFct!1082 (reg!11242 (regTwo!22339 r!26968))))))

(declare-fun bs!575051 () Bool)

(assert (= bs!575051 d!1090124))

(declare-fun m!4228571 () Bool)

(assert (=> bs!575051 m!4228571))

(assert (=> b!3727289 d!1090124))

(declare-fun d!1090126 () Bool)

(declare-fun c!645071 () Bool)

(assert (=> d!1090126 (= c!645071 ((_ is Nil!39670) (usedCharacters!1176 (derivativeStep!3360 (regOne!22339 r!26968) c!13797))))))

(declare-fun e!2306689 () (InoxSet C!22012))

(assert (=> d!1090126 (= (content!5770 (usedCharacters!1176 (derivativeStep!3360 (regOne!22339 r!26968) c!13797))) e!2306689)))

(declare-fun b!3727569 () Bool)

(assert (=> b!3727569 (= e!2306689 ((as const (Array C!22012 Bool)) false))))

(declare-fun b!3727570 () Bool)

(assert (=> b!3727570 (= e!2306689 ((_ map or) (store ((as const (Array C!22012 Bool)) false) (h!45090 (usedCharacters!1176 (derivativeStep!3360 (regOne!22339 r!26968) c!13797))) true) (content!5770 (t!302477 (usedCharacters!1176 (derivativeStep!3360 (regOne!22339 r!26968) c!13797))))))))

(assert (= (and d!1090126 c!645071) b!3727569))

(assert (= (and d!1090126 (not c!645071)) b!3727570))

(declare-fun m!4228573 () Bool)

(assert (=> b!3727570 m!4228573))

(declare-fun m!4228575 () Bool)

(assert (=> b!3727570 m!4228575))

(assert (=> d!1090070 d!1090126))

(declare-fun c!645075 () Bool)

(declare-fun call!271771 () Int)

(declare-fun bm!271766 () Bool)

(assert (=> bm!271766 (= call!271771 (RegexPrimitiveSize!141 (ite c!645075 (regTwo!22338 (ite c!644913 (regOne!22338 (regTwo!22339 r!26968)) (ite c!644911 (reg!11242 (regTwo!22339 r!26968)) (regOne!22339 (regTwo!22339 r!26968))))) (regTwo!22339 (ite c!644913 (regOne!22338 (regTwo!22339 r!26968)) (ite c!644911 (reg!11242 (regTwo!22339 r!26968)) (regOne!22339 (regTwo!22339 r!26968))))))))))

(declare-fun call!271772 () Int)

(declare-fun bm!271767 () Bool)

(declare-fun c!645073 () Bool)

(assert (=> bm!271767 (= call!271772 (RegexPrimitiveSize!141 (ite c!645075 (regOne!22338 (ite c!644913 (regOne!22338 (regTwo!22339 r!26968)) (ite c!644911 (reg!11242 (regTwo!22339 r!26968)) (regOne!22339 (regTwo!22339 r!26968))))) (ite c!645073 (reg!11242 (ite c!644913 (regOne!22338 (regTwo!22339 r!26968)) (ite c!644911 (reg!11242 (regTwo!22339 r!26968)) (regOne!22339 (regTwo!22339 r!26968))))) (regOne!22339 (ite c!644913 (regOne!22338 (regTwo!22339 r!26968)) (ite c!644911 (reg!11242 (regTwo!22339 r!26968)) (regOne!22339 (regTwo!22339 r!26968)))))))))))

(declare-fun c!645072 () Bool)

(declare-fun b!3727571 () Bool)

(assert (=> b!3727571 (= c!645072 ((_ is EmptyExpr!10913) (ite c!644913 (regOne!22338 (regTwo!22339 r!26968)) (ite c!644911 (reg!11242 (regTwo!22339 r!26968)) (regOne!22339 (regTwo!22339 r!26968))))))))

(declare-fun e!2306690 () Int)

(declare-fun e!2306694 () Int)

(assert (=> b!3727571 (= e!2306690 e!2306694)))

(declare-fun d!1090128 () Bool)

(declare-fun lt!1298472 () Int)

(assert (=> d!1090128 (>= lt!1298472 0)))

(declare-fun e!2306691 () Int)

(assert (=> d!1090128 (= lt!1298472 e!2306691)))

(declare-fun c!645074 () Bool)

(assert (=> d!1090128 (= c!645074 ((_ is ElementMatch!10913) (ite c!644913 (regOne!22338 (regTwo!22339 r!26968)) (ite c!644911 (reg!11242 (regTwo!22339 r!26968)) (regOne!22339 (regTwo!22339 r!26968))))))))

(assert (=> d!1090128 (= (RegexPrimitiveSize!141 (ite c!644913 (regOne!22338 (regTwo!22339 r!26968)) (ite c!644911 (reg!11242 (regTwo!22339 r!26968)) (regOne!22339 (regTwo!22339 r!26968))))) lt!1298472)))

(declare-fun b!3727572 () Bool)

(assert (=> b!3727572 (= e!2306691 1)))

(declare-fun bm!271768 () Bool)

(declare-fun call!271773 () Int)

(assert (=> bm!271768 (= call!271773 call!271772)))

(declare-fun b!3727573 () Bool)

(declare-fun e!2306692 () Int)

(assert (=> b!3727573 (= e!2306692 (+ 1 call!271773))))

(declare-fun b!3727574 () Bool)

(assert (=> b!3727574 (= e!2306691 e!2306690)))

(assert (=> b!3727574 (= c!645075 ((_ is Concat!17184) (ite c!644913 (regOne!22338 (regTwo!22339 r!26968)) (ite c!644911 (reg!11242 (regTwo!22339 r!26968)) (regOne!22339 (regTwo!22339 r!26968))))))))

(declare-fun b!3727575 () Bool)

(declare-fun e!2306693 () Int)

(assert (=> b!3727575 (= e!2306693 (+ 1 call!271773 call!271771))))

(declare-fun b!3727576 () Bool)

(assert (=> b!3727576 (= e!2306694 0)))

(declare-fun b!3727577 () Bool)

(declare-fun c!645076 () Bool)

(assert (=> b!3727577 (= c!645076 ((_ is EmptyLang!10913) (ite c!644913 (regOne!22338 (regTwo!22339 r!26968)) (ite c!644911 (reg!11242 (regTwo!22339 r!26968)) (regOne!22339 (regTwo!22339 r!26968))))))))

(assert (=> b!3727577 (= e!2306692 e!2306693)))

(declare-fun b!3727578 () Bool)

(assert (=> b!3727578 (= e!2306693 0)))

(declare-fun b!3727579 () Bool)

(assert (=> b!3727579 (= e!2306690 (+ 1 call!271772 call!271771))))

(declare-fun b!3727580 () Bool)

(assert (=> b!3727580 (= e!2306694 e!2306692)))

(assert (=> b!3727580 (= c!645073 ((_ is Star!10913) (ite c!644913 (regOne!22338 (regTwo!22339 r!26968)) (ite c!644911 (reg!11242 (regTwo!22339 r!26968)) (regOne!22339 (regTwo!22339 r!26968))))))))

(assert (= (and d!1090128 c!645074) b!3727572))

(assert (= (and d!1090128 (not c!645074)) b!3727574))

(assert (= (and b!3727574 c!645075) b!3727579))

(assert (= (and b!3727574 (not c!645075)) b!3727571))

(assert (= (and b!3727571 c!645072) b!3727576))

(assert (= (and b!3727571 (not c!645072)) b!3727580))

(assert (= (and b!3727580 c!645073) b!3727573))

(assert (= (and b!3727580 (not c!645073)) b!3727577))

(assert (= (and b!3727577 c!645076) b!3727578))

(assert (= (and b!3727577 (not c!645076)) b!3727575))

(assert (= (or b!3727573 b!3727575) bm!271768))

(assert (= (or b!3727579 bm!271768) bm!271767))

(assert (= (or b!3727579 b!3727575) bm!271766))

(declare-fun m!4228577 () Bool)

(assert (=> bm!271766 m!4228577))

(declare-fun m!4228579 () Bool)

(assert (=> bm!271767 m!4228579))

(assert (=> bm!271629 d!1090128))

(declare-fun d!1090130 () Bool)

(declare-fun c!645077 () Bool)

(assert (=> d!1090130 (= c!645077 ((_ is Nil!39670) (usedCharacters!1176 (regTwo!22339 r!26968))))))

(declare-fun e!2306695 () (InoxSet C!22012))

(assert (=> d!1090130 (= (content!5770 (usedCharacters!1176 (regTwo!22339 r!26968))) e!2306695)))

(declare-fun b!3727581 () Bool)

(assert (=> b!3727581 (= e!2306695 ((as const (Array C!22012 Bool)) false))))

(declare-fun b!3727582 () Bool)

(assert (=> b!3727582 (= e!2306695 ((_ map or) (store ((as const (Array C!22012 Bool)) false) (h!45090 (usedCharacters!1176 (regTwo!22339 r!26968))) true) (content!5770 (t!302477 (usedCharacters!1176 (regTwo!22339 r!26968))))))))

(assert (= (and d!1090130 c!645077) b!3727581))

(assert (= (and d!1090130 (not c!645077)) b!3727582))

(declare-fun m!4228581 () Bool)

(assert (=> b!3727582 m!4228581))

(declare-fun m!4228583 () Bool)

(assert (=> b!3727582 m!4228583))

(assert (=> d!1090054 d!1090130))

(declare-fun e!2306696 () List!39794)

(declare-fun b!3727584 () Bool)

(assert (=> b!3727584 (= e!2306696 (Cons!39670 (h!45090 (ite c!644959 call!271678 call!271680)) (++!9837 (t!302477 (ite c!644959 call!271678 call!271680)) (ite c!644959 call!271680 call!271678))))))

(declare-fun d!1090132 () Bool)

(declare-fun e!2306697 () Bool)

(assert (=> d!1090132 e!2306697))

(declare-fun res!1513925 () Bool)

(assert (=> d!1090132 (=> (not res!1513925) (not e!2306697))))

(declare-fun lt!1298473 () List!39794)

(assert (=> d!1090132 (= res!1513925 (= (content!5770 lt!1298473) ((_ map or) (content!5770 (ite c!644959 call!271678 call!271680)) (content!5770 (ite c!644959 call!271680 call!271678)))))))

(assert (=> d!1090132 (= lt!1298473 e!2306696)))

(declare-fun c!645078 () Bool)

(assert (=> d!1090132 (= c!645078 ((_ is Nil!39670) (ite c!644959 call!271678 call!271680)))))

(assert (=> d!1090132 (= (++!9837 (ite c!644959 call!271678 call!271680) (ite c!644959 call!271680 call!271678)) lt!1298473)))

(declare-fun b!3727585 () Bool)

(declare-fun res!1513926 () Bool)

(assert (=> b!3727585 (=> (not res!1513926) (not e!2306697))))

(assert (=> b!3727585 (= res!1513926 (= (size!30031 lt!1298473) (+ (size!30031 (ite c!644959 call!271678 call!271680)) (size!30031 (ite c!644959 call!271680 call!271678)))))))

(declare-fun b!3727583 () Bool)

(assert (=> b!3727583 (= e!2306696 (ite c!644959 call!271680 call!271678))))

(declare-fun b!3727586 () Bool)

(assert (=> b!3727586 (= e!2306697 (or (not (= (ite c!644959 call!271680 call!271678) Nil!39670)) (= lt!1298473 (ite c!644959 call!271678 call!271680))))))

(assert (= (and d!1090132 c!645078) b!3727583))

(assert (= (and d!1090132 (not c!645078)) b!3727584))

(assert (= (and d!1090132 res!1513925) b!3727585))

(assert (= (and b!3727585 res!1513926) b!3727586))

(declare-fun m!4228585 () Bool)

(assert (=> b!3727584 m!4228585))

(declare-fun m!4228587 () Bool)

(assert (=> d!1090132 m!4228587))

(declare-fun m!4228589 () Bool)

(assert (=> d!1090132 m!4228589))

(declare-fun m!4228591 () Bool)

(assert (=> d!1090132 m!4228591))

(declare-fun m!4228593 () Bool)

(assert (=> b!3727585 m!4228593))

(declare-fun m!4228595 () Bool)

(assert (=> b!3727585 m!4228595))

(declare-fun m!4228597 () Bool)

(assert (=> b!3727585 m!4228597))

(assert (=> bm!271675 d!1090132))

(declare-fun bm!271769 () Bool)

(declare-fun call!271776 () Bool)

(declare-fun call!271775 () Bool)

(assert (=> bm!271769 (= call!271776 call!271775)))

(declare-fun b!3727587 () Bool)

(declare-fun e!2306701 () Bool)

(declare-fun e!2306702 () Bool)

(assert (=> b!3727587 (= e!2306701 e!2306702)))

(declare-fun res!1513930 () Bool)

(assert (=> b!3727587 (= res!1513930 (not (nullable!3821 (reg!11242 (ite c!644974 (reg!11242 (regTwo!22339 r!26968)) (ite c!644975 (regOne!22339 (regTwo!22339 r!26968)) (regOne!22338 (regTwo!22339 r!26968))))))))))

(assert (=> b!3727587 (=> (not res!1513930) (not e!2306702))))

(declare-fun b!3727588 () Bool)

(declare-fun e!2306699 () Bool)

(assert (=> b!3727588 (= e!2306701 e!2306699)))

(declare-fun c!645080 () Bool)

(assert (=> b!3727588 (= c!645080 ((_ is Union!10913) (ite c!644974 (reg!11242 (regTwo!22339 r!26968)) (ite c!644975 (regOne!22339 (regTwo!22339 r!26968)) (regOne!22338 (regTwo!22339 r!26968))))))))

(declare-fun d!1090134 () Bool)

(declare-fun res!1513928 () Bool)

(declare-fun e!2306698 () Bool)

(assert (=> d!1090134 (=> res!1513928 e!2306698)))

(assert (=> d!1090134 (= res!1513928 ((_ is ElementMatch!10913) (ite c!644974 (reg!11242 (regTwo!22339 r!26968)) (ite c!644975 (regOne!22339 (regTwo!22339 r!26968)) (regOne!22338 (regTwo!22339 r!26968))))))))

(assert (=> d!1090134 (= (validRegex!5020 (ite c!644974 (reg!11242 (regTwo!22339 r!26968)) (ite c!644975 (regOne!22339 (regTwo!22339 r!26968)) (regOne!22338 (regTwo!22339 r!26968))))) e!2306698)))

(declare-fun b!3727589 () Bool)

(declare-fun res!1513931 () Bool)

(declare-fun e!2306704 () Bool)

(assert (=> b!3727589 (=> (not res!1513931) (not e!2306704))))

(assert (=> b!3727589 (= res!1513931 call!271776)))

(assert (=> b!3727589 (= e!2306699 e!2306704)))

(declare-fun b!3727590 () Bool)

(declare-fun e!2306703 () Bool)

(declare-fun call!271774 () Bool)

(assert (=> b!3727590 (= e!2306703 call!271774)))

(declare-fun bm!271770 () Bool)

(declare-fun c!645079 () Bool)

(assert (=> bm!271770 (= call!271775 (validRegex!5020 (ite c!645079 (reg!11242 (ite c!644974 (reg!11242 (regTwo!22339 r!26968)) (ite c!644975 (regOne!22339 (regTwo!22339 r!26968)) (regOne!22338 (regTwo!22339 r!26968))))) (ite c!645080 (regOne!22339 (ite c!644974 (reg!11242 (regTwo!22339 r!26968)) (ite c!644975 (regOne!22339 (regTwo!22339 r!26968)) (regOne!22338 (regTwo!22339 r!26968))))) (regOne!22338 (ite c!644974 (reg!11242 (regTwo!22339 r!26968)) (ite c!644975 (regOne!22339 (regTwo!22339 r!26968)) (regOne!22338 (regTwo!22339 r!26968)))))))))))

(declare-fun b!3727591 () Bool)

(assert (=> b!3727591 (= e!2306702 call!271775)))

(declare-fun bm!271771 () Bool)

(assert (=> bm!271771 (= call!271774 (validRegex!5020 (ite c!645080 (regTwo!22339 (ite c!644974 (reg!11242 (regTwo!22339 r!26968)) (ite c!644975 (regOne!22339 (regTwo!22339 r!26968)) (regOne!22338 (regTwo!22339 r!26968))))) (regTwo!22338 (ite c!644974 (reg!11242 (regTwo!22339 r!26968)) (ite c!644975 (regOne!22339 (regTwo!22339 r!26968)) (regOne!22338 (regTwo!22339 r!26968))))))))))

(declare-fun b!3727592 () Bool)

(declare-fun e!2306700 () Bool)

(assert (=> b!3727592 (= e!2306700 e!2306703)))

(declare-fun res!1513929 () Bool)

(assert (=> b!3727592 (=> (not res!1513929) (not e!2306703))))

(assert (=> b!3727592 (= res!1513929 call!271776)))

(declare-fun b!3727593 () Bool)

(assert (=> b!3727593 (= e!2306704 call!271774)))

(declare-fun b!3727594 () Bool)

(declare-fun res!1513927 () Bool)

(assert (=> b!3727594 (=> res!1513927 e!2306700)))

(assert (=> b!3727594 (= res!1513927 (not ((_ is Concat!17184) (ite c!644974 (reg!11242 (regTwo!22339 r!26968)) (ite c!644975 (regOne!22339 (regTwo!22339 r!26968)) (regOne!22338 (regTwo!22339 r!26968)))))))))

(assert (=> b!3727594 (= e!2306699 e!2306700)))

(declare-fun b!3727595 () Bool)

(assert (=> b!3727595 (= e!2306698 e!2306701)))

(assert (=> b!3727595 (= c!645079 ((_ is Star!10913) (ite c!644974 (reg!11242 (regTwo!22339 r!26968)) (ite c!644975 (regOne!22339 (regTwo!22339 r!26968)) (regOne!22338 (regTwo!22339 r!26968))))))))

(assert (= (and d!1090134 (not res!1513928)) b!3727595))

(assert (= (and b!3727595 c!645079) b!3727587))

(assert (= (and b!3727595 (not c!645079)) b!3727588))

(assert (= (and b!3727587 res!1513930) b!3727591))

(assert (= (and b!3727588 c!645080) b!3727589))

(assert (= (and b!3727588 (not c!645080)) b!3727594))

(assert (= (and b!3727589 res!1513931) b!3727593))

(assert (= (and b!3727594 (not res!1513927)) b!3727592))

(assert (= (and b!3727592 res!1513929) b!3727590))

(assert (= (or b!3727593 b!3727590) bm!271771))

(assert (= (or b!3727589 b!3727592) bm!271769))

(assert (= (or b!3727591 bm!271769) bm!271770))

(declare-fun m!4228599 () Bool)

(assert (=> b!3727587 m!4228599))

(declare-fun m!4228601 () Bool)

(assert (=> bm!271770 m!4228601))

(declare-fun m!4228603 () Bool)

(assert (=> bm!271771 m!4228603))

(assert (=> bm!271693 d!1090134))

(declare-fun bm!271772 () Bool)

(declare-fun call!271777 () Int)

(declare-fun c!645084 () Bool)

(assert (=> bm!271772 (= call!271777 (RegexPrimitiveSize!141 (ite c!645084 (regTwo!22338 (ite c!644913 (regTwo!22338 (regTwo!22339 r!26968)) (regTwo!22339 (regTwo!22339 r!26968)))) (regTwo!22339 (ite c!644913 (regTwo!22338 (regTwo!22339 r!26968)) (regTwo!22339 (regTwo!22339 r!26968)))))))))

(declare-fun c!645082 () Bool)

(declare-fun bm!271773 () Bool)

(declare-fun call!271778 () Int)

(assert (=> bm!271773 (= call!271778 (RegexPrimitiveSize!141 (ite c!645084 (regOne!22338 (ite c!644913 (regTwo!22338 (regTwo!22339 r!26968)) (regTwo!22339 (regTwo!22339 r!26968)))) (ite c!645082 (reg!11242 (ite c!644913 (regTwo!22338 (regTwo!22339 r!26968)) (regTwo!22339 (regTwo!22339 r!26968)))) (regOne!22339 (ite c!644913 (regTwo!22338 (regTwo!22339 r!26968)) (regTwo!22339 (regTwo!22339 r!26968))))))))))

(declare-fun b!3727596 () Bool)

(declare-fun c!645081 () Bool)

(assert (=> b!3727596 (= c!645081 ((_ is EmptyExpr!10913) (ite c!644913 (regTwo!22338 (regTwo!22339 r!26968)) (regTwo!22339 (regTwo!22339 r!26968)))))))

(declare-fun e!2306705 () Int)

(declare-fun e!2306709 () Int)

(assert (=> b!3727596 (= e!2306705 e!2306709)))

(declare-fun d!1090136 () Bool)

(declare-fun lt!1298474 () Int)

(assert (=> d!1090136 (>= lt!1298474 0)))

(declare-fun e!2306706 () Int)

(assert (=> d!1090136 (= lt!1298474 e!2306706)))

(declare-fun c!645083 () Bool)

(assert (=> d!1090136 (= c!645083 ((_ is ElementMatch!10913) (ite c!644913 (regTwo!22338 (regTwo!22339 r!26968)) (regTwo!22339 (regTwo!22339 r!26968)))))))

(assert (=> d!1090136 (= (RegexPrimitiveSize!141 (ite c!644913 (regTwo!22338 (regTwo!22339 r!26968)) (regTwo!22339 (regTwo!22339 r!26968)))) lt!1298474)))

(declare-fun b!3727597 () Bool)

(assert (=> b!3727597 (= e!2306706 1)))

(declare-fun bm!271774 () Bool)

(declare-fun call!271779 () Int)

(assert (=> bm!271774 (= call!271779 call!271778)))

(declare-fun b!3727598 () Bool)

(declare-fun e!2306707 () Int)

(assert (=> b!3727598 (= e!2306707 (+ 1 call!271779))))

(declare-fun b!3727599 () Bool)

(assert (=> b!3727599 (= e!2306706 e!2306705)))

(assert (=> b!3727599 (= c!645084 ((_ is Concat!17184) (ite c!644913 (regTwo!22338 (regTwo!22339 r!26968)) (regTwo!22339 (regTwo!22339 r!26968)))))))

(declare-fun b!3727600 () Bool)

(declare-fun e!2306708 () Int)

(assert (=> b!3727600 (= e!2306708 (+ 1 call!271779 call!271777))))

(declare-fun b!3727601 () Bool)

(assert (=> b!3727601 (= e!2306709 0)))

(declare-fun b!3727602 () Bool)

(declare-fun c!645085 () Bool)

(assert (=> b!3727602 (= c!645085 ((_ is EmptyLang!10913) (ite c!644913 (regTwo!22338 (regTwo!22339 r!26968)) (regTwo!22339 (regTwo!22339 r!26968)))))))

(assert (=> b!3727602 (= e!2306707 e!2306708)))

(declare-fun b!3727603 () Bool)

(assert (=> b!3727603 (= e!2306708 0)))

(declare-fun b!3727604 () Bool)

(assert (=> b!3727604 (= e!2306705 (+ 1 call!271778 call!271777))))

(declare-fun b!3727605 () Bool)

(assert (=> b!3727605 (= e!2306709 e!2306707)))

(assert (=> b!3727605 (= c!645082 ((_ is Star!10913) (ite c!644913 (regTwo!22338 (regTwo!22339 r!26968)) (regTwo!22339 (regTwo!22339 r!26968)))))))

(assert (= (and d!1090136 c!645083) b!3727597))

(assert (= (and d!1090136 (not c!645083)) b!3727599))

(assert (= (and b!3727599 c!645084) b!3727604))

(assert (= (and b!3727599 (not c!645084)) b!3727596))

(assert (= (and b!3727596 c!645081) b!3727601))

(assert (= (and b!3727596 (not c!645081)) b!3727605))

(assert (= (and b!3727605 c!645082) b!3727598))

(assert (= (and b!3727605 (not c!645082)) b!3727602))

(assert (= (and b!3727602 c!645085) b!3727603))

(assert (= (and b!3727602 (not c!645085)) b!3727600))

(assert (= (or b!3727598 b!3727600) bm!271774))

(assert (= (or b!3727604 bm!271774) bm!271773))

(assert (= (or b!3727604 b!3727600) bm!271772))

(declare-fun m!4228605 () Bool)

(assert (=> bm!271772 m!4228605))

(declare-fun m!4228607 () Bool)

(assert (=> bm!271773 m!4228607))

(assert (=> bm!271628 d!1090136))

(declare-fun d!1090138 () Bool)

(declare-fun lt!1298475 () Bool)

(assert (=> d!1090138 (= lt!1298475 (select (content!5770 (t!302477 (usedCharacters!1176 (regTwo!22339 r!26968)))) cNot!42))))

(declare-fun e!2306710 () Bool)

(assert (=> d!1090138 (= lt!1298475 e!2306710)))

(declare-fun res!1513932 () Bool)

(assert (=> d!1090138 (=> (not res!1513932) (not e!2306710))))

(assert (=> d!1090138 (= res!1513932 ((_ is Cons!39670) (t!302477 (usedCharacters!1176 (regTwo!22339 r!26968)))))))

(assert (=> d!1090138 (= (contains!8006 (t!302477 (usedCharacters!1176 (regTwo!22339 r!26968))) cNot!42) lt!1298475)))

(declare-fun b!3727606 () Bool)

(declare-fun e!2306711 () Bool)

(assert (=> b!3727606 (= e!2306710 e!2306711)))

(declare-fun res!1513933 () Bool)

(assert (=> b!3727606 (=> res!1513933 e!2306711)))

(assert (=> b!3727606 (= res!1513933 (= (h!45090 (t!302477 (usedCharacters!1176 (regTwo!22339 r!26968)))) cNot!42))))

(declare-fun b!3727607 () Bool)

(assert (=> b!3727607 (= e!2306711 (contains!8006 (t!302477 (t!302477 (usedCharacters!1176 (regTwo!22339 r!26968)))) cNot!42))))

(assert (= (and d!1090138 res!1513932) b!3727606))

(assert (= (and b!3727606 (not res!1513933)) b!3727607))

(assert (=> d!1090138 m!4228583))

(declare-fun m!4228609 () Bool)

(assert (=> d!1090138 m!4228609))

(declare-fun m!4228611 () Bool)

(assert (=> b!3727607 m!4228611))

(assert (=> b!3727162 d!1090138))

(declare-fun b!3727608 () Bool)

(declare-fun e!2306715 () Regex!10913)

(declare-fun e!2306713 () Regex!10913)

(assert (=> b!3727608 (= e!2306715 e!2306713)))

(declare-fun c!645089 () Bool)

(assert (=> b!3727608 (= c!645089 ((_ is ElementMatch!10913) (ite c!645013 (regOne!22339 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968)))))))

(declare-fun b!3727609 () Bool)

(declare-fun e!2306716 () Regex!10913)

(declare-fun e!2306714 () Regex!10913)

(assert (=> b!3727609 (= e!2306716 e!2306714)))

(declare-fun c!645086 () Bool)

(assert (=> b!3727609 (= c!645086 ((_ is Star!10913) (ite c!645013 (regOne!22339 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968)))))))

(declare-fun call!271783 () Regex!10913)

(declare-fun bm!271775 () Bool)

(declare-fun c!645088 () Bool)

(declare-fun c!645087 () Bool)

(assert (=> bm!271775 (= call!271783 (derivativeStep!3360 (ite c!645088 (regTwo!22339 (ite c!645013 (regOne!22339 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968)))) (ite c!645086 (reg!11242 (ite c!645013 (regOne!22339 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968)))) (ite c!645087 (regTwo!22338 (ite c!645013 (regOne!22339 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968)))) (regOne!22338 (ite c!645013 (regOne!22339 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968))))))) c!13797))))

(declare-fun call!271780 () Regex!10913)

(declare-fun bm!271776 () Bool)

(assert (=> bm!271776 (= call!271780 (derivativeStep!3360 (ite c!645088 (regOne!22339 (ite c!645013 (regOne!22339 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968)))) (regOne!22338 (ite c!645013 (regOne!22339 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968))))) c!13797))))

(declare-fun bm!271777 () Bool)

(declare-fun call!271782 () Regex!10913)

(assert (=> bm!271777 (= call!271782 call!271783)))

(declare-fun b!3727610 () Bool)

(assert (=> b!3727610 (= c!645088 ((_ is Union!10913) (ite c!645013 (regOne!22339 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968)))))))

(assert (=> b!3727610 (= e!2306713 e!2306716)))

(declare-fun b!3727611 () Bool)

(declare-fun call!271781 () Regex!10913)

(declare-fun e!2306712 () Regex!10913)

(assert (=> b!3727611 (= e!2306712 (Union!10913 (Concat!17184 call!271780 (regTwo!22338 (ite c!645013 (regOne!22339 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968))))) call!271781))))

(declare-fun b!3727612 () Bool)

(assert (=> b!3727612 (= e!2306715 EmptyLang!10913)))

(declare-fun b!3727613 () Bool)

(assert (=> b!3727613 (= c!645087 (nullable!3821 (regOne!22338 (ite c!645013 (regOne!22339 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968))))))))

(assert (=> b!3727613 (= e!2306714 e!2306712)))

(declare-fun b!3727614 () Bool)

(assert (=> b!3727614 (= e!2306713 (ite (= c!13797 (c!644899 (ite c!645013 (regOne!22339 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968))))) EmptyExpr!10913 EmptyLang!10913))))

(declare-fun b!3727616 () Bool)

(assert (=> b!3727616 (= e!2306716 (Union!10913 call!271780 call!271783))))

(declare-fun bm!271778 () Bool)

(assert (=> bm!271778 (= call!271781 call!271782)))

(declare-fun b!3727617 () Bool)

(assert (=> b!3727617 (= e!2306714 (Concat!17184 call!271782 (ite c!645013 (regOne!22339 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968)))))))

(declare-fun b!3727615 () Bool)

(assert (=> b!3727615 (= e!2306712 (Union!10913 (Concat!17184 call!271781 (regTwo!22338 (ite c!645013 (regOne!22339 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968))))) EmptyLang!10913))))

(declare-fun d!1090140 () Bool)

(declare-fun lt!1298476 () Regex!10913)

(assert (=> d!1090140 (validRegex!5020 lt!1298476)))

(assert (=> d!1090140 (= lt!1298476 e!2306715)))

(declare-fun c!645090 () Bool)

(assert (=> d!1090140 (= c!645090 (or ((_ is EmptyExpr!10913) (ite c!645013 (regOne!22339 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968)))) ((_ is EmptyLang!10913) (ite c!645013 (regOne!22339 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968))))))))

(assert (=> d!1090140 (validRegex!5020 (ite c!645013 (regOne!22339 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968))))))

(assert (=> d!1090140 (= (derivativeStep!3360 (ite c!645013 (regOne!22339 (regOne!22339 r!26968)) (regOne!22338 (regOne!22339 r!26968))) c!13797) lt!1298476)))

(assert (= (and d!1090140 c!645090) b!3727612))

(assert (= (and d!1090140 (not c!645090)) b!3727608))

(assert (= (and b!3727608 c!645089) b!3727614))

(assert (= (and b!3727608 (not c!645089)) b!3727610))

(assert (= (and b!3727610 c!645088) b!3727616))

(assert (= (and b!3727610 (not c!645088)) b!3727609))

(assert (= (and b!3727609 c!645086) b!3727617))

(assert (= (and b!3727609 (not c!645086)) b!3727613))

(assert (= (and b!3727613 c!645087) b!3727611))

(assert (= (and b!3727613 (not c!645087)) b!3727615))

(assert (= (or b!3727611 b!3727615) bm!271778))

(assert (= (or b!3727617 bm!271778) bm!271777))

(assert (= (or b!3727616 b!3727611) bm!271776))

(assert (= (or b!3727616 bm!271777) bm!271775))

(declare-fun m!4228613 () Bool)

(assert (=> bm!271775 m!4228613))

(declare-fun m!4228615 () Bool)

(assert (=> bm!271776 m!4228615))

(declare-fun m!4228617 () Bool)

(assert (=> b!3727613 m!4228617))

(declare-fun m!4228619 () Bool)

(assert (=> d!1090140 m!4228619))

(declare-fun m!4228621 () Bool)

(assert (=> d!1090140 m!4228621))

(assert (=> bm!271722 d!1090140))

(declare-fun lt!1298477 () Bool)

(declare-fun d!1090142 () Bool)

(assert (=> d!1090142 (= lt!1298477 (select (content!5770 (t!302477 (usedCharacters!1176 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)))) cNot!42))))

(declare-fun e!2306717 () Bool)

(assert (=> d!1090142 (= lt!1298477 e!2306717)))

(declare-fun res!1513934 () Bool)

(assert (=> d!1090142 (=> (not res!1513934) (not e!2306717))))

(assert (=> d!1090142 (= res!1513934 ((_ is Cons!39670) (t!302477 (usedCharacters!1176 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)))))))

(assert (=> d!1090142 (= (contains!8006 (t!302477 (usedCharacters!1176 (derivativeStep!3360 (regOne!22339 r!26968) c!13797))) cNot!42) lt!1298477)))

(declare-fun b!3727618 () Bool)

(declare-fun e!2306718 () Bool)

(assert (=> b!3727618 (= e!2306717 e!2306718)))

(declare-fun res!1513935 () Bool)

(assert (=> b!3727618 (=> res!1513935 e!2306718)))

(assert (=> b!3727618 (= res!1513935 (= (h!45090 (t!302477 (usedCharacters!1176 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)))) cNot!42))))

(declare-fun b!3727619 () Bool)

(assert (=> b!3727619 (= e!2306718 (contains!8006 (t!302477 (t!302477 (usedCharacters!1176 (derivativeStep!3360 (regOne!22339 r!26968) c!13797)))) cNot!42))))

(assert (= (and d!1090142 res!1513934) b!3727618))

(assert (= (and b!3727618 (not res!1513935)) b!3727619))

(assert (=> d!1090142 m!4228575))

(declare-fun m!4228623 () Bool)

(assert (=> d!1090142 m!4228623))

(declare-fun m!4228625 () Bool)

(assert (=> b!3727619 m!4228625))

(assert (=> b!3727251 d!1090142))

(declare-fun bm!271779 () Bool)

(declare-fun call!271786 () Bool)

(declare-fun call!271785 () Bool)

(assert (=> bm!271779 (= call!271786 call!271785)))

(declare-fun b!3727620 () Bool)

(declare-fun e!2306722 () Bool)

(declare-fun e!2306723 () Bool)

(assert (=> b!3727620 (= e!2306722 e!2306723)))

(declare-fun res!1513939 () Bool)

(assert (=> b!3727620 (= res!1513939 (not (nullable!3821 (reg!11242 (ite c!645017 (regTwo!22339 r!26968) (regTwo!22338 r!26968))))))))

(assert (=> b!3727620 (=> (not res!1513939) (not e!2306723))))

(declare-fun b!3727621 () Bool)

(declare-fun e!2306720 () Bool)

(assert (=> b!3727621 (= e!2306722 e!2306720)))

(declare-fun c!645092 () Bool)

(assert (=> b!3727621 (= c!645092 ((_ is Union!10913) (ite c!645017 (regTwo!22339 r!26968) (regTwo!22338 r!26968))))))

(declare-fun d!1090144 () Bool)

(declare-fun res!1513937 () Bool)

(declare-fun e!2306719 () Bool)

(assert (=> d!1090144 (=> res!1513937 e!2306719)))

(assert (=> d!1090144 (= res!1513937 ((_ is ElementMatch!10913) (ite c!645017 (regTwo!22339 r!26968) (regTwo!22338 r!26968))))))

(assert (=> d!1090144 (= (validRegex!5020 (ite c!645017 (regTwo!22339 r!26968) (regTwo!22338 r!26968))) e!2306719)))

(declare-fun b!3727622 () Bool)

(declare-fun res!1513940 () Bool)

(declare-fun e!2306725 () Bool)

(assert (=> b!3727622 (=> (not res!1513940) (not e!2306725))))

(assert (=> b!3727622 (= res!1513940 call!271786)))

(assert (=> b!3727622 (= e!2306720 e!2306725)))

(declare-fun b!3727623 () Bool)

(declare-fun e!2306724 () Bool)

(declare-fun call!271784 () Bool)

(assert (=> b!3727623 (= e!2306724 call!271784)))

(declare-fun c!645091 () Bool)

(declare-fun bm!271780 () Bool)

(assert (=> bm!271780 (= call!271785 (validRegex!5020 (ite c!645091 (reg!11242 (ite c!645017 (regTwo!22339 r!26968) (regTwo!22338 r!26968))) (ite c!645092 (regOne!22339 (ite c!645017 (regTwo!22339 r!26968) (regTwo!22338 r!26968))) (regOne!22338 (ite c!645017 (regTwo!22339 r!26968) (regTwo!22338 r!26968)))))))))

(declare-fun b!3727624 () Bool)

(assert (=> b!3727624 (= e!2306723 call!271785)))

(declare-fun bm!271781 () Bool)

(assert (=> bm!271781 (= call!271784 (validRegex!5020 (ite c!645092 (regTwo!22339 (ite c!645017 (regTwo!22339 r!26968) (regTwo!22338 r!26968))) (regTwo!22338 (ite c!645017 (regTwo!22339 r!26968) (regTwo!22338 r!26968))))))))

(declare-fun b!3727625 () Bool)

(declare-fun e!2306721 () Bool)

(assert (=> b!3727625 (= e!2306721 e!2306724)))

(declare-fun res!1513938 () Bool)

(assert (=> b!3727625 (=> (not res!1513938) (not e!2306724))))

(assert (=> b!3727625 (= res!1513938 call!271786)))

(declare-fun b!3727626 () Bool)

(assert (=> b!3727626 (= e!2306725 call!271784)))

(declare-fun b!3727627 () Bool)

(declare-fun res!1513936 () Bool)

(assert (=> b!3727627 (=> res!1513936 e!2306721)))

(assert (=> b!3727627 (= res!1513936 (not ((_ is Concat!17184) (ite c!645017 (regTwo!22339 r!26968) (regTwo!22338 r!26968)))))))

(assert (=> b!3727627 (= e!2306720 e!2306721)))

(declare-fun b!3727628 () Bool)

(assert (=> b!3727628 (= e!2306719 e!2306722)))

(assert (=> b!3727628 (= c!645091 ((_ is Star!10913) (ite c!645017 (regTwo!22339 r!26968) (regTwo!22338 r!26968))))))

(assert (= (and d!1090144 (not res!1513937)) b!3727628))

(assert (= (and b!3727628 c!645091) b!3727620))

(assert (= (and b!3727628 (not c!645091)) b!3727621))

(assert (= (and b!3727620 res!1513939) b!3727624))

(assert (= (and b!3727621 c!645092) b!3727622))

(assert (= (and b!3727621 (not c!645092)) b!3727627))

(assert (= (and b!3727622 res!1513940) b!3727626))

(assert (= (and b!3727627 (not res!1513936)) b!3727625))

(assert (= (and b!3727625 res!1513938) b!3727623))

(assert (= (or b!3727626 b!3727623) bm!271781))

(assert (= (or b!3727622 b!3727625) bm!271779))

(assert (= (or b!3727624 bm!271779) bm!271780))

(declare-fun m!4228627 () Bool)

(assert (=> b!3727620 m!4228627))

(declare-fun m!4228629 () Bool)

(assert (=> bm!271780 m!4228629))

(declare-fun m!4228631 () Bool)

(assert (=> bm!271781 m!4228631))

(assert (=> bm!271727 d!1090144))

(declare-fun b!3727629 () Bool)

(declare-fun e!2306726 () List!39794)

(declare-fun e!2306729 () List!39794)

(assert (=> b!3727629 (= e!2306726 e!2306729)))

(declare-fun c!645094 () Bool)

(assert (=> b!3727629 (= c!645094 ((_ is ElementMatch!10913) (ite c!644955 (regOne!22339 r!26968) (regTwo!22338 r!26968))))))

(declare-fun bm!271782 () Bool)

(declare-fun call!271788 () List!39794)

(declare-fun c!645096 () Bool)

(assert (=> bm!271782 (= call!271788 (usedCharacters!1176 (ite c!645096 (regOne!22339 (ite c!644955 (regOne!22339 r!26968) (regTwo!22338 r!26968))) (regTwo!22338 (ite c!644955 (regOne!22339 r!26968) (regTwo!22338 r!26968))))))))

(declare-fun b!3727630 () Bool)

(assert (=> b!3727630 (= e!2306729 (Cons!39670 (c!644899 (ite c!644955 (regOne!22339 r!26968) (regTwo!22338 r!26968))) Nil!39670))))

(declare-fun bm!271783 () Bool)

(declare-fun call!271790 () List!39794)

(declare-fun call!271789 () List!39794)

(assert (=> bm!271783 (= call!271790 call!271789)))

(declare-fun c!645093 () Bool)

(declare-fun bm!271784 () Bool)

(assert (=> bm!271784 (= call!271789 (usedCharacters!1176 (ite c!645093 (reg!11242 (ite c!644955 (regOne!22339 r!26968) (regTwo!22338 r!26968))) (ite c!645096 (regTwo!22339 (ite c!644955 (regOne!22339 r!26968) (regTwo!22338 r!26968))) (regOne!22338 (ite c!644955 (regOne!22339 r!26968) (regTwo!22338 r!26968)))))))))

(declare-fun b!3727632 () Bool)

(declare-fun e!2306727 () List!39794)

(declare-fun call!271787 () List!39794)

(assert (=> b!3727632 (= e!2306727 call!271787)))

(declare-fun b!3727633 () Bool)

(assert (=> b!3727633 (= e!2306727 call!271787)))

(declare-fun b!3727634 () Bool)

(assert (=> b!3727634 (= c!645093 ((_ is Star!10913) (ite c!644955 (regOne!22339 r!26968) (regTwo!22338 r!26968))))))

(declare-fun e!2306728 () List!39794)

(assert (=> b!3727634 (= e!2306729 e!2306728)))

(declare-fun bm!271785 () Bool)

(assert (=> bm!271785 (= call!271787 (++!9837 (ite c!645096 call!271788 call!271790) (ite c!645096 call!271790 call!271788)))))

(declare-fun b!3727631 () Bool)

(assert (=> b!3727631 (= e!2306728 e!2306727)))

(assert (=> b!3727631 (= c!645096 ((_ is Union!10913) (ite c!644955 (regOne!22339 r!26968) (regTwo!22338 r!26968))))))

(declare-fun d!1090146 () Bool)

(declare-fun c!645095 () Bool)

(assert (=> d!1090146 (= c!645095 (or ((_ is EmptyExpr!10913) (ite c!644955 (regOne!22339 r!26968) (regTwo!22338 r!26968))) ((_ is EmptyLang!10913) (ite c!644955 (regOne!22339 r!26968) (regTwo!22338 r!26968)))))))

(assert (=> d!1090146 (= (usedCharacters!1176 (ite c!644955 (regOne!22339 r!26968) (regTwo!22338 r!26968))) e!2306726)))

(declare-fun b!3727635 () Bool)

(assert (=> b!3727635 (= e!2306726 Nil!39670)))

(declare-fun b!3727636 () Bool)

(assert (=> b!3727636 (= e!2306728 call!271789)))

(assert (= (and d!1090146 c!645095) b!3727635))

(assert (= (and d!1090146 (not c!645095)) b!3727629))

(assert (= (and b!3727629 c!645094) b!3727630))

(assert (= (and b!3727629 (not c!645094)) b!3727634))

(assert (= (and b!3727634 c!645093) b!3727636))

(assert (= (and b!3727634 (not c!645093)) b!3727631))

(assert (= (and b!3727631 c!645096) b!3727633))

(assert (= (and b!3727631 (not c!645096)) b!3727632))

(assert (= (or b!3727633 b!3727632) bm!271782))

(assert (= (or b!3727633 b!3727632) bm!271783))

(assert (= (or b!3727633 b!3727632) bm!271785))

(assert (= (or b!3727636 bm!271783) bm!271784))

(declare-fun m!4228633 () Bool)

(assert (=> bm!271782 m!4228633))

(declare-fun m!4228635 () Bool)

(assert (=> bm!271784 m!4228635))

(declare-fun m!4228637 () Bool)

(assert (=> bm!271785 m!4228637))

(assert (=> bm!271668 d!1090146))

(declare-fun b!3727637 () Bool)

(declare-fun e!2306730 () List!39794)

(declare-fun e!2306733 () List!39794)

(assert (=> b!3727637 (= e!2306730 e!2306733)))

(declare-fun c!645098 () Bool)

(assert (=> b!3727637 (= c!645098 ((_ is ElementMatch!10913) (ite c!644948 (reg!11242 (regTwo!22339 r!26968)) (ite c!644951 (regTwo!22339 (regTwo!22339 r!26968)) (regOne!22338 (regTwo!22339 r!26968))))))))

(declare-fun call!271792 () List!39794)

(declare-fun bm!271786 () Bool)

(declare-fun c!645100 () Bool)

(assert (=> bm!271786 (= call!271792 (usedCharacters!1176 (ite c!645100 (regOne!22339 (ite c!644948 (reg!11242 (regTwo!22339 r!26968)) (ite c!644951 (regTwo!22339 (regTwo!22339 r!26968)) (regOne!22338 (regTwo!22339 r!26968))))) (regTwo!22338 (ite c!644948 (reg!11242 (regTwo!22339 r!26968)) (ite c!644951 (regTwo!22339 (regTwo!22339 r!26968)) (regOne!22338 (regTwo!22339 r!26968))))))))))

(declare-fun b!3727638 () Bool)

(assert (=> b!3727638 (= e!2306733 (Cons!39670 (c!644899 (ite c!644948 (reg!11242 (regTwo!22339 r!26968)) (ite c!644951 (regTwo!22339 (regTwo!22339 r!26968)) (regOne!22338 (regTwo!22339 r!26968))))) Nil!39670))))

(declare-fun bm!271787 () Bool)

(declare-fun call!271794 () List!39794)

(declare-fun call!271793 () List!39794)

(assert (=> bm!271787 (= call!271794 call!271793)))

(declare-fun c!645097 () Bool)

(declare-fun bm!271788 () Bool)

(assert (=> bm!271788 (= call!271793 (usedCharacters!1176 (ite c!645097 (reg!11242 (ite c!644948 (reg!11242 (regTwo!22339 r!26968)) (ite c!644951 (regTwo!22339 (regTwo!22339 r!26968)) (regOne!22338 (regTwo!22339 r!26968))))) (ite c!645100 (regTwo!22339 (ite c!644948 (reg!11242 (regTwo!22339 r!26968)) (ite c!644951 (regTwo!22339 (regTwo!22339 r!26968)) (regOne!22338 (regTwo!22339 r!26968))))) (regOne!22338 (ite c!644948 (reg!11242 (regTwo!22339 r!26968)) (ite c!644951 (regTwo!22339 (regTwo!22339 r!26968)) (regOne!22338 (regTwo!22339 r!26968)))))))))))

(declare-fun b!3727640 () Bool)

(declare-fun e!2306731 () List!39794)

(declare-fun call!271791 () List!39794)

(assert (=> b!3727640 (= e!2306731 call!271791)))

(declare-fun b!3727641 () Bool)

(assert (=> b!3727641 (= e!2306731 call!271791)))

(declare-fun b!3727642 () Bool)

(assert (=> b!3727642 (= c!645097 ((_ is Star!10913) (ite c!644948 (reg!11242 (regTwo!22339 r!26968)) (ite c!644951 (regTwo!22339 (regTwo!22339 r!26968)) (regOne!22338 (regTwo!22339 r!26968))))))))

(declare-fun e!2306732 () List!39794)

(assert (=> b!3727642 (= e!2306733 e!2306732)))

(declare-fun bm!271789 () Bool)

(assert (=> bm!271789 (= call!271791 (++!9837 (ite c!645100 call!271792 call!271794) (ite c!645100 call!271794 call!271792)))))

(declare-fun b!3727639 () Bool)

(assert (=> b!3727639 (= e!2306732 e!2306731)))

(assert (=> b!3727639 (= c!645100 ((_ is Union!10913) (ite c!644948 (reg!11242 (regTwo!22339 r!26968)) (ite c!644951 (regTwo!22339 (regTwo!22339 r!26968)) (regOne!22338 (regTwo!22339 r!26968))))))))

(declare-fun c!645099 () Bool)

(declare-fun d!1090148 () Bool)

(assert (=> d!1090148 (= c!645099 (or ((_ is EmptyExpr!10913) (ite c!644948 (reg!11242 (regTwo!22339 r!26968)) (ite c!644951 (regTwo!22339 (regTwo!22339 r!26968)) (regOne!22338 (regTwo!22339 r!26968))))) ((_ is EmptyLang!10913) (ite c!644948 (reg!11242 (regTwo!22339 r!26968)) (ite c!644951 (regTwo!22339 (regTwo!22339 r!26968)) (regOne!22338 (regTwo!22339 r!26968)))))))))

(assert (=> d!1090148 (= (usedCharacters!1176 (ite c!644948 (reg!11242 (regTwo!22339 r!26968)) (ite c!644951 (regTwo!22339 (regTwo!22339 r!26968)) (regOne!22338 (regTwo!22339 r!26968))))) e!2306730)))

(declare-fun b!3727643 () Bool)

(assert (=> b!3727643 (= e!2306730 Nil!39670)))

(declare-fun b!3727644 () Bool)

(assert (=> b!3727644 (= e!2306732 call!271793)))

(assert (= (and d!1090148 c!645099) b!3727643))

(assert (= (and d!1090148 (not c!645099)) b!3727637))

(assert (= (and b!3727637 c!645098) b!3727638))

(assert (= (and b!3727637 (not c!645098)) b!3727642))

(assert (= (and b!3727642 c!645097) b!3727644))

(assert (= (and b!3727642 (not c!645097)) b!3727639))

(assert (= (and b!3727639 c!645100) b!3727641))

(assert (= (and b!3727639 (not c!645100)) b!3727640))

(assert (= (or b!3727641 b!3727640) bm!271786))

(assert (= (or b!3727641 b!3727640) bm!271787))

(assert (= (or b!3727641 b!3727640) bm!271789))

(assert (= (or b!3727644 bm!271787) bm!271788))

(declare-fun m!4228639 () Bool)

(assert (=> bm!271786 m!4228639))

(declare-fun m!4228641 () Bool)

(assert (=> bm!271788 m!4228641))

(declare-fun m!4228643 () Bool)

(assert (=> bm!271789 m!4228643))

(assert (=> bm!271666 d!1090148))

(declare-fun bm!271790 () Bool)

(declare-fun call!271797 () Bool)

(declare-fun call!271796 () Bool)

(assert (=> bm!271790 (= call!271797 call!271796)))

(declare-fun b!3727645 () Bool)

(declare-fun e!2306737 () Bool)

(declare-fun e!2306738 () Bool)

(assert (=> b!3727645 (= e!2306737 e!2306738)))

(declare-fun res!1513944 () Bool)

(assert (=> b!3727645 (= res!1513944 (not (nullable!3821 (reg!11242 (ite c!644975 (regTwo!22339 (regTwo!22339 r!26968)) (regTwo!22338 (regTwo!22339 r!26968)))))))))

(assert (=> b!3727645 (=> (not res!1513944) (not e!2306738))))

(declare-fun b!3727646 () Bool)

(declare-fun e!2306735 () Bool)

(assert (=> b!3727646 (= e!2306737 e!2306735)))

(declare-fun c!645102 () Bool)

(assert (=> b!3727646 (= c!645102 ((_ is Union!10913) (ite c!644975 (regTwo!22339 (regTwo!22339 r!26968)) (regTwo!22338 (regTwo!22339 r!26968)))))))

(declare-fun d!1090150 () Bool)

(declare-fun res!1513942 () Bool)

(declare-fun e!2306734 () Bool)

(assert (=> d!1090150 (=> res!1513942 e!2306734)))

(assert (=> d!1090150 (= res!1513942 ((_ is ElementMatch!10913) (ite c!644975 (regTwo!22339 (regTwo!22339 r!26968)) (regTwo!22338 (regTwo!22339 r!26968)))))))

(assert (=> d!1090150 (= (validRegex!5020 (ite c!644975 (regTwo!22339 (regTwo!22339 r!26968)) (regTwo!22338 (regTwo!22339 r!26968)))) e!2306734)))

(declare-fun b!3727647 () Bool)

(declare-fun res!1513945 () Bool)

(declare-fun e!2306740 () Bool)

(assert (=> b!3727647 (=> (not res!1513945) (not e!2306740))))

(assert (=> b!3727647 (= res!1513945 call!271797)))

(assert (=> b!3727647 (= e!2306735 e!2306740)))

(declare-fun b!3727648 () Bool)

(declare-fun e!2306739 () Bool)

(declare-fun call!271795 () Bool)

(assert (=> b!3727648 (= e!2306739 call!271795)))

(declare-fun c!645101 () Bool)

(declare-fun bm!271791 () Bool)

(assert (=> bm!271791 (= call!271796 (validRegex!5020 (ite c!645101 (reg!11242 (ite c!644975 (regTwo!22339 (regTwo!22339 r!26968)) (regTwo!22338 (regTwo!22339 r!26968)))) (ite c!645102 (regOne!22339 (ite c!644975 (regTwo!22339 (regTwo!22339 r!26968)) (regTwo!22338 (regTwo!22339 r!26968)))) (regOne!22338 (ite c!644975 (regTwo!22339 (regTwo!22339 r!26968)) (regTwo!22338 (regTwo!22339 r!26968))))))))))

(declare-fun b!3727649 () Bool)

(assert (=> b!3727649 (= e!2306738 call!271796)))

(declare-fun bm!271792 () Bool)

(assert (=> bm!271792 (= call!271795 (validRegex!5020 (ite c!645102 (regTwo!22339 (ite c!644975 (regTwo!22339 (regTwo!22339 r!26968)) (regTwo!22338 (regTwo!22339 r!26968)))) (regTwo!22338 (ite c!644975 (regTwo!22339 (regTwo!22339 r!26968)) (regTwo!22338 (regTwo!22339 r!26968)))))))))

(declare-fun b!3727650 () Bool)

(declare-fun e!2306736 () Bool)

(assert (=> b!3727650 (= e!2306736 e!2306739)))

(declare-fun res!1513943 () Bool)

(assert (=> b!3727650 (=> (not res!1513943) (not e!2306739))))

(assert (=> b!3727650 (= res!1513943 call!271797)))

(declare-fun b!3727651 () Bool)

(assert (=> b!3727651 (= e!2306740 call!271795)))

(declare-fun b!3727652 () Bool)

(declare-fun res!1513941 () Bool)

(assert (=> b!3727652 (=> res!1513941 e!2306736)))

(assert (=> b!3727652 (= res!1513941 (not ((_ is Concat!17184) (ite c!644975 (regTwo!22339 (regTwo!22339 r!26968)) (regTwo!22338 (regTwo!22339 r!26968))))))))

(assert (=> b!3727652 (= e!2306735 e!2306736)))

(declare-fun b!3727653 () Bool)

(assert (=> b!3727653 (= e!2306734 e!2306737)))

(assert (=> b!3727653 (= c!645101 ((_ is Star!10913) (ite c!644975 (regTwo!22339 (regTwo!22339 r!26968)) (regTwo!22338 (regTwo!22339 r!26968)))))))

(assert (= (and d!1090150 (not res!1513942)) b!3727653))

(assert (= (and b!3727653 c!645101) b!3727645))

(assert (= (and b!3727653 (not c!645101)) b!3727646))

(assert (= (and b!3727645 res!1513944) b!3727649))

(assert (= (and b!3727646 c!645102) b!3727647))

(assert (= (and b!3727646 (not c!645102)) b!3727652))

(assert (= (and b!3727647 res!1513945) b!3727651))

(assert (= (and b!3727652 (not res!1513941)) b!3727650))

(assert (= (and b!3727650 res!1513943) b!3727648))

(assert (= (or b!3727651 b!3727648) bm!271792))

(assert (= (or b!3727647 b!3727650) bm!271790))

(assert (= (or b!3727649 bm!271790) bm!271791))

(declare-fun m!4228645 () Bool)

(assert (=> b!3727645 m!4228645))

(declare-fun m!4228647 () Bool)

(assert (=> bm!271791 m!4228647))

(declare-fun m!4228649 () Bool)

(assert (=> bm!271792 m!4228649))

(assert (=> bm!271694 d!1090150))

(declare-fun d!1090152 () Bool)

(declare-fun lt!1298478 () Bool)

(assert (=> d!1090152 (= lt!1298478 (select (content!5770 (t!302477 (usedCharacters!1176 r!26968))) cNot!42))))

(declare-fun e!2306741 () Bool)

(assert (=> d!1090152 (= lt!1298478 e!2306741)))

(declare-fun res!1513946 () Bool)

(assert (=> d!1090152 (=> (not res!1513946) (not e!2306741))))

(assert (=> d!1090152 (= res!1513946 ((_ is Cons!39670) (t!302477 (usedCharacters!1176 r!26968))))))

(assert (=> d!1090152 (= (contains!8006 (t!302477 (usedCharacters!1176 r!26968)) cNot!42) lt!1298478)))

(declare-fun b!3727654 () Bool)

(declare-fun e!2306742 () Bool)

(assert (=> b!3727654 (= e!2306741 e!2306742)))

(declare-fun res!1513947 () Bool)

(assert (=> b!3727654 (=> res!1513947 e!2306742)))

(assert (=> b!3727654 (= res!1513947 (= (h!45090 (t!302477 (usedCharacters!1176 r!26968))) cNot!42))))

(declare-fun b!3727655 () Bool)

(assert (=> b!3727655 (= e!2306742 (contains!8006 (t!302477 (t!302477 (usedCharacters!1176 r!26968))) cNot!42))))

(assert (= (and d!1090152 res!1513946) b!3727654))

(assert (= (and b!3727654 (not res!1513947)) b!3727655))

(assert (=> d!1090152 m!4228545))

(declare-fun m!4228651 () Bool)

(assert (=> d!1090152 m!4228651))

(declare-fun m!4228653 () Bool)

(assert (=> b!3727655 m!4228653))

(assert (=> b!3727224 d!1090152))

(declare-fun bm!271793 () Bool)

(declare-fun call!271800 () Bool)

(declare-fun call!271799 () Bool)

(assert (=> bm!271793 (= call!271800 call!271799)))

(declare-fun b!3727656 () Bool)

(declare-fun e!2306746 () Bool)

(declare-fun e!2306747 () Bool)

(assert (=> b!3727656 (= e!2306746 e!2306747)))

(declare-fun res!1513951 () Bool)

(assert (=> b!3727656 (= res!1513951 (not (nullable!3821 (reg!11242 (ite c!645016 (reg!11242 r!26968) (ite c!645017 (regOne!22339 r!26968) (regOne!22338 r!26968)))))))))

(assert (=> b!3727656 (=> (not res!1513951) (not e!2306747))))

(declare-fun b!3727657 () Bool)

(declare-fun e!2306744 () Bool)

(assert (=> b!3727657 (= e!2306746 e!2306744)))

(declare-fun c!645104 () Bool)

(assert (=> b!3727657 (= c!645104 ((_ is Union!10913) (ite c!645016 (reg!11242 r!26968) (ite c!645017 (regOne!22339 r!26968) (regOne!22338 r!26968)))))))

(declare-fun d!1090154 () Bool)

(declare-fun res!1513949 () Bool)

(declare-fun e!2306743 () Bool)

(assert (=> d!1090154 (=> res!1513949 e!2306743)))

(assert (=> d!1090154 (= res!1513949 ((_ is ElementMatch!10913) (ite c!645016 (reg!11242 r!26968) (ite c!645017 (regOne!22339 r!26968) (regOne!22338 r!26968)))))))

(assert (=> d!1090154 (= (validRegex!5020 (ite c!645016 (reg!11242 r!26968) (ite c!645017 (regOne!22339 r!26968) (regOne!22338 r!26968)))) e!2306743)))

(declare-fun b!3727658 () Bool)

(declare-fun res!1513952 () Bool)

(declare-fun e!2306749 () Bool)

(assert (=> b!3727658 (=> (not res!1513952) (not e!2306749))))

(assert (=> b!3727658 (= res!1513952 call!271800)))

(assert (=> b!3727658 (= e!2306744 e!2306749)))

(declare-fun b!3727659 () Bool)

(declare-fun e!2306748 () Bool)

(declare-fun call!271798 () Bool)

(assert (=> b!3727659 (= e!2306748 call!271798)))

(declare-fun bm!271794 () Bool)

(declare-fun c!645103 () Bool)

(assert (=> bm!271794 (= call!271799 (validRegex!5020 (ite c!645103 (reg!11242 (ite c!645016 (reg!11242 r!26968) (ite c!645017 (regOne!22339 r!26968) (regOne!22338 r!26968)))) (ite c!645104 (regOne!22339 (ite c!645016 (reg!11242 r!26968) (ite c!645017 (regOne!22339 r!26968) (regOne!22338 r!26968)))) (regOne!22338 (ite c!645016 (reg!11242 r!26968) (ite c!645017 (regOne!22339 r!26968) (regOne!22338 r!26968))))))))))

(declare-fun b!3727660 () Bool)

(assert (=> b!3727660 (= e!2306747 call!271799)))

(declare-fun bm!271795 () Bool)

(assert (=> bm!271795 (= call!271798 (validRegex!5020 (ite c!645104 (regTwo!22339 (ite c!645016 (reg!11242 r!26968) (ite c!645017 (regOne!22339 r!26968) (regOne!22338 r!26968)))) (regTwo!22338 (ite c!645016 (reg!11242 r!26968) (ite c!645017 (regOne!22339 r!26968) (regOne!22338 r!26968)))))))))

(declare-fun b!3727661 () Bool)

(declare-fun e!2306745 () Bool)

(assert (=> b!3727661 (= e!2306745 e!2306748)))

(declare-fun res!1513950 () Bool)

(assert (=> b!3727661 (=> (not res!1513950) (not e!2306748))))

(assert (=> b!3727661 (= res!1513950 call!271800)))

(declare-fun b!3727662 () Bool)

(assert (=> b!3727662 (= e!2306749 call!271798)))

(declare-fun b!3727663 () Bool)

(declare-fun res!1513948 () Bool)

(assert (=> b!3727663 (=> res!1513948 e!2306745)))

(assert (=> b!3727663 (= res!1513948 (not ((_ is Concat!17184) (ite c!645016 (reg!11242 r!26968) (ite c!645017 (regOne!22339 r!26968) (regOne!22338 r!26968))))))))

(assert (=> b!3727663 (= e!2306744 e!2306745)))

(declare-fun b!3727664 () Bool)

(assert (=> b!3727664 (= e!2306743 e!2306746)))

(assert (=> b!3727664 (= c!645103 ((_ is Star!10913) (ite c!645016 (reg!11242 r!26968) (ite c!645017 (regOne!22339 r!26968) (regOne!22338 r!26968)))))))

(assert (= (and d!1090154 (not res!1513949)) b!3727664))

(assert (= (and b!3727664 c!645103) b!3727656))

(assert (= (and b!3727664 (not c!645103)) b!3727657))

(assert (= (and b!3727656 res!1513951) b!3727660))

(assert (= (and b!3727657 c!645104) b!3727658))

(assert (= (and b!3727657 (not c!645104)) b!3727663))

(assert (= (and b!3727658 res!1513952) b!3727662))

(assert (= (and b!3727663 (not res!1513948)) b!3727661))

(assert (= (and b!3727661 res!1513950) b!3727659))

(assert (= (or b!3727662 b!3727659) bm!271795))

(assert (= (or b!3727658 b!3727661) bm!271793))

(assert (= (or b!3727660 bm!271793) bm!271794))

(declare-fun m!4228655 () Bool)

(assert (=> b!3727656 m!4228655))

(declare-fun m!4228657 () Bool)

(assert (=> bm!271794 m!4228657))

(declare-fun m!4228659 () Bool)

(assert (=> bm!271795 m!4228659))

(assert (=> bm!271726 d!1090154))

(declare-fun b!3727667 () Bool)

(declare-fun e!2306750 () Bool)

(declare-fun tp!1134109 () Bool)

(assert (=> b!3727667 (= e!2306750 tp!1134109)))

(declare-fun b!3727666 () Bool)

(declare-fun tp!1134106 () Bool)

(declare-fun tp!1134108 () Bool)

(assert (=> b!3727666 (= e!2306750 (and tp!1134106 tp!1134108))))

(declare-fun b!3727668 () Bool)

(declare-fun tp!1134107 () Bool)

(declare-fun tp!1134105 () Bool)

(assert (=> b!3727668 (= e!2306750 (and tp!1134107 tp!1134105))))

(declare-fun b!3727665 () Bool)

(assert (=> b!3727665 (= e!2306750 tp_is_empty!18841)))

(assert (=> b!3727448 (= tp!1134081 e!2306750)))

(assert (= (and b!3727448 ((_ is ElementMatch!10913) (regOne!22338 (regTwo!22339 r!26968)))) b!3727665))

(assert (= (and b!3727448 ((_ is Concat!17184) (regOne!22338 (regTwo!22339 r!26968)))) b!3727666))

(assert (= (and b!3727448 ((_ is Star!10913) (regOne!22338 (regTwo!22339 r!26968)))) b!3727667))

(assert (= (and b!3727448 ((_ is Union!10913) (regOne!22338 (regTwo!22339 r!26968)))) b!3727668))

(declare-fun b!3727671 () Bool)

(declare-fun e!2306751 () Bool)

(declare-fun tp!1134114 () Bool)

(assert (=> b!3727671 (= e!2306751 tp!1134114)))

(declare-fun b!3727670 () Bool)

(declare-fun tp!1134111 () Bool)

(declare-fun tp!1134113 () Bool)

(assert (=> b!3727670 (= e!2306751 (and tp!1134111 tp!1134113))))

(declare-fun b!3727672 () Bool)

(declare-fun tp!1134112 () Bool)

(declare-fun tp!1134110 () Bool)

(assert (=> b!3727672 (= e!2306751 (and tp!1134112 tp!1134110))))

(declare-fun b!3727669 () Bool)

(assert (=> b!3727669 (= e!2306751 tp_is_empty!18841)))

(assert (=> b!3727448 (= tp!1134083 e!2306751)))

(assert (= (and b!3727448 ((_ is ElementMatch!10913) (regTwo!22338 (regTwo!22339 r!26968)))) b!3727669))

(assert (= (and b!3727448 ((_ is Concat!17184) (regTwo!22338 (regTwo!22339 r!26968)))) b!3727670))

(assert (= (and b!3727448 ((_ is Star!10913) (regTwo!22338 (regTwo!22339 r!26968)))) b!3727671))

(assert (= (and b!3727448 ((_ is Union!10913) (regTwo!22338 (regTwo!22339 r!26968)))) b!3727672))

(declare-fun b!3727675 () Bool)

(declare-fun e!2306752 () Bool)

(declare-fun tp!1134119 () Bool)

(assert (=> b!3727675 (= e!2306752 tp!1134119)))

(declare-fun b!3727674 () Bool)

(declare-fun tp!1134116 () Bool)

(declare-fun tp!1134118 () Bool)

(assert (=> b!3727674 (= e!2306752 (and tp!1134116 tp!1134118))))

(declare-fun b!3727676 () Bool)

(declare-fun tp!1134117 () Bool)

(declare-fun tp!1134115 () Bool)

(assert (=> b!3727676 (= e!2306752 (and tp!1134117 tp!1134115))))

(declare-fun b!3727673 () Bool)

(assert (=> b!3727673 (= e!2306752 tp_is_empty!18841)))

(assert (=> b!3727432 (= tp!1134061 e!2306752)))

(assert (= (and b!3727432 ((_ is ElementMatch!10913) (regOne!22338 (regOne!22338 r!26968)))) b!3727673))

(assert (= (and b!3727432 ((_ is Concat!17184) (regOne!22338 (regOne!22338 r!26968)))) b!3727674))

(assert (= (and b!3727432 ((_ is Star!10913) (regOne!22338 (regOne!22338 r!26968)))) b!3727675))

(assert (= (and b!3727432 ((_ is Union!10913) (regOne!22338 (regOne!22338 r!26968)))) b!3727676))

(declare-fun b!3727679 () Bool)

(declare-fun e!2306753 () Bool)

(declare-fun tp!1134124 () Bool)

(assert (=> b!3727679 (= e!2306753 tp!1134124)))

(declare-fun b!3727678 () Bool)

(declare-fun tp!1134121 () Bool)

(declare-fun tp!1134123 () Bool)

(assert (=> b!3727678 (= e!2306753 (and tp!1134121 tp!1134123))))

(declare-fun b!3727680 () Bool)

(declare-fun tp!1134122 () Bool)

(declare-fun tp!1134120 () Bool)

(assert (=> b!3727680 (= e!2306753 (and tp!1134122 tp!1134120))))

(declare-fun b!3727677 () Bool)

(assert (=> b!3727677 (= e!2306753 tp_is_empty!18841)))

(assert (=> b!3727432 (= tp!1134063 e!2306753)))

(assert (= (and b!3727432 ((_ is ElementMatch!10913) (regTwo!22338 (regOne!22338 r!26968)))) b!3727677))

(assert (= (and b!3727432 ((_ is Concat!17184) (regTwo!22338 (regOne!22338 r!26968)))) b!3727678))

(assert (= (and b!3727432 ((_ is Star!10913) (regTwo!22338 (regOne!22338 r!26968)))) b!3727679))

(assert (= (and b!3727432 ((_ is Union!10913) (regTwo!22338 (regOne!22338 r!26968)))) b!3727680))

(declare-fun b!3727683 () Bool)

(declare-fun e!2306754 () Bool)

(declare-fun tp!1134129 () Bool)

(assert (=> b!3727683 (= e!2306754 tp!1134129)))

(declare-fun b!3727682 () Bool)

(declare-fun tp!1134126 () Bool)

(declare-fun tp!1134128 () Bool)

(assert (=> b!3727682 (= e!2306754 (and tp!1134126 tp!1134128))))

(declare-fun b!3727684 () Bool)

(declare-fun tp!1134127 () Bool)

(declare-fun tp!1134125 () Bool)

(assert (=> b!3727684 (= e!2306754 (and tp!1134127 tp!1134125))))

(declare-fun b!3727681 () Bool)

(assert (=> b!3727681 (= e!2306754 tp_is_empty!18841)))

(assert (=> b!3727437 (= tp!1134069 e!2306754)))

(assert (= (and b!3727437 ((_ is ElementMatch!10913) (reg!11242 (regTwo!22338 r!26968)))) b!3727681))

(assert (= (and b!3727437 ((_ is Concat!17184) (reg!11242 (regTwo!22338 r!26968)))) b!3727682))

(assert (= (and b!3727437 ((_ is Star!10913) (reg!11242 (regTwo!22338 r!26968)))) b!3727683))

(assert (= (and b!3727437 ((_ is Union!10913) (reg!11242 (regTwo!22338 r!26968)))) b!3727684))

(declare-fun b!3727687 () Bool)

(declare-fun e!2306755 () Bool)

(declare-fun tp!1134134 () Bool)

(assert (=> b!3727687 (= e!2306755 tp!1134134)))

(declare-fun b!3727686 () Bool)

(declare-fun tp!1134131 () Bool)

(declare-fun tp!1134133 () Bool)

(assert (=> b!3727686 (= e!2306755 (and tp!1134131 tp!1134133))))

(declare-fun b!3727688 () Bool)

(declare-fun tp!1134132 () Bool)

(declare-fun tp!1134130 () Bool)

(assert (=> b!3727688 (= e!2306755 (and tp!1134132 tp!1134130))))

(declare-fun b!3727685 () Bool)

(assert (=> b!3727685 (= e!2306755 tp_is_empty!18841)))

(assert (=> b!3727425 (= tp!1134051 e!2306755)))

(assert (= (and b!3727425 ((_ is ElementMatch!10913) (reg!11242 (reg!11242 r!26968)))) b!3727685))

(assert (= (and b!3727425 ((_ is Concat!17184) (reg!11242 (reg!11242 r!26968)))) b!3727686))

(assert (= (and b!3727425 ((_ is Star!10913) (reg!11242 (reg!11242 r!26968)))) b!3727687))

(assert (= (and b!3727425 ((_ is Union!10913) (reg!11242 (reg!11242 r!26968)))) b!3727688))

(declare-fun b!3727691 () Bool)

(declare-fun e!2306756 () Bool)

(declare-fun tp!1134139 () Bool)

(assert (=> b!3727691 (= e!2306756 tp!1134139)))

(declare-fun b!3727690 () Bool)

(declare-fun tp!1134136 () Bool)

(declare-fun tp!1134138 () Bool)

(assert (=> b!3727690 (= e!2306756 (and tp!1134136 tp!1134138))))

(declare-fun b!3727692 () Bool)

(declare-fun tp!1134137 () Bool)

(declare-fun tp!1134135 () Bool)

(assert (=> b!3727692 (= e!2306756 (and tp!1134137 tp!1134135))))

(declare-fun b!3727689 () Bool)

(assert (=> b!3727689 (= e!2306756 tp_is_empty!18841)))

(assert (=> b!3727450 (= tp!1134082 e!2306756)))

(assert (= (and b!3727450 ((_ is ElementMatch!10913) (regOne!22339 (regTwo!22339 r!26968)))) b!3727689))

(assert (= (and b!3727450 ((_ is Concat!17184) (regOne!22339 (regTwo!22339 r!26968)))) b!3727690))

(assert (= (and b!3727450 ((_ is Star!10913) (regOne!22339 (regTwo!22339 r!26968)))) b!3727691))

(assert (= (and b!3727450 ((_ is Union!10913) (regOne!22339 (regTwo!22339 r!26968)))) b!3727692))

(declare-fun b!3727695 () Bool)

(declare-fun e!2306757 () Bool)

(declare-fun tp!1134144 () Bool)

(assert (=> b!3727695 (= e!2306757 tp!1134144)))

(declare-fun b!3727694 () Bool)

(declare-fun tp!1134141 () Bool)

(declare-fun tp!1134143 () Bool)

(assert (=> b!3727694 (= e!2306757 (and tp!1134141 tp!1134143))))

(declare-fun b!3727696 () Bool)

(declare-fun tp!1134142 () Bool)

(declare-fun tp!1134140 () Bool)

(assert (=> b!3727696 (= e!2306757 (and tp!1134142 tp!1134140))))

(declare-fun b!3727693 () Bool)

(assert (=> b!3727693 (= e!2306757 tp_is_empty!18841)))

(assert (=> b!3727450 (= tp!1134080 e!2306757)))

(assert (= (and b!3727450 ((_ is ElementMatch!10913) (regTwo!22339 (regTwo!22339 r!26968)))) b!3727693))

(assert (= (and b!3727450 ((_ is Concat!17184) (regTwo!22339 (regTwo!22339 r!26968)))) b!3727694))

(assert (= (and b!3727450 ((_ is Star!10913) (regTwo!22339 (regTwo!22339 r!26968)))) b!3727695))

(assert (= (and b!3727450 ((_ is Union!10913) (regTwo!22339 (regTwo!22339 r!26968)))) b!3727696))

(declare-fun b!3727699 () Bool)

(declare-fun e!2306758 () Bool)

(declare-fun tp!1134149 () Bool)

(assert (=> b!3727699 (= e!2306758 tp!1134149)))

(declare-fun b!3727698 () Bool)

(declare-fun tp!1134146 () Bool)

(declare-fun tp!1134148 () Bool)

(assert (=> b!3727698 (= e!2306758 (and tp!1134146 tp!1134148))))

(declare-fun b!3727700 () Bool)

(declare-fun tp!1134147 () Bool)

(declare-fun tp!1134145 () Bool)

(assert (=> b!3727700 (= e!2306758 (and tp!1134147 tp!1134145))))

(declare-fun b!3727697 () Bool)

(assert (=> b!3727697 (= e!2306758 tp_is_empty!18841)))

(assert (=> b!3727436 (= tp!1134066 e!2306758)))

(assert (= (and b!3727436 ((_ is ElementMatch!10913) (regOne!22338 (regTwo!22338 r!26968)))) b!3727697))

(assert (= (and b!3727436 ((_ is Concat!17184) (regOne!22338 (regTwo!22338 r!26968)))) b!3727698))

(assert (= (and b!3727436 ((_ is Star!10913) (regOne!22338 (regTwo!22338 r!26968)))) b!3727699))

(assert (= (and b!3727436 ((_ is Union!10913) (regOne!22338 (regTwo!22338 r!26968)))) b!3727700))

(declare-fun b!3727703 () Bool)

(declare-fun e!2306759 () Bool)

(declare-fun tp!1134154 () Bool)

(assert (=> b!3727703 (= e!2306759 tp!1134154)))

(declare-fun b!3727702 () Bool)

(declare-fun tp!1134151 () Bool)

(declare-fun tp!1134153 () Bool)

(assert (=> b!3727702 (= e!2306759 (and tp!1134151 tp!1134153))))

(declare-fun b!3727704 () Bool)

(declare-fun tp!1134152 () Bool)

(declare-fun tp!1134150 () Bool)

(assert (=> b!3727704 (= e!2306759 (and tp!1134152 tp!1134150))))

(declare-fun b!3727701 () Bool)

(assert (=> b!3727701 (= e!2306759 tp_is_empty!18841)))

(assert (=> b!3727436 (= tp!1134068 e!2306759)))

(assert (= (and b!3727436 ((_ is ElementMatch!10913) (regTwo!22338 (regTwo!22338 r!26968)))) b!3727701))

(assert (= (and b!3727436 ((_ is Concat!17184) (regTwo!22338 (regTwo!22338 r!26968)))) b!3727702))

(assert (= (and b!3727436 ((_ is Star!10913) (regTwo!22338 (regTwo!22338 r!26968)))) b!3727703))

(assert (= (and b!3727436 ((_ is Union!10913) (regTwo!22338 (regTwo!22338 r!26968)))) b!3727704))

(declare-fun b!3727707 () Bool)

(declare-fun e!2306760 () Bool)

(declare-fun tp!1134159 () Bool)

(assert (=> b!3727707 (= e!2306760 tp!1134159)))

(declare-fun b!3727706 () Bool)

(declare-fun tp!1134156 () Bool)

(declare-fun tp!1134158 () Bool)

(assert (=> b!3727706 (= e!2306760 (and tp!1134156 tp!1134158))))

(declare-fun b!3727708 () Bool)

(declare-fun tp!1134157 () Bool)

(declare-fun tp!1134155 () Bool)

(assert (=> b!3727708 (= e!2306760 (and tp!1134157 tp!1134155))))

(declare-fun b!3727705 () Bool)

(assert (=> b!3727705 (= e!2306760 tp_is_empty!18841)))

(assert (=> b!3727424 (= tp!1134048 e!2306760)))

(assert (= (and b!3727424 ((_ is ElementMatch!10913) (regOne!22338 (reg!11242 r!26968)))) b!3727705))

(assert (= (and b!3727424 ((_ is Concat!17184) (regOne!22338 (reg!11242 r!26968)))) b!3727706))

(assert (= (and b!3727424 ((_ is Star!10913) (regOne!22338 (reg!11242 r!26968)))) b!3727707))

(assert (= (and b!3727424 ((_ is Union!10913) (regOne!22338 (reg!11242 r!26968)))) b!3727708))

(declare-fun b!3727711 () Bool)

(declare-fun e!2306761 () Bool)

(declare-fun tp!1134164 () Bool)

(assert (=> b!3727711 (= e!2306761 tp!1134164)))

(declare-fun b!3727710 () Bool)

(declare-fun tp!1134161 () Bool)

(declare-fun tp!1134163 () Bool)

(assert (=> b!3727710 (= e!2306761 (and tp!1134161 tp!1134163))))

(declare-fun b!3727712 () Bool)

(declare-fun tp!1134162 () Bool)

(declare-fun tp!1134160 () Bool)

(assert (=> b!3727712 (= e!2306761 (and tp!1134162 tp!1134160))))

(declare-fun b!3727709 () Bool)

(assert (=> b!3727709 (= e!2306761 tp_is_empty!18841)))

(assert (=> b!3727424 (= tp!1134050 e!2306761)))

(assert (= (and b!3727424 ((_ is ElementMatch!10913) (regTwo!22338 (reg!11242 r!26968)))) b!3727709))

(assert (= (and b!3727424 ((_ is Concat!17184) (regTwo!22338 (reg!11242 r!26968)))) b!3727710))

(assert (= (and b!3727424 ((_ is Star!10913) (regTwo!22338 (reg!11242 r!26968)))) b!3727711))

(assert (= (and b!3727424 ((_ is Union!10913) (regTwo!22338 (reg!11242 r!26968)))) b!3727712))

(declare-fun b!3727715 () Bool)

(declare-fun e!2306762 () Bool)

(declare-fun tp!1134169 () Bool)

(assert (=> b!3727715 (= e!2306762 tp!1134169)))

(declare-fun b!3727714 () Bool)

(declare-fun tp!1134166 () Bool)

(declare-fun tp!1134168 () Bool)

(assert (=> b!3727714 (= e!2306762 (and tp!1134166 tp!1134168))))

(declare-fun b!3727716 () Bool)

(declare-fun tp!1134167 () Bool)

(declare-fun tp!1134165 () Bool)

(assert (=> b!3727716 (= e!2306762 (and tp!1134167 tp!1134165))))

(declare-fun b!3727713 () Bool)

(assert (=> b!3727713 (= e!2306762 tp_is_empty!18841)))

(assert (=> b!3727441 (= tp!1134074 e!2306762)))

(assert (= (and b!3727441 ((_ is ElementMatch!10913) (reg!11242 (regOne!22339 r!26968)))) b!3727713))

(assert (= (and b!3727441 ((_ is Concat!17184) (reg!11242 (regOne!22339 r!26968)))) b!3727714))

(assert (= (and b!3727441 ((_ is Star!10913) (reg!11242 (regOne!22339 r!26968)))) b!3727715))

(assert (= (and b!3727441 ((_ is Union!10913) (reg!11242 (regOne!22339 r!26968)))) b!3727716))

(declare-fun b!3727719 () Bool)

(declare-fun e!2306763 () Bool)

(declare-fun tp!1134174 () Bool)

(assert (=> b!3727719 (= e!2306763 tp!1134174)))

(declare-fun b!3727718 () Bool)

(declare-fun tp!1134171 () Bool)

(declare-fun tp!1134173 () Bool)

(assert (=> b!3727718 (= e!2306763 (and tp!1134171 tp!1134173))))

(declare-fun b!3727720 () Bool)

(declare-fun tp!1134172 () Bool)

(declare-fun tp!1134170 () Bool)

(assert (=> b!3727720 (= e!2306763 (and tp!1134172 tp!1134170))))

(declare-fun b!3727717 () Bool)

(assert (=> b!3727717 (= e!2306763 tp_is_empty!18841)))

(assert (=> b!3727440 (= tp!1134071 e!2306763)))

(assert (= (and b!3727440 ((_ is ElementMatch!10913) (regOne!22338 (regOne!22339 r!26968)))) b!3727717))

(assert (= (and b!3727440 ((_ is Concat!17184) (regOne!22338 (regOne!22339 r!26968)))) b!3727718))

(assert (= (and b!3727440 ((_ is Star!10913) (regOne!22338 (regOne!22339 r!26968)))) b!3727719))

(assert (= (and b!3727440 ((_ is Union!10913) (regOne!22338 (regOne!22339 r!26968)))) b!3727720))

(declare-fun b!3727723 () Bool)

(declare-fun e!2306764 () Bool)

(declare-fun tp!1134179 () Bool)

(assert (=> b!3727723 (= e!2306764 tp!1134179)))

(declare-fun b!3727722 () Bool)

(declare-fun tp!1134176 () Bool)

(declare-fun tp!1134178 () Bool)

(assert (=> b!3727722 (= e!2306764 (and tp!1134176 tp!1134178))))

(declare-fun b!3727724 () Bool)

(declare-fun tp!1134177 () Bool)

(declare-fun tp!1134175 () Bool)

(assert (=> b!3727724 (= e!2306764 (and tp!1134177 tp!1134175))))

(declare-fun b!3727721 () Bool)

(assert (=> b!3727721 (= e!2306764 tp_is_empty!18841)))

(assert (=> b!3727440 (= tp!1134073 e!2306764)))

(assert (= (and b!3727440 ((_ is ElementMatch!10913) (regTwo!22338 (regOne!22339 r!26968)))) b!3727721))

(assert (= (and b!3727440 ((_ is Concat!17184) (regTwo!22338 (regOne!22339 r!26968)))) b!3727722))

(assert (= (and b!3727440 ((_ is Star!10913) (regTwo!22338 (regOne!22339 r!26968)))) b!3727723))

(assert (= (and b!3727440 ((_ is Union!10913) (regTwo!22338 (regOne!22339 r!26968)))) b!3727724))

(declare-fun b!3727727 () Bool)

(declare-fun e!2306765 () Bool)

(declare-fun tp!1134184 () Bool)

(assert (=> b!3727727 (= e!2306765 tp!1134184)))

(declare-fun b!3727726 () Bool)

(declare-fun tp!1134181 () Bool)

(declare-fun tp!1134183 () Bool)

(assert (=> b!3727726 (= e!2306765 (and tp!1134181 tp!1134183))))

(declare-fun b!3727728 () Bool)

(declare-fun tp!1134182 () Bool)

(declare-fun tp!1134180 () Bool)

(assert (=> b!3727728 (= e!2306765 (and tp!1134182 tp!1134180))))

(declare-fun b!3727725 () Bool)

(assert (=> b!3727725 (= e!2306765 tp_is_empty!18841)))

(assert (=> b!3727449 (= tp!1134084 e!2306765)))

(assert (= (and b!3727449 ((_ is ElementMatch!10913) (reg!11242 (regTwo!22339 r!26968)))) b!3727725))

(assert (= (and b!3727449 ((_ is Concat!17184) (reg!11242 (regTwo!22339 r!26968)))) b!3727726))

(assert (= (and b!3727449 ((_ is Star!10913) (reg!11242 (regTwo!22339 r!26968)))) b!3727727))

(assert (= (and b!3727449 ((_ is Union!10913) (reg!11242 (regTwo!22339 r!26968)))) b!3727728))

(declare-fun b!3727731 () Bool)

(declare-fun e!2306766 () Bool)

(declare-fun tp!1134189 () Bool)

(assert (=> b!3727731 (= e!2306766 tp!1134189)))

(declare-fun b!3727730 () Bool)

(declare-fun tp!1134186 () Bool)

(declare-fun tp!1134188 () Bool)

(assert (=> b!3727730 (= e!2306766 (and tp!1134186 tp!1134188))))

(declare-fun b!3727732 () Bool)

(declare-fun tp!1134187 () Bool)

(declare-fun tp!1134185 () Bool)

(assert (=> b!3727732 (= e!2306766 (and tp!1134187 tp!1134185))))

(declare-fun b!3727729 () Bool)

(assert (=> b!3727729 (= e!2306766 tp_is_empty!18841)))

(assert (=> b!3727434 (= tp!1134062 e!2306766)))

(assert (= (and b!3727434 ((_ is ElementMatch!10913) (regOne!22339 (regOne!22338 r!26968)))) b!3727729))

(assert (= (and b!3727434 ((_ is Concat!17184) (regOne!22339 (regOne!22338 r!26968)))) b!3727730))

(assert (= (and b!3727434 ((_ is Star!10913) (regOne!22339 (regOne!22338 r!26968)))) b!3727731))

(assert (= (and b!3727434 ((_ is Union!10913) (regOne!22339 (regOne!22338 r!26968)))) b!3727732))

(declare-fun b!3727735 () Bool)

(declare-fun e!2306767 () Bool)

(declare-fun tp!1134194 () Bool)

(assert (=> b!3727735 (= e!2306767 tp!1134194)))

(declare-fun b!3727734 () Bool)

(declare-fun tp!1134191 () Bool)

(declare-fun tp!1134193 () Bool)

(assert (=> b!3727734 (= e!2306767 (and tp!1134191 tp!1134193))))

(declare-fun b!3727736 () Bool)

(declare-fun tp!1134192 () Bool)

(declare-fun tp!1134190 () Bool)

(assert (=> b!3727736 (= e!2306767 (and tp!1134192 tp!1134190))))

(declare-fun b!3727733 () Bool)

(assert (=> b!3727733 (= e!2306767 tp_is_empty!18841)))

(assert (=> b!3727434 (= tp!1134060 e!2306767)))

(assert (= (and b!3727434 ((_ is ElementMatch!10913) (regTwo!22339 (regOne!22338 r!26968)))) b!3727733))

(assert (= (and b!3727434 ((_ is Concat!17184) (regTwo!22339 (regOne!22338 r!26968)))) b!3727734))

(assert (= (and b!3727434 ((_ is Star!10913) (regTwo!22339 (regOne!22338 r!26968)))) b!3727735))

(assert (= (and b!3727434 ((_ is Union!10913) (regTwo!22339 (regOne!22338 r!26968)))) b!3727736))

(declare-fun b!3727739 () Bool)

(declare-fun e!2306768 () Bool)

(declare-fun tp!1134199 () Bool)

(assert (=> b!3727739 (= e!2306768 tp!1134199)))

(declare-fun b!3727738 () Bool)

(declare-fun tp!1134196 () Bool)

(declare-fun tp!1134198 () Bool)

(assert (=> b!3727738 (= e!2306768 (and tp!1134196 tp!1134198))))

(declare-fun b!3727740 () Bool)

(declare-fun tp!1134197 () Bool)

(declare-fun tp!1134195 () Bool)

(assert (=> b!3727740 (= e!2306768 (and tp!1134197 tp!1134195))))

(declare-fun b!3727737 () Bool)

(assert (=> b!3727737 (= e!2306768 tp_is_empty!18841)))

(assert (=> b!3727438 (= tp!1134067 e!2306768)))

(assert (= (and b!3727438 ((_ is ElementMatch!10913) (regOne!22339 (regTwo!22338 r!26968)))) b!3727737))

(assert (= (and b!3727438 ((_ is Concat!17184) (regOne!22339 (regTwo!22338 r!26968)))) b!3727738))

(assert (= (and b!3727438 ((_ is Star!10913) (regOne!22339 (regTwo!22338 r!26968)))) b!3727739))

(assert (= (and b!3727438 ((_ is Union!10913) (regOne!22339 (regTwo!22338 r!26968)))) b!3727740))

(declare-fun b!3727743 () Bool)

(declare-fun e!2306769 () Bool)

(declare-fun tp!1134204 () Bool)

(assert (=> b!3727743 (= e!2306769 tp!1134204)))

(declare-fun b!3727742 () Bool)

(declare-fun tp!1134201 () Bool)

(declare-fun tp!1134203 () Bool)

(assert (=> b!3727742 (= e!2306769 (and tp!1134201 tp!1134203))))

(declare-fun b!3727744 () Bool)

(declare-fun tp!1134202 () Bool)

(declare-fun tp!1134200 () Bool)

(assert (=> b!3727744 (= e!2306769 (and tp!1134202 tp!1134200))))

(declare-fun b!3727741 () Bool)

(assert (=> b!3727741 (= e!2306769 tp_is_empty!18841)))

(assert (=> b!3727438 (= tp!1134065 e!2306769)))

(assert (= (and b!3727438 ((_ is ElementMatch!10913) (regTwo!22339 (regTwo!22338 r!26968)))) b!3727741))

(assert (= (and b!3727438 ((_ is Concat!17184) (regTwo!22339 (regTwo!22338 r!26968)))) b!3727742))

(assert (= (and b!3727438 ((_ is Star!10913) (regTwo!22339 (regTwo!22338 r!26968)))) b!3727743))

(assert (= (and b!3727438 ((_ is Union!10913) (regTwo!22339 (regTwo!22338 r!26968)))) b!3727744))

(declare-fun b!3727747 () Bool)

(declare-fun e!2306770 () Bool)

(declare-fun tp!1134209 () Bool)

(assert (=> b!3727747 (= e!2306770 tp!1134209)))

(declare-fun b!3727746 () Bool)

(declare-fun tp!1134206 () Bool)

(declare-fun tp!1134208 () Bool)

(assert (=> b!3727746 (= e!2306770 (and tp!1134206 tp!1134208))))

(declare-fun b!3727748 () Bool)

(declare-fun tp!1134207 () Bool)

(declare-fun tp!1134205 () Bool)

(assert (=> b!3727748 (= e!2306770 (and tp!1134207 tp!1134205))))

(declare-fun b!3727745 () Bool)

(assert (=> b!3727745 (= e!2306770 tp_is_empty!18841)))

(assert (=> b!3727426 (= tp!1134049 e!2306770)))

(assert (= (and b!3727426 ((_ is ElementMatch!10913) (regOne!22339 (reg!11242 r!26968)))) b!3727745))

(assert (= (and b!3727426 ((_ is Concat!17184) (regOne!22339 (reg!11242 r!26968)))) b!3727746))

(assert (= (and b!3727426 ((_ is Star!10913) (regOne!22339 (reg!11242 r!26968)))) b!3727747))

(assert (= (and b!3727426 ((_ is Union!10913) (regOne!22339 (reg!11242 r!26968)))) b!3727748))

(declare-fun b!3727751 () Bool)

(declare-fun e!2306771 () Bool)

(declare-fun tp!1134214 () Bool)

(assert (=> b!3727751 (= e!2306771 tp!1134214)))

(declare-fun b!3727750 () Bool)

(declare-fun tp!1134211 () Bool)

(declare-fun tp!1134213 () Bool)

(assert (=> b!3727750 (= e!2306771 (and tp!1134211 tp!1134213))))

(declare-fun b!3727752 () Bool)

(declare-fun tp!1134212 () Bool)

(declare-fun tp!1134210 () Bool)

(assert (=> b!3727752 (= e!2306771 (and tp!1134212 tp!1134210))))

(declare-fun b!3727749 () Bool)

(assert (=> b!3727749 (= e!2306771 tp_is_empty!18841)))

(assert (=> b!3727426 (= tp!1134047 e!2306771)))

(assert (= (and b!3727426 ((_ is ElementMatch!10913) (regTwo!22339 (reg!11242 r!26968)))) b!3727749))

(assert (= (and b!3727426 ((_ is Concat!17184) (regTwo!22339 (reg!11242 r!26968)))) b!3727750))

(assert (= (and b!3727426 ((_ is Star!10913) (regTwo!22339 (reg!11242 r!26968)))) b!3727751))

(assert (= (and b!3727426 ((_ is Union!10913) (regTwo!22339 (reg!11242 r!26968)))) b!3727752))

(declare-fun b!3727755 () Bool)

(declare-fun e!2306772 () Bool)

(declare-fun tp!1134219 () Bool)

(assert (=> b!3727755 (= e!2306772 tp!1134219)))

(declare-fun b!3727754 () Bool)

(declare-fun tp!1134216 () Bool)

(declare-fun tp!1134218 () Bool)

(assert (=> b!3727754 (= e!2306772 (and tp!1134216 tp!1134218))))

(declare-fun b!3727756 () Bool)

(declare-fun tp!1134217 () Bool)

(declare-fun tp!1134215 () Bool)

(assert (=> b!3727756 (= e!2306772 (and tp!1134217 tp!1134215))))

(declare-fun b!3727753 () Bool)

(assert (=> b!3727753 (= e!2306772 tp_is_empty!18841)))

(assert (=> b!3727442 (= tp!1134072 e!2306772)))

(assert (= (and b!3727442 ((_ is ElementMatch!10913) (regOne!22339 (regOne!22339 r!26968)))) b!3727753))

(assert (= (and b!3727442 ((_ is Concat!17184) (regOne!22339 (regOne!22339 r!26968)))) b!3727754))

(assert (= (and b!3727442 ((_ is Star!10913) (regOne!22339 (regOne!22339 r!26968)))) b!3727755))

(assert (= (and b!3727442 ((_ is Union!10913) (regOne!22339 (regOne!22339 r!26968)))) b!3727756))

(declare-fun b!3727759 () Bool)

(declare-fun e!2306773 () Bool)

(declare-fun tp!1134224 () Bool)

(assert (=> b!3727759 (= e!2306773 tp!1134224)))

(declare-fun b!3727758 () Bool)

(declare-fun tp!1134221 () Bool)

(declare-fun tp!1134223 () Bool)

(assert (=> b!3727758 (= e!2306773 (and tp!1134221 tp!1134223))))

(declare-fun b!3727760 () Bool)

(declare-fun tp!1134222 () Bool)

(declare-fun tp!1134220 () Bool)

(assert (=> b!3727760 (= e!2306773 (and tp!1134222 tp!1134220))))

(declare-fun b!3727757 () Bool)

(assert (=> b!3727757 (= e!2306773 tp_is_empty!18841)))

(assert (=> b!3727442 (= tp!1134070 e!2306773)))

(assert (= (and b!3727442 ((_ is ElementMatch!10913) (regTwo!22339 (regOne!22339 r!26968)))) b!3727757))

(assert (= (and b!3727442 ((_ is Concat!17184) (regTwo!22339 (regOne!22339 r!26968)))) b!3727758))

(assert (= (and b!3727442 ((_ is Star!10913) (regTwo!22339 (regOne!22339 r!26968)))) b!3727759))

(assert (= (and b!3727442 ((_ is Union!10913) (regTwo!22339 (regOne!22339 r!26968)))) b!3727760))

(declare-fun b!3727763 () Bool)

(declare-fun e!2306774 () Bool)

(declare-fun tp!1134229 () Bool)

(assert (=> b!3727763 (= e!2306774 tp!1134229)))

(declare-fun b!3727762 () Bool)

(declare-fun tp!1134226 () Bool)

(declare-fun tp!1134228 () Bool)

(assert (=> b!3727762 (= e!2306774 (and tp!1134226 tp!1134228))))

(declare-fun b!3727764 () Bool)

(declare-fun tp!1134227 () Bool)

(declare-fun tp!1134225 () Bool)

(assert (=> b!3727764 (= e!2306774 (and tp!1134227 tp!1134225))))

(declare-fun b!3727761 () Bool)

(assert (=> b!3727761 (= e!2306774 tp_is_empty!18841)))

(assert (=> b!3727433 (= tp!1134064 e!2306774)))

(assert (= (and b!3727433 ((_ is ElementMatch!10913) (reg!11242 (regOne!22338 r!26968)))) b!3727761))

(assert (= (and b!3727433 ((_ is Concat!17184) (reg!11242 (regOne!22338 r!26968)))) b!3727762))

(assert (= (and b!3727433 ((_ is Star!10913) (reg!11242 (regOne!22338 r!26968)))) b!3727763))

(assert (= (and b!3727433 ((_ is Union!10913) (reg!11242 (regOne!22338 r!26968)))) b!3727764))

(check-sat (not b!3727695) (not b!3727744) (not bm!271782) (not b!3727675) (not b!3727732) (not b!3727714) (not b!3727734) (not bm!271773) (not b!3727671) (not b!3727706) (not b!3727687) (not bm!271758) (not b!3727711) (not b!3727758) (not bm!271784) (not bm!271788) (not b!3727762) (not b!3727645) (not b!3727692) (not bm!271781) (not bm!271766) (not b!3727667) (not b!3727716) (not b!3727751) (not bm!271775) (not b!3727690) (not d!1090142) (not b!3727674) (not b!3727498) (not b!3727739) (not b!3727702) (not b!3727746) (not b!3727585) (not b!3727730) (not bm!271737) (not bm!271751) (not b!3727679) (not b!3727750) (not b!3727582) (not bm!271785) (not b!3727755) (not bm!271771) (not b!3727724) (not d!1090096) (not d!1090100) (not b!3727743) (not b!3727719) (not b!3727763) (not b!3727477) (not bm!271734) (not bm!271738) (not b!3727556) (not b!3727613) (not b!3727699) (not b!3727742) (not bm!271757) (not bm!271752) (not bm!271789) (not b!3727570) (not b!3727723) (not b!3727688) (not b!3727703) (not b!3727759) (not b!3727684) (not b!3727727) (not b!3727707) (not b!3727764) (not bm!271770) (not d!1090124) (not b!3727715) (not b!3727680) (not b!3727698) (not d!1090120) (not b!3727587) (not b!3727720) tp_is_empty!18841 (not bm!271786) (not bm!271756) (not b!3727731) (not bm!271746) (not b!3727740) (not bm!271745) (not d!1090152) (not b!3727738) (not bm!271762) (not b!3727694) (not d!1090094) (not bm!271776) (not bm!271794) (not b!3727760) (not b!3727696) (not b!3727501) (not bm!271739) (not b!3727476) (not b!3727708) (not b!3727710) (not b!3727704) (not b!3727754) (not b!3727700) (not b!3727747) (not b!3727712) (not b!3727752) (not b!3727584) (not bm!271742) (not b!3727656) (not bm!271772) (not d!1090118) (not d!1090132) (not b!3727678) (not bm!271736) (not d!1090140) (not b!3727607) (not b!3727682) (not b!3727620) (not b!3727542) (not bm!271749) (not b!3727510) (not b!3727736) (not bm!271791) (not bm!271750) (not b!3727686) (not d!1090138) (not b!3727748) (not b!3727691) (not b!3727676) (not bm!271767) (not bm!271795) (not b!3727666) (not bm!271754) (not b!3727655) (not b!3727668) (not b!3727722) (not b!3727728) (not d!1090104) (not b!3727718) (not b!3727619) (not bm!271765) (not bm!271792) (not b!3727683) (not b!3727756) (not b!3727726) (not bm!271759) (not b!3727735) (not b!3727670) (not b!3727672) (not bm!271747) (not bm!271743) (not b!3727499) (not bm!271764) (not bm!271780))
(check-sat)
