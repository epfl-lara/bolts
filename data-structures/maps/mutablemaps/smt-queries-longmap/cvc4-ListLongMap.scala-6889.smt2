; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86624 () Bool)

(assert start!86624)

(declare-fun b!1004035 () Bool)

(declare-fun e!565454 () Bool)

(assert (=> b!1004035 (= e!565454 false)))

(declare-fun lt!443986 () (_ BitVec 64))

(declare-fun lt!443990 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9442 0))(
  ( (MissingZero!9442 (index!40138 (_ BitVec 32))) (Found!9442 (index!40139 (_ BitVec 32))) (Intermediate!9442 (undefined!10254 Bool) (index!40140 (_ BitVec 32)) (x!87567 (_ BitVec 32))) (Undefined!9442) (MissingVacant!9442 (index!40141 (_ BitVec 32))) )
))
(declare-fun lt!443988 () SeekEntryResult!9442)

(declare-datatypes ((array!63377 0))(
  ( (array!63378 (arr!30510 (Array (_ BitVec 32) (_ BitVec 64))) (size!31013 (_ BitVec 32))) )
))
(declare-fun lt!443989 () array!63377)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63377 (_ BitVec 32)) SeekEntryResult!9442)

(assert (=> b!1004035 (= lt!443988 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443990 lt!443986 lt!443989 mask!3464))))

(declare-fun res!673675 () Bool)

(declare-fun e!565457 () Bool)

(assert (=> start!86624 (=> (not res!673675) (not e!565457))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86624 (= res!673675 (validMask!0 mask!3464))))

(assert (=> start!86624 e!565457))

(declare-fun a!3219 () array!63377)

(declare-fun array_inv!23500 (array!63377) Bool)

(assert (=> start!86624 (array_inv!23500 a!3219)))

(assert (=> start!86624 true))

(declare-fun b!1004036 () Bool)

(declare-fun res!673684 () Bool)

(declare-fun e!565460 () Bool)

(assert (=> b!1004036 (=> (not res!673684) (not e!565460))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!443991 () SeekEntryResult!9442)

(assert (=> b!1004036 (= res!673684 (not (= lt!443991 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443986 lt!443989 mask!3464))))))

(declare-fun b!1004037 () Bool)

(declare-fun res!673683 () Bool)

(declare-fun e!565455 () Bool)

(assert (=> b!1004037 (=> (not res!673683) (not e!565455))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1004037 (= res!673683 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31013 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31013 a!3219))))))

(declare-fun b!1004038 () Bool)

(declare-fun e!565456 () Bool)

(assert (=> b!1004038 (= e!565455 e!565456)))

(declare-fun res!673677 () Bool)

(assert (=> b!1004038 (=> (not res!673677) (not e!565456))))

(declare-fun lt!443985 () SeekEntryResult!9442)

(declare-fun lt!443984 () SeekEntryResult!9442)

(assert (=> b!1004038 (= res!673677 (= lt!443985 lt!443984))))

(assert (=> b!1004038 (= lt!443984 (Intermediate!9442 false resIndex!38 resX!38))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1004038 (= lt!443985 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30510 a!3219) j!170) mask!3464) (select (arr!30510 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004039 () Bool)

(declare-fun res!673679 () Bool)

(assert (=> b!1004039 (=> (not res!673679) (not e!565457))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1004039 (= res!673679 (and (= (size!31013 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31013 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31013 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1004040 () Bool)

(declare-fun res!673671 () Bool)

(assert (=> b!1004040 (=> (not res!673671) (not e!565457))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1004040 (= res!673671 (validKeyInArray!0 k!2224))))

(declare-fun b!1004041 () Bool)

(declare-fun res!673678 () Bool)

(assert (=> b!1004041 (=> (not res!673678) (not e!565455))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63377 (_ BitVec 32)) Bool)

(assert (=> b!1004041 (= res!673678 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1004042 () Bool)

(assert (=> b!1004042 (= e!565457 e!565455)))

(declare-fun res!673676 () Bool)

(assert (=> b!1004042 (=> (not res!673676) (not e!565455))))

(declare-fun lt!443987 () SeekEntryResult!9442)

(assert (=> b!1004042 (= res!673676 (or (= lt!443987 (MissingVacant!9442 i!1194)) (= lt!443987 (MissingZero!9442 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63377 (_ BitVec 32)) SeekEntryResult!9442)

(assert (=> b!1004042 (= lt!443987 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1004043 () Bool)

(declare-fun e!565459 () Bool)

(assert (=> b!1004043 (= e!565456 e!565459)))

(declare-fun res!673674 () Bool)

(assert (=> b!1004043 (=> (not res!673674) (not e!565459))))

(assert (=> b!1004043 (= res!673674 (= lt!443991 lt!443984))))

(assert (=> b!1004043 (= lt!443991 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30510 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004044 () Bool)

(assert (=> b!1004044 (= e!565460 e!565454)))

(declare-fun res!673672 () Bool)

(assert (=> b!1004044 (=> (not res!673672) (not e!565454))))

(assert (=> b!1004044 (= res!673672 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443990 #b00000000000000000000000000000000) (bvslt lt!443990 (size!31013 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1004044 (= lt!443990 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1004045 () Bool)

(declare-fun res!673680 () Bool)

(assert (=> b!1004045 (=> (not res!673680) (not e!565457))))

(declare-fun arrayContainsKey!0 (array!63377 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1004045 (= res!673680 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1004046 () Bool)

(declare-fun res!673670 () Bool)

(assert (=> b!1004046 (=> (not res!673670) (not e!565454))))

(assert (=> b!1004046 (= res!673670 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443990 (select (arr!30510 a!3219) j!170) a!3219 mask!3464) lt!443984))))

(declare-fun b!1004047 () Bool)

(assert (=> b!1004047 (= e!565459 e!565460)))

(declare-fun res!673682 () Bool)

(assert (=> b!1004047 (=> (not res!673682) (not e!565460))))

(assert (=> b!1004047 (= res!673682 (not (= lt!443985 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443986 mask!3464) lt!443986 lt!443989 mask!3464))))))

(assert (=> b!1004047 (= lt!443986 (select (store (arr!30510 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1004047 (= lt!443989 (array!63378 (store (arr!30510 a!3219) i!1194 k!2224) (size!31013 a!3219)))))

(declare-fun b!1004048 () Bool)

(declare-fun res!673681 () Bool)

(assert (=> b!1004048 (=> (not res!673681) (not e!565460))))

(assert (=> b!1004048 (= res!673681 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1004049 () Bool)

(declare-fun res!673673 () Bool)

(assert (=> b!1004049 (=> (not res!673673) (not e!565455))))

(declare-datatypes ((List!21312 0))(
  ( (Nil!21309) (Cons!21308 (h!22485 (_ BitVec 64)) (t!30321 List!21312)) )
))
(declare-fun arrayNoDuplicates!0 (array!63377 (_ BitVec 32) List!21312) Bool)

(assert (=> b!1004049 (= res!673673 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21309))))

(declare-fun b!1004050 () Bool)

(declare-fun res!673669 () Bool)

(assert (=> b!1004050 (=> (not res!673669) (not e!565457))))

(assert (=> b!1004050 (= res!673669 (validKeyInArray!0 (select (arr!30510 a!3219) j!170)))))

(assert (= (and start!86624 res!673675) b!1004039))

(assert (= (and b!1004039 res!673679) b!1004050))

(assert (= (and b!1004050 res!673669) b!1004040))

(assert (= (and b!1004040 res!673671) b!1004045))

(assert (= (and b!1004045 res!673680) b!1004042))

(assert (= (and b!1004042 res!673676) b!1004041))

(assert (= (and b!1004041 res!673678) b!1004049))

(assert (= (and b!1004049 res!673673) b!1004037))

(assert (= (and b!1004037 res!673683) b!1004038))

(assert (= (and b!1004038 res!673677) b!1004043))

(assert (= (and b!1004043 res!673674) b!1004047))

(assert (= (and b!1004047 res!673682) b!1004036))

(assert (= (and b!1004036 res!673684) b!1004048))

(assert (= (and b!1004048 res!673681) b!1004044))

(assert (= (and b!1004044 res!673672) b!1004046))

(assert (= (and b!1004046 res!673670) b!1004035))

(declare-fun m!929741 () Bool)

(assert (=> start!86624 m!929741))

(declare-fun m!929743 () Bool)

(assert (=> start!86624 m!929743))

(declare-fun m!929745 () Bool)

(assert (=> b!1004042 m!929745))

(declare-fun m!929747 () Bool)

(assert (=> b!1004046 m!929747))

(assert (=> b!1004046 m!929747))

(declare-fun m!929749 () Bool)

(assert (=> b!1004046 m!929749))

(declare-fun m!929751 () Bool)

(assert (=> b!1004036 m!929751))

(declare-fun m!929753 () Bool)

(assert (=> b!1004047 m!929753))

(assert (=> b!1004047 m!929753))

(declare-fun m!929755 () Bool)

(assert (=> b!1004047 m!929755))

(declare-fun m!929757 () Bool)

(assert (=> b!1004047 m!929757))

(declare-fun m!929759 () Bool)

(assert (=> b!1004047 m!929759))

(declare-fun m!929761 () Bool)

(assert (=> b!1004044 m!929761))

(assert (=> b!1004038 m!929747))

(assert (=> b!1004038 m!929747))

(declare-fun m!929763 () Bool)

(assert (=> b!1004038 m!929763))

(assert (=> b!1004038 m!929763))

(assert (=> b!1004038 m!929747))

(declare-fun m!929765 () Bool)

(assert (=> b!1004038 m!929765))

(declare-fun m!929767 () Bool)

(assert (=> b!1004040 m!929767))

(assert (=> b!1004050 m!929747))

(assert (=> b!1004050 m!929747))

(declare-fun m!929769 () Bool)

(assert (=> b!1004050 m!929769))

(assert (=> b!1004043 m!929747))

(assert (=> b!1004043 m!929747))

(declare-fun m!929771 () Bool)

(assert (=> b!1004043 m!929771))

(declare-fun m!929773 () Bool)

(assert (=> b!1004045 m!929773))

(declare-fun m!929775 () Bool)

(assert (=> b!1004049 m!929775))

(declare-fun m!929777 () Bool)

(assert (=> b!1004041 m!929777))

(declare-fun m!929779 () Bool)

(assert (=> b!1004035 m!929779))

(push 1)

