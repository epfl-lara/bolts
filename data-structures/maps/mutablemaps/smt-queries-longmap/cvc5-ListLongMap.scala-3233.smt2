; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45214 () Bool)

(assert start!45214)

(declare-fun b!495994 () Bool)

(declare-fun res!298536 () Bool)

(declare-fun e!290902 () Bool)

(assert (=> b!495994 (=> (not res!298536) (not e!290902))))

(declare-datatypes ((array!32062 0))(
  ( (array!32063 (arr!15411 (Array (_ BitVec 32) (_ BitVec 64))) (size!15775 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32062)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!495994 (= res!298536 (validKeyInArray!0 (select (arr!15411 a!3235) j!176)))))

(declare-fun b!495995 () Bool)

(declare-fun e!290901 () Bool)

(assert (=> b!495995 (= e!290901 true)))

(declare-datatypes ((SeekEntryResult!3885 0))(
  ( (MissingZero!3885 (index!17719 (_ BitVec 32))) (Found!3885 (index!17720 (_ BitVec 32))) (Intermediate!3885 (undefined!4697 Bool) (index!17721 (_ BitVec 32)) (x!46812 (_ BitVec 32))) (Undefined!3885) (MissingVacant!3885 (index!17722 (_ BitVec 32))) )
))
(declare-fun lt!224592 () SeekEntryResult!3885)

(assert (=> b!495995 (and (bvslt (x!46812 lt!224592) #b01111111111111111111111111111110) (or (= (select (arr!15411 a!3235) (index!17721 lt!224592)) (select (arr!15411 a!3235) j!176)) (= (select (arr!15411 a!3235) (index!17721 lt!224592)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15411 a!3235) (index!17721 lt!224592)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!495996 () Bool)

(declare-fun e!290903 () Bool)

(assert (=> b!495996 (= e!290902 e!290903)))

(declare-fun res!298532 () Bool)

(assert (=> b!495996 (=> (not res!298532) (not e!290903))))

(declare-fun lt!224593 () SeekEntryResult!3885)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!495996 (= res!298532 (or (= lt!224593 (MissingZero!3885 i!1204)) (= lt!224593 (MissingVacant!3885 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32062 (_ BitVec 32)) SeekEntryResult!3885)

(assert (=> b!495996 (= lt!224593 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!298531 () Bool)

(assert (=> start!45214 (=> (not res!298531) (not e!290902))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45214 (= res!298531 (validMask!0 mask!3524))))

(assert (=> start!45214 e!290902))

(assert (=> start!45214 true))

(declare-fun array_inv!11185 (array!32062) Bool)

(assert (=> start!45214 (array_inv!11185 a!3235)))

(declare-fun b!495997 () Bool)

(declare-fun res!298533 () Bool)

(assert (=> b!495997 (=> res!298533 e!290901)))

(assert (=> b!495997 (= res!298533 (or (undefined!4697 lt!224592) (not (is-Intermediate!3885 lt!224592))))))

(declare-fun e!290905 () Bool)

(declare-fun b!495998 () Bool)

(assert (=> b!495998 (= e!290905 (= (seekEntryOrOpen!0 (select (arr!15411 a!3235) j!176) a!3235 mask!3524) (Found!3885 j!176)))))

(declare-fun b!495999 () Bool)

(declare-fun res!298540 () Bool)

(assert (=> b!495999 (=> (not res!298540) (not e!290902))))

(declare-fun arrayContainsKey!0 (array!32062 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!495999 (= res!298540 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!496000 () Bool)

(declare-fun res!298535 () Bool)

(assert (=> b!496000 (=> (not res!298535) (not e!290902))))

(assert (=> b!496000 (= res!298535 (validKeyInArray!0 k!2280))))

(declare-fun b!496001 () Bool)

(declare-fun res!298539 () Bool)

(assert (=> b!496001 (=> (not res!298539) (not e!290903))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32062 (_ BitVec 32)) Bool)

(assert (=> b!496001 (= res!298539 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496002 () Bool)

(declare-fun res!298541 () Bool)

(assert (=> b!496002 (=> (not res!298541) (not e!290902))))

(assert (=> b!496002 (= res!298541 (and (= (size!15775 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15775 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15775 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!496003 () Bool)

(assert (=> b!496003 (= e!290903 (not e!290901))))

(declare-fun res!298538 () Bool)

(assert (=> b!496003 (=> res!298538 e!290901)))

(declare-fun lt!224590 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32062 (_ BitVec 32)) SeekEntryResult!3885)

(assert (=> b!496003 (= res!298538 (= lt!224592 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224590 (select (store (arr!15411 a!3235) i!1204 k!2280) j!176) (array!32063 (store (arr!15411 a!3235) i!1204 k!2280) (size!15775 a!3235)) mask!3524)))))

(declare-fun lt!224591 () (_ BitVec 32))

(assert (=> b!496003 (= lt!224592 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224591 (select (arr!15411 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496003 (= lt!224590 (toIndex!0 (select (store (arr!15411 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!496003 (= lt!224591 (toIndex!0 (select (arr!15411 a!3235) j!176) mask!3524))))

(assert (=> b!496003 e!290905))

(declare-fun res!298537 () Bool)

(assert (=> b!496003 (=> (not res!298537) (not e!290905))))

(assert (=> b!496003 (= res!298537 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14708 0))(
  ( (Unit!14709) )
))
(declare-fun lt!224594 () Unit!14708)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32062 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14708)

(assert (=> b!496003 (= lt!224594 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!496004 () Bool)

(declare-fun res!298534 () Bool)

(assert (=> b!496004 (=> (not res!298534) (not e!290903))))

(declare-datatypes ((List!9622 0))(
  ( (Nil!9619) (Cons!9618 (h!10489 (_ BitVec 64)) (t!15858 List!9622)) )
))
(declare-fun arrayNoDuplicates!0 (array!32062 (_ BitVec 32) List!9622) Bool)

(assert (=> b!496004 (= res!298534 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9619))))

(assert (= (and start!45214 res!298531) b!496002))

(assert (= (and b!496002 res!298541) b!495994))

(assert (= (and b!495994 res!298536) b!496000))

(assert (= (and b!496000 res!298535) b!495999))

(assert (= (and b!495999 res!298540) b!495996))

(assert (= (and b!495996 res!298532) b!496001))

(assert (= (and b!496001 res!298539) b!496004))

(assert (= (and b!496004 res!298534) b!496003))

(assert (= (and b!496003 res!298537) b!495998))

(assert (= (and b!496003 (not res!298538)) b!495997))

(assert (= (and b!495997 (not res!298533)) b!495995))

(declare-fun m!477229 () Bool)

(assert (=> b!495994 m!477229))

(assert (=> b!495994 m!477229))

(declare-fun m!477231 () Bool)

(assert (=> b!495994 m!477231))

(assert (=> b!495998 m!477229))

(assert (=> b!495998 m!477229))

(declare-fun m!477233 () Bool)

(assert (=> b!495998 m!477233))

(declare-fun m!477235 () Bool)

(assert (=> b!495995 m!477235))

(assert (=> b!495995 m!477229))

(declare-fun m!477237 () Bool)

(assert (=> b!495996 m!477237))

(declare-fun m!477239 () Bool)

(assert (=> b!495999 m!477239))

(declare-fun m!477241 () Bool)

(assert (=> b!496000 m!477241))

(declare-fun m!477243 () Bool)

(assert (=> b!496003 m!477243))

(declare-fun m!477245 () Bool)

(assert (=> b!496003 m!477245))

(declare-fun m!477247 () Bool)

(assert (=> b!496003 m!477247))

(assert (=> b!496003 m!477243))

(assert (=> b!496003 m!477229))

(declare-fun m!477249 () Bool)

(assert (=> b!496003 m!477249))

(assert (=> b!496003 m!477229))

(declare-fun m!477251 () Bool)

(assert (=> b!496003 m!477251))

(assert (=> b!496003 m!477243))

(declare-fun m!477253 () Bool)

(assert (=> b!496003 m!477253))

(assert (=> b!496003 m!477229))

(declare-fun m!477255 () Bool)

(assert (=> b!496003 m!477255))

(declare-fun m!477257 () Bool)

(assert (=> b!496003 m!477257))

(declare-fun m!477259 () Bool)

(assert (=> b!496004 m!477259))

(declare-fun m!477261 () Bool)

(assert (=> start!45214 m!477261))

(declare-fun m!477263 () Bool)

(assert (=> start!45214 m!477263))

(declare-fun m!477265 () Bool)

(assert (=> b!496001 m!477265))

(push 1)

