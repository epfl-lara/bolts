; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69016 () Bool)

(assert start!69016)

(declare-fun b!804714 () Bool)

(declare-fun res!549403 () Bool)

(declare-fun e!445762 () Bool)

(assert (=> b!804714 (=> (not res!549403) (not e!445762))))

(declare-datatypes ((array!43757 0))(
  ( (array!43758 (arr!20955 (Array (_ BitVec 32) (_ BitVec 64))) (size!21376 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43757)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43757 (_ BitVec 32)) Bool)

(assert (=> b!804714 (= res!549403 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804715 () Bool)

(declare-fun e!445759 () Bool)

(assert (=> b!804715 (= e!445759 false)))

(declare-datatypes ((SeekEntryResult!8553 0))(
  ( (MissingZero!8553 (index!36579 (_ BitVec 32))) (Found!8553 (index!36580 (_ BitVec 32))) (Intermediate!8553 (undefined!9365 Bool) (index!36581 (_ BitVec 32)) (x!67432 (_ BitVec 32))) (Undefined!8553) (MissingVacant!8553 (index!36582 (_ BitVec 32))) )
))
(declare-fun lt!360293 () SeekEntryResult!8553)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43757 (_ BitVec 32)) SeekEntryResult!8553)

(assert (=> b!804715 (= lt!360293 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20955 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!360292 () SeekEntryResult!8553)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43757 (_ BitVec 32)) SeekEntryResult!8553)

(assert (=> b!804715 (= lt!360292 (seekEntryOrOpen!0 (select (arr!20955 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!804716 () Bool)

(assert (=> b!804716 (= e!445762 e!445759)))

(declare-fun res!549408 () Bool)

(assert (=> b!804716 (=> (not res!549408) (not e!445759))))

(declare-fun lt!360294 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!360295 () array!43757)

(assert (=> b!804716 (= res!549408 (= (seekEntryOrOpen!0 lt!360294 lt!360295 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360294 lt!360295 mask!3266)))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!804716 (= lt!360294 (select (store (arr!20955 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!804716 (= lt!360295 (array!43758 (store (arr!20955 a!3170) i!1163 k!2044) (size!21376 a!3170)))))

(declare-fun b!804717 () Bool)

(declare-fun res!549412 () Bool)

(assert (=> b!804717 (=> (not res!549412) (not e!445762))))

(assert (=> b!804717 (= res!549412 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21376 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20955 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21376 a!3170)) (= (select (arr!20955 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!804718 () Bool)

(declare-fun res!549406 () Bool)

(declare-fun e!445760 () Bool)

(assert (=> b!804718 (=> (not res!549406) (not e!445760))))

(assert (=> b!804718 (= res!549406 (and (= (size!21376 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21376 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21376 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804719 () Bool)

(declare-fun res!549410 () Bool)

(assert (=> b!804719 (=> (not res!549410) (not e!445760))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804719 (= res!549410 (validKeyInArray!0 k!2044))))

(declare-fun b!804720 () Bool)

(declare-fun res!549405 () Bool)

(assert (=> b!804720 (=> (not res!549405) (not e!445760))))

(declare-fun arrayContainsKey!0 (array!43757 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804720 (= res!549405 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!549407 () Bool)

(assert (=> start!69016 (=> (not res!549407) (not e!445760))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69016 (= res!549407 (validMask!0 mask!3266))))

(assert (=> start!69016 e!445760))

(assert (=> start!69016 true))

(declare-fun array_inv!16729 (array!43757) Bool)

(assert (=> start!69016 (array_inv!16729 a!3170)))

(declare-fun b!804721 () Bool)

(declare-fun res!549411 () Bool)

(assert (=> b!804721 (=> (not res!549411) (not e!445762))))

(declare-datatypes ((List!14971 0))(
  ( (Nil!14968) (Cons!14967 (h!16096 (_ BitVec 64)) (t!21294 List!14971)) )
))
(declare-fun arrayNoDuplicates!0 (array!43757 (_ BitVec 32) List!14971) Bool)

(assert (=> b!804721 (= res!549411 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14968))))

(declare-fun b!804722 () Bool)

(declare-fun res!549404 () Bool)

(assert (=> b!804722 (=> (not res!549404) (not e!445760))))

(assert (=> b!804722 (= res!549404 (validKeyInArray!0 (select (arr!20955 a!3170) j!153)))))

(declare-fun b!804723 () Bool)

(assert (=> b!804723 (= e!445760 e!445762)))

(declare-fun res!549409 () Bool)

(assert (=> b!804723 (=> (not res!549409) (not e!445762))))

(declare-fun lt!360291 () SeekEntryResult!8553)

(assert (=> b!804723 (= res!549409 (or (= lt!360291 (MissingZero!8553 i!1163)) (= lt!360291 (MissingVacant!8553 i!1163))))))

(assert (=> b!804723 (= lt!360291 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(assert (= (and start!69016 res!549407) b!804718))

(assert (= (and b!804718 res!549406) b!804722))

(assert (= (and b!804722 res!549404) b!804719))

(assert (= (and b!804719 res!549410) b!804720))

(assert (= (and b!804720 res!549405) b!804723))

(assert (= (and b!804723 res!549409) b!804714))

(assert (= (and b!804714 res!549403) b!804721))

(assert (= (and b!804721 res!549411) b!804717))

(assert (= (and b!804717 res!549412) b!804716))

(assert (= (and b!804716 res!549408) b!804715))

(declare-fun m!746683 () Bool)

(assert (=> b!804716 m!746683))

(declare-fun m!746685 () Bool)

(assert (=> b!804716 m!746685))

(declare-fun m!746687 () Bool)

(assert (=> b!804716 m!746687))

(declare-fun m!746689 () Bool)

(assert (=> b!804716 m!746689))

(declare-fun m!746691 () Bool)

(assert (=> start!69016 m!746691))

(declare-fun m!746693 () Bool)

(assert (=> start!69016 m!746693))

(declare-fun m!746695 () Bool)

(assert (=> b!804719 m!746695))

(declare-fun m!746697 () Bool)

(assert (=> b!804715 m!746697))

(assert (=> b!804715 m!746697))

(declare-fun m!746699 () Bool)

(assert (=> b!804715 m!746699))

(assert (=> b!804715 m!746697))

(declare-fun m!746701 () Bool)

(assert (=> b!804715 m!746701))

(declare-fun m!746703 () Bool)

(assert (=> b!804721 m!746703))

(assert (=> b!804722 m!746697))

(assert (=> b!804722 m!746697))

(declare-fun m!746705 () Bool)

(assert (=> b!804722 m!746705))

(declare-fun m!746707 () Bool)

(assert (=> b!804714 m!746707))

(declare-fun m!746709 () Bool)

(assert (=> b!804723 m!746709))

(declare-fun m!746711 () Bool)

(assert (=> b!804720 m!746711))

(declare-fun m!746713 () Bool)

(assert (=> b!804717 m!746713))

(declare-fun m!746715 () Bool)

(assert (=> b!804717 m!746715))

(push 1)

