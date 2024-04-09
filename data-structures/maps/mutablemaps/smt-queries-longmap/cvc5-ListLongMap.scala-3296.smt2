; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45730 () Bool)

(assert start!45730)

(declare-fun e!295696 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!505093 () Bool)

(declare-datatypes ((array!32446 0))(
  ( (array!32447 (arr!15600 (Array (_ BitVec 32) (_ BitVec 64))) (size!15964 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32446)

(declare-datatypes ((SeekEntryResult!4074 0))(
  ( (MissingZero!4074 (index!18484 (_ BitVec 32))) (Found!4074 (index!18485 (_ BitVec 32))) (Intermediate!4074 (undefined!4886 Bool) (index!18486 (_ BitVec 32)) (x!47526 (_ BitVec 32))) (Undefined!4074) (MissingVacant!4074 (index!18487 (_ BitVec 32))) )
))
(declare-fun lt!230213 () SeekEntryResult!4074)

(declare-fun lt!230212 () (_ BitVec 32))

(declare-fun lt!230211 () SeekEntryResult!4074)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32446 (_ BitVec 32)) SeekEntryResult!4074)

(assert (=> b!505093 (= e!295696 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!230212 (index!18486 lt!230213) (select (arr!15600 a!3235) j!176) a!3235 mask!3524) lt!230211)))))

(declare-fun b!505094 () Bool)

(declare-fun res!306338 () Bool)

(declare-fun e!295701 () Bool)

(assert (=> b!505094 (=> res!306338 e!295701)))

(assert (=> b!505094 (= res!306338 e!295696)))

(declare-fun res!306331 () Bool)

(assert (=> b!505094 (=> (not res!306331) (not e!295696))))

(assert (=> b!505094 (= res!306331 (bvsgt #b00000000000000000000000000000000 (x!47526 lt!230213)))))

(declare-fun b!505095 () Bool)

(declare-fun e!295694 () Bool)

(assert (=> b!505095 (= e!295694 false)))

(declare-fun res!306336 () Bool)

(declare-fun e!295702 () Bool)

(assert (=> start!45730 (=> (not res!306336) (not e!295702))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45730 (= res!306336 (validMask!0 mask!3524))))

(assert (=> start!45730 e!295702))

(assert (=> start!45730 true))

(declare-fun array_inv!11374 (array!32446) Bool)

(assert (=> start!45730 (array_inv!11374 a!3235)))

(declare-fun b!505096 () Bool)

(declare-fun res!306335 () Bool)

(assert (=> b!505096 (=> (not res!306335) (not e!295702))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!505096 (= res!306335 (validKeyInArray!0 (select (arr!15600 a!3235) j!176)))))

(declare-fun e!295699 () Bool)

(declare-fun b!505097 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32446 (_ BitVec 32)) SeekEntryResult!4074)

(assert (=> b!505097 (= e!295699 (= (seekEntryOrOpen!0 (select (arr!15600 a!3235) j!176) a!3235 mask!3524) (Found!4074 j!176)))))

(declare-fun b!505098 () Bool)

(declare-fun res!306326 () Bool)

(assert (=> b!505098 (=> res!306326 e!295701)))

(declare-fun lt!230205 () array!32446)

(declare-fun lt!230209 () (_ BitVec 64))

(declare-fun lt!230215 () SeekEntryResult!4074)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32446 (_ BitVec 32)) SeekEntryResult!4074)

(assert (=> b!505098 (= res!306326 (not (= lt!230215 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230212 lt!230209 lt!230205 mask!3524))))))

(declare-fun b!505099 () Bool)

(declare-datatypes ((Unit!15386 0))(
  ( (Unit!15387) )
))
(declare-fun e!295695 () Unit!15386)

(declare-fun Unit!15388 () Unit!15386)

(assert (=> b!505099 (= e!295695 Unit!15388)))

(declare-fun b!505100 () Bool)

(assert (=> b!505100 (= e!295701 (bvsge mask!3524 #b00000000000000000000000000000000))))

(assert (=> b!505100 (= (seekEntryOrOpen!0 lt!230209 lt!230205 mask!3524) lt!230211)))

(declare-fun lt!230210 () Unit!15386)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!32446 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15386)

(assert (=> b!505100 (= lt!230210 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k!2280 j!176 lt!230212 #b00000000000000000000000000000000 (index!18486 lt!230213) (x!47526 lt!230213) mask!3524))))

(declare-fun b!505101 () Bool)

(declare-fun Unit!15389 () Unit!15386)

(assert (=> b!505101 (= e!295695 Unit!15389)))

(declare-fun lt!230208 () Unit!15386)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32446 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15386)

(assert (=> b!505101 (= lt!230208 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!230212 #b00000000000000000000000000000000 (index!18486 lt!230213) (x!47526 lt!230213) mask!3524))))

(declare-fun res!306333 () Bool)

(assert (=> b!505101 (= res!306333 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230212 lt!230209 lt!230205 mask!3524) (Intermediate!4074 false (index!18486 lt!230213) (x!47526 lt!230213))))))

(assert (=> b!505101 (=> (not res!306333) (not e!295694))))

(assert (=> b!505101 e!295694))

(declare-fun b!505102 () Bool)

(declare-fun res!306327 () Bool)

(assert (=> b!505102 (=> (not res!306327) (not e!295702))))

(declare-fun arrayContainsKey!0 (array!32446 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!505102 (= res!306327 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!505103 () Bool)

(declare-fun res!306325 () Bool)

(assert (=> b!505103 (=> (not res!306325) (not e!295702))))

(assert (=> b!505103 (= res!306325 (and (= (size!15964 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15964 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15964 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!505104 () Bool)

(declare-fun res!306324 () Bool)

(declare-fun e!295698 () Bool)

(assert (=> b!505104 (=> (not res!306324) (not e!295698))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32446 (_ BitVec 32)) Bool)

(assert (=> b!505104 (= res!306324 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!505105 () Bool)

(declare-fun res!306334 () Bool)

(assert (=> b!505105 (=> (not res!306334) (not e!295702))))

(assert (=> b!505105 (= res!306334 (validKeyInArray!0 k!2280))))

(declare-fun b!505106 () Bool)

(assert (=> b!505106 (= e!295702 e!295698)))

(declare-fun res!306328 () Bool)

(assert (=> b!505106 (=> (not res!306328) (not e!295698))))

(declare-fun lt!230214 () SeekEntryResult!4074)

(assert (=> b!505106 (= res!306328 (or (= lt!230214 (MissingZero!4074 i!1204)) (= lt!230214 (MissingVacant!4074 i!1204))))))

(assert (=> b!505106 (= lt!230214 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!505107 () Bool)

(declare-fun e!295700 () Bool)

(assert (=> b!505107 (= e!295698 (not e!295700))))

(declare-fun res!306330 () Bool)

(assert (=> b!505107 (=> res!306330 e!295700)))

(assert (=> b!505107 (= res!306330 (or (= lt!230213 lt!230215) (undefined!4886 lt!230213) (not (is-Intermediate!4074 lt!230213))))))

(declare-fun lt!230206 () (_ BitVec 32))

(assert (=> b!505107 (= lt!230215 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230206 lt!230209 lt!230205 mask!3524))))

(assert (=> b!505107 (= lt!230213 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230212 (select (arr!15600 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!505107 (= lt!230206 (toIndex!0 lt!230209 mask!3524))))

(assert (=> b!505107 (= lt!230209 (select (store (arr!15600 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!505107 (= lt!230212 (toIndex!0 (select (arr!15600 a!3235) j!176) mask!3524))))

(assert (=> b!505107 (= lt!230205 (array!32447 (store (arr!15600 a!3235) i!1204 k!2280) (size!15964 a!3235)))))

(assert (=> b!505107 (= lt!230211 (Found!4074 j!176))))

(assert (=> b!505107 e!295699))

(declare-fun res!306332 () Bool)

(assert (=> b!505107 (=> (not res!306332) (not e!295699))))

(assert (=> b!505107 (= res!306332 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!230204 () Unit!15386)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32446 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15386)

(assert (=> b!505107 (= lt!230204 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!505108 () Bool)

(declare-fun res!306337 () Bool)

(assert (=> b!505108 (=> (not res!306337) (not e!295698))))

(declare-datatypes ((List!9811 0))(
  ( (Nil!9808) (Cons!9807 (h!10684 (_ BitVec 64)) (t!16047 List!9811)) )
))
(declare-fun arrayNoDuplicates!0 (array!32446 (_ BitVec 32) List!9811) Bool)

(assert (=> b!505108 (= res!306337 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9808))))

(declare-fun b!505109 () Bool)

(assert (=> b!505109 (= e!295700 e!295701)))

(declare-fun res!306329 () Bool)

(assert (=> b!505109 (=> res!306329 e!295701)))

(assert (=> b!505109 (= res!306329 (or (bvsgt (x!47526 lt!230213) #b01111111111111111111111111111110) (bvslt lt!230212 #b00000000000000000000000000000000) (bvsge lt!230212 (size!15964 a!3235)) (bvslt (index!18486 lt!230213) #b00000000000000000000000000000000) (bvsge (index!18486 lt!230213) (size!15964 a!3235)) (not (= lt!230213 (Intermediate!4074 false (index!18486 lt!230213) (x!47526 lt!230213))))))))

(assert (=> b!505109 (= (index!18486 lt!230213) i!1204)))

(declare-fun lt!230207 () Unit!15386)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32446 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15386)

(assert (=> b!505109 (= lt!230207 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!230212 #b00000000000000000000000000000000 (index!18486 lt!230213) (x!47526 lt!230213) mask!3524))))

(assert (=> b!505109 (and (or (= (select (arr!15600 a!3235) (index!18486 lt!230213)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15600 a!3235) (index!18486 lt!230213)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15600 a!3235) (index!18486 lt!230213)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15600 a!3235) (index!18486 lt!230213)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!230216 () Unit!15386)

(assert (=> b!505109 (= lt!230216 e!295695)))

(declare-fun c!59663 () Bool)

(assert (=> b!505109 (= c!59663 (= (select (arr!15600 a!3235) (index!18486 lt!230213)) (select (arr!15600 a!3235) j!176)))))

(assert (=> b!505109 (and (bvslt (x!47526 lt!230213) #b01111111111111111111111111111110) (or (= (select (arr!15600 a!3235) (index!18486 lt!230213)) (select (arr!15600 a!3235) j!176)) (= (select (arr!15600 a!3235) (index!18486 lt!230213)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15600 a!3235) (index!18486 lt!230213)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!45730 res!306336) b!505103))

(assert (= (and b!505103 res!306325) b!505096))

(assert (= (and b!505096 res!306335) b!505105))

(assert (= (and b!505105 res!306334) b!505102))

(assert (= (and b!505102 res!306327) b!505106))

(assert (= (and b!505106 res!306328) b!505104))

(assert (= (and b!505104 res!306324) b!505108))

(assert (= (and b!505108 res!306337) b!505107))

(assert (= (and b!505107 res!306332) b!505097))

(assert (= (and b!505107 (not res!306330)) b!505109))

(assert (= (and b!505109 c!59663) b!505101))

(assert (= (and b!505109 (not c!59663)) b!505099))

(assert (= (and b!505101 res!306333) b!505095))

(assert (= (and b!505109 (not res!306329)) b!505094))

(assert (= (and b!505094 res!306331) b!505093))

(assert (= (and b!505094 (not res!306338)) b!505098))

(assert (= (and b!505098 (not res!306326)) b!505100))

(declare-fun m!485797 () Bool)

(assert (=> b!505100 m!485797))

(declare-fun m!485799 () Bool)

(assert (=> b!505100 m!485799))

(declare-fun m!485801 () Bool)

(assert (=> b!505105 m!485801))

(declare-fun m!485803 () Bool)

(assert (=> b!505106 m!485803))

(declare-fun m!485805 () Bool)

(assert (=> b!505093 m!485805))

(assert (=> b!505093 m!485805))

(declare-fun m!485807 () Bool)

(assert (=> b!505093 m!485807))

(declare-fun m!485809 () Bool)

(assert (=> b!505101 m!485809))

(declare-fun m!485811 () Bool)

(assert (=> b!505101 m!485811))

(declare-fun m!485813 () Bool)

(assert (=> b!505102 m!485813))

(declare-fun m!485815 () Bool)

(assert (=> b!505104 m!485815))

(assert (=> b!505097 m!485805))

(assert (=> b!505097 m!485805))

(declare-fun m!485817 () Bool)

(assert (=> b!505097 m!485817))

(declare-fun m!485819 () Bool)

(assert (=> start!45730 m!485819))

(declare-fun m!485821 () Bool)

(assert (=> start!45730 m!485821))

(declare-fun m!485823 () Bool)

(assert (=> b!505109 m!485823))

(declare-fun m!485825 () Bool)

(assert (=> b!505109 m!485825))

(assert (=> b!505109 m!485805))

(assert (=> b!505098 m!485811))

(declare-fun m!485827 () Bool)

(assert (=> b!505108 m!485827))

(assert (=> b!505096 m!485805))

(assert (=> b!505096 m!485805))

(declare-fun m!485829 () Bool)

(assert (=> b!505096 m!485829))

(assert (=> b!505107 m!485805))

(declare-fun m!485831 () Bool)

(assert (=> b!505107 m!485831))

(declare-fun m!485833 () Bool)

(assert (=> b!505107 m!485833))

(declare-fun m!485835 () Bool)

(assert (=> b!505107 m!485835))

(declare-fun m!485837 () Bool)

(assert (=> b!505107 m!485837))

(declare-fun m!485839 () Bool)

(assert (=> b!505107 m!485839))

(assert (=> b!505107 m!485805))

(declare-fun m!485841 () Bool)

(assert (=> b!505107 m!485841))

(assert (=> b!505107 m!485805))

(declare-fun m!485843 () Bool)

(assert (=> b!505107 m!485843))

(declare-fun m!485845 () Bool)

(assert (=> b!505107 m!485845))

(push 1)

