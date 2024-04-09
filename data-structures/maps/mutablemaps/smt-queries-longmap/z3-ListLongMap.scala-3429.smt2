; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47706 () Bool)

(assert start!47706)

(declare-fun b!524212 () Bool)

(declare-datatypes ((Unit!16362 0))(
  ( (Unit!16363) )
))
(declare-fun e!305732 () Unit!16362)

(declare-fun Unit!16364 () Unit!16362)

(assert (=> b!524212 (= e!305732 Unit!16364)))

(declare-fun b!524213 () Bool)

(declare-fun res!321280 () Bool)

(declare-fun e!305734 () Bool)

(assert (=> b!524213 (=> (not res!321280) (not e!305734))))

(declare-datatypes ((array!33303 0))(
  ( (array!33304 (arr!16000 (Array (_ BitVec 32) (_ BitVec 64))) (size!16364 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33303)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!524213 (= res!321280 (validKeyInArray!0 (select (arr!16000 a!3235) j!176)))))

(declare-fun b!524214 () Bool)

(declare-fun e!305736 () Bool)

(assert (=> b!524214 (= e!305736 true)))

(declare-datatypes ((SeekEntryResult!4474 0))(
  ( (MissingZero!4474 (index!20108 (_ BitVec 32))) (Found!4474 (index!20109 (_ BitVec 32))) (Intermediate!4474 (undefined!5286 Bool) (index!20110 (_ BitVec 32)) (x!49122 (_ BitVec 32))) (Undefined!4474) (MissingVacant!4474 (index!20111 (_ BitVec 32))) )
))
(declare-fun lt!240630 () SeekEntryResult!4474)

(assert (=> b!524214 (and (or (= (select (arr!16000 a!3235) (index!20110 lt!240630)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16000 a!3235) (index!20110 lt!240630)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16000 a!3235) (index!20110 lt!240630)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16000 a!3235) (index!20110 lt!240630)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!240634 () Unit!16362)

(assert (=> b!524214 (= lt!240634 e!305732)))

(declare-fun c!61775 () Bool)

(assert (=> b!524214 (= c!61775 (= (select (arr!16000 a!3235) (index!20110 lt!240630)) (select (arr!16000 a!3235) j!176)))))

(assert (=> b!524214 (and (bvslt (x!49122 lt!240630) #b01111111111111111111111111111110) (or (= (select (arr!16000 a!3235) (index!20110 lt!240630)) (select (arr!16000 a!3235) j!176)) (= (select (arr!16000 a!3235) (index!20110 lt!240630)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16000 a!3235) (index!20110 lt!240630)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!321282 () Bool)

(assert (=> start!47706 (=> (not res!321282) (not e!305734))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47706 (= res!321282 (validMask!0 mask!3524))))

(assert (=> start!47706 e!305734))

(assert (=> start!47706 true))

(declare-fun array_inv!11774 (array!33303) Bool)

(assert (=> start!47706 (array_inv!11774 a!3235)))

(declare-fun b!524215 () Bool)

(declare-fun Unit!16365 () Unit!16362)

(assert (=> b!524215 (= e!305732 Unit!16365)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!240633 () (_ BitVec 32))

(declare-fun lt!240635 () Unit!16362)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33303 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16362)

(assert (=> b!524215 (= lt!240635 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!240633 #b00000000000000000000000000000000 (index!20110 lt!240630) (x!49122 lt!240630) mask!3524))))

(declare-fun lt!240636 () array!33303)

(declare-fun lt!240632 () (_ BitVec 64))

(declare-fun res!321275 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33303 (_ BitVec 32)) SeekEntryResult!4474)

(assert (=> b!524215 (= res!321275 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240633 lt!240632 lt!240636 mask!3524) (Intermediate!4474 false (index!20110 lt!240630) (x!49122 lt!240630))))))

(declare-fun e!305733 () Bool)

(assert (=> b!524215 (=> (not res!321275) (not e!305733))))

(assert (=> b!524215 e!305733))

(declare-fun b!524216 () Bool)

(declare-fun res!321283 () Bool)

(assert (=> b!524216 (=> (not res!321283) (not e!305734))))

(assert (=> b!524216 (= res!321283 (validKeyInArray!0 k0!2280))))

(declare-fun b!524217 () Bool)

(declare-fun res!321273 () Bool)

(declare-fun e!305735 () Bool)

(assert (=> b!524217 (=> (not res!321273) (not e!305735))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33303 (_ BitVec 32)) Bool)

(assert (=> b!524217 (= res!321273 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!524218 () Bool)

(declare-fun res!321276 () Bool)

(assert (=> b!524218 (=> (not res!321276) (not e!305735))))

(declare-datatypes ((List!10211 0))(
  ( (Nil!10208) (Cons!10207 (h!11138 (_ BitVec 64)) (t!16447 List!10211)) )
))
(declare-fun arrayNoDuplicates!0 (array!33303 (_ BitVec 32) List!10211) Bool)

(assert (=> b!524218 (= res!321276 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10208))))

(declare-fun e!305737 () Bool)

(declare-fun b!524219 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33303 (_ BitVec 32)) SeekEntryResult!4474)

(assert (=> b!524219 (= e!305737 (= (seekEntryOrOpen!0 (select (arr!16000 a!3235) j!176) a!3235 mask!3524) (Found!4474 j!176)))))

(declare-fun b!524220 () Bool)

(assert (=> b!524220 (= e!305735 (not e!305736))))

(declare-fun res!321274 () Bool)

(assert (=> b!524220 (=> res!321274 e!305736)))

(declare-fun lt!240638 () (_ BitVec 32))

(assert (=> b!524220 (= res!321274 (= lt!240630 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240638 lt!240632 lt!240636 mask!3524)))))

(assert (=> b!524220 (= lt!240630 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240633 (select (arr!16000 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!524220 (= lt!240638 (toIndex!0 lt!240632 mask!3524))))

(assert (=> b!524220 (= lt!240632 (select (store (arr!16000 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!524220 (= lt!240633 (toIndex!0 (select (arr!16000 a!3235) j!176) mask!3524))))

(assert (=> b!524220 (= lt!240636 (array!33304 (store (arr!16000 a!3235) i!1204 k0!2280) (size!16364 a!3235)))))

(assert (=> b!524220 e!305737))

(declare-fun res!321284 () Bool)

(assert (=> b!524220 (=> (not res!321284) (not e!305737))))

(assert (=> b!524220 (= res!321284 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!240637 () Unit!16362)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33303 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16362)

(assert (=> b!524220 (= lt!240637 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!524221 () Bool)

(assert (=> b!524221 (= e!305734 e!305735)))

(declare-fun res!321279 () Bool)

(assert (=> b!524221 (=> (not res!321279) (not e!305735))))

(declare-fun lt!240631 () SeekEntryResult!4474)

(assert (=> b!524221 (= res!321279 (or (= lt!240631 (MissingZero!4474 i!1204)) (= lt!240631 (MissingVacant!4474 i!1204))))))

(assert (=> b!524221 (= lt!240631 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!524222 () Bool)

(assert (=> b!524222 (= e!305733 false)))

(declare-fun b!524223 () Bool)

(declare-fun res!321278 () Bool)

(assert (=> b!524223 (=> res!321278 e!305736)))

(get-info :version)

(assert (=> b!524223 (= res!321278 (or (undefined!5286 lt!240630) (not ((_ is Intermediate!4474) lt!240630))))))

(declare-fun b!524224 () Bool)

(declare-fun res!321281 () Bool)

(assert (=> b!524224 (=> (not res!321281) (not e!305734))))

(assert (=> b!524224 (= res!321281 (and (= (size!16364 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16364 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16364 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!524225 () Bool)

(declare-fun res!321277 () Bool)

(assert (=> b!524225 (=> (not res!321277) (not e!305734))))

(declare-fun arrayContainsKey!0 (array!33303 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!524225 (= res!321277 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!47706 res!321282) b!524224))

(assert (= (and b!524224 res!321281) b!524213))

(assert (= (and b!524213 res!321280) b!524216))

(assert (= (and b!524216 res!321283) b!524225))

(assert (= (and b!524225 res!321277) b!524221))

(assert (= (and b!524221 res!321279) b!524217))

(assert (= (and b!524217 res!321273) b!524218))

(assert (= (and b!524218 res!321276) b!524220))

(assert (= (and b!524220 res!321284) b!524219))

(assert (= (and b!524220 (not res!321274)) b!524223))

(assert (= (and b!524223 (not res!321278)) b!524214))

(assert (= (and b!524214 c!61775) b!524215))

(assert (= (and b!524214 (not c!61775)) b!524212))

(assert (= (and b!524215 res!321275) b!524222))

(declare-fun m!504883 () Bool)

(assert (=> b!524213 m!504883))

(assert (=> b!524213 m!504883))

(declare-fun m!504885 () Bool)

(assert (=> b!524213 m!504885))

(assert (=> b!524219 m!504883))

(assert (=> b!524219 m!504883))

(declare-fun m!504887 () Bool)

(assert (=> b!524219 m!504887))

(declare-fun m!504889 () Bool)

(assert (=> b!524217 m!504889))

(declare-fun m!504891 () Bool)

(assert (=> b!524225 m!504891))

(declare-fun m!504893 () Bool)

(assert (=> b!524215 m!504893))

(declare-fun m!504895 () Bool)

(assert (=> b!524215 m!504895))

(declare-fun m!504897 () Bool)

(assert (=> b!524218 m!504897))

(declare-fun m!504899 () Bool)

(assert (=> start!47706 m!504899))

(declare-fun m!504901 () Bool)

(assert (=> start!47706 m!504901))

(declare-fun m!504903 () Bool)

(assert (=> b!524220 m!504903))

(declare-fun m!504905 () Bool)

(assert (=> b!524220 m!504905))

(declare-fun m!504907 () Bool)

(assert (=> b!524220 m!504907))

(declare-fun m!504909 () Bool)

(assert (=> b!524220 m!504909))

(assert (=> b!524220 m!504883))

(declare-fun m!504911 () Bool)

(assert (=> b!524220 m!504911))

(assert (=> b!524220 m!504883))

(declare-fun m!504913 () Bool)

(assert (=> b!524220 m!504913))

(declare-fun m!504915 () Bool)

(assert (=> b!524220 m!504915))

(assert (=> b!524220 m!504883))

(declare-fun m!504917 () Bool)

(assert (=> b!524220 m!504917))

(declare-fun m!504919 () Bool)

(assert (=> b!524214 m!504919))

(assert (=> b!524214 m!504883))

(declare-fun m!504921 () Bool)

(assert (=> b!524221 m!504921))

(declare-fun m!504923 () Bool)

(assert (=> b!524216 m!504923))

(check-sat (not b!524221) (not start!47706) (not b!524217) (not b!524213) (not b!524215) (not b!524225) (not b!524219) (not b!524218) (not b!524220) (not b!524216))
(check-sat)
