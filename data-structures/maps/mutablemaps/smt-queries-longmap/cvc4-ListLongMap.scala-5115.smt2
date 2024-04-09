; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69428 () Bool)

(assert start!69428)

(declare-fun b!809148 () Bool)

(declare-fun e!447926 () Bool)

(assert (=> b!809148 (= e!447926 false)))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!362624 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!809148 (= lt!362624 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!809149 () Bool)

(declare-fun res!553049 () Bool)

(declare-fun e!447925 () Bool)

(assert (=> b!809149 (=> (not res!553049) (not e!447925))))

(declare-datatypes ((array!43977 0))(
  ( (array!43978 (arr!21059 (Array (_ BitVec 32) (_ BitVec 64))) (size!21480 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43977)

(declare-datatypes ((List!15075 0))(
  ( (Nil!15072) (Cons!15071 (h!16200 (_ BitVec 64)) (t!21398 List!15075)) )
))
(declare-fun arrayNoDuplicates!0 (array!43977 (_ BitVec 32) List!15075) Bool)

(assert (=> b!809149 (= res!553049 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15072))))

(declare-fun b!809150 () Bool)

(declare-fun res!553050 () Bool)

(assert (=> b!809150 (=> (not res!553050) (not e!447925))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43977 (_ BitVec 32)) Bool)

(assert (=> b!809150 (= res!553050 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!809151 () Bool)

(declare-fun e!447927 () Bool)

(assert (=> b!809151 (= e!447925 e!447927)))

(declare-fun res!553046 () Bool)

(assert (=> b!809151 (=> (not res!553046) (not e!447927))))

(declare-fun lt!362621 () array!43977)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!362626 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8657 0))(
  ( (MissingZero!8657 (index!36995 (_ BitVec 32))) (Found!8657 (index!36996 (_ BitVec 32))) (Intermediate!8657 (undefined!9469 Bool) (index!36997 (_ BitVec 32)) (x!67826 (_ BitVec 32))) (Undefined!8657) (MissingVacant!8657 (index!36998 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43977 (_ BitVec 32)) SeekEntryResult!8657)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43977 (_ BitVec 32)) SeekEntryResult!8657)

(assert (=> b!809151 (= res!553046 (= (seekEntryOrOpen!0 lt!362626 lt!362621 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362626 lt!362621 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!809151 (= lt!362626 (select (store (arr!21059 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!809151 (= lt!362621 (array!43978 (store (arr!21059 a!3170) i!1163 k!2044) (size!21480 a!3170)))))

(declare-fun b!809152 () Bool)

(declare-fun res!553047 () Bool)

(declare-fun e!447924 () Bool)

(assert (=> b!809152 (=> (not res!553047) (not e!447924))))

(assert (=> b!809152 (= res!553047 (and (= (size!21480 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21480 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21480 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!809153 () Bool)

(declare-fun res!553045 () Bool)

(assert (=> b!809153 (=> (not res!553045) (not e!447925))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!809153 (= res!553045 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21480 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21059 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21480 a!3170)) (= (select (arr!21059 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!809154 () Bool)

(declare-fun res!553054 () Bool)

(assert (=> b!809154 (=> (not res!553054) (not e!447924))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!809154 (= res!553054 (validKeyInArray!0 k!2044))))

(declare-fun b!809155 () Bool)

(assert (=> b!809155 (= e!447927 e!447926)))

(declare-fun res!553052 () Bool)

(assert (=> b!809155 (=> (not res!553052) (not e!447926))))

(declare-fun lt!362622 () SeekEntryResult!8657)

(declare-fun lt!362623 () SeekEntryResult!8657)

(assert (=> b!809155 (= res!553052 (and (= lt!362622 lt!362623) (= lt!362623 (Found!8657 j!153)) (not (= (select (arr!21059 a!3170) index!1236) (select (arr!21059 a!3170) j!153)))))))

(assert (=> b!809155 (= lt!362623 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21059 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!809155 (= lt!362622 (seekEntryOrOpen!0 (select (arr!21059 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!809147 () Bool)

(assert (=> b!809147 (= e!447924 e!447925)))

(declare-fun res!553048 () Bool)

(assert (=> b!809147 (=> (not res!553048) (not e!447925))))

(declare-fun lt!362625 () SeekEntryResult!8657)

(assert (=> b!809147 (= res!553048 (or (= lt!362625 (MissingZero!8657 i!1163)) (= lt!362625 (MissingVacant!8657 i!1163))))))

(assert (=> b!809147 (= lt!362625 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!553044 () Bool)

(assert (=> start!69428 (=> (not res!553044) (not e!447924))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69428 (= res!553044 (validMask!0 mask!3266))))

(assert (=> start!69428 e!447924))

(assert (=> start!69428 true))

(declare-fun array_inv!16833 (array!43977) Bool)

(assert (=> start!69428 (array_inv!16833 a!3170)))

(declare-fun b!809156 () Bool)

(declare-fun res!553051 () Bool)

(assert (=> b!809156 (=> (not res!553051) (not e!447924))))

(assert (=> b!809156 (= res!553051 (validKeyInArray!0 (select (arr!21059 a!3170) j!153)))))

(declare-fun b!809157 () Bool)

(declare-fun res!553053 () Bool)

(assert (=> b!809157 (=> (not res!553053) (not e!447924))))

(declare-fun arrayContainsKey!0 (array!43977 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!809157 (= res!553053 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!69428 res!553044) b!809152))

(assert (= (and b!809152 res!553047) b!809156))

(assert (= (and b!809156 res!553051) b!809154))

(assert (= (and b!809154 res!553054) b!809157))

(assert (= (and b!809157 res!553053) b!809147))

(assert (= (and b!809147 res!553048) b!809150))

(assert (= (and b!809150 res!553050) b!809149))

(assert (= (and b!809149 res!553049) b!809153))

(assert (= (and b!809153 res!553045) b!809151))

(assert (= (and b!809151 res!553046) b!809155))

(assert (= (and b!809155 res!553052) b!809148))

(declare-fun m!751415 () Bool)

(assert (=> b!809156 m!751415))

(assert (=> b!809156 m!751415))

(declare-fun m!751417 () Bool)

(assert (=> b!809156 m!751417))

(declare-fun m!751419 () Bool)

(assert (=> b!809155 m!751419))

(assert (=> b!809155 m!751415))

(assert (=> b!809155 m!751415))

(declare-fun m!751421 () Bool)

(assert (=> b!809155 m!751421))

(assert (=> b!809155 m!751415))

(declare-fun m!751423 () Bool)

(assert (=> b!809155 m!751423))

(declare-fun m!751425 () Bool)

(assert (=> b!809149 m!751425))

(declare-fun m!751427 () Bool)

(assert (=> b!809154 m!751427))

(declare-fun m!751429 () Bool)

(assert (=> b!809148 m!751429))

(declare-fun m!751431 () Bool)

(assert (=> b!809153 m!751431))

(declare-fun m!751433 () Bool)

(assert (=> b!809153 m!751433))

(declare-fun m!751435 () Bool)

(assert (=> b!809151 m!751435))

(declare-fun m!751437 () Bool)

(assert (=> b!809151 m!751437))

(declare-fun m!751439 () Bool)

(assert (=> b!809151 m!751439))

(declare-fun m!751441 () Bool)

(assert (=> b!809151 m!751441))

(declare-fun m!751443 () Bool)

(assert (=> b!809157 m!751443))

(declare-fun m!751445 () Bool)

(assert (=> b!809147 m!751445))

(declare-fun m!751447 () Bool)

(assert (=> b!809150 m!751447))

(declare-fun m!751449 () Bool)

(assert (=> start!69428 m!751449))

(declare-fun m!751451 () Bool)

(assert (=> start!69428 m!751451))

(push 1)

