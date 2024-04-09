; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92578 () Bool)

(assert start!92578)

(declare-fun b!1052592 () Bool)

(declare-fun res!701830 () Bool)

(declare-fun e!597695 () Bool)

(assert (=> b!1052592 (=> (not res!701830) (not e!597695))))

(declare-datatypes ((array!66327 0))(
  ( (array!66328 (arr!31899 (Array (_ BitVec 32) (_ BitVec 64))) (size!32436 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66327)

(declare-datatypes ((List!22342 0))(
  ( (Nil!22339) (Cons!22338 (h!23547 (_ BitVec 64)) (t!31656 List!22342)) )
))
(declare-fun arrayNoDuplicates!0 (array!66327 (_ BitVec 32) List!22342) Bool)

(assert (=> b!1052592 (= res!701830 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22339))))

(declare-fun b!1052593 () Bool)

(declare-fun res!701829 () Bool)

(assert (=> b!1052593 (=> (not res!701829) (not e!597695))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052593 (= res!701829 (validKeyInArray!0 k!2747))))

(declare-fun b!1052594 () Bool)

(declare-fun e!597692 () Bool)

(assert (=> b!1052594 (= e!597692 true)))

(declare-fun lt!464864 () (_ BitVec 32))

(assert (=> b!1052594 (not (= (select (arr!31899 a!3488) lt!464864) k!2747))))

(declare-datatypes ((Unit!34479 0))(
  ( (Unit!34480) )
))
(declare-fun lt!464869 () Unit!34479)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66327 (_ BitVec 64) (_ BitVec 32) List!22342) Unit!34479)

(assert (=> b!1052594 (= lt!464869 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k!2747 lt!464864 Nil!22339))))

(declare-fun lt!464866 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!66327 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052594 (arrayContainsKey!0 a!3488 k!2747 lt!464866)))

(declare-fun lt!464865 () Unit!34479)

(declare-fun i!1381 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66327 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34479)

(assert (=> b!1052594 (= lt!464865 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!464866))))

(assert (=> b!1052594 (= lt!464866 (bvadd #b00000000000000000000000000000001 lt!464864))))

(assert (=> b!1052594 (arrayNoDuplicates!0 a!3488 lt!464864 Nil!22339)))

(declare-fun lt!464868 () Unit!34479)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66327 (_ BitVec 32) (_ BitVec 32)) Unit!34479)

(assert (=> b!1052594 (= lt!464868 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464864))))

(declare-fun b!1052595 () Bool)

(declare-fun e!597690 () Bool)

(declare-fun e!597693 () Bool)

(assert (=> b!1052595 (= e!597690 e!597693)))

(declare-fun res!701833 () Bool)

(assert (=> b!1052595 (=> res!701833 e!597693)))

(assert (=> b!1052595 (= res!701833 (or (bvsgt lt!464864 i!1381) (bvsle i!1381 lt!464864)))))

(declare-fun b!1052596 () Bool)

(declare-fun e!597694 () Bool)

(assert (=> b!1052596 (= e!597694 (not e!597692))))

(declare-fun res!701835 () Bool)

(assert (=> b!1052596 (=> res!701835 e!597692)))

(assert (=> b!1052596 (= res!701835 (or (bvsgt lt!464864 i!1381) (bvsle i!1381 lt!464864)))))

(assert (=> b!1052596 e!597690))

(declare-fun res!701834 () Bool)

(assert (=> b!1052596 (=> (not res!701834) (not e!597690))))

(assert (=> b!1052596 (= res!701834 (= (select (store (arr!31899 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464864) k!2747))))

(declare-fun res!701831 () Bool)

(assert (=> start!92578 (=> (not res!701831) (not e!597695))))

(assert (=> start!92578 (= res!701831 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32436 a!3488)) (bvslt (size!32436 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92578 e!597695))

(assert (=> start!92578 true))

(declare-fun array_inv!24521 (array!66327) Bool)

(assert (=> start!92578 (array_inv!24521 a!3488)))

(declare-fun b!1052597 () Bool)

(declare-fun e!597689 () Bool)

(assert (=> b!1052597 (= e!597689 e!597694)))

(declare-fun res!701832 () Bool)

(assert (=> b!1052597 (=> (not res!701832) (not e!597694))))

(assert (=> b!1052597 (= res!701832 (not (= lt!464864 i!1381)))))

(declare-fun lt!464867 () array!66327)

(declare-fun arrayScanForKey!0 (array!66327 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052597 (= lt!464864 (arrayScanForKey!0 lt!464867 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1052598 () Bool)

(assert (=> b!1052598 (= e!597695 e!597689)))

(declare-fun res!701827 () Bool)

(assert (=> b!1052598 (=> (not res!701827) (not e!597689))))

(assert (=> b!1052598 (= res!701827 (arrayContainsKey!0 lt!464867 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1052598 (= lt!464867 (array!66328 (store (arr!31899 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32436 a!3488)))))

(declare-fun b!1052599 () Bool)

(assert (=> b!1052599 (= e!597693 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1052600 () Bool)

(declare-fun res!701828 () Bool)

(assert (=> b!1052600 (=> (not res!701828) (not e!597695))))

(assert (=> b!1052600 (= res!701828 (= (select (arr!31899 a!3488) i!1381) k!2747))))

(assert (= (and start!92578 res!701831) b!1052592))

(assert (= (and b!1052592 res!701830) b!1052593))

(assert (= (and b!1052593 res!701829) b!1052600))

(assert (= (and b!1052600 res!701828) b!1052598))

(assert (= (and b!1052598 res!701827) b!1052597))

(assert (= (and b!1052597 res!701832) b!1052596))

(assert (= (and b!1052596 res!701834) b!1052595))

(assert (= (and b!1052595 (not res!701833)) b!1052599))

(assert (= (and b!1052596 (not res!701835)) b!1052594))

(declare-fun m!973125 () Bool)

(assert (=> b!1052594 m!973125))

(declare-fun m!973127 () Bool)

(assert (=> b!1052594 m!973127))

(declare-fun m!973129 () Bool)

(assert (=> b!1052594 m!973129))

(declare-fun m!973131 () Bool)

(assert (=> b!1052594 m!973131))

(declare-fun m!973133 () Bool)

(assert (=> b!1052594 m!973133))

(declare-fun m!973135 () Bool)

(assert (=> b!1052594 m!973135))

(declare-fun m!973137 () Bool)

(assert (=> b!1052597 m!973137))

(declare-fun m!973139 () Bool)

(assert (=> b!1052600 m!973139))

(declare-fun m!973141 () Bool)

(assert (=> start!92578 m!973141))

(declare-fun m!973143 () Bool)

(assert (=> b!1052596 m!973143))

(declare-fun m!973145 () Bool)

(assert (=> b!1052596 m!973145))

(declare-fun m!973147 () Bool)

(assert (=> b!1052593 m!973147))

(declare-fun m!973149 () Bool)

(assert (=> b!1052598 m!973149))

(assert (=> b!1052598 m!973143))

(declare-fun m!973151 () Bool)

(assert (=> b!1052592 m!973151))

(declare-fun m!973153 () Bool)

(assert (=> b!1052599 m!973153))

(push 1)

