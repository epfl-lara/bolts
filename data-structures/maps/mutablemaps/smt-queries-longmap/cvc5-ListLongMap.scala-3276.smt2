; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45610 () Bool)

(assert start!45610)

(declare-fun b!502033 () Bool)

(declare-fun res!303635 () Bool)

(declare-fun e!294082 () Bool)

(assert (=> b!502033 (=> (not res!303635) (not e!294082))))

(declare-datatypes ((array!32326 0))(
  ( (array!32327 (arr!15540 (Array (_ BitVec 32) (_ BitVec 64))) (size!15904 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32326)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32326 (_ BitVec 32)) Bool)

(assert (=> b!502033 (= res!303635 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!502034 () Bool)

(declare-fun lt!228212 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!294078 () Bool)

(declare-datatypes ((SeekEntryResult!4014 0))(
  ( (MissingZero!4014 (index!18244 (_ BitVec 32))) (Found!4014 (index!18245 (_ BitVec 32))) (Intermediate!4014 (undefined!4826 Bool) (index!18246 (_ BitVec 32)) (x!47306 (_ BitVec 32))) (Undefined!4014) (MissingVacant!4014 (index!18247 (_ BitVec 32))) )
))
(declare-fun lt!228206 () SeekEntryResult!4014)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32326 (_ BitVec 32)) SeekEntryResult!4014)

(assert (=> b!502034 (= e!294078 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228212 (index!18246 lt!228206) (select (arr!15540 a!3235) j!176) a!3235 mask!3524) (Found!4014 j!176))))))

(declare-fun b!502035 () Bool)

(declare-datatypes ((Unit!15146 0))(
  ( (Unit!15147) )
))
(declare-fun e!294081 () Unit!15146)

(declare-fun Unit!15148 () Unit!15146)

(assert (=> b!502035 (= e!294081 Unit!15148)))

(declare-fun b!502036 () Bool)

(declare-fun res!303636 () Bool)

(declare-fun e!294077 () Bool)

(assert (=> b!502036 (=> (not res!303636) (not e!294077))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32326 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!502036 (= res!303636 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!502037 () Bool)

(declare-fun res!303638 () Bool)

(assert (=> b!502037 (=> (not res!303638) (not e!294082))))

(declare-datatypes ((List!9751 0))(
  ( (Nil!9748) (Cons!9747 (h!10624 (_ BitVec 64)) (t!15987 List!9751)) )
))
(declare-fun arrayNoDuplicates!0 (array!32326 (_ BitVec 32) List!9751) Bool)

(assert (=> b!502037 (= res!303638 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9748))))

(declare-fun b!502038 () Bool)

(declare-fun res!303627 () Bool)

(assert (=> b!502038 (=> (not res!303627) (not e!294077))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!502038 (= res!303627 (validKeyInArray!0 k!2280))))

(declare-fun b!502039 () Bool)

(declare-fun res!303632 () Bool)

(assert (=> b!502039 (=> (not res!303632) (not e!294077))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!502039 (= res!303632 (and (= (size!15904 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15904 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15904 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!502040 () Bool)

(declare-fun res!303624 () Bool)

(declare-fun e!294074 () Bool)

(assert (=> b!502040 (=> res!303624 e!294074)))

(assert (=> b!502040 (= res!303624 e!294078)))

(declare-fun res!303629 () Bool)

(assert (=> b!502040 (=> (not res!303629) (not e!294078))))

(assert (=> b!502040 (= res!303629 (bvsgt #b00000000000000000000000000000000 (x!47306 lt!228206)))))

(declare-fun b!502041 () Bool)

(declare-fun e!294076 () Bool)

(assert (=> b!502041 (= e!294076 false)))

(declare-fun res!303626 () Bool)

(assert (=> start!45610 (=> (not res!303626) (not e!294077))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45610 (= res!303626 (validMask!0 mask!3524))))

(assert (=> start!45610 e!294077))

(assert (=> start!45610 true))

(declare-fun array_inv!11314 (array!32326) Bool)

(assert (=> start!45610 (array_inv!11314 a!3235)))

(declare-fun b!502042 () Bool)

(declare-fun Unit!15149 () Unit!15146)

(assert (=> b!502042 (= e!294081 Unit!15149)))

(declare-fun lt!228207 () Unit!15146)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32326 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15146)

(assert (=> b!502042 (= lt!228207 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!228212 #b00000000000000000000000000000000 (index!18246 lt!228206) (x!47306 lt!228206) mask!3524))))

(declare-fun res!303625 () Bool)

(declare-fun lt!228208 () array!32326)

(declare-fun lt!228205 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32326 (_ BitVec 32)) SeekEntryResult!4014)

(assert (=> b!502042 (= res!303625 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228212 lt!228205 lt!228208 mask!3524) (Intermediate!4014 false (index!18246 lt!228206) (x!47306 lt!228206))))))

(assert (=> b!502042 (=> (not res!303625) (not e!294076))))

(assert (=> b!502042 e!294076))

(declare-fun b!502043 () Bool)

(declare-fun e!294079 () Bool)

(assert (=> b!502043 (= e!294079 e!294074)))

(declare-fun res!303630 () Bool)

(assert (=> b!502043 (=> res!303630 e!294074)))

(assert (=> b!502043 (= res!303630 (or (bvsgt (x!47306 lt!228206) #b01111111111111111111111111111110) (bvslt lt!228212 #b00000000000000000000000000000000) (bvsge lt!228212 (size!15904 a!3235)) (bvslt (index!18246 lt!228206) #b00000000000000000000000000000000) (bvsge (index!18246 lt!228206) (size!15904 a!3235)) (not (= lt!228206 (Intermediate!4014 false (index!18246 lt!228206) (x!47306 lt!228206))))))))

(assert (=> b!502043 (= (index!18246 lt!228206) i!1204)))

(declare-fun lt!228211 () Unit!15146)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32326 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15146)

(assert (=> b!502043 (= lt!228211 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!228212 #b00000000000000000000000000000000 (index!18246 lt!228206) (x!47306 lt!228206) mask!3524))))

(assert (=> b!502043 (and (or (= (select (arr!15540 a!3235) (index!18246 lt!228206)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15540 a!3235) (index!18246 lt!228206)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15540 a!3235) (index!18246 lt!228206)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15540 a!3235) (index!18246 lt!228206)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228204 () Unit!15146)

(assert (=> b!502043 (= lt!228204 e!294081)))

(declare-fun c!59483 () Bool)

(assert (=> b!502043 (= c!59483 (= (select (arr!15540 a!3235) (index!18246 lt!228206)) (select (arr!15540 a!3235) j!176)))))

(assert (=> b!502043 (and (bvslt (x!47306 lt!228206) #b01111111111111111111111111111110) (or (= (select (arr!15540 a!3235) (index!18246 lt!228206)) (select (arr!15540 a!3235) j!176)) (= (select (arr!15540 a!3235) (index!18246 lt!228206)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15540 a!3235) (index!18246 lt!228206)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!502044 () Bool)

(declare-fun res!303628 () Bool)

(assert (=> b!502044 (=> res!303628 e!294079)))

(assert (=> b!502044 (= res!303628 (or (undefined!4826 lt!228206) (not (is-Intermediate!4014 lt!228206))))))

(declare-fun b!502045 () Bool)

(assert (=> b!502045 (= e!294077 e!294082)))

(declare-fun res!303637 () Bool)

(assert (=> b!502045 (=> (not res!303637) (not e!294082))))

(declare-fun lt!228202 () SeekEntryResult!4014)

(assert (=> b!502045 (= res!303637 (or (= lt!228202 (MissingZero!4014 i!1204)) (= lt!228202 (MissingVacant!4014 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32326 (_ BitVec 32)) SeekEntryResult!4014)

(assert (=> b!502045 (= lt!228202 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!502046 () Bool)

(assert (=> b!502046 (= e!294074 true)))

(declare-fun lt!228203 () SeekEntryResult!4014)

(assert (=> b!502046 (= lt!228203 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228212 lt!228205 lt!228208 mask!3524))))

(declare-fun b!502047 () Bool)

(assert (=> b!502047 (= e!294082 (not e!294079))))

(declare-fun res!303634 () Bool)

(assert (=> b!502047 (=> res!303634 e!294079)))

(declare-fun lt!228209 () (_ BitVec 32))

(assert (=> b!502047 (= res!303634 (= lt!228206 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228209 lt!228205 lt!228208 mask!3524)))))

(assert (=> b!502047 (= lt!228206 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228212 (select (arr!15540 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!502047 (= lt!228209 (toIndex!0 lt!228205 mask!3524))))

(assert (=> b!502047 (= lt!228205 (select (store (arr!15540 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!502047 (= lt!228212 (toIndex!0 (select (arr!15540 a!3235) j!176) mask!3524))))

(assert (=> b!502047 (= lt!228208 (array!32327 (store (arr!15540 a!3235) i!1204 k!2280) (size!15904 a!3235)))))

(declare-fun e!294075 () Bool)

(assert (=> b!502047 e!294075))

(declare-fun res!303633 () Bool)

(assert (=> b!502047 (=> (not res!303633) (not e!294075))))

(assert (=> b!502047 (= res!303633 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!228210 () Unit!15146)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32326 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15146)

(assert (=> b!502047 (= lt!228210 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!502048 () Bool)

(declare-fun res!303631 () Bool)

(assert (=> b!502048 (=> (not res!303631) (not e!294077))))

(assert (=> b!502048 (= res!303631 (validKeyInArray!0 (select (arr!15540 a!3235) j!176)))))

(declare-fun b!502049 () Bool)

(assert (=> b!502049 (= e!294075 (= (seekEntryOrOpen!0 (select (arr!15540 a!3235) j!176) a!3235 mask!3524) (Found!4014 j!176)))))

(assert (= (and start!45610 res!303626) b!502039))

(assert (= (and b!502039 res!303632) b!502048))

(assert (= (and b!502048 res!303631) b!502038))

(assert (= (and b!502038 res!303627) b!502036))

(assert (= (and b!502036 res!303636) b!502045))

(assert (= (and b!502045 res!303637) b!502033))

(assert (= (and b!502033 res!303635) b!502037))

(assert (= (and b!502037 res!303638) b!502047))

(assert (= (and b!502047 res!303633) b!502049))

(assert (= (and b!502047 (not res!303634)) b!502044))

(assert (= (and b!502044 (not res!303628)) b!502043))

(assert (= (and b!502043 c!59483) b!502042))

(assert (= (and b!502043 (not c!59483)) b!502035))

(assert (= (and b!502042 res!303625) b!502041))

(assert (= (and b!502043 (not res!303630)) b!502040))

(assert (= (and b!502040 res!303629) b!502034))

(assert (= (and b!502040 (not res!303624)) b!502046))

(declare-fun m!483025 () Bool)

(assert (=> start!45610 m!483025))

(declare-fun m!483027 () Bool)

(assert (=> start!45610 m!483027))

(declare-fun m!483029 () Bool)

(assert (=> b!502037 m!483029))

(declare-fun m!483031 () Bool)

(assert (=> b!502048 m!483031))

(assert (=> b!502048 m!483031))

(declare-fun m!483033 () Bool)

(assert (=> b!502048 m!483033))

(declare-fun m!483035 () Bool)

(assert (=> b!502046 m!483035))

(assert (=> b!502034 m!483031))

(assert (=> b!502034 m!483031))

(declare-fun m!483037 () Bool)

(assert (=> b!502034 m!483037))

(declare-fun m!483039 () Bool)

(assert (=> b!502036 m!483039))

(declare-fun m!483041 () Bool)

(assert (=> b!502038 m!483041))

(assert (=> b!502049 m!483031))

(assert (=> b!502049 m!483031))

(declare-fun m!483043 () Bool)

(assert (=> b!502049 m!483043))

(declare-fun m!483045 () Bool)

(assert (=> b!502047 m!483045))

(declare-fun m!483047 () Bool)

(assert (=> b!502047 m!483047))

(declare-fun m!483049 () Bool)

(assert (=> b!502047 m!483049))

(assert (=> b!502047 m!483031))

(declare-fun m!483051 () Bool)

(assert (=> b!502047 m!483051))

(assert (=> b!502047 m!483031))

(declare-fun m!483053 () Bool)

(assert (=> b!502047 m!483053))

(declare-fun m!483055 () Bool)

(assert (=> b!502047 m!483055))

(declare-fun m!483057 () Bool)

(assert (=> b!502047 m!483057))

(declare-fun m!483059 () Bool)

(assert (=> b!502047 m!483059))

(assert (=> b!502047 m!483031))

(declare-fun m!483061 () Bool)

(assert (=> b!502042 m!483061))

(assert (=> b!502042 m!483035))

(declare-fun m!483063 () Bool)

(assert (=> b!502043 m!483063))

(declare-fun m!483065 () Bool)

(assert (=> b!502043 m!483065))

(assert (=> b!502043 m!483031))

(declare-fun m!483067 () Bool)

(assert (=> b!502033 m!483067))

(declare-fun m!483069 () Bool)

(assert (=> b!502045 m!483069))

(push 1)

