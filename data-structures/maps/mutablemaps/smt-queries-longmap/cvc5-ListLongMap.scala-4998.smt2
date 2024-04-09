; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68518 () Bool)

(assert start!68518)

(declare-fun b!796247 () Bool)

(declare-fun res!540937 () Bool)

(declare-fun e!441856 () Bool)

(assert (=> b!796247 (=> (not res!540937) (not e!441856))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796247 (= res!540937 (validKeyInArray!0 k!2044))))

(declare-fun b!796248 () Bool)

(declare-fun res!540944 () Bool)

(assert (=> b!796248 (=> (not res!540944) (not e!441856))))

(declare-datatypes ((array!43259 0))(
  ( (array!43260 (arr!20706 (Array (_ BitVec 32) (_ BitVec 64))) (size!21127 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43259)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!796248 (= res!540944 (validKeyInArray!0 (select (arr!20706 a!3170) j!153)))))

(declare-fun b!796249 () Bool)

(declare-fun e!441857 () Bool)

(declare-fun e!441855 () Bool)

(assert (=> b!796249 (= e!441857 e!441855)))

(declare-fun res!540945 () Bool)

(assert (=> b!796249 (=> (not res!540945) (not e!441855))))

(declare-datatypes ((SeekEntryResult!8304 0))(
  ( (MissingZero!8304 (index!35583 (_ BitVec 32))) (Found!8304 (index!35584 (_ BitVec 32))) (Intermediate!8304 (undefined!9116 Bool) (index!35585 (_ BitVec 32)) (x!66519 (_ BitVec 32))) (Undefined!8304) (MissingVacant!8304 (index!35586 (_ BitVec 32))) )
))
(declare-fun lt!355062 () SeekEntryResult!8304)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!355061 () SeekEntryResult!8304)

(assert (=> b!796249 (= res!540945 (and (= lt!355061 lt!355062) (= lt!355062 (Found!8304 j!153)) (= (select (arr!20706 a!3170) index!1236) (select (arr!20706 a!3170) j!153))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43259 (_ BitVec 32)) SeekEntryResult!8304)

(assert (=> b!796249 (= lt!355062 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20706 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43259 (_ BitVec 32)) SeekEntryResult!8304)

(assert (=> b!796249 (= lt!355061 (seekEntryOrOpen!0 (select (arr!20706 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!796250 () Bool)

(declare-fun res!540943 () Bool)

(declare-fun e!441858 () Bool)

(assert (=> b!796250 (=> (not res!540943) (not e!441858))))

(declare-datatypes ((List!14722 0))(
  ( (Nil!14719) (Cons!14718 (h!15847 (_ BitVec 64)) (t!21045 List!14722)) )
))
(declare-fun arrayNoDuplicates!0 (array!43259 (_ BitVec 32) List!14722) Bool)

(assert (=> b!796250 (= res!540943 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14719))))

(declare-fun b!796251 () Bool)

(declare-fun res!540939 () Bool)

(assert (=> b!796251 (=> (not res!540939) (not e!441856))))

(declare-fun arrayContainsKey!0 (array!43259 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!796251 (= res!540939 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!540938 () Bool)

(assert (=> start!68518 (=> (not res!540938) (not e!441856))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68518 (= res!540938 (validMask!0 mask!3266))))

(assert (=> start!68518 e!441856))

(assert (=> start!68518 true))

(declare-fun array_inv!16480 (array!43259) Bool)

(assert (=> start!68518 (array_inv!16480 a!3170)))

(declare-fun b!796252 () Bool)

(declare-fun res!540940 () Bool)

(assert (=> b!796252 (=> (not res!540940) (not e!441858))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!796252 (= res!540940 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21127 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20706 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21127 a!3170)) (= (select (arr!20706 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!796253 () Bool)

(assert (=> b!796253 (= e!441856 e!441858)))

(declare-fun res!540941 () Bool)

(assert (=> b!796253 (=> (not res!540941) (not e!441858))))

(declare-fun lt!355057 () SeekEntryResult!8304)

(assert (=> b!796253 (= res!540941 (or (= lt!355057 (MissingZero!8304 i!1163)) (= lt!355057 (MissingVacant!8304 i!1163))))))

(assert (=> b!796253 (= lt!355057 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!796254 () Bool)

(assert (=> b!796254 (= e!441858 e!441857)))

(declare-fun res!540936 () Bool)

(assert (=> b!796254 (=> (not res!540936) (not e!441857))))

(declare-fun lt!355060 () SeekEntryResult!8304)

(declare-fun lt!355058 () SeekEntryResult!8304)

(assert (=> b!796254 (= res!540936 (= lt!355060 lt!355058))))

(declare-fun lt!355059 () array!43259)

(declare-fun lt!355063 () (_ BitVec 64))

(assert (=> b!796254 (= lt!355058 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355063 lt!355059 mask!3266))))

(assert (=> b!796254 (= lt!355060 (seekEntryOrOpen!0 lt!355063 lt!355059 mask!3266))))

(assert (=> b!796254 (= lt!355063 (select (store (arr!20706 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!796254 (= lt!355059 (array!43260 (store (arr!20706 a!3170) i!1163 k!2044) (size!21127 a!3170)))))

(declare-fun b!796255 () Bool)

(declare-fun res!540942 () Bool)

(assert (=> b!796255 (=> (not res!540942) (not e!441856))))

(assert (=> b!796255 (= res!540942 (and (= (size!21127 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21127 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21127 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!796256 () Bool)

(assert (=> b!796256 (= e!441855 (not true))))

(assert (=> b!796256 (= lt!355058 (Found!8304 index!1236))))

(declare-fun b!796257 () Bool)

(declare-fun res!540946 () Bool)

(assert (=> b!796257 (=> (not res!540946) (not e!441858))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43259 (_ BitVec 32)) Bool)

(assert (=> b!796257 (= res!540946 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(assert (= (and start!68518 res!540938) b!796255))

(assert (= (and b!796255 res!540942) b!796248))

(assert (= (and b!796248 res!540944) b!796247))

(assert (= (and b!796247 res!540937) b!796251))

(assert (= (and b!796251 res!540939) b!796253))

(assert (= (and b!796253 res!540941) b!796257))

(assert (= (and b!796257 res!540946) b!796250))

(assert (= (and b!796250 res!540943) b!796252))

(assert (= (and b!796252 res!540940) b!796254))

(assert (= (and b!796254 res!540936) b!796249))

(assert (= (and b!796249 res!540945) b!796256))

(declare-fun m!737125 () Bool)

(assert (=> b!796257 m!737125))

(declare-fun m!737127 () Bool)

(assert (=> b!796250 m!737127))

(declare-fun m!737129 () Bool)

(assert (=> b!796253 m!737129))

(declare-fun m!737131 () Bool)

(assert (=> b!796251 m!737131))

(declare-fun m!737133 () Bool)

(assert (=> b!796252 m!737133))

(declare-fun m!737135 () Bool)

(assert (=> b!796252 m!737135))

(declare-fun m!737137 () Bool)

(assert (=> b!796249 m!737137))

(declare-fun m!737139 () Bool)

(assert (=> b!796249 m!737139))

(assert (=> b!796249 m!737139))

(declare-fun m!737141 () Bool)

(assert (=> b!796249 m!737141))

(assert (=> b!796249 m!737139))

(declare-fun m!737143 () Bool)

(assert (=> b!796249 m!737143))

(declare-fun m!737145 () Bool)

(assert (=> b!796247 m!737145))

(declare-fun m!737147 () Bool)

(assert (=> b!796254 m!737147))

(declare-fun m!737149 () Bool)

(assert (=> b!796254 m!737149))

(declare-fun m!737151 () Bool)

(assert (=> b!796254 m!737151))

(declare-fun m!737153 () Bool)

(assert (=> b!796254 m!737153))

(declare-fun m!737155 () Bool)

(assert (=> start!68518 m!737155))

(declare-fun m!737157 () Bool)

(assert (=> start!68518 m!737157))

(assert (=> b!796248 m!737139))

(assert (=> b!796248 m!737139))

(declare-fun m!737159 () Bool)

(assert (=> b!796248 m!737159))

(push 1)

