; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!732072 () Bool)

(assert start!732072)

(declare-fun b!7582741 () Bool)

(declare-fun e!4513085 () Bool)

(declare-fun tp!2209881 () Bool)

(declare-fun tp!2209877 () Bool)

(assert (=> b!7582741 (= e!4513085 (and tp!2209881 tp!2209877))))

(declare-fun b!7582742 () Bool)

(declare-fun e!4513087 () Bool)

(declare-fun tp_is_empty!50529 () Bool)

(declare-fun tp!2209880 () Bool)

(assert (=> b!7582742 (= e!4513087 (and tp_is_empty!50529 tp!2209880))))

(declare-fun b!7582743 () Bool)

(declare-fun res!3037637 () Bool)

(declare-fun e!4513089 () Bool)

(assert (=> b!7582743 (=> (not res!3037637) (not e!4513089))))

(declare-datatypes ((C!40500 0))(
  ( (C!40501 (val!30690 Int)) )
))
(declare-datatypes ((List!72970 0))(
  ( (Nil!72846) (Cons!72846 (h!79294 C!40500) (t!387705 List!72970)) )
))
(declare-fun s!13436 () List!72970)

(declare-fun isEmpty!41521 (List!72970) Bool)

(assert (=> b!7582743 (= res!3037637 (not (isEmpty!41521 s!13436)))))

(declare-fun b!7582744 () Bool)

(declare-fun e!4513086 () Bool)

(declare-fun e!4513088 () Bool)

(assert (=> b!7582744 (= e!4513086 e!4513088)))

(declare-fun res!3037639 () Bool)

(assert (=> b!7582744 (=> res!3037639 e!4513088)))

(declare-datatypes ((Regex!20087 0))(
  ( (ElementMatch!20087 (c!1398630 C!40500)) (Concat!28932 (regOne!40686 Regex!20087) (regTwo!40686 Regex!20087)) (EmptyExpr!20087) (Star!20087 (reg!20416 Regex!20087)) (EmptyLang!20087) (Union!20087 (regOne!40687 Regex!20087) (regTwo!40687 Regex!20087)) )
))
(declare-fun r!22341 () Regex!20087)

(declare-fun validRegex!10515 (Regex!20087) Bool)

(assert (=> b!7582744 (= res!3037639 (not (validRegex!10515 (regTwo!40687 r!22341))))))

(declare-fun matchR!9679 (Regex!20087 List!72970) Bool)

(assert (=> b!7582744 (not (matchR!9679 (regOne!40687 r!22341) s!13436))))

(declare-datatypes ((Unit!167130 0))(
  ( (Unit!167131) )
))
(declare-fun lt!2652721 () Unit!167130)

(declare-fun lemmaLostCauseCannotMatch!85 (Regex!20087 List!72970) Unit!167130)

(assert (=> b!7582744 (= lt!2652721 (lemmaLostCauseCannotMatch!85 (regOne!40687 r!22341) s!13436))))

(declare-fun b!7582745 () Bool)

(assert (=> b!7582745 (= e!4513085 tp_is_empty!50529)))

(declare-fun b!7582746 () Bool)

(assert (=> b!7582746 (= e!4513089 (not e!4513086))))

(declare-fun res!3037640 () Bool)

(assert (=> b!7582746 (=> res!3037640 e!4513086)))

(get-info :version)

(assert (=> b!7582746 (= res!3037640 (or ((_ is EmptyLang!20087) r!22341) ((_ is EmptyExpr!20087) r!22341) ((_ is ElementMatch!20087) r!22341) (not ((_ is Union!20087) r!22341))))))

(declare-fun matchRSpec!4400 (Regex!20087 List!72970) Bool)

(assert (=> b!7582746 (= (matchR!9679 r!22341 s!13436) (matchRSpec!4400 r!22341 s!13436))))

(declare-fun lt!2652724 () Unit!167130)

(declare-fun mainMatchTheorem!4394 (Regex!20087 List!72970) Unit!167130)

(assert (=> b!7582746 (= lt!2652724 (mainMatchTheorem!4394 r!22341 s!13436))))

(declare-fun lt!2652723 () Int)

(declare-fun b!7582747 () Bool)

(declare-fun lt!2652722 () Int)

(declare-fun regexDepth!463 (Regex!20087) Int)

(assert (=> b!7582747 (= e!4513088 (< (+ lt!2652723 lt!2652722) (+ (regexDepth!463 r!22341) lt!2652722)))))

(declare-fun size!42502 (List!72970) Int)

(assert (=> b!7582747 (= lt!2652722 (size!42502 s!13436))))

(assert (=> b!7582747 (= lt!2652723 (regexDepth!463 (regTwo!40687 r!22341)))))

(declare-fun res!3037636 () Bool)

(assert (=> start!732072 (=> (not res!3037636) (not e!4513089))))

(assert (=> start!732072 (= res!3037636 (validRegex!10515 r!22341))))

(assert (=> start!732072 e!4513089))

(assert (=> start!732072 e!4513085))

(assert (=> start!732072 e!4513087))

(declare-fun b!7582748 () Bool)

(declare-fun tp!2209876 () Bool)

(assert (=> b!7582748 (= e!4513085 tp!2209876)))

(declare-fun b!7582749 () Bool)

(declare-fun tp!2209879 () Bool)

(declare-fun tp!2209878 () Bool)

(assert (=> b!7582749 (= e!4513085 (and tp!2209879 tp!2209878))))

(declare-fun b!7582750 () Bool)

(declare-fun res!3037635 () Bool)

(assert (=> b!7582750 (=> res!3037635 e!4513088)))

(declare-fun lostCause!1863 (Regex!20087) Bool)

(assert (=> b!7582750 (= res!3037635 (not (lostCause!1863 (regTwo!40687 r!22341))))))

(declare-fun b!7582751 () Bool)

(declare-fun res!3037638 () Bool)

(assert (=> b!7582751 (=> (not res!3037638) (not e!4513089))))

(assert (=> b!7582751 (= res!3037638 (lostCause!1863 r!22341))))

(assert (= (and start!732072 res!3037636) b!7582751))

(assert (= (and b!7582751 res!3037638) b!7582743))

(assert (= (and b!7582743 res!3037637) b!7582746))

(assert (= (and b!7582746 (not res!3037640)) b!7582744))

(assert (= (and b!7582744 (not res!3037639)) b!7582750))

(assert (= (and b!7582750 (not res!3037635)) b!7582747))

(assert (= (and start!732072 ((_ is ElementMatch!20087) r!22341)) b!7582745))

(assert (= (and start!732072 ((_ is Concat!28932) r!22341)) b!7582741))

(assert (= (and start!732072 ((_ is Star!20087) r!22341)) b!7582748))

(assert (= (and start!732072 ((_ is Union!20087) r!22341)) b!7582749))

(assert (= (and start!732072 ((_ is Cons!72846) s!13436)) b!7582742))

(declare-fun m!8136412 () Bool)

(assert (=> b!7582750 m!8136412))

(declare-fun m!8136414 () Bool)

(assert (=> start!732072 m!8136414))

(declare-fun m!8136416 () Bool)

(assert (=> b!7582747 m!8136416))

(declare-fun m!8136418 () Bool)

(assert (=> b!7582747 m!8136418))

(declare-fun m!8136420 () Bool)

(assert (=> b!7582747 m!8136420))

(declare-fun m!8136422 () Bool)

(assert (=> b!7582751 m!8136422))

(declare-fun m!8136424 () Bool)

(assert (=> b!7582744 m!8136424))

(declare-fun m!8136426 () Bool)

(assert (=> b!7582744 m!8136426))

(declare-fun m!8136428 () Bool)

(assert (=> b!7582744 m!8136428))

(declare-fun m!8136430 () Bool)

(assert (=> b!7582746 m!8136430))

(declare-fun m!8136432 () Bool)

(assert (=> b!7582746 m!8136432))

(declare-fun m!8136434 () Bool)

(assert (=> b!7582746 m!8136434))

(declare-fun m!8136436 () Bool)

(assert (=> b!7582743 m!8136436))

(check-sat (not b!7582749) (not b!7582748) (not b!7582747) tp_is_empty!50529 (not b!7582750) (not b!7582751) (not b!7582746) (not b!7582741) (not start!732072) (not b!7582743) (not b!7582744) (not b!7582742))
(check-sat)
(get-model)

(declare-fun d!2318635 () Bool)

(declare-fun lostCauseFct!516 (Regex!20087) Bool)

(assert (=> d!2318635 (= (lostCause!1863 (regTwo!40687 r!22341)) (lostCauseFct!516 (regTwo!40687 r!22341)))))

(declare-fun bs!1941119 () Bool)

(assert (= bs!1941119 d!2318635))

(declare-fun m!8136438 () Bool)

(assert (=> bs!1941119 m!8136438))

(assert (=> b!7582750 d!2318635))

(declare-fun b!7582774 () Bool)

(declare-fun e!4513109 () Bool)

(declare-fun e!4513110 () Bool)

(assert (=> b!7582774 (= e!4513109 e!4513110)))

(declare-fun c!1398635 () Bool)

(assert (=> b!7582774 (= c!1398635 ((_ is Star!20087) (regTwo!40687 r!22341)))))

(declare-fun b!7582775 () Bool)

(declare-fun res!3037654 () Bool)

(declare-fun e!4513106 () Bool)

(assert (=> b!7582775 (=> (not res!3037654) (not e!4513106))))

(declare-fun call!695281 () Bool)

(assert (=> b!7582775 (= res!3037654 call!695281)))

(declare-fun e!4513108 () Bool)

(assert (=> b!7582775 (= e!4513108 e!4513106)))

(declare-fun b!7582776 () Bool)

(declare-fun e!4513112 () Bool)

(declare-fun call!695283 () Bool)

(assert (=> b!7582776 (= e!4513112 call!695283)))

(declare-fun b!7582777 () Bool)

(declare-fun e!4513111 () Bool)

(declare-fun e!4513104 () Bool)

(assert (=> b!7582777 (= e!4513111 e!4513104)))

(declare-fun res!3037652 () Bool)

(assert (=> b!7582777 (=> (not res!3037652) (not e!4513104))))

(declare-fun call!695282 () Bool)

(assert (=> b!7582777 (= res!3037652 call!695282)))

(declare-fun bm!695276 () Bool)

(declare-fun c!1398638 () Bool)

(assert (=> bm!695276 (= call!695283 (validRegex!10515 (ite c!1398635 (reg!20416 (regTwo!40687 r!22341)) (ite c!1398638 (regTwo!40687 (regTwo!40687 r!22341)) (regOne!40686 (regTwo!40687 r!22341))))))))

(declare-fun bm!695277 () Bool)

(assert (=> bm!695277 (= call!695281 (validRegex!10515 (ite c!1398638 (regOne!40687 (regTwo!40687 r!22341)) (regTwo!40686 (regTwo!40687 r!22341)))))))

(declare-fun b!7582778 () Bool)

(assert (=> b!7582778 (= e!4513110 e!4513112)))

(declare-fun res!3037651 () Bool)

(declare-fun nullable!8779 (Regex!20087) Bool)

(assert (=> b!7582778 (= res!3037651 (not (nullable!8779 (reg!20416 (regTwo!40687 r!22341)))))))

(assert (=> b!7582778 (=> (not res!3037651) (not e!4513112))))

(declare-fun b!7582779 () Bool)

(assert (=> b!7582779 (= e!4513110 e!4513108)))

(assert (=> b!7582779 (= c!1398638 ((_ is Union!20087) (regTwo!40687 r!22341)))))

(declare-fun d!2318637 () Bool)

(declare-fun res!3037653 () Bool)

(assert (=> d!2318637 (=> res!3037653 e!4513109)))

(assert (=> d!2318637 (= res!3037653 ((_ is ElementMatch!20087) (regTwo!40687 r!22341)))))

(assert (=> d!2318637 (= (validRegex!10515 (regTwo!40687 r!22341)) e!4513109)))

(declare-fun b!7582780 () Bool)

(assert (=> b!7582780 (= e!4513104 call!695281)))

(declare-fun b!7582781 () Bool)

(assert (=> b!7582781 (= e!4513106 call!695282)))

(declare-fun bm!695278 () Bool)

(assert (=> bm!695278 (= call!695282 call!695283)))

(declare-fun b!7582782 () Bool)

(declare-fun res!3037655 () Bool)

(assert (=> b!7582782 (=> res!3037655 e!4513111)))

(assert (=> b!7582782 (= res!3037655 (not ((_ is Concat!28932) (regTwo!40687 r!22341))))))

(assert (=> b!7582782 (= e!4513108 e!4513111)))

(assert (= (and d!2318637 (not res!3037653)) b!7582774))

(assert (= (and b!7582774 c!1398635) b!7582778))

(assert (= (and b!7582774 (not c!1398635)) b!7582779))

(assert (= (and b!7582778 res!3037651) b!7582776))

(assert (= (and b!7582779 c!1398638) b!7582775))

(assert (= (and b!7582779 (not c!1398638)) b!7582782))

(assert (= (and b!7582775 res!3037654) b!7582781))

(assert (= (and b!7582782 (not res!3037655)) b!7582777))

(assert (= (and b!7582777 res!3037652) b!7582780))

(assert (= (or b!7582781 b!7582777) bm!695278))

(assert (= (or b!7582775 b!7582780) bm!695277))

(assert (= (or b!7582776 bm!695278) bm!695276))

(declare-fun m!8136442 () Bool)

(assert (=> bm!695276 m!8136442))

(declare-fun m!8136444 () Bool)

(assert (=> bm!695277 m!8136444))

(declare-fun m!8136446 () Bool)

(assert (=> b!7582778 m!8136446))

(assert (=> b!7582744 d!2318637))

(declare-fun b!7582881 () Bool)

(declare-fun e!4513171 () Bool)

(declare-fun e!4513168 () Bool)

(assert (=> b!7582881 (= e!4513171 e!4513168)))

(declare-fun res!3037689 () Bool)

(assert (=> b!7582881 (=> res!3037689 e!4513168)))

(declare-fun call!695314 () Bool)

(assert (=> b!7582881 (= res!3037689 call!695314)))

(declare-fun b!7582882 () Bool)

(declare-fun e!4513174 () Bool)

(declare-fun derivativeStep!5807 (Regex!20087 C!40500) Regex!20087)

(declare-fun head!15607 (List!72970) C!40500)

(declare-fun tail!15147 (List!72970) List!72970)

(assert (=> b!7582882 (= e!4513174 (matchR!9679 (derivativeStep!5807 (regOne!40687 r!22341) (head!15607 s!13436)) (tail!15147 s!13436)))))

(declare-fun d!2318643 () Bool)

(declare-fun e!4513173 () Bool)

(assert (=> d!2318643 e!4513173))

(declare-fun c!1398675 () Bool)

(assert (=> d!2318643 (= c!1398675 ((_ is EmptyExpr!20087) (regOne!40687 r!22341)))))

(declare-fun lt!2652734 () Bool)

(assert (=> d!2318643 (= lt!2652734 e!4513174)))

(declare-fun c!1398676 () Bool)

(assert (=> d!2318643 (= c!1398676 (isEmpty!41521 s!13436))))

(assert (=> d!2318643 (validRegex!10515 (regOne!40687 r!22341))))

(assert (=> d!2318643 (= (matchR!9679 (regOne!40687 r!22341) s!13436) lt!2652734)))

(declare-fun b!7582883 () Bool)

(declare-fun res!3037687 () Bool)

(declare-fun e!4513170 () Bool)

(assert (=> b!7582883 (=> res!3037687 e!4513170)))

(assert (=> b!7582883 (= res!3037687 (not ((_ is ElementMatch!20087) (regOne!40687 r!22341))))))

(declare-fun e!4513172 () Bool)

(assert (=> b!7582883 (= e!4513172 e!4513170)))

(declare-fun b!7582884 () Bool)

(declare-fun res!3037686 () Bool)

(declare-fun e!4513169 () Bool)

(assert (=> b!7582884 (=> (not res!3037686) (not e!4513169))))

(assert (=> b!7582884 (= res!3037686 (isEmpty!41521 (tail!15147 s!13436)))))

(declare-fun b!7582885 () Bool)

(assert (=> b!7582885 (= e!4513174 (nullable!8779 (regOne!40687 r!22341)))))

(declare-fun b!7582886 () Bool)

(assert (=> b!7582886 (= e!4513169 (= (head!15607 s!13436) (c!1398630 (regOne!40687 r!22341))))))

(declare-fun b!7582887 () Bool)

(declare-fun res!3037688 () Bool)

(assert (=> b!7582887 (=> res!3037688 e!4513170)))

(assert (=> b!7582887 (= res!3037688 e!4513169)))

(declare-fun res!3037684 () Bool)

(assert (=> b!7582887 (=> (not res!3037684) (not e!4513169))))

(assert (=> b!7582887 (= res!3037684 lt!2652734)))

(declare-fun b!7582888 () Bool)

(assert (=> b!7582888 (= e!4513173 (= lt!2652734 call!695314))))

(declare-fun b!7582889 () Bool)

(assert (=> b!7582889 (= e!4513173 e!4513172)))

(declare-fun c!1398674 () Bool)

(assert (=> b!7582889 (= c!1398674 ((_ is EmptyLang!20087) (regOne!40687 r!22341)))))

(declare-fun b!7582890 () Bool)

(assert (=> b!7582890 (= e!4513172 (not lt!2652734))))

(declare-fun b!7582891 () Bool)

(declare-fun res!3037691 () Bool)

(assert (=> b!7582891 (=> res!3037691 e!4513168)))

(assert (=> b!7582891 (= res!3037691 (not (isEmpty!41521 (tail!15147 s!13436))))))

(declare-fun bm!695309 () Bool)

(assert (=> bm!695309 (= call!695314 (isEmpty!41521 s!13436))))

(declare-fun b!7582892 () Bool)

(assert (=> b!7582892 (= e!4513170 e!4513171)))

(declare-fun res!3037685 () Bool)

(assert (=> b!7582892 (=> (not res!3037685) (not e!4513171))))

(assert (=> b!7582892 (= res!3037685 (not lt!2652734))))

(declare-fun b!7582893 () Bool)

(declare-fun res!3037690 () Bool)

(assert (=> b!7582893 (=> (not res!3037690) (not e!4513169))))

(assert (=> b!7582893 (= res!3037690 (not call!695314))))

(declare-fun b!7582894 () Bool)

(assert (=> b!7582894 (= e!4513168 (not (= (head!15607 s!13436) (c!1398630 (regOne!40687 r!22341)))))))

(assert (= (and d!2318643 c!1398676) b!7582885))

(assert (= (and d!2318643 (not c!1398676)) b!7582882))

(assert (= (and d!2318643 c!1398675) b!7582888))

(assert (= (and d!2318643 (not c!1398675)) b!7582889))

(assert (= (and b!7582889 c!1398674) b!7582890))

(assert (= (and b!7582889 (not c!1398674)) b!7582883))

(assert (= (and b!7582883 (not res!3037687)) b!7582887))

(assert (= (and b!7582887 res!3037684) b!7582893))

(assert (= (and b!7582893 res!3037690) b!7582884))

(assert (= (and b!7582884 res!3037686) b!7582886))

(assert (= (and b!7582887 (not res!3037688)) b!7582892))

(assert (= (and b!7582892 res!3037685) b!7582881))

(assert (= (and b!7582881 (not res!3037689)) b!7582891))

(assert (= (and b!7582891 (not res!3037691)) b!7582894))

(assert (= (or b!7582888 b!7582881 b!7582893) bm!695309))

(declare-fun m!8136468 () Bool)

(assert (=> b!7582882 m!8136468))

(assert (=> b!7582882 m!8136468))

(declare-fun m!8136472 () Bool)

(assert (=> b!7582882 m!8136472))

(declare-fun m!8136474 () Bool)

(assert (=> b!7582882 m!8136474))

(assert (=> b!7582882 m!8136472))

(assert (=> b!7582882 m!8136474))

(declare-fun m!8136478 () Bool)

(assert (=> b!7582882 m!8136478))

(assert (=> b!7582884 m!8136474))

(assert (=> b!7582884 m!8136474))

(declare-fun m!8136480 () Bool)

(assert (=> b!7582884 m!8136480))

(assert (=> b!7582886 m!8136468))

(assert (=> b!7582894 m!8136468))

(assert (=> d!2318643 m!8136436))

(declare-fun m!8136482 () Bool)

(assert (=> d!2318643 m!8136482))

(assert (=> b!7582891 m!8136474))

(assert (=> b!7582891 m!8136474))

(assert (=> b!7582891 m!8136480))

(declare-fun m!8136484 () Bool)

(assert (=> b!7582885 m!8136484))

(assert (=> bm!695309 m!8136436))

(assert (=> b!7582744 d!2318643))

(declare-fun d!2318653 () Bool)

(assert (=> d!2318653 (not (matchR!9679 (regOne!40687 r!22341) s!13436))))

(declare-fun lt!2652737 () Unit!167130)

(declare-fun choose!58621 (Regex!20087 List!72970) Unit!167130)

(assert (=> d!2318653 (= lt!2652737 (choose!58621 (regOne!40687 r!22341) s!13436))))

(assert (=> d!2318653 (validRegex!10515 (regOne!40687 r!22341))))

(assert (=> d!2318653 (= (lemmaLostCauseCannotMatch!85 (regOne!40687 r!22341) s!13436) lt!2652737)))

(declare-fun bs!1941122 () Bool)

(assert (= bs!1941122 d!2318653))

(assert (=> bs!1941122 m!8136426))

(declare-fun m!8136486 () Bool)

(assert (=> bs!1941122 m!8136486))

(assert (=> bs!1941122 m!8136482))

(assert (=> b!7582744 d!2318653))

(declare-fun b!7582895 () Bool)

(declare-fun e!4513178 () Bool)

(declare-fun e!4513179 () Bool)

(assert (=> b!7582895 (= e!4513178 e!4513179)))

(declare-fun c!1398677 () Bool)

(assert (=> b!7582895 (= c!1398677 ((_ is Star!20087) r!22341))))

(declare-fun b!7582896 () Bool)

(declare-fun res!3037695 () Bool)

(declare-fun e!4513176 () Bool)

(assert (=> b!7582896 (=> (not res!3037695) (not e!4513176))))

(declare-fun call!695315 () Bool)

(assert (=> b!7582896 (= res!3037695 call!695315)))

(declare-fun e!4513177 () Bool)

(assert (=> b!7582896 (= e!4513177 e!4513176)))

(declare-fun b!7582897 () Bool)

(declare-fun e!4513181 () Bool)

(declare-fun call!695317 () Bool)

(assert (=> b!7582897 (= e!4513181 call!695317)))

(declare-fun b!7582898 () Bool)

(declare-fun e!4513180 () Bool)

(declare-fun e!4513175 () Bool)

(assert (=> b!7582898 (= e!4513180 e!4513175)))

(declare-fun res!3037693 () Bool)

(assert (=> b!7582898 (=> (not res!3037693) (not e!4513175))))

(declare-fun call!695316 () Bool)

(assert (=> b!7582898 (= res!3037693 call!695316)))

(declare-fun bm!695310 () Bool)

(declare-fun c!1398678 () Bool)

(assert (=> bm!695310 (= call!695317 (validRegex!10515 (ite c!1398677 (reg!20416 r!22341) (ite c!1398678 (regTwo!40687 r!22341) (regOne!40686 r!22341)))))))

(declare-fun bm!695311 () Bool)

(assert (=> bm!695311 (= call!695315 (validRegex!10515 (ite c!1398678 (regOne!40687 r!22341) (regTwo!40686 r!22341))))))

(declare-fun b!7582899 () Bool)

(assert (=> b!7582899 (= e!4513179 e!4513181)))

(declare-fun res!3037692 () Bool)

(assert (=> b!7582899 (= res!3037692 (not (nullable!8779 (reg!20416 r!22341))))))

(assert (=> b!7582899 (=> (not res!3037692) (not e!4513181))))

(declare-fun b!7582900 () Bool)

(assert (=> b!7582900 (= e!4513179 e!4513177)))

(assert (=> b!7582900 (= c!1398678 ((_ is Union!20087) r!22341))))

(declare-fun d!2318655 () Bool)

(declare-fun res!3037694 () Bool)

(assert (=> d!2318655 (=> res!3037694 e!4513178)))

(assert (=> d!2318655 (= res!3037694 ((_ is ElementMatch!20087) r!22341))))

(assert (=> d!2318655 (= (validRegex!10515 r!22341) e!4513178)))

(declare-fun b!7582901 () Bool)

(assert (=> b!7582901 (= e!4513175 call!695315)))

(declare-fun b!7582902 () Bool)

(assert (=> b!7582902 (= e!4513176 call!695316)))

(declare-fun bm!695312 () Bool)

(assert (=> bm!695312 (= call!695316 call!695317)))

(declare-fun b!7582903 () Bool)

(declare-fun res!3037696 () Bool)

(assert (=> b!7582903 (=> res!3037696 e!4513180)))

(assert (=> b!7582903 (= res!3037696 (not ((_ is Concat!28932) r!22341)))))

(assert (=> b!7582903 (= e!4513177 e!4513180)))

(assert (= (and d!2318655 (not res!3037694)) b!7582895))

(assert (= (and b!7582895 c!1398677) b!7582899))

(assert (= (and b!7582895 (not c!1398677)) b!7582900))

(assert (= (and b!7582899 res!3037692) b!7582897))

(assert (= (and b!7582900 c!1398678) b!7582896))

(assert (= (and b!7582900 (not c!1398678)) b!7582903))

(assert (= (and b!7582896 res!3037695) b!7582902))

(assert (= (and b!7582903 (not res!3037696)) b!7582898))

(assert (= (and b!7582898 res!3037693) b!7582901))

(assert (= (or b!7582902 b!7582898) bm!695312))

(assert (= (or b!7582896 b!7582901) bm!695311))

(assert (= (or b!7582897 bm!695312) bm!695310))

(declare-fun m!8136488 () Bool)

(assert (=> bm!695310 m!8136488))

(declare-fun m!8136490 () Bool)

(assert (=> bm!695311 m!8136490))

(declare-fun m!8136492 () Bool)

(assert (=> b!7582899 m!8136492))

(assert (=> start!732072 d!2318655))

(declare-fun d!2318657 () Bool)

(assert (=> d!2318657 (= (isEmpty!41521 s!13436) ((_ is Nil!72846) s!13436))))

(assert (=> b!7582743 d!2318657))

(declare-fun b!7583002 () Bool)

(declare-fun e!4513246 () Int)

(declare-fun e!4513237 () Int)

(assert (=> b!7583002 (= e!4513246 e!4513237)))

(declare-fun c!1398710 () Bool)

(assert (=> b!7583002 (= c!1398710 ((_ is Concat!28932) r!22341))))

(declare-fun bm!695330 () Bool)

(declare-fun call!695336 () Int)

(declare-fun c!1398715 () Bool)

(assert (=> bm!695330 (= call!695336 (regexDepth!463 (ite c!1398715 (regOne!40687 r!22341) (regTwo!40686 r!22341))))))

(declare-fun b!7583003 () Bool)

(declare-fun call!695337 () Int)

(assert (=> b!7583003 (= e!4513246 (+ 1 call!695337))))

(declare-fun c!1398716 () Bool)

(declare-fun call!695335 () Int)

(declare-fun bm!695331 () Bool)

(declare-fun c!1398713 () Bool)

(assert (=> bm!695331 (= call!695335 (regexDepth!463 (ite c!1398713 (regTwo!40687 r!22341) (ite c!1398716 (regOne!40686 r!22341) (reg!20416 r!22341)))))))

(declare-fun bm!695332 () Bool)

(declare-fun call!695340 () Int)

(declare-fun call!695341 () Int)

(assert (=> bm!695332 (= call!695340 call!695341)))

(declare-fun b!7583004 () Bool)

(declare-fun e!4513240 () Int)

(assert (=> b!7583004 (= e!4513240 1)))

(declare-fun b!7583005 () Bool)

(assert (=> b!7583005 (= e!4513237 1)))

(declare-fun b!7583006 () Bool)

(declare-fun e!4513245 () Bool)

(declare-fun lt!2652743 () Int)

(assert (=> b!7583006 (= e!4513245 (= lt!2652743 1))))

(declare-fun b!7583007 () Bool)

(declare-fun res!3037735 () Bool)

(declare-fun e!4513242 () Bool)

(assert (=> b!7583007 (=> (not res!3037735) (not e!4513242))))

(declare-fun call!695339 () Int)

(assert (=> b!7583007 (= res!3037735 (> lt!2652743 call!695339))))

(declare-fun e!4513238 () Bool)

(assert (=> b!7583007 (= e!4513238 e!4513242)))

(declare-fun bm!695333 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!695333 (= call!695337 (maxBigInt!0 (ite c!1398715 call!695336 call!695340) (ite c!1398715 call!695340 call!695336)))))

(declare-fun bm!695334 () Bool)

(assert (=> bm!695334 (= call!695339 call!695335)))

(declare-fun b!7583008 () Bool)

(declare-fun c!1398712 () Bool)

(assert (=> b!7583008 (= c!1398712 ((_ is Star!20087) r!22341))))

(assert (=> b!7583008 (= e!4513238 e!4513245)))

(declare-fun b!7583009 () Bool)

(declare-fun call!695338 () Int)

(assert (=> b!7583009 (= e!4513242 (> lt!2652743 call!695338))))

(declare-fun bm!695335 () Bool)

(declare-fun c!1398714 () Bool)

(assert (=> bm!695335 (= call!695341 (regexDepth!463 (ite c!1398714 (reg!20416 r!22341) (ite c!1398715 (regTwo!40687 r!22341) (regOne!40686 r!22341)))))))

(declare-fun b!7583010 () Bool)

(declare-fun e!4513243 () Int)

(assert (=> b!7583010 (= e!4513243 (+ 1 call!695341))))

(declare-fun d!2318659 () Bool)

(declare-fun e!4513241 () Bool)

(assert (=> d!2318659 e!4513241))

(declare-fun res!3037733 () Bool)

(assert (=> d!2318659 (=> (not res!3037733) (not e!4513241))))

(assert (=> d!2318659 (= res!3037733 (> lt!2652743 0))))

(assert (=> d!2318659 (= lt!2652743 e!4513240)))

(declare-fun c!1398711 () Bool)

(assert (=> d!2318659 (= c!1398711 ((_ is ElementMatch!20087) r!22341))))

(assert (=> d!2318659 (= (regexDepth!463 r!22341) lt!2652743)))

(declare-fun b!7583011 () Bool)

(assert (=> b!7583011 (= c!1398715 ((_ is Union!20087) r!22341))))

(assert (=> b!7583011 (= e!4513243 e!4513246)))

(declare-fun b!7583012 () Bool)

(declare-fun e!4513239 () Bool)

(declare-fun e!4513244 () Bool)

(assert (=> b!7583012 (= e!4513239 e!4513244)))

(declare-fun res!3037734 () Bool)

(assert (=> b!7583012 (= res!3037734 (> lt!2652743 call!695338))))

(assert (=> b!7583012 (=> (not res!3037734) (not e!4513244))))

(declare-fun bm!695336 () Bool)

(assert (=> bm!695336 (= call!695338 (regexDepth!463 (ite c!1398713 (regOne!40687 r!22341) (regTwo!40686 r!22341))))))

(declare-fun b!7583013 () Bool)

(assert (=> b!7583013 (= e!4513244 (> lt!2652743 call!695335))))

(declare-fun b!7583014 () Bool)

(assert (=> b!7583014 (= e!4513240 e!4513243)))

(assert (=> b!7583014 (= c!1398714 ((_ is Star!20087) r!22341))))

(declare-fun b!7583015 () Bool)

(assert (=> b!7583015 (= e!4513245 (> lt!2652743 call!695339))))

(declare-fun b!7583016 () Bool)

(assert (=> b!7583016 (= e!4513237 (+ 1 call!695337))))

(declare-fun b!7583017 () Bool)

(assert (=> b!7583017 (= e!4513239 e!4513238)))

(assert (=> b!7583017 (= c!1398716 ((_ is Concat!28932) r!22341))))

(declare-fun b!7583018 () Bool)

(assert (=> b!7583018 (= e!4513241 e!4513239)))

(assert (=> b!7583018 (= c!1398713 ((_ is Union!20087) r!22341))))

(assert (= (and d!2318659 c!1398711) b!7583004))

(assert (= (and d!2318659 (not c!1398711)) b!7583014))

(assert (= (and b!7583014 c!1398714) b!7583010))

(assert (= (and b!7583014 (not c!1398714)) b!7583011))

(assert (= (and b!7583011 c!1398715) b!7583003))

(assert (= (and b!7583011 (not c!1398715)) b!7583002))

(assert (= (and b!7583002 c!1398710) b!7583016))

(assert (= (and b!7583002 (not c!1398710)) b!7583005))

(assert (= (or b!7583003 b!7583016) bm!695330))

(assert (= (or b!7583003 b!7583016) bm!695332))

(assert (= (or b!7583003 b!7583016) bm!695333))

(assert (= (or b!7583010 bm!695332) bm!695335))

(assert (= (and d!2318659 res!3037733) b!7583018))

(assert (= (and b!7583018 c!1398713) b!7583012))

(assert (= (and b!7583018 (not c!1398713)) b!7583017))

(assert (= (and b!7583012 res!3037734) b!7583013))

(assert (= (and b!7583017 c!1398716) b!7583007))

(assert (= (and b!7583017 (not c!1398716)) b!7583008))

(assert (= (and b!7583007 res!3037735) b!7583009))

(assert (= (and b!7583008 c!1398712) b!7583015))

(assert (= (and b!7583008 (not c!1398712)) b!7583006))

(assert (= (or b!7583007 b!7583015) bm!695334))

(assert (= (or b!7583013 bm!695334) bm!695331))

(assert (= (or b!7583012 b!7583009) bm!695336))

(declare-fun m!8136506 () Bool)

(assert (=> bm!695331 m!8136506))

(declare-fun m!8136508 () Bool)

(assert (=> bm!695336 m!8136508))

(declare-fun m!8136510 () Bool)

(assert (=> bm!695335 m!8136510))

(declare-fun m!8136512 () Bool)

(assert (=> bm!695330 m!8136512))

(declare-fun m!8136514 () Bool)

(assert (=> bm!695333 m!8136514))

(assert (=> b!7582747 d!2318659))

(declare-fun d!2318663 () Bool)

(declare-fun lt!2652746 () Int)

(assert (=> d!2318663 (>= lt!2652746 0)))

(declare-fun e!4513249 () Int)

(assert (=> d!2318663 (= lt!2652746 e!4513249)))

(declare-fun c!1398719 () Bool)

(assert (=> d!2318663 (= c!1398719 ((_ is Nil!72846) s!13436))))

(assert (=> d!2318663 (= (size!42502 s!13436) lt!2652746)))

(declare-fun b!7583023 () Bool)

(assert (=> b!7583023 (= e!4513249 0)))

(declare-fun b!7583024 () Bool)

(assert (=> b!7583024 (= e!4513249 (+ 1 (size!42502 (t!387705 s!13436))))))

(assert (= (and d!2318663 c!1398719) b!7583023))

(assert (= (and d!2318663 (not c!1398719)) b!7583024))

(declare-fun m!8136516 () Bool)

(assert (=> b!7583024 m!8136516))

(assert (=> b!7582747 d!2318663))

(declare-fun b!7583025 () Bool)

(declare-fun e!4513259 () Int)

(declare-fun e!4513250 () Int)

(assert (=> b!7583025 (= e!4513259 e!4513250)))

(declare-fun c!1398720 () Bool)

(assert (=> b!7583025 (= c!1398720 ((_ is Concat!28932) (regTwo!40687 r!22341)))))

(declare-fun bm!695337 () Bool)

(declare-fun call!695343 () Int)

(declare-fun c!1398725 () Bool)

(assert (=> bm!695337 (= call!695343 (regexDepth!463 (ite c!1398725 (regOne!40687 (regTwo!40687 r!22341)) (regTwo!40686 (regTwo!40687 r!22341)))))))

(declare-fun b!7583026 () Bool)

(declare-fun call!695344 () Int)

(assert (=> b!7583026 (= e!4513259 (+ 1 call!695344))))

(declare-fun call!695342 () Int)

(declare-fun bm!695338 () Bool)

(declare-fun c!1398723 () Bool)

(declare-fun c!1398726 () Bool)

(assert (=> bm!695338 (= call!695342 (regexDepth!463 (ite c!1398723 (regTwo!40687 (regTwo!40687 r!22341)) (ite c!1398726 (regOne!40686 (regTwo!40687 r!22341)) (reg!20416 (regTwo!40687 r!22341))))))))

(declare-fun bm!695339 () Bool)

(declare-fun call!695347 () Int)

(declare-fun call!695348 () Int)

(assert (=> bm!695339 (= call!695347 call!695348)))

(declare-fun b!7583027 () Bool)

(declare-fun e!4513253 () Int)

(assert (=> b!7583027 (= e!4513253 1)))

(declare-fun b!7583028 () Bool)

(assert (=> b!7583028 (= e!4513250 1)))

(declare-fun b!7583029 () Bool)

(declare-fun e!4513258 () Bool)

(declare-fun lt!2652747 () Int)

(assert (=> b!7583029 (= e!4513258 (= lt!2652747 1))))

(declare-fun b!7583030 () Bool)

(declare-fun res!3037738 () Bool)

(declare-fun e!4513255 () Bool)

(assert (=> b!7583030 (=> (not res!3037738) (not e!4513255))))

(declare-fun call!695346 () Int)

(assert (=> b!7583030 (= res!3037738 (> lt!2652747 call!695346))))

(declare-fun e!4513251 () Bool)

(assert (=> b!7583030 (= e!4513251 e!4513255)))

(declare-fun bm!695340 () Bool)

(assert (=> bm!695340 (= call!695344 (maxBigInt!0 (ite c!1398725 call!695343 call!695347) (ite c!1398725 call!695347 call!695343)))))

(declare-fun bm!695341 () Bool)

(assert (=> bm!695341 (= call!695346 call!695342)))

(declare-fun b!7583031 () Bool)

(declare-fun c!1398722 () Bool)

(assert (=> b!7583031 (= c!1398722 ((_ is Star!20087) (regTwo!40687 r!22341)))))

(assert (=> b!7583031 (= e!4513251 e!4513258)))

(declare-fun b!7583032 () Bool)

(declare-fun call!695345 () Int)

(assert (=> b!7583032 (= e!4513255 (> lt!2652747 call!695345))))

(declare-fun c!1398724 () Bool)

(declare-fun bm!695342 () Bool)

(assert (=> bm!695342 (= call!695348 (regexDepth!463 (ite c!1398724 (reg!20416 (regTwo!40687 r!22341)) (ite c!1398725 (regTwo!40687 (regTwo!40687 r!22341)) (regOne!40686 (regTwo!40687 r!22341))))))))

(declare-fun b!7583033 () Bool)

(declare-fun e!4513256 () Int)

(assert (=> b!7583033 (= e!4513256 (+ 1 call!695348))))

(declare-fun d!2318665 () Bool)

(declare-fun e!4513254 () Bool)

(assert (=> d!2318665 e!4513254))

(declare-fun res!3037736 () Bool)

(assert (=> d!2318665 (=> (not res!3037736) (not e!4513254))))

(assert (=> d!2318665 (= res!3037736 (> lt!2652747 0))))

(assert (=> d!2318665 (= lt!2652747 e!4513253)))

(declare-fun c!1398721 () Bool)

(assert (=> d!2318665 (= c!1398721 ((_ is ElementMatch!20087) (regTwo!40687 r!22341)))))

(assert (=> d!2318665 (= (regexDepth!463 (regTwo!40687 r!22341)) lt!2652747)))

(declare-fun b!7583034 () Bool)

(assert (=> b!7583034 (= c!1398725 ((_ is Union!20087) (regTwo!40687 r!22341)))))

(assert (=> b!7583034 (= e!4513256 e!4513259)))

(declare-fun b!7583035 () Bool)

(declare-fun e!4513252 () Bool)

(declare-fun e!4513257 () Bool)

(assert (=> b!7583035 (= e!4513252 e!4513257)))

(declare-fun res!3037737 () Bool)

(assert (=> b!7583035 (= res!3037737 (> lt!2652747 call!695345))))

(assert (=> b!7583035 (=> (not res!3037737) (not e!4513257))))

(declare-fun bm!695343 () Bool)

(assert (=> bm!695343 (= call!695345 (regexDepth!463 (ite c!1398723 (regOne!40687 (regTwo!40687 r!22341)) (regTwo!40686 (regTwo!40687 r!22341)))))))

(declare-fun b!7583036 () Bool)

(assert (=> b!7583036 (= e!4513257 (> lt!2652747 call!695342))))

(declare-fun b!7583037 () Bool)

(assert (=> b!7583037 (= e!4513253 e!4513256)))

(assert (=> b!7583037 (= c!1398724 ((_ is Star!20087) (regTwo!40687 r!22341)))))

(declare-fun b!7583038 () Bool)

(assert (=> b!7583038 (= e!4513258 (> lt!2652747 call!695346))))

(declare-fun b!7583039 () Bool)

(assert (=> b!7583039 (= e!4513250 (+ 1 call!695344))))

(declare-fun b!7583040 () Bool)

(assert (=> b!7583040 (= e!4513252 e!4513251)))

(assert (=> b!7583040 (= c!1398726 ((_ is Concat!28932) (regTwo!40687 r!22341)))))

(declare-fun b!7583041 () Bool)

(assert (=> b!7583041 (= e!4513254 e!4513252)))

(assert (=> b!7583041 (= c!1398723 ((_ is Union!20087) (regTwo!40687 r!22341)))))

(assert (= (and d!2318665 c!1398721) b!7583027))

(assert (= (and d!2318665 (not c!1398721)) b!7583037))

(assert (= (and b!7583037 c!1398724) b!7583033))

(assert (= (and b!7583037 (not c!1398724)) b!7583034))

(assert (= (and b!7583034 c!1398725) b!7583026))

(assert (= (and b!7583034 (not c!1398725)) b!7583025))

(assert (= (and b!7583025 c!1398720) b!7583039))

(assert (= (and b!7583025 (not c!1398720)) b!7583028))

(assert (= (or b!7583026 b!7583039) bm!695337))

(assert (= (or b!7583026 b!7583039) bm!695339))

(assert (= (or b!7583026 b!7583039) bm!695340))

(assert (= (or b!7583033 bm!695339) bm!695342))

(assert (= (and d!2318665 res!3037736) b!7583041))

(assert (= (and b!7583041 c!1398723) b!7583035))

(assert (= (and b!7583041 (not c!1398723)) b!7583040))

(assert (= (and b!7583035 res!3037737) b!7583036))

(assert (= (and b!7583040 c!1398726) b!7583030))

(assert (= (and b!7583040 (not c!1398726)) b!7583031))

(assert (= (and b!7583030 res!3037738) b!7583032))

(assert (= (and b!7583031 c!1398722) b!7583038))

(assert (= (and b!7583031 (not c!1398722)) b!7583029))

(assert (= (or b!7583030 b!7583038) bm!695341))

(assert (= (or b!7583036 bm!695341) bm!695338))

(assert (= (or b!7583035 b!7583032) bm!695343))

(declare-fun m!8136518 () Bool)

(assert (=> bm!695338 m!8136518))

(declare-fun m!8136520 () Bool)

(assert (=> bm!695343 m!8136520))

(declare-fun m!8136522 () Bool)

(assert (=> bm!695342 m!8136522))

(declare-fun m!8136524 () Bool)

(assert (=> bm!695337 m!8136524))

(declare-fun m!8136526 () Bool)

(assert (=> bm!695340 m!8136526))

(assert (=> b!7582747 d!2318665))

(declare-fun b!7583042 () Bool)

(declare-fun e!4513263 () Bool)

(declare-fun e!4513260 () Bool)

(assert (=> b!7583042 (= e!4513263 e!4513260)))

(declare-fun res!3037744 () Bool)

(assert (=> b!7583042 (=> res!3037744 e!4513260)))

(declare-fun call!695349 () Bool)

(assert (=> b!7583042 (= res!3037744 call!695349)))

(declare-fun b!7583043 () Bool)

(declare-fun e!4513266 () Bool)

(assert (=> b!7583043 (= e!4513266 (matchR!9679 (derivativeStep!5807 r!22341 (head!15607 s!13436)) (tail!15147 s!13436)))))

(declare-fun d!2318667 () Bool)

(declare-fun e!4513265 () Bool)

(assert (=> d!2318667 e!4513265))

(declare-fun c!1398728 () Bool)

(assert (=> d!2318667 (= c!1398728 ((_ is EmptyExpr!20087) r!22341))))

(declare-fun lt!2652748 () Bool)

(assert (=> d!2318667 (= lt!2652748 e!4513266)))

(declare-fun c!1398729 () Bool)

(assert (=> d!2318667 (= c!1398729 (isEmpty!41521 s!13436))))

(assert (=> d!2318667 (validRegex!10515 r!22341)))

(assert (=> d!2318667 (= (matchR!9679 r!22341 s!13436) lt!2652748)))

(declare-fun b!7583044 () Bool)

(declare-fun res!3037742 () Bool)

(declare-fun e!4513262 () Bool)

(assert (=> b!7583044 (=> res!3037742 e!4513262)))

(assert (=> b!7583044 (= res!3037742 (not ((_ is ElementMatch!20087) r!22341)))))

(declare-fun e!4513264 () Bool)

(assert (=> b!7583044 (= e!4513264 e!4513262)))

(declare-fun b!7583045 () Bool)

(declare-fun res!3037741 () Bool)

(declare-fun e!4513261 () Bool)

(assert (=> b!7583045 (=> (not res!3037741) (not e!4513261))))

(assert (=> b!7583045 (= res!3037741 (isEmpty!41521 (tail!15147 s!13436)))))

(declare-fun b!7583046 () Bool)

(assert (=> b!7583046 (= e!4513266 (nullable!8779 r!22341))))

(declare-fun b!7583047 () Bool)

(assert (=> b!7583047 (= e!4513261 (= (head!15607 s!13436) (c!1398630 r!22341)))))

(declare-fun b!7583048 () Bool)

(declare-fun res!3037743 () Bool)

(assert (=> b!7583048 (=> res!3037743 e!4513262)))

(assert (=> b!7583048 (= res!3037743 e!4513261)))

(declare-fun res!3037739 () Bool)

(assert (=> b!7583048 (=> (not res!3037739) (not e!4513261))))

(assert (=> b!7583048 (= res!3037739 lt!2652748)))

(declare-fun b!7583049 () Bool)

(assert (=> b!7583049 (= e!4513265 (= lt!2652748 call!695349))))

(declare-fun b!7583050 () Bool)

(assert (=> b!7583050 (= e!4513265 e!4513264)))

(declare-fun c!1398727 () Bool)

(assert (=> b!7583050 (= c!1398727 ((_ is EmptyLang!20087) r!22341))))

(declare-fun b!7583051 () Bool)

(assert (=> b!7583051 (= e!4513264 (not lt!2652748))))

(declare-fun b!7583052 () Bool)

(declare-fun res!3037746 () Bool)

(assert (=> b!7583052 (=> res!3037746 e!4513260)))

(assert (=> b!7583052 (= res!3037746 (not (isEmpty!41521 (tail!15147 s!13436))))))

(declare-fun bm!695344 () Bool)

(assert (=> bm!695344 (= call!695349 (isEmpty!41521 s!13436))))

(declare-fun b!7583053 () Bool)

(assert (=> b!7583053 (= e!4513262 e!4513263)))

(declare-fun res!3037740 () Bool)

(assert (=> b!7583053 (=> (not res!3037740) (not e!4513263))))

(assert (=> b!7583053 (= res!3037740 (not lt!2652748))))

(declare-fun b!7583054 () Bool)

(declare-fun res!3037745 () Bool)

(assert (=> b!7583054 (=> (not res!3037745) (not e!4513261))))

(assert (=> b!7583054 (= res!3037745 (not call!695349))))

(declare-fun b!7583055 () Bool)

(assert (=> b!7583055 (= e!4513260 (not (= (head!15607 s!13436) (c!1398630 r!22341))))))

(assert (= (and d!2318667 c!1398729) b!7583046))

(assert (= (and d!2318667 (not c!1398729)) b!7583043))

(assert (= (and d!2318667 c!1398728) b!7583049))

(assert (= (and d!2318667 (not c!1398728)) b!7583050))

(assert (= (and b!7583050 c!1398727) b!7583051))

(assert (= (and b!7583050 (not c!1398727)) b!7583044))

(assert (= (and b!7583044 (not res!3037742)) b!7583048))

(assert (= (and b!7583048 res!3037739) b!7583054))

(assert (= (and b!7583054 res!3037745) b!7583045))

(assert (= (and b!7583045 res!3037741) b!7583047))

(assert (= (and b!7583048 (not res!3037743)) b!7583053))

(assert (= (and b!7583053 res!3037740) b!7583042))

(assert (= (and b!7583042 (not res!3037744)) b!7583052))

(assert (= (and b!7583052 (not res!3037746)) b!7583055))

(assert (= (or b!7583049 b!7583042 b!7583054) bm!695344))

(assert (=> b!7583043 m!8136468))

(assert (=> b!7583043 m!8136468))

(declare-fun m!8136528 () Bool)

(assert (=> b!7583043 m!8136528))

(assert (=> b!7583043 m!8136474))

(assert (=> b!7583043 m!8136528))

(assert (=> b!7583043 m!8136474))

(declare-fun m!8136530 () Bool)

(assert (=> b!7583043 m!8136530))

(assert (=> b!7583045 m!8136474))

(assert (=> b!7583045 m!8136474))

(assert (=> b!7583045 m!8136480))

(assert (=> b!7583047 m!8136468))

(assert (=> b!7583055 m!8136468))

(assert (=> d!2318667 m!8136436))

(assert (=> d!2318667 m!8136414))

(assert (=> b!7583052 m!8136474))

(assert (=> b!7583052 m!8136474))

(assert (=> b!7583052 m!8136480))

(declare-fun m!8136532 () Bool)

(assert (=> b!7583046 m!8136532))

(assert (=> bm!695344 m!8136436))

(assert (=> b!7582746 d!2318667))

(declare-fun b!7583202 () Bool)

(assert (=> b!7583202 true))

(assert (=> b!7583202 true))

(declare-fun bs!1941126 () Bool)

(declare-fun b!7583207 () Bool)

(assert (= bs!1941126 (and b!7583207 b!7583202)))

(declare-fun lambda!466997 () Int)

(declare-fun lambda!466996 () Int)

(assert (=> bs!1941126 (not (= lambda!466997 lambda!466996))))

(assert (=> b!7583207 true))

(assert (=> b!7583207 true))

(declare-fun call!695373 () Bool)

(declare-fun c!1398755 () Bool)

(declare-fun bm!695368 () Bool)

(declare-fun Exists!4321 (Int) Bool)

(assert (=> bm!695368 (= call!695373 (Exists!4321 (ite c!1398755 lambda!466996 lambda!466997)))))

(declare-fun b!7583198 () Bool)

(declare-fun e!4513343 () Bool)

(assert (=> b!7583198 (= e!4513343 (matchRSpec!4400 (regTwo!40687 r!22341) s!13436))))

(declare-fun b!7583199 () Bool)

(declare-fun e!4513346 () Bool)

(declare-fun e!4513345 () Bool)

(assert (=> b!7583199 (= e!4513346 e!4513345)))

(declare-fun res!3037805 () Bool)

(assert (=> b!7583199 (= res!3037805 (not ((_ is EmptyLang!20087) r!22341)))))

(assert (=> b!7583199 (=> (not res!3037805) (not e!4513345))))

(declare-fun b!7583200 () Bool)

(declare-fun c!1398754 () Bool)

(assert (=> b!7583200 (= c!1398754 ((_ is ElementMatch!20087) r!22341))))

(declare-fun e!4513344 () Bool)

(assert (=> b!7583200 (= e!4513345 e!4513344)))

(declare-fun b!7583201 () Bool)

(declare-fun e!4513347 () Bool)

(assert (=> b!7583201 (= e!4513347 e!4513343)))

(declare-fun res!3037806 () Bool)

(assert (=> b!7583201 (= res!3037806 (matchRSpec!4400 (regOne!40687 r!22341) s!13436))))

(assert (=> b!7583201 (=> res!3037806 e!4513343)))

(declare-fun e!4513342 () Bool)

(assert (=> b!7583202 (= e!4513342 call!695373)))

(declare-fun b!7583203 () Bool)

(declare-fun c!1398753 () Bool)

(assert (=> b!7583203 (= c!1398753 ((_ is Union!20087) r!22341))))

(assert (=> b!7583203 (= e!4513344 e!4513347)))

(declare-fun b!7583204 () Bool)

(declare-fun call!695374 () Bool)

(assert (=> b!7583204 (= e!4513346 call!695374)))

(declare-fun b!7583205 () Bool)

(declare-fun res!3037804 () Bool)

(assert (=> b!7583205 (=> res!3037804 e!4513342)))

(assert (=> b!7583205 (= res!3037804 call!695374)))

(declare-fun e!4513341 () Bool)

(assert (=> b!7583205 (= e!4513341 e!4513342)))

(declare-fun bm!695369 () Bool)

(assert (=> bm!695369 (= call!695374 (isEmpty!41521 s!13436))))

(declare-fun b!7583206 () Bool)

(assert (=> b!7583206 (= e!4513344 (= s!13436 (Cons!72846 (c!1398630 r!22341) Nil!72846)))))

(assert (=> b!7583207 (= e!4513341 call!695373)))

(declare-fun b!7583208 () Bool)

(assert (=> b!7583208 (= e!4513347 e!4513341)))

(assert (=> b!7583208 (= c!1398755 ((_ is Star!20087) r!22341))))

(declare-fun d!2318669 () Bool)

(declare-fun c!1398756 () Bool)

(assert (=> d!2318669 (= c!1398756 ((_ is EmptyExpr!20087) r!22341))))

(assert (=> d!2318669 (= (matchRSpec!4400 r!22341 s!13436) e!4513346)))

(assert (= (and d!2318669 c!1398756) b!7583204))

(assert (= (and d!2318669 (not c!1398756)) b!7583199))

(assert (= (and b!7583199 res!3037805) b!7583200))

(assert (= (and b!7583200 c!1398754) b!7583206))

(assert (= (and b!7583200 (not c!1398754)) b!7583203))

(assert (= (and b!7583203 c!1398753) b!7583201))

(assert (= (and b!7583203 (not c!1398753)) b!7583208))

(assert (= (and b!7583201 (not res!3037806)) b!7583198))

(assert (= (and b!7583208 c!1398755) b!7583205))

(assert (= (and b!7583208 (not c!1398755)) b!7583207))

(assert (= (and b!7583205 (not res!3037804)) b!7583202))

(assert (= (or b!7583202 b!7583207) bm!695368))

(assert (= (or b!7583204 b!7583205) bm!695369))

(declare-fun m!8136564 () Bool)

(assert (=> bm!695368 m!8136564))

(declare-fun m!8136566 () Bool)

(assert (=> b!7583198 m!8136566))

(declare-fun m!8136568 () Bool)

(assert (=> b!7583201 m!8136568))

(assert (=> bm!695369 m!8136436))

(assert (=> b!7582746 d!2318669))

(declare-fun d!2318683 () Bool)

(assert (=> d!2318683 (= (matchR!9679 r!22341 s!13436) (matchRSpec!4400 r!22341 s!13436))))

(declare-fun lt!2652758 () Unit!167130)

(declare-fun choose!58624 (Regex!20087 List!72970) Unit!167130)

(assert (=> d!2318683 (= lt!2652758 (choose!58624 r!22341 s!13436))))

(assert (=> d!2318683 (validRegex!10515 r!22341)))

(assert (=> d!2318683 (= (mainMatchTheorem!4394 r!22341 s!13436) lt!2652758)))

(declare-fun bs!1941127 () Bool)

(assert (= bs!1941127 d!2318683))

(assert (=> bs!1941127 m!8136430))

(assert (=> bs!1941127 m!8136432))

(declare-fun m!8136570 () Bool)

(assert (=> bs!1941127 m!8136570))

(assert (=> bs!1941127 m!8136414))

(assert (=> b!7582746 d!2318683))

(declare-fun d!2318685 () Bool)

(assert (=> d!2318685 (= (lostCause!1863 r!22341) (lostCauseFct!516 r!22341))))

(declare-fun bs!1941128 () Bool)

(assert (= bs!1941128 d!2318685))

(declare-fun m!8136572 () Bool)

(assert (=> bs!1941128 m!8136572))

(assert (=> b!7582751 d!2318685))

(declare-fun b!7583223 () Bool)

(declare-fun e!4513350 () Bool)

(assert (=> b!7583223 (= e!4513350 tp_is_empty!50529)))

(declare-fun b!7583226 () Bool)

(declare-fun tp!2209932 () Bool)

(declare-fun tp!2209930 () Bool)

(assert (=> b!7583226 (= e!4513350 (and tp!2209932 tp!2209930))))

(declare-fun b!7583225 () Bool)

(declare-fun tp!2209933 () Bool)

(assert (=> b!7583225 (= e!4513350 tp!2209933)))

(assert (=> b!7582749 (= tp!2209879 e!4513350)))

(declare-fun b!7583224 () Bool)

(declare-fun tp!2209934 () Bool)

(declare-fun tp!2209931 () Bool)

(assert (=> b!7583224 (= e!4513350 (and tp!2209934 tp!2209931))))

(assert (= (and b!7582749 ((_ is ElementMatch!20087) (regOne!40687 r!22341))) b!7583223))

(assert (= (and b!7582749 ((_ is Concat!28932) (regOne!40687 r!22341))) b!7583224))

(assert (= (and b!7582749 ((_ is Star!20087) (regOne!40687 r!22341))) b!7583225))

(assert (= (and b!7582749 ((_ is Union!20087) (regOne!40687 r!22341))) b!7583226))

(declare-fun b!7583227 () Bool)

(declare-fun e!4513351 () Bool)

(assert (=> b!7583227 (= e!4513351 tp_is_empty!50529)))

(declare-fun b!7583230 () Bool)

(declare-fun tp!2209937 () Bool)

(declare-fun tp!2209935 () Bool)

(assert (=> b!7583230 (= e!4513351 (and tp!2209937 tp!2209935))))

(declare-fun b!7583229 () Bool)

(declare-fun tp!2209938 () Bool)

(assert (=> b!7583229 (= e!4513351 tp!2209938)))

(assert (=> b!7582749 (= tp!2209878 e!4513351)))

(declare-fun b!7583228 () Bool)

(declare-fun tp!2209939 () Bool)

(declare-fun tp!2209936 () Bool)

(assert (=> b!7583228 (= e!4513351 (and tp!2209939 tp!2209936))))

(assert (= (and b!7582749 ((_ is ElementMatch!20087) (regTwo!40687 r!22341))) b!7583227))

(assert (= (and b!7582749 ((_ is Concat!28932) (regTwo!40687 r!22341))) b!7583228))

(assert (= (and b!7582749 ((_ is Star!20087) (regTwo!40687 r!22341))) b!7583229))

(assert (= (and b!7582749 ((_ is Union!20087) (regTwo!40687 r!22341))) b!7583230))

(declare-fun b!7583231 () Bool)

(declare-fun e!4513352 () Bool)

(assert (=> b!7583231 (= e!4513352 tp_is_empty!50529)))

(declare-fun b!7583234 () Bool)

(declare-fun tp!2209942 () Bool)

(declare-fun tp!2209940 () Bool)

(assert (=> b!7583234 (= e!4513352 (and tp!2209942 tp!2209940))))

(declare-fun b!7583233 () Bool)

(declare-fun tp!2209943 () Bool)

(assert (=> b!7583233 (= e!4513352 tp!2209943)))

(assert (=> b!7582748 (= tp!2209876 e!4513352)))

(declare-fun b!7583232 () Bool)

(declare-fun tp!2209944 () Bool)

(declare-fun tp!2209941 () Bool)

(assert (=> b!7583232 (= e!4513352 (and tp!2209944 tp!2209941))))

(assert (= (and b!7582748 ((_ is ElementMatch!20087) (reg!20416 r!22341))) b!7583231))

(assert (= (and b!7582748 ((_ is Concat!28932) (reg!20416 r!22341))) b!7583232))

(assert (= (and b!7582748 ((_ is Star!20087) (reg!20416 r!22341))) b!7583233))

(assert (= (and b!7582748 ((_ is Union!20087) (reg!20416 r!22341))) b!7583234))

(declare-fun b!7583239 () Bool)

(declare-fun e!4513355 () Bool)

(declare-fun tp!2209947 () Bool)

(assert (=> b!7583239 (= e!4513355 (and tp_is_empty!50529 tp!2209947))))

(assert (=> b!7582742 (= tp!2209880 e!4513355)))

(assert (= (and b!7582742 ((_ is Cons!72846) (t!387705 s!13436))) b!7583239))

(declare-fun b!7583240 () Bool)

(declare-fun e!4513356 () Bool)

(assert (=> b!7583240 (= e!4513356 tp_is_empty!50529)))

(declare-fun b!7583243 () Bool)

(declare-fun tp!2209950 () Bool)

(declare-fun tp!2209948 () Bool)

(assert (=> b!7583243 (= e!4513356 (and tp!2209950 tp!2209948))))

(declare-fun b!7583242 () Bool)

(declare-fun tp!2209951 () Bool)

(assert (=> b!7583242 (= e!4513356 tp!2209951)))

(assert (=> b!7582741 (= tp!2209881 e!4513356)))

(declare-fun b!7583241 () Bool)

(declare-fun tp!2209952 () Bool)

(declare-fun tp!2209949 () Bool)

(assert (=> b!7583241 (= e!4513356 (and tp!2209952 tp!2209949))))

(assert (= (and b!7582741 ((_ is ElementMatch!20087) (regOne!40686 r!22341))) b!7583240))

(assert (= (and b!7582741 ((_ is Concat!28932) (regOne!40686 r!22341))) b!7583241))

(assert (= (and b!7582741 ((_ is Star!20087) (regOne!40686 r!22341))) b!7583242))

(assert (= (and b!7582741 ((_ is Union!20087) (regOne!40686 r!22341))) b!7583243))

(declare-fun b!7583244 () Bool)

(declare-fun e!4513357 () Bool)

(assert (=> b!7583244 (= e!4513357 tp_is_empty!50529)))

(declare-fun b!7583247 () Bool)

(declare-fun tp!2209955 () Bool)

(declare-fun tp!2209953 () Bool)

(assert (=> b!7583247 (= e!4513357 (and tp!2209955 tp!2209953))))

(declare-fun b!7583246 () Bool)

(declare-fun tp!2209956 () Bool)

(assert (=> b!7583246 (= e!4513357 tp!2209956)))

(assert (=> b!7582741 (= tp!2209877 e!4513357)))

(declare-fun b!7583245 () Bool)

(declare-fun tp!2209957 () Bool)

(declare-fun tp!2209954 () Bool)

(assert (=> b!7583245 (= e!4513357 (and tp!2209957 tp!2209954))))

(assert (= (and b!7582741 ((_ is ElementMatch!20087) (regTwo!40686 r!22341))) b!7583244))

(assert (= (and b!7582741 ((_ is Concat!28932) (regTwo!40686 r!22341))) b!7583245))

(assert (= (and b!7582741 ((_ is Star!20087) (regTwo!40686 r!22341))) b!7583246))

(assert (= (and b!7582741 ((_ is Union!20087) (regTwo!40686 r!22341))) b!7583247))

(check-sat (not bm!695344) (not b!7583230) (not bm!695368) (not bm!695338) (not bm!695276) (not bm!695277) (not b!7582891) (not b!7583045) (not b!7583228) (not d!2318635) (not d!2318667) (not b!7583234) (not bm!695336) (not b!7582894) (not b!7583246) (not bm!695337) (not bm!695309) tp_is_empty!50529 (not b!7583243) (not b!7583233) (not b!7583226) (not b!7583024) (not b!7583047) (not b!7582885) (not b!7582884) (not b!7583241) (not d!2318685) (not bm!695343) (not bm!695340) (not b!7583224) (not bm!695342) (not b!7583055) (not bm!695369) (not b!7583247) (not b!7583229) (not d!2318683) (not b!7583225) (not b!7582899) (not bm!695333) (not b!7583201) (not b!7583043) (not bm!695330) (not b!7583242) (not bm!695311) (not bm!695331) (not b!7582886) (not b!7582882) (not b!7583232) (not b!7583052) (not b!7583239) (not d!2318643) (not d!2318653) (not b!7583198) (not b!7582778) (not b!7583046) (not b!7583245) (not bm!695335) (not bm!695310))
(check-sat)
