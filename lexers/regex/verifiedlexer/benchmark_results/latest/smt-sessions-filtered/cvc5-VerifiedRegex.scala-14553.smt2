; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!755214 () Bool)

(assert start!755214)

(declare-fun b!8022814 () Bool)

(declare-fun res!3172513 () Bool)

(declare-fun e!4726162 () Bool)

(assert (=> b!8022814 (=> (not res!3172513) (not e!4726162))))

(declare-datatypes ((B!4227 0))(
  ( (B!4228 (val!32503 Int)) )
))
(declare-datatypes ((List!75015 0))(
  ( (Nil!74891) (Cons!74891 (h!81339 B!4227) (t!390758 List!75015)) )
))
(declare-fun l!3411 () List!75015)

(declare-fun p1!179 () List!75015)

(declare-fun s1!490 () List!75015)

(declare-fun ++!18559 (List!75015 List!75015) List!75015)

(assert (=> b!8022814 (= res!3172513 (= (++!18559 p1!179 s1!490) l!3411))))

(declare-fun b!8022815 () Bool)

(declare-fun res!3172515 () Bool)

(declare-fun e!4726163 () Bool)

(assert (=> b!8022815 (=> (not res!3172515) (not e!4726163))))

(declare-fun lt!2720295 () List!75015)

(assert (=> b!8022815 (= res!3172515 (= (++!18559 (t!390758 p1!179) s1!490) lt!2720295))))

(declare-fun b!8022816 () Bool)

(declare-fun res!3172511 () Bool)

(assert (=> b!8022816 (=> (not res!3172511) (not e!4726162))))

(declare-fun p2!179 () List!75015)

(declare-fun s2!455 () List!75015)

(assert (=> b!8022816 (= res!3172511 (= (++!18559 p2!179 s2!455) l!3411))))

(declare-fun lt!2720296 () List!75015)

(declare-fun b!8022817 () Bool)

(assert (=> b!8022817 (= e!4726163 (not (= (++!18559 lt!2720296 s2!455) lt!2720295)))))

(declare-fun res!3172514 () Bool)

(assert (=> start!755214 (=> (not res!3172514) (not e!4726162))))

(declare-fun isPrefix!6822 (List!75015 List!75015) Bool)

(assert (=> start!755214 (= res!3172514 (isPrefix!6822 p1!179 l!3411))))

(assert (=> start!755214 e!4726162))

(declare-fun e!4726158 () Bool)

(assert (=> start!755214 e!4726158))

(declare-fun e!4726159 () Bool)

(assert (=> start!755214 e!4726159))

(declare-fun e!4726161 () Bool)

(assert (=> start!755214 e!4726161))

(declare-fun e!4726164 () Bool)

(assert (=> start!755214 e!4726164))

(declare-fun e!4726160 () Bool)

(assert (=> start!755214 e!4726160))

(declare-fun b!8022818 () Bool)

(declare-fun tp_is_empty!54115 () Bool)

(declare-fun tp!2401084 () Bool)

(assert (=> b!8022818 (= e!4726161 (and tp_is_empty!54115 tp!2401084))))

(declare-fun b!8022819 () Bool)

(declare-fun res!3172518 () Bool)

(assert (=> b!8022819 (=> (not res!3172518) (not e!4726162))))

(assert (=> b!8022819 (= res!3172518 (and (= p1!179 p2!179) (is-Cons!74891 p1!179)))))

(declare-fun b!8022820 () Bool)

(assert (=> b!8022820 (= e!4726162 e!4726163)))

(declare-fun res!3172516 () Bool)

(assert (=> b!8022820 (=> (not res!3172516) (not e!4726163))))

(assert (=> b!8022820 (= res!3172516 (isPrefix!6822 (t!390758 p1!179) lt!2720295))))

(declare-fun tail!15960 (List!75015) List!75015)

(assert (=> b!8022820 (= lt!2720295 (tail!15960 l!3411))))

(assert (=> b!8022820 (= lt!2720296 (tail!15960 p2!179))))

(declare-fun b!8022821 () Bool)

(declare-fun res!3172517 () Bool)

(assert (=> b!8022821 (=> (not res!3172517) (not e!4726163))))

(assert (=> b!8022821 (= res!3172517 (isPrefix!6822 lt!2720296 lt!2720295))))

(declare-fun b!8022822 () Bool)

(declare-fun tp!2401083 () Bool)

(assert (=> b!8022822 (= e!4726164 (and tp_is_empty!54115 tp!2401083))))

(declare-fun b!8022823 () Bool)

(declare-fun tp!2401085 () Bool)

(assert (=> b!8022823 (= e!4726159 (and tp_is_empty!54115 tp!2401085))))

(declare-fun b!8022824 () Bool)

(declare-fun tp!2401086 () Bool)

(assert (=> b!8022824 (= e!4726158 (and tp_is_empty!54115 tp!2401086))))

(declare-fun b!8022825 () Bool)

(declare-fun res!3172512 () Bool)

(assert (=> b!8022825 (=> (not res!3172512) (not e!4726162))))

(assert (=> b!8022825 (= res!3172512 (isPrefix!6822 p2!179 l!3411))))

(declare-fun b!8022826 () Bool)

(declare-fun tp!2401082 () Bool)

(assert (=> b!8022826 (= e!4726160 (and tp_is_empty!54115 tp!2401082))))

(assert (= (and start!755214 res!3172514) b!8022825))

(assert (= (and b!8022825 res!3172512) b!8022814))

(assert (= (and b!8022814 res!3172513) b!8022816))

(assert (= (and b!8022816 res!3172511) b!8022819))

(assert (= (and b!8022819 res!3172518) b!8022820))

(assert (= (and b!8022820 res!3172516) b!8022821))

(assert (= (and b!8022821 res!3172517) b!8022815))

(assert (= (and b!8022815 res!3172515) b!8022817))

(assert (= (and start!755214 (is-Cons!74891 p2!179)) b!8022824))

(assert (= (and start!755214 (is-Cons!74891 s2!455)) b!8022823))

(assert (= (and start!755214 (is-Cons!74891 l!3411)) b!8022818))

(assert (= (and start!755214 (is-Cons!74891 p1!179)) b!8022822))

(assert (= (and start!755214 (is-Cons!74891 s1!490)) b!8022826))

(declare-fun m!8385534 () Bool)

(assert (=> b!8022815 m!8385534))

(declare-fun m!8385536 () Bool)

(assert (=> start!755214 m!8385536))

(declare-fun m!8385538 () Bool)

(assert (=> b!8022821 m!8385538))

(declare-fun m!8385540 () Bool)

(assert (=> b!8022814 m!8385540))

(declare-fun m!8385542 () Bool)

(assert (=> b!8022817 m!8385542))

(declare-fun m!8385544 () Bool)

(assert (=> b!8022825 m!8385544))

(declare-fun m!8385546 () Bool)

(assert (=> b!8022816 m!8385546))

(declare-fun m!8385548 () Bool)

(assert (=> b!8022820 m!8385548))

(declare-fun m!8385550 () Bool)

(assert (=> b!8022820 m!8385550))

(declare-fun m!8385552 () Bool)

(assert (=> b!8022820 m!8385552))

(push 1)

(assert (not b!8022821))

(assert (not b!8022823))

(assert (not b!8022826))

(assert (not b!8022824))

(assert (not b!8022816))

(assert (not b!8022822))

(assert (not b!8022815))

(assert (not start!755214))

(assert (not b!8022820))

(assert (not b!8022818))

(assert (not b!8022814))

(assert tp_is_empty!54115)

(assert (not b!8022817))

(assert (not b!8022825))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!8022876 () Bool)

(declare-fun res!3172547 () Bool)

(declare-fun e!4726191 () Bool)

(assert (=> b!8022876 (=> (not res!3172547) (not e!4726191))))

(declare-fun lt!2720305 () List!75015)

(declare-fun size!43672 (List!75015) Int)

(assert (=> b!8022876 (= res!3172547 (= (size!43672 lt!2720305) (+ (size!43672 lt!2720296) (size!43672 s2!455))))))

(declare-fun b!8022877 () Bool)

(assert (=> b!8022877 (= e!4726191 (or (not (= s2!455 Nil!74891)) (= lt!2720305 lt!2720296)))))

(declare-fun b!8022875 () Bool)

(declare-fun e!4726190 () List!75015)

(assert (=> b!8022875 (= e!4726190 (Cons!74891 (h!81339 lt!2720296) (++!18559 (t!390758 lt!2720296) s2!455)))))

(declare-fun d!2392356 () Bool)

(assert (=> d!2392356 e!4726191))

(declare-fun res!3172548 () Bool)

(assert (=> d!2392356 (=> (not res!3172548) (not e!4726191))))

(declare-fun content!15948 (List!75015) (Set B!4227))

(assert (=> d!2392356 (= res!3172548 (= (content!15948 lt!2720305) (set.union (content!15948 lt!2720296) (content!15948 s2!455))))))

(assert (=> d!2392356 (= lt!2720305 e!4726190)))

(declare-fun c!1472260 () Bool)

(assert (=> d!2392356 (= c!1472260 (is-Nil!74891 lt!2720296))))

(assert (=> d!2392356 (= (++!18559 lt!2720296 s2!455) lt!2720305)))

(declare-fun b!8022874 () Bool)

(assert (=> b!8022874 (= e!4726190 s2!455)))

(assert (= (and d!2392356 c!1472260) b!8022874))

(assert (= (and d!2392356 (not c!1472260)) b!8022875))

(assert (= (and d!2392356 res!3172548) b!8022876))

(assert (= (and b!8022876 res!3172547) b!8022877))

(declare-fun m!8385574 () Bool)

(assert (=> b!8022876 m!8385574))

(declare-fun m!8385576 () Bool)

(assert (=> b!8022876 m!8385576))

(declare-fun m!8385578 () Bool)

(assert (=> b!8022876 m!8385578))

(declare-fun m!8385580 () Bool)

(assert (=> b!8022875 m!8385580))

(declare-fun m!8385582 () Bool)

(assert (=> d!2392356 m!8385582))

(declare-fun m!8385584 () Bool)

(assert (=> d!2392356 m!8385584))

(declare-fun m!8385586 () Bool)

(assert (=> d!2392356 m!8385586))

(assert (=> b!8022817 d!2392356))

(declare-fun b!8022880 () Bool)

(declare-fun res!3172549 () Bool)

(declare-fun e!4726193 () Bool)

(assert (=> b!8022880 (=> (not res!3172549) (not e!4726193))))

(declare-fun lt!2720306 () List!75015)

(assert (=> b!8022880 (= res!3172549 (= (size!43672 lt!2720306) (+ (size!43672 p2!179) (size!43672 s2!455))))))

(declare-fun b!8022881 () Bool)

(assert (=> b!8022881 (= e!4726193 (or (not (= s2!455 Nil!74891)) (= lt!2720306 p2!179)))))

(declare-fun b!8022879 () Bool)

(declare-fun e!4726192 () List!75015)

(assert (=> b!8022879 (= e!4726192 (Cons!74891 (h!81339 p2!179) (++!18559 (t!390758 p2!179) s2!455)))))

(declare-fun d!2392360 () Bool)

(assert (=> d!2392360 e!4726193))

(declare-fun res!3172550 () Bool)

(assert (=> d!2392360 (=> (not res!3172550) (not e!4726193))))

(assert (=> d!2392360 (= res!3172550 (= (content!15948 lt!2720306) (set.union (content!15948 p2!179) (content!15948 s2!455))))))

(assert (=> d!2392360 (= lt!2720306 e!4726192)))

(declare-fun c!1472261 () Bool)

(assert (=> d!2392360 (= c!1472261 (is-Nil!74891 p2!179))))

(assert (=> d!2392360 (= (++!18559 p2!179 s2!455) lt!2720306)))

(declare-fun b!8022878 () Bool)

(assert (=> b!8022878 (= e!4726192 s2!455)))

(assert (= (and d!2392360 c!1472261) b!8022878))

(assert (= (and d!2392360 (not c!1472261)) b!8022879))

(assert (= (and d!2392360 res!3172550) b!8022880))

(assert (= (and b!8022880 res!3172549) b!8022881))

(declare-fun m!8385588 () Bool)

(assert (=> b!8022880 m!8385588))

(declare-fun m!8385590 () Bool)

(assert (=> b!8022880 m!8385590))

(assert (=> b!8022880 m!8385578))

(declare-fun m!8385592 () Bool)

(assert (=> b!8022879 m!8385592))

(declare-fun m!8385594 () Bool)

(assert (=> d!2392360 m!8385594))

(declare-fun m!8385596 () Bool)

(assert (=> d!2392360 m!8385596))

(assert (=> d!2392360 m!8385586))

(assert (=> b!8022816 d!2392360))

(declare-fun d!2392362 () Bool)

(declare-fun e!4726205 () Bool)

(assert (=> d!2392362 e!4726205))

(declare-fun res!3172566 () Bool)

(assert (=> d!2392362 (=> res!3172566 e!4726205)))

(declare-fun lt!2720311 () Bool)

(assert (=> d!2392362 (= res!3172566 (not lt!2720311))))

(declare-fun e!4726204 () Bool)

(assert (=> d!2392362 (= lt!2720311 e!4726204)))

(declare-fun res!3172563 () Bool)

(assert (=> d!2392362 (=> res!3172563 e!4726204)))

(assert (=> d!2392362 (= res!3172563 (is-Nil!74891 lt!2720296))))

(assert (=> d!2392362 (= (isPrefix!6822 lt!2720296 lt!2720295) lt!2720311)))

(declare-fun b!8022898 () Bool)

(declare-fun e!4726206 () Bool)

(assert (=> b!8022898 (= e!4726204 e!4726206)))

(declare-fun res!3172565 () Bool)

(assert (=> b!8022898 (=> (not res!3172565) (not e!4726206))))

(assert (=> b!8022898 (= res!3172565 (not (is-Nil!74891 lt!2720295)))))

(declare-fun b!8022900 () Bool)

(assert (=> b!8022900 (= e!4726206 (isPrefix!6822 (tail!15960 lt!2720296) (tail!15960 lt!2720295)))))

(declare-fun b!8022899 () Bool)

(declare-fun res!3172564 () Bool)

(assert (=> b!8022899 (=> (not res!3172564) (not e!4726206))))

(declare-fun head!16423 (List!75015) B!4227)

(assert (=> b!8022899 (= res!3172564 (= (head!16423 lt!2720296) (head!16423 lt!2720295)))))

(declare-fun b!8022901 () Bool)

(assert (=> b!8022901 (= e!4726205 (>= (size!43672 lt!2720295) (size!43672 lt!2720296)))))

(assert (= (and d!2392362 (not res!3172563)) b!8022898))

(assert (= (and b!8022898 res!3172565) b!8022899))

(assert (= (and b!8022899 res!3172564) b!8022900))

(assert (= (and d!2392362 (not res!3172566)) b!8022901))

(declare-fun m!8385598 () Bool)

(assert (=> b!8022900 m!8385598))

(declare-fun m!8385600 () Bool)

(assert (=> b!8022900 m!8385600))

(assert (=> b!8022900 m!8385598))

(assert (=> b!8022900 m!8385600))

(declare-fun m!8385602 () Bool)

(assert (=> b!8022900 m!8385602))

(declare-fun m!8385604 () Bool)

(assert (=> b!8022899 m!8385604))

(declare-fun m!8385606 () Bool)

(assert (=> b!8022899 m!8385606))

(declare-fun m!8385608 () Bool)

(assert (=> b!8022901 m!8385608))

(assert (=> b!8022901 m!8385576))

(assert (=> b!8022821 d!2392362))

(declare-fun d!2392364 () Bool)

(declare-fun e!4726208 () Bool)

(assert (=> d!2392364 e!4726208))

(declare-fun res!3172570 () Bool)

(assert (=> d!2392364 (=> res!3172570 e!4726208)))

(declare-fun lt!2720312 () Bool)

(assert (=> d!2392364 (= res!3172570 (not lt!2720312))))

(declare-fun e!4726207 () Bool)

(assert (=> d!2392364 (= lt!2720312 e!4726207)))

(declare-fun res!3172567 () Bool)

(assert (=> d!2392364 (=> res!3172567 e!4726207)))

(assert (=> d!2392364 (= res!3172567 (is-Nil!74891 (t!390758 p1!179)))))

(assert (=> d!2392364 (= (isPrefix!6822 (t!390758 p1!179) lt!2720295) lt!2720312)))

(declare-fun b!8022902 () Bool)

(declare-fun e!4726209 () Bool)

(assert (=> b!8022902 (= e!4726207 e!4726209)))

(declare-fun res!3172569 () Bool)

(assert (=> b!8022902 (=> (not res!3172569) (not e!4726209))))

(assert (=> b!8022902 (= res!3172569 (not (is-Nil!74891 lt!2720295)))))

(declare-fun b!8022904 () Bool)

(assert (=> b!8022904 (= e!4726209 (isPrefix!6822 (tail!15960 (t!390758 p1!179)) (tail!15960 lt!2720295)))))

(declare-fun b!8022903 () Bool)

(declare-fun res!3172568 () Bool)

(assert (=> b!8022903 (=> (not res!3172568) (not e!4726209))))

(assert (=> b!8022903 (= res!3172568 (= (head!16423 (t!390758 p1!179)) (head!16423 lt!2720295)))))

(declare-fun b!8022905 () Bool)

(assert (=> b!8022905 (= e!4726208 (>= (size!43672 lt!2720295) (size!43672 (t!390758 p1!179))))))

(assert (= (and d!2392364 (not res!3172567)) b!8022902))

(assert (= (and b!8022902 res!3172569) b!8022903))

(assert (= (and b!8022903 res!3172568) b!8022904))

(assert (= (and d!2392364 (not res!3172570)) b!8022905))

(declare-fun m!8385610 () Bool)

(assert (=> b!8022904 m!8385610))

(assert (=> b!8022904 m!8385600))

(assert (=> b!8022904 m!8385610))

(assert (=> b!8022904 m!8385600))

(declare-fun m!8385612 () Bool)

(assert (=> b!8022904 m!8385612))

(declare-fun m!8385614 () Bool)

(assert (=> b!8022903 m!8385614))

(assert (=> b!8022903 m!8385606))

(assert (=> b!8022905 m!8385608))

(declare-fun m!8385616 () Bool)

(assert (=> b!8022905 m!8385616))

(assert (=> b!8022820 d!2392364))

(declare-fun d!2392366 () Bool)

(assert (=> d!2392366 (= (tail!15960 l!3411) (t!390758 l!3411))))

(assert (=> b!8022820 d!2392366))

(declare-fun d!2392368 () Bool)

(assert (=> d!2392368 (= (tail!15960 p2!179) (t!390758 p2!179))))

(assert (=> b!8022820 d!2392368))

(declare-fun d!2392370 () Bool)

(declare-fun e!4726211 () Bool)

(assert (=> d!2392370 e!4726211))

(declare-fun res!3172574 () Bool)

(assert (=> d!2392370 (=> res!3172574 e!4726211)))

(declare-fun lt!2720313 () Bool)

(assert (=> d!2392370 (= res!3172574 (not lt!2720313))))

(declare-fun e!4726210 () Bool)

(assert (=> d!2392370 (= lt!2720313 e!4726210)))

(declare-fun res!3172571 () Bool)

(assert (=> d!2392370 (=> res!3172571 e!4726210)))

(assert (=> d!2392370 (= res!3172571 (is-Nil!74891 p1!179))))

(assert (=> d!2392370 (= (isPrefix!6822 p1!179 l!3411) lt!2720313)))

(declare-fun b!8022906 () Bool)

(declare-fun e!4726212 () Bool)

(assert (=> b!8022906 (= e!4726210 e!4726212)))

(declare-fun res!3172573 () Bool)

(assert (=> b!8022906 (=> (not res!3172573) (not e!4726212))))

(assert (=> b!8022906 (= res!3172573 (not (is-Nil!74891 l!3411)))))

(declare-fun b!8022908 () Bool)

(assert (=> b!8022908 (= e!4726212 (isPrefix!6822 (tail!15960 p1!179) (tail!15960 l!3411)))))

(declare-fun b!8022907 () Bool)

(declare-fun res!3172572 () Bool)

(assert (=> b!8022907 (=> (not res!3172572) (not e!4726212))))

(assert (=> b!8022907 (= res!3172572 (= (head!16423 p1!179) (head!16423 l!3411)))))

(declare-fun b!8022909 () Bool)

(assert (=> b!8022909 (= e!4726211 (>= (size!43672 l!3411) (size!43672 p1!179)))))

(assert (= (and d!2392370 (not res!3172571)) b!8022906))

(assert (= (and b!8022906 res!3172573) b!8022907))

(assert (= (and b!8022907 res!3172572) b!8022908))

(assert (= (and d!2392370 (not res!3172574)) b!8022909))

(declare-fun m!8385618 () Bool)

(assert (=> b!8022908 m!8385618))

(assert (=> b!8022908 m!8385550))

(assert (=> b!8022908 m!8385618))

(assert (=> b!8022908 m!8385550))

(declare-fun m!8385620 () Bool)

(assert (=> b!8022908 m!8385620))

(declare-fun m!8385622 () Bool)

(assert (=> b!8022907 m!8385622))

(declare-fun m!8385624 () Bool)

(assert (=> b!8022907 m!8385624))

(declare-fun m!8385626 () Bool)

(assert (=> b!8022909 m!8385626))

(declare-fun m!8385628 () Bool)

(assert (=> b!8022909 m!8385628))

(assert (=> start!755214 d!2392370))

(declare-fun b!8022912 () Bool)

(declare-fun res!3172575 () Bool)

(declare-fun e!4726214 () Bool)

(assert (=> b!8022912 (=> (not res!3172575) (not e!4726214))))

(declare-fun lt!2720314 () List!75015)

(assert (=> b!8022912 (= res!3172575 (= (size!43672 lt!2720314) (+ (size!43672 (t!390758 p1!179)) (size!43672 s1!490))))))

(declare-fun b!8022913 () Bool)

(assert (=> b!8022913 (= e!4726214 (or (not (= s1!490 Nil!74891)) (= lt!2720314 (t!390758 p1!179))))))

(declare-fun b!8022911 () Bool)

(declare-fun e!4726213 () List!75015)

(assert (=> b!8022911 (= e!4726213 (Cons!74891 (h!81339 (t!390758 p1!179)) (++!18559 (t!390758 (t!390758 p1!179)) s1!490)))))

(declare-fun d!2392372 () Bool)

(assert (=> d!2392372 e!4726214))

(declare-fun res!3172576 () Bool)

(assert (=> d!2392372 (=> (not res!3172576) (not e!4726214))))

(assert (=> d!2392372 (= res!3172576 (= (content!15948 lt!2720314) (set.union (content!15948 (t!390758 p1!179)) (content!15948 s1!490))))))

(assert (=> d!2392372 (= lt!2720314 e!4726213)))

(declare-fun c!1472264 () Bool)

(assert (=> d!2392372 (= c!1472264 (is-Nil!74891 (t!390758 p1!179)))))

(assert (=> d!2392372 (= (++!18559 (t!390758 p1!179) s1!490) lt!2720314)))

(declare-fun b!8022910 () Bool)

(assert (=> b!8022910 (= e!4726213 s1!490)))

(assert (= (and d!2392372 c!1472264) b!8022910))

(assert (= (and d!2392372 (not c!1472264)) b!8022911))

(assert (= (and d!2392372 res!3172576) b!8022912))

(assert (= (and b!8022912 res!3172575) b!8022913))

(declare-fun m!8385630 () Bool)

(assert (=> b!8022912 m!8385630))

(assert (=> b!8022912 m!8385616))

(declare-fun m!8385632 () Bool)

(assert (=> b!8022912 m!8385632))

(declare-fun m!8385634 () Bool)

(assert (=> b!8022911 m!8385634))

(declare-fun m!8385636 () Bool)

(assert (=> d!2392372 m!8385636))

(declare-fun m!8385638 () Bool)

(assert (=> d!2392372 m!8385638))

(declare-fun m!8385640 () Bool)

(assert (=> d!2392372 m!8385640))

(assert (=> b!8022815 d!2392372))

(declare-fun b!8022920 () Bool)

(declare-fun res!3172579 () Bool)

(declare-fun e!4726218 () Bool)

(assert (=> b!8022920 (=> (not res!3172579) (not e!4726218))))

(declare-fun lt!2720316 () List!75015)

(assert (=> b!8022920 (= res!3172579 (= (size!43672 lt!2720316) (+ (size!43672 p1!179) (size!43672 s1!490))))))

(declare-fun b!8022921 () Bool)

(assert (=> b!8022921 (= e!4726218 (or (not (= s1!490 Nil!74891)) (= lt!2720316 p1!179)))))

(declare-fun b!8022919 () Bool)

(declare-fun e!4726217 () List!75015)

(assert (=> b!8022919 (= e!4726217 (Cons!74891 (h!81339 p1!179) (++!18559 (t!390758 p1!179) s1!490)))))

(declare-fun d!2392374 () Bool)

(assert (=> d!2392374 e!4726218))

(declare-fun res!3172580 () Bool)

(assert (=> d!2392374 (=> (not res!3172580) (not e!4726218))))

(assert (=> d!2392374 (= res!3172580 (= (content!15948 lt!2720316) (set.union (content!15948 p1!179) (content!15948 s1!490))))))

(assert (=> d!2392374 (= lt!2720316 e!4726217)))

(declare-fun c!1472266 () Bool)

(assert (=> d!2392374 (= c!1472266 (is-Nil!74891 p1!179))))

(assert (=> d!2392374 (= (++!18559 p1!179 s1!490) lt!2720316)))

(declare-fun b!8022918 () Bool)

(assert (=> b!8022918 (= e!4726217 s1!490)))

(assert (= (and d!2392374 c!1472266) b!8022918))

(assert (= (and d!2392374 (not c!1472266)) b!8022919))

(assert (= (and d!2392374 res!3172580) b!8022920))

(assert (= (and b!8022920 res!3172579) b!8022921))

(declare-fun m!8385642 () Bool)

(assert (=> b!8022920 m!8385642))

(assert (=> b!8022920 m!8385628))

(assert (=> b!8022920 m!8385632))

(assert (=> b!8022919 m!8385534))

(declare-fun m!8385644 () Bool)

(assert (=> d!2392374 m!8385644))

(declare-fun m!8385646 () Bool)

(assert (=> d!2392374 m!8385646))

(assert (=> d!2392374 m!8385640))

(assert (=> b!8022814 d!2392374))

(declare-fun d!2392376 () Bool)

(declare-fun e!4726220 () Bool)

(assert (=> d!2392376 e!4726220))

(declare-fun res!3172584 () Bool)

(assert (=> d!2392376 (=> res!3172584 e!4726220)))

(declare-fun lt!2720317 () Bool)

(assert (=> d!2392376 (= res!3172584 (not lt!2720317))))

(declare-fun e!4726219 () Bool)

(assert (=> d!2392376 (= lt!2720317 e!4726219)))

(declare-fun res!3172581 () Bool)

(assert (=> d!2392376 (=> res!3172581 e!4726219)))

(assert (=> d!2392376 (= res!3172581 (is-Nil!74891 p2!179))))

(assert (=> d!2392376 (= (isPrefix!6822 p2!179 l!3411) lt!2720317)))

(declare-fun b!8022922 () Bool)

(declare-fun e!4726221 () Bool)

(assert (=> b!8022922 (= e!4726219 e!4726221)))

(declare-fun res!3172583 () Bool)

(assert (=> b!8022922 (=> (not res!3172583) (not e!4726221))))

(assert (=> b!8022922 (= res!3172583 (not (is-Nil!74891 l!3411)))))

(declare-fun b!8022924 () Bool)

(assert (=> b!8022924 (= e!4726221 (isPrefix!6822 (tail!15960 p2!179) (tail!15960 l!3411)))))

(declare-fun b!8022923 () Bool)

(declare-fun res!3172582 () Bool)

(assert (=> b!8022923 (=> (not res!3172582) (not e!4726221))))

(assert (=> b!8022923 (= res!3172582 (= (head!16423 p2!179) (head!16423 l!3411)))))

(declare-fun b!8022925 () Bool)

(assert (=> b!8022925 (= e!4726220 (>= (size!43672 l!3411) (size!43672 p2!179)))))

(assert (= (and d!2392376 (not res!3172581)) b!8022922))

(assert (= (and b!8022922 res!3172583) b!8022923))

(assert (= (and b!8022923 res!3172582) b!8022924))

(assert (= (and d!2392376 (not res!3172584)) b!8022925))

(assert (=> b!8022924 m!8385552))

(assert (=> b!8022924 m!8385550))

(assert (=> b!8022924 m!8385552))

(assert (=> b!8022924 m!8385550))

(declare-fun m!8385648 () Bool)

(assert (=> b!8022924 m!8385648))

(declare-fun m!8385650 () Bool)

(assert (=> b!8022923 m!8385650))

(assert (=> b!8022923 m!8385624))

(assert (=> b!8022925 m!8385626))

(assert (=> b!8022925 m!8385590))

(assert (=> b!8022825 d!2392376))

(declare-fun b!8022930 () Bool)

(declare-fun e!4726224 () Bool)

(declare-fun tp!2401104 () Bool)

(assert (=> b!8022930 (= e!4726224 (and tp_is_empty!54115 tp!2401104))))

(assert (=> b!8022822 (= tp!2401083 e!4726224)))

(assert (= (and b!8022822 (is-Cons!74891 (t!390758 p1!179))) b!8022930))

(declare-fun b!8022931 () Bool)

(declare-fun e!4726225 () Bool)

(declare-fun tp!2401105 () Bool)

(assert (=> b!8022931 (= e!4726225 (and tp_is_empty!54115 tp!2401105))))

(assert (=> b!8022826 (= tp!2401082 e!4726225)))

(assert (= (and b!8022826 (is-Cons!74891 (t!390758 s1!490))) b!8022931))

(declare-fun b!8022932 () Bool)

(declare-fun e!4726226 () Bool)

(declare-fun tp!2401106 () Bool)

(assert (=> b!8022932 (= e!4726226 (and tp_is_empty!54115 tp!2401106))))

(assert (=> b!8022824 (= tp!2401086 e!4726226)))

(assert (= (and b!8022824 (is-Cons!74891 (t!390758 p2!179))) b!8022932))

(declare-fun b!8022933 () Bool)

(declare-fun e!4726227 () Bool)

(declare-fun tp!2401107 () Bool)

(assert (=> b!8022933 (= e!4726227 (and tp_is_empty!54115 tp!2401107))))

(assert (=> b!8022818 (= tp!2401084 e!4726227)))

(assert (= (and b!8022818 (is-Cons!74891 (t!390758 l!3411))) b!8022933))

(declare-fun b!8022934 () Bool)

(declare-fun e!4726228 () Bool)

(declare-fun tp!2401108 () Bool)

(assert (=> b!8022934 (= e!4726228 (and tp_is_empty!54115 tp!2401108))))

(assert (=> b!8022823 (= tp!2401085 e!4726228)))

(assert (= (and b!8022823 (is-Cons!74891 (t!390758 s2!455))) b!8022934))

(push 1)

(assert (not b!8022879))

(assert (not b!8022932))

(assert (not b!8022911))

(assert (not d!2392360))

(assert (not b!8022919))

(assert (not b!8022900))

(assert (not b!8022923))

(assert (not b!8022904))

(assert (not d!2392372))

(assert (not b!8022876))

(assert (not b!8022907))

(assert (not b!8022905))

(assert (not b!8022899))

(assert (not b!8022880))

(assert (not d!2392374))

(assert (not b!8022901))

(assert (not b!8022930))

(assert (not b!8022933))

(assert (not b!8022924))

(assert (not b!8022908))

(assert tp_is_empty!54115)

(assert (not b!8022909))

(assert (not d!2392356))

(assert (not b!8022903))

(assert (not b!8022934))

(assert (not b!8022912))

(assert (not b!8022920))

(assert (not b!8022875))

(assert (not b!8022925))

(assert (not b!8022931))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

