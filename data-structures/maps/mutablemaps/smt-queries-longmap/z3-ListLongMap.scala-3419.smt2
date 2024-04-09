; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47448 () Bool)

(assert start!47448)

(declare-fun b!521971 () Bool)

(declare-fun e!304473 () Bool)

(assert (=> b!521971 (= e!304473 false)))

(declare-fun b!521973 () Bool)

(declare-fun res!319821 () Bool)

(declare-fun e!304475 () Bool)

(assert (=> b!521973 (=> (not res!319821) (not e!304475))))

(declare-datatypes ((array!33234 0))(
  ( (array!33235 (arr!15970 (Array (_ BitVec 32) (_ BitVec 64))) (size!16334 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33234)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33234 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!521973 (= res!319821 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!521974 () Bool)

(declare-fun res!319815 () Bool)

(assert (=> b!521974 (=> (not res!319815) (not e!304475))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!521974 (= res!319815 (and (= (size!16334 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16334 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16334 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!521975 () Bool)

(declare-fun res!319819 () Bool)

(declare-fun e!304476 () Bool)

(assert (=> b!521975 (=> (not res!319819) (not e!304476))))

(declare-datatypes ((List!10181 0))(
  ( (Nil!10178) (Cons!10177 (h!11099 (_ BitVec 64)) (t!16417 List!10181)) )
))
(declare-fun arrayNoDuplicates!0 (array!33234 (_ BitVec 32) List!10181) Bool)

(assert (=> b!521975 (= res!319819 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10178))))

(declare-fun b!521976 () Bool)

(assert (=> b!521976 (= e!304475 e!304476)))

(declare-fun res!319824 () Bool)

(assert (=> b!521976 (=> (not res!319824) (not e!304476))))

(declare-datatypes ((SeekEntryResult!4444 0))(
  ( (MissingZero!4444 (index!19979 (_ BitVec 32))) (Found!4444 (index!19980 (_ BitVec 32))) (Intermediate!4444 (undefined!5256 Bool) (index!19981 (_ BitVec 32)) (x!48985 (_ BitVec 32))) (Undefined!4444) (MissingVacant!4444 (index!19982 (_ BitVec 32))) )
))
(declare-fun lt!239389 () SeekEntryResult!4444)

(assert (=> b!521976 (= res!319824 (or (= lt!239389 (MissingZero!4444 i!1204)) (= lt!239389 (MissingVacant!4444 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33234 (_ BitVec 32)) SeekEntryResult!4444)

(assert (=> b!521976 (= lt!239389 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!521977 () Bool)

(declare-fun e!304471 () Bool)

(assert (=> b!521977 (= e!304471 true)))

(declare-fun lt!239394 () SeekEntryResult!4444)

(assert (=> b!521977 (and (or (= (select (arr!15970 a!3235) (index!19981 lt!239394)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15970 a!3235) (index!19981 lt!239394)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15970 a!3235) (index!19981 lt!239394)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15970 a!3235) (index!19981 lt!239394)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!16242 0))(
  ( (Unit!16243) )
))
(declare-fun lt!239396 () Unit!16242)

(declare-fun e!304472 () Unit!16242)

(assert (=> b!521977 (= lt!239396 e!304472)))

(declare-fun c!61379 () Bool)

(assert (=> b!521977 (= c!61379 (= (select (arr!15970 a!3235) (index!19981 lt!239394)) (select (arr!15970 a!3235) j!176)))))

(assert (=> b!521977 (and (bvslt (x!48985 lt!239394) #b01111111111111111111111111111110) (or (= (select (arr!15970 a!3235) (index!19981 lt!239394)) (select (arr!15970 a!3235) j!176)) (= (select (arr!15970 a!3235) (index!19981 lt!239394)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15970 a!3235) (index!19981 lt!239394)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!521978 () Bool)

(declare-fun res!319816 () Bool)

(assert (=> b!521978 (=> (not res!319816) (not e!304475))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!521978 (= res!319816 (validKeyInArray!0 k0!2280))))

(declare-fun b!521979 () Bool)

(declare-fun Unit!16244 () Unit!16242)

(assert (=> b!521979 (= e!304472 Unit!16244)))

(declare-fun b!521980 () Bool)

(declare-fun res!319822 () Bool)

(assert (=> b!521980 (=> (not res!319822) (not e!304476))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33234 (_ BitVec 32)) Bool)

(assert (=> b!521980 (= res!319822 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!319825 () Bool)

(assert (=> start!47448 (=> (not res!319825) (not e!304475))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47448 (= res!319825 (validMask!0 mask!3524))))

(assert (=> start!47448 e!304475))

(assert (=> start!47448 true))

(declare-fun array_inv!11744 (array!33234) Bool)

(assert (=> start!47448 (array_inv!11744 a!3235)))

(declare-fun b!521972 () Bool)

(declare-fun res!319817 () Bool)

(assert (=> b!521972 (=> res!319817 e!304471)))

(get-info :version)

(assert (=> b!521972 (= res!319817 (or (undefined!5256 lt!239394) (not ((_ is Intermediate!4444) lt!239394))))))

(declare-fun b!521981 () Bool)

(declare-fun Unit!16245 () Unit!16242)

(assert (=> b!521981 (= e!304472 Unit!16245)))

(declare-fun lt!239390 () Unit!16242)

(declare-fun lt!239391 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33234 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16242)

(assert (=> b!521981 (= lt!239390 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!239391 #b00000000000000000000000000000000 (index!19981 lt!239394) (x!48985 lt!239394) mask!3524))))

(declare-fun lt!239395 () array!33234)

(declare-fun res!319820 () Bool)

(declare-fun lt!239392 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33234 (_ BitVec 32)) SeekEntryResult!4444)

(assert (=> b!521981 (= res!319820 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239391 lt!239392 lt!239395 mask!3524) (Intermediate!4444 false (index!19981 lt!239394) (x!48985 lt!239394))))))

(assert (=> b!521981 (=> (not res!319820) (not e!304473))))

(assert (=> b!521981 e!304473))

(declare-fun b!521982 () Bool)

(declare-fun e!304474 () Bool)

(assert (=> b!521982 (= e!304474 (= (seekEntryOrOpen!0 (select (arr!15970 a!3235) j!176) a!3235 mask!3524) (Found!4444 j!176)))))

(declare-fun b!521983 () Bool)

(declare-fun res!319818 () Bool)

(assert (=> b!521983 (=> (not res!319818) (not e!304475))))

(assert (=> b!521983 (= res!319818 (validKeyInArray!0 (select (arr!15970 a!3235) j!176)))))

(declare-fun b!521984 () Bool)

(assert (=> b!521984 (= e!304476 (not e!304471))))

(declare-fun res!319823 () Bool)

(assert (=> b!521984 (=> res!319823 e!304471)))

(declare-fun lt!239393 () (_ BitVec 32))

(assert (=> b!521984 (= res!319823 (= lt!239394 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239393 lt!239392 lt!239395 mask!3524)))))

(assert (=> b!521984 (= lt!239394 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239391 (select (arr!15970 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!521984 (= lt!239393 (toIndex!0 lt!239392 mask!3524))))

(assert (=> b!521984 (= lt!239392 (select (store (arr!15970 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!521984 (= lt!239391 (toIndex!0 (select (arr!15970 a!3235) j!176) mask!3524))))

(assert (=> b!521984 (= lt!239395 (array!33235 (store (arr!15970 a!3235) i!1204 k0!2280) (size!16334 a!3235)))))

(assert (=> b!521984 e!304474))

(declare-fun res!319826 () Bool)

(assert (=> b!521984 (=> (not res!319826) (not e!304474))))

(assert (=> b!521984 (= res!319826 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!239388 () Unit!16242)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33234 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16242)

(assert (=> b!521984 (= lt!239388 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!47448 res!319825) b!521974))

(assert (= (and b!521974 res!319815) b!521983))

(assert (= (and b!521983 res!319818) b!521978))

(assert (= (and b!521978 res!319816) b!521973))

(assert (= (and b!521973 res!319821) b!521976))

(assert (= (and b!521976 res!319824) b!521980))

(assert (= (and b!521980 res!319822) b!521975))

(assert (= (and b!521975 res!319819) b!521984))

(assert (= (and b!521984 res!319826) b!521982))

(assert (= (and b!521984 (not res!319823)) b!521972))

(assert (= (and b!521972 (not res!319817)) b!521977))

(assert (= (and b!521977 c!61379) b!521981))

(assert (= (and b!521977 (not c!61379)) b!521979))

(assert (= (and b!521981 res!319820) b!521971))

(declare-fun m!502921 () Bool)

(assert (=> b!521978 m!502921))

(declare-fun m!502923 () Bool)

(assert (=> b!521983 m!502923))

(assert (=> b!521983 m!502923))

(declare-fun m!502925 () Bool)

(assert (=> b!521983 m!502925))

(declare-fun m!502927 () Bool)

(assert (=> b!521973 m!502927))

(declare-fun m!502929 () Bool)

(assert (=> b!521981 m!502929))

(declare-fun m!502931 () Bool)

(assert (=> b!521981 m!502931))

(declare-fun m!502933 () Bool)

(assert (=> b!521984 m!502933))

(declare-fun m!502935 () Bool)

(assert (=> b!521984 m!502935))

(declare-fun m!502937 () Bool)

(assert (=> b!521984 m!502937))

(assert (=> b!521984 m!502923))

(declare-fun m!502939 () Bool)

(assert (=> b!521984 m!502939))

(assert (=> b!521984 m!502923))

(declare-fun m!502941 () Bool)

(assert (=> b!521984 m!502941))

(declare-fun m!502943 () Bool)

(assert (=> b!521984 m!502943))

(assert (=> b!521984 m!502923))

(declare-fun m!502945 () Bool)

(assert (=> b!521984 m!502945))

(declare-fun m!502947 () Bool)

(assert (=> b!521984 m!502947))

(declare-fun m!502949 () Bool)

(assert (=> b!521976 m!502949))

(declare-fun m!502951 () Bool)

(assert (=> b!521980 m!502951))

(assert (=> b!521982 m!502923))

(assert (=> b!521982 m!502923))

(declare-fun m!502953 () Bool)

(assert (=> b!521982 m!502953))

(declare-fun m!502955 () Bool)

(assert (=> b!521977 m!502955))

(assert (=> b!521977 m!502923))

(declare-fun m!502957 () Bool)

(assert (=> b!521975 m!502957))

(declare-fun m!502959 () Bool)

(assert (=> start!47448 m!502959))

(declare-fun m!502961 () Bool)

(assert (=> start!47448 m!502961))

(check-sat (not b!521978) (not b!521976) (not b!521981) (not start!47448) (not b!521982) (not b!521975) (not b!521973) (not b!521983) (not b!521980) (not b!521984))
(check-sat)
