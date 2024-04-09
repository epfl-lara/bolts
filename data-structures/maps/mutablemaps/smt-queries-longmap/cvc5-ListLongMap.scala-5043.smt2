; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68788 () Bool)

(assert start!68788)

(declare-fun res!545829 () Bool)

(declare-fun e!444125 () Bool)

(assert (=> start!68788 (=> (not res!545829) (not e!444125))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68788 (= res!545829 (validMask!0 mask!3266))))

(assert (=> start!68788 e!444125))

(assert (=> start!68788 true))

(declare-datatypes ((array!43529 0))(
  ( (array!43530 (arr!20841 (Array (_ BitVec 32) (_ BitVec 64))) (size!21262 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43529)

(declare-fun array_inv!16615 (array!43529) Bool)

(assert (=> start!68788 (array_inv!16615 a!3170)))

(declare-fun b!801138 () Bool)

(declare-fun e!444130 () Bool)

(declare-fun e!444126 () Bool)

(assert (=> b!801138 (= e!444130 e!444126)))

(declare-fun res!545839 () Bool)

(assert (=> b!801138 (=> (not res!545839) (not e!444126))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!358085 () (_ BitVec 32))

(assert (=> b!801138 (= res!545839 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!358085 #b00000000000000000000000000000000) (bvslt lt!358085 (size!21262 a!3170))))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!801138 (= lt!358085 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!801139 () Bool)

(declare-fun res!545830 () Bool)

(assert (=> b!801139 (=> (not res!545830) (not e!444125))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!801139 (= res!545830 (and (= (size!21262 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21262 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21262 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!801140 () Bool)

(declare-fun e!444128 () Bool)

(declare-fun e!444129 () Bool)

(assert (=> b!801140 (= e!444128 e!444129)))

(declare-fun res!545833 () Bool)

(assert (=> b!801140 (=> (not res!545833) (not e!444129))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!358088 () array!43529)

(declare-fun lt!358086 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8439 0))(
  ( (MissingZero!8439 (index!36123 (_ BitVec 32))) (Found!8439 (index!36124 (_ BitVec 32))) (Intermediate!8439 (undefined!9251 Bool) (index!36125 (_ BitVec 32)) (x!67014 (_ BitVec 32))) (Undefined!8439) (MissingVacant!8439 (index!36126 (_ BitVec 32))) )
))
(declare-fun lt!358084 () SeekEntryResult!8439)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43529 (_ BitVec 32)) SeekEntryResult!8439)

(assert (=> b!801140 (= res!545833 (= lt!358084 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358086 lt!358088 mask!3266)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43529 (_ BitVec 32)) SeekEntryResult!8439)

(assert (=> b!801140 (= lt!358084 (seekEntryOrOpen!0 lt!358086 lt!358088 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!801140 (= lt!358086 (select (store (arr!20841 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!801140 (= lt!358088 (array!43530 (store (arr!20841 a!3170) i!1163 k!2044) (size!21262 a!3170)))))

(declare-fun b!801141 () Bool)

(assert (=> b!801141 (= e!444126 false)))

(declare-fun lt!358083 () SeekEntryResult!8439)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!801141 (= lt!358083 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358085 vacantBefore!23 (select (arr!20841 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801142 () Bool)

(declare-fun res!545834 () Bool)

(assert (=> b!801142 (=> (not res!545834) (not e!444126))))

(assert (=> b!801142 (= res!545834 (= lt!358084 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358085 vacantAfter!23 lt!358086 lt!358088 mask!3266)))))

(declare-fun b!801143 () Bool)

(assert (=> b!801143 (= e!444125 e!444128)))

(declare-fun res!545838 () Bool)

(assert (=> b!801143 (=> (not res!545838) (not e!444128))))

(declare-fun lt!358090 () SeekEntryResult!8439)

(assert (=> b!801143 (= res!545838 (or (= lt!358090 (MissingZero!8439 i!1163)) (= lt!358090 (MissingVacant!8439 i!1163))))))

(assert (=> b!801143 (= lt!358090 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!801144 () Bool)

(declare-fun res!545835 () Bool)

(assert (=> b!801144 (=> (not res!545835) (not e!444128))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43529 (_ BitVec 32)) Bool)

(assert (=> b!801144 (= res!545835 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!801145 () Bool)

(declare-fun res!545828 () Bool)

(assert (=> b!801145 (=> (not res!545828) (not e!444125))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!801145 (= res!545828 (validKeyInArray!0 k!2044))))

(declare-fun b!801146 () Bool)

(declare-fun res!545836 () Bool)

(assert (=> b!801146 (=> (not res!545836) (not e!444128))))

(assert (=> b!801146 (= res!545836 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21262 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20841 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21262 a!3170)) (= (select (arr!20841 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!801147 () Bool)

(declare-fun res!545832 () Bool)

(assert (=> b!801147 (=> (not res!545832) (not e!444125))))

(assert (=> b!801147 (= res!545832 (validKeyInArray!0 (select (arr!20841 a!3170) j!153)))))

(declare-fun b!801148 () Bool)

(declare-fun res!545827 () Bool)

(assert (=> b!801148 (=> (not res!545827) (not e!444125))))

(declare-fun arrayContainsKey!0 (array!43529 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!801148 (= res!545827 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!801149 () Bool)

(assert (=> b!801149 (= e!444129 e!444130)))

(declare-fun res!545837 () Bool)

(assert (=> b!801149 (=> (not res!545837) (not e!444130))))

(declare-fun lt!358089 () SeekEntryResult!8439)

(declare-fun lt!358087 () SeekEntryResult!8439)

(assert (=> b!801149 (= res!545837 (and (= lt!358087 lt!358089) (= lt!358089 (Found!8439 j!153)) (not (= (select (arr!20841 a!3170) index!1236) (select (arr!20841 a!3170) j!153)))))))

(assert (=> b!801149 (= lt!358089 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20841 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!801149 (= lt!358087 (seekEntryOrOpen!0 (select (arr!20841 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801150 () Bool)

(declare-fun res!545831 () Bool)

(assert (=> b!801150 (=> (not res!545831) (not e!444128))))

(declare-datatypes ((List!14857 0))(
  ( (Nil!14854) (Cons!14853 (h!15982 (_ BitVec 64)) (t!21180 List!14857)) )
))
(declare-fun arrayNoDuplicates!0 (array!43529 (_ BitVec 32) List!14857) Bool)

(assert (=> b!801150 (= res!545831 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14854))))

(assert (= (and start!68788 res!545829) b!801139))

(assert (= (and b!801139 res!545830) b!801147))

(assert (= (and b!801147 res!545832) b!801145))

(assert (= (and b!801145 res!545828) b!801148))

(assert (= (and b!801148 res!545827) b!801143))

(assert (= (and b!801143 res!545838) b!801144))

(assert (= (and b!801144 res!545835) b!801150))

(assert (= (and b!801150 res!545831) b!801146))

(assert (= (and b!801146 res!545836) b!801140))

(assert (= (and b!801140 res!545833) b!801149))

(assert (= (and b!801149 res!545837) b!801138))

(assert (= (and b!801138 res!545839) b!801142))

(assert (= (and b!801142 res!545834) b!801141))

(declare-fun m!742387 () Bool)

(assert (=> b!801143 m!742387))

(declare-fun m!742389 () Bool)

(assert (=> b!801150 m!742389))

(declare-fun m!742391 () Bool)

(assert (=> b!801147 m!742391))

(assert (=> b!801147 m!742391))

(declare-fun m!742393 () Bool)

(assert (=> b!801147 m!742393))

(declare-fun m!742395 () Bool)

(assert (=> b!801140 m!742395))

(declare-fun m!742397 () Bool)

(assert (=> b!801140 m!742397))

(declare-fun m!742399 () Bool)

(assert (=> b!801140 m!742399))

(declare-fun m!742401 () Bool)

(assert (=> b!801140 m!742401))

(declare-fun m!742403 () Bool)

(assert (=> b!801146 m!742403))

(declare-fun m!742405 () Bool)

(assert (=> b!801146 m!742405))

(declare-fun m!742407 () Bool)

(assert (=> b!801148 m!742407))

(declare-fun m!742409 () Bool)

(assert (=> b!801144 m!742409))

(assert (=> b!801141 m!742391))

(assert (=> b!801141 m!742391))

(declare-fun m!742411 () Bool)

(assert (=> b!801141 m!742411))

(declare-fun m!742413 () Bool)

(assert (=> b!801138 m!742413))

(declare-fun m!742415 () Bool)

(assert (=> b!801142 m!742415))

(declare-fun m!742417 () Bool)

(assert (=> b!801149 m!742417))

(assert (=> b!801149 m!742391))

(assert (=> b!801149 m!742391))

(declare-fun m!742419 () Bool)

(assert (=> b!801149 m!742419))

(assert (=> b!801149 m!742391))

(declare-fun m!742421 () Bool)

(assert (=> b!801149 m!742421))

(declare-fun m!742423 () Bool)

(assert (=> b!801145 m!742423))

(declare-fun m!742425 () Bool)

(assert (=> start!68788 m!742425))

(declare-fun m!742427 () Bool)

(assert (=> start!68788 m!742427))

(push 1)

