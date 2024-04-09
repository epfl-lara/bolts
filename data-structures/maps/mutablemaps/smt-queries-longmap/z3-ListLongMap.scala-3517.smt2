; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48690 () Bool)

(assert start!48690)

(declare-fun b!534611 () Bool)

(declare-fun res!329974 () Bool)

(declare-fun e!310716 () Bool)

(assert (=> b!534611 (=> (not res!329974) (not e!310716))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33858 0))(
  ( (array!33859 (arr!16264 (Array (_ BitVec 32) (_ BitVec 64))) (size!16628 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33858)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534611 (= res!329974 (and (= (size!16628 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16628 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16628 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!329966 () Bool)

(assert (=> start!48690 (=> (not res!329966) (not e!310716))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48690 (= res!329966 (validMask!0 mask!3216))))

(assert (=> start!48690 e!310716))

(assert (=> start!48690 true))

(declare-fun array_inv!12038 (array!33858) Bool)

(assert (=> start!48690 (array_inv!12038 a!3154)))

(declare-fun b!534612 () Bool)

(declare-fun res!329970 () Bool)

(declare-fun e!310715 () Bool)

(assert (=> b!534612 (=> (not res!329970) (not e!310715))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33858 (_ BitVec 32)) Bool)

(assert (=> b!534612 (= res!329970 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!534613 () Bool)

(declare-fun res!329975 () Bool)

(assert (=> b!534613 (=> (not res!329975) (not e!310716))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33858 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534613 (= res!329975 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!534614 () Bool)

(declare-fun res!329968 () Bool)

(assert (=> b!534614 (=> (not res!329968) (not e!310715))))

(declare-datatypes ((List!10436 0))(
  ( (Nil!10433) (Cons!10432 (h!11375 (_ BitVec 64)) (t!16672 List!10436)) )
))
(declare-fun arrayNoDuplicates!0 (array!33858 (_ BitVec 32) List!10436) Bool)

(assert (=> b!534614 (= res!329968 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10433))))

(declare-fun b!534615 () Bool)

(declare-fun res!329969 () Bool)

(assert (=> b!534615 (=> (not res!329969) (not e!310716))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534615 (= res!329969 (validKeyInArray!0 (select (arr!16264 a!3154) j!147)))))

(declare-fun b!534616 () Bool)

(declare-fun res!329973 () Bool)

(assert (=> b!534616 (=> (not res!329973) (not e!310715))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!534616 (= res!329973 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16628 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16628 a!3154)) (= (select (arr!16264 a!3154) resIndex!32) (select (arr!16264 a!3154) j!147))))))

(declare-fun b!534617 () Bool)

(declare-fun res!329972 () Bool)

(assert (=> b!534617 (=> (not res!329972) (not e!310715))))

(declare-datatypes ((SeekEntryResult!4729 0))(
  ( (MissingZero!4729 (index!21140 (_ BitVec 32))) (Found!4729 (index!21141 (_ BitVec 32))) (Intermediate!4729 (undefined!5541 Bool) (index!21142 (_ BitVec 32)) (x!50123 (_ BitVec 32))) (Undefined!4729) (MissingVacant!4729 (index!21143 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33858 (_ BitVec 32)) SeekEntryResult!4729)

(assert (=> b!534617 (= res!329972 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16264 a!3154) j!147) a!3154 mask!3216) (Intermediate!4729 false resIndex!32 resX!32)))))

(declare-fun b!534618 () Bool)

(assert (=> b!534618 (= e!310716 e!310715)))

(declare-fun res!329971 () Bool)

(assert (=> b!534618 (=> (not res!329971) (not e!310715))))

(declare-fun lt!245669 () SeekEntryResult!4729)

(assert (=> b!534618 (= res!329971 (or (= lt!245669 (MissingZero!4729 i!1153)) (= lt!245669 (MissingVacant!4729 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33858 (_ BitVec 32)) SeekEntryResult!4729)

(assert (=> b!534618 (= lt!245669 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!534619 () Bool)

(assert (=> b!534619 (= e!310715 false)))

(declare-fun lt!245668 () SeekEntryResult!4729)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534619 (= lt!245668 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16264 a!3154) j!147) mask!3216) (select (arr!16264 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!534620 () Bool)

(declare-fun res!329967 () Bool)

(assert (=> b!534620 (=> (not res!329967) (not e!310716))))

(assert (=> b!534620 (= res!329967 (validKeyInArray!0 k0!1998))))

(assert (= (and start!48690 res!329966) b!534611))

(assert (= (and b!534611 res!329974) b!534615))

(assert (= (and b!534615 res!329969) b!534620))

(assert (= (and b!534620 res!329967) b!534613))

(assert (= (and b!534613 res!329975) b!534618))

(assert (= (and b!534618 res!329971) b!534612))

(assert (= (and b!534612 res!329970) b!534614))

(assert (= (and b!534614 res!329968) b!534616))

(assert (= (and b!534616 res!329973) b!534617))

(assert (= (and b!534617 res!329972) b!534619))

(declare-fun m!514317 () Bool)

(assert (=> start!48690 m!514317))

(declare-fun m!514319 () Bool)

(assert (=> start!48690 m!514319))

(declare-fun m!514321 () Bool)

(assert (=> b!534613 m!514321))

(declare-fun m!514323 () Bool)

(assert (=> b!534620 m!514323))

(declare-fun m!514325 () Bool)

(assert (=> b!534617 m!514325))

(assert (=> b!534617 m!514325))

(declare-fun m!514327 () Bool)

(assert (=> b!534617 m!514327))

(declare-fun m!514329 () Bool)

(assert (=> b!534616 m!514329))

(assert (=> b!534616 m!514325))

(assert (=> b!534615 m!514325))

(assert (=> b!534615 m!514325))

(declare-fun m!514331 () Bool)

(assert (=> b!534615 m!514331))

(declare-fun m!514333 () Bool)

(assert (=> b!534618 m!514333))

(declare-fun m!514335 () Bool)

(assert (=> b!534614 m!514335))

(assert (=> b!534619 m!514325))

(assert (=> b!534619 m!514325))

(declare-fun m!514337 () Bool)

(assert (=> b!534619 m!514337))

(assert (=> b!534619 m!514337))

(assert (=> b!534619 m!514325))

(declare-fun m!514339 () Bool)

(assert (=> b!534619 m!514339))

(declare-fun m!514341 () Bool)

(assert (=> b!534612 m!514341))

(check-sat (not b!534619) (not b!534620) (not b!534613) (not b!534612) (not b!534618) (not start!48690) (not b!534617) (not b!534614) (not b!534615))
(check-sat)
