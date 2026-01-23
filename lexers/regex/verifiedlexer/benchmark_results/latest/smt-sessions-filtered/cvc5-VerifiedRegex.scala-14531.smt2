; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!754890 () Bool)

(assert start!754890)

(declare-fun b!8019955 () Bool)

(declare-fun e!4724347 () Bool)

(declare-fun tp_is_empty!54027 () Bool)

(declare-fun tp!2400372 () Bool)

(assert (=> b!8019955 (= e!4724347 (and tp_is_empty!54027 tp!2400372))))

(declare-fun b!8019956 () Bool)

(declare-fun e!4724346 () Bool)

(declare-fun tp!2400373 () Bool)

(assert (=> b!8019956 (= e!4724346 (and tp_is_empty!54027 tp!2400373))))

(declare-fun b!8019957 () Bool)

(declare-fun e!4724345 () Bool)

(declare-fun tp!2400371 () Bool)

(assert (=> b!8019957 (= e!4724345 (and tp_is_empty!54027 tp!2400371))))

(declare-fun b!8019958 () Bool)

(declare-fun res!3171058 () Bool)

(declare-fun e!4724344 () Bool)

(assert (=> b!8019958 (=> (not res!3171058) (not e!4724344))))

(declare-datatypes ((B!4139 0))(
  ( (B!4140 (val!32459 Int)) )
))
(declare-datatypes ((List!74971 0))(
  ( (Nil!74847) (Cons!74847 (h!81295 B!4139) (t!390714 List!74971)) )
))
(declare-fun s1!496 () List!74971)

(assert (=> b!8019958 (= res!3171058 (is-Cons!74847 s1!496))))

(declare-fun b!8019959 () Bool)

(declare-fun res!3171059 () Bool)

(assert (=> b!8019959 (=> (not res!3171059) (not e!4724344))))

(declare-fun lt!2719680 () List!74971)

(declare-fun tot!47 () List!74971)

(declare-fun ++!18537 (List!74971 List!74971) List!74971)

(declare-fun tail!15926 (List!74971) List!74971)

(assert (=> b!8019959 (= res!3171059 (= (++!18537 (t!390714 s1!496) lt!2719680) (tail!15926 tot!47)))))

(declare-fun b!8019960 () Bool)

(declare-fun ListPrimitiveSize!494 (List!74971) Int)

(assert (=> b!8019960 (= e!4724344 (>= (ListPrimitiveSize!494 (t!390714 s1!496)) (ListPrimitiveSize!494 s1!496)))))

(declare-fun res!3171057 () Bool)

(assert (=> start!754890 (=> (not res!3171057) (not e!4724344))))

(assert (=> start!754890 (= res!3171057 (= (++!18537 s1!496 lt!2719680) tot!47))))

(declare-fun hd2!39 () B!4139)

(declare-fun tl2!39 () List!74971)

(assert (=> start!754890 (= lt!2719680 (Cons!74847 hd2!39 tl2!39))))

(assert (=> start!754890 e!4724344))

(assert (=> start!754890 e!4724345))

(assert (=> start!754890 tp_is_empty!54027))

(assert (=> start!754890 e!4724346))

(assert (=> start!754890 e!4724347))

(assert (= (and start!754890 res!3171057) b!8019958))

(assert (= (and b!8019958 res!3171058) b!8019959))

(assert (= (and b!8019959 res!3171059) b!8019960))

(assert (= (and start!754890 (is-Cons!74847 tl2!39)) b!8019957))

(assert (= (and start!754890 (is-Cons!74847 s1!496)) b!8019956))

(assert (= (and start!754890 (is-Cons!74847 tot!47)) b!8019955))

(declare-fun m!8382922 () Bool)

(assert (=> b!8019959 m!8382922))

(declare-fun m!8382924 () Bool)

(assert (=> b!8019959 m!8382924))

(declare-fun m!8382926 () Bool)

(assert (=> b!8019960 m!8382926))

(declare-fun m!8382928 () Bool)

(assert (=> b!8019960 m!8382928))

(declare-fun m!8382930 () Bool)

(assert (=> start!754890 m!8382930))

(push 1)

(assert (not b!8019955))

(assert (not b!8019960))

(assert (not b!8019956))

(assert (not b!8019959))

(assert tp_is_empty!54027)

(assert (not start!754890))

(assert (not b!8019957))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!8019991 () Bool)

(declare-fun e!4724366 () List!74971)

(assert (=> b!8019991 (= e!4724366 lt!2719680)))

(declare-fun b!8019993 () Bool)

(declare-fun res!3171074 () Bool)

(declare-fun e!4724367 () Bool)

(assert (=> b!8019993 (=> (not res!3171074) (not e!4724367))))

(declare-fun lt!2719688 () List!74971)

(declare-fun size!43634 (List!74971) Int)

(assert (=> b!8019993 (= res!3171074 (= (size!43634 lt!2719688) (+ (size!43634 (t!390714 s1!496)) (size!43634 lt!2719680))))))

(declare-fun b!8019992 () Bool)

(assert (=> b!8019992 (= e!4724366 (Cons!74847 (h!81295 (t!390714 s1!496)) (++!18537 (t!390714 (t!390714 s1!496)) lt!2719680)))))

(declare-fun b!8019994 () Bool)

(assert (=> b!8019994 (= e!4724367 (or (not (= lt!2719680 Nil!74847)) (= lt!2719688 (t!390714 s1!496))))))

(declare-fun d!2391408 () Bool)

(assert (=> d!2391408 e!4724367))

(declare-fun res!3171073 () Bool)

(assert (=> d!2391408 (=> (not res!3171073) (not e!4724367))))

(declare-fun content!15933 (List!74971) (Set B!4139))

(assert (=> d!2391408 (= res!3171073 (= (content!15933 lt!2719688) (set.union (content!15933 (t!390714 s1!496)) (content!15933 lt!2719680))))))

(assert (=> d!2391408 (= lt!2719688 e!4724366)))

(declare-fun c!1471949 () Bool)

(assert (=> d!2391408 (= c!1471949 (is-Nil!74847 (t!390714 s1!496)))))

(assert (=> d!2391408 (= (++!18537 (t!390714 s1!496) lt!2719680) lt!2719688)))

(assert (= (and d!2391408 c!1471949) b!8019991))

(assert (= (and d!2391408 (not c!1471949)) b!8019992))

(assert (= (and d!2391408 res!3171073) b!8019993))

(assert (= (and b!8019993 res!3171074) b!8019994))

(declare-fun m!8382942 () Bool)

(assert (=> b!8019993 m!8382942))

(declare-fun m!8382944 () Bool)

(assert (=> b!8019993 m!8382944))

(declare-fun m!8382946 () Bool)

(assert (=> b!8019993 m!8382946))

(declare-fun m!8382948 () Bool)

(assert (=> b!8019992 m!8382948))

(declare-fun m!8382950 () Bool)

(assert (=> d!2391408 m!8382950))

(declare-fun m!8382952 () Bool)

(assert (=> d!2391408 m!8382952))

(declare-fun m!8382954 () Bool)

(assert (=> d!2391408 m!8382954))

(assert (=> b!8019959 d!2391408))

(declare-fun d!2391412 () Bool)

(assert (=> d!2391412 (= (tail!15926 tot!47) (t!390714 tot!47))))

(assert (=> b!8019959 d!2391412))

(declare-fun b!8019995 () Bool)

(declare-fun e!4724368 () List!74971)

(assert (=> b!8019995 (= e!4724368 lt!2719680)))

(declare-fun b!8019997 () Bool)

(declare-fun res!3171076 () Bool)

(declare-fun e!4724369 () Bool)

(assert (=> b!8019997 (=> (not res!3171076) (not e!4724369))))

(declare-fun lt!2719689 () List!74971)

(assert (=> b!8019997 (= res!3171076 (= (size!43634 lt!2719689) (+ (size!43634 s1!496) (size!43634 lt!2719680))))))

(declare-fun b!8019996 () Bool)

(assert (=> b!8019996 (= e!4724368 (Cons!74847 (h!81295 s1!496) (++!18537 (t!390714 s1!496) lt!2719680)))))

(declare-fun b!8019998 () Bool)

(assert (=> b!8019998 (= e!4724369 (or (not (= lt!2719680 Nil!74847)) (= lt!2719689 s1!496)))))

(declare-fun d!2391414 () Bool)

(assert (=> d!2391414 e!4724369))

(declare-fun res!3171075 () Bool)

(assert (=> d!2391414 (=> (not res!3171075) (not e!4724369))))

(assert (=> d!2391414 (= res!3171075 (= (content!15933 lt!2719689) (set.union (content!15933 s1!496) (content!15933 lt!2719680))))))

(assert (=> d!2391414 (= lt!2719689 e!4724368)))

(declare-fun c!1471950 () Bool)

(assert (=> d!2391414 (= c!1471950 (is-Nil!74847 s1!496))))

(assert (=> d!2391414 (= (++!18537 s1!496 lt!2719680) lt!2719689)))

(assert (= (and d!2391414 c!1471950) b!8019995))

(assert (= (and d!2391414 (not c!1471950)) b!8019996))

(assert (= (and d!2391414 res!3171075) b!8019997))

(assert (= (and b!8019997 res!3171076) b!8019998))

(declare-fun m!8382956 () Bool)

(assert (=> b!8019997 m!8382956))

(declare-fun m!8382958 () Bool)

(assert (=> b!8019997 m!8382958))

(assert (=> b!8019997 m!8382946))

(assert (=> b!8019996 m!8382922))

(declare-fun m!8382960 () Bool)

(assert (=> d!2391414 m!8382960))

(declare-fun m!8382962 () Bool)

(assert (=> d!2391414 m!8382962))

(assert (=> d!2391414 m!8382954))

(assert (=> start!754890 d!2391414))

(declare-fun d!2391416 () Bool)

(declare-fun lt!2719694 () Int)

(assert (=> d!2391416 (>= lt!2719694 0)))

(declare-fun e!4724374 () Int)

(assert (=> d!2391416 (= lt!2719694 e!4724374)))

(declare-fun c!1471955 () Bool)

(assert (=> d!2391416 (= c!1471955 (is-Nil!74847 (t!390714 s1!496)))))

(assert (=> d!2391416 (= (ListPrimitiveSize!494 (t!390714 s1!496)) lt!2719694)))

(declare-fun b!8020007 () Bool)

(assert (=> b!8020007 (= e!4724374 0)))

(declare-fun b!8020008 () Bool)

(assert (=> b!8020008 (= e!4724374 (+ 1 (ListPrimitiveSize!494 (t!390714 (t!390714 s1!496)))))))

(assert (= (and d!2391416 c!1471955) b!8020007))

(assert (= (and d!2391416 (not c!1471955)) b!8020008))

(declare-fun m!8382966 () Bool)

(assert (=> b!8020008 m!8382966))

(assert (=> b!8019960 d!2391416))

(declare-fun d!2391422 () Bool)

(declare-fun lt!2719695 () Int)

(assert (=> d!2391422 (>= lt!2719695 0)))

(declare-fun e!4724375 () Int)

(assert (=> d!2391422 (= lt!2719695 e!4724375)))

(declare-fun c!1471956 () Bool)

(assert (=> d!2391422 (= c!1471956 (is-Nil!74847 s1!496))))

(assert (=> d!2391422 (= (ListPrimitiveSize!494 s1!496) lt!2719695)))

(declare-fun b!8020009 () Bool)

(assert (=> b!8020009 (= e!4724375 0)))

(declare-fun b!8020010 () Bool)

(assert (=> b!8020010 (= e!4724375 (+ 1 (ListPrimitiveSize!494 (t!390714 s1!496))))))

(assert (= (and d!2391422 c!1471956) b!8020009))

(assert (= (and d!2391422 (not c!1471956)) b!8020010))

(assert (=> b!8020010 m!8382926))

(assert (=> b!8019960 d!2391422))

(declare-fun b!8020015 () Bool)

(declare-fun e!4724378 () Bool)

(declare-fun tp!2400385 () Bool)

(assert (=> b!8020015 (= e!4724378 (and tp_is_empty!54027 tp!2400385))))

(assert (=> b!8019956 (= tp!2400373 e!4724378)))

(assert (= (and b!8019956 (is-Cons!74847 (t!390714 s1!496))) b!8020015))

(declare-fun b!8020016 () Bool)

(declare-fun e!4724379 () Bool)

(declare-fun tp!2400386 () Bool)

(assert (=> b!8020016 (= e!4724379 (and tp_is_empty!54027 tp!2400386))))

(assert (=> b!8019957 (= tp!2400371 e!4724379)))

(assert (= (and b!8019957 (is-Cons!74847 (t!390714 tl2!39))) b!8020016))

(declare-fun b!8020017 () Bool)

(declare-fun e!4724380 () Bool)

(declare-fun tp!2400387 () Bool)

(assert (=> b!8020017 (= e!4724380 (and tp_is_empty!54027 tp!2400387))))

(assert (=> b!8019955 (= tp!2400372 e!4724380)))

(assert (= (and b!8019955 (is-Cons!74847 (t!390714 tot!47))) b!8020017))

(push 1)

(assert (not b!8020016))

(assert (not b!8019996))

(assert (not b!8019992))

(assert (not b!8020015))

(assert (not b!8019997))

(assert tp_is_empty!54027)

(assert (not d!2391414))

(assert (not b!8020008))

(assert (not b!8020017))

(assert (not d!2391408))

(assert (not b!8020010))

(assert (not b!8019993))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

