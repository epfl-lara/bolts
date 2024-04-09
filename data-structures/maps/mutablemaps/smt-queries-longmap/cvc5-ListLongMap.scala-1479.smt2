; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28270 () Bool)

(assert start!28270)

(declare-fun b!289466 () Bool)

(declare-datatypes ((Unit!9088 0))(
  ( (Unit!9089) )
))
(declare-fun e!183271 () Unit!9088)

(declare-fun Unit!9090 () Unit!9088)

(assert (=> b!289466 (= e!183271 Unit!9090)))

(assert (=> b!289466 false))

(declare-fun b!289467 () Bool)

(declare-fun e!183266 () Bool)

(declare-fun e!183269 () Bool)

(assert (=> b!289467 (= e!183266 e!183269)))

(declare-fun res!151088 () Bool)

(assert (=> b!289467 (=> (not res!151088) (not e!183269))))

(declare-fun lt!142896 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2073 0))(
  ( (MissingZero!2073 (index!10462 (_ BitVec 32))) (Found!2073 (index!10463 (_ BitVec 32))) (Intermediate!2073 (undefined!2885 Bool) (index!10464 (_ BitVec 32)) (x!28638 (_ BitVec 32))) (Undefined!2073) (MissingVacant!2073 (index!10465 (_ BitVec 32))) )
))
(declare-fun lt!142894 () SeekEntryResult!2073)

(assert (=> b!289467 (= res!151088 (or lt!142896 (= lt!142894 (MissingVacant!2073 i!1256))))))

(assert (=> b!289467 (= lt!142896 (= lt!142894 (MissingZero!2073 i!1256)))))

(declare-datatypes ((array!14573 0))(
  ( (array!14574 (arr!6913 (Array (_ BitVec 32) (_ BitVec 64))) (size!7265 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14573)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14573 (_ BitVec 32)) SeekEntryResult!2073)

(assert (=> b!289467 (= lt!142894 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!289468 () Bool)

(declare-fun lt!142892 () SeekEntryResult!2073)

(declare-fun lt!142898 () SeekEntryResult!2073)

(assert (=> b!289468 (and (= lt!142898 lt!142892) (= (select (store (arr!6913 a!3312) i!1256 k!2524) (index!10464 lt!142892)) k!2524))))

(declare-fun lt!142897 () (_ BitVec 32))

(declare-fun lt!142893 () Unit!9088)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!14573 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9088)

(assert (=> b!289468 (= lt!142893 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!142897 (index!10464 lt!142892) (x!28638 lt!142892) mask!3809))))

(assert (=> b!289468 (and (= (select (arr!6913 a!3312) (index!10464 lt!142892)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10464 lt!142892) i!1256))))

(declare-fun e!183268 () Unit!9088)

(declare-fun Unit!9091 () Unit!9088)

(assert (=> b!289468 (= e!183268 Unit!9091)))

(declare-fun res!151086 () Bool)

(assert (=> start!28270 (=> (not res!151086) (not e!183266))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28270 (= res!151086 (validMask!0 mask!3809))))

(assert (=> start!28270 e!183266))

(assert (=> start!28270 true))

(declare-fun array_inv!4867 (array!14573) Bool)

(assert (=> start!28270 (array_inv!4867 a!3312)))

(declare-fun b!289469 () Bool)

(declare-fun res!151084 () Bool)

(assert (=> b!289469 (=> (not res!151084) (not e!183269))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14573 (_ BitVec 32)) Bool)

(assert (=> b!289469 (= res!151084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289470 () Bool)

(declare-fun res!151083 () Bool)

(assert (=> b!289470 (=> (not res!151083) (not e!183266))))

(declare-fun arrayContainsKey!0 (array!14573 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289470 (= res!151083 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289471 () Bool)

(declare-fun res!151087 () Bool)

(assert (=> b!289471 (=> (not res!151087) (not e!183266))))

(assert (=> b!289471 (= res!151087 (and (= (size!7265 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7265 a!3312))))))

(declare-fun b!289472 () Bool)

(assert (=> b!289472 (= e!183271 e!183268)))

(declare-fun c!46753 () Bool)

(assert (=> b!289472 (= c!46753 (is-Intermediate!2073 lt!142892))))

(declare-fun b!289473 () Bool)

(declare-fun e!183267 () Bool)

(assert (=> b!289473 (= e!183269 e!183267)))

(declare-fun res!151085 () Bool)

(assert (=> b!289473 (=> (not res!151085) (not e!183267))))

(assert (=> b!289473 (= res!151085 lt!142896)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14573 (_ BitVec 32)) SeekEntryResult!2073)

(assert (=> b!289473 (= lt!142898 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142897 k!2524 (array!14574 (store (arr!6913 a!3312) i!1256 k!2524) (size!7265 a!3312)) mask!3809))))

(assert (=> b!289473 (= lt!142892 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142897 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289473 (= lt!142897 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!289474 () Bool)

(assert (=> b!289474 false))

(declare-fun Unit!9092 () Unit!9088)

(assert (=> b!289474 (= e!183268 Unit!9092)))

(declare-fun b!289475 () Bool)

(assert (=> b!289475 (= e!183267 (and (= lt!142898 lt!142892) (bvslt mask!3809 #b00000000000000000000000000000000)))))

(declare-fun lt!142895 () Unit!9088)

(assert (=> b!289475 (= lt!142895 e!183271)))

(declare-fun c!46754 () Bool)

(assert (=> b!289475 (= c!46754 (or (and (is-Intermediate!2073 lt!142892) (undefined!2885 lt!142892)) (and (is-Intermediate!2073 lt!142892) (= (select (arr!6913 a!3312) (index!10464 lt!142892)) #b1000000000000000000000000000000000000000000000000000000000000000)) (and (is-Intermediate!2073 lt!142892) (= (select (arr!6913 a!3312) (index!10464 lt!142892)) k!2524))))))

(declare-fun b!289476 () Bool)

(declare-fun res!151089 () Bool)

(assert (=> b!289476 (=> (not res!151089) (not e!183266))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289476 (= res!151089 (validKeyInArray!0 k!2524))))

(assert (= (and start!28270 res!151086) b!289471))

(assert (= (and b!289471 res!151087) b!289476))

(assert (= (and b!289476 res!151089) b!289470))

(assert (= (and b!289470 res!151083) b!289467))

(assert (= (and b!289467 res!151088) b!289469))

(assert (= (and b!289469 res!151084) b!289473))

(assert (= (and b!289473 res!151085) b!289475))

(assert (= (and b!289475 c!46754) b!289466))

(assert (= (and b!289475 (not c!46754)) b!289472))

(assert (= (and b!289472 c!46753) b!289468))

(assert (= (and b!289472 (not c!46753)) b!289474))

(declare-fun m!303631 () Bool)

(assert (=> b!289476 m!303631))

(declare-fun m!303633 () Bool)

(assert (=> b!289467 m!303633))

(declare-fun m!303635 () Bool)

(assert (=> b!289475 m!303635))

(declare-fun m!303637 () Bool)

(assert (=> b!289473 m!303637))

(declare-fun m!303639 () Bool)

(assert (=> b!289473 m!303639))

(declare-fun m!303641 () Bool)

(assert (=> b!289473 m!303641))

(declare-fun m!303643 () Bool)

(assert (=> b!289473 m!303643))

(declare-fun m!303645 () Bool)

(assert (=> b!289470 m!303645))

(assert (=> b!289468 m!303637))

(declare-fun m!303647 () Bool)

(assert (=> b!289468 m!303647))

(declare-fun m!303649 () Bool)

(assert (=> b!289468 m!303649))

(assert (=> b!289468 m!303635))

(declare-fun m!303651 () Bool)

(assert (=> start!28270 m!303651))

(declare-fun m!303653 () Bool)

(assert (=> start!28270 m!303653))

(declare-fun m!303655 () Bool)

(assert (=> b!289469 m!303655))

(push 1)

