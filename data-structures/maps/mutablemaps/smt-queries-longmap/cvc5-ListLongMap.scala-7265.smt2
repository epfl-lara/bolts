; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92808 () Bool)

(assert start!92808)

(declare-datatypes ((array!66449 0))(
  ( (array!66450 (arr!31954 (Array (_ BitVec 32) (_ BitVec 64))) (size!32491 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66449)

(declare-fun lt!465199 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(declare-fun b!1053739 () Bool)

(declare-fun e!598561 () Bool)

(assert (=> b!1053739 (= e!598561 (not (or (bvsle lt!465199 i!1381) (bvsgt #b00000000000000000000000000000000 (size!32491 a!3488)) (bvsle i!1381 (size!32491 a!3488)))))))

(declare-fun e!598563 () Bool)

(assert (=> b!1053739 e!598563))

(declare-fun res!702835 () Bool)

(assert (=> b!1053739 (=> (not res!702835) (not e!598563))))

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1053739 (= res!702835 (= (select (store (arr!31954 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465199) k!2747))))

(declare-fun b!1053740 () Bool)

(declare-fun e!598564 () Bool)

(assert (=> b!1053740 (= e!598563 e!598564)))

(declare-fun res!702831 () Bool)

(assert (=> b!1053740 (=> res!702831 e!598564)))

(assert (=> b!1053740 (= res!702831 (bvsle lt!465199 i!1381))))

(declare-fun b!1053741 () Bool)

(declare-fun arrayContainsKey!0 (array!66449 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053741 (= e!598564 (arrayContainsKey!0 a!3488 k!2747 lt!465199))))

(declare-fun res!702834 () Bool)

(declare-fun e!598565 () Bool)

(assert (=> start!92808 (=> (not res!702834) (not e!598565))))

(assert (=> start!92808 (= res!702834 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32491 a!3488)) (bvslt (size!32491 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92808 e!598565))

(assert (=> start!92808 true))

(declare-fun array_inv!24576 (array!66449) Bool)

(assert (=> start!92808 (array_inv!24576 a!3488)))

(declare-fun b!1053742 () Bool)

(declare-fun e!598560 () Bool)

(assert (=> b!1053742 (= e!598565 e!598560)))

(declare-fun res!702837 () Bool)

(assert (=> b!1053742 (=> (not res!702837) (not e!598560))))

(declare-fun lt!465198 () array!66449)

(assert (=> b!1053742 (= res!702837 (arrayContainsKey!0 lt!465198 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1053742 (= lt!465198 (array!66450 (store (arr!31954 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32491 a!3488)))))

(declare-fun b!1053743 () Bool)

(assert (=> b!1053743 (= e!598560 e!598561)))

(declare-fun res!702833 () Bool)

(assert (=> b!1053743 (=> (not res!702833) (not e!598561))))

(assert (=> b!1053743 (= res!702833 (not (= lt!465199 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66449 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053743 (= lt!465199 (arrayScanForKey!0 lt!465198 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1053744 () Bool)

(declare-fun res!702832 () Bool)

(assert (=> b!1053744 (=> (not res!702832) (not e!598565))))

(assert (=> b!1053744 (= res!702832 (= (select (arr!31954 a!3488) i!1381) k!2747))))

(declare-fun b!1053745 () Bool)

(declare-fun res!702836 () Bool)

(assert (=> b!1053745 (=> (not res!702836) (not e!598565))))

(declare-datatypes ((List!22397 0))(
  ( (Nil!22394) (Cons!22393 (h!23602 (_ BitVec 64)) (t!31711 List!22397)) )
))
(declare-fun arrayNoDuplicates!0 (array!66449 (_ BitVec 32) List!22397) Bool)

(assert (=> b!1053745 (= res!702836 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22394))))

(declare-fun b!1053746 () Bool)

(declare-fun res!702830 () Bool)

(assert (=> b!1053746 (=> (not res!702830) (not e!598565))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053746 (= res!702830 (validKeyInArray!0 k!2747))))

(assert (= (and start!92808 res!702834) b!1053745))

(assert (= (and b!1053745 res!702836) b!1053746))

(assert (= (and b!1053746 res!702830) b!1053744))

(assert (= (and b!1053744 res!702832) b!1053742))

(assert (= (and b!1053742 res!702837) b!1053743))

(assert (= (and b!1053743 res!702833) b!1053739))

(assert (= (and b!1053739 res!702835) b!1053740))

(assert (= (and b!1053740 (not res!702831)) b!1053741))

(declare-fun m!974079 () Bool)

(assert (=> b!1053745 m!974079))

(declare-fun m!974081 () Bool)

(assert (=> start!92808 m!974081))

(declare-fun m!974083 () Bool)

(assert (=> b!1053741 m!974083))

(declare-fun m!974085 () Bool)

(assert (=> b!1053739 m!974085))

(declare-fun m!974087 () Bool)

(assert (=> b!1053739 m!974087))

(declare-fun m!974089 () Bool)

(assert (=> b!1053742 m!974089))

(assert (=> b!1053742 m!974085))

(declare-fun m!974091 () Bool)

(assert (=> b!1053743 m!974091))

(declare-fun m!974093 () Bool)

(assert (=> b!1053744 m!974093))

(declare-fun m!974095 () Bool)

(assert (=> b!1053746 m!974095))

(push 1)

(assert (not b!1053746))

(assert (not b!1053742))

(assert (not b!1053743))

(assert (not b!1053741))

(assert (not b!1053745))

(assert (not start!92808))

(check-sat)

(pop 1)

(push 1)

(check-sat)

