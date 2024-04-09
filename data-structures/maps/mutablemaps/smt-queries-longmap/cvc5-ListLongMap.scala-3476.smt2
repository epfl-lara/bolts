; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48214 () Bool)

(assert start!48214)

(declare-fun b!530488 () Bool)

(declare-fun res!326348 () Bool)

(declare-fun e!309052 () Bool)

(assert (=> b!530488 (=> (not res!326348) (not e!309052))))

(declare-datatypes ((array!33595 0))(
  ( (array!33596 (arr!16140 (Array (_ BitVec 32) (_ BitVec 64))) (size!16504 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33595)

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33595 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530488 (= res!326348 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!530489 () Bool)

(declare-fun res!326345 () Bool)

(assert (=> b!530489 (=> (not res!326345) (not e!309052))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530489 (= res!326345 (validKeyInArray!0 (select (arr!16140 a!3154) j!147)))))

(declare-fun res!326344 () Bool)

(assert (=> start!48214 (=> (not res!326344) (not e!309052))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48214 (= res!326344 (validMask!0 mask!3216))))

(assert (=> start!48214 e!309052))

(assert (=> start!48214 true))

(declare-fun array_inv!11914 (array!33595) Bool)

(assert (=> start!48214 (array_inv!11914 a!3154)))

(declare-fun b!530490 () Bool)

(assert (=> b!530490 (= e!309052 false)))

(declare-datatypes ((SeekEntryResult!4605 0))(
  ( (MissingZero!4605 (index!20644 (_ BitVec 32))) (Found!4605 (index!20645 (_ BitVec 32))) (Intermediate!4605 (undefined!5417 Bool) (index!20646 (_ BitVec 32)) (x!49662 (_ BitVec 32))) (Undefined!4605) (MissingVacant!4605 (index!20647 (_ BitVec 32))) )
))
(declare-fun lt!244739 () SeekEntryResult!4605)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33595 (_ BitVec 32)) SeekEntryResult!4605)

(assert (=> b!530490 (= lt!244739 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!530491 () Bool)

(declare-fun res!326346 () Bool)

(assert (=> b!530491 (=> (not res!326346) (not e!309052))))

(assert (=> b!530491 (= res!326346 (validKeyInArray!0 k!1998))))

(declare-fun b!530492 () Bool)

(declare-fun res!326347 () Bool)

(assert (=> b!530492 (=> (not res!326347) (not e!309052))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530492 (= res!326347 (and (= (size!16504 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16504 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16504 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48214 res!326344) b!530492))

(assert (= (and b!530492 res!326347) b!530489))

(assert (= (and b!530489 res!326345) b!530491))

(assert (= (and b!530491 res!326346) b!530488))

(assert (= (and b!530488 res!326348) b!530490))

(declare-fun m!511081 () Bool)

(assert (=> b!530490 m!511081))

(declare-fun m!511083 () Bool)

(assert (=> start!48214 m!511083))

(declare-fun m!511085 () Bool)

(assert (=> start!48214 m!511085))

(declare-fun m!511087 () Bool)

(assert (=> b!530491 m!511087))

(declare-fun m!511089 () Bool)

(assert (=> b!530488 m!511089))

(declare-fun m!511091 () Bool)

(assert (=> b!530489 m!511091))

(assert (=> b!530489 m!511091))

(declare-fun m!511093 () Bool)

(assert (=> b!530489 m!511093))

(push 1)

(assert (not b!530491))

(assert (not start!48214))

(assert (not b!530490))

(assert (not b!530488))

(assert (not b!530489))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

