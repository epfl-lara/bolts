; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13402 () Bool)

(assert start!13402)

(declare-fun res!59436 () Bool)

(declare-fun e!74473 () Bool)

(assert (=> start!13402 (=> (not res!59436) (not e!74473))))

(declare-datatypes ((B!677 0))(
  ( (B!678 (val!824 Int)) )
))
(declare-datatypes ((List!2142 0))(
  ( (Nil!2136) (Cons!2136 (h!7533 B!677) (t!22728 List!2142)) )
))
(declare-fun baseList!9 () List!2142)

(declare-fun noDuplicate!32 (List!2142) Bool)

(assert (=> start!13402 (= res!59436 (noDuplicate!32 baseList!9))))

(assert (=> start!13402 e!74473))

(declare-fun e!74471 () Bool)

(assert (=> start!13402 e!74471))

(declare-fun e!74472 () Bool)

(assert (=> start!13402 e!74472))

(declare-fun b!129334 () Bool)

(declare-fun tp_is_empty!1321 () Bool)

(declare-fun tp!70107 () Bool)

(assert (=> b!129334 (= e!74472 (and tp_is_empty!1321 tp!70107))))

(declare-fun b!129335 () Bool)

(declare-fun tp!70108 () Bool)

(assert (=> b!129335 (= e!74471 (and tp_is_empty!1321 tp!70108))))

(declare-fun b!129336 () Bool)

(declare-fun res!59437 () Bool)

(assert (=> b!129336 (=> (not res!59437) (not e!74473))))

(declare-fun newList!20 () List!2142)

(declare-fun contains!316 (List!2142 B!677) Bool)

(assert (=> b!129336 (= res!59437 (contains!316 baseList!9 (h!7533 newList!20)))))

(declare-fun b!129337 () Bool)

(assert (=> b!129337 (= e!74473 (not true))))

(declare-fun subseq!11 (List!2142 List!2142) Bool)

(assert (=> b!129337 (subseq!11 baseList!9 baseList!9)))

(declare-datatypes ((Unit!1656 0))(
  ( (Unit!1657) )
))
(declare-fun lt!38674 () Unit!1656)

(declare-fun lemmaSubseqRefl!12 (List!2142) Unit!1656)

(assert (=> b!129337 (= lt!38674 (lemmaSubseqRefl!12 baseList!9))))

(declare-fun b!129338 () Bool)

(declare-fun res!59438 () Bool)

(assert (=> b!129338 (=> (not res!59438) (not e!74473))))

(get-info :version)

(assert (=> b!129338 (= res!59438 ((_ is Cons!2136) newList!20))))

(assert (= (and start!13402 res!59436) b!129338))

(assert (= (and b!129338 res!59438) b!129336))

(assert (= (and b!129336 res!59437) b!129337))

(assert (= (and start!13402 ((_ is Cons!2136) baseList!9)) b!129335))

(assert (= (and start!13402 ((_ is Cons!2136) newList!20)) b!129334))

(declare-fun m!113945 () Bool)

(assert (=> start!13402 m!113945))

(declare-fun m!113947 () Bool)

(assert (=> b!129336 m!113947))

(declare-fun m!113949 () Bool)

(assert (=> b!129337 m!113949))

(declare-fun m!113951 () Bool)

(assert (=> b!129337 m!113951))

(check-sat (not b!129336) (not b!129335) tp_is_empty!1321 (not b!129334) (not start!13402) (not b!129337))
(check-sat)
