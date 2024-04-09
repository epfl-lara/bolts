; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50704 () Bool)

(assert start!50704)

(declare-fun b!554027 () Bool)

(declare-fun e!319492 () Bool)

(declare-fun e!319493 () Bool)

(assert (=> b!554027 (= e!319492 e!319493)))

(declare-fun res!346593 () Bool)

(assert (=> b!554027 (=> (not res!346593) (not e!319493))))

(declare-datatypes ((SeekEntryResult!5203 0))(
  ( (MissingZero!5203 (index!23039 (_ BitVec 32))) (Found!5203 (index!23040 (_ BitVec 32))) (Intermediate!5203 (undefined!6015 Bool) (index!23041 (_ BitVec 32)) (x!51984 (_ BitVec 32))) (Undefined!5203) (MissingVacant!5203 (index!23042 (_ BitVec 32))) )
))
(declare-fun lt!251684 () SeekEntryResult!5203)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!554027 (= res!346593 (or (= lt!251684 (MissingZero!5203 i!1132)) (= lt!251684 (MissingVacant!5203 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-datatypes ((array!34883 0))(
  ( (array!34884 (arr!16747 (Array (_ BitVec 32) (_ BitVec 64))) (size!17111 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34883)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34883 (_ BitVec 32)) SeekEntryResult!5203)

(assert (=> b!554027 (= lt!251684 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun res!346594 () Bool)

(assert (=> start!50704 (=> (not res!346594) (not e!319492))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50704 (= res!346594 (validMask!0 mask!3119))))

(assert (=> start!50704 e!319492))

(assert (=> start!50704 true))

(declare-fun array_inv!12521 (array!34883) Bool)

(assert (=> start!50704 (array_inv!12521 a!3118)))

(declare-fun b!554028 () Bool)

(assert (=> b!554028 (= e!319493 (not true))))

(declare-fun e!319494 () Bool)

(assert (=> b!554028 e!319494))

(declare-fun res!346589 () Bool)

(assert (=> b!554028 (=> (not res!346589) (not e!319494))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34883 (_ BitVec 32)) Bool)

(assert (=> b!554028 (= res!346589 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17180 0))(
  ( (Unit!17181) )
))
(declare-fun lt!251683 () Unit!17180)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34883 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17180)

(assert (=> b!554028 (= lt!251683 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554029 () Bool)

(declare-fun res!346591 () Bool)

(assert (=> b!554029 (=> (not res!346591) (not e!319493))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34883 (_ BitVec 32)) SeekEntryResult!5203)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554029 (= res!346591 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16747 a!3118) j!142) mask!3119) (select (arr!16747 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16747 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16747 a!3118) i!1132 k0!1914) j!142) (array!34884 (store (arr!16747 a!3118) i!1132 k0!1914) (size!17111 a!3118)) mask!3119)))))

(declare-fun b!554030 () Bool)

(declare-fun res!346598 () Bool)

(assert (=> b!554030 (=> (not res!346598) (not e!319492))))

(assert (=> b!554030 (= res!346598 (and (= (size!17111 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17111 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17111 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554031 () Bool)

(declare-fun res!346595 () Bool)

(assert (=> b!554031 (=> (not res!346595) (not e!319492))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554031 (= res!346595 (validKeyInArray!0 k0!1914))))

(declare-fun b!554032 () Bool)

(declare-fun res!346597 () Bool)

(assert (=> b!554032 (=> (not res!346597) (not e!319492))))

(declare-fun arrayContainsKey!0 (array!34883 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554032 (= res!346597 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!554033 () Bool)

(declare-fun res!346590 () Bool)

(assert (=> b!554033 (=> (not res!346590) (not e!319492))))

(assert (=> b!554033 (= res!346590 (validKeyInArray!0 (select (arr!16747 a!3118) j!142)))))

(declare-fun b!554034 () Bool)

(assert (=> b!554034 (= e!319494 (= (seekEntryOrOpen!0 (select (arr!16747 a!3118) j!142) a!3118 mask!3119) (Found!5203 j!142)))))

(declare-fun b!554035 () Bool)

(declare-fun res!346596 () Bool)

(assert (=> b!554035 (=> (not res!346596) (not e!319493))))

(declare-datatypes ((List!10880 0))(
  ( (Nil!10877) (Cons!10876 (h!11861 (_ BitVec 64)) (t!17116 List!10880)) )
))
(declare-fun arrayNoDuplicates!0 (array!34883 (_ BitVec 32) List!10880) Bool)

(assert (=> b!554035 (= res!346596 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10877))))

(declare-fun b!554036 () Bool)

(declare-fun res!346592 () Bool)

(assert (=> b!554036 (=> (not res!346592) (not e!319493))))

(assert (=> b!554036 (= res!346592 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!50704 res!346594) b!554030))

(assert (= (and b!554030 res!346598) b!554033))

(assert (= (and b!554033 res!346590) b!554031))

(assert (= (and b!554031 res!346595) b!554032))

(assert (= (and b!554032 res!346597) b!554027))

(assert (= (and b!554027 res!346593) b!554036))

(assert (= (and b!554036 res!346592) b!554035))

(assert (= (and b!554035 res!346596) b!554029))

(assert (= (and b!554029 res!346591) b!554028))

(assert (= (and b!554028 res!346589) b!554034))

(declare-fun m!531313 () Bool)

(assert (=> b!554033 m!531313))

(assert (=> b!554033 m!531313))

(declare-fun m!531315 () Bool)

(assert (=> b!554033 m!531315))

(declare-fun m!531317 () Bool)

(assert (=> b!554035 m!531317))

(declare-fun m!531319 () Bool)

(assert (=> start!50704 m!531319))

(declare-fun m!531321 () Bool)

(assert (=> start!50704 m!531321))

(assert (=> b!554034 m!531313))

(assert (=> b!554034 m!531313))

(declare-fun m!531323 () Bool)

(assert (=> b!554034 m!531323))

(declare-fun m!531325 () Bool)

(assert (=> b!554036 m!531325))

(declare-fun m!531327 () Bool)

(assert (=> b!554027 m!531327))

(declare-fun m!531329 () Bool)

(assert (=> b!554032 m!531329))

(declare-fun m!531331 () Bool)

(assert (=> b!554031 m!531331))

(assert (=> b!554029 m!531313))

(declare-fun m!531333 () Bool)

(assert (=> b!554029 m!531333))

(assert (=> b!554029 m!531313))

(declare-fun m!531335 () Bool)

(assert (=> b!554029 m!531335))

(declare-fun m!531337 () Bool)

(assert (=> b!554029 m!531337))

(assert (=> b!554029 m!531335))

(declare-fun m!531339 () Bool)

(assert (=> b!554029 m!531339))

(assert (=> b!554029 m!531333))

(assert (=> b!554029 m!531313))

(declare-fun m!531341 () Bool)

(assert (=> b!554029 m!531341))

(declare-fun m!531343 () Bool)

(assert (=> b!554029 m!531343))

(assert (=> b!554029 m!531335))

(assert (=> b!554029 m!531337))

(declare-fun m!531345 () Bool)

(assert (=> b!554028 m!531345))

(declare-fun m!531347 () Bool)

(assert (=> b!554028 m!531347))

(check-sat (not b!554036) (not start!50704) (not b!554032) (not b!554029) (not b!554033) (not b!554027) (not b!554028) (not b!554031) (not b!554035) (not b!554034))
(check-sat)
