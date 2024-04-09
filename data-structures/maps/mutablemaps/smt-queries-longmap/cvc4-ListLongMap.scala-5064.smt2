; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68918 () Bool)

(assert start!68918)

(declare-fun b!803405 () Bool)

(declare-fun e!445201 () Bool)

(declare-fun e!445197 () Bool)

(assert (=> b!803405 (= e!445201 e!445197)))

(declare-fun res!548101 () Bool)

(assert (=> b!803405 (=> (not res!548101) (not e!445197))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43659 0))(
  ( (array!43660 (arr!20906 (Array (_ BitVec 32) (_ BitVec 64))) (size!21327 (_ BitVec 32))) )
))
(declare-fun lt!359640 () array!43659)

(declare-fun lt!359638 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8504 0))(
  ( (MissingZero!8504 (index!36383 (_ BitVec 32))) (Found!8504 (index!36384 (_ BitVec 32))) (Intermediate!8504 (undefined!9316 Bool) (index!36385 (_ BitVec 32)) (x!67247 (_ BitVec 32))) (Undefined!8504) (MissingVacant!8504 (index!36386 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43659 (_ BitVec 32)) SeekEntryResult!8504)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43659 (_ BitVec 32)) SeekEntryResult!8504)

(assert (=> b!803405 (= res!548101 (= (seekEntryOrOpen!0 lt!359638 lt!359640 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359638 lt!359640 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43659)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!803405 (= lt!359638 (select (store (arr!20906 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!803405 (= lt!359640 (array!43660 (store (arr!20906 a!3170) i!1163 k!2044) (size!21327 a!3170)))))

(declare-fun b!803406 () Bool)

(declare-fun res!548099 () Bool)

(declare-fun e!445198 () Bool)

(assert (=> b!803406 (=> (not res!548099) (not e!445198))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803406 (= res!548099 (validKeyInArray!0 (select (arr!20906 a!3170) j!153)))))

(declare-fun b!803407 () Bool)

(declare-fun res!548102 () Bool)

(assert (=> b!803407 (=> (not res!548102) (not e!445201))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43659 (_ BitVec 32)) Bool)

(assert (=> b!803407 (= res!548102 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!803408 () Bool)

(declare-fun e!445200 () Bool)

(assert (=> b!803408 (= e!445197 e!445200)))

(declare-fun res!548097 () Bool)

(assert (=> b!803408 (=> (not res!548097) (not e!445200))))

(declare-fun lt!359635 () SeekEntryResult!8504)

(declare-fun lt!359637 () SeekEntryResult!8504)

(assert (=> b!803408 (= res!548097 (and (= lt!359635 lt!359637) (= lt!359637 (Found!8504 j!153)) (not (= (select (arr!20906 a!3170) index!1236) (select (arr!20906 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!803408 (= lt!359637 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20906 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!803408 (= lt!359635 (seekEntryOrOpen!0 (select (arr!20906 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!803409 () Bool)

(declare-fun res!548098 () Bool)

(assert (=> b!803409 (=> (not res!548098) (not e!445198))))

(assert (=> b!803409 (= res!548098 (validKeyInArray!0 k!2044))))

(declare-fun res!548095 () Bool)

(assert (=> start!68918 (=> (not res!548095) (not e!445198))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68918 (= res!548095 (validMask!0 mask!3266))))

(assert (=> start!68918 e!445198))

(assert (=> start!68918 true))

(declare-fun array_inv!16680 (array!43659) Bool)

(assert (=> start!68918 (array_inv!16680 a!3170)))

(declare-fun b!803410 () Bool)

(declare-fun res!548100 () Bool)

(assert (=> b!803410 (=> (not res!548100) (not e!445201))))

(assert (=> b!803410 (= res!548100 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21327 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20906 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21327 a!3170)) (= (select (arr!20906 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!803411 () Bool)

(assert (=> b!803411 (= e!445200 (not true))))

(declare-fun lt!359641 () (_ BitVec 32))

(assert (=> b!803411 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359641 vacantAfter!23 lt!359638 lt!359640 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359641 vacantBefore!23 (select (arr!20906 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27550 0))(
  ( (Unit!27551) )
))
(declare-fun lt!359639 () Unit!27550)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43659 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27550)

(assert (=> b!803411 (= lt!359639 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!359641 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!803411 (= lt!359641 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!803412 () Bool)

(declare-fun res!548104 () Bool)

(assert (=> b!803412 (=> (not res!548104) (not e!445198))))

(declare-fun arrayContainsKey!0 (array!43659 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!803412 (= res!548104 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!803413 () Bool)

(assert (=> b!803413 (= e!445198 e!445201)))

(declare-fun res!548103 () Bool)

(assert (=> b!803413 (=> (not res!548103) (not e!445201))))

(declare-fun lt!359636 () SeekEntryResult!8504)

(assert (=> b!803413 (= res!548103 (or (= lt!359636 (MissingZero!8504 i!1163)) (= lt!359636 (MissingVacant!8504 i!1163))))))

(assert (=> b!803413 (= lt!359636 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!803414 () Bool)

(declare-fun res!548094 () Bool)

(assert (=> b!803414 (=> (not res!548094) (not e!445201))))

(declare-datatypes ((List!14922 0))(
  ( (Nil!14919) (Cons!14918 (h!16047 (_ BitVec 64)) (t!21245 List!14922)) )
))
(declare-fun arrayNoDuplicates!0 (array!43659 (_ BitVec 32) List!14922) Bool)

(assert (=> b!803414 (= res!548094 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14919))))

(declare-fun b!803415 () Bool)

(declare-fun res!548096 () Bool)

(assert (=> b!803415 (=> (not res!548096) (not e!445198))))

(assert (=> b!803415 (= res!548096 (and (= (size!21327 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21327 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21327 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68918 res!548095) b!803415))

(assert (= (and b!803415 res!548096) b!803406))

(assert (= (and b!803406 res!548099) b!803409))

(assert (= (and b!803409 res!548098) b!803412))

(assert (= (and b!803412 res!548104) b!803413))

(assert (= (and b!803413 res!548103) b!803407))

(assert (= (and b!803407 res!548102) b!803414))

(assert (= (and b!803414 res!548094) b!803410))

(assert (= (and b!803410 res!548100) b!803405))

(assert (= (and b!803405 res!548101) b!803408))

(assert (= (and b!803408 res!548097) b!803411))

(declare-fun m!745265 () Bool)

(assert (=> b!803414 m!745265))

(declare-fun m!745267 () Bool)

(assert (=> start!68918 m!745267))

(declare-fun m!745269 () Bool)

(assert (=> start!68918 m!745269))

(declare-fun m!745271 () Bool)

(assert (=> b!803413 m!745271))

(declare-fun m!745273 () Bool)

(assert (=> b!803412 m!745273))

(declare-fun m!745275 () Bool)

(assert (=> b!803406 m!745275))

(assert (=> b!803406 m!745275))

(declare-fun m!745277 () Bool)

(assert (=> b!803406 m!745277))

(declare-fun m!745279 () Bool)

(assert (=> b!803405 m!745279))

(declare-fun m!745281 () Bool)

(assert (=> b!803405 m!745281))

(declare-fun m!745283 () Bool)

(assert (=> b!803405 m!745283))

(declare-fun m!745285 () Bool)

(assert (=> b!803405 m!745285))

(declare-fun m!745287 () Bool)

(assert (=> b!803410 m!745287))

(declare-fun m!745289 () Bool)

(assert (=> b!803410 m!745289))

(declare-fun m!745291 () Bool)

(assert (=> b!803409 m!745291))

(declare-fun m!745293 () Bool)

(assert (=> b!803408 m!745293))

(assert (=> b!803408 m!745275))

(assert (=> b!803408 m!745275))

(declare-fun m!745295 () Bool)

(assert (=> b!803408 m!745295))

(assert (=> b!803408 m!745275))

(declare-fun m!745297 () Bool)

(assert (=> b!803408 m!745297))

(declare-fun m!745299 () Bool)

(assert (=> b!803407 m!745299))

(assert (=> b!803411 m!745275))

(declare-fun m!745301 () Bool)

(assert (=> b!803411 m!745301))

(declare-fun m!745303 () Bool)

(assert (=> b!803411 m!745303))

(declare-fun m!745305 () Bool)

(assert (=> b!803411 m!745305))

(assert (=> b!803411 m!745275))

(declare-fun m!745307 () Bool)

(assert (=> b!803411 m!745307))

(push 1)

(assert (not start!68918))

(assert (not b!803407))

(assert (not b!803406))

(assert (not b!803405))

(assert (not b!803413))

(assert (not b!803408))

(assert (not b!803412))

(assert (not b!803414))

(assert (not b!803411))

(assert (not b!803409))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

