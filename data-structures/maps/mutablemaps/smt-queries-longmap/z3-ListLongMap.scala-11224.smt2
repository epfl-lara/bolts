; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131010 () Bool)

(assert start!131010)

(declare-fun b!1536435 () Bool)

(declare-fun res!1053660 () Bool)

(declare-fun e!855191 () Bool)

(assert (=> b!1536435 (=> (not res!1053660) (not e!855191))))

(declare-datatypes ((array!102035 0))(
  ( (array!102036 (arr!49229 (Array (_ BitVec 32) (_ BitVec 64))) (size!49780 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102035)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536435 (= res!1053660 (validKeyInArray!0 (select (arr!49229 a!2792) i!951)))))

(declare-fun b!1536436 () Bool)

(declare-fun res!1053661 () Bool)

(declare-fun e!855188 () Bool)

(assert (=> b!1536436 (=> (not res!1053661) (not e!855188))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1536436 (= res!1053661 (not (= (select (arr!49229 a!2792) index!463) (select (arr!49229 a!2792) j!64))))))

(declare-fun b!1536437 () Bool)

(declare-fun e!855189 () Bool)

(assert (=> b!1536437 (= e!855188 e!855189)))

(declare-fun res!1053669 () Bool)

(assert (=> b!1536437 (=> (not res!1053669) (not e!855189))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!664315 () (_ BitVec 32))

(assert (=> b!1536437 (= res!1053669 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664315 #b00000000000000000000000000000000) (bvslt lt!664315 (size!49780 a!2792))))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536437 (= lt!664315 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1536438 () Bool)

(declare-fun res!1053665 () Bool)

(assert (=> b!1536438 (=> (not res!1053665) (not e!855191))))

(assert (=> b!1536438 (= res!1053665 (and (= (size!49780 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49780 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49780 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1536439 () Bool)

(declare-fun res!1053664 () Bool)

(assert (=> b!1536439 (=> (not res!1053664) (not e!855191))))

(assert (=> b!1536439 (= res!1053664 (validKeyInArray!0 (select (arr!49229 a!2792) j!64)))))

(declare-fun b!1536440 () Bool)

(declare-fun e!855187 () Bool)

(assert (=> b!1536440 (= e!855189 e!855187)))

(declare-fun res!1053666 () Bool)

(assert (=> b!1536440 (=> (not res!1053666) (not e!855187))))

(declare-datatypes ((SeekEntryResult!13384 0))(
  ( (MissingZero!13384 (index!55930 (_ BitVec 32))) (Found!13384 (index!55931 (_ BitVec 32))) (Intermediate!13384 (undefined!14196 Bool) (index!55932 (_ BitVec 32)) (x!137669 (_ BitVec 32))) (Undefined!13384) (MissingVacant!13384 (index!55933 (_ BitVec 32))) )
))
(declare-fun lt!664314 () SeekEntryResult!13384)

(declare-fun lt!664312 () SeekEntryResult!13384)

(assert (=> b!1536440 (= res!1053666 (= lt!664314 lt!664312))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102035 (_ BitVec 32)) SeekEntryResult!13384)

(assert (=> b!1536440 (= lt!664314 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664315 vacantIndex!5 (select (arr!49229 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1536441 () Bool)

(declare-fun res!1053662 () Bool)

(assert (=> b!1536441 (=> (not res!1053662) (not e!855191))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102035 (_ BitVec 32)) Bool)

(assert (=> b!1536441 (= res!1053662 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1536442 () Bool)

(assert (=> b!1536442 (= e!855191 e!855188)))

(declare-fun res!1053659 () Bool)

(assert (=> b!1536442 (=> (not res!1053659) (not e!855188))))

(assert (=> b!1536442 (= res!1053659 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49229 a!2792) j!64) a!2792 mask!2480) lt!664312))))

(assert (=> b!1536442 (= lt!664312 (Found!13384 j!64))))

(declare-fun b!1536443 () Bool)

(declare-fun res!1053663 () Bool)

(assert (=> b!1536443 (=> (not res!1053663) (not e!855191))))

(assert (=> b!1536443 (= res!1053663 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49780 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49780 a!2792)) (= (select (arr!49229 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1536444 () Bool)

(assert (=> b!1536444 (= e!855187 (not (or (bvslt mask!2480 #b00000000000000000000000000000000) (bvsge index!463 (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge vacantIndex!5 (bvadd #b00000000000000000000000000000001 mask!2480)) (= (select (store (arr!49229 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1536444 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664315 vacantIndex!5 (select (store (arr!49229 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102036 (store (arr!49229 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49780 a!2792)) mask!2480) lt!664314)))

(declare-datatypes ((Unit!51292 0))(
  ( (Unit!51293) )
))
(declare-fun lt!664313 () Unit!51292)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102035 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51292)

(assert (=> b!1536444 (= lt!664313 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664315 vacantIndex!5 mask!2480))))

(declare-fun res!1053668 () Bool)

(assert (=> start!131010 (=> (not res!1053668) (not e!855191))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131010 (= res!1053668 (validMask!0 mask!2480))))

(assert (=> start!131010 e!855191))

(assert (=> start!131010 true))

(declare-fun array_inv!38174 (array!102035) Bool)

(assert (=> start!131010 (array_inv!38174 a!2792)))

(declare-fun b!1536445 () Bool)

(declare-fun res!1053667 () Bool)

(assert (=> b!1536445 (=> (not res!1053667) (not e!855191))))

(declare-datatypes ((List!35883 0))(
  ( (Nil!35880) (Cons!35879 (h!37325 (_ BitVec 64)) (t!50584 List!35883)) )
))
(declare-fun arrayNoDuplicates!0 (array!102035 (_ BitVec 32) List!35883) Bool)

(assert (=> b!1536445 (= res!1053667 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35880))))

(assert (= (and start!131010 res!1053668) b!1536438))

(assert (= (and b!1536438 res!1053665) b!1536435))

(assert (= (and b!1536435 res!1053660) b!1536439))

(assert (= (and b!1536439 res!1053664) b!1536441))

(assert (= (and b!1536441 res!1053662) b!1536445))

(assert (= (and b!1536445 res!1053667) b!1536443))

(assert (= (and b!1536443 res!1053663) b!1536442))

(assert (= (and b!1536442 res!1053659) b!1536436))

(assert (= (and b!1536436 res!1053661) b!1536437))

(assert (= (and b!1536437 res!1053669) b!1536440))

(assert (= (and b!1536440 res!1053666) b!1536444))

(declare-fun m!1418955 () Bool)

(assert (=> b!1536442 m!1418955))

(assert (=> b!1536442 m!1418955))

(declare-fun m!1418957 () Bool)

(assert (=> b!1536442 m!1418957))

(declare-fun m!1418959 () Bool)

(assert (=> b!1536445 m!1418959))

(declare-fun m!1418961 () Bool)

(assert (=> b!1536441 m!1418961))

(declare-fun m!1418963 () Bool)

(assert (=> b!1536444 m!1418963))

(declare-fun m!1418965 () Bool)

(assert (=> b!1536444 m!1418965))

(declare-fun m!1418967 () Bool)

(assert (=> b!1536444 m!1418967))

(assert (=> b!1536444 m!1418963))

(declare-fun m!1418969 () Bool)

(assert (=> b!1536444 m!1418969))

(declare-fun m!1418971 () Bool)

(assert (=> b!1536444 m!1418971))

(declare-fun m!1418973 () Bool)

(assert (=> b!1536437 m!1418973))

(assert (=> b!1536440 m!1418955))

(assert (=> b!1536440 m!1418955))

(declare-fun m!1418975 () Bool)

(assert (=> b!1536440 m!1418975))

(declare-fun m!1418977 () Bool)

(assert (=> b!1536435 m!1418977))

(assert (=> b!1536435 m!1418977))

(declare-fun m!1418979 () Bool)

(assert (=> b!1536435 m!1418979))

(assert (=> b!1536439 m!1418955))

(assert (=> b!1536439 m!1418955))

(declare-fun m!1418981 () Bool)

(assert (=> b!1536439 m!1418981))

(declare-fun m!1418983 () Bool)

(assert (=> b!1536436 m!1418983))

(assert (=> b!1536436 m!1418955))

(declare-fun m!1418985 () Bool)

(assert (=> b!1536443 m!1418985))

(declare-fun m!1418987 () Bool)

(assert (=> start!131010 m!1418987))

(declare-fun m!1418989 () Bool)

(assert (=> start!131010 m!1418989))

(check-sat (not b!1536445) (not start!131010) (not b!1536435) (not b!1536439) (not b!1536442) (not b!1536440) (not b!1536441) (not b!1536444) (not b!1536437))
(check-sat)
