; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46996 () Bool)

(assert start!46996)

(declare-fun b!517840 () Bool)

(declare-fun res!317013 () Bool)

(declare-fun e!302182 () Bool)

(assert (=> b!517840 (=> res!317013 e!302182)))

(declare-datatypes ((SeekEntryResult!4383 0))(
  ( (MissingZero!4383 (index!19720 (_ BitVec 32))) (Found!4383 (index!19721 (_ BitVec 32))) (Intermediate!4383 (undefined!5195 Bool) (index!19722 (_ BitVec 32)) (x!48719 (_ BitVec 32))) (Undefined!4383) (MissingVacant!4383 (index!19723 (_ BitVec 32))) )
))
(declare-fun lt!237096 () SeekEntryResult!4383)

(assert (=> b!517840 (= res!317013 (or (undefined!5195 lt!237096) (not (is-Intermediate!4383 lt!237096))))))

(declare-fun b!517841 () Bool)

(declare-fun e!302183 () Bool)

(declare-fun e!302184 () Bool)

(assert (=> b!517841 (= e!302183 e!302184)))

(declare-fun res!317015 () Bool)

(assert (=> b!517841 (=> (not res!317015) (not e!302184))))

(declare-fun lt!237098 () SeekEntryResult!4383)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!517841 (= res!317015 (or (= lt!237098 (MissingZero!4383 i!1204)) (= lt!237098 (MissingVacant!4383 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33097 0))(
  ( (array!33098 (arr!15909 (Array (_ BitVec 32) (_ BitVec 64))) (size!16273 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33097)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33097 (_ BitVec 32)) SeekEntryResult!4383)

(assert (=> b!517841 (= lt!237098 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!517842 () Bool)

(declare-fun res!317011 () Bool)

(assert (=> b!517842 (=> (not res!317011) (not e!302183))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!517842 (= res!317011 (validKeyInArray!0 k!2280))))

(declare-fun b!517843 () Bool)

(declare-fun res!317010 () Bool)

(assert (=> b!517843 (=> (not res!317010) (not e!302183))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!517843 (= res!317010 (validKeyInArray!0 (select (arr!15909 a!3235) j!176)))))

(declare-fun b!517844 () Bool)

(assert (=> b!517844 (= e!302184 (not e!302182))))

(declare-fun res!317014 () Bool)

(assert (=> b!517844 (=> res!317014 e!302182)))

(declare-fun lt!237095 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33097 (_ BitVec 32)) SeekEntryResult!4383)

(assert (=> b!517844 (= res!317014 (= lt!237096 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237095 (select (store (arr!15909 a!3235) i!1204 k!2280) j!176) (array!33098 (store (arr!15909 a!3235) i!1204 k!2280) (size!16273 a!3235)) mask!3524)))))

(declare-fun lt!237094 () (_ BitVec 32))

(assert (=> b!517844 (= lt!237096 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237094 (select (arr!15909 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!517844 (= lt!237095 (toIndex!0 (select (store (arr!15909 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!517844 (= lt!237094 (toIndex!0 (select (arr!15909 a!3235) j!176) mask!3524))))

(declare-fun e!302185 () Bool)

(assert (=> b!517844 e!302185))

(declare-fun res!317012 () Bool)

(assert (=> b!517844 (=> (not res!317012) (not e!302185))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33097 (_ BitVec 32)) Bool)

(assert (=> b!517844 (= res!317012 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16016 0))(
  ( (Unit!16017) )
))
(declare-fun lt!237097 () Unit!16016)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33097 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16016)

(assert (=> b!517844 (= lt!237097 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!517845 () Bool)

(declare-fun res!317005 () Bool)

(assert (=> b!517845 (=> (not res!317005) (not e!302184))))

(declare-datatypes ((List!10120 0))(
  ( (Nil!10117) (Cons!10116 (h!11023 (_ BitVec 64)) (t!16356 List!10120)) )
))
(declare-fun arrayNoDuplicates!0 (array!33097 (_ BitVec 32) List!10120) Bool)

(assert (=> b!517845 (= res!317005 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10117))))

(declare-fun res!317006 () Bool)

(assert (=> start!46996 (=> (not res!317006) (not e!302183))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46996 (= res!317006 (validMask!0 mask!3524))))

(assert (=> start!46996 e!302183))

(assert (=> start!46996 true))

(declare-fun array_inv!11683 (array!33097) Bool)

(assert (=> start!46996 (array_inv!11683 a!3235)))

(declare-fun b!517846 () Bool)

(assert (=> b!517846 (= e!302182 (or (not (= (select (arr!15909 a!3235) (index!19722 lt!237096)) (select (arr!15909 a!3235) j!176))) (bvsgt (x!48719 lt!237096) #b01111111111111111111111111111110) (bvsgt #b00000000000000000000000000000000 (x!48719 lt!237096)) (bvslt lt!237094 #b00000000000000000000000000000000) (bvsge lt!237094 (size!16273 a!3235)) (bvslt (index!19722 lt!237096) #b00000000000000000000000000000000) (bvsge (index!19722 lt!237096) (size!16273 a!3235)) (= lt!237096 (Intermediate!4383 false (index!19722 lt!237096) (x!48719 lt!237096)))))))

(assert (=> b!517846 (and (bvslt (x!48719 lt!237096) #b01111111111111111111111111111110) (or (= (select (arr!15909 a!3235) (index!19722 lt!237096)) (select (arr!15909 a!3235) j!176)) (= (select (arr!15909 a!3235) (index!19722 lt!237096)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15909 a!3235) (index!19722 lt!237096)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!517847 () Bool)

(declare-fun res!317009 () Bool)

(assert (=> b!517847 (=> (not res!317009) (not e!302183))))

(assert (=> b!517847 (= res!317009 (and (= (size!16273 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16273 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16273 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!517848 () Bool)

(declare-fun res!317007 () Bool)

(assert (=> b!517848 (=> (not res!317007) (not e!302183))))

(declare-fun arrayContainsKey!0 (array!33097 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!517848 (= res!317007 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!517849 () Bool)

(declare-fun res!317008 () Bool)

(assert (=> b!517849 (=> (not res!317008) (not e!302184))))

(assert (=> b!517849 (= res!317008 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!517850 () Bool)

(assert (=> b!517850 (= e!302185 (= (seekEntryOrOpen!0 (select (arr!15909 a!3235) j!176) a!3235 mask!3524) (Found!4383 j!176)))))

(assert (= (and start!46996 res!317006) b!517847))

(assert (= (and b!517847 res!317009) b!517843))

(assert (= (and b!517843 res!317010) b!517842))

(assert (= (and b!517842 res!317011) b!517848))

(assert (= (and b!517848 res!317007) b!517841))

(assert (= (and b!517841 res!317015) b!517849))

(assert (= (and b!517849 res!317008) b!517845))

(assert (= (and b!517845 res!317005) b!517844))

(assert (= (and b!517844 res!317012) b!517850))

(assert (= (and b!517844 (not res!317014)) b!517840))

(assert (= (and b!517840 (not res!317013)) b!517846))

(declare-fun m!499213 () Bool)

(assert (=> b!517841 m!499213))

(declare-fun m!499215 () Bool)

(assert (=> b!517850 m!499215))

(assert (=> b!517850 m!499215))

(declare-fun m!499217 () Bool)

(assert (=> b!517850 m!499217))

(declare-fun m!499219 () Bool)

(assert (=> b!517844 m!499219))

(declare-fun m!499221 () Bool)

(assert (=> b!517844 m!499221))

(declare-fun m!499223 () Bool)

(assert (=> b!517844 m!499223))

(assert (=> b!517844 m!499215))

(declare-fun m!499225 () Bool)

(assert (=> b!517844 m!499225))

(assert (=> b!517844 m!499215))

(declare-fun m!499227 () Bool)

(assert (=> b!517844 m!499227))

(assert (=> b!517844 m!499223))

(declare-fun m!499229 () Bool)

(assert (=> b!517844 m!499229))

(assert (=> b!517844 m!499215))

(declare-fun m!499231 () Bool)

(assert (=> b!517844 m!499231))

(assert (=> b!517844 m!499223))

(declare-fun m!499233 () Bool)

(assert (=> b!517844 m!499233))

(assert (=> b!517843 m!499215))

(assert (=> b!517843 m!499215))

(declare-fun m!499235 () Bool)

(assert (=> b!517843 m!499235))

(declare-fun m!499237 () Bool)

(assert (=> b!517849 m!499237))

(declare-fun m!499239 () Bool)

(assert (=> b!517846 m!499239))

(assert (=> b!517846 m!499215))

(declare-fun m!499241 () Bool)

(assert (=> b!517848 m!499241))

(declare-fun m!499243 () Bool)

(assert (=> start!46996 m!499243))

(declare-fun m!499245 () Bool)

(assert (=> start!46996 m!499245))

(declare-fun m!499247 () Bool)

(assert (=> b!517845 m!499247))

(declare-fun m!499249 () Bool)

(assert (=> b!517842 m!499249))

(push 1)

