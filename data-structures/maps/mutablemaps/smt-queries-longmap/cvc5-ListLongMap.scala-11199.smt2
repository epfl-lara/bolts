; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130858 () Bool)

(assert start!130858)

(declare-fun b!1534156 () Bool)

(declare-fun res!1051385 () Bool)

(declare-fun e!854411 () Bool)

(assert (=> b!1534156 (=> (not res!1051385) (not e!854411))))

(declare-datatypes ((array!101883 0))(
  ( (array!101884 (arr!49153 (Array (_ BitVec 32) (_ BitVec 64))) (size!49704 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101883)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534156 (= res!1051385 (validKeyInArray!0 (select (arr!49153 a!2792) j!64)))))

(declare-fun b!1534157 () Bool)

(declare-fun res!1051382 () Bool)

(assert (=> b!1534157 (=> (not res!1051382) (not e!854411))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101883 (_ BitVec 32)) Bool)

(assert (=> b!1534157 (= res!1051382 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1534158 () Bool)

(declare-fun res!1051386 () Bool)

(assert (=> b!1534158 (=> (not res!1051386) (not e!854411))))

(declare-datatypes ((List!35807 0))(
  ( (Nil!35804) (Cons!35803 (h!37249 (_ BitVec 64)) (t!50508 List!35807)) )
))
(declare-fun arrayNoDuplicates!0 (array!101883 (_ BitVec 32) List!35807) Bool)

(assert (=> b!1534158 (= res!1051386 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35804))))

(declare-fun b!1534159 () Bool)

(declare-fun res!1051379 () Bool)

(assert (=> b!1534159 (=> (not res!1051379) (not e!854411))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13308 0))(
  ( (MissingZero!13308 (index!55626 (_ BitVec 32))) (Found!13308 (index!55627 (_ BitVec 32))) (Intermediate!13308 (undefined!14120 Bool) (index!55628 (_ BitVec 32)) (x!137393 (_ BitVec 32))) (Undefined!13308) (MissingVacant!13308 (index!55629 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101883 (_ BitVec 32)) SeekEntryResult!13308)

(assert (=> b!1534159 (= res!1051379 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49153 a!2792) j!64) a!2792 mask!2480) (Found!13308 j!64)))))

(declare-fun b!1534160 () Bool)

(declare-fun res!1051381 () Bool)

(assert (=> b!1534160 (=> (not res!1051381) (not e!854411))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1534160 (= res!1051381 (validKeyInArray!0 (select (arr!49153 a!2792) i!951)))))

(declare-fun b!1534161 () Bool)

(declare-fun res!1051380 () Bool)

(assert (=> b!1534161 (=> (not res!1051380) (not e!854411))))

(assert (=> b!1534161 (= res!1051380 (and (= (size!49704 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49704 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49704 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1534162 () Bool)

(assert (=> b!1534162 (= e!854411 (and (not (= (select (arr!49153 a!2792) index!463) (select (arr!49153 a!2792) j!64))) (bvslt mask!2480 #b00000000000000000000000000000000)))))

(declare-fun res!1051383 () Bool)

(assert (=> start!130858 (=> (not res!1051383) (not e!854411))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130858 (= res!1051383 (validMask!0 mask!2480))))

(assert (=> start!130858 e!854411))

(assert (=> start!130858 true))

(declare-fun array_inv!38098 (array!101883) Bool)

(assert (=> start!130858 (array_inv!38098 a!2792)))

(declare-fun b!1534155 () Bool)

(declare-fun res!1051384 () Bool)

(assert (=> b!1534155 (=> (not res!1051384) (not e!854411))))

(assert (=> b!1534155 (= res!1051384 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49704 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49704 a!2792)) (= (select (arr!49153 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!130858 res!1051383) b!1534161))

(assert (= (and b!1534161 res!1051380) b!1534160))

(assert (= (and b!1534160 res!1051381) b!1534156))

(assert (= (and b!1534156 res!1051385) b!1534157))

(assert (= (and b!1534157 res!1051382) b!1534158))

(assert (= (and b!1534158 res!1051386) b!1534155))

(assert (= (and b!1534155 res!1051384) b!1534159))

(assert (= (and b!1534159 res!1051379) b!1534162))

(declare-fun m!1416867 () Bool)

(assert (=> b!1534162 m!1416867))

(declare-fun m!1416869 () Bool)

(assert (=> b!1534162 m!1416869))

(assert (=> b!1534159 m!1416869))

(assert (=> b!1534159 m!1416869))

(declare-fun m!1416871 () Bool)

(assert (=> b!1534159 m!1416871))

(declare-fun m!1416873 () Bool)

(assert (=> start!130858 m!1416873))

(declare-fun m!1416875 () Bool)

(assert (=> start!130858 m!1416875))

(declare-fun m!1416877 () Bool)

(assert (=> b!1534155 m!1416877))

(declare-fun m!1416879 () Bool)

(assert (=> b!1534157 m!1416879))

(declare-fun m!1416881 () Bool)

(assert (=> b!1534160 m!1416881))

(assert (=> b!1534160 m!1416881))

(declare-fun m!1416883 () Bool)

(assert (=> b!1534160 m!1416883))

(declare-fun m!1416885 () Bool)

(assert (=> b!1534158 m!1416885))

(assert (=> b!1534156 m!1416869))

(assert (=> b!1534156 m!1416869))

(declare-fun m!1416887 () Bool)

(assert (=> b!1534156 m!1416887))

(push 1)

(assert (not b!1534160))

(assert (not b!1534158))

(assert (not start!130858))

(assert (not b!1534159))

(assert (not b!1534156))

