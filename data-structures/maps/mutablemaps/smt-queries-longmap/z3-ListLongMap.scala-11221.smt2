; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130992 () Bool)

(assert start!130992)

(declare-fun b!1536138 () Bool)

(declare-fun res!1053368 () Bool)

(declare-fun e!855055 () Bool)

(assert (=> b!1536138 (=> (not res!1053368) (not e!855055))))

(declare-datatypes ((array!102017 0))(
  ( (array!102018 (arr!49220 (Array (_ BitVec 32) (_ BitVec 64))) (size!49771 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102017)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1536138 (= res!1053368 (and (= (size!49771 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49771 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49771 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1536139 () Bool)

(declare-fun res!1053370 () Bool)

(declare-fun e!855052 () Bool)

(assert (=> b!1536139 (=> (not res!1053370) (not e!855052))))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1536139 (= res!1053370 (not (= (select (arr!49220 a!2792) index!463) (select (arr!49220 a!2792) j!64))))))

(declare-fun b!1536140 () Bool)

(declare-fun res!1053362 () Bool)

(assert (=> b!1536140 (=> (not res!1053362) (not e!855055))))

(declare-datatypes ((List!35874 0))(
  ( (Nil!35871) (Cons!35870 (h!37316 (_ BitVec 64)) (t!50575 List!35874)) )
))
(declare-fun arrayNoDuplicates!0 (array!102017 (_ BitVec 32) List!35874) Bool)

(assert (=> b!1536140 (= res!1053362 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35871))))

(declare-fun b!1536141 () Bool)

(declare-fun e!855053 () Bool)

(assert (=> b!1536141 (= e!855052 e!855053)))

(declare-fun res!1053366 () Bool)

(assert (=> b!1536141 (=> (not res!1053366) (not e!855053))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!664204 () (_ BitVec 32))

(assert (=> b!1536141 (= res!1053366 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664204 #b00000000000000000000000000000000) (bvslt lt!664204 (size!49771 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536141 (= lt!664204 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1536143 () Bool)

(declare-fun res!1053364 () Bool)

(assert (=> b!1536143 (=> (not res!1053364) (not e!855055))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536143 (= res!1053364 (validKeyInArray!0 (select (arr!49220 a!2792) i!951)))))

(declare-fun b!1536144 () Bool)

(declare-fun e!855054 () Bool)

(assert (=> b!1536144 (= e!855054 (not (or (bvslt mask!2480 #b00000000000000000000000000000000) (bvslt index!463 (bvadd #b00000000000000000000000000000001 mask!2480)))))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13375 0))(
  ( (MissingZero!13375 (index!55894 (_ BitVec 32))) (Found!13375 (index!55895 (_ BitVec 32))) (Intermediate!13375 (undefined!14187 Bool) (index!55896 (_ BitVec 32)) (x!137636 (_ BitVec 32))) (Undefined!13375) (MissingVacant!13375 (index!55897 (_ BitVec 32))) )
))
(declare-fun lt!664205 () SeekEntryResult!13375)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102017 (_ BitVec 32)) SeekEntryResult!13375)

(assert (=> b!1536144 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664204 vacantIndex!5 (select (store (arr!49220 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102018 (store (arr!49220 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49771 a!2792)) mask!2480) lt!664205)))

(declare-datatypes ((Unit!51274 0))(
  ( (Unit!51275) )
))
(declare-fun lt!664207 () Unit!51274)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102017 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51274)

(assert (=> b!1536144 (= lt!664207 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664204 vacantIndex!5 mask!2480))))

(declare-fun b!1536145 () Bool)

(assert (=> b!1536145 (= e!855055 e!855052)))

(declare-fun res!1053363 () Bool)

(assert (=> b!1536145 (=> (not res!1053363) (not e!855052))))

(declare-fun lt!664206 () SeekEntryResult!13375)

(assert (=> b!1536145 (= res!1053363 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49220 a!2792) j!64) a!2792 mask!2480) lt!664206))))

(assert (=> b!1536145 (= lt!664206 (Found!13375 j!64))))

(declare-fun b!1536146 () Bool)

(declare-fun res!1053367 () Bool)

(assert (=> b!1536146 (=> (not res!1053367) (not e!855055))))

(assert (=> b!1536146 (= res!1053367 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49771 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49771 a!2792)) (= (select (arr!49220 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1536147 () Bool)

(assert (=> b!1536147 (= e!855053 e!855054)))

(declare-fun res!1053372 () Bool)

(assert (=> b!1536147 (=> (not res!1053372) (not e!855054))))

(assert (=> b!1536147 (= res!1053372 (= lt!664205 lt!664206))))

(assert (=> b!1536147 (= lt!664205 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664204 vacantIndex!5 (select (arr!49220 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1536148 () Bool)

(declare-fun res!1053371 () Bool)

(assert (=> b!1536148 (=> (not res!1053371) (not e!855055))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102017 (_ BitVec 32)) Bool)

(assert (=> b!1536148 (= res!1053371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1536142 () Bool)

(declare-fun res!1053369 () Bool)

(assert (=> b!1536142 (=> (not res!1053369) (not e!855055))))

(assert (=> b!1536142 (= res!1053369 (validKeyInArray!0 (select (arr!49220 a!2792) j!64)))))

(declare-fun res!1053365 () Bool)

(assert (=> start!130992 (=> (not res!1053365) (not e!855055))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130992 (= res!1053365 (validMask!0 mask!2480))))

(assert (=> start!130992 e!855055))

(assert (=> start!130992 true))

(declare-fun array_inv!38165 (array!102017) Bool)

(assert (=> start!130992 (array_inv!38165 a!2792)))

(assert (= (and start!130992 res!1053365) b!1536138))

(assert (= (and b!1536138 res!1053368) b!1536143))

(assert (= (and b!1536143 res!1053364) b!1536142))

(assert (= (and b!1536142 res!1053369) b!1536148))

(assert (= (and b!1536148 res!1053371) b!1536140))

(assert (= (and b!1536140 res!1053362) b!1536146))

(assert (= (and b!1536146 res!1053367) b!1536145))

(assert (= (and b!1536145 res!1053363) b!1536139))

(assert (= (and b!1536139 res!1053370) b!1536141))

(assert (= (and b!1536141 res!1053366) b!1536147))

(assert (= (and b!1536147 res!1053372) b!1536144))

(declare-fun m!1418647 () Bool)

(assert (=> b!1536148 m!1418647))

(declare-fun m!1418649 () Bool)

(assert (=> b!1536142 m!1418649))

(assert (=> b!1536142 m!1418649))

(declare-fun m!1418651 () Bool)

(assert (=> b!1536142 m!1418651))

(declare-fun m!1418653 () Bool)

(assert (=> b!1536141 m!1418653))

(declare-fun m!1418655 () Bool)

(assert (=> b!1536146 m!1418655))

(assert (=> b!1536145 m!1418649))

(assert (=> b!1536145 m!1418649))

(declare-fun m!1418657 () Bool)

(assert (=> b!1536145 m!1418657))

(declare-fun m!1418659 () Bool)

(assert (=> start!130992 m!1418659))

(declare-fun m!1418661 () Bool)

(assert (=> start!130992 m!1418661))

(assert (=> b!1536147 m!1418649))

(assert (=> b!1536147 m!1418649))

(declare-fun m!1418663 () Bool)

(assert (=> b!1536147 m!1418663))

(declare-fun m!1418665 () Bool)

(assert (=> b!1536144 m!1418665))

(declare-fun m!1418667 () Bool)

(assert (=> b!1536144 m!1418667))

(assert (=> b!1536144 m!1418667))

(declare-fun m!1418669 () Bool)

(assert (=> b!1536144 m!1418669))

(declare-fun m!1418671 () Bool)

(assert (=> b!1536144 m!1418671))

(declare-fun m!1418673 () Bool)

(assert (=> b!1536140 m!1418673))

(declare-fun m!1418675 () Bool)

(assert (=> b!1536143 m!1418675))

(assert (=> b!1536143 m!1418675))

(declare-fun m!1418677 () Bool)

(assert (=> b!1536143 m!1418677))

(declare-fun m!1418679 () Bool)

(assert (=> b!1536139 m!1418679))

(assert (=> b!1536139 m!1418649))

(check-sat (not b!1536147) (not start!130992) (not b!1536144) (not b!1536143) (not b!1536142) (not b!1536145) (not b!1536141) (not b!1536148) (not b!1536140))
(check-sat)
