; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69228 () Bool)

(assert start!69228)

(declare-fun b!807107 () Bool)

(declare-fun e!446914 () Bool)

(declare-fun e!446912 () Bool)

(assert (=> b!807107 (= e!446914 e!446912)))

(declare-fun res!551404 () Bool)

(assert (=> b!807107 (=> (not res!551404) (not e!446912))))

(declare-datatypes ((array!43879 0))(
  ( (array!43880 (arr!21013 (Array (_ BitVec 32) (_ BitVec 64))) (size!21434 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43879)

(declare-fun j!153 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8611 0))(
  ( (MissingZero!8611 (index!36811 (_ BitVec 32))) (Found!8611 (index!36812 (_ BitVec 32))) (Intermediate!8611 (undefined!9423 Bool) (index!36813 (_ BitVec 32)) (x!67648 (_ BitVec 32))) (Undefined!8611) (MissingVacant!8611 (index!36814 (_ BitVec 32))) )
))
(declare-fun lt!361588 () SeekEntryResult!8611)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!361584 () SeekEntryResult!8611)

(assert (=> b!807107 (= res!551404 (and (= lt!361588 lt!361584) (= lt!361584 (Found!8611 j!153)) (not (= (select (arr!21013 a!3170) index!1236) (select (arr!21013 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43879 (_ BitVec 32)) SeekEntryResult!8611)

(assert (=> b!807107 (= lt!361584 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21013 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43879 (_ BitVec 32)) SeekEntryResult!8611)

(assert (=> b!807107 (= lt!361588 (seekEntryOrOpen!0 (select (arr!21013 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!807108 () Bool)

(declare-fun res!551410 () Bool)

(declare-fun e!446911 () Bool)

(assert (=> b!807108 (=> (not res!551410) (not e!446911))))

(declare-datatypes ((List!15029 0))(
  ( (Nil!15026) (Cons!15025 (h!16154 (_ BitVec 64)) (t!21352 List!15029)) )
))
(declare-fun arrayNoDuplicates!0 (array!43879 (_ BitVec 32) List!15029) Bool)

(assert (=> b!807108 (= res!551410 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15026))))

(declare-fun b!807109 () Bool)

(declare-fun res!551400 () Bool)

(declare-fun e!446910 () Bool)

(assert (=> b!807109 (=> (not res!551400) (not e!446910))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807109 (= res!551400 (validKeyInArray!0 k0!2044))))

(declare-fun res!551408 () Bool)

(assert (=> start!69228 (=> (not res!551408) (not e!446910))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69228 (= res!551408 (validMask!0 mask!3266))))

(assert (=> start!69228 e!446910))

(assert (=> start!69228 true))

(declare-fun array_inv!16787 (array!43879) Bool)

(assert (=> start!69228 (array_inv!16787 a!3170)))

(declare-fun b!807110 () Bool)

(assert (=> b!807110 (= e!446912 false)))

(declare-fun lt!361587 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807110 (= lt!361587 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!807111 () Bool)

(assert (=> b!807111 (= e!446911 e!446914)))

(declare-fun res!551407 () Bool)

(assert (=> b!807111 (=> (not res!551407) (not e!446914))))

(declare-fun lt!361586 () (_ BitVec 64))

(declare-fun lt!361585 () array!43879)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!807111 (= res!551407 (= (seekEntryOrOpen!0 lt!361586 lt!361585 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361586 lt!361585 mask!3266)))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!807111 (= lt!361586 (select (store (arr!21013 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!807111 (= lt!361585 (array!43880 (store (arr!21013 a!3170) i!1163 k0!2044) (size!21434 a!3170)))))

(declare-fun b!807112 () Bool)

(declare-fun res!551406 () Bool)

(assert (=> b!807112 (=> (not res!551406) (not e!446910))))

(assert (=> b!807112 (= res!551406 (and (= (size!21434 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21434 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21434 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!807113 () Bool)

(declare-fun res!551403 () Bool)

(assert (=> b!807113 (=> (not res!551403) (not e!446911))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43879 (_ BitVec 32)) Bool)

(assert (=> b!807113 (= res!551403 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!807114 () Bool)

(declare-fun res!551401 () Bool)

(assert (=> b!807114 (=> (not res!551401) (not e!446910))))

(assert (=> b!807114 (= res!551401 (validKeyInArray!0 (select (arr!21013 a!3170) j!153)))))

(declare-fun b!807115 () Bool)

(declare-fun res!551402 () Bool)

(assert (=> b!807115 (=> (not res!551402) (not e!446910))))

(declare-fun arrayContainsKey!0 (array!43879 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807115 (= res!551402 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!807116 () Bool)

(declare-fun res!551405 () Bool)

(assert (=> b!807116 (=> (not res!551405) (not e!446911))))

(assert (=> b!807116 (= res!551405 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21434 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21013 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21434 a!3170)) (= (select (arr!21013 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!807117 () Bool)

(assert (=> b!807117 (= e!446910 e!446911)))

(declare-fun res!551409 () Bool)

(assert (=> b!807117 (=> (not res!551409) (not e!446911))))

(declare-fun lt!361583 () SeekEntryResult!8611)

(assert (=> b!807117 (= res!551409 (or (= lt!361583 (MissingZero!8611 i!1163)) (= lt!361583 (MissingVacant!8611 i!1163))))))

(assert (=> b!807117 (= lt!361583 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(assert (= (and start!69228 res!551408) b!807112))

(assert (= (and b!807112 res!551406) b!807114))

(assert (= (and b!807114 res!551401) b!807109))

(assert (= (and b!807109 res!551400) b!807115))

(assert (= (and b!807115 res!551402) b!807117))

(assert (= (and b!807117 res!551409) b!807113))

(assert (= (and b!807113 res!551403) b!807108))

(assert (= (and b!807108 res!551410) b!807116))

(assert (= (and b!807116 res!551405) b!807111))

(assert (= (and b!807111 res!551407) b!807107))

(assert (= (and b!807107 res!551404) b!807110))

(declare-fun m!749211 () Bool)

(assert (=> b!807113 m!749211))

(declare-fun m!749213 () Bool)

(assert (=> b!807117 m!749213))

(declare-fun m!749215 () Bool)

(assert (=> b!807108 m!749215))

(declare-fun m!749217 () Bool)

(assert (=> b!807107 m!749217))

(declare-fun m!749219 () Bool)

(assert (=> b!807107 m!749219))

(assert (=> b!807107 m!749219))

(declare-fun m!749221 () Bool)

(assert (=> b!807107 m!749221))

(assert (=> b!807107 m!749219))

(declare-fun m!749223 () Bool)

(assert (=> b!807107 m!749223))

(assert (=> b!807114 m!749219))

(assert (=> b!807114 m!749219))

(declare-fun m!749225 () Bool)

(assert (=> b!807114 m!749225))

(declare-fun m!749227 () Bool)

(assert (=> start!69228 m!749227))

(declare-fun m!749229 () Bool)

(assert (=> start!69228 m!749229))

(declare-fun m!749231 () Bool)

(assert (=> b!807111 m!749231))

(declare-fun m!749233 () Bool)

(assert (=> b!807111 m!749233))

(declare-fun m!749235 () Bool)

(assert (=> b!807111 m!749235))

(declare-fun m!749237 () Bool)

(assert (=> b!807111 m!749237))

(declare-fun m!749239 () Bool)

(assert (=> b!807109 m!749239))

(declare-fun m!749241 () Bool)

(assert (=> b!807115 m!749241))

(declare-fun m!749243 () Bool)

(assert (=> b!807110 m!749243))

(declare-fun m!749245 () Bool)

(assert (=> b!807116 m!749245))

(declare-fun m!749247 () Bool)

(assert (=> b!807116 m!749247))

(check-sat (not b!807115) (not b!807107) (not b!807114) (not b!807111) (not b!807108) (not b!807113) (not start!69228) (not b!807110) (not b!807117) (not b!807109))
(check-sat)
