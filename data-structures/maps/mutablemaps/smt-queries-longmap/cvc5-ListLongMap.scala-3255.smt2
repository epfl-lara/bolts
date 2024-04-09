; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45412 () Bool)

(assert start!45412)

(declare-fun b!498813 () Bool)

(declare-fun res!300989 () Bool)

(declare-fun e!292336 () Bool)

(assert (=> b!498813 (=> (not res!300989) (not e!292336))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!498813 (= res!300989 (validKeyInArray!0 k!2280))))

(declare-fun b!498814 () Bool)

(declare-fun res!300992 () Bool)

(assert (=> b!498814 (=> (not res!300992) (not e!292336))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32197 0))(
  ( (array!32198 (arr!15477 (Array (_ BitVec 32) (_ BitVec 64))) (size!15841 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32197)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!498814 (= res!300992 (and (= (size!15841 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15841 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15841 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!300990 () Bool)

(assert (=> start!45412 (=> (not res!300990) (not e!292336))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45412 (= res!300990 (validMask!0 mask!3524))))

(assert (=> start!45412 e!292336))

(assert (=> start!45412 true))

(declare-fun array_inv!11251 (array!32197) Bool)

(assert (=> start!45412 (array_inv!11251 a!3235)))

(declare-fun e!292339 () Bool)

(declare-fun b!498815 () Bool)

(declare-datatypes ((SeekEntryResult!3951 0))(
  ( (MissingZero!3951 (index!17986 (_ BitVec 32))) (Found!3951 (index!17987 (_ BitVec 32))) (Intermediate!3951 (undefined!4763 Bool) (index!17988 (_ BitVec 32)) (x!47063 (_ BitVec 32))) (Undefined!3951) (MissingVacant!3951 (index!17989 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32197 (_ BitVec 32)) SeekEntryResult!3951)

(assert (=> b!498815 (= e!292339 (= (seekEntryOrOpen!0 (select (arr!15477 a!3235) j!176) a!3235 mask!3524) (Found!3951 j!176)))))

(declare-fun b!498816 () Bool)

(declare-fun res!300994 () Bool)

(declare-fun e!292338 () Bool)

(assert (=> b!498816 (=> (not res!300994) (not e!292338))))

(declare-datatypes ((List!9688 0))(
  ( (Nil!9685) (Cons!9684 (h!10558 (_ BitVec 64)) (t!15924 List!9688)) )
))
(declare-fun arrayNoDuplicates!0 (array!32197 (_ BitVec 32) List!9688) Bool)

(assert (=> b!498816 (= res!300994 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9685))))

(declare-fun b!498817 () Bool)

(declare-fun e!292332 () Bool)

(assert (=> b!498817 (= e!292332 true)))

(declare-fun lt!226126 () array!32197)

(declare-fun lt!226125 () (_ BitVec 64))

(declare-fun lt!226124 () (_ BitVec 32))

(declare-fun lt!226121 () SeekEntryResult!3951)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32197 (_ BitVec 32)) SeekEntryResult!3951)

(assert (=> b!498817 (= lt!226121 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226124 lt!226125 lt!226126 mask!3524))))

(declare-fun b!498818 () Bool)

(declare-fun res!300993 () Bool)

(declare-fun e!292337 () Bool)

(assert (=> b!498818 (=> res!300993 e!292337)))

(declare-fun lt!226128 () SeekEntryResult!3951)

(assert (=> b!498818 (= res!300993 (or (undefined!4763 lt!226128) (not (is-Intermediate!3951 lt!226128))))))

(declare-fun b!498819 () Bool)

(declare-fun res!300986 () Bool)

(assert (=> b!498819 (=> (not res!300986) (not e!292336))))

(declare-fun arrayContainsKey!0 (array!32197 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!498819 (= res!300986 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!498820 () Bool)

(declare-datatypes ((Unit!14894 0))(
  ( (Unit!14895) )
))
(declare-fun e!292334 () Unit!14894)

(declare-fun Unit!14896 () Unit!14894)

(assert (=> b!498820 (= e!292334 Unit!14896)))

(declare-fun lt!226129 () Unit!14894)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32197 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14894)

(assert (=> b!498820 (= lt!226129 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!226124 #b00000000000000000000000000000000 (index!17988 lt!226128) (x!47063 lt!226128) mask!3524))))

(declare-fun res!300988 () Bool)

(assert (=> b!498820 (= res!300988 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226124 lt!226125 lt!226126 mask!3524) (Intermediate!3951 false (index!17988 lt!226128) (x!47063 lt!226128))))))

(declare-fun e!292333 () Bool)

(assert (=> b!498820 (=> (not res!300988) (not e!292333))))

(assert (=> b!498820 e!292333))

(declare-fun b!498821 () Bool)

(declare-fun res!300983 () Bool)

(assert (=> b!498821 (=> (not res!300983) (not e!292338))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32197 (_ BitVec 32)) Bool)

(assert (=> b!498821 (= res!300983 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!498822 () Bool)

(assert (=> b!498822 (= e!292338 (not e!292337))))

(declare-fun res!300984 () Bool)

(assert (=> b!498822 (=> res!300984 e!292337)))

(declare-fun lt!226130 () (_ BitVec 32))

(assert (=> b!498822 (= res!300984 (= lt!226128 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226130 lt!226125 lt!226126 mask!3524)))))

(assert (=> b!498822 (= lt!226128 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226124 (select (arr!15477 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!498822 (= lt!226130 (toIndex!0 lt!226125 mask!3524))))

(assert (=> b!498822 (= lt!226125 (select (store (arr!15477 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!498822 (= lt!226124 (toIndex!0 (select (arr!15477 a!3235) j!176) mask!3524))))

(assert (=> b!498822 (= lt!226126 (array!32198 (store (arr!15477 a!3235) i!1204 k!2280) (size!15841 a!3235)))))

(assert (=> b!498822 e!292339))

(declare-fun res!300987 () Bool)

(assert (=> b!498822 (=> (not res!300987) (not e!292339))))

(assert (=> b!498822 (= res!300987 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!226122 () Unit!14894)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32197 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14894)

(assert (=> b!498822 (= lt!226122 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!498823 () Bool)

(declare-fun res!300991 () Bool)

(assert (=> b!498823 (=> (not res!300991) (not e!292336))))

(assert (=> b!498823 (= res!300991 (validKeyInArray!0 (select (arr!15477 a!3235) j!176)))))

(declare-fun b!498824 () Bool)

(assert (=> b!498824 (= e!292337 e!292332)))

(declare-fun res!300985 () Bool)

(assert (=> b!498824 (=> res!300985 e!292332)))

(assert (=> b!498824 (= res!300985 (or (bvsgt #b00000000000000000000000000000000 (x!47063 lt!226128)) (bvsgt (x!47063 lt!226128) #b01111111111111111111111111111110) (bvslt lt!226124 #b00000000000000000000000000000000) (bvsge lt!226124 (size!15841 a!3235)) (bvslt (index!17988 lt!226128) #b00000000000000000000000000000000) (bvsge (index!17988 lt!226128) (size!15841 a!3235)) (not (= lt!226128 (Intermediate!3951 false (index!17988 lt!226128) (x!47063 lt!226128))))))))

(assert (=> b!498824 (and (or (= (select (arr!15477 a!3235) (index!17988 lt!226128)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15477 a!3235) (index!17988 lt!226128)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15477 a!3235) (index!17988 lt!226128)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15477 a!3235) (index!17988 lt!226128)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!226127 () Unit!14894)

(assert (=> b!498824 (= lt!226127 e!292334)))

(declare-fun c!59192 () Bool)

(assert (=> b!498824 (= c!59192 (= (select (arr!15477 a!3235) (index!17988 lt!226128)) (select (arr!15477 a!3235) j!176)))))

(assert (=> b!498824 (and (bvslt (x!47063 lt!226128) #b01111111111111111111111111111110) (or (= (select (arr!15477 a!3235) (index!17988 lt!226128)) (select (arr!15477 a!3235) j!176)) (= (select (arr!15477 a!3235) (index!17988 lt!226128)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15477 a!3235) (index!17988 lt!226128)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!498825 () Bool)

(assert (=> b!498825 (= e!292336 e!292338)))

(declare-fun res!300995 () Bool)

(assert (=> b!498825 (=> (not res!300995) (not e!292338))))

(declare-fun lt!226123 () SeekEntryResult!3951)

(assert (=> b!498825 (= res!300995 (or (= lt!226123 (MissingZero!3951 i!1204)) (= lt!226123 (MissingVacant!3951 i!1204))))))

(assert (=> b!498825 (= lt!226123 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!498826 () Bool)

(assert (=> b!498826 (= e!292333 false)))

(declare-fun b!498827 () Bool)

(declare-fun Unit!14897 () Unit!14894)

(assert (=> b!498827 (= e!292334 Unit!14897)))

(assert (= (and start!45412 res!300990) b!498814))

(assert (= (and b!498814 res!300992) b!498823))

(assert (= (and b!498823 res!300991) b!498813))

(assert (= (and b!498813 res!300989) b!498819))

(assert (= (and b!498819 res!300986) b!498825))

(assert (= (and b!498825 res!300995) b!498821))

(assert (= (and b!498821 res!300983) b!498816))

(assert (= (and b!498816 res!300994) b!498822))

(assert (= (and b!498822 res!300987) b!498815))

(assert (= (and b!498822 (not res!300984)) b!498818))

(assert (= (and b!498818 (not res!300993)) b!498824))

(assert (= (and b!498824 c!59192) b!498820))

(assert (= (and b!498824 (not c!59192)) b!498827))

(assert (= (and b!498820 res!300988) b!498826))

(assert (= (and b!498824 (not res!300985)) b!498817))

(declare-fun m!480079 () Bool)

(assert (=> b!498820 m!480079))

(declare-fun m!480081 () Bool)

(assert (=> b!498820 m!480081))

(declare-fun m!480083 () Bool)

(assert (=> b!498825 m!480083))

(declare-fun m!480085 () Bool)

(assert (=> b!498819 m!480085))

(declare-fun m!480087 () Bool)

(assert (=> b!498821 m!480087))

(declare-fun m!480089 () Bool)

(assert (=> b!498822 m!480089))

(declare-fun m!480091 () Bool)

(assert (=> b!498822 m!480091))

(declare-fun m!480093 () Bool)

(assert (=> b!498822 m!480093))

(declare-fun m!480095 () Bool)

(assert (=> b!498822 m!480095))

(declare-fun m!480097 () Bool)

(assert (=> b!498822 m!480097))

(declare-fun m!480099 () Bool)

(assert (=> b!498822 m!480099))

(declare-fun m!480101 () Bool)

(assert (=> b!498822 m!480101))

(assert (=> b!498822 m!480097))

(declare-fun m!480103 () Bool)

(assert (=> b!498822 m!480103))

(assert (=> b!498822 m!480097))

(declare-fun m!480105 () Bool)

(assert (=> b!498822 m!480105))

(declare-fun m!480107 () Bool)

(assert (=> start!45412 m!480107))

(declare-fun m!480109 () Bool)

(assert (=> start!45412 m!480109))

(assert (=> b!498815 m!480097))

(assert (=> b!498815 m!480097))

(declare-fun m!480111 () Bool)

(assert (=> b!498815 m!480111))

(declare-fun m!480113 () Bool)

(assert (=> b!498816 m!480113))

(declare-fun m!480115 () Bool)

(assert (=> b!498824 m!480115))

(assert (=> b!498824 m!480097))

(assert (=> b!498823 m!480097))

(assert (=> b!498823 m!480097))

(declare-fun m!480117 () Bool)

(assert (=> b!498823 m!480117))

(assert (=> b!498817 m!480081))

(declare-fun m!480119 () Bool)

(assert (=> b!498813 m!480119))

(push 1)

