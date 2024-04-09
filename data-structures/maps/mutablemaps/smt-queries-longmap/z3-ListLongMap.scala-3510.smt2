; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48648 () Bool)

(assert start!48648)

(declare-fun b!533981 () Bool)

(declare-fun res!329341 () Bool)

(declare-fun e!310526 () Bool)

(assert (=> b!533981 (=> (not res!329341) (not e!310526))))

(declare-datatypes ((array!33816 0))(
  ( (array!33817 (arr!16243 (Array (_ BitVec 32) (_ BitVec 64))) (size!16607 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33816)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533981 (= res!329341 (validKeyInArray!0 (select (arr!16243 a!3154) j!147)))))

(declare-fun b!533982 () Bool)

(declare-fun res!329337 () Bool)

(assert (=> b!533982 (=> (not res!329337) (not e!310526))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533982 (= res!329337 (and (= (size!16607 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16607 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16607 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533983 () Bool)

(declare-fun res!329338 () Bool)

(declare-fun e!310527 () Bool)

(assert (=> b!533983 (=> (not res!329338) (not e!310527))))

(declare-datatypes ((List!10415 0))(
  ( (Nil!10412) (Cons!10411 (h!11354 (_ BitVec 64)) (t!16651 List!10415)) )
))
(declare-fun arrayNoDuplicates!0 (array!33816 (_ BitVec 32) List!10415) Bool)

(assert (=> b!533983 (= res!329338 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10412))))

(declare-fun b!533984 () Bool)

(declare-fun res!329342 () Bool)

(assert (=> b!533984 (=> (not res!329342) (not e!310527))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4708 0))(
  ( (MissingZero!4708 (index!21056 (_ BitVec 32))) (Found!4708 (index!21057 (_ BitVec 32))) (Intermediate!4708 (undefined!5520 Bool) (index!21058 (_ BitVec 32)) (x!50046 (_ BitVec 32))) (Undefined!4708) (MissingVacant!4708 (index!21059 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33816 (_ BitVec 32)) SeekEntryResult!4708)

(assert (=> b!533984 (= res!329342 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16243 a!3154) j!147) a!3154 mask!3216) (Intermediate!4708 false resIndex!32 resX!32)))))

(declare-fun res!329344 () Bool)

(assert (=> start!48648 (=> (not res!329344) (not e!310526))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48648 (= res!329344 (validMask!0 mask!3216))))

(assert (=> start!48648 e!310526))

(assert (=> start!48648 true))

(declare-fun array_inv!12017 (array!33816) Bool)

(assert (=> start!48648 (array_inv!12017 a!3154)))

(declare-fun b!533985 () Bool)

(assert (=> b!533985 (= e!310526 e!310527)))

(declare-fun res!329339 () Bool)

(assert (=> b!533985 (=> (not res!329339) (not e!310527))))

(declare-fun lt!245542 () SeekEntryResult!4708)

(assert (=> b!533985 (= res!329339 (or (= lt!245542 (MissingZero!4708 i!1153)) (= lt!245542 (MissingVacant!4708 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33816 (_ BitVec 32)) SeekEntryResult!4708)

(assert (=> b!533985 (= lt!245542 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!533986 () Bool)

(declare-fun res!329336 () Bool)

(assert (=> b!533986 (=> (not res!329336) (not e!310526))))

(assert (=> b!533986 (= res!329336 (validKeyInArray!0 k0!1998))))

(declare-fun b!533987 () Bool)

(declare-fun res!329343 () Bool)

(assert (=> b!533987 (=> (not res!329343) (not e!310527))))

(assert (=> b!533987 (= res!329343 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16607 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16607 a!3154)) (= (select (arr!16243 a!3154) resIndex!32) (select (arr!16243 a!3154) j!147))))))

(declare-fun b!533988 () Bool)

(assert (=> b!533988 (= e!310527 false)))

(declare-fun lt!245543 () SeekEntryResult!4708)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!533988 (= lt!245543 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16243 a!3154) j!147) mask!3216) (select (arr!16243 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!533989 () Bool)

(declare-fun res!329340 () Bool)

(assert (=> b!533989 (=> (not res!329340) (not e!310526))))

(declare-fun arrayContainsKey!0 (array!33816 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533989 (= res!329340 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!533990 () Bool)

(declare-fun res!329345 () Bool)

(assert (=> b!533990 (=> (not res!329345) (not e!310527))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33816 (_ BitVec 32)) Bool)

(assert (=> b!533990 (= res!329345 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(assert (= (and start!48648 res!329344) b!533982))

(assert (= (and b!533982 res!329337) b!533981))

(assert (= (and b!533981 res!329341) b!533986))

(assert (= (and b!533986 res!329336) b!533989))

(assert (= (and b!533989 res!329340) b!533985))

(assert (= (and b!533985 res!329339) b!533990))

(assert (= (and b!533990 res!329345) b!533983))

(assert (= (and b!533983 res!329338) b!533987))

(assert (= (and b!533987 res!329343) b!533984))

(assert (= (and b!533984 res!329342) b!533988))

(declare-fun m!513771 () Bool)

(assert (=> b!533981 m!513771))

(assert (=> b!533981 m!513771))

(declare-fun m!513773 () Bool)

(assert (=> b!533981 m!513773))

(declare-fun m!513775 () Bool)

(assert (=> b!533989 m!513775))

(declare-fun m!513777 () Bool)

(assert (=> b!533985 m!513777))

(declare-fun m!513779 () Bool)

(assert (=> b!533990 m!513779))

(declare-fun m!513781 () Bool)

(assert (=> start!48648 m!513781))

(declare-fun m!513783 () Bool)

(assert (=> start!48648 m!513783))

(declare-fun m!513785 () Bool)

(assert (=> b!533983 m!513785))

(assert (=> b!533988 m!513771))

(assert (=> b!533988 m!513771))

(declare-fun m!513787 () Bool)

(assert (=> b!533988 m!513787))

(assert (=> b!533988 m!513787))

(assert (=> b!533988 m!513771))

(declare-fun m!513789 () Bool)

(assert (=> b!533988 m!513789))

(assert (=> b!533984 m!513771))

(assert (=> b!533984 m!513771))

(declare-fun m!513791 () Bool)

(assert (=> b!533984 m!513791))

(declare-fun m!513793 () Bool)

(assert (=> b!533987 m!513793))

(assert (=> b!533987 m!513771))

(declare-fun m!513795 () Bool)

(assert (=> b!533986 m!513795))

(check-sat (not b!533983) (not b!533990) (not b!533981) (not b!533986) (not b!533984) (not b!533985) (not b!533989) (not start!48648) (not b!533988))
(check-sat)
