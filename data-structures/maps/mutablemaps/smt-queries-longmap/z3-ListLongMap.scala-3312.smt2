; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45828 () Bool)

(assert start!45828)

(declare-fun b!507085 () Bool)

(declare-fun e!296771 () Bool)

(declare-fun e!296769 () Bool)

(assert (=> b!507085 (= e!296771 e!296769)))

(declare-fun res!308197 () Bool)

(assert (=> b!507085 (=> res!308197 e!296769)))

(declare-fun lt!231561 () Bool)

(declare-datatypes ((SeekEntryResult!4123 0))(
  ( (MissingZero!4123 (index!18680 (_ BitVec 32))) (Found!4123 (index!18681 (_ BitVec 32))) (Intermediate!4123 (undefined!4935 Bool) (index!18682 (_ BitVec 32)) (x!47703 (_ BitVec 32))) (Undefined!4123) (MissingVacant!4123 (index!18683 (_ BitVec 32))) )
))
(declare-fun lt!231558 () SeekEntryResult!4123)

(assert (=> b!507085 (= res!308197 (or (and (not lt!231561) (undefined!4935 lt!231558)) (and (not lt!231561) (not (undefined!4935 lt!231558)))))))

(get-info :version)

(assert (=> b!507085 (= lt!231561 (not ((_ is Intermediate!4123) lt!231558)))))

(declare-fun b!507086 () Bool)

(declare-fun e!296770 () Bool)

(declare-fun e!296773 () Bool)

(assert (=> b!507086 (= e!296770 e!296773)))

(declare-fun res!308201 () Bool)

(assert (=> b!507086 (=> (not res!308201) (not e!296773))))

(declare-fun lt!231562 () SeekEntryResult!4123)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507086 (= res!308201 (or (= lt!231562 (MissingZero!4123 i!1204)) (= lt!231562 (MissingVacant!4123 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-datatypes ((array!32544 0))(
  ( (array!32545 (arr!15649 (Array (_ BitVec 32) (_ BitVec 64))) (size!16013 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32544)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32544 (_ BitVec 32)) SeekEntryResult!4123)

(assert (=> b!507086 (= lt!231562 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun res!308204 () Bool)

(assert (=> start!45828 (=> (not res!308204) (not e!296770))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45828 (= res!308204 (validMask!0 mask!3524))))

(assert (=> start!45828 e!296770))

(assert (=> start!45828 true))

(declare-fun array_inv!11423 (array!32544) Bool)

(assert (=> start!45828 (array_inv!11423 a!3235)))

(declare-fun b!507087 () Bool)

(declare-fun res!308203 () Bool)

(assert (=> b!507087 (=> (not res!308203) (not e!296770))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507087 (= res!308203 (validKeyInArray!0 k0!2280))))

(declare-fun b!507088 () Bool)

(declare-fun res!308194 () Bool)

(assert (=> b!507088 (=> (not res!308194) (not e!296773))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32544 (_ BitVec 32)) Bool)

(assert (=> b!507088 (= res!308194 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!507089 () Bool)

(declare-fun res!308196 () Bool)

(assert (=> b!507089 (=> (not res!308196) (not e!296770))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!507089 (= res!308196 (validKeyInArray!0 (select (arr!15649 a!3235) j!176)))))

(declare-fun b!507090 () Bool)

(declare-fun res!308202 () Bool)

(assert (=> b!507090 (=> (not res!308202) (not e!296770))))

(declare-fun arrayContainsKey!0 (array!32544 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507090 (= res!308202 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!507091 () Bool)

(assert (=> b!507091 (= e!296773 (not e!296771))))

(declare-fun res!308195 () Bool)

(assert (=> b!507091 (=> res!308195 e!296771)))

(declare-fun lt!231557 () (_ BitVec 64))

(declare-fun lt!231560 () array!32544)

(declare-fun lt!231556 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32544 (_ BitVec 32)) SeekEntryResult!4123)

(assert (=> b!507091 (= res!308195 (= lt!231558 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231556 lt!231557 lt!231560 mask!3524)))))

(declare-fun lt!231559 () (_ BitVec 32))

(assert (=> b!507091 (= lt!231558 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231559 (select (arr!15649 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!507091 (= lt!231556 (toIndex!0 lt!231557 mask!3524))))

(assert (=> b!507091 (= lt!231557 (select (store (arr!15649 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!507091 (= lt!231559 (toIndex!0 (select (arr!15649 a!3235) j!176) mask!3524))))

(assert (=> b!507091 (= lt!231560 (array!32545 (store (arr!15649 a!3235) i!1204 k0!2280) (size!16013 a!3235)))))

(declare-fun e!296772 () Bool)

(assert (=> b!507091 e!296772))

(declare-fun res!308200 () Bool)

(assert (=> b!507091 (=> (not res!308200) (not e!296772))))

(assert (=> b!507091 (= res!308200 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15526 0))(
  ( (Unit!15527) )
))
(declare-fun lt!231563 () Unit!15526)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32544 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15526)

(assert (=> b!507091 (= lt!231563 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!507092 () Bool)

(assert (=> b!507092 (= e!296769 true)))

(declare-fun lt!231555 () SeekEntryResult!4123)

(assert (=> b!507092 (= lt!231555 (seekEntryOrOpen!0 lt!231557 lt!231560 mask!3524))))

(assert (=> b!507092 false))

(declare-fun b!507093 () Bool)

(declare-fun res!308199 () Bool)

(assert (=> b!507093 (=> (not res!308199) (not e!296773))))

(declare-datatypes ((List!9860 0))(
  ( (Nil!9857) (Cons!9856 (h!10733 (_ BitVec 64)) (t!16096 List!9860)) )
))
(declare-fun arrayNoDuplicates!0 (array!32544 (_ BitVec 32) List!9860) Bool)

(assert (=> b!507093 (= res!308199 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9857))))

(declare-fun b!507094 () Bool)

(assert (=> b!507094 (= e!296772 (= (seekEntryOrOpen!0 (select (arr!15649 a!3235) j!176) a!3235 mask!3524) (Found!4123 j!176)))))

(declare-fun b!507095 () Bool)

(declare-fun res!308198 () Bool)

(assert (=> b!507095 (=> (not res!308198) (not e!296770))))

(assert (=> b!507095 (= res!308198 (and (= (size!16013 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16013 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16013 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45828 res!308204) b!507095))

(assert (= (and b!507095 res!308198) b!507089))

(assert (= (and b!507089 res!308196) b!507087))

(assert (= (and b!507087 res!308203) b!507090))

(assert (= (and b!507090 res!308202) b!507086))

(assert (= (and b!507086 res!308201) b!507088))

(assert (= (and b!507088 res!308194) b!507093))

(assert (= (and b!507093 res!308199) b!507091))

(assert (= (and b!507091 res!308200) b!507094))

(assert (= (and b!507091 (not res!308195)) b!507085))

(assert (= (and b!507085 (not res!308197)) b!507092))

(declare-fun m!487869 () Bool)

(assert (=> b!507092 m!487869))

(declare-fun m!487871 () Bool)

(assert (=> b!507089 m!487871))

(assert (=> b!507089 m!487871))

(declare-fun m!487873 () Bool)

(assert (=> b!507089 m!487873))

(assert (=> b!507091 m!487871))

(declare-fun m!487875 () Bool)

(assert (=> b!507091 m!487875))

(declare-fun m!487877 () Bool)

(assert (=> b!507091 m!487877))

(declare-fun m!487879 () Bool)

(assert (=> b!507091 m!487879))

(declare-fun m!487881 () Bool)

(assert (=> b!507091 m!487881))

(declare-fun m!487883 () Bool)

(assert (=> b!507091 m!487883))

(declare-fun m!487885 () Bool)

(assert (=> b!507091 m!487885))

(assert (=> b!507091 m!487871))

(declare-fun m!487887 () Bool)

(assert (=> b!507091 m!487887))

(assert (=> b!507091 m!487871))

(declare-fun m!487889 () Bool)

(assert (=> b!507091 m!487889))

(declare-fun m!487891 () Bool)

(assert (=> start!45828 m!487891))

(declare-fun m!487893 () Bool)

(assert (=> start!45828 m!487893))

(declare-fun m!487895 () Bool)

(assert (=> b!507086 m!487895))

(declare-fun m!487897 () Bool)

(assert (=> b!507088 m!487897))

(declare-fun m!487899 () Bool)

(assert (=> b!507090 m!487899))

(declare-fun m!487901 () Bool)

(assert (=> b!507087 m!487901))

(assert (=> b!507094 m!487871))

(assert (=> b!507094 m!487871))

(declare-fun m!487903 () Bool)

(assert (=> b!507094 m!487903))

(declare-fun m!487905 () Bool)

(assert (=> b!507093 m!487905))

(check-sat (not b!507094) (not b!507089) (not b!507087) (not start!45828) (not b!507088) (not b!507086) (not b!507093) (not b!507092) (not b!507091) (not b!507090))
(check-sat)
