; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69436 () Bool)

(assert start!69436)

(declare-fun b!809280 () Bool)

(declare-fun e!447988 () Bool)

(declare-fun e!447985 () Bool)

(assert (=> b!809280 (= e!447988 e!447985)))

(declare-fun res!553177 () Bool)

(assert (=> b!809280 (=> (not res!553177) (not e!447985))))

(declare-datatypes ((SeekEntryResult!8661 0))(
  ( (MissingZero!8661 (index!37011 (_ BitVec 32))) (Found!8661 (index!37012 (_ BitVec 32))) (Intermediate!8661 (undefined!9473 Bool) (index!37013 (_ BitVec 32)) (x!67846 (_ BitVec 32))) (Undefined!8661) (MissingVacant!8661 (index!37014 (_ BitVec 32))) )
))
(declare-fun lt!362695 () SeekEntryResult!8661)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!809280 (= res!553177 (or (= lt!362695 (MissingZero!8661 i!1163)) (= lt!362695 (MissingVacant!8661 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-datatypes ((array!43985 0))(
  ( (array!43986 (arr!21063 (Array (_ BitVec 32) (_ BitVec 64))) (size!21484 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43985)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43985 (_ BitVec 32)) SeekEntryResult!8661)

(assert (=> b!809280 (= lt!362695 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!809281 () Bool)

(declare-fun e!447984 () Bool)

(assert (=> b!809281 (= e!447984 false)))

(declare-fun lt!362694 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!809281 (= lt!362694 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!809282 () Bool)

(declare-fun res!553186 () Bool)

(assert (=> b!809282 (=> (not res!553186) (not e!447985))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43985 (_ BitVec 32)) Bool)

(assert (=> b!809282 (= res!553186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!809283 () Bool)

(declare-fun res!553181 () Bool)

(assert (=> b!809283 (=> (not res!553181) (not e!447988))))

(declare-fun arrayContainsKey!0 (array!43985 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!809283 (= res!553181 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!553176 () Bool)

(assert (=> start!69436 (=> (not res!553176) (not e!447988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69436 (= res!553176 (validMask!0 mask!3266))))

(assert (=> start!69436 e!447988))

(assert (=> start!69436 true))

(declare-fun array_inv!16837 (array!43985) Bool)

(assert (=> start!69436 (array_inv!16837 a!3170)))

(declare-fun b!809279 () Bool)

(declare-fun res!553183 () Bool)

(assert (=> b!809279 (=> (not res!553183) (not e!447988))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!809279 (= res!553183 (validKeyInArray!0 k!2044))))

(declare-fun b!809284 () Bool)

(declare-fun e!447987 () Bool)

(assert (=> b!809284 (= e!447987 e!447984)))

(declare-fun res!553185 () Bool)

(assert (=> b!809284 (=> (not res!553185) (not e!447984))))

(declare-fun lt!362696 () SeekEntryResult!8661)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!362697 () SeekEntryResult!8661)

(assert (=> b!809284 (= res!553185 (and (= lt!362697 lt!362696) (= lt!362696 (Found!8661 j!153)) (not (= (select (arr!21063 a!3170) index!1236) (select (arr!21063 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43985 (_ BitVec 32)) SeekEntryResult!8661)

(assert (=> b!809284 (= lt!362696 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21063 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!809284 (= lt!362697 (seekEntryOrOpen!0 (select (arr!21063 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!809285 () Bool)

(declare-fun res!553180 () Bool)

(assert (=> b!809285 (=> (not res!553180) (not e!447985))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!809285 (= res!553180 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21484 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21063 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21484 a!3170)) (= (select (arr!21063 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!809286 () Bool)

(assert (=> b!809286 (= e!447985 e!447987)))

(declare-fun res!553182 () Bool)

(assert (=> b!809286 (=> (not res!553182) (not e!447987))))

(declare-fun lt!362698 () array!43985)

(declare-fun lt!362693 () (_ BitVec 64))

(assert (=> b!809286 (= res!553182 (= (seekEntryOrOpen!0 lt!362693 lt!362698 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362693 lt!362698 mask!3266)))))

(assert (=> b!809286 (= lt!362693 (select (store (arr!21063 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!809286 (= lt!362698 (array!43986 (store (arr!21063 a!3170) i!1163 k!2044) (size!21484 a!3170)))))

(declare-fun b!809287 () Bool)

(declare-fun res!553178 () Bool)

(assert (=> b!809287 (=> (not res!553178) (not e!447988))))

(assert (=> b!809287 (= res!553178 (and (= (size!21484 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21484 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21484 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!809288 () Bool)

(declare-fun res!553179 () Bool)

(assert (=> b!809288 (=> (not res!553179) (not e!447988))))

(assert (=> b!809288 (= res!553179 (validKeyInArray!0 (select (arr!21063 a!3170) j!153)))))

(declare-fun b!809289 () Bool)

(declare-fun res!553184 () Bool)

(assert (=> b!809289 (=> (not res!553184) (not e!447985))))

(declare-datatypes ((List!15079 0))(
  ( (Nil!15076) (Cons!15075 (h!16204 (_ BitVec 64)) (t!21402 List!15079)) )
))
(declare-fun arrayNoDuplicates!0 (array!43985 (_ BitVec 32) List!15079) Bool)

(assert (=> b!809289 (= res!553184 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15076))))

(assert (= (and start!69436 res!553176) b!809287))

(assert (= (and b!809287 res!553178) b!809288))

(assert (= (and b!809288 res!553179) b!809279))

(assert (= (and b!809279 res!553183) b!809283))

(assert (= (and b!809283 res!553181) b!809280))

(assert (= (and b!809280 res!553177) b!809282))

(assert (= (and b!809282 res!553186) b!809289))

(assert (= (and b!809289 res!553184) b!809285))

(assert (= (and b!809285 res!553180) b!809286))

(assert (= (and b!809286 res!553182) b!809284))

(assert (= (and b!809284 res!553185) b!809281))

(declare-fun m!751567 () Bool)

(assert (=> b!809279 m!751567))

(declare-fun m!751569 () Bool)

(assert (=> start!69436 m!751569))

(declare-fun m!751571 () Bool)

(assert (=> start!69436 m!751571))

(declare-fun m!751573 () Bool)

(assert (=> b!809284 m!751573))

(declare-fun m!751575 () Bool)

(assert (=> b!809284 m!751575))

(assert (=> b!809284 m!751575))

(declare-fun m!751577 () Bool)

(assert (=> b!809284 m!751577))

(assert (=> b!809284 m!751575))

(declare-fun m!751579 () Bool)

(assert (=> b!809284 m!751579))

(declare-fun m!751581 () Bool)

(assert (=> b!809281 m!751581))

(declare-fun m!751583 () Bool)

(assert (=> b!809286 m!751583))

(declare-fun m!751585 () Bool)

(assert (=> b!809286 m!751585))

(declare-fun m!751587 () Bool)

(assert (=> b!809286 m!751587))

(declare-fun m!751589 () Bool)

(assert (=> b!809286 m!751589))

(declare-fun m!751591 () Bool)

(assert (=> b!809289 m!751591))

(declare-fun m!751593 () Bool)

(assert (=> b!809285 m!751593))

(declare-fun m!751595 () Bool)

(assert (=> b!809285 m!751595))

(declare-fun m!751597 () Bool)

(assert (=> b!809283 m!751597))

(assert (=> b!809288 m!751575))

(assert (=> b!809288 m!751575))

(declare-fun m!751599 () Bool)

(assert (=> b!809288 m!751599))

(declare-fun m!751601 () Bool)

(assert (=> b!809282 m!751601))

(declare-fun m!751603 () Bool)

(assert (=> b!809280 m!751603))

(push 1)

