; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69020 () Bool)

(assert start!69020)

(declare-fun b!804774 () Bool)

(declare-fun e!445784 () Bool)

(assert (=> b!804774 (= e!445784 false)))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43761 0))(
  ( (array!43762 (arr!20957 (Array (_ BitVec 32) (_ BitVec 64))) (size!21378 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43761)

(declare-datatypes ((SeekEntryResult!8555 0))(
  ( (MissingZero!8555 (index!36587 (_ BitVec 32))) (Found!8555 (index!36588 (_ BitVec 32))) (Intermediate!8555 (undefined!9367 Bool) (index!36589 (_ BitVec 32)) (x!67434 (_ BitVec 32))) (Undefined!8555) (MissingVacant!8555 (index!36590 (_ BitVec 32))) )
))
(declare-fun lt!360325 () SeekEntryResult!8555)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43761 (_ BitVec 32)) SeekEntryResult!8555)

(assert (=> b!804774 (= lt!360325 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20957 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!360322 () SeekEntryResult!8555)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43761 (_ BitVec 32)) SeekEntryResult!8555)

(assert (=> b!804774 (= lt!360322 (seekEntryOrOpen!0 (select (arr!20957 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!804775 () Bool)

(declare-fun res!549466 () Bool)

(declare-fun e!445785 () Bool)

(assert (=> b!804775 (=> (not res!549466) (not e!445785))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43761 (_ BitVec 32)) Bool)

(assert (=> b!804775 (= res!549466 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804776 () Bool)

(declare-fun e!445786 () Bool)

(assert (=> b!804776 (= e!445786 e!445785)))

(declare-fun res!549464 () Bool)

(assert (=> b!804776 (=> (not res!549464) (not e!445785))))

(declare-fun lt!360323 () SeekEntryResult!8555)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!804776 (= res!549464 (or (= lt!360323 (MissingZero!8555 i!1163)) (= lt!360323 (MissingVacant!8555 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!804776 (= lt!360323 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!804777 () Bool)

(assert (=> b!804777 (= e!445785 e!445784)))

(declare-fun res!549465 () Bool)

(assert (=> b!804777 (=> (not res!549465) (not e!445784))))

(declare-fun lt!360321 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!360324 () array!43761)

(assert (=> b!804777 (= res!549465 (= (seekEntryOrOpen!0 lt!360321 lt!360324 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360321 lt!360324 mask!3266)))))

(assert (=> b!804777 (= lt!360321 (select (store (arr!20957 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!804777 (= lt!360324 (array!43762 (store (arr!20957 a!3170) i!1163 k!2044) (size!21378 a!3170)))))

(declare-fun b!804778 () Bool)

(declare-fun res!549467 () Bool)

(assert (=> b!804778 (=> (not res!549467) (not e!445786))))

(declare-fun arrayContainsKey!0 (array!43761 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804778 (= res!549467 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804779 () Bool)

(declare-fun res!549470 () Bool)

(assert (=> b!804779 (=> (not res!549470) (not e!445785))))

(declare-datatypes ((List!14973 0))(
  ( (Nil!14970) (Cons!14969 (h!16098 (_ BitVec 64)) (t!21296 List!14973)) )
))
(declare-fun arrayNoDuplicates!0 (array!43761 (_ BitVec 32) List!14973) Bool)

(assert (=> b!804779 (= res!549470 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14970))))

(declare-fun b!804780 () Bool)

(declare-fun res!549468 () Bool)

(assert (=> b!804780 (=> (not res!549468) (not e!445786))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804780 (= res!549468 (validKeyInArray!0 k!2044))))

(declare-fun b!804782 () Bool)

(declare-fun res!549469 () Bool)

(assert (=> b!804782 (=> (not res!549469) (not e!445786))))

(assert (=> b!804782 (= res!549469 (validKeyInArray!0 (select (arr!20957 a!3170) j!153)))))

(declare-fun b!804783 () Bool)

(declare-fun res!549463 () Bool)

(assert (=> b!804783 (=> (not res!549463) (not e!445785))))

(assert (=> b!804783 (= res!549463 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21378 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20957 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21378 a!3170)) (= (select (arr!20957 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!804781 () Bool)

(declare-fun res!549471 () Bool)

(assert (=> b!804781 (=> (not res!549471) (not e!445786))))

(assert (=> b!804781 (= res!549471 (and (= (size!21378 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21378 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21378 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!549472 () Bool)

(assert (=> start!69020 (=> (not res!549472) (not e!445786))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69020 (= res!549472 (validMask!0 mask!3266))))

(assert (=> start!69020 e!445786))

(assert (=> start!69020 true))

(declare-fun array_inv!16731 (array!43761) Bool)

(assert (=> start!69020 (array_inv!16731 a!3170)))

(assert (= (and start!69020 res!549472) b!804781))

(assert (= (and b!804781 res!549471) b!804782))

(assert (= (and b!804782 res!549469) b!804780))

(assert (= (and b!804780 res!549468) b!804778))

(assert (= (and b!804778 res!549467) b!804776))

(assert (= (and b!804776 res!549464) b!804775))

(assert (= (and b!804775 res!549466) b!804779))

(assert (= (and b!804779 res!549470) b!804783))

(assert (= (and b!804783 res!549463) b!804777))

(assert (= (and b!804777 res!549465) b!804774))

(declare-fun m!746751 () Bool)

(assert (=> b!804775 m!746751))

(declare-fun m!746753 () Bool)

(assert (=> start!69020 m!746753))

(declare-fun m!746755 () Bool)

(assert (=> start!69020 m!746755))

(declare-fun m!746757 () Bool)

(assert (=> b!804779 m!746757))

(declare-fun m!746759 () Bool)

(assert (=> b!804778 m!746759))

(declare-fun m!746761 () Bool)

(assert (=> b!804783 m!746761))

(declare-fun m!746763 () Bool)

(assert (=> b!804783 m!746763))

(declare-fun m!746765 () Bool)

(assert (=> b!804776 m!746765))

(declare-fun m!746767 () Bool)

(assert (=> b!804777 m!746767))

(declare-fun m!746769 () Bool)

(assert (=> b!804777 m!746769))

(declare-fun m!746771 () Bool)

(assert (=> b!804777 m!746771))

(declare-fun m!746773 () Bool)

(assert (=> b!804777 m!746773))

(declare-fun m!746775 () Bool)

(assert (=> b!804782 m!746775))

(assert (=> b!804782 m!746775))

(declare-fun m!746777 () Bool)

(assert (=> b!804782 m!746777))

(declare-fun m!746779 () Bool)

(assert (=> b!804780 m!746779))

(assert (=> b!804774 m!746775))

(assert (=> b!804774 m!746775))

(declare-fun m!746781 () Bool)

(assert (=> b!804774 m!746781))

(assert (=> b!804774 m!746775))

(declare-fun m!746783 () Bool)

(assert (=> b!804774 m!746783))

(push 1)

(assert (not b!804775))

(assert (not b!804777))

(assert (not b!804779))

(assert (not b!804776))

