; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48206 () Bool)

(assert start!48206)

(declare-fun b!530427 () Bool)

(declare-fun res!326284 () Bool)

(declare-fun e!309028 () Bool)

(assert (=> b!530427 (=> (not res!326284) (not e!309028))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-datatypes ((array!33587 0))(
  ( (array!33588 (arr!16136 (Array (_ BitVec 32) (_ BitVec 64))) (size!16500 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33587)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4601 0))(
  ( (MissingZero!4601 (index!20628 (_ BitVec 32))) (Found!4601 (index!20629 (_ BitVec 32))) (Intermediate!4601 (undefined!5413 Bool) (index!20630 (_ BitVec 32)) (x!49642 (_ BitVec 32))) (Undefined!4601) (MissingVacant!4601 (index!20631 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33587 (_ BitVec 32)) SeekEntryResult!4601)

(assert (=> b!530427 (= res!326284 (not (= (seekEntryOrOpen!0 k!1998 a!3154 mask!3216) (MissingZero!4601 i!1153))))))

(declare-fun b!530428 () Bool)

(declare-fun res!326285 () Bool)

(assert (=> b!530428 (=> (not res!326285) (not e!309028))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530428 (= res!326285 (validKeyInArray!0 (select (arr!16136 a!3154) j!147)))))

(declare-fun b!530429 () Bool)

(declare-fun res!326283 () Bool)

(assert (=> b!530429 (=> (not res!326283) (not e!309028))))

(assert (=> b!530429 (= res!326283 (and (= (size!16500 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16500 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16500 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!530430 () Bool)

(assert (=> b!530430 (= e!309028 (bvslt mask!3216 #b00000000000000000000000000000000))))

(declare-fun b!530431 () Bool)

(declare-fun res!326286 () Bool)

(assert (=> b!530431 (=> (not res!326286) (not e!309028))))

(declare-fun arrayContainsKey!0 (array!33587 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530431 (= res!326286 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!530432 () Bool)

(declare-fun res!326288 () Bool)

(assert (=> b!530432 (=> (not res!326288) (not e!309028))))

(assert (=> b!530432 (= res!326288 (validKeyInArray!0 k!1998))))

(declare-fun res!326287 () Bool)

(assert (=> start!48206 (=> (not res!326287) (not e!309028))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48206 (= res!326287 (validMask!0 mask!3216))))

(assert (=> start!48206 e!309028))

(assert (=> start!48206 true))

(declare-fun array_inv!11910 (array!33587) Bool)

(assert (=> start!48206 (array_inv!11910 a!3154)))

(assert (= (and start!48206 res!326287) b!530429))

(assert (= (and b!530429 res!326283) b!530428))

(assert (= (and b!530428 res!326285) b!530432))

(assert (= (and b!530432 res!326288) b!530431))

(assert (= (and b!530431 res!326286) b!530427))

(assert (= (and b!530427 res!326284) b!530430))

(declare-fun m!511025 () Bool)

(assert (=> b!530431 m!511025))

(declare-fun m!511027 () Bool)

(assert (=> b!530428 m!511027))

(assert (=> b!530428 m!511027))

(declare-fun m!511029 () Bool)

(assert (=> b!530428 m!511029))

(declare-fun m!511031 () Bool)

(assert (=> start!48206 m!511031))

(declare-fun m!511033 () Bool)

(assert (=> start!48206 m!511033))

(declare-fun m!511035 () Bool)

(assert (=> b!530427 m!511035))

(declare-fun m!511037 () Bool)

(assert (=> b!530432 m!511037))

(push 1)

(assert (not start!48206))

(assert (not b!530432))

(assert (not b!530431))

(assert (not b!530427))

(assert (not b!530428))

(check-sat)

(pop 1)

(push 1)

(check-sat)

