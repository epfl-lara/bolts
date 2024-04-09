; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28268 () Bool)

(assert start!28268)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun b!289433 () Bool)

(declare-datatypes ((SeekEntryResult!2072 0))(
  ( (MissingZero!2072 (index!10458 (_ BitVec 32))) (Found!2072 (index!10459 (_ BitVec 32))) (Intermediate!2072 (undefined!2884 Bool) (index!10460 (_ BitVec 32)) (x!28629 (_ BitVec 32))) (Undefined!2072) (MissingVacant!2072 (index!10461 (_ BitVec 32))) )
))
(declare-fun lt!142871 () SeekEntryResult!2072)

(declare-datatypes ((array!14571 0))(
  ( (array!14572 (arr!6912 (Array (_ BitVec 32) (_ BitVec 64))) (size!7264 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14571)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun lt!142875 () SeekEntryResult!2072)

(assert (=> b!289433 (and (= lt!142871 lt!142875) (= (select (store (arr!6912 a!3312) i!1256 k!2524) (index!10460 lt!142875)) k!2524))))

(declare-datatypes ((Unit!9083 0))(
  ( (Unit!9084) )
))
(declare-fun lt!142872 () Unit!9083)

(declare-fun lt!142874 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!14571 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9083)

(assert (=> b!289433 (= lt!142872 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!142874 (index!10460 lt!142875) (x!28629 lt!142875) mask!3809))))

(assert (=> b!289433 (and (= (select (arr!6912 a!3312) (index!10460 lt!142875)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10460 lt!142875) i!1256))))

(declare-fun e!183251 () Unit!9083)

(declare-fun Unit!9085 () Unit!9083)

(assert (=> b!289433 (= e!183251 Unit!9085)))

(declare-fun b!289434 () Bool)

(declare-fun res!151067 () Bool)

(declare-fun e!183248 () Bool)

(assert (=> b!289434 (=> (not res!151067) (not e!183248))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14571 (_ BitVec 32)) Bool)

(assert (=> b!289434 (= res!151067 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289435 () Bool)

(assert (=> b!289435 false))

(declare-fun Unit!9086 () Unit!9083)

(assert (=> b!289435 (= e!183251 Unit!9086)))

(declare-fun b!289437 () Bool)

(declare-fun e!183250 () Unit!9083)

(assert (=> b!289437 (= e!183250 e!183251)))

(declare-fun c!46747 () Bool)

(assert (=> b!289437 (= c!46747 (is-Intermediate!2072 lt!142875))))

(declare-fun b!289438 () Bool)

(declare-fun res!151063 () Bool)

(declare-fun e!183249 () Bool)

(assert (=> b!289438 (=> (not res!151063) (not e!183249))))

(declare-fun arrayContainsKey!0 (array!14571 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289438 (= res!151063 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289439 () Bool)

(declare-fun res!151062 () Bool)

(assert (=> b!289439 (=> (not res!151062) (not e!183249))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289439 (= res!151062 (validKeyInArray!0 k!2524))))

(declare-fun b!289440 () Bool)

(declare-fun res!151068 () Bool)

(assert (=> b!289440 (=> (not res!151068) (not e!183249))))

(assert (=> b!289440 (= res!151068 (and (= (size!7264 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7264 a!3312))))))

(declare-fun b!289441 () Bool)

(declare-fun e!183253 () Bool)

(assert (=> b!289441 (= e!183253 false)))

(declare-fun lt!142873 () Unit!9083)

(assert (=> b!289441 (= lt!142873 e!183250)))

(declare-fun c!46748 () Bool)

(assert (=> b!289441 (= c!46748 (or (and (is-Intermediate!2072 lt!142875) (undefined!2884 lt!142875)) (and (is-Intermediate!2072 lt!142875) (= (select (arr!6912 a!3312) (index!10460 lt!142875)) #b1000000000000000000000000000000000000000000000000000000000000000)) (and (is-Intermediate!2072 lt!142875) (= (select (arr!6912 a!3312) (index!10460 lt!142875)) k!2524))))))

(declare-fun res!151065 () Bool)

(assert (=> start!28268 (=> (not res!151065) (not e!183249))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28268 (= res!151065 (validMask!0 mask!3809))))

(assert (=> start!28268 e!183249))

(assert (=> start!28268 true))

(declare-fun array_inv!4866 (array!14571) Bool)

(assert (=> start!28268 (array_inv!4866 a!3312)))

(declare-fun b!289436 () Bool)

(assert (=> b!289436 (= e!183249 e!183248)))

(declare-fun res!151066 () Bool)

(assert (=> b!289436 (=> (not res!151066) (not e!183248))))

(declare-fun lt!142877 () Bool)

(declare-fun lt!142876 () SeekEntryResult!2072)

(assert (=> b!289436 (= res!151066 (or lt!142877 (= lt!142876 (MissingVacant!2072 i!1256))))))

(assert (=> b!289436 (= lt!142877 (= lt!142876 (MissingZero!2072 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14571 (_ BitVec 32)) SeekEntryResult!2072)

(assert (=> b!289436 (= lt!142876 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!289442 () Bool)

(assert (=> b!289442 (= e!183248 e!183253)))

(declare-fun res!151064 () Bool)

(assert (=> b!289442 (=> (not res!151064) (not e!183253))))

(assert (=> b!289442 (= res!151064 lt!142877)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14571 (_ BitVec 32)) SeekEntryResult!2072)

(assert (=> b!289442 (= lt!142871 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142874 k!2524 (array!14572 (store (arr!6912 a!3312) i!1256 k!2524) (size!7264 a!3312)) mask!3809))))

(assert (=> b!289442 (= lt!142875 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142874 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289442 (= lt!142874 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!289443 () Bool)

(declare-fun Unit!9087 () Unit!9083)

(assert (=> b!289443 (= e!183250 Unit!9087)))

(assert (=> b!289443 false))

(assert (= (and start!28268 res!151065) b!289440))

(assert (= (and b!289440 res!151068) b!289439))

(assert (= (and b!289439 res!151062) b!289438))

(assert (= (and b!289438 res!151063) b!289436))

(assert (= (and b!289436 res!151066) b!289434))

(assert (= (and b!289434 res!151067) b!289442))

(assert (= (and b!289442 res!151064) b!289441))

(assert (= (and b!289441 c!46748) b!289443))

(assert (= (and b!289441 (not c!46748)) b!289437))

(assert (= (and b!289437 c!46747) b!289433))

(assert (= (and b!289437 (not c!46747)) b!289435))

(declare-fun m!303605 () Bool)

(assert (=> start!28268 m!303605))

(declare-fun m!303607 () Bool)

(assert (=> start!28268 m!303607))

(declare-fun m!303609 () Bool)

(assert (=> b!289434 m!303609))

(declare-fun m!303611 () Bool)

(assert (=> b!289438 m!303611))

(declare-fun m!303613 () Bool)

(assert (=> b!289436 m!303613))

(declare-fun m!303615 () Bool)

(assert (=> b!289442 m!303615))

(declare-fun m!303617 () Bool)

(assert (=> b!289442 m!303617))

(declare-fun m!303619 () Bool)

(assert (=> b!289442 m!303619))

(declare-fun m!303621 () Bool)

(assert (=> b!289442 m!303621))

(assert (=> b!289433 m!303615))

(declare-fun m!303623 () Bool)

(assert (=> b!289433 m!303623))

(declare-fun m!303625 () Bool)

(assert (=> b!289433 m!303625))

(declare-fun m!303627 () Bool)

(assert (=> b!289433 m!303627))

(declare-fun m!303629 () Bool)

(assert (=> b!289439 m!303629))

(assert (=> b!289441 m!303627))

(push 1)

