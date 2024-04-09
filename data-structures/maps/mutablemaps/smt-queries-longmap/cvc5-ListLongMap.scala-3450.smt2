; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47902 () Bool)

(assert start!47902)

(declare-fun b!527152 () Bool)

(declare-datatypes ((Unit!16610 0))(
  ( (Unit!16611) )
))
(declare-fun e!307252 () Unit!16610)

(declare-fun Unit!16612 () Unit!16610)

(assert (=> b!527152 (= e!307252 Unit!16612)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33430 0))(
  ( (array!33431 (arr!16062 (Array (_ BitVec 32) (_ BitVec 64))) (size!16426 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33430)

(declare-datatypes ((SeekEntryResult!4536 0))(
  ( (MissingZero!4536 (index!20362 (_ BitVec 32))) (Found!4536 (index!20363 (_ BitVec 32))) (Intermediate!4536 (undefined!5348 Bool) (index!20364 (_ BitVec 32)) (x!49364 (_ BitVec 32))) (Undefined!4536) (MissingVacant!4536 (index!20365 (_ BitVec 32))) )
))
(declare-fun lt!242647 () SeekEntryResult!4536)

(declare-fun lt!242645 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!242639 () Unit!16610)

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33430 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16610)

(assert (=> b!527152 (= lt!242639 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!242645 #b00000000000000000000000000000000 (index!20364 lt!242647) (x!49364 lt!242647) mask!3524))))

(declare-fun lt!242646 () (_ BitVec 64))

(declare-fun res!323642 () Bool)

(declare-fun lt!242643 () array!33430)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33430 (_ BitVec 32)) SeekEntryResult!4536)

(assert (=> b!527152 (= res!323642 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242645 lt!242646 lt!242643 mask!3524) (Intermediate!4536 false (index!20364 lt!242647) (x!49364 lt!242647))))))

(declare-fun e!307256 () Bool)

(assert (=> b!527152 (=> (not res!323642) (not e!307256))))

(assert (=> b!527152 e!307256))

(declare-fun e!307257 () Bool)

(declare-fun b!527153 () Bool)

(assert (=> b!527153 (= e!307257 (or (bvsgt (x!49364 lt!242647) #b01111111111111111111111111111110) (bvslt lt!242645 #b00000000000000000000000000000000) (bvsge lt!242645 (size!16426 a!3235)) (and (bvsge (index!20364 lt!242647) #b00000000000000000000000000000000) (bvslt (index!20364 lt!242647) (size!16426 a!3235)))))))

(assert (=> b!527153 (= (index!20364 lt!242647) i!1204)))

(declare-fun lt!242641 () Unit!16610)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33430 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16610)

(assert (=> b!527153 (= lt!242641 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!242645 #b00000000000000000000000000000000 (index!20364 lt!242647) (x!49364 lt!242647) mask!3524))))

(assert (=> b!527153 (and (or (= (select (arr!16062 a!3235) (index!20364 lt!242647)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16062 a!3235) (index!20364 lt!242647)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16062 a!3235) (index!20364 lt!242647)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16062 a!3235) (index!20364 lt!242647)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!242648 () Unit!16610)

(assert (=> b!527153 (= lt!242648 e!307252)))

(declare-fun c!62063 () Bool)

(assert (=> b!527153 (= c!62063 (= (select (arr!16062 a!3235) (index!20364 lt!242647)) (select (arr!16062 a!3235) j!176)))))

(assert (=> b!527153 (and (bvslt (x!49364 lt!242647) #b01111111111111111111111111111110) (or (= (select (arr!16062 a!3235) (index!20364 lt!242647)) (select (arr!16062 a!3235) j!176)) (= (select (arr!16062 a!3235) (index!20364 lt!242647)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16062 a!3235) (index!20364 lt!242647)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!527154 () Bool)

(declare-fun Unit!16613 () Unit!16610)

(assert (=> b!527154 (= e!307252 Unit!16613)))

(declare-fun b!527155 () Bool)

(declare-fun e!307254 () Bool)

(declare-fun e!307258 () Bool)

(assert (=> b!527155 (= e!307254 e!307258)))

(declare-fun res!323641 () Bool)

(assert (=> b!527155 (=> (not res!323641) (not e!307258))))

(declare-fun lt!242642 () SeekEntryResult!4536)

(assert (=> b!527155 (= res!323641 (or (= lt!242642 (MissingZero!4536 i!1204)) (= lt!242642 (MissingVacant!4536 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33430 (_ BitVec 32)) SeekEntryResult!4536)

(assert (=> b!527155 (= lt!242642 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!527157 () Bool)

(declare-fun res!323647 () Bool)

(assert (=> b!527157 (=> (not res!323647) (not e!307254))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!527157 (= res!323647 (validKeyInArray!0 k!2280))))

(declare-fun b!527158 () Bool)

(assert (=> b!527158 (= e!307256 false)))

(declare-fun b!527159 () Bool)

(declare-fun res!323650 () Bool)

(assert (=> b!527159 (=> (not res!323650) (not e!307254))))

(declare-fun arrayContainsKey!0 (array!33430 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!527159 (= res!323650 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!527160 () Bool)

(assert (=> b!527160 (= e!307258 (not e!307257))))

(declare-fun res!323640 () Bool)

(assert (=> b!527160 (=> res!323640 e!307257)))

(declare-fun lt!242640 () (_ BitVec 32))

(assert (=> b!527160 (= res!323640 (= lt!242647 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242640 lt!242646 lt!242643 mask!3524)))))

(assert (=> b!527160 (= lt!242647 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242645 (select (arr!16062 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!527160 (= lt!242640 (toIndex!0 lt!242646 mask!3524))))

(assert (=> b!527160 (= lt!242646 (select (store (arr!16062 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!527160 (= lt!242645 (toIndex!0 (select (arr!16062 a!3235) j!176) mask!3524))))

(assert (=> b!527160 (= lt!242643 (array!33431 (store (arr!16062 a!3235) i!1204 k!2280) (size!16426 a!3235)))))

(declare-fun e!307255 () Bool)

(assert (=> b!527160 e!307255))

(declare-fun res!323643 () Bool)

(assert (=> b!527160 (=> (not res!323643) (not e!307255))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33430 (_ BitVec 32)) Bool)

(assert (=> b!527160 (= res!323643 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!242644 () Unit!16610)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33430 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16610)

(assert (=> b!527160 (= lt!242644 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!527161 () Bool)

(declare-fun res!323648 () Bool)

(assert (=> b!527161 (=> (not res!323648) (not e!307254))))

(assert (=> b!527161 (= res!323648 (validKeyInArray!0 (select (arr!16062 a!3235) j!176)))))

(declare-fun b!527162 () Bool)

(declare-fun res!323646 () Bool)

(assert (=> b!527162 (=> (not res!323646) (not e!307258))))

(assert (=> b!527162 (= res!323646 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!527163 () Bool)

(declare-fun res!323645 () Bool)

(assert (=> b!527163 (=> res!323645 e!307257)))

(assert (=> b!527163 (= res!323645 (or (undefined!5348 lt!242647) (not (is-Intermediate!4536 lt!242647))))))

(declare-fun b!527164 () Bool)

(assert (=> b!527164 (= e!307255 (= (seekEntryOrOpen!0 (select (arr!16062 a!3235) j!176) a!3235 mask!3524) (Found!4536 j!176)))))

(declare-fun b!527165 () Bool)

(declare-fun res!323649 () Bool)

(assert (=> b!527165 (=> (not res!323649) (not e!307258))))

(declare-datatypes ((List!10273 0))(
  ( (Nil!10270) (Cons!10269 (h!11203 (_ BitVec 64)) (t!16509 List!10273)) )
))
(declare-fun arrayNoDuplicates!0 (array!33430 (_ BitVec 32) List!10273) Bool)

(assert (=> b!527165 (= res!323649 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10270))))

(declare-fun res!323644 () Bool)

(assert (=> start!47902 (=> (not res!323644) (not e!307254))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47902 (= res!323644 (validMask!0 mask!3524))))

(assert (=> start!47902 e!307254))

(assert (=> start!47902 true))

(declare-fun array_inv!11836 (array!33430) Bool)

(assert (=> start!47902 (array_inv!11836 a!3235)))

(declare-fun b!527156 () Bool)

(declare-fun res!323651 () Bool)

(assert (=> b!527156 (=> (not res!323651) (not e!307254))))

(assert (=> b!527156 (= res!323651 (and (= (size!16426 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16426 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16426 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!47902 res!323644) b!527156))

(assert (= (and b!527156 res!323651) b!527161))

(assert (= (and b!527161 res!323648) b!527157))

(assert (= (and b!527157 res!323647) b!527159))

(assert (= (and b!527159 res!323650) b!527155))

(assert (= (and b!527155 res!323641) b!527162))

(assert (= (and b!527162 res!323646) b!527165))

(assert (= (and b!527165 res!323649) b!527160))

(assert (= (and b!527160 res!323643) b!527164))

(assert (= (and b!527160 (not res!323640)) b!527163))

(assert (= (and b!527163 (not res!323645)) b!527153))

(assert (= (and b!527153 c!62063) b!527152))

(assert (= (and b!527153 (not c!62063)) b!527154))

(assert (= (and b!527152 res!323642) b!527158))

(declare-fun m!507835 () Bool)

(assert (=> b!527152 m!507835))

(declare-fun m!507837 () Bool)

(assert (=> b!527152 m!507837))

(declare-fun m!507839 () Bool)

(assert (=> start!47902 m!507839))

(declare-fun m!507841 () Bool)

(assert (=> start!47902 m!507841))

(declare-fun m!507843 () Bool)

(assert (=> b!527162 m!507843))

(declare-fun m!507845 () Bool)

(assert (=> b!527161 m!507845))

(assert (=> b!527161 m!507845))

(declare-fun m!507847 () Bool)

(assert (=> b!527161 m!507847))

(assert (=> b!527164 m!507845))

(assert (=> b!527164 m!507845))

(declare-fun m!507849 () Bool)

(assert (=> b!527164 m!507849))

(declare-fun m!507851 () Bool)

(assert (=> b!527157 m!507851))

(assert (=> b!527160 m!507845))

(declare-fun m!507853 () Bool)

(assert (=> b!527160 m!507853))

(declare-fun m!507855 () Bool)

(assert (=> b!527160 m!507855))

(declare-fun m!507857 () Bool)

(assert (=> b!527160 m!507857))

(declare-fun m!507859 () Bool)

(assert (=> b!527160 m!507859))

(assert (=> b!527160 m!507845))

(declare-fun m!507861 () Bool)

(assert (=> b!527160 m!507861))

(assert (=> b!527160 m!507845))

(declare-fun m!507863 () Bool)

(assert (=> b!527160 m!507863))

(declare-fun m!507865 () Bool)

(assert (=> b!527160 m!507865))

(declare-fun m!507867 () Bool)

(assert (=> b!527160 m!507867))

(declare-fun m!507869 () Bool)

(assert (=> b!527159 m!507869))

(declare-fun m!507871 () Bool)

(assert (=> b!527165 m!507871))

(declare-fun m!507873 () Bool)

(assert (=> b!527153 m!507873))

(declare-fun m!507875 () Bool)

(assert (=> b!527153 m!507875))

(assert (=> b!527153 m!507845))

(declare-fun m!507877 () Bool)

(assert (=> b!527155 m!507877))

(push 1)

(assert (not b!527165))

(assert (not b!527162))

(assert (not b!527160))

(assert (not b!527164))

(assert (not b!527159))

(assert (not b!527161))

(assert (not b!527155))

(assert (not b!527152))

(assert (not start!47902))

(assert (not b!527153))

(assert (not b!527157))

(check-sat)

(pop 1)

(push 1)

(check-sat)

