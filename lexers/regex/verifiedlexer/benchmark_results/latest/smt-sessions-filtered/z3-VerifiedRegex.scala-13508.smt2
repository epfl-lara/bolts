; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728316 () Bool)

(assert start!728316)

(declare-fun b!7525739 () Bool)

(declare-fun res!3016185 () Bool)

(declare-fun e!4485787 () Bool)

(assert (=> b!7525739 (=> (not res!3016185) (not e!4485787))))

(declare-datatypes ((C!39948 0))(
  ( (C!39949 (val!30414 Int)) )
))
(declare-datatypes ((List!72694 0))(
  ( (Nil!72570) (Cons!72570 (h!79018 C!39948) (t!387401 List!72694)) )
))
(declare-fun returnP!57 () List!72694)

(declare-fun input!6727 () List!72694)

(declare-fun isPrefix!6017 (List!72694 List!72694) Bool)

(assert (=> b!7525739 (= res!3016185 (isPrefix!6017 returnP!57 input!6727))))

(declare-fun b!7525740 () Bool)

(declare-fun ++!17362 (List!72694 List!72694) List!72694)

(assert (=> b!7525740 (= e!4485787 (not (= (++!17362 Nil!72570 input!6727) input!6727)))))

(declare-fun lt!2638671 () Int)

(declare-fun size!42307 (List!72694) Int)

(assert (=> b!7525740 (= lt!2638671 (size!42307 input!6727))))

(declare-fun lt!2638672 () Int)

(assert (=> b!7525740 (= lt!2638672 (size!42307 Nil!72570))))

(declare-fun b!7525741 () Bool)

(declare-fun e!4485785 () Bool)

(declare-fun tp!2187075 () Bool)

(declare-fun tp!2187080 () Bool)

(assert (=> b!7525741 (= e!4485785 (and tp!2187075 tp!2187080))))

(declare-fun b!7525742 () Bool)

(declare-fun e!4485789 () Bool)

(declare-fun tp_is_empty!49977 () Bool)

(declare-fun tp!2187074 () Bool)

(assert (=> b!7525742 (= e!4485789 (and tp_is_empty!49977 tp!2187074))))

(declare-fun b!7525743 () Bool)

(declare-fun tp!2187076 () Bool)

(declare-fun tp!2187078 () Bool)

(assert (=> b!7525743 (= e!4485785 (and tp!2187076 tp!2187078))))

(declare-fun res!3016186 () Bool)

(assert (=> start!728316 (=> (not res!3016186) (not e!4485787))))

(declare-datatypes ((Regex!19811 0))(
  ( (ElementMatch!19811 (c!1390230 C!39948)) (Concat!28656 (regOne!40134 Regex!19811) (regTwo!40134 Regex!19811)) (EmptyExpr!19811) (Star!19811 (reg!20140 Regex!19811)) (EmptyLang!19811) (Union!19811 (regOne!40135 Regex!19811) (regTwo!40135 Regex!19811)) )
))
(declare-fun baseR!93 () Regex!19811)

(declare-fun validRegex!10239 (Regex!19811) Bool)

(assert (=> start!728316 (= res!3016186 (validRegex!10239 baseR!93))))

(assert (=> start!728316 e!4485787))

(assert (=> start!728316 e!4485785))

(declare-fun e!4485786 () Bool)

(assert (=> start!728316 e!4485786))

(declare-fun e!4485788 () Bool)

(assert (=> start!728316 e!4485788))

(assert (=> start!728316 e!4485789))

(declare-fun b!7525744 () Bool)

(declare-fun tp!2187077 () Bool)

(assert (=> b!7525744 (= e!4485786 (and tp_is_empty!49977 tp!2187077))))

(declare-fun b!7525745 () Bool)

(declare-fun tp!2187079 () Bool)

(assert (=> b!7525745 (= e!4485788 (and tp_is_empty!49977 tp!2187079))))

(declare-fun b!7525746 () Bool)

(declare-fun res!3016187 () Bool)

(assert (=> b!7525746 (=> (not res!3016187) (not e!4485787))))

(declare-fun bigger!57 () List!72694)

(assert (=> b!7525746 (= res!3016187 (isPrefix!6017 bigger!57 input!6727))))

(declare-fun b!7525747 () Bool)

(declare-fun tp!2187081 () Bool)

(assert (=> b!7525747 (= e!4485785 tp!2187081)))

(declare-fun b!7525748 () Bool)

(declare-fun res!3016188 () Bool)

(assert (=> b!7525748 (=> (not res!3016188) (not e!4485787))))

(assert (=> b!7525748 (= res!3016188 (>= (size!42307 bigger!57) (size!42307 returnP!57)))))

(declare-fun b!7525749 () Bool)

(assert (=> b!7525749 (= e!4485785 tp_is_empty!49977)))

(assert (= (and start!728316 res!3016186) b!7525739))

(assert (= (and b!7525739 res!3016185) b!7525746))

(assert (= (and b!7525746 res!3016187) b!7525748))

(assert (= (and b!7525748 res!3016188) b!7525740))

(get-info :version)

(assert (= (and start!728316 ((_ is ElementMatch!19811) baseR!93)) b!7525749))

(assert (= (and start!728316 ((_ is Concat!28656) baseR!93)) b!7525743))

(assert (= (and start!728316 ((_ is Star!19811) baseR!93)) b!7525747))

(assert (= (and start!728316 ((_ is Union!19811) baseR!93)) b!7525741))

(assert (= (and start!728316 ((_ is Cons!72570) returnP!57)) b!7525744))

(assert (= (and start!728316 ((_ is Cons!72570) input!6727)) b!7525745))

(assert (= (and start!728316 ((_ is Cons!72570) bigger!57)) b!7525742))

(declare-fun m!8101410 () Bool)

(assert (=> b!7525740 m!8101410))

(declare-fun m!8101412 () Bool)

(assert (=> b!7525740 m!8101412))

(declare-fun m!8101414 () Bool)

(assert (=> b!7525740 m!8101414))

(declare-fun m!8101416 () Bool)

(assert (=> b!7525746 m!8101416))

(declare-fun m!8101418 () Bool)

(assert (=> start!728316 m!8101418))

(declare-fun m!8101420 () Bool)

(assert (=> b!7525739 m!8101420))

(declare-fun m!8101422 () Bool)

(assert (=> b!7525748 m!8101422))

(declare-fun m!8101424 () Bool)

(assert (=> b!7525748 m!8101424))

(check-sat (not b!7525746) (not b!7525742) (not b!7525739) (not b!7525743) (not b!7525740) (not b!7525744) (not b!7525748) tp_is_empty!49977 (not b!7525741) (not b!7525747) (not start!728316) (not b!7525745))
(check-sat)
(get-model)

(declare-fun b!7525776 () Bool)

(declare-fun e!4485812 () Bool)

(declare-fun e!4485811 () Bool)

(assert (=> b!7525776 (= e!4485812 e!4485811)))

(declare-fun res!3016200 () Bool)

(declare-fun nullable!8642 (Regex!19811) Bool)

(assert (=> b!7525776 (= res!3016200 (not (nullable!8642 (reg!20140 baseR!93))))))

(assert (=> b!7525776 (=> (not res!3016200) (not e!4485811))))

(declare-fun bm!690424 () Bool)

(declare-fun call!690430 () Bool)

(declare-fun call!690429 () Bool)

(assert (=> bm!690424 (= call!690430 call!690429)))

(declare-fun b!7525777 () Bool)

(declare-fun e!4485813 () Bool)

(declare-fun e!4485809 () Bool)

(assert (=> b!7525777 (= e!4485813 e!4485809)))

(declare-fun res!3016199 () Bool)

(assert (=> b!7525777 (=> (not res!3016199) (not e!4485809))))

(declare-fun call!690431 () Bool)

(assert (=> b!7525777 (= res!3016199 call!690431)))

(declare-fun b!7525778 () Bool)

(assert (=> b!7525778 (= e!4485811 call!690429)))

(declare-fun b!7525779 () Bool)

(declare-fun res!3016203 () Bool)

(declare-fun e!4485810 () Bool)

(assert (=> b!7525779 (=> (not res!3016203) (not e!4485810))))

(assert (=> b!7525779 (= res!3016203 call!690430)))

(declare-fun e!4485814 () Bool)

(assert (=> b!7525779 (= e!4485814 e!4485810)))

(declare-fun b!7525780 () Bool)

(assert (=> b!7525780 (= e!4485810 call!690431)))

(declare-fun b!7525781 () Bool)

(assert (=> b!7525781 (= e!4485812 e!4485814)))

(declare-fun c!1390240 () Bool)

(assert (=> b!7525781 (= c!1390240 ((_ is Union!19811) baseR!93))))

(declare-fun d!2309389 () Bool)

(declare-fun res!3016201 () Bool)

(declare-fun e!4485808 () Bool)

(assert (=> d!2309389 (=> res!3016201 e!4485808)))

(assert (=> d!2309389 (= res!3016201 ((_ is ElementMatch!19811) baseR!93))))

(assert (=> d!2309389 (= (validRegex!10239 baseR!93) e!4485808)))

(declare-fun bm!690425 () Bool)

(assert (=> bm!690425 (= call!690431 (validRegex!10239 (ite c!1390240 (regTwo!40135 baseR!93) (regOne!40134 baseR!93))))))

(declare-fun c!1390239 () Bool)

(declare-fun bm!690426 () Bool)

(assert (=> bm!690426 (= call!690429 (validRegex!10239 (ite c!1390239 (reg!20140 baseR!93) (ite c!1390240 (regOne!40135 baseR!93) (regTwo!40134 baseR!93)))))))

(declare-fun b!7525782 () Bool)

(assert (=> b!7525782 (= e!4485809 call!690430)))

(declare-fun b!7525783 () Bool)

(assert (=> b!7525783 (= e!4485808 e!4485812)))

(assert (=> b!7525783 (= c!1390239 ((_ is Star!19811) baseR!93))))

(declare-fun b!7525784 () Bool)

(declare-fun res!3016202 () Bool)

(assert (=> b!7525784 (=> res!3016202 e!4485813)))

(assert (=> b!7525784 (= res!3016202 (not ((_ is Concat!28656) baseR!93)))))

(assert (=> b!7525784 (= e!4485814 e!4485813)))

(assert (= (and d!2309389 (not res!3016201)) b!7525783))

(assert (= (and b!7525783 c!1390239) b!7525776))

(assert (= (and b!7525783 (not c!1390239)) b!7525781))

(assert (= (and b!7525776 res!3016200) b!7525778))

(assert (= (and b!7525781 c!1390240) b!7525779))

(assert (= (and b!7525781 (not c!1390240)) b!7525784))

(assert (= (and b!7525779 res!3016203) b!7525780))

(assert (= (and b!7525784 (not res!3016202)) b!7525777))

(assert (= (and b!7525777 res!3016199) b!7525782))

(assert (= (or b!7525780 b!7525777) bm!690425))

(assert (= (or b!7525779 b!7525782) bm!690424))

(assert (= (or b!7525778 bm!690424) bm!690426))

(declare-fun m!8101430 () Bool)

(assert (=> b!7525776 m!8101430))

(declare-fun m!8101432 () Bool)

(assert (=> bm!690425 m!8101432))

(declare-fun m!8101434 () Bool)

(assert (=> bm!690426 m!8101434))

(assert (=> start!728316 d!2309389))

(declare-fun d!2309397 () Bool)

(declare-fun lt!2638682 () Int)

(assert (=> d!2309397 (>= lt!2638682 0)))

(declare-fun e!4485826 () Int)

(assert (=> d!2309397 (= lt!2638682 e!4485826)))

(declare-fun c!1390243 () Bool)

(assert (=> d!2309397 (= c!1390243 ((_ is Nil!72570) bigger!57))))

(assert (=> d!2309397 (= (size!42307 bigger!57) lt!2638682)))

(declare-fun b!7525801 () Bool)

(assert (=> b!7525801 (= e!4485826 0)))

(declare-fun b!7525802 () Bool)

(assert (=> b!7525802 (= e!4485826 (+ 1 (size!42307 (t!387401 bigger!57))))))

(assert (= (and d!2309397 c!1390243) b!7525801))

(assert (= (and d!2309397 (not c!1390243)) b!7525802))

(declare-fun m!8101436 () Bool)

(assert (=> b!7525802 m!8101436))

(assert (=> b!7525748 d!2309397))

(declare-fun d!2309399 () Bool)

(declare-fun lt!2638683 () Int)

(assert (=> d!2309399 (>= lt!2638683 0)))

(declare-fun e!4485827 () Int)

(assert (=> d!2309399 (= lt!2638683 e!4485827)))

(declare-fun c!1390244 () Bool)

(assert (=> d!2309399 (= c!1390244 ((_ is Nil!72570) returnP!57))))

(assert (=> d!2309399 (= (size!42307 returnP!57) lt!2638683)))

(declare-fun b!7525803 () Bool)

(assert (=> b!7525803 (= e!4485827 0)))

(declare-fun b!7525804 () Bool)

(assert (=> b!7525804 (= e!4485827 (+ 1 (size!42307 (t!387401 returnP!57))))))

(assert (= (and d!2309399 c!1390244) b!7525803))

(assert (= (and d!2309399 (not c!1390244)) b!7525804))

(declare-fun m!8101442 () Bool)

(assert (=> b!7525804 m!8101442))

(assert (=> b!7525748 d!2309399))

(declare-fun b!7525836 () Bool)

(declare-fun res!3016240 () Bool)

(declare-fun e!4485853 () Bool)

(assert (=> b!7525836 (=> (not res!3016240) (not e!4485853))))

(declare-fun head!15445 (List!72694) C!39948)

(assert (=> b!7525836 (= res!3016240 (= (head!15445 bigger!57) (head!15445 input!6727)))))

(declare-fun b!7525835 () Bool)

(declare-fun e!4485851 () Bool)

(assert (=> b!7525835 (= e!4485851 e!4485853)))

(declare-fun res!3016239 () Bool)

(assert (=> b!7525835 (=> (not res!3016239) (not e!4485853))))

(assert (=> b!7525835 (= res!3016239 (not ((_ is Nil!72570) input!6727)))))

(declare-fun b!7525838 () Bool)

(declare-fun e!4485852 () Bool)

(assert (=> b!7525838 (= e!4485852 (>= (size!42307 input!6727) (size!42307 bigger!57)))))

(declare-fun d!2309401 () Bool)

(assert (=> d!2309401 e!4485852))

(declare-fun res!3016238 () Bool)

(assert (=> d!2309401 (=> res!3016238 e!4485852)))

(declare-fun lt!2638687 () Bool)

(assert (=> d!2309401 (= res!3016238 (not lt!2638687))))

(assert (=> d!2309401 (= lt!2638687 e!4485851)))

(declare-fun res!3016241 () Bool)

(assert (=> d!2309401 (=> res!3016241 e!4485851)))

(assert (=> d!2309401 (= res!3016241 ((_ is Nil!72570) bigger!57))))

(assert (=> d!2309401 (= (isPrefix!6017 bigger!57 input!6727) lt!2638687)))

(declare-fun b!7525837 () Bool)

(declare-fun tail!15005 (List!72694) List!72694)

(assert (=> b!7525837 (= e!4485853 (isPrefix!6017 (tail!15005 bigger!57) (tail!15005 input!6727)))))

(assert (= (and d!2309401 (not res!3016241)) b!7525835))

(assert (= (and b!7525835 res!3016239) b!7525836))

(assert (= (and b!7525836 res!3016240) b!7525837))

(assert (= (and d!2309401 (not res!3016238)) b!7525838))

(declare-fun m!8101456 () Bool)

(assert (=> b!7525836 m!8101456))

(declare-fun m!8101458 () Bool)

(assert (=> b!7525836 m!8101458))

(assert (=> b!7525838 m!8101412))

(assert (=> b!7525838 m!8101422))

(declare-fun m!8101460 () Bool)

(assert (=> b!7525837 m!8101460))

(declare-fun m!8101462 () Bool)

(assert (=> b!7525837 m!8101462))

(assert (=> b!7525837 m!8101460))

(assert (=> b!7525837 m!8101462))

(declare-fun m!8101464 () Bool)

(assert (=> b!7525837 m!8101464))

(assert (=> b!7525746 d!2309401))

(declare-fun d!2309407 () Bool)

(declare-fun e!4485865 () Bool)

(assert (=> d!2309407 e!4485865))

(declare-fun res!3016252 () Bool)

(assert (=> d!2309407 (=> (not res!3016252) (not e!4485865))))

(declare-fun lt!2638690 () List!72694)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15345 (List!72694) (InoxSet C!39948))

(assert (=> d!2309407 (= res!3016252 (= (content!15345 lt!2638690) ((_ map or) (content!15345 Nil!72570) (content!15345 input!6727))))))

(declare-fun e!4485866 () List!72694)

(assert (=> d!2309407 (= lt!2638690 e!4485866)))

(declare-fun c!1390253 () Bool)

(assert (=> d!2309407 (= c!1390253 ((_ is Nil!72570) Nil!72570))))

(assert (=> d!2309407 (= (++!17362 Nil!72570 input!6727) lt!2638690)))

(declare-fun b!7525858 () Bool)

(declare-fun res!3016251 () Bool)

(assert (=> b!7525858 (=> (not res!3016251) (not e!4485865))))

(assert (=> b!7525858 (= res!3016251 (= (size!42307 lt!2638690) (+ (size!42307 Nil!72570) (size!42307 input!6727))))))

(declare-fun b!7525856 () Bool)

(assert (=> b!7525856 (= e!4485866 input!6727)))

(declare-fun b!7525859 () Bool)

(assert (=> b!7525859 (= e!4485865 (or (not (= input!6727 Nil!72570)) (= lt!2638690 Nil!72570)))))

(declare-fun b!7525857 () Bool)

(assert (=> b!7525857 (= e!4485866 (Cons!72570 (h!79018 Nil!72570) (++!17362 (t!387401 Nil!72570) input!6727)))))

(assert (= (and d!2309407 c!1390253) b!7525856))

(assert (= (and d!2309407 (not c!1390253)) b!7525857))

(assert (= (and d!2309407 res!3016252) b!7525858))

(assert (= (and b!7525858 res!3016251) b!7525859))

(declare-fun m!8101472 () Bool)

(assert (=> d!2309407 m!8101472))

(declare-fun m!8101474 () Bool)

(assert (=> d!2309407 m!8101474))

(declare-fun m!8101476 () Bool)

(assert (=> d!2309407 m!8101476))

(declare-fun m!8101478 () Bool)

(assert (=> b!7525858 m!8101478))

(assert (=> b!7525858 m!8101414))

(assert (=> b!7525858 m!8101412))

(declare-fun m!8101480 () Bool)

(assert (=> b!7525857 m!8101480))

(assert (=> b!7525740 d!2309407))

(declare-fun d!2309411 () Bool)

(declare-fun lt!2638691 () Int)

(assert (=> d!2309411 (>= lt!2638691 0)))

(declare-fun e!4485867 () Int)

(assert (=> d!2309411 (= lt!2638691 e!4485867)))

(declare-fun c!1390254 () Bool)

(assert (=> d!2309411 (= c!1390254 ((_ is Nil!72570) input!6727))))

(assert (=> d!2309411 (= (size!42307 input!6727) lt!2638691)))

(declare-fun b!7525860 () Bool)

(assert (=> b!7525860 (= e!4485867 0)))

(declare-fun b!7525861 () Bool)

(assert (=> b!7525861 (= e!4485867 (+ 1 (size!42307 (t!387401 input!6727))))))

(assert (= (and d!2309411 c!1390254) b!7525860))

(assert (= (and d!2309411 (not c!1390254)) b!7525861))

(declare-fun m!8101482 () Bool)

(assert (=> b!7525861 m!8101482))

(assert (=> b!7525740 d!2309411))

(declare-fun d!2309413 () Bool)

(declare-fun lt!2638694 () Int)

(assert (=> d!2309413 (>= lt!2638694 0)))

(declare-fun e!4485870 () Int)

(assert (=> d!2309413 (= lt!2638694 e!4485870)))

(declare-fun c!1390257 () Bool)

(assert (=> d!2309413 (= c!1390257 ((_ is Nil!72570) Nil!72570))))

(assert (=> d!2309413 (= (size!42307 Nil!72570) lt!2638694)))

(declare-fun b!7525866 () Bool)

(assert (=> b!7525866 (= e!4485870 0)))

(declare-fun b!7525867 () Bool)

(assert (=> b!7525867 (= e!4485870 (+ 1 (size!42307 (t!387401 Nil!72570))))))

(assert (= (and d!2309413 c!1390257) b!7525866))

(assert (= (and d!2309413 (not c!1390257)) b!7525867))

(declare-fun m!8101484 () Bool)

(assert (=> b!7525867 m!8101484))

(assert (=> b!7525740 d!2309413))

(declare-fun b!7525869 () Bool)

(declare-fun res!3016257 () Bool)

(declare-fun e!4485875 () Bool)

(assert (=> b!7525869 (=> (not res!3016257) (not e!4485875))))

(assert (=> b!7525869 (= res!3016257 (= (head!15445 returnP!57) (head!15445 input!6727)))))

(declare-fun b!7525868 () Bool)

(declare-fun e!4485873 () Bool)

(assert (=> b!7525868 (= e!4485873 e!4485875)))

(declare-fun res!3016256 () Bool)

(assert (=> b!7525868 (=> (not res!3016256) (not e!4485875))))

(assert (=> b!7525868 (= res!3016256 (not ((_ is Nil!72570) input!6727)))))

(declare-fun b!7525871 () Bool)

(declare-fun e!4485874 () Bool)

(assert (=> b!7525871 (= e!4485874 (>= (size!42307 input!6727) (size!42307 returnP!57)))))

(declare-fun d!2309415 () Bool)

(assert (=> d!2309415 e!4485874))

(declare-fun res!3016254 () Bool)

(assert (=> d!2309415 (=> res!3016254 e!4485874)))

(declare-fun lt!2638695 () Bool)

(assert (=> d!2309415 (= res!3016254 (not lt!2638695))))

(assert (=> d!2309415 (= lt!2638695 e!4485873)))

(declare-fun res!3016258 () Bool)

(assert (=> d!2309415 (=> res!3016258 e!4485873)))

(assert (=> d!2309415 (= res!3016258 ((_ is Nil!72570) returnP!57))))

(assert (=> d!2309415 (= (isPrefix!6017 returnP!57 input!6727) lt!2638695)))

(declare-fun b!7525870 () Bool)

(assert (=> b!7525870 (= e!4485875 (isPrefix!6017 (tail!15005 returnP!57) (tail!15005 input!6727)))))

(assert (= (and d!2309415 (not res!3016258)) b!7525868))

(assert (= (and b!7525868 res!3016256) b!7525869))

(assert (= (and b!7525869 res!3016257) b!7525870))

(assert (= (and d!2309415 (not res!3016254)) b!7525871))

(declare-fun m!8101486 () Bool)

(assert (=> b!7525869 m!8101486))

(assert (=> b!7525869 m!8101458))

(assert (=> b!7525871 m!8101412))

(assert (=> b!7525871 m!8101424))

(declare-fun m!8101488 () Bool)

(assert (=> b!7525870 m!8101488))

(assert (=> b!7525870 m!8101462))

(assert (=> b!7525870 m!8101488))

(assert (=> b!7525870 m!8101462))

(declare-fun m!8101490 () Bool)

(assert (=> b!7525870 m!8101490))

(assert (=> b!7525739 d!2309415))

(declare-fun b!7525880 () Bool)

(declare-fun e!4485878 () Bool)

(declare-fun tp!2187084 () Bool)

(assert (=> b!7525880 (= e!4485878 (and tp_is_empty!49977 tp!2187084))))

(assert (=> b!7525744 (= tp!2187077 e!4485878)))

(assert (= (and b!7525744 ((_ is Cons!72570) (t!387401 returnP!57))) b!7525880))

(declare-fun b!7525897 () Bool)

(declare-fun e!4485883 () Bool)

(declare-fun tp!2187096 () Bool)

(assert (=> b!7525897 (= e!4485883 tp!2187096)))

(declare-fun b!7525895 () Bool)

(assert (=> b!7525895 (= e!4485883 tp_is_empty!49977)))

(declare-fun b!7525896 () Bool)

(declare-fun tp!2187095 () Bool)

(declare-fun tp!2187099 () Bool)

(assert (=> b!7525896 (= e!4485883 (and tp!2187095 tp!2187099))))

(assert (=> b!7525743 (= tp!2187076 e!4485883)))

(declare-fun b!7525898 () Bool)

(declare-fun tp!2187098 () Bool)

(declare-fun tp!2187097 () Bool)

(assert (=> b!7525898 (= e!4485883 (and tp!2187098 tp!2187097))))

(assert (= (and b!7525743 ((_ is ElementMatch!19811) (regOne!40134 baseR!93))) b!7525895))

(assert (= (and b!7525743 ((_ is Concat!28656) (regOne!40134 baseR!93))) b!7525896))

(assert (= (and b!7525743 ((_ is Star!19811) (regOne!40134 baseR!93))) b!7525897))

(assert (= (and b!7525743 ((_ is Union!19811) (regOne!40134 baseR!93))) b!7525898))

(declare-fun b!7525903 () Bool)

(declare-fun e!4485885 () Bool)

(declare-fun tp!2187101 () Bool)

(assert (=> b!7525903 (= e!4485885 tp!2187101)))

(declare-fun b!7525901 () Bool)

(assert (=> b!7525901 (= e!4485885 tp_is_empty!49977)))

(declare-fun b!7525902 () Bool)

(declare-fun tp!2187100 () Bool)

(declare-fun tp!2187104 () Bool)

(assert (=> b!7525902 (= e!4485885 (and tp!2187100 tp!2187104))))

(assert (=> b!7525743 (= tp!2187078 e!4485885)))

(declare-fun b!7525904 () Bool)

(declare-fun tp!2187103 () Bool)

(declare-fun tp!2187102 () Bool)

(assert (=> b!7525904 (= e!4485885 (and tp!2187103 tp!2187102))))

(assert (= (and b!7525743 ((_ is ElementMatch!19811) (regTwo!40134 baseR!93))) b!7525901))

(assert (= (and b!7525743 ((_ is Concat!28656) (regTwo!40134 baseR!93))) b!7525902))

(assert (= (and b!7525743 ((_ is Star!19811) (regTwo!40134 baseR!93))) b!7525903))

(assert (= (and b!7525743 ((_ is Union!19811) (regTwo!40134 baseR!93))) b!7525904))

(declare-fun b!7525907 () Bool)

(declare-fun e!4485886 () Bool)

(declare-fun tp!2187106 () Bool)

(assert (=> b!7525907 (= e!4485886 tp!2187106)))

(declare-fun b!7525905 () Bool)

(assert (=> b!7525905 (= e!4485886 tp_is_empty!49977)))

(declare-fun b!7525906 () Bool)

(declare-fun tp!2187105 () Bool)

(declare-fun tp!2187109 () Bool)

(assert (=> b!7525906 (= e!4485886 (and tp!2187105 tp!2187109))))

(assert (=> b!7525747 (= tp!2187081 e!4485886)))

(declare-fun b!7525908 () Bool)

(declare-fun tp!2187108 () Bool)

(declare-fun tp!2187107 () Bool)

(assert (=> b!7525908 (= e!4485886 (and tp!2187108 tp!2187107))))

(assert (= (and b!7525747 ((_ is ElementMatch!19811) (reg!20140 baseR!93))) b!7525905))

(assert (= (and b!7525747 ((_ is Concat!28656) (reg!20140 baseR!93))) b!7525906))

(assert (= (and b!7525747 ((_ is Star!19811) (reg!20140 baseR!93))) b!7525907))

(assert (= (and b!7525747 ((_ is Union!19811) (reg!20140 baseR!93))) b!7525908))

(declare-fun b!7525911 () Bool)

(declare-fun e!4485888 () Bool)

(declare-fun tp!2187110 () Bool)

(assert (=> b!7525911 (= e!4485888 (and tp_is_empty!49977 tp!2187110))))

(assert (=> b!7525742 (= tp!2187074 e!4485888)))

(assert (= (and b!7525742 ((_ is Cons!72570) (t!387401 bigger!57))) b!7525911))

(declare-fun b!7525918 () Bool)

(declare-fun e!4485891 () Bool)

(declare-fun tp!2187112 () Bool)

(assert (=> b!7525918 (= e!4485891 tp!2187112)))

(declare-fun b!7525916 () Bool)

(assert (=> b!7525916 (= e!4485891 tp_is_empty!49977)))

(declare-fun b!7525917 () Bool)

(declare-fun tp!2187111 () Bool)

(declare-fun tp!2187115 () Bool)

(assert (=> b!7525917 (= e!4485891 (and tp!2187111 tp!2187115))))

(assert (=> b!7525741 (= tp!2187075 e!4485891)))

(declare-fun b!7525921 () Bool)

(declare-fun tp!2187114 () Bool)

(declare-fun tp!2187113 () Bool)

(assert (=> b!7525921 (= e!4485891 (and tp!2187114 tp!2187113))))

(assert (= (and b!7525741 ((_ is ElementMatch!19811) (regOne!40135 baseR!93))) b!7525916))

(assert (= (and b!7525741 ((_ is Concat!28656) (regOne!40135 baseR!93))) b!7525917))

(assert (= (and b!7525741 ((_ is Star!19811) (regOne!40135 baseR!93))) b!7525918))

(assert (= (and b!7525741 ((_ is Union!19811) (regOne!40135 baseR!93))) b!7525921))

(declare-fun b!7525926 () Bool)

(declare-fun e!4485892 () Bool)

(declare-fun tp!2187123 () Bool)

(assert (=> b!7525926 (= e!4485892 tp!2187123)))

(declare-fun b!7525924 () Bool)

(assert (=> b!7525924 (= e!4485892 tp_is_empty!49977)))

(declare-fun b!7525925 () Bool)

(declare-fun tp!2187122 () Bool)

(declare-fun tp!2187126 () Bool)

(assert (=> b!7525925 (= e!4485892 (and tp!2187122 tp!2187126))))

(assert (=> b!7525741 (= tp!2187080 e!4485892)))

(declare-fun b!7525927 () Bool)

(declare-fun tp!2187125 () Bool)

(declare-fun tp!2187124 () Bool)

(assert (=> b!7525927 (= e!4485892 (and tp!2187125 tp!2187124))))

(assert (= (and b!7525741 ((_ is ElementMatch!19811) (regTwo!40135 baseR!93))) b!7525924))

(assert (= (and b!7525741 ((_ is Concat!28656) (regTwo!40135 baseR!93))) b!7525925))

(assert (= (and b!7525741 ((_ is Star!19811) (regTwo!40135 baseR!93))) b!7525926))

(assert (= (and b!7525741 ((_ is Union!19811) (regTwo!40135 baseR!93))) b!7525927))

(declare-fun b!7525930 () Bool)

(declare-fun e!4485893 () Bool)

(declare-fun tp!2187131 () Bool)

(assert (=> b!7525930 (= e!4485893 (and tp_is_empty!49977 tp!2187131))))

(assert (=> b!7525745 (= tp!2187079 e!4485893)))

(assert (= (and b!7525745 ((_ is Cons!72570) (t!387401 input!6727))) b!7525930))

(check-sat (not b!7525857) (not b!7525838) (not b!7525869) (not b!7525867) (not b!7525902) (not b!7525911) (not b!7525918) (not d!2309407) (not b!7525930) (not b!7525925) (not b!7525903) (not b!7525802) (not bm!690425) (not b!7525896) (not b!7525776) (not b!7525870) (not b!7525904) (not b!7525861) (not b!7525906) (not bm!690426) (not b!7525908) (not b!7525804) (not b!7525871) (not b!7525917) (not b!7525898) (not b!7525858) (not b!7525836) (not b!7525837) (not b!7525907) tp_is_empty!49977 (not b!7525880) (not b!7525927) (not b!7525926) (not b!7525897) (not b!7525921))
(check-sat)
