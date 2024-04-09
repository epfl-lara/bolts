; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48202 () Bool)

(assert start!48202)

(declare-fun b!530391 () Bool)

(declare-fun res!326247 () Bool)

(declare-fun e!309015 () Bool)

(assert (=> b!530391 (=> (not res!326247) (not e!309015))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530391 (= res!326247 (validKeyInArray!0 k!1998))))

(declare-fun b!530392 () Bool)

(declare-fun res!326249 () Bool)

(assert (=> b!530392 (=> (not res!326249) (not e!309015))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33583 0))(
  ( (array!33584 (arr!16134 (Array (_ BitVec 32) (_ BitVec 64))) (size!16498 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33583)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530392 (= res!326249 (and (= (size!16498 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16498 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16498 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!530393 () Bool)

(assert (=> b!530393 (= e!309015 (bvslt mask!3216 #b00000000000000000000000000000000))))

(declare-fun b!530394 () Bool)

(declare-fun res!326252 () Bool)

(assert (=> b!530394 (=> (not res!326252) (not e!309015))))

(declare-datatypes ((SeekEntryResult!4599 0))(
  ( (MissingZero!4599 (index!20620 (_ BitVec 32))) (Found!4599 (index!20621 (_ BitVec 32))) (Intermediate!4599 (undefined!5411 Bool) (index!20622 (_ BitVec 32)) (x!49640 (_ BitVec 32))) (Undefined!4599) (MissingVacant!4599 (index!20623 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33583 (_ BitVec 32)) SeekEntryResult!4599)

(assert (=> b!530394 (= res!326252 (not (= (seekEntryOrOpen!0 k!1998 a!3154 mask!3216) (MissingZero!4599 i!1153))))))

(declare-fun b!530395 () Bool)

(declare-fun res!326248 () Bool)

(assert (=> b!530395 (=> (not res!326248) (not e!309015))))

(assert (=> b!530395 (= res!326248 (validKeyInArray!0 (select (arr!16134 a!3154) j!147)))))

(declare-fun b!530396 () Bool)

(declare-fun res!326250 () Bool)

(assert (=> b!530396 (=> (not res!326250) (not e!309015))))

(declare-fun arrayContainsKey!0 (array!33583 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530396 (= res!326250 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun res!326251 () Bool)

(assert (=> start!48202 (=> (not res!326251) (not e!309015))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48202 (= res!326251 (validMask!0 mask!3216))))

(assert (=> start!48202 e!309015))

(assert (=> start!48202 true))

(declare-fun array_inv!11908 (array!33583) Bool)

(assert (=> start!48202 (array_inv!11908 a!3154)))

(assert (= (and start!48202 res!326251) b!530392))

(assert (= (and b!530392 res!326249) b!530395))

(assert (= (and b!530395 res!326248) b!530391))

(assert (= (and b!530391 res!326247) b!530396))

(assert (= (and b!530396 res!326250) b!530394))

(assert (= (and b!530394 res!326252) b!530393))

(declare-fun m!510997 () Bool)

(assert (=> b!530394 m!510997))

(declare-fun m!510999 () Bool)

(assert (=> b!530395 m!510999))

(assert (=> b!530395 m!510999))

(declare-fun m!511001 () Bool)

(assert (=> b!530395 m!511001))

(declare-fun m!511003 () Bool)

(assert (=> b!530396 m!511003))

(declare-fun m!511005 () Bool)

(assert (=> b!530391 m!511005))

(declare-fun m!511007 () Bool)

(assert (=> start!48202 m!511007))

(declare-fun m!511009 () Bool)

(assert (=> start!48202 m!511009))

(push 1)

(assert (not start!48202))

(assert (not b!530395))

(assert (not b!530396))

(assert (not b!530394))

(assert (not b!530391))

(check-sat)

(pop 1)

