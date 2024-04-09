; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68444 () Bool)

(assert start!68444)

(declare-fun b!795090 () Bool)

(declare-fun res!539787 () Bool)

(declare-fun e!441364 () Bool)

(assert (=> b!795090 (=> (not res!539787) (not e!441364))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-datatypes ((array!43185 0))(
  ( (array!43186 (arr!20669 (Array (_ BitVec 32) (_ BitVec 64))) (size!21090 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43185)

(assert (=> b!795090 (= res!539787 (and (= (size!21090 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21090 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21090 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!795091 () Bool)

(declare-fun res!539786 () Bool)

(assert (=> b!795091 (=> (not res!539786) (not e!441364))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795091 (= res!539786 (validKeyInArray!0 (select (arr!20669 a!3170) j!153)))))

(declare-fun b!795092 () Bool)

(declare-fun e!441366 () Bool)

(assert (=> b!795092 (= e!441366 false)))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8267 0))(
  ( (MissingZero!8267 (index!35435 (_ BitVec 32))) (Found!8267 (index!35436 (_ BitVec 32))) (Intermediate!8267 (undefined!9079 Bool) (index!35437 (_ BitVec 32)) (x!66378 (_ BitVec 32))) (Undefined!8267) (MissingVacant!8267 (index!35438 (_ BitVec 32))) )
))
(declare-fun lt!354430 () SeekEntryResult!8267)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43185 (_ BitVec 32)) SeekEntryResult!8267)

(assert (=> b!795092 (= lt!354430 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20669 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!354429 () SeekEntryResult!8267)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43185 (_ BitVec 32)) SeekEntryResult!8267)

(assert (=> b!795092 (= lt!354429 (seekEntryOrOpen!0 (select (arr!20669 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!795093 () Bool)

(declare-fun res!539788 () Bool)

(declare-fun e!441367 () Bool)

(assert (=> b!795093 (=> (not res!539788) (not e!441367))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43185 (_ BitVec 32)) Bool)

(assert (=> b!795093 (= res!539788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!795094 () Bool)

(declare-fun res!539781 () Bool)

(assert (=> b!795094 (=> (not res!539781) (not e!441364))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43185 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795094 (= res!539781 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!795095 () Bool)

(declare-fun res!539782 () Bool)

(assert (=> b!795095 (=> (not res!539782) (not e!441364))))

(assert (=> b!795095 (= res!539782 (validKeyInArray!0 k!2044))))

(declare-fun b!795096 () Bool)

(assert (=> b!795096 (= e!441367 e!441366)))

(declare-fun res!539779 () Bool)

(assert (=> b!795096 (=> (not res!539779) (not e!441366))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!354427 () (_ BitVec 64))

(declare-fun lt!354426 () array!43185)

(assert (=> b!795096 (= res!539779 (= (seekEntryOrOpen!0 lt!354427 lt!354426 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354427 lt!354426 mask!3266)))))

(assert (=> b!795096 (= lt!354427 (select (store (arr!20669 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!795096 (= lt!354426 (array!43186 (store (arr!20669 a!3170) i!1163 k!2044) (size!21090 a!3170)))))

(declare-fun b!795098 () Bool)

(assert (=> b!795098 (= e!441364 e!441367)))

(declare-fun res!539785 () Bool)

(assert (=> b!795098 (=> (not res!539785) (not e!441367))))

(declare-fun lt!354428 () SeekEntryResult!8267)

(assert (=> b!795098 (= res!539785 (or (= lt!354428 (MissingZero!8267 i!1163)) (= lt!354428 (MissingVacant!8267 i!1163))))))

(assert (=> b!795098 (= lt!354428 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!795099 () Bool)

(declare-fun res!539780 () Bool)

(assert (=> b!795099 (=> (not res!539780) (not e!441367))))

(declare-datatypes ((List!14685 0))(
  ( (Nil!14682) (Cons!14681 (h!15810 (_ BitVec 64)) (t!21008 List!14685)) )
))
(declare-fun arrayNoDuplicates!0 (array!43185 (_ BitVec 32) List!14685) Bool)

(assert (=> b!795099 (= res!539780 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14682))))

(declare-fun b!795097 () Bool)

(declare-fun res!539783 () Bool)

(assert (=> b!795097 (=> (not res!539783) (not e!441367))))

(assert (=> b!795097 (= res!539783 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21090 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20669 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21090 a!3170)) (= (select (arr!20669 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!539784 () Bool)

(assert (=> start!68444 (=> (not res!539784) (not e!441364))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68444 (= res!539784 (validMask!0 mask!3266))))

(assert (=> start!68444 e!441364))

(assert (=> start!68444 true))

(declare-fun array_inv!16443 (array!43185) Bool)

(assert (=> start!68444 (array_inv!16443 a!3170)))

(assert (= (and start!68444 res!539784) b!795090))

(assert (= (and b!795090 res!539787) b!795091))

(assert (= (and b!795091 res!539786) b!795095))

(assert (= (and b!795095 res!539782) b!795094))

(assert (= (and b!795094 res!539781) b!795098))

(assert (= (and b!795098 res!539785) b!795093))

(assert (= (and b!795093 res!539788) b!795099))

(assert (= (and b!795099 res!539780) b!795097))

(assert (= (and b!795097 res!539783) b!795096))

(assert (= (and b!795096 res!539779) b!795092))

(declare-fun m!735795 () Bool)

(assert (=> b!795092 m!735795))

(assert (=> b!795092 m!735795))

(declare-fun m!735797 () Bool)

(assert (=> b!795092 m!735797))

(assert (=> b!795092 m!735795))

(declare-fun m!735799 () Bool)

(assert (=> b!795092 m!735799))

(declare-fun m!735801 () Bool)

(assert (=> b!795099 m!735801))

(declare-fun m!735803 () Bool)

(assert (=> b!795096 m!735803))

(declare-fun m!735805 () Bool)

(assert (=> b!795096 m!735805))

(declare-fun m!735807 () Bool)

(assert (=> b!795096 m!735807))

(declare-fun m!735809 () Bool)

(assert (=> b!795096 m!735809))

(declare-fun m!735811 () Bool)

(assert (=> b!795093 m!735811))

(declare-fun m!735813 () Bool)

(assert (=> b!795097 m!735813))

(declare-fun m!735815 () Bool)

(assert (=> b!795097 m!735815))

(declare-fun m!735817 () Bool)

(assert (=> start!68444 m!735817))

(declare-fun m!735819 () Bool)

(assert (=> start!68444 m!735819))

(declare-fun m!735821 () Bool)

(assert (=> b!795098 m!735821))

(declare-fun m!735823 () Bool)

(assert (=> b!795095 m!735823))

(assert (=> b!795091 m!735795))

(assert (=> b!795091 m!735795))

(declare-fun m!735825 () Bool)

(assert (=> b!795091 m!735825))

(declare-fun m!735827 () Bool)

(assert (=> b!795094 m!735827))

(push 1)

