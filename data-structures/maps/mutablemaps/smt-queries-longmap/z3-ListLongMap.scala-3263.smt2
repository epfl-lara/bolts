; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45462 () Bool)

(assert start!45462)

(declare-fun b!499938 () Bool)

(declare-fun res!301958 () Bool)

(declare-fun e!292932 () Bool)

(assert (=> b!499938 (=> (not res!301958) (not e!292932))))

(declare-datatypes ((array!32247 0))(
  ( (array!32248 (arr!15502 (Array (_ BitVec 32) (_ BitVec 64))) (size!15866 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32247)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32247 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!499938 (= res!301958 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun e!292933 () Bool)

(declare-fun b!499939 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3976 0))(
  ( (MissingZero!3976 (index!18086 (_ BitVec 32))) (Found!3976 (index!18087 (_ BitVec 32))) (Intermediate!3976 (undefined!4788 Bool) (index!18088 (_ BitVec 32)) (x!47152 (_ BitVec 32))) (Undefined!3976) (MissingVacant!3976 (index!18089 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32247 (_ BitVec 32)) SeekEntryResult!3976)

(assert (=> b!499939 (= e!292933 (= (seekEntryOrOpen!0 (select (arr!15502 a!3235) j!176) a!3235 mask!3524) (Found!3976 j!176)))))

(declare-fun b!499940 () Bool)

(declare-fun e!292938 () Bool)

(assert (=> b!499940 (= e!292938 true)))

(declare-fun lt!226877 () (_ BitVec 32))

(declare-fun lt!226873 () (_ BitVec 64))

(declare-fun lt!226878 () SeekEntryResult!3976)

(declare-fun lt!226871 () array!32247)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32247 (_ BitVec 32)) SeekEntryResult!3976)

(assert (=> b!499940 (= lt!226878 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226877 lt!226873 lt!226871 mask!3524))))

(declare-fun res!301965 () Bool)

(assert (=> start!45462 (=> (not res!301965) (not e!292932))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45462 (= res!301965 (validMask!0 mask!3524))))

(assert (=> start!45462 e!292932))

(assert (=> start!45462 true))

(declare-fun array_inv!11276 (array!32247) Bool)

(assert (=> start!45462 (array_inv!11276 a!3235)))

(declare-fun b!499941 () Bool)

(declare-fun res!301960 () Bool)

(assert (=> b!499941 (=> (not res!301960) (not e!292932))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!499941 (= res!301960 (validKeyInArray!0 k0!2280))))

(declare-fun b!499942 () Bool)

(declare-fun res!301962 () Bool)

(declare-fun e!292935 () Bool)

(assert (=> b!499942 (=> res!301962 e!292935)))

(declare-fun lt!226875 () SeekEntryResult!3976)

(get-info :version)

(assert (=> b!499942 (= res!301962 (or (undefined!4788 lt!226875) (not ((_ is Intermediate!3976) lt!226875))))))

(declare-fun b!499943 () Bool)

(assert (=> b!499943 (= e!292935 e!292938)))

(declare-fun res!301964 () Bool)

(assert (=> b!499943 (=> res!301964 e!292938)))

(assert (=> b!499943 (= res!301964 (or (bvsgt #b00000000000000000000000000000000 (x!47152 lt!226875)) (bvsgt (x!47152 lt!226875) #b01111111111111111111111111111110) (bvslt lt!226877 #b00000000000000000000000000000000) (bvsge lt!226877 (size!15866 a!3235)) (bvslt (index!18088 lt!226875) #b00000000000000000000000000000000) (bvsge (index!18088 lt!226875) (size!15866 a!3235)) (not (= lt!226875 (Intermediate!3976 false (index!18088 lt!226875) (x!47152 lt!226875))))))))

(assert (=> b!499943 (and (or (= (select (arr!15502 a!3235) (index!18088 lt!226875)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15502 a!3235) (index!18088 lt!226875)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15502 a!3235) (index!18088 lt!226875)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15502 a!3235) (index!18088 lt!226875)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!14994 0))(
  ( (Unit!14995) )
))
(declare-fun lt!226874 () Unit!14994)

(declare-fun e!292937 () Unit!14994)

(assert (=> b!499943 (= lt!226874 e!292937)))

(declare-fun c!59267 () Bool)

(assert (=> b!499943 (= c!59267 (= (select (arr!15502 a!3235) (index!18088 lt!226875)) (select (arr!15502 a!3235) j!176)))))

(assert (=> b!499943 (and (bvslt (x!47152 lt!226875) #b01111111111111111111111111111110) (or (= (select (arr!15502 a!3235) (index!18088 lt!226875)) (select (arr!15502 a!3235) j!176)) (= (select (arr!15502 a!3235) (index!18088 lt!226875)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15502 a!3235) (index!18088 lt!226875)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!499944 () Bool)

(declare-fun res!301959 () Bool)

(declare-fun e!292934 () Bool)

(assert (=> b!499944 (=> (not res!301959) (not e!292934))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32247 (_ BitVec 32)) Bool)

(assert (=> b!499944 (= res!301959 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!499945 () Bool)

(declare-fun res!301967 () Bool)

(assert (=> b!499945 (=> (not res!301967) (not e!292934))))

(declare-datatypes ((List!9713 0))(
  ( (Nil!9710) (Cons!9709 (h!10583 (_ BitVec 64)) (t!15949 List!9713)) )
))
(declare-fun arrayNoDuplicates!0 (array!32247 (_ BitVec 32) List!9713) Bool)

(assert (=> b!499945 (= res!301967 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9710))))

(declare-fun b!499946 () Bool)

(declare-fun Unit!14996 () Unit!14994)

(assert (=> b!499946 (= e!292937 Unit!14996)))

(declare-fun b!499947 () Bool)

(declare-fun res!301969 () Bool)

(assert (=> b!499947 (=> (not res!301969) (not e!292932))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!499947 (= res!301969 (and (= (size!15866 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15866 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15866 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!499948 () Bool)

(assert (=> b!499948 (= e!292934 (not e!292935))))

(declare-fun res!301961 () Bool)

(assert (=> b!499948 (=> res!301961 e!292935)))

(declare-fun lt!226880 () (_ BitVec 32))

(assert (=> b!499948 (= res!301961 (= lt!226875 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226880 lt!226873 lt!226871 mask!3524)))))

(assert (=> b!499948 (= lt!226875 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226877 (select (arr!15502 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!499948 (= lt!226880 (toIndex!0 lt!226873 mask!3524))))

(assert (=> b!499948 (= lt!226873 (select (store (arr!15502 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!499948 (= lt!226877 (toIndex!0 (select (arr!15502 a!3235) j!176) mask!3524))))

(assert (=> b!499948 (= lt!226871 (array!32248 (store (arr!15502 a!3235) i!1204 k0!2280) (size!15866 a!3235)))))

(assert (=> b!499948 e!292933))

(declare-fun res!301970 () Bool)

(assert (=> b!499948 (=> (not res!301970) (not e!292933))))

(assert (=> b!499948 (= res!301970 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!226876 () Unit!14994)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32247 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14994)

(assert (=> b!499948 (= lt!226876 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!499949 () Bool)

(declare-fun Unit!14997 () Unit!14994)

(assert (=> b!499949 (= e!292937 Unit!14997)))

(declare-fun lt!226879 () Unit!14994)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32247 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14994)

(assert (=> b!499949 (= lt!226879 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!226877 #b00000000000000000000000000000000 (index!18088 lt!226875) (x!47152 lt!226875) mask!3524))))

(declare-fun res!301968 () Bool)

(assert (=> b!499949 (= res!301968 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226877 lt!226873 lt!226871 mask!3524) (Intermediate!3976 false (index!18088 lt!226875) (x!47152 lt!226875))))))

(declare-fun e!292936 () Bool)

(assert (=> b!499949 (=> (not res!301968) (not e!292936))))

(assert (=> b!499949 e!292936))

(declare-fun b!499950 () Bool)

(declare-fun res!301966 () Bool)

(assert (=> b!499950 (=> (not res!301966) (not e!292932))))

(assert (=> b!499950 (= res!301966 (validKeyInArray!0 (select (arr!15502 a!3235) j!176)))))

(declare-fun b!499951 () Bool)

(assert (=> b!499951 (= e!292932 e!292934)))

(declare-fun res!301963 () Bool)

(assert (=> b!499951 (=> (not res!301963) (not e!292934))))

(declare-fun lt!226872 () SeekEntryResult!3976)

(assert (=> b!499951 (= res!301963 (or (= lt!226872 (MissingZero!3976 i!1204)) (= lt!226872 (MissingVacant!3976 i!1204))))))

(assert (=> b!499951 (= lt!226872 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!499952 () Bool)

(assert (=> b!499952 (= e!292936 false)))

(assert (= (and start!45462 res!301965) b!499947))

(assert (= (and b!499947 res!301969) b!499950))

(assert (= (and b!499950 res!301966) b!499941))

(assert (= (and b!499941 res!301960) b!499938))

(assert (= (and b!499938 res!301958) b!499951))

(assert (= (and b!499951 res!301963) b!499944))

(assert (= (and b!499944 res!301959) b!499945))

(assert (= (and b!499945 res!301967) b!499948))

(assert (= (and b!499948 res!301970) b!499939))

(assert (= (and b!499948 (not res!301961)) b!499942))

(assert (= (and b!499942 (not res!301962)) b!499943))

(assert (= (and b!499943 c!59267) b!499949))

(assert (= (and b!499943 (not c!59267)) b!499946))

(assert (= (and b!499949 res!301968) b!499952))

(assert (= (and b!499943 (not res!301964)) b!499940))

(declare-fun m!481129 () Bool)

(assert (=> b!499949 m!481129))

(declare-fun m!481131 () Bool)

(assert (=> b!499949 m!481131))

(declare-fun m!481133 () Bool)

(assert (=> b!499944 m!481133))

(declare-fun m!481135 () Bool)

(assert (=> b!499939 m!481135))

(assert (=> b!499939 m!481135))

(declare-fun m!481137 () Bool)

(assert (=> b!499939 m!481137))

(declare-fun m!481139 () Bool)

(assert (=> b!499951 m!481139))

(declare-fun m!481141 () Bool)

(assert (=> b!499945 m!481141))

(assert (=> b!499950 m!481135))

(assert (=> b!499950 m!481135))

(declare-fun m!481143 () Bool)

(assert (=> b!499950 m!481143))

(declare-fun m!481145 () Bool)

(assert (=> b!499948 m!481145))

(declare-fun m!481147 () Bool)

(assert (=> b!499948 m!481147))

(declare-fun m!481149 () Bool)

(assert (=> b!499948 m!481149))

(declare-fun m!481151 () Bool)

(assert (=> b!499948 m!481151))

(assert (=> b!499948 m!481135))

(declare-fun m!481153 () Bool)

(assert (=> b!499948 m!481153))

(assert (=> b!499948 m!481135))

(assert (=> b!499948 m!481135))

(declare-fun m!481155 () Bool)

(assert (=> b!499948 m!481155))

(declare-fun m!481157 () Bool)

(assert (=> b!499948 m!481157))

(declare-fun m!481159 () Bool)

(assert (=> b!499948 m!481159))

(declare-fun m!481161 () Bool)

(assert (=> b!499943 m!481161))

(assert (=> b!499943 m!481135))

(assert (=> b!499940 m!481131))

(declare-fun m!481163 () Bool)

(assert (=> start!45462 m!481163))

(declare-fun m!481165 () Bool)

(assert (=> start!45462 m!481165))

(declare-fun m!481167 () Bool)

(assert (=> b!499938 m!481167))

(declare-fun m!481169 () Bool)

(assert (=> b!499941 m!481169))

(check-sat (not b!499944) (not start!45462) (not b!499948) (not b!499941) (not b!499939) (not b!499950) (not b!499951) (not b!499945) (not b!499940) (not b!499949) (not b!499938))
(check-sat)
