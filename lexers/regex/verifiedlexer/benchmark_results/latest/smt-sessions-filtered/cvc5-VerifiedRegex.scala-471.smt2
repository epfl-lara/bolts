; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!13428 () Bool)

(assert start!13428)

(declare-fun b!129745 () Bool)

(declare-fun e!74726 () Bool)

(assert (=> b!129745 (= e!74726 (not true))))

(declare-datatypes ((B!703 0))(
  ( (B!704 (val!837 Int)) )
))
(declare-datatypes ((List!2155 0))(
  ( (Nil!2149) (Cons!2149 (h!7546 B!703) (t!22741 List!2155)) )
))
(declare-fun baseList!9 () List!2155)

(declare-fun subseq!20 (List!2155 List!2155) Bool)

(assert (=> b!129745 (subseq!20 baseList!9 baseList!9)))

(declare-datatypes ((Unit!1682 0))(
  ( (Unit!1683) )
))
(declare-fun lt!38941 () Unit!1682)

(declare-fun lemmaSubseqRefl!17 (List!2155) Unit!1682)

(assert (=> b!129745 (= lt!38941 (lemmaSubseqRefl!17 baseList!9))))

(declare-fun b!129746 () Bool)

(declare-fun e!74725 () Bool)

(declare-fun newList!20 () List!2155)

(declare-fun contains!329 (List!2155 B!703) Bool)

(assert (=> b!129746 (= e!74725 (not (contains!329 baseList!9 (h!7546 newList!20))))))

(declare-fun b!129747 () Bool)

(declare-fun e!74727 () Bool)

(declare-fun tp_is_empty!1347 () Bool)

(declare-fun tp!70185 () Bool)

(assert (=> b!129747 (= e!74727 (and tp_is_empty!1347 tp!70185))))

(declare-fun b!129748 () Bool)

(declare-fun e!74728 () Bool)

(assert (=> b!129748 (= e!74728 (contains!329 baseList!9 (h!7546 newList!20)))))

(declare-fun res!59771 () Bool)

(assert (=> start!13428 (=> (not res!59771) (not e!74726))))

(declare-fun noDuplicate!45 (List!2155) Bool)

(assert (=> start!13428 (= res!59771 (noDuplicate!45 baseList!9))))

(assert (=> start!13428 e!74726))

(declare-fun e!74724 () Bool)

(assert (=> start!13428 e!74724))

(assert (=> start!13428 e!74727))

(declare-fun b!129749 () Bool)

(declare-fun res!59769 () Bool)

(assert (=> b!129749 (=> (not res!59769) (not e!74726))))

(assert (=> b!129749 (= res!59769 e!74728)))

(declare-fun res!59772 () Bool)

(assert (=> b!129749 (=> res!59772 e!74728)))

(assert (=> b!129749 (= res!59772 (not (is-Cons!2149 newList!20)))))

(declare-fun b!129750 () Bool)

(declare-fun res!59774 () Bool)

(assert (=> b!129750 (=> (not res!59774) (not e!74726))))

(assert (=> b!129750 (= res!59774 e!74725)))

(declare-fun res!59770 () Bool)

(assert (=> b!129750 (=> res!59770 e!74725)))

(assert (=> b!129750 (= res!59770 (not (is-Cons!2149 newList!20)))))

(declare-fun b!129751 () Bool)

(declare-fun res!59773 () Bool)

(assert (=> b!129751 (=> (not res!59773) (not e!74726))))

(assert (=> b!129751 (= res!59773 (is-Nil!2149 newList!20))))

(declare-fun b!129752 () Bool)

(declare-fun tp!70186 () Bool)

(assert (=> b!129752 (= e!74724 (and tp_is_empty!1347 tp!70186))))

(assert (= (and start!13428 res!59771) b!129750))

(assert (= (and b!129750 (not res!59770)) b!129746))

(assert (= (and b!129750 res!59774) b!129749))

(assert (= (and b!129749 (not res!59772)) b!129748))

(assert (= (and b!129749 res!59769) b!129751))

(assert (= (and b!129751 res!59773) b!129745))

(assert (= (and start!13428 (is-Cons!2149 baseList!9)) b!129752))

(assert (= (and start!13428 (is-Cons!2149 newList!20)) b!129747))

(declare-fun m!114305 () Bool)

(assert (=> b!129745 m!114305))

(declare-fun m!114307 () Bool)

(assert (=> b!129745 m!114307))

(declare-fun m!114309 () Bool)

(assert (=> b!129746 m!114309))

(assert (=> b!129748 m!114309))

(declare-fun m!114311 () Bool)

(assert (=> start!13428 m!114311))

(push 1)

(assert (not b!129747))

(assert (not start!13428))

(assert tp_is_empty!1347)

(assert (not b!129752))

(assert (not b!129746))

(assert (not b!129745))

(assert (not b!129748))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

