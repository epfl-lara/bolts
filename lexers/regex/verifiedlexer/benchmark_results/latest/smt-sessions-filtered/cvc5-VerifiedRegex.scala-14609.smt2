; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!756182 () Bool)

(assert start!756182)

(declare-fun b!8028568 () Bool)

(declare-fun e!4729900 () Bool)

(declare-fun tp_is_empty!54335 () Bool)

(declare-fun tp!2402553 () Bool)

(assert (=> b!8028568 (= e!4729900 (and tp_is_empty!54335 tp!2402553))))

(declare-fun b!8028569 () Bool)

(declare-fun res!3175238 () Bool)

(declare-fun e!4729902 () Bool)

(assert (=> b!8028569 (=> (not res!3175238) (not e!4729902))))

(declare-datatypes ((B!4431 0))(
  ( (B!4432 (val!32615 Int)) )
))
(declare-datatypes ((List!75131 0))(
  ( (Nil!75005) (Cons!75005 (h!81453 B!4431) (t!390887 List!75131)) )
))
(declare-fun s1!480 () List!75131)

(declare-fun isEmpty!43013 (List!75131) Bool)

(assert (=> b!8028569 (= res!3175238 (not (isEmpty!43013 s1!480)))))

(declare-fun b!8028570 () Bool)

(declare-fun e!4729901 () Bool)

(declare-fun tp!2402554 () Bool)

(assert (=> b!8028570 (= e!4729901 (and tp_is_empty!54335 tp!2402554))))

(declare-fun b!8028572 () Bool)

(declare-fun e!4729899 () Bool)

(declare-fun tp!2402555 () Bool)

(assert (=> b!8028572 (= e!4729899 (and tp_is_empty!54335 tp!2402555))))

(declare-fun b!8028573 () Bool)

(declare-fun e!4729904 () Bool)

(declare-fun tp!2402552 () Bool)

(assert (=> b!8028573 (= e!4729904 (and tp_is_empty!54335 tp!2402552))))

(declare-fun b!8028574 () Bool)

(declare-fun e!4729903 () Bool)

(assert (=> b!8028574 (= e!4729902 (not e!4729903))))

(declare-fun res!3175234 () Bool)

(assert (=> b!8028574 (=> res!3175234 e!4729903)))

(declare-fun p1!159 () List!75131)

(assert (=> b!8028574 (= res!3175234 (is-Cons!75005 p1!159))))

(declare-fun lt!2721619 () List!75131)

(declare-fun isPrefix!6880 (List!75131 List!75131) Bool)

(assert (=> b!8028574 (isPrefix!6880 p1!159 lt!2721619)))

(declare-datatypes ((Unit!170994 0))(
  ( (Unit!170995) )
))
(declare-fun lt!2721620 () Unit!170994)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3999 (List!75131 List!75131) Unit!170994)

(assert (=> b!8028574 (= lt!2721620 (lemmaConcatTwoListThenFirstIsPrefix!3999 p1!159 s1!480))))

(declare-fun b!8028575 () Bool)

(declare-fun res!3175237 () Bool)

(assert (=> b!8028575 (=> (not res!3175237) (not e!4729902))))

(declare-fun p2!159 () List!75131)

(declare-fun size!43740 (List!75131) Int)

(assert (=> b!8028575 (= res!3175237 (< (size!43740 p1!159) (size!43740 p2!159)))))

(declare-fun b!8028576 () Bool)

(declare-fun e!4729898 () Bool)

(assert (=> b!8028576 (= e!4729898 e!4729902)))

(declare-fun res!3175236 () Bool)

(assert (=> b!8028576 (=> (not res!3175236) (not e!4729902))))

(declare-fun l!3185 () List!75131)

(assert (=> b!8028576 (= res!3175236 (= lt!2721619 l!3185))))

(declare-fun ++!18607 (List!75131 List!75131) List!75131)

(assert (=> b!8028576 (= lt!2721619 (++!18607 p1!159 s1!480))))

(declare-fun b!8028571 () Bool)

(declare-fun contains!20947 (List!75131 B!4431) Bool)

(declare-fun head!16493 (List!75131) B!4431)

(assert (=> b!8028571 (= e!4729903 (contains!20947 p2!159 (head!16493 s1!480)))))

(declare-fun res!3175235 () Bool)

(assert (=> start!756182 (=> (not res!3175235) (not e!4729898))))

(assert (=> start!756182 (= res!3175235 (isPrefix!6880 p2!159 l!3185))))

(assert (=> start!756182 e!4729898))

(assert (=> start!756182 e!4729899))

(assert (=> start!756182 e!4729901))

(assert (=> start!756182 e!4729904))

(assert (=> start!756182 e!4729900))

(assert (= (and start!756182 res!3175235) b!8028576))

(assert (= (and b!8028576 res!3175236) b!8028569))

(assert (= (and b!8028569 res!3175238) b!8028575))

(assert (= (and b!8028575 res!3175237) b!8028574))

(assert (= (and b!8028574 (not res!3175234)) b!8028571))

(assert (= (and start!756182 (is-Cons!75005 p2!159)) b!8028572))

(assert (= (and start!756182 (is-Cons!75005 l!3185)) b!8028570))

(assert (= (and start!756182 (is-Cons!75005 p1!159)) b!8028573))

(assert (= (and start!756182 (is-Cons!75005 s1!480)) b!8028568))

(declare-fun m!8390650 () Bool)

(assert (=> b!8028575 m!8390650))

(declare-fun m!8390652 () Bool)

(assert (=> b!8028575 m!8390652))

(declare-fun m!8390654 () Bool)

(assert (=> b!8028571 m!8390654))

(assert (=> b!8028571 m!8390654))

(declare-fun m!8390656 () Bool)

(assert (=> b!8028571 m!8390656))

(declare-fun m!8390658 () Bool)

(assert (=> b!8028576 m!8390658))

(declare-fun m!8390660 () Bool)

(assert (=> start!756182 m!8390660))

(declare-fun m!8390662 () Bool)

(assert (=> b!8028574 m!8390662))

(declare-fun m!8390664 () Bool)

(assert (=> b!8028574 m!8390664))

(declare-fun m!8390666 () Bool)

(assert (=> b!8028569 m!8390666))

(push 1)

(assert (not b!8028571))

(assert (not b!8028570))

(assert (not b!8028574))

(assert (not b!8028575))

(assert (not b!8028576))

(assert (not b!8028572))

(assert (not b!8028569))

(assert tp_is_empty!54335)

(assert (not b!8028568))

(assert (not start!756182))

(assert (not b!8028573))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2394036 () Bool)

(declare-fun lt!2721629 () Int)

(assert (=> d!2394036 (>= lt!2721629 0)))

(declare-fun e!4729928 () Int)

(assert (=> d!2394036 (= lt!2721629 e!4729928)))

(declare-fun c!1472949 () Bool)

(assert (=> d!2394036 (= c!1472949 (is-Nil!75005 p1!159))))

(assert (=> d!2394036 (= (size!43740 p1!159) lt!2721629)))

(declare-fun b!8028608 () Bool)

(assert (=> b!8028608 (= e!4729928 0)))

(declare-fun b!8028609 () Bool)

(assert (=> b!8028609 (= e!4729928 (+ 1 (size!43740 (t!390887 p1!159))))))

(assert (= (and d!2394036 c!1472949) b!8028608))

(assert (= (and d!2394036 (not c!1472949)) b!8028609))

(declare-fun m!8390686 () Bool)

(assert (=> b!8028609 m!8390686))

(assert (=> b!8028575 d!2394036))

(declare-fun d!2394038 () Bool)

(declare-fun lt!2721630 () Int)

(assert (=> d!2394038 (>= lt!2721630 0)))

(declare-fun e!4729929 () Int)

(assert (=> d!2394038 (= lt!2721630 e!4729929)))

(declare-fun c!1472950 () Bool)

(assert (=> d!2394038 (= c!1472950 (is-Nil!75005 p2!159))))

(assert (=> d!2394038 (= (size!43740 p2!159) lt!2721630)))

(declare-fun b!8028610 () Bool)

(assert (=> b!8028610 (= e!4729929 0)))

(declare-fun b!8028611 () Bool)

(assert (=> b!8028611 (= e!4729929 (+ 1 (size!43740 (t!390887 p2!159))))))

(assert (= (and d!2394038 c!1472950) b!8028610))

(assert (= (and d!2394038 (not c!1472950)) b!8028611))

(declare-fun m!8390688 () Bool)

(assert (=> b!8028611 m!8390688))

(assert (=> b!8028575 d!2394038))

(declare-fun d!2394040 () Bool)

(assert (=> d!2394040 (= (isEmpty!43013 s1!480) (is-Nil!75005 s1!480))))

(assert (=> b!8028569 d!2394040))

(declare-fun d!2394042 () Bool)

(declare-fun lt!2721633 () Bool)

(declare-fun content!16014 (List!75131) (Set B!4431))

(assert (=> d!2394042 (= lt!2721633 (set.member (head!16493 s1!480) (content!16014 p2!159)))))

(declare-fun e!4729935 () Bool)

(assert (=> d!2394042 (= lt!2721633 e!4729935)))

(declare-fun res!3175258 () Bool)

(assert (=> d!2394042 (=> (not res!3175258) (not e!4729935))))

(assert (=> d!2394042 (= res!3175258 (is-Cons!75005 p2!159))))

(assert (=> d!2394042 (= (contains!20947 p2!159 (head!16493 s1!480)) lt!2721633)))

(declare-fun b!8028616 () Bool)

(declare-fun e!4729934 () Bool)

(assert (=> b!8028616 (= e!4729935 e!4729934)))

(declare-fun res!3175259 () Bool)

(assert (=> b!8028616 (=> res!3175259 e!4729934)))

(assert (=> b!8028616 (= res!3175259 (= (h!81453 p2!159) (head!16493 s1!480)))))

(declare-fun b!8028617 () Bool)

(assert (=> b!8028617 (= e!4729934 (contains!20947 (t!390887 p2!159) (head!16493 s1!480)))))

(assert (= (and d!2394042 res!3175258) b!8028616))

(assert (= (and b!8028616 (not res!3175259)) b!8028617))

(declare-fun m!8390690 () Bool)

(assert (=> d!2394042 m!8390690))

(assert (=> d!2394042 m!8390654))

(declare-fun m!8390692 () Bool)

(assert (=> d!2394042 m!8390692))

(assert (=> b!8028617 m!8390654))

(declare-fun m!8390694 () Bool)

(assert (=> b!8028617 m!8390694))

(assert (=> b!8028571 d!2394042))

(declare-fun d!2394046 () Bool)

(assert (=> d!2394046 (= (head!16493 s1!480) (h!81453 s1!480))))

(assert (=> b!8028571 d!2394046))

(declare-fun b!8028632 () Bool)

(declare-fun res!3175265 () Bool)

(declare-fun e!4729942 () Bool)

(assert (=> b!8028632 (=> (not res!3175265) (not e!4729942))))

(declare-fun lt!2721638 () List!75131)

(assert (=> b!8028632 (= res!3175265 (= (size!43740 lt!2721638) (+ (size!43740 p1!159) (size!43740 s1!480))))))

(declare-fun b!8028633 () Bool)

(assert (=> b!8028633 (= e!4729942 (or (not (= s1!480 Nil!75005)) (= lt!2721638 p1!159)))))

(declare-fun b!8028630 () Bool)

(declare-fun e!4729943 () List!75131)

(assert (=> b!8028630 (= e!4729943 s1!480)))

(declare-fun d!2394048 () Bool)

(assert (=> d!2394048 e!4729942))

(declare-fun res!3175264 () Bool)

(assert (=> d!2394048 (=> (not res!3175264) (not e!4729942))))

(assert (=> d!2394048 (= res!3175264 (= (content!16014 lt!2721638) (set.union (content!16014 p1!159) (content!16014 s1!480))))))

(assert (=> d!2394048 (= lt!2721638 e!4729943)))

(declare-fun c!1472955 () Bool)

(assert (=> d!2394048 (= c!1472955 (is-Nil!75005 p1!159))))

(assert (=> d!2394048 (= (++!18607 p1!159 s1!480) lt!2721638)))

(declare-fun b!8028631 () Bool)

(assert (=> b!8028631 (= e!4729943 (Cons!75005 (h!81453 p1!159) (++!18607 (t!390887 p1!159) s1!480)))))

(assert (= (and d!2394048 c!1472955) b!8028630))

(assert (= (and d!2394048 (not c!1472955)) b!8028631))

(assert (= (and d!2394048 res!3175264) b!8028632))

(assert (= (and b!8028632 res!3175265) b!8028633))

(declare-fun m!8390696 () Bool)

(assert (=> b!8028632 m!8390696))

(assert (=> b!8028632 m!8390650))

(declare-fun m!8390698 () Bool)

(assert (=> b!8028632 m!8390698))

(declare-fun m!8390700 () Bool)

(assert (=> d!2394048 m!8390700))

(declare-fun m!8390702 () Bool)

(assert (=> d!2394048 m!8390702))

(declare-fun m!8390704 () Bool)

(assert (=> d!2394048 m!8390704))

(declare-fun m!8390706 () Bool)

(assert (=> b!8028631 m!8390706))

(assert (=> b!8028576 d!2394048))

(declare-fun b!8028648 () Bool)

(declare-fun e!4729953 () Bool)

(declare-fun tail!16038 (List!75131) List!75131)

(assert (=> b!8028648 (= e!4729953 (isPrefix!6880 (tail!16038 p1!159) (tail!16038 lt!2721619)))))

(declare-fun b!8028646 () Bool)

(declare-fun e!4729954 () Bool)

(assert (=> b!8028646 (= e!4729954 e!4729953)))

(declare-fun res!3175279 () Bool)

(assert (=> b!8028646 (=> (not res!3175279) (not e!4729953))))

(assert (=> b!8028646 (= res!3175279 (not (is-Nil!75005 lt!2721619)))))

(declare-fun b!8028647 () Bool)

(declare-fun res!3175281 () Bool)

(assert (=> b!8028647 (=> (not res!3175281) (not e!4729953))))

(assert (=> b!8028647 (= res!3175281 (= (head!16493 p1!159) (head!16493 lt!2721619)))))

(declare-fun b!8028649 () Bool)

(declare-fun e!4729952 () Bool)

(assert (=> b!8028649 (= e!4729952 (>= (size!43740 lt!2721619) (size!43740 p1!159)))))

(declare-fun d!2394050 () Bool)

(assert (=> d!2394050 e!4729952))

(declare-fun res!3175278 () Bool)

(assert (=> d!2394050 (=> res!3175278 e!4729952)))

(declare-fun lt!2721641 () Bool)

(assert (=> d!2394050 (= res!3175278 (not lt!2721641))))

(assert (=> d!2394050 (= lt!2721641 e!4729954)))

(declare-fun res!3175280 () Bool)

(assert (=> d!2394050 (=> res!3175280 e!4729954)))

(assert (=> d!2394050 (= res!3175280 (is-Nil!75005 p1!159))))

(assert (=> d!2394050 (= (isPrefix!6880 p1!159 lt!2721619) lt!2721641)))

(assert (= (and d!2394050 (not res!3175280)) b!8028646))

(assert (= (and b!8028646 res!3175279) b!8028647))

(assert (= (and b!8028647 res!3175281) b!8028648))

(assert (= (and d!2394050 (not res!3175278)) b!8028649))

(declare-fun m!8390708 () Bool)

(assert (=> b!8028648 m!8390708))

(declare-fun m!8390710 () Bool)

(assert (=> b!8028648 m!8390710))

(assert (=> b!8028648 m!8390708))

(assert (=> b!8028648 m!8390710))

(declare-fun m!8390712 () Bool)

(assert (=> b!8028648 m!8390712))

(declare-fun m!8390714 () Bool)

(assert (=> b!8028647 m!8390714))

(declare-fun m!8390716 () Bool)

(assert (=> b!8028647 m!8390716))

(declare-fun m!8390718 () Bool)

(assert (=> b!8028649 m!8390718))

(assert (=> b!8028649 m!8390650))

(assert (=> b!8028574 d!2394050))

(declare-fun d!2394052 () Bool)

(assert (=> d!2394052 (isPrefix!6880 p1!159 (++!18607 p1!159 s1!480))))

(declare-fun lt!2721645 () Unit!170994)

(declare-fun choose!60473 (List!75131 List!75131) Unit!170994)

(assert (=> d!2394052 (= lt!2721645 (choose!60473 p1!159 s1!480))))

(assert (=> d!2394052 (= (lemmaConcatTwoListThenFirstIsPrefix!3999 p1!159 s1!480) lt!2721645)))

(declare-fun bs!1971387 () Bool)

(assert (= bs!1971387 d!2394052))

(assert (=> bs!1971387 m!8390658))

(assert (=> bs!1971387 m!8390658))

(declare-fun m!8390732 () Bool)

(assert (=> bs!1971387 m!8390732))

(declare-fun m!8390734 () Bool)

(assert (=> bs!1971387 m!8390734))

(assert (=> b!8028574 d!2394052))

(declare-fun b!8028656 () Bool)

(declare-fun e!4729958 () Bool)

(assert (=> b!8028656 (= e!4729958 (isPrefix!6880 (tail!16038 p2!159) (tail!16038 l!3185)))))

(declare-fun b!8028654 () Bool)

(declare-fun e!4729959 () Bool)

(assert (=> b!8028654 (= e!4729959 e!4729958)))

(declare-fun res!3175285 () Bool)

(assert (=> b!8028654 (=> (not res!3175285) (not e!4729958))))

(assert (=> b!8028654 (= res!3175285 (not (is-Nil!75005 l!3185)))))

(declare-fun b!8028655 () Bool)

(declare-fun res!3175287 () Bool)

(assert (=> b!8028655 (=> (not res!3175287) (not e!4729958))))

(assert (=> b!8028655 (= res!3175287 (= (head!16493 p2!159) (head!16493 l!3185)))))

(declare-fun b!8028657 () Bool)

(declare-fun e!4729957 () Bool)

(assert (=> b!8028657 (= e!4729957 (>= (size!43740 l!3185) (size!43740 p2!159)))))

(declare-fun d!2394056 () Bool)

(assert (=> d!2394056 e!4729957))

(declare-fun res!3175284 () Bool)

(assert (=> d!2394056 (=> res!3175284 e!4729957)))

(declare-fun lt!2721646 () Bool)

(assert (=> d!2394056 (= res!3175284 (not lt!2721646))))

(assert (=> d!2394056 (= lt!2721646 e!4729959)))

(declare-fun res!3175286 () Bool)

(assert (=> d!2394056 (=> res!3175286 e!4729959)))

(assert (=> d!2394056 (= res!3175286 (is-Nil!75005 p2!159))))

(assert (=> d!2394056 (= (isPrefix!6880 p2!159 l!3185) lt!2721646)))

(assert (= (and d!2394056 (not res!3175286)) b!8028654))

(assert (= (and b!8028654 res!3175285) b!8028655))

(assert (= (and b!8028655 res!3175287) b!8028656))

(assert (= (and d!2394056 (not res!3175284)) b!8028657))

(declare-fun m!8390736 () Bool)

(assert (=> b!8028656 m!8390736))

(declare-fun m!8390738 () Bool)

(assert (=> b!8028656 m!8390738))

(assert (=> b!8028656 m!8390736))

(assert (=> b!8028656 m!8390738))

(declare-fun m!8390740 () Bool)

(assert (=> b!8028656 m!8390740))

(declare-fun m!8390742 () Bool)

(assert (=> b!8028655 m!8390742))

(declare-fun m!8390744 () Bool)

(assert (=> b!8028655 m!8390744))

(declare-fun m!8390746 () Bool)

(assert (=> b!8028657 m!8390746))

(assert (=> b!8028657 m!8390652))

(assert (=> start!756182 d!2394056))

(declare-fun b!8028662 () Bool)

(declare-fun e!4729962 () Bool)

(declare-fun tp!2402570 () Bool)

(assert (=> b!8028662 (= e!4729962 (and tp_is_empty!54335 tp!2402570))))

(assert (=> b!8028570 (= tp!2402554 e!4729962)))

(assert (= (and b!8028570 (is-Cons!75005 (t!390887 l!3185))) b!8028662))

(declare-fun b!8028663 () Bool)

(declare-fun e!4729963 () Bool)

(declare-fun tp!2402571 () Bool)

(assert (=> b!8028663 (= e!4729963 (and tp_is_empty!54335 tp!2402571))))

(assert (=> b!8028572 (= tp!2402555 e!4729963)))

(assert (= (and b!8028572 (is-Cons!75005 (t!390887 p2!159))) b!8028663))

(declare-fun b!8028664 () Bool)

(declare-fun e!4729964 () Bool)

(declare-fun tp!2402572 () Bool)

(assert (=> b!8028664 (= e!4729964 (and tp_is_empty!54335 tp!2402572))))

(assert (=> b!8028573 (= tp!2402552 e!4729964)))

(assert (= (and b!8028573 (is-Cons!75005 (t!390887 p1!159))) b!8028664))

(declare-fun b!8028665 () Bool)

(declare-fun e!4729965 () Bool)

(declare-fun tp!2402573 () Bool)

(assert (=> b!8028665 (= e!4729965 (and tp_is_empty!54335 tp!2402573))))

(assert (=> b!8028568 (= tp!2402553 e!4729965)))

(assert (= (and b!8028568 (is-Cons!75005 (t!390887 s1!480))) b!8028665))

(push 1)

(assert (not b!8028655))

(assert tp_is_empty!54335)

(assert (not b!8028648))

(assert (not b!8028663))

(assert (not b!8028665))

(assert (not b!8028656))

(assert (not d!2394052))

(assert (not b!8028657))

(assert (not b!8028632))

(assert (not b!8028662))

(assert (not b!8028611))

(assert (not b!8028617))

(assert (not d!2394048))

(assert (not b!8028609))

(assert (not b!8028664))

(assert (not d!2394042))

(assert (not b!8028647))

(assert (not b!8028631))

(assert (not b!8028649))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2394072 () Bool)

(declare-fun lt!2721661 () Int)

(assert (=> d!2394072 (>= lt!2721661 0)))

(declare-fun e!4729994 () Int)

(assert (=> d!2394072 (= lt!2721661 e!4729994)))

(declare-fun c!1472961 () Bool)

(assert (=> d!2394072 (= c!1472961 (is-Nil!75005 (t!390887 p1!159)))))

(assert (=> d!2394072 (= (size!43740 (t!390887 p1!159)) lt!2721661)))

(declare-fun b!8028704 () Bool)

(assert (=> b!8028704 (= e!4729994 0)))

(declare-fun b!8028705 () Bool)

(assert (=> b!8028705 (= e!4729994 (+ 1 (size!43740 (t!390887 (t!390887 p1!159)))))))

(assert (= (and d!2394072 c!1472961) b!8028704))

(assert (= (and d!2394072 (not c!1472961)) b!8028705))

(declare-fun m!8390786 () Bool)

(assert (=> b!8028705 m!8390786))

(assert (=> b!8028609 d!2394072))

(declare-fun d!2394074 () Bool)

(declare-fun lt!2721662 () Int)

(assert (=> d!2394074 (>= lt!2721662 0)))

(declare-fun e!4729995 () Int)

(assert (=> d!2394074 (= lt!2721662 e!4729995)))

(declare-fun c!1472962 () Bool)

(assert (=> d!2394074 (= c!1472962 (is-Nil!75005 l!3185))))

(assert (=> d!2394074 (= (size!43740 l!3185) lt!2721662)))

(declare-fun b!8028706 () Bool)

(assert (=> b!8028706 (= e!4729995 0)))

(declare-fun b!8028707 () Bool)

(assert (=> b!8028707 (= e!4729995 (+ 1 (size!43740 (t!390887 l!3185))))))

(assert (= (and d!2394074 c!1472962) b!8028706))

(assert (= (and d!2394074 (not c!1472962)) b!8028707))

(declare-fun m!8390788 () Bool)

(assert (=> b!8028707 m!8390788))

(assert (=> b!8028657 d!2394074))

(assert (=> b!8028657 d!2394038))

(declare-fun d!2394076 () Bool)

(declare-fun lt!2721663 () Int)

(assert (=> d!2394076 (>= lt!2721663 0)))

(declare-fun e!4729996 () Int)

(assert (=> d!2394076 (= lt!2721663 e!4729996)))

(declare-fun c!1472963 () Bool)

(assert (=> d!2394076 (= c!1472963 (is-Nil!75005 lt!2721619))))

(assert (=> d!2394076 (= (size!43740 lt!2721619) lt!2721663)))

(declare-fun b!8028708 () Bool)

(assert (=> b!8028708 (= e!4729996 0)))

(declare-fun b!8028709 () Bool)

(assert (=> b!8028709 (= e!4729996 (+ 1 (size!43740 (t!390887 lt!2721619))))))

(assert (= (and d!2394076 c!1472963) b!8028708))

(assert (= (and d!2394076 (not c!1472963)) b!8028709))

(declare-fun m!8390790 () Bool)

(assert (=> b!8028709 m!8390790))

(assert (=> b!8028649 d!2394076))

(assert (=> b!8028649 d!2394036))

(declare-fun d!2394078 () Bool)

(declare-fun lt!2721664 () Bool)

(assert (=> d!2394078 (= lt!2721664 (set.member (head!16493 s1!480) (content!16014 (t!390887 p2!159))))))

(declare-fun e!4729998 () Bool)

(assert (=> d!2394078 (= lt!2721664 e!4729998)))

(declare-fun res!3175310 () Bool)

(assert (=> d!2394078 (=> (not res!3175310) (not e!4729998))))

(assert (=> d!2394078 (= res!3175310 (is-Cons!75005 (t!390887 p2!159)))))

(assert (=> d!2394078 (= (contains!20947 (t!390887 p2!159) (head!16493 s1!480)) lt!2721664)))

(declare-fun b!8028710 () Bool)

(declare-fun e!4729997 () Bool)

(assert (=> b!8028710 (= e!4729998 e!4729997)))

(declare-fun res!3175311 () Bool)

(assert (=> b!8028710 (=> res!3175311 e!4729997)))

(assert (=> b!8028710 (= res!3175311 (= (h!81453 (t!390887 p2!159)) (head!16493 s1!480)))))

(declare-fun b!8028711 () Bool)

(assert (=> b!8028711 (= e!4729997 (contains!20947 (t!390887 (t!390887 p2!159)) (head!16493 s1!480)))))

(assert (= (and d!2394078 res!3175310) b!8028710))

(assert (= (and b!8028710 (not res!3175311)) b!8028711))

(declare-fun m!8390792 () Bool)

(assert (=> d!2394078 m!8390792))

(assert (=> d!2394078 m!8390654))

(declare-fun m!8390794 () Bool)

(assert (=> d!2394078 m!8390794))

(assert (=> b!8028711 m!8390654))

(declare-fun m!8390796 () Bool)

(assert (=> b!8028711 m!8390796))

(assert (=> b!8028617 d!2394078))

(declare-fun b!8028714 () Bool)

(declare-fun e!4730000 () Bool)

(assert (=> b!8028714 (= e!4730000 (isPrefix!6880 (tail!16038 p1!159) (tail!16038 (++!18607 p1!159 s1!480))))))

(declare-fun b!8028712 () Bool)

(declare-fun e!4730001 () Bool)

(assert (=> b!8028712 (= e!4730001 e!4730000)))

(declare-fun res!3175313 () Bool)

(assert (=> b!8028712 (=> (not res!3175313) (not e!4730000))))

(assert (=> b!8028712 (= res!3175313 (not (is-Nil!75005 (++!18607 p1!159 s1!480))))))

(declare-fun b!8028713 () Bool)

(declare-fun res!3175315 () Bool)

(assert (=> b!8028713 (=> (not res!3175315) (not e!4730000))))

(assert (=> b!8028713 (= res!3175315 (= (head!16493 p1!159) (head!16493 (++!18607 p1!159 s1!480))))))

(declare-fun b!8028715 () Bool)

(declare-fun e!4729999 () Bool)

(assert (=> b!8028715 (= e!4729999 (>= (size!43740 (++!18607 p1!159 s1!480)) (size!43740 p1!159)))))

(declare-fun d!2394080 () Bool)

(assert (=> d!2394080 e!4729999))

(declare-fun res!3175312 () Bool)

(assert (=> d!2394080 (=> res!3175312 e!4729999)))

(declare-fun lt!2721665 () Bool)

(assert (=> d!2394080 (= res!3175312 (not lt!2721665))))

(assert (=> d!2394080 (= lt!2721665 e!4730001)))

(declare-fun res!3175314 () Bool)

(assert (=> d!2394080 (=> res!3175314 e!4730001)))

(assert (=> d!2394080 (= res!3175314 (is-Nil!75005 p1!159))))

(assert (=> d!2394080 (= (isPrefix!6880 p1!159 (++!18607 p1!159 s1!480)) lt!2721665)))

(assert (= (and d!2394080 (not res!3175314)) b!8028712))

(assert (= (and b!8028712 res!3175313) b!8028713))

(assert (= (and b!8028713 res!3175315) b!8028714))

(assert (= (and d!2394080 (not res!3175312)) b!8028715))

(assert (=> b!8028714 m!8390708))

(assert (=> b!8028714 m!8390658))

(declare-fun m!8390798 () Bool)

(assert (=> b!8028714 m!8390798))

(assert (=> b!8028714 m!8390708))

(assert (=> b!8028714 m!8390798))

(declare-fun m!8390800 () Bool)

(assert (=> b!8028714 m!8390800))

(assert (=> b!8028713 m!8390714))

(assert (=> b!8028713 m!8390658))

(declare-fun m!8390802 () Bool)

(assert (=> b!8028713 m!8390802))

(assert (=> b!8028715 m!8390658))

(declare-fun m!8390804 () Bool)

(assert (=> b!8028715 m!8390804))

(assert (=> b!8028715 m!8390650))

(assert (=> d!2394052 d!2394080))

(assert (=> d!2394052 d!2394048))

(declare-fun d!2394082 () Bool)

(assert (=> d!2394082 (isPrefix!6880 p1!159 (++!18607 p1!159 s1!480))))

(assert (=> d!2394082 true))

(declare-fun _$46!2184 () Unit!170994)

(assert (=> d!2394082 (= (choose!60473 p1!159 s1!480) _$46!2184)))

(declare-fun bs!1971389 () Bool)

(assert (= bs!1971389 d!2394082))

(assert (=> bs!1971389 m!8390658))

(assert (=> bs!1971389 m!8390658))

(assert (=> bs!1971389 m!8390732))

(assert (=> d!2394052 d!2394082))

(declare-fun d!2394084 () Bool)

(declare-fun c!1472966 () Bool)

(assert (=> d!2394084 (= c!1472966 (is-Nil!75005 lt!2721638))))

(declare-fun e!4730004 () (Set B!4431))

(assert (=> d!2394084 (= (content!16014 lt!2721638) e!4730004)))

(declare-fun b!8028720 () Bool)

(assert (=> b!8028720 (= e!4730004 (as set.empty (Set B!4431)))))

(declare-fun b!8028721 () Bool)

(assert (=> b!8028721 (= e!4730004 (set.union (set.insert (h!81453 lt!2721638) (as set.empty (Set B!4431))) (content!16014 (t!390887 lt!2721638))))))

(assert (= (and d!2394084 c!1472966) b!8028720))

(assert (= (and d!2394084 (not c!1472966)) b!8028721))

(declare-fun m!8390806 () Bool)

(assert (=> b!8028721 m!8390806))

(declare-fun m!8390808 () Bool)

(assert (=> b!8028721 m!8390808))

(assert (=> d!2394048 d!2394084))

(declare-fun d!2394086 () Bool)

(declare-fun c!1472967 () Bool)

(assert (=> d!2394086 (= c!1472967 (is-Nil!75005 p1!159))))

(declare-fun e!4730005 () (Set B!4431))

(assert (=> d!2394086 (= (content!16014 p1!159) e!4730005)))

(declare-fun b!8028722 () Bool)

(assert (=> b!8028722 (= e!4730005 (as set.empty (Set B!4431)))))

(declare-fun b!8028723 () Bool)

(assert (=> b!8028723 (= e!4730005 (set.union (set.insert (h!81453 p1!159) (as set.empty (Set B!4431))) (content!16014 (t!390887 p1!159))))))

(assert (= (and d!2394086 c!1472967) b!8028722))

(assert (= (and d!2394086 (not c!1472967)) b!8028723))

(declare-fun m!8390810 () Bool)

(assert (=> b!8028723 m!8390810))

(declare-fun m!8390812 () Bool)

(assert (=> b!8028723 m!8390812))

(assert (=> d!2394048 d!2394086))

(declare-fun d!2394088 () Bool)

(declare-fun c!1472968 () Bool)

(assert (=> d!2394088 (= c!1472968 (is-Nil!75005 s1!480))))

(declare-fun e!4730006 () (Set B!4431))

(assert (=> d!2394088 (= (content!16014 s1!480) e!4730006)))

(declare-fun b!8028724 () Bool)

(assert (=> b!8028724 (= e!4730006 (as set.empty (Set B!4431)))))

(declare-fun b!8028725 () Bool)

(assert (=> b!8028725 (= e!4730006 (set.union (set.insert (h!81453 s1!480) (as set.empty (Set B!4431))) (content!16014 (t!390887 s1!480))))))

(assert (= (and d!2394088 c!1472968) b!8028724))

(assert (= (and d!2394088 (not c!1472968)) b!8028725))

(declare-fun m!8390814 () Bool)

(assert (=> b!8028725 m!8390814))

(declare-fun m!8390816 () Bool)

(assert (=> b!8028725 m!8390816))

(assert (=> d!2394048 d!2394088))

(declare-fun d!2394090 () Bool)

(declare-fun c!1472969 () Bool)

(assert (=> d!2394090 (= c!1472969 (is-Nil!75005 p2!159))))

(declare-fun e!4730007 () (Set B!4431))

(assert (=> d!2394090 (= (content!16014 p2!159) e!4730007)))

(declare-fun b!8028726 () Bool)

(assert (=> b!8028726 (= e!4730007 (as set.empty (Set B!4431)))))

(declare-fun b!8028727 () Bool)

(assert (=> b!8028727 (= e!4730007 (set.union (set.insert (h!81453 p2!159) (as set.empty (Set B!4431))) (content!16014 (t!390887 p2!159))))))

(assert (= (and d!2394090 c!1472969) b!8028726))

(assert (= (and d!2394090 (not c!1472969)) b!8028727))

(declare-fun m!8390818 () Bool)

(assert (=> b!8028727 m!8390818))

(assert (=> b!8028727 m!8390792))

(assert (=> d!2394042 d!2394090))

(declare-fun b!8028730 () Bool)

(declare-fun res!3175317 () Bool)

(declare-fun e!4730008 () Bool)

(assert (=> b!8028730 (=> (not res!3175317) (not e!4730008))))

(declare-fun lt!2721666 () List!75131)

(assert (=> b!8028730 (= res!3175317 (= (size!43740 lt!2721666) (+ (size!43740 (t!390887 p1!159)) (size!43740 s1!480))))))

(declare-fun b!8028731 () Bool)

(assert (=> b!8028731 (= e!4730008 (or (not (= s1!480 Nil!75005)) (= lt!2721666 (t!390887 p1!159))))))

(declare-fun b!8028728 () Bool)

(declare-fun e!4730009 () List!75131)

(assert (=> b!8028728 (= e!4730009 s1!480)))

(declare-fun d!2394092 () Bool)

(assert (=> d!2394092 e!4730008))

(declare-fun res!3175316 () Bool)

(assert (=> d!2394092 (=> (not res!3175316) (not e!4730008))))

(assert (=> d!2394092 (= res!3175316 (= (content!16014 lt!2721666) (set.union (content!16014 (t!390887 p1!159)) (content!16014 s1!480))))))

(assert (=> d!2394092 (= lt!2721666 e!4730009)))

(declare-fun c!1472970 () Bool)

(assert (=> d!2394092 (= c!1472970 (is-Nil!75005 (t!390887 p1!159)))))

(assert (=> d!2394092 (= (++!18607 (t!390887 p1!159) s1!480) lt!2721666)))

(declare-fun b!8028729 () Bool)

(assert (=> b!8028729 (= e!4730009 (Cons!75005 (h!81453 (t!390887 p1!159)) (++!18607 (t!390887 (t!390887 p1!159)) s1!480)))))

(assert (= (and d!2394092 c!1472970) b!8028728))

(assert (= (and d!2394092 (not c!1472970)) b!8028729))

(assert (= (and d!2394092 res!3175316) b!8028730))

(assert (= (and b!8028730 res!3175317) b!8028731))

(declare-fun m!8390820 () Bool)

(assert (=> b!8028730 m!8390820))

(assert (=> b!8028730 m!8390686))

(assert (=> b!8028730 m!8390698))

(declare-fun m!8390822 () Bool)

(assert (=> d!2394092 m!8390822))

(assert (=> d!2394092 m!8390812))

(assert (=> d!2394092 m!8390704))

(declare-fun m!8390824 () Bool)

(assert (=> b!8028729 m!8390824))

(assert (=> b!8028631 d!2394092))

(declare-fun d!2394094 () Bool)

(assert (=> d!2394094 (= (head!16493 p2!159) (h!81453 p2!159))))

(assert (=> b!8028655 d!2394094))

(declare-fun d!2394096 () Bool)

(assert (=> d!2394096 (= (head!16493 l!3185) (h!81453 l!3185))))

(assert (=> b!8028655 d!2394096))

(declare-fun d!2394098 () Bool)

(assert (=> d!2394098 (= (head!16493 p1!159) (h!81453 p1!159))))

(assert (=> b!8028647 d!2394098))

(declare-fun d!2394100 () Bool)

(assert (=> d!2394100 (= (head!16493 lt!2721619) (h!81453 lt!2721619))))

(assert (=> b!8028647 d!2394100))

(declare-fun d!2394102 () Bool)

(declare-fun lt!2721667 () Int)

(assert (=> d!2394102 (>= lt!2721667 0)))

(declare-fun e!4730010 () Int)

(assert (=> d!2394102 (= lt!2721667 e!4730010)))

(declare-fun c!1472971 () Bool)

(assert (=> d!2394102 (= c!1472971 (is-Nil!75005 lt!2721638))))

(assert (=> d!2394102 (= (size!43740 lt!2721638) lt!2721667)))

(declare-fun b!8028732 () Bool)

(assert (=> b!8028732 (= e!4730010 0)))

(declare-fun b!8028733 () Bool)

(assert (=> b!8028733 (= e!4730010 (+ 1 (size!43740 (t!390887 lt!2721638))))))

(assert (= (and d!2394102 c!1472971) b!8028732))

(assert (= (and d!2394102 (not c!1472971)) b!8028733))

(declare-fun m!8390826 () Bool)

(assert (=> b!8028733 m!8390826))

(assert (=> b!8028632 d!2394102))

(assert (=> b!8028632 d!2394036))

(declare-fun d!2394104 () Bool)

(declare-fun lt!2721668 () Int)

(assert (=> d!2394104 (>= lt!2721668 0)))

(declare-fun e!4730011 () Int)

(assert (=> d!2394104 (= lt!2721668 e!4730011)))

(declare-fun c!1472972 () Bool)

(assert (=> d!2394104 (= c!1472972 (is-Nil!75005 s1!480))))

(assert (=> d!2394104 (= (size!43740 s1!480) lt!2721668)))

(declare-fun b!8028734 () Bool)

(assert (=> b!8028734 (= e!4730011 0)))

(declare-fun b!8028735 () Bool)

(assert (=> b!8028735 (= e!4730011 (+ 1 (size!43740 (t!390887 s1!480))))))

(assert (= (and d!2394104 c!1472972) b!8028734))

(assert (= (and d!2394104 (not c!1472972)) b!8028735))

(declare-fun m!8390828 () Bool)

(assert (=> b!8028735 m!8390828))

(assert (=> b!8028632 d!2394104))

(declare-fun b!8028738 () Bool)

(declare-fun e!4730013 () Bool)

(assert (=> b!8028738 (= e!4730013 (isPrefix!6880 (tail!16038 (tail!16038 p2!159)) (tail!16038 (tail!16038 l!3185))))))

(declare-fun b!8028736 () Bool)

(declare-fun e!4730014 () Bool)

(assert (=> b!8028736 (= e!4730014 e!4730013)))

(declare-fun res!3175319 () Bool)

(assert (=> b!8028736 (=> (not res!3175319) (not e!4730013))))

(assert (=> b!8028736 (= res!3175319 (not (is-Nil!75005 (tail!16038 l!3185))))))

(declare-fun b!8028737 () Bool)

(declare-fun res!3175321 () Bool)

(assert (=> b!8028737 (=> (not res!3175321) (not e!4730013))))

(assert (=> b!8028737 (= res!3175321 (= (head!16493 (tail!16038 p2!159)) (head!16493 (tail!16038 l!3185))))))

(declare-fun b!8028739 () Bool)

(declare-fun e!4730012 () Bool)

(assert (=> b!8028739 (= e!4730012 (>= (size!43740 (tail!16038 l!3185)) (size!43740 (tail!16038 p2!159))))))

(declare-fun d!2394106 () Bool)

(assert (=> d!2394106 e!4730012))

(declare-fun res!3175318 () Bool)

(assert (=> d!2394106 (=> res!3175318 e!4730012)))

(declare-fun lt!2721669 () Bool)

(assert (=> d!2394106 (= res!3175318 (not lt!2721669))))

(assert (=> d!2394106 (= lt!2721669 e!4730014)))

(declare-fun res!3175320 () Bool)

(assert (=> d!2394106 (=> res!3175320 e!4730014)))

(assert (=> d!2394106 (= res!3175320 (is-Nil!75005 (tail!16038 p2!159)))))

(assert (=> d!2394106 (= (isPrefix!6880 (tail!16038 p2!159) (tail!16038 l!3185)) lt!2721669)))

(assert (= (and d!2394106 (not res!3175320)) b!8028736))

(assert (= (and b!8028736 res!3175319) b!8028737))

(assert (= (and b!8028737 res!3175321) b!8028738))

(assert (= (and d!2394106 (not res!3175318)) b!8028739))

(assert (=> b!8028738 m!8390736))

(declare-fun m!8390830 () Bool)

(assert (=> b!8028738 m!8390830))

(assert (=> b!8028738 m!8390738))

(declare-fun m!8390832 () Bool)

(assert (=> b!8028738 m!8390832))

(assert (=> b!8028738 m!8390830))

(assert (=> b!8028738 m!8390832))

(declare-fun m!8390834 () Bool)

(assert (=> b!8028738 m!8390834))

(assert (=> b!8028737 m!8390736))

(declare-fun m!8390836 () Bool)

(assert (=> b!8028737 m!8390836))

(assert (=> b!8028737 m!8390738))

(declare-fun m!8390838 () Bool)

(assert (=> b!8028737 m!8390838))

(assert (=> b!8028739 m!8390738))

(declare-fun m!8390840 () Bool)

(assert (=> b!8028739 m!8390840))

(assert (=> b!8028739 m!8390736))

(declare-fun m!8390842 () Bool)

(assert (=> b!8028739 m!8390842))

(assert (=> b!8028656 d!2394106))

(declare-fun d!2394108 () Bool)

(assert (=> d!2394108 (= (tail!16038 p2!159) (t!390887 p2!159))))

(assert (=> b!8028656 d!2394108))

(declare-fun d!2394110 () Bool)

(assert (=> d!2394110 (= (tail!16038 l!3185) (t!390887 l!3185))))

(assert (=> b!8028656 d!2394110))

(declare-fun b!8028742 () Bool)

(declare-fun e!4730016 () Bool)

(assert (=> b!8028742 (= e!4730016 (isPrefix!6880 (tail!16038 (tail!16038 p1!159)) (tail!16038 (tail!16038 lt!2721619))))))

(declare-fun b!8028740 () Bool)

(declare-fun e!4730017 () Bool)

(assert (=> b!8028740 (= e!4730017 e!4730016)))

(declare-fun res!3175323 () Bool)

(assert (=> b!8028740 (=> (not res!3175323) (not e!4730016))))

(assert (=> b!8028740 (= res!3175323 (not (is-Nil!75005 (tail!16038 lt!2721619))))))

(declare-fun b!8028741 () Bool)

(declare-fun res!3175325 () Bool)

(assert (=> b!8028741 (=> (not res!3175325) (not e!4730016))))

(assert (=> b!8028741 (= res!3175325 (= (head!16493 (tail!16038 p1!159)) (head!16493 (tail!16038 lt!2721619))))))

(declare-fun b!8028743 () Bool)

(declare-fun e!4730015 () Bool)

(assert (=> b!8028743 (= e!4730015 (>= (size!43740 (tail!16038 lt!2721619)) (size!43740 (tail!16038 p1!159))))))

(declare-fun d!2394112 () Bool)

(assert (=> d!2394112 e!4730015))

(declare-fun res!3175322 () Bool)

(assert (=> d!2394112 (=> res!3175322 e!4730015)))

(declare-fun lt!2721670 () Bool)

(assert (=> d!2394112 (= res!3175322 (not lt!2721670))))

(assert (=> d!2394112 (= lt!2721670 e!4730017)))

(declare-fun res!3175324 () Bool)

(assert (=> d!2394112 (=> res!3175324 e!4730017)))

(assert (=> d!2394112 (= res!3175324 (is-Nil!75005 (tail!16038 p1!159)))))

(assert (=> d!2394112 (= (isPrefix!6880 (tail!16038 p1!159) (tail!16038 lt!2721619)) lt!2721670)))

(assert (= (and d!2394112 (not res!3175324)) b!8028740))

(assert (= (and b!8028740 res!3175323) b!8028741))

(assert (= (and b!8028741 res!3175325) b!8028742))

(assert (= (and d!2394112 (not res!3175322)) b!8028743))

(assert (=> b!8028742 m!8390708))

(declare-fun m!8390844 () Bool)

(assert (=> b!8028742 m!8390844))

(assert (=> b!8028742 m!8390710))

(declare-fun m!8390846 () Bool)

(assert (=> b!8028742 m!8390846))

(assert (=> b!8028742 m!8390844))

(assert (=> b!8028742 m!8390846))

(declare-fun m!8390848 () Bool)

(assert (=> b!8028742 m!8390848))

(assert (=> b!8028741 m!8390708))

(declare-fun m!8390850 () Bool)

(assert (=> b!8028741 m!8390850))

(assert (=> b!8028741 m!8390710))

(declare-fun m!8390852 () Bool)

(assert (=> b!8028741 m!8390852))

(assert (=> b!8028743 m!8390710))

(declare-fun m!8390854 () Bool)

(assert (=> b!8028743 m!8390854))

(assert (=> b!8028743 m!8390708))

(declare-fun m!8390856 () Bool)

(assert (=> b!8028743 m!8390856))

(assert (=> b!8028648 d!2394112))

(declare-fun d!2394114 () Bool)

(assert (=> d!2394114 (= (tail!16038 p1!159) (t!390887 p1!159))))

(assert (=> b!8028648 d!2394114))

(declare-fun d!2394116 () Bool)

(assert (=> d!2394116 (= (tail!16038 lt!2721619) (t!390887 lt!2721619))))

(assert (=> b!8028648 d!2394116))

(declare-fun d!2394118 () Bool)

(declare-fun lt!2721671 () Int)

(assert (=> d!2394118 (>= lt!2721671 0)))

(declare-fun e!4730018 () Int)

(assert (=> d!2394118 (= lt!2721671 e!4730018)))

(declare-fun c!1472973 () Bool)

(assert (=> d!2394118 (= c!1472973 (is-Nil!75005 (t!390887 p2!159)))))

(assert (=> d!2394118 (= (size!43740 (t!390887 p2!159)) lt!2721671)))

(declare-fun b!8028744 () Bool)

(assert (=> b!8028744 (= e!4730018 0)))

(declare-fun b!8028745 () Bool)

(assert (=> b!8028745 (= e!4730018 (+ 1 (size!43740 (t!390887 (t!390887 p2!159)))))))

(assert (= (and d!2394118 c!1472973) b!8028744))

(assert (= (and d!2394118 (not c!1472973)) b!8028745))

(declare-fun m!8390858 () Bool)

(assert (=> b!8028745 m!8390858))

(assert (=> b!8028611 d!2394118))

(declare-fun b!8028746 () Bool)

(declare-fun e!4730019 () Bool)

(declare-fun tp!2402580 () Bool)

(assert (=> b!8028746 (= e!4730019 (and tp_is_empty!54335 tp!2402580))))

(assert (=> b!8028662 (= tp!2402570 e!4730019)))

(assert (= (and b!8028662 (is-Cons!75005 (t!390887 (t!390887 l!3185)))) b!8028746))

(declare-fun b!8028747 () Bool)

(declare-fun e!4730020 () Bool)

(declare-fun tp!2402581 () Bool)

(assert (=> b!8028747 (= e!4730020 (and tp_is_empty!54335 tp!2402581))))

(assert (=> b!8028664 (= tp!2402572 e!4730020)))

(assert (= (and b!8028664 (is-Cons!75005 (t!390887 (t!390887 p1!159)))) b!8028747))

(declare-fun b!8028748 () Bool)

(declare-fun e!4730021 () Bool)

(declare-fun tp!2402582 () Bool)

(assert (=> b!8028748 (= e!4730021 (and tp_is_empty!54335 tp!2402582))))

(assert (=> b!8028663 (= tp!2402571 e!4730021)))

(assert (= (and b!8028663 (is-Cons!75005 (t!390887 (t!390887 p2!159)))) b!8028748))

(declare-fun b!8028749 () Bool)

(declare-fun e!4730022 () Bool)

(declare-fun tp!2402583 () Bool)

(assert (=> b!8028749 (= e!4730022 (and tp_is_empty!54335 tp!2402583))))

(assert (=> b!8028665 (= tp!2402573 e!4730022)))

(assert (= (and b!8028665 (is-Cons!75005 (t!390887 (t!390887 s1!480)))) b!8028749))

(push 1)

(assert (not d!2394082))

(assert (not b!8028735))

(assert (not b!8028749))

(assert (not b!8028733))

(assert (not b!8028715))

(assert (not b!8028725))

(assert (not b!8028745))

(assert (not b!8028743))

(assert (not b!8028714))

(assert (not b!8028730))

(assert (not b!8028748))

(assert (not b!8028747))

(assert (not b!8028739))

(assert (not b!8028741))

(assert (not d!2394092))

(assert (not d!2394078))

(assert tp_is_empty!54335)

(assert (not b!8028737))

(assert (not b!8028711))

(assert (not b!8028723))

(assert (not b!8028729))

(assert (not b!8028709))

(assert (not b!8028713))

(assert (not b!8028705))

(assert (not b!8028721))

(assert (not b!8028727))

(assert (not b!8028707))

(assert (not b!8028742))

(assert (not b!8028746))

(assert (not b!8028738))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

