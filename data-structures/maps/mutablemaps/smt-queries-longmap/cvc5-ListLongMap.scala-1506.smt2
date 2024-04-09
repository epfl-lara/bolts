; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28576 () Bool)

(assert start!28576)

(declare-fun res!153087 () Bool)

(declare-fun e!184762 () Bool)

(assert (=> start!28576 (=> (not res!153087) (not e!184762))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28576 (= res!153087 (validMask!0 mask!3809))))

(assert (=> start!28576 e!184762))

(assert (=> start!28576 true))

(declare-datatypes ((array!14744 0))(
  ( (array!14745 (arr!6994 (Array (_ BitVec 32) (_ BitVec 64))) (size!7346 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14744)

(declare-fun array_inv!4948 (array!14744) Bool)

(assert (=> start!28576 (array_inv!4948 a!3312)))

(declare-fun b!291989 () Bool)

(declare-fun res!153086 () Bool)

(assert (=> b!291989 (=> (not res!153086) (not e!184762))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14744 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!291989 (= res!153086 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!291990 () Bool)

(declare-fun res!153090 () Bool)

(assert (=> b!291990 (=> (not res!153090) (not e!184762))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!291990 (= res!153090 (validKeyInArray!0 k!2524))))

(declare-fun b!291991 () Bool)

(declare-fun e!184758 () Bool)

(assert (=> b!291991 (= e!184762 e!184758)))

(declare-fun res!153089 () Bool)

(assert (=> b!291991 (=> (not res!153089) (not e!184758))))

(declare-fun lt!144531 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2154 0))(
  ( (MissingZero!2154 (index!10786 (_ BitVec 32))) (Found!2154 (index!10787 (_ BitVec 32))) (Intermediate!2154 (undefined!2966 Bool) (index!10788 (_ BitVec 32)) (x!28953 (_ BitVec 32))) (Undefined!2154) (MissingVacant!2154 (index!10789 (_ BitVec 32))) )
))
(declare-fun lt!144532 () SeekEntryResult!2154)

(assert (=> b!291991 (= res!153089 (or lt!144531 (= lt!144532 (MissingVacant!2154 i!1256))))))

(assert (=> b!291991 (= lt!144531 (= lt!144532 (MissingZero!2154 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14744 (_ BitVec 32)) SeekEntryResult!2154)

(assert (=> b!291991 (= lt!144532 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!291992 () Bool)

(declare-fun e!184760 () Bool)

(declare-fun e!184759 () Bool)

(assert (=> b!291992 (= e!184760 e!184759)))

(declare-fun res!153085 () Bool)

(assert (=> b!291992 (=> (not res!153085) (not e!184759))))

(declare-fun lt!144530 () Bool)

(declare-fun lt!144529 () SeekEntryResult!2154)

(assert (=> b!291992 (= res!153085 (and (or lt!144530 (not (undefined!2966 lt!144529))) (not lt!144530) (= (select (arr!6994 a!3312) (index!10788 lt!144529)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!291992 (= lt!144530 (not (is-Intermediate!2154 lt!144529)))))

(declare-fun b!291993 () Bool)

(assert (=> b!291993 (= e!184759 (not true))))

(assert (=> b!291993 (= (index!10788 lt!144529) i!1256)))

(declare-fun b!291994 () Bool)

(declare-fun res!153084 () Bool)

(assert (=> b!291994 (=> (not res!153084) (not e!184758))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14744 (_ BitVec 32)) Bool)

(assert (=> b!291994 (= res!153084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!291995 () Bool)

(declare-fun res!153088 () Bool)

(assert (=> b!291995 (=> (not res!153088) (not e!184762))))

(assert (=> b!291995 (= res!153088 (and (= (size!7346 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7346 a!3312))))))

(declare-fun b!291996 () Bool)

(assert (=> b!291996 (= e!184758 e!184760)))

(declare-fun res!153083 () Bool)

(assert (=> b!291996 (=> (not res!153083) (not e!184760))))

(assert (=> b!291996 (= res!153083 (and (not lt!144531) (= lt!144532 (MissingVacant!2154 i!1256))))))

(declare-fun lt!144528 () SeekEntryResult!2154)

(declare-fun lt!144533 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14744 (_ BitVec 32)) SeekEntryResult!2154)

(assert (=> b!291996 (= lt!144528 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144533 k!2524 (array!14745 (store (arr!6994 a!3312) i!1256 k!2524) (size!7346 a!3312)) mask!3809))))

(assert (=> b!291996 (= lt!144529 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144533 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!291996 (= lt!144533 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!28576 res!153087) b!291995))

(assert (= (and b!291995 res!153088) b!291990))

(assert (= (and b!291990 res!153090) b!291989))

(assert (= (and b!291989 res!153086) b!291991))

(assert (= (and b!291991 res!153089) b!291994))

(assert (= (and b!291994 res!153084) b!291996))

(assert (= (and b!291996 res!153083) b!291992))

(assert (= (and b!291992 res!153085) b!291993))

(declare-fun m!305761 () Bool)

(assert (=> b!291994 m!305761))

(declare-fun m!305763 () Bool)

(assert (=> start!28576 m!305763))

(declare-fun m!305765 () Bool)

(assert (=> start!28576 m!305765))

(declare-fun m!305767 () Bool)

(assert (=> b!291992 m!305767))

(declare-fun m!305769 () Bool)

(assert (=> b!291991 m!305769))

(declare-fun m!305771 () Bool)

(assert (=> b!291990 m!305771))

(declare-fun m!305773 () Bool)

(assert (=> b!291996 m!305773))

(declare-fun m!305775 () Bool)

(assert (=> b!291996 m!305775))

(declare-fun m!305777 () Bool)

(assert (=> b!291996 m!305777))

(declare-fun m!305779 () Bool)

(assert (=> b!291996 m!305779))

(declare-fun m!305781 () Bool)

(assert (=> b!291989 m!305781))

(push 1)

