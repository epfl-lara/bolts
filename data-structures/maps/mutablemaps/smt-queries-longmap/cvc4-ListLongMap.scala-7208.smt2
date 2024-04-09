; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92350 () Bool)

(assert start!92350)

(declare-fun b!1049154 () Bool)

(declare-fun res!698393 () Bool)

(declare-fun e!595261 () Bool)

(assert (=> b!1049154 (=> (not res!698393) (not e!595261))))

(declare-datatypes ((array!66099 0))(
  ( (array!66100 (arr!31785 (Array (_ BitVec 32) (_ BitVec 64))) (size!32322 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66099)

(declare-datatypes ((List!22228 0))(
  ( (Nil!22225) (Cons!22224 (h!23433 (_ BitVec 64)) (t!31542 List!22228)) )
))
(declare-fun arrayNoDuplicates!0 (array!66099 (_ BitVec 32) List!22228) Bool)

(assert (=> b!1049154 (= res!698393 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22225))))

(declare-fun b!1049155 () Bool)

(declare-fun lt!463401 () (_ BitVec 32))

(declare-fun e!595259 () Bool)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66099 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049155 (= e!595259 (arrayContainsKey!0 a!3488 k!2747 lt!463401))))

(declare-fun b!1049156 () Bool)

(declare-fun e!595263 () Bool)

(assert (=> b!1049156 (= e!595263 true)))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1049156 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22225)))

(declare-datatypes ((Unit!34299 0))(
  ( (Unit!34300) )
))
(declare-fun lt!463402 () Unit!34299)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66099 (_ BitVec 32) (_ BitVec 32)) Unit!34299)

(assert (=> b!1049156 (= lt!463402 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1049157 () Bool)

(declare-fun res!698397 () Bool)

(assert (=> b!1049157 (=> (not res!698397) (not e!595261))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049157 (= res!698397 (validKeyInArray!0 k!2747))))

(declare-fun b!1049158 () Bool)

(declare-fun e!595262 () Bool)

(assert (=> b!1049158 (= e!595262 e!595259)))

(declare-fun res!698390 () Bool)

(assert (=> b!1049158 (=> res!698390 e!595259)))

(assert (=> b!1049158 (= res!698390 (bvsle lt!463401 i!1381))))

(declare-fun res!698396 () Bool)

(assert (=> start!92350 (=> (not res!698396) (not e!595261))))

(assert (=> start!92350 (= res!698396 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32322 a!3488)) (bvslt (size!32322 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92350 e!595261))

(assert (=> start!92350 true))

(declare-fun array_inv!24407 (array!66099) Bool)

(assert (=> start!92350 (array_inv!24407 a!3488)))

(declare-fun b!1049159 () Bool)

(declare-fun e!595264 () Bool)

(declare-fun e!595265 () Bool)

(assert (=> b!1049159 (= e!595264 e!595265)))

(declare-fun res!698392 () Bool)

(assert (=> b!1049159 (=> (not res!698392) (not e!595265))))

(assert (=> b!1049159 (= res!698392 (not (= lt!463401 i!1381)))))

(declare-fun lt!463400 () array!66099)

(declare-fun arrayScanForKey!0 (array!66099 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049159 (= lt!463401 (arrayScanForKey!0 lt!463400 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1049160 () Bool)

(declare-fun res!698394 () Bool)

(assert (=> b!1049160 (=> (not res!698394) (not e!595261))))

(assert (=> b!1049160 (= res!698394 (= (select (arr!31785 a!3488) i!1381) k!2747))))

(declare-fun b!1049161 () Bool)

(assert (=> b!1049161 (= e!595261 e!595264)))

(declare-fun res!698391 () Bool)

(assert (=> b!1049161 (=> (not res!698391) (not e!595264))))

(assert (=> b!1049161 (= res!698391 (arrayContainsKey!0 lt!463400 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1049161 (= lt!463400 (array!66100 (store (arr!31785 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32322 a!3488)))))

(declare-fun b!1049162 () Bool)

(assert (=> b!1049162 (= e!595265 (not e!595263))))

(declare-fun res!698389 () Bool)

(assert (=> b!1049162 (=> res!698389 e!595263)))

(assert (=> b!1049162 (= res!698389 (bvsle lt!463401 i!1381))))

(assert (=> b!1049162 e!595262))

(declare-fun res!698395 () Bool)

(assert (=> b!1049162 (=> (not res!698395) (not e!595262))))

(assert (=> b!1049162 (= res!698395 (= (select (store (arr!31785 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463401) k!2747))))

(assert (= (and start!92350 res!698396) b!1049154))

(assert (= (and b!1049154 res!698393) b!1049157))

(assert (= (and b!1049157 res!698397) b!1049160))

(assert (= (and b!1049160 res!698394) b!1049161))

(assert (= (and b!1049161 res!698391) b!1049159))

(assert (= (and b!1049159 res!698392) b!1049162))

(assert (= (and b!1049162 res!698395) b!1049158))

(assert (= (and b!1049158 (not res!698390)) b!1049155))

(assert (= (and b!1049162 (not res!698389)) b!1049156))

(declare-fun m!970097 () Bool)

(assert (=> start!92350 m!970097))

(declare-fun m!970099 () Bool)

(assert (=> b!1049155 m!970099))

(declare-fun m!970101 () Bool)

(assert (=> b!1049161 m!970101))

(declare-fun m!970103 () Bool)

(assert (=> b!1049161 m!970103))

(declare-fun m!970105 () Bool)

(assert (=> b!1049154 m!970105))

(declare-fun m!970107 () Bool)

(assert (=> b!1049160 m!970107))

(declare-fun m!970109 () Bool)

(assert (=> b!1049157 m!970109))

(declare-fun m!970111 () Bool)

(assert (=> b!1049156 m!970111))

(declare-fun m!970113 () Bool)

(assert (=> b!1049156 m!970113))

(declare-fun m!970115 () Bool)

(assert (=> b!1049159 m!970115))

(assert (=> b!1049162 m!970103))

(declare-fun m!970117 () Bool)

(assert (=> b!1049162 m!970117))

(push 1)

