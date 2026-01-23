; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!747538 () Bool)

(assert start!747538)

(declare-fun b!7914833 () Bool)

(declare-fun e!4672048 () Bool)

(declare-fun tp_is_empty!53153 () Bool)

(declare-fun tp!2357201 () Bool)

(assert (=> b!7914833 (= e!4672048 (and tp_is_empty!53153 tp!2357201))))

(declare-fun b!7914834 () Bool)

(declare-fun e!4672045 () Bool)

(declare-datatypes ((T!145538 0))(
  ( (T!145539 (val!32022 Int)) )
))
(declare-datatypes ((List!74534 0))(
  ( (Nil!74410) (Cons!74410 (h!80858 T!145538) (t!390025 List!74534)) )
))
(declare-datatypes ((IArray!31789 0))(
  ( (IArray!31790 (innerList!15952 List!74534)) )
))
(declare-datatypes ((Conc!15864 0))(
  ( (Node!15864 (left!56816 Conc!15864) (right!57146 Conc!15864) (csize!31958 Int) (cheight!16075 Int)) (Leaf!30177 (xs!19246 IArray!31789) (csize!31959 Int)) (Empty!15864) )
))
(declare-fun c!5365 () Conc!15864)

(declare-fun ll!14 () List!74534)

(declare-fun isBalanced!4490 (Conc!15864) Bool)

(declare-fun append!1104 (Conc!15864 T!145538) Conc!15864)

(assert (=> b!7914834 (= e!4672045 (not (isBalanced!4490 (append!1104 c!5365 (h!80858 ll!14)))))))

(declare-fun tp!2357200 () Bool)

(declare-fun tp!2357199 () Bool)

(declare-fun b!7914835 () Bool)

(declare-fun e!4672046 () Bool)

(declare-fun inv!95520 (Conc!15864) Bool)

(assert (=> b!7914835 (= e!4672046 (and (inv!95520 (left!56816 c!5365)) tp!2357199 (inv!95520 (right!57146 c!5365)) tp!2357200))))

(declare-fun b!7914836 () Bool)

(declare-fun res!3141402 () Bool)

(assert (=> b!7914836 (=> (not res!3141402) (not e!4672045))))

(get-info :version)

(assert (=> b!7914836 (= res!3141402 (not ((_ is Nil!74410) ll!14)))))

(declare-fun res!3141401 () Bool)

(assert (=> start!747538 (=> (not res!3141401) (not e!4672045))))

(assert (=> start!747538 (= res!3141401 (isBalanced!4490 c!5365))))

(assert (=> start!747538 e!4672045))

(assert (=> start!747538 (and (inv!95520 c!5365) e!4672046)))

(assert (=> start!747538 e!4672048))

(declare-fun b!7914837 () Bool)

(declare-fun e!4672047 () Bool)

(declare-fun inv!95521 (IArray!31789) Bool)

(assert (=> b!7914837 (= e!4672046 (and (inv!95521 (xs!19246 c!5365)) e!4672047))))

(declare-fun b!7914838 () Bool)

(declare-fun tp!2357202 () Bool)

(assert (=> b!7914838 (= e!4672047 tp!2357202)))

(assert (= (and start!747538 res!3141401) b!7914836))

(assert (= (and b!7914836 res!3141402) b!7914834))

(assert (= (and start!747538 ((_ is Node!15864) c!5365)) b!7914835))

(assert (= b!7914837 b!7914838))

(assert (= (and start!747538 ((_ is Leaf!30177) c!5365)) b!7914837))

(assert (= (and start!747538 ((_ is Cons!74410) ll!14)) b!7914833))

(declare-fun m!8288790 () Bool)

(assert (=> b!7914834 m!8288790))

(assert (=> b!7914834 m!8288790))

(declare-fun m!8288792 () Bool)

(assert (=> b!7914834 m!8288792))

(declare-fun m!8288794 () Bool)

(assert (=> b!7914835 m!8288794))

(declare-fun m!8288796 () Bool)

(assert (=> b!7914835 m!8288796))

(declare-fun m!8288798 () Bool)

(assert (=> start!747538 m!8288798))

(declare-fun m!8288800 () Bool)

(assert (=> start!747538 m!8288800))

(declare-fun m!8288802 () Bool)

(assert (=> b!7914837 m!8288802))

(check-sat (not b!7914835) tp_is_empty!53153 (not b!7914833) (not start!747538) (not b!7914837) (not b!7914838) (not b!7914834))
(check-sat)
(get-model)

(declare-fun d!2361408 () Bool)

(declare-fun size!43190 (List!74534) Int)

(assert (=> d!2361408 (= (inv!95521 (xs!19246 c!5365)) (<= (size!43190 (innerList!15952 (xs!19246 c!5365))) 2147483647))))

(declare-fun bs!1968435 () Bool)

(assert (= bs!1968435 d!2361408))

(declare-fun m!8288804 () Bool)

(assert (=> bs!1968435 m!8288804))

(assert (=> b!7914837 d!2361408))

(declare-fun b!7914869 () Bool)

(declare-fun e!4672060 () Bool)

(declare-fun e!4672059 () Bool)

(assert (=> b!7914869 (= e!4672060 e!4672059)))

(declare-fun res!3141437 () Bool)

(assert (=> b!7914869 (=> (not res!3141437) (not e!4672059))))

(declare-fun height!2183 (Conc!15864) Int)

(assert (=> b!7914869 (= res!3141437 (<= (- 1) (- (height!2183 (left!56816 (append!1104 c!5365 (h!80858 ll!14)))) (height!2183 (right!57146 (append!1104 c!5365 (h!80858 ll!14)))))))))

(declare-fun b!7914870 () Bool)

(declare-fun isEmpty!42729 (Conc!15864) Bool)

(assert (=> b!7914870 (= e!4672059 (not (isEmpty!42729 (right!57146 (append!1104 c!5365 (h!80858 ll!14))))))))

(declare-fun b!7914871 () Bool)

(declare-fun res!3141438 () Bool)

(assert (=> b!7914871 (=> (not res!3141438) (not e!4672059))))

(assert (=> b!7914871 (= res!3141438 (<= (- (height!2183 (left!56816 (append!1104 c!5365 (h!80858 ll!14)))) (height!2183 (right!57146 (append!1104 c!5365 (h!80858 ll!14))))) 1))))

(declare-fun d!2361411 () Bool)

(declare-fun res!3141434 () Bool)

(assert (=> d!2361411 (=> res!3141434 e!4672060)))

(assert (=> d!2361411 (= res!3141434 (not ((_ is Node!15864) (append!1104 c!5365 (h!80858 ll!14)))))))

(assert (=> d!2361411 (= (isBalanced!4490 (append!1104 c!5365 (h!80858 ll!14))) e!4672060)))

(declare-fun b!7914872 () Bool)

(declare-fun res!3141433 () Bool)

(assert (=> b!7914872 (=> (not res!3141433) (not e!4672059))))

(assert (=> b!7914872 (= res!3141433 (not (isEmpty!42729 (left!56816 (append!1104 c!5365 (h!80858 ll!14))))))))

(declare-fun b!7914873 () Bool)

(declare-fun res!3141436 () Bool)

(assert (=> b!7914873 (=> (not res!3141436) (not e!4672059))))

(assert (=> b!7914873 (= res!3141436 (isBalanced!4490 (right!57146 (append!1104 c!5365 (h!80858 ll!14)))))))

(declare-fun b!7914874 () Bool)

(declare-fun res!3141435 () Bool)

(assert (=> b!7914874 (=> (not res!3141435) (not e!4672059))))

(assert (=> b!7914874 (= res!3141435 (isBalanced!4490 (left!56816 (append!1104 c!5365 (h!80858 ll!14)))))))

(assert (= (and d!2361411 (not res!3141434)) b!7914869))

(assert (= (and b!7914869 res!3141437) b!7914871))

(assert (= (and b!7914871 res!3141438) b!7914874))

(assert (= (and b!7914874 res!3141435) b!7914873))

(assert (= (and b!7914873 res!3141436) b!7914872))

(assert (= (and b!7914872 res!3141433) b!7914870))

(declare-fun m!8288818 () Bool)

(assert (=> b!7914874 m!8288818))

(declare-fun m!8288820 () Bool)

(assert (=> b!7914871 m!8288820))

(declare-fun m!8288822 () Bool)

(assert (=> b!7914871 m!8288822))

(declare-fun m!8288824 () Bool)

(assert (=> b!7914873 m!8288824))

(declare-fun m!8288826 () Bool)

(assert (=> b!7914872 m!8288826))

(declare-fun m!8288828 () Bool)

(assert (=> b!7914870 m!8288828))

(assert (=> b!7914869 m!8288820))

(assert (=> b!7914869 m!8288822))

(assert (=> b!7914834 d!2361411))

(declare-fun bm!734342 () Bool)

(declare-fun c!1452301 () Bool)

(declare-fun c!1452299 () Bool)

(assert (=> bm!734342 (= c!1452301 c!1452299)))

(declare-fun call!734353 () Conc!15864)

(declare-fun e!4672092 () Conc!15864)

(declare-fun <>!405 (Conc!15864 Conc!15864) Conc!15864)

(assert (=> bm!734342 (= call!734353 (<>!405 (ite c!1452299 (left!56816 c!5365) c!5365) e!4672092))))

(declare-fun b!7914940 () Bool)

(declare-fun e!4672095 () Conc!15864)

(declare-fun append!1105 (IArray!31789 T!145538) IArray!31789)

(assert (=> b!7914940 (= e!4672095 (Leaf!30177 (append!1105 (xs!19246 c!5365) (h!80858 ll!14)) (+ (csize!31959 c!5365) 1)))))

(declare-fun lt!2689676 () List!74534)

(declare-fun $colon+!291 (List!74534 T!145538) List!74534)

(declare-fun list!19351 (IArray!31789) List!74534)

(assert (=> b!7914940 (= lt!2689676 ($colon+!291 (list!19351 (xs!19246 c!5365)) (h!80858 ll!14)))))

(declare-fun b!7914941 () Bool)

(declare-fun res!3141456 () Bool)

(declare-fun e!4672093 () Bool)

(assert (=> b!7914941 (=> (not res!3141456) (not e!4672093))))

(declare-fun lt!2689674 () Conc!15864)

(assert (=> b!7914941 (= res!3141456 (<= (height!2183 lt!2689674) (+ (height!2183 c!5365) 1)))))

(declare-fun bm!734343 () Bool)

(declare-fun call!734347 () List!74534)

(declare-fun c!1452300 () Bool)

(declare-fun list!19352 (Conc!15864) List!74534)

(assert (=> bm!734343 (= call!734347 (list!19352 (ite c!1452300 (right!57146 c!5365) (left!56816 c!5365))))))

(declare-fun d!2361415 () Bool)

(assert (=> d!2361415 e!4672093))

(declare-fun res!3141455 () Bool)

(assert (=> d!2361415 (=> (not res!3141455) (not e!4672093))))

(assert (=> d!2361415 (= res!3141455 (isBalanced!4490 lt!2689674))))

(declare-fun e!4672096 () Conc!15864)

(assert (=> d!2361415 (= lt!2689674 e!4672096)))

(declare-fun c!1452302 () Bool)

(assert (=> d!2361415 (= c!1452302 ((_ is Empty!15864) c!5365))))

(assert (=> d!2361415 (isBalanced!4490 c!5365)))

(assert (=> d!2361415 (= (append!1104 c!5365 (h!80858 ll!14)) lt!2689674)))

(declare-fun lt!2689673 () Conc!15864)

(declare-fun bm!734344 () Bool)

(declare-fun call!734349 () List!74534)

(assert (=> bm!734344 (= call!734349 (list!19352 (ite c!1452300 (left!56816 c!5365) (right!57146 lt!2689673))))))

(declare-fun b!7914942 () Bool)

(assert (=> b!7914942 (= e!4672095 call!734353)))

(declare-fun b!7914943 () Bool)

(declare-fun res!3141454 () Bool)

(assert (=> b!7914943 (=> (not res!3141454) (not e!4672093))))

(assert (=> b!7914943 (= res!3141454 (<= (height!2183 c!5365) (height!2183 lt!2689674)))))

(declare-fun lt!2689662 () List!74534)

(declare-fun lt!2689669 () List!74534)

(declare-fun lt!2689666 () List!74534)

(declare-fun bm!734345 () Bool)

(declare-fun call!734354 () List!74534)

(declare-fun call!734350 () List!74534)

(declare-fun ++!18228 (List!74534 List!74534) List!74534)

(assert (=> bm!734345 (= call!734350 (++!18228 (ite c!1452300 lt!2689666 lt!2689662) (ite c!1452300 call!734354 lt!2689669)))))

(declare-fun b!7914944 () Bool)

(assert (=> b!7914944 (= c!1452300 (<= (height!2183 lt!2689673) (+ (height!2183 (left!56816 c!5365)) 1)))))

(assert (=> b!7914944 (= lt!2689673 (append!1104 (right!57146 c!5365) (h!80858 ll!14)))))

(declare-fun e!4672091 () Conc!15864)

(declare-fun e!4672094 () Conc!15864)

(assert (=> b!7914944 (= e!4672091 e!4672094)))

(declare-fun b!7914945 () Bool)

(declare-fun call!734352 () IArray!31789)

(assert (=> b!7914945 (= e!4672096 (Leaf!30177 call!734352 1))))

(declare-fun b!7914946 () Bool)

(declare-fun c!1452298 () Bool)

(assert (=> b!7914946 (= c!1452298 (< (csize!31959 c!5365) 512))))

(assert (=> b!7914946 (= e!4672091 e!4672095)))

(declare-fun b!7914947 () Bool)

(declare-fun call!734351 () Conc!15864)

(assert (=> b!7914947 (= e!4672094 call!734351)))

(assert (=> b!7914947 (= lt!2689666 call!734349)))

(declare-fun lt!2689675 () List!74534)

(assert (=> b!7914947 (= lt!2689675 call!734347)))

(declare-fun lt!2689679 () List!74534)

(assert (=> b!7914947 (= lt!2689679 (Cons!74410 (h!80858 ll!14) Nil!74410))))

(declare-datatypes ((Unit!169523 0))(
  ( (Unit!169524) )
))
(declare-fun lt!2689678 () Unit!169523)

(declare-fun call!734356 () Unit!169523)

(assert (=> b!7914947 (= lt!2689678 call!734356)))

(declare-fun call!734355 () List!74534)

(assert (=> b!7914947 (= call!734355 call!734350)))

(declare-fun lt!2689670 () Unit!169523)

(assert (=> b!7914947 (= lt!2689670 lt!2689678)))

(declare-fun call!734348 () List!74534)

(declare-fun lt!2689677 () List!74534)

(declare-fun bm!734346 () Bool)

(declare-fun lt!2689668 () List!74534)

(assert (=> bm!734346 (= call!734355 (++!18228 (ite c!1452300 call!734348 lt!2689668) (ite c!1452300 lt!2689679 lt!2689677)))))

(declare-fun bm!734347 () Bool)

(declare-fun lt!2689671 () List!74534)

(assert (=> bm!734347 (= call!734348 (++!18228 (ite c!1452300 lt!2689666 lt!2689677) (ite c!1452300 lt!2689675 lt!2689671)))))

(declare-fun bm!734348 () Bool)

(declare-fun fill!247 (Int T!145538) IArray!31789)

(assert (=> bm!734348 (= call!734352 (fill!247 1 (h!80858 ll!14)))))

(declare-fun b!7914948 () Bool)

(assert (=> b!7914948 (= e!4672092 (ite c!1452300 lt!2689673 (left!56816 lt!2689673)))))

(declare-fun bm!734349 () Bool)

(declare-fun lt!2689663 () List!74534)

(declare-fun lemmaConcatAssociativity!3130 (List!74534 List!74534 List!74534) Unit!169523)

(assert (=> bm!734349 (= call!734356 (lemmaConcatAssociativity!3130 (ite c!1452300 lt!2689666 lt!2689662) (ite c!1452300 lt!2689675 lt!2689669) (ite c!1452300 lt!2689679 lt!2689663)))))

(declare-fun bm!734350 () Bool)

(assert (=> bm!734350 (= call!734351 call!734353)))

(declare-fun b!7914949 () Bool)

(assert (=> b!7914949 (= e!4672096 e!4672091)))

(assert (=> b!7914949 (= c!1452299 ((_ is Node!15864) c!5365))))

(declare-fun b!7914950 () Bool)

(assert (=> b!7914950 (= e!4672094 (<>!405 call!734351 (right!57146 lt!2689673)))))

(assert (=> b!7914950 (= lt!2689662 call!734347)))

(assert (=> b!7914950 (= lt!2689669 (list!19352 (left!56816 lt!2689673)))))

(assert (=> b!7914950 (= lt!2689663 call!734349)))

(declare-fun lt!2689665 () Unit!169523)

(assert (=> b!7914950 (= lt!2689665 call!734356)))

(assert (=> b!7914950 (= (++!18228 call!734350 lt!2689663) (++!18228 lt!2689662 call!734354))))

(declare-fun lt!2689664 () Unit!169523)

(assert (=> b!7914950 (= lt!2689664 lt!2689665)))

(assert (=> b!7914950 (= lt!2689668 call!734347)))

(assert (=> b!7914950 (= lt!2689677 (list!19352 (right!57146 c!5365)))))

(assert (=> b!7914950 (= lt!2689671 (Cons!74410 (h!80858 ll!14) Nil!74410))))

(declare-fun lt!2689672 () Unit!169523)

(assert (=> b!7914950 (= lt!2689672 (lemmaConcatAssociativity!3130 lt!2689668 lt!2689677 lt!2689671))))

(assert (=> b!7914950 (= (++!18228 call!734355 lt!2689671) (++!18228 lt!2689668 call!734348))))

(declare-fun lt!2689667 () Unit!169523)

(assert (=> b!7914950 (= lt!2689667 lt!2689672)))

(declare-fun b!7914951 () Bool)

(assert (=> b!7914951 (= e!4672092 (Leaf!30177 call!734352 1))))

(declare-fun bm!734351 () Bool)

(assert (=> bm!734351 (= call!734354 (++!18228 (ite c!1452300 lt!2689675 lt!2689669) (ite c!1452300 lt!2689679 lt!2689663)))))

(declare-fun b!7914952 () Bool)

(assert (=> b!7914952 (= e!4672093 (= (list!19352 lt!2689674) ($colon+!291 (list!19352 c!5365) (h!80858 ll!14))))))

(assert (= (and d!2361415 c!1452302) b!7914945))

(assert (= (and d!2361415 (not c!1452302)) b!7914949))

(assert (= (and b!7914949 c!1452299) b!7914944))

(assert (= (and b!7914949 (not c!1452299)) b!7914946))

(assert (= (and b!7914944 c!1452300) b!7914947))

(assert (= (and b!7914944 (not c!1452300)) b!7914950))

(assert (= (or b!7914947 b!7914950) bm!734350))

(assert (= (or b!7914947 b!7914950) bm!734344))

(assert (= (or b!7914947 b!7914950) bm!734343))

(assert (= (or b!7914947 b!7914950) bm!734349))

(assert (= (or b!7914947 b!7914950) bm!734351))

(assert (= (or b!7914947 b!7914950) bm!734347))

(assert (= (or b!7914947 b!7914950) bm!734346))

(assert (= (or b!7914947 b!7914950) bm!734345))

(assert (= (and b!7914946 c!1452298) b!7914940))

(assert (= (and b!7914946 (not c!1452298)) b!7914942))

(assert (= (or bm!734350 b!7914942) bm!734342))

(assert (= (and bm!734342 c!1452301) b!7914948))

(assert (= (and bm!734342 (not c!1452301)) b!7914951))

(assert (= (or b!7914945 b!7914951) bm!734348))

(assert (= (and d!2361415 res!3141455) b!7914943))

(assert (= (and b!7914943 res!3141454) b!7914941))

(assert (= (and b!7914941 res!3141456) b!7914952))

(declare-fun m!8288888 () Bool)

(assert (=> bm!734343 m!8288888))

(declare-fun m!8288890 () Bool)

(assert (=> bm!734344 m!8288890))

(declare-fun m!8288892 () Bool)

(assert (=> b!7914950 m!8288892))

(declare-fun m!8288894 () Bool)

(assert (=> b!7914950 m!8288894))

(declare-fun m!8288896 () Bool)

(assert (=> b!7914950 m!8288896))

(declare-fun m!8288898 () Bool)

(assert (=> b!7914950 m!8288898))

(declare-fun m!8288900 () Bool)

(assert (=> b!7914950 m!8288900))

(declare-fun m!8288902 () Bool)

(assert (=> b!7914950 m!8288902))

(declare-fun m!8288904 () Bool)

(assert (=> b!7914950 m!8288904))

(declare-fun m!8288906 () Bool)

(assert (=> b!7914950 m!8288906))

(declare-fun m!8288908 () Bool)

(assert (=> b!7914944 m!8288908))

(declare-fun m!8288910 () Bool)

(assert (=> b!7914944 m!8288910))

(declare-fun m!8288912 () Bool)

(assert (=> b!7914944 m!8288912))

(declare-fun m!8288914 () Bool)

(assert (=> bm!734351 m!8288914))

(declare-fun m!8288916 () Bool)

(assert (=> b!7914943 m!8288916))

(declare-fun m!8288918 () Bool)

(assert (=> b!7914943 m!8288918))

(declare-fun m!8288920 () Bool)

(assert (=> b!7914952 m!8288920))

(declare-fun m!8288922 () Bool)

(assert (=> b!7914952 m!8288922))

(assert (=> b!7914952 m!8288922))

(declare-fun m!8288924 () Bool)

(assert (=> b!7914952 m!8288924))

(declare-fun m!8288926 () Bool)

(assert (=> bm!734347 m!8288926))

(assert (=> b!7914941 m!8288918))

(assert (=> b!7914941 m!8288916))

(declare-fun m!8288928 () Bool)

(assert (=> bm!734349 m!8288928))

(declare-fun m!8288930 () Bool)

(assert (=> bm!734348 m!8288930))

(declare-fun m!8288932 () Bool)

(assert (=> b!7914940 m!8288932))

(declare-fun m!8288934 () Bool)

(assert (=> b!7914940 m!8288934))

(assert (=> b!7914940 m!8288934))

(declare-fun m!8288936 () Bool)

(assert (=> b!7914940 m!8288936))

(declare-fun m!8288938 () Bool)

(assert (=> d!2361415 m!8288938))

(assert (=> d!2361415 m!8288798))

(declare-fun m!8288940 () Bool)

(assert (=> bm!734342 m!8288940))

(declare-fun m!8288942 () Bool)

(assert (=> bm!734346 m!8288942))

(declare-fun m!8288944 () Bool)

(assert (=> bm!734345 m!8288944))

(assert (=> b!7914834 d!2361415))

(declare-fun d!2361419 () Bool)

(declare-fun c!1452309 () Bool)

(assert (=> d!2361419 (= c!1452309 ((_ is Node!15864) (left!56816 c!5365)))))

(declare-fun e!4672109 () Bool)

(assert (=> d!2361419 (= (inv!95520 (left!56816 c!5365)) e!4672109)))

(declare-fun b!7914971 () Bool)

(declare-fun inv!95523 (Conc!15864) Bool)

(assert (=> b!7914971 (= e!4672109 (inv!95523 (left!56816 c!5365)))))

(declare-fun b!7914972 () Bool)

(declare-fun e!4672110 () Bool)

(assert (=> b!7914972 (= e!4672109 e!4672110)))

(declare-fun res!3141463 () Bool)

(assert (=> b!7914972 (= res!3141463 (not ((_ is Leaf!30177) (left!56816 c!5365))))))

(assert (=> b!7914972 (=> res!3141463 e!4672110)))

(declare-fun b!7914973 () Bool)

(declare-fun inv!95525 (Conc!15864) Bool)

(assert (=> b!7914973 (= e!4672110 (inv!95525 (left!56816 c!5365)))))

(assert (= (and d!2361419 c!1452309) b!7914971))

(assert (= (and d!2361419 (not c!1452309)) b!7914972))

(assert (= (and b!7914972 (not res!3141463)) b!7914973))

(declare-fun m!8288954 () Bool)

(assert (=> b!7914971 m!8288954))

(declare-fun m!8288956 () Bool)

(assert (=> b!7914973 m!8288956))

(assert (=> b!7914835 d!2361419))

(declare-fun d!2361425 () Bool)

(declare-fun c!1452310 () Bool)

(assert (=> d!2361425 (= c!1452310 ((_ is Node!15864) (right!57146 c!5365)))))

(declare-fun e!4672111 () Bool)

(assert (=> d!2361425 (= (inv!95520 (right!57146 c!5365)) e!4672111)))

(declare-fun b!7914974 () Bool)

(assert (=> b!7914974 (= e!4672111 (inv!95523 (right!57146 c!5365)))))

(declare-fun b!7914975 () Bool)

(declare-fun e!4672112 () Bool)

(assert (=> b!7914975 (= e!4672111 e!4672112)))

(declare-fun res!3141464 () Bool)

(assert (=> b!7914975 (= res!3141464 (not ((_ is Leaf!30177) (right!57146 c!5365))))))

(assert (=> b!7914975 (=> res!3141464 e!4672112)))

(declare-fun b!7914976 () Bool)

(assert (=> b!7914976 (= e!4672112 (inv!95525 (right!57146 c!5365)))))

(assert (= (and d!2361425 c!1452310) b!7914974))

(assert (= (and d!2361425 (not c!1452310)) b!7914975))

(assert (= (and b!7914975 (not res!3141464)) b!7914976))

(declare-fun m!8288960 () Bool)

(assert (=> b!7914974 m!8288960))

(declare-fun m!8288962 () Bool)

(assert (=> b!7914976 m!8288962))

(assert (=> b!7914835 d!2361425))

(declare-fun b!7914978 () Bool)

(declare-fun e!4672116 () Bool)

(declare-fun e!4672115 () Bool)

(assert (=> b!7914978 (= e!4672116 e!4672115)))

(declare-fun res!3141472 () Bool)

(assert (=> b!7914978 (=> (not res!3141472) (not e!4672115))))

(assert (=> b!7914978 (= res!3141472 (<= (- 1) (- (height!2183 (left!56816 c!5365)) (height!2183 (right!57146 c!5365)))))))

(declare-fun b!7914980 () Bool)

(assert (=> b!7914980 (= e!4672115 (not (isEmpty!42729 (right!57146 c!5365))))))

(declare-fun b!7914983 () Bool)

(declare-fun res!3141474 () Bool)

(assert (=> b!7914983 (=> (not res!3141474) (not e!4672115))))

(assert (=> b!7914983 (= res!3141474 (<= (- (height!2183 (left!56816 c!5365)) (height!2183 (right!57146 c!5365))) 1))))

(declare-fun d!2361429 () Bool)

(declare-fun res!3141468 () Bool)

(assert (=> d!2361429 (=> res!3141468 e!4672116)))

(assert (=> d!2361429 (= res!3141468 (not ((_ is Node!15864) c!5365)))))

(assert (=> d!2361429 (= (isBalanced!4490 c!5365) e!4672116)))

(declare-fun b!7914985 () Bool)

(declare-fun res!3141466 () Bool)

(assert (=> b!7914985 (=> (not res!3141466) (not e!4672115))))

(assert (=> b!7914985 (= res!3141466 (not (isEmpty!42729 (left!56816 c!5365))))))

(declare-fun b!7914987 () Bool)

(declare-fun res!3141470 () Bool)

(assert (=> b!7914987 (=> (not res!3141470) (not e!4672115))))

(assert (=> b!7914987 (= res!3141470 (isBalanced!4490 (right!57146 c!5365)))))

(declare-fun b!7914988 () Bool)

(declare-fun res!3141469 () Bool)

(assert (=> b!7914988 (=> (not res!3141469) (not e!4672115))))

(assert (=> b!7914988 (= res!3141469 (isBalanced!4490 (left!56816 c!5365)))))

(assert (= (and d!2361429 (not res!3141468)) b!7914978))

(assert (= (and b!7914978 res!3141472) b!7914983))

(assert (= (and b!7914983 res!3141474) b!7914988))

(assert (= (and b!7914988 res!3141469) b!7914987))

(assert (= (and b!7914987 res!3141470) b!7914985))

(assert (= (and b!7914985 res!3141466) b!7914980))

(declare-fun m!8288964 () Bool)

(assert (=> b!7914988 m!8288964))

(assert (=> b!7914983 m!8288910))

(declare-fun m!8288968 () Bool)

(assert (=> b!7914983 m!8288968))

(declare-fun m!8288970 () Bool)

(assert (=> b!7914987 m!8288970))

(declare-fun m!8288974 () Bool)

(assert (=> b!7914985 m!8288974))

(declare-fun m!8288976 () Bool)

(assert (=> b!7914980 m!8288976))

(assert (=> b!7914978 m!8288910))

(assert (=> b!7914978 m!8288968))

(assert (=> start!747538 d!2361429))

(declare-fun d!2361431 () Bool)

(declare-fun c!1452311 () Bool)

(assert (=> d!2361431 (= c!1452311 ((_ is Node!15864) c!5365))))

(declare-fun e!4672117 () Bool)

(assert (=> d!2361431 (= (inv!95520 c!5365) e!4672117)))

(declare-fun b!7914989 () Bool)

(assert (=> b!7914989 (= e!4672117 (inv!95523 c!5365))))

(declare-fun b!7914990 () Bool)

(declare-fun e!4672118 () Bool)

(assert (=> b!7914990 (= e!4672117 e!4672118)))

(declare-fun res!3141477 () Bool)

(assert (=> b!7914990 (= res!3141477 (not ((_ is Leaf!30177) c!5365)))))

(assert (=> b!7914990 (=> res!3141477 e!4672118)))

(declare-fun b!7914991 () Bool)

(assert (=> b!7914991 (= e!4672118 (inv!95525 c!5365))))

(assert (= (and d!2361431 c!1452311) b!7914989))

(assert (= (and d!2361431 (not c!1452311)) b!7914990))

(assert (= (and b!7914990 (not res!3141477)) b!7914991))

(declare-fun m!8288984 () Bool)

(assert (=> b!7914989 m!8288984))

(declare-fun m!8288986 () Bool)

(assert (=> b!7914991 m!8288986))

(assert (=> start!747538 d!2361431))

(declare-fun b!7915004 () Bool)

(declare-fun e!4672126 () Bool)

(declare-fun tp!2357208 () Bool)

(assert (=> b!7915004 (= e!4672126 (and tp_is_empty!53153 tp!2357208))))

(assert (=> b!7914838 (= tp!2357202 e!4672126)))

(assert (= (and b!7914838 ((_ is Cons!74410) (innerList!15952 (xs!19246 c!5365)))) b!7915004))

(declare-fun b!7915006 () Bool)

(declare-fun e!4672127 () Bool)

(declare-fun tp!2357209 () Bool)

(assert (=> b!7915006 (= e!4672127 (and tp_is_empty!53153 tp!2357209))))

(assert (=> b!7914833 (= tp!2357201 e!4672127)))

(assert (= (and b!7914833 ((_ is Cons!74410) (t!390025 ll!14))) b!7915006))

(declare-fun b!7915025 () Bool)

(declare-fun e!4672139 () Bool)

(declare-fun tp!2357225 () Bool)

(declare-fun tp!2357226 () Bool)

(assert (=> b!7915025 (= e!4672139 (and (inv!95520 (left!56816 (left!56816 c!5365))) tp!2357226 (inv!95520 (right!57146 (left!56816 c!5365))) tp!2357225))))

(declare-fun b!7915027 () Bool)

(declare-fun e!4672138 () Bool)

(declare-fun tp!2357227 () Bool)

(assert (=> b!7915027 (= e!4672138 tp!2357227)))

(declare-fun b!7915026 () Bool)

(assert (=> b!7915026 (= e!4672139 (and (inv!95521 (xs!19246 (left!56816 c!5365))) e!4672138))))

(assert (=> b!7914835 (= tp!2357199 (and (inv!95520 (left!56816 c!5365)) e!4672139))))

(assert (= (and b!7914835 ((_ is Node!15864) (left!56816 c!5365))) b!7915025))

(assert (= b!7915026 b!7915027))

(assert (= (and b!7914835 ((_ is Leaf!30177) (left!56816 c!5365))) b!7915026))

(declare-fun m!8288994 () Bool)

(assert (=> b!7915025 m!8288994))

(declare-fun m!8288998 () Bool)

(assert (=> b!7915025 m!8288998))

(declare-fun m!8289002 () Bool)

(assert (=> b!7915026 m!8289002))

(assert (=> b!7914835 m!8288794))

(declare-fun b!7915029 () Bool)

(declare-fun tp!2357230 () Bool)

(declare-fun tp!2357231 () Bool)

(declare-fun e!4672143 () Bool)

(assert (=> b!7915029 (= e!4672143 (and (inv!95520 (left!56816 (right!57146 c!5365))) tp!2357231 (inv!95520 (right!57146 (right!57146 c!5365))) tp!2357230))))

(declare-fun b!7915033 () Bool)

(declare-fun e!4672140 () Bool)

(declare-fun tp!2357233 () Bool)

(assert (=> b!7915033 (= e!4672140 tp!2357233)))

(declare-fun b!7915031 () Bool)

(assert (=> b!7915031 (= e!4672143 (and (inv!95521 (xs!19246 (right!57146 c!5365))) e!4672140))))

(assert (=> b!7914835 (= tp!2357200 (and (inv!95520 (right!57146 c!5365)) e!4672143))))

(assert (= (and b!7914835 ((_ is Node!15864) (right!57146 c!5365))) b!7915029))

(assert (= b!7915031 b!7915033))

(assert (= (and b!7914835 ((_ is Leaf!30177) (right!57146 c!5365))) b!7915031))

(declare-fun m!8289004 () Bool)

(assert (=> b!7915029 m!8289004))

(declare-fun m!8289008 () Bool)

(assert (=> b!7915029 m!8289008))

(declare-fun m!8289012 () Bool)

(assert (=> b!7915031 m!8289012))

(assert (=> b!7914835 m!8288796))

(check-sat (not bm!734348) (not b!7914873) (not bm!734342) (not b!7914987) (not d!2361415) (not bm!734347) (not b!7914835) (not b!7914943) (not b!7914950) (not b!7914872) (not bm!734343) (not b!7914985) (not b!7914973) (not b!7914980) (not b!7914871) (not b!7914991) (not b!7915026) (not b!7914983) (not bm!734346) (not b!7915006) (not bm!734349) (not b!7914989) (not b!7914870) tp_is_empty!53153 (not d!2361408) (not b!7915025) (not bm!734345) (not b!7915029) (not b!7914952) (not bm!734351) (not b!7914874) (not b!7914978) (not bm!734344) (not b!7914974) (not b!7915004) (not b!7915031) (not b!7914971) (not b!7915033) (not b!7914941) (not b!7914988) (not b!7914976) (not b!7914940) (not b!7914869) (not b!7915027) (not b!7914944))
(check-sat)
