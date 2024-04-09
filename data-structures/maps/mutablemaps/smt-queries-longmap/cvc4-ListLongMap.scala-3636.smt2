; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50214 () Bool)

(assert start!50214)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun e!317221 () Bool)

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34621 0))(
  ( (array!34622 (arr!16622 (Array (_ BitVec 32) (_ BitVec 64))) (size!16986 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34621)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun b!549213 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549213 (= e!317221 (not (validKeyInArray!0 (select (store (arr!16622 a!3118) i!1132 k!1914) j!142))))))

(declare-fun b!549214 () Bool)

(declare-fun res!342510 () Bool)

(declare-fun e!317223 () Bool)

(assert (=> b!549214 (=> (not res!342510) (not e!317223))))

(assert (=> b!549214 (= res!342510 (validKeyInArray!0 (select (arr!16622 a!3118) j!142)))))

(declare-fun b!549215 () Bool)

(declare-fun e!317224 () Bool)

(assert (=> b!549215 (= e!317224 e!317221)))

(declare-fun res!342512 () Bool)

(assert (=> b!549215 (=> (not res!342512) (not e!317221))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!250075 () (_ BitVec 32))

(assert (=> b!549215 (= res!342512 (and (bvsge mask!3119 #b00000000000000000000000000000000) (bvsge lt!250075 #b00000000000000000000000000000000) (bvslt lt!250075 (bvadd #b00000000000000000000000000000001 mask!3119))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549215 (= lt!250075 (toIndex!0 (select (store (arr!16622 a!3118) i!1132 k!1914) j!142) mask!3119))))

(declare-fun res!342508 () Bool)

(assert (=> start!50214 (=> (not res!342508) (not e!317223))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50214 (= res!342508 (validMask!0 mask!3119))))

(assert (=> start!50214 e!317223))

(assert (=> start!50214 true))

(declare-fun array_inv!12396 (array!34621) Bool)

(assert (=> start!50214 (array_inv!12396 a!3118)))

(declare-fun b!549216 () Bool)

(declare-fun res!342507 () Bool)

(assert (=> b!549216 (=> (not res!342507) (not e!317223))))

(assert (=> b!549216 (= res!342507 (validKeyInArray!0 k!1914))))

(declare-fun b!549217 () Bool)

(declare-fun res!342513 () Bool)

(assert (=> b!549217 (=> (not res!342513) (not e!317223))))

(assert (=> b!549217 (= res!342513 (and (= (size!16986 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16986 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16986 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!549218 () Bool)

(declare-fun res!342514 () Bool)

(assert (=> b!549218 (=> (not res!342514) (not e!317224))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34621 (_ BitVec 32)) Bool)

(assert (=> b!549218 (= res!342514 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!549219 () Bool)

(declare-fun res!342511 () Bool)

(assert (=> b!549219 (=> (not res!342511) (not e!317223))))

(declare-fun arrayContainsKey!0 (array!34621 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549219 (= res!342511 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!549220 () Bool)

(assert (=> b!549220 (= e!317223 e!317224)))

(declare-fun res!342515 () Bool)

(assert (=> b!549220 (=> (not res!342515) (not e!317224))))

(declare-datatypes ((SeekEntryResult!5078 0))(
  ( (MissingZero!5078 (index!22539 (_ BitVec 32))) (Found!5078 (index!22540 (_ BitVec 32))) (Intermediate!5078 (undefined!5890 Bool) (index!22541 (_ BitVec 32)) (x!51499 (_ BitVec 32))) (Undefined!5078) (MissingVacant!5078 (index!22542 (_ BitVec 32))) )
))
(declare-fun lt!250076 () SeekEntryResult!5078)

(assert (=> b!549220 (= res!342515 (or (= lt!250076 (MissingZero!5078 i!1132)) (= lt!250076 (MissingVacant!5078 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34621 (_ BitVec 32)) SeekEntryResult!5078)

(assert (=> b!549220 (= lt!250076 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!549221 () Bool)

(declare-fun res!342509 () Bool)

(assert (=> b!549221 (=> (not res!342509) (not e!317224))))

(declare-datatypes ((List!10755 0))(
  ( (Nil!10752) (Cons!10751 (h!11724 (_ BitVec 64)) (t!16991 List!10755)) )
))
(declare-fun arrayNoDuplicates!0 (array!34621 (_ BitVec 32) List!10755) Bool)

(assert (=> b!549221 (= res!342509 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10752))))

(assert (= (and start!50214 res!342508) b!549217))

(assert (= (and b!549217 res!342513) b!549214))

(assert (= (and b!549214 res!342510) b!549216))

(assert (= (and b!549216 res!342507) b!549219))

(assert (= (and b!549219 res!342511) b!549220))

(assert (= (and b!549220 res!342515) b!549218))

(assert (= (and b!549218 res!342514) b!549221))

(assert (= (and b!549221 res!342509) b!549215))

(assert (= (and b!549215 res!342512) b!549213))

(declare-fun m!526097 () Bool)

(assert (=> b!549214 m!526097))

(assert (=> b!549214 m!526097))

(declare-fun m!526099 () Bool)

(assert (=> b!549214 m!526099))

(declare-fun m!526101 () Bool)

(assert (=> b!549219 m!526101))

(declare-fun m!526103 () Bool)

(assert (=> b!549213 m!526103))

(declare-fun m!526105 () Bool)

(assert (=> b!549213 m!526105))

(assert (=> b!549213 m!526105))

(declare-fun m!526107 () Bool)

(assert (=> b!549213 m!526107))

(assert (=> b!549215 m!526103))

(assert (=> b!549215 m!526105))

(assert (=> b!549215 m!526105))

(declare-fun m!526109 () Bool)

(assert (=> b!549215 m!526109))

(declare-fun m!526111 () Bool)

(assert (=> b!549221 m!526111))

(declare-fun m!526113 () Bool)

(assert (=> start!50214 m!526113))

(declare-fun m!526115 () Bool)

(assert (=> start!50214 m!526115))

(declare-fun m!526117 () Bool)

(assert (=> b!549218 m!526117))

(declare-fun m!526119 () Bool)

(assert (=> b!549220 m!526119))

(declare-fun m!526121 () Bool)

(assert (=> b!549216 m!526121))

(push 1)

(assert (not start!50214))

(assert (not b!549218))

(assert (not b!549219))

(assert (not b!549214))

(assert (not b!549220))

