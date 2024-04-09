; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68110 () Bool)

(assert start!68110)

(declare-fun b!791913 () Bool)

(declare-fun res!536818 () Bool)

(declare-fun e!440036 () Bool)

(assert (=> b!791913 (=> (not res!536818) (not e!440036))))

(declare-datatypes ((array!42968 0))(
  ( (array!42969 (arr!20565 (Array (_ BitVec 32) (_ BitVec 64))) (size!20986 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42968)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42968 (_ BitVec 32)) Bool)

(assert (=> b!791913 (= res!536818 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!536822 () Bool)

(declare-fun e!440037 () Bool)

(assert (=> start!68110 (=> (not res!536822) (not e!440037))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68110 (= res!536822 (validMask!0 mask!3266))))

(assert (=> start!68110 e!440037))

(assert (=> start!68110 true))

(declare-fun array_inv!16339 (array!42968) Bool)

(assert (=> start!68110 (array_inv!16339 a!3170)))

(declare-fun b!791914 () Bool)

(declare-fun res!536819 () Bool)

(assert (=> b!791914 (=> (not res!536819) (not e!440037))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791914 (= res!536819 (validKeyInArray!0 (select (arr!20565 a!3170) j!153)))))

(declare-fun b!791915 () Bool)

(declare-fun res!536823 () Bool)

(assert (=> b!791915 (=> (not res!536823) (not e!440037))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!791915 (= res!536823 (validKeyInArray!0 k!2044))))

(declare-fun b!791916 () Bool)

(declare-fun res!536821 () Bool)

(assert (=> b!791916 (=> (not res!536821) (not e!440037))))

(declare-fun arrayContainsKey!0 (array!42968 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791916 (= res!536821 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!791917 () Bool)

(assert (=> b!791917 (= e!440036 (and (bvsle #b00000000000000000000000000000000 (size!20986 a!3170)) (bvsge (size!20986 a!3170) #b01111111111111111111111111111111)))))

(declare-fun b!791918 () Bool)

(assert (=> b!791918 (= e!440037 e!440036)))

(declare-fun res!536824 () Bool)

(assert (=> b!791918 (=> (not res!536824) (not e!440036))))

(declare-datatypes ((SeekEntryResult!8163 0))(
  ( (MissingZero!8163 (index!35019 (_ BitVec 32))) (Found!8163 (index!35020 (_ BitVec 32))) (Intermediate!8163 (undefined!8975 Bool) (index!35021 (_ BitVec 32)) (x!66002 (_ BitVec 32))) (Undefined!8163) (MissingVacant!8163 (index!35022 (_ BitVec 32))) )
))
(declare-fun lt!353305 () SeekEntryResult!8163)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!791918 (= res!536824 (or (= lt!353305 (MissingZero!8163 i!1163)) (= lt!353305 (MissingVacant!8163 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42968 (_ BitVec 32)) SeekEntryResult!8163)

(assert (=> b!791918 (= lt!353305 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!791919 () Bool)

(declare-fun res!536820 () Bool)

(assert (=> b!791919 (=> (not res!536820) (not e!440037))))

(assert (=> b!791919 (= res!536820 (and (= (size!20986 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20986 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20986 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68110 res!536822) b!791919))

(assert (= (and b!791919 res!536820) b!791914))

(assert (= (and b!791914 res!536819) b!791915))

(assert (= (and b!791915 res!536823) b!791916))

(assert (= (and b!791916 res!536821) b!791918))

(assert (= (and b!791918 res!536824) b!791913))

(assert (= (and b!791913 res!536818) b!791917))

(declare-fun m!732673 () Bool)

(assert (=> b!791913 m!732673))

(declare-fun m!732675 () Bool)

(assert (=> b!791916 m!732675))

(declare-fun m!732677 () Bool)

(assert (=> b!791918 m!732677))

(declare-fun m!732679 () Bool)

(assert (=> start!68110 m!732679))

(declare-fun m!732681 () Bool)

(assert (=> start!68110 m!732681))

(declare-fun m!732683 () Bool)

(assert (=> b!791915 m!732683))

(declare-fun m!732685 () Bool)

(assert (=> b!791914 m!732685))

(assert (=> b!791914 m!732685))

(declare-fun m!732687 () Bool)

(assert (=> b!791914 m!732687))

(push 1)

(assert (not b!791915))

(assert (not b!791913))

(assert (not b!791918))

(assert (not b!791916))

(assert (not b!791914))

(assert (not start!68110))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!792004 () Bool)

(declare-fun e!440087 () SeekEntryResult!8163)

(assert (=> b!792004 (= e!440087 Undefined!8163)))

(declare-fun b!792005 () Bool)

(declare-fun e!440089 () SeekEntryResult!8163)

(declare-fun lt!353336 () SeekEntryResult!8163)

(assert (=> b!792005 (= e!440089 (Found!8163 (index!35021 lt!353336)))))

(declare-fun d!103051 () Bool)

(declare-fun lt!353338 () SeekEntryResult!8163)

(assert (=> d!103051 (and (or (is-Undefined!8163 lt!353338) (not (is-Found!8163 lt!353338)) (and (bvsge (index!35020 lt!353338) #b00000000000000000000000000000000) (bvslt (index!35020 lt!353338) (size!20986 a!3170)))) (or (is-Undefined!8163 lt!353338) (is-Found!8163 lt!353338) (not (is-MissingZero!8163 lt!353338)) (and (bvsge (index!35019 lt!353338) #b00000000000000000000000000000000) (bvslt (index!35019 lt!353338) (size!20986 a!3170)))) (or (is-Undefined!8163 lt!353338) (is-Found!8163 lt!353338) (is-MissingZero!8163 lt!353338) (not (is-MissingVacant!8163 lt!353338)) (and (bvsge (index!35022 lt!353338) #b00000000000000000000000000000000) (bvslt (index!35022 lt!353338) (size!20986 a!3170)))) (or (is-Undefined!8163 lt!353338) (ite (is-Found!8163 lt!353338) (= (select (arr!20565 a!3170) (index!35020 lt!353338)) k!2044) (ite (is-MissingZero!8163 lt!353338) (= (select (arr!20565 a!3170) (index!35019 lt!353338)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8163 lt!353338) (= (select (arr!20565 a!3170) (index!35022 lt!353338)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103051 (= lt!353338 e!440087)))

(declare-fun c!87972 () Bool)

(assert (=> d!103051 (= c!87972 (and (is-Intermediate!8163 lt!353336) (undefined!8975 lt!353336)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42968 (_ BitVec 32)) SeekEntryResult!8163)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103051 (= lt!353336 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2044 mask!3266) k!2044 a!3170 mask!3266))))

(assert (=> d!103051 (validMask!0 mask!3266)))

(assert (=> d!103051 (= (seekEntryOrOpen!0 k!2044 a!3170 mask!3266) lt!353338)))

(declare-fun b!792006 () Bool)

(declare-fun c!87970 () Bool)

(declare-fun lt!353337 () (_ BitVec 64))

(assert (=> b!792006 (= c!87970 (= lt!353337 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!440088 () SeekEntryResult!8163)

(assert (=> b!792006 (= e!440089 e!440088)))

(declare-fun b!792007 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42968 (_ BitVec 32)) SeekEntryResult!8163)

(assert (=> b!792007 (= e!440088 (seekKeyOrZeroReturnVacant!0 (x!66002 lt!353336) (index!35021 lt!353336) (index!35021 lt!353336) k!2044 a!3170 mask!3266))))

(declare-fun b!792008 () Bool)

(assert (=> b!792008 (= e!440087 e!440089)))

(assert (=> b!792008 (= lt!353337 (select (arr!20565 a!3170) (index!35021 lt!353336)))))

(declare-fun c!87971 () Bool)

(assert (=> b!792008 (= c!87971 (= lt!353337 k!2044))))

(declare-fun b!792009 () Bool)

(assert (=> b!792009 (= e!440088 (MissingZero!8163 (index!35021 lt!353336)))))

(assert (= (and d!103051 c!87972) b!792004))

(assert (= (and d!103051 (not c!87972)) b!792008))

(assert (= (and b!792008 c!87971) b!792005))

(assert (= (and b!792008 (not c!87971)) b!792006))

(assert (= (and b!792006 c!87970) b!792009))

(assert (= (and b!792006 (not c!87970)) b!792007))

(declare-fun m!732747 () Bool)

(assert (=> d!103051 m!732747))

(assert (=> d!103051 m!732679))

(declare-fun m!732749 () Bool)

(assert (=> d!103051 m!732749))

(declare-fun m!732751 () Bool)

(assert (=> d!103051 m!732751))

(declare-fun m!732753 () Bool)

(assert (=> d!103051 m!732753))

(assert (=> d!103051 m!732753))

(declare-fun m!732755 () Bool)

(assert (=> d!103051 m!732755))

(declare-fun m!732757 () Bool)

(assert (=> b!792007 m!732757))

(declare-fun m!732759 () Bool)

(assert (=> b!792008 m!732759))

(assert (=> b!791918 d!103051))

(declare-fun b!792018 () Bool)

(declare-fun e!440096 () Bool)

(declare-fun call!35328 () Bool)

(assert (=> b!792018 (= e!440096 call!35328)))

(declare-fun b!792019 () Bool)

(declare-fun e!440097 () Bool)

(assert (=> b!792019 (= e!440097 e!440096)))

(declare-fun c!87975 () Bool)

(assert (=> b!792019 (= c!87975 (validKeyInArray!0 (select (arr!20565 a!3170) #b00000000000000000000000000000000)))))

(declare-fun d!103069 () Bool)

(declare-fun res!536889 () Bool)

(assert (=> d!103069 (=> res!536889 e!440097)))

(assert (=> d!103069 (= res!536889 (bvsge #b00000000000000000000000000000000 (size!20986 a!3170)))))

(assert (=> d!103069 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266) e!440097)))

(declare-fun bm!35325 () Bool)

(assert (=> bm!35325 (= call!35328 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3170 mask!3266))))

(declare-fun b!792020 () Bool)

(declare-fun e!440098 () Bool)

(assert (=> b!792020 (= e!440096 e!440098)))

(declare-fun lt!353345 () (_ BitVec 64))

(assert (=> b!792020 (= lt!353345 (select (arr!20565 a!3170) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!27428 0))(
  ( (Unit!27429) )
))
(declare-fun lt!353346 () Unit!27428)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42968 (_ BitVec 64) (_ BitVec 32)) Unit!27428)

(assert (=> b!792020 (= lt!353346 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3170 lt!353345 #b00000000000000000000000000000000))))

(assert (=> b!792020 (arrayContainsKey!0 a!3170 lt!353345 #b00000000000000000000000000000000)))

(declare-fun lt!353347 () Unit!27428)

(assert (=> b!792020 (= lt!353347 lt!353346)))

(declare-fun res!536890 () Bool)

(assert (=> b!792020 (= res!536890 (= (seekEntryOrOpen!0 (select (arr!20565 a!3170) #b00000000000000000000000000000000) a!3170 mask!3266) (Found!8163 #b00000000000000000000000000000000)))))

(assert (=> b!792020 (=> (not res!536890) (not e!440098))))

(declare-fun b!792021 () Bool)

(assert (=> b!792021 (= e!440098 call!35328)))

(assert (= (and d!103069 (not res!536889)) b!792019))

(assert (= (and b!792019 c!87975) b!792020))

(assert (= (and b!792019 (not c!87975)) b!792018))

(assert (= (and b!792020 res!536890) b!792021))

(assert (= (or b!792021 b!792018) bm!35325))

(declare-fun m!732761 () Bool)

(assert (=> b!792019 m!732761))

(assert (=> b!792019 m!732761))

(declare-fun m!732763 () Bool)

(assert (=> b!792019 m!732763))

(declare-fun m!732765 () Bool)

(assert (=> bm!35325 m!732765))

