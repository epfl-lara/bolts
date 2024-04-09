; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47798 () Bool)

(assert start!47798)

(declare-fun b!526153 () Bool)

(declare-fun res!322939 () Bool)

(declare-fun e!306708 () Bool)

(assert (=> b!526153 (=> (not res!322939) (not e!306708))))

(declare-datatypes ((array!33395 0))(
  ( (array!33396 (arr!16046 (Array (_ BitVec 32) (_ BitVec 64))) (size!16410 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33395)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33395 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!526153 (= res!322939 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!322943 () Bool)

(assert (=> start!47798 (=> (not res!322943) (not e!306708))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47798 (= res!322943 (validMask!0 mask!3524))))

(assert (=> start!47798 e!306708))

(assert (=> start!47798 true))

(declare-fun array_inv!11820 (array!33395) Bool)

(assert (=> start!47798 (array_inv!11820 a!3235)))

(declare-fun b!526154 () Bool)

(declare-fun e!306712 () Bool)

(assert (=> b!526154 (= e!306708 e!306712)))

(declare-fun res!322944 () Bool)

(assert (=> b!526154 (=> (not res!322944) (not e!306712))))

(declare-datatypes ((SeekEntryResult!4520 0))(
  ( (MissingZero!4520 (index!20292 (_ BitVec 32))) (Found!4520 (index!20293 (_ BitVec 32))) (Intermediate!4520 (undefined!5332 Bool) (index!20294 (_ BitVec 32)) (x!49288 (_ BitVec 32))) (Undefined!4520) (MissingVacant!4520 (index!20295 (_ BitVec 32))) )
))
(declare-fun lt!242015 () SeekEntryResult!4520)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!526154 (= res!322944 (or (= lt!242015 (MissingZero!4520 i!1204)) (= lt!242015 (MissingVacant!4520 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33395 (_ BitVec 32)) SeekEntryResult!4520)

(assert (=> b!526154 (= lt!242015 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!526155 () Bool)

(declare-fun res!322945 () Bool)

(declare-fun e!306707 () Bool)

(assert (=> b!526155 (=> res!322945 e!306707)))

(declare-fun lt!242013 () SeekEntryResult!4520)

(assert (=> b!526155 (= res!322945 (or (undefined!5332 lt!242013) (not (is-Intermediate!4520 lt!242013))))))

(declare-fun b!526156 () Bool)

(declare-fun res!322940 () Bool)

(assert (=> b!526156 (=> (not res!322940) (not e!306708))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!526156 (= res!322940 (validKeyInArray!0 k!2280))))

(declare-fun b!526157 () Bool)

(declare-fun res!322941 () Bool)

(assert (=> b!526157 (=> (not res!322941) (not e!306712))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33395 (_ BitVec 32)) Bool)

(assert (=> b!526157 (= res!322941 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!526158 () Bool)

(declare-fun res!322948 () Bool)

(assert (=> b!526158 (=> (not res!322948) (not e!306708))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!526158 (= res!322948 (validKeyInArray!0 (select (arr!16046 a!3235) j!176)))))

(declare-fun b!526159 () Bool)

(declare-fun res!322942 () Bool)

(assert (=> b!526159 (=> (not res!322942) (not e!306712))))

(declare-datatypes ((List!10257 0))(
  ( (Nil!10254) (Cons!10253 (h!11184 (_ BitVec 64)) (t!16493 List!10257)) )
))
(declare-fun arrayNoDuplicates!0 (array!33395 (_ BitVec 32) List!10257) Bool)

(assert (=> b!526159 (= res!322942 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10254))))

(declare-fun b!526160 () Bool)

(declare-datatypes ((Unit!16546 0))(
  ( (Unit!16547) )
))
(declare-fun e!306709 () Unit!16546)

(declare-fun Unit!16548 () Unit!16546)

(assert (=> b!526160 (= e!306709 Unit!16548)))

(declare-fun lt!242008 () Unit!16546)

(declare-fun lt!242010 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33395 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16546)

(assert (=> b!526160 (= lt!242008 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!242010 #b00000000000000000000000000000000 (index!20294 lt!242013) (x!49288 lt!242013) mask!3524))))

(declare-fun lt!242009 () array!33395)

(declare-fun res!322947 () Bool)

(declare-fun lt!242012 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33395 (_ BitVec 32)) SeekEntryResult!4520)

(assert (=> b!526160 (= res!322947 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242010 lt!242012 lt!242009 mask!3524) (Intermediate!4520 false (index!20294 lt!242013) (x!49288 lt!242013))))))

(declare-fun e!306710 () Bool)

(assert (=> b!526160 (=> (not res!322947) (not e!306710))))

(assert (=> b!526160 e!306710))

(declare-fun b!526161 () Bool)

(assert (=> b!526161 (= e!306712 (not e!306707))))

(declare-fun res!322946 () Bool)

(assert (=> b!526161 (=> res!322946 e!306707)))

(declare-fun lt!242011 () (_ BitVec 32))

(assert (=> b!526161 (= res!322946 (= lt!242013 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242011 lt!242012 lt!242009 mask!3524)))))

(assert (=> b!526161 (= lt!242013 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242010 (select (arr!16046 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!526161 (= lt!242011 (toIndex!0 lt!242012 mask!3524))))

(assert (=> b!526161 (= lt!242012 (select (store (arr!16046 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!526161 (= lt!242010 (toIndex!0 (select (arr!16046 a!3235) j!176) mask!3524))))

(assert (=> b!526161 (= lt!242009 (array!33396 (store (arr!16046 a!3235) i!1204 k!2280) (size!16410 a!3235)))))

(declare-fun e!306711 () Bool)

(assert (=> b!526161 e!306711))

(declare-fun res!322949 () Bool)

(assert (=> b!526161 (=> (not res!322949) (not e!306711))))

(assert (=> b!526161 (= res!322949 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!242014 () Unit!16546)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33395 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16546)

(assert (=> b!526161 (= lt!242014 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!526162 () Bool)

(assert (=> b!526162 (= e!306710 false)))

(declare-fun b!526163 () Bool)

(assert (=> b!526163 (= e!306711 (= (seekEntryOrOpen!0 (select (arr!16046 a!3235) j!176) a!3235 mask!3524) (Found!4520 j!176)))))

(declare-fun b!526164 () Bool)

(declare-fun res!322938 () Bool)

(assert (=> b!526164 (=> (not res!322938) (not e!306708))))

(assert (=> b!526164 (= res!322938 (and (= (size!16410 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16410 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16410 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!526165 () Bool)

(assert (=> b!526165 (= e!306707 true)))

(assert (=> b!526165 (= (index!20294 lt!242013) i!1204)))

(declare-fun lt!242006 () Unit!16546)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33395 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16546)

(assert (=> b!526165 (= lt!242006 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!242010 #b00000000000000000000000000000000 (index!20294 lt!242013) (x!49288 lt!242013) mask!3524))))

(assert (=> b!526165 (and (or (= (select (arr!16046 a!3235) (index!20294 lt!242013)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16046 a!3235) (index!20294 lt!242013)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16046 a!3235) (index!20294 lt!242013)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16046 a!3235) (index!20294 lt!242013)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!242007 () Unit!16546)

(assert (=> b!526165 (= lt!242007 e!306709)))

(declare-fun c!61913 () Bool)

(assert (=> b!526165 (= c!61913 (= (select (arr!16046 a!3235) (index!20294 lt!242013)) (select (arr!16046 a!3235) j!176)))))

(assert (=> b!526165 (and (bvslt (x!49288 lt!242013) #b01111111111111111111111111111110) (or (= (select (arr!16046 a!3235) (index!20294 lt!242013)) (select (arr!16046 a!3235) j!176)) (= (select (arr!16046 a!3235) (index!20294 lt!242013)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16046 a!3235) (index!20294 lt!242013)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!526166 () Bool)

(declare-fun Unit!16549 () Unit!16546)

(assert (=> b!526166 (= e!306709 Unit!16549)))

(assert (= (and start!47798 res!322943) b!526164))

(assert (= (and b!526164 res!322938) b!526158))

(assert (= (and b!526158 res!322948) b!526156))

(assert (= (and b!526156 res!322940) b!526153))

(assert (= (and b!526153 res!322939) b!526154))

(assert (= (and b!526154 res!322944) b!526157))

(assert (= (and b!526157 res!322941) b!526159))

(assert (= (and b!526159 res!322942) b!526161))

(assert (= (and b!526161 res!322949) b!526163))

(assert (= (and b!526161 (not res!322946)) b!526155))

(assert (= (and b!526155 (not res!322945)) b!526165))

(assert (= (and b!526165 c!61913) b!526160))

(assert (= (and b!526165 (not c!61913)) b!526166))

(assert (= (and b!526160 res!322947) b!526162))

(declare-fun m!506891 () Bool)

(assert (=> b!526165 m!506891))

(declare-fun m!506893 () Bool)

(assert (=> b!526165 m!506893))

(declare-fun m!506895 () Bool)

(assert (=> b!526165 m!506895))

(declare-fun m!506897 () Bool)

(assert (=> b!526159 m!506897))

(declare-fun m!506899 () Bool)

(assert (=> start!47798 m!506899))

(declare-fun m!506901 () Bool)

(assert (=> start!47798 m!506901))

(declare-fun m!506903 () Bool)

(assert (=> b!526157 m!506903))

(declare-fun m!506905 () Bool)

(assert (=> b!526153 m!506905))

(declare-fun m!506907 () Bool)

(assert (=> b!526160 m!506907))

(declare-fun m!506909 () Bool)

(assert (=> b!526160 m!506909))

(declare-fun m!506911 () Bool)

(assert (=> b!526154 m!506911))

(assert (=> b!526163 m!506895))

(assert (=> b!526163 m!506895))

(declare-fun m!506913 () Bool)

(assert (=> b!526163 m!506913))

(assert (=> b!526158 m!506895))

(assert (=> b!526158 m!506895))

(declare-fun m!506915 () Bool)

(assert (=> b!526158 m!506915))

(declare-fun m!506917 () Bool)

(assert (=> b!526161 m!506917))

(declare-fun m!506919 () Bool)

(assert (=> b!526161 m!506919))

(declare-fun m!506921 () Bool)

(assert (=> b!526161 m!506921))

(declare-fun m!506923 () Bool)

(assert (=> b!526161 m!506923))

(declare-fun m!506925 () Bool)

(assert (=> b!526161 m!506925))

(assert (=> b!526161 m!506895))

(declare-fun m!506927 () Bool)

(assert (=> b!526161 m!506927))

(assert (=> b!526161 m!506895))

(declare-fun m!506929 () Bool)

(assert (=> b!526161 m!506929))

(assert (=> b!526161 m!506895))

(declare-fun m!506931 () Bool)

(assert (=> b!526161 m!506931))

(declare-fun m!506933 () Bool)

(assert (=> b!526156 m!506933))

(push 1)

