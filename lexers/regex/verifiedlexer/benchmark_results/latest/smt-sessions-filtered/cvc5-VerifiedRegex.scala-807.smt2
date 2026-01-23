; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!45304 () Bool)

(assert start!45304)

(declare-fun b_free!13237 () Bool)

(declare-fun b_next!13237 () Bool)

(assert (=> start!45304 (= b_free!13237 (not b_next!13237))))

(declare-fun tp!130972 () Bool)

(declare-fun b_and!50587 () Bool)

(assert (=> start!45304 (= tp!130972 b_and!50587)))

(declare-fun b_free!13239 () Bool)

(declare-fun b_next!13239 () Bool)

(assert (=> start!45304 (= b_free!13239 (not b_next!13239))))

(declare-fun tp!130973 () Bool)

(declare-fun b_and!50589 () Bool)

(assert (=> start!45304 (= tp!130973 b_and!50589)))

(declare-fun b!472523 () Bool)

(assert (=> b!472523 true))

(declare-fun lambda!14169 () Int)

(declare-fun order!4311 () Int)

(declare-fun f!1019 () Int)

(declare-fun order!4313 () Int)

(declare-fun dynLambda!2932 (Int Int) Int)

(declare-fun dynLambda!2933 (Int Int) Int)

(assert (=> b!472523 (< (dynLambda!2932 order!4311 f!1019) (dynLambda!2933 order!4313 lambda!14169))))

(assert (=> b!472523 true))

(declare-fun order!4315 () Int)

(declare-fun p!1765 () Int)

(declare-fun dynLambda!2934 (Int Int) Int)

(assert (=> b!472523 (< (dynLambda!2934 order!4315 p!1765) (dynLambda!2933 order!4313 lambda!14169))))

(declare-fun bs!58542 () Bool)

(declare-fun b!472525 () Bool)

(assert (= bs!58542 (and b!472525 b!472523)))

(declare-fun lambda!14170 () Int)

(assert (=> bs!58542 (not (= lambda!14170 lambda!14169))))

(assert (=> b!472525 true))

(assert (=> b!472525 true))

(assert (=> b!472525 (< (dynLambda!2932 order!4311 f!1019) (dynLambda!2933 order!4313 lambda!14170))))

(declare-datatypes ((A!413 0))(
  ( (A!414 (val!1551 Int)) )
))
(declare-fun x!112799 () A!413)

(declare-fun inst!200 () Bool)

(declare-fun b!472524 () Bool)

(declare-fun tp_is_empty!2205 () Bool)

(declare-datatypes ((B!975 0))(
  ( (B!976 (val!1552 Int)) )
))
(declare-fun forall!1336 ((Set B!975) Int) Bool)

(declare-fun dynLambda!2935 (Int A!413) (Set B!975))

(assert (=> b!472524 (= inst!200 (=> tp_is_empty!2205 (forall!1336 (dynLambda!2935 f!1019 x!112799) p!1765)))))

(declare-fun b_lambda!19791 () Bool)

(assert (=> (not b_lambda!19791) (not b!472524)))

(declare-fun t!73043 () Bool)

(declare-fun tb!47065 () Bool)

(assert (=> (and start!45304 (= f!1019 f!1019) t!73043) tb!47065))

(assert (=> b!472524 t!73043))

(declare-fun result!51876 () Bool)

(declare-fun b_and!50591 () Bool)

(assert (= b_and!50587 (and (=> t!73043 result!51876) b_and!50591)))

(declare-fun m!745893 () Bool)

(assert (=> b!472524 m!745893))

(assert (=> b!472524 m!745893))

(declare-fun m!745895 () Bool)

(assert (=> b!472524 m!745895))

(declare-fun bs!58543 () Bool)

(declare-fun neg-inst!200 () Bool)

(declare-fun s!18177 () Bool)

(assert (= bs!58543 (and neg-inst!200 s!18177)))

(assert (=> bs!58543 (=> true (forall!1336 (dynLambda!2935 f!1019 x!112799) p!1765))))

(declare-fun b_lambda!19793 () Bool)

(assert (=> (not b_lambda!19793) (not bs!58543)))

(assert (=> bs!58543 t!73043))

(declare-fun b_and!50593 () Bool)

(assert (= b_and!50591 (and (=> t!73043 result!51876) b_and!50593)))

(assert (=> m!745893 m!745895))

(assert (=> m!745893 s!18177))

(declare-fun bs!58544 () Bool)

(assert (= bs!58544 (and neg-inst!200 b!472524)))

(assert (=> bs!58544 (= true inst!200)))

(declare-fun res!209679 () Bool)

(declare-fun e!288977 () Bool)

(assert (=> b!472523 (=> (not res!209679) (not e!288977))))

(declare-fun Forall!261 (Int) Bool)

(assert (=> b!472523 (= res!209679 (Forall!261 lambda!14169))))

(declare-fun setIsEmpty!2057 () Bool)

(declare-fun setRes!2057 () Bool)

(assert (=> setIsEmpty!2057 setRes!2057))

(declare-fun e!288979 () Bool)

(declare-fun lt!210370 () (Set B!975))

(assert (=> b!472524 (= e!288979 (forall!1336 lt!210370 p!1765))))

(assert (=> b!472524 (= (Forall!261 lambda!14169) inst!200)))

(declare-fun e!288978 () Bool)

(assert (=> b!472525 (= e!288977 (not e!288978))))

(declare-fun res!209680 () Bool)

(assert (=> b!472525 (=> res!209680 e!288978)))

(declare-fun s!1493 () (Set A!413))

(declare-fun exists!76 ((Set A!413) Int) Bool)

(assert (=> b!472525 (= res!209680 (not (exists!76 s!1493 lambda!14170)))))

(declare-fun elm!3 () B!975)

(declare-fun empty!2671 () A!413)

(declare-fun flatMapPost!35 ((Set A!413) Int B!975) A!413)

(assert (=> b!472525 (= (flatMapPost!35 s!1493 f!1019 elm!3) empty!2671)))

(assert (=> b!472525 true))

(assert (=> b!472525 tp_is_empty!2205))

(declare-fun b!472526 () Bool)

(declare-fun e!288980 () Bool)

(assert (=> b!472526 (= e!288980 e!288979)))

(declare-fun res!209678 () Bool)

(assert (=> b!472526 (=> res!209678 e!288979)))

(assert (=> b!472526 (= res!209678 (not (set.member elm!3 lt!210370)))))

(declare-datatypes ((List!4576 0))(
  ( (Nil!4566) (Cons!4566 (h!9963 A!413) (t!73046 List!4576)) )
))
(declare-fun lt!210371 () List!4576)

(declare-fun getWitness!37 (List!4576 Int) A!413)

(assert (=> b!472526 (= lt!210370 (dynLambda!2935 f!1019 (getWitness!37 lt!210371 lambda!14170)))))

(declare-fun b!472527 () Bool)

(assert (=> b!472527 (= e!288978 e!288980)))

(declare-fun res!209681 () Bool)

(assert (=> b!472527 (=> res!209681 e!288980)))

(declare-fun exists!77 (List!4576 Int) Bool)

(assert (=> b!472527 (= res!209681 (not (exists!77 lt!210371 lambda!14170)))))

(declare-fun toList!347 ((Set A!413)) List!4576)

(assert (=> b!472527 (= lt!210371 (toList!347 s!1493))))

(declare-fun b!472528 () Bool)

(declare-fun res!209677 () Bool)

(assert (=> b!472528 (=> res!209677 e!288979)))

(declare-datatypes ((List!4577 0))(
  ( (Nil!4567) (Cons!4567 (h!9964 B!975) (t!73047 List!4577)) )
))
(declare-fun contains!1033 (List!4577 B!975) Bool)

(declare-fun toList!348 ((Set B!975)) List!4577)

(assert (=> b!472528 (= res!209677 (not (contains!1033 (toList!348 lt!210370) elm!3)))))

(declare-fun res!209682 () Bool)

(assert (=> start!45304 (=> (not res!209682) (not e!288977))))

(declare-fun flatMap!111 ((Set A!413) Int) (Set B!975))

(assert (=> start!45304 (= res!209682 (set.member elm!3 (flatMap!111 s!1493 f!1019)))))

(assert (=> start!45304 e!288977))

(declare-fun tp_is_empty!2207 () Bool)

(assert (=> start!45304 tp_is_empty!2207))

(declare-fun condSetEmpty!2057 () Bool)

(assert (=> start!45304 (= condSetEmpty!2057 (= s!1493 (as set.empty (Set A!413))))))

(assert (=> start!45304 setRes!2057))

(assert (=> start!45304 tp!130972))

(assert (=> start!45304 tp!130973))

(declare-fun setNonEmpty!2057 () Bool)

(declare-fun tp!130974 () Bool)

(assert (=> setNonEmpty!2057 (= setRes!2057 (and tp!130974 tp_is_empty!2205))))

(declare-fun setElem!2057 () A!413)

(declare-fun setRest!2057 () (Set A!413))

(assert (=> setNonEmpty!2057 (= s!1493 (set.union (set.insert setElem!2057 (as set.empty (Set A!413))) setRest!2057))))

(assert (= (and start!45304 res!209682) b!472523))

(assert (= (and b!472523 res!209679) b!472525))

(assert (= (and b!472525 (not res!209680)) b!472527))

(assert (= (and b!472527 (not res!209681)) b!472526))

(assert (= (and b!472526 (not res!209678)) b!472528))

(assert (= (and b!472528 (not res!209677)) b!472524))

(assert (= neg-inst!200 inst!200))

(assert (= (and start!45304 condSetEmpty!2057) setIsEmpty!2057))

(assert (= (and start!45304 (not condSetEmpty!2057)) setNonEmpty!2057))

(declare-fun b_lambda!19795 () Bool)

(assert (=> (not b_lambda!19795) (not b!472526)))

(declare-fun t!73045 () Bool)

(declare-fun tb!47067 () Bool)

(assert (=> (and start!45304 (= f!1019 f!1019) t!73045) tb!47067))

(assert (=> b!472526 t!73045))

(declare-fun result!51878 () Bool)

(declare-fun b_and!50595 () Bool)

(assert (= b_and!50593 (and (=> t!73045 result!51878) b_and!50595)))

(declare-fun m!745897 () Bool)

(assert (=> b!472524 m!745897))

(declare-fun m!745899 () Bool)

(assert (=> b!472524 m!745899))

(declare-fun m!745901 () Bool)

(assert (=> b!472528 m!745901))

(assert (=> b!472528 m!745901))

(declare-fun m!745903 () Bool)

(assert (=> b!472528 m!745903))

(declare-fun m!745905 () Bool)

(assert (=> start!45304 m!745905))

(declare-fun m!745907 () Bool)

(assert (=> start!45304 m!745907))

(declare-fun m!745909 () Bool)

(assert (=> b!472525 m!745909))

(declare-fun m!745911 () Bool)

(assert (=> b!472525 m!745911))

(declare-fun m!745913 () Bool)

(assert (=> b!472527 m!745913))

(declare-fun m!745915 () Bool)

(assert (=> b!472527 m!745915))

(declare-fun m!745917 () Bool)

(assert (=> b!472526 m!745917))

(declare-fun m!745919 () Bool)

(assert (=> b!472526 m!745919))

(assert (=> b!472526 m!745919))

(declare-fun m!745921 () Bool)

(assert (=> b!472526 m!745921))

(assert (=> b!472523 m!745899))

(push 1)

(assert (not tb!47065))

(assert (not start!45304))

(assert (not b!472525))

(assert (not tb!47067))

(assert b_and!50589)

(assert (not b!472528))

(assert (not b_next!13237))

(assert tp_is_empty!2207)

(assert (not setNonEmpty!2057))

(assert b_and!50595)

(assert (not bs!58543))

(assert (not b_next!13239))

(assert (not b_lambda!19791))

(assert (not b!472523))

(assert (not b_lambda!19793))

(assert (not b_lambda!19795))

(assert (not b!472527))

(assert tp_is_empty!2205)

(assert (not b!472526))

(assert (not b!472524))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50595)

(assert b_and!50589)

(assert (not b_next!13237))

(assert (not b_next!13239))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!19803 () Bool)

(assert (= b_lambda!19791 (or (and start!45304 b_free!13237) b_lambda!19803)))

(declare-fun b_lambda!19805 () Bool)

(assert (= b_lambda!19795 (or (and start!45304 b_free!13237) b_lambda!19805)))

(declare-fun b_lambda!19807 () Bool)

(assert (= b_lambda!19793 (or (and start!45304 b_free!13237) b_lambda!19807)))

(push 1)

(assert (not b_lambda!19805))

(assert (not tb!47065))

(assert (not start!45304))

(assert (not b!472525))

(assert (not b!472523))

(assert (not tb!47067))

(assert b_and!50589)

(assert (not b!472527))

(assert (not b!472528))

(assert (not b_next!13237))

(assert tp_is_empty!2207)

(assert b_and!50595)

(assert (not bs!58543))

(assert (not b_lambda!19803))

(assert (not b_next!13239))

(assert (not b_lambda!19807))

(assert (not setNonEmpty!2057))

(assert tp_is_empty!2205)

(assert (not b!472526))

(assert (not b!472524))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50595)

(assert b_and!50589)

(assert (not b_next!13237))

(assert (not b_next!13239))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!179580 () Bool)

(declare-fun lt!210380 () Bool)

(declare-fun content!780 (List!4577) (Set B!975))

(assert (=> d!179580 (= lt!210380 (set.member elm!3 (content!780 (toList!348 lt!210370))))))

(declare-fun e!288997 () Bool)

(assert (=> d!179580 (= lt!210380 e!288997)))

(declare-fun res!209705 () Bool)

(assert (=> d!179580 (=> (not res!209705) (not e!288997))))

(assert (=> d!179580 (= res!209705 (is-Cons!4567 (toList!348 lt!210370)))))

(assert (=> d!179580 (= (contains!1033 (toList!348 lt!210370) elm!3) lt!210380)))

(declare-fun b!472563 () Bool)

(declare-fun e!288998 () Bool)

(assert (=> b!472563 (= e!288997 e!288998)))

(declare-fun res!209706 () Bool)

(assert (=> b!472563 (=> res!209706 e!288998)))

(assert (=> b!472563 (= res!209706 (= (h!9964 (toList!348 lt!210370)) elm!3))))

(declare-fun b!472564 () Bool)

(assert (=> b!472564 (= e!288998 (contains!1033 (t!73047 (toList!348 lt!210370)) elm!3))))

(assert (= (and d!179580 res!209705) b!472563))

(assert (= (and b!472563 (not res!209706)) b!472564))

(assert (=> d!179580 m!745901))

(declare-fun m!745953 () Bool)

(assert (=> d!179580 m!745953))

(declare-fun m!745955 () Bool)

(assert (=> d!179580 m!745955))

(declare-fun m!745957 () Bool)

(assert (=> b!472564 m!745957))

(assert (=> b!472528 d!179580))

(declare-fun d!179582 () Bool)

(declare-fun e!289001 () Bool)

(assert (=> d!179582 e!289001))

(declare-fun res!209709 () Bool)

(assert (=> d!179582 (=> (not res!209709) (not e!289001))))

(declare-fun lt!210383 () List!4577)

(declare-fun noDuplicate!103 (List!4577) Bool)

(assert (=> d!179582 (= res!209709 (noDuplicate!103 lt!210383))))

(declare-fun choose!3601 ((Set B!975)) List!4577)

(assert (=> d!179582 (= lt!210383 (choose!3601 lt!210370))))

(assert (=> d!179582 (= (toList!348 lt!210370) lt!210383)))

(declare-fun b!472567 () Bool)

(assert (=> b!472567 (= e!289001 (= (content!780 lt!210383) lt!210370))))

(assert (= (and d!179582 res!209709) b!472567))

(declare-fun m!745959 () Bool)

(assert (=> d!179582 m!745959))

(declare-fun m!745961 () Bool)

(assert (=> d!179582 m!745961))

(declare-fun m!745963 () Bool)

(assert (=> b!472567 m!745963))

(assert (=> b!472528 d!179582))

(declare-fun bs!58548 () Bool)

(declare-fun d!179584 () Bool)

(assert (= bs!58548 (and d!179584 b!472523)))

(declare-fun lambda!14185 () Int)

(assert (=> bs!58548 (not (= lambda!14185 lambda!14169))))

(declare-fun bs!58549 () Bool)

(assert (= bs!58549 (and d!179584 b!472525)))

(assert (=> bs!58549 (not (= lambda!14185 lambda!14170))))

(assert (=> d!179584 true))

(assert (=> d!179584 (< (dynLambda!2933 order!4313 lambda!14170) (dynLambda!2933 order!4313 lambda!14185))))

(declare-fun forall!1338 (List!4576 Int) Bool)

(assert (=> d!179584 (= (exists!77 lt!210371 lambda!14170) (not (forall!1338 lt!210371 lambda!14185)))))

(declare-fun bs!58550 () Bool)

(assert (= bs!58550 d!179584))

(declare-fun m!745965 () Bool)

(assert (=> bs!58550 m!745965))

(assert (=> b!472527 d!179584))

(declare-fun d!179586 () Bool)

(declare-fun e!289004 () Bool)

(assert (=> d!179586 e!289004))

(declare-fun res!209712 () Bool)

(assert (=> d!179586 (=> (not res!209712) (not e!289004))))

(declare-fun lt!210386 () List!4576)

(declare-fun noDuplicate!104 (List!4576) Bool)

(assert (=> d!179586 (= res!209712 (noDuplicate!104 lt!210386))))

(declare-fun choose!3602 ((Set A!413)) List!4576)

(assert (=> d!179586 (= lt!210386 (choose!3602 s!1493))))

(assert (=> d!179586 (= (toList!347 s!1493) lt!210386)))

(declare-fun b!472572 () Bool)

(declare-fun content!781 (List!4576) (Set A!413))

(assert (=> b!472572 (= e!289004 (= (content!781 lt!210386) s!1493))))

(assert (= (and d!179586 res!209712) b!472572))

(declare-fun m!745967 () Bool)

(assert (=> d!179586 m!745967))

(declare-fun m!745969 () Bool)

(assert (=> d!179586 m!745969))

(declare-fun m!745971 () Bool)

(assert (=> b!472572 m!745971))

(assert (=> b!472527 d!179586))

(declare-fun d!179588 () Bool)

(declare-fun choose!3603 (Int) Bool)

(assert (=> d!179588 (= (Forall!261 lambda!14169) (choose!3603 lambda!14169))))

(declare-fun bs!58551 () Bool)

(assert (= bs!58551 d!179588))

(declare-fun m!745973 () Bool)

(assert (=> bs!58551 m!745973))

(assert (=> b!472523 d!179588))

(declare-fun d!179590 () Bool)

(declare-fun choose!3604 ((Set A!413) Int) (Set B!975))

(assert (=> d!179590 (= (flatMap!111 s!1493 f!1019) (choose!3604 s!1493 f!1019))))

(declare-fun bs!58552 () Bool)

(assert (= bs!58552 d!179590))

(declare-fun m!745975 () Bool)

(assert (=> bs!58552 m!745975))

(assert (=> start!45304 d!179590))

(declare-fun lt!210389 () Bool)

(declare-fun d!179592 () Bool)

(declare-fun forall!1339 (List!4577 Int) Bool)

(assert (=> d!179592 (= lt!210389 (forall!1339 (toList!348 (dynLambda!2935 f!1019 x!112799)) p!1765))))

(declare-fun choose!3605 ((Set B!975) Int) Bool)

(assert (=> d!179592 (= lt!210389 (choose!3605 (dynLambda!2935 f!1019 x!112799) p!1765))))

(assert (=> d!179592 (= (forall!1336 (dynLambda!2935 f!1019 x!112799) p!1765) lt!210389)))

(declare-fun bs!58553 () Bool)

(assert (= bs!58553 d!179592))

(assert (=> bs!58553 m!745893))

(declare-fun m!745977 () Bool)

(assert (=> bs!58553 m!745977))

(assert (=> bs!58553 m!745977))

(declare-fun m!745979 () Bool)

(assert (=> bs!58553 m!745979))

(assert (=> bs!58553 m!745893))

(declare-fun m!745981 () Bool)

(assert (=> bs!58553 m!745981))

(assert (=> bs!58543 d!179592))

(declare-fun b!472585 () Bool)

(declare-datatypes ((Unit!8311 0))(
  ( (Unit!8312) )
))
(declare-fun lt!210395 () Unit!8311)

(declare-fun Unit!8313 () Unit!8311)

(assert (=> b!472585 (= lt!210395 Unit!8313)))

(assert (=> b!472585 false))

(declare-fun e!289016 () A!413)

(declare-fun head!1144 (List!4576) A!413)

(assert (=> b!472585 (= e!289016 (head!1144 lt!210371))))

(declare-fun b!472586 () Bool)

(assert (=> b!472586 (= e!289016 (getWitness!37 (t!73046 lt!210371) lambda!14170))))

(declare-fun b!472587 () Bool)

(declare-fun e!289013 () A!413)

(assert (=> b!472587 (= e!289013 e!289016)))

(declare-fun c!94891 () Bool)

(assert (=> b!472587 (= c!94891 (is-Cons!4566 lt!210371))))

(declare-fun d!179594 () Bool)

(declare-fun e!289015 () Bool)

(assert (=> d!179594 e!289015))

(declare-fun res!209717 () Bool)

(assert (=> d!179594 (=> (not res!209717) (not e!289015))))

(declare-fun lt!210394 () A!413)

(declare-fun dynLambda!2940 (Int A!413) Bool)

(assert (=> d!179594 (= res!209717 (dynLambda!2940 lambda!14170 lt!210394))))

(assert (=> d!179594 (= lt!210394 e!289013)))

(declare-fun c!94892 () Bool)

(declare-fun e!289014 () Bool)

(assert (=> d!179594 (= c!94892 e!289014)))

(declare-fun res!209718 () Bool)

(assert (=> d!179594 (=> (not res!209718) (not e!289014))))

(assert (=> d!179594 (= res!209718 (is-Cons!4566 lt!210371))))

(assert (=> d!179594 (exists!77 lt!210371 lambda!14170)))

(assert (=> d!179594 (= (getWitness!37 lt!210371 lambda!14170) lt!210394)))

(declare-fun b!472588 () Bool)

(assert (=> b!472588 (= e!289014 (dynLambda!2940 lambda!14170 (h!9963 lt!210371)))))

(declare-fun b!472589 () Bool)

(assert (=> b!472589 (= e!289013 (h!9963 lt!210371))))

(declare-fun b!472590 () Bool)

(declare-fun contains!1035 (List!4576 A!413) Bool)

(assert (=> b!472590 (= e!289015 (contains!1035 lt!210371 lt!210394))))

(assert (= (and d!179594 res!209718) b!472588))

(assert (= (and d!179594 c!94892) b!472589))

(assert (= (and d!179594 (not c!94892)) b!472587))

(assert (= (and b!472587 c!94891) b!472586))

(assert (= (and b!472587 (not c!94891)) b!472585))

(assert (= (and d!179594 res!209717) b!472590))

(declare-fun b_lambda!19815 () Bool)

(assert (=> (not b_lambda!19815) (not d!179594)))

(declare-fun b_lambda!19817 () Bool)

(assert (=> (not b_lambda!19817) (not b!472588)))

(declare-fun m!745983 () Bool)

(assert (=> b!472586 m!745983))

(declare-fun m!745985 () Bool)

(assert (=> b!472590 m!745985))

(declare-fun m!745987 () Bool)

(assert (=> b!472585 m!745987))

(declare-fun m!745989 () Bool)

(assert (=> d!179594 m!745989))

(assert (=> d!179594 m!745913))

(declare-fun m!745991 () Bool)

(assert (=> b!472588 m!745991))

(assert (=> b!472526 d!179594))

(declare-fun d!179596 () Bool)

(declare-fun lt!210398 () Bool)

(assert (=> d!179596 (= lt!210398 (exists!77 (toList!347 s!1493) lambda!14170))))

(declare-fun choose!3606 ((Set A!413) Int) Bool)

(assert (=> d!179596 (= lt!210398 (choose!3606 s!1493 lambda!14170))))

(assert (=> d!179596 (= (exists!76 s!1493 lambda!14170) lt!210398)))

(declare-fun bs!58554 () Bool)

(assert (= bs!58554 d!179596))

(assert (=> bs!58554 m!745915))

(assert (=> bs!58554 m!745915))

(declare-fun m!745993 () Bool)

(assert (=> bs!58554 m!745993))

(declare-fun m!745995 () Bool)

(assert (=> bs!58554 m!745995))

(assert (=> b!472525 d!179596))

(declare-fun bs!58555 () Bool)

(declare-fun d!179598 () Bool)

(assert (= bs!58555 (and d!179598 b!472523)))

(declare-fun lambda!14188 () Int)

(assert (=> bs!58555 (not (= lambda!14188 lambda!14169))))

(declare-fun bs!58556 () Bool)

(assert (= bs!58556 (and d!179598 b!472525)))

(assert (=> bs!58556 (= lambda!14188 lambda!14170)))

(declare-fun bs!58557 () Bool)

(assert (= bs!58557 (and d!179598 d!179584)))

(assert (=> bs!58557 (not (= lambda!14188 lambda!14185))))

(assert (=> d!179598 true))

(assert (=> d!179598 true))

(assert (=> d!179598 (< (dynLambda!2932 order!4311 f!1019) (dynLambda!2933 order!4313 lambda!14188))))

(assert (=> d!179598 (= (set.member elm!3 (flatMap!111 s!1493 f!1019)) (exists!76 s!1493 lambda!14188))))

(declare-fun lt!210401 () A!413)

(declare-fun choose!3607 ((Set A!413) Int B!975) A!413)

(assert (=> d!179598 (= lt!210401 (choose!3607 s!1493 f!1019 elm!3))))

(assert (=> d!179598 (= (flatMapPost!35 s!1493 f!1019 elm!3) lt!210401)))

(declare-fun bs!58558 () Bool)

(assert (= bs!58558 d!179598))

(assert (=> bs!58558 m!745905))

(assert (=> bs!58558 m!745907))

(declare-fun m!745997 () Bool)

(assert (=> bs!58558 m!745997))

(declare-fun m!745999 () Bool)

(assert (=> bs!58558 m!745999))

(assert (=> b!472525 d!179598))

(assert (=> b!472524 d!179592))

(declare-fun d!179600 () Bool)

(declare-fun lt!210402 () Bool)

(assert (=> d!179600 (= lt!210402 (forall!1339 (toList!348 lt!210370) p!1765))))

(assert (=> d!179600 (= lt!210402 (choose!3605 lt!210370 p!1765))))

(assert (=> d!179600 (= (forall!1336 lt!210370 p!1765) lt!210402)))

(declare-fun bs!58559 () Bool)

(assert (= bs!58559 d!179600))

(assert (=> bs!58559 m!745901))

(assert (=> bs!58559 m!745901))

(declare-fun m!746001 () Bool)

(assert (=> bs!58559 m!746001))

(declare-fun m!746003 () Bool)

(assert (=> bs!58559 m!746003))

(assert (=> b!472524 d!179600))

(assert (=> b!472524 d!179588))

(declare-fun condSetEmpty!2063 () Bool)

(assert (=> tb!47067 (= condSetEmpty!2063 (= (dynLambda!2935 f!1019 (getWitness!37 lt!210371 lambda!14170)) (as set.empty (Set B!975))))))

(declare-fun setRes!2063 () Bool)

(assert (=> tb!47067 (= result!51878 setRes!2063)))

(declare-fun setIsEmpty!2063 () Bool)

(assert (=> setIsEmpty!2063 setRes!2063))

(declare-fun setNonEmpty!2063 () Bool)

(declare-fun tp!130986 () Bool)

(assert (=> setNonEmpty!2063 (= setRes!2063 (and tp!130986 tp_is_empty!2207))))

(declare-fun setElem!2063 () B!975)

(declare-fun setRest!2063 () (Set B!975))

(assert (=> setNonEmpty!2063 (= (dynLambda!2935 f!1019 (getWitness!37 lt!210371 lambda!14170)) (set.union (set.insert setElem!2063 (as set.empty (Set B!975))) setRest!2063))))

(assert (= (and tb!47067 condSetEmpty!2063) setIsEmpty!2063))

(assert (= (and tb!47067 (not condSetEmpty!2063)) setNonEmpty!2063))

(declare-fun condSetEmpty!2064 () Bool)

(assert (=> tb!47065 (= condSetEmpty!2064 (= (dynLambda!2935 f!1019 x!112799) (as set.empty (Set B!975))))))

(declare-fun setRes!2064 () Bool)

(assert (=> tb!47065 (= result!51876 setRes!2064)))

(declare-fun setIsEmpty!2064 () Bool)

(assert (=> setIsEmpty!2064 setRes!2064))

(declare-fun setNonEmpty!2064 () Bool)

(declare-fun tp!130987 () Bool)

(assert (=> setNonEmpty!2064 (= setRes!2064 (and tp!130987 tp_is_empty!2207))))

(declare-fun setElem!2064 () B!975)

(declare-fun setRest!2064 () (Set B!975))

(assert (=> setNonEmpty!2064 (= (dynLambda!2935 f!1019 x!112799) (set.union (set.insert setElem!2064 (as set.empty (Set B!975))) setRest!2064))))

(assert (= (and tb!47065 condSetEmpty!2064) setIsEmpty!2064))

(assert (= (and tb!47065 (not condSetEmpty!2064)) setNonEmpty!2064))

(declare-fun condSetEmpty!2067 () Bool)

(assert (=> setNonEmpty!2057 (= condSetEmpty!2067 (= setRest!2057 (as set.empty (Set A!413))))))

(declare-fun setRes!2067 () Bool)

(assert (=> setNonEmpty!2057 (= tp!130974 setRes!2067)))

(declare-fun setIsEmpty!2067 () Bool)

(assert (=> setIsEmpty!2067 setRes!2067))

(declare-fun setNonEmpty!2067 () Bool)

(declare-fun tp!130990 () Bool)

(assert (=> setNonEmpty!2067 (= setRes!2067 (and tp!130990 tp_is_empty!2205))))

(declare-fun setElem!2067 () A!413)

(declare-fun setRest!2067 () (Set A!413))

(assert (=> setNonEmpty!2067 (= setRest!2057 (set.union (set.insert setElem!2067 (as set.empty (Set A!413))) setRest!2067))))

(assert (= (and setNonEmpty!2057 condSetEmpty!2067) setIsEmpty!2067))

(assert (= (and setNonEmpty!2057 (not condSetEmpty!2067)) setNonEmpty!2067))

(declare-fun b_lambda!19819 () Bool)

(assert (= b_lambda!19817 (or b!472525 b_lambda!19819)))

(declare-fun bs!58560 () Bool)

(declare-fun d!179602 () Bool)

(assert (= bs!58560 (and d!179602 b!472525)))

(assert (=> bs!58560 (= (dynLambda!2940 lambda!14170 (h!9963 lt!210371)) (set.member elm!3 (dynLambda!2935 f!1019 (h!9963 lt!210371))))))

(declare-fun b_lambda!19823 () Bool)

(assert (=> (not b_lambda!19823) (not bs!58560)))

(declare-fun t!73055 () Bool)

(declare-fun tb!47073 () Bool)

(assert (=> (and start!45304 (= f!1019 f!1019) t!73055) tb!47073))

(assert (=> bs!58560 t!73055))

(declare-fun result!51888 () Bool)

(declare-fun b_and!50607 () Bool)

(assert (= b_and!50595 (and (=> t!73055 result!51888) b_and!50607)))

(declare-fun m!746005 () Bool)

(assert (=> bs!58560 m!746005))

(declare-fun m!746007 () Bool)

(assert (=> bs!58560 m!746007))

(assert (=> b!472588 d!179602))

(declare-fun b_lambda!19821 () Bool)

(assert (= b_lambda!19815 (or b!472525 b_lambda!19821)))

(declare-fun bs!58561 () Bool)

(declare-fun d!179604 () Bool)

(assert (= bs!58561 (and d!179604 b!472525)))

(assert (=> bs!58561 (= (dynLambda!2940 lambda!14170 lt!210394) (set.member elm!3 (dynLambda!2935 f!1019 lt!210394)))))

(declare-fun b_lambda!19825 () Bool)

(assert (=> (not b_lambda!19825) (not bs!58561)))

(declare-fun t!73057 () Bool)

(declare-fun tb!47075 () Bool)

(assert (=> (and start!45304 (= f!1019 f!1019) t!73057) tb!47075))

(assert (=> bs!58561 t!73057))

(declare-fun result!51890 () Bool)

(declare-fun b_and!50609 () Bool)

(assert (= b_and!50607 (and (=> t!73057 result!51890) b_and!50609)))

(declare-fun m!746009 () Bool)

(assert (=> bs!58561 m!746009))

(declare-fun m!746011 () Bool)

(assert (=> bs!58561 m!746011))

(assert (=> d!179594 d!179604))

(push 1)

(assert (not b_lambda!19819))

(assert (not b!472585))

(assert (not setNonEmpty!2063))

(assert (not b!472567))

(assert (not d!179584))

(assert (not b_next!13237))

(assert (not b_lambda!19807))

(assert (not setNonEmpty!2067))

(assert (not d!179580))

(assert (not b_lambda!19803))

(assert (not b_next!13239))

(assert (not b_lambda!19805))

(assert (not d!179590))

(assert (not b!472564))

(assert (not b!472572))

(assert (not tb!47073))

(assert (not b_lambda!19825))

(assert (not d!179598))

(assert (not b_lambda!19821))

(assert (not d!179594))

(assert b_and!50589)

(assert (not d!179588))

(assert (not d!179582))

(assert (not d!179600))

(assert (not d!179596))

(assert (not b!472590))

(assert (not b_lambda!19823))

(assert (not d!179592))

(assert (not b!472586))

(assert (not d!179586))

(assert (not setNonEmpty!2064))

(assert b_and!50609)

(assert tp_is_empty!2207)

(assert tp_is_empty!2205)

(assert (not tb!47075))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50609)

(assert b_and!50589)

(assert (not b_next!13237))

(assert (not b_next!13239))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!19831 () Bool)

(assert (= b_lambda!19823 (or (and start!45304 b_free!13237) b_lambda!19831)))

(declare-fun b_lambda!19833 () Bool)

(assert (= b_lambda!19825 (or (and start!45304 b_free!13237) b_lambda!19833)))

(declare-fun bs!58568 () Bool)

(declare-fun s!18181 () Bool)

(assert (= bs!58568 (and neg-inst!200 s!18181)))

(assert (=> bs!58568 (=> true (forall!1336 (dynLambda!2935 f!1019 (getWitness!37 lt!210371 lambda!14170)) p!1765))))

(declare-fun b_lambda!19835 () Bool)

(assert (=> (not b_lambda!19835) (not bs!58568)))

(assert (=> bs!58568 t!73045))

(declare-fun b_and!50611 () Bool)

(assert (= b_and!50609 (and (=> t!73045 result!51878) b_and!50611)))

(declare-fun m!746043 () Bool)

(assert (=> m!745921 m!746043))

(assert (=> m!745921 s!18181))

(push 1)

(assert (not b_lambda!19819))

(assert (not b!472585))

(assert (not tb!47073))

(assert (not setNonEmpty!2063))

(assert (not b!472567))

(assert (not d!179592))

(assert (not b_lambda!19835))

(assert (not d!179584))

(assert (not b_next!13237))

(assert (not b_lambda!19807))

(assert (not setNonEmpty!2067))

(assert (not b_next!13239))

(assert (not b_lambda!19805))

(assert (not d!179590))

(assert (not b!472564))

(assert (not b!472572))

(assert (not d!179598))

(assert (not b_lambda!19821))

(assert (not b_lambda!19831))

(assert (not bs!58568))

(assert (not d!179594))

(assert b_and!50589)

(assert (not d!179588))

(assert (not d!179582))

(assert (not d!179600))

(assert (not d!179596))

(assert (not b!472590))

(assert (not b!472586))

(assert (not d!179586))

(assert (not setNonEmpty!2064))

(assert tp_is_empty!2207)

(assert (not b_lambda!19833))

(assert (not d!179580))

(assert (not b_lambda!19803))

(assert b_and!50611)

(assert tp_is_empty!2205)

(assert (not tb!47075))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50611)

(assert b_and!50589)

(assert (not b_next!13237))

(assert (not b_next!13239))

(check-sat)

(pop 1)

