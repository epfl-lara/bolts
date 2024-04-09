; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69258 () Bool)

(assert start!69258)

(declare-fun b!807602 () Bool)

(declare-fun e!447139 () Bool)

(declare-fun e!447138 () Bool)

(assert (=> b!807602 (= e!447139 e!447138)))

(declare-fun res!551903 () Bool)

(assert (=> b!807602 (=> (not res!551903) (not e!447138))))

(declare-datatypes ((SeekEntryResult!8626 0))(
  ( (MissingZero!8626 (index!36871 (_ BitVec 32))) (Found!8626 (index!36872 (_ BitVec 32))) (Intermediate!8626 (undefined!9438 Bool) (index!36873 (_ BitVec 32)) (x!67703 (_ BitVec 32))) (Undefined!8626) (MissingVacant!8626 (index!36874 (_ BitVec 32))) )
))
(declare-fun lt!361854 () SeekEntryResult!8626)

(declare-datatypes ((array!43909 0))(
  ( (array!43910 (arr!21028 (Array (_ BitVec 32) (_ BitVec 64))) (size!21449 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43909)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!361858 () SeekEntryResult!8626)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!807602 (= res!551903 (and (= lt!361854 lt!361858) (= lt!361858 (Found!8626 j!153)) (not (= (select (arr!21028 a!3170) index!1236) (select (arr!21028 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43909 (_ BitVec 32)) SeekEntryResult!8626)

(assert (=> b!807602 (= lt!361858 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21028 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43909 (_ BitVec 32)) SeekEntryResult!8626)

(assert (=> b!807602 (= lt!361854 (seekEntryOrOpen!0 (select (arr!21028 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!807603 () Bool)

(declare-fun res!551902 () Bool)

(declare-fun e!447137 () Bool)

(assert (=> b!807603 (=> (not res!551902) (not e!447137))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807603 (= res!551902 (validKeyInArray!0 k0!2044))))

(declare-fun b!807604 () Bool)

(declare-fun res!551898 () Bool)

(assert (=> b!807604 (=> (not res!551898) (not e!447137))))

(assert (=> b!807604 (= res!551898 (validKeyInArray!0 (select (arr!21028 a!3170) j!153)))))

(declare-fun b!807605 () Bool)

(declare-fun res!551900 () Bool)

(assert (=> b!807605 (=> (not res!551900) (not e!447137))))

(declare-fun arrayContainsKey!0 (array!43909 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807605 (= res!551900 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!807606 () Bool)

(declare-fun res!551899 () Bool)

(declare-fun e!447135 () Bool)

(assert (=> b!807606 (=> (not res!551899) (not e!447135))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43909 (_ BitVec 32)) Bool)

(assert (=> b!807606 (= res!551899 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!807607 () Bool)

(declare-fun res!551904 () Bool)

(assert (=> b!807607 (=> (not res!551904) (not e!447135))))

(declare-datatypes ((List!15044 0))(
  ( (Nil!15041) (Cons!15040 (h!16169 (_ BitVec 64)) (t!21367 List!15044)) )
))
(declare-fun arrayNoDuplicates!0 (array!43909 (_ BitVec 32) List!15044) Bool)

(assert (=> b!807607 (= res!551904 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15041))))

(declare-fun b!807608 () Bool)

(assert (=> b!807608 (= e!447135 e!447139)))

(declare-fun res!551896 () Bool)

(assert (=> b!807608 (=> (not res!551896) (not e!447139))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!361855 () array!43909)

(declare-fun lt!361853 () (_ BitVec 64))

(assert (=> b!807608 (= res!551896 (= (seekEntryOrOpen!0 lt!361853 lt!361855 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361853 lt!361855 mask!3266)))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!807608 (= lt!361853 (select (store (arr!21028 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!807608 (= lt!361855 (array!43910 (store (arr!21028 a!3170) i!1163 k0!2044) (size!21449 a!3170)))))

(declare-fun b!807609 () Bool)

(assert (=> b!807609 (= e!447138 false)))

(declare-fun lt!361856 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807609 (= lt!361856 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun res!551901 () Bool)

(assert (=> start!69258 (=> (not res!551901) (not e!447137))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69258 (= res!551901 (validMask!0 mask!3266))))

(assert (=> start!69258 e!447137))

(assert (=> start!69258 true))

(declare-fun array_inv!16802 (array!43909) Bool)

(assert (=> start!69258 (array_inv!16802 a!3170)))

(declare-fun b!807610 () Bool)

(assert (=> b!807610 (= e!447137 e!447135)))

(declare-fun res!551905 () Bool)

(assert (=> b!807610 (=> (not res!551905) (not e!447135))))

(declare-fun lt!361857 () SeekEntryResult!8626)

(assert (=> b!807610 (= res!551905 (or (= lt!361857 (MissingZero!8626 i!1163)) (= lt!361857 (MissingVacant!8626 i!1163))))))

(assert (=> b!807610 (= lt!361857 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!807611 () Bool)

(declare-fun res!551895 () Bool)

(assert (=> b!807611 (=> (not res!551895) (not e!447135))))

(assert (=> b!807611 (= res!551895 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21449 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21028 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21449 a!3170)) (= (select (arr!21028 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!807612 () Bool)

(declare-fun res!551897 () Bool)

(assert (=> b!807612 (=> (not res!551897) (not e!447137))))

(assert (=> b!807612 (= res!551897 (and (= (size!21449 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21449 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21449 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!69258 res!551901) b!807612))

(assert (= (and b!807612 res!551897) b!807604))

(assert (= (and b!807604 res!551898) b!807603))

(assert (= (and b!807603 res!551902) b!807605))

(assert (= (and b!807605 res!551900) b!807610))

(assert (= (and b!807610 res!551905) b!807606))

(assert (= (and b!807606 res!551899) b!807607))

(assert (= (and b!807607 res!551904) b!807611))

(assert (= (and b!807611 res!551895) b!807608))

(assert (= (and b!807608 res!551896) b!807602))

(assert (= (and b!807602 res!551903) b!807609))

(declare-fun m!749781 () Bool)

(assert (=> start!69258 m!749781))

(declare-fun m!749783 () Bool)

(assert (=> start!69258 m!749783))

(declare-fun m!749785 () Bool)

(assert (=> b!807602 m!749785))

(declare-fun m!749787 () Bool)

(assert (=> b!807602 m!749787))

(assert (=> b!807602 m!749787))

(declare-fun m!749789 () Bool)

(assert (=> b!807602 m!749789))

(assert (=> b!807602 m!749787))

(declare-fun m!749791 () Bool)

(assert (=> b!807602 m!749791))

(declare-fun m!749793 () Bool)

(assert (=> b!807610 m!749793))

(declare-fun m!749795 () Bool)

(assert (=> b!807603 m!749795))

(declare-fun m!749797 () Bool)

(assert (=> b!807608 m!749797))

(declare-fun m!749799 () Bool)

(assert (=> b!807608 m!749799))

(declare-fun m!749801 () Bool)

(assert (=> b!807608 m!749801))

(declare-fun m!749803 () Bool)

(assert (=> b!807608 m!749803))

(declare-fun m!749805 () Bool)

(assert (=> b!807606 m!749805))

(declare-fun m!749807 () Bool)

(assert (=> b!807611 m!749807))

(declare-fun m!749809 () Bool)

(assert (=> b!807611 m!749809))

(assert (=> b!807604 m!749787))

(assert (=> b!807604 m!749787))

(declare-fun m!749811 () Bool)

(assert (=> b!807604 m!749811))

(declare-fun m!749813 () Bool)

(assert (=> b!807607 m!749813))

(declare-fun m!749815 () Bool)

(assert (=> b!807609 m!749815))

(declare-fun m!749817 () Bool)

(assert (=> b!807605 m!749817))

(check-sat (not b!807602) (not b!807609) (not b!807606) (not b!807604) (not b!807608) (not b!807605) (not start!69258) (not b!807603) (not b!807607) (not b!807610))
(check-sat)
