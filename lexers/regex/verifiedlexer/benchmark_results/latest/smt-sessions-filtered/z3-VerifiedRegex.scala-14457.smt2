; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!752888 () Bool)

(assert start!752888)

(declare-fun res!3164470 () Bool)

(declare-fun e!4714004 () Bool)

(assert (=> start!752888 (=> (not res!3164470) (not e!4714004))))

(declare-datatypes ((C!43528 0))(
  ( (C!43529 (val!32312 Int)) )
))
(declare-datatypes ((Regex!21595 0))(
  ( (ElementMatch!21595 (c!1469242 C!43528)) (Concat!30594 (regOne!43702 Regex!21595) (regTwo!43702 Regex!21595)) (EmptyExpr!21595) (Star!21595 (reg!21924 Regex!21595)) (EmptyLang!21595) (Union!21595 (regOne!43703 Regex!21595) (regTwo!43703 Regex!21595)) )
))
(declare-fun r!13189 () Regex!21595)

(declare-fun validRegex!11899 (Regex!21595) Bool)

(assert (=> start!752888 (= res!3164470 (validRegex!11899 r!13189))))

(assert (=> start!752888 e!4714004))

(declare-fun e!4714003 () Bool)

(assert (=> start!752888 e!4714003))

(declare-fun e!4714005 () Bool)

(assert (=> start!752888 e!4714005))

(declare-fun b!8002323 () Bool)

(declare-fun tp!2393817 () Bool)

(declare-fun tp!2393820 () Bool)

(assert (=> b!8002323 (= e!4714003 (and tp!2393817 tp!2393820))))

(declare-fun b!8002324 () Bool)

(declare-fun tp_is_empty!53733 () Bool)

(declare-fun tp!2393821 () Bool)

(assert (=> b!8002324 (= e!4714005 (and tp_is_empty!53733 tp!2393821))))

(declare-fun b!8002325 () Bool)

(declare-fun tp!2393822 () Bool)

(declare-fun tp!2393818 () Bool)

(assert (=> b!8002325 (= e!4714003 (and tp!2393822 tp!2393818))))

(declare-fun b!8002326 () Bool)

(declare-datatypes ((List!74824 0))(
  ( (Nil!74700) (Cons!74700 (h!81148 C!43528) (t!390567 List!74824)) )
))
(declare-fun input!5970 () List!74824)

(declare-fun ListPrimitiveSize!483 (List!74824) Int)

(assert (=> b!8002326 (= e!4714004 (< (ListPrimitiveSize!483 input!5970) 0))))

(declare-fun b!8002327 () Bool)

(assert (=> b!8002327 (= e!4714003 tp_is_empty!53733)))

(declare-fun b!8002328 () Bool)

(declare-fun tp!2393819 () Bool)

(assert (=> b!8002328 (= e!4714003 tp!2393819)))

(assert (= (and start!752888 res!3164470) b!8002326))

(get-info :version)

(assert (= (and start!752888 ((_ is ElementMatch!21595) r!13189)) b!8002327))

(assert (= (and start!752888 ((_ is Concat!30594) r!13189)) b!8002323))

(assert (= (and start!752888 ((_ is Star!21595) r!13189)) b!8002328))

(assert (= (and start!752888 ((_ is Union!21595) r!13189)) b!8002325))

(assert (= (and start!752888 ((_ is Cons!74700) input!5970)) b!8002324))

(declare-fun m!8369126 () Bool)

(assert (=> start!752888 m!8369126))

(declare-fun m!8369128 () Bool)

(assert (=> b!8002326 m!8369128))

(check-sat (not b!8002328) tp_is_empty!53733 (not b!8002323) (not b!8002326) (not b!8002325) (not b!8002324) (not start!752888))
(check-sat)
(get-model)

(declare-fun b!8002372 () Bool)

(declare-fun e!4714037 () Bool)

(declare-fun e!4714039 () Bool)

(assert (=> b!8002372 (= e!4714037 e!4714039)))

(declare-fun c!1469255 () Bool)

(assert (=> b!8002372 (= c!1469255 ((_ is Union!21595) r!13189))))

(declare-fun b!8002373 () Bool)

(declare-fun res!3164491 () Bool)

(declare-fun e!4714038 () Bool)

(assert (=> b!8002373 (=> res!3164491 e!4714038)))

(assert (=> b!8002373 (= res!3164491 (not ((_ is Concat!30594) r!13189)))))

(assert (=> b!8002373 (= e!4714039 e!4714038)))

(declare-fun b!8002374 () Bool)

(declare-fun e!4714042 () Bool)

(assert (=> b!8002374 (= e!4714042 e!4714037)))

(declare-fun c!1469254 () Bool)

(assert (=> b!8002374 (= c!1469254 ((_ is Star!21595) r!13189))))

(declare-fun call!743527 () Bool)

(declare-fun bm!743522 () Bool)

(assert (=> bm!743522 (= call!743527 (validRegex!11899 (ite c!1469254 (reg!21924 r!13189) (ite c!1469255 (regOne!43703 r!13189) (regOne!43702 r!13189)))))))

(declare-fun b!8002375 () Bool)

(declare-fun e!4714041 () Bool)

(declare-fun call!743528 () Bool)

(assert (=> b!8002375 (= e!4714041 call!743528)))

(declare-fun b!8002376 () Bool)

(declare-fun res!3164495 () Bool)

(declare-fun e!4714043 () Bool)

(assert (=> b!8002376 (=> (not res!3164495) (not e!4714043))))

(declare-fun call!743529 () Bool)

(assert (=> b!8002376 (= res!3164495 call!743529)))

(assert (=> b!8002376 (= e!4714039 e!4714043)))

(declare-fun bm!743523 () Bool)

(assert (=> bm!743523 (= call!743529 call!743527)))

(declare-fun b!8002377 () Bool)

(assert (=> b!8002377 (= e!4714043 call!743528)))

(declare-fun b!8002378 () Bool)

(declare-fun e!4714040 () Bool)

(assert (=> b!8002378 (= e!4714040 call!743527)))

(declare-fun b!8002371 () Bool)

(assert (=> b!8002371 (= e!4714038 e!4714041)))

(declare-fun res!3164494 () Bool)

(assert (=> b!8002371 (=> (not res!3164494) (not e!4714041))))

(assert (=> b!8002371 (= res!3164494 call!743529)))

(declare-fun d!2386916 () Bool)

(declare-fun res!3164492 () Bool)

(assert (=> d!2386916 (=> res!3164492 e!4714042)))

(assert (=> d!2386916 (= res!3164492 ((_ is ElementMatch!21595) r!13189))))

(assert (=> d!2386916 (= (validRegex!11899 r!13189) e!4714042)))

(declare-fun bm!743524 () Bool)

(assert (=> bm!743524 (= call!743528 (validRegex!11899 (ite c!1469255 (regTwo!43703 r!13189) (regTwo!43702 r!13189))))))

(declare-fun b!8002379 () Bool)

(assert (=> b!8002379 (= e!4714037 e!4714040)))

(declare-fun res!3164493 () Bool)

(declare-fun nullable!9675 (Regex!21595) Bool)

(assert (=> b!8002379 (= res!3164493 (not (nullable!9675 (reg!21924 r!13189))))))

(assert (=> b!8002379 (=> (not res!3164493) (not e!4714040))))

(assert (= (and d!2386916 (not res!3164492)) b!8002374))

(assert (= (and b!8002374 c!1469254) b!8002379))

(assert (= (and b!8002374 (not c!1469254)) b!8002372))

(assert (= (and b!8002379 res!3164493) b!8002378))

(assert (= (and b!8002372 c!1469255) b!8002376))

(assert (= (and b!8002372 (not c!1469255)) b!8002373))

(assert (= (and b!8002376 res!3164495) b!8002377))

(assert (= (and b!8002373 (not res!3164491)) b!8002371))

(assert (= (and b!8002371 res!3164494) b!8002375))

(assert (= (or b!8002376 b!8002371) bm!743523))

(assert (= (or b!8002377 b!8002375) bm!743524))

(assert (= (or b!8002378 bm!743523) bm!743522))

(declare-fun m!8369132 () Bool)

(assert (=> bm!743522 m!8369132))

(declare-fun m!8369134 () Bool)

(assert (=> bm!743524 m!8369134))

(declare-fun m!8369136 () Bool)

(assert (=> b!8002379 m!8369136))

(assert (=> start!752888 d!2386916))

(declare-fun d!2386920 () Bool)

(declare-fun lt!2713795 () Int)

(assert (=> d!2386920 (>= lt!2713795 0)))

(declare-fun e!4714053 () Int)

(assert (=> d!2386920 (= lt!2713795 e!4714053)))

(declare-fun c!1469260 () Bool)

(assert (=> d!2386920 (= c!1469260 ((_ is Nil!74700) input!5970))))

(assert (=> d!2386920 (= (ListPrimitiveSize!483 input!5970) lt!2713795)))

(declare-fun b!8002393 () Bool)

(assert (=> b!8002393 (= e!4714053 0)))

(declare-fun b!8002394 () Bool)

(assert (=> b!8002394 (= e!4714053 (+ 1 (ListPrimitiveSize!483 (t!390567 input!5970))))))

(assert (= (and d!2386920 c!1469260) b!8002393))

(assert (= (and d!2386920 (not c!1469260)) b!8002394))

(declare-fun m!8369138 () Bool)

(assert (=> b!8002394 m!8369138))

(assert (=> b!8002326 d!2386920))

(declare-fun e!4714061 () Bool)

(assert (=> b!8002325 (= tp!2393822 e!4714061)))

(declare-fun b!8002422 () Bool)

(declare-fun tp!2393847 () Bool)

(assert (=> b!8002422 (= e!4714061 tp!2393847)))

(declare-fun b!8002421 () Bool)

(declare-fun tp!2393850 () Bool)

(declare-fun tp!2393848 () Bool)

(assert (=> b!8002421 (= e!4714061 (and tp!2393850 tp!2393848))))

(declare-fun b!8002420 () Bool)

(assert (=> b!8002420 (= e!4714061 tp_is_empty!53733)))

(declare-fun b!8002423 () Bool)

(declare-fun tp!2393849 () Bool)

(declare-fun tp!2393846 () Bool)

(assert (=> b!8002423 (= e!4714061 (and tp!2393849 tp!2393846))))

(assert (= (and b!8002325 ((_ is ElementMatch!21595) (regOne!43703 r!13189))) b!8002420))

(assert (= (and b!8002325 ((_ is Concat!30594) (regOne!43703 r!13189))) b!8002421))

(assert (= (and b!8002325 ((_ is Star!21595) (regOne!43703 r!13189))) b!8002422))

(assert (= (and b!8002325 ((_ is Union!21595) (regOne!43703 r!13189))) b!8002423))

(declare-fun e!4714062 () Bool)

(assert (=> b!8002325 (= tp!2393818 e!4714062)))

(declare-fun b!8002426 () Bool)

(declare-fun tp!2393852 () Bool)

(assert (=> b!8002426 (= e!4714062 tp!2393852)))

(declare-fun b!8002425 () Bool)

(declare-fun tp!2393855 () Bool)

(declare-fun tp!2393853 () Bool)

(assert (=> b!8002425 (= e!4714062 (and tp!2393855 tp!2393853))))

(declare-fun b!8002424 () Bool)

(assert (=> b!8002424 (= e!4714062 tp_is_empty!53733)))

(declare-fun b!8002427 () Bool)

(declare-fun tp!2393854 () Bool)

(declare-fun tp!2393851 () Bool)

(assert (=> b!8002427 (= e!4714062 (and tp!2393854 tp!2393851))))

(assert (= (and b!8002325 ((_ is ElementMatch!21595) (regTwo!43703 r!13189))) b!8002424))

(assert (= (and b!8002325 ((_ is Concat!30594) (regTwo!43703 r!13189))) b!8002425))

(assert (= (and b!8002325 ((_ is Star!21595) (regTwo!43703 r!13189))) b!8002426))

(assert (= (and b!8002325 ((_ is Union!21595) (regTwo!43703 r!13189))) b!8002427))

(declare-fun e!4714063 () Bool)

(assert (=> b!8002323 (= tp!2393817 e!4714063)))

(declare-fun b!8002430 () Bool)

(declare-fun tp!2393857 () Bool)

(assert (=> b!8002430 (= e!4714063 tp!2393857)))

(declare-fun b!8002429 () Bool)

(declare-fun tp!2393860 () Bool)

(declare-fun tp!2393858 () Bool)

(assert (=> b!8002429 (= e!4714063 (and tp!2393860 tp!2393858))))

(declare-fun b!8002428 () Bool)

(assert (=> b!8002428 (= e!4714063 tp_is_empty!53733)))

(declare-fun b!8002431 () Bool)

(declare-fun tp!2393859 () Bool)

(declare-fun tp!2393856 () Bool)

(assert (=> b!8002431 (= e!4714063 (and tp!2393859 tp!2393856))))

(assert (= (and b!8002323 ((_ is ElementMatch!21595) (regOne!43702 r!13189))) b!8002428))

(assert (= (and b!8002323 ((_ is Concat!30594) (regOne!43702 r!13189))) b!8002429))

(assert (= (and b!8002323 ((_ is Star!21595) (regOne!43702 r!13189))) b!8002430))

(assert (= (and b!8002323 ((_ is Union!21595) (regOne!43702 r!13189))) b!8002431))

(declare-fun e!4714065 () Bool)

(assert (=> b!8002323 (= tp!2393820 e!4714065)))

(declare-fun b!8002438 () Bool)

(declare-fun tp!2393864 () Bool)

(assert (=> b!8002438 (= e!4714065 tp!2393864)))

(declare-fun b!8002436 () Bool)

(declare-fun tp!2393870 () Bool)

(declare-fun tp!2393867 () Bool)

(assert (=> b!8002436 (= e!4714065 (and tp!2393870 tp!2393867))))

(declare-fun b!8002434 () Bool)

(assert (=> b!8002434 (= e!4714065 tp_is_empty!53733)))

(declare-fun b!8002439 () Bool)

(declare-fun tp!2393869 () Bool)

(declare-fun tp!2393862 () Bool)

(assert (=> b!8002439 (= e!4714065 (and tp!2393869 tp!2393862))))

(assert (= (and b!8002323 ((_ is ElementMatch!21595) (regTwo!43702 r!13189))) b!8002434))

(assert (= (and b!8002323 ((_ is Concat!30594) (regTwo!43702 r!13189))) b!8002436))

(assert (= (and b!8002323 ((_ is Star!21595) (regTwo!43702 r!13189))) b!8002438))

(assert (= (and b!8002323 ((_ is Union!21595) (regTwo!43702 r!13189))) b!8002439))

(declare-fun b!8002452 () Bool)

(declare-fun e!4714070 () Bool)

(declare-fun tp!2393883 () Bool)

(assert (=> b!8002452 (= e!4714070 (and tp_is_empty!53733 tp!2393883))))

(assert (=> b!8002324 (= tp!2393821 e!4714070)))

(assert (= (and b!8002324 ((_ is Cons!74700) (t!390567 input!5970))) b!8002452))

(declare-fun e!4714072 () Bool)

(assert (=> b!8002328 (= tp!2393819 e!4714072)))

(declare-fun b!8002459 () Bool)

(declare-fun tp!2393890 () Bool)

(assert (=> b!8002459 (= e!4714072 tp!2393890)))

(declare-fun b!8002458 () Bool)

(declare-fun tp!2393893 () Bool)

(declare-fun tp!2393891 () Bool)

(assert (=> b!8002458 (= e!4714072 (and tp!2393893 tp!2393891))))

(declare-fun b!8002457 () Bool)

(assert (=> b!8002457 (= e!4714072 tp_is_empty!53733)))

(declare-fun b!8002460 () Bool)

(declare-fun tp!2393892 () Bool)

(declare-fun tp!2393889 () Bool)

(assert (=> b!8002460 (= e!4714072 (and tp!2393892 tp!2393889))))

(assert (= (and b!8002328 ((_ is ElementMatch!21595) (reg!21924 r!13189))) b!8002457))

(assert (= (and b!8002328 ((_ is Concat!30594) (reg!21924 r!13189))) b!8002458))

(assert (= (and b!8002328 ((_ is Star!21595) (reg!21924 r!13189))) b!8002459))

(assert (= (and b!8002328 ((_ is Union!21595) (reg!21924 r!13189))) b!8002460))

(check-sat (not b!8002425) tp_is_empty!53733 (not b!8002452) (not b!8002379) (not b!8002429) (not b!8002439) (not b!8002394) (not b!8002436) (not b!8002421) (not b!8002423) (not b!8002431) (not b!8002460) (not b!8002458) (not b!8002459) (not b!8002430) (not b!8002427) (not bm!743524) (not bm!743522) (not b!8002426) (not b!8002422) (not b!8002438))
(check-sat)
