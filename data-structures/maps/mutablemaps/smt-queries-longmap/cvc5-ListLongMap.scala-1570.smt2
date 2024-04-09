; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29952 () Bool)

(assert start!29952)

(declare-fun b!300694 () Bool)

(declare-fun e!189864 () Bool)

(assert (=> b!300694 (= e!189864 false)))

(declare-fun lt!149662 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2346 0))(
  ( (MissingZero!2346 (index!11560 (_ BitVec 32))) (Found!2346 (index!11561 (_ BitVec 32))) (Intermediate!2346 (undefined!3158 Bool) (index!11562 (_ BitVec 32)) (x!29789 (_ BitVec 32))) (Undefined!2346) (MissingVacant!2346 (index!11563 (_ BitVec 32))) )
))
(declare-fun lt!149663 () SeekEntryResult!2346)

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!15188 0))(
  ( (array!15189 (arr!7186 (Array (_ BitVec 32) (_ BitVec 64))) (size!7538 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15188)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15188 (_ BitVec 32)) SeekEntryResult!2346)

(assert (=> b!300694 (= lt!149663 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149662 k!2524 (array!15189 (store (arr!7186 a!3312) i!1256 k!2524) (size!7538 a!3312)) mask!3809))))

(declare-fun lt!149660 () SeekEntryResult!2346)

(assert (=> b!300694 (= lt!149660 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149662 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!300694 (= lt!149662 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!300695 () Bool)

(declare-fun res!158603 () Bool)

(declare-fun e!189863 () Bool)

(assert (=> b!300695 (=> (not res!158603) (not e!189863))))

(declare-fun arrayContainsKey!0 (array!15188 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300695 (= res!158603 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!300696 () Bool)

(declare-fun res!158605 () Bool)

(assert (=> b!300696 (=> (not res!158605) (not e!189863))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300696 (= res!158605 (validKeyInArray!0 k!2524))))

(declare-fun b!300697 () Bool)

(declare-fun res!158607 () Bool)

(assert (=> b!300697 (=> (not res!158607) (not e!189864))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15188 (_ BitVec 32)) Bool)

(assert (=> b!300697 (= res!158607 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!158606 () Bool)

(assert (=> start!29952 (=> (not res!158606) (not e!189863))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29952 (= res!158606 (validMask!0 mask!3809))))

(assert (=> start!29952 e!189863))

(assert (=> start!29952 true))

(declare-fun array_inv!5140 (array!15188) Bool)

(assert (=> start!29952 (array_inv!5140 a!3312)))

(declare-fun b!300698 () Bool)

(assert (=> b!300698 (= e!189863 e!189864)))

(declare-fun res!158602 () Bool)

(assert (=> b!300698 (=> (not res!158602) (not e!189864))))

(declare-fun lt!149661 () SeekEntryResult!2346)

(assert (=> b!300698 (= res!158602 (or (= lt!149661 (MissingZero!2346 i!1256)) (= lt!149661 (MissingVacant!2346 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15188 (_ BitVec 32)) SeekEntryResult!2346)

(assert (=> b!300698 (= lt!149661 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!300699 () Bool)

(declare-fun res!158604 () Bool)

(assert (=> b!300699 (=> (not res!158604) (not e!189863))))

(assert (=> b!300699 (= res!158604 (and (= (size!7538 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7538 a!3312))))))

(assert (= (and start!29952 res!158606) b!300699))

(assert (= (and b!300699 res!158604) b!300696))

(assert (= (and b!300696 res!158605) b!300695))

(assert (= (and b!300695 res!158603) b!300698))

(assert (= (and b!300698 res!158602) b!300697))

(assert (= (and b!300697 res!158607) b!300694))

(declare-fun m!312619 () Bool)

(assert (=> start!29952 m!312619))

(declare-fun m!312621 () Bool)

(assert (=> start!29952 m!312621))

(declare-fun m!312623 () Bool)

(assert (=> b!300696 m!312623))

(declare-fun m!312625 () Bool)

(assert (=> b!300697 m!312625))

(declare-fun m!312627 () Bool)

(assert (=> b!300695 m!312627))

(declare-fun m!312629 () Bool)

(assert (=> b!300698 m!312629))

(declare-fun m!312631 () Bool)

(assert (=> b!300694 m!312631))

(declare-fun m!312633 () Bool)

(assert (=> b!300694 m!312633))

(declare-fun m!312635 () Bool)

(assert (=> b!300694 m!312635))

(declare-fun m!312637 () Bool)

(assert (=> b!300694 m!312637))

(push 1)

