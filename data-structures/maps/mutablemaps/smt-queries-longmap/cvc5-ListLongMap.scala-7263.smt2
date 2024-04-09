; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92796 () Bool)

(assert start!92796)

(declare-fun b!1053595 () Bool)

(declare-fun e!598455 () Bool)

(assert (=> b!1053595 (= e!598455 (not true))))

(declare-fun e!598457 () Bool)

(assert (=> b!1053595 e!598457))

(declare-fun res!702686 () Bool)

(assert (=> b!1053595 (=> (not res!702686) (not e!598457))))

(declare-datatypes ((array!66437 0))(
  ( (array!66438 (arr!31948 (Array (_ BitVec 32) (_ BitVec 64))) (size!32485 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66437)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(declare-fun lt!465163 () (_ BitVec 32))

(assert (=> b!1053595 (= res!702686 (= (select (store (arr!31948 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465163) k!2747))))

(declare-fun b!1053596 () Bool)

(declare-fun e!598453 () Bool)

(declare-fun arrayContainsKey!0 (array!66437 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053596 (= e!598453 (arrayContainsKey!0 a!3488 k!2747 lt!465163))))

(declare-fun res!702691 () Bool)

(declare-fun e!598456 () Bool)

(assert (=> start!92796 (=> (not res!702691) (not e!598456))))

(assert (=> start!92796 (= res!702691 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32485 a!3488)) (bvslt (size!32485 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92796 e!598456))

(assert (=> start!92796 true))

(declare-fun array_inv!24570 (array!66437) Bool)

(assert (=> start!92796 (array_inv!24570 a!3488)))

(declare-fun b!1053597 () Bool)

(declare-fun res!702688 () Bool)

(assert (=> b!1053597 (=> (not res!702688) (not e!598456))))

(declare-datatypes ((List!22391 0))(
  ( (Nil!22388) (Cons!22387 (h!23596 (_ BitVec 64)) (t!31705 List!22391)) )
))
(declare-fun arrayNoDuplicates!0 (array!66437 (_ BitVec 32) List!22391) Bool)

(assert (=> b!1053597 (= res!702688 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22388))))

(declare-fun b!1053598 () Bool)

(declare-fun res!702689 () Bool)

(assert (=> b!1053598 (=> (not res!702689) (not e!598456))))

(assert (=> b!1053598 (= res!702689 (= (select (arr!31948 a!3488) i!1381) k!2747))))

(declare-fun b!1053599 () Bool)

(declare-fun res!702687 () Bool)

(assert (=> b!1053599 (=> (not res!702687) (not e!598456))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053599 (= res!702687 (validKeyInArray!0 k!2747))))

(declare-fun b!1053600 () Bool)

(assert (=> b!1053600 (= e!598457 e!598453)))

(declare-fun res!702692 () Bool)

(assert (=> b!1053600 (=> res!702692 e!598453)))

(assert (=> b!1053600 (= res!702692 (bvsle lt!465163 i!1381))))

(declare-fun b!1053601 () Bool)

(declare-fun e!598454 () Bool)

(assert (=> b!1053601 (= e!598456 e!598454)))

(declare-fun res!702693 () Bool)

(assert (=> b!1053601 (=> (not res!702693) (not e!598454))))

(declare-fun lt!465162 () array!66437)

(assert (=> b!1053601 (= res!702693 (arrayContainsKey!0 lt!465162 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1053601 (= lt!465162 (array!66438 (store (arr!31948 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32485 a!3488)))))

(declare-fun b!1053602 () Bool)

(assert (=> b!1053602 (= e!598454 e!598455)))

(declare-fun res!702690 () Bool)

(assert (=> b!1053602 (=> (not res!702690) (not e!598455))))

(assert (=> b!1053602 (= res!702690 (not (= lt!465163 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66437 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053602 (= lt!465163 (arrayScanForKey!0 lt!465162 k!2747 #b00000000000000000000000000000000))))

(assert (= (and start!92796 res!702691) b!1053597))

(assert (= (and b!1053597 res!702688) b!1053599))

(assert (= (and b!1053599 res!702687) b!1053598))

(assert (= (and b!1053598 res!702689) b!1053601))

(assert (= (and b!1053601 res!702693) b!1053602))

(assert (= (and b!1053602 res!702690) b!1053595))

(assert (= (and b!1053595 res!702686) b!1053600))

(assert (= (and b!1053600 (not res!702692)) b!1053596))

(declare-fun m!973971 () Bool)

(assert (=> b!1053602 m!973971))

(declare-fun m!973973 () Bool)

(assert (=> b!1053596 m!973973))

(declare-fun m!973975 () Bool)

(assert (=> b!1053598 m!973975))

(declare-fun m!973977 () Bool)

(assert (=> b!1053595 m!973977))

(declare-fun m!973979 () Bool)

(assert (=> b!1053595 m!973979))

(declare-fun m!973981 () Bool)

(assert (=> b!1053599 m!973981))

(declare-fun m!973983 () Bool)

(assert (=> b!1053601 m!973983))

(assert (=> b!1053601 m!973977))

(declare-fun m!973985 () Bool)

(assert (=> start!92796 m!973985))

(declare-fun m!973987 () Bool)

(assert (=> b!1053597 m!973987))

(push 1)

