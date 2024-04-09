; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92806 () Bool)

(assert start!92806)

(declare-fun b!1053715 () Bool)

(declare-fun e!598547 () Bool)

(declare-datatypes ((array!66447 0))(
  ( (array!66448 (arr!31953 (Array (_ BitVec 32) (_ BitVec 64))) (size!32490 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66447)

(declare-fun lt!465193 () (_ BitVec 32))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66447 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053715 (= e!598547 (arrayContainsKey!0 a!3488 k!2747 lt!465193))))

(declare-fun b!1053716 () Bool)

(declare-fun res!702806 () Bool)

(declare-fun e!598543 () Bool)

(assert (=> b!1053716 (=> (not res!702806) (not e!598543))))

(declare-datatypes ((List!22396 0))(
  ( (Nil!22393) (Cons!22392 (h!23601 (_ BitVec 64)) (t!31710 List!22396)) )
))
(declare-fun arrayNoDuplicates!0 (array!66447 (_ BitVec 32) List!22396) Bool)

(assert (=> b!1053716 (= res!702806 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22393))))

(declare-fun b!1053717 () Bool)

(declare-fun e!598544 () Bool)

(declare-fun e!598542 () Bool)

(assert (=> b!1053717 (= e!598544 e!598542)))

(declare-fun res!702809 () Bool)

(assert (=> b!1053717 (=> (not res!702809) (not e!598542))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1053717 (= res!702809 (not (= lt!465193 i!1381)))))

(declare-fun lt!465192 () array!66447)

(declare-fun arrayScanForKey!0 (array!66447 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053717 (= lt!465193 (arrayScanForKey!0 lt!465192 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1053718 () Bool)

(assert (=> b!1053718 (= e!598542 (not (or (bvsle lt!465193 i!1381) (bvsle #b00000000000000000000000000000000 (size!32490 a!3488)))))))

(declare-fun e!598545 () Bool)

(assert (=> b!1053718 e!598545))

(declare-fun res!702812 () Bool)

(assert (=> b!1053718 (=> (not res!702812) (not e!598545))))

(assert (=> b!1053718 (= res!702812 (= (select (store (arr!31953 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465193) k!2747))))

(declare-fun b!1053719 () Bool)

(declare-fun res!702811 () Bool)

(assert (=> b!1053719 (=> (not res!702811) (not e!598543))))

(assert (=> b!1053719 (= res!702811 (= (select (arr!31953 a!3488) i!1381) k!2747))))

(declare-fun b!1053720 () Bool)

(assert (=> b!1053720 (= e!598545 e!598547)))

(declare-fun res!702807 () Bool)

(assert (=> b!1053720 (=> res!702807 e!598547)))

(assert (=> b!1053720 (= res!702807 (bvsle lt!465193 i!1381))))

(declare-fun res!702813 () Bool)

(assert (=> start!92806 (=> (not res!702813) (not e!598543))))

(assert (=> start!92806 (= res!702813 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32490 a!3488)) (bvslt (size!32490 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92806 e!598543))

(assert (=> start!92806 true))

(declare-fun array_inv!24575 (array!66447) Bool)

(assert (=> start!92806 (array_inv!24575 a!3488)))

(declare-fun b!1053721 () Bool)

(assert (=> b!1053721 (= e!598543 e!598544)))

(declare-fun res!702808 () Bool)

(assert (=> b!1053721 (=> (not res!702808) (not e!598544))))

(assert (=> b!1053721 (= res!702808 (arrayContainsKey!0 lt!465192 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1053721 (= lt!465192 (array!66448 (store (arr!31953 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32490 a!3488)))))

(declare-fun b!1053722 () Bool)

(declare-fun res!702810 () Bool)

(assert (=> b!1053722 (=> (not res!702810) (not e!598543))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053722 (= res!702810 (validKeyInArray!0 k!2747))))

(assert (= (and start!92806 res!702813) b!1053716))

(assert (= (and b!1053716 res!702806) b!1053722))

(assert (= (and b!1053722 res!702810) b!1053719))

(assert (= (and b!1053719 res!702811) b!1053721))

(assert (= (and b!1053721 res!702808) b!1053717))

(assert (= (and b!1053717 res!702809) b!1053718))

(assert (= (and b!1053718 res!702812) b!1053720))

(assert (= (and b!1053720 (not res!702807)) b!1053715))

(declare-fun m!974061 () Bool)

(assert (=> b!1053721 m!974061))

(declare-fun m!974063 () Bool)

(assert (=> b!1053721 m!974063))

(declare-fun m!974065 () Bool)

(assert (=> b!1053716 m!974065))

(declare-fun m!974067 () Bool)

(assert (=> start!92806 m!974067))

(assert (=> b!1053718 m!974063))

(declare-fun m!974069 () Bool)

(assert (=> b!1053718 m!974069))

(declare-fun m!974071 () Bool)

(assert (=> b!1053715 m!974071))

(declare-fun m!974073 () Bool)

(assert (=> b!1053719 m!974073))

(declare-fun m!974075 () Bool)

(assert (=> b!1053722 m!974075))

(declare-fun m!974077 () Bool)

(assert (=> b!1053717 m!974077))

(push 1)

