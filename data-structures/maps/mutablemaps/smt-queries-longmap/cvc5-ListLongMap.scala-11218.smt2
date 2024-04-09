; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130972 () Bool)

(assert start!130972)

(declare-fun b!1535808 () Bool)

(declare-fun res!1053033 () Bool)

(declare-fun e!854903 () Bool)

(assert (=> b!1535808 (=> (not res!1053033) (not e!854903))))

(declare-datatypes ((array!101997 0))(
  ( (array!101998 (arr!49210 (Array (_ BitVec 32) (_ BitVec 64))) (size!49761 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101997)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535808 (= res!1053033 (validKeyInArray!0 (select (arr!49210 a!2792) j!64)))))

(declare-fun b!1535809 () Bool)

(declare-fun e!854904 () Bool)

(assert (=> b!1535809 (= e!854904 (not true))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13365 0))(
  ( (MissingZero!13365 (index!55854 (_ BitVec 32))) (Found!13365 (index!55855 (_ BitVec 32))) (Intermediate!13365 (undefined!14177 Bool) (index!55856 (_ BitVec 32)) (x!137602 (_ BitVec 32))) (Undefined!13365) (MissingVacant!13365 (index!55857 (_ BitVec 32))) )
))
(declare-fun lt!664084 () SeekEntryResult!13365)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun lt!664086 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101997 (_ BitVec 32)) SeekEntryResult!13365)

(assert (=> b!1535809 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664086 vacantIndex!5 (select (store (arr!49210 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!101998 (store (arr!49210 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49761 a!2792)) mask!2480) lt!664084)))

(declare-datatypes ((Unit!51254 0))(
  ( (Unit!51255) )
))
(declare-fun lt!664087 () Unit!51254)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!101997 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51254)

(assert (=> b!1535809 (= lt!664087 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664086 vacantIndex!5 mask!2480))))

(declare-fun b!1535810 () Bool)

(declare-fun e!854902 () Bool)

(assert (=> b!1535810 (= e!854902 e!854904)))

(declare-fun res!1053040 () Bool)

(assert (=> b!1535810 (=> (not res!1053040) (not e!854904))))

(declare-fun lt!664085 () SeekEntryResult!13365)

(assert (=> b!1535810 (= res!1053040 (= lt!664084 lt!664085))))

(assert (=> b!1535810 (= lt!664084 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664086 vacantIndex!5 (select (arr!49210 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1535811 () Bool)

(declare-fun e!854906 () Bool)

(assert (=> b!1535811 (= e!854906 e!854902)))

(declare-fun res!1053042 () Bool)

(assert (=> b!1535811 (=> (not res!1053042) (not e!854902))))

(assert (=> b!1535811 (= res!1053042 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664086 #b00000000000000000000000000000000) (bvslt lt!664086 (size!49761 a!2792))))))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535811 (= lt!664086 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1535812 () Bool)

(declare-fun res!1053039 () Bool)

(assert (=> b!1535812 (=> (not res!1053039) (not e!854903))))

(assert (=> b!1535812 (= res!1053039 (and (= (size!49761 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49761 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49761 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1535813 () Bool)

(assert (=> b!1535813 (= e!854903 e!854906)))

(declare-fun res!1053037 () Bool)

(assert (=> b!1535813 (=> (not res!1053037) (not e!854906))))

(assert (=> b!1535813 (= res!1053037 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49210 a!2792) j!64) a!2792 mask!2480) lt!664085))))

(assert (=> b!1535813 (= lt!664085 (Found!13365 j!64))))

(declare-fun b!1535815 () Bool)

(declare-fun res!1053034 () Bool)

(assert (=> b!1535815 (=> (not res!1053034) (not e!854903))))

(assert (=> b!1535815 (= res!1053034 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49761 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49761 a!2792)) (= (select (arr!49210 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1535816 () Bool)

(declare-fun res!1053032 () Bool)

(assert (=> b!1535816 (=> (not res!1053032) (not e!854903))))

(assert (=> b!1535816 (= res!1053032 (validKeyInArray!0 (select (arr!49210 a!2792) i!951)))))

(declare-fun b!1535817 () Bool)

(declare-fun res!1053038 () Bool)

(assert (=> b!1535817 (=> (not res!1053038) (not e!854903))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101997 (_ BitVec 32)) Bool)

(assert (=> b!1535817 (= res!1053038 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1535818 () Bool)

(declare-fun res!1053041 () Bool)

(assert (=> b!1535818 (=> (not res!1053041) (not e!854903))))

(declare-datatypes ((List!35864 0))(
  ( (Nil!35861) (Cons!35860 (h!37306 (_ BitVec 64)) (t!50565 List!35864)) )
))
(declare-fun arrayNoDuplicates!0 (array!101997 (_ BitVec 32) List!35864) Bool)

(assert (=> b!1535818 (= res!1053041 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35861))))

(declare-fun res!1053035 () Bool)

(assert (=> start!130972 (=> (not res!1053035) (not e!854903))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130972 (= res!1053035 (validMask!0 mask!2480))))

(assert (=> start!130972 e!854903))

(assert (=> start!130972 true))

(declare-fun array_inv!38155 (array!101997) Bool)

(assert (=> start!130972 (array_inv!38155 a!2792)))

(declare-fun b!1535814 () Bool)

(declare-fun res!1053036 () Bool)

(assert (=> b!1535814 (=> (not res!1053036) (not e!854906))))

(assert (=> b!1535814 (= res!1053036 (not (= (select (arr!49210 a!2792) index!463) (select (arr!49210 a!2792) j!64))))))

(assert (= (and start!130972 res!1053035) b!1535812))

(assert (= (and b!1535812 res!1053039) b!1535816))

(assert (= (and b!1535816 res!1053032) b!1535808))

(assert (= (and b!1535808 res!1053033) b!1535817))

(assert (= (and b!1535817 res!1053038) b!1535818))

(assert (= (and b!1535818 res!1053041) b!1535815))

(assert (= (and b!1535815 res!1053034) b!1535813))

(assert (= (and b!1535813 res!1053037) b!1535814))

(assert (= (and b!1535814 res!1053036) b!1535811))

(assert (= (and b!1535811 res!1053042) b!1535810))

(assert (= (and b!1535810 res!1053040) b!1535809))

(declare-fun m!1418307 () Bool)

(assert (=> b!1535816 m!1418307))

(assert (=> b!1535816 m!1418307))

(declare-fun m!1418309 () Bool)

(assert (=> b!1535816 m!1418309))

(declare-fun m!1418311 () Bool)

(assert (=> b!1535814 m!1418311))

(declare-fun m!1418313 () Bool)

(assert (=> b!1535814 m!1418313))

(declare-fun m!1418315 () Bool)

(assert (=> b!1535818 m!1418315))

(assert (=> b!1535813 m!1418313))

(assert (=> b!1535813 m!1418313))

(declare-fun m!1418317 () Bool)

(assert (=> b!1535813 m!1418317))

(declare-fun m!1418319 () Bool)

(assert (=> b!1535811 m!1418319))

(declare-fun m!1418321 () Bool)

(assert (=> b!1535817 m!1418321))

(declare-fun m!1418323 () Bool)

(assert (=> b!1535809 m!1418323))

(declare-fun m!1418325 () Bool)

(assert (=> b!1535809 m!1418325))

(assert (=> b!1535809 m!1418325))

(declare-fun m!1418327 () Bool)

(assert (=> b!1535809 m!1418327))

(declare-fun m!1418329 () Bool)

(assert (=> b!1535809 m!1418329))

(assert (=> b!1535810 m!1418313))

(assert (=> b!1535810 m!1418313))

(declare-fun m!1418331 () Bool)

(assert (=> b!1535810 m!1418331))

(declare-fun m!1418333 () Bool)

(assert (=> start!130972 m!1418333))

(declare-fun m!1418335 () Bool)

(assert (=> start!130972 m!1418335))

(assert (=> b!1535808 m!1418313))

(assert (=> b!1535808 m!1418313))

(declare-fun m!1418337 () Bool)

(assert (=> b!1535808 m!1418337))

(declare-fun m!1418339 () Bool)

(assert (=> b!1535815 m!1418339))

(push 1)

