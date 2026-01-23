; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!188922 () Bool)

(assert start!188922)

(declare-fun b!1886517 () Bool)

(declare-fun res!841983 () Bool)

(declare-fun e!1203795 () Bool)

(assert (=> b!1886517 (=> (not res!841983) (not e!1203795))))

(declare-datatypes ((B!1699 0))(
  ( (B!1700 (val!6135 Int)) )
))
(declare-datatypes ((List!21128 0))(
  ( (Nil!21046) (Cons!21046 (h!26447 B!1699) (t!175127 List!21128)) )
))
(declare-fun l2!1298 () List!21128)

(declare-fun l3!256 () List!21128)

(declare-fun subseq!396 (List!21128 List!21128) Bool)

(assert (=> b!1886517 (= res!841983 (subseq!396 l2!1298 (t!175127 l3!256)))))

(declare-fun b!1886518 () Bool)

(declare-fun e!1203796 () Bool)

(declare-fun tp_is_empty!8955 () Bool)

(declare-fun tp!537963 () Bool)

(assert (=> b!1886518 (= e!1203796 (and tp_is_empty!8955 tp!537963))))

(declare-fun b!1886519 () Bool)

(declare-fun e!1203794 () Bool)

(declare-fun tp!537961 () Bool)

(assert (=> b!1886519 (= e!1203794 (and tp_is_empty!8955 tp!537961))))

(declare-fun b!1886520 () Bool)

(declare-fun l1!1329 () List!21128)

(assert (=> b!1886520 (= e!1203795 (not (subseq!396 l1!1329 l3!256)))))

(assert (=> b!1886520 (subseq!396 l1!1329 (t!175127 l3!256))))

(declare-datatypes ((Unit!35476 0))(
  ( (Unit!35477) )
))
(declare-fun lt!723539 () Unit!35476)

(declare-fun lemmaSubSeqTransitive!1 (List!21128 List!21128 List!21128) Unit!35476)

(assert (=> b!1886520 (= lt!723539 (lemmaSubSeqTransitive!1 l1!1329 l2!1298 (t!175127 l3!256)))))

(declare-fun res!841981 () Bool)

(assert (=> start!188922 (=> (not res!841981) (not e!1203795))))

(assert (=> start!188922 (= res!841981 (subseq!396 l1!1329 l2!1298))))

(assert (=> start!188922 e!1203795))

(assert (=> start!188922 e!1203796))

(assert (=> start!188922 e!1203794))

(declare-fun e!1203793 () Bool)

(assert (=> start!188922 e!1203793))

(declare-fun b!1886521 () Bool)

(declare-fun res!841982 () Bool)

(assert (=> b!1886521 (=> (not res!841982) (not e!1203795))))

(assert (=> b!1886521 (= res!841982 (subseq!396 l2!1298 l3!256))))

(declare-fun b!1886522 () Bool)

(declare-fun res!841984 () Bool)

(assert (=> b!1886522 (=> (not res!841984) (not e!1203795))))

(assert (=> b!1886522 (= res!841984 (and (is-Cons!21046 l1!1329) (is-Cons!21046 l2!1298) (is-Cons!21046 l3!256) (not (= (h!26447 l2!1298) (h!26447 l3!256)))))))

(declare-fun b!1886523 () Bool)

(declare-fun tp!537962 () Bool)

(assert (=> b!1886523 (= e!1203793 (and tp_is_empty!8955 tp!537962))))

(assert (= (and start!188922 res!841981) b!1886521))

(assert (= (and b!1886521 res!841982) b!1886522))

(assert (= (and b!1886522 res!841984) b!1886517))

(assert (= (and b!1886517 res!841983) b!1886520))

(assert (= (and start!188922 (is-Cons!21046 l1!1329)) b!1886518))

(assert (= (and start!188922 (is-Cons!21046 l2!1298)) b!1886519))

(assert (= (and start!188922 (is-Cons!21046 l3!256)) b!1886523))

(declare-fun m!2318975 () Bool)

(assert (=> b!1886517 m!2318975))

(declare-fun m!2318977 () Bool)

(assert (=> b!1886520 m!2318977))

(declare-fun m!2318979 () Bool)

(assert (=> b!1886520 m!2318979))

(declare-fun m!2318981 () Bool)

(assert (=> b!1886520 m!2318981))

(declare-fun m!2318983 () Bool)

(assert (=> start!188922 m!2318983))

(declare-fun m!2318985 () Bool)

(assert (=> b!1886521 m!2318985))

(push 1)

(assert (not b!1886523))

(assert (not b!1886520))

(assert (not start!188922))

(assert (not b!1886518))

(assert tp_is_empty!8955)

(assert (not b!1886521))

(assert (not b!1886517))

(assert (not b!1886519))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1886555 () Bool)

(declare-fun e!1203819 () Bool)

(assert (=> b!1886555 (= e!1203819 (subseq!396 (t!175127 l2!1298) (t!175127 l3!256)))))

(declare-fun b!1886556 () Bool)

(declare-fun e!1203820 () Bool)

(assert (=> b!1886556 (= e!1203820 (subseq!396 l2!1298 (t!175127 l3!256)))))

(declare-fun b!1886554 () Bool)

(declare-fun e!1203817 () Bool)

(assert (=> b!1886554 (= e!1203817 e!1203820)))

(declare-fun res!842006 () Bool)

(assert (=> b!1886554 (=> res!842006 e!1203820)))

(assert (=> b!1886554 (= res!842006 e!1203819)))

(declare-fun res!842005 () Bool)

(assert (=> b!1886554 (=> (not res!842005) (not e!1203819))))

(assert (=> b!1886554 (= res!842005 (= (h!26447 l2!1298) (h!26447 l3!256)))))

(declare-fun b!1886553 () Bool)

(declare-fun e!1203818 () Bool)

(assert (=> b!1886553 (= e!1203818 e!1203817)))

(declare-fun res!842008 () Bool)

(assert (=> b!1886553 (=> (not res!842008) (not e!1203817))))

(assert (=> b!1886553 (= res!842008 (is-Cons!21046 l3!256))))

(declare-fun d!577998 () Bool)

(declare-fun res!842007 () Bool)

(assert (=> d!577998 (=> res!842007 e!1203818)))

(assert (=> d!577998 (= res!842007 (is-Nil!21046 l2!1298))))

(assert (=> d!577998 (= (subseq!396 l2!1298 l3!256) e!1203818)))

(assert (= (and d!577998 (not res!842007)) b!1886553))

(assert (= (and b!1886553 res!842008) b!1886554))

(assert (= (and b!1886554 res!842005) b!1886555))

(assert (= (and b!1886554 (not res!842006)) b!1886556))

(declare-fun m!2318999 () Bool)

(assert (=> b!1886555 m!2318999))

(assert (=> b!1886556 m!2318975))

(assert (=> b!1886521 d!577998))

(declare-fun b!1886559 () Bool)

(declare-fun e!1203823 () Bool)

(assert (=> b!1886559 (= e!1203823 (subseq!396 (t!175127 l1!1329) (t!175127 l3!256)))))

(declare-fun b!1886560 () Bool)

(declare-fun e!1203824 () Bool)

(assert (=> b!1886560 (= e!1203824 (subseq!396 l1!1329 (t!175127 l3!256)))))

(declare-fun b!1886558 () Bool)

(declare-fun e!1203821 () Bool)

(assert (=> b!1886558 (= e!1203821 e!1203824)))

(declare-fun res!842010 () Bool)

(assert (=> b!1886558 (=> res!842010 e!1203824)))

(assert (=> b!1886558 (= res!842010 e!1203823)))

(declare-fun res!842009 () Bool)

(assert (=> b!1886558 (=> (not res!842009) (not e!1203823))))

(assert (=> b!1886558 (= res!842009 (= (h!26447 l1!1329) (h!26447 l3!256)))))

(declare-fun b!1886557 () Bool)

(declare-fun e!1203822 () Bool)

(assert (=> b!1886557 (= e!1203822 e!1203821)))

(declare-fun res!842012 () Bool)

(assert (=> b!1886557 (=> (not res!842012) (not e!1203821))))

(assert (=> b!1886557 (= res!842012 (is-Cons!21046 l3!256))))

(declare-fun d!578002 () Bool)

(declare-fun res!842011 () Bool)

(assert (=> d!578002 (=> res!842011 e!1203822)))

(assert (=> d!578002 (= res!842011 (is-Nil!21046 l1!1329))))

(assert (=> d!578002 (= (subseq!396 l1!1329 l3!256) e!1203822)))

(assert (= (and d!578002 (not res!842011)) b!1886557))

(assert (= (and b!1886557 res!842012) b!1886558))

(assert (= (and b!1886558 res!842009) b!1886559))

(assert (= (and b!1886558 (not res!842010)) b!1886560))

(declare-fun m!2319001 () Bool)

(assert (=> b!1886559 m!2319001))

(assert (=> b!1886560 m!2318979))

(assert (=> b!1886520 d!578002))

(declare-fun b!1886563 () Bool)

(declare-fun e!1203827 () Bool)

(assert (=> b!1886563 (= e!1203827 (subseq!396 (t!175127 l1!1329) (t!175127 (t!175127 l3!256))))))

(declare-fun b!1886564 () Bool)

(declare-fun e!1203828 () Bool)

(assert (=> b!1886564 (= e!1203828 (subseq!396 l1!1329 (t!175127 (t!175127 l3!256))))))

(declare-fun b!1886562 () Bool)

(declare-fun e!1203825 () Bool)

(assert (=> b!1886562 (= e!1203825 e!1203828)))

(declare-fun res!842014 () Bool)

(assert (=> b!1886562 (=> res!842014 e!1203828)))

(assert (=> b!1886562 (= res!842014 e!1203827)))

(declare-fun res!842013 () Bool)

(assert (=> b!1886562 (=> (not res!842013) (not e!1203827))))

(assert (=> b!1886562 (= res!842013 (= (h!26447 l1!1329) (h!26447 (t!175127 l3!256))))))

(declare-fun b!1886561 () Bool)

(declare-fun e!1203826 () Bool)

(assert (=> b!1886561 (= e!1203826 e!1203825)))

(declare-fun res!842016 () Bool)

(assert (=> b!1886561 (=> (not res!842016) (not e!1203825))))

(assert (=> b!1886561 (= res!842016 (is-Cons!21046 (t!175127 l3!256)))))

(declare-fun d!578004 () Bool)

(declare-fun res!842015 () Bool)

(assert (=> d!578004 (=> res!842015 e!1203826)))

(assert (=> d!578004 (= res!842015 (is-Nil!21046 l1!1329))))

(assert (=> d!578004 (= (subseq!396 l1!1329 (t!175127 l3!256)) e!1203826)))

(assert (= (and d!578004 (not res!842015)) b!1886561))

(assert (= (and b!1886561 res!842016) b!1886562))

(assert (= (and b!1886562 res!842013) b!1886563))

(assert (= (and b!1886562 (not res!842014)) b!1886564))

(declare-fun m!2319003 () Bool)

(assert (=> b!1886563 m!2319003))

(declare-fun m!2319005 () Bool)

(assert (=> b!1886564 m!2319005))

(assert (=> b!1886520 d!578004))

(declare-fun d!578006 () Bool)

(assert (=> d!578006 (subseq!396 l1!1329 (t!175127 l3!256))))

(declare-fun lt!723545 () Unit!35476)

(declare-fun choose!11808 (List!21128 List!21128 List!21128) Unit!35476)

(assert (=> d!578006 (= lt!723545 (choose!11808 l1!1329 l2!1298 (t!175127 l3!256)))))

(assert (=> d!578006 (subseq!396 l1!1329 l2!1298)))

(assert (=> d!578006 (= (lemmaSubSeqTransitive!1 l1!1329 l2!1298 (t!175127 l3!256)) lt!723545)))

(declare-fun bs!412971 () Bool)

(assert (= bs!412971 d!578006))

(assert (=> bs!412971 m!2318979))

(declare-fun m!2319007 () Bool)

(assert (=> bs!412971 m!2319007))

(assert (=> bs!412971 m!2318983))

(assert (=> b!1886520 d!578006))

(declare-fun b!1886567 () Bool)

(declare-fun e!1203831 () Bool)

(assert (=> b!1886567 (= e!1203831 (subseq!396 (t!175127 l2!1298) (t!175127 (t!175127 l3!256))))))

(declare-fun b!1886568 () Bool)

(declare-fun e!1203832 () Bool)

(assert (=> b!1886568 (= e!1203832 (subseq!396 l2!1298 (t!175127 (t!175127 l3!256))))))

(declare-fun b!1886566 () Bool)

(declare-fun e!1203829 () Bool)

(assert (=> b!1886566 (= e!1203829 e!1203832)))

(declare-fun res!842018 () Bool)

(assert (=> b!1886566 (=> res!842018 e!1203832)))

(assert (=> b!1886566 (= res!842018 e!1203831)))

(declare-fun res!842017 () Bool)

(assert (=> b!1886566 (=> (not res!842017) (not e!1203831))))

(assert (=> b!1886566 (= res!842017 (= (h!26447 l2!1298) (h!26447 (t!175127 l3!256))))))

(declare-fun b!1886565 () Bool)

(declare-fun e!1203830 () Bool)

(assert (=> b!1886565 (= e!1203830 e!1203829)))

(declare-fun res!842020 () Bool)

(assert (=> b!1886565 (=> (not res!842020) (not e!1203829))))

(assert (=> b!1886565 (= res!842020 (is-Cons!21046 (t!175127 l3!256)))))

(declare-fun d!578008 () Bool)

(declare-fun res!842019 () Bool)

(assert (=> d!578008 (=> res!842019 e!1203830)))

(assert (=> d!578008 (= res!842019 (is-Nil!21046 l2!1298))))

(assert (=> d!578008 (= (subseq!396 l2!1298 (t!175127 l3!256)) e!1203830)))

(assert (= (and d!578008 (not res!842019)) b!1886565))

(assert (= (and b!1886565 res!842020) b!1886566))

(assert (= (and b!1886566 res!842017) b!1886567))

(assert (= (and b!1886566 (not res!842018)) b!1886568))

(declare-fun m!2319009 () Bool)

(assert (=> b!1886567 m!2319009))

(declare-fun m!2319011 () Bool)

(assert (=> b!1886568 m!2319011))

(assert (=> b!1886517 d!578008))

(declare-fun b!1886571 () Bool)

(declare-fun e!1203835 () Bool)

(assert (=> b!1886571 (= e!1203835 (subseq!396 (t!175127 l1!1329) (t!175127 l2!1298)))))

(declare-fun b!1886572 () Bool)

(declare-fun e!1203836 () Bool)

(assert (=> b!1886572 (= e!1203836 (subseq!396 l1!1329 (t!175127 l2!1298)))))

(declare-fun b!1886570 () Bool)

(declare-fun e!1203833 () Bool)

(assert (=> b!1886570 (= e!1203833 e!1203836)))

(declare-fun res!842022 () Bool)

(assert (=> b!1886570 (=> res!842022 e!1203836)))

(assert (=> b!1886570 (= res!842022 e!1203835)))

(declare-fun res!842021 () Bool)

(assert (=> b!1886570 (=> (not res!842021) (not e!1203835))))

(assert (=> b!1886570 (= res!842021 (= (h!26447 l1!1329) (h!26447 l2!1298)))))

(declare-fun b!1886569 () Bool)

(declare-fun e!1203834 () Bool)

(assert (=> b!1886569 (= e!1203834 e!1203833)))

(declare-fun res!842024 () Bool)

(assert (=> b!1886569 (=> (not res!842024) (not e!1203833))))

(assert (=> b!1886569 (= res!842024 (is-Cons!21046 l2!1298))))

(declare-fun d!578010 () Bool)

(declare-fun res!842023 () Bool)

(assert (=> d!578010 (=> res!842023 e!1203834)))

(assert (=> d!578010 (= res!842023 (is-Nil!21046 l1!1329))))

(assert (=> d!578010 (= (subseq!396 l1!1329 l2!1298) e!1203834)))

(assert (= (and d!578010 (not res!842023)) b!1886569))

(assert (= (and b!1886569 res!842024) b!1886570))

(assert (= (and b!1886570 res!842021) b!1886571))

(assert (= (and b!1886570 (not res!842022)) b!1886572))

(declare-fun m!2319013 () Bool)

(assert (=> b!1886571 m!2319013))

(declare-fun m!2319015 () Bool)

(assert (=> b!1886572 m!2319015))

(assert (=> start!188922 d!578010))

(declare-fun b!1886577 () Bool)

(declare-fun e!1203839 () Bool)

(declare-fun tp!537975 () Bool)

(assert (=> b!1886577 (= e!1203839 (and tp_is_empty!8955 tp!537975))))

(assert (=> b!1886519 (= tp!537961 e!1203839)))

(assert (= (and b!1886519 (is-Cons!21046 (t!175127 l2!1298))) b!1886577))

(declare-fun b!1886578 () Bool)

(declare-fun e!1203840 () Bool)

(declare-fun tp!537976 () Bool)

(assert (=> b!1886578 (= e!1203840 (and tp_is_empty!8955 tp!537976))))

(assert (=> b!1886523 (= tp!537962 e!1203840)))

(assert (= (and b!1886523 (is-Cons!21046 (t!175127 l3!256))) b!1886578))

(declare-fun b!1886579 () Bool)

(declare-fun e!1203841 () Bool)

(declare-fun tp!537977 () Bool)

(assert (=> b!1886579 (= e!1203841 (and tp_is_empty!8955 tp!537977))))

(assert (=> b!1886518 (= tp!537963 e!1203841)))

(assert (= (and b!1886518 (is-Cons!21046 (t!175127 l1!1329))) b!1886579))

(push 1)

(assert (not b!1886572))

(assert (not b!1886563))

(assert (not b!1886578))

(assert (not b!1886559))

(assert tp_is_empty!8955)

(assert (not b!1886560))

(assert (not b!1886555))

(assert (not b!1886567))

(assert (not d!578006))

(assert (not b!1886579))

(assert (not b!1886568))

(assert (not b!1886571))

(assert (not b!1886556))

(assert (not b!1886577))

(assert (not b!1886564))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

