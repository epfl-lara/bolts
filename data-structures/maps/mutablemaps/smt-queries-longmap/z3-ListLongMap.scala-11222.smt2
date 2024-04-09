; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130998 () Bool)

(assert start!130998)

(declare-fun b!1536237 () Bool)

(declare-fun res!1053462 () Bool)

(declare-fun e!855097 () Bool)

(assert (=> b!1536237 (=> (not res!1053462) (not e!855097))))

(declare-datatypes ((array!102023 0))(
  ( (array!102024 (arr!49223 (Array (_ BitVec 32) (_ BitVec 64))) (size!49774 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102023)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102023 (_ BitVec 32)) Bool)

(assert (=> b!1536237 (= res!1053462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1536238 () Bool)

(declare-fun e!855100 () Bool)

(assert (=> b!1536238 (= e!855097 e!855100)))

(declare-fun res!1053466 () Bool)

(assert (=> b!1536238 (=> (not res!1053466) (not e!855100))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13378 0))(
  ( (MissingZero!13378 (index!55906 (_ BitVec 32))) (Found!13378 (index!55907 (_ BitVec 32))) (Intermediate!13378 (undefined!14190 Bool) (index!55908 (_ BitVec 32)) (x!137647 (_ BitVec 32))) (Undefined!13378) (MissingVacant!13378 (index!55909 (_ BitVec 32))) )
))
(declare-fun lt!664243 () SeekEntryResult!13378)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102023 (_ BitVec 32)) SeekEntryResult!13378)

(assert (=> b!1536238 (= res!1053466 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49223 a!2792) j!64) a!2792 mask!2480) lt!664243))))

(assert (=> b!1536238 (= lt!664243 (Found!13378 j!64))))

(declare-fun b!1536239 () Bool)

(declare-fun res!1053471 () Bool)

(assert (=> b!1536239 (=> (not res!1053471) (not e!855097))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1536239 (= res!1053471 (and (= (size!49774 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49774 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49774 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1536240 () Bool)

(declare-fun e!855098 () Bool)

(assert (=> b!1536240 (= e!855100 e!855098)))

(declare-fun res!1053468 () Bool)

(assert (=> b!1536240 (=> (not res!1053468) (not e!855098))))

(declare-fun lt!664240 () (_ BitVec 32))

(assert (=> b!1536240 (= res!1053468 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664240 #b00000000000000000000000000000000) (bvslt lt!664240 (size!49774 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536240 (= lt!664240 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1536241 () Bool)

(declare-fun res!1053463 () Bool)

(assert (=> b!1536241 (=> (not res!1053463) (not e!855097))))

(declare-datatypes ((List!35877 0))(
  ( (Nil!35874) (Cons!35873 (h!37319 (_ BitVec 64)) (t!50578 List!35877)) )
))
(declare-fun arrayNoDuplicates!0 (array!102023 (_ BitVec 32) List!35877) Bool)

(assert (=> b!1536241 (= res!1053463 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35874))))

(declare-fun b!1536243 () Bool)

(declare-fun res!1053461 () Bool)

(assert (=> b!1536243 (=> (not res!1053461) (not e!855097))))

(assert (=> b!1536243 (= res!1053461 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49774 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49774 a!2792)) (= (select (arr!49223 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1536244 () Bool)

(declare-fun res!1053467 () Bool)

(assert (=> b!1536244 (=> (not res!1053467) (not e!855100))))

(assert (=> b!1536244 (= res!1053467 (not (= (select (arr!49223 a!2792) index!463) (select (arr!49223 a!2792) j!64))))))

(declare-fun b!1536245 () Bool)

(declare-fun e!855099 () Bool)

(assert (=> b!1536245 (= e!855099 (not true))))

(declare-fun lt!664242 () SeekEntryResult!13378)

(assert (=> b!1536245 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664240 vacantIndex!5 (select (store (arr!49223 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102024 (store (arr!49223 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49774 a!2792)) mask!2480) lt!664242)))

(declare-datatypes ((Unit!51280 0))(
  ( (Unit!51281) )
))
(declare-fun lt!664241 () Unit!51280)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102023 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51280)

(assert (=> b!1536245 (= lt!664241 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664240 vacantIndex!5 mask!2480))))

(declare-fun b!1536246 () Bool)

(assert (=> b!1536246 (= e!855098 e!855099)))

(declare-fun res!1053470 () Bool)

(assert (=> b!1536246 (=> (not res!1053470) (not e!855099))))

(assert (=> b!1536246 (= res!1053470 (= lt!664242 lt!664243))))

(assert (=> b!1536246 (= lt!664242 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664240 vacantIndex!5 (select (arr!49223 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1536247 () Bool)

(declare-fun res!1053464 () Bool)

(assert (=> b!1536247 (=> (not res!1053464) (not e!855097))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536247 (= res!1053464 (validKeyInArray!0 (select (arr!49223 a!2792) i!951)))))

(declare-fun res!1053469 () Bool)

(assert (=> start!130998 (=> (not res!1053469) (not e!855097))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130998 (= res!1053469 (validMask!0 mask!2480))))

(assert (=> start!130998 e!855097))

(assert (=> start!130998 true))

(declare-fun array_inv!38168 (array!102023) Bool)

(assert (=> start!130998 (array_inv!38168 a!2792)))

(declare-fun b!1536242 () Bool)

(declare-fun res!1053465 () Bool)

(assert (=> b!1536242 (=> (not res!1053465) (not e!855097))))

(assert (=> b!1536242 (= res!1053465 (validKeyInArray!0 (select (arr!49223 a!2792) j!64)))))

(assert (= (and start!130998 res!1053469) b!1536239))

(assert (= (and b!1536239 res!1053471) b!1536247))

(assert (= (and b!1536247 res!1053464) b!1536242))

(assert (= (and b!1536242 res!1053465) b!1536237))

(assert (= (and b!1536237 res!1053462) b!1536241))

(assert (= (and b!1536241 res!1053463) b!1536243))

(assert (= (and b!1536243 res!1053461) b!1536238))

(assert (= (and b!1536238 res!1053466) b!1536244))

(assert (= (and b!1536244 res!1053467) b!1536240))

(assert (= (and b!1536240 res!1053468) b!1536246))

(assert (= (and b!1536246 res!1053470) b!1536245))

(declare-fun m!1418749 () Bool)

(assert (=> b!1536240 m!1418749))

(declare-fun m!1418751 () Bool)

(assert (=> start!130998 m!1418751))

(declare-fun m!1418753 () Bool)

(assert (=> start!130998 m!1418753))

(declare-fun m!1418755 () Bool)

(assert (=> b!1536238 m!1418755))

(assert (=> b!1536238 m!1418755))

(declare-fun m!1418757 () Bool)

(assert (=> b!1536238 m!1418757))

(declare-fun m!1418759 () Bool)

(assert (=> b!1536243 m!1418759))

(declare-fun m!1418761 () Bool)

(assert (=> b!1536237 m!1418761))

(declare-fun m!1418763 () Bool)

(assert (=> b!1536247 m!1418763))

(assert (=> b!1536247 m!1418763))

(declare-fun m!1418765 () Bool)

(assert (=> b!1536247 m!1418765))

(declare-fun m!1418767 () Bool)

(assert (=> b!1536241 m!1418767))

(declare-fun m!1418769 () Bool)

(assert (=> b!1536245 m!1418769))

(declare-fun m!1418771 () Bool)

(assert (=> b!1536245 m!1418771))

(assert (=> b!1536245 m!1418771))

(declare-fun m!1418773 () Bool)

(assert (=> b!1536245 m!1418773))

(declare-fun m!1418775 () Bool)

(assert (=> b!1536245 m!1418775))

(assert (=> b!1536242 m!1418755))

(assert (=> b!1536242 m!1418755))

(declare-fun m!1418777 () Bool)

(assert (=> b!1536242 m!1418777))

(assert (=> b!1536246 m!1418755))

(assert (=> b!1536246 m!1418755))

(declare-fun m!1418779 () Bool)

(assert (=> b!1536246 m!1418779))

(declare-fun m!1418781 () Bool)

(assert (=> b!1536244 m!1418781))

(assert (=> b!1536244 m!1418755))

(check-sat (not b!1536240) (not b!1536245) (not b!1536246) (not b!1536238) (not start!130998) (not b!1536241) (not b!1536242) (not b!1536237) (not b!1536247))
(check-sat)
