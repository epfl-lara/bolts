; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755124 () Bool)

(assert start!755124)

(declare-fun b!8021847 () Bool)

(declare-fun e!4725556 () Bool)

(declare-fun tp_is_empty!54093 () Bool)

(declare-fun tp!2400841 () Bool)

(assert (=> b!8021847 (= e!4725556 (and tp_is_empty!54093 tp!2400841))))

(declare-fun b!8021848 () Bool)

(declare-fun e!4725558 () Bool)

(declare-fun tp!2400840 () Bool)

(assert (=> b!8021848 (= e!4725558 (and tp_is_empty!54093 tp!2400840))))

(declare-fun b!8021849 () Bool)

(declare-fun res!3171989 () Bool)

(declare-fun e!4725560 () Bool)

(assert (=> b!8021849 (=> (not res!3171989) (not e!4725560))))

(declare-datatypes ((B!4205 0))(
  ( (B!4206 (val!32492 Int)) )
))
(declare-datatypes ((List!75004 0))(
  ( (Nil!74880) (Cons!74880 (h!81328 B!4205) (t!390747 List!75004)) )
))
(declare-fun l!3411 () List!75004)

(declare-fun p1!179 () List!75004)

(declare-fun s1!490 () List!75004)

(declare-fun ++!18548 (List!75004 List!75004) List!75004)

(assert (=> b!8021849 (= res!3171989 (= (++!18548 p1!179 s1!490) l!3411))))

(declare-fun b!8021850 () Bool)

(declare-fun e!4725561 () Bool)

(declare-fun tp!2400838 () Bool)

(assert (=> b!8021850 (= e!4725561 (and tp_is_empty!54093 tp!2400838))))

(declare-fun res!3171991 () Bool)

(assert (=> start!755124 (=> (not res!3171991) (not e!4725560))))

(declare-fun isPrefix!6811 (List!75004 List!75004) Bool)

(assert (=> start!755124 (= res!3171991 (isPrefix!6811 p1!179 l!3411))))

(assert (=> start!755124 e!4725560))

(declare-fun e!4725557 () Bool)

(assert (=> start!755124 e!4725557))

(declare-fun e!4725559 () Bool)

(assert (=> start!755124 e!4725559))

(assert (=> start!755124 e!4725561))

(assert (=> start!755124 e!4725558))

(assert (=> start!755124 e!4725556))

(declare-fun b!8021851 () Bool)

(declare-fun tp!2400839 () Bool)

(assert (=> b!8021851 (= e!4725559 (and tp_is_empty!54093 tp!2400839))))

(declare-fun p2!179 () List!75004)

(declare-fun b!8021852 () Bool)

(get-info :version)

(assert (=> b!8021852 (= e!4725560 (and (= p1!179 p2!179) ((_ is Cons!74880) p1!179) (= l!3411 Nil!74880)))))

(declare-fun b!8021853 () Bool)

(declare-fun res!3171992 () Bool)

(assert (=> b!8021853 (=> (not res!3171992) (not e!4725560))))

(assert (=> b!8021853 (= res!3171992 (isPrefix!6811 p2!179 l!3411))))

(declare-fun b!8021854 () Bool)

(declare-fun tp!2400837 () Bool)

(assert (=> b!8021854 (= e!4725557 (and tp_is_empty!54093 tp!2400837))))

(declare-fun b!8021855 () Bool)

(declare-fun res!3171990 () Bool)

(assert (=> b!8021855 (=> (not res!3171990) (not e!4725560))))

(declare-fun s2!455 () List!75004)

(assert (=> b!8021855 (= res!3171990 (= (++!18548 p2!179 s2!455) l!3411))))

(assert (= (and start!755124 res!3171991) b!8021853))

(assert (= (and b!8021853 res!3171992) b!8021849))

(assert (= (and b!8021849 res!3171989) b!8021855))

(assert (= (and b!8021855 res!3171990) b!8021852))

(assert (= (and start!755124 ((_ is Cons!74880) p2!179)) b!8021854))

(assert (= (and start!755124 ((_ is Cons!74880) s2!455)) b!8021851))

(assert (= (and start!755124 ((_ is Cons!74880) l!3411)) b!8021850))

(assert (= (and start!755124 ((_ is Cons!74880) p1!179)) b!8021848))

(assert (= (and start!755124 ((_ is Cons!74880) s1!490)) b!8021847))

(declare-fun m!8384638 () Bool)

(assert (=> b!8021849 m!8384638))

(declare-fun m!8384640 () Bool)

(assert (=> start!755124 m!8384640))

(declare-fun m!8384642 () Bool)

(assert (=> b!8021853 m!8384642))

(declare-fun m!8384644 () Bool)

(assert (=> b!8021855 m!8384644))

(check-sat (not b!8021854) (not b!8021848) (not b!8021851) (not b!8021850) (not b!8021855) (not b!8021853) (not b!8021847) (not b!8021849) tp_is_empty!54093 (not start!755124))
(check-sat)
(get-model)

(declare-fun d!2392108 () Bool)

(declare-fun e!4725582 () Bool)

(assert (=> d!2392108 e!4725582))

(declare-fun res!3172017 () Bool)

(assert (=> d!2392108 (=> res!3172017 e!4725582)))

(declare-fun lt!2720137 () Bool)

(assert (=> d!2392108 (= res!3172017 (not lt!2720137))))

(declare-fun e!4725581 () Bool)

(assert (=> d!2392108 (= lt!2720137 e!4725581)))

(declare-fun res!3172019 () Bool)

(assert (=> d!2392108 (=> res!3172019 e!4725581)))

(assert (=> d!2392108 (= res!3172019 ((_ is Nil!74880) p2!179))))

(assert (=> d!2392108 (= (isPrefix!6811 p2!179 l!3411) lt!2720137)))

(declare-fun b!8021883 () Bool)

(declare-fun size!43663 (List!75004) Int)

(assert (=> b!8021883 (= e!4725582 (>= (size!43663 l!3411) (size!43663 p2!179)))))

(declare-fun b!8021880 () Bool)

(declare-fun e!4725580 () Bool)

(assert (=> b!8021880 (= e!4725581 e!4725580)))

(declare-fun res!3172020 () Bool)

(assert (=> b!8021880 (=> (not res!3172020) (not e!4725580))))

(assert (=> b!8021880 (= res!3172020 (not ((_ is Nil!74880) l!3411)))))

(declare-fun b!8021882 () Bool)

(declare-fun tail!15950 (List!75004) List!75004)

(assert (=> b!8021882 (= e!4725580 (isPrefix!6811 (tail!15950 p2!179) (tail!15950 l!3411)))))

(declare-fun b!8021881 () Bool)

(declare-fun res!3172018 () Bool)

(assert (=> b!8021881 (=> (not res!3172018) (not e!4725580))))

(declare-fun head!16415 (List!75004) B!4205)

(assert (=> b!8021881 (= res!3172018 (= (head!16415 p2!179) (head!16415 l!3411)))))

(assert (= (and d!2392108 (not res!3172019)) b!8021880))

(assert (= (and b!8021880 res!3172020) b!8021881))

(assert (= (and b!8021881 res!3172018) b!8021882))

(assert (= (and d!2392108 (not res!3172017)) b!8021883))

(declare-fun m!8384668 () Bool)

(assert (=> b!8021883 m!8384668))

(declare-fun m!8384670 () Bool)

(assert (=> b!8021883 m!8384670))

(declare-fun m!8384672 () Bool)

(assert (=> b!8021882 m!8384672))

(declare-fun m!8384674 () Bool)

(assert (=> b!8021882 m!8384674))

(assert (=> b!8021882 m!8384672))

(assert (=> b!8021882 m!8384674))

(declare-fun m!8384676 () Bool)

(assert (=> b!8021882 m!8384676))

(declare-fun m!8384678 () Bool)

(assert (=> b!8021881 m!8384678))

(declare-fun m!8384680 () Bool)

(assert (=> b!8021881 m!8384680))

(assert (=> b!8021853 d!2392108))

(declare-fun b!8021918 () Bool)

(declare-fun res!3172033 () Bool)

(declare-fun e!4725600 () Bool)

(assert (=> b!8021918 (=> (not res!3172033) (not e!4725600))))

(declare-fun lt!2720144 () List!75004)

(assert (=> b!8021918 (= res!3172033 (= (size!43663 lt!2720144) (+ (size!43663 p1!179) (size!43663 s1!490))))))

(declare-fun b!8021916 () Bool)

(declare-fun e!4725601 () List!75004)

(assert (=> b!8021916 (= e!4725601 s1!490)))

(declare-fun b!8021919 () Bool)

(assert (=> b!8021919 (= e!4725600 (or (not (= s1!490 Nil!74880)) (= lt!2720144 p1!179)))))

(declare-fun d!2392114 () Bool)

(assert (=> d!2392114 e!4725600))

(declare-fun res!3172034 () Bool)

(assert (=> d!2392114 (=> (not res!3172034) (not e!4725600))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15938 (List!75004) (InoxSet B!4205))

(assert (=> d!2392114 (= res!3172034 (= (content!15938 lt!2720144) ((_ map or) (content!15938 p1!179) (content!15938 s1!490))))))

(assert (=> d!2392114 (= lt!2720144 e!4725601)))

(declare-fun c!1472174 () Bool)

(assert (=> d!2392114 (= c!1472174 ((_ is Nil!74880) p1!179))))

(assert (=> d!2392114 (= (++!18548 p1!179 s1!490) lt!2720144)))

(declare-fun b!8021917 () Bool)

(assert (=> b!8021917 (= e!4725601 (Cons!74880 (h!81328 p1!179) (++!18548 (t!390747 p1!179) s1!490)))))

(assert (= (and d!2392114 c!1472174) b!8021916))

(assert (= (and d!2392114 (not c!1472174)) b!8021917))

(assert (= (and d!2392114 res!3172034) b!8021918))

(assert (= (and b!8021918 res!3172033) b!8021919))

(declare-fun m!8384706 () Bool)

(assert (=> b!8021918 m!8384706))

(declare-fun m!8384708 () Bool)

(assert (=> b!8021918 m!8384708))

(declare-fun m!8384710 () Bool)

(assert (=> b!8021918 m!8384710))

(declare-fun m!8384712 () Bool)

(assert (=> d!2392114 m!8384712))

(declare-fun m!8384714 () Bool)

(assert (=> d!2392114 m!8384714))

(declare-fun m!8384716 () Bool)

(assert (=> d!2392114 m!8384716))

(declare-fun m!8384718 () Bool)

(assert (=> b!8021917 m!8384718))

(assert (=> b!8021849 d!2392114))

(declare-fun d!2392118 () Bool)

(declare-fun e!4725606 () Bool)

(assert (=> d!2392118 e!4725606))

(declare-fun res!3172035 () Bool)

(assert (=> d!2392118 (=> res!3172035 e!4725606)))

(declare-fun lt!2720145 () Bool)

(assert (=> d!2392118 (= res!3172035 (not lt!2720145))))

(declare-fun e!4725605 () Bool)

(assert (=> d!2392118 (= lt!2720145 e!4725605)))

(declare-fun res!3172037 () Bool)

(assert (=> d!2392118 (=> res!3172037 e!4725605)))

(assert (=> d!2392118 (= res!3172037 ((_ is Nil!74880) p1!179))))

(assert (=> d!2392118 (= (isPrefix!6811 p1!179 l!3411) lt!2720145)))

(declare-fun b!8021924 () Bool)

(assert (=> b!8021924 (= e!4725606 (>= (size!43663 l!3411) (size!43663 p1!179)))))

(declare-fun b!8021921 () Bool)

(declare-fun e!4725604 () Bool)

(assert (=> b!8021921 (= e!4725605 e!4725604)))

(declare-fun res!3172038 () Bool)

(assert (=> b!8021921 (=> (not res!3172038) (not e!4725604))))

(assert (=> b!8021921 (= res!3172038 (not ((_ is Nil!74880) l!3411)))))

(declare-fun b!8021923 () Bool)

(assert (=> b!8021923 (= e!4725604 (isPrefix!6811 (tail!15950 p1!179) (tail!15950 l!3411)))))

(declare-fun b!8021922 () Bool)

(declare-fun res!3172036 () Bool)

(assert (=> b!8021922 (=> (not res!3172036) (not e!4725604))))

(assert (=> b!8021922 (= res!3172036 (= (head!16415 p1!179) (head!16415 l!3411)))))

(assert (= (and d!2392118 (not res!3172037)) b!8021921))

(assert (= (and b!8021921 res!3172038) b!8021922))

(assert (= (and b!8021922 res!3172036) b!8021923))

(assert (= (and d!2392118 (not res!3172035)) b!8021924))

(assert (=> b!8021924 m!8384668))

(assert (=> b!8021924 m!8384708))

(declare-fun m!8384720 () Bool)

(assert (=> b!8021923 m!8384720))

(assert (=> b!8021923 m!8384674))

(assert (=> b!8021923 m!8384720))

(assert (=> b!8021923 m!8384674))

(declare-fun m!8384722 () Bool)

(assert (=> b!8021923 m!8384722))

(declare-fun m!8384724 () Bool)

(assert (=> b!8021922 m!8384724))

(assert (=> b!8021922 m!8384680))

(assert (=> start!755124 d!2392118))

(declare-fun b!8021927 () Bool)

(declare-fun res!3172039 () Bool)

(declare-fun e!4725607 () Bool)

(assert (=> b!8021927 (=> (not res!3172039) (not e!4725607))))

(declare-fun lt!2720146 () List!75004)

(assert (=> b!8021927 (= res!3172039 (= (size!43663 lt!2720146) (+ (size!43663 p2!179) (size!43663 s2!455))))))

(declare-fun b!8021925 () Bool)

(declare-fun e!4725608 () List!75004)

(assert (=> b!8021925 (= e!4725608 s2!455)))

(declare-fun b!8021928 () Bool)

(assert (=> b!8021928 (= e!4725607 (or (not (= s2!455 Nil!74880)) (= lt!2720146 p2!179)))))

(declare-fun d!2392120 () Bool)

(assert (=> d!2392120 e!4725607))

(declare-fun res!3172040 () Bool)

(assert (=> d!2392120 (=> (not res!3172040) (not e!4725607))))

(assert (=> d!2392120 (= res!3172040 (= (content!15938 lt!2720146) ((_ map or) (content!15938 p2!179) (content!15938 s2!455))))))

(assert (=> d!2392120 (= lt!2720146 e!4725608)))

(declare-fun c!1472175 () Bool)

(assert (=> d!2392120 (= c!1472175 ((_ is Nil!74880) p2!179))))

(assert (=> d!2392120 (= (++!18548 p2!179 s2!455) lt!2720146)))

(declare-fun b!8021926 () Bool)

(assert (=> b!8021926 (= e!4725608 (Cons!74880 (h!81328 p2!179) (++!18548 (t!390747 p2!179) s2!455)))))

(assert (= (and d!2392120 c!1472175) b!8021925))

(assert (= (and d!2392120 (not c!1472175)) b!8021926))

(assert (= (and d!2392120 res!3172040) b!8021927))

(assert (= (and b!8021927 res!3172039) b!8021928))

(declare-fun m!8384726 () Bool)

(assert (=> b!8021927 m!8384726))

(assert (=> b!8021927 m!8384670))

(declare-fun m!8384728 () Bool)

(assert (=> b!8021927 m!8384728))

(declare-fun m!8384730 () Bool)

(assert (=> d!2392120 m!8384730))

(declare-fun m!8384732 () Bool)

(assert (=> d!2392120 m!8384732))

(declare-fun m!8384734 () Bool)

(assert (=> d!2392120 m!8384734))

(declare-fun m!8384736 () Bool)

(assert (=> b!8021926 m!8384736))

(assert (=> b!8021855 d!2392120))

(declare-fun b!8021933 () Bool)

(declare-fun e!4725611 () Bool)

(declare-fun tp!2400851 () Bool)

(assert (=> b!8021933 (= e!4725611 (and tp_is_empty!54093 tp!2400851))))

(assert (=> b!8021848 (= tp!2400840 e!4725611)))

(assert (= (and b!8021848 ((_ is Cons!74880) (t!390747 p1!179))) b!8021933))

(declare-fun b!8021934 () Bool)

(declare-fun e!4725612 () Bool)

(declare-fun tp!2400852 () Bool)

(assert (=> b!8021934 (= e!4725612 (and tp_is_empty!54093 tp!2400852))))

(assert (=> b!8021847 (= tp!2400841 e!4725612)))

(assert (= (and b!8021847 ((_ is Cons!74880) (t!390747 s1!490))) b!8021934))

(declare-fun b!8021935 () Bool)

(declare-fun e!4725613 () Bool)

(declare-fun tp!2400853 () Bool)

(assert (=> b!8021935 (= e!4725613 (and tp_is_empty!54093 tp!2400853))))

(assert (=> b!8021854 (= tp!2400837 e!4725613)))

(assert (= (and b!8021854 ((_ is Cons!74880) (t!390747 p2!179))) b!8021935))

(declare-fun b!8021936 () Bool)

(declare-fun e!4725614 () Bool)

(declare-fun tp!2400854 () Bool)

(assert (=> b!8021936 (= e!4725614 (and tp_is_empty!54093 tp!2400854))))

(assert (=> b!8021850 (= tp!2400838 e!4725614)))

(assert (= (and b!8021850 ((_ is Cons!74880) (t!390747 l!3411))) b!8021936))

(declare-fun b!8021937 () Bool)

(declare-fun e!4725615 () Bool)

(declare-fun tp!2400855 () Bool)

(assert (=> b!8021937 (= e!4725615 (and tp_is_empty!54093 tp!2400855))))

(assert (=> b!8021851 (= tp!2400839 e!4725615)))

(assert (= (and b!8021851 ((_ is Cons!74880) (t!390747 s2!455))) b!8021937))

(check-sat (not b!8021922) (not b!8021936) (not b!8021918) (not b!8021883) (not b!8021923) tp_is_empty!54093 (not b!8021882) (not b!8021924) (not b!8021917) (not d!2392120) (not b!8021937) (not b!8021927) (not b!8021881) (not d!2392114) (not b!8021933) (not b!8021926) (not b!8021935) (not b!8021934))
(check-sat)
