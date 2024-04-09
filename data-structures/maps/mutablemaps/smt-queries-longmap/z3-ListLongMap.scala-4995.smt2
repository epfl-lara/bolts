; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68502 () Bool)

(assert start!68502)

(declare-fun b!795983 () Bool)

(declare-fun res!540681 () Bool)

(declare-fun e!441739 () Bool)

(assert (=> b!795983 (=> (not res!540681) (not e!441739))))

(declare-datatypes ((array!43243 0))(
  ( (array!43244 (arr!20698 (Array (_ BitVec 32) (_ BitVec 64))) (size!21119 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43243)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795983 (= res!540681 (validKeyInArray!0 (select (arr!20698 a!3170) j!153)))))

(declare-fun b!795984 () Bool)

(declare-fun res!540679 () Bool)

(declare-fun e!441737 () Bool)

(assert (=> b!795984 (=> (not res!540679) (not e!441737))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43243 (_ BitVec 32)) Bool)

(assert (=> b!795984 (= res!540679 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!795985 () Bool)

(declare-fun e!441738 () Bool)

(assert (=> b!795985 (= e!441737 e!441738)))

(declare-fun res!540675 () Bool)

(assert (=> b!795985 (=> (not res!540675) (not e!441738))))

(declare-datatypes ((SeekEntryResult!8296 0))(
  ( (MissingZero!8296 (index!35551 (_ BitVec 32))) (Found!8296 (index!35552 (_ BitVec 32))) (Intermediate!8296 (undefined!9108 Bool) (index!35553 (_ BitVec 32)) (x!66487 (_ BitVec 32))) (Undefined!8296) (MissingVacant!8296 (index!35554 (_ BitVec 32))) )
))
(declare-fun lt!354891 () SeekEntryResult!8296)

(declare-fun lt!354893 () SeekEntryResult!8296)

(assert (=> b!795985 (= res!540675 (= lt!354891 lt!354893))))

(declare-fun lt!354890 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!354892 () array!43243)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43243 (_ BitVec 32)) SeekEntryResult!8296)

(assert (=> b!795985 (= lt!354893 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354890 lt!354892 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43243 (_ BitVec 32)) SeekEntryResult!8296)

(assert (=> b!795985 (= lt!354891 (seekEntryOrOpen!0 lt!354890 lt!354892 mask!3266))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!795985 (= lt!354890 (select (store (arr!20698 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!795985 (= lt!354892 (array!43244 (store (arr!20698 a!3170) i!1163 k0!2044) (size!21119 a!3170)))))

(declare-fun b!795986 () Bool)

(declare-fun res!540677 () Bool)

(assert (=> b!795986 (=> (not res!540677) (not e!441739))))

(assert (=> b!795986 (= res!540677 (validKeyInArray!0 k0!2044))))

(declare-fun b!795987 () Bool)

(assert (=> b!795987 (= e!441739 e!441737)))

(declare-fun res!540673 () Bool)

(assert (=> b!795987 (=> (not res!540673) (not e!441737))))

(declare-fun lt!354894 () SeekEntryResult!8296)

(assert (=> b!795987 (= res!540673 (or (= lt!354894 (MissingZero!8296 i!1163)) (= lt!354894 (MissingVacant!8296 i!1163))))))

(assert (=> b!795987 (= lt!354894 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!795989 () Bool)

(declare-fun res!540672 () Bool)

(assert (=> b!795989 (=> (not res!540672) (not e!441737))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!795989 (= res!540672 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21119 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20698 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21119 a!3170)) (= (select (arr!20698 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!795990 () Bool)

(declare-fun res!540680 () Bool)

(assert (=> b!795990 (=> (not res!540680) (not e!441737))))

(declare-datatypes ((List!14714 0))(
  ( (Nil!14711) (Cons!14710 (h!15839 (_ BitVec 64)) (t!21037 List!14714)) )
))
(declare-fun arrayNoDuplicates!0 (array!43243 (_ BitVec 32) List!14714) Bool)

(assert (=> b!795990 (= res!540680 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14711))))

(declare-fun b!795991 () Bool)

(declare-fun res!540676 () Bool)

(assert (=> b!795991 (=> (not res!540676) (not e!441739))))

(declare-fun arrayContainsKey!0 (array!43243 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795991 (= res!540676 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!795992 () Bool)

(declare-fun e!441736 () Bool)

(assert (=> b!795992 (= e!441738 e!441736)))

(declare-fun res!540682 () Bool)

(assert (=> b!795992 (=> (not res!540682) (not e!441736))))

(declare-fun lt!354895 () SeekEntryResult!8296)

(declare-fun lt!354889 () SeekEntryResult!8296)

(assert (=> b!795992 (= res!540682 (and (= lt!354889 lt!354895) (= lt!354895 (Found!8296 j!153)) (= (select (arr!20698 a!3170) index!1236) (select (arr!20698 a!3170) j!153))))))

(assert (=> b!795992 (= lt!354895 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20698 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!795992 (= lt!354889 (seekEntryOrOpen!0 (select (arr!20698 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!795993 () Bool)

(declare-fun res!540678 () Bool)

(assert (=> b!795993 (=> (not res!540678) (not e!441739))))

(assert (=> b!795993 (= res!540678 (and (= (size!21119 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21119 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21119 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!795988 () Bool)

(assert (=> b!795988 (= e!441736 (not (bvsge mask!3266 #b00000000000000000000000000000000)))))

(assert (=> b!795988 (= lt!354893 (Found!8296 index!1236))))

(declare-fun res!540674 () Bool)

(assert (=> start!68502 (=> (not res!540674) (not e!441739))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68502 (= res!540674 (validMask!0 mask!3266))))

(assert (=> start!68502 e!441739))

(assert (=> start!68502 true))

(declare-fun array_inv!16472 (array!43243) Bool)

(assert (=> start!68502 (array_inv!16472 a!3170)))

(assert (= (and start!68502 res!540674) b!795993))

(assert (= (and b!795993 res!540678) b!795983))

(assert (= (and b!795983 res!540681) b!795986))

(assert (= (and b!795986 res!540677) b!795991))

(assert (= (and b!795991 res!540676) b!795987))

(assert (= (and b!795987 res!540673) b!795984))

(assert (= (and b!795984 res!540679) b!795990))

(assert (= (and b!795990 res!540680) b!795989))

(assert (= (and b!795989 res!540672) b!795985))

(assert (= (and b!795985 res!540675) b!795992))

(assert (= (and b!795992 res!540682) b!795988))

(declare-fun m!736837 () Bool)

(assert (=> b!795989 m!736837))

(declare-fun m!736839 () Bool)

(assert (=> b!795989 m!736839))

(declare-fun m!736841 () Bool)

(assert (=> b!795983 m!736841))

(assert (=> b!795983 m!736841))

(declare-fun m!736843 () Bool)

(assert (=> b!795983 m!736843))

(declare-fun m!736845 () Bool)

(assert (=> b!795991 m!736845))

(declare-fun m!736847 () Bool)

(assert (=> b!795986 m!736847))

(declare-fun m!736849 () Bool)

(assert (=> b!795987 m!736849))

(declare-fun m!736851 () Bool)

(assert (=> b!795992 m!736851))

(assert (=> b!795992 m!736841))

(assert (=> b!795992 m!736841))

(declare-fun m!736853 () Bool)

(assert (=> b!795992 m!736853))

(assert (=> b!795992 m!736841))

(declare-fun m!736855 () Bool)

(assert (=> b!795992 m!736855))

(declare-fun m!736857 () Bool)

(assert (=> b!795990 m!736857))

(declare-fun m!736859 () Bool)

(assert (=> start!68502 m!736859))

(declare-fun m!736861 () Bool)

(assert (=> start!68502 m!736861))

(declare-fun m!736863 () Bool)

(assert (=> b!795984 m!736863))

(declare-fun m!736865 () Bool)

(assert (=> b!795985 m!736865))

(declare-fun m!736867 () Bool)

(assert (=> b!795985 m!736867))

(declare-fun m!736869 () Bool)

(assert (=> b!795985 m!736869))

(declare-fun m!736871 () Bool)

(assert (=> b!795985 m!736871))

(check-sat (not b!795985) (not b!795990) (not b!795984) (not b!795991) (not b!795992) (not b!795986) (not b!795987) (not b!795983) (not start!68502))
(check-sat)
