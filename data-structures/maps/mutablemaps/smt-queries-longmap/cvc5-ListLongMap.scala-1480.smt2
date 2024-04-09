; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28276 () Bool)

(assert start!28276)

(declare-fun b!289565 () Bool)

(declare-fun res!151147 () Bool)

(declare-fun e!183320 () Bool)

(assert (=> b!289565 (=> (not res!151147) (not e!183320))))

(declare-datatypes ((array!14579 0))(
  ( (array!14580 (arr!6916 (Array (_ BitVec 32) (_ BitVec 64))) (size!7268 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14579)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14579 (_ BitVec 32)) Bool)

(assert (=> b!289565 (= res!151147 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-datatypes ((SeekEntryResult!2076 0))(
  ( (MissingZero!2076 (index!10474 (_ BitVec 32))) (Found!2076 (index!10475 (_ BitVec 32))) (Intermediate!2076 (undefined!2888 Bool) (index!10476 (_ BitVec 32)) (x!28649 (_ BitVec 32))) (Undefined!2076) (MissingVacant!2076 (index!10477 (_ BitVec 32))) )
))
(declare-fun lt!142956 () SeekEntryResult!2076)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun b!289566 () Bool)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun lt!142961 () SeekEntryResult!2076)

(assert (=> b!289566 (and (= lt!142956 lt!142961) (= (select (store (arr!6916 a!3312) i!1256 k!2524) (index!10476 lt!142961)) k!2524))))

(declare-datatypes ((Unit!9103 0))(
  ( (Unit!9104) )
))
(declare-fun lt!142959 () Unit!9103)

(declare-fun lt!142960 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!14579 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9103)

(assert (=> b!289566 (= lt!142959 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!142960 (index!10476 lt!142961) (x!28649 lt!142961) mask!3809))))

(assert (=> b!289566 (and (= (select (arr!6916 a!3312) (index!10476 lt!142961)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10476 lt!142961) i!1256))))

(declare-fun e!183325 () Unit!9103)

(declare-fun Unit!9105 () Unit!9103)

(assert (=> b!289566 (= e!183325 Unit!9105)))

(declare-fun b!289567 () Bool)

(declare-fun e!183324 () Bool)

(assert (=> b!289567 (= e!183324 false)))

(declare-fun lt!142958 () Unit!9103)

(declare-fun e!183322 () Unit!9103)

(assert (=> b!289567 (= lt!142958 e!183322)))

(declare-fun c!46771 () Bool)

(assert (=> b!289567 (= c!46771 (or (and (is-Intermediate!2076 lt!142961) (undefined!2888 lt!142961)) (and (is-Intermediate!2076 lt!142961) (= (select (arr!6916 a!3312) (index!10476 lt!142961)) #b1000000000000000000000000000000000000000000000000000000000000000)) (and (is-Intermediate!2076 lt!142961) (= (select (arr!6916 a!3312) (index!10476 lt!142961)) k!2524))))))

(declare-fun b!289568 () Bool)

(declare-fun res!151151 () Bool)

(declare-fun e!183321 () Bool)

(assert (=> b!289568 (=> (not res!151151) (not e!183321))))

(assert (=> b!289568 (= res!151151 (and (= (size!7268 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7268 a!3312))))))

(declare-fun b!289569 () Bool)

(assert (=> b!289569 false))

(declare-fun Unit!9106 () Unit!9103)

(assert (=> b!289569 (= e!183325 Unit!9106)))

(declare-fun b!289570 () Bool)

(declare-fun Unit!9107 () Unit!9103)

(assert (=> b!289570 (= e!183322 Unit!9107)))

(assert (=> b!289570 false))

(declare-fun res!151148 () Bool)

(assert (=> start!28276 (=> (not res!151148) (not e!183321))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28276 (= res!151148 (validMask!0 mask!3809))))

(assert (=> start!28276 e!183321))

(assert (=> start!28276 true))

(declare-fun array_inv!4870 (array!14579) Bool)

(assert (=> start!28276 (array_inv!4870 a!3312)))

(declare-fun b!289571 () Bool)

(assert (=> b!289571 (= e!183321 e!183320)))

(declare-fun res!151150 () Bool)

(assert (=> b!289571 (=> (not res!151150) (not e!183320))))

(declare-fun lt!142957 () SeekEntryResult!2076)

(declare-fun lt!142955 () Bool)

(assert (=> b!289571 (= res!151150 (or lt!142955 (= lt!142957 (MissingVacant!2076 i!1256))))))

(assert (=> b!289571 (= lt!142955 (= lt!142957 (MissingZero!2076 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14579 (_ BitVec 32)) SeekEntryResult!2076)

(assert (=> b!289571 (= lt!142957 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!289572 () Bool)

(declare-fun res!151146 () Bool)

(assert (=> b!289572 (=> (not res!151146) (not e!183321))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289572 (= res!151146 (validKeyInArray!0 k!2524))))

(declare-fun b!289573 () Bool)

(assert (=> b!289573 (= e!183320 e!183324)))

(declare-fun res!151149 () Bool)

(assert (=> b!289573 (=> (not res!151149) (not e!183324))))

(assert (=> b!289573 (= res!151149 lt!142955)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14579 (_ BitVec 32)) SeekEntryResult!2076)

(assert (=> b!289573 (= lt!142956 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142960 k!2524 (array!14580 (store (arr!6916 a!3312) i!1256 k!2524) (size!7268 a!3312)) mask!3809))))

(assert (=> b!289573 (= lt!142961 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142960 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289573 (= lt!142960 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!289574 () Bool)

(assert (=> b!289574 (= e!183322 e!183325)))

(declare-fun c!46772 () Bool)

(assert (=> b!289574 (= c!46772 (is-Intermediate!2076 lt!142961))))

(declare-fun b!289575 () Bool)

(declare-fun res!151152 () Bool)

(assert (=> b!289575 (=> (not res!151152) (not e!183321))))

(declare-fun arrayContainsKey!0 (array!14579 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289575 (= res!151152 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28276 res!151148) b!289568))

(assert (= (and b!289568 res!151151) b!289572))

(assert (= (and b!289572 res!151146) b!289575))

(assert (= (and b!289575 res!151152) b!289571))

(assert (= (and b!289571 res!151150) b!289565))

(assert (= (and b!289565 res!151147) b!289573))

(assert (= (and b!289573 res!151149) b!289567))

(assert (= (and b!289567 c!46771) b!289570))

(assert (= (and b!289567 (not c!46771)) b!289574))

(assert (= (and b!289574 c!46772) b!289566))

(assert (= (and b!289574 (not c!46772)) b!289569))

(declare-fun m!303709 () Bool)

(assert (=> b!289565 m!303709))

(declare-fun m!303711 () Bool)

(assert (=> b!289575 m!303711))

(declare-fun m!303713 () Bool)

(assert (=> b!289567 m!303713))

(declare-fun m!303715 () Bool)

(assert (=> start!28276 m!303715))

(declare-fun m!303717 () Bool)

(assert (=> start!28276 m!303717))

(declare-fun m!303719 () Bool)

(assert (=> b!289573 m!303719))

(declare-fun m!303721 () Bool)

(assert (=> b!289573 m!303721))

(declare-fun m!303723 () Bool)

(assert (=> b!289573 m!303723))

(declare-fun m!303725 () Bool)

(assert (=> b!289573 m!303725))

(assert (=> b!289566 m!303719))

(declare-fun m!303727 () Bool)

(assert (=> b!289566 m!303727))

(declare-fun m!303729 () Bool)

(assert (=> b!289566 m!303729))

(assert (=> b!289566 m!303713))

(declare-fun m!303731 () Bool)

(assert (=> b!289571 m!303731))

(declare-fun m!303733 () Bool)

(assert (=> b!289572 m!303733))

(push 1)

