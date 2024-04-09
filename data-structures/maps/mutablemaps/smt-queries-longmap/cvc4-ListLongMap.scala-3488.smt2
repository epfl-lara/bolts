; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48416 () Bool)

(assert start!48416)

(declare-fun res!327278 () Bool)

(declare-fun e!309635 () Bool)

(assert (=> start!48416 (=> (not res!327278) (not e!309635))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48416 (= res!327278 (validMask!0 mask!3216))))

(assert (=> start!48416 e!309635))

(assert (=> start!48416 true))

(declare-datatypes ((array!33680 0))(
  ( (array!33681 (arr!16178 (Array (_ BitVec 32) (_ BitVec 64))) (size!16542 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33680)

(declare-fun array_inv!11952 (array!33680) Bool)

(assert (=> start!48416 (array_inv!11952 a!3154)))

(declare-fun b!531637 () Bool)

(declare-fun res!327277 () Bool)

(declare-fun e!309636 () Bool)

(assert (=> b!531637 (=> (not res!327277) (not e!309636))))

(declare-datatypes ((List!10350 0))(
  ( (Nil!10347) (Cons!10346 (h!11286 (_ BitVec 64)) (t!16586 List!10350)) )
))
(declare-fun arrayNoDuplicates!0 (array!33680 (_ BitVec 32) List!10350) Bool)

(assert (=> b!531637 (= res!327277 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10347))))

(declare-fun b!531638 () Bool)

(declare-fun res!327283 () Bool)

(assert (=> b!531638 (=> (not res!327283) (not e!309635))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!531638 (= res!327283 (validKeyInArray!0 (select (arr!16178 a!3154) j!147)))))

(declare-fun b!531639 () Bool)

(assert (=> b!531639 (= e!309635 e!309636)))

(declare-fun res!327284 () Bool)

(assert (=> b!531639 (=> (not res!327284) (not e!309636))))

(declare-datatypes ((SeekEntryResult!4643 0))(
  ( (MissingZero!4643 (index!20796 (_ BitVec 32))) (Found!4643 (index!20797 (_ BitVec 32))) (Intermediate!4643 (undefined!5455 Bool) (index!20798 (_ BitVec 32)) (x!49796 (_ BitVec 32))) (Undefined!4643) (MissingVacant!4643 (index!20799 (_ BitVec 32))) )
))
(declare-fun lt!245045 () SeekEntryResult!4643)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!531639 (= res!327284 (or (= lt!245045 (MissingZero!4643 i!1153)) (= lt!245045 (MissingVacant!4643 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33680 (_ BitVec 32)) SeekEntryResult!4643)

(assert (=> b!531639 (= lt!245045 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!531640 () Bool)

(declare-fun res!327279 () Bool)

(assert (=> b!531640 (=> (not res!327279) (not e!309636))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33680 (_ BitVec 32)) Bool)

(assert (=> b!531640 (= res!327279 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun b!531641 () Bool)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!531641 (= e!309636 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16542 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16542 a!3154)) (= (select (arr!16178 a!3154) resIndex!32) (select (arr!16178 a!3154) j!147)) (bvsge mask!3216 #b00000000000000000000000000000000) (bvsge index!1177 (bvadd #b00000000000000000000000000000001 mask!3216))))))

(declare-fun b!531642 () Bool)

(declare-fun res!327280 () Bool)

(assert (=> b!531642 (=> (not res!327280) (not e!309635))))

(assert (=> b!531642 (= res!327280 (validKeyInArray!0 k!1998))))

(declare-fun b!531643 () Bool)

(declare-fun res!327281 () Bool)

(assert (=> b!531643 (=> (not res!327281) (not e!309635))))

(declare-fun arrayContainsKey!0 (array!33680 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!531643 (= res!327281 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!531644 () Bool)

(declare-fun res!327282 () Bool)

(assert (=> b!531644 (=> (not res!327282) (not e!309635))))

(assert (=> b!531644 (= res!327282 (and (= (size!16542 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16542 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16542 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48416 res!327278) b!531644))

(assert (= (and b!531644 res!327282) b!531638))

(assert (= (and b!531638 res!327283) b!531642))

(assert (= (and b!531642 res!327280) b!531643))

(assert (= (and b!531643 res!327281) b!531639))

(assert (= (and b!531639 res!327284) b!531640))

(assert (= (and b!531640 res!327279) b!531637))

(assert (= (and b!531637 res!327277) b!531641))

(declare-fun m!512021 () Bool)

(assert (=> b!531639 m!512021))

(declare-fun m!512023 () Bool)

(assert (=> b!531637 m!512023))

(declare-fun m!512025 () Bool)

(assert (=> b!531638 m!512025))

(assert (=> b!531638 m!512025))

(declare-fun m!512027 () Bool)

(assert (=> b!531638 m!512027))

(declare-fun m!512029 () Bool)

(assert (=> b!531641 m!512029))

(assert (=> b!531641 m!512025))

(declare-fun m!512031 () Bool)

(assert (=> start!48416 m!512031))

(declare-fun m!512033 () Bool)

(assert (=> start!48416 m!512033))

(declare-fun m!512035 () Bool)

(assert (=> b!531642 m!512035))

(declare-fun m!512037 () Bool)

(assert (=> b!531640 m!512037))

(declare-fun m!512039 () Bool)

(assert (=> b!531643 m!512039))

(push 1)

(assert (not b!531640))

(assert (not b!531637))

(assert (not b!531642))

(assert (not b!531639))

(assert (not b!531638))

(assert (not start!48416))

(assert (not b!531643))

(check-sat)

(pop 1)

(push 1)

(check-sat)

