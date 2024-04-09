; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92346 () Bool)

(assert start!92346)

(declare-fun b!1049100 () Bool)

(declare-fun e!595218 () Bool)

(declare-fun e!595223 () Bool)

(assert (=> b!1049100 (= e!595218 e!595223)))

(declare-fun res!698342 () Bool)

(assert (=> b!1049100 (=> (not res!698342) (not e!595223))))

(declare-datatypes ((array!66095 0))(
  ( (array!66096 (arr!31783 (Array (_ BitVec 32) (_ BitVec 64))) (size!32320 (_ BitVec 32))) )
))
(declare-fun lt!463383 () array!66095)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66095 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049100 (= res!698342 (arrayContainsKey!0 lt!463383 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66095)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1049100 (= lt!463383 (array!66096 (store (arr!31783 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32320 a!3488)))))

(declare-fun b!1049101 () Bool)

(declare-fun res!698340 () Bool)

(assert (=> b!1049101 (=> (not res!698340) (not e!595218))))

(declare-datatypes ((List!22226 0))(
  ( (Nil!22223) (Cons!22222 (h!23431 (_ BitVec 64)) (t!31540 List!22226)) )
))
(declare-fun arrayNoDuplicates!0 (array!66095 (_ BitVec 32) List!22226) Bool)

(assert (=> b!1049101 (= res!698340 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22223))))

(declare-fun res!698341 () Bool)

(assert (=> start!92346 (=> (not res!698341) (not e!595218))))

(assert (=> start!92346 (= res!698341 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32320 a!3488)) (bvslt (size!32320 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92346 e!595218))

(assert (=> start!92346 true))

(declare-fun array_inv!24405 (array!66095) Bool)

(assert (=> start!92346 (array_inv!24405 a!3488)))

(declare-fun b!1049102 () Bool)

(declare-fun res!698335 () Bool)

(assert (=> b!1049102 (=> (not res!698335) (not e!595218))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049102 (= res!698335 (validKeyInArray!0 k!2747))))

(declare-fun b!1049103 () Bool)

(declare-fun e!595221 () Bool)

(declare-fun e!595217 () Bool)

(assert (=> b!1049103 (= e!595221 e!595217)))

(declare-fun res!698337 () Bool)

(assert (=> b!1049103 (=> res!698337 e!595217)))

(declare-fun lt!463382 () (_ BitVec 32))

(assert (=> b!1049103 (= res!698337 (bvsle lt!463382 i!1381))))

(declare-fun b!1049104 () Bool)

(declare-fun res!698343 () Bool)

(assert (=> b!1049104 (=> (not res!698343) (not e!595218))))

(assert (=> b!1049104 (= res!698343 (= (select (arr!31783 a!3488) i!1381) k!2747))))

(declare-fun b!1049105 () Bool)

(declare-fun e!595219 () Bool)

(declare-fun e!595220 () Bool)

(assert (=> b!1049105 (= e!595219 (not e!595220))))

(declare-fun res!698336 () Bool)

(assert (=> b!1049105 (=> res!698336 e!595220)))

(assert (=> b!1049105 (= res!698336 (bvsle lt!463382 i!1381))))

(assert (=> b!1049105 e!595221))

(declare-fun res!698339 () Bool)

(assert (=> b!1049105 (=> (not res!698339) (not e!595221))))

(assert (=> b!1049105 (= res!698339 (= (select (store (arr!31783 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463382) k!2747))))

(declare-fun b!1049106 () Bool)

(assert (=> b!1049106 (= e!595223 e!595219)))

(declare-fun res!698338 () Bool)

(assert (=> b!1049106 (=> (not res!698338) (not e!595219))))

(assert (=> b!1049106 (= res!698338 (not (= lt!463382 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66095 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049106 (= lt!463382 (arrayScanForKey!0 lt!463383 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1049107 () Bool)

(assert (=> b!1049107 (= e!595220 true)))

(assert (=> b!1049107 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22223)))

(declare-datatypes ((Unit!34295 0))(
  ( (Unit!34296) )
))
(declare-fun lt!463384 () Unit!34295)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66095 (_ BitVec 32) (_ BitVec 32)) Unit!34295)

(assert (=> b!1049107 (= lt!463384 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1049108 () Bool)

(assert (=> b!1049108 (= e!595217 (arrayContainsKey!0 a!3488 k!2747 lt!463382))))

(assert (= (and start!92346 res!698341) b!1049101))

(assert (= (and b!1049101 res!698340) b!1049102))

(assert (= (and b!1049102 res!698335) b!1049104))

(assert (= (and b!1049104 res!698343) b!1049100))

(assert (= (and b!1049100 res!698342) b!1049106))

(assert (= (and b!1049106 res!698338) b!1049105))

(assert (= (and b!1049105 res!698339) b!1049103))

(assert (= (and b!1049103 (not res!698337)) b!1049108))

(assert (= (and b!1049105 (not res!698336)) b!1049107))

(declare-fun m!970053 () Bool)

(assert (=> b!1049102 m!970053))

(declare-fun m!970055 () Bool)

(assert (=> b!1049107 m!970055))

(declare-fun m!970057 () Bool)

(assert (=> b!1049107 m!970057))

(declare-fun m!970059 () Bool)

(assert (=> b!1049106 m!970059))

(declare-fun m!970061 () Bool)

(assert (=> b!1049108 m!970061))

(declare-fun m!970063 () Bool)

(assert (=> b!1049100 m!970063))

(declare-fun m!970065 () Bool)

(assert (=> b!1049100 m!970065))

(declare-fun m!970067 () Bool)

(assert (=> b!1049104 m!970067))

(assert (=> b!1049105 m!970065))

(declare-fun m!970069 () Bool)

(assert (=> b!1049105 m!970069))

(declare-fun m!970071 () Bool)

(assert (=> b!1049101 m!970071))

(declare-fun m!970073 () Bool)

(assert (=> start!92346 m!970073))

(push 1)

