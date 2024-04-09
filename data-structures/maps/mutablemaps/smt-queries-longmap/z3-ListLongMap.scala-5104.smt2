; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69252 () Bool)

(assert start!69252)

(declare-fun b!807503 () Bool)

(declare-fun e!447094 () Bool)

(declare-fun e!447091 () Bool)

(assert (=> b!807503 (= e!447094 e!447091)))

(declare-fun res!551802 () Bool)

(assert (=> b!807503 (=> (not res!551802) (not e!447091))))

(declare-datatypes ((SeekEntryResult!8623 0))(
  ( (MissingZero!8623 (index!36859 (_ BitVec 32))) (Found!8623 (index!36860 (_ BitVec 32))) (Intermediate!8623 (undefined!9435 Bool) (index!36861 (_ BitVec 32)) (x!67692 (_ BitVec 32))) (Undefined!8623) (MissingVacant!8623 (index!36862 (_ BitVec 32))) )
))
(declare-fun lt!361800 () SeekEntryResult!8623)

(declare-datatypes ((array!43903 0))(
  ( (array!43904 (arr!21025 (Array (_ BitVec 32) (_ BitVec 64))) (size!21446 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43903)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!361803 () SeekEntryResult!8623)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!807503 (= res!551802 (and (= lt!361803 lt!361800) (= lt!361800 (Found!8623 j!153)) (not (= (select (arr!21025 a!3170) index!1236) (select (arr!21025 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43903 (_ BitVec 32)) SeekEntryResult!8623)

(assert (=> b!807503 (= lt!361800 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21025 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43903 (_ BitVec 32)) SeekEntryResult!8623)

(assert (=> b!807503 (= lt!361803 (seekEntryOrOpen!0 (select (arr!21025 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!807504 () Bool)

(declare-fun res!551803 () Bool)

(declare-fun e!447092 () Bool)

(assert (=> b!807504 (=> (not res!551803) (not e!447092))))

(declare-datatypes ((List!15041 0))(
  ( (Nil!15038) (Cons!15037 (h!16166 (_ BitVec 64)) (t!21364 List!15041)) )
))
(declare-fun arrayNoDuplicates!0 (array!43903 (_ BitVec 32) List!15041) Bool)

(assert (=> b!807504 (= res!551803 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15038))))

(declare-fun b!807505 () Bool)

(declare-fun res!551799 () Bool)

(declare-fun e!447093 () Bool)

(assert (=> b!807505 (=> (not res!551799) (not e!447093))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!807505 (= res!551799 (and (= (size!21446 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21446 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21446 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!551797 () Bool)

(assert (=> start!69252 (=> (not res!551797) (not e!447093))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69252 (= res!551797 (validMask!0 mask!3266))))

(assert (=> start!69252 e!447093))

(assert (=> start!69252 true))

(declare-fun array_inv!16799 (array!43903) Bool)

(assert (=> start!69252 (array_inv!16799 a!3170)))

(declare-fun b!807506 () Bool)

(declare-fun res!551800 () Bool)

(assert (=> b!807506 (=> (not res!551800) (not e!447093))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807506 (= res!551800 (validKeyInArray!0 (select (arr!21025 a!3170) j!153)))))

(declare-fun b!807507 () Bool)

(assert (=> b!807507 (= e!447092 e!447094)))

(declare-fun res!551805 () Bool)

(assert (=> b!807507 (=> (not res!551805) (not e!447094))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!361804 () array!43903)

(declare-fun lt!361802 () (_ BitVec 64))

(assert (=> b!807507 (= res!551805 (= (seekEntryOrOpen!0 lt!361802 lt!361804 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361802 lt!361804 mask!3266)))))

(declare-fun k0!2044 () (_ BitVec 64))

(assert (=> b!807507 (= lt!361802 (select (store (arr!21025 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!807507 (= lt!361804 (array!43904 (store (arr!21025 a!3170) i!1163 k0!2044) (size!21446 a!3170)))))

(declare-fun b!807508 () Bool)

(assert (=> b!807508 (= e!447093 e!447092)))

(declare-fun res!551796 () Bool)

(assert (=> b!807508 (=> (not res!551796) (not e!447092))))

(declare-fun lt!361801 () SeekEntryResult!8623)

(assert (=> b!807508 (= res!551796 (or (= lt!361801 (MissingZero!8623 i!1163)) (= lt!361801 (MissingVacant!8623 i!1163))))))

(assert (=> b!807508 (= lt!361801 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!807509 () Bool)

(declare-fun res!551806 () Bool)

(assert (=> b!807509 (=> (not res!551806) (not e!447093))))

(declare-fun arrayContainsKey!0 (array!43903 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807509 (= res!551806 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!807510 () Bool)

(declare-fun res!551798 () Bool)

(assert (=> b!807510 (=> (not res!551798) (not e!447092))))

(assert (=> b!807510 (= res!551798 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21446 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21025 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21446 a!3170)) (= (select (arr!21025 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!807511 () Bool)

(declare-fun res!551804 () Bool)

(assert (=> b!807511 (=> (not res!551804) (not e!447093))))

(assert (=> b!807511 (= res!551804 (validKeyInArray!0 k0!2044))))

(declare-fun b!807512 () Bool)

(assert (=> b!807512 (= e!447091 false)))

(declare-fun lt!361799 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807512 (= lt!361799 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!807513 () Bool)

(declare-fun res!551801 () Bool)

(assert (=> b!807513 (=> (not res!551801) (not e!447092))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43903 (_ BitVec 32)) Bool)

(assert (=> b!807513 (= res!551801 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(assert (= (and start!69252 res!551797) b!807505))

(assert (= (and b!807505 res!551799) b!807506))

(assert (= (and b!807506 res!551800) b!807511))

(assert (= (and b!807511 res!551804) b!807509))

(assert (= (and b!807509 res!551806) b!807508))

(assert (= (and b!807508 res!551796) b!807513))

(assert (= (and b!807513 res!551801) b!807504))

(assert (= (and b!807504 res!551803) b!807510))

(assert (= (and b!807510 res!551798) b!807507))

(assert (= (and b!807507 res!551805) b!807503))

(assert (= (and b!807503 res!551802) b!807512))

(declare-fun m!749667 () Bool)

(assert (=> b!807512 m!749667))

(declare-fun m!749669 () Bool)

(assert (=> b!807511 m!749669))

(declare-fun m!749671 () Bool)

(assert (=> b!807507 m!749671))

(declare-fun m!749673 () Bool)

(assert (=> b!807507 m!749673))

(declare-fun m!749675 () Bool)

(assert (=> b!807507 m!749675))

(declare-fun m!749677 () Bool)

(assert (=> b!807507 m!749677))

(declare-fun m!749679 () Bool)

(assert (=> b!807513 m!749679))

(declare-fun m!749681 () Bool)

(assert (=> b!807509 m!749681))

(declare-fun m!749683 () Bool)

(assert (=> b!807504 m!749683))

(declare-fun m!749685 () Bool)

(assert (=> b!807503 m!749685))

(declare-fun m!749687 () Bool)

(assert (=> b!807503 m!749687))

(assert (=> b!807503 m!749687))

(declare-fun m!749689 () Bool)

(assert (=> b!807503 m!749689))

(assert (=> b!807503 m!749687))

(declare-fun m!749691 () Bool)

(assert (=> b!807503 m!749691))

(assert (=> b!807506 m!749687))

(assert (=> b!807506 m!749687))

(declare-fun m!749693 () Bool)

(assert (=> b!807506 m!749693))

(declare-fun m!749695 () Bool)

(assert (=> start!69252 m!749695))

(declare-fun m!749697 () Bool)

(assert (=> start!69252 m!749697))

(declare-fun m!749699 () Bool)

(assert (=> b!807508 m!749699))

(declare-fun m!749701 () Bool)

(assert (=> b!807510 m!749701))

(declare-fun m!749703 () Bool)

(assert (=> b!807510 m!749703))

(check-sat (not b!807511) (not b!807506) (not start!69252) (not b!807509) (not b!807504) (not b!807503) (not b!807508) (not b!807513) (not b!807507) (not b!807512))
(check-sat)
