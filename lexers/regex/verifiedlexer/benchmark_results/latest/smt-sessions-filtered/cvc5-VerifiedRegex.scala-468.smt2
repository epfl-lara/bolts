; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!13416 () Bool)

(assert start!13416)

(declare-fun b!129527 () Bool)

(declare-fun e!74590 () Bool)

(declare-datatypes ((B!691 0))(
  ( (B!692 (val!831 Int)) )
))
(declare-datatypes ((List!2149 0))(
  ( (Nil!2143) (Cons!2143 (h!7540 B!691) (t!22735 List!2149)) )
))
(declare-fun baseList!9 () List!2149)

(declare-fun newList!20 () List!2149)

(declare-fun contains!323 (List!2149 B!691) Bool)

(assert (=> b!129527 (= e!74590 (not (contains!323 baseList!9 (h!7540 newList!20))))))

(declare-fun b!129528 () Bool)

(declare-fun e!74592 () Bool)

(declare-fun tp_is_empty!1335 () Bool)

(declare-fun tp!70149 () Bool)

(assert (=> b!129528 (= e!74592 (and tp_is_empty!1335 tp!70149))))

(declare-fun res!59591 () Bool)

(declare-fun e!74593 () Bool)

(assert (=> start!13416 (=> (not res!59591) (not e!74593))))

(declare-fun noDuplicate!39 (List!2149) Bool)

(assert (=> start!13416 (= res!59591 (noDuplicate!39 baseList!9))))

(assert (=> start!13416 e!74593))

(declare-fun e!74591 () Bool)

(assert (=> start!13416 e!74591))

(assert (=> start!13416 e!74592))

(declare-fun b!129529 () Bool)

(declare-fun res!59588 () Bool)

(assert (=> b!129529 (=> (not res!59588) (not e!74593))))

(assert (=> b!129529 (= res!59588 (is-Cons!2143 newList!20))))

(declare-fun b!129530 () Bool)

(declare-fun res!59590 () Bool)

(assert (=> b!129530 (=> (not res!59590) (not e!74593))))

(assert (=> b!129530 (= res!59590 (not (contains!323 baseList!9 (h!7540 newList!20))))))

(declare-fun b!129531 () Bool)

(assert (=> b!129531 (= e!74593 (not true))))

(declare-fun lt!38794 () List!2149)

(assert (=> b!129531 (noDuplicate!39 lt!38794)))

(declare-datatypes ((Unit!1670 0))(
  ( (Unit!1671) )
))
(declare-fun lt!38792 () Unit!1670)

(declare-fun lemmaAppendNewElementElementPreserves!1 (List!2149 B!691) Unit!1670)

(assert (=> b!129531 (= lt!38792 (lemmaAppendNewElementElementPreserves!1 baseList!9 (h!7540 newList!20)))))

(declare-fun isPrefix!144 (List!2149 List!2149) Bool)

(assert (=> b!129531 (isPrefix!144 baseList!9 lt!38794)))

(declare-fun lt!38793 () List!2149)

(declare-fun ++!425 (List!2149 List!2149) List!2149)

(assert (=> b!129531 (= lt!38794 (++!425 baseList!9 lt!38793))))

(declare-fun lt!38791 () Unit!1670)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!83 (List!2149 List!2149) Unit!1670)

(assert (=> b!129531 (= lt!38791 (lemmaConcatTwoListThenFirstIsPrefix!83 baseList!9 lt!38793))))

(assert (=> b!129531 (= lt!38793 (Cons!2143 (h!7540 newList!20) Nil!2143))))

(declare-fun b!129532 () Bool)

(declare-fun tp!70150 () Bool)

(assert (=> b!129532 (= e!74591 (and tp_is_empty!1335 tp!70150))))

(declare-fun b!129533 () Bool)

(declare-fun res!59587 () Bool)

(assert (=> b!129533 (=> (not res!59587) (not e!74593))))

(assert (=> b!129533 (= res!59587 e!74590)))

(declare-fun res!59589 () Bool)

(assert (=> b!129533 (=> res!59589 e!74590)))

(assert (=> b!129533 (= res!59589 (not (is-Cons!2143 newList!20)))))

(assert (= (and start!13416 res!59591) b!129533))

(assert (= (and b!129533 (not res!59589)) b!129527))

(assert (= (and b!129533 res!59587) b!129529))

(assert (= (and b!129529 res!59588) b!129530))

(assert (= (and b!129530 res!59590) b!129531))

(assert (= (and start!13416 (is-Cons!2143 baseList!9)) b!129532))

(assert (= (and start!13416 (is-Cons!2143 newList!20)) b!129528))

(declare-fun m!114101 () Bool)

(assert (=> b!129527 m!114101))

(declare-fun m!114103 () Bool)

(assert (=> start!13416 m!114103))

(assert (=> b!129530 m!114101))

(declare-fun m!114105 () Bool)

(assert (=> b!129531 m!114105))

(declare-fun m!114107 () Bool)

(assert (=> b!129531 m!114107))

(declare-fun m!114109 () Bool)

(assert (=> b!129531 m!114109))

(declare-fun m!114111 () Bool)

(assert (=> b!129531 m!114111))

(declare-fun m!114113 () Bool)

(assert (=> b!129531 m!114113))

(push 1)

(assert (not b!129531))

(assert tp_is_empty!1335)

(assert (not b!129532))

(assert (not start!13416))

(assert (not b!129528))

(assert (not b!129530))

(assert (not b!129527))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

