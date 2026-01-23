; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!248818 () Bool)

(assert start!248818)

(declare-fun b!2575913 () Bool)

(declare-fun e!1625327 () Bool)

(declare-datatypes ((B!1927 0))(
  ( (B!1928 (val!9391 Int)) )
))
(declare-datatypes ((List!29725 0))(
  ( (Nil!29625) (Cons!29625 (h!35045 B!1927) (t!211424 List!29725)) )
))
(declare-fun l1!976 () List!29725)

(declare-fun l2!953 () List!29725)

(declare-fun consecutiveSubseqAtHead!12 (List!29725 List!29725) Bool)

(assert (=> b!2575913 (= e!1625327 (not (consecutiveSubseqAtHead!12 l1!976 l2!953)))))

(declare-fun b!2575914 () Bool)

(declare-fun res!1083499 () Bool)

(declare-fun e!1625328 () Bool)

(assert (=> b!2575914 (=> (not res!1083499) (not e!1625328))))

(assert (=> b!2575914 (= res!1083499 (and (is-Cons!29625 l1!976) (is-Cons!29625 l2!953)))))

(declare-fun b!2575915 () Bool)

(declare-fun res!1083498 () Bool)

(assert (=> b!2575915 (=> (not res!1083498) (not e!1625328))))

(declare-fun consecutiveSubseq!13 (List!29725 List!29725) Bool)

(assert (=> b!2575915 (= res!1083498 (consecutiveSubseq!13 l1!976 (t!211424 l2!953)))))

(declare-fun b!2575916 () Bool)

(declare-fun e!1625325 () Bool)

(declare-fun tp_is_empty!13175 () Bool)

(declare-fun tp!818832 () Bool)

(assert (=> b!2575916 (= e!1625325 (and tp_is_empty!13175 tp!818832))))

(declare-fun b!2575917 () Bool)

(declare-fun e!1625326 () Bool)

(declare-fun tp!818831 () Bool)

(assert (=> b!2575917 (= e!1625326 (and tp_is_empty!13175 tp!818831))))

(declare-fun b!2575918 () Bool)

(declare-fun res!1083496 () Bool)

(assert (=> b!2575918 (=> (not res!1083496) (not e!1625328))))

(assert (=> b!2575918 (= res!1083496 e!1625327)))

(declare-fun res!1083495 () Bool)

(assert (=> b!2575918 (=> res!1083495 e!1625327)))

(assert (=> b!2575918 (= res!1083495 (or (not (is-Cons!29625 l1!976)) (not (is-Cons!29625 l2!953))))))

(declare-fun res!1083497 () Bool)

(assert (=> start!248818 (=> (not res!1083497) (not e!1625328))))

(assert (=> start!248818 (= res!1083497 (consecutiveSubseq!13 l1!976 l2!953))))

(assert (=> start!248818 e!1625328))

(assert (=> start!248818 e!1625326))

(assert (=> start!248818 e!1625325))

(declare-fun b!2575919 () Bool)

(declare-fun subseq!444 (List!29725 List!29725) Bool)

(assert (=> b!2575919 (= e!1625328 (not (subseq!444 l1!976 l2!953)))))

(assert (=> b!2575919 (subseq!444 l1!976 (t!211424 l2!953))))

(declare-datatypes ((Unit!43473 0))(
  ( (Unit!43474) )
))
(declare-fun lt!906593 () Unit!43473)

(declare-fun lemmaConsecutiveSubseqThenSubseq!3 (List!29725 List!29725) Unit!43473)

(assert (=> b!2575919 (= lt!906593 (lemmaConsecutiveSubseqThenSubseq!3 l1!976 (t!211424 l2!953)))))

(assert (= (and start!248818 res!1083497) b!2575918))

(assert (= (and b!2575918 (not res!1083495)) b!2575913))

(assert (= (and b!2575918 res!1083496) b!2575914))

(assert (= (and b!2575914 res!1083499) b!2575915))

(assert (= (and b!2575915 res!1083498) b!2575919))

(assert (= (and start!248818 (is-Cons!29625 l1!976)) b!2575917))

(assert (= (and start!248818 (is-Cons!29625 l2!953)) b!2575916))

(declare-fun m!2910679 () Bool)

(assert (=> b!2575913 m!2910679))

(declare-fun m!2910681 () Bool)

(assert (=> b!2575915 m!2910681))

(declare-fun m!2910683 () Bool)

(assert (=> start!248818 m!2910683))

(declare-fun m!2910685 () Bool)

(assert (=> b!2575919 m!2910685))

(declare-fun m!2910687 () Bool)

(assert (=> b!2575919 m!2910687))

(declare-fun m!2910689 () Bool)

(assert (=> b!2575919 m!2910689))

(push 1)

(assert tp_is_empty!13175)

(assert (not b!2575915))

(assert (not b!2575913))

(assert (not b!2575917))

(assert (not start!248818))

(assert (not b!2575916))

(assert (not b!2575919))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!728538 () Bool)

(declare-fun res!1083523 () Bool)

(declare-fun e!1625349 () Bool)

(assert (=> d!728538 (=> res!1083523 e!1625349)))

(assert (=> d!728538 (= res!1083523 (is-Nil!29625 l1!976))))

(assert (=> d!728538 (= (subseq!444 l1!976 l2!953) e!1625349)))

(declare-fun b!2575950 () Bool)

(declare-fun e!1625351 () Bool)

(declare-fun e!1625352 () Bool)

(assert (=> b!2575950 (= e!1625351 e!1625352)))

(declare-fun res!1083526 () Bool)

(assert (=> b!2575950 (=> res!1083526 e!1625352)))

(declare-fun e!1625350 () Bool)

(assert (=> b!2575950 (= res!1083526 e!1625350)))

(declare-fun res!1083525 () Bool)

(assert (=> b!2575950 (=> (not res!1083525) (not e!1625350))))

(assert (=> b!2575950 (= res!1083525 (= (h!35045 l1!976) (h!35045 l2!953)))))

(declare-fun b!2575951 () Bool)

(assert (=> b!2575951 (= e!1625350 (subseq!444 (t!211424 l1!976) (t!211424 l2!953)))))

(declare-fun b!2575952 () Bool)

(assert (=> b!2575952 (= e!1625352 (subseq!444 l1!976 (t!211424 l2!953)))))

(declare-fun b!2575949 () Bool)

(assert (=> b!2575949 (= e!1625349 e!1625351)))

(declare-fun res!1083524 () Bool)

(assert (=> b!2575949 (=> (not res!1083524) (not e!1625351))))

(assert (=> b!2575949 (= res!1083524 (is-Cons!29625 l2!953))))

(assert (= (and d!728538 (not res!1083523)) b!2575949))

(assert (= (and b!2575949 res!1083524) b!2575950))

(assert (= (and b!2575950 res!1083525) b!2575951))

(assert (= (and b!2575950 (not res!1083526)) b!2575952))

(declare-fun m!2910703 () Bool)

(assert (=> b!2575951 m!2910703))

(assert (=> b!2575952 m!2910687))

(assert (=> b!2575919 d!728538))

(declare-fun d!728540 () Bool)

(declare-fun res!1083527 () Bool)

(declare-fun e!1625353 () Bool)

(assert (=> d!728540 (=> res!1083527 e!1625353)))

(assert (=> d!728540 (= res!1083527 (is-Nil!29625 l1!976))))

(assert (=> d!728540 (= (subseq!444 l1!976 (t!211424 l2!953)) e!1625353)))

(declare-fun b!2575954 () Bool)

(declare-fun e!1625355 () Bool)

(declare-fun e!1625356 () Bool)

(assert (=> b!2575954 (= e!1625355 e!1625356)))

(declare-fun res!1083530 () Bool)

(assert (=> b!2575954 (=> res!1083530 e!1625356)))

(declare-fun e!1625354 () Bool)

(assert (=> b!2575954 (= res!1083530 e!1625354)))

(declare-fun res!1083529 () Bool)

(assert (=> b!2575954 (=> (not res!1083529) (not e!1625354))))

(assert (=> b!2575954 (= res!1083529 (= (h!35045 l1!976) (h!35045 (t!211424 l2!953))))))

(declare-fun b!2575955 () Bool)

(assert (=> b!2575955 (= e!1625354 (subseq!444 (t!211424 l1!976) (t!211424 (t!211424 l2!953))))))

(declare-fun b!2575956 () Bool)

(assert (=> b!2575956 (= e!1625356 (subseq!444 l1!976 (t!211424 (t!211424 l2!953))))))

(declare-fun b!2575953 () Bool)

(assert (=> b!2575953 (= e!1625353 e!1625355)))

(declare-fun res!1083528 () Bool)

(assert (=> b!2575953 (=> (not res!1083528) (not e!1625355))))

(assert (=> b!2575953 (= res!1083528 (is-Cons!29625 (t!211424 l2!953)))))

(assert (= (and d!728540 (not res!1083527)) b!2575953))

(assert (= (and b!2575953 res!1083528) b!2575954))

(assert (= (and b!2575954 res!1083529) b!2575955))

(assert (= (and b!2575954 (not res!1083530)) b!2575956))

(declare-fun m!2910705 () Bool)

(assert (=> b!2575955 m!2910705))

(declare-fun m!2910707 () Bool)

(assert (=> b!2575956 m!2910707))

(assert (=> b!2575919 d!728540))

(declare-fun d!728544 () Bool)

(assert (=> d!728544 (subseq!444 l1!976 (t!211424 l2!953))))

(declare-fun lt!906599 () Unit!43473)

(declare-fun choose!15192 (List!29725 List!29725) Unit!43473)

(assert (=> d!728544 (= lt!906599 (choose!15192 l1!976 (t!211424 l2!953)))))

(assert (=> d!728544 (consecutiveSubseq!13 l1!976 (t!211424 l2!953))))

(assert (=> d!728544 (= (lemmaConsecutiveSubseqThenSubseq!3 l1!976 (t!211424 l2!953)) lt!906599)))

(declare-fun bs!470152 () Bool)

(assert (= bs!470152 d!728544))

(assert (=> bs!470152 m!2910687))

(declare-fun m!2910709 () Bool)

(assert (=> bs!470152 m!2910709))

(assert (=> bs!470152 m!2910681))

(assert (=> b!2575919 d!728544))

(declare-fun d!728546 () Bool)

(declare-fun c!414890 () Bool)

(assert (=> d!728546 (= c!414890 (is-Cons!29625 (t!211424 l2!953)))))

(declare-fun e!1625361 () Bool)

(assert (=> d!728546 (= (consecutiveSubseq!13 l1!976 (t!211424 l2!953)) e!1625361)))

(declare-fun b!2575965 () Bool)

(declare-fun e!1625362 () Bool)

(assert (=> b!2575965 (= e!1625362 (consecutiveSubseq!13 l1!976 (t!211424 (t!211424 l2!953))))))

(declare-fun b!2575964 () Bool)

(declare-fun call!166650 () Bool)

(assert (=> b!2575964 (= e!1625361 call!166650)))

(declare-fun b!2575963 () Bool)

(assert (=> b!2575963 (= e!1625361 e!1625362)))

(declare-fun res!1083533 () Bool)

(assert (=> b!2575963 (= res!1083533 call!166650)))

(assert (=> b!2575963 (=> res!1083533 e!1625362)))

(declare-fun bm!166645 () Bool)

(assert (=> bm!166645 (= call!166650 (consecutiveSubseqAtHead!12 l1!976 (t!211424 l2!953)))))

(assert (= (and d!728546 c!414890) b!2575963))

(assert (= (and d!728546 (not c!414890)) b!2575964))

(assert (= (and b!2575963 (not res!1083533)) b!2575965))

(assert (= (or b!2575963 b!2575964) bm!166645))

(declare-fun m!2910711 () Bool)

(assert (=> b!2575965 m!2910711))

(declare-fun m!2910713 () Bool)

(assert (=> bm!166645 m!2910713))

(assert (=> b!2575915 d!728546))

(declare-fun d!728548 () Bool)

(declare-fun c!414891 () Bool)

(assert (=> d!728548 (= c!414891 (is-Cons!29625 l2!953))))

(declare-fun e!1625363 () Bool)

(assert (=> d!728548 (= (consecutiveSubseq!13 l1!976 l2!953) e!1625363)))

(declare-fun b!2575968 () Bool)

(declare-fun e!1625364 () Bool)

(assert (=> b!2575968 (= e!1625364 (consecutiveSubseq!13 l1!976 (t!211424 l2!953)))))

(declare-fun b!2575967 () Bool)

(declare-fun call!166651 () Bool)

(assert (=> b!2575967 (= e!1625363 call!166651)))

(declare-fun b!2575966 () Bool)

(assert (=> b!2575966 (= e!1625363 e!1625364)))

(declare-fun res!1083534 () Bool)

(assert (=> b!2575966 (= res!1083534 call!166651)))

(assert (=> b!2575966 (=> res!1083534 e!1625364)))

(declare-fun bm!166646 () Bool)

(assert (=> bm!166646 (= call!166651 (consecutiveSubseqAtHead!12 l1!976 l2!953))))

(assert (= (and d!728548 c!414891) b!2575966))

(assert (= (and d!728548 (not c!414891)) b!2575967))

(assert (= (and b!2575966 (not res!1083534)) b!2575968))

(assert (= (or b!2575966 b!2575967) bm!166646))

(assert (=> b!2575968 m!2910681))

(assert (=> bm!166646 m!2910679))

(assert (=> start!248818 d!728548))

(declare-fun d!728550 () Bool)

(declare-fun res!1083547 () Bool)

(declare-fun e!1625377 () Bool)

(assert (=> d!728550 (=> res!1083547 e!1625377)))

(assert (=> d!728550 (= res!1083547 (is-Nil!29625 l1!976))))

(assert (=> d!728550 (= (consecutiveSubseqAtHead!12 l1!976 l2!953) e!1625377)))

(declare-fun b!2575981 () Bool)

(declare-fun e!1625378 () Bool)

(assert (=> b!2575981 (= e!1625377 e!1625378)))

(declare-fun res!1083548 () Bool)

(assert (=> b!2575981 (=> (not res!1083548) (not e!1625378))))

(assert (=> b!2575981 (= res!1083548 (and (is-Cons!29625 l2!953) (= (h!35045 l1!976) (h!35045 l2!953))))))

(declare-fun b!2575982 () Bool)

(assert (=> b!2575982 (= e!1625378 (consecutiveSubseqAtHead!12 (t!211424 l1!976) (t!211424 l2!953)))))

(assert (= (and d!728550 (not res!1083547)) b!2575981))

(assert (= (and b!2575981 res!1083548) b!2575982))

(declare-fun m!2910715 () Bool)

(assert (=> b!2575982 m!2910715))

(assert (=> b!2575913 d!728550))

(declare-fun b!2575987 () Bool)

(declare-fun e!1625381 () Bool)

(declare-fun tp!818841 () Bool)

(assert (=> b!2575987 (= e!1625381 (and tp_is_empty!13175 tp!818841))))

(assert (=> b!2575916 (= tp!818832 e!1625381)))

(assert (= (and b!2575916 (is-Cons!29625 (t!211424 l2!953))) b!2575987))

(declare-fun b!2575988 () Bool)

(declare-fun e!1625382 () Bool)

(declare-fun tp!818842 () Bool)

(assert (=> b!2575988 (= e!1625382 (and tp_is_empty!13175 tp!818842))))

(assert (=> b!2575917 (= tp!818831 e!1625382)))

(assert (= (and b!2575917 (is-Cons!29625 (t!211424 l1!976))) b!2575988))

(push 1)

(assert (not b!2575988))

(assert (not b!2575956))

(assert (not bm!166646))

(assert (not b!2575968))

(assert (not d!728544))

(assert (not b!2575955))

(assert (not bm!166645))

(assert (not b!2575951))

(assert tp_is_empty!13175)

(assert (not b!2575965))

(assert (not b!2575952))

(assert (not b!2575987))

(assert (not b!2575982))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

