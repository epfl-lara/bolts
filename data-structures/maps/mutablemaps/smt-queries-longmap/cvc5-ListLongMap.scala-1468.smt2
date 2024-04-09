; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28204 () Bool)

(assert start!28204)

(declare-fun b!288641 () Bool)

(declare-fun e!182763 () Bool)

(declare-fun e!182761 () Bool)

(assert (=> b!288641 (= e!182763 e!182761)))

(declare-fun res!150307 () Bool)

(assert (=> b!288641 (=> (not res!150307) (not e!182761))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!142289 () Bool)

(declare-datatypes ((SeekEntryResult!2040 0))(
  ( (MissingZero!2040 (index!10330 (_ BitVec 32))) (Found!2040 (index!10331 (_ BitVec 32))) (Intermediate!2040 (undefined!2852 Bool) (index!10332 (_ BitVec 32)) (x!28517 (_ BitVec 32))) (Undefined!2040) (MissingVacant!2040 (index!10333 (_ BitVec 32))) )
))
(declare-fun lt!142292 () SeekEntryResult!2040)

(assert (=> b!288641 (= res!150307 (or lt!142289 (= lt!142292 (MissingVacant!2040 i!1256))))))

(assert (=> b!288641 (= lt!142289 (= lt!142292 (MissingZero!2040 i!1256)))))

(declare-datatypes ((array!14507 0))(
  ( (array!14508 (arr!6880 (Array (_ BitVec 32) (_ BitVec 64))) (size!7232 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14507)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14507 (_ BitVec 32)) SeekEntryResult!2040)

(assert (=> b!288641 (= lt!142292 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!150305 () Bool)

(assert (=> start!28204 (=> (not res!150305) (not e!182763))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28204 (= res!150305 (validMask!0 mask!3809))))

(assert (=> start!28204 e!182763))

(assert (=> start!28204 true))

(declare-fun array_inv!4834 (array!14507) Bool)

(assert (=> start!28204 (array_inv!4834 a!3312)))

(declare-fun b!288642 () Bool)

(declare-fun res!150308 () Bool)

(assert (=> b!288642 (=> (not res!150308) (not e!182761))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14507 (_ BitVec 32)) Bool)

(assert (=> b!288642 (= res!150308 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!288643 () Bool)

(declare-fun res!150302 () Bool)

(assert (=> b!288643 (=> (not res!150302) (not e!182763))))

(declare-fun arrayContainsKey!0 (array!14507 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288643 (= res!150302 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!288644 () Bool)

(declare-fun e!182760 () Bool)

(assert (=> b!288644 (= e!182761 e!182760)))

(declare-fun res!150304 () Bool)

(assert (=> b!288644 (=> (not res!150304) (not e!182760))))

(assert (=> b!288644 (= res!150304 lt!142289)))

(declare-fun lt!142287 () SeekEntryResult!2040)

(declare-fun lt!142291 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14507 (_ BitVec 32)) SeekEntryResult!2040)

(assert (=> b!288644 (= lt!142287 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142291 k!2524 (array!14508 (store (arr!6880 a!3312) i!1256 k!2524) (size!7232 a!3312)) mask!3809))))

(declare-fun lt!142290 () SeekEntryResult!2040)

(assert (=> b!288644 (= lt!142290 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142291 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288644 (= lt!142291 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!288645 () Bool)

(declare-fun e!182764 () Bool)

(assert (=> b!288645 (= e!182760 e!182764)))

(declare-fun res!150306 () Bool)

(assert (=> b!288645 (=> (not res!150306) (not e!182764))))

(declare-fun lt!142288 () Bool)

(assert (=> b!288645 (= res!150306 (and (or lt!142288 (not (undefined!2852 lt!142290))) (or lt!142288 (not (= (select (arr!6880 a!3312) (index!10332 lt!142290)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142288 (not (= (select (arr!6880 a!3312) (index!10332 lt!142290)) k!2524))) (not lt!142288)))))

(assert (=> b!288645 (= lt!142288 (not (is-Intermediate!2040 lt!142290)))))

(declare-fun b!288646 () Bool)

(assert (=> b!288646 (= e!182764 (not true))))

(assert (=> b!288646 (and (= (select (arr!6880 a!3312) (index!10332 lt!142290)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10332 lt!142290) i!1256))))

(declare-fun b!288647 () Bool)

(declare-fun res!150309 () Bool)

(assert (=> b!288647 (=> (not res!150309) (not e!182763))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288647 (= res!150309 (validKeyInArray!0 k!2524))))

(declare-fun b!288648 () Bool)

(declare-fun res!150303 () Bool)

(assert (=> b!288648 (=> (not res!150303) (not e!182763))))

(assert (=> b!288648 (= res!150303 (and (= (size!7232 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7232 a!3312))))))

(assert (= (and start!28204 res!150305) b!288648))

(assert (= (and b!288648 res!150303) b!288647))

(assert (= (and b!288647 res!150309) b!288643))

(assert (= (and b!288643 res!150302) b!288641))

(assert (= (and b!288641 res!150307) b!288642))

(assert (= (and b!288642 res!150308) b!288644))

(assert (= (and b!288644 res!150304) b!288645))

(assert (= (and b!288645 res!150306) b!288646))

(declare-fun m!302893 () Bool)

(assert (=> b!288643 m!302893))

(declare-fun m!302895 () Bool)

(assert (=> b!288642 m!302895))

(declare-fun m!302897 () Bool)

(assert (=> b!288647 m!302897))

(declare-fun m!302899 () Bool)

(assert (=> start!28204 m!302899))

(declare-fun m!302901 () Bool)

(assert (=> start!28204 m!302901))

(declare-fun m!302903 () Bool)

(assert (=> b!288641 m!302903))

(declare-fun m!302905 () Bool)

(assert (=> b!288645 m!302905))

(declare-fun m!302907 () Bool)

(assert (=> b!288644 m!302907))

(declare-fun m!302909 () Bool)

(assert (=> b!288644 m!302909))

(declare-fun m!302911 () Bool)

(assert (=> b!288644 m!302911))

(declare-fun m!302913 () Bool)

(assert (=> b!288644 m!302913))

(assert (=> b!288646 m!302905))

(push 1)

