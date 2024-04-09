; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63848 () Bool)

(assert start!63848)

(declare-fun b!717617 () Bool)

(declare-fun res!480404 () Bool)

(declare-fun e!402913 () Bool)

(assert (=> b!717617 (=> (not res!480404) (not e!402913))))

(declare-datatypes ((array!40625 0))(
  ( (array!40626 (arr!19439 (Array (_ BitVec 32) (_ BitVec 64))) (size!19860 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40625)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!717617 (= res!480404 (and (= (size!19860 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19860 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19860 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!717618 () Bool)

(declare-fun e!402912 () Bool)

(declare-fun e!402915 () Bool)

(assert (=> b!717618 (= e!402912 e!402915)))

(declare-fun res!480408 () Bool)

(assert (=> b!717618 (=> res!480408 e!402915)))

(declare-datatypes ((List!13494 0))(
  ( (Nil!13491) (Cons!13490 (h!14535 (_ BitVec 64)) (t!19817 List!13494)) )
))
(declare-fun contains!4035 (List!13494 (_ BitVec 64)) Bool)

(assert (=> b!717618 (= res!480408 (contains!4035 Nil!13491 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!717619 () Bool)

(declare-fun res!480405 () Bool)

(assert (=> b!717619 (=> (not res!480405) (not e!402913))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!717619 (= res!480405 (validKeyInArray!0 (select (arr!19439 a!3186) j!159)))))

(declare-fun b!717621 () Bool)

(declare-fun res!480402 () Bool)

(assert (=> b!717621 (=> (not res!480402) (not e!402913))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40625 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!717621 (= res!480402 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!717622 () Bool)

(assert (=> b!717622 (= e!402913 e!402912)))

(declare-fun res!480406 () Bool)

(assert (=> b!717622 (=> (not res!480406) (not e!402912))))

(declare-datatypes ((SeekEntryResult!7046 0))(
  ( (MissingZero!7046 (index!30551 (_ BitVec 32))) (Found!7046 (index!30552 (_ BitVec 32))) (Intermediate!7046 (undefined!7858 Bool) (index!30553 (_ BitVec 32)) (x!61595 (_ BitVec 32))) (Undefined!7046) (MissingVacant!7046 (index!30554 (_ BitVec 32))) )
))
(declare-fun lt!319133 () SeekEntryResult!7046)

(assert (=> b!717622 (= res!480406 (or (= lt!319133 (MissingZero!7046 i!1173)) (= lt!319133 (MissingVacant!7046 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40625 (_ BitVec 32)) SeekEntryResult!7046)

(assert (=> b!717622 (= lt!319133 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!717623 () Bool)

(declare-fun res!480407 () Bool)

(assert (=> b!717623 (=> (not res!480407) (not e!402912))))

(assert (=> b!717623 (= res!480407 (and (bvsle #b00000000000000000000000000000000 (size!19860 a!3186)) (bvslt (size!19860 a!3186) #b01111111111111111111111111111111)))))

(declare-fun b!717624 () Bool)

(declare-fun res!480401 () Bool)

(assert (=> b!717624 (=> (not res!480401) (not e!402913))))

(assert (=> b!717624 (= res!480401 (validKeyInArray!0 k!2102))))

(declare-fun b!717625 () Bool)

(declare-fun res!480400 () Bool)

(assert (=> b!717625 (=> (not res!480400) (not e!402912))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40625 (_ BitVec 32)) Bool)

(assert (=> b!717625 (= res!480400 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!717626 () Bool)

(declare-fun res!480403 () Bool)

(assert (=> b!717626 (=> (not res!480403) (not e!402912))))

(declare-fun noDuplicate!1284 (List!13494) Bool)

(assert (=> b!717626 (= res!480403 (noDuplicate!1284 Nil!13491))))

(declare-fun res!480399 () Bool)

(assert (=> start!63848 (=> (not res!480399) (not e!402913))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63848 (= res!480399 (validMask!0 mask!3328))))

(assert (=> start!63848 e!402913))

(declare-fun array_inv!15213 (array!40625) Bool)

(assert (=> start!63848 (array_inv!15213 a!3186)))

(assert (=> start!63848 true))

(declare-fun b!717620 () Bool)

(assert (=> b!717620 (= e!402915 (contains!4035 Nil!13491 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!63848 res!480399) b!717617))

(assert (= (and b!717617 res!480404) b!717619))

(assert (= (and b!717619 res!480405) b!717624))

(assert (= (and b!717624 res!480401) b!717621))

(assert (= (and b!717621 res!480402) b!717622))

(assert (= (and b!717622 res!480406) b!717625))

(assert (= (and b!717625 res!480400) b!717623))

(assert (= (and b!717623 res!480407) b!717626))

(assert (= (and b!717626 res!480403) b!717618))

(assert (= (and b!717618 (not res!480408)) b!717620))

(declare-fun m!673539 () Bool)

(assert (=> start!63848 m!673539))

(declare-fun m!673541 () Bool)

(assert (=> start!63848 m!673541))

(declare-fun m!673543 () Bool)

(assert (=> b!717618 m!673543))

(declare-fun m!673545 () Bool)

(assert (=> b!717625 m!673545))

(declare-fun m!673547 () Bool)

(assert (=> b!717620 m!673547))

(declare-fun m!673549 () Bool)

(assert (=> b!717619 m!673549))

(assert (=> b!717619 m!673549))

(declare-fun m!673551 () Bool)

(assert (=> b!717619 m!673551))

(declare-fun m!673553 () Bool)

(assert (=> b!717624 m!673553))

(declare-fun m!673555 () Bool)

(assert (=> b!717621 m!673555))

(declare-fun m!673557 () Bool)

(assert (=> b!717626 m!673557))

(declare-fun m!673559 () Bool)

(assert (=> b!717622 m!673559))

(push 1)

(assert (not b!717625))

(assert (not start!63848))

(assert (not b!717621))

(assert (not b!717620))

(assert (not b!717626))

(assert (not b!717619))

(assert (not b!717618))

(assert (not b!717622))

(assert (not b!717624))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!98837 () Bool)

(declare-fun res!480419 () Bool)

(declare-fun e!402926 () Bool)

(assert (=> d!98837 (=> res!480419 e!402926)))

(assert (=> d!98837 (= res!480419 (is-Nil!13491 Nil!13491))))

(assert (=> d!98837 (= (noDuplicate!1284 Nil!13491) e!402926)))

(declare-fun b!717637 () Bool)

(declare-fun e!402927 () Bool)

(assert (=> b!717637 (= e!402926 e!402927)))

(declare-fun res!480420 () Bool)

(assert (=> b!717637 (=> (not res!480420) (not e!402927))))

(assert (=> b!717637 (= res!480420 (not (contains!4035 (t!19817 Nil!13491) (h!14535 Nil!13491))))))

(declare-fun b!717638 () Bool)

(assert (=> b!717638 (= e!402927 (noDuplicate!1284 (t!19817 Nil!13491)))))

(assert (= (and d!98837 (not res!480419)) b!717637))

(assert (= (and b!717637 res!480420) b!717638))

(declare-fun m!673567 () Bool)

(assert (=> b!717637 m!673567))

(declare-fun m!673569 () Bool)

(assert (=> b!717638 m!673569))

(assert (=> b!717626 d!98837))

(declare-fun d!98839 () Bool)

(assert (=> d!98839 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!63848 d!98839))

(declare-fun d!98849 () Bool)

(assert (=> d!98849 (= (array_inv!15213 a!3186) (bvsge (size!19860 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!63848 d!98849))

(declare-fun d!98851 () Bool)

(declare-fun lt!319163 () Bool)

(declare-fun content!381 (List!13494) (Set (_ BitVec 64)))

(assert (=> d!98851 (= lt!319163 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!381 Nil!13491)))))

(declare-fun e!402957 () Bool)

(assert (=> d!98851 (= lt!319163 e!402957)))

(declare-fun res!480436 () Bool)

(assert (=> d!98851 (=> (not res!480436) (not e!402957))))

(assert (=> d!98851 (= res!480436 (is-Cons!13490 Nil!13491))))

(assert (=> d!98851 (= (contains!4035 Nil!13491 #b1000000000000000000000000000000000000000000000000000000000000000) lt!319163)))

(declare-fun b!717681 () Bool)

(declare-fun e!402956 () Bool)

(assert (=> b!717681 (= e!402957 e!402956)))

(declare-fun res!480435 () Bool)

(assert (=> b!717681 (=> res!480435 e!402956)))

(assert (=> b!717681 (= res!480435 (= (h!14535 Nil!13491) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!717682 () Bool)

(assert (=> b!717682 (= e!402956 (contains!4035 (t!19817 Nil!13491) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98851 res!480436) b!717681))

(assert (= (and b!717681 (not res!480435)) b!717682))

(declare-fun m!673597 () Bool)

(assert (=> d!98851 m!673597))

(declare-fun m!673599 () Bool)

(assert (=> d!98851 m!673599))

(declare-fun m!673601 () Bool)

(assert (=> b!717682 m!673601))

(assert (=> b!717620 d!98851))

(declare-fun b!717695 () Bool)

(declare-fun e!402969 () Bool)

(declare-fun call!34713 () Bool)

(assert (=> b!717695 (= e!402969 call!34713)))

(declare-fun b!717696 () Bool)

(declare-fun e!402967 () Bool)

(declare-fun e!402968 () Bool)

(assert (=> b!717696 (= e!402967 e!402968)))

(declare-fun c!78993 () Bool)

(assert (=> b!717696 (= c!78993 (validKeyInArray!0 (select (arr!19439 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!717697 () Bool)

(assert (=> b!717697 (= e!402968 call!34713)))

(declare-fun b!717698 () Bool)

(assert (=> b!717698 (= e!402968 e!402969)))

(declare-fun lt!319173 () (_ BitVec 64))

