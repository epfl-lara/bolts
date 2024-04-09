; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48236 () Bool)

(assert start!48236)

(declare-fun b!530653 () Bool)

(declare-fun res!326510 () Bool)

(declare-fun e!309117 () Bool)

(assert (=> b!530653 (=> (not res!326510) (not e!309117))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33617 0))(
  ( (array!33618 (arr!16151 (Array (_ BitVec 32) (_ BitVec 64))) (size!16515 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33617)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530653 (= res!326510 (and (= (size!16515 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16515 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16515 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!326512 () Bool)

(assert (=> start!48236 (=> (not res!326512) (not e!309117))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48236 (= res!326512 (validMask!0 mask!3216))))

(assert (=> start!48236 e!309117))

(assert (=> start!48236 true))

(declare-fun array_inv!11925 (array!33617) Bool)

(assert (=> start!48236 (array_inv!11925 a!3154)))

(declare-fun b!530654 () Bool)

(assert (=> b!530654 (= e!309117 false)))

(declare-fun k!1998 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4616 0))(
  ( (MissingZero!4616 (index!20688 (_ BitVec 32))) (Found!4616 (index!20689 (_ BitVec 32))) (Intermediate!4616 (undefined!5428 Bool) (index!20690 (_ BitVec 32)) (x!49697 (_ BitVec 32))) (Undefined!4616) (MissingVacant!4616 (index!20691 (_ BitVec 32))) )
))
(declare-fun lt!244772 () SeekEntryResult!4616)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33617 (_ BitVec 32)) SeekEntryResult!4616)

(assert (=> b!530654 (= lt!244772 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!530655 () Bool)

(declare-fun res!326511 () Bool)

(assert (=> b!530655 (=> (not res!326511) (not e!309117))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530655 (= res!326511 (validKeyInArray!0 (select (arr!16151 a!3154) j!147)))))

(declare-fun b!530656 () Bool)

(declare-fun res!326509 () Bool)

(assert (=> b!530656 (=> (not res!326509) (not e!309117))))

(assert (=> b!530656 (= res!326509 (validKeyInArray!0 k!1998))))

(declare-fun b!530657 () Bool)

(declare-fun res!326513 () Bool)

(assert (=> b!530657 (=> (not res!326513) (not e!309117))))

(declare-fun arrayContainsKey!0 (array!33617 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530657 (= res!326513 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!48236 res!326512) b!530653))

(assert (= (and b!530653 res!326510) b!530655))

(assert (= (and b!530655 res!326511) b!530656))

(assert (= (and b!530656 res!326509) b!530657))

(assert (= (and b!530657 res!326513) b!530654))

(declare-fun m!511235 () Bool)

(assert (=> b!530654 m!511235))

(declare-fun m!511237 () Bool)

(assert (=> start!48236 m!511237))

(declare-fun m!511239 () Bool)

(assert (=> start!48236 m!511239))

(declare-fun m!511241 () Bool)

(assert (=> b!530655 m!511241))

(assert (=> b!530655 m!511241))

(declare-fun m!511243 () Bool)

(assert (=> b!530655 m!511243))

(declare-fun m!511245 () Bool)

(assert (=> b!530656 m!511245))

(declare-fun m!511247 () Bool)

(assert (=> b!530657 m!511247))

(push 1)

(assert (not b!530654))

(assert (not b!530657))

(assert (not b!530655))

(assert (not b!530656))

