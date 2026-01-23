; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!13432 () Bool)

(assert start!13432)

(declare-fun b!129794 () Bool)

(declare-fun res!59807 () Bool)

(declare-fun e!74754 () Bool)

(assert (=> b!129794 (=> (not res!59807) (not e!74754))))

(declare-datatypes ((B!707 0))(
  ( (B!708 (val!839 Int)) )
))
(declare-datatypes ((List!2157 0))(
  ( (Nil!2151) (Cons!2151 (h!7548 B!707) (t!22743 List!2157)) )
))
(declare-fun lt!38955 () List!2157)

(declare-fun lt!38956 () List!2157)

(declare-fun subseq!22 (List!2157 List!2157) Bool)

(assert (=> b!129794 (= res!59807 (subseq!22 lt!38955 lt!38956))))

(declare-fun b!129795 () Bool)

(declare-fun e!74756 () Bool)

(declare-fun tp_is_empty!1351 () Bool)

(declare-fun tp!70198 () Bool)

(assert (=> b!129795 (= e!74756 (and tp_is_empty!1351 tp!70198))))

(declare-fun b!129796 () Bool)

(declare-fun res!59809 () Bool)

(declare-fun e!74755 () Bool)

(assert (=> b!129796 (=> (not res!59809) (not e!74755))))

(declare-fun baseList!9 () List!2157)

(declare-fun newList!20 () List!2157)

(declare-fun contains!331 (List!2157 B!707) Bool)

(assert (=> b!129796 (= res!59809 (contains!331 baseList!9 (h!7548 newList!20)))))

(declare-fun b!129797 () Bool)

(declare-fun isPrefix!150 (List!2157 List!2157) Bool)

(assert (=> b!129797 (= e!74754 (isPrefix!150 baseList!9 lt!38955))))

(declare-fun b!129798 () Bool)

(declare-fun res!59808 () Bool)

(assert (=> b!129798 (=> (not res!59808) (not e!74755))))

(assert (=> b!129798 (= res!59808 (is-Cons!2151 newList!20))))

(declare-fun b!129799 () Bool)

(declare-fun e!74758 () Bool)

(declare-fun tp!70197 () Bool)

(assert (=> b!129799 (= e!74758 (and tp_is_empty!1351 tp!70197))))

(declare-fun b!129800 () Bool)

(declare-fun e!74757 () Bool)

(assert (=> b!129800 (= e!74757 e!74754)))

(declare-fun res!59806 () Bool)

(assert (=> b!129800 (=> (not res!59806) (not e!74754))))

(declare-fun content!266 (List!2157) (Set B!707))

(assert (=> b!129800 (= res!59806 (= (content!266 lt!38956) (content!266 lt!38955)))))

(declare-fun ++!431 (List!2157 List!2157) List!2157)

(assert (=> b!129800 (= lt!38956 (++!431 baseList!9 (t!22743 newList!20)))))

(declare-fun b!129793 () Bool)

(declare-fun lt!38953 () Bool)

(assert (=> b!129793 (= e!74755 (not lt!38953))))

(assert (=> b!129793 e!74757))

(declare-fun res!59810 () Bool)

(assert (=> b!129793 (=> (not res!59810) (not e!74757))))

(assert (=> b!129793 (= res!59810 lt!38953)))

(declare-fun noDuplicate!47 (List!2157) Bool)

(assert (=> b!129793 (= lt!38953 (noDuplicate!47 lt!38955))))

(declare-fun concatWithoutDuplicates!9 (List!2157 List!2157) List!2157)

(assert (=> b!129793 (= lt!38955 (concatWithoutDuplicates!9 baseList!9 (t!22743 newList!20)))))

(assert (=> b!129793 (subseq!22 baseList!9 baseList!9)))

(declare-datatypes ((Unit!1686 0))(
  ( (Unit!1687) )
))
(declare-fun lt!38954 () Unit!1686)

(declare-fun lemmaSubseqRefl!19 (List!2157) Unit!1686)

(assert (=> b!129793 (= lt!38954 (lemmaSubseqRefl!19 baseList!9))))

(declare-fun res!59805 () Bool)

(assert (=> start!13432 (=> (not res!59805) (not e!74755))))

(assert (=> start!13432 (= res!59805 (noDuplicate!47 baseList!9))))

(assert (=> start!13432 e!74755))

(assert (=> start!13432 e!74758))

(assert (=> start!13432 e!74756))

(assert (= (and start!13432 res!59805) b!129798))

(assert (= (and b!129798 res!59808) b!129796))

(assert (= (and b!129796 res!59809) b!129793))

(assert (= (and b!129793 res!59810) b!129800))

(assert (= (and b!129800 res!59806) b!129794))

(assert (= (and b!129794 res!59807) b!129797))

(assert (= (and start!13432 (is-Cons!2151 baseList!9)) b!129799))

(assert (= (and start!13432 (is-Cons!2151 newList!20)) b!129795))

(declare-fun m!114321 () Bool)

(assert (=> b!129794 m!114321))

(declare-fun m!114323 () Bool)

(assert (=> b!129793 m!114323))

(declare-fun m!114325 () Bool)

(assert (=> b!129793 m!114325))

(declare-fun m!114327 () Bool)

(assert (=> b!129793 m!114327))

(declare-fun m!114329 () Bool)

(assert (=> b!129793 m!114329))

(declare-fun m!114331 () Bool)

(assert (=> b!129800 m!114331))

(declare-fun m!114333 () Bool)

(assert (=> b!129800 m!114333))

(declare-fun m!114335 () Bool)

(assert (=> b!129800 m!114335))

(declare-fun m!114337 () Bool)

(assert (=> start!13432 m!114337))

(declare-fun m!114339 () Bool)

(assert (=> b!129796 m!114339))

(declare-fun m!114341 () Bool)

(assert (=> b!129797 m!114341))

(push 1)

(assert (not b!129795))

(assert (not start!13432))

(assert (not b!129793))

(assert (not b!129794))

(assert tp_is_empty!1351)

(assert (not b!129800))

(assert (not b!129797))

(assert (not b!129799))

(assert (not b!129796))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

