; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29388 () Bool)

(assert start!29388)

(declare-fun b!297346 () Bool)

(declare-datatypes ((Unit!9249 0))(
  ( (Unit!9250) )
))
(declare-fun e!187921 () Unit!9249)

(declare-fun Unit!9251 () Unit!9249)

(assert (=> b!297346 (= e!187921 Unit!9251)))

(assert (=> b!297346 false))

(declare-fun b!297347 () Bool)

(declare-fun e!187920 () Bool)

(declare-fun e!187923 () Bool)

(assert (=> b!297347 (= e!187920 e!187923)))

(declare-fun res!156838 () Bool)

(assert (=> b!297347 (=> (not res!156838) (not e!187923))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2292 0))(
  ( (MissingZero!2292 (index!11338 (_ BitVec 32))) (Found!2292 (index!11339 (_ BitVec 32))) (Intermediate!2292 (undefined!3104 Bool) (index!11340 (_ BitVec 32)) (x!29527 (_ BitVec 32))) (Undefined!2292) (MissingVacant!2292 (index!11341 (_ BitVec 32))) )
))
(declare-fun lt!147824 () SeekEntryResult!2292)

(declare-fun lt!147820 () Bool)

(assert (=> b!297347 (= res!156838 (or lt!147820 (= lt!147824 (MissingVacant!2292 i!1256))))))

(assert (=> b!297347 (= lt!147820 (= lt!147824 (MissingZero!2292 i!1256)))))

(declare-datatypes ((array!15053 0))(
  ( (array!15054 (arr!7132 (Array (_ BitVec 32) (_ BitVec 64))) (size!7484 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15053)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15053 (_ BitVec 32)) SeekEntryResult!2292)

(assert (=> b!297347 (= lt!147824 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!297348 () Bool)

(declare-fun e!187925 () Bool)

(declare-fun lt!147818 () SeekEntryResult!2292)

(declare-fun lt!147822 () SeekEntryResult!2292)

(assert (=> b!297348 (= e!187925 (not (= lt!147818 lt!147822)))))

(declare-fun lt!147819 () Unit!9249)

(assert (=> b!297348 (= lt!147819 e!187921)))

(declare-fun c!47838 () Bool)

(assert (=> b!297348 (= c!47838 (or (and (is-Intermediate!2292 lt!147822) (undefined!3104 lt!147822)) (and (is-Intermediate!2292 lt!147822) (= (select (arr!7132 a!3312) (index!11340 lt!147822)) #b1000000000000000000000000000000000000000000000000000000000000000)) (and (is-Intermediate!2292 lt!147822) (= (select (arr!7132 a!3312) (index!11340 lt!147822)) k!2524))))))

(declare-fun b!297349 () Bool)

(declare-fun res!156842 () Bool)

(assert (=> b!297349 (=> (not res!156842) (not e!187920))))

(assert (=> b!297349 (= res!156842 (and (= (size!7484 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7484 a!3312))))))

(declare-fun b!297350 () Bool)

(declare-fun res!156840 () Bool)

(assert (=> b!297350 (=> (not res!156840) (not e!187920))))

(declare-fun arrayContainsKey!0 (array!15053 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!297350 (= res!156840 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!156841 () Bool)

(assert (=> start!29388 (=> (not res!156841) (not e!187920))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29388 (= res!156841 (validMask!0 mask!3809))))

(assert (=> start!29388 e!187920))

(assert (=> start!29388 true))

(declare-fun array_inv!5086 (array!15053) Bool)

(assert (=> start!29388 (array_inv!5086 a!3312)))

(declare-fun b!297351 () Bool)

(declare-fun res!156839 () Bool)

(assert (=> b!297351 (=> (not res!156839) (not e!187920))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!297351 (= res!156839 (validKeyInArray!0 k!2524))))

(declare-fun b!297352 () Bool)

(assert (=> b!297352 (and (= lt!147818 lt!147822) (= (select (store (arr!7132 a!3312) i!1256 k!2524) (index!11340 lt!147822)) k!2524))))

(declare-fun lt!147823 () Unit!9249)

(declare-fun lt!147821 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15053 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9249)

(assert (=> b!297352 (= lt!147823 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!147821 (index!11340 lt!147822) (x!29527 lt!147822) mask!3809))))

(assert (=> b!297352 (and (= (select (arr!7132 a!3312) (index!11340 lt!147822)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11340 lt!147822) i!1256))))

(declare-fun e!187924 () Unit!9249)

(declare-fun Unit!9252 () Unit!9249)

(assert (=> b!297352 (= e!187924 Unit!9252)))

(declare-fun b!297353 () Bool)

(assert (=> b!297353 (= e!187921 e!187924)))

(declare-fun c!47837 () Bool)

(assert (=> b!297353 (= c!47837 (is-Intermediate!2292 lt!147822))))

(declare-fun b!297354 () Bool)

(declare-fun res!156843 () Bool)

(assert (=> b!297354 (=> (not res!156843) (not e!187923))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15053 (_ BitVec 32)) Bool)

(assert (=> b!297354 (= res!156843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!297355 () Bool)

(assert (=> b!297355 (= e!187923 e!187925)))

(declare-fun res!156837 () Bool)

(assert (=> b!297355 (=> (not res!156837) (not e!187925))))

(assert (=> b!297355 (= res!156837 lt!147820)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15053 (_ BitVec 32)) SeekEntryResult!2292)

(assert (=> b!297355 (= lt!147818 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147821 k!2524 (array!15054 (store (arr!7132 a!3312) i!1256 k!2524) (size!7484 a!3312)) mask!3809))))

(assert (=> b!297355 (= lt!147822 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147821 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!297355 (= lt!147821 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!297356 () Bool)

(assert (=> b!297356 false))

(declare-fun Unit!9253 () Unit!9249)

(assert (=> b!297356 (= e!187924 Unit!9253)))

(assert (= (and start!29388 res!156841) b!297349))

(assert (= (and b!297349 res!156842) b!297351))

(assert (= (and b!297351 res!156839) b!297350))

(assert (= (and b!297350 res!156840) b!297347))

(assert (= (and b!297347 res!156838) b!297354))

(assert (= (and b!297354 res!156843) b!297355))

(assert (= (and b!297355 res!156837) b!297348))

(assert (= (and b!297348 c!47838) b!297346))

(assert (= (and b!297348 (not c!47838)) b!297353))

(assert (= (and b!297353 c!47837) b!297352))

(assert (= (and b!297353 (not c!47837)) b!297356))

(declare-fun m!310115 () Bool)

(assert (=> b!297347 m!310115))

(declare-fun m!310117 () Bool)

(assert (=> b!297352 m!310117))

(declare-fun m!310119 () Bool)

(assert (=> b!297352 m!310119))

(declare-fun m!310121 () Bool)

(assert (=> b!297352 m!310121))

(declare-fun m!310123 () Bool)

(assert (=> b!297352 m!310123))

(declare-fun m!310125 () Bool)

(assert (=> b!297351 m!310125))

(declare-fun m!310127 () Bool)

(assert (=> start!29388 m!310127))

(declare-fun m!310129 () Bool)

(assert (=> start!29388 m!310129))

(declare-fun m!310131 () Bool)

(assert (=> b!297350 m!310131))

(declare-fun m!310133 () Bool)

(assert (=> b!297354 m!310133))

(assert (=> b!297348 m!310123))

(assert (=> b!297355 m!310117))

(declare-fun m!310135 () Bool)

(assert (=> b!297355 m!310135))

(declare-fun m!310137 () Bool)

(assert (=> b!297355 m!310137))

(declare-fun m!310139 () Bool)

(assert (=> b!297355 m!310139))

(push 1)

