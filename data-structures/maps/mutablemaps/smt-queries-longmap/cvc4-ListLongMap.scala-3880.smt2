; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53312 () Bool)

(assert start!53312)

(declare-fun b!579288 () Bool)

(declare-fun res!367254 () Bool)

(declare-fun e!332906 () Bool)

(assert (=> b!579288 (=> (not res!367254) (not e!332906))))

(declare-datatypes ((array!36167 0))(
  ( (array!36168 (arr!17354 (Array (_ BitVec 32) (_ BitVec 64))) (size!17718 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36167)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36167 (_ BitVec 32)) Bool)

(assert (=> b!579288 (= res!367254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!579289 () Bool)

(declare-fun res!367260 () Bool)

(declare-fun e!332908 () Bool)

(assert (=> b!579289 (=> (not res!367260) (not e!332908))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!579289 (= res!367260 (and (= (size!17718 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17718 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17718 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!367261 () Bool)

(assert (=> start!53312 (=> (not res!367261) (not e!332908))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53312 (= res!367261 (validMask!0 mask!3053))))

(assert (=> start!53312 e!332908))

(assert (=> start!53312 true))

(declare-fun array_inv!13128 (array!36167) Bool)

(assert (=> start!53312 (array_inv!13128 a!2986)))

(declare-fun b!579290 () Bool)

(declare-fun res!367256 () Bool)

(assert (=> b!579290 (=> (not res!367256) (not e!332906))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!579290 (= res!367256 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17354 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17354 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579291 () Bool)

(declare-fun res!367259 () Bool)

(assert (=> b!579291 (=> (not res!367259) (not e!332908))))

(declare-fun arrayContainsKey!0 (array!36167 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579291 (= res!367259 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!579292 () Bool)

(assert (=> b!579292 (= e!332908 e!332906)))

(declare-fun res!367258 () Bool)

(assert (=> b!579292 (=> (not res!367258) (not e!332906))))

(declare-datatypes ((SeekEntryResult!5801 0))(
  ( (MissingZero!5801 (index!25431 (_ BitVec 32))) (Found!5801 (index!25432 (_ BitVec 32))) (Intermediate!5801 (undefined!6613 Bool) (index!25433 (_ BitVec 32)) (x!54345 (_ BitVec 32))) (Undefined!5801) (MissingVacant!5801 (index!25434 (_ BitVec 32))) )
))
(declare-fun lt!264454 () SeekEntryResult!5801)

(assert (=> b!579292 (= res!367258 (or (= lt!264454 (MissingZero!5801 i!1108)) (= lt!264454 (MissingVacant!5801 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36167 (_ BitVec 32)) SeekEntryResult!5801)

(assert (=> b!579292 (= lt!264454 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!579293 () Bool)

(declare-fun res!367262 () Bool)

(assert (=> b!579293 (=> (not res!367262) (not e!332908))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579293 (= res!367262 (validKeyInArray!0 k!1786))))

(declare-fun b!579294 () Bool)

(declare-fun res!367255 () Bool)

(assert (=> b!579294 (=> (not res!367255) (not e!332906))))

(declare-datatypes ((List!11448 0))(
  ( (Nil!11445) (Cons!11444 (h!12489 (_ BitVec 64)) (t!17684 List!11448)) )
))
(declare-fun arrayNoDuplicates!0 (array!36167 (_ BitVec 32) List!11448) Bool)

(assert (=> b!579294 (= res!367255 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11445))))

(declare-fun b!579295 () Bool)

(assert (=> b!579295 (= e!332906 false)))

(declare-fun lt!264455 () SeekEntryResult!5801)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36167 (_ BitVec 32)) SeekEntryResult!5801)

(assert (=> b!579295 (= lt!264455 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17354 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579296 () Bool)

(declare-fun res!367257 () Bool)

(assert (=> b!579296 (=> (not res!367257) (not e!332908))))

(assert (=> b!579296 (= res!367257 (validKeyInArray!0 (select (arr!17354 a!2986) j!136)))))

(assert (= (and start!53312 res!367261) b!579289))

(assert (= (and b!579289 res!367260) b!579296))

(assert (= (and b!579296 res!367257) b!579293))

(assert (= (and b!579293 res!367262) b!579291))

(assert (= (and b!579291 res!367259) b!579292))

(assert (= (and b!579292 res!367258) b!579288))

(assert (= (and b!579288 res!367254) b!579294))

(assert (= (and b!579294 res!367255) b!579290))

(assert (= (and b!579290 res!367256) b!579295))

(declare-fun m!557957 () Bool)

(assert (=> b!579291 m!557957))

(declare-fun m!557959 () Bool)

(assert (=> b!579290 m!557959))

(declare-fun m!557961 () Bool)

(assert (=> b!579290 m!557961))

(declare-fun m!557963 () Bool)

(assert (=> b!579290 m!557963))

(declare-fun m!557965 () Bool)

(assert (=> b!579292 m!557965))

(declare-fun m!557967 () Bool)

(assert (=> b!579293 m!557967))

(declare-fun m!557969 () Bool)

(assert (=> b!579288 m!557969))

(declare-fun m!557971 () Bool)

(assert (=> b!579296 m!557971))

(assert (=> b!579296 m!557971))

(declare-fun m!557973 () Bool)

(assert (=> b!579296 m!557973))

(assert (=> b!579295 m!557971))

(assert (=> b!579295 m!557971))

(declare-fun m!557975 () Bool)

(assert (=> b!579295 m!557975))

(declare-fun m!557977 () Bool)

(assert (=> start!53312 m!557977))

(declare-fun m!557979 () Bool)

(assert (=> start!53312 m!557979))

(declare-fun m!557981 () Bool)

(assert (=> b!579294 m!557981))

(push 1)

(assert (not b!579295))

