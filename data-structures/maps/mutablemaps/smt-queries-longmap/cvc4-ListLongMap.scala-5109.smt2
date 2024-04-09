; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69284 () Bool)

(assert start!69284)

(declare-fun b!808031 () Bool)

(declare-fun e!447333 () Bool)

(assert (=> b!808031 (= e!447333 false)))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!362088 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!808031 (= lt!362088 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!808032 () Bool)

(declare-fun res!552327 () Bool)

(declare-fun e!447330 () Bool)

(assert (=> b!808032 (=> (not res!552327) (not e!447330))))

(declare-datatypes ((array!43935 0))(
  ( (array!43936 (arr!21041 (Array (_ BitVec 32) (_ BitVec 64))) (size!21462 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43935)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!808032 (= res!552327 (validKeyInArray!0 (select (arr!21041 a!3170) j!153)))))

(declare-fun b!808033 () Bool)

(declare-fun res!552332 () Bool)

(assert (=> b!808033 (=> (not res!552332) (not e!447330))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!808033 (= res!552332 (validKeyInArray!0 k!2044))))

(declare-fun b!808034 () Bool)

(declare-fun e!447334 () Bool)

(declare-fun e!447332 () Bool)

(assert (=> b!808034 (= e!447334 e!447332)))

(declare-fun res!552324 () Bool)

(assert (=> b!808034 (=> (not res!552324) (not e!447332))))

(declare-fun lt!362089 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!362090 () array!43935)

(declare-datatypes ((SeekEntryResult!8639 0))(
  ( (MissingZero!8639 (index!36923 (_ BitVec 32))) (Found!8639 (index!36924 (_ BitVec 32))) (Intermediate!8639 (undefined!9451 Bool) (index!36925 (_ BitVec 32)) (x!67748 (_ BitVec 32))) (Undefined!8639) (MissingVacant!8639 (index!36926 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43935 (_ BitVec 32)) SeekEntryResult!8639)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43935 (_ BitVec 32)) SeekEntryResult!8639)

(assert (=> b!808034 (= res!552324 (= (seekEntryOrOpen!0 lt!362089 lt!362090 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362089 lt!362090 mask!3266)))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!808034 (= lt!362089 (select (store (arr!21041 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!808034 (= lt!362090 (array!43936 (store (arr!21041 a!3170) i!1163 k!2044) (size!21462 a!3170)))))

(declare-fun b!808035 () Bool)

(declare-fun res!552330 () Bool)

(assert (=> b!808035 (=> (not res!552330) (not e!447330))))

(declare-fun arrayContainsKey!0 (array!43935 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!808035 (= res!552330 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!552325 () Bool)

(assert (=> start!69284 (=> (not res!552325) (not e!447330))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69284 (= res!552325 (validMask!0 mask!3266))))

(assert (=> start!69284 e!447330))

(assert (=> start!69284 true))

(declare-fun array_inv!16815 (array!43935) Bool)

(assert (=> start!69284 (array_inv!16815 a!3170)))

(declare-fun b!808036 () Bool)

(assert (=> b!808036 (= e!447330 e!447334)))

(declare-fun res!552326 () Bool)

(assert (=> b!808036 (=> (not res!552326) (not e!447334))))

(declare-fun lt!362091 () SeekEntryResult!8639)

(assert (=> b!808036 (= res!552326 (or (= lt!362091 (MissingZero!8639 i!1163)) (= lt!362091 (MissingVacant!8639 i!1163))))))

(assert (=> b!808036 (= lt!362091 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!808037 () Bool)

(declare-fun res!552329 () Bool)

(assert (=> b!808037 (=> (not res!552329) (not e!447330))))

(assert (=> b!808037 (= res!552329 (and (= (size!21462 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21462 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21462 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!808038 () Bool)

(assert (=> b!808038 (= e!447332 e!447333)))

(declare-fun res!552331 () Bool)

(assert (=> b!808038 (=> (not res!552331) (not e!447333))))

(declare-fun lt!362087 () SeekEntryResult!8639)

(declare-fun lt!362092 () SeekEntryResult!8639)

(assert (=> b!808038 (= res!552331 (and (= lt!362092 lt!362087) (= lt!362087 (Found!8639 j!153)) (not (= (select (arr!21041 a!3170) index!1236) (select (arr!21041 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!808038 (= lt!362087 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21041 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!808038 (= lt!362092 (seekEntryOrOpen!0 (select (arr!21041 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!808039 () Bool)

(declare-fun res!552334 () Bool)

(assert (=> b!808039 (=> (not res!552334) (not e!447334))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43935 (_ BitVec 32)) Bool)

(assert (=> b!808039 (= res!552334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!808040 () Bool)

(declare-fun res!552333 () Bool)

(assert (=> b!808040 (=> (not res!552333) (not e!447334))))

(declare-datatypes ((List!15057 0))(
  ( (Nil!15054) (Cons!15053 (h!16182 (_ BitVec 64)) (t!21380 List!15057)) )
))
(declare-fun arrayNoDuplicates!0 (array!43935 (_ BitVec 32) List!15057) Bool)

(assert (=> b!808040 (= res!552333 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15054))))

(declare-fun b!808041 () Bool)

(declare-fun res!552328 () Bool)

(assert (=> b!808041 (=> (not res!552328) (not e!447334))))

(assert (=> b!808041 (= res!552328 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21462 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21041 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21462 a!3170)) (= (select (arr!21041 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!69284 res!552325) b!808037))

(assert (= (and b!808037 res!552329) b!808032))

(assert (= (and b!808032 res!552327) b!808033))

(assert (= (and b!808033 res!552332) b!808035))

(assert (= (and b!808035 res!552330) b!808036))

(assert (= (and b!808036 res!552326) b!808039))

(assert (= (and b!808039 res!552334) b!808040))

(assert (= (and b!808040 res!552333) b!808041))

(assert (= (and b!808041 res!552328) b!808034))

(assert (= (and b!808034 res!552324) b!808038))

(assert (= (and b!808038 res!552331) b!808031))

(declare-fun m!750275 () Bool)

(assert (=> start!69284 m!750275))

(declare-fun m!750277 () Bool)

(assert (=> start!69284 m!750277))

(declare-fun m!750279 () Bool)

(assert (=> b!808031 m!750279))

(declare-fun m!750281 () Bool)

(assert (=> b!808035 m!750281))

(declare-fun m!750283 () Bool)

(assert (=> b!808033 m!750283))

(declare-fun m!750285 () Bool)

(assert (=> b!808040 m!750285))

(declare-fun m!750287 () Bool)

(assert (=> b!808032 m!750287))

(assert (=> b!808032 m!750287))

(declare-fun m!750289 () Bool)

(assert (=> b!808032 m!750289))

(declare-fun m!750291 () Bool)

(assert (=> b!808034 m!750291))

(declare-fun m!750293 () Bool)

(assert (=> b!808034 m!750293))

(declare-fun m!750295 () Bool)

(assert (=> b!808034 m!750295))

(declare-fun m!750297 () Bool)

(assert (=> b!808034 m!750297))

(declare-fun m!750299 () Bool)

(assert (=> b!808036 m!750299))

(declare-fun m!750301 () Bool)

(assert (=> b!808039 m!750301))

(declare-fun m!750303 () Bool)

(assert (=> b!808041 m!750303))

(declare-fun m!750305 () Bool)

(assert (=> b!808041 m!750305))

(declare-fun m!750307 () Bool)

(assert (=> b!808038 m!750307))

(assert (=> b!808038 m!750287))

(assert (=> b!808038 m!750287))

(declare-fun m!750309 () Bool)

(assert (=> b!808038 m!750309))

(assert (=> b!808038 m!750287))

(declare-fun m!750311 () Bool)

(assert (=> b!808038 m!750311))

(push 1)

