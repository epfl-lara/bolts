; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69268 () Bool)

(assert start!69268)

(declare-fun b!807767 () Bool)

(declare-fun res!552065 () Bool)

(declare-fun e!447213 () Bool)

(assert (=> b!807767 (=> (not res!552065) (not e!447213))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807767 (= res!552065 (validKeyInArray!0 k!2044))))

(declare-fun b!807768 () Bool)

(declare-fun e!447211 () Bool)

(assert (=> b!807768 (= e!447211 false)))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!361947 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807768 (= lt!361947 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!807769 () Bool)

(declare-fun res!552070 () Bool)

(declare-fun e!447214 () Bool)

(assert (=> b!807769 (=> (not res!552070) (not e!447214))))

(declare-datatypes ((array!43919 0))(
  ( (array!43920 (arr!21033 (Array (_ BitVec 32) (_ BitVec 64))) (size!21454 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43919)

(declare-datatypes ((List!15049 0))(
  ( (Nil!15046) (Cons!15045 (h!16174 (_ BitVec 64)) (t!21372 List!15049)) )
))
(declare-fun arrayNoDuplicates!0 (array!43919 (_ BitVec 32) List!15049) Bool)

(assert (=> b!807769 (= res!552070 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15046))))

(declare-fun b!807770 () Bool)

(declare-fun e!447212 () Bool)

(assert (=> b!807770 (= e!447214 e!447212)))

(declare-fun res!552061 () Bool)

(assert (=> b!807770 (=> (not res!552061) (not e!447212))))

(declare-fun lt!361948 () array!43919)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!361943 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8631 0))(
  ( (MissingZero!8631 (index!36891 (_ BitVec 32))) (Found!8631 (index!36892 (_ BitVec 32))) (Intermediate!8631 (undefined!9443 Bool) (index!36893 (_ BitVec 32)) (x!67724 (_ BitVec 32))) (Undefined!8631) (MissingVacant!8631 (index!36894 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43919 (_ BitVec 32)) SeekEntryResult!8631)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43919 (_ BitVec 32)) SeekEntryResult!8631)

(assert (=> b!807770 (= res!552061 (= (seekEntryOrOpen!0 lt!361943 lt!361948 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361943 lt!361948 mask!3266)))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!807770 (= lt!361943 (select (store (arr!21033 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!807770 (= lt!361948 (array!43920 (store (arr!21033 a!3170) i!1163 k!2044) (size!21454 a!3170)))))

(declare-fun b!807771 () Bool)

(declare-fun res!552066 () Bool)

(assert (=> b!807771 (=> (not res!552066) (not e!447213))))

(assert (=> b!807771 (= res!552066 (and (= (size!21454 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21454 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21454 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!807772 () Bool)

(assert (=> b!807772 (= e!447212 e!447211)))

(declare-fun res!552069 () Bool)

(assert (=> b!807772 (=> (not res!552069) (not e!447211))))

(declare-fun lt!361946 () SeekEntryResult!8631)

(declare-fun lt!361945 () SeekEntryResult!8631)

(assert (=> b!807772 (= res!552069 (and (= lt!361946 lt!361945) (= lt!361945 (Found!8631 j!153)) (not (= (select (arr!21033 a!3170) index!1236) (select (arr!21033 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!807772 (= lt!361945 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21033 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!807772 (= lt!361946 (seekEntryOrOpen!0 (select (arr!21033 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!807773 () Bool)

(declare-fun res!552068 () Bool)

(assert (=> b!807773 (=> (not res!552068) (not e!447214))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43919 (_ BitVec 32)) Bool)

(assert (=> b!807773 (= res!552068 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!807774 () Bool)

(declare-fun res!552064 () Bool)

(assert (=> b!807774 (=> (not res!552064) (not e!447214))))

(assert (=> b!807774 (= res!552064 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21454 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21033 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21454 a!3170)) (= (select (arr!21033 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!807775 () Bool)

(declare-fun res!552067 () Bool)

(assert (=> b!807775 (=> (not res!552067) (not e!447213))))

(assert (=> b!807775 (= res!552067 (validKeyInArray!0 (select (arr!21033 a!3170) j!153)))))

(declare-fun b!807776 () Bool)

(declare-fun res!552060 () Bool)

(assert (=> b!807776 (=> (not res!552060) (not e!447213))))

(declare-fun arrayContainsKey!0 (array!43919 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807776 (= res!552060 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!807777 () Bool)

(assert (=> b!807777 (= e!447213 e!447214)))

(declare-fun res!552062 () Bool)

(assert (=> b!807777 (=> (not res!552062) (not e!447214))))

(declare-fun lt!361944 () SeekEntryResult!8631)

(assert (=> b!807777 (= res!552062 (or (= lt!361944 (MissingZero!8631 i!1163)) (= lt!361944 (MissingVacant!8631 i!1163))))))

(assert (=> b!807777 (= lt!361944 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!552063 () Bool)

(assert (=> start!69268 (=> (not res!552063) (not e!447213))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69268 (= res!552063 (validMask!0 mask!3266))))

(assert (=> start!69268 e!447213))

(assert (=> start!69268 true))

(declare-fun array_inv!16807 (array!43919) Bool)

(assert (=> start!69268 (array_inv!16807 a!3170)))

(assert (= (and start!69268 res!552063) b!807771))

(assert (= (and b!807771 res!552066) b!807775))

(assert (= (and b!807775 res!552067) b!807767))

(assert (= (and b!807767 res!552065) b!807776))

(assert (= (and b!807776 res!552060) b!807777))

(assert (= (and b!807777 res!552062) b!807773))

(assert (= (and b!807773 res!552068) b!807769))

(assert (= (and b!807769 res!552070) b!807774))

(assert (= (and b!807774 res!552064) b!807770))

(assert (= (and b!807770 res!552061) b!807772))

(assert (= (and b!807772 res!552069) b!807768))

(declare-fun m!749971 () Bool)

(assert (=> b!807772 m!749971))

(declare-fun m!749973 () Bool)

(assert (=> b!807772 m!749973))

(assert (=> b!807772 m!749973))

(declare-fun m!749975 () Bool)

(assert (=> b!807772 m!749975))

(assert (=> b!807772 m!749973))

(declare-fun m!749977 () Bool)

(assert (=> b!807772 m!749977))

(declare-fun m!749979 () Bool)

(assert (=> b!807776 m!749979))

(declare-fun m!749981 () Bool)

(assert (=> b!807777 m!749981))

(assert (=> b!807775 m!749973))

(assert (=> b!807775 m!749973))

(declare-fun m!749983 () Bool)

(assert (=> b!807775 m!749983))

(declare-fun m!749985 () Bool)

(assert (=> b!807774 m!749985))

(declare-fun m!749987 () Bool)

(assert (=> b!807774 m!749987))

(declare-fun m!749989 () Bool)

(assert (=> b!807773 m!749989))

(declare-fun m!749991 () Bool)

(assert (=> b!807769 m!749991))

(declare-fun m!749993 () Bool)

(assert (=> start!69268 m!749993))

(declare-fun m!749995 () Bool)

(assert (=> start!69268 m!749995))

(declare-fun m!749997 () Bool)

(assert (=> b!807767 m!749997))

(declare-fun m!749999 () Bool)

(assert (=> b!807768 m!749999))

(declare-fun m!750001 () Bool)

(assert (=> b!807770 m!750001))

(declare-fun m!750003 () Bool)

(assert (=> b!807770 m!750003))

(declare-fun m!750005 () Bool)

(assert (=> b!807770 m!750005))

(declare-fun m!750007 () Bool)

(assert (=> b!807770 m!750007))

(push 1)

