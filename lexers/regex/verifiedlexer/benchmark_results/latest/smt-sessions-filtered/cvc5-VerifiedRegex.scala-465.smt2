; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!13404 () Bool)

(assert start!13404)

(declare-fun b!129357 () Bool)

(declare-fun res!59457 () Bool)

(declare-fun e!74486 () Bool)

(assert (=> b!129357 (=> (not res!59457) (not e!74486))))

(declare-datatypes ((B!679 0))(
  ( (B!680 (val!825 Int)) )
))
(declare-datatypes ((List!2143 0))(
  ( (Nil!2137) (Cons!2137 (h!7534 B!679) (t!22729 List!2143)) )
))
(declare-fun baseList!9 () List!2143)

(declare-fun newList!20 () List!2143)

(declare-fun contains!317 (List!2143 B!679) Bool)

(assert (=> b!129357 (= res!59457 (contains!317 baseList!9 (h!7534 newList!20)))))

(declare-fun b!129358 () Bool)

(declare-fun e!74487 () Bool)

(declare-fun lt!38687 () List!2143)

(declare-fun isPrefix!138 (List!2143 List!2143) Bool)

(assert (=> b!129358 (= e!74487 (isPrefix!138 baseList!9 lt!38687))))

(declare-fun b!129360 () Bool)

(declare-fun e!74490 () Bool)

(declare-fun tp_is_empty!1323 () Bool)

(declare-fun tp!70114 () Bool)

(assert (=> b!129360 (= e!74490 (and tp_is_empty!1323 tp!70114))))

(declare-fun b!129361 () Bool)

(declare-fun e!74491 () Bool)

(assert (=> b!129361 (= e!74486 (not e!74491))))

(declare-fun res!59456 () Bool)

(assert (=> b!129361 (=> res!59456 e!74491)))

(declare-fun lt!38689 () Bool)

(assert (=> b!129361 (= res!59456 lt!38689)))

(declare-fun e!74489 () Bool)

(assert (=> b!129361 e!74489))

(declare-fun res!59458 () Bool)

(assert (=> b!129361 (=> (not res!59458) (not e!74489))))

(assert (=> b!129361 (= res!59458 (not lt!38689))))

(declare-fun noDuplicate!33 (List!2143) Bool)

(assert (=> b!129361 (= lt!38689 (not (noDuplicate!33 lt!38687)))))

(declare-fun concatWithoutDuplicates!1 (List!2143 List!2143) List!2143)

(assert (=> b!129361 (= lt!38687 (concatWithoutDuplicates!1 baseList!9 (t!22729 newList!20)))))

(declare-fun subseq!12 (List!2143 List!2143) Bool)

(assert (=> b!129361 (subseq!12 baseList!9 baseList!9)))

(declare-datatypes ((Unit!1658 0))(
  ( (Unit!1659) )
))
(declare-fun lt!38686 () Unit!1658)

(declare-fun lemmaSubseqRefl!13 (List!2143) Unit!1658)

(assert (=> b!129361 (= lt!38686 (lemmaSubseqRefl!13 baseList!9))))

(declare-fun b!129362 () Bool)

(declare-fun e!74488 () Bool)

(declare-fun tp!70113 () Bool)

(assert (=> b!129362 (= e!74488 (and tp_is_empty!1323 tp!70113))))

(declare-fun b!129363 () Bool)

(assert (=> b!129363 (= e!74491 true)))

(declare-fun lt!38688 () List!2143)

(declare-fun ++!419 (List!2143 List!2143) List!2143)

(assert (=> b!129363 (= lt!38688 (++!419 baseList!9 (t!22729 newList!20)))))

(declare-fun b!129364 () Bool)

(declare-fun res!59459 () Bool)

(assert (=> b!129364 (=> (not res!59459) (not e!74486))))

(assert (=> b!129364 (= res!59459 (is-Cons!2137 newList!20))))

(declare-fun b!129365 () Bool)

(assert (=> b!129365 (= e!74489 e!74487)))

(declare-fun res!59454 () Bool)

(assert (=> b!129365 (=> (not res!59454) (not e!74487))))

(declare-fun lt!38685 () List!2143)

(declare-fun content!258 (List!2143) (Set B!679))

(assert (=> b!129365 (= res!59454 (= (content!258 lt!38685) (content!258 lt!38687)))))

(assert (=> b!129365 (= lt!38685 (++!419 baseList!9 (t!22729 newList!20)))))

(declare-fun b!129359 () Bool)

(declare-fun res!59453 () Bool)

(assert (=> b!129359 (=> (not res!59453) (not e!74487))))

(assert (=> b!129359 (= res!59453 (subseq!12 lt!38687 lt!38685))))

(declare-fun res!59455 () Bool)

(assert (=> start!13404 (=> (not res!59455) (not e!74486))))

(assert (=> start!13404 (= res!59455 (noDuplicate!33 baseList!9))))

(assert (=> start!13404 e!74486))

(assert (=> start!13404 e!74490))

(assert (=> start!13404 e!74488))

(assert (= (and start!13404 res!59455) b!129364))

(assert (= (and b!129364 res!59459) b!129357))

(assert (= (and b!129357 res!59457) b!129361))

(assert (= (and b!129361 res!59458) b!129365))

(assert (= (and b!129365 res!59454) b!129359))

(assert (= (and b!129359 res!59453) b!129358))

(assert (= (and b!129361 (not res!59456)) b!129363))

(assert (= (and start!13404 (is-Cons!2137 baseList!9)) b!129360))

(assert (= (and start!13404 (is-Cons!2137 newList!20)) b!129362))

(declare-fun m!113953 () Bool)

(assert (=> b!129358 m!113953))

(declare-fun m!113955 () Bool)

(assert (=> start!13404 m!113955))

(declare-fun m!113957 () Bool)

(assert (=> b!129357 m!113957))

(declare-fun m!113959 () Bool)

(assert (=> b!129363 m!113959))

(declare-fun m!113961 () Bool)

(assert (=> b!129365 m!113961))

(declare-fun m!113963 () Bool)

(assert (=> b!129365 m!113963))

(assert (=> b!129365 m!113959))

(declare-fun m!113965 () Bool)

(assert (=> b!129361 m!113965))

(declare-fun m!113967 () Bool)

(assert (=> b!129361 m!113967))

(declare-fun m!113969 () Bool)

(assert (=> b!129361 m!113969))

(declare-fun m!113971 () Bool)

(assert (=> b!129361 m!113971))

(declare-fun m!113973 () Bool)

(assert (=> b!129359 m!113973))

(push 1)

(assert (not b!129365))

(assert (not b!129363))

(assert (not b!129360))

(assert (not start!13404))

(assert (not b!129358))

(assert (not b!129357))

(assert (not b!129362))

(assert (not b!129359))

(assert (not b!129361))

(assert tp_is_empty!1323)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

