; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46114 () Bool)

(assert start!46114)

(declare-fun b!510507 () Bool)

(declare-fun e!298375 () Bool)

(declare-fun e!298378 () Bool)

(assert (=> b!510507 (= e!298375 (not e!298378))))

(declare-fun res!311508 () Bool)

(assert (=> b!510507 (=> res!311508 e!298378)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32785 0))(
  ( (array!32786 (arr!15768 (Array (_ BitVec 32) (_ BitVec 64))) (size!16132 (_ BitVec 32))) )
))
(declare-fun lt!233520 () array!32785)

(declare-fun a!3235 () array!32785)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!233522 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4242 0))(
  ( (MissingZero!4242 (index!19156 (_ BitVec 32))) (Found!4242 (index!19157 (_ BitVec 32))) (Intermediate!4242 (undefined!5054 Bool) (index!19158 (_ BitVec 32)) (x!48142 (_ BitVec 32))) (Undefined!4242) (MissingVacant!4242 (index!19159 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32785 (_ BitVec 32)) SeekEntryResult!4242)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510507 (= res!311508 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15768 a!3235) j!176) mask!3524) (select (arr!15768 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!233522 mask!3524) lt!233522 lt!233520 mask!3524))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!510507 (= lt!233522 (select (store (arr!15768 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!510507 (= lt!233520 (array!32786 (store (arr!15768 a!3235) i!1204 k!2280) (size!16132 a!3235)))))

(declare-fun lt!233523 () SeekEntryResult!4242)

(assert (=> b!510507 (= lt!233523 (Found!4242 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32785 (_ BitVec 32)) SeekEntryResult!4242)

(assert (=> b!510507 (= lt!233523 (seekEntryOrOpen!0 (select (arr!15768 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32785 (_ BitVec 32)) Bool)

(assert (=> b!510507 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15734 0))(
  ( (Unit!15735) )
))
(declare-fun lt!233521 () Unit!15734)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32785 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15734)

(assert (=> b!510507 (= lt!233521 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!510508 () Bool)

(declare-fun res!311506 () Bool)

(assert (=> b!510508 (=> (not res!311506) (not e!298375))))

(assert (=> b!510508 (= res!311506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!510509 () Bool)

(declare-fun res!311505 () Bool)

(declare-fun e!298377 () Bool)

(assert (=> b!510509 (=> (not res!311505) (not e!298377))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510509 (= res!311505 (validKeyInArray!0 k!2280))))

(declare-fun b!510510 () Bool)

(declare-fun res!311510 () Bool)

(assert (=> b!510510 (=> (not res!311510) (not e!298377))))

(assert (=> b!510510 (= res!311510 (validKeyInArray!0 (select (arr!15768 a!3235) j!176)))))

(declare-fun b!510511 () Bool)

(declare-fun res!311504 () Bool)

(assert (=> b!510511 (=> (not res!311504) (not e!298377))))

(assert (=> b!510511 (= res!311504 (and (= (size!16132 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16132 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16132 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!510512 () Bool)

(assert (=> b!510512 (= e!298377 e!298375)))

(declare-fun res!311509 () Bool)

(assert (=> b!510512 (=> (not res!311509) (not e!298375))))

(declare-fun lt!233524 () SeekEntryResult!4242)

(assert (=> b!510512 (= res!311509 (or (= lt!233524 (MissingZero!4242 i!1204)) (= lt!233524 (MissingVacant!4242 i!1204))))))

(assert (=> b!510512 (= lt!233524 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!311503 () Bool)

(assert (=> start!46114 (=> (not res!311503) (not e!298377))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46114 (= res!311503 (validMask!0 mask!3524))))

(assert (=> start!46114 e!298377))

(assert (=> start!46114 true))

(declare-fun array_inv!11542 (array!32785) Bool)

(assert (=> start!46114 (array_inv!11542 a!3235)))

(declare-fun b!510513 () Bool)

(assert (=> b!510513 (= e!298378 true)))

(assert (=> b!510513 (= lt!233523 (seekEntryOrOpen!0 lt!233522 lt!233520 mask!3524))))

(declare-fun lt!233525 () Unit!15734)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!32785 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!15734)

(assert (=> b!510513 (= lt!233525 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!510514 () Bool)

(declare-fun res!311507 () Bool)

(assert (=> b!510514 (=> (not res!311507) (not e!298377))))

(declare-fun arrayContainsKey!0 (array!32785 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510514 (= res!311507 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!510515 () Bool)

(declare-fun res!311502 () Bool)

(assert (=> b!510515 (=> (not res!311502) (not e!298375))))

(declare-datatypes ((List!9979 0))(
  ( (Nil!9976) (Cons!9975 (h!10852 (_ BitVec 64)) (t!16215 List!9979)) )
))
(declare-fun arrayNoDuplicates!0 (array!32785 (_ BitVec 32) List!9979) Bool)

(assert (=> b!510515 (= res!311502 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9976))))

(assert (= (and start!46114 res!311503) b!510511))

(assert (= (and b!510511 res!311504) b!510510))

(assert (= (and b!510510 res!311510) b!510509))

(assert (= (and b!510509 res!311505) b!510514))

(assert (= (and b!510514 res!311507) b!510512))

(assert (= (and b!510512 res!311509) b!510508))

(assert (= (and b!510508 res!311506) b!510515))

(assert (= (and b!510515 res!311502) b!510507))

(assert (= (and b!510507 (not res!311508)) b!510513))

(declare-fun m!491935 () Bool)

(assert (=> start!46114 m!491935))

(declare-fun m!491937 () Bool)

(assert (=> start!46114 m!491937))

(declare-fun m!491939 () Bool)

(assert (=> b!510515 m!491939))

(declare-fun m!491941 () Bool)

(assert (=> b!510513 m!491941))

(declare-fun m!491943 () Bool)

(assert (=> b!510513 m!491943))

(declare-fun m!491945 () Bool)

(assert (=> b!510510 m!491945))

(assert (=> b!510510 m!491945))

(declare-fun m!491947 () Bool)

(assert (=> b!510510 m!491947))

(declare-fun m!491949 () Bool)

(assert (=> b!510507 m!491949))

(declare-fun m!491951 () Bool)

(assert (=> b!510507 m!491951))

(declare-fun m!491953 () Bool)

(assert (=> b!510507 m!491953))

(declare-fun m!491955 () Bool)

(assert (=> b!510507 m!491955))

(assert (=> b!510507 m!491945))

(declare-fun m!491957 () Bool)

(assert (=> b!510507 m!491957))

(assert (=> b!510507 m!491945))

(assert (=> b!510507 m!491955))

(declare-fun m!491959 () Bool)

(assert (=> b!510507 m!491959))

(declare-fun m!491961 () Bool)

(assert (=> b!510507 m!491961))

(assert (=> b!510507 m!491945))

(assert (=> b!510507 m!491945))

(declare-fun m!491963 () Bool)

(assert (=> b!510507 m!491963))

(declare-fun m!491965 () Bool)

(assert (=> b!510507 m!491965))

(assert (=> b!510507 m!491959))

(declare-fun m!491967 () Bool)

(assert (=> b!510508 m!491967))

(declare-fun m!491969 () Bool)

(assert (=> b!510514 m!491969))

(declare-fun m!491971 () Bool)

(assert (=> b!510509 m!491971))

(declare-fun m!491973 () Bool)

(assert (=> b!510512 m!491973))

(push 1)

