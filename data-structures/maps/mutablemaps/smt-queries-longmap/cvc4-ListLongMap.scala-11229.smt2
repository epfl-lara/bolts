; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131042 () Bool)

(assert start!131042)

(declare-fun b!1536972 () Bool)

(declare-fun e!855436 () Bool)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1536972 (= e!855436 (not (or (bvslt mask!2480 #b00000000000000000000000000000000) (bvslt index!463 (bvadd #b00000000000000000000000000000001 mask!2480)))))))

(declare-datatypes ((array!102067 0))(
  ( (array!102068 (arr!49245 (Array (_ BitVec 32) (_ BitVec 64))) (size!49796 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102067)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun lt!664515 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13400 0))(
  ( (MissingZero!13400 (index!55994 (_ BitVec 32))) (Found!13400 (index!55995 (_ BitVec 32))) (Intermediate!13400 (undefined!14212 Bool) (index!55996 (_ BitVec 32)) (x!137725 (_ BitVec 32))) (Undefined!13400) (MissingVacant!13400 (index!55997 (_ BitVec 32))) )
))
(declare-fun lt!664516 () SeekEntryResult!13400)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102067 (_ BitVec 32)) SeekEntryResult!13400)

(assert (=> b!1536972 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664515 vacantIndex!5 (select (store (arr!49245 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102068 (store (arr!49245 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49796 a!2792)) mask!2480) lt!664516)))

(declare-datatypes ((Unit!51324 0))(
  ( (Unit!51325) )
))
(declare-fun lt!664514 () Unit!51324)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102067 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51324)

(assert (=> b!1536972 (= lt!664514 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664515 vacantIndex!5 mask!2480))))

(declare-fun b!1536973 () Bool)

(declare-fun e!855437 () Bool)

(assert (=> b!1536973 (= e!855437 e!855436)))

(declare-fun res!1054200 () Bool)

(assert (=> b!1536973 (=> (not res!1054200) (not e!855436))))

(declare-fun lt!664513 () SeekEntryResult!13400)

(assert (=> b!1536973 (= res!1054200 (= lt!664516 lt!664513))))

(assert (=> b!1536973 (= lt!664516 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664515 vacantIndex!5 (select (arr!49245 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1536974 () Bool)

(declare-fun res!1054198 () Bool)

(declare-fun e!855439 () Bool)

(assert (=> b!1536974 (=> (not res!1054198) (not e!855439))))

(assert (=> b!1536974 (= res!1054198 (not (= (select (arr!49245 a!2792) index!463) (select (arr!49245 a!2792) j!64))))))

(declare-fun b!1536975 () Bool)

(declare-fun res!1054205 () Bool)

(declare-fun e!855438 () Bool)

(assert (=> b!1536975 (=> (not res!1054205) (not e!855438))))

(assert (=> b!1536975 (= res!1054205 (and (= (size!49796 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49796 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49796 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1536976 () Bool)

(declare-fun res!1054206 () Bool)

(assert (=> b!1536976 (=> (not res!1054206) (not e!855438))))

(declare-datatypes ((List!35899 0))(
  ( (Nil!35896) (Cons!35895 (h!37341 (_ BitVec 64)) (t!50600 List!35899)) )
))
(declare-fun arrayNoDuplicates!0 (array!102067 (_ BitVec 32) List!35899) Bool)

(assert (=> b!1536976 (= res!1054206 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35896))))

(declare-fun b!1536977 () Bool)

(assert (=> b!1536977 (= e!855438 e!855439)))

(declare-fun res!1054202 () Bool)

(assert (=> b!1536977 (=> (not res!1054202) (not e!855439))))

(assert (=> b!1536977 (= res!1054202 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49245 a!2792) j!64) a!2792 mask!2480) lt!664513))))

(assert (=> b!1536977 (= lt!664513 (Found!13400 j!64))))

(declare-fun b!1536978 () Bool)

(assert (=> b!1536978 (= e!855439 e!855437)))

(declare-fun res!1054199 () Bool)

(assert (=> b!1536978 (=> (not res!1054199) (not e!855437))))

(assert (=> b!1536978 (= res!1054199 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664515 #b00000000000000000000000000000000) (bvslt lt!664515 (size!49796 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536978 (= lt!664515 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1536979 () Bool)

(declare-fun res!1054204 () Bool)

(assert (=> b!1536979 (=> (not res!1054204) (not e!855438))))

(assert (=> b!1536979 (= res!1054204 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49796 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49796 a!2792)) (= (select (arr!49245 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1536980 () Bool)

(declare-fun res!1054197 () Bool)

(assert (=> b!1536980 (=> (not res!1054197) (not e!855438))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102067 (_ BitVec 32)) Bool)

(assert (=> b!1536980 (= res!1054197 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1054201 () Bool)

(assert (=> start!131042 (=> (not res!1054201) (not e!855438))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131042 (= res!1054201 (validMask!0 mask!2480))))

(assert (=> start!131042 e!855438))

(assert (=> start!131042 true))

(declare-fun array_inv!38190 (array!102067) Bool)

(assert (=> start!131042 (array_inv!38190 a!2792)))

(declare-fun b!1536981 () Bool)

(declare-fun res!1054203 () Bool)

(assert (=> b!1536981 (=> (not res!1054203) (not e!855438))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536981 (= res!1054203 (validKeyInArray!0 (select (arr!49245 a!2792) i!951)))))

(declare-fun b!1536982 () Bool)

(declare-fun res!1054196 () Bool)

(assert (=> b!1536982 (=> (not res!1054196) (not e!855438))))

(assert (=> b!1536982 (= res!1054196 (validKeyInArray!0 (select (arr!49245 a!2792) j!64)))))

(assert (= (and start!131042 res!1054201) b!1536975))

(assert (= (and b!1536975 res!1054205) b!1536981))

(assert (= (and b!1536981 res!1054203) b!1536982))

(assert (= (and b!1536982 res!1054196) b!1536980))

(assert (= (and b!1536980 res!1054197) b!1536976))

(assert (= (and b!1536976 res!1054206) b!1536979))

(assert (= (and b!1536979 res!1054204) b!1536977))

(assert (= (and b!1536977 res!1054202) b!1536974))

(assert (= (and b!1536974 res!1054198) b!1536978))

(assert (= (and b!1536978 res!1054199) b!1536973))

(assert (= (and b!1536973 res!1054200) b!1536972))

(declare-fun m!1419515 () Bool)

(assert (=> b!1536973 m!1419515))

(assert (=> b!1536973 m!1419515))

(declare-fun m!1419517 () Bool)

(assert (=> b!1536973 m!1419517))

(assert (=> b!1536977 m!1419515))

(assert (=> b!1536977 m!1419515))

(declare-fun m!1419519 () Bool)

(assert (=> b!1536977 m!1419519))

(declare-fun m!1419521 () Bool)

(assert (=> b!1536976 m!1419521))

(declare-fun m!1419523 () Bool)

(assert (=> b!1536981 m!1419523))

(assert (=> b!1536981 m!1419523))

(declare-fun m!1419525 () Bool)

(assert (=> b!1536981 m!1419525))

(declare-fun m!1419527 () Bool)

(assert (=> b!1536979 m!1419527))

(declare-fun m!1419529 () Bool)

(assert (=> b!1536974 m!1419529))

(assert (=> b!1536974 m!1419515))

(declare-fun m!1419531 () Bool)

(assert (=> b!1536972 m!1419531))

(declare-fun m!1419533 () Bool)

(assert (=> b!1536972 m!1419533))

(assert (=> b!1536972 m!1419533))

(declare-fun m!1419535 () Bool)

(assert (=> b!1536972 m!1419535))

(declare-fun m!1419537 () Bool)

(assert (=> b!1536972 m!1419537))

(declare-fun m!1419539 () Bool)

(assert (=> b!1536980 m!1419539))

(declare-fun m!1419541 () Bool)

(assert (=> b!1536978 m!1419541))

(declare-fun m!1419543 () Bool)

(assert (=> start!131042 m!1419543))

(declare-fun m!1419545 () Bool)

(assert (=> start!131042 m!1419545))

(assert (=> b!1536982 m!1419515))

(assert (=> b!1536982 m!1419515))

(declare-fun m!1419547 () Bool)

(assert (=> b!1536982 m!1419547))

(push 1)

(assert (not b!1536973))

(assert (not b!1536980))

(assert (not b!1536981))

(assert (not b!1536982))

(assert (not b!1536977))

(assert (not b!1536976))

(assert (not b!1536978))

(assert (not start!131042))

(assert (not b!1536972))

(check-sat)

(pop 1)

(push 1)

(check-sat)

