; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48194 () Bool)

(assert start!48194)

(declare-fun b!530329 () Bool)

(declare-fun res!326185 () Bool)

(declare-fun e!308992 () Bool)

(assert (=> b!530329 (=> (not res!326185) (not e!308992))))

(declare-datatypes ((array!33575 0))(
  ( (array!33576 (arr!16130 (Array (_ BitVec 32) (_ BitVec 64))) (size!16494 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33575)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530329 (= res!326185 (validKeyInArray!0 (select (arr!16130 a!3154) j!147)))))

(declare-fun b!530330 () Bool)

(declare-fun res!326187 () Bool)

(assert (=> b!530330 (=> (not res!326187) (not e!308992))))

(declare-fun k!1998 () (_ BitVec 64))

(assert (=> b!530330 (= res!326187 (validKeyInArray!0 k!1998))))

(declare-fun b!530331 () Bool)

(declare-fun res!326188 () Bool)

(assert (=> b!530331 (=> (not res!326188) (not e!308992))))

(declare-fun arrayContainsKey!0 (array!33575 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530331 (= res!326188 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!530332 () Bool)

(declare-fun mask!3216 () (_ BitVec 32))

(assert (=> b!530332 (= e!308992 (bvslt mask!3216 #b00000000000000000000000000000000))))

(declare-fun res!326189 () Bool)

(assert (=> start!48194 (=> (not res!326189) (not e!308992))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48194 (= res!326189 (validMask!0 mask!3216))))

(assert (=> start!48194 e!308992))

(assert (=> start!48194 true))

(declare-fun array_inv!11904 (array!33575) Bool)

(assert (=> start!48194 (array_inv!11904 a!3154)))

(declare-fun b!530333 () Bool)

(declare-fun res!326186 () Bool)

(assert (=> b!530333 (=> (not res!326186) (not e!308992))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530333 (= res!326186 (and (= (size!16494 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16494 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16494 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48194 res!326189) b!530333))

(assert (= (and b!530333 res!326186) b!530329))

(assert (= (and b!530329 res!326185) b!530330))

(assert (= (and b!530330 res!326187) b!530331))

(assert (= (and b!530331 res!326188) b!530332))

(declare-fun m!510943 () Bool)

(assert (=> b!530329 m!510943))

(assert (=> b!530329 m!510943))

(declare-fun m!510945 () Bool)

(assert (=> b!530329 m!510945))

(declare-fun m!510947 () Bool)

(assert (=> b!530330 m!510947))

(declare-fun m!510949 () Bool)

(assert (=> b!530331 m!510949))

(declare-fun m!510951 () Bool)

(assert (=> start!48194 m!510951))

(declare-fun m!510953 () Bool)

(assert (=> start!48194 m!510953))

(push 1)

(assert (not b!530330))

(assert (not b!530331))

(assert (not b!530329))

(assert (not start!48194))

(check-sat)

(pop 1)

(push 1)

(check-sat)

