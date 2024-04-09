; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68912 () Bool)

(assert start!68912)

(declare-fun b!803305 () Bool)

(declare-fun e!445154 () Bool)

(declare-fun e!445152 () Bool)

(assert (=> b!803305 (= e!445154 e!445152)))

(declare-fun res!547998 () Bool)

(assert (=> b!803305 (=> (not res!547998) (not e!445152))))

(declare-datatypes ((SeekEntryResult!8501 0))(
  ( (MissingZero!8501 (index!36371 (_ BitVec 32))) (Found!8501 (index!36372 (_ BitVec 32))) (Intermediate!8501 (undefined!9313 Bool) (index!36373 (_ BitVec 32)) (x!67236 (_ BitVec 32))) (Undefined!8501) (MissingVacant!8501 (index!36374 (_ BitVec 32))) )
))
(declare-fun lt!359570 () SeekEntryResult!8501)

(declare-fun lt!359569 () SeekEntryResult!8501)

(assert (=> b!803305 (= res!547998 (= lt!359570 lt!359569))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43653 0))(
  ( (array!43654 (arr!20903 (Array (_ BitVec 32) (_ BitVec 64))) (size!21324 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43653)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43653 (_ BitVec 32)) SeekEntryResult!8501)

(assert (=> b!803305 (= lt!359569 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20903 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43653 (_ BitVec 32)) SeekEntryResult!8501)

(assert (=> b!803305 (= lt!359570 (seekEntryOrOpen!0 (select (arr!20903 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!803306 () Bool)

(declare-fun res!547994 () Bool)

(declare-fun e!445151 () Bool)

(assert (=> b!803306 (=> (not res!547994) (not e!445151))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803306 (= res!547994 (validKeyInArray!0 k!2044))))

(declare-fun b!803307 () Bool)

(declare-fun e!445153 () Bool)

(assert (=> b!803307 (= e!445151 e!445153)))

(declare-fun res!548002 () Bool)

(assert (=> b!803307 (=> (not res!548002) (not e!445153))))

(declare-fun lt!359571 () SeekEntryResult!8501)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!803307 (= res!548002 (or (= lt!359571 (MissingZero!8501 i!1163)) (= lt!359571 (MissingVacant!8501 i!1163))))))

(assert (=> b!803307 (= lt!359571 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!803308 () Bool)

(declare-fun e!445156 () Bool)

(assert (=> b!803308 (= e!445152 e!445156)))

(declare-fun res!547999 () Bool)

(assert (=> b!803308 (=> (not res!547999) (not e!445156))))

(declare-fun lt!359574 () SeekEntryResult!8501)

(assert (=> b!803308 (= res!547999 (and (= lt!359569 lt!359574) (not (= (select (arr!20903 a!3170) index!1236) (select (arr!20903 a!3170) j!153)))))))

(assert (=> b!803308 (= lt!359574 (Found!8501 j!153))))

(declare-fun b!803309 () Bool)

(assert (=> b!803309 (= e!445153 e!445154)))

(declare-fun res!547995 () Bool)

(assert (=> b!803309 (=> (not res!547995) (not e!445154))))

(declare-fun lt!359572 () SeekEntryResult!8501)

(declare-fun lt!359573 () SeekEntryResult!8501)

(assert (=> b!803309 (= res!547995 (= lt!359572 lt!359573))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!359578 () array!43653)

(declare-fun lt!359577 () (_ BitVec 64))

(assert (=> b!803309 (= lt!359573 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359577 lt!359578 mask!3266))))

(assert (=> b!803309 (= lt!359572 (seekEntryOrOpen!0 lt!359577 lt!359578 mask!3266))))

(assert (=> b!803309 (= lt!359577 (select (store (arr!20903 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!803309 (= lt!359578 (array!43654 (store (arr!20903 a!3170) i!1163 k!2044) (size!21324 a!3170)))))

(declare-fun b!803310 () Bool)

(declare-fun res!548004 () Bool)

(assert (=> b!803310 (=> (not res!548004) (not e!445153))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43653 (_ BitVec 32)) Bool)

(assert (=> b!803310 (= res!548004 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!803311 () Bool)

(declare-fun res!548000 () Bool)

(assert (=> b!803311 (=> (not res!548000) (not e!445153))))

(declare-datatypes ((List!14919 0))(
  ( (Nil!14916) (Cons!14915 (h!16044 (_ BitVec 64)) (t!21242 List!14919)) )
))
(declare-fun arrayNoDuplicates!0 (array!43653 (_ BitVec 32) List!14919) Bool)

(assert (=> b!803311 (= res!548000 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14916))))

(declare-fun b!803313 () Bool)

(declare-fun res!547996 () Bool)

(assert (=> b!803313 (=> (not res!547996) (not e!445151))))

(declare-fun arrayContainsKey!0 (array!43653 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!803313 (= res!547996 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!803314 () Bool)

(declare-fun res!548001 () Bool)

(assert (=> b!803314 (=> (not res!548001) (not e!445153))))

(assert (=> b!803314 (= res!548001 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21324 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20903 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21324 a!3170)) (= (select (arr!20903 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!803315 () Bool)

(declare-fun res!547997 () Bool)

(assert (=> b!803315 (=> (not res!547997) (not e!445151))))

(assert (=> b!803315 (= res!547997 (validKeyInArray!0 (select (arr!20903 a!3170) j!153)))))

(declare-fun b!803316 () Bool)

(declare-fun res!548005 () Bool)

(assert (=> b!803316 (=> (not res!548005) (not e!445151))))

(assert (=> b!803316 (= res!548005 (and (= (size!21324 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21324 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21324 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!803312 () Bool)

(assert (=> b!803312 (= e!445156 (not (or (not (= lt!359573 lt!359574)) (bvsge mask!3266 #b00000000000000000000000000000000))))))

(declare-fun lt!359576 () (_ BitVec 32))

(assert (=> b!803312 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359576 vacantAfter!23 lt!359577 lt!359578 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359576 vacantBefore!23 (select (arr!20903 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27544 0))(
  ( (Unit!27545) )
))
(declare-fun lt!359575 () Unit!27544)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43653 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27544)

(assert (=> b!803312 (= lt!359575 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!359576 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!803312 (= lt!359576 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun res!548003 () Bool)

(assert (=> start!68912 (=> (not res!548003) (not e!445151))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68912 (= res!548003 (validMask!0 mask!3266))))

(assert (=> start!68912 e!445151))

(assert (=> start!68912 true))

(declare-fun array_inv!16677 (array!43653) Bool)

(assert (=> start!68912 (array_inv!16677 a!3170)))

(assert (= (and start!68912 res!548003) b!803316))

(assert (= (and b!803316 res!548005) b!803315))

(assert (= (and b!803315 res!547997) b!803306))

(assert (= (and b!803306 res!547994) b!803313))

(assert (= (and b!803313 res!547996) b!803307))

(assert (= (and b!803307 res!548002) b!803310))

(assert (= (and b!803310 res!548004) b!803311))

(assert (= (and b!803311 res!548000) b!803314))

(assert (= (and b!803314 res!548001) b!803309))

(assert (= (and b!803309 res!547995) b!803305))

(assert (= (and b!803305 res!547998) b!803308))

(assert (= (and b!803308 res!547999) b!803312))

(declare-fun m!745133 () Bool)

(assert (=> b!803312 m!745133))

(declare-fun m!745135 () Bool)

(assert (=> b!803312 m!745135))

(assert (=> b!803312 m!745133))

(declare-fun m!745137 () Bool)

(assert (=> b!803312 m!745137))

(declare-fun m!745139 () Bool)

(assert (=> b!803312 m!745139))

(declare-fun m!745141 () Bool)

(assert (=> b!803312 m!745141))

(declare-fun m!745143 () Bool)

(assert (=> b!803314 m!745143))

(declare-fun m!745145 () Bool)

(assert (=> b!803314 m!745145))

(declare-fun m!745147 () Bool)

(assert (=> b!803306 m!745147))

(declare-fun m!745149 () Bool)

(assert (=> b!803309 m!745149))

(declare-fun m!745151 () Bool)

(assert (=> b!803309 m!745151))

(declare-fun m!745153 () Bool)

(assert (=> b!803309 m!745153))

(declare-fun m!745155 () Bool)

(assert (=> b!803309 m!745155))

(declare-fun m!745157 () Bool)

(assert (=> b!803311 m!745157))

(assert (=> b!803305 m!745133))

(assert (=> b!803305 m!745133))

(declare-fun m!745159 () Bool)

(assert (=> b!803305 m!745159))

(assert (=> b!803305 m!745133))

(declare-fun m!745161 () Bool)

(assert (=> b!803305 m!745161))

(assert (=> b!803315 m!745133))

(assert (=> b!803315 m!745133))

(declare-fun m!745163 () Bool)

(assert (=> b!803315 m!745163))

(declare-fun m!745165 () Bool)

(assert (=> b!803307 m!745165))

(declare-fun m!745167 () Bool)

(assert (=> b!803313 m!745167))

(declare-fun m!745169 () Bool)

(assert (=> b!803308 m!745169))

(assert (=> b!803308 m!745133))

(declare-fun m!745171 () Bool)

(assert (=> b!803310 m!745171))

(declare-fun m!745173 () Bool)

(assert (=> start!68912 m!745173))

(declare-fun m!745175 () Bool)

(assert (=> start!68912 m!745175))

(push 1)

(assert (not b!803315))

(assert (not b!803312))

(assert (not b!803311))

