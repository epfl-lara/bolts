; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46112 () Bool)

(assert start!46112)

(declare-fun b!510480 () Bool)

(declare-fun e!298364 () Bool)

(assert (=> b!510480 (= e!298364 true)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32783 0))(
  ( (array!32784 (arr!15767 (Array (_ BitVec 32) (_ BitVec 64))) (size!16131 (_ BitVec 32))) )
))
(declare-fun lt!233505 () array!32783)

(declare-datatypes ((SeekEntryResult!4241 0))(
  ( (MissingZero!4241 (index!19152 (_ BitVec 32))) (Found!4241 (index!19153 (_ BitVec 32))) (Intermediate!4241 (undefined!5053 Bool) (index!19154 (_ BitVec 32)) (x!48133 (_ BitVec 32))) (Undefined!4241) (MissingVacant!4241 (index!19155 (_ BitVec 32))) )
))
(declare-fun lt!233507 () SeekEntryResult!4241)

(declare-fun lt!233506 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32783 (_ BitVec 32)) SeekEntryResult!4241)

(assert (=> b!510480 (= lt!233507 (seekEntryOrOpen!0 lt!233506 lt!233505 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun a!3235 () array!32783)

(declare-datatypes ((Unit!15732 0))(
  ( (Unit!15733) )
))
(declare-fun lt!233503 () Unit!15732)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!32783 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!15732)

(assert (=> b!510480 (= lt!233503 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun res!311483 () Bool)

(declare-fun e!298366 () Bool)

(assert (=> start!46112 (=> (not res!311483) (not e!298366))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46112 (= res!311483 (validMask!0 mask!3524))))

(assert (=> start!46112 e!298366))

(assert (=> start!46112 true))

(declare-fun array_inv!11541 (array!32783) Bool)

(assert (=> start!46112 (array_inv!11541 a!3235)))

(declare-fun b!510481 () Bool)

(declare-fun res!311477 () Bool)

(declare-fun e!298363 () Bool)

(assert (=> b!510481 (=> (not res!311477) (not e!298363))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32783 (_ BitVec 32)) Bool)

(assert (=> b!510481 (= res!311477 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!510482 () Bool)

(declare-fun res!311478 () Bool)

(assert (=> b!510482 (=> (not res!311478) (not e!298363))))

(declare-datatypes ((List!9978 0))(
  ( (Nil!9975) (Cons!9974 (h!10851 (_ BitVec 64)) (t!16214 List!9978)) )
))
(declare-fun arrayNoDuplicates!0 (array!32783 (_ BitVec 32) List!9978) Bool)

(assert (=> b!510482 (= res!311478 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9975))))

(declare-fun b!510483 () Bool)

(assert (=> b!510483 (= e!298366 e!298363)))

(declare-fun res!311476 () Bool)

(assert (=> b!510483 (=> (not res!311476) (not e!298363))))

(declare-fun lt!233504 () SeekEntryResult!4241)

(assert (=> b!510483 (= res!311476 (or (= lt!233504 (MissingZero!4241 i!1204)) (= lt!233504 (MissingVacant!4241 i!1204))))))

(assert (=> b!510483 (= lt!233504 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!510484 () Bool)

(declare-fun res!311475 () Bool)

(assert (=> b!510484 (=> (not res!311475) (not e!298366))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510484 (= res!311475 (validKeyInArray!0 (select (arr!15767 a!3235) j!176)))))

(declare-fun b!510485 () Bool)

(declare-fun res!311479 () Bool)

(assert (=> b!510485 (=> (not res!311479) (not e!298366))))

(declare-fun arrayContainsKey!0 (array!32783 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510485 (= res!311479 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!510486 () Bool)

(assert (=> b!510486 (= e!298363 (not e!298364))))

(declare-fun res!311480 () Bool)

(assert (=> b!510486 (=> res!311480 e!298364)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32783 (_ BitVec 32)) SeekEntryResult!4241)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510486 (= res!311480 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15767 a!3235) j!176) mask!3524) (select (arr!15767 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!233506 mask!3524) lt!233506 lt!233505 mask!3524))))))

(assert (=> b!510486 (= lt!233506 (select (store (arr!15767 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!510486 (= lt!233505 (array!32784 (store (arr!15767 a!3235) i!1204 k!2280) (size!16131 a!3235)))))

(assert (=> b!510486 (= lt!233507 (Found!4241 j!176))))

(assert (=> b!510486 (= lt!233507 (seekEntryOrOpen!0 (select (arr!15767 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!510486 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!233502 () Unit!15732)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32783 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15732)

(assert (=> b!510486 (= lt!233502 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!510487 () Bool)

(declare-fun res!311481 () Bool)

(assert (=> b!510487 (=> (not res!311481) (not e!298366))))

(assert (=> b!510487 (= res!311481 (validKeyInArray!0 k!2280))))

(declare-fun b!510488 () Bool)

(declare-fun res!311482 () Bool)

(assert (=> b!510488 (=> (not res!311482) (not e!298366))))

(assert (=> b!510488 (= res!311482 (and (= (size!16131 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16131 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16131 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!46112 res!311483) b!510488))

(assert (= (and b!510488 res!311482) b!510484))

(assert (= (and b!510484 res!311475) b!510487))

(assert (= (and b!510487 res!311481) b!510485))

(assert (= (and b!510485 res!311479) b!510483))

(assert (= (and b!510483 res!311476) b!510481))

(assert (= (and b!510481 res!311477) b!510482))

(assert (= (and b!510482 res!311478) b!510486))

(assert (= (and b!510486 (not res!311480)) b!510480))

(declare-fun m!491895 () Bool)

(assert (=> b!510487 m!491895))

(declare-fun m!491897 () Bool)

(assert (=> b!510483 m!491897))

(declare-fun m!491899 () Bool)

(assert (=> b!510486 m!491899))

(declare-fun m!491901 () Bool)

(assert (=> b!510486 m!491901))

(declare-fun m!491903 () Bool)

(assert (=> b!510486 m!491903))

(declare-fun m!491905 () Bool)

(assert (=> b!510486 m!491905))

(declare-fun m!491907 () Bool)

(assert (=> b!510486 m!491907))

(declare-fun m!491909 () Bool)

(assert (=> b!510486 m!491909))

(declare-fun m!491911 () Bool)

(assert (=> b!510486 m!491911))

(declare-fun m!491913 () Bool)

(assert (=> b!510486 m!491913))

(assert (=> b!510486 m!491911))

(assert (=> b!510486 m!491909))

(declare-fun m!491915 () Bool)

(assert (=> b!510486 m!491915))

(assert (=> b!510486 m!491911))

(declare-fun m!491917 () Bool)

(assert (=> b!510486 m!491917))

(assert (=> b!510486 m!491901))

(assert (=> b!510486 m!491911))

(declare-fun m!491919 () Bool)

(assert (=> start!46112 m!491919))

(declare-fun m!491921 () Bool)

(assert (=> start!46112 m!491921))

(declare-fun m!491923 () Bool)

(assert (=> b!510481 m!491923))

(declare-fun m!491925 () Bool)

(assert (=> b!510485 m!491925))

(assert (=> b!510484 m!491911))

(assert (=> b!510484 m!491911))

(declare-fun m!491927 () Bool)

(assert (=> b!510484 m!491927))

(declare-fun m!491929 () Bool)

(assert (=> b!510480 m!491929))

(declare-fun m!491931 () Bool)

(assert (=> b!510480 m!491931))

(declare-fun m!491933 () Bool)

(assert (=> b!510482 m!491933))

(push 1)

