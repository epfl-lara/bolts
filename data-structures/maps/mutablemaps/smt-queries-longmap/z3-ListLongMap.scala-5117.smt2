; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69438 () Bool)

(assert start!69438)

(declare-fun b!809312 () Bool)

(declare-fun e!448000 () Bool)

(declare-fun e!448002 () Bool)

(assert (=> b!809312 (= e!448000 e!448002)))

(declare-fun res!553216 () Bool)

(assert (=> b!809312 (=> (not res!553216) (not e!448002))))

(declare-datatypes ((SeekEntryResult!8662 0))(
  ( (MissingZero!8662 (index!37015 (_ BitVec 32))) (Found!8662 (index!37016 (_ BitVec 32))) (Intermediate!8662 (undefined!9474 Bool) (index!37017 (_ BitVec 32)) (x!67847 (_ BitVec 32))) (Undefined!8662) (MissingVacant!8662 (index!37018 (_ BitVec 32))) )
))
(declare-fun lt!362716 () SeekEntryResult!8662)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!809312 (= res!553216 (or (= lt!362716 (MissingZero!8662 i!1163)) (= lt!362716 (MissingVacant!8662 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-datatypes ((array!43987 0))(
  ( (array!43988 (arr!21064 (Array (_ BitVec 32) (_ BitVec 64))) (size!21485 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43987)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43987 (_ BitVec 32)) SeekEntryResult!8662)

(assert (=> b!809312 (= lt!362716 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!809313 () Bool)

(declare-fun e!448003 () Bool)

(assert (=> b!809313 (= e!448002 e!448003)))

(declare-fun res!553209 () Bool)

(assert (=> b!809313 (=> (not res!553209) (not e!448003))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!362715 () (_ BitVec 64))

(declare-fun lt!362713 () array!43987)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43987 (_ BitVec 32)) SeekEntryResult!8662)

(assert (=> b!809313 (= res!553209 (= (seekEntryOrOpen!0 lt!362715 lt!362713 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362715 lt!362713 mask!3266)))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!809313 (= lt!362715 (select (store (arr!21064 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!809313 (= lt!362713 (array!43988 (store (arr!21064 a!3170) i!1163 k0!2044) (size!21485 a!3170)))))

(declare-fun b!809314 () Bool)

(declare-fun res!553214 () Bool)

(assert (=> b!809314 (=> (not res!553214) (not e!448002))))

(declare-datatypes ((List!15080 0))(
  ( (Nil!15077) (Cons!15076 (h!16205 (_ BitVec 64)) (t!21403 List!15080)) )
))
(declare-fun arrayNoDuplicates!0 (array!43987 (_ BitVec 32) List!15080) Bool)

(assert (=> b!809314 (= res!553214 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15077))))

(declare-fun b!809315 () Bool)

(declare-fun res!553217 () Bool)

(assert (=> b!809315 (=> (not res!553217) (not e!448000))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!809315 (= res!553217 (validKeyInArray!0 (select (arr!21064 a!3170) j!153)))))

(declare-fun b!809316 () Bool)

(declare-fun res!553218 () Bool)

(assert (=> b!809316 (=> (not res!553218) (not e!448000))))

(declare-fun arrayContainsKey!0 (array!43987 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!809316 (= res!553218 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!809317 () Bool)

(declare-fun res!553219 () Bool)

(assert (=> b!809317 (=> (not res!553219) (not e!448000))))

(assert (=> b!809317 (= res!553219 (validKeyInArray!0 k0!2044))))

(declare-fun b!809318 () Bool)

(declare-fun res!553213 () Bool)

(assert (=> b!809318 (=> (not res!553213) (not e!448002))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!809318 (= res!553213 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21485 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21064 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21485 a!3170)) (= (select (arr!21064 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!809319 () Bool)

(declare-fun res!553212 () Bool)

(assert (=> b!809319 (=> (not res!553212) (not e!448000))))

(assert (=> b!809319 (= res!553212 (and (= (size!21485 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21485 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21485 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!809321 () Bool)

(declare-fun res!553210 () Bool)

(assert (=> b!809321 (=> (not res!553210) (not e!448002))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43987 (_ BitVec 32)) Bool)

(assert (=> b!809321 (= res!553210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!809322 () Bool)

(declare-fun e!448001 () Bool)

(assert (=> b!809322 (= e!448001 false)))

(declare-fun lt!362711 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!809322 (= lt!362711 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun res!553215 () Bool)

(assert (=> start!69438 (=> (not res!553215) (not e!448000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69438 (= res!553215 (validMask!0 mask!3266))))

(assert (=> start!69438 e!448000))

(assert (=> start!69438 true))

(declare-fun array_inv!16838 (array!43987) Bool)

(assert (=> start!69438 (array_inv!16838 a!3170)))

(declare-fun b!809320 () Bool)

(assert (=> b!809320 (= e!448003 e!448001)))

(declare-fun res!553211 () Bool)

(assert (=> b!809320 (=> (not res!553211) (not e!448001))))

(declare-fun lt!362714 () SeekEntryResult!8662)

(declare-fun lt!362712 () SeekEntryResult!8662)

(assert (=> b!809320 (= res!553211 (and (= lt!362714 lt!362712) (= lt!362712 (Found!8662 j!153)) (not (= (select (arr!21064 a!3170) index!1236) (select (arr!21064 a!3170) j!153)))))))

(assert (=> b!809320 (= lt!362712 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21064 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!809320 (= lt!362714 (seekEntryOrOpen!0 (select (arr!21064 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!69438 res!553215) b!809319))

(assert (= (and b!809319 res!553212) b!809315))

(assert (= (and b!809315 res!553217) b!809317))

(assert (= (and b!809317 res!553219) b!809316))

(assert (= (and b!809316 res!553218) b!809312))

(assert (= (and b!809312 res!553216) b!809321))

(assert (= (and b!809321 res!553210) b!809314))

(assert (= (and b!809314 res!553214) b!809318))

(assert (= (and b!809318 res!553213) b!809313))

(assert (= (and b!809313 res!553209) b!809320))

(assert (= (and b!809320 res!553211) b!809322))

(declare-fun m!751605 () Bool)

(assert (=> b!809320 m!751605))

(declare-fun m!751607 () Bool)

(assert (=> b!809320 m!751607))

(assert (=> b!809320 m!751607))

(declare-fun m!751609 () Bool)

(assert (=> b!809320 m!751609))

(assert (=> b!809320 m!751607))

(declare-fun m!751611 () Bool)

(assert (=> b!809320 m!751611))

(declare-fun m!751613 () Bool)

(assert (=> b!809317 m!751613))

(declare-fun m!751615 () Bool)

(assert (=> b!809314 m!751615))

(declare-fun m!751617 () Bool)

(assert (=> b!809322 m!751617))

(declare-fun m!751619 () Bool)

(assert (=> b!809321 m!751619))

(declare-fun m!751621 () Bool)

(assert (=> b!809312 m!751621))

(declare-fun m!751623 () Bool)

(assert (=> b!809313 m!751623))

(declare-fun m!751625 () Bool)

(assert (=> b!809313 m!751625))

(declare-fun m!751627 () Bool)

(assert (=> b!809313 m!751627))

(declare-fun m!751629 () Bool)

(assert (=> b!809313 m!751629))

(declare-fun m!751631 () Bool)

(assert (=> b!809316 m!751631))

(declare-fun m!751633 () Bool)

(assert (=> start!69438 m!751633))

(declare-fun m!751635 () Bool)

(assert (=> start!69438 m!751635))

(assert (=> b!809315 m!751607))

(assert (=> b!809315 m!751607))

(declare-fun m!751637 () Bool)

(assert (=> b!809315 m!751637))

(declare-fun m!751639 () Bool)

(assert (=> b!809318 m!751639))

(declare-fun m!751641 () Bool)

(assert (=> b!809318 m!751641))

(check-sat (not b!809317) (not b!809322) (not b!809316) (not b!809313) (not b!809321) (not b!809314) (not b!809312) (not start!69438) (not b!809320) (not b!809315))
(check-sat)
