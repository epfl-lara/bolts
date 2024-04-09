; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47796 () Bool)

(assert start!47796)

(declare-fun b!526111 () Bool)

(declare-fun res!322906 () Bool)

(declare-fun e!306687 () Bool)

(assert (=> b!526111 (=> (not res!322906) (not e!306687))))

(declare-datatypes ((array!33393 0))(
  ( (array!33394 (arr!16045 (Array (_ BitVec 32) (_ BitVec 64))) (size!16409 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33393)

(declare-datatypes ((List!10256 0))(
  ( (Nil!10253) (Cons!10252 (h!11183 (_ BitVec 64)) (t!16492 List!10256)) )
))
(declare-fun arrayNoDuplicates!0 (array!33393 (_ BitVec 32) List!10256) Bool)

(assert (=> b!526111 (= res!322906 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10253))))

(declare-fun b!526112 () Bool)

(declare-fun res!322904 () Bool)

(declare-fun e!306691 () Bool)

(assert (=> b!526112 (=> res!322904 e!306691)))

(declare-datatypes ((SeekEntryResult!4519 0))(
  ( (MissingZero!4519 (index!20288 (_ BitVec 32))) (Found!4519 (index!20289 (_ BitVec 32))) (Intermediate!4519 (undefined!5331 Bool) (index!20290 (_ BitVec 32)) (x!49287 (_ BitVec 32))) (Undefined!4519) (MissingVacant!4519 (index!20291 (_ BitVec 32))) )
))
(declare-fun lt!241979 () SeekEntryResult!4519)

(get-info :version)

(assert (=> b!526112 (= res!322904 (or (undefined!5331 lt!241979) (not ((_ is Intermediate!4519) lt!241979))))))

(declare-fun b!526113 () Bool)

(declare-fun res!322910 () Bool)

(declare-fun e!306685 () Bool)

(assert (=> b!526113 (=> (not res!322910) (not e!306685))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33393 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!526113 (= res!322910 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!322903 () Bool)

(assert (=> start!47796 (=> (not res!322903) (not e!306685))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47796 (= res!322903 (validMask!0 mask!3524))))

(assert (=> start!47796 e!306685))

(assert (=> start!47796 true))

(declare-fun array_inv!11819 (array!33393) Bool)

(assert (=> start!47796 (array_inv!11819 a!3235)))

(declare-fun b!526114 () Bool)

(declare-fun res!322905 () Bool)

(assert (=> b!526114 (=> (not res!322905) (not e!306685))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!526114 (= res!322905 (validKeyInArray!0 k0!2280))))

(declare-fun b!526115 () Bool)

(assert (=> b!526115 (= e!306691 true)))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!526115 (= (index!20290 lt!241979) i!1204)))

(declare-datatypes ((Unit!16542 0))(
  ( (Unit!16543) )
))
(declare-fun lt!241980 () Unit!16542)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!241978 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33393 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16542)

(assert (=> b!526115 (= lt!241980 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!241978 #b00000000000000000000000000000000 (index!20290 lt!241979) (x!49287 lt!241979) mask!3524))))

(assert (=> b!526115 (and (or (= (select (arr!16045 a!3235) (index!20290 lt!241979)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16045 a!3235) (index!20290 lt!241979)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16045 a!3235) (index!20290 lt!241979)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16045 a!3235) (index!20290 lt!241979)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241976 () Unit!16542)

(declare-fun e!306688 () Unit!16542)

(assert (=> b!526115 (= lt!241976 e!306688)))

(declare-fun c!61910 () Bool)

(assert (=> b!526115 (= c!61910 (= (select (arr!16045 a!3235) (index!20290 lt!241979)) (select (arr!16045 a!3235) j!176)))))

(assert (=> b!526115 (and (bvslt (x!49287 lt!241979) #b01111111111111111111111111111110) (or (= (select (arr!16045 a!3235) (index!20290 lt!241979)) (select (arr!16045 a!3235) j!176)) (= (select (arr!16045 a!3235) (index!20290 lt!241979)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16045 a!3235) (index!20290 lt!241979)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!526116 () Bool)

(declare-fun Unit!16544 () Unit!16542)

(assert (=> b!526116 (= e!306688 Unit!16544)))

(declare-fun lt!241985 () Unit!16542)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33393 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16542)

(assert (=> b!526116 (= lt!241985 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!241978 #b00000000000000000000000000000000 (index!20290 lt!241979) (x!49287 lt!241979) mask!3524))))

(declare-fun lt!241977 () array!33393)

(declare-fun res!322907 () Bool)

(declare-fun lt!241982 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33393 (_ BitVec 32)) SeekEntryResult!4519)

(assert (=> b!526116 (= res!322907 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241978 lt!241982 lt!241977 mask!3524) (Intermediate!4519 false (index!20290 lt!241979) (x!49287 lt!241979))))))

(declare-fun e!306689 () Bool)

(assert (=> b!526116 (=> (not res!322907) (not e!306689))))

(assert (=> b!526116 e!306689))

(declare-fun b!526117 () Bool)

(assert (=> b!526117 (= e!306689 false)))

(declare-fun b!526118 () Bool)

(assert (=> b!526118 (= e!306687 (not e!306691))))

(declare-fun res!322911 () Bool)

(assert (=> b!526118 (=> res!322911 e!306691)))

(declare-fun lt!241983 () (_ BitVec 32))

(assert (=> b!526118 (= res!322911 (= lt!241979 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241983 lt!241982 lt!241977 mask!3524)))))

(assert (=> b!526118 (= lt!241979 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241978 (select (arr!16045 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!526118 (= lt!241983 (toIndex!0 lt!241982 mask!3524))))

(assert (=> b!526118 (= lt!241982 (select (store (arr!16045 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!526118 (= lt!241978 (toIndex!0 (select (arr!16045 a!3235) j!176) mask!3524))))

(assert (=> b!526118 (= lt!241977 (array!33394 (store (arr!16045 a!3235) i!1204 k0!2280) (size!16409 a!3235)))))

(declare-fun e!306686 () Bool)

(assert (=> b!526118 e!306686))

(declare-fun res!322912 () Bool)

(assert (=> b!526118 (=> (not res!322912) (not e!306686))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33393 (_ BitVec 32)) Bool)

(assert (=> b!526118 (= res!322912 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!241984 () Unit!16542)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33393 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16542)

(assert (=> b!526118 (= lt!241984 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!526119 () Bool)

(assert (=> b!526119 (= e!306685 e!306687)))

(declare-fun res!322909 () Bool)

(assert (=> b!526119 (=> (not res!322909) (not e!306687))))

(declare-fun lt!241981 () SeekEntryResult!4519)

(assert (=> b!526119 (= res!322909 (or (= lt!241981 (MissingZero!4519 i!1204)) (= lt!241981 (MissingVacant!4519 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33393 (_ BitVec 32)) SeekEntryResult!4519)

(assert (=> b!526119 (= lt!241981 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!526120 () Bool)

(declare-fun res!322908 () Bool)

(assert (=> b!526120 (=> (not res!322908) (not e!306687))))

(assert (=> b!526120 (= res!322908 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!526121 () Bool)

(declare-fun Unit!16545 () Unit!16542)

(assert (=> b!526121 (= e!306688 Unit!16545)))

(declare-fun b!526122 () Bool)

(declare-fun res!322913 () Bool)

(assert (=> b!526122 (=> (not res!322913) (not e!306685))))

(assert (=> b!526122 (= res!322913 (validKeyInArray!0 (select (arr!16045 a!3235) j!176)))))

(declare-fun b!526123 () Bool)

(assert (=> b!526123 (= e!306686 (= (seekEntryOrOpen!0 (select (arr!16045 a!3235) j!176) a!3235 mask!3524) (Found!4519 j!176)))))

(declare-fun b!526124 () Bool)

(declare-fun res!322902 () Bool)

(assert (=> b!526124 (=> (not res!322902) (not e!306685))))

(assert (=> b!526124 (= res!322902 (and (= (size!16409 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16409 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16409 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!47796 res!322903) b!526124))

(assert (= (and b!526124 res!322902) b!526122))

(assert (= (and b!526122 res!322913) b!526114))

(assert (= (and b!526114 res!322905) b!526113))

(assert (= (and b!526113 res!322910) b!526119))

(assert (= (and b!526119 res!322909) b!526120))

(assert (= (and b!526120 res!322908) b!526111))

(assert (= (and b!526111 res!322906) b!526118))

(assert (= (and b!526118 res!322912) b!526123))

(assert (= (and b!526118 (not res!322911)) b!526112))

(assert (= (and b!526112 (not res!322904)) b!526115))

(assert (= (and b!526115 c!61910) b!526116))

(assert (= (and b!526115 (not c!61910)) b!526121))

(assert (= (and b!526116 res!322907) b!526117))

(declare-fun m!506847 () Bool)

(assert (=> b!526119 m!506847))

(declare-fun m!506849 () Bool)

(assert (=> b!526114 m!506849))

(declare-fun m!506851 () Bool)

(assert (=> b!526111 m!506851))

(declare-fun m!506853 () Bool)

(assert (=> b!526120 m!506853))

(declare-fun m!506855 () Bool)

(assert (=> b!526116 m!506855))

(declare-fun m!506857 () Bool)

(assert (=> b!526116 m!506857))

(declare-fun m!506859 () Bool)

(assert (=> b!526122 m!506859))

(assert (=> b!526122 m!506859))

(declare-fun m!506861 () Bool)

(assert (=> b!526122 m!506861))

(assert (=> b!526123 m!506859))

(assert (=> b!526123 m!506859))

(declare-fun m!506863 () Bool)

(assert (=> b!526123 m!506863))

(declare-fun m!506865 () Bool)

(assert (=> b!526115 m!506865))

(declare-fun m!506867 () Bool)

(assert (=> b!526115 m!506867))

(assert (=> b!526115 m!506859))

(declare-fun m!506869 () Bool)

(assert (=> b!526113 m!506869))

(assert (=> b!526118 m!506859))

(declare-fun m!506871 () Bool)

(assert (=> b!526118 m!506871))

(declare-fun m!506873 () Bool)

(assert (=> b!526118 m!506873))

(declare-fun m!506875 () Bool)

(assert (=> b!526118 m!506875))

(declare-fun m!506877 () Bool)

(assert (=> b!526118 m!506877))

(assert (=> b!526118 m!506859))

(declare-fun m!506879 () Bool)

(assert (=> b!526118 m!506879))

(declare-fun m!506881 () Bool)

(assert (=> b!526118 m!506881))

(declare-fun m!506883 () Bool)

(assert (=> b!526118 m!506883))

(declare-fun m!506885 () Bool)

(assert (=> b!526118 m!506885))

(assert (=> b!526118 m!506859))

(declare-fun m!506887 () Bool)

(assert (=> start!47796 m!506887))

(declare-fun m!506889 () Bool)

(assert (=> start!47796 m!506889))

(check-sat (not start!47796) (not b!526114) (not b!526118) (not b!526120) (not b!526113) (not b!526116) (not b!526115) (not b!526122) (not b!526119) (not b!526123) (not b!526111))
(check-sat)
