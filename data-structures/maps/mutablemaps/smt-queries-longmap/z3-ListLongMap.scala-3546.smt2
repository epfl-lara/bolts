; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48864 () Bool)

(assert start!48864)

(declare-fun b!537821 () Bool)

(declare-fun res!333176 () Bool)

(declare-fun e!311916 () Bool)

(assert (=> b!537821 (=> (not res!333176) (not e!311916))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34032 0))(
  ( (array!34033 (arr!16351 (Array (_ BitVec 32) (_ BitVec 64))) (size!16715 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34032)

(declare-datatypes ((SeekEntryResult!4816 0))(
  ( (MissingZero!4816 (index!21488 (_ BitVec 32))) (Found!4816 (index!21489 (_ BitVec 32))) (Intermediate!4816 (undefined!5628 Bool) (index!21490 (_ BitVec 32)) (x!50442 (_ BitVec 32))) (Undefined!4816) (MissingVacant!4816 (index!21491 (_ BitVec 32))) )
))
(declare-fun lt!246542 () SeekEntryResult!4816)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34032 (_ BitVec 32)) SeekEntryResult!4816)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537821 (= res!333176 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16351 a!3154) j!147) mask!3216) (select (arr!16351 a!3154) j!147) a!3154 mask!3216) lt!246542))))

(declare-fun res!333181 () Bool)

(declare-fun e!311917 () Bool)

(assert (=> start!48864 (=> (not res!333181) (not e!311917))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48864 (= res!333181 (validMask!0 mask!3216))))

(assert (=> start!48864 e!311917))

(assert (=> start!48864 true))

(declare-fun array_inv!12125 (array!34032) Bool)

(assert (=> start!48864 (array_inv!12125 a!3154)))

(declare-fun b!537822 () Bool)

(declare-fun res!333177 () Bool)

(assert (=> b!537822 (=> (not res!333177) (not e!311917))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!537822 (= res!333177 (validKeyInArray!0 (select (arr!16351 a!3154) j!147)))))

(declare-fun b!537823 () Bool)

(declare-fun e!311913 () Bool)

(assert (=> b!537823 (= e!311917 e!311913)))

(declare-fun res!333179 () Bool)

(assert (=> b!537823 (=> (not res!333179) (not e!311913))))

(declare-fun lt!246544 () SeekEntryResult!4816)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!537823 (= res!333179 (or (= lt!246544 (MissingZero!4816 i!1153)) (= lt!246544 (MissingVacant!4816 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34032 (_ BitVec 32)) SeekEntryResult!4816)

(assert (=> b!537823 (= lt!246544 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!537824 () Bool)

(assert (=> b!537824 (= e!311913 e!311916)))

(declare-fun res!333188 () Bool)

(assert (=> b!537824 (=> (not res!333188) (not e!311916))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!537824 (= res!333188 (= lt!246542 (Intermediate!4816 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(assert (=> b!537824 (= lt!246542 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16351 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537825 () Bool)

(declare-fun e!311915 () Bool)

(assert (=> b!537825 (= e!311915 false)))

(declare-fun lt!246545 () SeekEntryResult!4816)

(declare-fun lt!246543 () (_ BitVec 32))

(assert (=> b!537825 (= lt!246545 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246543 (select (arr!16351 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537826 () Bool)

(declare-fun res!333180 () Bool)

(assert (=> b!537826 (=> (not res!333180) (not e!311913))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34032 (_ BitVec 32)) Bool)

(assert (=> b!537826 (= res!333180 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!537827 () Bool)

(declare-fun res!333187 () Bool)

(assert (=> b!537827 (=> (not res!333187) (not e!311916))))

(assert (=> b!537827 (= res!333187 (and (not (= (select (arr!16351 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16351 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16351 a!3154) index!1177) (select (arr!16351 a!3154) j!147)))))))

(declare-fun b!537828 () Bool)

(declare-fun res!333183 () Bool)

(assert (=> b!537828 (=> (not res!333183) (not e!311917))))

(assert (=> b!537828 (= res!333183 (and (= (size!16715 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16715 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16715 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!537829 () Bool)

(declare-fun res!333184 () Bool)

(assert (=> b!537829 (=> (not res!333184) (not e!311917))))

(declare-fun arrayContainsKey!0 (array!34032 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!537829 (= res!333184 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!537830 () Bool)

(declare-fun res!333178 () Bool)

(assert (=> b!537830 (=> (not res!333178) (not e!311913))))

(assert (=> b!537830 (= res!333178 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16715 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16715 a!3154)) (= (select (arr!16351 a!3154) resIndex!32) (select (arr!16351 a!3154) j!147))))))

(declare-fun b!537831 () Bool)

(assert (=> b!537831 (= e!311916 e!311915)))

(declare-fun res!333185 () Bool)

(assert (=> b!537831 (=> (not res!333185) (not e!311915))))

(assert (=> b!537831 (= res!333185 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246543 #b00000000000000000000000000000000) (bvslt lt!246543 (size!16715 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537831 (= lt!246543 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!537832 () Bool)

(declare-fun res!333186 () Bool)

(assert (=> b!537832 (=> (not res!333186) (not e!311917))))

(assert (=> b!537832 (= res!333186 (validKeyInArray!0 k0!1998))))

(declare-fun b!537833 () Bool)

(declare-fun res!333182 () Bool)

(assert (=> b!537833 (=> (not res!333182) (not e!311913))))

(declare-datatypes ((List!10523 0))(
  ( (Nil!10520) (Cons!10519 (h!11462 (_ BitVec 64)) (t!16759 List!10523)) )
))
(declare-fun arrayNoDuplicates!0 (array!34032 (_ BitVec 32) List!10523) Bool)

(assert (=> b!537833 (= res!333182 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10520))))

(assert (= (and start!48864 res!333181) b!537828))

(assert (= (and b!537828 res!333183) b!537822))

(assert (= (and b!537822 res!333177) b!537832))

(assert (= (and b!537832 res!333186) b!537829))

(assert (= (and b!537829 res!333184) b!537823))

(assert (= (and b!537823 res!333179) b!537826))

(assert (= (and b!537826 res!333180) b!537833))

(assert (= (and b!537833 res!333182) b!537830))

(assert (= (and b!537830 res!333178) b!537824))

(assert (= (and b!537824 res!333188) b!537821))

(assert (= (and b!537821 res!333176) b!537827))

(assert (= (and b!537827 res!333187) b!537831))

(assert (= (and b!537831 res!333185) b!537825))

(declare-fun m!516987 () Bool)

(assert (=> b!537824 m!516987))

(assert (=> b!537824 m!516987))

(declare-fun m!516989 () Bool)

(assert (=> b!537824 m!516989))

(assert (=> b!537821 m!516987))

(assert (=> b!537821 m!516987))

(declare-fun m!516991 () Bool)

(assert (=> b!537821 m!516991))

(assert (=> b!537821 m!516991))

(assert (=> b!537821 m!516987))

(declare-fun m!516993 () Bool)

(assert (=> b!537821 m!516993))

(declare-fun m!516995 () Bool)

(assert (=> b!537827 m!516995))

(assert (=> b!537827 m!516987))

(assert (=> b!537822 m!516987))

(assert (=> b!537822 m!516987))

(declare-fun m!516997 () Bool)

(assert (=> b!537822 m!516997))

(declare-fun m!516999 () Bool)

(assert (=> b!537830 m!516999))

(assert (=> b!537830 m!516987))

(declare-fun m!517001 () Bool)

(assert (=> b!537823 m!517001))

(declare-fun m!517003 () Bool)

(assert (=> b!537832 m!517003))

(declare-fun m!517005 () Bool)

(assert (=> b!537829 m!517005))

(declare-fun m!517007 () Bool)

(assert (=> b!537826 m!517007))

(assert (=> b!537825 m!516987))

(assert (=> b!537825 m!516987))

(declare-fun m!517009 () Bool)

(assert (=> b!537825 m!517009))

(declare-fun m!517011 () Bool)

(assert (=> b!537831 m!517011))

(declare-fun m!517013 () Bool)

(assert (=> start!48864 m!517013))

(declare-fun m!517015 () Bool)

(assert (=> start!48864 m!517015))

(declare-fun m!517017 () Bool)

(assert (=> b!537833 m!517017))

(check-sat (not b!537822) (not b!537829) (not b!537826) (not b!537821) (not b!537831) (not b!537824) (not b!537825) (not b!537832) (not b!537823) (not b!537833) (not start!48864))
(check-sat)
