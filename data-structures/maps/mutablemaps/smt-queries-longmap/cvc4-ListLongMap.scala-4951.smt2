; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68114 () Bool)

(assert start!68114)

(declare-fun b!791955 () Bool)

(declare-fun e!440054 () Bool)

(declare-datatypes ((array!42972 0))(
  ( (array!42973 (arr!20567 (Array (_ BitVec 32) (_ BitVec 64))) (size!20988 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42972)

(assert (=> b!791955 (= e!440054 (and (bvsle #b00000000000000000000000000000000 (size!20988 a!3170)) (bvsge (size!20988 a!3170) #b01111111111111111111111111111111)))))

(declare-fun b!791956 () Bool)

(declare-fun res!536861 () Bool)

(declare-fun e!440056 () Bool)

(assert (=> b!791956 (=> (not res!536861) (not e!440056))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791956 (= res!536861 (validKeyInArray!0 (select (arr!20567 a!3170) j!153)))))

(declare-fun b!791957 () Bool)

(declare-fun res!536860 () Bool)

(assert (=> b!791957 (=> (not res!536860) (not e!440054))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42972 (_ BitVec 32)) Bool)

(assert (=> b!791957 (= res!536860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!791958 () Bool)

(declare-fun res!536864 () Bool)

(assert (=> b!791958 (=> (not res!536864) (not e!440056))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!791958 (= res!536864 (validKeyInArray!0 k!2044))))

(declare-fun b!791959 () Bool)

(declare-fun res!536865 () Bool)

(assert (=> b!791959 (=> (not res!536865) (not e!440056))))

(declare-fun arrayContainsKey!0 (array!42972 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791959 (= res!536865 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!791960 () Bool)

(declare-fun res!536866 () Bool)

(assert (=> b!791960 (=> (not res!536866) (not e!440056))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!791960 (= res!536866 (and (= (size!20988 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20988 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20988 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!791961 () Bool)

(assert (=> b!791961 (= e!440056 e!440054)))

(declare-fun res!536863 () Bool)

(assert (=> b!791961 (=> (not res!536863) (not e!440054))))

(declare-datatypes ((SeekEntryResult!8165 0))(
  ( (MissingZero!8165 (index!35027 (_ BitVec 32))) (Found!8165 (index!35028 (_ BitVec 32))) (Intermediate!8165 (undefined!8977 Bool) (index!35029 (_ BitVec 32)) (x!66004 (_ BitVec 32))) (Undefined!8165) (MissingVacant!8165 (index!35030 (_ BitVec 32))) )
))
(declare-fun lt!353311 () SeekEntryResult!8165)

(assert (=> b!791961 (= res!536863 (or (= lt!353311 (MissingZero!8165 i!1163)) (= lt!353311 (MissingVacant!8165 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42972 (_ BitVec 32)) SeekEntryResult!8165)

(assert (=> b!791961 (= lt!353311 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!536862 () Bool)

(assert (=> start!68114 (=> (not res!536862) (not e!440056))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68114 (= res!536862 (validMask!0 mask!3266))))

(assert (=> start!68114 e!440056))

(assert (=> start!68114 true))

(declare-fun array_inv!16341 (array!42972) Bool)

(assert (=> start!68114 (array_inv!16341 a!3170)))

(assert (= (and start!68114 res!536862) b!791960))

(assert (= (and b!791960 res!536866) b!791956))

(assert (= (and b!791956 res!536861) b!791958))

(assert (= (and b!791958 res!536864) b!791959))

(assert (= (and b!791959 res!536865) b!791961))

(assert (= (and b!791961 res!536863) b!791957))

(assert (= (and b!791957 res!536860) b!791955))

(declare-fun m!732705 () Bool)

(assert (=> b!791956 m!732705))

(assert (=> b!791956 m!732705))

(declare-fun m!732707 () Bool)

(assert (=> b!791956 m!732707))

(declare-fun m!732709 () Bool)

(assert (=> b!791958 m!732709))

(declare-fun m!732711 () Bool)

(assert (=> b!791961 m!732711))

(declare-fun m!732713 () Bool)

(assert (=> b!791957 m!732713))

(declare-fun m!732715 () Bool)

(assert (=> b!791959 m!732715))

(declare-fun m!732717 () Bool)

(assert (=> start!68114 m!732717))

(declare-fun m!732719 () Bool)

(assert (=> start!68114 m!732719))

(push 1)

(assert (not start!68114))

(assert (not b!791956))

(assert (not b!791958))

(assert (not b!791961))

(assert (not b!791959))

(assert (not b!791957))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!103055 () Bool)

(assert (=> d!103055 (= (validKeyInArray!0 k!2044) (and (not (= k!2044 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2044 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!791958 d!103055))

(declare-fun bm!35322 () Bool)

(declare-fun call!35325 () Bool)

(assert (=> bm!35322 (= call!35325 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3170 mask!3266))))

(declare-fun b!791982 () Bool)

(declare-fun e!440074 () Bool)

(declare-fun e!440072 () Bool)

(assert (=> b!791982 (= e!440074 e!440072)))

(declare-fun c!87963 () Bool)

(assert (=> b!791982 (= c!87963 (validKeyInArray!0 (select (arr!20567 a!3170) #b00000000000000000000000000000000)))))

(declare-fun d!103057 () Bool)

(declare-fun res!536878 () Bool)

(assert (=> d!103057 (=> res!536878 e!440074)))

(assert (=> d!103057 (= res!536878 (bvsge #b00000000000000000000000000000000 (size!20988 a!3170)))))

(assert (=> d!103057 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266) e!440074)))

(declare-fun b!791983 () Bool)

(assert (=> b!791983 (= e!440072 call!35325)))

(declare-fun b!791984 () Bool)

(declare-fun e!440073 () Bool)

(assert (=> b!791984 (= e!440072 e!440073)))

(declare-fun lt!353329 () (_ BitVec 64))

(assert (=> b!791984 (= lt!353329 (select (arr!20567 a!3170) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!27426 0))(
  ( (Unit!27427) )
))
(declare-fun lt!353328 () Unit!27426)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42972 (_ BitVec 64) (_ BitVec 32)) Unit!27426)

(assert (=> b!791984 (= lt!353328 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3170 lt!353329 #b00000000000000000000000000000000))))

(assert (=> b!791984 (arrayContainsKey!0 a!3170 lt!353329 #b00000000000000000000000000000000)))

(declare-fun lt!353327 () Unit!27426)

(assert (=> b!791984 (= lt!353327 lt!353328)))

(declare-fun res!536877 () Bool)

(assert (=> b!791984 (= res!536877 (= (seekEntryOrOpen!0 (select (arr!20567 a!3170) #b00000000000000000000000000000000) a!3170 mask!3266) (Found!8165 #b00000000000000000000000000000000)))))

(assert (=> b!791984 (=> (not res!536877) (not e!440073))))

(declare-fun b!791985 () Bool)

(assert (=> b!791985 (= e!440073 call!35325)))

(assert (= (and d!103057 (not res!536878)) b!791982))

(assert (= (and b!791982 c!87963) b!791984))

(assert (= (and b!791982 (not c!87963)) b!791983))

(assert (= (and b!791984 res!536877) b!791985))

(assert (= (or b!791985 b!791983) bm!35322))

(declare-fun m!732733 () Bool)

(assert (=> bm!35322 m!732733))

(declare-fun m!732735 () Bool)

(assert (=> b!791982 m!732735))

(assert (=> b!791982 m!732735))

(declare-fun m!732737 () Bool)

(assert (=> b!791982 m!732737))

(assert (=> b!791984 m!732735))

(declare-fun m!732739 () Bool)

(assert (=> b!791984 m!732739))

(declare-fun m!732741 () Bool)

(assert (=> b!791984 m!732741))

(assert (=> b!791984 m!732735))

(declare-fun m!732743 () Bool)

(assert (=> b!791984 m!732743))

(assert (=> b!791957 d!103057))

(declare-fun d!103063 () Bool)

(assert (=> d!103063 (= (validKeyInArray!0 (select (arr!20567 a!3170) j!153)) (and (not (= (select (arr!20567 a!3170) j!153) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20567 a!3170) j!153) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!791956 d!103063))

(declare-fun b!792046 () Bool)

(declare-fun e!440111 () SeekEntryResult!8165)

(assert (=> b!792046 (= e!440111 Undefined!8165)))

(declare-fun e!440113 () SeekEntryResult!8165)

(declare-fun lt!353360 () SeekEntryResult!8165)

(declare-fun b!792047 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42972 (_ BitVec 32)) SeekEntryResult!8165)

(assert (=> b!792047 (= e!440113 (seekKeyOrZeroReturnVacant!0 (x!66004 lt!353360) (index!35029 lt!353360) (index!35029 lt!353360) k!2044 a!3170 mask!3266))))

(declare-fun b!792048 () Bool)

(declare-fun e!440112 () SeekEntryResult!8165)

(assert (=> b!792048 (= e!440111 e!440112)))

(declare-fun lt!353362 () (_ BitVec 64))

(assert (=> b!792048 (= lt!353362 (select (arr!20567 a!3170) (index!35029 lt!353360)))))

(declare-fun c!87988 () Bool)

