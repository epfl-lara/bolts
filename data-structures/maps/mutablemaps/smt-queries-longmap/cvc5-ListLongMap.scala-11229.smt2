; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131038 () Bool)

(assert start!131038)

(declare-fun b!1536906 () Bool)

(declare-fun res!1054135 () Bool)

(declare-fun e!855409 () Bool)

(assert (=> b!1536906 (=> (not res!1054135) (not e!855409))))

(declare-datatypes ((array!102063 0))(
  ( (array!102064 (arr!49243 (Array (_ BitVec 32) (_ BitVec 64))) (size!49794 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102063)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102063 (_ BitVec 32)) Bool)

(assert (=> b!1536906 (= res!1054135 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1536907 () Bool)

(declare-fun res!1054133 () Bool)

(assert (=> b!1536907 (=> (not res!1054133) (not e!855409))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1536907 (= res!1054133 (and (= (size!49794 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49794 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49794 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1054130 () Bool)

(assert (=> start!131038 (=> (not res!1054130) (not e!855409))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131038 (= res!1054130 (validMask!0 mask!2480))))

(assert (=> start!131038 e!855409))

(assert (=> start!131038 true))

(declare-fun array_inv!38188 (array!102063) Bool)

(assert (=> start!131038 (array_inv!38188 a!2792)))

(declare-fun b!1536908 () Bool)

(declare-fun res!1054134 () Bool)

(declare-fun e!855410 () Bool)

(assert (=> b!1536908 (=> (not res!1054134) (not e!855410))))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1536908 (= res!1054134 (not (= (select (arr!49243 a!2792) index!463) (select (arr!49243 a!2792) j!64))))))

(declare-fun b!1536909 () Bool)

(declare-fun e!855408 () Bool)

(assert (=> b!1536909 (= e!855410 e!855408)))

(declare-fun res!1054131 () Bool)

(assert (=> b!1536909 (=> (not res!1054131) (not e!855408))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!664490 () (_ BitVec 32))

(assert (=> b!1536909 (= res!1054131 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664490 #b00000000000000000000000000000000) (bvslt lt!664490 (size!49794 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536909 (= lt!664490 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1536910 () Bool)

(declare-fun res!1054137 () Bool)

(assert (=> b!1536910 (=> (not res!1054137) (not e!855409))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536910 (= res!1054137 (validKeyInArray!0 (select (arr!49243 a!2792) i!951)))))

(declare-fun b!1536911 () Bool)

(declare-fun e!855407 () Bool)

(assert (=> b!1536911 (= e!855407 (not (or (bvslt mask!2480 #b00000000000000000000000000000000) (bvslt index!463 (bvadd #b00000000000000000000000000000001 mask!2480)))))))

(declare-datatypes ((SeekEntryResult!13398 0))(
  ( (MissingZero!13398 (index!55986 (_ BitVec 32))) (Found!13398 (index!55987 (_ BitVec 32))) (Intermediate!13398 (undefined!14210 Bool) (index!55988 (_ BitVec 32)) (x!137723 (_ BitVec 32))) (Undefined!13398) (MissingVacant!13398 (index!55989 (_ BitVec 32))) )
))
(declare-fun lt!664489 () SeekEntryResult!13398)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102063 (_ BitVec 32)) SeekEntryResult!13398)

(assert (=> b!1536911 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664490 vacantIndex!5 (select (store (arr!49243 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102064 (store (arr!49243 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49794 a!2792)) mask!2480) lt!664489)))

(declare-datatypes ((Unit!51320 0))(
  ( (Unit!51321) )
))
(declare-fun lt!664492 () Unit!51320)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102063 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51320)

(assert (=> b!1536911 (= lt!664492 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664490 vacantIndex!5 mask!2480))))

(declare-fun b!1536912 () Bool)

(declare-fun res!1054139 () Bool)

(assert (=> b!1536912 (=> (not res!1054139) (not e!855409))))

(assert (=> b!1536912 (= res!1054139 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49794 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49794 a!2792)) (= (select (arr!49243 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1536913 () Bool)

(declare-fun res!1054136 () Bool)

(assert (=> b!1536913 (=> (not res!1054136) (not e!855409))))

(assert (=> b!1536913 (= res!1054136 (validKeyInArray!0 (select (arr!49243 a!2792) j!64)))))

(declare-fun b!1536914 () Bool)

(assert (=> b!1536914 (= e!855409 e!855410)))

(declare-fun res!1054132 () Bool)

(assert (=> b!1536914 (=> (not res!1054132) (not e!855410))))

(declare-fun lt!664491 () SeekEntryResult!13398)

(assert (=> b!1536914 (= res!1054132 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49243 a!2792) j!64) a!2792 mask!2480) lt!664491))))

(assert (=> b!1536914 (= lt!664491 (Found!13398 j!64))))

(declare-fun b!1536915 () Bool)

(assert (=> b!1536915 (= e!855408 e!855407)))

(declare-fun res!1054140 () Bool)

(assert (=> b!1536915 (=> (not res!1054140) (not e!855407))))

(assert (=> b!1536915 (= res!1054140 (= lt!664489 lt!664491))))

(assert (=> b!1536915 (= lt!664489 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664490 vacantIndex!5 (select (arr!49243 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1536916 () Bool)

(declare-fun res!1054138 () Bool)

(assert (=> b!1536916 (=> (not res!1054138) (not e!855409))))

(declare-datatypes ((List!35897 0))(
  ( (Nil!35894) (Cons!35893 (h!37339 (_ BitVec 64)) (t!50598 List!35897)) )
))
(declare-fun arrayNoDuplicates!0 (array!102063 (_ BitVec 32) List!35897) Bool)

(assert (=> b!1536916 (= res!1054138 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35894))))

(assert (= (and start!131038 res!1054130) b!1536907))

(assert (= (and b!1536907 res!1054133) b!1536910))

(assert (= (and b!1536910 res!1054137) b!1536913))

(assert (= (and b!1536913 res!1054136) b!1536906))

(assert (= (and b!1536906 res!1054135) b!1536916))

(assert (= (and b!1536916 res!1054138) b!1536912))

(assert (= (and b!1536912 res!1054139) b!1536914))

(assert (= (and b!1536914 res!1054132) b!1536908))

(assert (= (and b!1536908 res!1054134) b!1536909))

(assert (= (and b!1536909 res!1054131) b!1536915))

(assert (= (and b!1536915 res!1054140) b!1536911))

(declare-fun m!1419447 () Bool)

(assert (=> b!1536911 m!1419447))

(declare-fun m!1419449 () Bool)

(assert (=> b!1536911 m!1419449))

(assert (=> b!1536911 m!1419449))

(declare-fun m!1419451 () Bool)

(assert (=> b!1536911 m!1419451))

(declare-fun m!1419453 () Bool)

(assert (=> b!1536911 m!1419453))

(declare-fun m!1419455 () Bool)

(assert (=> start!131038 m!1419455))

(declare-fun m!1419457 () Bool)

(assert (=> start!131038 m!1419457))

(declare-fun m!1419459 () Bool)

(assert (=> b!1536912 m!1419459))

(declare-fun m!1419461 () Bool)

(assert (=> b!1536914 m!1419461))

(assert (=> b!1536914 m!1419461))

(declare-fun m!1419463 () Bool)

(assert (=> b!1536914 m!1419463))

(assert (=> b!1536915 m!1419461))

(assert (=> b!1536915 m!1419461))

(declare-fun m!1419465 () Bool)

(assert (=> b!1536915 m!1419465))

(assert (=> b!1536913 m!1419461))

(assert (=> b!1536913 m!1419461))

(declare-fun m!1419467 () Bool)

(assert (=> b!1536913 m!1419467))

(declare-fun m!1419469 () Bool)

(assert (=> b!1536909 m!1419469))

(declare-fun m!1419471 () Bool)

(assert (=> b!1536908 m!1419471))

(assert (=> b!1536908 m!1419461))

(declare-fun m!1419473 () Bool)

(assert (=> b!1536906 m!1419473))

(declare-fun m!1419475 () Bool)

(assert (=> b!1536916 m!1419475))

(declare-fun m!1419477 () Bool)

(assert (=> b!1536910 m!1419477))

(assert (=> b!1536910 m!1419477))

(declare-fun m!1419479 () Bool)

(assert (=> b!1536910 m!1419479))

(push 1)

(assert (not b!1536906))

(assert (not b!1536916))

(assert (not start!131038))

(assert (not b!1536911))

(assert (not b!1536913))

(assert (not b!1536914))

(assert (not b!1536915))

(assert (not b!1536910))

(assert (not b!1536909))

(check-sat)

(pop 1)

(push 1)

(check-sat)

