; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86582 () Bool)

(assert start!86582)

(declare-fun b!1003027 () Bool)

(declare-fun res!672665 () Bool)

(declare-fun e!565018 () Bool)

(assert (=> b!1003027 (=> (not res!672665) (not e!565018))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1003027 (= res!672665 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1003028 () Bool)

(declare-fun res!672668 () Bool)

(declare-fun e!565013 () Bool)

(assert (=> b!1003028 (=> (not res!672668) (not e!565013))))

(declare-datatypes ((array!63335 0))(
  ( (array!63336 (arr!30489 (Array (_ BitVec 32) (_ BitVec 64))) (size!30992 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63335)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63335 (_ BitVec 32)) Bool)

(assert (=> b!1003028 (= res!672668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1003029 () Bool)

(declare-fun res!672674 () Bool)

(declare-fun e!565016 () Bool)

(assert (=> b!1003029 (=> (not res!672674) (not e!565016))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63335 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1003029 (= res!672674 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1003030 () Bool)

(declare-fun res!672666 () Bool)

(assert (=> b!1003030 (=> (not res!672666) (not e!565016))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1003030 (= res!672666 (validKeyInArray!0 k!2224))))

(declare-fun res!672672 () Bool)

(assert (=> start!86582 (=> (not res!672672) (not e!565016))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86582 (= res!672672 (validMask!0 mask!3464))))

(assert (=> start!86582 e!565016))

(declare-fun array_inv!23479 (array!63335) Bool)

(assert (=> start!86582 (array_inv!23479 a!3219)))

(assert (=> start!86582 true))

(declare-fun b!1003031 () Bool)

(assert (=> b!1003031 (= e!565016 e!565013)))

(declare-fun res!672671 () Bool)

(assert (=> b!1003031 (=> (not res!672671) (not e!565013))))

(declare-datatypes ((SeekEntryResult!9421 0))(
  ( (MissingZero!9421 (index!40054 (_ BitVec 32))) (Found!9421 (index!40055 (_ BitVec 32))) (Intermediate!9421 (undefined!10233 Bool) (index!40056 (_ BitVec 32)) (x!87490 (_ BitVec 32))) (Undefined!9421) (MissingVacant!9421 (index!40057 (_ BitVec 32))) )
))
(declare-fun lt!443480 () SeekEntryResult!9421)

(assert (=> b!1003031 (= res!672671 (or (= lt!443480 (MissingVacant!9421 i!1194)) (= lt!443480 (MissingZero!9421 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63335 (_ BitVec 32)) SeekEntryResult!9421)

(assert (=> b!1003031 (= lt!443480 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1003032 () Bool)

(declare-fun e!565019 () Bool)

(assert (=> b!1003032 (= e!565018 e!565019)))

(declare-fun res!672667 () Bool)

(assert (=> b!1003032 (=> (not res!672667) (not e!565019))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun lt!443482 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1003032 (= res!672667 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443482 #b00000000000000000000000000000000) (bvslt lt!443482 (size!30992 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003032 (= lt!443482 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1003033 () Bool)

(declare-fun res!672673 () Bool)

(assert (=> b!1003033 (=> (not res!672673) (not e!565016))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1003033 (= res!672673 (and (= (size!30992 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30992 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30992 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1003034 () Bool)

(declare-fun res!672675 () Bool)

(assert (=> b!1003034 (=> (not res!672675) (not e!565016))))

(assert (=> b!1003034 (= res!672675 (validKeyInArray!0 (select (arr!30489 a!3219) j!170)))))

(declare-fun b!1003035 () Bool)

(declare-fun res!672662 () Bool)

(assert (=> b!1003035 (=> (not res!672662) (not e!565018))))

(declare-fun lt!443483 () array!63335)

(declare-fun lt!443484 () (_ BitVec 64))

(declare-fun lt!443486 () SeekEntryResult!9421)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63335 (_ BitVec 32)) SeekEntryResult!9421)

(assert (=> b!1003035 (= res!672662 (not (= lt!443486 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443484 lt!443483 mask!3464))))))

(declare-fun b!1003036 () Bool)

(declare-fun e!565017 () Bool)

(assert (=> b!1003036 (= e!565013 e!565017)))

(declare-fun res!672661 () Bool)

(assert (=> b!1003036 (=> (not res!672661) (not e!565017))))

(declare-fun lt!443487 () SeekEntryResult!9421)

(declare-fun lt!443485 () SeekEntryResult!9421)

(assert (=> b!1003036 (= res!672661 (= lt!443487 lt!443485))))

(assert (=> b!1003036 (= lt!443485 (Intermediate!9421 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003036 (= lt!443487 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30489 a!3219) j!170) mask!3464) (select (arr!30489 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003037 () Bool)

(declare-fun res!672670 () Bool)

(assert (=> b!1003037 (=> (not res!672670) (not e!565019))))

(assert (=> b!1003037 (= res!672670 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443482 (select (arr!30489 a!3219) j!170) a!3219 mask!3464) lt!443485))))

(declare-fun b!1003038 () Bool)

(declare-fun e!565015 () Bool)

(assert (=> b!1003038 (= e!565017 e!565015)))

(declare-fun res!672664 () Bool)

(assert (=> b!1003038 (=> (not res!672664) (not e!565015))))

(assert (=> b!1003038 (= res!672664 (= lt!443486 lt!443485))))

(assert (=> b!1003038 (= lt!443486 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30489 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003039 () Bool)

(declare-fun res!672669 () Bool)

(assert (=> b!1003039 (=> (not res!672669) (not e!565013))))

(declare-datatypes ((List!21291 0))(
  ( (Nil!21288) (Cons!21287 (h!22464 (_ BitVec 64)) (t!30300 List!21291)) )
))
(declare-fun arrayNoDuplicates!0 (array!63335 (_ BitVec 32) List!21291) Bool)

(assert (=> b!1003039 (= res!672669 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21288))))

(declare-fun b!1003040 () Bool)

(assert (=> b!1003040 (= e!565015 e!565018)))

(declare-fun res!672676 () Bool)

(assert (=> b!1003040 (=> (not res!672676) (not e!565018))))

(assert (=> b!1003040 (= res!672676 (not (= lt!443487 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443484 mask!3464) lt!443484 lt!443483 mask!3464))))))

(assert (=> b!1003040 (= lt!443484 (select (store (arr!30489 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1003040 (= lt!443483 (array!63336 (store (arr!30489 a!3219) i!1194 k!2224) (size!30992 a!3219)))))

(declare-fun b!1003041 () Bool)

(declare-fun res!672663 () Bool)

(assert (=> b!1003041 (=> (not res!672663) (not e!565013))))

(assert (=> b!1003041 (= res!672663 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30992 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30992 a!3219))))))

(declare-fun b!1003042 () Bool)

(assert (=> b!1003042 (= e!565019 false)))

(declare-fun lt!443481 () SeekEntryResult!9421)

(assert (=> b!1003042 (= lt!443481 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443482 lt!443484 lt!443483 mask!3464))))

(assert (= (and start!86582 res!672672) b!1003033))

(assert (= (and b!1003033 res!672673) b!1003034))

(assert (= (and b!1003034 res!672675) b!1003030))

(assert (= (and b!1003030 res!672666) b!1003029))

(assert (= (and b!1003029 res!672674) b!1003031))

(assert (= (and b!1003031 res!672671) b!1003028))

(assert (= (and b!1003028 res!672668) b!1003039))

(assert (= (and b!1003039 res!672669) b!1003041))

(assert (= (and b!1003041 res!672663) b!1003036))

(assert (= (and b!1003036 res!672661) b!1003038))

(assert (= (and b!1003038 res!672664) b!1003040))

(assert (= (and b!1003040 res!672676) b!1003035))

(assert (= (and b!1003035 res!672662) b!1003027))

(assert (= (and b!1003027 res!672665) b!1003032))

(assert (= (and b!1003032 res!672667) b!1003037))

(assert (= (and b!1003037 res!672670) b!1003042))

(declare-fun m!928901 () Bool)

(assert (=> b!1003039 m!928901))

(declare-fun m!928903 () Bool)

(assert (=> b!1003030 m!928903))

(declare-fun m!928905 () Bool)

(assert (=> b!1003036 m!928905))

(assert (=> b!1003036 m!928905))

(declare-fun m!928907 () Bool)

(assert (=> b!1003036 m!928907))

(assert (=> b!1003036 m!928907))

(assert (=> b!1003036 m!928905))

(declare-fun m!928909 () Bool)

(assert (=> b!1003036 m!928909))

(declare-fun m!928911 () Bool)

(assert (=> b!1003031 m!928911))

(declare-fun m!928913 () Bool)

(assert (=> b!1003042 m!928913))

(declare-fun m!928915 () Bool)

(assert (=> b!1003028 m!928915))

(declare-fun m!928917 () Bool)

(assert (=> b!1003035 m!928917))

(declare-fun m!928919 () Bool)

(assert (=> b!1003032 m!928919))

(declare-fun m!928921 () Bool)

(assert (=> b!1003029 m!928921))

(assert (=> b!1003037 m!928905))

(assert (=> b!1003037 m!928905))

(declare-fun m!928923 () Bool)

(assert (=> b!1003037 m!928923))

(assert (=> b!1003038 m!928905))

(assert (=> b!1003038 m!928905))

(declare-fun m!928925 () Bool)

(assert (=> b!1003038 m!928925))

(declare-fun m!928927 () Bool)

(assert (=> b!1003040 m!928927))

(assert (=> b!1003040 m!928927))

(declare-fun m!928929 () Bool)

(assert (=> b!1003040 m!928929))

(declare-fun m!928931 () Bool)

(assert (=> b!1003040 m!928931))

(declare-fun m!928933 () Bool)

(assert (=> b!1003040 m!928933))

(assert (=> b!1003034 m!928905))

(assert (=> b!1003034 m!928905))

(declare-fun m!928935 () Bool)

(assert (=> b!1003034 m!928935))

(declare-fun m!928937 () Bool)

(assert (=> start!86582 m!928937))

(declare-fun m!928939 () Bool)

(assert (=> start!86582 m!928939))

(push 1)

