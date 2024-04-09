; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131024 () Bool)

(assert start!131024)

(declare-fun b!1536675 () Bool)

(declare-fun res!1053904 () Bool)

(declare-fun e!855301 () Bool)

(assert (=> b!1536675 (=> (not res!1053904) (not e!855301))))

(declare-datatypes ((array!102049 0))(
  ( (array!102050 (arr!49236 (Array (_ BitVec 32) (_ BitVec 64))) (size!49787 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102049)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536675 (= res!1053904 (validKeyInArray!0 (select (arr!49236 a!2792) i!951)))))

(declare-fun b!1536676 () Bool)

(declare-fun e!855303 () Bool)

(declare-fun e!855305 () Bool)

(assert (=> b!1536676 (= e!855303 e!855305)))

(declare-fun res!1053906 () Bool)

(assert (=> b!1536676 (=> (not res!1053906) (not e!855305))))

(declare-datatypes ((SeekEntryResult!13391 0))(
  ( (MissingZero!13391 (index!55958 (_ BitVec 32))) (Found!13391 (index!55959 (_ BitVec 32))) (Intermediate!13391 (undefined!14203 Bool) (index!55960 (_ BitVec 32)) (x!137692 (_ BitVec 32))) (Undefined!13391) (MissingVacant!13391 (index!55961 (_ BitVec 32))) )
))
(declare-fun lt!664405 () SeekEntryResult!13391)

(declare-fun lt!664408 () SeekEntryResult!13391)

(assert (=> b!1536676 (= res!1053906 (= lt!664405 lt!664408))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun lt!664406 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102049 (_ BitVec 32)) SeekEntryResult!13391)

(assert (=> b!1536676 (= lt!664405 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664406 vacantIndex!5 (select (arr!49236 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1536677 () Bool)

(declare-fun e!855304 () Bool)

(assert (=> b!1536677 (= e!855304 e!855303)))

(declare-fun res!1053905 () Bool)

(assert (=> b!1536677 (=> (not res!1053905) (not e!855303))))

(assert (=> b!1536677 (= res!1053905 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664406 #b00000000000000000000000000000000) (bvslt lt!664406 (size!49787 a!2792))))))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536677 (= lt!664406 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1536678 () Bool)

(assert (=> b!1536678 (= e!855305 (not true))))

(assert (=> b!1536678 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664406 vacantIndex!5 (select (store (arr!49236 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102050 (store (arr!49236 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49787 a!2792)) mask!2480) lt!664405)))

(declare-datatypes ((Unit!51306 0))(
  ( (Unit!51307) )
))
(declare-fun lt!664407 () Unit!51306)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102049 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51306)

(assert (=> b!1536678 (= lt!664407 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664406 vacantIndex!5 mask!2480))))

(declare-fun b!1536680 () Bool)

(declare-fun res!1053902 () Bool)

(assert (=> b!1536680 (=> (not res!1053902) (not e!855304))))

(assert (=> b!1536680 (= res!1053902 (not (= (select (arr!49236 a!2792) index!463) (select (arr!49236 a!2792) j!64))))))

(declare-fun b!1536681 () Bool)

(declare-fun res!1053907 () Bool)

(assert (=> b!1536681 (=> (not res!1053907) (not e!855301))))

(assert (=> b!1536681 (= res!1053907 (and (= (size!49787 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49787 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49787 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1536682 () Bool)

(declare-fun res!1053900 () Bool)

(assert (=> b!1536682 (=> (not res!1053900) (not e!855301))))

(assert (=> b!1536682 (= res!1053900 (validKeyInArray!0 (select (arr!49236 a!2792) j!64)))))

(declare-fun res!1053909 () Bool)

(assert (=> start!131024 (=> (not res!1053909) (not e!855301))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131024 (= res!1053909 (validMask!0 mask!2480))))

(assert (=> start!131024 e!855301))

(assert (=> start!131024 true))

(declare-fun array_inv!38181 (array!102049) Bool)

(assert (=> start!131024 (array_inv!38181 a!2792)))

(declare-fun b!1536679 () Bool)

(declare-fun res!1053903 () Bool)

(assert (=> b!1536679 (=> (not res!1053903) (not e!855301))))

(assert (=> b!1536679 (= res!1053903 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49787 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49787 a!2792)) (= (select (arr!49236 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1536683 () Bool)

(assert (=> b!1536683 (= e!855301 e!855304)))

(declare-fun res!1053908 () Bool)

(assert (=> b!1536683 (=> (not res!1053908) (not e!855304))))

(assert (=> b!1536683 (= res!1053908 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49236 a!2792) j!64) a!2792 mask!2480) lt!664408))))

(assert (=> b!1536683 (= lt!664408 (Found!13391 j!64))))

(declare-fun b!1536684 () Bool)

(declare-fun res!1053899 () Bool)

(assert (=> b!1536684 (=> (not res!1053899) (not e!855301))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102049 (_ BitVec 32)) Bool)

(assert (=> b!1536684 (= res!1053899 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1536685 () Bool)

(declare-fun res!1053901 () Bool)

(assert (=> b!1536685 (=> (not res!1053901) (not e!855301))))

(declare-datatypes ((List!35890 0))(
  ( (Nil!35887) (Cons!35886 (h!37332 (_ BitVec 64)) (t!50591 List!35890)) )
))
(declare-fun arrayNoDuplicates!0 (array!102049 (_ BitVec 32) List!35890) Bool)

(assert (=> b!1536685 (= res!1053901 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35887))))

(assert (= (and start!131024 res!1053909) b!1536681))

(assert (= (and b!1536681 res!1053907) b!1536675))

(assert (= (and b!1536675 res!1053904) b!1536682))

(assert (= (and b!1536682 res!1053900) b!1536684))

(assert (= (and b!1536684 res!1053899) b!1536685))

(assert (= (and b!1536685 res!1053901) b!1536679))

(assert (= (and b!1536679 res!1053903) b!1536683))

(assert (= (and b!1536683 res!1053908) b!1536680))

(assert (= (and b!1536680 res!1053902) b!1536677))

(assert (= (and b!1536677 res!1053905) b!1536676))

(assert (= (and b!1536676 res!1053906) b!1536678))

(declare-fun m!1419209 () Bool)

(assert (=> b!1536675 m!1419209))

(assert (=> b!1536675 m!1419209))

(declare-fun m!1419211 () Bool)

(assert (=> b!1536675 m!1419211))

(declare-fun m!1419213 () Bool)

(assert (=> start!131024 m!1419213))

(declare-fun m!1419215 () Bool)

(assert (=> start!131024 m!1419215))

(declare-fun m!1419217 () Bool)

(assert (=> b!1536677 m!1419217))

(declare-fun m!1419219 () Bool)

(assert (=> b!1536683 m!1419219))

(assert (=> b!1536683 m!1419219))

(declare-fun m!1419221 () Bool)

(assert (=> b!1536683 m!1419221))

(declare-fun m!1419223 () Bool)

(assert (=> b!1536684 m!1419223))

(declare-fun m!1419225 () Bool)

(assert (=> b!1536678 m!1419225))

(declare-fun m!1419227 () Bool)

(assert (=> b!1536678 m!1419227))

(assert (=> b!1536678 m!1419227))

(declare-fun m!1419229 () Bool)

(assert (=> b!1536678 m!1419229))

(declare-fun m!1419231 () Bool)

(assert (=> b!1536678 m!1419231))

(declare-fun m!1419233 () Bool)

(assert (=> b!1536679 m!1419233))

(declare-fun m!1419235 () Bool)

(assert (=> b!1536685 m!1419235))

(assert (=> b!1536676 m!1419219))

(assert (=> b!1536676 m!1419219))

(declare-fun m!1419237 () Bool)

(assert (=> b!1536676 m!1419237))

(assert (=> b!1536682 m!1419219))

(assert (=> b!1536682 m!1419219))

(declare-fun m!1419239 () Bool)

(assert (=> b!1536682 m!1419239))

(declare-fun m!1419241 () Bool)

(assert (=> b!1536680 m!1419241))

(assert (=> b!1536680 m!1419219))

(push 1)

(assert (not b!1536677))

(assert (not b!1536683))

(assert (not start!131024))

