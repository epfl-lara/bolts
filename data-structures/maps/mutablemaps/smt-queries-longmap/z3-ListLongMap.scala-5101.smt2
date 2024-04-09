; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69234 () Bool)

(assert start!69234)

(declare-fun b!807206 () Bool)

(declare-fun res!551501 () Bool)

(declare-fun e!446955 () Bool)

(assert (=> b!807206 (=> (not res!551501) (not e!446955))))

(declare-datatypes ((array!43885 0))(
  ( (array!43886 (arr!21016 (Array (_ BitVec 32) (_ BitVec 64))) (size!21437 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43885)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43885 (_ BitVec 32)) Bool)

(assert (=> b!807206 (= res!551501 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!807207 () Bool)

(declare-fun res!551506 () Bool)

(assert (=> b!807207 (=> (not res!551506) (not e!446955))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!807207 (= res!551506 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21437 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21016 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21437 a!3170)) (= (select (arr!21016 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!807208 () Bool)

(declare-fun res!551503 () Bool)

(declare-fun e!446959 () Bool)

(assert (=> b!807208 (=> (not res!551503) (not e!446959))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807208 (= res!551503 (validKeyInArray!0 (select (arr!21016 a!3170) j!153)))))

(declare-fun b!807209 () Bool)

(declare-fun e!446957 () Bool)

(assert (=> b!807209 (= e!446955 e!446957)))

(declare-fun res!551505 () Bool)

(assert (=> b!807209 (=> (not res!551505) (not e!446957))))

(declare-fun lt!361639 () array!43885)

(declare-fun lt!361638 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8614 0))(
  ( (MissingZero!8614 (index!36823 (_ BitVec 32))) (Found!8614 (index!36824 (_ BitVec 32))) (Intermediate!8614 (undefined!9426 Bool) (index!36825 (_ BitVec 32)) (x!67659 (_ BitVec 32))) (Undefined!8614) (MissingVacant!8614 (index!36826 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43885 (_ BitVec 32)) SeekEntryResult!8614)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43885 (_ BitVec 32)) SeekEntryResult!8614)

(assert (=> b!807209 (= res!551505 (= (seekEntryOrOpen!0 lt!361638 lt!361639 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361638 lt!361639 mask!3266)))))

(declare-fun k0!2044 () (_ BitVec 64))

(assert (=> b!807209 (= lt!361638 (select (store (arr!21016 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!807209 (= lt!361639 (array!43886 (store (arr!21016 a!3170) i!1163 k0!2044) (size!21437 a!3170)))))

(declare-fun b!807210 () Bool)

(declare-fun res!551500 () Bool)

(assert (=> b!807210 (=> (not res!551500) (not e!446959))))

(declare-fun arrayContainsKey!0 (array!43885 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807210 (= res!551500 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!807211 () Bool)

(declare-fun res!551504 () Bool)

(assert (=> b!807211 (=> (not res!551504) (not e!446955))))

(declare-datatypes ((List!15032 0))(
  ( (Nil!15029) (Cons!15028 (h!16157 (_ BitVec 64)) (t!21355 List!15032)) )
))
(declare-fun arrayNoDuplicates!0 (array!43885 (_ BitVec 32) List!15032) Bool)

(assert (=> b!807211 (= res!551504 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15029))))

(declare-fun b!807213 () Bool)

(declare-fun res!551508 () Bool)

(assert (=> b!807213 (=> (not res!551508) (not e!446959))))

(assert (=> b!807213 (= res!551508 (validKeyInArray!0 k0!2044))))

(declare-fun b!807214 () Bool)

(declare-fun res!551507 () Bool)

(assert (=> b!807214 (=> (not res!551507) (not e!446959))))

(assert (=> b!807214 (= res!551507 (and (= (size!21437 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21437 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21437 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!807215 () Bool)

(assert (=> b!807215 (= e!446959 e!446955)))

(declare-fun res!551499 () Bool)

(assert (=> b!807215 (=> (not res!551499) (not e!446955))))

(declare-fun lt!361641 () SeekEntryResult!8614)

(assert (=> b!807215 (= res!551499 (or (= lt!361641 (MissingZero!8614 i!1163)) (= lt!361641 (MissingVacant!8614 i!1163))))))

(assert (=> b!807215 (= lt!361641 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!807216 () Bool)

(declare-fun e!446956 () Bool)

(assert (=> b!807216 (= e!446956 false)))

(declare-fun lt!361642 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807216 (= lt!361642 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!807212 () Bool)

(assert (=> b!807212 (= e!446957 e!446956)))

(declare-fun res!551502 () Bool)

(assert (=> b!807212 (=> (not res!551502) (not e!446956))))

(declare-fun lt!361640 () SeekEntryResult!8614)

(declare-fun lt!361637 () SeekEntryResult!8614)

(assert (=> b!807212 (= res!551502 (and (= lt!361637 lt!361640) (= lt!361640 (Found!8614 j!153)) (not (= (select (arr!21016 a!3170) index!1236) (select (arr!21016 a!3170) j!153)))))))

(assert (=> b!807212 (= lt!361640 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21016 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!807212 (= lt!361637 (seekEntryOrOpen!0 (select (arr!21016 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!551509 () Bool)

(assert (=> start!69234 (=> (not res!551509) (not e!446959))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69234 (= res!551509 (validMask!0 mask!3266))))

(assert (=> start!69234 e!446959))

(assert (=> start!69234 true))

(declare-fun array_inv!16790 (array!43885) Bool)

(assert (=> start!69234 (array_inv!16790 a!3170)))

(assert (= (and start!69234 res!551509) b!807214))

(assert (= (and b!807214 res!551507) b!807208))

(assert (= (and b!807208 res!551503) b!807213))

(assert (= (and b!807213 res!551508) b!807210))

(assert (= (and b!807210 res!551500) b!807215))

(assert (= (and b!807215 res!551499) b!807206))

(assert (= (and b!807206 res!551501) b!807211))

(assert (= (and b!807211 res!551504) b!807207))

(assert (= (and b!807207 res!551506) b!807209))

(assert (= (and b!807209 res!551505) b!807212))

(assert (= (and b!807212 res!551502) b!807216))

(declare-fun m!749325 () Bool)

(assert (=> start!69234 m!749325))

(declare-fun m!749327 () Bool)

(assert (=> start!69234 m!749327))

(declare-fun m!749329 () Bool)

(assert (=> b!807215 m!749329))

(declare-fun m!749331 () Bool)

(assert (=> b!807207 m!749331))

(declare-fun m!749333 () Bool)

(assert (=> b!807207 m!749333))

(declare-fun m!749335 () Bool)

(assert (=> b!807210 m!749335))

(declare-fun m!749337 () Bool)

(assert (=> b!807211 m!749337))

(declare-fun m!749339 () Bool)

(assert (=> b!807212 m!749339))

(declare-fun m!749341 () Bool)

(assert (=> b!807212 m!749341))

(assert (=> b!807212 m!749341))

(declare-fun m!749343 () Bool)

(assert (=> b!807212 m!749343))

(assert (=> b!807212 m!749341))

(declare-fun m!749345 () Bool)

(assert (=> b!807212 m!749345))

(declare-fun m!749347 () Bool)

(assert (=> b!807213 m!749347))

(declare-fun m!749349 () Bool)

(assert (=> b!807206 m!749349))

(declare-fun m!749351 () Bool)

(assert (=> b!807209 m!749351))

(declare-fun m!749353 () Bool)

(assert (=> b!807209 m!749353))

(declare-fun m!749355 () Bool)

(assert (=> b!807209 m!749355))

(declare-fun m!749357 () Bool)

(assert (=> b!807209 m!749357))

(declare-fun m!749359 () Bool)

(assert (=> b!807216 m!749359))

(assert (=> b!807208 m!749341))

(assert (=> b!807208 m!749341))

(declare-fun m!749361 () Bool)

(assert (=> b!807208 m!749361))

(check-sat (not b!807213) (not b!807210) (not b!807209) (not b!807212) (not start!69234) (not b!807208) (not b!807216) (not b!807211) (not b!807206) (not b!807215))
(check-sat)
