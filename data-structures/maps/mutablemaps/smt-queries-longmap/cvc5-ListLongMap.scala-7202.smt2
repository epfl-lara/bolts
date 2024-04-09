; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92310 () Bool)

(assert start!92310)

(declare-fun b!1048631 () Bool)

(declare-fun res!697871 () Bool)

(declare-fun e!594860 () Bool)

(assert (=> b!1048631 (=> (not res!697871) (not e!594860))))

(declare-datatypes ((array!66059 0))(
  ( (array!66060 (arr!31765 (Array (_ BitVec 32) (_ BitVec 64))) (size!32302 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66059)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1048631 (= res!697871 (= (select (arr!31765 a!3488) i!1381) k!2747))))

(declare-fun b!1048632 () Bool)

(declare-fun e!594859 () Bool)

(declare-fun e!594856 () Bool)

(assert (=> b!1048632 (= e!594859 e!594856)))

(declare-fun res!697866 () Bool)

(assert (=> b!1048632 (=> (not res!697866) (not e!594856))))

(declare-fun lt!463237 () (_ BitVec 32))

(assert (=> b!1048632 (= res!697866 (not (= lt!463237 i!1381)))))

(declare-fun lt!463236 () array!66059)

(declare-fun arrayScanForKey!0 (array!66059 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048632 (= lt!463237 (arrayScanForKey!0 lt!463236 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1048633 () Bool)

(declare-fun res!697869 () Bool)

(assert (=> b!1048633 (=> (not res!697869) (not e!594860))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048633 (= res!697869 (validKeyInArray!0 k!2747))))

(declare-fun b!1048634 () Bool)

(assert (=> b!1048634 (= e!594860 e!594859)))

(declare-fun res!697868 () Bool)

(assert (=> b!1048634 (=> (not res!697868) (not e!594859))))

(declare-fun arrayContainsKey!0 (array!66059 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048634 (= res!697868 (arrayContainsKey!0 lt!463236 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1048634 (= lt!463236 (array!66060 (store (arr!31765 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32302 a!3488)))))

(declare-fun res!697870 () Bool)

(assert (=> start!92310 (=> (not res!697870) (not e!594860))))

(assert (=> start!92310 (= res!697870 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32302 a!3488)) (bvslt (size!32302 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92310 e!594860))

(assert (=> start!92310 true))

(declare-fun array_inv!24387 (array!66059) Bool)

(assert (=> start!92310 (array_inv!24387 a!3488)))

(declare-fun b!1048630 () Bool)

(declare-fun res!697867 () Bool)

(assert (=> b!1048630 (=> (not res!697867) (not e!594860))))

(declare-datatypes ((List!22208 0))(
  ( (Nil!22205) (Cons!22204 (h!23413 (_ BitVec 64)) (t!31522 List!22208)) )
))
(declare-fun arrayNoDuplicates!0 (array!66059 (_ BitVec 32) List!22208) Bool)

(assert (=> b!1048630 (= res!697867 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22205))))

(declare-fun b!1048635 () Bool)

(assert (=> b!1048635 (= e!594856 (not true))))

(declare-fun e!594857 () Bool)

(assert (=> b!1048635 e!594857))

(declare-fun res!697872 () Bool)

(assert (=> b!1048635 (=> (not res!697872) (not e!594857))))

(assert (=> b!1048635 (= res!697872 (= (select (store (arr!31765 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463237) k!2747))))

(declare-fun b!1048636 () Bool)

(declare-fun e!594858 () Bool)

(assert (=> b!1048636 (= e!594857 e!594858)))

(declare-fun res!697865 () Bool)

(assert (=> b!1048636 (=> res!697865 e!594858)))

(assert (=> b!1048636 (= res!697865 (bvsle lt!463237 i!1381))))

(declare-fun b!1048637 () Bool)

(assert (=> b!1048637 (= e!594858 (arrayContainsKey!0 a!3488 k!2747 lt!463237))))

(assert (= (and start!92310 res!697870) b!1048630))

(assert (= (and b!1048630 res!697867) b!1048633))

(assert (= (and b!1048633 res!697869) b!1048631))

(assert (= (and b!1048631 res!697871) b!1048634))

(assert (= (and b!1048634 res!697868) b!1048632))

(assert (= (and b!1048632 res!697866) b!1048635))

(assert (= (and b!1048635 res!697872) b!1048636))

(assert (= (and b!1048636 (not res!697865)) b!1048637))

(declare-fun m!969681 () Bool)

(assert (=> b!1048635 m!969681))

(declare-fun m!969683 () Bool)

(assert (=> b!1048635 m!969683))

(declare-fun m!969685 () Bool)

(assert (=> b!1048633 m!969685))

(declare-fun m!969687 () Bool)

(assert (=> b!1048637 m!969687))

(declare-fun m!969689 () Bool)

(assert (=> b!1048634 m!969689))

(assert (=> b!1048634 m!969681))

(declare-fun m!969691 () Bool)

(assert (=> b!1048630 m!969691))

(declare-fun m!969693 () Bool)

(assert (=> b!1048631 m!969693))

(declare-fun m!969695 () Bool)

(assert (=> b!1048632 m!969695))

(declare-fun m!969697 () Bool)

(assert (=> start!92310 m!969697))

(push 1)

