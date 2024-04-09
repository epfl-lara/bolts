; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131392 () Bool)

(assert start!131392)

(declare-fun b!1539984 () Bool)

(declare-fun e!856540 () Bool)

(declare-fun e!856544 () Bool)

(assert (=> b!1539984 (= e!856540 e!856544)))

(declare-fun res!1056821 () Bool)

(assert (=> b!1539984 (=> (not res!1056821) (not e!856544))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!102267 0))(
  ( (array!102268 (arr!49339 (Array (_ BitVec 32) (_ BitVec 64))) (size!49890 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102267)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13488 0))(
  ( (MissingZero!13488 (index!56346 (_ BitVec 32))) (Found!13488 (index!56347 (_ BitVec 32))) (Intermediate!13488 (undefined!14300 Bool) (index!56348 (_ BitVec 32)) (x!138090 (_ BitVec 32))) (Undefined!13488) (MissingVacant!13488 (index!56349 (_ BitVec 32))) )
))
(declare-fun lt!665150 () SeekEntryResult!13488)

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102267 (_ BitVec 32)) SeekEntryResult!13488)

(assert (=> b!1539984 (= res!1056821 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49339 a!2792) j!64) a!2792 mask!2480) lt!665150))))

(assert (=> b!1539984 (= lt!665150 (Found!13488 j!64))))

(declare-fun b!1539985 () Bool)

(declare-fun res!1056816 () Bool)

(assert (=> b!1539985 (=> (not res!1056816) (not e!856540))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1539985 (= res!1056816 (validKeyInArray!0 (select (arr!49339 a!2792) i!951)))))

(declare-fun b!1539986 () Bool)

(declare-fun e!856543 () Bool)

(assert (=> b!1539986 (= e!856543 (not true))))

(declare-fun lt!665151 () (_ BitVec 32))

(declare-fun lt!665149 () SeekEntryResult!13488)

(assert (=> b!1539986 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665151 vacantIndex!5 (select (store (arr!49339 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102268 (store (arr!49339 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49890 a!2792)) mask!2480) lt!665149)))

(declare-datatypes ((Unit!51368 0))(
  ( (Unit!51369) )
))
(declare-fun lt!665152 () Unit!51368)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102267 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51368)

(assert (=> b!1539986 (= lt!665152 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!665151 vacantIndex!5 mask!2480))))

(declare-fun b!1539987 () Bool)

(declare-fun res!1056815 () Bool)

(assert (=> b!1539987 (=> (not res!1056815) (not e!856540))))

(assert (=> b!1539987 (= res!1056815 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49890 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49890 a!2792)) (= (select (arr!49339 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1539988 () Bool)

(declare-fun e!856542 () Bool)

(assert (=> b!1539988 (= e!856542 e!856543)))

(declare-fun res!1056817 () Bool)

(assert (=> b!1539988 (=> (not res!1056817) (not e!856543))))

(assert (=> b!1539988 (= res!1056817 (= lt!665149 lt!665150))))

(assert (=> b!1539988 (= lt!665149 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665151 vacantIndex!5 (select (arr!49339 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1539989 () Bool)

(declare-fun res!1056819 () Bool)

(assert (=> b!1539989 (=> (not res!1056819) (not e!856540))))

(assert (=> b!1539989 (= res!1056819 (validKeyInArray!0 (select (arr!49339 a!2792) j!64)))))

(declare-fun b!1539990 () Bool)

(declare-fun res!1056812 () Bool)

(assert (=> b!1539990 (=> (not res!1056812) (not e!856540))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102267 (_ BitVec 32)) Bool)

(assert (=> b!1539990 (= res!1056812 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1056820 () Bool)

(assert (=> start!131392 (=> (not res!1056820) (not e!856540))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131392 (= res!1056820 (validMask!0 mask!2480))))

(assert (=> start!131392 e!856540))

(assert (=> start!131392 true))

(declare-fun array_inv!38284 (array!102267) Bool)

(assert (=> start!131392 (array_inv!38284 a!2792)))

(declare-fun b!1539991 () Bool)

(declare-fun res!1056814 () Bool)

(assert (=> b!1539991 (=> (not res!1056814) (not e!856540))))

(assert (=> b!1539991 (= res!1056814 (and (= (size!49890 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49890 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49890 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1539992 () Bool)

(declare-fun res!1056813 () Bool)

(assert (=> b!1539992 (=> (not res!1056813) (not e!856544))))

(assert (=> b!1539992 (= res!1056813 (not (= (select (arr!49339 a!2792) index!463) (select (arr!49339 a!2792) j!64))))))

(declare-fun b!1539993 () Bool)

(assert (=> b!1539993 (= e!856544 e!856542)))

(declare-fun res!1056818 () Bool)

(assert (=> b!1539993 (=> (not res!1056818) (not e!856542))))

(assert (=> b!1539993 (= res!1056818 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!665151 #b00000000000000000000000000000000) (bvslt lt!665151 (size!49890 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1539993 (= lt!665151 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1539994 () Bool)

(declare-fun res!1056822 () Bool)

(assert (=> b!1539994 (=> (not res!1056822) (not e!856540))))

(declare-datatypes ((List!35993 0))(
  ( (Nil!35990) (Cons!35989 (h!37435 (_ BitVec 64)) (t!50694 List!35993)) )
))
(declare-fun arrayNoDuplicates!0 (array!102267 (_ BitVec 32) List!35993) Bool)

(assert (=> b!1539994 (= res!1056822 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35990))))

(assert (= (and start!131392 res!1056820) b!1539991))

(assert (= (and b!1539991 res!1056814) b!1539985))

(assert (= (and b!1539985 res!1056816) b!1539989))

(assert (= (and b!1539989 res!1056819) b!1539990))

(assert (= (and b!1539990 res!1056812) b!1539994))

(assert (= (and b!1539994 res!1056822) b!1539987))

(assert (= (and b!1539987 res!1056815) b!1539984))

(assert (= (and b!1539984 res!1056821) b!1539992))

(assert (= (and b!1539992 res!1056813) b!1539993))

(assert (= (and b!1539993 res!1056818) b!1539988))

(assert (= (and b!1539988 res!1056817) b!1539986))

(declare-fun m!1422135 () Bool)

(assert (=> start!131392 m!1422135))

(declare-fun m!1422137 () Bool)

(assert (=> start!131392 m!1422137))

(declare-fun m!1422139 () Bool)

(assert (=> b!1539989 m!1422139))

(assert (=> b!1539989 m!1422139))

(declare-fun m!1422141 () Bool)

(assert (=> b!1539989 m!1422141))

(assert (=> b!1539988 m!1422139))

(assert (=> b!1539988 m!1422139))

(declare-fun m!1422143 () Bool)

(assert (=> b!1539988 m!1422143))

(declare-fun m!1422145 () Bool)

(assert (=> b!1539985 m!1422145))

(assert (=> b!1539985 m!1422145))

(declare-fun m!1422147 () Bool)

(assert (=> b!1539985 m!1422147))

(declare-fun m!1422149 () Bool)

(assert (=> b!1539994 m!1422149))

(declare-fun m!1422151 () Bool)

(assert (=> b!1539990 m!1422151))

(declare-fun m!1422153 () Bool)

(assert (=> b!1539993 m!1422153))

(assert (=> b!1539984 m!1422139))

(assert (=> b!1539984 m!1422139))

(declare-fun m!1422155 () Bool)

(assert (=> b!1539984 m!1422155))

(declare-fun m!1422157 () Bool)

(assert (=> b!1539992 m!1422157))

(assert (=> b!1539992 m!1422139))

(declare-fun m!1422159 () Bool)

(assert (=> b!1539986 m!1422159))

(declare-fun m!1422161 () Bool)

(assert (=> b!1539986 m!1422161))

(assert (=> b!1539986 m!1422161))

(declare-fun m!1422163 () Bool)

(assert (=> b!1539986 m!1422163))

(declare-fun m!1422165 () Bool)

(assert (=> b!1539986 m!1422165))

(declare-fun m!1422167 () Bool)

(assert (=> b!1539987 m!1422167))

(push 1)

