; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69186 () Bool)

(assert start!69186)

(declare-fun b!806405 () Bool)

(declare-fun res!550701 () Bool)

(declare-fun e!446586 () Bool)

(assert (=> b!806405 (=> (not res!550701) (not e!446586))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!806405 (= res!550701 (validKeyInArray!0 k0!2044))))

(declare-fun b!806406 () Bool)

(declare-fun res!550698 () Bool)

(declare-fun e!446590 () Bool)

(assert (=> b!806406 (=> (not res!550698) (not e!446590))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43837 0))(
  ( (array!43838 (arr!20992 (Array (_ BitVec 32) (_ BitVec 64))) (size!21413 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43837)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!806406 (= res!550698 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21413 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20992 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21413 a!3170)) (= (select (arr!20992 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!806407 () Bool)

(declare-fun res!550705 () Bool)

(assert (=> b!806407 (=> (not res!550705) (not e!446586))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!806407 (= res!550705 (and (= (size!21413 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21413 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21413 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!806408 () Bool)

(declare-fun res!550700 () Bool)

(assert (=> b!806408 (=> (not res!550700) (not e!446586))))

(declare-fun arrayContainsKey!0 (array!43837 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!806408 (= res!550700 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!806409 () Bool)

(declare-fun e!446589 () Bool)

(declare-fun e!446588 () Bool)

(assert (=> b!806409 (= e!446589 e!446588)))

(declare-fun res!550699 () Bool)

(assert (=> b!806409 (=> (not res!550699) (not e!446588))))

(declare-datatypes ((SeekEntryResult!8590 0))(
  ( (MissingZero!8590 (index!36727 (_ BitVec 32))) (Found!8590 (index!36728 (_ BitVec 32))) (Intermediate!8590 (undefined!9402 Bool) (index!36729 (_ BitVec 32)) (x!67571 (_ BitVec 32))) (Undefined!8590) (MissingVacant!8590 (index!36730 (_ BitVec 32))) )
))
(declare-fun lt!361171 () SeekEntryResult!8590)

(declare-fun lt!361165 () SeekEntryResult!8590)

(assert (=> b!806409 (= res!550699 (and (= lt!361171 lt!361165) (= lt!361165 (Found!8590 j!153)) (= (select (arr!20992 a!3170) index!1236) (select (arr!20992 a!3170) j!153))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43837 (_ BitVec 32)) SeekEntryResult!8590)

(assert (=> b!806409 (= lt!361165 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20992 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43837 (_ BitVec 32)) SeekEntryResult!8590)

(assert (=> b!806409 (= lt!361171 (seekEntryOrOpen!0 (select (arr!20992 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!806410 () Bool)

(assert (=> b!806410 (= e!446590 e!446589)))

(declare-fun res!550708 () Bool)

(assert (=> b!806410 (=> (not res!550708) (not e!446589))))

(declare-fun lt!361166 () SeekEntryResult!8590)

(declare-fun lt!361167 () SeekEntryResult!8590)

(assert (=> b!806410 (= res!550708 (= lt!361166 lt!361167))))

(declare-fun lt!361168 () (_ BitVec 64))

(declare-fun lt!361170 () array!43837)

(assert (=> b!806410 (= lt!361167 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361168 lt!361170 mask!3266))))

(assert (=> b!806410 (= lt!361166 (seekEntryOrOpen!0 lt!361168 lt!361170 mask!3266))))

(assert (=> b!806410 (= lt!361168 (select (store (arr!20992 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!806410 (= lt!361170 (array!43838 (store (arr!20992 a!3170) i!1163 k0!2044) (size!21413 a!3170)))))

(declare-fun res!550707 () Bool)

(assert (=> start!69186 (=> (not res!550707) (not e!446586))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69186 (= res!550707 (validMask!0 mask!3266))))

(assert (=> start!69186 e!446586))

(assert (=> start!69186 true))

(declare-fun array_inv!16766 (array!43837) Bool)

(assert (=> start!69186 (array_inv!16766 a!3170)))

(declare-fun b!806411 () Bool)

(declare-fun res!550704 () Bool)

(assert (=> b!806411 (=> (not res!550704) (not e!446590))))

(declare-datatypes ((List!15008 0))(
  ( (Nil!15005) (Cons!15004 (h!16133 (_ BitVec 64)) (t!21331 List!15008)) )
))
(declare-fun arrayNoDuplicates!0 (array!43837 (_ BitVec 32) List!15008) Bool)

(assert (=> b!806411 (= res!550704 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15005))))

(declare-fun b!806412 () Bool)

(assert (=> b!806412 (= e!446588 (not true))))

(assert (=> b!806412 (= lt!361167 (Found!8590 index!1236))))

(declare-fun b!806413 () Bool)

(declare-fun res!550703 () Bool)

(assert (=> b!806413 (=> (not res!550703) (not e!446586))))

(assert (=> b!806413 (= res!550703 (validKeyInArray!0 (select (arr!20992 a!3170) j!153)))))

(declare-fun b!806414 () Bool)

(declare-fun res!550706 () Bool)

(assert (=> b!806414 (=> (not res!550706) (not e!446590))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43837 (_ BitVec 32)) Bool)

(assert (=> b!806414 (= res!550706 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!806415 () Bool)

(assert (=> b!806415 (= e!446586 e!446590)))

(declare-fun res!550702 () Bool)

(assert (=> b!806415 (=> (not res!550702) (not e!446590))))

(declare-fun lt!361169 () SeekEntryResult!8590)

(assert (=> b!806415 (= res!550702 (or (= lt!361169 (MissingZero!8590 i!1163)) (= lt!361169 (MissingVacant!8590 i!1163))))))

(assert (=> b!806415 (= lt!361169 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(assert (= (and start!69186 res!550707) b!806407))

(assert (= (and b!806407 res!550705) b!806413))

(assert (= (and b!806413 res!550703) b!806405))

(assert (= (and b!806405 res!550701) b!806408))

(assert (= (and b!806408 res!550700) b!806415))

(assert (= (and b!806415 res!550702) b!806414))

(assert (= (and b!806414 res!550706) b!806411))

(assert (= (and b!806411 res!550704) b!806406))

(assert (= (and b!806406 res!550698) b!806410))

(assert (= (and b!806410 res!550708) b!806409))

(assert (= (and b!806409 res!550699) b!806412))

(declare-fun m!748435 () Bool)

(assert (=> b!806413 m!748435))

(assert (=> b!806413 m!748435))

(declare-fun m!748437 () Bool)

(assert (=> b!806413 m!748437))

(declare-fun m!748439 () Bool)

(assert (=> b!806408 m!748439))

(declare-fun m!748441 () Bool)

(assert (=> b!806410 m!748441))

(declare-fun m!748443 () Bool)

(assert (=> b!806410 m!748443))

(declare-fun m!748445 () Bool)

(assert (=> b!806410 m!748445))

(declare-fun m!748447 () Bool)

(assert (=> b!806410 m!748447))

(declare-fun m!748449 () Bool)

(assert (=> b!806414 m!748449))

(declare-fun m!748451 () Bool)

(assert (=> b!806409 m!748451))

(assert (=> b!806409 m!748435))

(assert (=> b!806409 m!748435))

(declare-fun m!748453 () Bool)

(assert (=> b!806409 m!748453))

(assert (=> b!806409 m!748435))

(declare-fun m!748455 () Bool)

(assert (=> b!806409 m!748455))

(declare-fun m!748457 () Bool)

(assert (=> b!806415 m!748457))

(declare-fun m!748459 () Bool)

(assert (=> b!806411 m!748459))

(declare-fun m!748461 () Bool)

(assert (=> b!806405 m!748461))

(declare-fun m!748463 () Bool)

(assert (=> start!69186 m!748463))

(declare-fun m!748465 () Bool)

(assert (=> start!69186 m!748465))

(declare-fun m!748467 () Bool)

(assert (=> b!806406 m!748467))

(declare-fun m!748469 () Bool)

(assert (=> b!806406 m!748469))

(check-sat (not b!806409) (not b!806415) (not b!806405) (not b!806411) (not b!806413) (not b!806408) (not b!806410) (not b!806414) (not start!69186))
(check-sat)
