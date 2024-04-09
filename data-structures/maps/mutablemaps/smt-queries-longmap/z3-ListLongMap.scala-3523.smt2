; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48726 () Bool)

(assert start!48726)

(declare-fun b!535196 () Bool)

(declare-fun e!310915 () Bool)

(declare-fun e!310913 () Bool)

(assert (=> b!535196 (= e!310915 e!310913)))

(declare-fun res!330553 () Bool)

(assert (=> b!535196 (=> (not res!330553) (not e!310913))))

(declare-datatypes ((SeekEntryResult!4747 0))(
  ( (MissingZero!4747 (index!21212 (_ BitVec 32))) (Found!4747 (index!21213 (_ BitVec 32))) (Intermediate!4747 (undefined!5559 Bool) (index!21214 (_ BitVec 32)) (x!50189 (_ BitVec 32))) (Undefined!4747) (MissingVacant!4747 (index!21215 (_ BitVec 32))) )
))
(declare-fun lt!245776 () SeekEntryResult!4747)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!535196 (= res!330553 (or (= lt!245776 (MissingZero!4747 i!1153)) (= lt!245776 (MissingVacant!4747 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-datatypes ((array!33894 0))(
  ( (array!33895 (arr!16282 (Array (_ BitVec 32) (_ BitVec 64))) (size!16646 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33894)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33894 (_ BitVec 32)) SeekEntryResult!4747)

(assert (=> b!535196 (= lt!245776 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!535197 () Bool)

(declare-fun res!330560 () Bool)

(assert (=> b!535197 (=> (not res!330560) (not e!310913))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!535197 (= res!330560 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16646 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16646 a!3154)) (= (select (arr!16282 a!3154) resIndex!32) (select (arr!16282 a!3154) j!147))))))

(declare-fun b!535198 () Bool)

(declare-fun res!330551 () Bool)

(assert (=> b!535198 (=> (not res!330551) (not e!310915))))

(declare-fun arrayContainsKey!0 (array!33894 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!535198 (= res!330551 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!535199 () Bool)

(assert (=> b!535199 (= e!310913 false)))

(declare-fun lt!245777 () SeekEntryResult!4747)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33894 (_ BitVec 32)) SeekEntryResult!4747)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535199 (= lt!245777 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16282 a!3154) j!147) mask!3216) (select (arr!16282 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535200 () Bool)

(declare-fun res!330555 () Bool)

(assert (=> b!535200 (=> (not res!330555) (not e!310913))))

(assert (=> b!535200 (= res!330555 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16282 a!3154) j!147) a!3154 mask!3216) (Intermediate!4747 false resIndex!32 resX!32)))))

(declare-fun b!535202 () Bool)

(declare-fun res!330554 () Bool)

(assert (=> b!535202 (=> (not res!330554) (not e!310913))))

(declare-datatypes ((List!10454 0))(
  ( (Nil!10451) (Cons!10450 (h!11393 (_ BitVec 64)) (t!16690 List!10454)) )
))
(declare-fun arrayNoDuplicates!0 (array!33894 (_ BitVec 32) List!10454) Bool)

(assert (=> b!535202 (= res!330554 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10451))))

(declare-fun b!535203 () Bool)

(declare-fun res!330557 () Bool)

(assert (=> b!535203 (=> (not res!330557) (not e!310915))))

(assert (=> b!535203 (= res!330557 (and (= (size!16646 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16646 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16646 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!535201 () Bool)

(declare-fun res!330558 () Bool)

(assert (=> b!535201 (=> (not res!330558) (not e!310913))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33894 (_ BitVec 32)) Bool)

(assert (=> b!535201 (= res!330558 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!330556 () Bool)

(assert (=> start!48726 (=> (not res!330556) (not e!310915))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48726 (= res!330556 (validMask!0 mask!3216))))

(assert (=> start!48726 e!310915))

(assert (=> start!48726 true))

(declare-fun array_inv!12056 (array!33894) Bool)

(assert (=> start!48726 (array_inv!12056 a!3154)))

(declare-fun b!535204 () Bool)

(declare-fun res!330559 () Bool)

(assert (=> b!535204 (=> (not res!330559) (not e!310915))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!535204 (= res!330559 (validKeyInArray!0 k0!1998))))

(declare-fun b!535205 () Bool)

(declare-fun res!330552 () Bool)

(assert (=> b!535205 (=> (not res!330552) (not e!310915))))

(assert (=> b!535205 (= res!330552 (validKeyInArray!0 (select (arr!16282 a!3154) j!147)))))

(assert (= (and start!48726 res!330556) b!535203))

(assert (= (and b!535203 res!330557) b!535205))

(assert (= (and b!535205 res!330552) b!535204))

(assert (= (and b!535204 res!330559) b!535198))

(assert (= (and b!535198 res!330551) b!535196))

(assert (= (and b!535196 res!330553) b!535201))

(assert (= (and b!535201 res!330558) b!535202))

(assert (= (and b!535202 res!330554) b!535197))

(assert (= (and b!535197 res!330560) b!535200))

(assert (= (and b!535200 res!330555) b!535199))

(declare-fun m!514827 () Bool)

(assert (=> b!535202 m!514827))

(declare-fun m!514829 () Bool)

(assert (=> b!535204 m!514829))

(declare-fun m!514831 () Bool)

(assert (=> b!535196 m!514831))

(declare-fun m!514833 () Bool)

(assert (=> b!535200 m!514833))

(assert (=> b!535200 m!514833))

(declare-fun m!514835 () Bool)

(assert (=> b!535200 m!514835))

(declare-fun m!514837 () Bool)

(assert (=> b!535201 m!514837))

(declare-fun m!514839 () Bool)

(assert (=> b!535198 m!514839))

(declare-fun m!514841 () Bool)

(assert (=> b!535197 m!514841))

(assert (=> b!535197 m!514833))

(assert (=> b!535199 m!514833))

(assert (=> b!535199 m!514833))

(declare-fun m!514843 () Bool)

(assert (=> b!535199 m!514843))

(assert (=> b!535199 m!514843))

(assert (=> b!535199 m!514833))

(declare-fun m!514845 () Bool)

(assert (=> b!535199 m!514845))

(declare-fun m!514847 () Bool)

(assert (=> start!48726 m!514847))

(declare-fun m!514849 () Bool)

(assert (=> start!48726 m!514849))

(assert (=> b!535205 m!514833))

(assert (=> b!535205 m!514833))

(declare-fun m!514851 () Bool)

(assert (=> b!535205 m!514851))

(check-sat (not b!535200) (not b!535198) (not b!535205) (not b!535204) (not b!535199) (not b!535196) (not b!535201) (not start!48726) (not b!535202))
(check-sat)
