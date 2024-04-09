; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63844 () Bool)

(assert start!63844)

(declare-fun b!717557 () Bool)

(declare-fun res!480343 () Bool)

(declare-fun e!402890 () Bool)

(assert (=> b!717557 (=> (not res!480343) (not e!402890))))

(declare-datatypes ((array!40621 0))(
  ( (array!40622 (arr!19437 (Array (_ BitVec 32) (_ BitVec 64))) (size!19858 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40621)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40621 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!717557 (= res!480343 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!717558 () Bool)

(declare-fun e!402891 () Bool)

(declare-fun e!402889 () Bool)

(assert (=> b!717558 (= e!402891 e!402889)))

(declare-fun res!480344 () Bool)

(assert (=> b!717558 (=> res!480344 e!402889)))

(declare-datatypes ((List!13492 0))(
  ( (Nil!13489) (Cons!13488 (h!14533 (_ BitVec 64)) (t!19815 List!13492)) )
))
(declare-fun contains!4033 (List!13492 (_ BitVec 64)) Bool)

(assert (=> b!717558 (= res!480344 (contains!4033 Nil!13489 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!717559 () Bool)

(declare-fun res!480348 () Bool)

(assert (=> b!717559 (=> (not res!480348) (not e!402890))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!717559 (= res!480348 (validKeyInArray!0 (select (arr!19437 a!3186) j!159)))))

(declare-fun b!717560 () Bool)

(declare-fun res!480341 () Bool)

(assert (=> b!717560 (=> (not res!480341) (not e!402891))))

(assert (=> b!717560 (= res!480341 (and (bvsle #b00000000000000000000000000000000 (size!19858 a!3186)) (bvslt (size!19858 a!3186) #b01111111111111111111111111111111)))))

(declare-fun b!717561 () Bool)

(assert (=> b!717561 (= e!402890 e!402891)))

(declare-fun res!480347 () Bool)

(assert (=> b!717561 (=> (not res!480347) (not e!402891))))

(declare-datatypes ((SeekEntryResult!7044 0))(
  ( (MissingZero!7044 (index!30543 (_ BitVec 32))) (Found!7044 (index!30544 (_ BitVec 32))) (Intermediate!7044 (undefined!7856 Bool) (index!30545 (_ BitVec 32)) (x!61593 (_ BitVec 32))) (Undefined!7044) (MissingVacant!7044 (index!30546 (_ BitVec 32))) )
))
(declare-fun lt!319127 () SeekEntryResult!7044)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!717561 (= res!480347 (or (= lt!319127 (MissingZero!7044 i!1173)) (= lt!319127 (MissingVacant!7044 i!1173))))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40621 (_ BitVec 32)) SeekEntryResult!7044)

(assert (=> b!717561 (= lt!319127 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!717562 () Bool)

(assert (=> b!717562 (= e!402889 (contains!4033 Nil!13489 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!717563 () Bool)

(declare-fun res!480339 () Bool)

(assert (=> b!717563 (=> (not res!480339) (not e!402891))))

(declare-fun noDuplicate!1282 (List!13492) Bool)

(assert (=> b!717563 (= res!480339 (noDuplicate!1282 Nil!13489))))

(declare-fun b!717564 () Bool)

(declare-fun res!480340 () Bool)

(assert (=> b!717564 (=> (not res!480340) (not e!402890))))

(assert (=> b!717564 (= res!480340 (and (= (size!19858 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19858 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19858 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!480345 () Bool)

(assert (=> start!63844 (=> (not res!480345) (not e!402890))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63844 (= res!480345 (validMask!0 mask!3328))))

(assert (=> start!63844 e!402890))

(declare-fun array_inv!15211 (array!40621) Bool)

(assert (=> start!63844 (array_inv!15211 a!3186)))

(assert (=> start!63844 true))

(declare-fun b!717565 () Bool)

(declare-fun res!480342 () Bool)

(assert (=> b!717565 (=> (not res!480342) (not e!402890))))

(assert (=> b!717565 (= res!480342 (validKeyInArray!0 k!2102))))

(declare-fun b!717566 () Bool)

(declare-fun res!480346 () Bool)

(assert (=> b!717566 (=> (not res!480346) (not e!402891))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40621 (_ BitVec 32)) Bool)

(assert (=> b!717566 (= res!480346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!63844 res!480345) b!717564))

(assert (= (and b!717564 res!480340) b!717559))

(assert (= (and b!717559 res!480348) b!717565))

(assert (= (and b!717565 res!480342) b!717557))

(assert (= (and b!717557 res!480343) b!717561))

(assert (= (and b!717561 res!480347) b!717566))

(assert (= (and b!717566 res!480346) b!717560))

(assert (= (and b!717560 res!480341) b!717563))

(assert (= (and b!717563 res!480339) b!717558))

(assert (= (and b!717558 (not res!480344)) b!717562))

(declare-fun m!673495 () Bool)

(assert (=> b!717563 m!673495))

(declare-fun m!673497 () Bool)

(assert (=> b!717566 m!673497))

(declare-fun m!673499 () Bool)

(assert (=> b!717559 m!673499))

(assert (=> b!717559 m!673499))

(declare-fun m!673501 () Bool)

(assert (=> b!717559 m!673501))

(declare-fun m!673503 () Bool)

(assert (=> start!63844 m!673503))

(declare-fun m!673505 () Bool)

(assert (=> start!63844 m!673505))

(declare-fun m!673507 () Bool)

(assert (=> b!717561 m!673507))

(declare-fun m!673509 () Bool)

(assert (=> b!717562 m!673509))

(declare-fun m!673511 () Bool)

(assert (=> b!717558 m!673511))

(declare-fun m!673513 () Bool)

(assert (=> b!717557 m!673513))

(declare-fun m!673515 () Bool)

(assert (=> b!717565 m!673515))

(push 1)

(assert (not b!717563))

(assert (not b!717557))

(assert (not b!717559))

(assert (not b!717565))

(assert (not b!717566))

(assert (not b!717558))

(assert (not b!717561))

(assert (not start!63844))

(assert (not b!717562))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!717659 () Bool)

(declare-fun e!402940 () SeekEntryResult!7044)

(declare-fun lt!319149 () SeekEntryResult!7044)

(assert (=> b!717659 (= e!402940 (Found!7044 (index!30545 lt!319149)))))

(declare-fun d!98835 () Bool)

(declare-fun lt!319150 () SeekEntryResult!7044)

(assert (=> d!98835 (and (or (is-Undefined!7044 lt!319150) (not (is-Found!7044 lt!319150)) (and (bvsge (index!30544 lt!319150) #b00000000000000000000000000000000) (bvslt (index!30544 lt!319150) (size!19858 a!3186)))) (or (is-Undefined!7044 lt!319150) (is-Found!7044 lt!319150) (not (is-MissingZero!7044 lt!319150)) (and (bvsge (index!30543 lt!319150) #b00000000000000000000000000000000) (bvslt (index!30543 lt!319150) (size!19858 a!3186)))) (or (is-Undefined!7044 lt!319150) (is-Found!7044 lt!319150) (is-MissingZero!7044 lt!319150) (not (is-MissingVacant!7044 lt!319150)) (and (bvsge (index!30546 lt!319150) #b00000000000000000000000000000000) (bvslt (index!30546 lt!319150) (size!19858 a!3186)))) (or (is-Undefined!7044 lt!319150) (ite (is-Found!7044 lt!319150) (= (select (arr!19437 a!3186) (index!30544 lt!319150)) k!2102) (ite (is-MissingZero!7044 lt!319150) (= (select (arr!19437 a!3186) (index!30543 lt!319150)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7044 lt!319150) (= (select (arr!19437 a!3186) (index!30546 lt!319150)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!402941 () SeekEntryResult!7044)

(assert (=> d!98835 (= lt!319150 e!402941)))

(declare-fun c!78984 () Bool)

(assert (=> d!98835 (= c!78984 (and (is-Intermediate!7044 lt!319149) (undefined!7856 lt!319149)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40621 (_ BitVec 32)) SeekEntryResult!7044)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!98835 (= lt!319149 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!98835 (validMask!0 mask!3328)))

(assert (=> d!98835 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!319150)))

(declare-fun b!717660 () Bool)

(assert (=> b!717660 (= e!402941 e!402940)))

(declare-fun lt!319151 () (_ BitVec 64))

(assert (=> b!717660 (= lt!319151 (select (arr!19437 a!3186) (index!30545 lt!319149)))))

(declare-fun c!78986 () Bool)

(assert (=> b!717660 (= c!78986 (= lt!319151 k!2102))))

(declare-fun b!717661 () Bool)

(declare-fun e!402942 () SeekEntryResult!7044)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40621 (_ BitVec 32)) SeekEntryResult!7044)

(assert (=> b!717661 (= e!402942 (seekKeyOrZeroReturnVacant!0 (x!61593 lt!319149) (index!30545 lt!319149) (index!30545 lt!319149) k!2102 a!3186 mask!3328))))

(declare-fun b!717662 () Bool)

(assert (=> b!717662 (= e!402941 Undefined!7044)))

(declare-fun b!717663 () Bool)

(assert (=> b!717663 (= e!402942 (MissingZero!7044 (index!30545 lt!319149)))))

(declare-fun b!717664 () Bool)

(declare-fun c!78985 () Bool)

(assert (=> b!717664 (= c!78985 (= lt!319151 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!717664 (= e!402940 e!402942)))

(assert (= (and d!98835 c!78984) b!717662))

(assert (= (and d!98835 (not c!78984)) b!717660))

(assert (= (and b!717660 c!78986) b!717659))

(assert (= (and b!717660 (not c!78986)) b!717664))

(assert (= (and b!717664 c!78985) b!717663))

(assert (= (and b!717664 (not c!78985)) b!717661))

(declare-fun m!673571 () Bool)

(assert (=> d!98835 m!673571))

(declare-fun m!673573 () Bool)

(assert (=> d!98835 m!673573))

(assert (=> d!98835 m!673503))

(declare-fun m!673575 () Bool)

(assert (=> d!98835 m!673575))

(declare-fun m!673577 () Bool)

(assert (=> d!98835 m!673577))

(assert (=> d!98835 m!673573))

(declare-fun m!673579 () Bool)

(assert (=> d!98835 m!673579))

(declare-fun m!673581 () Bool)

(assert (=> b!717660 m!673581))

(declare-fun m!673583 () Bool)

(assert (=> b!717661 m!673583))

(assert (=> b!717561 d!98835))

(declare-fun b!717683 () Bool)

(declare-fun e!402958 () Bool)

(declare-fun call!34710 () Bool)

(assert (=> b!717683 (= e!402958 call!34710)))

(declare-fun b!717684 () Bool)

(declare-fun e!402960 () Bool)

(assert (=> b!717684 (= e!402960 call!34710)))

(declare-fun bm!34707 () Bool)

(assert (=> bm!34707 (= call!34710 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun d!98847 () Bool)

(declare-fun res!480438 () Bool)

(declare-fun e!402959 () Bool)

(assert (=> d!98847 (=> res!480438 e!402959)))

(assert (=> d!98847 (= res!480438 (bvsge #b00000000000000000000000000000000 (size!19858 a!3186)))))

(assert (=> d!98847 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!402959)))

(declare-fun b!717685 () Bool)

(assert (=> b!717685 (= e!402959 e!402958)))

(declare-fun c!78990 () Bool)

(assert (=> b!717685 (= c!78990 (validKeyInArray!0 (select (arr!19437 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!717686 () Bool)

(assert (=> b!717686 (= e!402958 e!402960)))

(declare-fun lt!319164 () (_ BitVec 64))

(assert (=> b!717686 (= lt!319164 (select (arr!19437 a!3186) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!24630 0))(
  ( (Unit!24631) )
))
(declare-fun lt!319165 () Unit!24630)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!40621 (_ BitVec 64) (_ BitVec 32)) Unit!24630)

(assert (=> b!717686 (= lt!319165 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!319164 #b00000000000000000000000000000000))))

(assert (=> b!717686 (arrayContainsKey!0 a!3186 lt!319164 #b00000000000000000000000000000000)))

(declare-fun lt!319166 () Unit!24630)

(assert (=> b!717686 (= lt!319166 lt!319165)))

(declare-fun res!480437 () Bool)

(assert (=> b!717686 (= res!480437 (= (seekEntryOrOpen!0 (select (arr!19437 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7044 #b00000000000000000000000000000000)))))

(assert (=> b!717686 (=> (not res!480437) (not e!402960))))

(assert (= (and d!98847 (not res!480438)) b!717685))

(assert (= (and b!717685 c!78990) b!717686))

(assert (= (and b!717685 (not c!78990)) b!717683))

(assert (= (and b!717686 res!480437) b!717684))

(assert (= (or b!717684 b!717683) bm!34707))

(declare-fun m!673603 () Bool)

(assert (=> bm!34707 m!673603))

(declare-fun m!673605 () Bool)

(assert (=> b!717685 m!673605))

(assert (=> b!717685 m!673605))

(declare-fun m!673607 () Bool)

(assert (=> b!717685 m!673607))

(assert (=> b!717686 m!673605))

(declare-fun m!673609 () Bool)

(assert (=> b!717686 m!673609))

(declare-fun m!673611 () Bool)

(assert (=> b!717686 m!673611))

(assert (=> b!717686 m!673605))

(declare-fun m!673613 () Bool)

(assert (=> b!717686 m!673613))

(assert (=> b!717566 d!98847))

(declare-fun d!98857 () Bool)

(assert (=> d!98857 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!63844 d!98857))

(declare-fun d!98859 () Bool)

(assert (=> d!98859 (= (array_inv!15211 a!3186) (bvsge (size!19858 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!63844 d!98859))

(declare-fun d!98861 () Bool)

(declare-fun res!480449 () Bool)

(declare-fun e!402974 () Bool)

(assert (=> d!98861 (=> res!480449 e!402974)))

(assert (=> d!98861 (= res!480449 (= (select (arr!19437 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!98861 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!402974)))

(declare-fun b!717703 () Bool)

(declare-fun e!402975 () Bool)

(assert (=> b!717703 (= e!402974 e!402975)))

(declare-fun res!480450 () Bool)

(assert (=> b!717703 (=> (not res!480450) (not e!402975))))

(assert (=> b!717703 (= res!480450 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19858 a!3186)))))

(declare-fun b!717704 () Bool)

(assert (=> b!717704 (= e!402975 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!98861 (not res!480449)) b!717703))

(assert (= (and b!717703 res!480450) b!717704))

(assert (=> d!98861 m!673605))

(declare-fun m!673627 () Bool)

(assert (=> b!717704 m!673627))

(assert (=> b!717557 d!98861))

(declare-fun d!98865 () Bool)

(declare-fun lt!319178 () Bool)

(declare-fun content!380 (List!13492) (Set (_ BitVec 64)))

(assert (=> d!98865 (= lt!319178 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!380 Nil!13489)))))

(declare-fun e!402980 () Bool)

(assert (=> d!98865 (= lt!319178 e!402980)))

(declare-fun res!480456 () Bool)

(assert (=> d!98865 (=> (not res!480456) (not e!402980))))

(assert (=> d!98865 (= res!480456 (is-Cons!13488 Nil!13489))))

(assert (=> d!98865 (= (contains!4033 Nil!13489 #b1000000000000000000000000000000000000000000000000000000000000000) lt!319178)))

(declare-fun b!717709 () Bool)

(declare-fun e!402981 () Bool)

(assert (=> b!717709 (= e!402980 e!402981)))

(declare-fun res!480455 () Bool)

(assert (=> b!717709 (=> res!480455 e!402981)))

(assert (=> b!717709 (= res!480455 (= (h!14533 Nil!13489) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!717710 () Bool)

(assert (=> b!717710 (= e!402981 (contains!4033 (t!19815 Nil!13489) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98865 res!480456) b!717709))

(assert (= (and b!717709 (not res!480455)) b!717710))

(declare-fun m!673629 () Bool)

(assert (=> d!98865 m!673629))

(declare-fun m!673631 () Bool)

(assert (=> d!98865 m!673631))

(declare-fun m!673633 () Bool)

(assert (=> b!717710 m!673633))

(assert (=> b!717562 d!98865))

(declare-fun d!98867 () Bool)

(declare-fun lt!319179 () Bool)

(assert (=> d!98867 (= lt!319179 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!380 Nil!13489)))))

(declare-fun e!402982 () Bool)

(assert (=> d!98867 (= lt!319179 e!402982)))

(declare-fun res!480458 () Bool)

(assert (=> d!98867 (=> (not res!480458) (not e!402982))))

(assert (=> d!98867 (= res!480458 (is-Cons!13488 Nil!13489))))

(assert (=> d!98867 (= (contains!4033 Nil!13489 #b0000000000000000000000000000000000000000000000000000000000000000) lt!319179)))

(declare-fun b!717711 () Bool)

(declare-fun e!402983 () Bool)

(assert (=> b!717711 (= e!402982 e!402983)))

(declare-fun res!480457 () Bool)

(assert (=> b!717711 (=> res!480457 e!402983)))

(assert (=> b!717711 (= res!480457 (= (h!14533 Nil!13489) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!717712 () Bool)

(assert (=> b!717712 (= e!402983 (contains!4033 (t!19815 Nil!13489) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98867 res!480458) b!717711))

(assert (= (and b!717711 (not res!480457)) b!717712))

(assert (=> d!98867 m!673629))

(declare-fun m!673635 () Bool)

(assert (=> d!98867 m!673635))

(declare-fun m!673637 () Bool)

(assert (=> b!717712 m!673637))

(assert (=> b!717558 d!98867))

(declare-fun d!98869 () Bool)

(declare-fun res!480463 () Bool)

(declare-fun e!402988 () Bool)

(assert (=> d!98869 (=> res!480463 e!402988)))

(assert (=> d!98869 (= res!480463 (is-Nil!13489 Nil!13489))))

(assert (=> d!98869 (= (noDuplicate!1282 Nil!13489) e!402988)))

(declare-fun b!717717 () Bool)

(declare-fun e!402989 () Bool)

(assert (=> b!717717 (= e!402988 e!402989)))

(declare-fun res!480464 () Bool)

(assert (=> b!717717 (=> (not res!480464) (not e!402989))))

(assert (=> b!717717 (= res!480464 (not (contains!4033 (t!19815 Nil!13489) (h!14533 Nil!13489))))))

(declare-fun b!717718 () Bool)

(assert (=> b!717718 (= e!402989 (noDuplicate!1282 (t!19815 Nil!13489)))))

(assert (= (and d!98869 (not res!480463)) b!717717))

(assert (= (and b!717717 res!480464) b!717718))

(declare-fun m!673639 () Bool)

(assert (=> b!717717 m!673639))

(declare-fun m!673641 () Bool)

(assert (=> b!717718 m!673641))

(assert (=> b!717563 d!98869))

(declare-fun d!98871 () Bool)

(assert (=> d!98871 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!717565 d!98871))

(declare-fun d!98873 () Bool)

(assert (=> d!98873 (= (validKeyInArray!0 (select (arr!19437 a!3186) j!159)) (and (not (= (select (arr!19437 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19437 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!717559 d!98873))

(push 1)

(assert (not b!717686))

(assert (not b!717718))

(assert (not b!717704))

(assert (not d!98835))

(assert (not b!717712))

(assert (not b!717661))

(assert (not d!98865))

(assert (not d!98867))

(assert (not b!717710))

(assert (not bm!34707))

(assert (not b!717685))

(assert (not b!717717))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

