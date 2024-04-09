; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47742 () Bool)

(assert start!47742)

(declare-fun b!524977 () Bool)

(declare-fun res!321932 () Bool)

(declare-fun e!306118 () Bool)

(assert (=> b!524977 (=> (not res!321932) (not e!306118))))

(declare-datatypes ((array!33339 0))(
  ( (array!33340 (arr!16018 (Array (_ BitVec 32) (_ BitVec 64))) (size!16382 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33339)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33339 (_ BitVec 32)) Bool)

(assert (=> b!524977 (= res!321932 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!524978 () Bool)

(declare-fun e!306123 () Bool)

(assert (=> b!524978 (= e!306123 e!306118)))

(declare-fun res!321934 () Bool)

(assert (=> b!524978 (=> (not res!321934) (not e!306118))))

(declare-datatypes ((SeekEntryResult!4492 0))(
  ( (MissingZero!4492 (index!20180 (_ BitVec 32))) (Found!4492 (index!20181 (_ BitVec 32))) (Intermediate!4492 (undefined!5304 Bool) (index!20182 (_ BitVec 32)) (x!49188 (_ BitVec 32))) (Undefined!4492) (MissingVacant!4492 (index!20183 (_ BitVec 32))) )
))
(declare-fun lt!241169 () SeekEntryResult!4492)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!524978 (= res!321934 (or (= lt!241169 (MissingZero!4492 i!1204)) (= lt!241169 (MissingVacant!4492 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33339 (_ BitVec 32)) SeekEntryResult!4492)

(assert (=> b!524978 (= lt!241169 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!524979 () Bool)

(declare-fun res!321939 () Bool)

(assert (=> b!524979 (=> (not res!321939) (not e!306123))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!524979 (= res!321939 (and (= (size!16382 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16382 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16382 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!524980 () Bool)

(declare-datatypes ((Unit!16434 0))(
  ( (Unit!16435) )
))
(declare-fun e!306120 () Unit!16434)

(declare-fun Unit!16436 () Unit!16434)

(assert (=> b!524980 (= e!306120 Unit!16436)))

(declare-fun lt!241170 () Unit!16434)

(declare-fun lt!241175 () SeekEntryResult!4492)

(declare-fun lt!241166 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33339 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16434)

(assert (=> b!524980 (= lt!241170 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!241166 #b00000000000000000000000000000000 (index!20182 lt!241175) (x!49188 lt!241175) mask!3524))))

(declare-fun lt!241171 () (_ BitVec 64))

(declare-fun lt!241173 () array!33339)

(declare-fun res!321930 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33339 (_ BitVec 32)) SeekEntryResult!4492)

(assert (=> b!524980 (= res!321930 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241166 lt!241171 lt!241173 mask!3524) (Intermediate!4492 false (index!20182 lt!241175) (x!49188 lt!241175))))))

(declare-fun e!306119 () Bool)

(assert (=> b!524980 (=> (not res!321930) (not e!306119))))

(assert (=> b!524980 e!306119))

(declare-fun b!524981 () Bool)

(declare-fun res!321931 () Bool)

(declare-fun e!306122 () Bool)

(assert (=> b!524981 (=> res!321931 e!306122)))

(get-info :version)

(assert (=> b!524981 (= res!321931 (or (undefined!5304 lt!241175) (not ((_ is Intermediate!4492) lt!241175))))))

(declare-fun res!321937 () Bool)

(assert (=> start!47742 (=> (not res!321937) (not e!306123))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47742 (= res!321937 (validMask!0 mask!3524))))

(assert (=> start!47742 e!306123))

(assert (=> start!47742 true))

(declare-fun array_inv!11792 (array!33339) Bool)

(assert (=> start!47742 (array_inv!11792 a!3235)))

(declare-fun b!524982 () Bool)

(declare-fun res!321935 () Bool)

(assert (=> b!524982 (=> (not res!321935) (not e!306118))))

(declare-datatypes ((List!10229 0))(
  ( (Nil!10226) (Cons!10225 (h!11156 (_ BitVec 64)) (t!16465 List!10229)) )
))
(declare-fun arrayNoDuplicates!0 (array!33339 (_ BitVec 32) List!10229) Bool)

(assert (=> b!524982 (= res!321935 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10226))))

(declare-fun b!524983 () Bool)

(declare-fun e!306121 () Bool)

(assert (=> b!524983 (= e!306121 (= (seekEntryOrOpen!0 (select (arr!16018 a!3235) j!176) a!3235 mask!3524) (Found!4492 j!176)))))

(declare-fun b!524984 () Bool)

(declare-fun Unit!16437 () Unit!16434)

(assert (=> b!524984 (= e!306120 Unit!16437)))

(declare-fun b!524985 () Bool)

(declare-fun res!321936 () Bool)

(assert (=> b!524985 (=> (not res!321936) (not e!306123))))

(declare-fun arrayContainsKey!0 (array!33339 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!524985 (= res!321936 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!524986 () Bool)

(assert (=> b!524986 (= e!306122 true)))

(assert (=> b!524986 (= (index!20182 lt!241175) i!1204)))

(declare-fun lt!241172 () Unit!16434)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33339 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16434)

(assert (=> b!524986 (= lt!241172 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!241166 #b00000000000000000000000000000000 (index!20182 lt!241175) (x!49188 lt!241175) mask!3524))))

(assert (=> b!524986 (and (or (= (select (arr!16018 a!3235) (index!20182 lt!241175)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16018 a!3235) (index!20182 lt!241175)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16018 a!3235) (index!20182 lt!241175)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16018 a!3235) (index!20182 lt!241175)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241168 () Unit!16434)

(assert (=> b!524986 (= lt!241168 e!306120)))

(declare-fun c!61829 () Bool)

(assert (=> b!524986 (= c!61829 (= (select (arr!16018 a!3235) (index!20182 lt!241175)) (select (arr!16018 a!3235) j!176)))))

(assert (=> b!524986 (and (bvslt (x!49188 lt!241175) #b01111111111111111111111111111110) (or (= (select (arr!16018 a!3235) (index!20182 lt!241175)) (select (arr!16018 a!3235) j!176)) (= (select (arr!16018 a!3235) (index!20182 lt!241175)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16018 a!3235) (index!20182 lt!241175)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!524987 () Bool)

(assert (=> b!524987 (= e!306118 (not e!306122))))

(declare-fun res!321941 () Bool)

(assert (=> b!524987 (=> res!321941 e!306122)))

(declare-fun lt!241167 () (_ BitVec 32))

(assert (=> b!524987 (= res!321941 (= lt!241175 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241167 lt!241171 lt!241173 mask!3524)))))

(assert (=> b!524987 (= lt!241175 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241166 (select (arr!16018 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!524987 (= lt!241167 (toIndex!0 lt!241171 mask!3524))))

(assert (=> b!524987 (= lt!241171 (select (store (arr!16018 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!524987 (= lt!241166 (toIndex!0 (select (arr!16018 a!3235) j!176) mask!3524))))

(assert (=> b!524987 (= lt!241173 (array!33340 (store (arr!16018 a!3235) i!1204 k0!2280) (size!16382 a!3235)))))

(assert (=> b!524987 e!306121))

(declare-fun res!321938 () Bool)

(assert (=> b!524987 (=> (not res!321938) (not e!306121))))

(assert (=> b!524987 (= res!321938 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!241174 () Unit!16434)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33339 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16434)

(assert (=> b!524987 (= lt!241174 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!524988 () Bool)

(declare-fun res!321933 () Bool)

(assert (=> b!524988 (=> (not res!321933) (not e!306123))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!524988 (= res!321933 (validKeyInArray!0 k0!2280))))

(declare-fun b!524989 () Bool)

(assert (=> b!524989 (= e!306119 false)))

(declare-fun b!524990 () Bool)

(declare-fun res!321940 () Bool)

(assert (=> b!524990 (=> (not res!321940) (not e!306123))))

(assert (=> b!524990 (= res!321940 (validKeyInArray!0 (select (arr!16018 a!3235) j!176)))))

(assert (= (and start!47742 res!321937) b!524979))

(assert (= (and b!524979 res!321939) b!524990))

(assert (= (and b!524990 res!321940) b!524988))

(assert (= (and b!524988 res!321933) b!524985))

(assert (= (and b!524985 res!321936) b!524978))

(assert (= (and b!524978 res!321934) b!524977))

(assert (= (and b!524977 res!321932) b!524982))

(assert (= (and b!524982 res!321935) b!524987))

(assert (= (and b!524987 res!321938) b!524983))

(assert (= (and b!524987 (not res!321941)) b!524981))

(assert (= (and b!524981 (not res!321931)) b!524986))

(assert (= (and b!524986 c!61829) b!524980))

(assert (= (and b!524986 (not c!61829)) b!524984))

(assert (= (and b!524980 res!321930) b!524989))

(declare-fun m!505659 () Bool)

(assert (=> b!524990 m!505659))

(assert (=> b!524990 m!505659))

(declare-fun m!505661 () Bool)

(assert (=> b!524990 m!505661))

(declare-fun m!505663 () Bool)

(assert (=> b!524982 m!505663))

(declare-fun m!505665 () Bool)

(assert (=> start!47742 m!505665))

(declare-fun m!505667 () Bool)

(assert (=> start!47742 m!505667))

(declare-fun m!505669 () Bool)

(assert (=> b!524977 m!505669))

(declare-fun m!505671 () Bool)

(assert (=> b!524978 m!505671))

(declare-fun m!505673 () Bool)

(assert (=> b!524988 m!505673))

(declare-fun m!505675 () Bool)

(assert (=> b!524987 m!505675))

(declare-fun m!505677 () Bool)

(assert (=> b!524987 m!505677))

(declare-fun m!505679 () Bool)

(assert (=> b!524987 m!505679))

(declare-fun m!505681 () Bool)

(assert (=> b!524987 m!505681))

(assert (=> b!524987 m!505659))

(declare-fun m!505683 () Bool)

(assert (=> b!524987 m!505683))

(assert (=> b!524987 m!505659))

(declare-fun m!505685 () Bool)

(assert (=> b!524987 m!505685))

(declare-fun m!505687 () Bool)

(assert (=> b!524987 m!505687))

(assert (=> b!524987 m!505659))

(declare-fun m!505689 () Bool)

(assert (=> b!524987 m!505689))

(declare-fun m!505691 () Bool)

(assert (=> b!524985 m!505691))

(assert (=> b!524983 m!505659))

(assert (=> b!524983 m!505659))

(declare-fun m!505693 () Bool)

(assert (=> b!524983 m!505693))

(declare-fun m!505695 () Bool)

(assert (=> b!524986 m!505695))

(declare-fun m!505697 () Bool)

(assert (=> b!524986 m!505697))

(assert (=> b!524986 m!505659))

(declare-fun m!505699 () Bool)

(assert (=> b!524980 m!505699))

(declare-fun m!505701 () Bool)

(assert (=> b!524980 m!505701))

(check-sat (not b!524980) (not b!524986) (not start!47742) (not b!524977) (not b!524982) (not b!524990) (not b!524987) (not b!524978) (not b!524988) (not b!524983) (not b!524985))
(check-sat)
