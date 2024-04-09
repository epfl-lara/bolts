; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29146 () Bool)

(assert start!29146)

(declare-fun b!295534 () Bool)

(declare-fun res!155462 () Bool)

(declare-fun e!186808 () Bool)

(assert (=> b!295534 (=> (not res!155462) (not e!186808))))

(declare-datatypes ((array!14946 0))(
  ( (array!14947 (arr!7083 (Array (_ BitVec 32) (_ BitVec 64))) (size!7435 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14946)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14946 (_ BitVec 32)) Bool)

(assert (=> b!295534 (= res!155462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!295535 () Bool)

(declare-fun res!155457 () Bool)

(declare-fun e!186806 () Bool)

(assert (=> b!295535 (=> (not res!155457) (not e!186806))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295535 (= res!155457 (validKeyInArray!0 k!2524))))

(declare-fun b!295537 () Bool)

(declare-fun res!155463 () Bool)

(assert (=> b!295537 (=> (not res!155463) (not e!186806))))

(declare-fun arrayContainsKey!0 (array!14946 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295537 (= res!155463 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!295538 () Bool)

(declare-fun e!186807 () Bool)

(assert (=> b!295538 (= e!186807 (not true))))

(declare-datatypes ((SeekEntryResult!2243 0))(
  ( (MissingZero!2243 (index!11142 (_ BitVec 32))) (Found!2243 (index!11143 (_ BitVec 32))) (Intermediate!2243 (undefined!3055 Bool) (index!11144 (_ BitVec 32)) (x!29324 (_ BitVec 32))) (Undefined!2243) (MissingVacant!2243 (index!11145 (_ BitVec 32))) )
))
(declare-fun lt!146628 () SeekEntryResult!2243)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!295538 (and (= (select (arr!7083 a!3312) (index!11144 lt!146628)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11144 lt!146628) i!1256))))

(declare-fun b!295539 () Bool)

(declare-fun e!186805 () Bool)

(assert (=> b!295539 (= e!186808 e!186805)))

(declare-fun res!155459 () Bool)

(assert (=> b!295539 (=> (not res!155459) (not e!186805))))

(declare-fun lt!146633 () Bool)

(assert (=> b!295539 (= res!155459 lt!146633)))

(declare-fun lt!146630 () SeekEntryResult!2243)

(declare-fun lt!146631 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14946 (_ BitVec 32)) SeekEntryResult!2243)

(assert (=> b!295539 (= lt!146630 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146631 k!2524 (array!14947 (store (arr!7083 a!3312) i!1256 k!2524) (size!7435 a!3312)) mask!3809))))

(assert (=> b!295539 (= lt!146628 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146631 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295539 (= lt!146631 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!295536 () Bool)

(assert (=> b!295536 (= e!186805 e!186807)))

(declare-fun res!155460 () Bool)

(assert (=> b!295536 (=> (not res!155460) (not e!186807))))

(declare-fun lt!146629 () Bool)

(assert (=> b!295536 (= res!155460 (and (or lt!146629 (not (undefined!3055 lt!146628))) (or lt!146629 (not (= (select (arr!7083 a!3312) (index!11144 lt!146628)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146629 (not (= (select (arr!7083 a!3312) (index!11144 lt!146628)) k!2524))) (not lt!146629)))))

(assert (=> b!295536 (= lt!146629 (not (is-Intermediate!2243 lt!146628)))))

(declare-fun res!155458 () Bool)

(assert (=> start!29146 (=> (not res!155458) (not e!186806))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29146 (= res!155458 (validMask!0 mask!3809))))

(assert (=> start!29146 e!186806))

(assert (=> start!29146 true))

(declare-fun array_inv!5037 (array!14946) Bool)

(assert (=> start!29146 (array_inv!5037 a!3312)))

(declare-fun b!295540 () Bool)

(assert (=> b!295540 (= e!186806 e!186808)))

(declare-fun res!155456 () Bool)

(assert (=> b!295540 (=> (not res!155456) (not e!186808))))

(declare-fun lt!146632 () SeekEntryResult!2243)

(assert (=> b!295540 (= res!155456 (or lt!146633 (= lt!146632 (MissingVacant!2243 i!1256))))))

(assert (=> b!295540 (= lt!146633 (= lt!146632 (MissingZero!2243 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14946 (_ BitVec 32)) SeekEntryResult!2243)

(assert (=> b!295540 (= lt!146632 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!295541 () Bool)

(declare-fun res!155461 () Bool)

(assert (=> b!295541 (=> (not res!155461) (not e!186806))))

(assert (=> b!295541 (= res!155461 (and (= (size!7435 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7435 a!3312))))))

(assert (= (and start!29146 res!155458) b!295541))

(assert (= (and b!295541 res!155461) b!295535))

(assert (= (and b!295535 res!155457) b!295537))

(assert (= (and b!295537 res!155463) b!295540))

(assert (= (and b!295540 res!155456) b!295534))

(assert (= (and b!295534 res!155462) b!295539))

(assert (= (and b!295539 res!155459) b!295536))

(assert (= (and b!295536 res!155460) b!295538))

(declare-fun m!308659 () Bool)

(assert (=> b!295536 m!308659))

(declare-fun m!308661 () Bool)

(assert (=> b!295535 m!308661))

(declare-fun m!308663 () Bool)

(assert (=> start!29146 m!308663))

(declare-fun m!308665 () Bool)

(assert (=> start!29146 m!308665))

(declare-fun m!308667 () Bool)

(assert (=> b!295540 m!308667))

(assert (=> b!295538 m!308659))

(declare-fun m!308669 () Bool)

(assert (=> b!295539 m!308669))

(declare-fun m!308671 () Bool)

(assert (=> b!295539 m!308671))

(declare-fun m!308673 () Bool)

(assert (=> b!295539 m!308673))

(declare-fun m!308675 () Bool)

(assert (=> b!295539 m!308675))

(declare-fun m!308677 () Bool)

(assert (=> b!295537 m!308677))

(declare-fun m!308679 () Bool)

(assert (=> b!295534 m!308679))

(push 1)

