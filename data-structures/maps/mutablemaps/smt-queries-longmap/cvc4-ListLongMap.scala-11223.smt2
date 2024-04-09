; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131006 () Bool)

(assert start!131006)

(declare-fun b!1536369 () Bool)

(declare-fun e!855161 () Bool)

(declare-fun e!855160 () Bool)

(assert (=> b!1536369 (= e!855161 e!855160)))

(declare-fun res!1053595 () Bool)

(assert (=> b!1536369 (=> (not res!1053595) (not e!855160))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!664289 () (_ BitVec 32))

(declare-datatypes ((array!102031 0))(
  ( (array!102032 (arr!49227 (Array (_ BitVec 32) (_ BitVec 64))) (size!49778 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102031)

(assert (=> b!1536369 (= res!1053595 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664289 #b00000000000000000000000000000000) (bvslt lt!664289 (size!49778 a!2792))))))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536369 (= lt!664289 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1536370 () Bool)

(declare-fun res!1053599 () Bool)

(declare-fun e!855157 () Bool)

(assert (=> b!1536370 (=> (not res!1053599) (not e!855157))))

(declare-datatypes ((List!35881 0))(
  ( (Nil!35878) (Cons!35877 (h!37323 (_ BitVec 64)) (t!50582 List!35881)) )
))
(declare-fun arrayNoDuplicates!0 (array!102031 (_ BitVec 32) List!35881) Bool)

(assert (=> b!1536370 (= res!1053599 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35878))))

(declare-fun e!855158 () Bool)

(declare-fun b!1536371 () Bool)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1536371 (= e!855158 (not (or (bvslt mask!2480 #b00000000000000000000000000000000) (bvsge index!463 (bvadd #b00000000000000000000000000000001 mask!2480)) (bvslt vacantIndex!5 (bvadd #b00000000000000000000000000000001 mask!2480)))))))

(declare-datatypes ((SeekEntryResult!13382 0))(
  ( (MissingZero!13382 (index!55922 (_ BitVec 32))) (Found!13382 (index!55923 (_ BitVec 32))) (Intermediate!13382 (undefined!14194 Bool) (index!55924 (_ BitVec 32)) (x!137659 (_ BitVec 32))) (Undefined!13382) (MissingVacant!13382 (index!55925 (_ BitVec 32))) )
))
(declare-fun lt!664288 () SeekEntryResult!13382)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102031 (_ BitVec 32)) SeekEntryResult!13382)

(assert (=> b!1536371 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664289 vacantIndex!5 (select (store (arr!49227 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102032 (store (arr!49227 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49778 a!2792)) mask!2480) lt!664288)))

(declare-datatypes ((Unit!51288 0))(
  ( (Unit!51289) )
))
(declare-fun lt!664290 () Unit!51288)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102031 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51288)

(assert (=> b!1536371 (= lt!664290 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664289 vacantIndex!5 mask!2480))))

(declare-fun b!1536372 () Bool)

(declare-fun res!1053593 () Bool)

(assert (=> b!1536372 (=> (not res!1053593) (not e!855161))))

(assert (=> b!1536372 (= res!1053593 (not (= (select (arr!49227 a!2792) index!463) (select (arr!49227 a!2792) j!64))))))

(declare-fun b!1536373 () Bool)

(declare-fun res!1053600 () Bool)

(assert (=> b!1536373 (=> (not res!1053600) (not e!855157))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536373 (= res!1053600 (validKeyInArray!0 (select (arr!49227 a!2792) i!951)))))

(declare-fun b!1536374 () Bool)

(assert (=> b!1536374 (= e!855160 e!855158)))

(declare-fun res!1053602 () Bool)

(assert (=> b!1536374 (=> (not res!1053602) (not e!855158))))

(declare-fun lt!664291 () SeekEntryResult!13382)

(assert (=> b!1536374 (= res!1053602 (= lt!664288 lt!664291))))

(assert (=> b!1536374 (= lt!664288 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664289 vacantIndex!5 (select (arr!49227 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1536375 () Bool)

(declare-fun res!1053598 () Bool)

(assert (=> b!1536375 (=> (not res!1053598) (not e!855157))))

(assert (=> b!1536375 (= res!1053598 (and (= (size!49778 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49778 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49778 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1536376 () Bool)

(declare-fun res!1053601 () Bool)

(assert (=> b!1536376 (=> (not res!1053601) (not e!855157))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102031 (_ BitVec 32)) Bool)

(assert (=> b!1536376 (= res!1053601 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1536377 () Bool)

(assert (=> b!1536377 (= e!855157 e!855161)))

(declare-fun res!1053596 () Bool)

(assert (=> b!1536377 (=> (not res!1053596) (not e!855161))))

(assert (=> b!1536377 (= res!1053596 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49227 a!2792) j!64) a!2792 mask!2480) lt!664291))))

(assert (=> b!1536377 (= lt!664291 (Found!13382 j!64))))

(declare-fun b!1536378 () Bool)

(declare-fun res!1053594 () Bool)

(assert (=> b!1536378 (=> (not res!1053594) (not e!855157))))

(assert (=> b!1536378 (= res!1053594 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49778 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49778 a!2792)) (= (select (arr!49227 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1053603 () Bool)

(assert (=> start!131006 (=> (not res!1053603) (not e!855157))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131006 (= res!1053603 (validMask!0 mask!2480))))

(assert (=> start!131006 e!855157))

(assert (=> start!131006 true))

(declare-fun array_inv!38172 (array!102031) Bool)

(assert (=> start!131006 (array_inv!38172 a!2792)))

(declare-fun b!1536379 () Bool)

(declare-fun res!1053597 () Bool)

(assert (=> b!1536379 (=> (not res!1053597) (not e!855157))))

(assert (=> b!1536379 (= res!1053597 (validKeyInArray!0 (select (arr!49227 a!2792) j!64)))))

(assert (= (and start!131006 res!1053603) b!1536375))

(assert (= (and b!1536375 res!1053598) b!1536373))

(assert (= (and b!1536373 res!1053600) b!1536379))

(assert (= (and b!1536379 res!1053597) b!1536376))

(assert (= (and b!1536376 res!1053601) b!1536370))

(assert (= (and b!1536370 res!1053599) b!1536378))

(assert (= (and b!1536378 res!1053594) b!1536377))

(assert (= (and b!1536377 res!1053596) b!1536372))

(assert (= (and b!1536372 res!1053593) b!1536369))

(assert (= (and b!1536369 res!1053595) b!1536374))

(assert (= (and b!1536374 res!1053602) b!1536371))

(declare-fun m!1418885 () Bool)

(assert (=> b!1536373 m!1418885))

(assert (=> b!1536373 m!1418885))

(declare-fun m!1418887 () Bool)

(assert (=> b!1536373 m!1418887))

(declare-fun m!1418889 () Bool)

(assert (=> b!1536372 m!1418889))

(declare-fun m!1418891 () Bool)

(assert (=> b!1536372 m!1418891))

(assert (=> b!1536374 m!1418891))

(assert (=> b!1536374 m!1418891))

(declare-fun m!1418893 () Bool)

(assert (=> b!1536374 m!1418893))

(declare-fun m!1418895 () Bool)

(assert (=> b!1536376 m!1418895))

(declare-fun m!1418897 () Bool)

(assert (=> b!1536369 m!1418897))

(declare-fun m!1418899 () Bool)

(assert (=> start!131006 m!1418899))

(declare-fun m!1418901 () Bool)

(assert (=> start!131006 m!1418901))

(declare-fun m!1418903 () Bool)

(assert (=> b!1536370 m!1418903))

(declare-fun m!1418905 () Bool)

(assert (=> b!1536371 m!1418905))

(declare-fun m!1418907 () Bool)

(assert (=> b!1536371 m!1418907))

(assert (=> b!1536371 m!1418907))

(declare-fun m!1418909 () Bool)

(assert (=> b!1536371 m!1418909))

(declare-fun m!1418911 () Bool)

(assert (=> b!1536371 m!1418911))

(assert (=> b!1536379 m!1418891))

(assert (=> b!1536379 m!1418891))

(declare-fun m!1418913 () Bool)

(assert (=> b!1536379 m!1418913))

(declare-fun m!1418915 () Bool)

(assert (=> b!1536378 m!1418915))

(assert (=> b!1536377 m!1418891))

(assert (=> b!1536377 m!1418891))

(declare-fun m!1418917 () Bool)

(assert (=> b!1536377 m!1418917))

(push 1)

(assert (not b!1536370))

(assert (not b!1536379))

(assert (not b!1536371))

(assert (not b!1536376))

(assert (not b!1536374))

(assert (not b!1536373))

(assert (not start!131006))

(assert (not b!1536377))

(assert (not b!1536369))

(check-sat)

(pop 1)

(push 1)

(check-sat)

