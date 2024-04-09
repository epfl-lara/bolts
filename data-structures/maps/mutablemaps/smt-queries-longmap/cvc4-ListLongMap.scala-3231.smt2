; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45206 () Bool)

(assert start!45206)

(declare-fun b!495862 () Bool)

(declare-fun res!298405 () Bool)

(declare-fun e!290841 () Bool)

(assert (=> b!495862 (=> (not res!298405) (not e!290841))))

(declare-datatypes ((array!32054 0))(
  ( (array!32055 (arr!15407 (Array (_ BitVec 32) (_ BitVec 64))) (size!15771 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32054)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32054 (_ BitVec 32)) Bool)

(assert (=> b!495862 (= res!298405 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!495863 () Bool)

(declare-fun res!298407 () Bool)

(assert (=> b!495863 (=> (not res!298407) (not e!290841))))

(declare-datatypes ((List!9618 0))(
  ( (Nil!9615) (Cons!9614 (h!10485 (_ BitVec 64)) (t!15854 List!9618)) )
))
(declare-fun arrayNoDuplicates!0 (array!32054 (_ BitVec 32) List!9618) Bool)

(assert (=> b!495863 (= res!298407 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9615))))

(declare-fun b!495864 () Bool)

(declare-fun res!298403 () Bool)

(declare-fun e!290842 () Bool)

(assert (=> b!495864 (=> (not res!298403) (not e!290842))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!495864 (= res!298403 (validKeyInArray!0 (select (arr!15407 a!3235) j!176)))))

(declare-fun e!290845 () Bool)

(declare-fun b!495865 () Bool)

(declare-datatypes ((SeekEntryResult!3881 0))(
  ( (MissingZero!3881 (index!17703 (_ BitVec 32))) (Found!3881 (index!17704 (_ BitVec 32))) (Intermediate!3881 (undefined!4693 Bool) (index!17705 (_ BitVec 32)) (x!46792 (_ BitVec 32))) (Undefined!3881) (MissingVacant!3881 (index!17706 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32054 (_ BitVec 32)) SeekEntryResult!3881)

(assert (=> b!495865 (= e!290845 (= (seekEntryOrOpen!0 (select (arr!15407 a!3235) j!176) a!3235 mask!3524) (Found!3881 j!176)))))

(declare-fun b!495866 () Bool)

(declare-fun e!290843 () Bool)

(assert (=> b!495866 (= e!290841 (not e!290843))))

(declare-fun res!298404 () Bool)

(assert (=> b!495866 (=> res!298404 e!290843)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!224534 () SeekEntryResult!3881)

(declare-fun lt!224530 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32054 (_ BitVec 32)) SeekEntryResult!3881)

(assert (=> b!495866 (= res!298404 (= lt!224534 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224530 (select (store (arr!15407 a!3235) i!1204 k!2280) j!176) (array!32055 (store (arr!15407 a!3235) i!1204 k!2280) (size!15771 a!3235)) mask!3524)))))

(declare-fun lt!224531 () (_ BitVec 32))

(assert (=> b!495866 (= lt!224534 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224531 (select (arr!15407 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!495866 (= lt!224530 (toIndex!0 (select (store (arr!15407 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!495866 (= lt!224531 (toIndex!0 (select (arr!15407 a!3235) j!176) mask!3524))))

(assert (=> b!495866 e!290845))

(declare-fun res!298409 () Bool)

(assert (=> b!495866 (=> (not res!298409) (not e!290845))))

(assert (=> b!495866 (= res!298409 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14700 0))(
  ( (Unit!14701) )
))
(declare-fun lt!224532 () Unit!14700)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32054 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14700)

(assert (=> b!495866 (= lt!224532 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!495867 () Bool)

(declare-fun res!298399 () Bool)

(assert (=> b!495867 (=> (not res!298399) (not e!290842))))

(assert (=> b!495867 (= res!298399 (and (= (size!15771 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15771 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15771 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!495868 () Bool)

(declare-fun res!298402 () Bool)

(assert (=> b!495868 (=> res!298402 e!290843)))

(assert (=> b!495868 (= res!298402 (or (undefined!4693 lt!224534) (not (is-Intermediate!3881 lt!224534))))))

(declare-fun b!495869 () Bool)

(assert (=> b!495869 (= e!290843 true)))

(assert (=> b!495869 (and (bvslt (x!46792 lt!224534) #b01111111111111111111111111111110) (or (= (select (arr!15407 a!3235) (index!17705 lt!224534)) (select (arr!15407 a!3235) j!176)) (= (select (arr!15407 a!3235) (index!17705 lt!224534)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15407 a!3235) (index!17705 lt!224534)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!495870 () Bool)

(assert (=> b!495870 (= e!290842 e!290841)))

(declare-fun res!298408 () Bool)

(assert (=> b!495870 (=> (not res!298408) (not e!290841))))

(declare-fun lt!224533 () SeekEntryResult!3881)

(assert (=> b!495870 (= res!298408 (or (= lt!224533 (MissingZero!3881 i!1204)) (= lt!224533 (MissingVacant!3881 i!1204))))))

(assert (=> b!495870 (= lt!224533 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!495871 () Bool)

(declare-fun res!298401 () Bool)

(assert (=> b!495871 (=> (not res!298401) (not e!290842))))

(assert (=> b!495871 (= res!298401 (validKeyInArray!0 k!2280))))

(declare-fun res!298400 () Bool)

(assert (=> start!45206 (=> (not res!298400) (not e!290842))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45206 (= res!298400 (validMask!0 mask!3524))))

(assert (=> start!45206 e!290842))

(assert (=> start!45206 true))

(declare-fun array_inv!11181 (array!32054) Bool)

(assert (=> start!45206 (array_inv!11181 a!3235)))

(declare-fun b!495872 () Bool)

(declare-fun res!298406 () Bool)

(assert (=> b!495872 (=> (not res!298406) (not e!290842))))

(declare-fun arrayContainsKey!0 (array!32054 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!495872 (= res!298406 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!45206 res!298400) b!495867))

(assert (= (and b!495867 res!298399) b!495864))

(assert (= (and b!495864 res!298403) b!495871))

(assert (= (and b!495871 res!298401) b!495872))

(assert (= (and b!495872 res!298406) b!495870))

(assert (= (and b!495870 res!298408) b!495862))

(assert (= (and b!495862 res!298405) b!495863))

(assert (= (and b!495863 res!298407) b!495866))

(assert (= (and b!495866 res!298409) b!495865))

(assert (= (and b!495866 (not res!298404)) b!495868))

(assert (= (and b!495868 (not res!298402)) b!495869))

(declare-fun m!477077 () Bool)

(assert (=> start!45206 m!477077))

(declare-fun m!477079 () Bool)

(assert (=> start!45206 m!477079))

(declare-fun m!477081 () Bool)

(assert (=> b!495869 m!477081))

(declare-fun m!477083 () Bool)

(assert (=> b!495869 m!477083))

(declare-fun m!477085 () Bool)

(assert (=> b!495870 m!477085))

(declare-fun m!477087 () Bool)

(assert (=> b!495866 m!477087))

(declare-fun m!477089 () Bool)

(assert (=> b!495866 m!477089))

(declare-fun m!477091 () Bool)

(assert (=> b!495866 m!477091))

(declare-fun m!477093 () Bool)

(assert (=> b!495866 m!477093))

(assert (=> b!495866 m!477087))

(assert (=> b!495866 m!477083))

(declare-fun m!477095 () Bool)

(assert (=> b!495866 m!477095))

(assert (=> b!495866 m!477083))

(declare-fun m!477097 () Bool)

(assert (=> b!495866 m!477097))

(assert (=> b!495866 m!477087))

(declare-fun m!477099 () Bool)

(assert (=> b!495866 m!477099))

(assert (=> b!495866 m!477083))

(declare-fun m!477101 () Bool)

(assert (=> b!495866 m!477101))

(declare-fun m!477103 () Bool)

(assert (=> b!495871 m!477103))

(declare-fun m!477105 () Bool)

(assert (=> b!495863 m!477105))

(assert (=> b!495864 m!477083))

(assert (=> b!495864 m!477083))

(declare-fun m!477107 () Bool)

(assert (=> b!495864 m!477107))

(declare-fun m!477109 () Bool)

(assert (=> b!495862 m!477109))

(assert (=> b!495865 m!477083))

(assert (=> b!495865 m!477083))

(declare-fun m!477111 () Bool)

(assert (=> b!495865 m!477111))

(declare-fun m!477113 () Bool)

(assert (=> b!495872 m!477113))

(push 1)

