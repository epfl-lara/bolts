; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92602 () Bool)

(assert start!92602)

(declare-fun b!1052838 () Bool)

(declare-fun e!597863 () Bool)

(declare-fun e!597864 () Bool)

(assert (=> b!1052838 (= e!597863 e!597864)))

(declare-fun res!702077 () Bool)

(assert (=> b!1052838 (=> (not res!702077) (not e!597864))))

(declare-datatypes ((array!66351 0))(
  ( (array!66352 (arr!31911 (Array (_ BitVec 32) (_ BitVec 64))) (size!32448 (_ BitVec 32))) )
))
(declare-fun lt!464976 () array!66351)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66351 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052838 (= res!702077 (arrayContainsKey!0 lt!464976 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66351)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052838 (= lt!464976 (array!66352 (store (arr!31911 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32448 a!3488)))))

(declare-fun b!1052839 () Bool)

(declare-fun res!702076 () Bool)

(assert (=> b!1052839 (=> (not res!702076) (not e!597863))))

(assert (=> b!1052839 (= res!702076 (= (select (arr!31911 a!3488) i!1381) k!2747))))

(declare-fun b!1052840 () Bool)

(declare-fun e!597866 () Bool)

(assert (=> b!1052840 (= e!597866 (not true))))

(declare-fun lt!464977 () (_ BitVec 32))

(assert (=> b!1052840 (= (select (store (arr!31911 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464977) k!2747)))

(declare-fun b!1052841 () Bool)

(declare-fun res!702075 () Bool)

(assert (=> b!1052841 (=> (not res!702075) (not e!597863))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052841 (= res!702075 (validKeyInArray!0 k!2747))))

(declare-fun b!1052842 () Bool)

(assert (=> b!1052842 (= e!597864 e!597866)))

(declare-fun res!702073 () Bool)

(assert (=> b!1052842 (=> (not res!702073) (not e!597866))))

(assert (=> b!1052842 (= res!702073 (not (= lt!464977 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66351 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052842 (= lt!464977 (arrayScanForKey!0 lt!464976 k!2747 #b00000000000000000000000000000000))))

(declare-fun res!702078 () Bool)

(assert (=> start!92602 (=> (not res!702078) (not e!597863))))

(assert (=> start!92602 (= res!702078 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32448 a!3488)) (bvslt (size!32448 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92602 e!597863))

(assert (=> start!92602 true))

(declare-fun array_inv!24533 (array!66351) Bool)

(assert (=> start!92602 (array_inv!24533 a!3488)))

(declare-fun b!1052843 () Bool)

(declare-fun res!702074 () Bool)

(assert (=> b!1052843 (=> (not res!702074) (not e!597863))))

(declare-datatypes ((List!22354 0))(
  ( (Nil!22351) (Cons!22350 (h!23559 (_ BitVec 64)) (t!31668 List!22354)) )
))
(declare-fun arrayNoDuplicates!0 (array!66351 (_ BitVec 32) List!22354) Bool)

(assert (=> b!1052843 (= res!702074 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22351))))

(assert (= (and start!92602 res!702078) b!1052843))

(assert (= (and b!1052843 res!702074) b!1052841))

(assert (= (and b!1052841 res!702075) b!1052839))

(assert (= (and b!1052839 res!702076) b!1052838))

(assert (= (and b!1052838 res!702077) b!1052842))

(assert (= (and b!1052842 res!702073) b!1052840))

(declare-fun m!973373 () Bool)

(assert (=> b!1052839 m!973373))

(declare-fun m!973375 () Bool)

(assert (=> b!1052841 m!973375))

(declare-fun m!973377 () Bool)

(assert (=> b!1052842 m!973377))

(declare-fun m!973379 () Bool)

(assert (=> b!1052838 m!973379))

(declare-fun m!973381 () Bool)

(assert (=> b!1052838 m!973381))

(declare-fun m!973383 () Bool)

(assert (=> start!92602 m!973383))

(assert (=> b!1052840 m!973381))

(declare-fun m!973385 () Bool)

(assert (=> b!1052840 m!973385))

(declare-fun m!973387 () Bool)

(assert (=> b!1052843 m!973387))

(push 1)

(assert (not b!1052841))

(assert (not b!1052838))

