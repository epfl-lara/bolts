; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46354 () Bool)

(assert start!46354)

(declare-fun b!512839 () Bool)

(declare-fun res!313476 () Bool)

(declare-fun e!299481 () Bool)

(assert (=> b!512839 (=> (not res!313476) (not e!299481))))

(declare-datatypes ((array!32911 0))(
  ( (array!32912 (arr!15828 (Array (_ BitVec 32) (_ BitVec 64))) (size!16192 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32911)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32911 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!512839 (= res!313476 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!512840 () Bool)

(declare-fun e!299482 () Bool)

(declare-datatypes ((SeekEntryResult!4302 0))(
  ( (MissingZero!4302 (index!19396 (_ BitVec 32))) (Found!4302 (index!19397 (_ BitVec 32))) (Intermediate!4302 (undefined!5114 Bool) (index!19398 (_ BitVec 32)) (x!48374 (_ BitVec 32))) (Undefined!4302) (MissingVacant!4302 (index!19399 (_ BitVec 32))) )
))
(declare-fun lt!234848 () SeekEntryResult!4302)

(assert (=> b!512840 (= e!299482 (and (bvsge (index!19398 lt!234848) #b00000000000000000000000000000000) (bvslt (index!19398 lt!234848) (size!16192 a!3235))))))

(assert (=> b!512840 (bvslt (x!48374 lt!234848) #b01111111111111111111111111111110)))

(declare-fun b!512841 () Bool)

(declare-fun e!299479 () Bool)

(assert (=> b!512841 (= e!299481 e!299479)))

(declare-fun res!313477 () Bool)

(assert (=> b!512841 (=> (not res!313477) (not e!299479))))

(declare-fun lt!234850 () SeekEntryResult!4302)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!512841 (= res!313477 (or (= lt!234850 (MissingZero!4302 i!1204)) (= lt!234850 (MissingVacant!4302 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32911 (_ BitVec 32)) SeekEntryResult!4302)

(assert (=> b!512841 (= lt!234850 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!512842 () Bool)

(declare-fun res!313472 () Bool)

(assert (=> b!512842 (=> (not res!313472) (not e!299481))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!512842 (= res!313472 (validKeyInArray!0 (select (arr!15828 a!3235) j!176)))))

(declare-fun b!512843 () Bool)

(declare-fun res!313474 () Bool)

(assert (=> b!512843 (=> (not res!313474) (not e!299481))))

(assert (=> b!512843 (= res!313474 (validKeyInArray!0 k!2280))))

(declare-fun b!512845 () Bool)

(declare-fun res!313471 () Bool)

(assert (=> b!512845 (=> (not res!313471) (not e!299479))))

(declare-datatypes ((List!10039 0))(
  ( (Nil!10036) (Cons!10035 (h!10918 (_ BitVec 64)) (t!16275 List!10039)) )
))
(declare-fun arrayNoDuplicates!0 (array!32911 (_ BitVec 32) List!10039) Bool)

(assert (=> b!512845 (= res!313471 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10036))))

(declare-fun b!512846 () Bool)

(declare-fun res!313470 () Bool)

(assert (=> b!512846 (=> (not res!313470) (not e!299479))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32911 (_ BitVec 32)) Bool)

(assert (=> b!512846 (= res!313470 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!512847 () Bool)

(assert (=> b!512847 (= e!299479 (not e!299482))))

(declare-fun res!313469 () Bool)

(assert (=> b!512847 (=> res!313469 e!299482)))

(declare-fun lt!234847 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32911 (_ BitVec 32)) SeekEntryResult!4302)

(assert (=> b!512847 (= res!313469 (= lt!234848 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234847 (select (store (arr!15828 a!3235) i!1204 k!2280) j!176) (array!32912 (store (arr!15828 a!3235) i!1204 k!2280) (size!16192 a!3235)) mask!3524)))))

(declare-fun lt!234851 () (_ BitVec 32))

(assert (=> b!512847 (= lt!234848 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234851 (select (arr!15828 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!512847 (= lt!234847 (toIndex!0 (select (store (arr!15828 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!512847 (= lt!234851 (toIndex!0 (select (arr!15828 a!3235) j!176) mask!3524))))

(declare-fun e!299478 () Bool)

(assert (=> b!512847 e!299478))

(declare-fun res!313478 () Bool)

(assert (=> b!512847 (=> (not res!313478) (not e!299478))))

(assert (=> b!512847 (= res!313478 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15854 0))(
  ( (Unit!15855) )
))
(declare-fun lt!234849 () Unit!15854)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32911 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15854)

(assert (=> b!512847 (= lt!234849 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!512848 () Bool)

(assert (=> b!512848 (= e!299478 (= (seekEntryOrOpen!0 (select (arr!15828 a!3235) j!176) a!3235 mask!3524) (Found!4302 j!176)))))

(declare-fun b!512849 () Bool)

(declare-fun res!313468 () Bool)

(assert (=> b!512849 (=> (not res!313468) (not e!299481))))

(assert (=> b!512849 (= res!313468 (and (= (size!16192 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16192 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16192 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!313475 () Bool)

(assert (=> start!46354 (=> (not res!313475) (not e!299481))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46354 (= res!313475 (validMask!0 mask!3524))))

(assert (=> start!46354 e!299481))

(assert (=> start!46354 true))

(declare-fun array_inv!11602 (array!32911) Bool)

(assert (=> start!46354 (array_inv!11602 a!3235)))

(declare-fun b!512844 () Bool)

(declare-fun res!313473 () Bool)

(assert (=> b!512844 (=> res!313473 e!299482)))

(assert (=> b!512844 (= res!313473 (or (undefined!5114 lt!234848) (not (is-Intermediate!4302 lt!234848))))))

(assert (= (and start!46354 res!313475) b!512849))

(assert (= (and b!512849 res!313468) b!512842))

(assert (= (and b!512842 res!313472) b!512843))

(assert (= (and b!512843 res!313474) b!512839))

(assert (= (and b!512839 res!313476) b!512841))

(assert (= (and b!512841 res!313477) b!512846))

(assert (= (and b!512846 res!313470) b!512845))

(assert (= (and b!512845 res!313471) b!512847))

(assert (= (and b!512847 res!313478) b!512848))

(assert (= (and b!512847 (not res!313469)) b!512844))

(assert (= (and b!512844 (not res!313473)) b!512840))

(declare-fun m!494515 () Bool)

(assert (=> b!512847 m!494515))

(declare-fun m!494517 () Bool)

(assert (=> b!512847 m!494517))

(declare-fun m!494519 () Bool)

(assert (=> b!512847 m!494519))

(declare-fun m!494521 () Bool)

(assert (=> b!512847 m!494521))

(assert (=> b!512847 m!494519))

(declare-fun m!494523 () Bool)

(assert (=> b!512847 m!494523))

(assert (=> b!512847 m!494517))

(declare-fun m!494525 () Bool)

(assert (=> b!512847 m!494525))

(assert (=> b!512847 m!494517))

(declare-fun m!494527 () Bool)

(assert (=> b!512847 m!494527))

(declare-fun m!494529 () Bool)

(assert (=> b!512847 m!494529))

(assert (=> b!512847 m!494519))

(declare-fun m!494531 () Bool)

(assert (=> b!512847 m!494531))

(declare-fun m!494533 () Bool)

(assert (=> b!512846 m!494533))

(assert (=> b!512848 m!494519))

(assert (=> b!512848 m!494519))

(declare-fun m!494535 () Bool)

(assert (=> b!512848 m!494535))

(assert (=> b!512842 m!494519))

(assert (=> b!512842 m!494519))

(declare-fun m!494537 () Bool)

(assert (=> b!512842 m!494537))

(declare-fun m!494539 () Bool)

(assert (=> b!512845 m!494539))

(declare-fun m!494541 () Bool)

(assert (=> b!512841 m!494541))

(declare-fun m!494543 () Bool)

(assert (=> b!512839 m!494543))

(declare-fun m!494545 () Bool)

(assert (=> start!46354 m!494545))

(declare-fun m!494547 () Bool)

(assert (=> start!46354 m!494547))

(declare-fun m!494549 () Bool)

(assert (=> b!512843 m!494549))

(push 1)

(assert (not b!512846))

(assert (not b!512843))

(assert (not b!512847))

(assert (not b!512848))

(assert (not start!46354))

(assert (not b!512839))

(assert (not b!512841))

(assert (not b!512842))

(assert (not b!512845))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!78971 () Bool)

(assert (=> d!78971 (= (validKeyInArray!0 (select (arr!15828 a!3235) j!176)) (and (not (= (select (arr!15828 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15828 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!512842 d!78971))

(declare-fun b!513037 () Bool)

(declare-fun e!299591 () SeekEntryResult!4302)

(declare-fun e!299589 () SeekEntryResult!4302)

(assert (=> b!513037 (= e!299591 e!299589)))

(declare-fun lt!234918 () (_ BitVec 64))

(declare-fun lt!234917 () SeekEntryResult!4302)

(assert (=> b!513037 (= lt!234918 (select (arr!15828 a!3235) (index!19398 lt!234917)))))

(declare-fun c!60011 () Bool)

(assert (=> b!513037 (= c!60011 (= lt!234918 (select (arr!15828 a!3235) j!176)))))

(declare-fun b!513038 () Bool)

(assert (=> b!513038 (= e!299591 Undefined!4302)))

(declare-fun b!513039 () Bool)

(declare-fun e!299590 () SeekEntryResult!4302)

(assert (=> b!513039 (= e!299590 (MissingZero!4302 (index!19398 lt!234917)))))

(declare-fun b!513040 () Bool)

(declare-fun c!60009 () Bool)

(assert (=> b!513040 (= c!60009 (= lt!234918 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!513040 (= e!299589 e!299590)))

(declare-fun b!513041 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32911 (_ BitVec 32)) SeekEntryResult!4302)

(assert (=> b!513041 (= e!299590 (seekKeyOrZeroReturnVacant!0 (x!48374 lt!234917) (index!19398 lt!234917) (index!19398 lt!234917) (select (arr!15828 a!3235) j!176) a!3235 mask!3524))))

(declare-fun d!78973 () Bool)

(declare-fun lt!234916 () SeekEntryResult!4302)

(assert (=> d!78973 (and (or (is-Undefined!4302 lt!234916) (not (is-Found!4302 lt!234916)) (and (bvsge (index!19397 lt!234916) #b00000000000000000000000000000000) (bvslt (index!19397 lt!234916) (size!16192 a!3235)))) (or (is-Undefined!4302 lt!234916) (is-Found!4302 lt!234916) (not (is-MissingZero!4302 lt!234916)) (and (bvsge (index!19396 lt!234916) #b00000000000000000000000000000000) (bvslt (index!19396 lt!234916) (size!16192 a!3235)))) (or (is-Undefined!4302 lt!234916) (is-Found!4302 lt!234916) (is-MissingZero!4302 lt!234916) (not (is-MissingVacant!4302 lt!234916)) (and (bvsge (index!19399 lt!234916) #b00000000000000000000000000000000) (bvslt (index!19399 lt!234916) (size!16192 a!3235)))) (or (is-Undefined!4302 lt!234916) (ite (is-Found!4302 lt!234916) (= (select (arr!15828 a!3235) (index!19397 lt!234916)) (select (arr!15828 a!3235) j!176)) (ite (is-MissingZero!4302 lt!234916) (= (select (arr!15828 a!3235) (index!19396 lt!234916)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4302 lt!234916) (= (select (arr!15828 a!3235) (index!19399 lt!234916)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78973 (= lt!234916 e!299591)))

(declare-fun c!60010 () Bool)

(assert (=> d!78973 (= c!60010 (and (is-Intermediate!4302 lt!234917) (undefined!5114 lt!234917)))))

(assert (=> d!78973 (= lt!234917 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15828 a!3235) j!176) mask!3524) (select (arr!15828 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!78973 (validMask!0 mask!3524)))

(assert (=> d!78973 (= (seekEntryOrOpen!0 (select (arr!15828 a!3235) j!176) a!3235 mask!3524) lt!234916)))

(declare-fun b!513036 () Bool)

(assert (=> b!513036 (= e!299589 (Found!4302 (index!19398 lt!234917)))))

(assert (= (and d!78973 c!60010) b!513038))

(assert (= (and d!78973 (not c!60010)) b!513037))

(assert (= (and b!513037 c!60011) b!513036))

(assert (= (and b!513037 (not c!60011)) b!513040))

(assert (= (and b!513040 c!60009) b!513039))

(assert (= (and b!513040 (not c!60009)) b!513041))

(declare-fun m!494695 () Bool)

(assert (=> b!513037 m!494695))

(assert (=> b!513041 m!494519))

(declare-fun m!494697 () Bool)

(assert (=> b!513041 m!494697))

(declare-fun m!494699 () Bool)

(assert (=> d!78973 m!494699))

(assert (=> d!78973 m!494519))

(assert (=> d!78973 m!494521))

(declare-fun m!494701 () Bool)

(assert (=> d!78973 m!494701))

(assert (=> d!78973 m!494521))

(assert (=> d!78973 m!494519))

(declare-fun m!494703 () Bool)

(assert (=> d!78973 m!494703))

(declare-fun m!494705 () Bool)

(assert (=> d!78973 m!494705))

(assert (=> d!78973 m!494545))

(assert (=> b!512848 d!78973))

(declare-fun d!78993 () Bool)

(assert (=> d!78993 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!512843 d!78993))

(declare-fun d!78995 () Bool)

(assert (=> d!78995 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!46354 d!78995))

(declare-fun d!79003 () Bool)

(assert (=> d!79003 (= (array_inv!11602 a!3235) (bvsge (size!16192 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!46354 d!79003))

(declare-fun d!79005 () Bool)

(declare-fun res!313596 () Bool)

(declare-fun e!299610 () Bool)

(assert (=> d!79005 (=> res!313596 e!299610)))

(assert (=> d!79005 (= res!313596 (= (select (arr!15828 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!79005 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!299610)))

(declare-fun b!513067 () Bool)

(declare-fun e!299611 () Bool)

(assert (=> b!513067 (= e!299610 e!299611)))

(declare-fun res!313597 () Bool)

(assert (=> b!513067 (=> (not res!313597) (not e!299611))))

(assert (=> b!513067 (= res!313597 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16192 a!3235)))))

(declare-fun b!513068 () Bool)

(assert (=> b!513068 (= e!299611 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!79005 (not res!313596)) b!513067))

(assert (= (and b!513067 res!313597) b!513068))

(declare-fun m!494723 () Bool)

(assert (=> d!79005 m!494723))

(declare-fun m!494725 () Bool)

(assert (=> b!513068 m!494725))

(assert (=> b!512839 d!79005))

(declare-fun b!513095 () Bool)

(declare-fun e!299635 () Bool)

(declare-fun call!31548 () Bool)

(assert (=> b!513095 (= e!299635 call!31548)))

(declare-fun bm!31545 () Bool)

(declare-fun c!60024 () Bool)

(assert (=> bm!31545 (= call!31548 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!60024 (Cons!10035 (select (arr!15828 a!3235) #b00000000000000000000000000000000) Nil!10036) Nil!10036)))))

(declare-fun b!513096 () Bool)

(declare-fun e!299632 () Bool)

(declare-fun contains!2735 (List!10039 (_ BitVec 64)) Bool)

(assert (=> b!513096 (= e!299632 (contains!2735 Nil!10036 (select (arr!15828 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!513097 () Bool)

(declare-fun e!299634 () Bool)

(declare-fun e!299633 () Bool)

(assert (=> b!513097 (= e!299634 e!299633)))

(declare-fun res!313613 () Bool)

(assert (=> b!513097 (=> (not res!313613) (not e!299633))))

(assert (=> b!513097 (= res!313613 (not e!299632))))

(declare-fun res!313614 () Bool)

(assert (=> b!513097 (=> (not res!313614) (not e!299632))))

(assert (=> b!513097 (= res!313614 (validKeyInArray!0 (select (arr!15828 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!513098 () Bool)

(assert (=> b!513098 (= e!299633 e!299635)))

(assert (=> b!513098 (= c!60024 (validKeyInArray!0 (select (arr!15828 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!513099 () Bool)

(assert (=> b!513099 (= e!299635 call!31548)))

(declare-fun d!79007 () Bool)

(declare-fun res!313612 () Bool)

(assert (=> d!79007 (=> res!313612 e!299634)))

(assert (=> d!79007 (= res!313612 (bvsge #b00000000000000000000000000000000 (size!16192 a!3235)))))

(assert (=> d!79007 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10036) e!299634)))

(assert (= (and d!79007 (not res!313612)) b!513097))

(assert (= (and b!513097 res!313614) b!513096))

(assert (= (and b!513097 res!313613) b!513098))

(assert (= (and b!513098 c!60024) b!513099))

(assert (= (and b!513098 (not c!60024)) b!513095))

(assert (= (or b!513099 b!513095) bm!31545))

(assert (=> bm!31545 m!494723))

(declare-fun m!494739 () Bool)

(assert (=> bm!31545 m!494739))

(assert (=> b!513096 m!494723))

(assert (=> b!513096 m!494723))

(declare-fun m!494741 () Bool)

(assert (=> b!513096 m!494741))

(assert (=> b!513097 m!494723))

(assert (=> b!513097 m!494723))

(declare-fun m!494743 () Bool)

(assert (=> b!513097 m!494743))

(assert (=> b!513098 m!494723))

(assert (=> b!513098 m!494723))

(assert (=> b!513098 m!494743))

(assert (=> b!512845 d!79007))

(declare-fun bm!31549 () Bool)

(declare-fun call!31552 () Bool)

(assert (=> bm!31549 (= call!31552 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!79015 () Bool)

(declare-fun res!313625 () Bool)

(declare-fun e!299652 () Bool)

(assert (=> d!79015 (=> res!313625 e!299652)))

(assert (=> d!79015 (= res!313625 (bvsge #b00000000000000000000000000000000 (size!16192 a!3235)))))

(assert (=> d!79015 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!299652)))

(declare-fun b!513121 () Bool)

(declare-fun e!299650 () Bool)

(assert (=> b!513121 (= e!299650 call!31552)))

(declare-fun b!513122 () Bool)

(assert (=> b!513122 (= e!299652 e!299650)))

(declare-fun c!60031 () Bool)

(assert (=> b!513122 (= c!60031 (validKeyInArray!0 (select (arr!15828 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!513123 () Bool)

(declare-fun e!299651 () Bool)

(assert (=> b!513123 (= e!299651 call!31552)))

(declare-fun b!513124 () Bool)

(assert (=> b!513124 (= e!299650 e!299651)))

(declare-fun lt!234971 () (_ BitVec 64))

(assert (=> b!513124 (= lt!234971 (select (arr!15828 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!234970 () Unit!15854)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32911 (_ BitVec 64) (_ BitVec 32)) Unit!15854)

(assert (=> b!513124 (= lt!234970 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!234971 #b00000000000000000000000000000000))))

(assert (=> b!513124 (arrayContainsKey!0 a!3235 lt!234971 #b00000000000000000000000000000000)))

(declare-fun lt!234972 () Unit!15854)

(assert (=> b!513124 (= lt!234972 lt!234970)))

(declare-fun res!313624 () Bool)

(assert (=> b!513124 (= res!313624 (= (seekEntryOrOpen!0 (select (arr!15828 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4302 #b00000000000000000000000000000000)))))

(assert (=> b!513124 (=> (not res!313624) (not e!299651))))

(assert (= (and d!79015 (not res!313625)) b!513122))

(assert (= (and b!513122 c!60031) b!513124))

(assert (= (and b!513122 (not c!60031)) b!513121))

(assert (= (and b!513124 res!313624) b!513123))

(assert (= (or b!513123 b!513121) bm!31549))

(declare-fun m!494763 () Bool)

(assert (=> bm!31549 m!494763))

(assert (=> b!513122 m!494723))

(assert (=> b!513122 m!494723))

(assert (=> b!513122 m!494743))

(assert (=> b!513124 m!494723))

(declare-fun m!494765 () Bool)

(assert (=> b!513124 m!494765))

(declare-fun m!494767 () Bool)

(assert (=> b!513124 m!494767))

(assert (=> b!513124 m!494723))

(declare-fun m!494769 () Bool)

(assert (=> b!513124 m!494769))

(assert (=> b!512846 d!79015))

(declare-fun b!513126 () Bool)

(declare-fun e!299655 () SeekEntryResult!4302)

(declare-fun e!299653 () SeekEntryResult!4302)

(assert (=> b!513126 (= e!299655 e!299653)))

(declare-fun lt!234975 () (_ BitVec 64))

(declare-fun lt!234974 () SeekEntryResult!4302)

(assert (=> b!513126 (= lt!234975 (select (arr!15828 a!3235) (index!19398 lt!234974)))))

(declare-fun c!60034 () Bool)

(assert (=> b!513126 (= c!60034 (= lt!234975 k!2280))))

(declare-fun b!513127 () Bool)

(assert (=> b!513127 (= e!299655 Undefined!4302)))

(declare-fun b!513128 () Bool)

(declare-fun e!299654 () SeekEntryResult!4302)

(assert (=> b!513128 (= e!299654 (MissingZero!4302 (index!19398 lt!234974)))))

(declare-fun b!513129 () Bool)

(declare-fun c!60032 () Bool)

(assert (=> b!513129 (= c!60032 (= lt!234975 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!513129 (= e!299653 e!299654)))

(declare-fun b!513130 () Bool)

(assert (=> b!513130 (= e!299654 (seekKeyOrZeroReturnVacant!0 (x!48374 lt!234974) (index!19398 lt!234974) (index!19398 lt!234974) k!2280 a!3235 mask!3524))))

(declare-fun d!79025 () Bool)

(declare-fun lt!234973 () SeekEntryResult!4302)

(assert (=> d!79025 (and (or (is-Undefined!4302 lt!234973) (not (is-Found!4302 lt!234973)) (and (bvsge (index!19397 lt!234973) #b00000000000000000000000000000000) (bvslt (index!19397 lt!234973) (size!16192 a!3235)))) (or (is-Undefined!4302 lt!234973) (is-Found!4302 lt!234973) (not (is-MissingZero!4302 lt!234973)) (and (bvsge (index!19396 lt!234973) #b00000000000000000000000000000000) (bvslt (index!19396 lt!234973) (size!16192 a!3235)))) (or (is-Undefined!4302 lt!234973) (is-Found!4302 lt!234973) (is-MissingZero!4302 lt!234973) (not (is-MissingVacant!4302 lt!234973)) (and (bvsge (index!19399 lt!234973) #b00000000000000000000000000000000) (bvslt (index!19399 lt!234973) (size!16192 a!3235)))) (or (is-Undefined!4302 lt!234973) (ite (is-Found!4302 lt!234973) (= (select (arr!15828 a!3235) (index!19397 lt!234973)) k!2280) (ite (is-MissingZero!4302 lt!234973) (= (select (arr!15828 a!3235) (index!19396 lt!234973)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4302 lt!234973) (= (select (arr!15828 a!3235) (index!19399 lt!234973)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79025 (= lt!234973 e!299655)))

(declare-fun c!60033 () Bool)

(assert (=> d!79025 (= c!60033 (and (is-Intermediate!4302 lt!234974) (undefined!5114 lt!234974)))))

(assert (=> d!79025 (= lt!234974 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!79025 (validMask!0 mask!3524)))

(assert (=> d!79025 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!234973)))

(declare-fun b!513125 () Bool)

(assert (=> b!513125 (= e!299653 (Found!4302 (index!19398 lt!234974)))))

(assert (= (and d!79025 c!60033) b!513127))

(assert (= (and d!79025 (not c!60033)) b!513126))

(assert (= (and b!513126 c!60034) b!513125))

(assert (= (and b!513126 (not c!60034)) b!513129))

(assert (= (and b!513129 c!60032) b!513128))

(assert (= (and b!513129 (not c!60032)) b!513130))

(declare-fun m!494771 () Bool)

(assert (=> b!513126 m!494771))

(declare-fun m!494773 () Bool)

(assert (=> b!513130 m!494773))

(declare-fun m!494775 () Bool)

(assert (=> d!79025 m!494775))

(declare-fun m!494777 () Bool)

(assert (=> d!79025 m!494777))

(declare-fun m!494779 () Bool)

(assert (=> d!79025 m!494779))

(assert (=> d!79025 m!494777))

(declare-fun m!494781 () Bool)

(assert (=> d!79025 m!494781))

(declare-fun m!494783 () Bool)

(assert (=> d!79025 m!494783))

(assert (=> d!79025 m!494545))

(assert (=> b!512841 d!79025))

(declare-fun b!513185 () Bool)

(declare-fun e!299689 () SeekEntryResult!4302)

(assert (=> b!513185 (= e!299689 (Intermediate!4302 false lt!234847 #b00000000000000000000000000000000))))

(declare-fun b!513186 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!513186 (= e!299689 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!234847 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15828 a!3235) i!1204 k!2280) j!176) (array!32912 (store (arr!15828 a!3235) i!1204 k!2280) (size!16192 a!3235)) mask!3524))))

(declare-fun b!513187 () Bool)

(declare-fun e!299688 () Bool)

(declare-fun lt!234994 () SeekEntryResult!4302)

(assert (=> b!513187 (= e!299688 (bvsge (x!48374 lt!234994) #b01111111111111111111111111111110))))

(declare-fun d!79027 () Bool)

(assert (=> d!79027 e!299688))

(declare-fun c!60055 () Bool)

(assert (=> d!79027 (= c!60055 (and (is-Intermediate!4302 lt!234994) (undefined!5114 lt!234994)))))

(declare-fun e!299690 () SeekEntryResult!4302)

(assert (=> d!79027 (= lt!234994 e!299690)))

(declare-fun c!60053 () Bool)

(assert (=> d!79027 (= c!60053 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!234993 () (_ BitVec 64))

(assert (=> d!79027 (= lt!234993 (select (arr!15828 (array!32912 (store (arr!15828 a!3235) i!1204 k!2280) (size!16192 a!3235))) lt!234847))))

(assert (=> d!79027 (validMask!0 mask!3524)))

(assert (=> d!79027 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234847 (select (store (arr!15828 a!3235) i!1204 k!2280) j!176) (array!32912 (store (arr!15828 a!3235) i!1204 k!2280) (size!16192 a!3235)) mask!3524) lt!234994)))

(declare-fun b!513188 () Bool)

(assert (=> b!513188 (and (bvsge (index!19398 lt!234994) #b00000000000000000000000000000000) (bvslt (index!19398 lt!234994) (size!16192 (array!32912 (store (arr!15828 a!3235) i!1204 k!2280) (size!16192 a!3235)))))))

(declare-fun res!313645 () Bool)

(assert (=> b!513188 (= res!313645 (= (select (arr!15828 (array!32912 (store (arr!15828 a!3235) i!1204 k!2280) (size!16192 a!3235))) (index!19398 lt!234994)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!299686 () Bool)

(assert (=> b!513188 (=> res!313645 e!299686)))

(declare-fun b!513189 () Bool)

(assert (=> b!513189 (and (bvsge (index!19398 lt!234994) #b00000000000000000000000000000000) (bvslt (index!19398 lt!234994) (size!16192 (array!32912 (store (arr!15828 a!3235) i!1204 k!2280) (size!16192 a!3235)))))))

(assert (=> b!513189 (= e!299686 (= (select (arr!15828 (array!32912 (store (arr!15828 a!3235) i!1204 k!2280) (size!16192 a!3235))) (index!19398 lt!234994)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!513190 () Bool)

(declare-fun e!299687 () Bool)

(assert (=> b!513190 (= e!299688 e!299687)))

(declare-fun res!313644 () Bool)

(assert (=> b!513190 (= res!313644 (and (is-Intermediate!4302 lt!234994) (not (undefined!5114 lt!234994)) (bvslt (x!48374 lt!234994) #b01111111111111111111111111111110) (bvsge (x!48374 lt!234994) #b00000000000000000000000000000000) (bvsge (x!48374 lt!234994) #b00000000000000000000000000000000)))))

(assert (=> b!513190 (=> (not res!313644) (not e!299687))))

(declare-fun b!513191 () Bool)

(assert (=> b!513191 (= e!299690 e!299689)))

(declare-fun c!60054 () Bool)

(assert (=> b!513191 (= c!60054 (or (= lt!234993 (select (store (arr!15828 a!3235) i!1204 k!2280) j!176)) (= (bvadd lt!234993 lt!234993) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!513192 () Bool)

(assert (=> b!513192 (= e!299690 (Intermediate!4302 true lt!234847 #b00000000000000000000000000000000))))

(declare-fun b!513193 () Bool)

(assert (=> b!513193 (and (bvsge (index!19398 lt!234994) #b00000000000000000000000000000000) (bvslt (index!19398 lt!234994) (size!16192 (array!32912 (store (arr!15828 a!3235) i!1204 k!2280) (size!16192 a!3235)))))))

(declare-fun res!313646 () Bool)

(assert (=> b!513193 (= res!313646 (= (select (arr!15828 (array!32912 (store (arr!15828 a!3235) i!1204 k!2280) (size!16192 a!3235))) (index!19398 lt!234994)) (select (store (arr!15828 a!3235) i!1204 k!2280) j!176)))))

(assert (=> b!513193 (=> res!313646 e!299686)))

(assert (=> b!513193 (= e!299687 e!299686)))

(assert (= (and d!79027 c!60053) b!513192))

(assert (= (and d!79027 (not c!60053)) b!513191))

(assert (= (and b!513191 c!60054) b!513185))

(assert (= (and b!513191 (not c!60054)) b!513186))

(assert (= (and d!79027 c!60055) b!513187))

(assert (= (and d!79027 (not c!60055)) b!513190))

(assert (= (and b!513190 res!313644) b!513193))

(assert (= (and b!513193 (not res!313646)) b!513188))

(assert (= (and b!513188 (not res!313645)) b!513189))

(declare-fun m!494803 () Bool)

(assert (=> b!513193 m!494803))

(assert (=> b!513188 m!494803))

(declare-fun m!494805 () Bool)

(assert (=> d!79027 m!494805))

(assert (=> d!79027 m!494545))

(assert (=> b!513189 m!494803))

(declare-fun m!494807 () Bool)

(assert (=> b!513186 m!494807))

(assert (=> b!513186 m!494807))

(assert (=> b!513186 m!494517))

(declare-fun m!494809 () Bool)

(assert (=> b!513186 m!494809))

(assert (=> b!512847 d!79027))

(declare-fun d!79037 () Bool)

(declare-fun lt!235000 () (_ BitVec 32))

(declare-fun lt!234999 () (_ BitVec 32))

(assert (=> d!79037 (= lt!235000 (bvmul (bvxor lt!234999 (bvlshr lt!234999 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79037 (= lt!234999 ((_ extract 31 0) (bvand (bvxor (select (arr!15828 a!3235) j!176) (bvlshr (select (arr!15828 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79037 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!313647 (let ((h!10923 ((_ extract 31 0) (bvand (bvxor (select (arr!15828 a!3235) j!176) (bvlshr (select (arr!15828 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48382 (bvmul (bvxor h!10923 (bvlshr h!10923 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48382 (bvlshr x!48382 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!313647 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!313647 #b00000000000000000000000000000000))))))

(assert (=> d!79037 (= (toIndex!0 (select (arr!15828 a!3235) j!176) mask!3524) (bvand (bvxor lt!235000 (bvlshr lt!235000 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!512847 d!79037))

(declare-fun bm!31550 () Bool)

(declare-fun call!31553 () Bool)

(assert (=> bm!31550 (= call!31553 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!79039 () Bool)

(declare-fun res!313649 () Bool)

(declare-fun e!299693 () Bool)

(assert (=> d!79039 (=> res!313649 e!299693)))

(assert (=> d!79039 (= res!313649 (bvsge j!176 (size!16192 a!3235)))))

(assert (=> d!79039 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!299693)))

(declare-fun b!513194 () Bool)

(declare-fun e!299691 () Bool)

(assert (=> b!513194 (= e!299691 call!31553)))

(declare-fun b!513195 () Bool)

(assert (=> b!513195 (= e!299693 e!299691)))

(declare-fun c!60056 () Bool)

(assert (=> b!513195 (= c!60056 (validKeyInArray!0 (select (arr!15828 a!3235) j!176)))))

(declare-fun b!513196 () Bool)

(declare-fun e!299692 () Bool)

(assert (=> b!513196 (= e!299692 call!31553)))

(declare-fun b!513197 () Bool)

(assert (=> b!513197 (= e!299691 e!299692)))

(declare-fun lt!235002 () (_ BitVec 64))

(assert (=> b!513197 (= lt!235002 (select (arr!15828 a!3235) j!176))))

(declare-fun lt!235001 () Unit!15854)

(assert (=> b!513197 (= lt!235001 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!235002 j!176))))

(assert (=> b!513197 (arrayContainsKey!0 a!3235 lt!235002 #b00000000000000000000000000000000)))

(declare-fun lt!235003 () Unit!15854)

(assert (=> b!513197 (= lt!235003 lt!235001)))

(declare-fun res!313648 () Bool)

(assert (=> b!513197 (= res!313648 (= (seekEntryOrOpen!0 (select (arr!15828 a!3235) j!176) a!3235 mask!3524) (Found!4302 j!176)))))

(assert (=> b!513197 (=> (not res!313648) (not e!299692))))

(assert (= (and d!79039 (not res!313649)) b!513195))

(assert (= (and b!513195 c!60056) b!513197))

(assert (= (and b!513195 (not c!60056)) b!513194))

(assert (= (and b!513197 res!313648) b!513196))

(assert (= (or b!513196 b!513194) bm!31550))

(declare-fun m!494811 () Bool)

(assert (=> bm!31550 m!494811))

(assert (=> b!513195 m!494519))

(assert (=> b!513195 m!494519))

(assert (=> b!513195 m!494537))

(assert (=> b!513197 m!494519))

(declare-fun m!494813 () Bool)

(assert (=> b!513197 m!494813))

(declare-fun m!494815 () Bool)

(assert (=> b!513197 m!494815))

(assert (=> b!513197 m!494519))

(assert (=> b!513197 m!494535))

(assert (=> b!512847 d!79039))

(declare-fun b!513198 () Bool)

(declare-fun e!299697 () SeekEntryResult!4302)

(assert (=> b!513198 (= e!299697 (Intermediate!4302 false lt!234851 #b00000000000000000000000000000000))))

(declare-fun b!513199 () Bool)

(assert (=> b!513199 (= e!299697 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!234851 #b00000000000000000000000000000000 mask!3524) (select (arr!15828 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!513200 () Bool)

(declare-fun e!299696 () Bool)

(declare-fun lt!235005 () SeekEntryResult!4302)

(assert (=> b!513200 (= e!299696 (bvsge (x!48374 lt!235005) #b01111111111111111111111111111110))))

(declare-fun d!79041 () Bool)

(assert (=> d!79041 e!299696))

(declare-fun c!60059 () Bool)

(assert (=> d!79041 (= c!60059 (and (is-Intermediate!4302 lt!235005) (undefined!5114 lt!235005)))))

(declare-fun e!299698 () SeekEntryResult!4302)

(assert (=> d!79041 (= lt!235005 e!299698)))

(declare-fun c!60057 () Bool)

(assert (=> d!79041 (= c!60057 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!235004 () (_ BitVec 64))

(assert (=> d!79041 (= lt!235004 (select (arr!15828 a!3235) lt!234851))))

(assert (=> d!79041 (validMask!0 mask!3524)))

(assert (=> d!79041 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234851 (select (arr!15828 a!3235) j!176) a!3235 mask!3524) lt!235005)))

(declare-fun b!513201 () Bool)

(assert (=> b!513201 (and (bvsge (index!19398 lt!235005) #b00000000000000000000000000000000) (bvslt (index!19398 lt!235005) (size!16192 a!3235)))))

(declare-fun res!313651 () Bool)

(assert (=> b!513201 (= res!313651 (= (select (arr!15828 a!3235) (index!19398 lt!235005)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!299694 () Bool)

(assert (=> b!513201 (=> res!313651 e!299694)))

(declare-fun b!513202 () Bool)

(assert (=> b!513202 (and (bvsge (index!19398 lt!235005) #b00000000000000000000000000000000) (bvslt (index!19398 lt!235005) (size!16192 a!3235)))))

(assert (=> b!513202 (= e!299694 (= (select (arr!15828 a!3235) (index!19398 lt!235005)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!513203 () Bool)

(declare-fun e!299695 () Bool)

(assert (=> b!513203 (= e!299696 e!299695)))

(declare-fun res!313650 () Bool)

(assert (=> b!513203 (= res!313650 (and (is-Intermediate!4302 lt!235005) (not (undefined!5114 lt!235005)) (bvslt (x!48374 lt!235005) #b01111111111111111111111111111110) (bvsge (x!48374 lt!235005) #b00000000000000000000000000000000) (bvsge (x!48374 lt!235005) #b00000000000000000000000000000000)))))

(assert (=> b!513203 (=> (not res!313650) (not e!299695))))

(declare-fun b!513204 () Bool)

(assert (=> b!513204 (= e!299698 e!299697)))

(declare-fun c!60058 () Bool)

(assert (=> b!513204 (= c!60058 (or (= lt!235004 (select (arr!15828 a!3235) j!176)) (= (bvadd lt!235004 lt!235004) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!513205 () Bool)

(assert (=> b!513205 (= e!299698 (Intermediate!4302 true lt!234851 #b00000000000000000000000000000000))))

(declare-fun b!513206 () Bool)

(assert (=> b!513206 (and (bvsge (index!19398 lt!235005) #b00000000000000000000000000000000) (bvslt (index!19398 lt!235005) (size!16192 a!3235)))))

(declare-fun res!313652 () Bool)

(assert (=> b!513206 (= res!313652 (= (select (arr!15828 a!3235) (index!19398 lt!235005)) (select (arr!15828 a!3235) j!176)))))

(assert (=> b!513206 (=> res!313652 e!299694)))

(assert (=> b!513206 (= e!299695 e!299694)))

(assert (= (and d!79041 c!60057) b!513205))

(assert (= (and d!79041 (not c!60057)) b!513204))

(assert (= (and b!513204 c!60058) b!513198))

(assert (= (and b!513204 (not c!60058)) b!513199))

(assert (= (and d!79041 c!60059) b!513200))

(assert (= (and d!79041 (not c!60059)) b!513203))

(assert (= (and b!513203 res!313650) b!513206))

(assert (= (and b!513206 (not res!313652)) b!513201))

(assert (= (and b!513201 (not res!313651)) b!513202))

(declare-fun m!494817 () Bool)

(assert (=> b!513206 m!494817))

(assert (=> b!513201 m!494817))

(declare-fun m!494819 () Bool)

(assert (=> d!79041 m!494819))

(assert (=> d!79041 m!494545))

(assert (=> b!513202 m!494817))

(declare-fun m!494821 () Bool)

(assert (=> b!513199 m!494821))

(assert (=> b!513199 m!494821))

(assert (=> b!513199 m!494519))

(declare-fun m!494823 () Bool)

(assert (=> b!513199 m!494823))

(assert (=> b!512847 d!79041))

(declare-fun d!79043 () Bool)

(assert (=> d!79043 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!235008 () Unit!15854)

(declare-fun choose!38 (array!32911 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15854)

(assert (=> d!79043 (= lt!235008 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79043 (validMask!0 mask!3524)))

(assert (=> d!79043 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!235008)))

(declare-fun bs!16244 () Bool)

(assert (= bs!16244 d!79043))

(assert (=> bs!16244 m!494523))

(declare-fun m!494825 () Bool)

(assert (=> bs!16244 m!494825))

(assert (=> bs!16244 m!494545))

(assert (=> b!512847 d!79043))

(declare-fun d!79045 () Bool)

(declare-fun lt!235010 () (_ BitVec 32))

(declare-fun lt!235009 () (_ BitVec 32))

(assert (=> d!79045 (= lt!235010 (bvmul (bvxor lt!235009 (bvlshr lt!235009 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79045 (= lt!235009 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15828 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15828 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79045 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!313647 (let ((h!10923 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15828 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15828 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48382 (bvmul (bvxor h!10923 (bvlshr h!10923 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48382 (bvlshr x!48382 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!313647 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!313647 #b00000000000000000000000000000000))))))

(assert (=> d!79045 (= (toIndex!0 (select (store (arr!15828 a!3235) i!1204 k!2280) j!176) mask!3524) (bvand (bvxor lt!235010 (bvlshr lt!235010 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!512847 d!79045))

(push 1)

