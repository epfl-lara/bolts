; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69440 () Bool)

(assert start!69440)

(declare-fun b!809345 () Bool)

(declare-fun res!553245 () Bool)

(declare-fun e!448017 () Bool)

(assert (=> b!809345 (=> (not res!553245) (not e!448017))))

(declare-datatypes ((array!43989 0))(
  ( (array!43990 (arr!21065 (Array (_ BitVec 32) (_ BitVec 64))) (size!21486 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43989)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43989 (_ BitVec 32)) Bool)

(assert (=> b!809345 (= res!553245 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!809346 () Bool)

(declare-fun e!448016 () Bool)

(assert (=> b!809346 (= e!448016 e!448017)))

(declare-fun res!553243 () Bool)

(assert (=> b!809346 (=> (not res!553243) (not e!448017))))

(declare-datatypes ((SeekEntryResult!8663 0))(
  ( (MissingZero!8663 (index!37019 (_ BitVec 32))) (Found!8663 (index!37020 (_ BitVec 32))) (Intermediate!8663 (undefined!9475 Bool) (index!37021 (_ BitVec 32)) (x!67848 (_ BitVec 32))) (Undefined!8663) (MissingVacant!8663 (index!37022 (_ BitVec 32))) )
))
(declare-fun lt!362729 () SeekEntryResult!8663)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!809346 (= res!553243 (or (= lt!362729 (MissingZero!8663 i!1163)) (= lt!362729 (MissingVacant!8663 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43989 (_ BitVec 32)) SeekEntryResult!8663)

(assert (=> b!809346 (= lt!362729 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!809347 () Bool)

(declare-fun res!553251 () Bool)

(assert (=> b!809347 (=> (not res!553251) (not e!448016))))

(declare-fun arrayContainsKey!0 (array!43989 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!809347 (= res!553251 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!809348 () Bool)

(declare-fun res!553247 () Bool)

(assert (=> b!809348 (=> (not res!553247) (not e!448016))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!809348 (= res!553247 (and (= (size!21486 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21486 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21486 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!809349 () Bool)

(declare-fun res!553250 () Bool)

(assert (=> b!809349 (=> (not res!553250) (not e!448016))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!809349 (= res!553250 (validKeyInArray!0 k!2044))))

(declare-fun b!809350 () Bool)

(declare-fun e!448015 () Bool)

(assert (=> b!809350 (= e!448017 e!448015)))

(declare-fun res!553249 () Bool)

(assert (=> b!809350 (=> (not res!553249) (not e!448015))))

(declare-fun lt!362730 () array!43989)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!362732 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43989 (_ BitVec 32)) SeekEntryResult!8663)

(assert (=> b!809350 (= res!553249 (= (seekEntryOrOpen!0 lt!362732 lt!362730 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362732 lt!362730 mask!3266)))))

(assert (=> b!809350 (= lt!362732 (select (store (arr!21065 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!809350 (= lt!362730 (array!43990 (store (arr!21065 a!3170) i!1163 k!2044) (size!21486 a!3170)))))

(declare-fun b!809351 () Bool)

(declare-fun res!553244 () Bool)

(assert (=> b!809351 (=> (not res!553244) (not e!448016))))

(assert (=> b!809351 (= res!553244 (validKeyInArray!0 (select (arr!21065 a!3170) j!153)))))

(declare-fun res!553246 () Bool)

(assert (=> start!69440 (=> (not res!553246) (not e!448016))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69440 (= res!553246 (validMask!0 mask!3266))))

(assert (=> start!69440 e!448016))

(assert (=> start!69440 true))

(declare-fun array_inv!16839 (array!43989) Bool)

(assert (=> start!69440 (array_inv!16839 a!3170)))

(declare-fun b!809352 () Bool)

(declare-fun e!448014 () Bool)

(assert (=> b!809352 (= e!448015 e!448014)))

(declare-fun res!553242 () Bool)

(assert (=> b!809352 (=> (not res!553242) (not e!448014))))

(declare-fun lt!362731 () SeekEntryResult!8663)

(declare-fun lt!362733 () SeekEntryResult!8663)

(assert (=> b!809352 (= res!553242 (and (= lt!362733 lt!362731) (= lt!362731 (Found!8663 j!153)) (not (= (select (arr!21065 a!3170) index!1236) (select (arr!21065 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!809352 (= lt!362731 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21065 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!809352 (= lt!362733 (seekEntryOrOpen!0 (select (arr!21065 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!809353 () Bool)

(assert (=> b!809353 (= e!448014 false)))

(declare-fun lt!362734 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!809353 (= lt!362734 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!809354 () Bool)

(declare-fun res!553252 () Bool)

(assert (=> b!809354 (=> (not res!553252) (not e!448017))))

(assert (=> b!809354 (= res!553252 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21486 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21065 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21486 a!3170)) (= (select (arr!21065 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!809355 () Bool)

(declare-fun res!553248 () Bool)

(assert (=> b!809355 (=> (not res!553248) (not e!448017))))

(declare-datatypes ((List!15081 0))(
  ( (Nil!15078) (Cons!15077 (h!16206 (_ BitVec 64)) (t!21404 List!15081)) )
))
(declare-fun arrayNoDuplicates!0 (array!43989 (_ BitVec 32) List!15081) Bool)

(assert (=> b!809355 (= res!553248 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15078))))

(assert (= (and start!69440 res!553246) b!809348))

(assert (= (and b!809348 res!553247) b!809351))

(assert (= (and b!809351 res!553244) b!809349))

(assert (= (and b!809349 res!553250) b!809347))

(assert (= (and b!809347 res!553251) b!809346))

(assert (= (and b!809346 res!553243) b!809345))

(assert (= (and b!809345 res!553245) b!809355))

(assert (= (and b!809355 res!553248) b!809354))

(assert (= (and b!809354 res!553252) b!809350))

(assert (= (and b!809350 res!553249) b!809352))

(assert (= (and b!809352 res!553242) b!809353))

(declare-fun m!751643 () Bool)

(assert (=> b!809353 m!751643))

(declare-fun m!751645 () Bool)

(assert (=> b!809349 m!751645))

(declare-fun m!751647 () Bool)

(assert (=> b!809354 m!751647))

(declare-fun m!751649 () Bool)

(assert (=> b!809354 m!751649))

(declare-fun m!751651 () Bool)

(assert (=> b!809346 m!751651))

(declare-fun m!751653 () Bool)

(assert (=> b!809345 m!751653))

(declare-fun m!751655 () Bool)

(assert (=> b!809352 m!751655))

(declare-fun m!751657 () Bool)

(assert (=> b!809352 m!751657))

(assert (=> b!809352 m!751657))

(declare-fun m!751659 () Bool)

(assert (=> b!809352 m!751659))

(assert (=> b!809352 m!751657))

(declare-fun m!751661 () Bool)

(assert (=> b!809352 m!751661))

(declare-fun m!751663 () Bool)

(assert (=> b!809355 m!751663))

(declare-fun m!751665 () Bool)

(assert (=> start!69440 m!751665))

(declare-fun m!751667 () Bool)

(assert (=> start!69440 m!751667))

(assert (=> b!809351 m!751657))

(assert (=> b!809351 m!751657))

(declare-fun m!751669 () Bool)

(assert (=> b!809351 m!751669))

(declare-fun m!751671 () Bool)

(assert (=> b!809347 m!751671))

(declare-fun m!751673 () Bool)

(assert (=> b!809350 m!751673))

(declare-fun m!751675 () Bool)

(assert (=> b!809350 m!751675))

(declare-fun m!751677 () Bool)

(assert (=> b!809350 m!751677))

(declare-fun m!751679 () Bool)

(assert (=> b!809350 m!751679))

(push 1)

(assert (not b!809345))

(assert (not b!809350))

(assert (not b!809346))

(assert (not b!809351))

(assert (not start!69440))

(assert (not b!809347))

(assert (not b!809352))

(assert (not b!809349))

(assert (not b!809355))

(assert (not b!809353))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

