; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!272170 () Bool)

(assert start!272170)

(declare-fun b!2811560 () Bool)

(declare-fun e!1778112 () Bool)

(declare-fun tp_is_empty!14381 () Bool)

(declare-fun tp!897907 () Bool)

(assert (=> b!2811560 (= e!1778112 (and tp_is_empty!14381 tp!897907))))

(declare-fun b!2811558 () Bool)

(declare-fun e!1778113 () Bool)

(declare-fun e!1778111 () Bool)

(assert (=> b!2811558 (= e!1778113 (not e!1778111))))

(declare-fun res!1170517 () Bool)

(assert (=> b!2811558 (=> res!1170517 e!1778111)))

(declare-datatypes ((Conc!10167 0) (Object!5249 0) (IArray!20339 0) (List!32953 0) (BalanceConc!19959 0))(
  ( (Node!10167 (left!24772 Conc!10167) (right!25102 Conc!10167) (csize!20564 Int) (cheight!10378 Int)) (Leaf!15489 (xs!13279 IArray!20339) (csize!20565 Int)) (Empty!10167) )
  ( (BalanceConc!19958 (value!158115 BalanceConc!19959)) (List!32952 (value!158116 List!32953)) (Character!109 (value!158117 (_ BitVec 16))) (Open!109 (value!158118 Int)) )
  ( (IArray!20340 (innerList!10227 List!32953)) )
  ( (Nil!32842) (Cons!32842 (h!38262 Object!5249) (t!229906 List!32953)) )
  ( (BalanceConc!19960 (c!455493 Conc!10167)) )
))
(declare-datatypes ((T!54778 0))(
  ( (T!54779 (val!10329 Int)) )
))
(declare-datatypes ((List!32954 0))(
  ( (Nil!32843) (Cons!32843 (h!38263 T!54778) (t!229907 List!32954)) )
))
(declare-datatypes ((Vector!226 0))(
  ( (Vector!227 (underlying!8353 Object!5249) (overflowing!170 List!32954)) )
))
(declare-fun lt!1004381 () Vector!226)

(declare-fun lt!1004380 () List!32954)

(declare-fun ll!54 () List!32954)

(declare-fun list!12302 (Vector!226) List!32954)

(declare-fun rec!20 (List!32954 Vector!226) Vector!226)

(declare-fun ++!8062 (List!32954 List!32954) List!32954)

(assert (=> b!2811558 (= res!1170517 (not (= (list!12302 (rec!20 (t!229907 ll!54) lt!1004381)) (++!8062 lt!1004380 (t!229907 ll!54)))))))

(declare-fun lt!1004382 () List!32954)

(declare-fun $colon+!200 (List!32954 T!54778) List!32954)

(assert (=> b!2811558 (= lt!1004380 ($colon+!200 lt!1004382 (h!38263 ll!54)))))

(assert (=> b!2811558 (= lt!1004380 (list!12302 lt!1004381))))

(declare-fun v!5966 () Vector!226)

(assert (=> b!2811558 (= lt!1004382 (list!12302 v!5966))))

(declare-fun $colon+!201 (Vector!226 T!54778) Vector!226)

(assert (=> b!2811558 (= lt!1004381 ($colon+!201 v!5966 (h!38263 ll!54)))))

(declare-fun b!2811559 () Bool)

(assert (=> b!2811559 (= e!1778111 (= lt!1004380 (++!8062 lt!1004382 (Cons!32843 (h!38263 ll!54) Nil!32843))))))

(declare-fun b!2811561 () Bool)

(declare-fun e!1778110 () Bool)

(declare-fun tp!897906 () Bool)

(declare-fun tp!897905 () Bool)

(assert (=> b!2811561 (= e!1778110 (and tp!897906 tp!897905))))

(declare-fun res!1170518 () Bool)

(assert (=> start!272170 (=> (not res!1170518) (not e!1778113))))

(assert (=> start!272170 (= res!1170518 (not (is-Nil!32843 ll!54)))))

(assert (=> start!272170 e!1778113))

(assert (=> start!272170 e!1778112))

(assert (=> start!272170 e!1778110))

(assert (= (and start!272170 res!1170518) b!2811558))

(assert (= (and b!2811558 (not res!1170517)) b!2811559))

(assert (= (and start!272170 (is-Cons!32843 ll!54)) b!2811560))

(assert (= start!272170 b!2811561))

(declare-fun m!3241409 () Bool)

(assert (=> b!2811558 m!3241409))

(declare-fun m!3241411 () Bool)

(assert (=> b!2811558 m!3241411))

(declare-fun m!3241413 () Bool)

(assert (=> b!2811558 m!3241413))

(declare-fun m!3241415 () Bool)

(assert (=> b!2811558 m!3241415))

(declare-fun m!3241417 () Bool)

(assert (=> b!2811558 m!3241417))

(declare-fun m!3241419 () Bool)

(assert (=> b!2811558 m!3241419))

(assert (=> b!2811558 m!3241409))

(declare-fun m!3241421 () Bool)

(assert (=> b!2811558 m!3241421))

(declare-fun m!3241423 () Bool)

(assert (=> b!2811559 m!3241423))

(push 1)

(assert (not b!2811560))

(assert (not b!2811558))

(assert tp_is_empty!14381)

(assert (not b!2811559))

(assert (not b!2811561))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2811583 () Bool)

(declare-fun e!1778130 () List!32954)

(assert (=> b!2811583 (= e!1778130 (Cons!32843 (h!38263 lt!1004382) (++!8062 (t!229907 lt!1004382) (Cons!32843 (h!38263 ll!54) Nil!32843))))))

(declare-fun d!816082 () Bool)

(declare-fun e!1778131 () Bool)

(assert (=> d!816082 e!1778131))

(declare-fun res!1170530 () Bool)

(assert (=> d!816082 (=> (not res!1170530) (not e!1778131))))

(declare-fun lt!1004394 () List!32954)

(declare-fun content!4574 (List!32954) (Set T!54778))

(assert (=> d!816082 (= res!1170530 (= (content!4574 lt!1004394) (set.union (content!4574 lt!1004382) (content!4574 (Cons!32843 (h!38263 ll!54) Nil!32843)))))))

(assert (=> d!816082 (= lt!1004394 e!1778130)))

(declare-fun c!455497 () Bool)

(assert (=> d!816082 (= c!455497 (is-Nil!32843 lt!1004382))))

(assert (=> d!816082 (= (++!8062 lt!1004382 (Cons!32843 (h!38263 ll!54) Nil!32843)) lt!1004394)))

(declare-fun b!2811582 () Bool)

(assert (=> b!2811582 (= e!1778130 (Cons!32843 (h!38263 ll!54) Nil!32843))))

(declare-fun b!2811584 () Bool)

(declare-fun res!1170529 () Bool)

(assert (=> b!2811584 (=> (not res!1170529) (not e!1778131))))

(declare-fun size!25599 (List!32954) Int)

(assert (=> b!2811584 (= res!1170529 (= (size!25599 lt!1004394) (+ (size!25599 lt!1004382) (size!25599 (Cons!32843 (h!38263 ll!54) Nil!32843)))))))

(declare-fun b!2811585 () Bool)

(assert (=> b!2811585 (= e!1778131 (or (not (= (Cons!32843 (h!38263 ll!54) Nil!32843) Nil!32843)) (= lt!1004394 lt!1004382)))))

(assert (= (and d!816082 c!455497) b!2811582))

(assert (= (and d!816082 (not c!455497)) b!2811583))

(assert (= (and d!816082 res!1170530) b!2811584))

(assert (= (and b!2811584 res!1170529) b!2811585))

(declare-fun m!3241441 () Bool)

(assert (=> b!2811583 m!3241441))

(declare-fun m!3241443 () Bool)

(assert (=> d!816082 m!3241443))

(declare-fun m!3241445 () Bool)

(assert (=> d!816082 m!3241445))

(declare-fun m!3241447 () Bool)

(assert (=> d!816082 m!3241447))

(declare-fun m!3241449 () Bool)

(assert (=> b!2811584 m!3241449))

(declare-fun m!3241451 () Bool)

(assert (=> b!2811584 m!3241451))

(declare-fun m!3241453 () Bool)

(assert (=> b!2811584 m!3241453))

(assert (=> b!2811559 d!816082))

(declare-fun d!816084 () Bool)

(declare-fun choose!16600 (Vector!226) List!32954)

(assert (=> d!816084 (= (list!12302 v!5966) (choose!16600 v!5966))))

(declare-fun bs!516424 () Bool)

(assert (= bs!516424 d!816084))

(declare-fun m!3241455 () Bool)

(assert (=> bs!516424 m!3241455))

(assert (=> b!2811558 d!816084))

(declare-fun b!2811614 () Bool)

(declare-fun e!1778144 () List!32954)

(assert (=> b!2811614 (= e!1778144 (Cons!32843 (h!38263 lt!1004382) ($colon+!200 (t!229907 lt!1004382) (h!38263 ll!54))))))

(declare-fun e!1778146 () Bool)

(declare-fun b!2811615 () Bool)

(declare-fun lt!1004400 () List!32954)

(assert (=> b!2811615 (= e!1778146 (= lt!1004400 (++!8062 lt!1004382 (Cons!32843 (h!38263 ll!54) Nil!32843))))))

(declare-fun bm!183076 () Bool)

(declare-fun call!183082 () (_ BitVec 32))

(declare-fun isize!65 (List!32954) (_ BitVec 32))

(assert (=> bm!183076 (= call!183082 (isize!65 lt!1004382))))

(declare-fun b!2811616 () Bool)

(declare-fun res!1170545 () Bool)

(assert (=> b!2811616 (=> (not res!1170545) (not e!1778146))))

(declare-fun e!1778145 () Bool)

(assert (=> b!2811616 (= res!1170545 e!1778145)))

(declare-fun c!455506 () Bool)

(assert (=> b!2811616 (= c!455506 (bvslt (isize!65 lt!1004382) #b01111111111111111111111111111111))))

(declare-fun b!2811617 () Bool)

(assert (=> b!2811617 (= e!1778144 (Cons!32843 (h!38263 ll!54) lt!1004382))))

(declare-fun b!2811618 () Bool)

(declare-fun call!183081 () (_ BitVec 32))

(assert (=> b!2811618 (= e!1778145 (= call!183081 call!183082))))

(declare-fun d!816086 () Bool)

(assert (=> d!816086 e!1778146))

(declare-fun res!1170548 () Bool)

(assert (=> d!816086 (=> (not res!1170548) (not e!1778146))))

(assert (=> d!816086 (= res!1170548 (is-Cons!32843 lt!1004400))))

(assert (=> d!816086 (= lt!1004400 e!1778144)))

(declare-fun c!455505 () Bool)

(assert (=> d!816086 (= c!455505 (is-Nil!32843 lt!1004382))))

(assert (=> d!816086 (= ($colon+!200 lt!1004382 (h!38263 ll!54)) lt!1004400)))

(declare-fun b!2811619 () Bool)

(declare-fun res!1170547 () Bool)

(assert (=> b!2811619 (=> (not res!1170547) (not e!1778146))))

(assert (=> b!2811619 (= res!1170547 (= (size!25599 lt!1004400) (+ (size!25599 lt!1004382) 1)))))

(declare-fun bm!183077 () Bool)

(assert (=> bm!183077 (= call!183081 (isize!65 lt!1004400))))

(declare-fun b!2811620 () Bool)

(declare-fun res!1170546 () Bool)

(assert (=> b!2811620 (=> (not res!1170546) (not e!1778146))))

(assert (=> b!2811620 (= res!1170546 (= (content!4574 lt!1004400) (set.union (content!4574 lt!1004382) (set.insert (h!38263 ll!54) (as set.empty (Set T!54778))))))))

(declare-fun b!2811621 () Bool)

(assert (=> b!2811621 (= e!1778145 (= call!183081 (bvadd call!183082 #b00000000000000000000000000000001)))))

(assert (= (and d!816086 c!455505) b!2811617))

(assert (= (and d!816086 (not c!455505)) b!2811614))

(assert (= (and d!816086 res!1170548) b!2811619))

(assert (= (and b!2811619 res!1170547) b!2811616))

(assert (= (and b!2811616 c!455506) b!2811621))

(assert (= (and b!2811616 (not c!455506)) b!2811618))

(assert (= (or b!2811621 b!2811618) bm!183076))

(assert (= (or b!2811621 b!2811618) bm!183077))

(assert (= (and b!2811616 res!1170545) b!2811620))

(assert (= (and b!2811620 res!1170546) b!2811615))

(assert (=> b!2811615 m!3241423))

(declare-fun m!3241475 () Bool)

(assert (=> bm!183077 m!3241475))

(declare-fun m!3241477 () Bool)

(assert (=> bm!183076 m!3241477))

(declare-fun m!3241479 () Bool)

(assert (=> b!2811619 m!3241479))

(assert (=> b!2811619 m!3241451))

(assert (=> b!2811616 m!3241477))

(declare-fun m!3241481 () Bool)

(assert (=> b!2811620 m!3241481))

(assert (=> b!2811620 m!3241445))

(declare-fun m!3241483 () Bool)

(assert (=> b!2811620 m!3241483))

(declare-fun m!3241485 () Bool)

(assert (=> b!2811614 m!3241485))

(assert (=> b!2811558 d!816086))

(declare-fun d!816094 () Bool)

(declare-fun lt!1004418 () Vector!226)

(assert (=> d!816094 (= (list!12302 lt!1004418) (++!8062 (list!12302 lt!1004381) (t!229907 ll!54)))))

(declare-fun e!1778149 () Vector!226)

(assert (=> d!816094 (= lt!1004418 e!1778149)))

(declare-fun c!455509 () Bool)

(assert (=> d!816094 (= c!455509 (is-Nil!32843 (t!229907 ll!54)))))

(assert (=> d!816094 (= (rec!20 (t!229907 ll!54) lt!1004381) lt!1004418)))

(declare-fun b!2811626 () Bool)

(assert (=> b!2811626 (= e!1778149 lt!1004381)))

(declare-fun b!2811627 () Bool)

(declare-fun lt!1004414 () Vector!226)

(assert (=> b!2811627 (= e!1778149 (rec!20 (t!229907 (t!229907 ll!54)) lt!1004414))))

(declare-fun lt!1004417 () List!32954)

(assert (=> b!2811627 (= lt!1004417 (list!12302 lt!1004381))))

(declare-fun lt!1004413 () List!32954)

(assert (=> b!2811627 (= lt!1004413 (Cons!32843 (h!38263 (t!229907 ll!54)) Nil!32843))))

(declare-datatypes ((Unit!46854 0))(
  ( (Unit!46855) )
))
(declare-fun lt!1004415 () Unit!46854)

(declare-fun lemmaConcatAssociativity!1671 (List!32954 List!32954 List!32954) Unit!46854)

(assert (=> b!2811627 (= lt!1004415 (lemmaConcatAssociativity!1671 lt!1004417 lt!1004413 (t!229907 (t!229907 ll!54))))))

(assert (=> b!2811627 (= (++!8062 (++!8062 lt!1004417 lt!1004413) (t!229907 (t!229907 ll!54))) (++!8062 lt!1004417 (++!8062 lt!1004413 (t!229907 (t!229907 ll!54)))))))

(declare-fun lt!1004416 () Unit!46854)

(assert (=> b!2811627 (= lt!1004416 lt!1004415)))

(assert (=> b!2811627 (= lt!1004414 ($colon+!201 lt!1004381 (h!38263 (t!229907 ll!54))))))

(assert (=> b!2811627 (= (list!12302 lt!1004414) ($colon+!200 (list!12302 lt!1004381) (h!38263 (t!229907 ll!54))))))

(assert (= (and d!816094 c!455509) b!2811626))

(assert (= (and d!816094 (not c!455509)) b!2811627))

(declare-fun m!3241487 () Bool)

(assert (=> d!816094 m!3241487))

(assert (=> d!816094 m!3241413))

(assert (=> d!816094 m!3241413))

(declare-fun m!3241489 () Bool)

(assert (=> d!816094 m!3241489))

(assert (=> b!2811627 m!3241413))

(declare-fun m!3241491 () Bool)

(assert (=> b!2811627 m!3241491))

(declare-fun m!3241493 () Bool)

(assert (=> b!2811627 m!3241493))

(declare-fun m!3241495 () Bool)

(assert (=> b!2811627 m!3241495))

(assert (=> b!2811627 m!3241493))

(declare-fun m!3241497 () Bool)

(assert (=> b!2811627 m!3241497))

(assert (=> b!2811627 m!3241413))

(declare-fun m!3241499 () Bool)

(assert (=> b!2811627 m!3241499))

(declare-fun m!3241501 () Bool)

(assert (=> b!2811627 m!3241501))

(declare-fun m!3241503 () Bool)

(assert (=> b!2811627 m!3241503))

(declare-fun m!3241505 () Bool)

(assert (=> b!2811627 m!3241505))

(assert (=> b!2811627 m!3241499))

(declare-fun m!3241507 () Bool)

(assert (=> b!2811627 m!3241507))

(assert (=> b!2811558 d!816094))

(declare-fun b!2811631 () Bool)

(declare-fun e!1778150 () List!32954)

(assert (=> b!2811631 (= e!1778150 (Cons!32843 (h!38263 lt!1004380) (++!8062 (t!229907 lt!1004380) (t!229907 ll!54))))))

(declare-fun d!816096 () Bool)

(declare-fun e!1778151 () Bool)

(assert (=> d!816096 e!1778151))

(declare-fun res!1170550 () Bool)

(assert (=> d!816096 (=> (not res!1170550) (not e!1778151))))

(declare-fun lt!1004421 () List!32954)

(assert (=> d!816096 (= res!1170550 (= (content!4574 lt!1004421) (set.union (content!4574 lt!1004380) (content!4574 (t!229907 ll!54)))))))

(assert (=> d!816096 (= lt!1004421 e!1778150)))

(declare-fun c!455510 () Bool)

(assert (=> d!816096 (= c!455510 (is-Nil!32843 lt!1004380))))

(assert (=> d!816096 (= (++!8062 lt!1004380 (t!229907 ll!54)) lt!1004421)))

(declare-fun b!2811630 () Bool)

(assert (=> b!2811630 (= e!1778150 (t!229907 ll!54))))

(declare-fun b!2811632 () Bool)

(declare-fun res!1170549 () Bool)

(assert (=> b!2811632 (=> (not res!1170549) (not e!1778151))))

(assert (=> b!2811632 (= res!1170549 (= (size!25599 lt!1004421) (+ (size!25599 lt!1004380) (size!25599 (t!229907 ll!54)))))))

(declare-fun b!2811633 () Bool)

(assert (=> b!2811633 (= e!1778151 (or (not (= (t!229907 ll!54) Nil!32843)) (= lt!1004421 lt!1004380)))))

(assert (= (and d!816096 c!455510) b!2811630))

(assert (= (and d!816096 (not c!455510)) b!2811631))

(assert (= (and d!816096 res!1170550) b!2811632))

(assert (= (and b!2811632 res!1170549) b!2811633))

(declare-fun m!3241509 () Bool)

(assert (=> b!2811631 m!3241509))

(declare-fun m!3241511 () Bool)

(assert (=> d!816096 m!3241511))

(declare-fun m!3241513 () Bool)

(assert (=> d!816096 m!3241513))

(declare-fun m!3241515 () Bool)

(assert (=> d!816096 m!3241515))

(declare-fun m!3241517 () Bool)

(assert (=> b!2811632 m!3241517))

(declare-fun m!3241519 () Bool)

(assert (=> b!2811632 m!3241519))

(declare-fun m!3241521 () Bool)

(assert (=> b!2811632 m!3241521))

(assert (=> b!2811558 d!816096))

(declare-fun d!816098 () Bool)

(declare-fun lt!1004424 () Vector!226)

(assert (=> d!816098 (= (list!12302 lt!1004424) ($colon+!200 (list!12302 v!5966) (h!38263 ll!54)))))

(declare-fun choose!16601 (Vector!226 T!54778) Vector!226)

(assert (=> d!816098 (= lt!1004424 (choose!16601 v!5966 (h!38263 ll!54)))))

(assert (=> d!816098 (= ($colon+!201 v!5966 (h!38263 ll!54)) lt!1004424)))

(declare-fun bs!516427 () Bool)

(assert (= bs!516427 d!816098))

(declare-fun m!3241523 () Bool)

(assert (=> bs!516427 m!3241523))

(assert (=> bs!516427 m!3241419))

(assert (=> bs!516427 m!3241419))

(declare-fun m!3241525 () Bool)

(assert (=> bs!516427 m!3241525))

(declare-fun m!3241527 () Bool)

(assert (=> bs!516427 m!3241527))

(assert (=> b!2811558 d!816098))

(declare-fun d!816100 () Bool)

(assert (=> d!816100 (= (list!12302 lt!1004381) (choose!16600 lt!1004381))))

(declare-fun bs!516428 () Bool)

(assert (= bs!516428 d!816100))

(declare-fun m!3241529 () Bool)

(assert (=> bs!516428 m!3241529))

(assert (=> b!2811558 d!816100))

(declare-fun d!816102 () Bool)

(assert (=> d!816102 (= (list!12302 (rec!20 (t!229907 ll!54) lt!1004381)) (choose!16600 (rec!20 (t!229907 ll!54) lt!1004381)))))

(declare-fun bs!516429 () Bool)

(assert (= bs!516429 d!816102))

(assert (=> bs!516429 m!3241409))

(declare-fun m!3241531 () Bool)

(assert (=> bs!516429 m!3241531))

(assert (=> b!2811558 d!816102))

(declare-fun b!2811652 () Bool)

(declare-fun e!1778160 () Bool)

(declare-fun tp!897919 () Bool)

(assert (=> b!2811652 (= e!1778160 (and tp_is_empty!14381 tp!897919))))

(assert (=> b!2811560 (= tp!897907 e!1778160)))

(assert (= (and b!2811560 (is-Cons!32843 (t!229907 ll!54))) b!2811652))

(declare-fun b!2811662 () Bool)

(declare-fun e!1778166 () Bool)

(declare-fun tp!897924 () Bool)

(declare-fun inv!44584 (Conc!10167) Bool)

(assert (=> b!2811662 (= e!1778166 (and (inv!44584 (c!455493 (value!158115 (underlying!8353 v!5966)))) tp!897924))))

(declare-fun b!2811661 () Bool)

(declare-fun e!1778165 () Bool)

(declare-fun inv!44585 (BalanceConc!19959) Bool)

(assert (=> b!2811661 (= e!1778165 (and (inv!44585 (value!158115 (underlying!8353 v!5966))) e!1778166))))

(declare-fun b!2811663 () Bool)

(declare-fun tp!897925 () Bool)

(assert (=> b!2811663 (= e!1778165 tp!897925)))

(assert (=> b!2811561 (= tp!897906 e!1778165)))

(assert (= b!2811661 b!2811662))

(assert (= (and b!2811561 (is-BalanceConc!19958 (underlying!8353 v!5966))) b!2811661))

(assert (= (and b!2811561 (is-List!32952 (underlying!8353 v!5966))) b!2811663))

(declare-fun m!3241533 () Bool)

(assert (=> b!2811662 m!3241533))

(declare-fun m!3241535 () Bool)

(assert (=> b!2811661 m!3241535))

(declare-fun b!2811664 () Bool)

(declare-fun e!1778167 () Bool)

(declare-fun tp!897926 () Bool)

(assert (=> b!2811664 (= e!1778167 (and tp_is_empty!14381 tp!897926))))

(assert (=> b!2811561 (= tp!897905 e!1778167)))

(assert (= (and b!2811561 (is-Cons!32843 (overflowing!170 v!5966))) b!2811664))

(push 1)

(assert (not b!2811584))

(assert (not b!2811615))

(assert (not b!2811583))

(assert (not b!2811616))

(assert (not d!816096))

(assert (not d!816100))

(assert (not d!816082))

(assert (not b!2811614))

(assert (not b!2811632))

(assert (not b!2811664))

(assert (not bm!183076))

(assert (not d!816084))

(assert (not b!2811619))

(assert (not b!2811661))

(assert (not b!2811631))

(assert (not b!2811620))

(assert (not d!816098))

(assert tp_is_empty!14381)

(assert (not d!816102))

(assert (not b!2811627))

(assert (not d!816094))

(assert (not b!2811662))

(assert (not bm!183077))

(assert (not b!2811663))

(assert (not b!2811652))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

