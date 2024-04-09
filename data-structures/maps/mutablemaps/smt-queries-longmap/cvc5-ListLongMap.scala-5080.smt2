; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69010 () Bool)

(assert start!69010)

(declare-fun b!804624 () Bool)

(declare-fun res!549317 () Bool)

(declare-fun e!445726 () Bool)

(assert (=> b!804624 (=> (not res!549317) (not e!445726))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43751 0))(
  ( (array!43752 (arr!20952 (Array (_ BitVec 32) (_ BitVec 64))) (size!21373 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43751)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!804624 (= res!549317 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21373 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20952 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21373 a!3170)) (= (select (arr!20952 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!804625 () Bool)

(declare-fun res!549313 () Bool)

(declare-fun e!445725 () Bool)

(assert (=> b!804625 (=> (not res!549313) (not e!445725))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43751 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804625 (= res!549313 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804626 () Bool)

(declare-fun e!445724 () Bool)

(assert (=> b!804626 (= e!445726 e!445724)))

(declare-fun res!549316 () Bool)

(assert (=> b!804626 (=> (not res!549316) (not e!445724))))

(declare-fun lt!360247 () (_ BitVec 64))

(declare-fun lt!360250 () array!43751)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8550 0))(
  ( (MissingZero!8550 (index!36567 (_ BitVec 32))) (Found!8550 (index!36568 (_ BitVec 32))) (Intermediate!8550 (undefined!9362 Bool) (index!36569 (_ BitVec 32)) (x!67421 (_ BitVec 32))) (Undefined!8550) (MissingVacant!8550 (index!36570 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43751 (_ BitVec 32)) SeekEntryResult!8550)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43751 (_ BitVec 32)) SeekEntryResult!8550)

(assert (=> b!804626 (= res!549316 (= (seekEntryOrOpen!0 lt!360247 lt!360250 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360247 lt!360250 mask!3266)))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!804626 (= lt!360247 (select (store (arr!20952 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!804626 (= lt!360250 (array!43752 (store (arr!20952 a!3170) i!1163 k!2044) (size!21373 a!3170)))))

(declare-fun b!804627 () Bool)

(declare-fun res!549321 () Bool)

(assert (=> b!804627 (=> (not res!549321) (not e!445725))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804627 (= res!549321 (validKeyInArray!0 (select (arr!20952 a!3170) j!153)))))

(declare-fun b!804628 () Bool)

(assert (=> b!804628 (= e!445725 e!445726)))

(declare-fun res!549319 () Bool)

(assert (=> b!804628 (=> (not res!549319) (not e!445726))))

(declare-fun lt!360248 () SeekEntryResult!8550)

(assert (=> b!804628 (= res!549319 (or (= lt!360248 (MissingZero!8550 i!1163)) (= lt!360248 (MissingVacant!8550 i!1163))))))

(assert (=> b!804628 (= lt!360248 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!804629 () Bool)

(assert (=> b!804629 (= e!445724 false)))

(declare-fun lt!360249 () SeekEntryResult!8550)

(assert (=> b!804629 (= lt!360249 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20952 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!360246 () SeekEntryResult!8550)

(assert (=> b!804629 (= lt!360246 (seekEntryOrOpen!0 (select (arr!20952 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!549320 () Bool)

(assert (=> start!69010 (=> (not res!549320) (not e!445725))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69010 (= res!549320 (validMask!0 mask!3266))))

(assert (=> start!69010 e!445725))

(assert (=> start!69010 true))

(declare-fun array_inv!16726 (array!43751) Bool)

(assert (=> start!69010 (array_inv!16726 a!3170)))

(declare-fun b!804630 () Bool)

(declare-fun res!549318 () Bool)

(assert (=> b!804630 (=> (not res!549318) (not e!445726))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43751 (_ BitVec 32)) Bool)

(assert (=> b!804630 (= res!549318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804631 () Bool)

(declare-fun res!549314 () Bool)

(assert (=> b!804631 (=> (not res!549314) (not e!445725))))

(assert (=> b!804631 (= res!549314 (validKeyInArray!0 k!2044))))

(declare-fun b!804632 () Bool)

(declare-fun res!549315 () Bool)

(assert (=> b!804632 (=> (not res!549315) (not e!445726))))

(declare-datatypes ((List!14968 0))(
  ( (Nil!14965) (Cons!14964 (h!16093 (_ BitVec 64)) (t!21291 List!14968)) )
))
(declare-fun arrayNoDuplicates!0 (array!43751 (_ BitVec 32) List!14968) Bool)

(assert (=> b!804632 (= res!549315 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14965))))

(declare-fun b!804633 () Bool)

(declare-fun res!549322 () Bool)

(assert (=> b!804633 (=> (not res!549322) (not e!445725))))

(assert (=> b!804633 (= res!549322 (and (= (size!21373 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21373 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21373 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!69010 res!549320) b!804633))

(assert (= (and b!804633 res!549322) b!804627))

(assert (= (and b!804627 res!549321) b!804631))

(assert (= (and b!804631 res!549314) b!804625))

(assert (= (and b!804625 res!549313) b!804628))

(assert (= (and b!804628 res!549319) b!804630))

(assert (= (and b!804630 res!549318) b!804632))

(assert (= (and b!804632 res!549315) b!804624))

(assert (= (and b!804624 res!549317) b!804626))

(assert (= (and b!804626 res!549316) b!804629))

(declare-fun m!746581 () Bool)

(assert (=> b!804630 m!746581))

(declare-fun m!746583 () Bool)

(assert (=> b!804631 m!746583))

(declare-fun m!746585 () Bool)

(assert (=> b!804629 m!746585))

(assert (=> b!804629 m!746585))

(declare-fun m!746587 () Bool)

(assert (=> b!804629 m!746587))

(assert (=> b!804629 m!746585))

(declare-fun m!746589 () Bool)

(assert (=> b!804629 m!746589))

(declare-fun m!746591 () Bool)

(assert (=> b!804624 m!746591))

(declare-fun m!746593 () Bool)

(assert (=> b!804624 m!746593))

(declare-fun m!746595 () Bool)

(assert (=> b!804626 m!746595))

(declare-fun m!746597 () Bool)

(assert (=> b!804626 m!746597))

(declare-fun m!746599 () Bool)

(assert (=> b!804626 m!746599))

(declare-fun m!746601 () Bool)

(assert (=> b!804626 m!746601))

(declare-fun m!746603 () Bool)

(assert (=> start!69010 m!746603))

(declare-fun m!746605 () Bool)

(assert (=> start!69010 m!746605))

(declare-fun m!746607 () Bool)

(assert (=> b!804625 m!746607))

(assert (=> b!804627 m!746585))

(assert (=> b!804627 m!746585))

(declare-fun m!746609 () Bool)

(assert (=> b!804627 m!746609))

(declare-fun m!746611 () Bool)

(assert (=> b!804628 m!746611))

(declare-fun m!746613 () Bool)

(assert (=> b!804632 m!746613))

(push 1)

