; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48926 () Bool)

(assert start!48926)

(declare-fun b!538883 () Bool)

(declare-fun e!312443 () Bool)

(assert (=> b!538883 (= e!312443 false)))

(declare-fun lt!247025 () Bool)

(declare-datatypes ((array!34094 0))(
  ( (array!34095 (arr!16382 (Array (_ BitVec 32) (_ BitVec 64))) (size!16746 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34094)

(declare-datatypes ((List!10554 0))(
  ( (Nil!10551) (Cons!10550 (h!11493 (_ BitVec 64)) (t!16790 List!10554)) )
))
(declare-fun arrayNoDuplicates!0 (array!34094 (_ BitVec 32) List!10554) Bool)

(assert (=> b!538883 (= lt!247025 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10551))))

(declare-fun b!538884 () Bool)

(declare-fun res!334242 () Bool)

(declare-fun e!312445 () Bool)

(assert (=> b!538884 (=> (not res!334242) (not e!312445))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538884 (= res!334242 (validKeyInArray!0 k!1998))))

(declare-fun b!538886 () Bool)

(declare-fun res!334238 () Bool)

(assert (=> b!538886 (=> (not res!334238) (not e!312445))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!538886 (= res!334238 (and (= (size!16746 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16746 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16746 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!538887 () Bool)

(declare-fun res!334239 () Bool)

(assert (=> b!538887 (=> (not res!334239) (not e!312443))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34094 (_ BitVec 32)) Bool)

(assert (=> b!538887 (= res!334239 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!334244 () Bool)

(assert (=> start!48926 (=> (not res!334244) (not e!312445))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48926 (= res!334244 (validMask!0 mask!3216))))

(assert (=> start!48926 e!312445))

(assert (=> start!48926 true))

(declare-fun array_inv!12156 (array!34094) Bool)

(assert (=> start!48926 (array_inv!12156 a!3154)))

(declare-fun b!538885 () Bool)

(declare-fun res!334240 () Bool)

(assert (=> b!538885 (=> (not res!334240) (not e!312445))))

(assert (=> b!538885 (= res!334240 (validKeyInArray!0 (select (arr!16382 a!3154) j!147)))))

(declare-fun b!538888 () Bool)

(assert (=> b!538888 (= e!312445 e!312443)))

(declare-fun res!334241 () Bool)

(assert (=> b!538888 (=> (not res!334241) (not e!312443))))

(declare-datatypes ((SeekEntryResult!4847 0))(
  ( (MissingZero!4847 (index!21612 (_ BitVec 32))) (Found!4847 (index!21613 (_ BitVec 32))) (Intermediate!4847 (undefined!5659 Bool) (index!21614 (_ BitVec 32)) (x!50553 (_ BitVec 32))) (Undefined!4847) (MissingVacant!4847 (index!21615 (_ BitVec 32))) )
))
(declare-fun lt!247024 () SeekEntryResult!4847)

(assert (=> b!538888 (= res!334241 (or (= lt!247024 (MissingZero!4847 i!1153)) (= lt!247024 (MissingVacant!4847 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34094 (_ BitVec 32)) SeekEntryResult!4847)

(assert (=> b!538888 (= lt!247024 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!538889 () Bool)

(declare-fun res!334243 () Bool)

(assert (=> b!538889 (=> (not res!334243) (not e!312445))))

(declare-fun arrayContainsKey!0 (array!34094 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538889 (= res!334243 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!48926 res!334244) b!538886))

(assert (= (and b!538886 res!334238) b!538885))

(assert (= (and b!538885 res!334240) b!538884))

(assert (= (and b!538884 res!334242) b!538889))

(assert (= (and b!538889 res!334243) b!538888))

(assert (= (and b!538888 res!334241) b!538887))

(assert (= (and b!538887 res!334239) b!538883))

(declare-fun m!518017 () Bool)

(assert (=> b!538889 m!518017))

(declare-fun m!518019 () Bool)

(assert (=> b!538883 m!518019))

(declare-fun m!518021 () Bool)

(assert (=> b!538888 m!518021))

(declare-fun m!518023 () Bool)

(assert (=> start!48926 m!518023))

(declare-fun m!518025 () Bool)

(assert (=> start!48926 m!518025))

(declare-fun m!518027 () Bool)

(assert (=> b!538884 m!518027))

(declare-fun m!518029 () Bool)

(assert (=> b!538885 m!518029))

(assert (=> b!538885 m!518029))

(declare-fun m!518031 () Bool)

(assert (=> b!538885 m!518031))

(declare-fun m!518033 () Bool)

(assert (=> b!538887 m!518033))

(push 1)

(assert (not b!538885))

(assert (not b!538889))

(assert (not b!538884))

(assert (not b!538888))

(assert (not b!538887))

(assert (not start!48926))

(assert (not b!538883))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

