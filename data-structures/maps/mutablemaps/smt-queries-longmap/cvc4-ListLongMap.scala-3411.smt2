; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47402 () Bool)

(assert start!47402)

(declare-fun b!521005 () Bool)

(declare-fun res!318997 () Bool)

(declare-fun e!303991 () Bool)

(assert (=> b!521005 (=> res!318997 e!303991)))

(declare-datatypes ((SeekEntryResult!4421 0))(
  ( (MissingZero!4421 (index!19887 (_ BitVec 32))) (Found!4421 (index!19888 (_ BitVec 32))) (Intermediate!4421 (undefined!5233 Bool) (index!19889 (_ BitVec 32)) (x!48898 (_ BitVec 32))) (Undefined!4421) (MissingVacant!4421 (index!19890 (_ BitVec 32))) )
))
(declare-fun lt!238769 () SeekEntryResult!4421)

(assert (=> b!521005 (= res!318997 (or (undefined!5233 lt!238769) (not (is-Intermediate!4421 lt!238769))))))

(declare-fun b!521006 () Bool)

(declare-fun res!318993 () Bool)

(declare-fun e!303992 () Bool)

(assert (=> b!521006 (=> (not res!318993) (not e!303992))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!521006 (= res!318993 (validKeyInArray!0 k!2280))))

(declare-fun b!521007 () Bool)

(declare-fun res!318988 () Bool)

(assert (=> b!521007 (=> (not res!318988) (not e!303992))))

(declare-datatypes ((array!33188 0))(
  ( (array!33189 (arr!15947 (Array (_ BitVec 32) (_ BitVec 64))) (size!16311 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33188)

(declare-fun arrayContainsKey!0 (array!33188 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!521007 (= res!318988 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!521008 () Bool)

(declare-fun res!318990 () Bool)

(assert (=> b!521008 (=> (not res!318990) (not e!303992))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!521008 (= res!318990 (and (= (size!16311 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16311 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16311 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!521009 () Bool)

(assert (=> b!521009 (= e!303991 true)))

(assert (=> b!521009 (and (or (= (select (arr!15947 a!3235) (index!19889 lt!238769)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15947 a!3235) (index!19889 lt!238769)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15947 a!3235) (index!19889 lt!238769)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15947 a!3235) (index!19889 lt!238769)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!16150 0))(
  ( (Unit!16151) )
))
(declare-fun lt!238772 () Unit!16150)

(declare-fun e!303994 () Unit!16150)

(assert (=> b!521009 (= lt!238772 e!303994)))

(declare-fun c!61310 () Bool)

(assert (=> b!521009 (= c!61310 (= (select (arr!15947 a!3235) (index!19889 lt!238769)) (select (arr!15947 a!3235) j!176)))))

(assert (=> b!521009 (and (bvslt (x!48898 lt!238769) #b01111111111111111111111111111110) (or (= (select (arr!15947 a!3235) (index!19889 lt!238769)) (select (arr!15947 a!3235) j!176)) (= (select (arr!15947 a!3235) (index!19889 lt!238769)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15947 a!3235) (index!19889 lt!238769)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!303989 () Bool)

(declare-fun b!521010 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33188 (_ BitVec 32)) SeekEntryResult!4421)

(assert (=> b!521010 (= e!303989 (= (seekEntryOrOpen!0 (select (arr!15947 a!3235) j!176) a!3235 mask!3524) (Found!4421 j!176)))))

(declare-fun b!521012 () Bool)

(declare-fun e!303993 () Bool)

(assert (=> b!521012 (= e!303993 false)))

(declare-fun b!521013 () Bool)

(declare-fun res!318995 () Bool)

(assert (=> b!521013 (=> (not res!318995) (not e!303992))))

(assert (=> b!521013 (= res!318995 (validKeyInArray!0 (select (arr!15947 a!3235) j!176)))))

(declare-fun b!521014 () Bool)

(declare-fun Unit!16152 () Unit!16150)

(assert (=> b!521014 (= e!303994 Unit!16152)))

(declare-fun lt!238768 () (_ BitVec 32))

(declare-fun lt!238770 () Unit!16150)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33188 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16150)

(assert (=> b!521014 (= lt!238770 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!238768 #b00000000000000000000000000000000 (index!19889 lt!238769) (x!48898 lt!238769) mask!3524))))

(declare-fun lt!238767 () (_ BitVec 64))

(declare-fun lt!238773 () array!33188)

(declare-fun res!318992 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33188 (_ BitVec 32)) SeekEntryResult!4421)

(assert (=> b!521014 (= res!318992 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238768 lt!238767 lt!238773 mask!3524) (Intermediate!4421 false (index!19889 lt!238769) (x!48898 lt!238769))))))

(assert (=> b!521014 (=> (not res!318992) (not e!303993))))

(assert (=> b!521014 e!303993))

(declare-fun b!521015 () Bool)

(declare-fun res!318994 () Bool)

(declare-fun e!303988 () Bool)

(assert (=> b!521015 (=> (not res!318994) (not e!303988))))

(declare-datatypes ((List!10158 0))(
  ( (Nil!10155) (Cons!10154 (h!11076 (_ BitVec 64)) (t!16394 List!10158)) )
))
(declare-fun arrayNoDuplicates!0 (array!33188 (_ BitVec 32) List!10158) Bool)

(assert (=> b!521015 (= res!318994 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10155))))

(declare-fun b!521016 () Bool)

(declare-fun res!318987 () Bool)

(assert (=> b!521016 (=> (not res!318987) (not e!303988))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33188 (_ BitVec 32)) Bool)

(assert (=> b!521016 (= res!318987 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!521017 () Bool)

(declare-fun Unit!16153 () Unit!16150)

(assert (=> b!521017 (= e!303994 Unit!16153)))

(declare-fun b!521018 () Bool)

(assert (=> b!521018 (= e!303988 (not e!303991))))

(declare-fun res!318998 () Bool)

(assert (=> b!521018 (=> res!318998 e!303991)))

(declare-fun lt!238771 () (_ BitVec 32))

(assert (=> b!521018 (= res!318998 (= lt!238769 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238771 lt!238767 lt!238773 mask!3524)))))

(assert (=> b!521018 (= lt!238769 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238768 (select (arr!15947 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!521018 (= lt!238771 (toIndex!0 lt!238767 mask!3524))))

(assert (=> b!521018 (= lt!238767 (select (store (arr!15947 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!521018 (= lt!238768 (toIndex!0 (select (arr!15947 a!3235) j!176) mask!3524))))

(assert (=> b!521018 (= lt!238773 (array!33189 (store (arr!15947 a!3235) i!1204 k!2280) (size!16311 a!3235)))))

(assert (=> b!521018 e!303989))

(declare-fun res!318991 () Bool)

(assert (=> b!521018 (=> (not res!318991) (not e!303989))))

(assert (=> b!521018 (= res!318991 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!238774 () Unit!16150)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33188 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16150)

(assert (=> b!521018 (= lt!238774 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!521011 () Bool)

(assert (=> b!521011 (= e!303992 e!303988)))

(declare-fun res!318996 () Bool)

(assert (=> b!521011 (=> (not res!318996) (not e!303988))))

(declare-fun lt!238775 () SeekEntryResult!4421)

(assert (=> b!521011 (= res!318996 (or (= lt!238775 (MissingZero!4421 i!1204)) (= lt!238775 (MissingVacant!4421 i!1204))))))

(assert (=> b!521011 (= lt!238775 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!318989 () Bool)

(assert (=> start!47402 (=> (not res!318989) (not e!303992))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47402 (= res!318989 (validMask!0 mask!3524))))

(assert (=> start!47402 e!303992))

(assert (=> start!47402 true))

(declare-fun array_inv!11721 (array!33188) Bool)

(assert (=> start!47402 (array_inv!11721 a!3235)))

(assert (= (and start!47402 res!318989) b!521008))

(assert (= (and b!521008 res!318990) b!521013))

(assert (= (and b!521013 res!318995) b!521006))

(assert (= (and b!521006 res!318993) b!521007))

(assert (= (and b!521007 res!318988) b!521011))

(assert (= (and b!521011 res!318996) b!521016))

(assert (= (and b!521016 res!318987) b!521015))

(assert (= (and b!521015 res!318994) b!521018))

(assert (= (and b!521018 res!318991) b!521010))

(assert (= (and b!521018 (not res!318998)) b!521005))

(assert (= (and b!521005 (not res!318997)) b!521009))

(assert (= (and b!521009 c!61310) b!521014))

(assert (= (and b!521009 (not c!61310)) b!521017))

(assert (= (and b!521014 res!318992) b!521012))

(declare-fun m!501955 () Bool)

(assert (=> b!521013 m!501955))

(assert (=> b!521013 m!501955))

(declare-fun m!501957 () Bool)

(assert (=> b!521013 m!501957))

(declare-fun m!501959 () Bool)

(assert (=> b!521016 m!501959))

(declare-fun m!501961 () Bool)

(assert (=> b!521018 m!501961))

(declare-fun m!501963 () Bool)

(assert (=> b!521018 m!501963))

(declare-fun m!501965 () Bool)

(assert (=> b!521018 m!501965))

(assert (=> b!521018 m!501955))

(declare-fun m!501967 () Bool)

(assert (=> b!521018 m!501967))

(assert (=> b!521018 m!501955))

(declare-fun m!501969 () Bool)

(assert (=> b!521018 m!501969))

(assert (=> b!521018 m!501955))

(declare-fun m!501971 () Bool)

(assert (=> b!521018 m!501971))

(declare-fun m!501973 () Bool)

(assert (=> b!521018 m!501973))

(declare-fun m!501975 () Bool)

(assert (=> b!521018 m!501975))

(declare-fun m!501977 () Bool)

(assert (=> b!521015 m!501977))

(declare-fun m!501979 () Bool)

(assert (=> b!521014 m!501979))

(declare-fun m!501981 () Bool)

(assert (=> b!521014 m!501981))

(declare-fun m!501983 () Bool)

(assert (=> b!521011 m!501983))

(declare-fun m!501985 () Bool)

(assert (=> b!521009 m!501985))

(assert (=> b!521009 m!501955))

(declare-fun m!501987 () Bool)

(assert (=> start!47402 m!501987))

(declare-fun m!501989 () Bool)

(assert (=> start!47402 m!501989))

(declare-fun m!501991 () Bool)

(assert (=> b!521006 m!501991))

(declare-fun m!501993 () Bool)

(assert (=> b!521007 m!501993))

(assert (=> b!521010 m!501955))

(assert (=> b!521010 m!501955))

(declare-fun m!501995 () Bool)

(assert (=> b!521010 m!501995))

(push 1)

