; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28208 () Bool)

(assert start!28208)

(declare-fun b!288689 () Bool)

(declare-fun e!182791 () Bool)

(declare-fun e!182792 () Bool)

(assert (=> b!288689 (= e!182791 e!182792)))

(declare-fun res!150353 () Bool)

(assert (=> b!288689 (=> (not res!150353) (not e!182792))))

(declare-datatypes ((SeekEntryResult!2042 0))(
  ( (MissingZero!2042 (index!10338 (_ BitVec 32))) (Found!2042 (index!10339 (_ BitVec 32))) (Intermediate!2042 (undefined!2854 Bool) (index!10340 (_ BitVec 32)) (x!28519 (_ BitVec 32))) (Undefined!2042) (MissingVacant!2042 (index!10341 (_ BitVec 32))) )
))
(declare-fun lt!142327 () SeekEntryResult!2042)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!142328 () Bool)

(assert (=> b!288689 (= res!150353 (or lt!142328 (= lt!142327 (MissingVacant!2042 i!1256))))))

(assert (=> b!288689 (= lt!142328 (= lt!142327 (MissingZero!2042 i!1256)))))

(declare-datatypes ((array!14511 0))(
  ( (array!14512 (arr!6882 (Array (_ BitVec 32) (_ BitVec 64))) (size!7234 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14511)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14511 (_ BitVec 32)) SeekEntryResult!2042)

(assert (=> b!288689 (= lt!142327 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!288690 () Bool)

(declare-fun e!182794 () Bool)

(declare-fun e!182793 () Bool)

(assert (=> b!288690 (= e!182794 e!182793)))

(declare-fun res!150357 () Bool)

(assert (=> b!288690 (=> (not res!150357) (not e!182793))))

(declare-fun lt!142324 () SeekEntryResult!2042)

(declare-fun lt!142326 () Bool)

(assert (=> b!288690 (= res!150357 (and (or lt!142326 (not (undefined!2854 lt!142324))) (or lt!142326 (not (= (select (arr!6882 a!3312) (index!10340 lt!142324)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142326 (not (= (select (arr!6882 a!3312) (index!10340 lt!142324)) k!2524))) (not lt!142326)))))

(assert (=> b!288690 (= lt!142326 (not (is-Intermediate!2042 lt!142324)))))

(declare-fun res!150355 () Bool)

(assert (=> start!28208 (=> (not res!150355) (not e!182791))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28208 (= res!150355 (validMask!0 mask!3809))))

(assert (=> start!28208 e!182791))

(assert (=> start!28208 true))

(declare-fun array_inv!4836 (array!14511) Bool)

(assert (=> start!28208 (array_inv!4836 a!3312)))

(declare-fun b!288691 () Bool)

(declare-fun res!150350 () Bool)

(assert (=> b!288691 (=> (not res!150350) (not e!182791))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288691 (= res!150350 (validKeyInArray!0 k!2524))))

(declare-fun b!288692 () Bool)

(declare-fun res!150354 () Bool)

(assert (=> b!288692 (=> (not res!150354) (not e!182791))))

(declare-fun arrayContainsKey!0 (array!14511 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288692 (= res!150354 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!288693 () Bool)

(assert (=> b!288693 (= e!182792 e!182794)))

(declare-fun res!150352 () Bool)

(assert (=> b!288693 (=> (not res!150352) (not e!182794))))

(assert (=> b!288693 (= res!150352 lt!142328)))

(declare-fun lt!142325 () (_ BitVec 32))

(declare-fun lt!142323 () SeekEntryResult!2042)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14511 (_ BitVec 32)) SeekEntryResult!2042)

(assert (=> b!288693 (= lt!142323 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142325 k!2524 (array!14512 (store (arr!6882 a!3312) i!1256 k!2524) (size!7234 a!3312)) mask!3809))))

(assert (=> b!288693 (= lt!142324 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142325 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288693 (= lt!142325 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!288694 () Bool)

(declare-fun res!150356 () Bool)

(assert (=> b!288694 (=> (not res!150356) (not e!182792))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14511 (_ BitVec 32)) Bool)

(assert (=> b!288694 (= res!150356 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!288695 () Bool)

(assert (=> b!288695 (= e!182793 (not true))))

(assert (=> b!288695 (and (= (select (arr!6882 a!3312) (index!10340 lt!142324)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10340 lt!142324) i!1256))))

(declare-fun b!288696 () Bool)

(declare-fun res!150351 () Bool)

(assert (=> b!288696 (=> (not res!150351) (not e!182791))))

(assert (=> b!288696 (= res!150351 (and (= (size!7234 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7234 a!3312))))))

(assert (= (and start!28208 res!150355) b!288696))

(assert (= (and b!288696 res!150351) b!288691))

(assert (= (and b!288691 res!150350) b!288692))

(assert (= (and b!288692 res!150354) b!288689))

(assert (= (and b!288689 res!150353) b!288694))

(assert (= (and b!288694 res!150356) b!288693))

(assert (= (and b!288693 res!150352) b!288690))

(assert (= (and b!288690 res!150357) b!288695))

(declare-fun m!302937 () Bool)

(assert (=> b!288695 m!302937))

(declare-fun m!302939 () Bool)

(assert (=> b!288689 m!302939))

(assert (=> b!288690 m!302937))

(declare-fun m!302941 () Bool)

(assert (=> b!288692 m!302941))

(declare-fun m!302943 () Bool)

(assert (=> b!288693 m!302943))

(declare-fun m!302945 () Bool)

(assert (=> b!288693 m!302945))

(declare-fun m!302947 () Bool)

(assert (=> b!288693 m!302947))

(declare-fun m!302949 () Bool)

(assert (=> b!288693 m!302949))

(declare-fun m!302951 () Bool)

(assert (=> b!288694 m!302951))

(declare-fun m!302953 () Bool)

(assert (=> b!288691 m!302953))

(declare-fun m!302955 () Bool)

(assert (=> start!28208 m!302955))

(declare-fun m!302957 () Bool)

(assert (=> start!28208 m!302957))

(push 1)

