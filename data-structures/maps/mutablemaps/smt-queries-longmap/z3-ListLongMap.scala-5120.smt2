; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69564 () Bool)

(assert start!69564)

(declare-fun b!810227 () Bool)

(declare-fun res!553680 () Bool)

(declare-fun e!448513 () Bool)

(assert (=> b!810227 (=> (not res!553680) (not e!448513))))

(declare-datatypes ((array!44011 0))(
  ( (array!44012 (arr!21073 (Array (_ BitVec 32) (_ BitVec 64))) (size!21494 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44011)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!810227 (= res!553680 (validKeyInArray!0 (select (arr!21073 a!3170) j!153)))))

(declare-fun b!810228 () Bool)

(declare-fun e!448517 () Bool)

(declare-fun e!448515 () Bool)

(assert (=> b!810228 (= e!448517 e!448515)))

(declare-fun res!553681 () Bool)

(assert (=> b!810228 (=> (not res!553681) (not e!448515))))

(declare-datatypes ((SeekEntryResult!8671 0))(
  ( (MissingZero!8671 (index!37051 (_ BitVec 32))) (Found!8671 (index!37052 (_ BitVec 32))) (Intermediate!8671 (undefined!9483 Bool) (index!37053 (_ BitVec 32)) (x!67892 (_ BitVec 32))) (Undefined!8671) (MissingVacant!8671 (index!37054 (_ BitVec 32))) )
))
(declare-fun lt!363140 () SeekEntryResult!8671)

(declare-fun lt!363137 () SeekEntryResult!8671)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!810228 (= res!553681 (and (= lt!363140 lt!363137) (not (= (select (arr!21073 a!3170) index!1236) (select (arr!21073 a!3170) j!153)))))))

(assert (=> b!810228 (= lt!363137 (Found!8671 j!153))))

(declare-fun b!810229 () Bool)

(declare-fun res!553687 () Bool)

(assert (=> b!810229 (=> (not res!553687) (not e!448513))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!44011 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!810229 (= res!553687 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!810230 () Bool)

(declare-fun res!553685 () Bool)

(declare-fun e!448518 () Bool)

(assert (=> b!810230 (=> (not res!553685) (not e!448518))))

(declare-datatypes ((List!15089 0))(
  ( (Nil!15086) (Cons!15085 (h!16214 (_ BitVec 64)) (t!21412 List!15089)) )
))
(declare-fun arrayNoDuplicates!0 (array!44011 (_ BitVec 32) List!15089) Bool)

(assert (=> b!810230 (= res!553685 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15086))))

(declare-fun b!810231 () Bool)

(declare-fun e!448514 () Bool)

(assert (=> b!810231 (= e!448518 e!448514)))

(declare-fun res!553683 () Bool)

(assert (=> b!810231 (=> (not res!553683) (not e!448514))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!363142 () SeekEntryResult!8671)

(declare-fun lt!363141 () array!44011)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!363134 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44011 (_ BitVec 32)) SeekEntryResult!8671)

(assert (=> b!810231 (= res!553683 (= lt!363142 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363134 lt!363141 mask!3266)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44011 (_ BitVec 32)) SeekEntryResult!8671)

(assert (=> b!810231 (= lt!363142 (seekEntryOrOpen!0 lt!363134 lt!363141 mask!3266))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!810231 (= lt!363134 (select (store (arr!21073 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!810231 (= lt!363141 (array!44012 (store (arr!21073 a!3170) i!1163 k0!2044) (size!21494 a!3170)))))

(declare-fun b!810232 () Bool)

(assert (=> b!810232 (= e!448513 e!448518)))

(declare-fun res!553677 () Bool)

(assert (=> b!810232 (=> (not res!553677) (not e!448518))))

(declare-fun lt!363138 () SeekEntryResult!8671)

(assert (=> b!810232 (= res!553677 (or (= lt!363138 (MissingZero!8671 i!1163)) (= lt!363138 (MissingVacant!8671 i!1163))))))

(assert (=> b!810232 (= lt!363138 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!810233 () Bool)

(declare-fun e!448516 () Bool)

(assert (=> b!810233 (= e!448515 e!448516)))

(declare-fun res!553674 () Bool)

(assert (=> b!810233 (=> (not res!553674) (not e!448516))))

(declare-fun lt!363136 () (_ BitVec 32))

(assert (=> b!810233 (= res!553674 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!363136 #b00000000000000000000000000000000) (bvslt lt!363136 (size!21494 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!810233 (= lt!363136 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!810234 () Bool)

(declare-fun res!553678 () Bool)

(assert (=> b!810234 (=> (not res!553678) (not e!448518))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44011 (_ BitVec 32)) Bool)

(assert (=> b!810234 (= res!553678 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!810235 () Bool)

(declare-fun lt!363135 () SeekEntryResult!8671)

(declare-fun lt!363139 () SeekEntryResult!8671)

(assert (=> b!810235 (= e!448516 (and (= lt!363139 lt!363135) (not (= lt!363135 lt!363137))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!810235 (= lt!363135 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363136 vacantBefore!23 (select (arr!21073 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!553676 () Bool)

(assert (=> start!69564 (=> (not res!553676) (not e!448513))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69564 (= res!553676 (validMask!0 mask!3266))))

(assert (=> start!69564 e!448513))

(assert (=> start!69564 true))

(declare-fun array_inv!16847 (array!44011) Bool)

(assert (=> start!69564 (array_inv!16847 a!3170)))

(declare-fun b!810236 () Bool)

(assert (=> b!810236 (= e!448514 e!448517)))

(declare-fun res!553686 () Bool)

(assert (=> b!810236 (=> (not res!553686) (not e!448517))))

(assert (=> b!810236 (= res!553686 (= lt!363139 lt!363140))))

(assert (=> b!810236 (= lt!363140 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21073 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!810236 (= lt!363139 (seekEntryOrOpen!0 (select (arr!21073 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!810237 () Bool)

(declare-fun res!553675 () Bool)

(assert (=> b!810237 (=> (not res!553675) (not e!448516))))

(assert (=> b!810237 (= res!553675 (= lt!363142 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363136 vacantAfter!23 lt!363134 lt!363141 mask!3266)))))

(declare-fun b!810238 () Bool)

(declare-fun res!553679 () Bool)

(assert (=> b!810238 (=> (not res!553679) (not e!448513))))

(assert (=> b!810238 (= res!553679 (and (= (size!21494 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21494 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21494 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!810239 () Bool)

(declare-fun res!553682 () Bool)

(assert (=> b!810239 (=> (not res!553682) (not e!448518))))

(assert (=> b!810239 (= res!553682 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21494 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21073 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21494 a!3170)) (= (select (arr!21073 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!810240 () Bool)

(declare-fun res!553684 () Bool)

(assert (=> b!810240 (=> (not res!553684) (not e!448513))))

(assert (=> b!810240 (= res!553684 (validKeyInArray!0 k0!2044))))

(assert (= (and start!69564 res!553676) b!810238))

(assert (= (and b!810238 res!553679) b!810227))

(assert (= (and b!810227 res!553680) b!810240))

(assert (= (and b!810240 res!553684) b!810229))

(assert (= (and b!810229 res!553687) b!810232))

(assert (= (and b!810232 res!553677) b!810234))

(assert (= (and b!810234 res!553678) b!810230))

(assert (= (and b!810230 res!553685) b!810239))

(assert (= (and b!810239 res!553682) b!810231))

(assert (= (and b!810231 res!553683) b!810236))

(assert (= (and b!810236 res!553686) b!810228))

(assert (= (and b!810228 res!553681) b!810233))

(assert (= (and b!810233 res!553674) b!810237))

(assert (= (and b!810237 res!553675) b!810235))

(declare-fun m!752509 () Bool)

(assert (=> b!810228 m!752509))

(declare-fun m!752511 () Bool)

(assert (=> b!810228 m!752511))

(declare-fun m!752513 () Bool)

(assert (=> b!810234 m!752513))

(declare-fun m!752515 () Bool)

(assert (=> b!810230 m!752515))

(assert (=> b!810235 m!752511))

(assert (=> b!810235 m!752511))

(declare-fun m!752517 () Bool)

(assert (=> b!810235 m!752517))

(assert (=> b!810236 m!752511))

(assert (=> b!810236 m!752511))

(declare-fun m!752519 () Bool)

(assert (=> b!810236 m!752519))

(assert (=> b!810236 m!752511))

(declare-fun m!752521 () Bool)

(assert (=> b!810236 m!752521))

(declare-fun m!752523 () Bool)

(assert (=> b!810231 m!752523))

(declare-fun m!752525 () Bool)

(assert (=> b!810231 m!752525))

(declare-fun m!752527 () Bool)

(assert (=> b!810231 m!752527))

(declare-fun m!752529 () Bool)

(assert (=> b!810231 m!752529))

(declare-fun m!752531 () Bool)

(assert (=> start!69564 m!752531))

(declare-fun m!752533 () Bool)

(assert (=> start!69564 m!752533))

(declare-fun m!752535 () Bool)

(assert (=> b!810229 m!752535))

(declare-fun m!752537 () Bool)

(assert (=> b!810239 m!752537))

(declare-fun m!752539 () Bool)

(assert (=> b!810239 m!752539))

(declare-fun m!752541 () Bool)

(assert (=> b!810233 m!752541))

(assert (=> b!810227 m!752511))

(assert (=> b!810227 m!752511))

(declare-fun m!752543 () Bool)

(assert (=> b!810227 m!752543))

(declare-fun m!752545 () Bool)

(assert (=> b!810240 m!752545))

(declare-fun m!752547 () Bool)

(assert (=> b!810237 m!752547))

(declare-fun m!752549 () Bool)

(assert (=> b!810232 m!752549))

(check-sat (not b!810231) (not b!810234) (not start!69564) (not b!810230) (not b!810233) (not b!810236) (not b!810235) (not b!810227) (not b!810229) (not b!810232) (not b!810240) (not b!810237))
(check-sat)
