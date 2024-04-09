; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92904 () Bool)

(assert start!92904)

(declare-fun res!703685 () Bool)

(declare-fun e!599255 () Bool)

(assert (=> start!92904 (=> (not res!703685) (not e!599255))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66512 0))(
  ( (array!66513 (arr!31984 (Array (_ BitVec 32) (_ BitVec 64))) (size!32521 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66512)

(assert (=> start!92904 (= res!703685 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32521 a!3488)) (bvslt (size!32521 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92904 e!599255))

(assert (=> start!92904 true))

(declare-fun array_inv!24606 (array!66512) Bool)

(assert (=> start!92904 (array_inv!24606 a!3488)))

(declare-fun b!1054635 () Bool)

(declare-fun e!599259 () Bool)

(assert (=> b!1054635 (= e!599255 e!599259)))

(declare-fun res!703687 () Bool)

(assert (=> b!1054635 (=> (not res!703687) (not e!599259))))

(declare-fun lt!465493 () array!66512)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66512 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1054635 (= res!703687 (arrayContainsKey!0 lt!465493 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1054635 (= lt!465493 (array!66513 (store (arr!31984 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32521 a!3488)))))

(declare-fun b!1054636 () Bool)

(declare-fun res!703692 () Bool)

(assert (=> b!1054636 (=> (not res!703692) (not e!599255))))

(assert (=> b!1054636 (= res!703692 (= (select (arr!31984 a!3488) i!1381) k!2747))))

(declare-fun b!1054637 () Bool)

(declare-fun e!599260 () Bool)

(assert (=> b!1054637 (= e!599260 true)))

(assert (=> b!1054637 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34535 0))(
  ( (Unit!34536) )
))
(declare-fun lt!465491 () Unit!34535)

(declare-fun lt!465492 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66512 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34535)

(assert (=> b!1054637 (= lt!465491 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!465492 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-datatypes ((List!22427 0))(
  ( (Nil!22424) (Cons!22423 (h!23632 (_ BitVec 64)) (t!31741 List!22427)) )
))
(declare-fun arrayNoDuplicates!0 (array!66512 (_ BitVec 32) List!22427) Bool)

(assert (=> b!1054637 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22424)))

(declare-fun lt!465490 () Unit!34535)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66512 (_ BitVec 32) (_ BitVec 32)) Unit!34535)

(assert (=> b!1054637 (= lt!465490 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1054638 () Bool)

(declare-fun e!599257 () Bool)

(assert (=> b!1054638 (= e!599257 (not e!599260))))

(declare-fun res!703690 () Bool)

(assert (=> b!1054638 (=> res!703690 e!599260)))

(assert (=> b!1054638 (= res!703690 (bvsle lt!465492 i!1381))))

(declare-fun e!599258 () Bool)

(assert (=> b!1054638 e!599258))

(declare-fun res!703686 () Bool)

(assert (=> b!1054638 (=> (not res!703686) (not e!599258))))

(assert (=> b!1054638 (= res!703686 (= (select (store (arr!31984 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465492) k!2747))))

(declare-fun b!1054639 () Bool)

(declare-fun e!599261 () Bool)

(assert (=> b!1054639 (= e!599258 e!599261)))

(declare-fun res!703689 () Bool)

(assert (=> b!1054639 (=> res!703689 e!599261)))

(assert (=> b!1054639 (= res!703689 (bvsle lt!465492 i!1381))))

(declare-fun b!1054640 () Bool)

(assert (=> b!1054640 (= e!599259 e!599257)))

(declare-fun res!703691 () Bool)

(assert (=> b!1054640 (=> (not res!703691) (not e!599257))))

(assert (=> b!1054640 (= res!703691 (not (= lt!465492 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66512 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1054640 (= lt!465492 (arrayScanForKey!0 lt!465493 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1054641 () Bool)

(assert (=> b!1054641 (= e!599261 (arrayContainsKey!0 a!3488 k!2747 lt!465492))))

(declare-fun b!1054642 () Bool)

(declare-fun res!703684 () Bool)

(assert (=> b!1054642 (=> (not res!703684) (not e!599255))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1054642 (= res!703684 (validKeyInArray!0 k!2747))))

(declare-fun b!1054643 () Bool)

(declare-fun res!703688 () Bool)

(assert (=> b!1054643 (=> (not res!703688) (not e!599255))))

(assert (=> b!1054643 (= res!703688 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22424))))

(assert (= (and start!92904 res!703685) b!1054643))

(assert (= (and b!1054643 res!703688) b!1054642))

(assert (= (and b!1054642 res!703684) b!1054636))

(assert (= (and b!1054636 res!703692) b!1054635))

(assert (= (and b!1054635 res!703687) b!1054640))

(assert (= (and b!1054640 res!703691) b!1054638))

(assert (= (and b!1054638 res!703686) b!1054639))

(assert (= (and b!1054639 (not res!703689)) b!1054641))

(assert (= (and b!1054638 (not res!703690)) b!1054637))

(declare-fun m!974823 () Bool)

(assert (=> start!92904 m!974823))

(declare-fun m!974825 () Bool)

(assert (=> b!1054641 m!974825))

(declare-fun m!974827 () Bool)

(assert (=> b!1054638 m!974827))

(declare-fun m!974829 () Bool)

(assert (=> b!1054638 m!974829))

(declare-fun m!974831 () Bool)

(assert (=> b!1054642 m!974831))

(declare-fun m!974833 () Bool)

(assert (=> b!1054643 m!974833))

(declare-fun m!974835 () Bool)

(assert (=> b!1054635 m!974835))

(assert (=> b!1054635 m!974827))

(declare-fun m!974837 () Bool)

(assert (=> b!1054640 m!974837))

(declare-fun m!974839 () Bool)

(assert (=> b!1054636 m!974839))

(declare-fun m!974841 () Bool)

(assert (=> b!1054637 m!974841))

(declare-fun m!974843 () Bool)

(assert (=> b!1054637 m!974843))

(declare-fun m!974845 () Bool)

(assert (=> b!1054637 m!974845))

(declare-fun m!974847 () Bool)

(assert (=> b!1054637 m!974847))

(push 1)

(assert (not b!1054635))

(assert (not start!92904))

(assert (not b!1054641))

(assert (not b!1054642))

(assert (not b!1054637))

