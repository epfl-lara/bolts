; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742774 () Bool)

(assert start!742774)

(declare-fun b!7842650 () Bool)

(declare-fun res!3119381 () Bool)

(declare-fun e!4636962 () Bool)

(assert (=> b!7842650 (=> (not res!3119381) (not e!4636962))))

(declare-datatypes ((B!4013 0))(
  ( (B!4014 (val!31648 Int)) )
))
(declare-datatypes ((List!73882 0))(
  ( (Nil!73758) (Cons!73758 (h!80206 B!4013) (t!388617 List!73882)) )
))
(declare-fun s2!461 () List!73882)

(get-info :version)

(assert (=> b!7842650 (= res!3119381 ((_ is Cons!73758) s2!461))))

(declare-fun b!7842651 () Bool)

(declare-fun res!3119376 () Bool)

(assert (=> b!7842651 (=> (not res!3119376) (not e!4636962))))

(declare-fun l!3495 () List!73882)

(declare-fun isPrefix!6359 (List!73882 List!73882) Bool)

(assert (=> b!7842651 (= res!3119376 (isPrefix!6359 s2!461 l!3495))))

(declare-fun b!7842652 () Bool)

(declare-fun e!4636961 () Bool)

(declare-fun tp_is_empty!52445 () Bool)

(declare-fun tp!2321187 () Bool)

(assert (=> b!7842652 (= e!4636961 (and tp_is_empty!52445 tp!2321187))))

(declare-fun b!7842653 () Bool)

(declare-fun e!4636960 () Bool)

(declare-fun tp!2321185 () Bool)

(assert (=> b!7842653 (= e!4636960 (and tp_is_empty!52445 tp!2321185))))

(declare-fun b!7842654 () Bool)

(declare-fun res!3119379 () Bool)

(assert (=> b!7842654 (=> (not res!3119379) (not e!4636962))))

(declare-fun s1!502 () List!73882)

(declare-fun size!42807 (List!73882) Int)

(assert (=> b!7842654 (= res!3119379 (<= (size!42807 s2!461) (size!42807 s1!502)))))

(declare-fun b!7842655 () Bool)

(declare-fun e!4636963 () Bool)

(declare-fun tp!2321186 () Bool)

(assert (=> b!7842655 (= e!4636963 (and tp_is_empty!52445 tp!2321186))))

(declare-fun b!7842656 () Bool)

(declare-fun res!3119382 () Bool)

(declare-fun e!4636959 () Bool)

(assert (=> b!7842656 (=> (not res!3119382) (not e!4636959))))

(declare-fun lt!2678790 () List!73882)

(assert (=> b!7842656 (= res!3119382 (<= (size!42807 (t!388617 s2!461)) (size!42807 lt!2678790)))))

(declare-fun b!7842657 () Bool)

(assert (=> b!7842657 (= e!4636962 e!4636959)))

(declare-fun res!3119377 () Bool)

(assert (=> b!7842657 (=> (not res!3119377) (not e!4636959))))

(declare-fun lt!2678792 () List!73882)

(assert (=> b!7842657 (= res!3119377 (isPrefix!6359 lt!2678790 lt!2678792))))

(declare-fun tail!15563 (List!73882) List!73882)

(assert (=> b!7842657 (= lt!2678792 (tail!15563 l!3495))))

(assert (=> b!7842657 (= lt!2678790 (tail!15563 s1!502))))

(declare-fun res!3119380 () Bool)

(assert (=> start!742774 (=> (not res!3119380) (not e!4636962))))

(assert (=> start!742774 (= res!3119380 (isPrefix!6359 s1!502 l!3495))))

(assert (=> start!742774 e!4636962))

(assert (=> start!742774 e!4636960))

(assert (=> start!742774 e!4636963))

(assert (=> start!742774 e!4636961))

(declare-fun b!7842658 () Bool)

(declare-fun res!3119378 () Bool)

(assert (=> b!7842658 (=> (not res!3119378) (not e!4636959))))

(assert (=> b!7842658 (= res!3119378 (isPrefix!6359 (t!388617 s2!461) lt!2678792))))

(declare-fun b!7842659 () Bool)

(assert (=> b!7842659 (= e!4636959 (not (isPrefix!6359 s2!461 s1!502)))))

(assert (=> b!7842659 (isPrefix!6359 (t!388617 s2!461) lt!2678790)))

(declare-datatypes ((Unit!168840 0))(
  ( (Unit!168841) )
))
(declare-fun lt!2678791 () Unit!168840)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!949 (List!73882 List!73882 List!73882) Unit!168840)

(assert (=> b!7842659 (= lt!2678791 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!949 lt!2678790 (t!388617 s2!461) lt!2678792))))

(assert (= (and start!742774 res!3119380) b!7842651))

(assert (= (and b!7842651 res!3119376) b!7842654))

(assert (= (and b!7842654 res!3119379) b!7842650))

(assert (= (and b!7842650 res!3119381) b!7842657))

(assert (= (and b!7842657 res!3119377) b!7842658))

(assert (= (and b!7842658 res!3119378) b!7842656))

(assert (= (and b!7842656 res!3119382) b!7842659))

(assert (= (and start!742774 ((_ is Cons!73758) s1!502)) b!7842653))

(assert (= (and start!742774 ((_ is Cons!73758) l!3495)) b!7842655))

(assert (= (and start!742774 ((_ is Cons!73758) s2!461)) b!7842652))

(declare-fun m!8254784 () Bool)

(assert (=> b!7842654 m!8254784))

(declare-fun m!8254786 () Bool)

(assert (=> b!7842654 m!8254786))

(declare-fun m!8254788 () Bool)

(assert (=> b!7842659 m!8254788))

(declare-fun m!8254790 () Bool)

(assert (=> b!7842659 m!8254790))

(declare-fun m!8254792 () Bool)

(assert (=> b!7842659 m!8254792))

(declare-fun m!8254794 () Bool)

(assert (=> b!7842656 m!8254794))

(declare-fun m!8254796 () Bool)

(assert (=> b!7842656 m!8254796))

(declare-fun m!8254798 () Bool)

(assert (=> b!7842657 m!8254798))

(declare-fun m!8254800 () Bool)

(assert (=> b!7842657 m!8254800))

(declare-fun m!8254802 () Bool)

(assert (=> b!7842657 m!8254802))

(declare-fun m!8254804 () Bool)

(assert (=> b!7842651 m!8254804))

(declare-fun m!8254806 () Bool)

(assert (=> b!7842658 m!8254806))

(declare-fun m!8254808 () Bool)

(assert (=> start!742774 m!8254808))

(check-sat (not b!7842659) (not b!7842658) (not b!7842654) (not start!742774) (not b!7842656) (not b!7842651) (not b!7842653) (not b!7842652) tp_is_empty!52445 (not b!7842657) (not b!7842655))
(check-sat)
(get-model)

(declare-fun b!7842678 () Bool)

(declare-fun e!4636975 () Bool)

(assert (=> b!7842678 (= e!4636975 (isPrefix!6359 (tail!15563 s2!461) (tail!15563 l!3495)))))

(declare-fun b!7842676 () Bool)

(declare-fun e!4636974 () Bool)

(assert (=> b!7842676 (= e!4636974 e!4636975)))

(declare-fun res!3119393 () Bool)

(assert (=> b!7842676 (=> (not res!3119393) (not e!4636975))))

(assert (=> b!7842676 (= res!3119393 (not ((_ is Nil!73758) l!3495)))))

(declare-fun b!7842677 () Bool)

(declare-fun res!3119394 () Bool)

(assert (=> b!7842677 (=> (not res!3119394) (not e!4636975))))

(declare-fun head!16019 (List!73882) B!4013)

(assert (=> b!7842677 (= res!3119394 (= (head!16019 s2!461) (head!16019 l!3495)))))

(declare-fun b!7842679 () Bool)

(declare-fun e!4636976 () Bool)

(assert (=> b!7842679 (= e!4636976 (>= (size!42807 l!3495) (size!42807 s2!461)))))

(declare-fun d!2352510 () Bool)

(assert (=> d!2352510 e!4636976))

(declare-fun res!3119392 () Bool)

(assert (=> d!2352510 (=> res!3119392 e!4636976)))

(declare-fun lt!2678799 () Bool)

(assert (=> d!2352510 (= res!3119392 (not lt!2678799))))

(assert (=> d!2352510 (= lt!2678799 e!4636974)))

(declare-fun res!3119391 () Bool)

(assert (=> d!2352510 (=> res!3119391 e!4636974)))

(assert (=> d!2352510 (= res!3119391 ((_ is Nil!73758) s2!461))))

(assert (=> d!2352510 (= (isPrefix!6359 s2!461 l!3495) lt!2678799)))

(assert (= (and d!2352510 (not res!3119391)) b!7842676))

(assert (= (and b!7842676 res!3119393) b!7842677))

(assert (= (and b!7842677 res!3119394) b!7842678))

(assert (= (and d!2352510 (not res!3119392)) b!7842679))

(declare-fun m!8254812 () Bool)

(assert (=> b!7842678 m!8254812))

(assert (=> b!7842678 m!8254800))

(assert (=> b!7842678 m!8254812))

(assert (=> b!7842678 m!8254800))

(declare-fun m!8254814 () Bool)

(assert (=> b!7842678 m!8254814))

(declare-fun m!8254816 () Bool)

(assert (=> b!7842677 m!8254816))

(declare-fun m!8254818 () Bool)

(assert (=> b!7842677 m!8254818))

(declare-fun m!8254820 () Bool)

(assert (=> b!7842679 m!8254820))

(assert (=> b!7842679 m!8254784))

(assert (=> b!7842651 d!2352510))

(declare-fun b!7842682 () Bool)

(declare-fun e!4636978 () Bool)

(assert (=> b!7842682 (= e!4636978 (isPrefix!6359 (tail!15563 lt!2678790) (tail!15563 lt!2678792)))))

(declare-fun b!7842680 () Bool)

(declare-fun e!4636977 () Bool)

(assert (=> b!7842680 (= e!4636977 e!4636978)))

(declare-fun res!3119397 () Bool)

(assert (=> b!7842680 (=> (not res!3119397) (not e!4636978))))

(assert (=> b!7842680 (= res!3119397 (not ((_ is Nil!73758) lt!2678792)))))

(declare-fun b!7842681 () Bool)

(declare-fun res!3119398 () Bool)

(assert (=> b!7842681 (=> (not res!3119398) (not e!4636978))))

(assert (=> b!7842681 (= res!3119398 (= (head!16019 lt!2678790) (head!16019 lt!2678792)))))

(declare-fun b!7842683 () Bool)

(declare-fun e!4636979 () Bool)

(assert (=> b!7842683 (= e!4636979 (>= (size!42807 lt!2678792) (size!42807 lt!2678790)))))

(declare-fun d!2352518 () Bool)

(assert (=> d!2352518 e!4636979))

(declare-fun res!3119396 () Bool)

(assert (=> d!2352518 (=> res!3119396 e!4636979)))

(declare-fun lt!2678800 () Bool)

(assert (=> d!2352518 (= res!3119396 (not lt!2678800))))

(assert (=> d!2352518 (= lt!2678800 e!4636977)))

(declare-fun res!3119395 () Bool)

(assert (=> d!2352518 (=> res!3119395 e!4636977)))

(assert (=> d!2352518 (= res!3119395 ((_ is Nil!73758) lt!2678790))))

(assert (=> d!2352518 (= (isPrefix!6359 lt!2678790 lt!2678792) lt!2678800)))

(assert (= (and d!2352518 (not res!3119395)) b!7842680))

(assert (= (and b!7842680 res!3119397) b!7842681))

(assert (= (and b!7842681 res!3119398) b!7842682))

(assert (= (and d!2352518 (not res!3119396)) b!7842683))

(declare-fun m!8254822 () Bool)

(assert (=> b!7842682 m!8254822))

(declare-fun m!8254824 () Bool)

(assert (=> b!7842682 m!8254824))

(assert (=> b!7842682 m!8254822))

(assert (=> b!7842682 m!8254824))

(declare-fun m!8254826 () Bool)

(assert (=> b!7842682 m!8254826))

(declare-fun m!8254828 () Bool)

(assert (=> b!7842681 m!8254828))

(declare-fun m!8254830 () Bool)

(assert (=> b!7842681 m!8254830))

(declare-fun m!8254832 () Bool)

(assert (=> b!7842683 m!8254832))

(assert (=> b!7842683 m!8254796))

(assert (=> b!7842657 d!2352518))

(declare-fun d!2352520 () Bool)

(assert (=> d!2352520 (= (tail!15563 l!3495) (t!388617 l!3495))))

(assert (=> b!7842657 d!2352520))

(declare-fun d!2352522 () Bool)

(assert (=> d!2352522 (= (tail!15563 s1!502) (t!388617 s1!502))))

(assert (=> b!7842657 d!2352522))

(declare-fun d!2352524 () Bool)

(declare-fun lt!2678808 () Int)

(assert (=> d!2352524 (>= lt!2678808 0)))

(declare-fun e!4636993 () Int)

(assert (=> d!2352524 (= lt!2678808 e!4636993)))

(declare-fun c!1441743 () Bool)

(assert (=> d!2352524 (= c!1441743 ((_ is Nil!73758) (t!388617 s2!461)))))

(assert (=> d!2352524 (= (size!42807 (t!388617 s2!461)) lt!2678808)))

(declare-fun b!7842704 () Bool)

(assert (=> b!7842704 (= e!4636993 0)))

(declare-fun b!7842705 () Bool)

(assert (=> b!7842705 (= e!4636993 (+ 1 (size!42807 (t!388617 (t!388617 s2!461)))))))

(assert (= (and d!2352524 c!1441743) b!7842704))

(assert (= (and d!2352524 (not c!1441743)) b!7842705))

(declare-fun m!8254848 () Bool)

(assert (=> b!7842705 m!8254848))

(assert (=> b!7842656 d!2352524))

(declare-fun d!2352532 () Bool)

(declare-fun lt!2678810 () Int)

(assert (=> d!2352532 (>= lt!2678810 0)))

(declare-fun e!4636997 () Int)

(assert (=> d!2352532 (= lt!2678810 e!4636997)))

(declare-fun c!1441744 () Bool)

(assert (=> d!2352532 (= c!1441744 ((_ is Nil!73758) lt!2678790))))

(assert (=> d!2352532 (= (size!42807 lt!2678790) lt!2678810)))

(declare-fun b!7842710 () Bool)

(assert (=> b!7842710 (= e!4636997 0)))

(declare-fun b!7842711 () Bool)

(assert (=> b!7842711 (= e!4636997 (+ 1 (size!42807 (t!388617 lt!2678790))))))

(assert (= (and d!2352532 c!1441744) b!7842710))

(assert (= (and d!2352532 (not c!1441744)) b!7842711))

(declare-fun m!8254850 () Bool)

(assert (=> b!7842711 m!8254850))

(assert (=> b!7842656 d!2352532))

(declare-fun b!7842714 () Bool)

(declare-fun e!4636999 () Bool)

(assert (=> b!7842714 (= e!4636999 (isPrefix!6359 (tail!15563 s2!461) (tail!15563 s1!502)))))

(declare-fun b!7842712 () Bool)

(declare-fun e!4636998 () Bool)

(assert (=> b!7842712 (= e!4636998 e!4636999)))

(declare-fun res!3119417 () Bool)

(assert (=> b!7842712 (=> (not res!3119417) (not e!4636999))))

(assert (=> b!7842712 (= res!3119417 (not ((_ is Nil!73758) s1!502)))))

(declare-fun b!7842713 () Bool)

(declare-fun res!3119418 () Bool)

(assert (=> b!7842713 (=> (not res!3119418) (not e!4636999))))

(assert (=> b!7842713 (= res!3119418 (= (head!16019 s2!461) (head!16019 s1!502)))))

(declare-fun b!7842715 () Bool)

(declare-fun e!4637000 () Bool)

(assert (=> b!7842715 (= e!4637000 (>= (size!42807 s1!502) (size!42807 s2!461)))))

(declare-fun d!2352534 () Bool)

(assert (=> d!2352534 e!4637000))

(declare-fun res!3119416 () Bool)

(assert (=> d!2352534 (=> res!3119416 e!4637000)))

(declare-fun lt!2678811 () Bool)

(assert (=> d!2352534 (= res!3119416 (not lt!2678811))))

(assert (=> d!2352534 (= lt!2678811 e!4636998)))

(declare-fun res!3119415 () Bool)

(assert (=> d!2352534 (=> res!3119415 e!4636998)))

(assert (=> d!2352534 (= res!3119415 ((_ is Nil!73758) s2!461))))

(assert (=> d!2352534 (= (isPrefix!6359 s2!461 s1!502) lt!2678811)))

(assert (= (and d!2352534 (not res!3119415)) b!7842712))

(assert (= (and b!7842712 res!3119417) b!7842713))

(assert (= (and b!7842713 res!3119418) b!7842714))

(assert (= (and d!2352534 (not res!3119416)) b!7842715))

(assert (=> b!7842714 m!8254812))

(assert (=> b!7842714 m!8254802))

(assert (=> b!7842714 m!8254812))

(assert (=> b!7842714 m!8254802))

(declare-fun m!8254864 () Bool)

(assert (=> b!7842714 m!8254864))

(assert (=> b!7842713 m!8254816))

(declare-fun m!8254866 () Bool)

(assert (=> b!7842713 m!8254866))

(assert (=> b!7842715 m!8254786))

(assert (=> b!7842715 m!8254784))

(assert (=> b!7842659 d!2352534))

(declare-fun b!7842718 () Bool)

(declare-fun e!4637002 () Bool)

(assert (=> b!7842718 (= e!4637002 (isPrefix!6359 (tail!15563 (t!388617 s2!461)) (tail!15563 lt!2678790)))))

(declare-fun b!7842716 () Bool)

(declare-fun e!4637001 () Bool)

(assert (=> b!7842716 (= e!4637001 e!4637002)))

(declare-fun res!3119421 () Bool)

(assert (=> b!7842716 (=> (not res!3119421) (not e!4637002))))

(assert (=> b!7842716 (= res!3119421 (not ((_ is Nil!73758) lt!2678790)))))

(declare-fun b!7842717 () Bool)

(declare-fun res!3119422 () Bool)

(assert (=> b!7842717 (=> (not res!3119422) (not e!4637002))))

(assert (=> b!7842717 (= res!3119422 (= (head!16019 (t!388617 s2!461)) (head!16019 lt!2678790)))))

(declare-fun b!7842719 () Bool)

(declare-fun e!4637003 () Bool)

(assert (=> b!7842719 (= e!4637003 (>= (size!42807 lt!2678790) (size!42807 (t!388617 s2!461))))))

(declare-fun d!2352538 () Bool)

(assert (=> d!2352538 e!4637003))

(declare-fun res!3119420 () Bool)

(assert (=> d!2352538 (=> res!3119420 e!4637003)))

(declare-fun lt!2678812 () Bool)

(assert (=> d!2352538 (= res!3119420 (not lt!2678812))))

(assert (=> d!2352538 (= lt!2678812 e!4637001)))

(declare-fun res!3119419 () Bool)

(assert (=> d!2352538 (=> res!3119419 e!4637001)))

(assert (=> d!2352538 (= res!3119419 ((_ is Nil!73758) (t!388617 s2!461)))))

(assert (=> d!2352538 (= (isPrefix!6359 (t!388617 s2!461) lt!2678790) lt!2678812)))

(assert (= (and d!2352538 (not res!3119419)) b!7842716))

(assert (= (and b!7842716 res!3119421) b!7842717))

(assert (= (and b!7842717 res!3119422) b!7842718))

(assert (= (and d!2352538 (not res!3119420)) b!7842719))

(declare-fun m!8254868 () Bool)

(assert (=> b!7842718 m!8254868))

(assert (=> b!7842718 m!8254822))

(assert (=> b!7842718 m!8254868))

(assert (=> b!7842718 m!8254822))

(declare-fun m!8254870 () Bool)

(assert (=> b!7842718 m!8254870))

(declare-fun m!8254872 () Bool)

(assert (=> b!7842717 m!8254872))

(assert (=> b!7842717 m!8254828))

(assert (=> b!7842719 m!8254796))

(assert (=> b!7842719 m!8254794))

(assert (=> b!7842659 d!2352538))

(declare-fun d!2352544 () Bool)

(assert (=> d!2352544 (isPrefix!6359 (t!388617 s2!461) lt!2678790)))

(declare-fun lt!2678818 () Unit!168840)

(declare-fun choose!59622 (List!73882 List!73882 List!73882) Unit!168840)

(assert (=> d!2352544 (= lt!2678818 (choose!59622 lt!2678790 (t!388617 s2!461) lt!2678792))))

(assert (=> d!2352544 (isPrefix!6359 lt!2678790 lt!2678792)))

(assert (=> d!2352544 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!949 lt!2678790 (t!388617 s2!461) lt!2678792) lt!2678818)))

(declare-fun bs!1966984 () Bool)

(assert (= bs!1966984 d!2352544))

(assert (=> bs!1966984 m!8254790))

(declare-fun m!8254886 () Bool)

(assert (=> bs!1966984 m!8254886))

(assert (=> bs!1966984 m!8254798))

(assert (=> b!7842659 d!2352544))

(declare-fun d!2352552 () Bool)

(declare-fun lt!2678819 () Int)

(assert (=> d!2352552 (>= lt!2678819 0)))

(declare-fun e!4637013 () Int)

(assert (=> d!2352552 (= lt!2678819 e!4637013)))

(declare-fun c!1441745 () Bool)

(assert (=> d!2352552 (= c!1441745 ((_ is Nil!73758) s2!461))))

(assert (=> d!2352552 (= (size!42807 s2!461) lt!2678819)))

(declare-fun b!7842732 () Bool)

(assert (=> b!7842732 (= e!4637013 0)))

(declare-fun b!7842733 () Bool)

(assert (=> b!7842733 (= e!4637013 (+ 1 (size!42807 (t!388617 s2!461))))))

(assert (= (and d!2352552 c!1441745) b!7842732))

(assert (= (and d!2352552 (not c!1441745)) b!7842733))

(assert (=> b!7842733 m!8254794))

(assert (=> b!7842654 d!2352552))

(declare-fun d!2352554 () Bool)

(declare-fun lt!2678822 () Int)

(assert (=> d!2352554 (>= lt!2678822 0)))

(declare-fun e!4637014 () Int)

(assert (=> d!2352554 (= lt!2678822 e!4637014)))

(declare-fun c!1441746 () Bool)

(assert (=> d!2352554 (= c!1441746 ((_ is Nil!73758) s1!502))))

(assert (=> d!2352554 (= (size!42807 s1!502) lt!2678822)))

(declare-fun b!7842734 () Bool)

(assert (=> b!7842734 (= e!4637014 0)))

(declare-fun b!7842735 () Bool)

(assert (=> b!7842735 (= e!4637014 (+ 1 (size!42807 (t!388617 s1!502))))))

(assert (= (and d!2352554 c!1441746) b!7842734))

(assert (= (and d!2352554 (not c!1441746)) b!7842735))

(declare-fun m!8254888 () Bool)

(assert (=> b!7842735 m!8254888))

(assert (=> b!7842654 d!2352554))

(declare-fun b!7842738 () Bool)

(declare-fun e!4637016 () Bool)

(assert (=> b!7842738 (= e!4637016 (isPrefix!6359 (tail!15563 (t!388617 s2!461)) (tail!15563 lt!2678792)))))

(declare-fun b!7842736 () Bool)

(declare-fun e!4637015 () Bool)

(assert (=> b!7842736 (= e!4637015 e!4637016)))

(declare-fun res!3119437 () Bool)

(assert (=> b!7842736 (=> (not res!3119437) (not e!4637016))))

(assert (=> b!7842736 (= res!3119437 (not ((_ is Nil!73758) lt!2678792)))))

(declare-fun b!7842737 () Bool)

(declare-fun res!3119438 () Bool)

(assert (=> b!7842737 (=> (not res!3119438) (not e!4637016))))

(assert (=> b!7842737 (= res!3119438 (= (head!16019 (t!388617 s2!461)) (head!16019 lt!2678792)))))

(declare-fun b!7842739 () Bool)

(declare-fun e!4637017 () Bool)

(assert (=> b!7842739 (= e!4637017 (>= (size!42807 lt!2678792) (size!42807 (t!388617 s2!461))))))

(declare-fun d!2352556 () Bool)

(assert (=> d!2352556 e!4637017))

(declare-fun res!3119436 () Bool)

(assert (=> d!2352556 (=> res!3119436 e!4637017)))

(declare-fun lt!2678823 () Bool)

(assert (=> d!2352556 (= res!3119436 (not lt!2678823))))

(assert (=> d!2352556 (= lt!2678823 e!4637015)))

(declare-fun res!3119435 () Bool)

(assert (=> d!2352556 (=> res!3119435 e!4637015)))

(assert (=> d!2352556 (= res!3119435 ((_ is Nil!73758) (t!388617 s2!461)))))

(assert (=> d!2352556 (= (isPrefix!6359 (t!388617 s2!461) lt!2678792) lt!2678823)))

(assert (= (and d!2352556 (not res!3119435)) b!7842736))

(assert (= (and b!7842736 res!3119437) b!7842737))

(assert (= (and b!7842737 res!3119438) b!7842738))

(assert (= (and d!2352556 (not res!3119436)) b!7842739))

(assert (=> b!7842738 m!8254868))

(assert (=> b!7842738 m!8254824))

(assert (=> b!7842738 m!8254868))

(assert (=> b!7842738 m!8254824))

(declare-fun m!8254892 () Bool)

(assert (=> b!7842738 m!8254892))

(assert (=> b!7842737 m!8254872))

(assert (=> b!7842737 m!8254830))

(assert (=> b!7842739 m!8254832))

(assert (=> b!7842739 m!8254794))

(assert (=> b!7842658 d!2352556))

(declare-fun b!7842746 () Bool)

(declare-fun e!4637022 () Bool)

(assert (=> b!7842746 (= e!4637022 (isPrefix!6359 (tail!15563 s1!502) (tail!15563 l!3495)))))

(declare-fun b!7842744 () Bool)

(declare-fun e!4637021 () Bool)

(assert (=> b!7842744 (= e!4637021 e!4637022)))

(declare-fun res!3119445 () Bool)

(assert (=> b!7842744 (=> (not res!3119445) (not e!4637022))))

(assert (=> b!7842744 (= res!3119445 (not ((_ is Nil!73758) l!3495)))))

(declare-fun b!7842745 () Bool)

(declare-fun res!3119446 () Bool)

(assert (=> b!7842745 (=> (not res!3119446) (not e!4637022))))

(assert (=> b!7842745 (= res!3119446 (= (head!16019 s1!502) (head!16019 l!3495)))))

(declare-fun b!7842747 () Bool)

(declare-fun e!4637023 () Bool)

(assert (=> b!7842747 (= e!4637023 (>= (size!42807 l!3495) (size!42807 s1!502)))))

(declare-fun d!2352560 () Bool)

(assert (=> d!2352560 e!4637023))

(declare-fun res!3119444 () Bool)

(assert (=> d!2352560 (=> res!3119444 e!4637023)))

(declare-fun lt!2678826 () Bool)

(assert (=> d!2352560 (= res!3119444 (not lt!2678826))))

(assert (=> d!2352560 (= lt!2678826 e!4637021)))

(declare-fun res!3119443 () Bool)

(assert (=> d!2352560 (=> res!3119443 e!4637021)))

(assert (=> d!2352560 (= res!3119443 ((_ is Nil!73758) s1!502))))

(assert (=> d!2352560 (= (isPrefix!6359 s1!502 l!3495) lt!2678826)))

(assert (= (and d!2352560 (not res!3119443)) b!7842744))

(assert (= (and b!7842744 res!3119445) b!7842745))

(assert (= (and b!7842745 res!3119446) b!7842746))

(assert (= (and d!2352560 (not res!3119444)) b!7842747))

(assert (=> b!7842746 m!8254802))

(assert (=> b!7842746 m!8254800))

(assert (=> b!7842746 m!8254802))

(assert (=> b!7842746 m!8254800))

(declare-fun m!8254896 () Bool)

(assert (=> b!7842746 m!8254896))

(assert (=> b!7842745 m!8254866))

(assert (=> b!7842745 m!8254818))

(assert (=> b!7842747 m!8254820))

(assert (=> b!7842747 m!8254786))

(assert (=> start!742774 d!2352560))

(declare-fun b!7842758 () Bool)

(declare-fun e!4637030 () Bool)

(declare-fun tp!2321194 () Bool)

(assert (=> b!7842758 (= e!4637030 (and tp_is_empty!52445 tp!2321194))))

(assert (=> b!7842652 (= tp!2321187 e!4637030)))

(assert (= (and b!7842652 ((_ is Cons!73758) (t!388617 s2!461))) b!7842758))

(declare-fun b!7842760 () Bool)

(declare-fun e!4637032 () Bool)

(declare-fun tp!2321196 () Bool)

(assert (=> b!7842760 (= e!4637032 (and tp_is_empty!52445 tp!2321196))))

(assert (=> b!7842655 (= tp!2321186 e!4637032)))

(assert (= (and b!7842655 ((_ is Cons!73758) (t!388617 l!3495))) b!7842760))

(declare-fun b!7842761 () Bool)

(declare-fun e!4637033 () Bool)

(declare-fun tp!2321197 () Bool)

(assert (=> b!7842761 (= e!4637033 (and tp_is_empty!52445 tp!2321197))))

(assert (=> b!7842653 (= tp!2321185 e!4637033)))

(assert (= (and b!7842653 ((_ is Cons!73758) (t!388617 s1!502))) b!7842761))

(check-sat (not b!7842681) (not b!7842717) (not b!7842682) (not b!7842705) (not b!7842719) tp_is_empty!52445 (not b!7842747) (not b!7842677) (not b!7842711) (not b!7842758) (not b!7842679) (not b!7842746) (not b!7842737) (not b!7842715) (not b!7842718) (not d!2352544) (not b!7842733) (not b!7842745) (not b!7842735) (not b!7842761) (not b!7842683) (not b!7842760) (not b!7842738) (not b!7842713) (not b!7842739) (not b!7842678) (not b!7842714))
(check-sat)
(get-model)

(declare-fun d!2352562 () Bool)

(declare-fun lt!2678827 () Int)

(assert (=> d!2352562 (>= lt!2678827 0)))

(declare-fun e!4637034 () Int)

(assert (=> d!2352562 (= lt!2678827 e!4637034)))

(declare-fun c!1441747 () Bool)

(assert (=> d!2352562 (= c!1441747 ((_ is Nil!73758) l!3495))))

(assert (=> d!2352562 (= (size!42807 l!3495) lt!2678827)))

(declare-fun b!7842762 () Bool)

(assert (=> b!7842762 (= e!4637034 0)))

(declare-fun b!7842763 () Bool)

(assert (=> b!7842763 (= e!4637034 (+ 1 (size!42807 (t!388617 l!3495))))))

(assert (= (and d!2352562 c!1441747) b!7842762))

(assert (= (and d!2352562 (not c!1441747)) b!7842763))

(declare-fun m!8254898 () Bool)

(assert (=> b!7842763 m!8254898))

(assert (=> b!7842747 d!2352562))

(assert (=> b!7842747 d!2352554))

(assert (=> b!7842733 d!2352524))

(declare-fun d!2352564 () Bool)

(assert (=> d!2352564 (= (head!16019 (t!388617 s2!461)) (h!80206 (t!388617 s2!461)))))

(assert (=> b!7842717 d!2352564))

(declare-fun d!2352566 () Bool)

(assert (=> d!2352566 (= (head!16019 lt!2678790) (h!80206 lt!2678790))))

(assert (=> b!7842717 d!2352566))

(assert (=> b!7842719 d!2352532))

(assert (=> b!7842719 d!2352524))

(declare-fun b!7842766 () Bool)

(declare-fun e!4637036 () Bool)

(assert (=> b!7842766 (= e!4637036 (isPrefix!6359 (tail!15563 (tail!15563 (t!388617 s2!461))) (tail!15563 (tail!15563 lt!2678790))))))

(declare-fun b!7842764 () Bool)

(declare-fun e!4637035 () Bool)

(assert (=> b!7842764 (= e!4637035 e!4637036)))

(declare-fun res!3119449 () Bool)

(assert (=> b!7842764 (=> (not res!3119449) (not e!4637036))))

(assert (=> b!7842764 (= res!3119449 (not ((_ is Nil!73758) (tail!15563 lt!2678790))))))

(declare-fun b!7842765 () Bool)

(declare-fun res!3119450 () Bool)

(assert (=> b!7842765 (=> (not res!3119450) (not e!4637036))))

(assert (=> b!7842765 (= res!3119450 (= (head!16019 (tail!15563 (t!388617 s2!461))) (head!16019 (tail!15563 lt!2678790))))))

(declare-fun b!7842767 () Bool)

(declare-fun e!4637037 () Bool)

(assert (=> b!7842767 (= e!4637037 (>= (size!42807 (tail!15563 lt!2678790)) (size!42807 (tail!15563 (t!388617 s2!461)))))))

(declare-fun d!2352568 () Bool)

(assert (=> d!2352568 e!4637037))

(declare-fun res!3119448 () Bool)

(assert (=> d!2352568 (=> res!3119448 e!4637037)))

(declare-fun lt!2678828 () Bool)

(assert (=> d!2352568 (= res!3119448 (not lt!2678828))))

(assert (=> d!2352568 (= lt!2678828 e!4637035)))

(declare-fun res!3119447 () Bool)

(assert (=> d!2352568 (=> res!3119447 e!4637035)))

(assert (=> d!2352568 (= res!3119447 ((_ is Nil!73758) (tail!15563 (t!388617 s2!461))))))

(assert (=> d!2352568 (= (isPrefix!6359 (tail!15563 (t!388617 s2!461)) (tail!15563 lt!2678790)) lt!2678828)))

(assert (= (and d!2352568 (not res!3119447)) b!7842764))

(assert (= (and b!7842764 res!3119449) b!7842765))

(assert (= (and b!7842765 res!3119450) b!7842766))

(assert (= (and d!2352568 (not res!3119448)) b!7842767))

(assert (=> b!7842766 m!8254868))

(declare-fun m!8254900 () Bool)

(assert (=> b!7842766 m!8254900))

(assert (=> b!7842766 m!8254822))

(declare-fun m!8254902 () Bool)

(assert (=> b!7842766 m!8254902))

(assert (=> b!7842766 m!8254900))

(assert (=> b!7842766 m!8254902))

(declare-fun m!8254904 () Bool)

(assert (=> b!7842766 m!8254904))

(assert (=> b!7842765 m!8254868))

(declare-fun m!8254906 () Bool)

(assert (=> b!7842765 m!8254906))

(assert (=> b!7842765 m!8254822))

(declare-fun m!8254908 () Bool)

(assert (=> b!7842765 m!8254908))

(assert (=> b!7842767 m!8254822))

(declare-fun m!8254910 () Bool)

(assert (=> b!7842767 m!8254910))

(assert (=> b!7842767 m!8254868))

(declare-fun m!8254912 () Bool)

(assert (=> b!7842767 m!8254912))

(assert (=> b!7842718 d!2352568))

(declare-fun d!2352570 () Bool)

(assert (=> d!2352570 (= (tail!15563 (t!388617 s2!461)) (t!388617 (t!388617 s2!461)))))

(assert (=> b!7842718 d!2352570))

(declare-fun d!2352572 () Bool)

(assert (=> d!2352572 (= (tail!15563 lt!2678790) (t!388617 lt!2678790))))

(assert (=> b!7842718 d!2352572))

(assert (=> b!7842737 d!2352564))

(declare-fun d!2352574 () Bool)

(assert (=> d!2352574 (= (head!16019 lt!2678792) (h!80206 lt!2678792))))

(assert (=> b!7842737 d!2352574))

(assert (=> d!2352544 d!2352538))

(declare-fun d!2352576 () Bool)

(assert (=> d!2352576 (isPrefix!6359 (t!388617 s2!461) lt!2678790)))

(assert (=> d!2352576 true))

(declare-fun _$69!437 () Unit!168840)

(assert (=> d!2352576 (= (choose!59622 lt!2678790 (t!388617 s2!461) lt!2678792) _$69!437)))

(declare-fun bs!1966986 () Bool)

(assert (= bs!1966986 d!2352576))

(assert (=> bs!1966986 m!8254790))

(assert (=> d!2352544 d!2352576))

(assert (=> d!2352544 d!2352518))

(declare-fun b!7842770 () Bool)

(declare-fun e!4637039 () Bool)

(assert (=> b!7842770 (= e!4637039 (isPrefix!6359 (tail!15563 (tail!15563 s2!461)) (tail!15563 (tail!15563 l!3495))))))

(declare-fun b!7842768 () Bool)

(declare-fun e!4637038 () Bool)

(assert (=> b!7842768 (= e!4637038 e!4637039)))

(declare-fun res!3119453 () Bool)

(assert (=> b!7842768 (=> (not res!3119453) (not e!4637039))))

(assert (=> b!7842768 (= res!3119453 (not ((_ is Nil!73758) (tail!15563 l!3495))))))

(declare-fun b!7842769 () Bool)

(declare-fun res!3119454 () Bool)

(assert (=> b!7842769 (=> (not res!3119454) (not e!4637039))))

(assert (=> b!7842769 (= res!3119454 (= (head!16019 (tail!15563 s2!461)) (head!16019 (tail!15563 l!3495))))))

(declare-fun b!7842771 () Bool)

(declare-fun e!4637040 () Bool)

(assert (=> b!7842771 (= e!4637040 (>= (size!42807 (tail!15563 l!3495)) (size!42807 (tail!15563 s2!461))))))

(declare-fun d!2352578 () Bool)

(assert (=> d!2352578 e!4637040))

(declare-fun res!3119452 () Bool)

(assert (=> d!2352578 (=> res!3119452 e!4637040)))

(declare-fun lt!2678829 () Bool)

(assert (=> d!2352578 (= res!3119452 (not lt!2678829))))

(assert (=> d!2352578 (= lt!2678829 e!4637038)))

(declare-fun res!3119451 () Bool)

(assert (=> d!2352578 (=> res!3119451 e!4637038)))

(assert (=> d!2352578 (= res!3119451 ((_ is Nil!73758) (tail!15563 s2!461)))))

(assert (=> d!2352578 (= (isPrefix!6359 (tail!15563 s2!461) (tail!15563 l!3495)) lt!2678829)))

(assert (= (and d!2352578 (not res!3119451)) b!7842768))

(assert (= (and b!7842768 res!3119453) b!7842769))

(assert (= (and b!7842769 res!3119454) b!7842770))

(assert (= (and d!2352578 (not res!3119452)) b!7842771))

(assert (=> b!7842770 m!8254812))

(declare-fun m!8254914 () Bool)

(assert (=> b!7842770 m!8254914))

(assert (=> b!7842770 m!8254800))

(declare-fun m!8254916 () Bool)

(assert (=> b!7842770 m!8254916))

(assert (=> b!7842770 m!8254914))

(assert (=> b!7842770 m!8254916))

(declare-fun m!8254918 () Bool)

(assert (=> b!7842770 m!8254918))

(assert (=> b!7842769 m!8254812))

(declare-fun m!8254920 () Bool)

(assert (=> b!7842769 m!8254920))

(assert (=> b!7842769 m!8254800))

(declare-fun m!8254922 () Bool)

(assert (=> b!7842769 m!8254922))

(assert (=> b!7842771 m!8254800))

(declare-fun m!8254924 () Bool)

(assert (=> b!7842771 m!8254924))

(assert (=> b!7842771 m!8254812))

(declare-fun m!8254926 () Bool)

(assert (=> b!7842771 m!8254926))

(assert (=> b!7842678 d!2352578))

(declare-fun d!2352580 () Bool)

(assert (=> d!2352580 (= (tail!15563 s2!461) (t!388617 s2!461))))

(assert (=> b!7842678 d!2352580))

(assert (=> b!7842678 d!2352520))

(declare-fun b!7842774 () Bool)

(declare-fun e!4637042 () Bool)

(assert (=> b!7842774 (= e!4637042 (isPrefix!6359 (tail!15563 (tail!15563 (t!388617 s2!461))) (tail!15563 (tail!15563 lt!2678792))))))

(declare-fun b!7842772 () Bool)

(declare-fun e!4637041 () Bool)

(assert (=> b!7842772 (= e!4637041 e!4637042)))

(declare-fun res!3119457 () Bool)

(assert (=> b!7842772 (=> (not res!3119457) (not e!4637042))))

(assert (=> b!7842772 (= res!3119457 (not ((_ is Nil!73758) (tail!15563 lt!2678792))))))

(declare-fun b!7842773 () Bool)

(declare-fun res!3119458 () Bool)

(assert (=> b!7842773 (=> (not res!3119458) (not e!4637042))))

(assert (=> b!7842773 (= res!3119458 (= (head!16019 (tail!15563 (t!388617 s2!461))) (head!16019 (tail!15563 lt!2678792))))))

(declare-fun b!7842775 () Bool)

(declare-fun e!4637043 () Bool)

(assert (=> b!7842775 (= e!4637043 (>= (size!42807 (tail!15563 lt!2678792)) (size!42807 (tail!15563 (t!388617 s2!461)))))))

(declare-fun d!2352582 () Bool)

(assert (=> d!2352582 e!4637043))

(declare-fun res!3119456 () Bool)

(assert (=> d!2352582 (=> res!3119456 e!4637043)))

(declare-fun lt!2678830 () Bool)

(assert (=> d!2352582 (= res!3119456 (not lt!2678830))))

(assert (=> d!2352582 (= lt!2678830 e!4637041)))

(declare-fun res!3119455 () Bool)

(assert (=> d!2352582 (=> res!3119455 e!4637041)))

(assert (=> d!2352582 (= res!3119455 ((_ is Nil!73758) (tail!15563 (t!388617 s2!461))))))

(assert (=> d!2352582 (= (isPrefix!6359 (tail!15563 (t!388617 s2!461)) (tail!15563 lt!2678792)) lt!2678830)))

(assert (= (and d!2352582 (not res!3119455)) b!7842772))

(assert (= (and b!7842772 res!3119457) b!7842773))

(assert (= (and b!7842773 res!3119458) b!7842774))

(assert (= (and d!2352582 (not res!3119456)) b!7842775))

(assert (=> b!7842774 m!8254868))

(assert (=> b!7842774 m!8254900))

(assert (=> b!7842774 m!8254824))

(declare-fun m!8254928 () Bool)

(assert (=> b!7842774 m!8254928))

(assert (=> b!7842774 m!8254900))

(assert (=> b!7842774 m!8254928))

(declare-fun m!8254930 () Bool)

(assert (=> b!7842774 m!8254930))

(assert (=> b!7842773 m!8254868))

(assert (=> b!7842773 m!8254906))

(assert (=> b!7842773 m!8254824))

(declare-fun m!8254932 () Bool)

(assert (=> b!7842773 m!8254932))

(assert (=> b!7842775 m!8254824))

(declare-fun m!8254934 () Bool)

(assert (=> b!7842775 m!8254934))

(assert (=> b!7842775 m!8254868))

(assert (=> b!7842775 m!8254912))

(assert (=> b!7842738 d!2352582))

(assert (=> b!7842738 d!2352570))

(declare-fun d!2352584 () Bool)

(assert (=> d!2352584 (= (tail!15563 lt!2678792) (t!388617 lt!2678792))))

(assert (=> b!7842738 d!2352584))

(assert (=> b!7842679 d!2352562))

(assert (=> b!7842679 d!2352552))

(declare-fun d!2352586 () Bool)

(assert (=> d!2352586 (= (head!16019 s2!461) (h!80206 s2!461))))

(assert (=> b!7842677 d!2352586))

(declare-fun d!2352588 () Bool)

(assert (=> d!2352588 (= (head!16019 l!3495) (h!80206 l!3495))))

(assert (=> b!7842677 d!2352588))

(declare-fun d!2352590 () Bool)

(declare-fun lt!2678831 () Int)

(assert (=> d!2352590 (>= lt!2678831 0)))

(declare-fun e!4637044 () Int)

(assert (=> d!2352590 (= lt!2678831 e!4637044)))

(declare-fun c!1441748 () Bool)

(assert (=> d!2352590 (= c!1441748 ((_ is Nil!73758) lt!2678792))))

(assert (=> d!2352590 (= (size!42807 lt!2678792) lt!2678831)))

(declare-fun b!7842776 () Bool)

(assert (=> b!7842776 (= e!4637044 0)))

(declare-fun b!7842777 () Bool)

(assert (=> b!7842777 (= e!4637044 (+ 1 (size!42807 (t!388617 lt!2678792))))))

(assert (= (and d!2352590 c!1441748) b!7842776))

(assert (= (and d!2352590 (not c!1441748)) b!7842777))

(declare-fun m!8254936 () Bool)

(assert (=> b!7842777 m!8254936))

(assert (=> b!7842739 d!2352590))

(assert (=> b!7842739 d!2352524))

(declare-fun b!7842780 () Bool)

(declare-fun e!4637046 () Bool)

(assert (=> b!7842780 (= e!4637046 (isPrefix!6359 (tail!15563 (tail!15563 lt!2678790)) (tail!15563 (tail!15563 lt!2678792))))))

(declare-fun b!7842778 () Bool)

(declare-fun e!4637045 () Bool)

(assert (=> b!7842778 (= e!4637045 e!4637046)))

(declare-fun res!3119461 () Bool)

(assert (=> b!7842778 (=> (not res!3119461) (not e!4637046))))

(assert (=> b!7842778 (= res!3119461 (not ((_ is Nil!73758) (tail!15563 lt!2678792))))))

(declare-fun b!7842779 () Bool)

(declare-fun res!3119462 () Bool)

(assert (=> b!7842779 (=> (not res!3119462) (not e!4637046))))

(assert (=> b!7842779 (= res!3119462 (= (head!16019 (tail!15563 lt!2678790)) (head!16019 (tail!15563 lt!2678792))))))

(declare-fun b!7842781 () Bool)

(declare-fun e!4637047 () Bool)

(assert (=> b!7842781 (= e!4637047 (>= (size!42807 (tail!15563 lt!2678792)) (size!42807 (tail!15563 lt!2678790))))))

(declare-fun d!2352592 () Bool)

(assert (=> d!2352592 e!4637047))

(declare-fun res!3119460 () Bool)

(assert (=> d!2352592 (=> res!3119460 e!4637047)))

(declare-fun lt!2678832 () Bool)

(assert (=> d!2352592 (= res!3119460 (not lt!2678832))))

(assert (=> d!2352592 (= lt!2678832 e!4637045)))

(declare-fun res!3119459 () Bool)

(assert (=> d!2352592 (=> res!3119459 e!4637045)))

(assert (=> d!2352592 (= res!3119459 ((_ is Nil!73758) (tail!15563 lt!2678790)))))

(assert (=> d!2352592 (= (isPrefix!6359 (tail!15563 lt!2678790) (tail!15563 lt!2678792)) lt!2678832)))

(assert (= (and d!2352592 (not res!3119459)) b!7842778))

(assert (= (and b!7842778 res!3119461) b!7842779))

(assert (= (and b!7842779 res!3119462) b!7842780))

(assert (= (and d!2352592 (not res!3119460)) b!7842781))

(assert (=> b!7842780 m!8254822))

(assert (=> b!7842780 m!8254902))

(assert (=> b!7842780 m!8254824))

(assert (=> b!7842780 m!8254928))

(assert (=> b!7842780 m!8254902))

(assert (=> b!7842780 m!8254928))

(declare-fun m!8254938 () Bool)

(assert (=> b!7842780 m!8254938))

(assert (=> b!7842779 m!8254822))

(assert (=> b!7842779 m!8254908))

(assert (=> b!7842779 m!8254824))

(assert (=> b!7842779 m!8254932))

(assert (=> b!7842781 m!8254824))

(assert (=> b!7842781 m!8254934))

(assert (=> b!7842781 m!8254822))

(assert (=> b!7842781 m!8254910))

(assert (=> b!7842682 d!2352592))

(assert (=> b!7842682 d!2352572))

(assert (=> b!7842682 d!2352584))

(assert (=> b!7842683 d!2352590))

(assert (=> b!7842683 d!2352532))

(assert (=> b!7842681 d!2352566))

(assert (=> b!7842681 d!2352574))

(declare-fun d!2352594 () Bool)

(declare-fun lt!2678833 () Int)

(assert (=> d!2352594 (>= lt!2678833 0)))

(declare-fun e!4637048 () Int)

(assert (=> d!2352594 (= lt!2678833 e!4637048)))

(declare-fun c!1441749 () Bool)

(assert (=> d!2352594 (= c!1441749 ((_ is Nil!73758) (t!388617 (t!388617 s2!461))))))

(assert (=> d!2352594 (= (size!42807 (t!388617 (t!388617 s2!461))) lt!2678833)))

(declare-fun b!7842782 () Bool)

(assert (=> b!7842782 (= e!4637048 0)))

(declare-fun b!7842783 () Bool)

(assert (=> b!7842783 (= e!4637048 (+ 1 (size!42807 (t!388617 (t!388617 (t!388617 s2!461))))))))

(assert (= (and d!2352594 c!1441749) b!7842782))

(assert (= (and d!2352594 (not c!1441749)) b!7842783))

(declare-fun m!8254940 () Bool)

(assert (=> b!7842783 m!8254940))

(assert (=> b!7842705 d!2352594))

(declare-fun d!2352596 () Bool)

(declare-fun lt!2678834 () Int)

(assert (=> d!2352596 (>= lt!2678834 0)))

(declare-fun e!4637049 () Int)

(assert (=> d!2352596 (= lt!2678834 e!4637049)))

(declare-fun c!1441750 () Bool)

(assert (=> d!2352596 (= c!1441750 ((_ is Nil!73758) (t!388617 lt!2678790)))))

(assert (=> d!2352596 (= (size!42807 (t!388617 lt!2678790)) lt!2678834)))

(declare-fun b!7842784 () Bool)

(assert (=> b!7842784 (= e!4637049 0)))

(declare-fun b!7842785 () Bool)

(assert (=> b!7842785 (= e!4637049 (+ 1 (size!42807 (t!388617 (t!388617 lt!2678790)))))))

(assert (= (and d!2352596 c!1441750) b!7842784))

(assert (= (and d!2352596 (not c!1441750)) b!7842785))

(declare-fun m!8254942 () Bool)

(assert (=> b!7842785 m!8254942))

(assert (=> b!7842711 d!2352596))

(assert (=> b!7842713 d!2352586))

(declare-fun d!2352598 () Bool)

(assert (=> d!2352598 (= (head!16019 s1!502) (h!80206 s1!502))))

(assert (=> b!7842713 d!2352598))

(declare-fun d!2352600 () Bool)

(declare-fun lt!2678835 () Int)

(assert (=> d!2352600 (>= lt!2678835 0)))

(declare-fun e!4637050 () Int)

(assert (=> d!2352600 (= lt!2678835 e!4637050)))

(declare-fun c!1441751 () Bool)

(assert (=> d!2352600 (= c!1441751 ((_ is Nil!73758) (t!388617 s1!502)))))

(assert (=> d!2352600 (= (size!42807 (t!388617 s1!502)) lt!2678835)))

(declare-fun b!7842786 () Bool)

(assert (=> b!7842786 (= e!4637050 0)))

(declare-fun b!7842787 () Bool)

(assert (=> b!7842787 (= e!4637050 (+ 1 (size!42807 (t!388617 (t!388617 s1!502)))))))

(assert (= (and d!2352600 c!1441751) b!7842786))

(assert (= (and d!2352600 (not c!1441751)) b!7842787))

(declare-fun m!8254944 () Bool)

(assert (=> b!7842787 m!8254944))

(assert (=> b!7842735 d!2352600))

(assert (=> b!7842715 d!2352554))

(assert (=> b!7842715 d!2352552))

(declare-fun b!7842790 () Bool)

(declare-fun e!4637052 () Bool)

(assert (=> b!7842790 (= e!4637052 (isPrefix!6359 (tail!15563 (tail!15563 s2!461)) (tail!15563 (tail!15563 s1!502))))))

(declare-fun b!7842788 () Bool)

(declare-fun e!4637051 () Bool)

(assert (=> b!7842788 (= e!4637051 e!4637052)))

(declare-fun res!3119465 () Bool)

(assert (=> b!7842788 (=> (not res!3119465) (not e!4637052))))

(assert (=> b!7842788 (= res!3119465 (not ((_ is Nil!73758) (tail!15563 s1!502))))))

(declare-fun b!7842789 () Bool)

(declare-fun res!3119466 () Bool)

(assert (=> b!7842789 (=> (not res!3119466) (not e!4637052))))

(assert (=> b!7842789 (= res!3119466 (= (head!16019 (tail!15563 s2!461)) (head!16019 (tail!15563 s1!502))))))

(declare-fun b!7842791 () Bool)

(declare-fun e!4637053 () Bool)

(assert (=> b!7842791 (= e!4637053 (>= (size!42807 (tail!15563 s1!502)) (size!42807 (tail!15563 s2!461))))))

(declare-fun d!2352602 () Bool)

(assert (=> d!2352602 e!4637053))

(declare-fun res!3119464 () Bool)

(assert (=> d!2352602 (=> res!3119464 e!4637053)))

(declare-fun lt!2678836 () Bool)

(assert (=> d!2352602 (= res!3119464 (not lt!2678836))))

(assert (=> d!2352602 (= lt!2678836 e!4637051)))

(declare-fun res!3119463 () Bool)

(assert (=> d!2352602 (=> res!3119463 e!4637051)))

(assert (=> d!2352602 (= res!3119463 ((_ is Nil!73758) (tail!15563 s2!461)))))

(assert (=> d!2352602 (= (isPrefix!6359 (tail!15563 s2!461) (tail!15563 s1!502)) lt!2678836)))

(assert (= (and d!2352602 (not res!3119463)) b!7842788))

(assert (= (and b!7842788 res!3119465) b!7842789))

(assert (= (and b!7842789 res!3119466) b!7842790))

(assert (= (and d!2352602 (not res!3119464)) b!7842791))

(assert (=> b!7842790 m!8254812))

(assert (=> b!7842790 m!8254914))

(assert (=> b!7842790 m!8254802))

(declare-fun m!8254946 () Bool)

(assert (=> b!7842790 m!8254946))

(assert (=> b!7842790 m!8254914))

(assert (=> b!7842790 m!8254946))

(declare-fun m!8254948 () Bool)

(assert (=> b!7842790 m!8254948))

(assert (=> b!7842789 m!8254812))

(assert (=> b!7842789 m!8254920))

(assert (=> b!7842789 m!8254802))

(declare-fun m!8254950 () Bool)

(assert (=> b!7842789 m!8254950))

(assert (=> b!7842791 m!8254802))

(declare-fun m!8254952 () Bool)

(assert (=> b!7842791 m!8254952))

(assert (=> b!7842791 m!8254812))

(assert (=> b!7842791 m!8254926))

(assert (=> b!7842714 d!2352602))

(assert (=> b!7842714 d!2352580))

(assert (=> b!7842714 d!2352522))

(declare-fun b!7842794 () Bool)

(declare-fun e!4637055 () Bool)

(assert (=> b!7842794 (= e!4637055 (isPrefix!6359 (tail!15563 (tail!15563 s1!502)) (tail!15563 (tail!15563 l!3495))))))

(declare-fun b!7842792 () Bool)

(declare-fun e!4637054 () Bool)

(assert (=> b!7842792 (= e!4637054 e!4637055)))

(declare-fun res!3119469 () Bool)

(assert (=> b!7842792 (=> (not res!3119469) (not e!4637055))))

(assert (=> b!7842792 (= res!3119469 (not ((_ is Nil!73758) (tail!15563 l!3495))))))

(declare-fun b!7842793 () Bool)

(declare-fun res!3119470 () Bool)

(assert (=> b!7842793 (=> (not res!3119470) (not e!4637055))))

(assert (=> b!7842793 (= res!3119470 (= (head!16019 (tail!15563 s1!502)) (head!16019 (tail!15563 l!3495))))))

(declare-fun b!7842795 () Bool)

(declare-fun e!4637056 () Bool)

(assert (=> b!7842795 (= e!4637056 (>= (size!42807 (tail!15563 l!3495)) (size!42807 (tail!15563 s1!502))))))

(declare-fun d!2352604 () Bool)

(assert (=> d!2352604 e!4637056))

(declare-fun res!3119468 () Bool)

(assert (=> d!2352604 (=> res!3119468 e!4637056)))

(declare-fun lt!2678837 () Bool)

(assert (=> d!2352604 (= res!3119468 (not lt!2678837))))

(assert (=> d!2352604 (= lt!2678837 e!4637054)))

(declare-fun res!3119467 () Bool)

(assert (=> d!2352604 (=> res!3119467 e!4637054)))

(assert (=> d!2352604 (= res!3119467 ((_ is Nil!73758) (tail!15563 s1!502)))))

(assert (=> d!2352604 (= (isPrefix!6359 (tail!15563 s1!502) (tail!15563 l!3495)) lt!2678837)))

(assert (= (and d!2352604 (not res!3119467)) b!7842792))

(assert (= (and b!7842792 res!3119469) b!7842793))

(assert (= (and b!7842793 res!3119470) b!7842794))

(assert (= (and d!2352604 (not res!3119468)) b!7842795))

(assert (=> b!7842794 m!8254802))

(assert (=> b!7842794 m!8254946))

(assert (=> b!7842794 m!8254800))

(assert (=> b!7842794 m!8254916))

(assert (=> b!7842794 m!8254946))

(assert (=> b!7842794 m!8254916))

(declare-fun m!8254954 () Bool)

(assert (=> b!7842794 m!8254954))

(assert (=> b!7842793 m!8254802))

(assert (=> b!7842793 m!8254950))

(assert (=> b!7842793 m!8254800))

(assert (=> b!7842793 m!8254922))

(assert (=> b!7842795 m!8254800))

(assert (=> b!7842795 m!8254924))

(assert (=> b!7842795 m!8254802))

(assert (=> b!7842795 m!8254952))

(assert (=> b!7842746 d!2352604))

(assert (=> b!7842746 d!2352522))

(assert (=> b!7842746 d!2352520))

(assert (=> b!7842745 d!2352598))

(assert (=> b!7842745 d!2352588))

(declare-fun b!7842796 () Bool)

(declare-fun e!4637057 () Bool)

(declare-fun tp!2321198 () Bool)

(assert (=> b!7842796 (= e!4637057 (and tp_is_empty!52445 tp!2321198))))

(assert (=> b!7842760 (= tp!2321196 e!4637057)))

(assert (= (and b!7842760 ((_ is Cons!73758) (t!388617 (t!388617 l!3495)))) b!7842796))

(declare-fun b!7842797 () Bool)

(declare-fun e!4637058 () Bool)

(declare-fun tp!2321199 () Bool)

(assert (=> b!7842797 (= e!4637058 (and tp_is_empty!52445 tp!2321199))))

(assert (=> b!7842758 (= tp!2321194 e!4637058)))

(assert (= (and b!7842758 ((_ is Cons!73758) (t!388617 (t!388617 s2!461)))) b!7842797))

(declare-fun b!7842798 () Bool)

(declare-fun e!4637059 () Bool)

(declare-fun tp!2321200 () Bool)

(assert (=> b!7842798 (= e!4637059 (and tp_is_empty!52445 tp!2321200))))

(assert (=> b!7842761 (= tp!2321197 e!4637059)))

(assert (= (and b!7842761 ((_ is Cons!73758) (t!388617 (t!388617 s1!502)))) b!7842798))

(check-sat (not b!7842779) (not b!7842780) (not b!7842790) tp_is_empty!52445 (not b!7842774) (not b!7842781) (not b!7842793) (not d!2352576) (not b!7842795) (not b!7842798) (not b!7842767) (not b!7842770) (not b!7842766) (not b!7842794) (not b!7842785) (not b!7842763) (not b!7842769) (not b!7842771) (not b!7842787) (not b!7842765) (not b!7842777) (not b!7842791) (not b!7842783) (not b!7842775) (not b!7842796) (not b!7842797) (not b!7842789) (not b!7842773))
(check-sat)
