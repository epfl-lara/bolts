; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48044 () Bool)

(assert start!48044)

(declare-fun res!325073 () Bool)

(declare-fun e!308275 () Bool)

(assert (=> start!48044 (=> (not res!325073) (not e!308275))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48044 (= res!325073 (validMask!0 mask!3524))))

(assert (=> start!48044 e!308275))

(assert (=> start!48044 true))

(declare-datatypes ((array!33497 0))(
  ( (array!33498 (arr!16094 (Array (_ BitVec 32) (_ BitVec 64))) (size!16458 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33497)

(declare-fun array_inv!11868 (array!33497) Bool)

(assert (=> start!48044 (array_inv!11868 a!3235)))

(declare-fun b!529028 () Bool)

(declare-datatypes ((Unit!16738 0))(
  ( (Unit!16739) )
))
(declare-fun e!308268 () Unit!16738)

(declare-fun Unit!16740 () Unit!16738)

(assert (=> b!529028 (= e!308268 Unit!16740)))

(declare-fun lt!243933 () Unit!16738)

(declare-datatypes ((SeekEntryResult!4568 0))(
  ( (MissingZero!4568 (index!20496 (_ BitVec 32))) (Found!4568 (index!20497 (_ BitVec 32))) (Intermediate!4568 (undefined!5380 Bool) (index!20498 (_ BitVec 32)) (x!49491 (_ BitVec 32))) (Undefined!4568) (MissingVacant!4568 (index!20499 (_ BitVec 32))) )
))
(declare-fun lt!243931 () SeekEntryResult!4568)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!243932 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33497 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16738)

(assert (=> b!529028 (= lt!243933 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!243932 #b00000000000000000000000000000000 (index!20498 lt!243931) (x!49491 lt!243931) mask!3524))))

(declare-fun lt!243939 () (_ BitVec 64))

(declare-fun lt!243936 () array!33497)

(declare-fun res!325079 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33497 (_ BitVec 32)) SeekEntryResult!4568)

(assert (=> b!529028 (= res!325079 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243932 lt!243939 lt!243936 mask!3524) (Intermediate!4568 false (index!20498 lt!243931) (x!49491 lt!243931))))))

(declare-fun e!308272 () Bool)

(assert (=> b!529028 (=> (not res!325079) (not e!308272))))

(assert (=> b!529028 e!308272))

(declare-fun b!529029 () Bool)

(declare-fun e!308274 () Bool)

(declare-fun e!308273 () Bool)

(assert (=> b!529029 (= e!308274 e!308273)))

(declare-fun res!325081 () Bool)

(assert (=> b!529029 (=> res!325081 e!308273)))

(assert (=> b!529029 (= res!325081 (or (bvsgt (x!49491 lt!243931) #b01111111111111111111111111111110) (bvslt lt!243932 #b00000000000000000000000000000000) (bvsge lt!243932 (size!16458 a!3235)) (bvslt (index!20498 lt!243931) #b00000000000000000000000000000000) (bvsge (index!20498 lt!243931) (size!16458 a!3235)) (not (= lt!243931 (Intermediate!4568 false (index!20498 lt!243931) (x!49491 lt!243931))))))))

(assert (=> b!529029 (= (index!20498 lt!243931) i!1204)))

(declare-fun lt!243934 () Unit!16738)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33497 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16738)

(assert (=> b!529029 (= lt!243934 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!243932 #b00000000000000000000000000000000 (index!20498 lt!243931) (x!49491 lt!243931) mask!3524))))

(assert (=> b!529029 (and (or (= (select (arr!16094 a!3235) (index!20498 lt!243931)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16094 a!3235) (index!20498 lt!243931)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16094 a!3235) (index!20498 lt!243931)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16094 a!3235) (index!20498 lt!243931)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!243940 () Unit!16738)

(assert (=> b!529029 (= lt!243940 e!308268)))

(declare-fun c!62288 () Bool)

(assert (=> b!529029 (= c!62288 (= (select (arr!16094 a!3235) (index!20498 lt!243931)) (select (arr!16094 a!3235) j!176)))))

(assert (=> b!529029 (and (bvslt (x!49491 lt!243931) #b01111111111111111111111111111110) (or (= (select (arr!16094 a!3235) (index!20498 lt!243931)) (select (arr!16094 a!3235) j!176)) (= (select (arr!16094 a!3235) (index!20498 lt!243931)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16094 a!3235) (index!20498 lt!243931)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!529030 () Bool)

(declare-fun res!325075 () Bool)

(declare-fun e!308270 () Bool)

(assert (=> b!529030 (=> (not res!325075) (not e!308270))))

(declare-datatypes ((List!10305 0))(
  ( (Nil!10302) (Cons!10301 (h!11238 (_ BitVec 64)) (t!16541 List!10305)) )
))
(declare-fun arrayNoDuplicates!0 (array!33497 (_ BitVec 32) List!10305) Bool)

(assert (=> b!529030 (= res!325075 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10302))))

(declare-fun b!529031 () Bool)

(declare-fun res!325078 () Bool)

(assert (=> b!529031 (=> (not res!325078) (not e!308275))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!529031 (= res!325078 (validKeyInArray!0 k!2280))))

(declare-fun b!529032 () Bool)

(declare-fun lt!243928 () SeekEntryResult!4568)

(declare-fun lt!243941 () SeekEntryResult!4568)

(assert (=> b!529032 (= e!308273 (= lt!243928 lt!243941))))

(declare-fun lt!243929 () SeekEntryResult!4568)

(assert (=> b!529032 (= lt!243941 lt!243929)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33497 (_ BitVec 32)) SeekEntryResult!4568)

(assert (=> b!529032 (= lt!243941 (seekEntryOrOpen!0 lt!243939 lt!243936 mask!3524))))

(declare-fun lt!243935 () Unit!16738)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!33497 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16738)

(assert (=> b!529032 (= lt!243935 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k!2280 j!176 lt!243932 #b00000000000000000000000000000000 (index!20498 lt!243931) (x!49491 lt!243931) mask!3524))))

(declare-fun b!529033 () Bool)

(assert (=> b!529033 (= e!308272 false)))

(declare-fun b!529034 () Bool)

(declare-fun res!325074 () Bool)

(assert (=> b!529034 (=> (not res!325074) (not e!308270))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33497 (_ BitVec 32)) Bool)

(assert (=> b!529034 (= res!325074 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!529035 () Bool)

(declare-fun e!308269 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33497 (_ BitVec 32)) SeekEntryResult!4568)

(assert (=> b!529035 (= e!308269 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!243932 (index!20498 lt!243931) (select (arr!16094 a!3235) j!176) a!3235 mask!3524) lt!243929)))))

(declare-fun b!529036 () Bool)

(declare-fun res!325080 () Bool)

(assert (=> b!529036 (=> (not res!325080) (not e!308275))))

(assert (=> b!529036 (= res!325080 (validKeyInArray!0 (select (arr!16094 a!3235) j!176)))))

(declare-fun b!529037 () Bool)

(declare-fun res!325077 () Bool)

(assert (=> b!529037 (=> (not res!325077) (not e!308275))))

(assert (=> b!529037 (= res!325077 (and (= (size!16458 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16458 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16458 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!529038 () Bool)

(assert (=> b!529038 (= e!308270 (not e!308274))))

(declare-fun res!325072 () Bool)

(assert (=> b!529038 (=> res!325072 e!308274)))

(declare-fun lt!243938 () SeekEntryResult!4568)

(assert (=> b!529038 (= res!325072 (or (= lt!243931 lt!243938) (undefined!5380 lt!243931) (not (is-Intermediate!4568 lt!243931))))))

(declare-fun lt!243930 () (_ BitVec 32))

(assert (=> b!529038 (= lt!243938 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243930 lt!243939 lt!243936 mask!3524))))

(assert (=> b!529038 (= lt!243931 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243932 (select (arr!16094 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!529038 (= lt!243930 (toIndex!0 lt!243939 mask!3524))))

(assert (=> b!529038 (= lt!243939 (select (store (arr!16094 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!529038 (= lt!243932 (toIndex!0 (select (arr!16094 a!3235) j!176) mask!3524))))

(assert (=> b!529038 (= lt!243936 (array!33498 (store (arr!16094 a!3235) i!1204 k!2280) (size!16458 a!3235)))))

(assert (=> b!529038 (= lt!243928 lt!243929)))

(assert (=> b!529038 (= lt!243929 (Found!4568 j!176))))

(assert (=> b!529038 (= lt!243928 (seekEntryOrOpen!0 (select (arr!16094 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!529038 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!243937 () Unit!16738)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33497 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16738)

(assert (=> b!529038 (= lt!243937 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!529039 () Bool)

(declare-fun res!325070 () Bool)

(assert (=> b!529039 (=> res!325070 e!308273)))

(assert (=> b!529039 (= res!325070 (not (= lt!243938 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243932 lt!243939 lt!243936 mask!3524))))))

(declare-fun b!529040 () Bool)

(declare-fun Unit!16741 () Unit!16738)

(assert (=> b!529040 (= e!308268 Unit!16741)))

(declare-fun b!529041 () Bool)

(declare-fun res!325071 () Bool)

(assert (=> b!529041 (=> res!325071 e!308273)))

(assert (=> b!529041 (= res!325071 e!308269)))

(declare-fun res!325069 () Bool)

(assert (=> b!529041 (=> (not res!325069) (not e!308269))))

(assert (=> b!529041 (= res!325069 (bvsgt #b00000000000000000000000000000000 (x!49491 lt!243931)))))

(declare-fun b!529042 () Bool)

(declare-fun res!325082 () Bool)

(assert (=> b!529042 (=> (not res!325082) (not e!308275))))

(declare-fun arrayContainsKey!0 (array!33497 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!529042 (= res!325082 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!529043 () Bool)

(assert (=> b!529043 (= e!308275 e!308270)))

(declare-fun res!325076 () Bool)

(assert (=> b!529043 (=> (not res!325076) (not e!308270))))

(declare-fun lt!243927 () SeekEntryResult!4568)

(assert (=> b!529043 (= res!325076 (or (= lt!243927 (MissingZero!4568 i!1204)) (= lt!243927 (MissingVacant!4568 i!1204))))))

(assert (=> b!529043 (= lt!243927 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!48044 res!325073) b!529037))

(assert (= (and b!529037 res!325077) b!529036))

(assert (= (and b!529036 res!325080) b!529031))

(assert (= (and b!529031 res!325078) b!529042))

(assert (= (and b!529042 res!325082) b!529043))

(assert (= (and b!529043 res!325076) b!529034))

(assert (= (and b!529034 res!325074) b!529030))

(assert (= (and b!529030 res!325075) b!529038))

(assert (= (and b!529038 (not res!325072)) b!529029))

(assert (= (and b!529029 c!62288) b!529028))

(assert (= (and b!529029 (not c!62288)) b!529040))

(assert (= (and b!529028 res!325079) b!529033))

(assert (= (and b!529029 (not res!325081)) b!529041))

(assert (= (and b!529041 res!325069) b!529035))

(assert (= (and b!529041 (not res!325071)) b!529039))

(assert (= (and b!529039 (not res!325070)) b!529032))

(declare-fun m!509597 () Bool)

(assert (=> b!529032 m!509597))

(declare-fun m!509599 () Bool)

(assert (=> b!529032 m!509599))

(declare-fun m!509601 () Bool)

(assert (=> b!529038 m!509601))

(declare-fun m!509603 () Bool)

(assert (=> b!529038 m!509603))

(declare-fun m!509605 () Bool)

(assert (=> b!529038 m!509605))

(declare-fun m!509607 () Bool)

(assert (=> b!529038 m!509607))

(declare-fun m!509609 () Bool)

(assert (=> b!529038 m!509609))

(declare-fun m!509611 () Bool)

(assert (=> b!529038 m!509611))

(assert (=> b!529038 m!509609))

(declare-fun m!509613 () Bool)

(assert (=> b!529038 m!509613))

(assert (=> b!529038 m!509609))

(declare-fun m!509615 () Bool)

(assert (=> b!529038 m!509615))

(declare-fun m!509617 () Bool)

(assert (=> b!529038 m!509617))

(assert (=> b!529038 m!509609))

(declare-fun m!509619 () Bool)

(assert (=> b!529038 m!509619))

(assert (=> b!529036 m!509609))

(assert (=> b!529036 m!509609))

(declare-fun m!509621 () Bool)

(assert (=> b!529036 m!509621))

(assert (=> b!529035 m!509609))

(assert (=> b!529035 m!509609))

(declare-fun m!509623 () Bool)

(assert (=> b!529035 m!509623))

(declare-fun m!509625 () Bool)

(assert (=> start!48044 m!509625))

(declare-fun m!509627 () Bool)

(assert (=> start!48044 m!509627))

(declare-fun m!509629 () Bool)

(assert (=> b!529030 m!509629))

(declare-fun m!509631 () Bool)

(assert (=> b!529029 m!509631))

(declare-fun m!509633 () Bool)

(assert (=> b!529029 m!509633))

(assert (=> b!529029 m!509609))

(declare-fun m!509635 () Bool)

(assert (=> b!529028 m!509635))

(declare-fun m!509637 () Bool)

(assert (=> b!529028 m!509637))

(declare-fun m!509639 () Bool)

(assert (=> b!529034 m!509639))

(declare-fun m!509641 () Bool)

(assert (=> b!529031 m!509641))

(assert (=> b!529039 m!509637))

(declare-fun m!509643 () Bool)

(assert (=> b!529043 m!509643))

(declare-fun m!509645 () Bool)

(assert (=> b!529042 m!509645))

(push 1)

