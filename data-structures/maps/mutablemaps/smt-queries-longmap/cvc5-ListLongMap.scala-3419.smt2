; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47446 () Bool)

(assert start!47446)

(declare-fun b!521929 () Bool)

(declare-fun e!304450 () Bool)

(assert (=> b!521929 (= e!304450 false)))

(declare-fun b!521930 () Bool)

(declare-datatypes ((Unit!16238 0))(
  ( (Unit!16239) )
))
(declare-fun e!304453 () Unit!16238)

(declare-fun Unit!16240 () Unit!16238)

(assert (=> b!521930 (= e!304453 Unit!16240)))

(declare-fun lt!239364 () Unit!16238)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33232 0))(
  ( (array!33233 (arr!15969 (Array (_ BitVec 32) (_ BitVec 64))) (size!16333 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33232)

(declare-datatypes ((SeekEntryResult!4443 0))(
  ( (MissingZero!4443 (index!19975 (_ BitVec 32))) (Found!4443 (index!19976 (_ BitVec 32))) (Intermediate!4443 (undefined!5255 Bool) (index!19977 (_ BitVec 32)) (x!48984 (_ BitVec 32))) (Undefined!4443) (MissingVacant!4443 (index!19978 (_ BitVec 32))) )
))
(declare-fun lt!239365 () SeekEntryResult!4443)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!239369 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33232 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16238)

(assert (=> b!521930 (= lt!239364 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!239369 #b00000000000000000000000000000000 (index!19977 lt!239365) (x!48984 lt!239365) mask!3524))))

(declare-fun lt!239363 () (_ BitVec 64))

(declare-fun res!319784 () Bool)

(declare-fun lt!239366 () array!33232)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33232 (_ BitVec 32)) SeekEntryResult!4443)

(assert (=> b!521930 (= res!319784 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239369 lt!239363 lt!239366 mask!3524) (Intermediate!4443 false (index!19977 lt!239365) (x!48984 lt!239365))))))

(assert (=> b!521930 (=> (not res!319784) (not e!304450))))

(assert (=> b!521930 e!304450))

(declare-fun b!521931 () Bool)

(declare-fun res!319788 () Bool)

(declare-fun e!304456 () Bool)

(assert (=> b!521931 (=> (not res!319788) (not e!304456))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!521931 (= res!319788 (validKeyInArray!0 (select (arr!15969 a!3235) j!176)))))

(declare-fun b!521932 () Bool)

(declare-fun res!319782 () Bool)

(declare-fun e!304454 () Bool)

(assert (=> b!521932 (=> (not res!319782) (not e!304454))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33232 (_ BitVec 32)) Bool)

(assert (=> b!521932 (= res!319782 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!521933 () Bool)

(declare-fun res!319786 () Bool)

(assert (=> b!521933 (=> (not res!319786) (not e!304456))))

(assert (=> b!521933 (= res!319786 (and (= (size!16333 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16333 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16333 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!521934 () Bool)

(declare-fun res!319785 () Bool)

(assert (=> b!521934 (=> (not res!319785) (not e!304456))))

(declare-fun arrayContainsKey!0 (array!33232 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!521934 (= res!319785 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!521935 () Bool)

(declare-fun e!304455 () Bool)

(assert (=> b!521935 (= e!304455 true)))

(assert (=> b!521935 (and (or (= (select (arr!15969 a!3235) (index!19977 lt!239365)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15969 a!3235) (index!19977 lt!239365)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15969 a!3235) (index!19977 lt!239365)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15969 a!3235) (index!19977 lt!239365)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!239362 () Unit!16238)

(assert (=> b!521935 (= lt!239362 e!304453)))

(declare-fun c!61376 () Bool)

(assert (=> b!521935 (= c!61376 (= (select (arr!15969 a!3235) (index!19977 lt!239365)) (select (arr!15969 a!3235) j!176)))))

(assert (=> b!521935 (and (bvslt (x!48984 lt!239365) #b01111111111111111111111111111110) (or (= (select (arr!15969 a!3235) (index!19977 lt!239365)) (select (arr!15969 a!3235) j!176)) (= (select (arr!15969 a!3235) (index!19977 lt!239365)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15969 a!3235) (index!19977 lt!239365)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!521937 () Bool)

(assert (=> b!521937 (= e!304456 e!304454)))

(declare-fun res!319783 () Bool)

(assert (=> b!521937 (=> (not res!319783) (not e!304454))))

(declare-fun lt!239361 () SeekEntryResult!4443)

(assert (=> b!521937 (= res!319783 (or (= lt!239361 (MissingZero!4443 i!1204)) (= lt!239361 (MissingVacant!4443 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33232 (_ BitVec 32)) SeekEntryResult!4443)

(assert (=> b!521937 (= lt!239361 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!521938 () Bool)

(declare-fun Unit!16241 () Unit!16238)

(assert (=> b!521938 (= e!304453 Unit!16241)))

(declare-fun b!521939 () Bool)

(assert (=> b!521939 (= e!304454 (not e!304455))))

(declare-fun res!319779 () Bool)

(assert (=> b!521939 (=> res!319779 e!304455)))

(declare-fun lt!239368 () (_ BitVec 32))

(assert (=> b!521939 (= res!319779 (= lt!239365 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239368 lt!239363 lt!239366 mask!3524)))))

(assert (=> b!521939 (= lt!239365 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239369 (select (arr!15969 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!521939 (= lt!239368 (toIndex!0 lt!239363 mask!3524))))

(assert (=> b!521939 (= lt!239363 (select (store (arr!15969 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!521939 (= lt!239369 (toIndex!0 (select (arr!15969 a!3235) j!176) mask!3524))))

(assert (=> b!521939 (= lt!239366 (array!33233 (store (arr!15969 a!3235) i!1204 k!2280) (size!16333 a!3235)))))

(declare-fun e!304452 () Bool)

(assert (=> b!521939 e!304452))

(declare-fun res!319780 () Bool)

(assert (=> b!521939 (=> (not res!319780) (not e!304452))))

(assert (=> b!521939 (= res!319780 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!239367 () Unit!16238)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33232 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16238)

(assert (=> b!521939 (= lt!239367 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!521940 () Bool)

(declare-fun res!319790 () Bool)

(assert (=> b!521940 (=> (not res!319790) (not e!304454))))

(declare-datatypes ((List!10180 0))(
  ( (Nil!10177) (Cons!10176 (h!11098 (_ BitVec 64)) (t!16416 List!10180)) )
))
(declare-fun arrayNoDuplicates!0 (array!33232 (_ BitVec 32) List!10180) Bool)

(assert (=> b!521940 (= res!319790 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10177))))

(declare-fun res!319787 () Bool)

(assert (=> start!47446 (=> (not res!319787) (not e!304456))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47446 (= res!319787 (validMask!0 mask!3524))))

(assert (=> start!47446 e!304456))

(assert (=> start!47446 true))

(declare-fun array_inv!11743 (array!33232) Bool)

(assert (=> start!47446 (array_inv!11743 a!3235)))

(declare-fun b!521936 () Bool)

(declare-fun res!319789 () Bool)

(assert (=> b!521936 (=> (not res!319789) (not e!304456))))

(assert (=> b!521936 (= res!319789 (validKeyInArray!0 k!2280))))

(declare-fun b!521941 () Bool)

(assert (=> b!521941 (= e!304452 (= (seekEntryOrOpen!0 (select (arr!15969 a!3235) j!176) a!3235 mask!3524) (Found!4443 j!176)))))

(declare-fun b!521942 () Bool)

(declare-fun res!319781 () Bool)

(assert (=> b!521942 (=> res!319781 e!304455)))

(assert (=> b!521942 (= res!319781 (or (undefined!5255 lt!239365) (not (is-Intermediate!4443 lt!239365))))))

(assert (= (and start!47446 res!319787) b!521933))

(assert (= (and b!521933 res!319786) b!521931))

(assert (= (and b!521931 res!319788) b!521936))

(assert (= (and b!521936 res!319789) b!521934))

(assert (= (and b!521934 res!319785) b!521937))

(assert (= (and b!521937 res!319783) b!521932))

(assert (= (and b!521932 res!319782) b!521940))

(assert (= (and b!521940 res!319790) b!521939))

(assert (= (and b!521939 res!319780) b!521941))

(assert (= (and b!521939 (not res!319779)) b!521942))

(assert (= (and b!521942 (not res!319781)) b!521935))

(assert (= (and b!521935 c!61376) b!521930))

(assert (= (and b!521935 (not c!61376)) b!521938))

(assert (= (and b!521930 res!319784) b!521929))

(declare-fun m!502879 () Bool)

(assert (=> b!521935 m!502879))

(declare-fun m!502881 () Bool)

(assert (=> b!521935 m!502881))

(declare-fun m!502883 () Bool)

(assert (=> b!521930 m!502883))

(declare-fun m!502885 () Bool)

(assert (=> b!521930 m!502885))

(declare-fun m!502887 () Bool)

(assert (=> b!521939 m!502887))

(declare-fun m!502889 () Bool)

(assert (=> b!521939 m!502889))

(declare-fun m!502891 () Bool)

(assert (=> b!521939 m!502891))

(declare-fun m!502893 () Bool)

(assert (=> b!521939 m!502893))

(assert (=> b!521939 m!502881))

(declare-fun m!502895 () Bool)

(assert (=> b!521939 m!502895))

(assert (=> b!521939 m!502881))

(assert (=> b!521939 m!502881))

(declare-fun m!502897 () Bool)

(assert (=> b!521939 m!502897))

(declare-fun m!502899 () Bool)

(assert (=> b!521939 m!502899))

(declare-fun m!502901 () Bool)

(assert (=> b!521939 m!502901))

(declare-fun m!502903 () Bool)

(assert (=> b!521934 m!502903))

(declare-fun m!502905 () Bool)

(assert (=> b!521937 m!502905))

(declare-fun m!502907 () Bool)

(assert (=> start!47446 m!502907))

(declare-fun m!502909 () Bool)

(assert (=> start!47446 m!502909))

(declare-fun m!502911 () Bool)

(assert (=> b!521940 m!502911))

(declare-fun m!502913 () Bool)

(assert (=> b!521936 m!502913))

(declare-fun m!502915 () Bool)

(assert (=> b!521932 m!502915))

(assert (=> b!521931 m!502881))

(assert (=> b!521931 m!502881))

(declare-fun m!502917 () Bool)

(assert (=> b!521931 m!502917))

(assert (=> b!521941 m!502881))

(assert (=> b!521941 m!502881))

(declare-fun m!502919 () Bool)

(assert (=> b!521941 m!502919))

(push 1)

