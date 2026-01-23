; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!536638 () Bool)

(assert start!536638)

(declare-fun e!3175738 () Bool)

(declare-fun b!5092318 () Bool)

(declare-datatypes ((T!105650 0))(
  ( (T!105651 (val!23728 Int)) )
))
(declare-datatypes ((List!58653 0))(
  ( (Nil!58529) (Cons!58529 (h!64977 T!105650) (t!371582 List!58653)) )
))
(declare-datatypes ((IArray!31349 0))(
  ( (IArray!31350 (innerList!15732 List!58653)) )
))
(declare-datatypes ((Conc!15644 0))(
  ( (Node!15644 (left!42938 Conc!15644) (right!43268 Conc!15644) (csize!31518 Int) (cheight!15855 Int)) (Leaf!25971 (xs!19026 IArray!31349) (csize!31519 Int)) (Empty!15644) )
))
(declare-fun t!3643 () Conc!15644)

(declare-fun lt!2092642 () Int)

(declare-fun i!607 () Int)

(declare-fun apply!14278 (Conc!15644 Int) T!105650)

(declare-fun apply!14279 (List!58653 Int) T!105650)

(declare-fun list!19116 (Conc!15644) List!58653)

(assert (=> b!5092318 (= e!3175738 (not (= (apply!14278 (right!43268 t!3643) (- i!607 lt!2092642)) (apply!14279 (list!19116 t!3643) i!607))))))

(declare-fun b!5092319 () Bool)

(declare-fun e!3175736 () Bool)

(declare-fun tp!1419504 () Bool)

(assert (=> b!5092319 (= e!3175736 tp!1419504)))

(declare-fun res!2167202 () Bool)

(declare-fun e!3175737 () Bool)

(assert (=> start!536638 (=> (not res!2167202) (not e!3175737))))

(assert (=> start!536638 (= res!2167202 (<= 0 i!607))))

(assert (=> start!536638 e!3175737))

(assert (=> start!536638 true))

(declare-fun e!3175735 () Bool)

(declare-fun inv!77982 (Conc!15644) Bool)

(assert (=> start!536638 (and (inv!77982 t!3643) e!3175735)))

(declare-fun b!5092320 () Bool)

(assert (=> b!5092320 (= e!3175737 e!3175738)))

(declare-fun res!2167200 () Bool)

(assert (=> b!5092320 (=> (not res!2167200) (not e!3175738))))

(assert (=> b!5092320 (= res!2167200 (>= i!607 lt!2092642))))

(declare-fun size!39231 (Conc!15644) Int)

(assert (=> b!5092320 (= lt!2092642 (size!39231 (left!42938 t!3643)))))

(declare-fun lt!2092641 () Bool)

(declare-fun appendIndex!425 (List!58653 List!58653 Int) Bool)

(assert (=> b!5092320 (= lt!2092641 (appendIndex!425 (list!19116 (left!42938 t!3643)) (list!19116 (right!43268 t!3643)) i!607))))

(declare-fun b!5092321 () Bool)

(declare-fun res!2167199 () Bool)

(assert (=> b!5092321 (=> (not res!2167199) (not e!3175737))))

(get-info :version)

(assert (=> b!5092321 (= res!2167199 (and (not ((_ is Leaf!25971) t!3643)) ((_ is Node!15644) t!3643)))))

(declare-fun tp!1419505 () Bool)

(declare-fun b!5092322 () Bool)

(declare-fun tp!1419503 () Bool)

(assert (=> b!5092322 (= e!3175735 (and (inv!77982 (left!42938 t!3643)) tp!1419503 (inv!77982 (right!43268 t!3643)) tp!1419505))))

(declare-fun b!5092323 () Bool)

(declare-fun inv!77983 (IArray!31349) Bool)

(assert (=> b!5092323 (= e!3175735 (and (inv!77983 (xs!19026 t!3643)) e!3175736))))

(declare-fun b!5092324 () Bool)

(declare-fun res!2167201 () Bool)

(assert (=> b!5092324 (=> (not res!2167201) (not e!3175737))))

(assert (=> b!5092324 (= res!2167201 (< i!607 (size!39231 t!3643)))))

(assert (= (and start!536638 res!2167202) b!5092324))

(assert (= (and b!5092324 res!2167201) b!5092321))

(assert (= (and b!5092321 res!2167199) b!5092320))

(assert (= (and b!5092320 res!2167200) b!5092318))

(assert (= (and start!536638 ((_ is Node!15644) t!3643)) b!5092322))

(assert (= b!5092323 b!5092319))

(assert (= (and start!536638 ((_ is Leaf!25971) t!3643)) b!5092323))

(declare-fun m!6150638 () Bool)

(assert (=> b!5092318 m!6150638))

(declare-fun m!6150640 () Bool)

(assert (=> b!5092318 m!6150640))

(assert (=> b!5092318 m!6150640))

(declare-fun m!6150642 () Bool)

(assert (=> b!5092318 m!6150642))

(declare-fun m!6150644 () Bool)

(assert (=> b!5092322 m!6150644))

(declare-fun m!6150646 () Bool)

(assert (=> b!5092322 m!6150646))

(declare-fun m!6150648 () Bool)

(assert (=> b!5092324 m!6150648))

(declare-fun m!6150650 () Bool)

(assert (=> start!536638 m!6150650))

(declare-fun m!6150652 () Bool)

(assert (=> b!5092320 m!6150652))

(declare-fun m!6150654 () Bool)

(assert (=> b!5092320 m!6150654))

(declare-fun m!6150656 () Bool)

(assert (=> b!5092320 m!6150656))

(assert (=> b!5092320 m!6150654))

(assert (=> b!5092320 m!6150656))

(declare-fun m!6150658 () Bool)

(assert (=> b!5092320 m!6150658))

(declare-fun m!6150660 () Bool)

(assert (=> b!5092323 m!6150660))

(check-sat (not start!536638) (not b!5092320) (not b!5092319) (not b!5092324) (not b!5092323) (not b!5092322) (not b!5092318))
(check-sat)
(get-model)

(declare-fun d!1648409 () Bool)

(declare-fun c!875240 () Bool)

(assert (=> d!1648409 (= c!875240 ((_ is Node!15644) (left!42938 t!3643)))))

(declare-fun e!3175753 () Bool)

(assert (=> d!1648409 (= (inv!77982 (left!42938 t!3643)) e!3175753)))

(declare-fun b!5092346 () Bool)

(declare-fun inv!77986 (Conc!15644) Bool)

(assert (=> b!5092346 (= e!3175753 (inv!77986 (left!42938 t!3643)))))

(declare-fun b!5092347 () Bool)

(declare-fun e!3175754 () Bool)

(assert (=> b!5092347 (= e!3175753 e!3175754)))

(declare-fun res!2167210 () Bool)

(assert (=> b!5092347 (= res!2167210 (not ((_ is Leaf!25971) (left!42938 t!3643))))))

(assert (=> b!5092347 (=> res!2167210 e!3175754)))

(declare-fun b!5092348 () Bool)

(declare-fun inv!77987 (Conc!15644) Bool)

(assert (=> b!5092348 (= e!3175754 (inv!77987 (left!42938 t!3643)))))

(assert (= (and d!1648409 c!875240) b!5092346))

(assert (= (and d!1648409 (not c!875240)) b!5092347))

(assert (= (and b!5092347 (not res!2167210)) b!5092348))

(declare-fun m!6150674 () Bool)

(assert (=> b!5092346 m!6150674))

(declare-fun m!6150676 () Bool)

(assert (=> b!5092348 m!6150676))

(assert (=> b!5092322 d!1648409))

(declare-fun d!1648417 () Bool)

(declare-fun c!875241 () Bool)

(assert (=> d!1648417 (= c!875241 ((_ is Node!15644) (right!43268 t!3643)))))

(declare-fun e!3175755 () Bool)

(assert (=> d!1648417 (= (inv!77982 (right!43268 t!3643)) e!3175755)))

(declare-fun b!5092349 () Bool)

(assert (=> b!5092349 (= e!3175755 (inv!77986 (right!43268 t!3643)))))

(declare-fun b!5092350 () Bool)

(declare-fun e!3175756 () Bool)

(assert (=> b!5092350 (= e!3175755 e!3175756)))

(declare-fun res!2167211 () Bool)

(assert (=> b!5092350 (= res!2167211 (not ((_ is Leaf!25971) (right!43268 t!3643))))))

(assert (=> b!5092350 (=> res!2167211 e!3175756)))

(declare-fun b!5092351 () Bool)

(assert (=> b!5092351 (= e!3175756 (inv!77987 (right!43268 t!3643)))))

(assert (= (and d!1648417 c!875241) b!5092349))

(assert (= (and d!1648417 (not c!875241)) b!5092350))

(assert (= (and b!5092350 (not res!2167211)) b!5092351))

(declare-fun m!6150678 () Bool)

(assert (=> b!5092349 m!6150678))

(declare-fun m!6150680 () Bool)

(assert (=> b!5092351 m!6150680))

(assert (=> b!5092322 d!1648417))

(declare-fun d!1648419 () Bool)

(declare-fun c!875242 () Bool)

(assert (=> d!1648419 (= c!875242 ((_ is Node!15644) t!3643))))

(declare-fun e!3175757 () Bool)

(assert (=> d!1648419 (= (inv!77982 t!3643) e!3175757)))

(declare-fun b!5092352 () Bool)

(assert (=> b!5092352 (= e!3175757 (inv!77986 t!3643))))

(declare-fun b!5092353 () Bool)

(declare-fun e!3175758 () Bool)

(assert (=> b!5092353 (= e!3175757 e!3175758)))

(declare-fun res!2167212 () Bool)

(assert (=> b!5092353 (= res!2167212 (not ((_ is Leaf!25971) t!3643)))))

(assert (=> b!5092353 (=> res!2167212 e!3175758)))

(declare-fun b!5092354 () Bool)

(assert (=> b!5092354 (= e!3175758 (inv!77987 t!3643))))

(assert (= (and d!1648419 c!875242) b!5092352))

(assert (= (and d!1648419 (not c!875242)) b!5092353))

(assert (= (and b!5092353 (not res!2167212)) b!5092354))

(declare-fun m!6150682 () Bool)

(assert (=> b!5092352 m!6150682))

(declare-fun m!6150684 () Bool)

(assert (=> b!5092354 m!6150684))

(assert (=> start!536638 d!1648419))

(declare-fun b!5092390 () Bool)

(declare-fun e!3175781 () Int)

(assert (=> b!5092390 (= e!3175781 (- (- i!607 lt!2092642) (size!39231 (left!42938 (right!43268 t!3643)))))))

(declare-fun lt!2092654 () T!105650)

(declare-fun d!1648421 () Bool)

(assert (=> d!1648421 (= lt!2092654 (apply!14279 (list!19116 (right!43268 t!3643)) (- i!607 lt!2092642)))))

(declare-fun e!3175782 () T!105650)

(assert (=> d!1648421 (= lt!2092654 e!3175782)))

(declare-fun c!875259 () Bool)

(assert (=> d!1648421 (= c!875259 ((_ is Leaf!25971) (right!43268 t!3643)))))

(declare-fun e!3175780 () Bool)

(assert (=> d!1648421 e!3175780))

(declare-fun res!2167218 () Bool)

(assert (=> d!1648421 (=> (not res!2167218) (not e!3175780))))

(assert (=> d!1648421 (= res!2167218 (<= 0 (- i!607 lt!2092642)))))

(assert (=> d!1648421 (= (apply!14278 (right!43268 t!3643) (- i!607 lt!2092642)) lt!2092654)))

(declare-fun b!5092391 () Bool)

(assert (=> b!5092391 (= e!3175780 (< (- i!607 lt!2092642) (size!39231 (right!43268 t!3643))))))

(declare-fun b!5092392 () Bool)

(assert (=> b!5092392 (= e!3175781 (- i!607 lt!2092642))))

(declare-fun b!5092393 () Bool)

(declare-fun e!3175779 () T!105650)

(declare-fun call!354719 () T!105650)

(assert (=> b!5092393 (= e!3175779 call!354719)))

(declare-fun bm!354714 () Bool)

(declare-fun c!875258 () Bool)

(declare-fun c!875260 () Bool)

(assert (=> bm!354714 (= c!875258 c!875260)))

(assert (=> bm!354714 (= call!354719 (apply!14278 (ite c!875260 (left!42938 (right!43268 t!3643)) (right!43268 (right!43268 t!3643))) e!3175781))))

(declare-fun b!5092394 () Bool)

(declare-fun apply!14281 (IArray!31349 Int) T!105650)

(assert (=> b!5092394 (= e!3175782 (apply!14281 (xs!19026 (right!43268 t!3643)) (- i!607 lt!2092642)))))

(declare-fun b!5092395 () Bool)

(assert (=> b!5092395 (= e!3175779 call!354719)))

(declare-fun b!5092396 () Bool)

(assert (=> b!5092396 (= e!3175782 e!3175779)))

(declare-fun lt!2092653 () Bool)

(assert (=> b!5092396 (= lt!2092653 (appendIndex!425 (list!19116 (left!42938 (right!43268 t!3643))) (list!19116 (right!43268 (right!43268 t!3643))) (- i!607 lt!2092642)))))

(assert (=> b!5092396 (= c!875260 (< (- i!607 lt!2092642) (size!39231 (left!42938 (right!43268 t!3643)))))))

(assert (= (and d!1648421 res!2167218) b!5092391))

(assert (= (and d!1648421 c!875259) b!5092394))

(assert (= (and d!1648421 (not c!875259)) b!5092396))

(assert (= (and b!5092396 c!875260) b!5092393))

(assert (= (and b!5092396 (not c!875260)) b!5092395))

(assert (= (or b!5092393 b!5092395) bm!354714))

(assert (= (and bm!354714 c!875258) b!5092392))

(assert (= (and bm!354714 (not c!875258)) b!5092390))

(declare-fun m!6150702 () Bool)

(assert (=> b!5092394 m!6150702))

(declare-fun m!6150704 () Bool)

(assert (=> b!5092391 m!6150704))

(declare-fun m!6150706 () Bool)

(assert (=> b!5092390 m!6150706))

(assert (=> d!1648421 m!6150656))

(assert (=> d!1648421 m!6150656))

(declare-fun m!6150708 () Bool)

(assert (=> d!1648421 m!6150708))

(declare-fun m!6150710 () Bool)

(assert (=> b!5092396 m!6150710))

(declare-fun m!6150712 () Bool)

(assert (=> b!5092396 m!6150712))

(assert (=> b!5092396 m!6150710))

(assert (=> b!5092396 m!6150712))

(declare-fun m!6150714 () Bool)

(assert (=> b!5092396 m!6150714))

(assert (=> b!5092396 m!6150706))

(declare-fun m!6150716 () Bool)

(assert (=> bm!354714 m!6150716))

(assert (=> b!5092318 d!1648421))

(declare-fun d!1648425 () Bool)

(declare-fun lt!2092660 () T!105650)

(declare-fun contains!19596 (List!58653 T!105650) Bool)

(assert (=> d!1648425 (contains!19596 (list!19116 t!3643) lt!2092660)))

(declare-fun e!3175793 () T!105650)

(assert (=> d!1648425 (= lt!2092660 e!3175793)))

(declare-fun c!875266 () Bool)

(assert (=> d!1648425 (= c!875266 (= i!607 0))))

(declare-fun e!3175794 () Bool)

(assert (=> d!1648425 e!3175794))

(declare-fun res!2167224 () Bool)

(assert (=> d!1648425 (=> (not res!2167224) (not e!3175794))))

(assert (=> d!1648425 (= res!2167224 (<= 0 i!607))))

(assert (=> d!1648425 (= (apply!14279 (list!19116 t!3643) i!607) lt!2092660)))

(declare-fun b!5092412 () Bool)

(declare-fun size!39233 (List!58653) Int)

(assert (=> b!5092412 (= e!3175794 (< i!607 (size!39233 (list!19116 t!3643))))))

(declare-fun b!5092413 () Bool)

(declare-fun head!10807 (List!58653) T!105650)

(assert (=> b!5092413 (= e!3175793 (head!10807 (list!19116 t!3643)))))

(declare-fun b!5092414 () Bool)

(declare-fun tail!9962 (List!58653) List!58653)

(assert (=> b!5092414 (= e!3175793 (apply!14279 (tail!9962 (list!19116 t!3643)) (- i!607 1)))))

(assert (= (and d!1648425 res!2167224) b!5092412))

(assert (= (and d!1648425 c!875266) b!5092413))

(assert (= (and d!1648425 (not c!875266)) b!5092414))

(assert (=> d!1648425 m!6150640))

(declare-fun m!6150728 () Bool)

(assert (=> d!1648425 m!6150728))

(assert (=> b!5092412 m!6150640))

(declare-fun m!6150730 () Bool)

(assert (=> b!5092412 m!6150730))

(assert (=> b!5092413 m!6150640))

(declare-fun m!6150732 () Bool)

(assert (=> b!5092413 m!6150732))

(assert (=> b!5092414 m!6150640))

(declare-fun m!6150734 () Bool)

(assert (=> b!5092414 m!6150734))

(assert (=> b!5092414 m!6150734))

(declare-fun m!6150736 () Bool)

(assert (=> b!5092414 m!6150736))

(assert (=> b!5092318 d!1648425))

(declare-fun b!5092435 () Bool)

(declare-fun e!3175805 () List!58653)

(assert (=> b!5092435 (= e!3175805 Nil!58529)))

(declare-fun d!1648429 () Bool)

(declare-fun c!875277 () Bool)

(assert (=> d!1648429 (= c!875277 ((_ is Empty!15644) t!3643))))

(assert (=> d!1648429 (= (list!19116 t!3643) e!3175805)))

(declare-fun b!5092438 () Bool)

(declare-fun e!3175806 () List!58653)

(declare-fun ++!12844 (List!58653 List!58653) List!58653)

(assert (=> b!5092438 (= e!3175806 (++!12844 (list!19116 (left!42938 t!3643)) (list!19116 (right!43268 t!3643))))))

(declare-fun b!5092436 () Bool)

(assert (=> b!5092436 (= e!3175805 e!3175806)))

(declare-fun c!875278 () Bool)

(assert (=> b!5092436 (= c!875278 ((_ is Leaf!25971) t!3643))))

(declare-fun b!5092437 () Bool)

(declare-fun list!19118 (IArray!31349) List!58653)

(assert (=> b!5092437 (= e!3175806 (list!19118 (xs!19026 t!3643)))))

(assert (= (and d!1648429 c!875277) b!5092435))

(assert (= (and d!1648429 (not c!875277)) b!5092436))

(assert (= (and b!5092436 c!875278) b!5092437))

(assert (= (and b!5092436 (not c!875278)) b!5092438))

(assert (=> b!5092438 m!6150654))

(assert (=> b!5092438 m!6150656))

(assert (=> b!5092438 m!6150654))

(assert (=> b!5092438 m!6150656))

(declare-fun m!6150742 () Bool)

(assert (=> b!5092438 m!6150742))

(declare-fun m!6150744 () Bool)

(assert (=> b!5092437 m!6150744))

(assert (=> b!5092318 d!1648429))

(declare-fun d!1648433 () Bool)

(assert (=> d!1648433 (= (inv!77983 (xs!19026 t!3643)) (<= (size!39233 (innerList!15732 (xs!19026 t!3643))) 2147483647))))

(declare-fun bs!1191202 () Bool)

(assert (= bs!1191202 d!1648433))

(declare-fun m!6150746 () Bool)

(assert (=> bs!1191202 m!6150746))

(assert (=> b!5092323 d!1648433))

(declare-fun d!1648435 () Bool)

(declare-fun lt!2092666 () Int)

(assert (=> d!1648435 (= lt!2092666 (size!39233 (list!19116 t!3643)))))

(assert (=> d!1648435 (= lt!2092666 (ite ((_ is Empty!15644) t!3643) 0 (ite ((_ is Leaf!25971) t!3643) (csize!31519 t!3643) (csize!31518 t!3643))))))

(assert (=> d!1648435 (= (size!39231 t!3643) lt!2092666)))

(declare-fun bs!1191204 () Bool)

(assert (= bs!1191204 d!1648435))

(assert (=> bs!1191204 m!6150640))

(assert (=> bs!1191204 m!6150640))

(assert (=> bs!1191204 m!6150730))

(assert (=> b!5092324 d!1648435))

(declare-fun d!1648439 () Bool)

(declare-fun lt!2092667 () Int)

(assert (=> d!1648439 (= lt!2092667 (size!39233 (list!19116 (left!42938 t!3643))))))

(assert (=> d!1648439 (= lt!2092667 (ite ((_ is Empty!15644) (left!42938 t!3643)) 0 (ite ((_ is Leaf!25971) (left!42938 t!3643)) (csize!31519 (left!42938 t!3643)) (csize!31518 (left!42938 t!3643)))))))

(assert (=> d!1648439 (= (size!39231 (left!42938 t!3643)) lt!2092667)))

(declare-fun bs!1191205 () Bool)

(assert (= bs!1191205 d!1648439))

(assert (=> bs!1191205 m!6150654))

(assert (=> bs!1191205 m!6150654))

(declare-fun m!6150750 () Bool)

(assert (=> bs!1191205 m!6150750))

(assert (=> b!5092320 d!1648439))

(declare-fun d!1648441 () Bool)

(declare-fun e!3175832 () T!105650)

(assert (=> d!1648441 (= (apply!14279 (++!12844 (list!19116 (left!42938 t!3643)) (list!19116 (right!43268 t!3643))) i!607) e!3175832)))

(declare-fun c!875294 () Bool)

(assert (=> d!1648441 (= c!875294 (< i!607 (size!39233 (list!19116 (left!42938 t!3643)))))))

(declare-fun lt!2092674 () Bool)

(declare-fun e!3175831 () Bool)

(assert (=> d!1648441 (= lt!2092674 e!3175831)))

(declare-fun res!2167236 () Bool)

(assert (=> d!1648441 (=> res!2167236 e!3175831)))

(assert (=> d!1648441 (= res!2167236 (or ((_ is Nil!58529) (list!19116 (left!42938 t!3643))) (= i!607 0)))))

(declare-fun e!3175834 () Bool)

(assert (=> d!1648441 e!3175834))

(declare-fun res!2167235 () Bool)

(assert (=> d!1648441 (=> (not res!2167235) (not e!3175834))))

(assert (=> d!1648441 (= res!2167235 (<= 0 i!607))))

(assert (=> d!1648441 (= (appendIndex!425 (list!19116 (left!42938 t!3643)) (list!19116 (right!43268 t!3643)) i!607) true)))

(declare-fun b!5092477 () Bool)

(declare-fun e!3175833 () Int)

(assert (=> b!5092477 (= e!3175833 (- i!607 (size!39233 (list!19116 (left!42938 t!3643)))))))

(declare-fun b!5092478 () Bool)

(declare-fun call!354725 () T!105650)

(assert (=> b!5092478 (= e!3175832 call!354725)))

(declare-fun b!5092479 () Bool)

(assert (=> b!5092479 (= e!3175832 call!354725)))

(declare-fun b!5092480 () Bool)

(assert (=> b!5092480 (= e!3175833 i!607)))

(declare-fun b!5092481 () Bool)

(assert (=> b!5092481 (= e!3175831 (appendIndex!425 (t!371582 (list!19116 (left!42938 t!3643))) (list!19116 (right!43268 t!3643)) (- i!607 1)))))

(declare-fun b!5092482 () Bool)

(assert (=> b!5092482 (= e!3175834 (< i!607 (+ (size!39233 (list!19116 (left!42938 t!3643))) (size!39233 (list!19116 (right!43268 t!3643))))))))

(declare-fun bm!354720 () Bool)

(assert (=> bm!354720 (= call!354725 (apply!14279 (ite c!875294 (list!19116 (left!42938 t!3643)) (list!19116 (right!43268 t!3643))) e!3175833))))

(declare-fun c!875293 () Bool)

(assert (=> bm!354720 (= c!875293 c!875294)))

(assert (= (and d!1648441 res!2167235) b!5092482))

(assert (= (and d!1648441 (not res!2167236)) b!5092481))

(assert (= (and d!1648441 c!875294) b!5092479))

(assert (= (and d!1648441 (not c!875294)) b!5092478))

(assert (= (or b!5092479 b!5092478) bm!354720))

(assert (= (and bm!354720 c!875293) b!5092480))

(assert (= (and bm!354720 (not c!875293)) b!5092477))

(assert (=> d!1648441 m!6150654))

(assert (=> d!1648441 m!6150656))

(assert (=> d!1648441 m!6150742))

(assert (=> d!1648441 m!6150742))

(declare-fun m!6150774 () Bool)

(assert (=> d!1648441 m!6150774))

(assert (=> d!1648441 m!6150654))

(assert (=> d!1648441 m!6150750))

(assert (=> b!5092482 m!6150654))

(assert (=> b!5092482 m!6150750))

(assert (=> b!5092482 m!6150656))

(declare-fun m!6150776 () Bool)

(assert (=> b!5092482 m!6150776))

(assert (=> b!5092481 m!6150656))

(declare-fun m!6150778 () Bool)

(assert (=> b!5092481 m!6150778))

(assert (=> b!5092477 m!6150654))

(assert (=> b!5092477 m!6150750))

(declare-fun m!6150780 () Bool)

(assert (=> bm!354720 m!6150780))

(assert (=> b!5092320 d!1648441))

(declare-fun b!5092496 () Bool)

(declare-fun e!3175842 () List!58653)

(assert (=> b!5092496 (= e!3175842 Nil!58529)))

(declare-fun d!1648451 () Bool)

(declare-fun c!875295 () Bool)

(assert (=> d!1648451 (= c!875295 ((_ is Empty!15644) (left!42938 t!3643)))))

(assert (=> d!1648451 (= (list!19116 (left!42938 t!3643)) e!3175842)))

(declare-fun b!5092499 () Bool)

(declare-fun e!3175843 () List!58653)

(assert (=> b!5092499 (= e!3175843 (++!12844 (list!19116 (left!42938 (left!42938 t!3643))) (list!19116 (right!43268 (left!42938 t!3643)))))))

(declare-fun b!5092497 () Bool)

(assert (=> b!5092497 (= e!3175842 e!3175843)))

(declare-fun c!875296 () Bool)

(assert (=> b!5092497 (= c!875296 ((_ is Leaf!25971) (left!42938 t!3643)))))

(declare-fun b!5092498 () Bool)

(assert (=> b!5092498 (= e!3175843 (list!19118 (xs!19026 (left!42938 t!3643))))))

(assert (= (and d!1648451 c!875295) b!5092496))

(assert (= (and d!1648451 (not c!875295)) b!5092497))

(assert (= (and b!5092497 c!875296) b!5092498))

(assert (= (and b!5092497 (not c!875296)) b!5092499))

(declare-fun m!6150782 () Bool)

(assert (=> b!5092499 m!6150782))

(declare-fun m!6150784 () Bool)

(assert (=> b!5092499 m!6150784))

(assert (=> b!5092499 m!6150782))

(assert (=> b!5092499 m!6150784))

(declare-fun m!6150786 () Bool)

(assert (=> b!5092499 m!6150786))

(declare-fun m!6150788 () Bool)

(assert (=> b!5092498 m!6150788))

(assert (=> b!5092320 d!1648451))

(declare-fun b!5092500 () Bool)

(declare-fun e!3175844 () List!58653)

(assert (=> b!5092500 (= e!3175844 Nil!58529)))

(declare-fun d!1648453 () Bool)

(declare-fun c!875297 () Bool)

(assert (=> d!1648453 (= c!875297 ((_ is Empty!15644) (right!43268 t!3643)))))

(assert (=> d!1648453 (= (list!19116 (right!43268 t!3643)) e!3175844)))

(declare-fun b!5092503 () Bool)

(declare-fun e!3175845 () List!58653)

(assert (=> b!5092503 (= e!3175845 (++!12844 (list!19116 (left!42938 (right!43268 t!3643))) (list!19116 (right!43268 (right!43268 t!3643)))))))

(declare-fun b!5092501 () Bool)

(assert (=> b!5092501 (= e!3175844 e!3175845)))

(declare-fun c!875298 () Bool)

(assert (=> b!5092501 (= c!875298 ((_ is Leaf!25971) (right!43268 t!3643)))))

(declare-fun b!5092502 () Bool)

(assert (=> b!5092502 (= e!3175845 (list!19118 (xs!19026 (right!43268 t!3643))))))

(assert (= (and d!1648453 c!875297) b!5092500))

(assert (= (and d!1648453 (not c!875297)) b!5092501))

(assert (= (and b!5092501 c!875298) b!5092502))

(assert (= (and b!5092501 (not c!875298)) b!5092503))

(assert (=> b!5092503 m!6150710))

(assert (=> b!5092503 m!6150712))

(assert (=> b!5092503 m!6150710))

(assert (=> b!5092503 m!6150712))

(declare-fun m!6150790 () Bool)

(assert (=> b!5092503 m!6150790))

(declare-fun m!6150792 () Bool)

(assert (=> b!5092502 m!6150792))

(assert (=> b!5092320 d!1648453))

(declare-fun b!5092518 () Bool)

(declare-fun e!3175854 () Bool)

(declare-fun tp!1419527 () Bool)

(declare-fun tp!1419529 () Bool)

(assert (=> b!5092518 (= e!3175854 (and (inv!77982 (left!42938 (left!42938 t!3643))) tp!1419527 (inv!77982 (right!43268 (left!42938 t!3643))) tp!1419529))))

(declare-fun b!5092520 () Bool)

(declare-fun e!3175855 () Bool)

(declare-fun tp!1419528 () Bool)

(assert (=> b!5092520 (= e!3175855 tp!1419528)))

(declare-fun b!5092519 () Bool)

(assert (=> b!5092519 (= e!3175854 (and (inv!77983 (xs!19026 (left!42938 t!3643))) e!3175855))))

(assert (=> b!5092322 (= tp!1419503 (and (inv!77982 (left!42938 t!3643)) e!3175854))))

(assert (= (and b!5092322 ((_ is Node!15644) (left!42938 t!3643))) b!5092518))

(assert (= b!5092519 b!5092520))

(assert (= (and b!5092322 ((_ is Leaf!25971) (left!42938 t!3643))) b!5092519))

(declare-fun m!6150806 () Bool)

(assert (=> b!5092518 m!6150806))

(declare-fun m!6150808 () Bool)

(assert (=> b!5092518 m!6150808))

(declare-fun m!6150810 () Bool)

(assert (=> b!5092519 m!6150810))

(assert (=> b!5092322 m!6150644))

(declare-fun tp!1419532 () Bool)

(declare-fun tp!1419530 () Bool)

(declare-fun b!5092521 () Bool)

(declare-fun e!3175856 () Bool)

(assert (=> b!5092521 (= e!3175856 (and (inv!77982 (left!42938 (right!43268 t!3643))) tp!1419530 (inv!77982 (right!43268 (right!43268 t!3643))) tp!1419532))))

(declare-fun b!5092523 () Bool)

(declare-fun e!3175857 () Bool)

(declare-fun tp!1419531 () Bool)

(assert (=> b!5092523 (= e!3175857 tp!1419531)))

(declare-fun b!5092522 () Bool)

(assert (=> b!5092522 (= e!3175856 (and (inv!77983 (xs!19026 (right!43268 t!3643))) e!3175857))))

(assert (=> b!5092322 (= tp!1419505 (and (inv!77982 (right!43268 t!3643)) e!3175856))))

(assert (= (and b!5092322 ((_ is Node!15644) (right!43268 t!3643))) b!5092521))

(assert (= b!5092522 b!5092523))

(assert (= (and b!5092322 ((_ is Leaf!25971) (right!43268 t!3643))) b!5092522))

(declare-fun m!6150812 () Bool)

(assert (=> b!5092521 m!6150812))

(declare-fun m!6150814 () Bool)

(assert (=> b!5092521 m!6150814))

(declare-fun m!6150816 () Bool)

(assert (=> b!5092522 m!6150816))

(assert (=> b!5092322 m!6150646))

(declare-fun b!5092528 () Bool)

(declare-fun e!3175860 () Bool)

(declare-fun tp_is_empty!37167 () Bool)

(declare-fun tp!1419535 () Bool)

(assert (=> b!5092528 (= e!3175860 (and tp_is_empty!37167 tp!1419535))))

(assert (=> b!5092319 (= tp!1419504 e!3175860)))

(assert (= (and b!5092319 ((_ is Cons!58529) (innerList!15732 (xs!19026 t!3643)))) b!5092528))

(check-sat (not bm!354720) (not b!5092352) (not b!5092521) (not d!1648425) (not b!5092520) (not b!5092503) (not b!5092348) (not b!5092519) (not b!5092322) (not d!1648421) (not b!5092499) (not b!5092481) (not b!5092498) (not bm!354714) (not d!1648439) (not b!5092351) (not b!5092394) (not b!5092390) (not d!1648441) (not b!5092522) (not b!5092477) (not b!5092414) (not b!5092502) (not b!5092438) tp_is_empty!37167 (not b!5092391) (not b!5092437) (not b!5092346) (not b!5092482) (not d!1648433) (not b!5092412) (not b!5092528) (not b!5092354) (not b!5092413) (not b!5092349) (not d!1648435) (not b!5092518) (not b!5092523) (not b!5092396))
(check-sat)
