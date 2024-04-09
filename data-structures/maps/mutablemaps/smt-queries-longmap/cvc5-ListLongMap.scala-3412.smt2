; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47404 () Bool)

(assert start!47404)

(declare-fun b!521047 () Bool)

(declare-fun res!319030 () Bool)

(declare-fun e!304012 () Bool)

(assert (=> b!521047 (=> res!319030 e!304012)))

(declare-datatypes ((SeekEntryResult!4422 0))(
  ( (MissingZero!4422 (index!19891 (_ BitVec 32))) (Found!4422 (index!19892 (_ BitVec 32))) (Intermediate!4422 (undefined!5234 Bool) (index!19893 (_ BitVec 32)) (x!48907 (_ BitVec 32))) (Undefined!4422) (MissingVacant!4422 (index!19894 (_ BitVec 32))) )
))
(declare-fun lt!238795 () SeekEntryResult!4422)

(assert (=> b!521047 (= res!319030 (or (undefined!5234 lt!238795) (not (is-Intermediate!4422 lt!238795))))))

(declare-fun b!521048 () Bool)

(declare-fun res!319027 () Bool)

(declare-fun e!304011 () Bool)

(assert (=> b!521048 (=> (not res!319027) (not e!304011))))

(declare-datatypes ((array!33190 0))(
  ( (array!33191 (arr!15948 (Array (_ BitVec 32) (_ BitVec 64))) (size!16312 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33190)

(declare-datatypes ((List!10159 0))(
  ( (Nil!10156) (Cons!10155 (h!11077 (_ BitVec 64)) (t!16395 List!10159)) )
))
(declare-fun arrayNoDuplicates!0 (array!33190 (_ BitVec 32) List!10159) Bool)

(assert (=> b!521048 (= res!319027 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10156))))

(declare-fun e!304013 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!521049 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33190 (_ BitVec 32)) SeekEntryResult!4422)

(assert (=> b!521049 (= e!304013 (= (seekEntryOrOpen!0 (select (arr!15948 a!3235) j!176) a!3235 mask!3524) (Found!4422 j!176)))))

(declare-fun b!521050 () Bool)

(assert (=> b!521050 (= e!304012 true)))

(assert (=> b!521050 (and (or (= (select (arr!15948 a!3235) (index!19893 lt!238795)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15948 a!3235) (index!19893 lt!238795)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15948 a!3235) (index!19893 lt!238795)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15948 a!3235) (index!19893 lt!238795)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!16154 0))(
  ( (Unit!16155) )
))
(declare-fun lt!238799 () Unit!16154)

(declare-fun e!304010 () Unit!16154)

(assert (=> b!521050 (= lt!238799 e!304010)))

(declare-fun c!61313 () Bool)

(assert (=> b!521050 (= c!61313 (= (select (arr!15948 a!3235) (index!19893 lt!238795)) (select (arr!15948 a!3235) j!176)))))

(assert (=> b!521050 (and (bvslt (x!48907 lt!238795) #b01111111111111111111111111111110) (or (= (select (arr!15948 a!3235) (index!19893 lt!238795)) (select (arr!15948 a!3235) j!176)) (= (select (arr!15948 a!3235) (index!19893 lt!238795)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15948 a!3235) (index!19893 lt!238795)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!521051 () Bool)

(assert (=> b!521051 (= e!304011 (not e!304012))))

(declare-fun res!319023 () Bool)

(assert (=> b!521051 (=> res!319023 e!304012)))

(declare-fun lt!238794 () array!33190)

(declare-fun lt!238796 () (_ BitVec 64))

(declare-fun lt!238800 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33190 (_ BitVec 32)) SeekEntryResult!4422)

(assert (=> b!521051 (= res!319023 (= lt!238795 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238800 lt!238796 lt!238794 mask!3524)))))

(declare-fun lt!238798 () (_ BitVec 32))

(assert (=> b!521051 (= lt!238795 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238798 (select (arr!15948 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!521051 (= lt!238800 (toIndex!0 lt!238796 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!521051 (= lt!238796 (select (store (arr!15948 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!521051 (= lt!238798 (toIndex!0 (select (arr!15948 a!3235) j!176) mask!3524))))

(assert (=> b!521051 (= lt!238794 (array!33191 (store (arr!15948 a!3235) i!1204 k!2280) (size!16312 a!3235)))))

(assert (=> b!521051 e!304013))

(declare-fun res!319031 () Bool)

(assert (=> b!521051 (=> (not res!319031) (not e!304013))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33190 (_ BitVec 32)) Bool)

(assert (=> b!521051 (= res!319031 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!238802 () Unit!16154)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33190 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16154)

(assert (=> b!521051 (= lt!238802 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!521052 () Bool)

(declare-fun res!319029 () Bool)

(assert (=> b!521052 (=> (not res!319029) (not e!304011))))

(assert (=> b!521052 (= res!319029 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!521053 () Bool)

(declare-fun res!319025 () Bool)

(declare-fun e!304015 () Bool)

(assert (=> b!521053 (=> (not res!319025) (not e!304015))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!521053 (= res!319025 (validKeyInArray!0 k!2280))))

(declare-fun b!521054 () Bool)

(declare-fun Unit!16156 () Unit!16154)

(assert (=> b!521054 (= e!304010 Unit!16156)))

(declare-fun lt!238801 () Unit!16154)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33190 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16154)

(assert (=> b!521054 (= lt!238801 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!238798 #b00000000000000000000000000000000 (index!19893 lt!238795) (x!48907 lt!238795) mask!3524))))

(declare-fun res!319033 () Bool)

(assert (=> b!521054 (= res!319033 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238798 lt!238796 lt!238794 mask!3524) (Intermediate!4422 false (index!19893 lt!238795) (x!48907 lt!238795))))))

(declare-fun e!304009 () Bool)

(assert (=> b!521054 (=> (not res!319033) (not e!304009))))

(assert (=> b!521054 e!304009))

(declare-fun b!521055 () Bool)

(assert (=> b!521055 (= e!304015 e!304011)))

(declare-fun res!319028 () Bool)

(assert (=> b!521055 (=> (not res!319028) (not e!304011))))

(declare-fun lt!238797 () SeekEntryResult!4422)

(assert (=> b!521055 (= res!319028 (or (= lt!238797 (MissingZero!4422 i!1204)) (= lt!238797 (MissingVacant!4422 i!1204))))))

(assert (=> b!521055 (= lt!238797 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!521056 () Bool)

(declare-fun res!319026 () Bool)

(assert (=> b!521056 (=> (not res!319026) (not e!304015))))

(declare-fun arrayContainsKey!0 (array!33190 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!521056 (= res!319026 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!319024 () Bool)

(assert (=> start!47404 (=> (not res!319024) (not e!304015))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47404 (= res!319024 (validMask!0 mask!3524))))

(assert (=> start!47404 e!304015))

(assert (=> start!47404 true))

(declare-fun array_inv!11722 (array!33190) Bool)

(assert (=> start!47404 (array_inv!11722 a!3235)))

(declare-fun b!521057 () Bool)

(declare-fun res!319032 () Bool)

(assert (=> b!521057 (=> (not res!319032) (not e!304015))))

(assert (=> b!521057 (= res!319032 (validKeyInArray!0 (select (arr!15948 a!3235) j!176)))))

(declare-fun b!521058 () Bool)

(declare-fun res!319034 () Bool)

(assert (=> b!521058 (=> (not res!319034) (not e!304015))))

(assert (=> b!521058 (= res!319034 (and (= (size!16312 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16312 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16312 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!521059 () Bool)

(assert (=> b!521059 (= e!304009 false)))

(declare-fun b!521060 () Bool)

(declare-fun Unit!16157 () Unit!16154)

(assert (=> b!521060 (= e!304010 Unit!16157)))

(assert (= (and start!47404 res!319024) b!521058))

(assert (= (and b!521058 res!319034) b!521057))

(assert (= (and b!521057 res!319032) b!521053))

(assert (= (and b!521053 res!319025) b!521056))

(assert (= (and b!521056 res!319026) b!521055))

(assert (= (and b!521055 res!319028) b!521052))

(assert (= (and b!521052 res!319029) b!521048))

(assert (= (and b!521048 res!319027) b!521051))

(assert (= (and b!521051 res!319031) b!521049))

(assert (= (and b!521051 (not res!319023)) b!521047))

(assert (= (and b!521047 (not res!319030)) b!521050))

(assert (= (and b!521050 c!61313) b!521054))

(assert (= (and b!521050 (not c!61313)) b!521060))

(assert (= (and b!521054 res!319033) b!521059))

(declare-fun m!501997 () Bool)

(assert (=> b!521052 m!501997))

(declare-fun m!501999 () Bool)

(assert (=> b!521056 m!501999))

(declare-fun m!502001 () Bool)

(assert (=> b!521048 m!502001))

(declare-fun m!502003 () Bool)

(assert (=> b!521051 m!502003))

(declare-fun m!502005 () Bool)

(assert (=> b!521051 m!502005))

(declare-fun m!502007 () Bool)

(assert (=> b!521051 m!502007))

(declare-fun m!502009 () Bool)

(assert (=> b!521051 m!502009))

(declare-fun m!502011 () Bool)

(assert (=> b!521051 m!502011))

(declare-fun m!502013 () Bool)

(assert (=> b!521051 m!502013))

(assert (=> b!521051 m!502011))

(declare-fun m!502015 () Bool)

(assert (=> b!521051 m!502015))

(assert (=> b!521051 m!502011))

(declare-fun m!502017 () Bool)

(assert (=> b!521051 m!502017))

(declare-fun m!502019 () Bool)

(assert (=> b!521051 m!502019))

(declare-fun m!502021 () Bool)

(assert (=> start!47404 m!502021))

(declare-fun m!502023 () Bool)

(assert (=> start!47404 m!502023))

(assert (=> b!521049 m!502011))

(assert (=> b!521049 m!502011))

(declare-fun m!502025 () Bool)

(assert (=> b!521049 m!502025))

(declare-fun m!502027 () Bool)

(assert (=> b!521050 m!502027))

(assert (=> b!521050 m!502011))

(assert (=> b!521057 m!502011))

(assert (=> b!521057 m!502011))

(declare-fun m!502029 () Bool)

(assert (=> b!521057 m!502029))

(declare-fun m!502031 () Bool)

(assert (=> b!521053 m!502031))

(declare-fun m!502033 () Bool)

(assert (=> b!521054 m!502033))

(declare-fun m!502035 () Bool)

(assert (=> b!521054 m!502035))

(declare-fun m!502037 () Bool)

(assert (=> b!521055 m!502037))

(push 1)

