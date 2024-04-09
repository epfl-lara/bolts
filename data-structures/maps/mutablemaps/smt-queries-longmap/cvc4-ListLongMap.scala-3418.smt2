; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47444 () Bool)

(assert start!47444)

(declare-fun b!521887 () Bool)

(declare-fun res!319743 () Bool)

(declare-fun e!304430 () Bool)

(assert (=> b!521887 (=> res!319743 e!304430)))

(declare-datatypes ((SeekEntryResult!4442 0))(
  ( (MissingZero!4442 (index!19971 (_ BitVec 32))) (Found!4442 (index!19972 (_ BitVec 32))) (Intermediate!4442 (undefined!5254 Bool) (index!19973 (_ BitVec 32)) (x!48975 (_ BitVec 32))) (Undefined!4442) (MissingVacant!4442 (index!19974 (_ BitVec 32))) )
))
(declare-fun lt!239337 () SeekEntryResult!4442)

(assert (=> b!521887 (= res!319743 (or (undefined!5254 lt!239337) (not (is-Intermediate!4442 lt!239337))))))

(declare-fun res!319752 () Bool)

(declare-fun e!304429 () Bool)

(assert (=> start!47444 (=> (not res!319752) (not e!304429))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47444 (= res!319752 (validMask!0 mask!3524))))

(assert (=> start!47444 e!304429))

(assert (=> start!47444 true))

(declare-datatypes ((array!33230 0))(
  ( (array!33231 (arr!15968 (Array (_ BitVec 32) (_ BitVec 64))) (size!16332 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33230)

(declare-fun array_inv!11742 (array!33230) Bool)

(assert (=> start!47444 (array_inv!11742 a!3235)))

(declare-fun e!304431 () Bool)

(declare-fun b!521888 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33230 (_ BitVec 32)) SeekEntryResult!4442)

(assert (=> b!521888 (= e!304431 (= (seekEntryOrOpen!0 (select (arr!15968 a!3235) j!176) a!3235 mask!3524) (Found!4442 j!176)))))

(declare-fun b!521889 () Bool)

(assert (=> b!521889 (= e!304430 true)))

(assert (=> b!521889 (and (or (= (select (arr!15968 a!3235) (index!19973 lt!239337)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15968 a!3235) (index!19973 lt!239337)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15968 a!3235) (index!19973 lt!239337)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15968 a!3235) (index!19973 lt!239337)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!16234 0))(
  ( (Unit!16235) )
))
(declare-fun lt!239338 () Unit!16234)

(declare-fun e!304435 () Unit!16234)

(assert (=> b!521889 (= lt!239338 e!304435)))

(declare-fun c!61373 () Bool)

(assert (=> b!521889 (= c!61373 (= (select (arr!15968 a!3235) (index!19973 lt!239337)) (select (arr!15968 a!3235) j!176)))))

(assert (=> b!521889 (and (bvslt (x!48975 lt!239337) #b01111111111111111111111111111110) (or (= (select (arr!15968 a!3235) (index!19973 lt!239337)) (select (arr!15968 a!3235) j!176)) (= (select (arr!15968 a!3235) (index!19973 lt!239337)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15968 a!3235) (index!19973 lt!239337)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!521890 () Bool)

(declare-fun res!319744 () Bool)

(assert (=> b!521890 (=> (not res!319744) (not e!304429))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!521890 (= res!319744 (and (= (size!16332 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16332 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16332 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!521891 () Bool)

(declare-fun Unit!16236 () Unit!16234)

(assert (=> b!521891 (= e!304435 Unit!16236)))

(declare-fun b!521892 () Bool)

(declare-fun res!319748 () Bool)

(assert (=> b!521892 (=> (not res!319748) (not e!304429))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33230 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!521892 (= res!319748 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!521893 () Bool)

(declare-fun e!304434 () Bool)

(assert (=> b!521893 (= e!304434 false)))

(declare-fun b!521894 () Bool)

(declare-fun res!319747 () Bool)

(assert (=> b!521894 (=> (not res!319747) (not e!304429))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!521894 (= res!319747 (validKeyInArray!0 k!2280))))

(declare-fun b!521895 () Bool)

(declare-fun e!304432 () Bool)

(assert (=> b!521895 (= e!304432 (not e!304430))))

(declare-fun res!319749 () Bool)

(assert (=> b!521895 (=> res!319749 e!304430)))

(declare-fun lt!239339 () (_ BitVec 64))

(declare-fun lt!239336 () (_ BitVec 32))

(declare-fun lt!239334 () array!33230)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33230 (_ BitVec 32)) SeekEntryResult!4442)

(assert (=> b!521895 (= res!319749 (= lt!239337 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239336 lt!239339 lt!239334 mask!3524)))))

(declare-fun lt!239340 () (_ BitVec 32))

(assert (=> b!521895 (= lt!239337 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239340 (select (arr!15968 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!521895 (= lt!239336 (toIndex!0 lt!239339 mask!3524))))

(assert (=> b!521895 (= lt!239339 (select (store (arr!15968 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!521895 (= lt!239340 (toIndex!0 (select (arr!15968 a!3235) j!176) mask!3524))))

(assert (=> b!521895 (= lt!239334 (array!33231 (store (arr!15968 a!3235) i!1204 k!2280) (size!16332 a!3235)))))

(assert (=> b!521895 e!304431))

(declare-fun res!319753 () Bool)

(assert (=> b!521895 (=> (not res!319753) (not e!304431))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33230 (_ BitVec 32)) Bool)

(assert (=> b!521895 (= res!319753 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!239335 () Unit!16234)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33230 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16234)

(assert (=> b!521895 (= lt!239335 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!521896 () Bool)

(declare-fun res!319754 () Bool)

(assert (=> b!521896 (=> (not res!319754) (not e!304429))))

(assert (=> b!521896 (= res!319754 (validKeyInArray!0 (select (arr!15968 a!3235) j!176)))))

(declare-fun b!521897 () Bool)

(declare-fun Unit!16237 () Unit!16234)

(assert (=> b!521897 (= e!304435 Unit!16237)))

(declare-fun lt!239341 () Unit!16234)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33230 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16234)

(assert (=> b!521897 (= lt!239341 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!239340 #b00000000000000000000000000000000 (index!19973 lt!239337) (x!48975 lt!239337) mask!3524))))

(declare-fun res!319745 () Bool)

(assert (=> b!521897 (= res!319745 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239340 lt!239339 lt!239334 mask!3524) (Intermediate!4442 false (index!19973 lt!239337) (x!48975 lt!239337))))))

(assert (=> b!521897 (=> (not res!319745) (not e!304434))))

(assert (=> b!521897 e!304434))

(declare-fun b!521898 () Bool)

(declare-fun res!319746 () Bool)

(assert (=> b!521898 (=> (not res!319746) (not e!304432))))

(declare-datatypes ((List!10179 0))(
  ( (Nil!10176) (Cons!10175 (h!11097 (_ BitVec 64)) (t!16415 List!10179)) )
))
(declare-fun arrayNoDuplicates!0 (array!33230 (_ BitVec 32) List!10179) Bool)

(assert (=> b!521898 (= res!319746 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10176))))

(declare-fun b!521899 () Bool)

(assert (=> b!521899 (= e!304429 e!304432)))

(declare-fun res!319750 () Bool)

(assert (=> b!521899 (=> (not res!319750) (not e!304432))))

(declare-fun lt!239342 () SeekEntryResult!4442)

(assert (=> b!521899 (= res!319750 (or (= lt!239342 (MissingZero!4442 i!1204)) (= lt!239342 (MissingVacant!4442 i!1204))))))

(assert (=> b!521899 (= lt!239342 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!521900 () Bool)

(declare-fun res!319751 () Bool)

(assert (=> b!521900 (=> (not res!319751) (not e!304432))))

(assert (=> b!521900 (= res!319751 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!47444 res!319752) b!521890))

(assert (= (and b!521890 res!319744) b!521896))

(assert (= (and b!521896 res!319754) b!521894))

(assert (= (and b!521894 res!319747) b!521892))

(assert (= (and b!521892 res!319748) b!521899))

(assert (= (and b!521899 res!319750) b!521900))

(assert (= (and b!521900 res!319751) b!521898))

(assert (= (and b!521898 res!319746) b!521895))

(assert (= (and b!521895 res!319753) b!521888))

(assert (= (and b!521895 (not res!319749)) b!521887))

(assert (= (and b!521887 (not res!319743)) b!521889))

(assert (= (and b!521889 c!61373) b!521897))

(assert (= (and b!521889 (not c!61373)) b!521891))

(assert (= (and b!521897 res!319745) b!521893))

(declare-fun m!502837 () Bool)

(assert (=> b!521898 m!502837))

(declare-fun m!502839 () Bool)

(assert (=> b!521896 m!502839))

(assert (=> b!521896 m!502839))

(declare-fun m!502841 () Bool)

(assert (=> b!521896 m!502841))

(declare-fun m!502843 () Bool)

(assert (=> b!521900 m!502843))

(declare-fun m!502845 () Bool)

(assert (=> b!521897 m!502845))

(declare-fun m!502847 () Bool)

(assert (=> b!521897 m!502847))

(declare-fun m!502849 () Bool)

(assert (=> b!521894 m!502849))

(declare-fun m!502851 () Bool)

(assert (=> b!521892 m!502851))

(declare-fun m!502853 () Bool)

(assert (=> b!521889 m!502853))

(assert (=> b!521889 m!502839))

(declare-fun m!502855 () Bool)

(assert (=> start!47444 m!502855))

(declare-fun m!502857 () Bool)

(assert (=> start!47444 m!502857))

(assert (=> b!521895 m!502839))

(declare-fun m!502859 () Bool)

(assert (=> b!521895 m!502859))

(declare-fun m!502861 () Bool)

(assert (=> b!521895 m!502861))

(declare-fun m!502863 () Bool)

(assert (=> b!521895 m!502863))

(declare-fun m!502865 () Bool)

(assert (=> b!521895 m!502865))

(declare-fun m!502867 () Bool)

(assert (=> b!521895 m!502867))

(assert (=> b!521895 m!502839))

(declare-fun m!502869 () Bool)

(assert (=> b!521895 m!502869))

(assert (=> b!521895 m!502839))

(declare-fun m!502871 () Bool)

(assert (=> b!521895 m!502871))

(declare-fun m!502873 () Bool)

(assert (=> b!521895 m!502873))

(declare-fun m!502875 () Bool)

(assert (=> b!521899 m!502875))

(assert (=> b!521888 m!502839))

(assert (=> b!521888 m!502839))

(declare-fun m!502877 () Bool)

(assert (=> b!521888 m!502877))

(push 1)

