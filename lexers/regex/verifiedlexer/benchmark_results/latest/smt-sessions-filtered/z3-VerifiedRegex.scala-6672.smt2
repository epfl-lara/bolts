; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!350518 () Bool)

(assert start!350518)

(declare-fun b!3722119 () Bool)

(declare-fun res!1512698 () Bool)

(declare-fun e!2304061 () Bool)

(assert (=> b!3722119 (=> (not res!1512698) (not e!2304061))))

(declare-datatypes ((C!21952 0))(
  ( (C!21953 (val!13024 Int)) )
))
(declare-datatypes ((Regex!10883 0))(
  ( (ElementMatch!10883 (c!643759 C!21952)) (Concat!17154 (regOne!22278 Regex!10883) (regTwo!22278 Regex!10883)) (EmptyExpr!10883) (Star!10883 (reg!11212 Regex!10883)) (EmptyLang!10883) (Union!10883 (regOne!22279 Regex!10883) (regTwo!22279 Regex!10883)) )
))
(declare-fun r!26968 () Regex!10883)

(get-info :version)

(assert (=> b!3722119 (= res!1512698 (and (not ((_ is EmptyExpr!10883) r!26968)) (not ((_ is EmptyLang!10883) r!26968)) (not ((_ is ElementMatch!10883) r!26968)) (not ((_ is Union!10883) r!26968)) (not ((_ is Star!10883) r!26968))))))

(declare-fun b!3722120 () Bool)

(declare-fun e!2304062 () Bool)

(declare-fun tp_is_empty!18781 () Bool)

(assert (=> b!3722120 (= e!2304062 tp_is_empty!18781)))

(declare-fun b!3722121 () Bool)

(declare-fun tp!1132063 () Bool)

(assert (=> b!3722121 (= e!2304062 tp!1132063)))

(declare-fun res!1512697 () Bool)

(assert (=> start!350518 (=> (not res!1512697) (not e!2304061))))

(declare-fun validRegex!4990 (Regex!10883) Bool)

(assert (=> start!350518 (= res!1512697 (validRegex!4990 r!26968))))

(assert (=> start!350518 e!2304061))

(assert (=> start!350518 e!2304062))

(assert (=> start!350518 tp_is_empty!18781))

(declare-fun b!3722122 () Bool)

(declare-fun res!1512695 () Bool)

(assert (=> b!3722122 (=> (not res!1512695) (not e!2304061))))

(declare-fun nullable!3791 (Regex!10883) Bool)

(assert (=> b!3722122 (= res!1512695 (nullable!3791 (regOne!22278 r!26968)))))

(declare-fun b!3722123 () Bool)

(declare-fun tp!1132061 () Bool)

(declare-fun tp!1132060 () Bool)

(assert (=> b!3722123 (= e!2304062 (and tp!1132061 tp!1132060))))

(declare-fun b!3722124 () Bool)

(declare-fun res!1512696 () Bool)

(assert (=> b!3722124 (=> (not res!1512696) (not e!2304061))))

(declare-fun cNot!42 () C!21952)

(declare-datatypes ((List!39764 0))(
  ( (Nil!39640) (Cons!39640 (h!45060 C!21952) (t!302447 List!39764)) )
))
(declare-fun contains!7976 (List!39764 C!21952) Bool)

(declare-fun usedCharacters!1146 (Regex!10883) List!39764)

(assert (=> b!3722124 (= res!1512696 (not (contains!7976 (usedCharacters!1146 r!26968) cNot!42)))))

(declare-fun b!3722125 () Bool)

(assert (=> b!3722125 (= e!2304061 (not (validRegex!4990 (regOne!22278 r!26968))))))

(declare-fun c!13797 () C!21952)

(declare-fun derivativeStep!3340 (Regex!10883 C!21952) Regex!10883)

(assert (=> b!3722125 (not (contains!7976 (usedCharacters!1146 (derivativeStep!3340 (regTwo!22278 r!26968) c!13797)) cNot!42))))

(declare-datatypes ((Unit!57548 0))(
  ( (Unit!57549) )
))
(declare-fun lt!1298120 () Unit!57548)

(declare-fun lemmaDerivativeStepDoesNotAddCharToUsedCharacters!30 (Regex!10883 C!21952 C!21952) Unit!57548)

(assert (=> b!3722125 (= lt!1298120 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!30 (regTwo!22278 r!26968) c!13797 cNot!42))))

(assert (=> b!3722125 (not (contains!7976 (usedCharacters!1146 (derivativeStep!3340 (regOne!22278 r!26968) c!13797)) cNot!42))))

(declare-fun lt!1298119 () Unit!57548)

(assert (=> b!3722125 (= lt!1298119 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!30 (regOne!22278 r!26968) c!13797 cNot!42))))

(declare-fun b!3722126 () Bool)

(declare-fun tp!1132064 () Bool)

(declare-fun tp!1132062 () Bool)

(assert (=> b!3722126 (= e!2304062 (and tp!1132064 tp!1132062))))

(assert (= (and start!350518 res!1512697) b!3722124))

(assert (= (and b!3722124 res!1512696) b!3722119))

(assert (= (and b!3722119 res!1512698) b!3722122))

(assert (= (and b!3722122 res!1512695) b!3722125))

(assert (= (and start!350518 ((_ is ElementMatch!10883) r!26968)) b!3722120))

(assert (= (and start!350518 ((_ is Concat!17154) r!26968)) b!3722126))

(assert (= (and start!350518 ((_ is Star!10883) r!26968)) b!3722121))

(assert (= (and start!350518 ((_ is Union!10883) r!26968)) b!3722123))

(declare-fun m!4226079 () Bool)

(assert (=> start!350518 m!4226079))

(declare-fun m!4226081 () Bool)

(assert (=> b!3722122 m!4226081))

(declare-fun m!4226083 () Bool)

(assert (=> b!3722124 m!4226083))

(assert (=> b!3722124 m!4226083))

(declare-fun m!4226085 () Bool)

(assert (=> b!3722124 m!4226085))

(declare-fun m!4226087 () Bool)

(assert (=> b!3722125 m!4226087))

(declare-fun m!4226089 () Bool)

(assert (=> b!3722125 m!4226089))

(declare-fun m!4226091 () Bool)

(assert (=> b!3722125 m!4226091))

(declare-fun m!4226093 () Bool)

(assert (=> b!3722125 m!4226093))

(assert (=> b!3722125 m!4226091))

(assert (=> b!3722125 m!4226087))

(declare-fun m!4226095 () Bool)

(assert (=> b!3722125 m!4226095))

(declare-fun m!4226097 () Bool)

(assert (=> b!3722125 m!4226097))

(assert (=> b!3722125 m!4226097))

(declare-fun m!4226099 () Bool)

(assert (=> b!3722125 m!4226099))

(assert (=> b!3722125 m!4226099))

(declare-fun m!4226101 () Bool)

(assert (=> b!3722125 m!4226101))

(declare-fun m!4226103 () Bool)

(assert (=> b!3722125 m!4226103))

(check-sat (not b!3722126) (not b!3722125) (not b!3722121) tp_is_empty!18781 (not start!350518) (not b!3722123) (not b!3722124) (not b!3722122))
(check-sat)
(get-model)

(declare-fun d!1089445 () Bool)

(declare-fun lt!1298123 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5747 (List!39764) (InoxSet C!21952))

(assert (=> d!1089445 (= lt!1298123 (select (content!5747 (usedCharacters!1146 r!26968)) cNot!42))))

(declare-fun e!2304082 () Bool)

(assert (=> d!1089445 (= lt!1298123 e!2304082)))

(declare-fun res!1512713 () Bool)

(assert (=> d!1089445 (=> (not res!1512713) (not e!2304082))))

(assert (=> d!1089445 (= res!1512713 ((_ is Cons!39640) (usedCharacters!1146 r!26968)))))

(assert (=> d!1089445 (= (contains!7976 (usedCharacters!1146 r!26968) cNot!42) lt!1298123)))

(declare-fun b!3722149 () Bool)

(declare-fun e!2304081 () Bool)

(assert (=> b!3722149 (= e!2304082 e!2304081)))

(declare-fun res!1512714 () Bool)

(assert (=> b!3722149 (=> res!1512714 e!2304081)))

(assert (=> b!3722149 (= res!1512714 (= (h!45060 (usedCharacters!1146 r!26968)) cNot!42))))

(declare-fun b!3722150 () Bool)

(assert (=> b!3722150 (= e!2304081 (contains!7976 (t!302447 (usedCharacters!1146 r!26968)) cNot!42))))

(assert (= (and d!1089445 res!1512713) b!3722149))

(assert (= (and b!3722149 (not res!1512714)) b!3722150))

(assert (=> d!1089445 m!4226083))

(declare-fun m!4226107 () Bool)

(assert (=> d!1089445 m!4226107))

(declare-fun m!4226109 () Bool)

(assert (=> d!1089445 m!4226109))

(declare-fun m!4226111 () Bool)

(assert (=> b!3722150 m!4226111))

(assert (=> b!3722124 d!1089445))

(declare-fun d!1089449 () Bool)

(declare-fun c!643774 () Bool)

(assert (=> d!1089449 (= c!643774 (or ((_ is EmptyExpr!10883) r!26968) ((_ is EmptyLang!10883) r!26968)))))

(declare-fun e!2304104 () List!39764)

(assert (=> d!1089449 (= (usedCharacters!1146 r!26968) e!2304104)))

(declare-fun c!643776 () Bool)

(declare-fun call!270583 () List!39764)

(declare-fun call!270585 () List!39764)

(declare-fun bm!270577 () Bool)

(declare-fun call!270582 () List!39764)

(declare-fun ++!9812 (List!39764 List!39764) List!39764)

(assert (=> bm!270577 (= call!270582 (++!9812 (ite c!643776 call!270585 call!270583) (ite c!643776 call!270583 call!270585)))))

(declare-fun b!3722182 () Bool)

(declare-fun e!2304106 () List!39764)

(assert (=> b!3722182 (= e!2304106 call!270582)))

(declare-fun b!3722183 () Bool)

(declare-fun e!2304105 () List!39764)

(assert (=> b!3722183 (= e!2304105 (Cons!39640 (c!643759 r!26968) Nil!39640))))

(declare-fun bm!270578 () Bool)

(assert (=> bm!270578 (= call!270585 (usedCharacters!1146 (ite c!643776 (regOne!22279 r!26968) (regTwo!22278 r!26968))))))

(declare-fun b!3722184 () Bool)

(assert (=> b!3722184 (= e!2304104 e!2304105)))

(declare-fun c!643777 () Bool)

(assert (=> b!3722184 (= c!643777 ((_ is ElementMatch!10883) r!26968))))

(declare-fun bm!270579 () Bool)

(declare-fun call!270584 () List!39764)

(assert (=> bm!270579 (= call!270583 call!270584)))

(declare-fun b!3722185 () Bool)

(assert (=> b!3722185 (= e!2304104 Nil!39640)))

(declare-fun c!643775 () Bool)

(declare-fun bm!270580 () Bool)

(assert (=> bm!270580 (= call!270584 (usedCharacters!1146 (ite c!643775 (reg!11212 r!26968) (ite c!643776 (regTwo!22279 r!26968) (regOne!22278 r!26968)))))))

(declare-fun b!3722186 () Bool)

(assert (=> b!3722186 (= e!2304106 call!270582)))

(declare-fun b!3722187 () Bool)

(declare-fun e!2304107 () List!39764)

(assert (=> b!3722187 (= e!2304107 call!270584)))

(declare-fun b!3722188 () Bool)

(assert (=> b!3722188 (= c!643775 ((_ is Star!10883) r!26968))))

(assert (=> b!3722188 (= e!2304105 e!2304107)))

(declare-fun b!3722189 () Bool)

(assert (=> b!3722189 (= e!2304107 e!2304106)))

(assert (=> b!3722189 (= c!643776 ((_ is Union!10883) r!26968))))

(assert (= (and d!1089449 c!643774) b!3722185))

(assert (= (and d!1089449 (not c!643774)) b!3722184))

(assert (= (and b!3722184 c!643777) b!3722183))

(assert (= (and b!3722184 (not c!643777)) b!3722188))

(assert (= (and b!3722188 c!643775) b!3722187))

(assert (= (and b!3722188 (not c!643775)) b!3722189))

(assert (= (and b!3722189 c!643776) b!3722182))

(assert (= (and b!3722189 (not c!643776)) b!3722186))

(assert (= (or b!3722182 b!3722186) bm!270578))

(assert (= (or b!3722182 b!3722186) bm!270579))

(assert (= (or b!3722182 b!3722186) bm!270577))

(assert (= (or b!3722187 bm!270579) bm!270580))

(declare-fun m!4226125 () Bool)

(assert (=> bm!270577 m!4226125))

(declare-fun m!4226127 () Bool)

(assert (=> bm!270578 m!4226127))

(declare-fun m!4226129 () Bool)

(assert (=> bm!270580 m!4226129))

(assert (=> b!3722124 d!1089449))

(declare-fun b!3722234 () Bool)

(declare-fun c!643802 () Bool)

(assert (=> b!3722234 (= c!643802 (nullable!3791 (regOne!22278 (regOne!22278 r!26968))))))

(declare-fun e!2304130 () Regex!10883)

(declare-fun e!2304131 () Regex!10883)

(assert (=> b!3722234 (= e!2304130 e!2304131)))

(declare-fun b!3722235 () Bool)

(declare-fun e!2304133 () Regex!10883)

(assert (=> b!3722235 (= e!2304133 EmptyLang!10883)))

(declare-fun b!3722236 () Bool)

(declare-fun e!2304134 () Regex!10883)

(assert (=> b!3722236 (= e!2304134 e!2304130)))

(declare-fun c!643800 () Bool)

(assert (=> b!3722236 (= c!643800 ((_ is Star!10883) (regOne!22278 r!26968)))))

(declare-fun b!3722237 () Bool)

(declare-fun call!270607 () Regex!10883)

(declare-fun call!270609 () Regex!10883)

(assert (=> b!3722237 (= e!2304131 (Union!10883 (Concat!17154 call!270607 (regTwo!22278 (regOne!22278 r!26968))) call!270609))))

(declare-fun bm!270601 () Bool)

(declare-fun c!643804 () Bool)

(assert (=> bm!270601 (= call!270607 (derivativeStep!3340 (ite c!643804 (regOne!22279 (regOne!22278 r!26968)) (regOne!22278 (regOne!22278 r!26968))) c!13797))))

(declare-fun b!3722238 () Bool)

(assert (=> b!3722238 (= e!2304131 (Union!10883 (Concat!17154 call!270609 (regTwo!22278 (regOne!22278 r!26968))) EmptyLang!10883))))

(declare-fun call!270608 () Regex!10883)

(declare-fun bm!270602 () Bool)

(assert (=> bm!270602 (= call!270608 (derivativeStep!3340 (ite c!643804 (regTwo!22279 (regOne!22278 r!26968)) (ite c!643800 (reg!11212 (regOne!22278 r!26968)) (ite c!643802 (regTwo!22278 (regOne!22278 r!26968)) (regOne!22278 (regOne!22278 r!26968))))) c!13797))))

(declare-fun bm!270603 () Bool)

(declare-fun call!270606 () Regex!10883)

(assert (=> bm!270603 (= call!270606 call!270608)))

(declare-fun bm!270604 () Bool)

(assert (=> bm!270604 (= call!270609 call!270606)))

(declare-fun b!3722239 () Bool)

(assert (=> b!3722239 (= e!2304130 (Concat!17154 call!270606 (regOne!22278 r!26968)))))

(declare-fun b!3722240 () Bool)

(declare-fun e!2304132 () Regex!10883)

(assert (=> b!3722240 (= e!2304133 e!2304132)))

(declare-fun c!643801 () Bool)

(assert (=> b!3722240 (= c!643801 ((_ is ElementMatch!10883) (regOne!22278 r!26968)))))

(declare-fun d!1089455 () Bool)

(declare-fun lt!1298129 () Regex!10883)

(assert (=> d!1089455 (validRegex!4990 lt!1298129)))

(assert (=> d!1089455 (= lt!1298129 e!2304133)))

(declare-fun c!643803 () Bool)

(assert (=> d!1089455 (= c!643803 (or ((_ is EmptyExpr!10883) (regOne!22278 r!26968)) ((_ is EmptyLang!10883) (regOne!22278 r!26968))))))

(assert (=> d!1089455 (validRegex!4990 (regOne!22278 r!26968))))

(assert (=> d!1089455 (= (derivativeStep!3340 (regOne!22278 r!26968) c!13797) lt!1298129)))

(declare-fun b!3722241 () Bool)

(assert (=> b!3722241 (= e!2304134 (Union!10883 call!270607 call!270608))))

(declare-fun b!3722242 () Bool)

(assert (=> b!3722242 (= e!2304132 (ite (= c!13797 (c!643759 (regOne!22278 r!26968))) EmptyExpr!10883 EmptyLang!10883))))

(declare-fun b!3722243 () Bool)

(assert (=> b!3722243 (= c!643804 ((_ is Union!10883) (regOne!22278 r!26968)))))

(assert (=> b!3722243 (= e!2304132 e!2304134)))

(assert (= (and d!1089455 c!643803) b!3722235))

(assert (= (and d!1089455 (not c!643803)) b!3722240))

(assert (= (and b!3722240 c!643801) b!3722242))

(assert (= (and b!3722240 (not c!643801)) b!3722243))

(assert (= (and b!3722243 c!643804) b!3722241))

(assert (= (and b!3722243 (not c!643804)) b!3722236))

(assert (= (and b!3722236 c!643800) b!3722239))

(assert (= (and b!3722236 (not c!643800)) b!3722234))

(assert (= (and b!3722234 c!643802) b!3722237))

(assert (= (and b!3722234 (not c!643802)) b!3722238))

(assert (= (or b!3722237 b!3722238) bm!270604))

(assert (= (or b!3722239 bm!270604) bm!270603))

(assert (= (or b!3722241 b!3722237) bm!270601))

(assert (= (or b!3722241 bm!270603) bm!270602))

(declare-fun m!4226137 () Bool)

(assert (=> b!3722234 m!4226137))

(declare-fun m!4226139 () Bool)

(assert (=> bm!270601 m!4226139))

(declare-fun m!4226141 () Bool)

(assert (=> bm!270602 m!4226141))

(declare-fun m!4226143 () Bool)

(assert (=> d!1089455 m!4226143))

(assert (=> d!1089455 m!4226095))

(assert (=> b!3722125 d!1089455))

(declare-fun d!1089459 () Bool)

(declare-fun c!643815 () Bool)

(assert (=> d!1089459 (= c!643815 (or ((_ is EmptyExpr!10883) (derivativeStep!3340 (regOne!22278 r!26968) c!13797)) ((_ is EmptyLang!10883) (derivativeStep!3340 (regOne!22278 r!26968) c!13797))))))

(declare-fun e!2304145 () List!39764)

(assert (=> d!1089459 (= (usedCharacters!1146 (derivativeStep!3340 (regOne!22278 r!26968) c!13797)) e!2304145)))

(declare-fun call!270613 () List!39764)

(declare-fun call!270611 () List!39764)

(declare-fun c!643817 () Bool)

(declare-fun call!270610 () List!39764)

(declare-fun bm!270605 () Bool)

(assert (=> bm!270605 (= call!270610 (++!9812 (ite c!643817 call!270613 call!270611) (ite c!643817 call!270611 call!270613)))))

(declare-fun b!3722264 () Bool)

(declare-fun e!2304147 () List!39764)

(assert (=> b!3722264 (= e!2304147 call!270610)))

(declare-fun b!3722265 () Bool)

(declare-fun e!2304146 () List!39764)

(assert (=> b!3722265 (= e!2304146 (Cons!39640 (c!643759 (derivativeStep!3340 (regOne!22278 r!26968) c!13797)) Nil!39640))))

(declare-fun bm!270606 () Bool)

(assert (=> bm!270606 (= call!270613 (usedCharacters!1146 (ite c!643817 (regOne!22279 (derivativeStep!3340 (regOne!22278 r!26968) c!13797)) (regTwo!22278 (derivativeStep!3340 (regOne!22278 r!26968) c!13797)))))))

(declare-fun b!3722266 () Bool)

(assert (=> b!3722266 (= e!2304145 e!2304146)))

(declare-fun c!643818 () Bool)

(assert (=> b!3722266 (= c!643818 ((_ is ElementMatch!10883) (derivativeStep!3340 (regOne!22278 r!26968) c!13797)))))

(declare-fun bm!270607 () Bool)

(declare-fun call!270612 () List!39764)

(assert (=> bm!270607 (= call!270611 call!270612)))

(declare-fun b!3722267 () Bool)

(assert (=> b!3722267 (= e!2304145 Nil!39640)))

(declare-fun bm!270608 () Bool)

(declare-fun c!643816 () Bool)

(assert (=> bm!270608 (= call!270612 (usedCharacters!1146 (ite c!643816 (reg!11212 (derivativeStep!3340 (regOne!22278 r!26968) c!13797)) (ite c!643817 (regTwo!22279 (derivativeStep!3340 (regOne!22278 r!26968) c!13797)) (regOne!22278 (derivativeStep!3340 (regOne!22278 r!26968) c!13797))))))))

(declare-fun b!3722268 () Bool)

(assert (=> b!3722268 (= e!2304147 call!270610)))

(declare-fun b!3722269 () Bool)

(declare-fun e!2304148 () List!39764)

(assert (=> b!3722269 (= e!2304148 call!270612)))

(declare-fun b!3722270 () Bool)

(assert (=> b!3722270 (= c!643816 ((_ is Star!10883) (derivativeStep!3340 (regOne!22278 r!26968) c!13797)))))

(assert (=> b!3722270 (= e!2304146 e!2304148)))

(declare-fun b!3722271 () Bool)

(assert (=> b!3722271 (= e!2304148 e!2304147)))

(assert (=> b!3722271 (= c!643817 ((_ is Union!10883) (derivativeStep!3340 (regOne!22278 r!26968) c!13797)))))

(assert (= (and d!1089459 c!643815) b!3722267))

(assert (= (and d!1089459 (not c!643815)) b!3722266))

(assert (= (and b!3722266 c!643818) b!3722265))

(assert (= (and b!3722266 (not c!643818)) b!3722270))

(assert (= (and b!3722270 c!643816) b!3722269))

(assert (= (and b!3722270 (not c!643816)) b!3722271))

(assert (= (and b!3722271 c!643817) b!3722264))

(assert (= (and b!3722271 (not c!643817)) b!3722268))

(assert (= (or b!3722264 b!3722268) bm!270606))

(assert (= (or b!3722264 b!3722268) bm!270607))

(assert (= (or b!3722264 b!3722268) bm!270605))

(assert (= (or b!3722269 bm!270607) bm!270608))

(declare-fun m!4226145 () Bool)

(assert (=> bm!270605 m!4226145))

(declare-fun m!4226147 () Bool)

(assert (=> bm!270606 m!4226147))

(declare-fun m!4226149 () Bool)

(assert (=> bm!270608 m!4226149))

(assert (=> b!3722125 d!1089459))

(declare-fun bm!270631 () Bool)

(declare-fun call!270638 () Bool)

(declare-fun call!270637 () Bool)

(assert (=> bm!270631 (= call!270638 call!270637)))

(declare-fun b!3722308 () Bool)

(declare-fun e!2304174 () Bool)

(declare-fun e!2304176 () Bool)

(assert (=> b!3722308 (= e!2304174 e!2304176)))

(declare-fun res!1512740 () Bool)

(assert (=> b!3722308 (=> (not res!1512740) (not e!2304176))))

(assert (=> b!3722308 (= res!1512740 call!270638)))

(declare-fun b!3722309 () Bool)

(declare-fun res!1512739 () Bool)

(assert (=> b!3722309 (=> res!1512739 e!2304174)))

(assert (=> b!3722309 (= res!1512739 (not ((_ is Concat!17154) (regOne!22278 r!26968))))))

(declare-fun e!2304173 () Bool)

(assert (=> b!3722309 (= e!2304173 e!2304174)))

(declare-fun c!643833 () Bool)

(declare-fun bm!270632 () Bool)

(declare-fun c!643832 () Bool)

(assert (=> bm!270632 (= call!270637 (validRegex!4990 (ite c!643833 (reg!11212 (regOne!22278 r!26968)) (ite c!643832 (regOne!22279 (regOne!22278 r!26968)) (regOne!22278 (regOne!22278 r!26968))))))))

(declare-fun bm!270633 () Bool)

(declare-fun call!270636 () Bool)

(assert (=> bm!270633 (= call!270636 (validRegex!4990 (ite c!643832 (regTwo!22279 (regOne!22278 r!26968)) (regTwo!22278 (regOne!22278 r!26968)))))))

(declare-fun b!3722310 () Bool)

(declare-fun e!2304177 () Bool)

(assert (=> b!3722310 (= e!2304177 call!270637)))

(declare-fun b!3722311 () Bool)

(declare-fun e!2304172 () Bool)

(assert (=> b!3722311 (= e!2304172 e!2304173)))

(assert (=> b!3722311 (= c!643832 ((_ is Union!10883) (regOne!22278 r!26968)))))

(declare-fun d!1089461 () Bool)

(declare-fun res!1512736 () Bool)

(declare-fun e!2304178 () Bool)

(assert (=> d!1089461 (=> res!1512736 e!2304178)))

(assert (=> d!1089461 (= res!1512736 ((_ is ElementMatch!10883) (regOne!22278 r!26968)))))

(assert (=> d!1089461 (= (validRegex!4990 (regOne!22278 r!26968)) e!2304178)))

(declare-fun b!3722312 () Bool)

(assert (=> b!3722312 (= e!2304176 call!270636)))

(declare-fun b!3722313 () Bool)

(declare-fun e!2304175 () Bool)

(assert (=> b!3722313 (= e!2304175 call!270636)))

(declare-fun b!3722314 () Bool)

(assert (=> b!3722314 (= e!2304178 e!2304172)))

(assert (=> b!3722314 (= c!643833 ((_ is Star!10883) (regOne!22278 r!26968)))))

(declare-fun b!3722315 () Bool)

(assert (=> b!3722315 (= e!2304172 e!2304177)))

(declare-fun res!1512737 () Bool)

(assert (=> b!3722315 (= res!1512737 (not (nullable!3791 (reg!11212 (regOne!22278 r!26968)))))))

(assert (=> b!3722315 (=> (not res!1512737) (not e!2304177))))

(declare-fun b!3722316 () Bool)

(declare-fun res!1512738 () Bool)

(assert (=> b!3722316 (=> (not res!1512738) (not e!2304175))))

(assert (=> b!3722316 (= res!1512738 call!270638)))

(assert (=> b!3722316 (= e!2304173 e!2304175)))

(assert (= (and d!1089461 (not res!1512736)) b!3722314))

(assert (= (and b!3722314 c!643833) b!3722315))

(assert (= (and b!3722314 (not c!643833)) b!3722311))

(assert (= (and b!3722315 res!1512737) b!3722310))

(assert (= (and b!3722311 c!643832) b!3722316))

(assert (= (and b!3722311 (not c!643832)) b!3722309))

(assert (= (and b!3722316 res!1512738) b!3722313))

(assert (= (and b!3722309 (not res!1512739)) b!3722308))

(assert (= (and b!3722308 res!1512740) b!3722312))

(assert (= (or b!3722313 b!3722312) bm!270633))

(assert (= (or b!3722316 b!3722308) bm!270631))

(assert (= (or b!3722310 bm!270631) bm!270632))

(declare-fun m!4226165 () Bool)

(assert (=> bm!270632 m!4226165))

(declare-fun m!4226167 () Bool)

(assert (=> bm!270633 m!4226167))

(declare-fun m!4226169 () Bool)

(assert (=> b!3722315 m!4226169))

(assert (=> b!3722125 d!1089461))

(declare-fun d!1089467 () Bool)

(assert (=> d!1089467 (not (contains!7976 (usedCharacters!1146 (derivativeStep!3340 (regTwo!22278 r!26968) c!13797)) cNot!42))))

(declare-fun lt!1298137 () Unit!57548)

(declare-fun choose!22216 (Regex!10883 C!21952 C!21952) Unit!57548)

(assert (=> d!1089467 (= lt!1298137 (choose!22216 (regTwo!22278 r!26968) c!13797 cNot!42))))

(assert (=> d!1089467 (= (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!30 (regTwo!22278 r!26968) c!13797 cNot!42) lt!1298137)))

(declare-fun bs!574985 () Bool)

(assert (= bs!574985 d!1089467))

(assert (=> bs!574985 m!4226097))

(assert (=> bs!574985 m!4226097))

(assert (=> bs!574985 m!4226099))

(assert (=> bs!574985 m!4226099))

(assert (=> bs!574985 m!4226101))

(declare-fun m!4226177 () Bool)

(assert (=> bs!574985 m!4226177))

(assert (=> b!3722125 d!1089467))

(declare-fun d!1089471 () Bool)

(declare-fun c!643838 () Bool)

(assert (=> d!1089471 (= c!643838 (or ((_ is EmptyExpr!10883) (derivativeStep!3340 (regTwo!22278 r!26968) c!13797)) ((_ is EmptyLang!10883) (derivativeStep!3340 (regTwo!22278 r!26968) c!13797))))))

(declare-fun e!2304186 () List!39764)

(assert (=> d!1089471 (= (usedCharacters!1146 (derivativeStep!3340 (regTwo!22278 r!26968) c!13797)) e!2304186)))

(declare-fun call!270645 () List!39764)

(declare-fun c!643840 () Bool)

(declare-fun bm!270637 () Bool)

(declare-fun call!270642 () List!39764)

(declare-fun call!270643 () List!39764)

(assert (=> bm!270637 (= call!270642 (++!9812 (ite c!643840 call!270645 call!270643) (ite c!643840 call!270643 call!270645)))))

(declare-fun b!3722326 () Bool)

(declare-fun e!2304188 () List!39764)

(assert (=> b!3722326 (= e!2304188 call!270642)))

(declare-fun b!3722327 () Bool)

(declare-fun e!2304187 () List!39764)

(assert (=> b!3722327 (= e!2304187 (Cons!39640 (c!643759 (derivativeStep!3340 (regTwo!22278 r!26968) c!13797)) Nil!39640))))

(declare-fun bm!270638 () Bool)

(assert (=> bm!270638 (= call!270645 (usedCharacters!1146 (ite c!643840 (regOne!22279 (derivativeStep!3340 (regTwo!22278 r!26968) c!13797)) (regTwo!22278 (derivativeStep!3340 (regTwo!22278 r!26968) c!13797)))))))

(declare-fun b!3722328 () Bool)

(assert (=> b!3722328 (= e!2304186 e!2304187)))

(declare-fun c!643841 () Bool)

(assert (=> b!3722328 (= c!643841 ((_ is ElementMatch!10883) (derivativeStep!3340 (regTwo!22278 r!26968) c!13797)))))

(declare-fun bm!270639 () Bool)

(declare-fun call!270644 () List!39764)

(assert (=> bm!270639 (= call!270643 call!270644)))

(declare-fun b!3722329 () Bool)

(assert (=> b!3722329 (= e!2304186 Nil!39640)))

(declare-fun bm!270640 () Bool)

(declare-fun c!643839 () Bool)

(assert (=> bm!270640 (= call!270644 (usedCharacters!1146 (ite c!643839 (reg!11212 (derivativeStep!3340 (regTwo!22278 r!26968) c!13797)) (ite c!643840 (regTwo!22279 (derivativeStep!3340 (regTwo!22278 r!26968) c!13797)) (regOne!22278 (derivativeStep!3340 (regTwo!22278 r!26968) c!13797))))))))

(declare-fun b!3722330 () Bool)

(assert (=> b!3722330 (= e!2304188 call!270642)))

(declare-fun b!3722331 () Bool)

(declare-fun e!2304189 () List!39764)

(assert (=> b!3722331 (= e!2304189 call!270644)))

(declare-fun b!3722332 () Bool)

(assert (=> b!3722332 (= c!643839 ((_ is Star!10883) (derivativeStep!3340 (regTwo!22278 r!26968) c!13797)))))

(assert (=> b!3722332 (= e!2304187 e!2304189)))

(declare-fun b!3722333 () Bool)

(assert (=> b!3722333 (= e!2304189 e!2304188)))

(assert (=> b!3722333 (= c!643840 ((_ is Union!10883) (derivativeStep!3340 (regTwo!22278 r!26968) c!13797)))))

(assert (= (and d!1089471 c!643838) b!3722329))

(assert (= (and d!1089471 (not c!643838)) b!3722328))

(assert (= (and b!3722328 c!643841) b!3722327))

(assert (= (and b!3722328 (not c!643841)) b!3722332))

(assert (= (and b!3722332 c!643839) b!3722331))

(assert (= (and b!3722332 (not c!643839)) b!3722333))

(assert (= (and b!3722333 c!643840) b!3722326))

(assert (= (and b!3722333 (not c!643840)) b!3722330))

(assert (= (or b!3722326 b!3722330) bm!270638))

(assert (= (or b!3722326 b!3722330) bm!270639))

(assert (= (or b!3722326 b!3722330) bm!270637))

(assert (= (or b!3722331 bm!270639) bm!270640))

(declare-fun m!4226181 () Bool)

(assert (=> bm!270637 m!4226181))

(declare-fun m!4226183 () Bool)

(assert (=> bm!270638 m!4226183))

(declare-fun m!4226185 () Bool)

(assert (=> bm!270640 m!4226185))

(assert (=> b!3722125 d!1089471))

(declare-fun d!1089475 () Bool)

(assert (=> d!1089475 (not (contains!7976 (usedCharacters!1146 (derivativeStep!3340 (regOne!22278 r!26968) c!13797)) cNot!42))))

(declare-fun lt!1298139 () Unit!57548)

(assert (=> d!1089475 (= lt!1298139 (choose!22216 (regOne!22278 r!26968) c!13797 cNot!42))))

(assert (=> d!1089475 (= (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!30 (regOne!22278 r!26968) c!13797 cNot!42) lt!1298139)))

(declare-fun bs!574987 () Bool)

(assert (= bs!574987 d!1089475))

(assert (=> bs!574987 m!4226091))

(assert (=> bs!574987 m!4226091))

(assert (=> bs!574987 m!4226087))

(assert (=> bs!574987 m!4226087))

(assert (=> bs!574987 m!4226089))

(declare-fun m!4226187 () Bool)

(assert (=> bs!574987 m!4226187))

(assert (=> b!3722125 d!1089475))

(declare-fun lt!1298140 () Bool)

(declare-fun d!1089477 () Bool)

(assert (=> d!1089477 (= lt!1298140 (select (content!5747 (usedCharacters!1146 (derivativeStep!3340 (regOne!22278 r!26968) c!13797))) cNot!42))))

(declare-fun e!2304195 () Bool)

(assert (=> d!1089477 (= lt!1298140 e!2304195)))

(declare-fun res!1512746 () Bool)

(assert (=> d!1089477 (=> (not res!1512746) (not e!2304195))))

(assert (=> d!1089477 (= res!1512746 ((_ is Cons!39640) (usedCharacters!1146 (derivativeStep!3340 (regOne!22278 r!26968) c!13797))))))

(assert (=> d!1089477 (= (contains!7976 (usedCharacters!1146 (derivativeStep!3340 (regOne!22278 r!26968) c!13797)) cNot!42) lt!1298140)))

(declare-fun b!3722342 () Bool)

(declare-fun e!2304194 () Bool)

(assert (=> b!3722342 (= e!2304195 e!2304194)))

(declare-fun res!1512747 () Bool)

(assert (=> b!3722342 (=> res!1512747 e!2304194)))

(assert (=> b!3722342 (= res!1512747 (= (h!45060 (usedCharacters!1146 (derivativeStep!3340 (regOne!22278 r!26968) c!13797))) cNot!42))))

(declare-fun b!3722343 () Bool)

(assert (=> b!3722343 (= e!2304194 (contains!7976 (t!302447 (usedCharacters!1146 (derivativeStep!3340 (regOne!22278 r!26968) c!13797))) cNot!42))))

(assert (= (and d!1089477 res!1512746) b!3722342))

(assert (= (and b!3722342 (not res!1512747)) b!3722343))

(assert (=> d!1089477 m!4226087))

(declare-fun m!4226195 () Bool)

(assert (=> d!1089477 m!4226195))

(declare-fun m!4226197 () Bool)

(assert (=> d!1089477 m!4226197))

(declare-fun m!4226199 () Bool)

(assert (=> b!3722343 m!4226199))

(assert (=> b!3722125 d!1089477))

(declare-fun d!1089481 () Bool)

(declare-fun lt!1298142 () Bool)

(assert (=> d!1089481 (= lt!1298142 (select (content!5747 (usedCharacters!1146 (derivativeStep!3340 (regTwo!22278 r!26968) c!13797))) cNot!42))))

(declare-fun e!2304197 () Bool)

(assert (=> d!1089481 (= lt!1298142 e!2304197)))

(declare-fun res!1512748 () Bool)

(assert (=> d!1089481 (=> (not res!1512748) (not e!2304197))))

(assert (=> d!1089481 (= res!1512748 ((_ is Cons!39640) (usedCharacters!1146 (derivativeStep!3340 (regTwo!22278 r!26968) c!13797))))))

(assert (=> d!1089481 (= (contains!7976 (usedCharacters!1146 (derivativeStep!3340 (regTwo!22278 r!26968) c!13797)) cNot!42) lt!1298142)))

(declare-fun b!3722344 () Bool)

(declare-fun e!2304196 () Bool)

(assert (=> b!3722344 (= e!2304197 e!2304196)))

(declare-fun res!1512749 () Bool)

(assert (=> b!3722344 (=> res!1512749 e!2304196)))

(assert (=> b!3722344 (= res!1512749 (= (h!45060 (usedCharacters!1146 (derivativeStep!3340 (regTwo!22278 r!26968) c!13797))) cNot!42))))

(declare-fun b!3722345 () Bool)

(assert (=> b!3722345 (= e!2304196 (contains!7976 (t!302447 (usedCharacters!1146 (derivativeStep!3340 (regTwo!22278 r!26968) c!13797))) cNot!42))))

(assert (= (and d!1089481 res!1512748) b!3722344))

(assert (= (and b!3722344 (not res!1512749)) b!3722345))

(assert (=> d!1089481 m!4226099))

(declare-fun m!4226203 () Bool)

(assert (=> d!1089481 m!4226203))

(declare-fun m!4226207 () Bool)

(assert (=> d!1089481 m!4226207))

(declare-fun m!4226211 () Bool)

(assert (=> b!3722345 m!4226211))

(assert (=> b!3722125 d!1089481))

(declare-fun b!3722348 () Bool)

(declare-fun c!643848 () Bool)

(assert (=> b!3722348 (= c!643848 (nullable!3791 (regOne!22278 (regTwo!22278 r!26968))))))

(declare-fun e!2304200 () Regex!10883)

(declare-fun e!2304201 () Regex!10883)

(assert (=> b!3722348 (= e!2304200 e!2304201)))

(declare-fun b!3722350 () Bool)

(declare-fun e!2304203 () Regex!10883)

(assert (=> b!3722350 (= e!2304203 EmptyLang!10883)))

(declare-fun b!3722352 () Bool)

(declare-fun e!2304206 () Regex!10883)

(assert (=> b!3722352 (= e!2304206 e!2304200)))

(declare-fun c!643846 () Bool)

(assert (=> b!3722352 (= c!643846 ((_ is Star!10883) (regTwo!22278 r!26968)))))

(declare-fun b!3722353 () Bool)

(declare-fun call!270653 () Regex!10883)

(declare-fun call!270651 () Regex!10883)

(assert (=> b!3722353 (= e!2304201 (Union!10883 (Concat!17154 call!270651 (regTwo!22278 (regTwo!22278 r!26968))) call!270653))))

(declare-fun bm!270645 () Bool)

(declare-fun c!643850 () Bool)

(assert (=> bm!270645 (= call!270651 (derivativeStep!3340 (ite c!643850 (regOne!22279 (regTwo!22278 r!26968)) (regOne!22278 (regTwo!22278 r!26968))) c!13797))))

(declare-fun b!3722354 () Bool)

(assert (=> b!3722354 (= e!2304201 (Union!10883 (Concat!17154 call!270653 (regTwo!22278 (regTwo!22278 r!26968))) EmptyLang!10883))))

(declare-fun call!270652 () Regex!10883)

(declare-fun bm!270646 () Bool)

(assert (=> bm!270646 (= call!270652 (derivativeStep!3340 (ite c!643850 (regTwo!22279 (regTwo!22278 r!26968)) (ite c!643846 (reg!11212 (regTwo!22278 r!26968)) (ite c!643848 (regTwo!22278 (regTwo!22278 r!26968)) (regOne!22278 (regTwo!22278 r!26968))))) c!13797))))

(declare-fun bm!270647 () Bool)

(declare-fun call!270650 () Regex!10883)

(assert (=> bm!270647 (= call!270650 call!270652)))

(declare-fun bm!270648 () Bool)

(assert (=> bm!270648 (= call!270653 call!270650)))

(declare-fun b!3722355 () Bool)

(assert (=> b!3722355 (= e!2304200 (Concat!17154 call!270650 (regTwo!22278 r!26968)))))

(declare-fun b!3722356 () Bool)

(declare-fun e!2304202 () Regex!10883)

(assert (=> b!3722356 (= e!2304203 e!2304202)))

(declare-fun c!643847 () Bool)

(assert (=> b!3722356 (= c!643847 ((_ is ElementMatch!10883) (regTwo!22278 r!26968)))))

(declare-fun d!1089485 () Bool)

(declare-fun lt!1298144 () Regex!10883)

(assert (=> d!1089485 (validRegex!4990 lt!1298144)))

(assert (=> d!1089485 (= lt!1298144 e!2304203)))

(declare-fun c!643849 () Bool)

(assert (=> d!1089485 (= c!643849 (or ((_ is EmptyExpr!10883) (regTwo!22278 r!26968)) ((_ is EmptyLang!10883) (regTwo!22278 r!26968))))))

(assert (=> d!1089485 (validRegex!4990 (regTwo!22278 r!26968))))

(assert (=> d!1089485 (= (derivativeStep!3340 (regTwo!22278 r!26968) c!13797) lt!1298144)))

(declare-fun b!3722357 () Bool)

(assert (=> b!3722357 (= e!2304206 (Union!10883 call!270651 call!270652))))

(declare-fun b!3722358 () Bool)

(assert (=> b!3722358 (= e!2304202 (ite (= c!13797 (c!643759 (regTwo!22278 r!26968))) EmptyExpr!10883 EmptyLang!10883))))

(declare-fun b!3722359 () Bool)

(assert (=> b!3722359 (= c!643850 ((_ is Union!10883) (regTwo!22278 r!26968)))))

(assert (=> b!3722359 (= e!2304202 e!2304206)))

(assert (= (and d!1089485 c!643849) b!3722350))

(assert (= (and d!1089485 (not c!643849)) b!3722356))

(assert (= (and b!3722356 c!643847) b!3722358))

(assert (= (and b!3722356 (not c!643847)) b!3722359))

(assert (= (and b!3722359 c!643850) b!3722357))

(assert (= (and b!3722359 (not c!643850)) b!3722352))

(assert (= (and b!3722352 c!643846) b!3722355))

(assert (= (and b!3722352 (not c!643846)) b!3722348))

(assert (= (and b!3722348 c!643848) b!3722353))

(assert (= (and b!3722348 (not c!643848)) b!3722354))

(assert (= (or b!3722353 b!3722354) bm!270648))

(assert (= (or b!3722355 bm!270648) bm!270647))

(assert (= (or b!3722357 b!3722353) bm!270645))

(assert (= (or b!3722357 bm!270647) bm!270646))

(declare-fun m!4226221 () Bool)

(assert (=> b!3722348 m!4226221))

(declare-fun m!4226223 () Bool)

(assert (=> bm!270645 m!4226223))

(declare-fun m!4226225 () Bool)

(assert (=> bm!270646 m!4226225))

(declare-fun m!4226227 () Bool)

(assert (=> d!1089485 m!4226227))

(declare-fun m!4226231 () Bool)

(assert (=> d!1089485 m!4226231))

(assert (=> b!3722125 d!1089485))

(declare-fun bm!270653 () Bool)

(declare-fun call!270660 () Bool)

(declare-fun call!270659 () Bool)

(assert (=> bm!270653 (= call!270660 call!270659)))

(declare-fun b!3722370 () Bool)

(declare-fun e!2304214 () Bool)

(declare-fun e!2304216 () Bool)

(assert (=> b!3722370 (= e!2304214 e!2304216)))

(declare-fun res!1512758 () Bool)

(assert (=> b!3722370 (=> (not res!1512758) (not e!2304216))))

(assert (=> b!3722370 (= res!1512758 call!270660)))

(declare-fun b!3722371 () Bool)

(declare-fun res!1512757 () Bool)

(assert (=> b!3722371 (=> res!1512757 e!2304214)))

(assert (=> b!3722371 (= res!1512757 (not ((_ is Concat!17154) r!26968)))))

(declare-fun e!2304213 () Bool)

(assert (=> b!3722371 (= e!2304213 e!2304214)))

(declare-fun c!643856 () Bool)

(declare-fun bm!270654 () Bool)

(declare-fun c!643857 () Bool)

(assert (=> bm!270654 (= call!270659 (validRegex!4990 (ite c!643857 (reg!11212 r!26968) (ite c!643856 (regOne!22279 r!26968) (regOne!22278 r!26968)))))))

(declare-fun bm!270655 () Bool)

(declare-fun call!270658 () Bool)

(assert (=> bm!270655 (= call!270658 (validRegex!4990 (ite c!643856 (regTwo!22279 r!26968) (regTwo!22278 r!26968))))))

(declare-fun b!3722372 () Bool)

(declare-fun e!2304217 () Bool)

(assert (=> b!3722372 (= e!2304217 call!270659)))

(declare-fun b!3722373 () Bool)

(declare-fun e!2304212 () Bool)

(assert (=> b!3722373 (= e!2304212 e!2304213)))

(assert (=> b!3722373 (= c!643856 ((_ is Union!10883) r!26968))))

(declare-fun d!1089491 () Bool)

(declare-fun res!1512754 () Bool)

(declare-fun e!2304218 () Bool)

(assert (=> d!1089491 (=> res!1512754 e!2304218)))

(assert (=> d!1089491 (= res!1512754 ((_ is ElementMatch!10883) r!26968))))

(assert (=> d!1089491 (= (validRegex!4990 r!26968) e!2304218)))

(declare-fun b!3722374 () Bool)

(assert (=> b!3722374 (= e!2304216 call!270658)))

(declare-fun b!3722375 () Bool)

(declare-fun e!2304215 () Bool)

(assert (=> b!3722375 (= e!2304215 call!270658)))

(declare-fun b!3722376 () Bool)

(assert (=> b!3722376 (= e!2304218 e!2304212)))

(assert (=> b!3722376 (= c!643857 ((_ is Star!10883) r!26968))))

(declare-fun b!3722377 () Bool)

(assert (=> b!3722377 (= e!2304212 e!2304217)))

(declare-fun res!1512755 () Bool)

(assert (=> b!3722377 (= res!1512755 (not (nullable!3791 (reg!11212 r!26968))))))

(assert (=> b!3722377 (=> (not res!1512755) (not e!2304217))))

(declare-fun b!3722378 () Bool)

(declare-fun res!1512756 () Bool)

(assert (=> b!3722378 (=> (not res!1512756) (not e!2304215))))

(assert (=> b!3722378 (= res!1512756 call!270660)))

(assert (=> b!3722378 (= e!2304213 e!2304215)))

(assert (= (and d!1089491 (not res!1512754)) b!3722376))

(assert (= (and b!3722376 c!643857) b!3722377))

(assert (= (and b!3722376 (not c!643857)) b!3722373))

(assert (= (and b!3722377 res!1512755) b!3722372))

(assert (= (and b!3722373 c!643856) b!3722378))

(assert (= (and b!3722373 (not c!643856)) b!3722371))

(assert (= (and b!3722378 res!1512756) b!3722375))

(assert (= (and b!3722371 (not res!1512757)) b!3722370))

(assert (= (and b!3722370 res!1512758) b!3722374))

(assert (= (or b!3722375 b!3722374) bm!270655))

(assert (= (or b!3722378 b!3722370) bm!270653))

(assert (= (or b!3722372 bm!270653) bm!270654))

(declare-fun m!4226241 () Bool)

(assert (=> bm!270654 m!4226241))

(declare-fun m!4226243 () Bool)

(assert (=> bm!270655 m!4226243))

(declare-fun m!4226245 () Bool)

(assert (=> b!3722377 m!4226245))

(assert (=> start!350518 d!1089491))

(declare-fun d!1089493 () Bool)

(declare-fun nullableFct!1073 (Regex!10883) Bool)

(assert (=> d!1089493 (= (nullable!3791 (regOne!22278 r!26968)) (nullableFct!1073 (regOne!22278 r!26968)))))

(declare-fun bs!574989 () Bool)

(assert (= bs!574989 d!1089493))

(declare-fun m!4226247 () Bool)

(assert (=> bs!574989 m!4226247))

(assert (=> b!3722122 d!1089493))

(declare-fun b!3722419 () Bool)

(declare-fun e!2304228 () Bool)

(assert (=> b!3722419 (= e!2304228 tp_is_empty!18781)))

(declare-fun b!3722420 () Bool)

(declare-fun tp!1132112 () Bool)

(declare-fun tp!1132114 () Bool)

(assert (=> b!3722420 (= e!2304228 (and tp!1132112 tp!1132114))))

(assert (=> b!3722126 (= tp!1132064 e!2304228)))

(declare-fun b!3722421 () Bool)

(declare-fun tp!1132113 () Bool)

(assert (=> b!3722421 (= e!2304228 tp!1132113)))

(declare-fun b!3722422 () Bool)

(declare-fun tp!1132111 () Bool)

(declare-fun tp!1132110 () Bool)

(assert (=> b!3722422 (= e!2304228 (and tp!1132111 tp!1132110))))

(assert (= (and b!3722126 ((_ is ElementMatch!10883) (regOne!22278 r!26968))) b!3722419))

(assert (= (and b!3722126 ((_ is Concat!17154) (regOne!22278 r!26968))) b!3722420))

(assert (= (and b!3722126 ((_ is Star!10883) (regOne!22278 r!26968))) b!3722421))

(assert (= (and b!3722126 ((_ is Union!10883) (regOne!22278 r!26968))) b!3722422))

(declare-fun b!3722423 () Bool)

(declare-fun e!2304229 () Bool)

(assert (=> b!3722423 (= e!2304229 tp_is_empty!18781)))

(declare-fun b!3722424 () Bool)

(declare-fun tp!1132117 () Bool)

(declare-fun tp!1132119 () Bool)

(assert (=> b!3722424 (= e!2304229 (and tp!1132117 tp!1132119))))

(assert (=> b!3722126 (= tp!1132062 e!2304229)))

(declare-fun b!3722425 () Bool)

(declare-fun tp!1132118 () Bool)

(assert (=> b!3722425 (= e!2304229 tp!1132118)))

(declare-fun b!3722426 () Bool)

(declare-fun tp!1132116 () Bool)

(declare-fun tp!1132115 () Bool)

(assert (=> b!3722426 (= e!2304229 (and tp!1132116 tp!1132115))))

(assert (= (and b!3722126 ((_ is ElementMatch!10883) (regTwo!22278 r!26968))) b!3722423))

(assert (= (and b!3722126 ((_ is Concat!17154) (regTwo!22278 r!26968))) b!3722424))

(assert (= (and b!3722126 ((_ is Star!10883) (regTwo!22278 r!26968))) b!3722425))

(assert (= (and b!3722126 ((_ is Union!10883) (regTwo!22278 r!26968))) b!3722426))

(declare-fun b!3722427 () Bool)

(declare-fun e!2304230 () Bool)

(assert (=> b!3722427 (= e!2304230 tp_is_empty!18781)))

(declare-fun b!3722428 () Bool)

(declare-fun tp!1132122 () Bool)

(declare-fun tp!1132124 () Bool)

(assert (=> b!3722428 (= e!2304230 (and tp!1132122 tp!1132124))))

(assert (=> b!3722121 (= tp!1132063 e!2304230)))

(declare-fun b!3722429 () Bool)

(declare-fun tp!1132123 () Bool)

(assert (=> b!3722429 (= e!2304230 tp!1132123)))

(declare-fun b!3722430 () Bool)

(declare-fun tp!1132121 () Bool)

(declare-fun tp!1132120 () Bool)

(assert (=> b!3722430 (= e!2304230 (and tp!1132121 tp!1132120))))

(assert (= (and b!3722121 ((_ is ElementMatch!10883) (reg!11212 r!26968))) b!3722427))

(assert (= (and b!3722121 ((_ is Concat!17154) (reg!11212 r!26968))) b!3722428))

(assert (= (and b!3722121 ((_ is Star!10883) (reg!11212 r!26968))) b!3722429))

(assert (= (and b!3722121 ((_ is Union!10883) (reg!11212 r!26968))) b!3722430))

(declare-fun b!3722431 () Bool)

(declare-fun e!2304231 () Bool)

(assert (=> b!3722431 (= e!2304231 tp_is_empty!18781)))

(declare-fun b!3722432 () Bool)

(declare-fun tp!1132127 () Bool)

(declare-fun tp!1132129 () Bool)

(assert (=> b!3722432 (= e!2304231 (and tp!1132127 tp!1132129))))

(assert (=> b!3722123 (= tp!1132061 e!2304231)))

(declare-fun b!3722433 () Bool)

(declare-fun tp!1132128 () Bool)

(assert (=> b!3722433 (= e!2304231 tp!1132128)))

(declare-fun b!3722434 () Bool)

(declare-fun tp!1132126 () Bool)

(declare-fun tp!1132125 () Bool)

(assert (=> b!3722434 (= e!2304231 (and tp!1132126 tp!1132125))))

(assert (= (and b!3722123 ((_ is ElementMatch!10883) (regOne!22279 r!26968))) b!3722431))

(assert (= (and b!3722123 ((_ is Concat!17154) (regOne!22279 r!26968))) b!3722432))

(assert (= (and b!3722123 ((_ is Star!10883) (regOne!22279 r!26968))) b!3722433))

(assert (= (and b!3722123 ((_ is Union!10883) (regOne!22279 r!26968))) b!3722434))

(declare-fun b!3722435 () Bool)

(declare-fun e!2304232 () Bool)

(assert (=> b!3722435 (= e!2304232 tp_is_empty!18781)))

(declare-fun b!3722436 () Bool)

(declare-fun tp!1132132 () Bool)

(declare-fun tp!1132134 () Bool)

(assert (=> b!3722436 (= e!2304232 (and tp!1132132 tp!1132134))))

(assert (=> b!3722123 (= tp!1132060 e!2304232)))

(declare-fun b!3722437 () Bool)

(declare-fun tp!1132133 () Bool)

(assert (=> b!3722437 (= e!2304232 tp!1132133)))

(declare-fun b!3722438 () Bool)

(declare-fun tp!1132131 () Bool)

(declare-fun tp!1132130 () Bool)

(assert (=> b!3722438 (= e!2304232 (and tp!1132131 tp!1132130))))

(assert (= (and b!3722123 ((_ is ElementMatch!10883) (regTwo!22279 r!26968))) b!3722435))

(assert (= (and b!3722123 ((_ is Concat!17154) (regTwo!22279 r!26968))) b!3722436))

(assert (= (and b!3722123 ((_ is Star!10883) (regTwo!22279 r!26968))) b!3722437))

(assert (= (and b!3722123 ((_ is Union!10883) (regTwo!22279 r!26968))) b!3722438))

(check-sat (not bm!270606) (not bm!270602) (not b!3722436) (not bm!270632) (not b!3722315) (not bm!270640) (not b!3722428) (not d!1089455) (not b!3722422) (not d!1089485) (not b!3722434) (not d!1089477) (not bm!270608) (not d!1089445) (not bm!270654) (not bm!270580) (not bm!270605) (not b!3722348) (not b!3722234) (not b!3722150) (not d!1089481) (not b!3722377) (not d!1089475) (not b!3722421) tp_is_empty!18781 (not b!3722424) (not b!3722437) (not b!3722438) (not bm!270633) (not b!3722425) (not b!3722420) (not b!3722426) (not b!3722433) (not bm!270638) (not d!1089493) (not bm!270578) (not bm!270637) (not bm!270601) (not bm!270646) (not bm!270655) (not bm!270577) (not b!3722429) (not b!3722430) (not b!3722343) (not bm!270645) (not b!3722432) (not d!1089467) (not b!3722345))
(check-sat)
