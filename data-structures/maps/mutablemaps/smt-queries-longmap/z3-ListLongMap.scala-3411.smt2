; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47400 () Bool)

(assert start!47400)

(declare-fun b!520963 () Bool)

(declare-fun res!318962 () Bool)

(declare-fun e!303972 () Bool)

(assert (=> b!520963 (=> (not res!318962) (not e!303972))))

(declare-datatypes ((array!33186 0))(
  ( (array!33187 (arr!15946 (Array (_ BitVec 32) (_ BitVec 64))) (size!16310 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33186)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33186 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!520963 (= res!318962 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!520964 () Bool)

(declare-fun res!318960 () Bool)

(assert (=> b!520964 (=> (not res!318960) (not e!303972))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!520964 (= res!318960 (validKeyInArray!0 k0!2280))))

(declare-fun b!520965 () Bool)

(declare-fun e!303967 () Bool)

(assert (=> b!520965 (= e!303967 false)))

(declare-fun b!520966 () Bool)

(declare-fun e!303969 () Bool)

(declare-fun e!303970 () Bool)

(assert (=> b!520966 (= e!303969 (not e!303970))))

(declare-fun res!318958 () Bool)

(assert (=> b!520966 (=> res!318958 e!303970)))

(declare-fun lt!238743 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4420 0))(
  ( (MissingZero!4420 (index!19883 (_ BitVec 32))) (Found!4420 (index!19884 (_ BitVec 32))) (Intermediate!4420 (undefined!5232 Bool) (index!19885 (_ BitVec 32)) (x!48897 (_ BitVec 32))) (Undefined!4420) (MissingVacant!4420 (index!19886 (_ BitVec 32))) )
))
(declare-fun lt!238744 () SeekEntryResult!4420)

(declare-fun lt!238745 () array!33186)

(declare-fun lt!238746 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33186 (_ BitVec 32)) SeekEntryResult!4420)

(assert (=> b!520966 (= res!318958 (= lt!238744 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238743 lt!238746 lt!238745 mask!3524)))))

(declare-fun lt!238741 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!520966 (= lt!238744 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238741 (select (arr!15946 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!520966 (= lt!238743 (toIndex!0 lt!238746 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!520966 (= lt!238746 (select (store (arr!15946 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!520966 (= lt!238741 (toIndex!0 (select (arr!15946 a!3235) j!176) mask!3524))))

(assert (=> b!520966 (= lt!238745 (array!33187 (store (arr!15946 a!3235) i!1204 k0!2280) (size!16310 a!3235)))))

(declare-fun e!303973 () Bool)

(assert (=> b!520966 e!303973))

(declare-fun res!318955 () Bool)

(assert (=> b!520966 (=> (not res!318955) (not e!303973))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33186 (_ BitVec 32)) Bool)

(assert (=> b!520966 (= res!318955 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16146 0))(
  ( (Unit!16147) )
))
(declare-fun lt!238748 () Unit!16146)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33186 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16146)

(assert (=> b!520966 (= lt!238748 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!520967 () Bool)

(declare-fun e!303968 () Unit!16146)

(declare-fun Unit!16148 () Unit!16146)

(assert (=> b!520967 (= e!303968 Unit!16148)))

(declare-fun lt!238742 () Unit!16146)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33186 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16146)

(assert (=> b!520967 (= lt!238742 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!238741 #b00000000000000000000000000000000 (index!19885 lt!238744) (x!48897 lt!238744) mask!3524))))

(declare-fun res!318954 () Bool)

(assert (=> b!520967 (= res!318954 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238741 lt!238746 lt!238745 mask!3524) (Intermediate!4420 false (index!19885 lt!238744) (x!48897 lt!238744))))))

(assert (=> b!520967 (=> (not res!318954) (not e!303967))))

(assert (=> b!520967 e!303967))

(declare-fun b!520968 () Bool)

(declare-fun res!318961 () Bool)

(assert (=> b!520968 (=> (not res!318961) (not e!303969))))

(declare-datatypes ((List!10157 0))(
  ( (Nil!10154) (Cons!10153 (h!11075 (_ BitVec 64)) (t!16393 List!10157)) )
))
(declare-fun arrayNoDuplicates!0 (array!33186 (_ BitVec 32) List!10157) Bool)

(assert (=> b!520968 (= res!318961 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10154))))

(declare-fun b!520969 () Bool)

(assert (=> b!520969 (= e!303972 e!303969)))

(declare-fun res!318951 () Bool)

(assert (=> b!520969 (=> (not res!318951) (not e!303969))))

(declare-fun lt!238740 () SeekEntryResult!4420)

(assert (=> b!520969 (= res!318951 (or (= lt!238740 (MissingZero!4420 i!1204)) (= lt!238740 (MissingVacant!4420 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33186 (_ BitVec 32)) SeekEntryResult!4420)

(assert (=> b!520969 (= lt!238740 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!520970 () Bool)

(assert (=> b!520970 (= e!303973 (= (seekEntryOrOpen!0 (select (arr!15946 a!3235) j!176) a!3235 mask!3524) (Found!4420 j!176)))))

(declare-fun b!520972 () Bool)

(declare-fun Unit!16149 () Unit!16146)

(assert (=> b!520972 (= e!303968 Unit!16149)))

(declare-fun b!520973 () Bool)

(declare-fun res!318953 () Bool)

(assert (=> b!520973 (=> res!318953 e!303970)))

(get-info :version)

(assert (=> b!520973 (= res!318953 (or (undefined!5232 lt!238744) (not ((_ is Intermediate!4420) lt!238744))))))

(declare-fun b!520974 () Bool)

(declare-fun res!318952 () Bool)

(assert (=> b!520974 (=> (not res!318952) (not e!303972))))

(assert (=> b!520974 (= res!318952 (and (= (size!16310 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16310 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16310 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!520975 () Bool)

(declare-fun res!318957 () Bool)

(assert (=> b!520975 (=> (not res!318957) (not e!303969))))

(assert (=> b!520975 (= res!318957 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!520976 () Bool)

(assert (=> b!520976 (= e!303970 true)))

(assert (=> b!520976 (and (or (= (select (arr!15946 a!3235) (index!19885 lt!238744)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15946 a!3235) (index!19885 lt!238744)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15946 a!3235) (index!19885 lt!238744)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15946 a!3235) (index!19885 lt!238744)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!238747 () Unit!16146)

(assert (=> b!520976 (= lt!238747 e!303968)))

(declare-fun c!61307 () Bool)

(assert (=> b!520976 (= c!61307 (= (select (arr!15946 a!3235) (index!19885 lt!238744)) (select (arr!15946 a!3235) j!176)))))

(assert (=> b!520976 (and (bvslt (x!48897 lt!238744) #b01111111111111111111111111111110) (or (= (select (arr!15946 a!3235) (index!19885 lt!238744)) (select (arr!15946 a!3235) j!176)) (= (select (arr!15946 a!3235) (index!19885 lt!238744)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15946 a!3235) (index!19885 lt!238744)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!520971 () Bool)

(declare-fun res!318959 () Bool)

(assert (=> b!520971 (=> (not res!318959) (not e!303972))))

(assert (=> b!520971 (= res!318959 (validKeyInArray!0 (select (arr!15946 a!3235) j!176)))))

(declare-fun res!318956 () Bool)

(assert (=> start!47400 (=> (not res!318956) (not e!303972))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47400 (= res!318956 (validMask!0 mask!3524))))

(assert (=> start!47400 e!303972))

(assert (=> start!47400 true))

(declare-fun array_inv!11720 (array!33186) Bool)

(assert (=> start!47400 (array_inv!11720 a!3235)))

(assert (= (and start!47400 res!318956) b!520974))

(assert (= (and b!520974 res!318952) b!520971))

(assert (= (and b!520971 res!318959) b!520964))

(assert (= (and b!520964 res!318960) b!520963))

(assert (= (and b!520963 res!318962) b!520969))

(assert (= (and b!520969 res!318951) b!520975))

(assert (= (and b!520975 res!318957) b!520968))

(assert (= (and b!520968 res!318961) b!520966))

(assert (= (and b!520966 res!318955) b!520970))

(assert (= (and b!520966 (not res!318958)) b!520973))

(assert (= (and b!520973 (not res!318953)) b!520976))

(assert (= (and b!520976 c!61307) b!520967))

(assert (= (and b!520976 (not c!61307)) b!520972))

(assert (= (and b!520967 res!318954) b!520965))

(declare-fun m!501913 () Bool)

(assert (=> b!520971 m!501913))

(assert (=> b!520971 m!501913))

(declare-fun m!501915 () Bool)

(assert (=> b!520971 m!501915))

(assert (=> b!520966 m!501913))

(declare-fun m!501917 () Bool)

(assert (=> b!520966 m!501917))

(declare-fun m!501919 () Bool)

(assert (=> b!520966 m!501919))

(declare-fun m!501921 () Bool)

(assert (=> b!520966 m!501921))

(declare-fun m!501923 () Bool)

(assert (=> b!520966 m!501923))

(assert (=> b!520966 m!501913))

(declare-fun m!501925 () Bool)

(assert (=> b!520966 m!501925))

(declare-fun m!501927 () Bool)

(assert (=> b!520966 m!501927))

(assert (=> b!520966 m!501913))

(declare-fun m!501929 () Bool)

(assert (=> b!520966 m!501929))

(declare-fun m!501931 () Bool)

(assert (=> b!520966 m!501931))

(assert (=> b!520970 m!501913))

(assert (=> b!520970 m!501913))

(declare-fun m!501933 () Bool)

(assert (=> b!520970 m!501933))

(declare-fun m!501935 () Bool)

(assert (=> b!520968 m!501935))

(declare-fun m!501937 () Bool)

(assert (=> b!520975 m!501937))

(declare-fun m!501939 () Bool)

(assert (=> b!520976 m!501939))

(assert (=> b!520976 m!501913))

(declare-fun m!501941 () Bool)

(assert (=> b!520964 m!501941))

(declare-fun m!501943 () Bool)

(assert (=> start!47400 m!501943))

(declare-fun m!501945 () Bool)

(assert (=> start!47400 m!501945))

(declare-fun m!501947 () Bool)

(assert (=> b!520967 m!501947))

(declare-fun m!501949 () Bool)

(assert (=> b!520967 m!501949))

(declare-fun m!501951 () Bool)

(assert (=> b!520969 m!501951))

(declare-fun m!501953 () Bool)

(assert (=> b!520963 m!501953))

(check-sat (not b!520968) (not b!520963) (not b!520970) (not b!520971) (not b!520975) (not b!520964) (not b!520967) (not start!47400) (not b!520966) (not b!520969))
(check-sat)
