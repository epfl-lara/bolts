; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48862 () Bool)

(assert start!48862)

(declare-fun b!537782 () Bool)

(declare-fun res!333149 () Bool)

(declare-fun e!311900 () Bool)

(assert (=> b!537782 (=> (not res!333149) (not e!311900))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34030 0))(
  ( (array!34031 (arr!16350 (Array (_ BitVec 32) (_ BitVec 64))) (size!16714 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34030)

(assert (=> b!537782 (= res!333149 (and (not (= (select (arr!16350 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16350 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16350 a!3154) index!1177) (select (arr!16350 a!3154) j!147)))))))

(declare-fun b!537783 () Bool)

(declare-fun e!311899 () Bool)

(assert (=> b!537783 (= e!311899 false)))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun lt!246530 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4815 0))(
  ( (MissingZero!4815 (index!21484 (_ BitVec 32))) (Found!4815 (index!21485 (_ BitVec 32))) (Intermediate!4815 (undefined!5627 Bool) (index!21486 (_ BitVec 32)) (x!50441 (_ BitVec 32))) (Undefined!4815) (MissingVacant!4815 (index!21487 (_ BitVec 32))) )
))
(declare-fun lt!246532 () SeekEntryResult!4815)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34030 (_ BitVec 32)) SeekEntryResult!4815)

(assert (=> b!537783 (= lt!246532 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246530 (select (arr!16350 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537784 () Bool)

(declare-fun res!333146 () Bool)

(declare-fun e!311902 () Bool)

(assert (=> b!537784 (=> (not res!333146) (not e!311902))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34030 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!537784 (= res!333146 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!537785 () Bool)

(declare-fun res!333141 () Bool)

(assert (=> b!537785 (=> (not res!333141) (not e!311902))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!537785 (= res!333141 (validKeyInArray!0 (select (arr!16350 a!3154) j!147)))))

(declare-fun b!537786 () Bool)

(declare-fun e!311898 () Bool)

(assert (=> b!537786 (= e!311902 e!311898)))

(declare-fun res!333144 () Bool)

(assert (=> b!537786 (=> (not res!333144) (not e!311898))))

(declare-fun lt!246531 () SeekEntryResult!4815)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!537786 (= res!333144 (or (= lt!246531 (MissingZero!4815 i!1153)) (= lt!246531 (MissingVacant!4815 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34030 (_ BitVec 32)) SeekEntryResult!4815)

(assert (=> b!537786 (= lt!246531 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!537787 () Bool)

(declare-fun res!333148 () Bool)

(assert (=> b!537787 (=> (not res!333148) (not e!311898))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34030 (_ BitVec 32)) Bool)

(assert (=> b!537787 (= res!333148 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!537788 () Bool)

(declare-fun res!333137 () Bool)

(assert (=> b!537788 (=> (not res!333137) (not e!311900))))

(declare-fun lt!246533 () SeekEntryResult!4815)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537788 (= res!333137 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16350 a!3154) j!147) mask!3216) (select (arr!16350 a!3154) j!147) a!3154 mask!3216) lt!246533))))

(declare-fun b!537789 () Bool)

(declare-fun res!333138 () Bool)

(assert (=> b!537789 (=> (not res!333138) (not e!311898))))

(declare-datatypes ((List!10522 0))(
  ( (Nil!10519) (Cons!10518 (h!11461 (_ BitVec 64)) (t!16758 List!10522)) )
))
(declare-fun arrayNoDuplicates!0 (array!34030 (_ BitVec 32) List!10522) Bool)

(assert (=> b!537789 (= res!333138 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10519))))

(declare-fun b!537790 () Bool)

(assert (=> b!537790 (= e!311900 e!311899)))

(declare-fun res!333147 () Bool)

(assert (=> b!537790 (=> (not res!333147) (not e!311899))))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!537790 (= res!333147 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246530 #b00000000000000000000000000000000) (bvslt lt!246530 (size!16714 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537790 (= lt!246530 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun res!333140 () Bool)

(assert (=> start!48862 (=> (not res!333140) (not e!311902))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48862 (= res!333140 (validMask!0 mask!3216))))

(assert (=> start!48862 e!311902))

(assert (=> start!48862 true))

(declare-fun array_inv!12124 (array!34030) Bool)

(assert (=> start!48862 (array_inv!12124 a!3154)))

(declare-fun b!537791 () Bool)

(assert (=> b!537791 (= e!311898 e!311900)))

(declare-fun res!333142 () Bool)

(assert (=> b!537791 (=> (not res!333142) (not e!311900))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!537791 (= res!333142 (= lt!246533 (Intermediate!4815 false resIndex!32 resX!32)))))

(assert (=> b!537791 (= lt!246533 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16350 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537792 () Bool)

(declare-fun res!333143 () Bool)

(assert (=> b!537792 (=> (not res!333143) (not e!311902))))

(assert (=> b!537792 (= res!333143 (validKeyInArray!0 k!1998))))

(declare-fun b!537793 () Bool)

(declare-fun res!333139 () Bool)

(assert (=> b!537793 (=> (not res!333139) (not e!311898))))

(assert (=> b!537793 (= res!333139 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16714 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16714 a!3154)) (= (select (arr!16350 a!3154) resIndex!32) (select (arr!16350 a!3154) j!147))))))

(declare-fun b!537794 () Bool)

(declare-fun res!333145 () Bool)

(assert (=> b!537794 (=> (not res!333145) (not e!311902))))

(assert (=> b!537794 (= res!333145 (and (= (size!16714 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16714 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16714 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48862 res!333140) b!537794))

(assert (= (and b!537794 res!333145) b!537785))

(assert (= (and b!537785 res!333141) b!537792))

(assert (= (and b!537792 res!333143) b!537784))

(assert (= (and b!537784 res!333146) b!537786))

(assert (= (and b!537786 res!333144) b!537787))

(assert (= (and b!537787 res!333148) b!537789))

(assert (= (and b!537789 res!333138) b!537793))

(assert (= (and b!537793 res!333139) b!537791))

(assert (= (and b!537791 res!333142) b!537788))

(assert (= (and b!537788 res!333137) b!537782))

(assert (= (and b!537782 res!333149) b!537790))

(assert (= (and b!537790 res!333147) b!537783))

(declare-fun m!516955 () Bool)

(assert (=> start!48862 m!516955))

(declare-fun m!516957 () Bool)

(assert (=> start!48862 m!516957))

(declare-fun m!516959 () Bool)

(assert (=> b!537785 m!516959))

(assert (=> b!537785 m!516959))

(declare-fun m!516961 () Bool)

(assert (=> b!537785 m!516961))

(declare-fun m!516963 () Bool)

(assert (=> b!537789 m!516963))

(assert (=> b!537783 m!516959))

(assert (=> b!537783 m!516959))

(declare-fun m!516965 () Bool)

(assert (=> b!537783 m!516965))

(assert (=> b!537791 m!516959))

(assert (=> b!537791 m!516959))

(declare-fun m!516967 () Bool)

(assert (=> b!537791 m!516967))

(declare-fun m!516969 () Bool)

(assert (=> b!537790 m!516969))

(declare-fun m!516971 () Bool)

(assert (=> b!537793 m!516971))

(assert (=> b!537793 m!516959))

(declare-fun m!516973 () Bool)

(assert (=> b!537787 m!516973))

(declare-fun m!516975 () Bool)

(assert (=> b!537792 m!516975))

(assert (=> b!537788 m!516959))

(assert (=> b!537788 m!516959))

(declare-fun m!516977 () Bool)

(assert (=> b!537788 m!516977))

(assert (=> b!537788 m!516977))

(assert (=> b!537788 m!516959))

(declare-fun m!516979 () Bool)

(assert (=> b!537788 m!516979))

(declare-fun m!516981 () Bool)

(assert (=> b!537782 m!516981))

(assert (=> b!537782 m!516959))

(declare-fun m!516983 () Bool)

(assert (=> b!537786 m!516983))

(declare-fun m!516985 () Bool)

(assert (=> b!537784 m!516985))

(push 1)

