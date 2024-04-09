; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68578 () Bool)

(assert start!68578)

(declare-fun b!797275 () Bool)

(declare-fun res!541968 () Bool)

(declare-fun e!442346 () Bool)

(assert (=> b!797275 (=> (not res!541968) (not e!442346))))

(declare-datatypes ((array!43319 0))(
  ( (array!43320 (arr!20736 (Array (_ BitVec 32) (_ BitVec 64))) (size!21157 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43319)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43319 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!797275 (= res!541968 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!797276 () Bool)

(declare-fun res!541973 () Bool)

(declare-fun e!442347 () Bool)

(assert (=> b!797276 (=> (not res!541973) (not e!442347))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!797276 (= res!541973 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21157 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20736 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21157 a!3170)) (= (select (arr!20736 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!797278 () Bool)

(declare-fun res!541966 () Bool)

(assert (=> b!797278 (=> (not res!541966) (not e!442346))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!797278 (= res!541966 (and (= (size!21157 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21157 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21157 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!797279 () Bool)

(assert (=> b!797279 (= e!442346 e!442347)))

(declare-fun res!541965 () Bool)

(assert (=> b!797279 (=> (not res!541965) (not e!442347))))

(declare-datatypes ((SeekEntryResult!8334 0))(
  ( (MissingZero!8334 (index!35703 (_ BitVec 32))) (Found!8334 (index!35704 (_ BitVec 32))) (Intermediate!8334 (undefined!9146 Bool) (index!35705 (_ BitVec 32)) (x!66629 (_ BitVec 32))) (Undefined!8334) (MissingVacant!8334 (index!35706 (_ BitVec 32))) )
))
(declare-fun lt!355718 () SeekEntryResult!8334)

(assert (=> b!797279 (= res!541965 (or (= lt!355718 (MissingZero!8334 i!1163)) (= lt!355718 (MissingVacant!8334 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43319 (_ BitVec 32)) SeekEntryResult!8334)

(assert (=> b!797279 (= lt!355718 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!797280 () Bool)

(declare-fun e!442345 () Bool)

(assert (=> b!797280 (= e!442347 e!442345)))

(declare-fun res!541972 () Bool)

(assert (=> b!797280 (=> (not res!541972) (not e!442345))))

(declare-fun lt!355720 () SeekEntryResult!8334)

(declare-fun lt!355716 () SeekEntryResult!8334)

(assert (=> b!797280 (= res!541972 (= lt!355720 lt!355716))))

(declare-fun lt!355722 () (_ BitVec 64))

(declare-fun lt!355719 () array!43319)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43319 (_ BitVec 32)) SeekEntryResult!8334)

(assert (=> b!797280 (= lt!355716 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355722 lt!355719 mask!3266))))

(assert (=> b!797280 (= lt!355720 (seekEntryOrOpen!0 lt!355722 lt!355719 mask!3266))))

(assert (=> b!797280 (= lt!355722 (select (store (arr!20736 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!797280 (= lt!355719 (array!43320 (store (arr!20736 a!3170) i!1163 k!2044) (size!21157 a!3170)))))

(declare-fun b!797281 () Bool)

(declare-fun res!541971 () Bool)

(assert (=> b!797281 (=> (not res!541971) (not e!442347))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43319 (_ BitVec 32)) Bool)

(assert (=> b!797281 (= res!541971 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!797277 () Bool)

(declare-fun e!442348 () Bool)

(declare-fun e!442344 () Bool)

(assert (=> b!797277 (= e!442348 e!442344)))

(declare-fun res!541974 () Bool)

(assert (=> b!797277 (=> (not res!541974) (not e!442344))))

(declare-fun lt!355721 () SeekEntryResult!8334)

(declare-fun lt!355717 () SeekEntryResult!8334)

(assert (=> b!797277 (= res!541974 (and (= lt!355717 lt!355721) (= (select (arr!20736 a!3170) index!1236) (select (arr!20736 a!3170) j!153))))))

(assert (=> b!797277 (= lt!355721 (Found!8334 j!153))))

(declare-fun res!541967 () Bool)

(assert (=> start!68578 (=> (not res!541967) (not e!442346))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68578 (= res!541967 (validMask!0 mask!3266))))

(assert (=> start!68578 e!442346))

(assert (=> start!68578 true))

(declare-fun array_inv!16510 (array!43319) Bool)

(assert (=> start!68578 (array_inv!16510 a!3170)))

(declare-fun b!797282 () Bool)

(declare-fun res!541970 () Bool)

(assert (=> b!797282 (=> (not res!541970) (not e!442347))))

(declare-datatypes ((List!14752 0))(
  ( (Nil!14749) (Cons!14748 (h!15877 (_ BitVec 64)) (t!21075 List!14752)) )
))
(declare-fun arrayNoDuplicates!0 (array!43319 (_ BitVec 32) List!14752) Bool)

(assert (=> b!797282 (= res!541970 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14749))))

(declare-fun b!797283 () Bool)

(declare-fun res!541975 () Bool)

(assert (=> b!797283 (=> (not res!541975) (not e!442346))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!797283 (= res!541975 (validKeyInArray!0 (select (arr!20736 a!3170) j!153)))))

(declare-fun b!797284 () Bool)

(declare-fun res!541964 () Bool)

(assert (=> b!797284 (=> (not res!541964) (not e!442346))))

(assert (=> b!797284 (= res!541964 (validKeyInArray!0 k!2044))))

(declare-fun b!797285 () Bool)

(assert (=> b!797285 (= e!442344 (not (or (not (= lt!355716 lt!355721)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (= (select (store (arr!20736 a!3170) i!1163 k!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!797285 (= lt!355716 (Found!8334 index!1236))))

(declare-fun b!797286 () Bool)

(assert (=> b!797286 (= e!442345 e!442348)))

(declare-fun res!541969 () Bool)

(assert (=> b!797286 (=> (not res!541969) (not e!442348))))

(declare-fun lt!355723 () SeekEntryResult!8334)

(assert (=> b!797286 (= res!541969 (= lt!355723 lt!355717))))

(assert (=> b!797286 (= lt!355717 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20736 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!797286 (= lt!355723 (seekEntryOrOpen!0 (select (arr!20736 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!68578 res!541967) b!797278))

(assert (= (and b!797278 res!541966) b!797283))

(assert (= (and b!797283 res!541975) b!797284))

(assert (= (and b!797284 res!541964) b!797275))

(assert (= (and b!797275 res!541968) b!797279))

(assert (= (and b!797279 res!541965) b!797281))

(assert (= (and b!797281 res!541971) b!797282))

(assert (= (and b!797282 res!541970) b!797276))

(assert (= (and b!797276 res!541973) b!797280))

(assert (= (and b!797280 res!541972) b!797286))

(assert (= (and b!797286 res!541969) b!797277))

(assert (= (and b!797277 res!541974) b!797285))

(declare-fun m!738223 () Bool)

(assert (=> b!797286 m!738223))

(assert (=> b!797286 m!738223))

(declare-fun m!738225 () Bool)

(assert (=> b!797286 m!738225))

(assert (=> b!797286 m!738223))

(declare-fun m!738227 () Bool)

(assert (=> b!797286 m!738227))

(declare-fun m!738229 () Bool)

(assert (=> b!797275 m!738229))

(declare-fun m!738231 () Bool)

(assert (=> b!797279 m!738231))

(declare-fun m!738233 () Bool)

(assert (=> start!68578 m!738233))

(declare-fun m!738235 () Bool)

(assert (=> start!68578 m!738235))

(declare-fun m!738237 () Bool)

(assert (=> b!797281 m!738237))

(assert (=> b!797283 m!738223))

(assert (=> b!797283 m!738223))

(declare-fun m!738239 () Bool)

(assert (=> b!797283 m!738239))

(declare-fun m!738241 () Bool)

(assert (=> b!797282 m!738241))

(declare-fun m!738243 () Bool)

(assert (=> b!797276 m!738243))

(declare-fun m!738245 () Bool)

(assert (=> b!797276 m!738245))

(declare-fun m!738247 () Bool)

(assert (=> b!797285 m!738247))

(declare-fun m!738249 () Bool)

(assert (=> b!797285 m!738249))

(declare-fun m!738251 () Bool)

(assert (=> b!797277 m!738251))

(assert (=> b!797277 m!738223))

(declare-fun m!738253 () Bool)

(assert (=> b!797280 m!738253))

(declare-fun m!738255 () Bool)

(assert (=> b!797280 m!738255))

(assert (=> b!797280 m!738247))

(declare-fun m!738257 () Bool)

(assert (=> b!797280 m!738257))

(declare-fun m!738259 () Bool)

(assert (=> b!797284 m!738259))

(push 1)

