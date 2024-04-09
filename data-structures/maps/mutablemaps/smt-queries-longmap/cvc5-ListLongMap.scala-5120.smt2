; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69562 () Bool)

(assert start!69562)

(declare-fun b!810185 () Bool)

(declare-fun res!553634 () Bool)

(declare-fun e!448498 () Bool)

(assert (=> b!810185 (=> (not res!553634) (not e!448498))))

(declare-datatypes ((array!44009 0))(
  ( (array!44010 (arr!21072 (Array (_ BitVec 32) (_ BitVec 64))) (size!21493 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44009)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44009 (_ BitVec 32)) Bool)

(assert (=> b!810185 (= res!553634 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!810186 () Bool)

(declare-fun res!553633 () Bool)

(assert (=> b!810186 (=> (not res!553633) (not e!448498))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!810186 (= res!553633 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21493 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21072 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21493 a!3170)) (= (select (arr!21072 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!810187 () Bool)

(declare-fun res!553639 () Bool)

(declare-fun e!448496 () Bool)

(assert (=> b!810187 (=> (not res!553639) (not e!448496))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!44009 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!810187 (= res!553639 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!810188 () Bool)

(declare-fun res!553642 () Bool)

(declare-fun e!448494 () Bool)

(assert (=> b!810188 (=> (not res!553642) (not e!448494))))

(declare-datatypes ((SeekEntryResult!8670 0))(
  ( (MissingZero!8670 (index!37047 (_ BitVec 32))) (Found!8670 (index!37048 (_ BitVec 32))) (Intermediate!8670 (undefined!9482 Bool) (index!37049 (_ BitVec 32)) (x!67891 (_ BitVec 32))) (Undefined!8670) (MissingVacant!8670 (index!37050 (_ BitVec 32))) )
))
(declare-fun lt!363112 () SeekEntryResult!8670)

(declare-fun lt!363114 () array!44009)

(declare-fun lt!363113 () (_ BitVec 32))

(declare-fun lt!363108 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44009 (_ BitVec 32)) SeekEntryResult!8670)

(assert (=> b!810188 (= res!553642 (= lt!363112 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363113 vacantAfter!23 lt!363108 lt!363114 mask!3266)))))

(declare-fun res!553636 () Bool)

(assert (=> start!69562 (=> (not res!553636) (not e!448496))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69562 (= res!553636 (validMask!0 mask!3266))))

(assert (=> start!69562 e!448496))

(assert (=> start!69562 true))

(declare-fun array_inv!16846 (array!44009) Bool)

(assert (=> start!69562 (array_inv!16846 a!3170)))

(declare-fun b!810189 () Bool)

(declare-fun res!553643 () Bool)

(assert (=> b!810189 (=> (not res!553643) (not e!448496))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!810189 (= res!553643 (validKeyInArray!0 (select (arr!21072 a!3170) j!153)))))

(declare-fun b!810190 () Bool)

(declare-fun e!448492 () Bool)

(assert (=> b!810190 (= e!448498 e!448492)))

(declare-fun res!553632 () Bool)

(assert (=> b!810190 (=> (not res!553632) (not e!448492))))

(assert (=> b!810190 (= res!553632 (= lt!363112 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363108 lt!363114 mask!3266)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44009 (_ BitVec 32)) SeekEntryResult!8670)

(assert (=> b!810190 (= lt!363112 (seekEntryOrOpen!0 lt!363108 lt!363114 mask!3266))))

(assert (=> b!810190 (= lt!363108 (select (store (arr!21072 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!810190 (= lt!363114 (array!44010 (store (arr!21072 a!3170) i!1163 k!2044) (size!21493 a!3170)))))

(declare-fun b!810191 () Bool)

(declare-fun e!448495 () Bool)

(declare-fun e!448493 () Bool)

(assert (=> b!810191 (= e!448495 e!448493)))

(declare-fun res!553640 () Bool)

(assert (=> b!810191 (=> (not res!553640) (not e!448493))))

(declare-fun lt!363107 () SeekEntryResult!8670)

(declare-fun lt!363115 () SeekEntryResult!8670)

(assert (=> b!810191 (= res!553640 (and (= lt!363115 lt!363107) (not (= (select (arr!21072 a!3170) index!1236) (select (arr!21072 a!3170) j!153)))))))

(assert (=> b!810191 (= lt!363107 (Found!8670 j!153))))

(declare-fun b!810192 () Bool)

(declare-fun res!553638 () Bool)

(assert (=> b!810192 (=> (not res!553638) (not e!448496))))

(assert (=> b!810192 (= res!553638 (and (= (size!21493 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21493 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21493 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!810193 () Bool)

(declare-fun res!553641 () Bool)

(assert (=> b!810193 (=> (not res!553641) (not e!448496))))

(assert (=> b!810193 (= res!553641 (validKeyInArray!0 k!2044))))

(declare-fun b!810194 () Bool)

(assert (=> b!810194 (= e!448496 e!448498)))

(declare-fun res!553635 () Bool)

(assert (=> b!810194 (=> (not res!553635) (not e!448498))))

(declare-fun lt!363110 () SeekEntryResult!8670)

(assert (=> b!810194 (= res!553635 (or (= lt!363110 (MissingZero!8670 i!1163)) (= lt!363110 (MissingVacant!8670 i!1163))))))

(assert (=> b!810194 (= lt!363110 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!810195 () Bool)

(assert (=> b!810195 (= e!448492 e!448495)))

(declare-fun res!553644 () Bool)

(assert (=> b!810195 (=> (not res!553644) (not e!448495))))

(declare-fun lt!363111 () SeekEntryResult!8670)

(assert (=> b!810195 (= res!553644 (= lt!363111 lt!363115))))

(assert (=> b!810195 (= lt!363115 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21072 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!810195 (= lt!363111 (seekEntryOrOpen!0 (select (arr!21072 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!810196 () Bool)

(assert (=> b!810196 (= e!448493 e!448494)))

(declare-fun res!553645 () Bool)

(assert (=> b!810196 (=> (not res!553645) (not e!448494))))

(assert (=> b!810196 (= res!553645 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!363113 #b00000000000000000000000000000000) (bvslt lt!363113 (size!21493 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!810196 (= lt!363113 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!810197 () Bool)

(declare-fun res!553637 () Bool)

(assert (=> b!810197 (=> (not res!553637) (not e!448498))))

(declare-datatypes ((List!15088 0))(
  ( (Nil!15085) (Cons!15084 (h!16213 (_ BitVec 64)) (t!21411 List!15088)) )
))
(declare-fun arrayNoDuplicates!0 (array!44009 (_ BitVec 32) List!15088) Bool)

(assert (=> b!810197 (= res!553637 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15085))))

(declare-fun lt!363109 () SeekEntryResult!8670)

(declare-fun b!810198 () Bool)

(assert (=> b!810198 (= e!448494 (and (= lt!363111 lt!363109) (not (= lt!363109 lt!363107))))))

(assert (=> b!810198 (= lt!363109 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363113 vacantBefore!23 (select (arr!21072 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!69562 res!553636) b!810192))

(assert (= (and b!810192 res!553638) b!810189))

(assert (= (and b!810189 res!553643) b!810193))

(assert (= (and b!810193 res!553641) b!810187))

(assert (= (and b!810187 res!553639) b!810194))

(assert (= (and b!810194 res!553635) b!810185))

(assert (= (and b!810185 res!553634) b!810197))

(assert (= (and b!810197 res!553637) b!810186))

(assert (= (and b!810186 res!553633) b!810190))

(assert (= (and b!810190 res!553632) b!810195))

(assert (= (and b!810195 res!553644) b!810191))

(assert (= (and b!810191 res!553640) b!810196))

(assert (= (and b!810196 res!553645) b!810188))

(assert (= (and b!810188 res!553642) b!810198))

(declare-fun m!752467 () Bool)

(assert (=> b!810189 m!752467))

(assert (=> b!810189 m!752467))

(declare-fun m!752469 () Bool)

(assert (=> b!810189 m!752469))

(declare-fun m!752471 () Bool)

(assert (=> start!69562 m!752471))

(declare-fun m!752473 () Bool)

(assert (=> start!69562 m!752473))

(declare-fun m!752475 () Bool)

(assert (=> b!810197 m!752475))

(declare-fun m!752477 () Bool)

(assert (=> b!810186 m!752477))

(declare-fun m!752479 () Bool)

(assert (=> b!810186 m!752479))

(declare-fun m!752481 () Bool)

(assert (=> b!810190 m!752481))

(declare-fun m!752483 () Bool)

(assert (=> b!810190 m!752483))

(declare-fun m!752485 () Bool)

(assert (=> b!810190 m!752485))

(declare-fun m!752487 () Bool)

(assert (=> b!810190 m!752487))

(declare-fun m!752489 () Bool)

(assert (=> b!810193 m!752489))

(declare-fun m!752491 () Bool)

(assert (=> b!810196 m!752491))

(declare-fun m!752493 () Bool)

(assert (=> b!810194 m!752493))

(assert (=> b!810195 m!752467))

(assert (=> b!810195 m!752467))

(declare-fun m!752495 () Bool)

(assert (=> b!810195 m!752495))

(assert (=> b!810195 m!752467))

(declare-fun m!752497 () Bool)

(assert (=> b!810195 m!752497))

(declare-fun m!752499 () Bool)

(assert (=> b!810191 m!752499))

(assert (=> b!810191 m!752467))

(assert (=> b!810198 m!752467))

(assert (=> b!810198 m!752467))

(declare-fun m!752501 () Bool)

(assert (=> b!810198 m!752501))

(declare-fun m!752503 () Bool)

(assert (=> b!810188 m!752503))

(declare-fun m!752505 () Bool)

(assert (=> b!810185 m!752505))

(declare-fun m!752507 () Bool)

(assert (=> b!810187 m!752507))

(push 1)

