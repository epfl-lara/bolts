; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48196 () Bool)

(assert start!48196)

(declare-fun b!530344 () Bool)

(declare-fun res!326203 () Bool)

(declare-fun e!308997 () Bool)

(assert (=> b!530344 (=> (not res!326203) (not e!308997))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33577 0))(
  ( (array!33578 (arr!16131 (Array (_ BitVec 32) (_ BitVec 64))) (size!16495 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33577)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530344 (= res!326203 (and (= (size!16495 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16495 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16495 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!530345 () Bool)

(declare-fun res!326202 () Bool)

(assert (=> b!530345 (=> (not res!326202) (not e!308997))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33577 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530345 (= res!326202 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!530346 () Bool)

(assert (=> b!530346 (= e!308997 false)))

(declare-datatypes ((SeekEntryResult!4596 0))(
  ( (MissingZero!4596 (index!20608 (_ BitVec 32))) (Found!4596 (index!20609 (_ BitVec 32))) (Intermediate!4596 (undefined!5408 Bool) (index!20610 (_ BitVec 32)) (x!49629 (_ BitVec 32))) (Undefined!4596) (MissingVacant!4596 (index!20611 (_ BitVec 32))) )
))
(declare-fun lt!244721 () SeekEntryResult!4596)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33577 (_ BitVec 32)) SeekEntryResult!4596)

(assert (=> b!530346 (= lt!244721 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun res!326204 () Bool)

(assert (=> start!48196 (=> (not res!326204) (not e!308997))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48196 (= res!326204 (validMask!0 mask!3216))))

(assert (=> start!48196 e!308997))

(assert (=> start!48196 true))

(declare-fun array_inv!11905 (array!33577) Bool)

(assert (=> start!48196 (array_inv!11905 a!3154)))

(declare-fun b!530347 () Bool)

(declare-fun res!326201 () Bool)

(assert (=> b!530347 (=> (not res!326201) (not e!308997))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530347 (= res!326201 (validKeyInArray!0 (select (arr!16131 a!3154) j!147)))))

(declare-fun b!530348 () Bool)

(declare-fun res!326200 () Bool)

(assert (=> b!530348 (=> (not res!326200) (not e!308997))))

(assert (=> b!530348 (= res!326200 (validKeyInArray!0 k!1998))))

(assert (= (and start!48196 res!326204) b!530344))

(assert (= (and b!530344 res!326203) b!530347))

(assert (= (and b!530347 res!326201) b!530348))

(assert (= (and b!530348 res!326200) b!530345))

(assert (= (and b!530345 res!326202) b!530346))

(declare-fun m!510955 () Bool)

(assert (=> start!48196 m!510955))

(declare-fun m!510957 () Bool)

(assert (=> start!48196 m!510957))

(declare-fun m!510959 () Bool)

(assert (=> b!530348 m!510959))

(declare-fun m!510961 () Bool)

(assert (=> b!530347 m!510961))

(assert (=> b!530347 m!510961))

(declare-fun m!510963 () Bool)

(assert (=> b!530347 m!510963))

(declare-fun m!510965 () Bool)

(assert (=> b!530346 m!510965))

(declare-fun m!510967 () Bool)

(assert (=> b!530345 m!510967))

(push 1)

(assert (not start!48196))

(assert (not b!530348))

(assert (not b!530347))

(assert (not b!530346))

(assert (not b!530345))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

