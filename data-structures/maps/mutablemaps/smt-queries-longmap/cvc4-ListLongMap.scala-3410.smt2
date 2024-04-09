; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47396 () Bool)

(assert start!47396)

(declare-fun b!520879 () Bool)

(declare-fun res!318879 () Bool)

(declare-fun e!303929 () Bool)

(assert (=> b!520879 (=> (not res!318879) (not e!303929))))

(declare-datatypes ((array!33182 0))(
  ( (array!33183 (arr!15944 (Array (_ BitVec 32) (_ BitVec 64))) (size!16308 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33182)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!520879 (= res!318879 (validKeyInArray!0 (select (arr!15944 a!3235) j!176)))))

(declare-fun b!520880 () Bool)

(declare-fun e!303928 () Bool)

(assert (=> b!520880 (= e!303928 true)))

(declare-datatypes ((SeekEntryResult!4418 0))(
  ( (MissingZero!4418 (index!19875 (_ BitVec 32))) (Found!4418 (index!19876 (_ BitVec 32))) (Intermediate!4418 (undefined!5230 Bool) (index!19877 (_ BitVec 32)) (x!48887 (_ BitVec 32))) (Undefined!4418) (MissingVacant!4418 (index!19878 (_ BitVec 32))) )
))
(declare-fun lt!238692 () SeekEntryResult!4418)

(assert (=> b!520880 (and (or (= (select (arr!15944 a!3235) (index!19877 lt!238692)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15944 a!3235) (index!19877 lt!238692)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15944 a!3235) (index!19877 lt!238692)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15944 a!3235) (index!19877 lt!238692)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!16138 0))(
  ( (Unit!16139) )
))
(declare-fun lt!238688 () Unit!16138)

(declare-fun e!303930 () Unit!16138)

(assert (=> b!520880 (= lt!238688 e!303930)))

(declare-fun c!61301 () Bool)

(assert (=> b!520880 (= c!61301 (= (select (arr!15944 a!3235) (index!19877 lt!238692)) (select (arr!15944 a!3235) j!176)))))

(assert (=> b!520880 (and (bvslt (x!48887 lt!238692) #b01111111111111111111111111111110) (or (= (select (arr!15944 a!3235) (index!19877 lt!238692)) (select (arr!15944 a!3235) j!176)) (= (select (arr!15944 a!3235) (index!19877 lt!238692)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15944 a!3235) (index!19877 lt!238692)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!520881 () Bool)

(declare-fun Unit!16140 () Unit!16138)

(assert (=> b!520881 (= e!303930 Unit!16140)))

(declare-fun b!520882 () Bool)

(declare-fun res!318890 () Bool)

(declare-fun e!303925 () Bool)

(assert (=> b!520882 (=> (not res!318890) (not e!303925))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33182 (_ BitVec 32)) Bool)

(assert (=> b!520882 (= res!318890 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!520883 () Bool)

(declare-fun e!303931 () Bool)

(assert (=> b!520883 (= e!303931 false)))

(declare-fun b!520884 () Bool)

(assert (=> b!520884 (= e!303929 e!303925)))

(declare-fun res!318885 () Bool)

(assert (=> b!520884 (=> (not res!318885) (not e!303925))))

(declare-fun lt!238690 () SeekEntryResult!4418)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!520884 (= res!318885 (or (= lt!238690 (MissingZero!4418 i!1204)) (= lt!238690 (MissingVacant!4418 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33182 (_ BitVec 32)) SeekEntryResult!4418)

(assert (=> b!520884 (= lt!238690 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!520885 () Bool)

(declare-fun Unit!16141 () Unit!16138)

(assert (=> b!520885 (= e!303930 Unit!16141)))

(declare-fun lt!238691 () Unit!16138)

(declare-fun lt!238686 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33182 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16138)

(assert (=> b!520885 (= lt!238691 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!238686 #b00000000000000000000000000000000 (index!19877 lt!238692) (x!48887 lt!238692) mask!3524))))

(declare-fun lt!238693 () (_ BitVec 64))

(declare-fun res!318889 () Bool)

(declare-fun lt!238689 () array!33182)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33182 (_ BitVec 32)) SeekEntryResult!4418)

(assert (=> b!520885 (= res!318889 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238686 lt!238693 lt!238689 mask!3524) (Intermediate!4418 false (index!19877 lt!238692) (x!48887 lt!238692))))))

(assert (=> b!520885 (=> (not res!318889) (not e!303931))))

(assert (=> b!520885 e!303931))

(declare-fun b!520886 () Bool)

(declare-fun res!318886 () Bool)

(assert (=> b!520886 (=> (not res!318886) (not e!303929))))

(assert (=> b!520886 (= res!318886 (and (= (size!16308 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16308 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16308 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!520887 () Bool)

(assert (=> b!520887 (= e!303925 (not e!303928))))

(declare-fun res!318887 () Bool)

(assert (=> b!520887 (=> res!318887 e!303928)))

(declare-fun lt!238687 () (_ BitVec 32))

(assert (=> b!520887 (= res!318887 (= lt!238692 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238687 lt!238693 lt!238689 mask!3524)))))

(assert (=> b!520887 (= lt!238692 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238686 (select (arr!15944 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!520887 (= lt!238687 (toIndex!0 lt!238693 mask!3524))))

(assert (=> b!520887 (= lt!238693 (select (store (arr!15944 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!520887 (= lt!238686 (toIndex!0 (select (arr!15944 a!3235) j!176) mask!3524))))

(assert (=> b!520887 (= lt!238689 (array!33183 (store (arr!15944 a!3235) i!1204 k!2280) (size!16308 a!3235)))))

(declare-fun e!303926 () Bool)

(assert (=> b!520887 e!303926))

(declare-fun res!318884 () Bool)

(assert (=> b!520887 (=> (not res!318884) (not e!303926))))

(assert (=> b!520887 (= res!318884 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!238694 () Unit!16138)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33182 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16138)

(assert (=> b!520887 (= lt!238694 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!520888 () Bool)

(declare-fun res!318882 () Bool)

(assert (=> b!520888 (=> res!318882 e!303928)))

(assert (=> b!520888 (= res!318882 (or (undefined!5230 lt!238692) (not (is-Intermediate!4418 lt!238692))))))

(declare-fun b!520890 () Bool)

(declare-fun res!318888 () Bool)

(assert (=> b!520890 (=> (not res!318888) (not e!303925))))

(declare-datatypes ((List!10155 0))(
  ( (Nil!10152) (Cons!10151 (h!11073 (_ BitVec 64)) (t!16391 List!10155)) )
))
(declare-fun arrayNoDuplicates!0 (array!33182 (_ BitVec 32) List!10155) Bool)

(assert (=> b!520890 (= res!318888 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10152))))

(declare-fun b!520891 () Bool)

(declare-fun res!318883 () Bool)

(assert (=> b!520891 (=> (not res!318883) (not e!303929))))

(assert (=> b!520891 (= res!318883 (validKeyInArray!0 k!2280))))

(declare-fun b!520892 () Bool)

(declare-fun res!318880 () Bool)

(assert (=> b!520892 (=> (not res!318880) (not e!303929))))

(declare-fun arrayContainsKey!0 (array!33182 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!520892 (= res!318880 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!318881 () Bool)

(assert (=> start!47396 (=> (not res!318881) (not e!303929))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47396 (= res!318881 (validMask!0 mask!3524))))

(assert (=> start!47396 e!303929))

(assert (=> start!47396 true))

(declare-fun array_inv!11718 (array!33182) Bool)

(assert (=> start!47396 (array_inv!11718 a!3235)))

(declare-fun b!520889 () Bool)

(assert (=> b!520889 (= e!303926 (= (seekEntryOrOpen!0 (select (arr!15944 a!3235) j!176) a!3235 mask!3524) (Found!4418 j!176)))))

(assert (= (and start!47396 res!318881) b!520886))

(assert (= (and b!520886 res!318886) b!520879))

(assert (= (and b!520879 res!318879) b!520891))

(assert (= (and b!520891 res!318883) b!520892))

(assert (= (and b!520892 res!318880) b!520884))

(assert (= (and b!520884 res!318885) b!520882))

(assert (= (and b!520882 res!318890) b!520890))

(assert (= (and b!520890 res!318888) b!520887))

(assert (= (and b!520887 res!318884) b!520889))

(assert (= (and b!520887 (not res!318887)) b!520888))

(assert (= (and b!520888 (not res!318882)) b!520880))

(assert (= (and b!520880 c!61301) b!520885))

(assert (= (and b!520880 (not c!61301)) b!520881))

(assert (= (and b!520885 res!318889) b!520883))

(declare-fun m!501829 () Bool)

(assert (=> b!520889 m!501829))

(assert (=> b!520889 m!501829))

(declare-fun m!501831 () Bool)

(assert (=> b!520889 m!501831))

(declare-fun m!501833 () Bool)

(assert (=> b!520884 m!501833))

(declare-fun m!501835 () Bool)

(assert (=> b!520882 m!501835))

(assert (=> b!520879 m!501829))

(assert (=> b!520879 m!501829))

(declare-fun m!501837 () Bool)

(assert (=> b!520879 m!501837))

(declare-fun m!501839 () Bool)

(assert (=> b!520892 m!501839))

(declare-fun m!501841 () Bool)

(assert (=> b!520885 m!501841))

(declare-fun m!501843 () Bool)

(assert (=> b!520885 m!501843))

(declare-fun m!501845 () Bool)

(assert (=> start!47396 m!501845))

(declare-fun m!501847 () Bool)

(assert (=> start!47396 m!501847))

(declare-fun m!501849 () Bool)

(assert (=> b!520891 m!501849))

(declare-fun m!501851 () Bool)

(assert (=> b!520890 m!501851))

(declare-fun m!501853 () Bool)

(assert (=> b!520880 m!501853))

(assert (=> b!520880 m!501829))

(declare-fun m!501855 () Bool)

(assert (=> b!520887 m!501855))

(declare-fun m!501857 () Bool)

(assert (=> b!520887 m!501857))

(declare-fun m!501859 () Bool)

(assert (=> b!520887 m!501859))

(declare-fun m!501861 () Bool)

(assert (=> b!520887 m!501861))

(assert (=> b!520887 m!501829))

(declare-fun m!501863 () Bool)

(assert (=> b!520887 m!501863))

(assert (=> b!520887 m!501829))

(declare-fun m!501865 () Bool)

(assert (=> b!520887 m!501865))

(declare-fun m!501867 () Bool)

(assert (=> b!520887 m!501867))

(declare-fun m!501869 () Bool)

(assert (=> b!520887 m!501869))

(assert (=> b!520887 m!501829))

(push 1)

