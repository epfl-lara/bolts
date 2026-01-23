; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!292646 () Bool)

(assert start!292646)

(declare-fun b!3067520 () Bool)

(declare-fun res!1259147 () Bool)

(declare-fun e!1920149 () Bool)

(assert (=> b!3067520 (=> res!1259147 e!1920149)))

(declare-datatypes ((C!19194 0))(
  ( (C!19195 (val!11633 Int)) )
))
(declare-datatypes ((Regex!9504 0))(
  ( (ElementMatch!9504 (c!509708 C!19194)) (Concat!14825 (regOne!19520 Regex!9504) (regTwo!19520 Regex!9504)) (EmptyExpr!9504) (Star!9504 (reg!9833 Regex!9504)) (EmptyLang!9504) (Union!9504 (regOne!19521 Regex!9504) (regTwo!19521 Regex!9504)) )
))
(declare-fun lt!1051010 () Regex!9504)

(declare-fun isEmptyLang!555 (Regex!9504) Bool)

(assert (=> b!3067520 (= res!1259147 (isEmptyLang!555 lt!1051010))))

(declare-fun b!3067521 () Bool)

(declare-fun res!1259153 () Bool)

(assert (=> b!3067521 (=> res!1259153 e!1920149)))

(declare-fun lt!1051012 () Regex!9504)

(declare-fun isEmptyExpr!561 (Regex!9504) Bool)

(assert (=> b!3067521 (= res!1259153 (isEmptyExpr!561 lt!1051012))))

(declare-fun b!3067522 () Bool)

(declare-fun res!1259149 () Bool)

(assert (=> b!3067522 (=> res!1259149 e!1920149)))

(assert (=> b!3067522 (= res!1259149 (not (isEmptyExpr!561 lt!1051010)))))

(declare-fun b!3067523 () Bool)

(declare-fun e!1920151 () Bool)

(declare-fun tp!968319 () Bool)

(declare-fun tp!968315 () Bool)

(assert (=> b!3067523 (= e!1920151 (and tp!968319 tp!968315))))

(declare-fun b!3067524 () Bool)

(declare-fun e!1920150 () Bool)

(declare-fun tp_is_empty!16571 () Bool)

(declare-fun tp!968317 () Bool)

(assert (=> b!3067524 (= e!1920150 (and tp_is_empty!16571 tp!968317))))

(declare-fun b!3067525 () Bool)

(declare-fun res!1259151 () Bool)

(declare-fun e!1920148 () Bool)

(assert (=> b!3067525 (=> res!1259151 e!1920148)))

(declare-datatypes ((List!35369 0))(
  ( (Nil!35245) (Cons!35245 (h!40665 C!19194) (t!234434 List!35369)) )
))
(declare-fun s!11993 () List!35369)

(declare-fun isEmpty!19570 (List!35369) Bool)

(assert (=> b!3067525 (= res!1259151 (isEmpty!19570 s!11993))))

(declare-fun b!3067526 () Bool)

(assert (=> b!3067526 (= e!1920151 tp_is_empty!16571)))

(declare-fun b!3067527 () Bool)

(declare-fun tp!968316 () Bool)

(assert (=> b!3067527 (= e!1920151 tp!968316)))

(declare-fun b!3067528 () Bool)

(declare-fun res!1259152 () Bool)

(assert (=> b!3067528 (=> res!1259152 e!1920149)))

(declare-fun r!17423 () Regex!9504)

(declare-fun validRegex!4237 (Regex!9504) Bool)

(assert (=> b!3067528 (= res!1259152 (not (validRegex!4237 (regOne!19520 r!17423))))))

(declare-fun b!3067529 () Bool)

(declare-fun tp!968314 () Bool)

(declare-fun tp!968318 () Bool)

(assert (=> b!3067529 (= e!1920151 (and tp!968314 tp!968318))))

(declare-fun res!1259148 () Bool)

(declare-fun e!1920152 () Bool)

(assert (=> start!292646 (=> (not res!1259148) (not e!1920152))))

(assert (=> start!292646 (= res!1259148 (validRegex!4237 r!17423))))

(assert (=> start!292646 e!1920152))

(assert (=> start!292646 e!1920151))

(assert (=> start!292646 e!1920150))

(declare-fun b!3067530 () Bool)

(assert (=> b!3067530 (= e!1920152 (not e!1920148))))

(declare-fun res!1259150 () Bool)

(assert (=> b!3067530 (=> res!1259150 e!1920148)))

(declare-fun lt!1051014 () Bool)

(assert (=> b!3067530 (= res!1259150 (or lt!1051014 (not (is-Concat!14825 r!17423))))))

(declare-fun matchRSpec!1641 (Regex!9504 List!35369) Bool)

(assert (=> b!3067530 (= lt!1051014 (matchRSpec!1641 r!17423 s!11993))))

(declare-fun matchR!4386 (Regex!9504 List!35369) Bool)

(assert (=> b!3067530 (= lt!1051014 (matchR!4386 r!17423 s!11993))))

(declare-datatypes ((Unit!49447 0))(
  ( (Unit!49448) )
))
(declare-fun lt!1051013 () Unit!49447)

(declare-fun mainMatchTheorem!1641 (Regex!9504 List!35369) Unit!49447)

(assert (=> b!3067530 (= lt!1051013 (mainMatchTheorem!1641 r!17423 s!11993))))

(declare-fun lt!1051009 () Int)

(declare-fun b!3067531 () Bool)

(declare-fun lt!1051011 () Int)

(declare-fun regexDepth!100 (Regex!9504) Int)

(assert (=> b!3067531 (= e!1920149 (< (+ lt!1051009 lt!1051011) (+ (regexDepth!100 r!17423) lt!1051011)))))

(declare-fun size!26556 (List!35369) Int)

(assert (=> b!3067531 (= lt!1051011 (size!26556 s!11993))))

(assert (=> b!3067531 (= lt!1051009 (regexDepth!100 (regOne!19520 r!17423)))))

(declare-fun b!3067532 () Bool)

(assert (=> b!3067532 (= e!1920148 e!1920149)))

(declare-fun res!1259154 () Bool)

(assert (=> b!3067532 (=> res!1259154 e!1920149)))

(assert (=> b!3067532 (= res!1259154 (isEmptyLang!555 lt!1051012))))

(declare-fun simplify!459 (Regex!9504) Regex!9504)

(assert (=> b!3067532 (= lt!1051010 (simplify!459 (regTwo!19520 r!17423)))))

(assert (=> b!3067532 (= lt!1051012 (simplify!459 (regOne!19520 r!17423)))))

(assert (= (and start!292646 res!1259148) b!3067530))

(assert (= (and b!3067530 (not res!1259150)) b!3067525))

(assert (= (and b!3067525 (not res!1259151)) b!3067532))

(assert (= (and b!3067532 (not res!1259154)) b!3067520))

(assert (= (and b!3067520 (not res!1259147)) b!3067521))

(assert (= (and b!3067521 (not res!1259153)) b!3067522))

(assert (= (and b!3067522 (not res!1259149)) b!3067528))

(assert (= (and b!3067528 (not res!1259152)) b!3067531))

(assert (= (and start!292646 (is-ElementMatch!9504 r!17423)) b!3067526))

(assert (= (and start!292646 (is-Concat!14825 r!17423)) b!3067529))

(assert (= (and start!292646 (is-Star!9504 r!17423)) b!3067527))

(assert (= (and start!292646 (is-Union!9504 r!17423)) b!3067523))

(assert (= (and start!292646 (is-Cons!35245 s!11993)) b!3067524))

(declare-fun m!3384269 () Bool)

(assert (=> b!3067522 m!3384269))

(declare-fun m!3384271 () Bool)

(assert (=> b!3067531 m!3384271))

(declare-fun m!3384273 () Bool)

(assert (=> b!3067531 m!3384273))

(declare-fun m!3384275 () Bool)

(assert (=> b!3067531 m!3384275))

(declare-fun m!3384277 () Bool)

(assert (=> b!3067528 m!3384277))

(declare-fun m!3384279 () Bool)

(assert (=> b!3067530 m!3384279))

(declare-fun m!3384281 () Bool)

(assert (=> b!3067530 m!3384281))

(declare-fun m!3384283 () Bool)

(assert (=> b!3067530 m!3384283))

(declare-fun m!3384285 () Bool)

(assert (=> start!292646 m!3384285))

(declare-fun m!3384287 () Bool)

(assert (=> b!3067525 m!3384287))

(declare-fun m!3384289 () Bool)

(assert (=> b!3067532 m!3384289))

(declare-fun m!3384291 () Bool)

(assert (=> b!3067532 m!3384291))

(declare-fun m!3384293 () Bool)

(assert (=> b!3067532 m!3384293))

(declare-fun m!3384295 () Bool)

(assert (=> b!3067521 m!3384295))

(declare-fun m!3384297 () Bool)

(assert (=> b!3067520 m!3384297))

(push 1)

(assert (not b!3067529))

(assert (not b!3067521))

(assert tp_is_empty!16571)

(assert (not b!3067531))

(assert (not b!3067532))

(assert (not b!3067524))

(assert (not b!3067525))

(assert (not b!3067527))

(assert (not b!3067530))

(assert (not b!3067528))

(assert (not b!3067523))

(assert (not b!3067520))

(assert (not b!3067522))

(assert (not start!292646))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun c!509715 () Bool)

(declare-fun c!509714 () Bool)

(declare-fun bm!212664 () Bool)

(declare-fun call!212670 () Bool)

(assert (=> bm!212664 (= call!212670 (validRegex!4237 (ite c!509714 (reg!9833 (regOne!19520 r!17423)) (ite c!509715 (regOne!19521 (regOne!19520 r!17423)) (regTwo!19520 (regOne!19520 r!17423))))))))

(declare-fun bm!212665 () Bool)

(declare-fun call!212669 () Bool)

(assert (=> bm!212665 (= call!212669 call!212670)))

(declare-fun b!3067590 () Bool)

(declare-fun e!1920183 () Bool)

(assert (=> b!3067590 (= e!1920183 call!212670)))

(declare-fun d!855912 () Bool)

(declare-fun res!1259193 () Bool)

(declare-fun e!1920184 () Bool)

(assert (=> d!855912 (=> res!1259193 e!1920184)))

(assert (=> d!855912 (= res!1259193 (is-ElementMatch!9504 (regOne!19520 r!17423)))))

(assert (=> d!855912 (= (validRegex!4237 (regOne!19520 r!17423)) e!1920184)))

(declare-fun b!3067591 () Bool)

(declare-fun res!1259189 () Bool)

(declare-fun e!1920185 () Bool)

(assert (=> b!3067591 (=> (not res!1259189) (not e!1920185))))

(assert (=> b!3067591 (= res!1259189 call!212669)))

(declare-fun e!1920187 () Bool)

(assert (=> b!3067591 (= e!1920187 e!1920185)))

(declare-fun b!3067592 () Bool)

(declare-fun e!1920182 () Bool)

(assert (=> b!3067592 (= e!1920182 call!212669)))

(declare-fun b!3067593 () Bool)

(declare-fun call!212671 () Bool)

(assert (=> b!3067593 (= e!1920185 call!212671)))

(declare-fun bm!212666 () Bool)

(assert (=> bm!212666 (= call!212671 (validRegex!4237 (ite c!509715 (regTwo!19521 (regOne!19520 r!17423)) (regOne!19520 (regOne!19520 r!17423)))))))

(declare-fun b!3067594 () Bool)

(declare-fun e!1920188 () Bool)

(assert (=> b!3067594 (= e!1920184 e!1920188)))

(assert (=> b!3067594 (= c!509714 (is-Star!9504 (regOne!19520 r!17423)))))

(declare-fun b!3067595 () Bool)

(declare-fun e!1920186 () Bool)

(assert (=> b!3067595 (= e!1920186 e!1920182)))

(declare-fun res!1259190 () Bool)

(assert (=> b!3067595 (=> (not res!1259190) (not e!1920182))))

(assert (=> b!3067595 (= res!1259190 call!212671)))

(declare-fun b!3067596 () Bool)

(assert (=> b!3067596 (= e!1920188 e!1920183)))

(declare-fun res!1259192 () Bool)

(declare-fun nullable!3150 (Regex!9504) Bool)

(assert (=> b!3067596 (= res!1259192 (not (nullable!3150 (reg!9833 (regOne!19520 r!17423)))))))

(assert (=> b!3067596 (=> (not res!1259192) (not e!1920183))))

(declare-fun b!3067597 () Bool)

(assert (=> b!3067597 (= e!1920188 e!1920187)))

(assert (=> b!3067597 (= c!509715 (is-Union!9504 (regOne!19520 r!17423)))))

(declare-fun b!3067598 () Bool)

(declare-fun res!1259191 () Bool)

(assert (=> b!3067598 (=> res!1259191 e!1920186)))

(assert (=> b!3067598 (= res!1259191 (not (is-Concat!14825 (regOne!19520 r!17423))))))

(assert (=> b!3067598 (= e!1920187 e!1920186)))

(assert (= (and d!855912 (not res!1259193)) b!3067594))

(assert (= (and b!3067594 c!509714) b!3067596))

(assert (= (and b!3067594 (not c!509714)) b!3067597))

(assert (= (and b!3067596 res!1259192) b!3067590))

(assert (= (and b!3067597 c!509715) b!3067591))

(assert (= (and b!3067597 (not c!509715)) b!3067598))

(assert (= (and b!3067591 res!1259189) b!3067593))

(assert (= (and b!3067598 (not res!1259191)) b!3067595))

(assert (= (and b!3067595 res!1259190) b!3067592))

(assert (= (or b!3067591 b!3067592) bm!212665))

(assert (= (or b!3067593 b!3067595) bm!212666))

(assert (= (or b!3067590 bm!212665) bm!212664))

(declare-fun m!3384329 () Bool)

(assert (=> bm!212664 m!3384329))

(declare-fun m!3384331 () Bool)

(assert (=> bm!212666 m!3384331))

(declare-fun m!3384333 () Bool)

(assert (=> b!3067596 m!3384333))

(assert (=> b!3067528 d!855912))

(declare-fun c!509717 () Bool)

(declare-fun bm!212667 () Bool)

(declare-fun call!212673 () Bool)

(declare-fun c!509716 () Bool)

(assert (=> bm!212667 (= call!212673 (validRegex!4237 (ite c!509716 (reg!9833 r!17423) (ite c!509717 (regOne!19521 r!17423) (regTwo!19520 r!17423)))))))

(declare-fun bm!212668 () Bool)

(declare-fun call!212672 () Bool)

(assert (=> bm!212668 (= call!212672 call!212673)))

(declare-fun b!3067599 () Bool)

(declare-fun e!1920190 () Bool)

(assert (=> b!3067599 (= e!1920190 call!212673)))

(declare-fun d!855918 () Bool)

(declare-fun res!1259198 () Bool)

(declare-fun e!1920191 () Bool)

(assert (=> d!855918 (=> res!1259198 e!1920191)))

(assert (=> d!855918 (= res!1259198 (is-ElementMatch!9504 r!17423))))

(assert (=> d!855918 (= (validRegex!4237 r!17423) e!1920191)))

(declare-fun b!3067600 () Bool)

(declare-fun res!1259194 () Bool)

(declare-fun e!1920192 () Bool)

(assert (=> b!3067600 (=> (not res!1259194) (not e!1920192))))

(assert (=> b!3067600 (= res!1259194 call!212672)))

(declare-fun e!1920194 () Bool)

(assert (=> b!3067600 (= e!1920194 e!1920192)))

(declare-fun b!3067601 () Bool)

(declare-fun e!1920189 () Bool)

(assert (=> b!3067601 (= e!1920189 call!212672)))

(declare-fun b!3067602 () Bool)

(declare-fun call!212674 () Bool)

(assert (=> b!3067602 (= e!1920192 call!212674)))

(declare-fun bm!212669 () Bool)

(assert (=> bm!212669 (= call!212674 (validRegex!4237 (ite c!509717 (regTwo!19521 r!17423) (regOne!19520 r!17423))))))

(declare-fun b!3067603 () Bool)

(declare-fun e!1920195 () Bool)

(assert (=> b!3067603 (= e!1920191 e!1920195)))

(assert (=> b!3067603 (= c!509716 (is-Star!9504 r!17423))))

(declare-fun b!3067604 () Bool)

(declare-fun e!1920193 () Bool)

(assert (=> b!3067604 (= e!1920193 e!1920189)))

(declare-fun res!1259195 () Bool)

(assert (=> b!3067604 (=> (not res!1259195) (not e!1920189))))

(assert (=> b!3067604 (= res!1259195 call!212674)))

(declare-fun b!3067605 () Bool)

(assert (=> b!3067605 (= e!1920195 e!1920190)))

(declare-fun res!1259197 () Bool)

(assert (=> b!3067605 (= res!1259197 (not (nullable!3150 (reg!9833 r!17423))))))

(assert (=> b!3067605 (=> (not res!1259197) (not e!1920190))))

(declare-fun b!3067606 () Bool)

(assert (=> b!3067606 (= e!1920195 e!1920194)))

(assert (=> b!3067606 (= c!509717 (is-Union!9504 r!17423))))

(declare-fun b!3067607 () Bool)

(declare-fun res!1259196 () Bool)

(assert (=> b!3067607 (=> res!1259196 e!1920193)))

(assert (=> b!3067607 (= res!1259196 (not (is-Concat!14825 r!17423)))))

(assert (=> b!3067607 (= e!1920194 e!1920193)))

(assert (= (and d!855918 (not res!1259198)) b!3067603))

(assert (= (and b!3067603 c!509716) b!3067605))

(assert (= (and b!3067603 (not c!509716)) b!3067606))

(assert (= (and b!3067605 res!1259197) b!3067599))

(assert (= (and b!3067606 c!509717) b!3067600))

(assert (= (and b!3067606 (not c!509717)) b!3067607))

(assert (= (and b!3067600 res!1259194) b!3067602))

(assert (= (and b!3067607 (not res!1259196)) b!3067604))

(assert (= (and b!3067604 res!1259195) b!3067601))

(assert (= (or b!3067600 b!3067601) bm!212668))

(assert (= (or b!3067602 b!3067604) bm!212669))

(assert (= (or b!3067599 bm!212668) bm!212667))

(declare-fun m!3384335 () Bool)

(assert (=> bm!212667 m!3384335))

(declare-fun m!3384337 () Bool)

(assert (=> bm!212669 m!3384337))

(declare-fun m!3384339 () Bool)

(assert (=> b!3067605 m!3384339))

(assert (=> start!292646 d!855918))

(declare-fun d!855920 () Bool)

(assert (=> d!855920 (= (isEmptyExpr!561 lt!1051010) (is-EmptyExpr!9504 lt!1051010))))

(assert (=> b!3067522 d!855920))

(declare-fun d!855922 () Bool)

(assert (=> d!855922 (= (isEmptyExpr!561 lt!1051012) (is-EmptyExpr!9504 lt!1051012))))

(assert (=> b!3067521 d!855922))

(declare-fun d!855924 () Bool)

(assert (=> d!855924 (= (isEmptyLang!555 lt!1051012) (is-EmptyLang!9504 lt!1051012))))

(assert (=> b!3067532 d!855924))

(declare-fun lt!1051060 () Regex!9504)

(declare-fun lt!1051059 () Regex!9504)

(declare-fun call!212689 () Bool)

(declare-fun bm!212684 () Bool)

(declare-fun c!509762 () Bool)

(assert (=> bm!212684 (= call!212689 (isEmptyExpr!561 (ite c!509762 lt!1051059 lt!1051060)))))

(declare-fun b!3067706 () Bool)

(declare-fun c!509763 () Bool)

(assert (=> b!3067706 (= c!509763 (is-Union!9504 (regTwo!19520 r!17423)))))

(declare-fun e!1920261 () Regex!9504)

(declare-fun e!1920257 () Regex!9504)

(assert (=> b!3067706 (= e!1920261 e!1920257)))

(declare-fun b!3067707 () Bool)

(declare-fun e!1920251 () Regex!9504)

(declare-fun lt!1051061 () Regex!9504)

(assert (=> b!3067707 (= e!1920251 (Concat!14825 lt!1051060 lt!1051061))))

(declare-fun b!3067708 () Bool)

(declare-fun e!1920262 () Bool)

(assert (=> b!3067708 (= e!1920262 call!212689)))

(declare-fun d!855926 () Bool)

(declare-fun e!1920260 () Bool)

(assert (=> d!855926 e!1920260))

(declare-fun res!1259210 () Bool)

(assert (=> d!855926 (=> (not res!1259210) (not e!1920260))))

(declare-fun lt!1051058 () Regex!9504)

(assert (=> d!855926 (= res!1259210 (validRegex!4237 lt!1051058))))

(declare-fun e!1920254 () Regex!9504)

(assert (=> d!855926 (= lt!1051058 e!1920254)))

(declare-fun c!509772 () Bool)

(assert (=> d!855926 (= c!509772 (is-EmptyLang!9504 (regTwo!19520 r!17423)))))

(assert (=> d!855926 (validRegex!4237 (regTwo!19520 r!17423))))

(assert (=> d!855926 (= (simplify!459 (regTwo!19520 r!17423)) lt!1051058)))

(declare-fun b!3067709 () Bool)

(declare-fun e!1920252 () Regex!9504)

(assert (=> b!3067709 (= e!1920257 e!1920252)))

(declare-fun call!212697 () Regex!9504)

(assert (=> b!3067709 (= lt!1051060 call!212697)))

(declare-fun call!212695 () Regex!9504)

(assert (=> b!3067709 (= lt!1051061 call!212695)))

(declare-fun res!1259209 () Bool)

(declare-fun call!212690 () Bool)

(assert (=> b!3067709 (= res!1259209 call!212690)))

(declare-fun e!1920259 () Bool)

(assert (=> b!3067709 (=> res!1259209 e!1920259)))

(declare-fun c!509769 () Bool)

(assert (=> b!3067709 (= c!509769 e!1920259)))

(declare-fun b!3067710 () Bool)

(declare-fun e!1920256 () Regex!9504)

(assert (=> b!3067710 (= e!1920257 e!1920256)))

(declare-fun lt!1051062 () Regex!9504)

(assert (=> b!3067710 (= lt!1051062 call!212695)))

(declare-fun lt!1051057 () Regex!9504)

(assert (=> b!3067710 (= lt!1051057 call!212697)))

(declare-fun c!509768 () Bool)

(declare-fun call!212694 () Bool)

(assert (=> b!3067710 (= c!509768 call!212694)))

(declare-fun b!3067711 () Bool)

(declare-fun e!1920258 () Regex!9504)

(assert (=> b!3067711 (= e!1920258 lt!1051062)))

(declare-fun b!3067712 () Bool)

(declare-fun e!1920250 () Regex!9504)

(assert (=> b!3067712 (= e!1920250 (regTwo!19520 r!17423))))

(declare-fun b!3067713 () Bool)

(declare-fun c!509764 () Bool)

(assert (=> b!3067713 (= c!509764 call!212690)))

(assert (=> b!3067713 (= e!1920256 e!1920258)))

(declare-fun b!3067714 () Bool)

(assert (=> b!3067714 (= e!1920258 (Union!9504 lt!1051062 lt!1051057))))

(declare-fun b!3067715 () Bool)

(declare-fun e!1920263 () Regex!9504)

(assert (=> b!3067715 (= e!1920263 e!1920261)))

(assert (=> b!3067715 (= c!509762 (is-Star!9504 (regTwo!19520 r!17423)))))

(declare-fun call!212696 () Bool)

(declare-fun bm!212685 () Bool)

(assert (=> bm!212685 (= call!212696 (isEmptyLang!555 (ite c!509762 lt!1051059 (ite c!509763 lt!1051062 lt!1051061))))))

(declare-fun b!3067716 () Bool)

(assert (=> b!3067716 (= e!1920252 EmptyLang!9504)))

(declare-fun bm!212686 () Bool)

(declare-fun call!212691 () Regex!9504)

(assert (=> bm!212686 (= call!212691 (simplify!459 (ite c!509762 (reg!9833 (regTwo!19520 r!17423)) (ite c!509763 (regOne!19521 (regTwo!19520 r!17423)) (regTwo!19520 (regTwo!19520 r!17423))))))))

(declare-fun b!3067717 () Bool)

(declare-fun c!509770 () Bool)

(assert (=> b!3067717 (= c!509770 e!1920262)))

(declare-fun res!1259211 () Bool)

(assert (=> b!3067717 (=> res!1259211 e!1920262)))

(assert (=> b!3067717 (= res!1259211 call!212696)))

(assert (=> b!3067717 (= lt!1051059 call!212691)))

(declare-fun e!1920255 () Regex!9504)

(assert (=> b!3067717 (= e!1920261 e!1920255)))

(declare-fun b!3067718 () Bool)

(declare-fun e!1920253 () Regex!9504)

(assert (=> b!3067718 (= e!1920253 e!1920251)))

(declare-fun c!509765 () Bool)

(assert (=> b!3067718 (= c!509765 (isEmptyExpr!561 lt!1051061))))

(declare-fun b!3067719 () Bool)

(assert (=> b!3067719 (= e!1920255 EmptyExpr!9504)))

(declare-fun b!3067720 () Bool)

(assert (=> b!3067720 (= e!1920263 EmptyExpr!9504)))

(declare-fun bm!212687 () Bool)

(assert (=> bm!212687 (= call!212695 call!212691)))

(declare-fun b!3067721 () Bool)

(assert (=> b!3067721 (= e!1920259 call!212694)))

(declare-fun b!3067722 () Bool)

(assert (=> b!3067722 (= e!1920256 lt!1051057)))

(declare-fun bm!212688 () Bool)

(assert (=> bm!212688 (= call!212694 call!212696)))

(declare-fun bm!212689 () Bool)

(assert (=> bm!212689 (= call!212690 (isEmptyLang!555 (ite c!509763 lt!1051057 lt!1051060)))))

(declare-fun b!3067723 () Bool)

(assert (=> b!3067723 (= e!1920253 lt!1051061)))

(declare-fun b!3067724 () Bool)

(declare-fun c!509766 () Bool)

(assert (=> b!3067724 (= c!509766 (is-EmptyExpr!9504 (regTwo!19520 r!17423)))))

(assert (=> b!3067724 (= e!1920250 e!1920263)))

(declare-fun b!3067725 () Bool)

(assert (=> b!3067725 (= e!1920255 (Star!9504 lt!1051059))))

(declare-fun b!3067726 () Bool)

(declare-fun c!509767 () Bool)

(assert (=> b!3067726 (= c!509767 call!212689)))

(assert (=> b!3067726 (= e!1920252 e!1920253)))

(declare-fun b!3067727 () Bool)

(assert (=> b!3067727 (= e!1920251 lt!1051060)))

(declare-fun bm!212690 () Bool)

(assert (=> bm!212690 (= call!212697 (simplify!459 (ite c!509763 (regTwo!19521 (regTwo!19520 r!17423)) (regOne!19520 (regTwo!19520 r!17423)))))))

(declare-fun b!3067728 () Bool)

(assert (=> b!3067728 (= e!1920260 (= (nullable!3150 lt!1051058) (nullable!3150 (regTwo!19520 r!17423))))))

(declare-fun b!3067729 () Bool)

(assert (=> b!3067729 (= e!1920254 e!1920250)))

(declare-fun c!509771 () Bool)

(assert (=> b!3067729 (= c!509771 (is-ElementMatch!9504 (regTwo!19520 r!17423)))))

(declare-fun b!3067730 () Bool)

(assert (=> b!3067730 (= e!1920254 EmptyLang!9504)))

(assert (= (and d!855926 c!509772) b!3067730))

(assert (= (and d!855926 (not c!509772)) b!3067729))

(assert (= (and b!3067729 c!509771) b!3067712))

(assert (= (and b!3067729 (not c!509771)) b!3067724))

(assert (= (and b!3067724 c!509766) b!3067720))

(assert (= (and b!3067724 (not c!509766)) b!3067715))

(assert (= (and b!3067715 c!509762) b!3067717))

(assert (= (and b!3067715 (not c!509762)) b!3067706))

(assert (= (and b!3067717 (not res!1259211)) b!3067708))

(assert (= (and b!3067717 c!509770) b!3067719))

(assert (= (and b!3067717 (not c!509770)) b!3067725))

(assert (= (and b!3067706 c!509763) b!3067710))

(assert (= (and b!3067706 (not c!509763)) b!3067709))

(assert (= (and b!3067710 c!509768) b!3067722))

(assert (= (and b!3067710 (not c!509768)) b!3067713))

(assert (= (and b!3067713 c!509764) b!3067711))

(assert (= (and b!3067713 (not c!509764)) b!3067714))

(assert (= (and b!3067709 (not res!1259209)) b!3067721))

(assert (= (and b!3067709 c!509769) b!3067716))

(assert (= (and b!3067709 (not c!509769)) b!3067726))

(assert (= (and b!3067726 c!509767) b!3067723))

(assert (= (and b!3067726 (not c!509767)) b!3067718))

(assert (= (and b!3067718 c!509765) b!3067727))

(assert (= (and b!3067718 (not c!509765)) b!3067707))

(assert (= (or b!3067710 b!3067709) bm!212687))

(assert (= (or b!3067710 b!3067709) bm!212690))

(assert (= (or b!3067713 b!3067709) bm!212689))

(assert (= (or b!3067710 b!3067721) bm!212688))

(assert (= (or b!3067708 b!3067726) bm!212684))

(assert (= (or b!3067717 bm!212687) bm!212686))

(assert (= (or b!3067717 bm!212688) bm!212685))

(assert (= (and d!855926 res!1259210) b!3067728))

(declare-fun m!3384341 () Bool)

(assert (=> b!3067718 m!3384341))

(declare-fun m!3384343 () Bool)

(assert (=> bm!212690 m!3384343))

(declare-fun m!3384345 () Bool)

(assert (=> bm!212684 m!3384345))

(declare-fun m!3384347 () Bool)

(assert (=> bm!212685 m!3384347))

(declare-fun m!3384349 () Bool)

(assert (=> d!855926 m!3384349))

(declare-fun m!3384351 () Bool)

(assert (=> d!855926 m!3384351))

(declare-fun m!3384353 () Bool)

(assert (=> bm!212686 m!3384353))

(declare-fun m!3384355 () Bool)

(assert (=> b!3067728 m!3384355))

(declare-fun m!3384357 () Bool)

(assert (=> b!3067728 m!3384357))

(declare-fun m!3384359 () Bool)

(assert (=> bm!212689 m!3384359))

(assert (=> b!3067532 d!855926))

(declare-fun lt!1051066 () Regex!9504)

(declare-fun bm!212699 () Bool)

(declare-fun lt!1051065 () Regex!9504)

(declare-fun call!212704 () Bool)

(declare-fun c!509773 () Bool)

(assert (=> bm!212699 (= call!212704 (isEmptyExpr!561 (ite c!509773 lt!1051065 lt!1051066)))))

(declare-fun b!3067731 () Bool)

(declare-fun c!509774 () Bool)

(assert (=> b!3067731 (= c!509774 (is-Union!9504 (regOne!19520 r!17423)))))

(declare-fun e!1920275 () Regex!9504)

(declare-fun e!1920271 () Regex!9504)

(assert (=> b!3067731 (= e!1920275 e!1920271)))

(declare-fun b!3067732 () Bool)

(declare-fun e!1920265 () Regex!9504)

(declare-fun lt!1051067 () Regex!9504)

(assert (=> b!3067732 (= e!1920265 (Concat!14825 lt!1051066 lt!1051067))))

(declare-fun b!3067733 () Bool)

(declare-fun e!1920276 () Bool)

(assert (=> b!3067733 (= e!1920276 call!212704)))

(declare-fun d!855928 () Bool)

(declare-fun e!1920274 () Bool)

(assert (=> d!855928 e!1920274))

(declare-fun res!1259213 () Bool)

(assert (=> d!855928 (=> (not res!1259213) (not e!1920274))))

(declare-fun lt!1051064 () Regex!9504)

(assert (=> d!855928 (= res!1259213 (validRegex!4237 lt!1051064))))

(declare-fun e!1920268 () Regex!9504)

(assert (=> d!855928 (= lt!1051064 e!1920268)))

(declare-fun c!509783 () Bool)

(assert (=> d!855928 (= c!509783 (is-EmptyLang!9504 (regOne!19520 r!17423)))))

(assert (=> d!855928 (validRegex!4237 (regOne!19520 r!17423))))

(assert (=> d!855928 (= (simplify!459 (regOne!19520 r!17423)) lt!1051064)))

(declare-fun b!3067734 () Bool)

(declare-fun e!1920266 () Regex!9504)

(assert (=> b!3067734 (= e!1920271 e!1920266)))

(declare-fun call!212710 () Regex!9504)

(assert (=> b!3067734 (= lt!1051066 call!212710)))

(declare-fun call!212708 () Regex!9504)

(assert (=> b!3067734 (= lt!1051067 call!212708)))

(declare-fun res!1259212 () Bool)

(declare-fun call!212705 () Bool)

(assert (=> b!3067734 (= res!1259212 call!212705)))

(declare-fun e!1920273 () Bool)

(assert (=> b!3067734 (=> res!1259212 e!1920273)))

(declare-fun c!509780 () Bool)

(assert (=> b!3067734 (= c!509780 e!1920273)))

(declare-fun b!3067735 () Bool)

(declare-fun e!1920270 () Regex!9504)

(assert (=> b!3067735 (= e!1920271 e!1920270)))

(declare-fun lt!1051068 () Regex!9504)

(assert (=> b!3067735 (= lt!1051068 call!212708)))

(declare-fun lt!1051063 () Regex!9504)

(assert (=> b!3067735 (= lt!1051063 call!212710)))

(declare-fun c!509779 () Bool)

(declare-fun call!212707 () Bool)

(assert (=> b!3067735 (= c!509779 call!212707)))

(declare-fun b!3067736 () Bool)

(declare-fun e!1920272 () Regex!9504)

(assert (=> b!3067736 (= e!1920272 lt!1051068)))

(declare-fun b!3067737 () Bool)

(declare-fun e!1920264 () Regex!9504)

(assert (=> b!3067737 (= e!1920264 (regOne!19520 r!17423))))

(declare-fun b!3067738 () Bool)

(declare-fun c!509775 () Bool)

(assert (=> b!3067738 (= c!509775 call!212705)))

(assert (=> b!3067738 (= e!1920270 e!1920272)))

(declare-fun b!3067739 () Bool)

(assert (=> b!3067739 (= e!1920272 (Union!9504 lt!1051068 lt!1051063))))

(declare-fun b!3067740 () Bool)

(declare-fun e!1920277 () Regex!9504)

(assert (=> b!3067740 (= e!1920277 e!1920275)))

(assert (=> b!3067740 (= c!509773 (is-Star!9504 (regOne!19520 r!17423)))))

(declare-fun call!212709 () Bool)

(declare-fun bm!212700 () Bool)

(assert (=> bm!212700 (= call!212709 (isEmptyLang!555 (ite c!509773 lt!1051065 (ite c!509774 lt!1051068 lt!1051067))))))

(declare-fun b!3067741 () Bool)

(assert (=> b!3067741 (= e!1920266 EmptyLang!9504)))

(declare-fun call!212706 () Regex!9504)

(declare-fun bm!212701 () Bool)

(assert (=> bm!212701 (= call!212706 (simplify!459 (ite c!509773 (reg!9833 (regOne!19520 r!17423)) (ite c!509774 (regOne!19521 (regOne!19520 r!17423)) (regTwo!19520 (regOne!19520 r!17423))))))))

(declare-fun b!3067742 () Bool)

(declare-fun c!509781 () Bool)

(assert (=> b!3067742 (= c!509781 e!1920276)))

(declare-fun res!1259214 () Bool)

(assert (=> b!3067742 (=> res!1259214 e!1920276)))

(assert (=> b!3067742 (= res!1259214 call!212709)))

(assert (=> b!3067742 (= lt!1051065 call!212706)))

(declare-fun e!1920269 () Regex!9504)

(assert (=> b!3067742 (= e!1920275 e!1920269)))

(declare-fun b!3067743 () Bool)

(declare-fun e!1920267 () Regex!9504)

(assert (=> b!3067743 (= e!1920267 e!1920265)))

(declare-fun c!509776 () Bool)

(assert (=> b!3067743 (= c!509776 (isEmptyExpr!561 lt!1051067))))

(declare-fun b!3067744 () Bool)

(assert (=> b!3067744 (= e!1920269 EmptyExpr!9504)))

(declare-fun b!3067745 () Bool)

(assert (=> b!3067745 (= e!1920277 EmptyExpr!9504)))

(declare-fun bm!212702 () Bool)

(assert (=> bm!212702 (= call!212708 call!212706)))

(declare-fun b!3067746 () Bool)

(assert (=> b!3067746 (= e!1920273 call!212707)))

(declare-fun b!3067747 () Bool)

(assert (=> b!3067747 (= e!1920270 lt!1051063)))

(declare-fun bm!212703 () Bool)

(assert (=> bm!212703 (= call!212707 call!212709)))

(declare-fun bm!212704 () Bool)

(assert (=> bm!212704 (= call!212705 (isEmptyLang!555 (ite c!509774 lt!1051063 lt!1051066)))))

(declare-fun b!3067748 () Bool)

(assert (=> b!3067748 (= e!1920267 lt!1051067)))

(declare-fun b!3067749 () Bool)

(declare-fun c!509777 () Bool)

(assert (=> b!3067749 (= c!509777 (is-EmptyExpr!9504 (regOne!19520 r!17423)))))

(assert (=> b!3067749 (= e!1920264 e!1920277)))

(declare-fun b!3067750 () Bool)

(assert (=> b!3067750 (= e!1920269 (Star!9504 lt!1051065))))

(declare-fun b!3067751 () Bool)

(declare-fun c!509778 () Bool)

(assert (=> b!3067751 (= c!509778 call!212704)))

(assert (=> b!3067751 (= e!1920266 e!1920267)))

(declare-fun b!3067752 () Bool)

(assert (=> b!3067752 (= e!1920265 lt!1051066)))

(declare-fun bm!212705 () Bool)

(assert (=> bm!212705 (= call!212710 (simplify!459 (ite c!509774 (regTwo!19521 (regOne!19520 r!17423)) (regOne!19520 (regOne!19520 r!17423)))))))

(declare-fun b!3067753 () Bool)

(assert (=> b!3067753 (= e!1920274 (= (nullable!3150 lt!1051064) (nullable!3150 (regOne!19520 r!17423))))))

(declare-fun b!3067754 () Bool)

(assert (=> b!3067754 (= e!1920268 e!1920264)))

(declare-fun c!509782 () Bool)

(assert (=> b!3067754 (= c!509782 (is-ElementMatch!9504 (regOne!19520 r!17423)))))

(declare-fun b!3067755 () Bool)

(assert (=> b!3067755 (= e!1920268 EmptyLang!9504)))

(assert (= (and d!855928 c!509783) b!3067755))

(assert (= (and d!855928 (not c!509783)) b!3067754))

(assert (= (and b!3067754 c!509782) b!3067737))

(assert (= (and b!3067754 (not c!509782)) b!3067749))

(assert (= (and b!3067749 c!509777) b!3067745))

(assert (= (and b!3067749 (not c!509777)) b!3067740))

(assert (= (and b!3067740 c!509773) b!3067742))

(assert (= (and b!3067740 (not c!509773)) b!3067731))

(assert (= (and b!3067742 (not res!1259214)) b!3067733))

(assert (= (and b!3067742 c!509781) b!3067744))

(assert (= (and b!3067742 (not c!509781)) b!3067750))

(assert (= (and b!3067731 c!509774) b!3067735))

(assert (= (and b!3067731 (not c!509774)) b!3067734))

(assert (= (and b!3067735 c!509779) b!3067747))

(assert (= (and b!3067735 (not c!509779)) b!3067738))

(assert (= (and b!3067738 c!509775) b!3067736))

(assert (= (and b!3067738 (not c!509775)) b!3067739))

(assert (= (and b!3067734 (not res!1259212)) b!3067746))

(assert (= (and b!3067734 c!509780) b!3067741))

(assert (= (and b!3067734 (not c!509780)) b!3067751))

(assert (= (and b!3067751 c!509778) b!3067748))

(assert (= (and b!3067751 (not c!509778)) b!3067743))

(assert (= (and b!3067743 c!509776) b!3067752))

(assert (= (and b!3067743 (not c!509776)) b!3067732))

(assert (= (or b!3067735 b!3067734) bm!212702))

(assert (= (or b!3067735 b!3067734) bm!212705))

(assert (= (or b!3067738 b!3067734) bm!212704))

(assert (= (or b!3067735 b!3067746) bm!212703))

(assert (= (or b!3067733 b!3067751) bm!212699))

(assert (= (or b!3067742 bm!212702) bm!212701))

(assert (= (or b!3067742 bm!212703) bm!212700))

(assert (= (and d!855928 res!1259213) b!3067753))

(declare-fun m!3384361 () Bool)

(assert (=> b!3067743 m!3384361))

(declare-fun m!3384363 () Bool)

(assert (=> bm!212705 m!3384363))

(declare-fun m!3384365 () Bool)

(assert (=> bm!212699 m!3384365))

(declare-fun m!3384367 () Bool)

(assert (=> bm!212700 m!3384367))

(declare-fun m!3384369 () Bool)

(assert (=> d!855928 m!3384369))

(assert (=> d!855928 m!3384277))

(declare-fun m!3384371 () Bool)

(assert (=> bm!212701 m!3384371))

(declare-fun m!3384373 () Bool)

(assert (=> b!3067753 m!3384373))

(declare-fun m!3384375 () Bool)

(assert (=> b!3067753 m!3384375))

(declare-fun m!3384377 () Bool)

(assert (=> bm!212704 m!3384377))

(assert (=> b!3067532 d!855928))

(declare-fun b!3067792 () Bool)

(declare-fun e!1920307 () Bool)

(declare-fun lt!1051071 () Int)

(declare-fun call!212737 () Int)

(assert (=> b!3067792 (= e!1920307 (> lt!1051071 call!212737))))

(declare-fun b!3067793 () Bool)

(declare-fun c!509803 () Bool)

(assert (=> b!3067793 (= c!509803 (is-Union!9504 r!17423))))

(declare-fun e!1920302 () Int)

(declare-fun e!1920300 () Int)

(assert (=> b!3067793 (= e!1920302 e!1920300)))

(declare-fun b!3067794 () Bool)

(declare-fun e!1920303 () Bool)

(assert (=> b!3067794 (= e!1920303 (= lt!1051071 1))))

(declare-fun d!855930 () Bool)

(declare-fun e!1920309 () Bool)

(assert (=> d!855930 e!1920309))

(declare-fun res!1259225 () Bool)

(assert (=> d!855930 (=> (not res!1259225) (not e!1920309))))

(assert (=> d!855930 (= res!1259225 (> lt!1051071 0))))

(declare-fun e!1920308 () Int)

(assert (=> d!855930 (= lt!1051071 e!1920308)))

(declare-fun c!509798 () Bool)

(assert (=> d!855930 (= c!509798 (is-ElementMatch!9504 r!17423))))

(assert (=> d!855930 (= (regexDepth!100 r!17423) lt!1051071)))

(declare-fun bm!212726 () Bool)

(declare-fun call!212735 () Int)

(assert (=> bm!212726 (= call!212735 call!212737)))

(declare-fun b!3067795 () Bool)

(assert (=> b!3067795 (= e!1920303 (> lt!1051071 call!212735))))

(declare-fun b!3067796 () Bool)

(declare-fun c!509799 () Bool)

(assert (=> b!3067796 (= c!509799 (is-Star!9504 r!17423))))

(declare-fun e!1920301 () Bool)

(assert (=> b!3067796 (= e!1920301 e!1920303)))

(declare-fun b!3067797 () Bool)

(declare-fun call!212731 () Int)

(assert (=> b!3067797 (= e!1920302 (+ 1 call!212731))))

(declare-fun b!3067798 () Bool)

(declare-fun e!1920304 () Int)

(declare-fun call!212732 () Int)

(assert (=> b!3067798 (= e!1920304 (+ 1 call!212732))))

(declare-fun b!3067799 () Bool)

(declare-fun e!1920306 () Bool)

(assert (=> b!3067799 (= e!1920306 (> lt!1051071 call!212735))))

(declare-fun b!3067800 () Bool)

(declare-fun res!1259223 () Bool)

(assert (=> b!3067800 (=> (not res!1259223) (not e!1920306))))

(declare-fun call!212733 () Int)

(assert (=> b!3067800 (= res!1259223 (> lt!1051071 call!212733))))

(assert (=> b!3067800 (= e!1920301 e!1920306)))

(declare-fun bm!212727 () Bool)

(declare-fun c!509801 () Bool)

(assert (=> bm!212727 (= call!212733 (regexDepth!100 (ite c!509801 (regOne!19521 r!17423) (regOne!19520 r!17423))))))

(declare-fun b!3067801 () Bool)

(declare-fun e!1920305 () Bool)

(assert (=> b!3067801 (= e!1920305 e!1920307)))

(declare-fun res!1259224 () Bool)

(assert (=> b!3067801 (= res!1259224 (> lt!1051071 call!212733))))

(assert (=> b!3067801 (=> (not res!1259224) (not e!1920307))))

(declare-fun bm!212728 () Bool)

(declare-fun call!212734 () Int)

(assert (=> bm!212728 (= call!212734 (regexDepth!100 (ite c!509803 (regTwo!19521 r!17423) (regTwo!19520 r!17423))))))

(declare-fun b!3067802 () Bool)

(assert (=> b!3067802 (= e!1920309 e!1920305)))

(assert (=> b!3067802 (= c!509801 (is-Union!9504 r!17423))))

(declare-fun b!3067803 () Bool)

(assert (=> b!3067803 (= e!1920308 1)))

(declare-fun bm!212729 () Bool)

(declare-fun call!212736 () Int)

(assert (=> bm!212729 (= call!212736 call!212731)))

(declare-fun b!3067804 () Bool)

(assert (=> b!3067804 (= e!1920305 e!1920301)))

(declare-fun c!509804 () Bool)

(assert (=> b!3067804 (= c!509804 (is-Concat!14825 r!17423))))

(declare-fun bm!212730 () Bool)

(assert (=> bm!212730 (= call!212737 (regexDepth!100 (ite c!509801 (regTwo!19521 r!17423) (ite c!509804 (regTwo!19520 r!17423) (reg!9833 r!17423)))))))

(declare-fun b!3067805 () Bool)

(assert (=> b!3067805 (= e!1920308 e!1920302)))

(declare-fun c!509800 () Bool)

(assert (=> b!3067805 (= c!509800 (is-Star!9504 r!17423))))

(declare-fun b!3067806 () Bool)

(assert (=> b!3067806 (= e!1920304 1)))

(declare-fun bm!212731 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!212731 (= call!212732 (maxBigInt!0 call!212736 call!212734))))

(declare-fun b!3067807 () Bool)

(assert (=> b!3067807 (= e!1920300 (+ 1 call!212732))))

(declare-fun bm!212732 () Bool)

(assert (=> bm!212732 (= call!212731 (regexDepth!100 (ite c!509800 (reg!9833 r!17423) (ite c!509803 (regOne!19521 r!17423) (regOne!19520 r!17423)))))))

(declare-fun b!3067808 () Bool)

(assert (=> b!3067808 (= e!1920300 e!1920304)))

(declare-fun c!509802 () Bool)

(assert (=> b!3067808 (= c!509802 (is-Concat!14825 r!17423))))

(assert (= (and d!855930 c!509798) b!3067803))

(assert (= (and d!855930 (not c!509798)) b!3067805))

(assert (= (and b!3067805 c!509800) b!3067797))

(assert (= (and b!3067805 (not c!509800)) b!3067793))

(assert (= (and b!3067793 c!509803) b!3067807))

(assert (= (and b!3067793 (not c!509803)) b!3067808))

(assert (= (and b!3067808 c!509802) b!3067798))

(assert (= (and b!3067808 (not c!509802)) b!3067806))

(assert (= (or b!3067807 b!3067798) bm!212728))

(assert (= (or b!3067807 b!3067798) bm!212729))

(assert (= (or b!3067807 b!3067798) bm!212731))

(assert (= (or b!3067797 bm!212729) bm!212732))

(assert (= (and d!855930 res!1259225) b!3067802))

(assert (= (and b!3067802 c!509801) b!3067801))

(assert (= (and b!3067802 (not c!509801)) b!3067804))

(assert (= (and b!3067801 res!1259224) b!3067792))

(assert (= (and b!3067804 c!509804) b!3067800))

(assert (= (and b!3067804 (not c!509804)) b!3067796))

(assert (= (and b!3067800 res!1259223) b!3067799))

(assert (= (and b!3067796 c!509799) b!3067795))

(assert (= (and b!3067796 (not c!509799)) b!3067794))

(assert (= (or b!3067799 b!3067795) bm!212726))

(assert (= (or b!3067792 bm!212726) bm!212730))

(assert (= (or b!3067801 b!3067800) bm!212727))

(declare-fun m!3384379 () Bool)

(assert (=> bm!212727 m!3384379))

(declare-fun m!3384381 () Bool)

(assert (=> bm!212730 m!3384381))

(declare-fun m!3384383 () Bool)

(assert (=> bm!212731 m!3384383))

(declare-fun m!3384385 () Bool)

(assert (=> bm!212732 m!3384385))

(declare-fun m!3384387 () Bool)

(assert (=> bm!212728 m!3384387))

(assert (=> b!3067531 d!855930))

(declare-fun d!855932 () Bool)

(declare-fun lt!1051074 () Int)

(assert (=> d!855932 (>= lt!1051074 0)))

(declare-fun e!1920312 () Int)

(assert (=> d!855932 (= lt!1051074 e!1920312)))

(declare-fun c!509807 () Bool)

(assert (=> d!855932 (= c!509807 (is-Nil!35245 s!11993))))

(assert (=> d!855932 (= (size!26556 s!11993) lt!1051074)))

(declare-fun b!3067813 () Bool)

(assert (=> b!3067813 (= e!1920312 0)))

(declare-fun b!3067814 () Bool)

(assert (=> b!3067814 (= e!1920312 (+ 1 (size!26556 (t!234434 s!11993))))))

(assert (= (and d!855932 c!509807) b!3067813))

(assert (= (and d!855932 (not c!509807)) b!3067814))

(declare-fun m!3384389 () Bool)

(assert (=> b!3067814 m!3384389))

(assert (=> b!3067531 d!855932))

(declare-fun b!3067815 () Bool)

(declare-fun e!1920320 () Bool)

(declare-fun lt!1051075 () Int)

(declare-fun call!212744 () Int)

(assert (=> b!3067815 (= e!1920320 (> lt!1051075 call!212744))))

(declare-fun b!3067816 () Bool)

(declare-fun c!509813 () Bool)

(assert (=> b!3067816 (= c!509813 (is-Union!9504 (regOne!19520 r!17423)))))

(declare-fun e!1920315 () Int)

(declare-fun e!1920313 () Int)

(assert (=> b!3067816 (= e!1920315 e!1920313)))

(declare-fun b!3067817 () Bool)

(declare-fun e!1920316 () Bool)

(assert (=> b!3067817 (= e!1920316 (= lt!1051075 1))))

(declare-fun d!855934 () Bool)

(declare-fun e!1920322 () Bool)

(assert (=> d!855934 e!1920322))

(declare-fun res!1259228 () Bool)

(assert (=> d!855934 (=> (not res!1259228) (not e!1920322))))

(assert (=> d!855934 (= res!1259228 (> lt!1051075 0))))

(declare-fun e!1920321 () Int)

(assert (=> d!855934 (= lt!1051075 e!1920321)))

(declare-fun c!509808 () Bool)

(assert (=> d!855934 (= c!509808 (is-ElementMatch!9504 (regOne!19520 r!17423)))))

(assert (=> d!855934 (= (regexDepth!100 (regOne!19520 r!17423)) lt!1051075)))

(declare-fun bm!212733 () Bool)

(declare-fun call!212742 () Int)

(assert (=> bm!212733 (= call!212742 call!212744)))

(declare-fun b!3067818 () Bool)

(assert (=> b!3067818 (= e!1920316 (> lt!1051075 call!212742))))

(declare-fun b!3067819 () Bool)

(declare-fun c!509809 () Bool)

(assert (=> b!3067819 (= c!509809 (is-Star!9504 (regOne!19520 r!17423)))))

(declare-fun e!1920314 () Bool)

(assert (=> b!3067819 (= e!1920314 e!1920316)))

(declare-fun b!3067820 () Bool)

(declare-fun call!212738 () Int)

(assert (=> b!3067820 (= e!1920315 (+ 1 call!212738))))

(declare-fun b!3067821 () Bool)

(declare-fun e!1920317 () Int)

(declare-fun call!212739 () Int)

(assert (=> b!3067821 (= e!1920317 (+ 1 call!212739))))

(declare-fun b!3067822 () Bool)

(declare-fun e!1920319 () Bool)

(assert (=> b!3067822 (= e!1920319 (> lt!1051075 call!212742))))

(declare-fun b!3067823 () Bool)

(declare-fun res!1259226 () Bool)

(assert (=> b!3067823 (=> (not res!1259226) (not e!1920319))))

(declare-fun call!212740 () Int)

(assert (=> b!3067823 (= res!1259226 (> lt!1051075 call!212740))))

(assert (=> b!3067823 (= e!1920314 e!1920319)))

(declare-fun bm!212734 () Bool)

(declare-fun c!509811 () Bool)

(assert (=> bm!212734 (= call!212740 (regexDepth!100 (ite c!509811 (regOne!19521 (regOne!19520 r!17423)) (regOne!19520 (regOne!19520 r!17423)))))))

(declare-fun b!3067824 () Bool)

(declare-fun e!1920318 () Bool)

(assert (=> b!3067824 (= e!1920318 e!1920320)))

(declare-fun res!1259227 () Bool)

(assert (=> b!3067824 (= res!1259227 (> lt!1051075 call!212740))))

(assert (=> b!3067824 (=> (not res!1259227) (not e!1920320))))

(declare-fun bm!212735 () Bool)

(declare-fun call!212741 () Int)

(assert (=> bm!212735 (= call!212741 (regexDepth!100 (ite c!509813 (regTwo!19521 (regOne!19520 r!17423)) (regTwo!19520 (regOne!19520 r!17423)))))))

(declare-fun b!3067825 () Bool)

(assert (=> b!3067825 (= e!1920322 e!1920318)))

(assert (=> b!3067825 (= c!509811 (is-Union!9504 (regOne!19520 r!17423)))))

(declare-fun b!3067826 () Bool)

(assert (=> b!3067826 (= e!1920321 1)))

(declare-fun bm!212736 () Bool)

(declare-fun call!212743 () Int)

(assert (=> bm!212736 (= call!212743 call!212738)))

(declare-fun b!3067827 () Bool)

(assert (=> b!3067827 (= e!1920318 e!1920314)))

(declare-fun c!509814 () Bool)

(assert (=> b!3067827 (= c!509814 (is-Concat!14825 (regOne!19520 r!17423)))))

(declare-fun bm!212737 () Bool)

(assert (=> bm!212737 (= call!212744 (regexDepth!100 (ite c!509811 (regTwo!19521 (regOne!19520 r!17423)) (ite c!509814 (regTwo!19520 (regOne!19520 r!17423)) (reg!9833 (regOne!19520 r!17423))))))))

(declare-fun b!3067828 () Bool)

(assert (=> b!3067828 (= e!1920321 e!1920315)))

(declare-fun c!509810 () Bool)

(assert (=> b!3067828 (= c!509810 (is-Star!9504 (regOne!19520 r!17423)))))

(declare-fun b!3067829 () Bool)

(assert (=> b!3067829 (= e!1920317 1)))

(declare-fun bm!212738 () Bool)

(assert (=> bm!212738 (= call!212739 (maxBigInt!0 call!212743 call!212741))))

(declare-fun b!3067830 () Bool)

(assert (=> b!3067830 (= e!1920313 (+ 1 call!212739))))

(declare-fun bm!212739 () Bool)

(assert (=> bm!212739 (= call!212738 (regexDepth!100 (ite c!509810 (reg!9833 (regOne!19520 r!17423)) (ite c!509813 (regOne!19521 (regOne!19520 r!17423)) (regOne!19520 (regOne!19520 r!17423))))))))

(declare-fun b!3067831 () Bool)

(assert (=> b!3067831 (= e!1920313 e!1920317)))

(declare-fun c!509812 () Bool)

(assert (=> b!3067831 (= c!509812 (is-Concat!14825 (regOne!19520 r!17423)))))

(assert (= (and d!855934 c!509808) b!3067826))

(assert (= (and d!855934 (not c!509808)) b!3067828))

(assert (= (and b!3067828 c!509810) b!3067820))

(assert (= (and b!3067828 (not c!509810)) b!3067816))

(assert (= (and b!3067816 c!509813) b!3067830))

(assert (= (and b!3067816 (not c!509813)) b!3067831))

(assert (= (and b!3067831 c!509812) b!3067821))

(assert (= (and b!3067831 (not c!509812)) b!3067829))

(assert (= (or b!3067830 b!3067821) bm!212735))

(assert (= (or b!3067830 b!3067821) bm!212736))

(assert (= (or b!3067830 b!3067821) bm!212738))

(assert (= (or b!3067820 bm!212736) bm!212739))

(assert (= (and d!855934 res!1259228) b!3067825))

(assert (= (and b!3067825 c!509811) b!3067824))

(assert (= (and b!3067825 (not c!509811)) b!3067827))

(assert (= (and b!3067824 res!1259227) b!3067815))

(assert (= (and b!3067827 c!509814) b!3067823))

(assert (= (and b!3067827 (not c!509814)) b!3067819))

(assert (= (and b!3067823 res!1259226) b!3067822))

(assert (= (and b!3067819 c!509809) b!3067818))

(assert (= (and b!3067819 (not c!509809)) b!3067817))

(assert (= (or b!3067822 b!3067818) bm!212733))

(assert (= (or b!3067815 bm!212733) bm!212737))

(assert (= (or b!3067824 b!3067823) bm!212734))

(declare-fun m!3384391 () Bool)

(assert (=> bm!212734 m!3384391))

(declare-fun m!3384393 () Bool)

(assert (=> bm!212737 m!3384393))

(declare-fun m!3384395 () Bool)

(assert (=> bm!212738 m!3384395))

(declare-fun m!3384397 () Bool)

(assert (=> bm!212739 m!3384397))

(declare-fun m!3384399 () Bool)

(assert (=> bm!212735 m!3384399))

(assert (=> b!3067531 d!855934))

(declare-fun d!855936 () Bool)

(assert (=> d!855936 (= (isEmpty!19570 s!11993) (is-Nil!35245 s!11993))))

(assert (=> b!3067525 d!855936))

(declare-fun d!855938 () Bool)

(assert (=> d!855938 (= (isEmptyLang!555 lt!1051010) (is-EmptyLang!9504 lt!1051010))))

(assert (=> b!3067520 d!855938))

(declare-fun b!3067972 () Bool)

(assert (=> b!3067972 true))

(assert (=> b!3067972 true))

(declare-fun bs!532612 () Bool)

(declare-fun b!3067967 () Bool)

(assert (= bs!532612 (and b!3067967 b!3067972)))

(declare-fun lambda!114046 () Int)

(declare-fun lambda!114045 () Int)

(assert (=> bs!532612 (not (= lambda!114046 lambda!114045))))

(assert (=> b!3067967 true))

(assert (=> b!3067967 true))

(declare-fun b!3067963 () Bool)

(declare-fun e!1920409 () Bool)

(declare-fun e!1920406 () Bool)

(assert (=> b!3067963 (= e!1920409 e!1920406)))

(declare-fun res!1259274 () Bool)

(assert (=> b!3067963 (= res!1259274 (matchRSpec!1641 (regOne!19521 r!17423) s!11993))))

(assert (=> b!3067963 (=> res!1259274 e!1920406)))

(declare-fun b!3067964 () Bool)

(assert (=> b!3067964 (= e!1920406 (matchRSpec!1641 (regTwo!19521 r!17423) s!11993))))

(declare-fun d!855940 () Bool)

(declare-fun c!509859 () Bool)

(assert (=> d!855940 (= c!509859 (is-EmptyExpr!9504 r!17423))))

(declare-fun e!1920405 () Bool)

(assert (=> d!855940 (= (matchRSpec!1641 r!17423 s!11993) e!1920405)))

(declare-fun b!3067965 () Bool)

(declare-fun e!1920408 () Bool)

(assert (=> b!3067965 (= e!1920408 (= s!11993 (Cons!35245 (c!509708 r!17423) Nil!35245)))))

(declare-fun b!3067966 () Bool)

(declare-fun e!1920407 () Bool)

(assert (=> b!3067966 (= e!1920409 e!1920407)))

(declare-fun c!509862 () Bool)

(assert (=> b!3067966 (= c!509862 (is-Star!9504 r!17423))))

(declare-fun bm!212767 () Bool)

(declare-fun call!212772 () Bool)

(assert (=> bm!212767 (= call!212772 (isEmpty!19570 s!11993))))

(declare-fun call!212773 () Bool)

(assert (=> b!3067967 (= e!1920407 call!212773)))

(declare-fun b!3067968 () Bool)

(declare-fun e!1920410 () Bool)

(assert (=> b!3067968 (= e!1920405 e!1920410)))

(declare-fun res!1259273 () Bool)

(assert (=> b!3067968 (= res!1259273 (not (is-EmptyLang!9504 r!17423)))))

(assert (=> b!3067968 (=> (not res!1259273) (not e!1920410))))

(declare-fun b!3067969 () Bool)

(assert (=> b!3067969 (= e!1920405 call!212772)))

(declare-fun b!3067970 () Bool)

(declare-fun c!509860 () Bool)

(assert (=> b!3067970 (= c!509860 (is-Union!9504 r!17423))))

(assert (=> b!3067970 (= e!1920408 e!1920409)))

(declare-fun b!3067971 () Bool)

(declare-fun c!509861 () Bool)

(assert (=> b!3067971 (= c!509861 (is-ElementMatch!9504 r!17423))))

(assert (=> b!3067971 (= e!1920410 e!1920408)))

(declare-fun bm!212768 () Bool)

(declare-fun Exists!1767 (Int) Bool)

(assert (=> bm!212768 (= call!212773 (Exists!1767 (ite c!509862 lambda!114045 lambda!114046)))))

(declare-fun e!1920404 () Bool)

(assert (=> b!3067972 (= e!1920404 call!212773)))

(declare-fun b!3067973 () Bool)

(declare-fun res!1259272 () Bool)

(assert (=> b!3067973 (=> res!1259272 e!1920404)))

(assert (=> b!3067973 (= res!1259272 call!212772)))

(assert (=> b!3067973 (= e!1920407 e!1920404)))

(assert (= (and d!855940 c!509859) b!3067969))

(assert (= (and d!855940 (not c!509859)) b!3067968))

(assert (= (and b!3067968 res!1259273) b!3067971))

(assert (= (and b!3067971 c!509861) b!3067965))

(assert (= (and b!3067971 (not c!509861)) b!3067970))

(assert (= (and b!3067970 c!509860) b!3067963))

(assert (= (and b!3067970 (not c!509860)) b!3067966))

(assert (= (and b!3067963 (not res!1259274)) b!3067964))

(assert (= (and b!3067966 c!509862) b!3067973))

(assert (= (and b!3067966 (not c!509862)) b!3067967))

(assert (= (and b!3067973 (not res!1259272)) b!3067972))

(assert (= (or b!3067972 b!3067967) bm!212768))

(assert (= (or b!3067969 b!3067973) bm!212767))

(declare-fun m!3384445 () Bool)

(assert (=> b!3067963 m!3384445))

(declare-fun m!3384447 () Bool)

(assert (=> b!3067964 m!3384447))

(assert (=> bm!212767 m!3384287))

(declare-fun m!3384449 () Bool)

(assert (=> bm!212768 m!3384449))

(assert (=> b!3067530 d!855940))

(declare-fun b!3068006 () Bool)

(declare-fun e!1920431 () Bool)

(declare-fun derivativeStep!2746 (Regex!9504 C!19194) Regex!9504)

(declare-fun head!6805 (List!35369) C!19194)

(declare-fun tail!5031 (List!35369) List!35369)

(assert (=> b!3068006 (= e!1920431 (matchR!4386 (derivativeStep!2746 r!17423 (head!6805 s!11993)) (tail!5031 s!11993)))))

(declare-fun b!3068007 () Bool)

(declare-fun e!1920426 () Bool)

(assert (=> b!3068007 (= e!1920426 (not (= (head!6805 s!11993) (c!509708 r!17423))))))

(declare-fun b!3068008 () Bool)

(declare-fun e!1920430 () Bool)

(assert (=> b!3068008 (= e!1920430 e!1920426)))

(declare-fun res!1259295 () Bool)

(assert (=> b!3068008 (=> res!1259295 e!1920426)))

(declare-fun call!212776 () Bool)

(assert (=> b!3068008 (= res!1259295 call!212776)))

(declare-fun d!855952 () Bool)

(declare-fun e!1920425 () Bool)

(assert (=> d!855952 e!1920425))

(declare-fun c!509871 () Bool)

(assert (=> d!855952 (= c!509871 (is-EmptyExpr!9504 r!17423))))

(declare-fun lt!1051090 () Bool)

(assert (=> d!855952 (= lt!1051090 e!1920431)))

(declare-fun c!509870 () Bool)

(assert (=> d!855952 (= c!509870 (isEmpty!19570 s!11993))))

(assert (=> d!855952 (validRegex!4237 r!17423)))

(assert (=> d!855952 (= (matchR!4386 r!17423 s!11993) lt!1051090)))

(declare-fun b!3068009 () Bool)

(declare-fun res!1259296 () Bool)

(declare-fun e!1920428 () Bool)

(assert (=> b!3068009 (=> res!1259296 e!1920428)))

(declare-fun e!1920427 () Bool)

(assert (=> b!3068009 (= res!1259296 e!1920427)))

(declare-fun res!1259298 () Bool)

(assert (=> b!3068009 (=> (not res!1259298) (not e!1920427))))

(assert (=> b!3068009 (= res!1259298 lt!1051090)))

(declare-fun b!3068010 () Bool)

(declare-fun e!1920429 () Bool)

(assert (=> b!3068010 (= e!1920425 e!1920429)))

(declare-fun c!509869 () Bool)

(assert (=> b!3068010 (= c!509869 (is-EmptyLang!9504 r!17423))))

(declare-fun b!3068011 () Bool)

(assert (=> b!3068011 (= e!1920428 e!1920430)))

(declare-fun res!1259294 () Bool)

(assert (=> b!3068011 (=> (not res!1259294) (not e!1920430))))

(assert (=> b!3068011 (= res!1259294 (not lt!1051090))))

(declare-fun b!3068012 () Bool)

(assert (=> b!3068012 (= e!1920431 (nullable!3150 r!17423))))

(declare-fun b!3068013 () Bool)

(declare-fun res!1259297 () Bool)

(assert (=> b!3068013 (=> res!1259297 e!1920428)))

(assert (=> b!3068013 (= res!1259297 (not (is-ElementMatch!9504 r!17423)))))

(assert (=> b!3068013 (= e!1920429 e!1920428)))

(declare-fun b!3068014 () Bool)

(declare-fun res!1259292 () Bool)

(assert (=> b!3068014 (=> (not res!1259292) (not e!1920427))))

(assert (=> b!3068014 (= res!1259292 (not call!212776))))

(declare-fun b!3068015 () Bool)

(assert (=> b!3068015 (= e!1920429 (not lt!1051090))))

(declare-fun b!3068016 () Bool)

(declare-fun res!1259293 () Bool)

(assert (=> b!3068016 (=> res!1259293 e!1920426)))

(assert (=> b!3068016 (= res!1259293 (not (isEmpty!19570 (tail!5031 s!11993))))))

(declare-fun b!3068017 () Bool)

(assert (=> b!3068017 (= e!1920425 (= lt!1051090 call!212776))))

(declare-fun b!3068018 () Bool)

(declare-fun res!1259291 () Bool)

(assert (=> b!3068018 (=> (not res!1259291) (not e!1920427))))

(assert (=> b!3068018 (= res!1259291 (isEmpty!19570 (tail!5031 s!11993)))))

(declare-fun b!3068019 () Bool)

(assert (=> b!3068019 (= e!1920427 (= (head!6805 s!11993) (c!509708 r!17423)))))

(declare-fun bm!212771 () Bool)

(assert (=> bm!212771 (= call!212776 (isEmpty!19570 s!11993))))

(assert (= (and d!855952 c!509870) b!3068012))

(assert (= (and d!855952 (not c!509870)) b!3068006))

(assert (= (and d!855952 c!509871) b!3068017))

(assert (= (and d!855952 (not c!509871)) b!3068010))

(assert (= (and b!3068010 c!509869) b!3068015))

(assert (= (and b!3068010 (not c!509869)) b!3068013))

(assert (= (and b!3068013 (not res!1259297)) b!3068009))

(assert (= (and b!3068009 res!1259298) b!3068014))

(assert (= (and b!3068014 res!1259292) b!3068018))

(assert (= (and b!3068018 res!1259291) b!3068019))

(assert (= (and b!3068009 (not res!1259296)) b!3068011))

(assert (= (and b!3068011 res!1259294) b!3068008))

(assert (= (and b!3068008 (not res!1259295)) b!3068016))

(assert (= (and b!3068016 (not res!1259293)) b!3068007))

(assert (= (or b!3068017 b!3068008 b!3068014) bm!212771))

(declare-fun m!3384451 () Bool)

(assert (=> b!3068006 m!3384451))

(assert (=> b!3068006 m!3384451))

(declare-fun m!3384453 () Bool)

(assert (=> b!3068006 m!3384453))

(declare-fun m!3384455 () Bool)

(assert (=> b!3068006 m!3384455))

(assert (=> b!3068006 m!3384453))

(assert (=> b!3068006 m!3384455))

(declare-fun m!3384457 () Bool)

(assert (=> b!3068006 m!3384457))

(assert (=> b!3068016 m!3384455))

(assert (=> b!3068016 m!3384455))

(declare-fun m!3384459 () Bool)

(assert (=> b!3068016 m!3384459))

(declare-fun m!3384461 () Bool)

(assert (=> b!3068012 m!3384461))

(assert (=> b!3068018 m!3384455))

(assert (=> b!3068018 m!3384455))

(assert (=> b!3068018 m!3384459))

(assert (=> b!3068007 m!3384451))

(assert (=> b!3068019 m!3384451))

(assert (=> bm!212771 m!3384287))

(assert (=> d!855952 m!3384287))

(assert (=> d!855952 m!3384285))

(assert (=> b!3067530 d!855952))

(declare-fun d!855954 () Bool)

(assert (=> d!855954 (= (matchR!4386 r!17423 s!11993) (matchRSpec!1641 r!17423 s!11993))))

(declare-fun lt!1051093 () Unit!49447)

(declare-fun choose!18180 (Regex!9504 List!35369) Unit!49447)

(assert (=> d!855954 (= lt!1051093 (choose!18180 r!17423 s!11993))))

(assert (=> d!855954 (validRegex!4237 r!17423)))

(assert (=> d!855954 (= (mainMatchTheorem!1641 r!17423 s!11993) lt!1051093)))

(declare-fun bs!532613 () Bool)

(assert (= bs!532613 d!855954))

(assert (=> bs!532613 m!3384281))

(assert (=> bs!532613 m!3384279))

(declare-fun m!3384463 () Bool)

(assert (=> bs!532613 m!3384463))

(assert (=> bs!532613 m!3384285))

(assert (=> b!3067530 d!855954))

(declare-fun b!3068031 () Bool)

(declare-fun e!1920434 () Bool)

(declare-fun tp!968349 () Bool)

(declare-fun tp!968352 () Bool)

(assert (=> b!3068031 (= e!1920434 (and tp!968349 tp!968352))))

(assert (=> b!3067527 (= tp!968316 e!1920434)))

(declare-fun b!3068030 () Bool)

(assert (=> b!3068030 (= e!1920434 tp_is_empty!16571)))

(declare-fun b!3068033 () Bool)

(declare-fun tp!968351 () Bool)

(declare-fun tp!968350 () Bool)

(assert (=> b!3068033 (= e!1920434 (and tp!968351 tp!968350))))

(declare-fun b!3068032 () Bool)

(declare-fun tp!968348 () Bool)

(assert (=> b!3068032 (= e!1920434 tp!968348)))

(assert (= (and b!3067527 (is-ElementMatch!9504 (reg!9833 r!17423))) b!3068030))

(assert (= (and b!3067527 (is-Concat!14825 (reg!9833 r!17423))) b!3068031))

(assert (= (and b!3067527 (is-Star!9504 (reg!9833 r!17423))) b!3068032))

(assert (= (and b!3067527 (is-Union!9504 (reg!9833 r!17423))) b!3068033))

(declare-fun b!3068035 () Bool)

(declare-fun e!1920435 () Bool)

(declare-fun tp!968354 () Bool)

(declare-fun tp!968357 () Bool)

(assert (=> b!3068035 (= e!1920435 (and tp!968354 tp!968357))))

(assert (=> b!3067529 (= tp!968314 e!1920435)))

(declare-fun b!3068034 () Bool)

(assert (=> b!3068034 (= e!1920435 tp_is_empty!16571)))

(declare-fun b!3068037 () Bool)

(declare-fun tp!968356 () Bool)

(declare-fun tp!968355 () Bool)

(assert (=> b!3068037 (= e!1920435 (and tp!968356 tp!968355))))

(declare-fun b!3068036 () Bool)

(declare-fun tp!968353 () Bool)

(assert (=> b!3068036 (= e!1920435 tp!968353)))

(assert (= (and b!3067529 (is-ElementMatch!9504 (regOne!19520 r!17423))) b!3068034))

(assert (= (and b!3067529 (is-Concat!14825 (regOne!19520 r!17423))) b!3068035))

(assert (= (and b!3067529 (is-Star!9504 (regOne!19520 r!17423))) b!3068036))

(assert (= (and b!3067529 (is-Union!9504 (regOne!19520 r!17423))) b!3068037))

(declare-fun b!3068039 () Bool)

(declare-fun e!1920436 () Bool)

(declare-fun tp!968359 () Bool)

(declare-fun tp!968362 () Bool)

(assert (=> b!3068039 (= e!1920436 (and tp!968359 tp!968362))))

(assert (=> b!3067529 (= tp!968318 e!1920436)))

(declare-fun b!3068038 () Bool)

(assert (=> b!3068038 (= e!1920436 tp_is_empty!16571)))

(declare-fun b!3068041 () Bool)

(declare-fun tp!968361 () Bool)

(declare-fun tp!968360 () Bool)

(assert (=> b!3068041 (= e!1920436 (and tp!968361 tp!968360))))

(declare-fun b!3068040 () Bool)

(declare-fun tp!968358 () Bool)

(assert (=> b!3068040 (= e!1920436 tp!968358)))

(assert (= (and b!3067529 (is-ElementMatch!9504 (regTwo!19520 r!17423))) b!3068038))

(assert (= (and b!3067529 (is-Concat!14825 (regTwo!19520 r!17423))) b!3068039))

(assert (= (and b!3067529 (is-Star!9504 (regTwo!19520 r!17423))) b!3068040))

(assert (= (and b!3067529 (is-Union!9504 (regTwo!19520 r!17423))) b!3068041))

(declare-fun b!3068046 () Bool)

(declare-fun e!1920439 () Bool)

(declare-fun tp!968365 () Bool)

(assert (=> b!3068046 (= e!1920439 (and tp_is_empty!16571 tp!968365))))

(assert (=> b!3067524 (= tp!968317 e!1920439)))

(assert (= (and b!3067524 (is-Cons!35245 (t!234434 s!11993))) b!3068046))

(declare-fun b!3068048 () Bool)

(declare-fun e!1920440 () Bool)

(declare-fun tp!968367 () Bool)

(declare-fun tp!968370 () Bool)

(assert (=> b!3068048 (= e!1920440 (and tp!968367 tp!968370))))

(assert (=> b!3067523 (= tp!968319 e!1920440)))

(declare-fun b!3068047 () Bool)

(assert (=> b!3068047 (= e!1920440 tp_is_empty!16571)))

(declare-fun b!3068050 () Bool)

(declare-fun tp!968369 () Bool)

(declare-fun tp!968368 () Bool)

(assert (=> b!3068050 (= e!1920440 (and tp!968369 tp!968368))))

(declare-fun b!3068049 () Bool)

(declare-fun tp!968366 () Bool)

(assert (=> b!3068049 (= e!1920440 tp!968366)))

(assert (= (and b!3067523 (is-ElementMatch!9504 (regOne!19521 r!17423))) b!3068047))

(assert (= (and b!3067523 (is-Concat!14825 (regOne!19521 r!17423))) b!3068048))

(assert (= (and b!3067523 (is-Star!9504 (regOne!19521 r!17423))) b!3068049))

(assert (= (and b!3067523 (is-Union!9504 (regOne!19521 r!17423))) b!3068050))

(declare-fun b!3068052 () Bool)

(declare-fun e!1920441 () Bool)

(declare-fun tp!968372 () Bool)

(declare-fun tp!968375 () Bool)

(assert (=> b!3068052 (= e!1920441 (and tp!968372 tp!968375))))

(assert (=> b!3067523 (= tp!968315 e!1920441)))

(declare-fun b!3068051 () Bool)

(assert (=> b!3068051 (= e!1920441 tp_is_empty!16571)))

(declare-fun b!3068054 () Bool)

(declare-fun tp!968374 () Bool)

(declare-fun tp!968373 () Bool)

(assert (=> b!3068054 (= e!1920441 (and tp!968374 tp!968373))))

(declare-fun b!3068053 () Bool)

(declare-fun tp!968371 () Bool)

(assert (=> b!3068053 (= e!1920441 tp!968371)))

(assert (= (and b!3067523 (is-ElementMatch!9504 (regTwo!19521 r!17423))) b!3068051))

(assert (= (and b!3067523 (is-Concat!14825 (regTwo!19521 r!17423))) b!3068052))

(assert (= (and b!3067523 (is-Star!9504 (regTwo!19521 r!17423))) b!3068053))

(assert (= (and b!3067523 (is-Union!9504 (regTwo!19521 r!17423))) b!3068054))

(push 1)

(assert (not bm!212739))

(assert (not bm!212664))

(assert (not b!3068052))

(assert (not b!3067963))

(assert (not bm!212700))

(assert (not d!855952))

(assert (not b!3067605))

(assert (not b!3067596))

(assert (not b!3067743))

(assert (not b!3068040))

(assert (not b!3068019))

(assert (not bm!212734))

(assert (not bm!212768))

(assert (not b!3067814))

(assert (not bm!212689))

(assert tp_is_empty!16571)

(assert (not bm!212685))

(assert (not bm!212727))

(assert (not bm!212730))

(assert (not b!3068036))

(assert (not bm!212705))

(assert (not b!3067753))

(assert (not b!3068006))

(assert (not b!3068033))

(assert (not d!855954))

(assert (not bm!212690))

(assert (not bm!212666))

(assert (not bm!212686))

(assert (not d!855926))

(assert (not b!3068018))

(assert (not b!3068054))

(assert (not b!3068032))

(assert (not b!3068037))

(assert (not bm!212684))

(assert (not b!3067964))

(assert (not b!3068050))

(assert (not bm!212669))

(assert (not bm!212704))

(assert (not b!3068035))

(assert (not b!3068031))

(assert (not bm!212767))

(assert (not b!3068046))

(assert (not b!3068039))

(assert (not bm!212701))

(assert (not b!3068041))

(assert (not b!3068053))

(assert (not b!3068048))

(assert (not b!3068012))

(assert (not b!3068007))

(assert (not bm!212731))

(assert (not bm!212737))

(assert (not bm!212728))

(assert (not bm!212771))

(assert (not b!3067728))

(assert (not bm!212735))

(assert (not b!3068016))

(assert (not b!3068049))

(assert (not bm!212667))

(assert (not b!3067718))

(assert (not bm!212738))

(assert (not d!855928))

(assert (not bm!212699))

(assert (not bm!212732))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

