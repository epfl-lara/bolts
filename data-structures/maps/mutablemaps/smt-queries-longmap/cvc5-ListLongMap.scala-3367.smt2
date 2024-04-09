; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46264 () Bool)

(assert start!46264)

(declare-fun b!512105 () Bool)

(declare-fun res!312921 () Bool)

(declare-fun e!299104 () Bool)

(assert (=> b!512105 (=> (not res!312921) (not e!299104))))

(declare-datatypes ((array!32878 0))(
  ( (array!32879 (arr!15813 (Array (_ BitVec 32) (_ BitVec 64))) (size!16177 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32878)

(declare-datatypes ((List!10024 0))(
  ( (Nil!10021) (Cons!10020 (h!10900 (_ BitVec 64)) (t!16260 List!10024)) )
))
(declare-fun arrayNoDuplicates!0 (array!32878 (_ BitVec 32) List!10024) Bool)

(assert (=> b!512105 (= res!312921 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10021))))

(declare-fun b!512106 () Bool)

(declare-fun e!299102 () Bool)

(assert (=> b!512106 (= e!299104 (not e!299102))))

(declare-fun res!312923 () Bool)

(assert (=> b!512106 (=> res!312923 e!299102)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!234463 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4287 0))(
  ( (MissingZero!4287 (index!19336 (_ BitVec 32))) (Found!4287 (index!19337 (_ BitVec 32))) (Intermediate!4287 (undefined!5099 Bool) (index!19338 (_ BitVec 32)) (x!48313 (_ BitVec 32))) (Undefined!4287) (MissingVacant!4287 (index!19339 (_ BitVec 32))) )
))
(declare-fun lt!234464 () SeekEntryResult!4287)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32878 (_ BitVec 32)) SeekEntryResult!4287)

(assert (=> b!512106 (= res!312923 (= lt!234464 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234463 (select (store (arr!15813 a!3235) i!1204 k!2280) j!176) (array!32879 (store (arr!15813 a!3235) i!1204 k!2280) (size!16177 a!3235)) mask!3524)))))

(declare-fun lt!234461 () (_ BitVec 32))

(assert (=> b!512106 (= lt!234464 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234461 (select (arr!15813 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!512106 (= lt!234463 (toIndex!0 (select (store (arr!15813 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!512106 (= lt!234461 (toIndex!0 (select (arr!15813 a!3235) j!176) mask!3524))))

(declare-fun lt!234459 () SeekEntryResult!4287)

(assert (=> b!512106 (= lt!234459 (Found!4287 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32878 (_ BitVec 32)) SeekEntryResult!4287)

(assert (=> b!512106 (= lt!234459 (seekEntryOrOpen!0 (select (arr!15813 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32878 (_ BitVec 32)) Bool)

(assert (=> b!512106 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15824 0))(
  ( (Unit!15825) )
))
(declare-fun lt!234462 () Unit!15824)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32878 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15824)

(assert (=> b!512106 (= lt!234462 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!312919 () Bool)

(declare-fun e!299101 () Bool)

(assert (=> start!46264 (=> (not res!312919) (not e!299101))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46264 (= res!312919 (validMask!0 mask!3524))))

(assert (=> start!46264 e!299101))

(assert (=> start!46264 true))

(declare-fun array_inv!11587 (array!32878) Bool)

(assert (=> start!46264 (array_inv!11587 a!3235)))

(declare-fun b!512107 () Bool)

(declare-fun res!312920 () Bool)

(assert (=> b!512107 (=> (not res!312920) (not e!299101))))

(assert (=> b!512107 (= res!312920 (and (= (size!16177 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16177 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16177 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!512108 () Bool)

(declare-fun res!312918 () Bool)

(assert (=> b!512108 (=> res!312918 e!299102)))

(assert (=> b!512108 (= res!312918 (or (not (is-Intermediate!4287 lt!234464)) (not (undefined!5099 lt!234464))))))

(declare-fun b!512109 () Bool)

(assert (=> b!512109 (= e!299101 e!299104)))

(declare-fun res!312917 () Bool)

(assert (=> b!512109 (=> (not res!312917) (not e!299104))))

(declare-fun lt!234460 () SeekEntryResult!4287)

(assert (=> b!512109 (= res!312917 (or (= lt!234460 (MissingZero!4287 i!1204)) (= lt!234460 (MissingVacant!4287 i!1204))))))

(assert (=> b!512109 (= lt!234460 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!512110 () Bool)

(declare-fun res!312926 () Bool)

(assert (=> b!512110 (=> (not res!312926) (not e!299101))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!512110 (= res!312926 (validKeyInArray!0 (select (arr!15813 a!3235) j!176)))))

(declare-fun b!512111 () Bool)

(declare-fun res!312922 () Bool)

(assert (=> b!512111 (=> (not res!312922) (not e!299104))))

(assert (=> b!512111 (= res!312922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!512112 () Bool)

(declare-fun res!312925 () Bool)

(assert (=> b!512112 (=> (not res!312925) (not e!299101))))

(assert (=> b!512112 (= res!312925 (validKeyInArray!0 k!2280))))

(declare-fun b!512113 () Bool)

(declare-fun res!312924 () Bool)

(assert (=> b!512113 (=> (not res!312924) (not e!299101))))

(declare-fun arrayContainsKey!0 (array!32878 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!512113 (= res!312924 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!512114 () Bool)

(assert (=> b!512114 (= e!299102 true)))

(assert (=> b!512114 (= lt!234459 Undefined!4287)))

(assert (= (and start!46264 res!312919) b!512107))

(assert (= (and b!512107 res!312920) b!512110))

(assert (= (and b!512110 res!312926) b!512112))

(assert (= (and b!512112 res!312925) b!512113))

(assert (= (and b!512113 res!312924) b!512109))

(assert (= (and b!512109 res!312917) b!512111))

(assert (= (and b!512111 res!312922) b!512105))

(assert (= (and b!512105 res!312921) b!512106))

(assert (= (and b!512106 (not res!312923)) b!512108))

(assert (= (and b!512108 (not res!312918)) b!512114))

(declare-fun m!493771 () Bool)

(assert (=> b!512111 m!493771))

(declare-fun m!493773 () Bool)

(assert (=> b!512109 m!493773))

(declare-fun m!493775 () Bool)

(assert (=> b!512110 m!493775))

(assert (=> b!512110 m!493775))

(declare-fun m!493777 () Bool)

(assert (=> b!512110 m!493777))

(declare-fun m!493779 () Bool)

(assert (=> start!46264 m!493779))

(declare-fun m!493781 () Bool)

(assert (=> start!46264 m!493781))

(declare-fun m!493783 () Bool)

(assert (=> b!512105 m!493783))

(declare-fun m!493785 () Bool)

(assert (=> b!512112 m!493785))

(declare-fun m!493787 () Bool)

(assert (=> b!512106 m!493787))

(declare-fun m!493789 () Bool)

(assert (=> b!512106 m!493789))

(declare-fun m!493791 () Bool)

(assert (=> b!512106 m!493791))

(assert (=> b!512106 m!493791))

(declare-fun m!493793 () Bool)

(assert (=> b!512106 m!493793))

(assert (=> b!512106 m!493775))

(declare-fun m!493795 () Bool)

(assert (=> b!512106 m!493795))

(assert (=> b!512106 m!493775))

(declare-fun m!493797 () Bool)

(assert (=> b!512106 m!493797))

(assert (=> b!512106 m!493775))

(declare-fun m!493799 () Bool)

(assert (=> b!512106 m!493799))

(assert (=> b!512106 m!493775))

(declare-fun m!493801 () Bool)

(assert (=> b!512106 m!493801))

(assert (=> b!512106 m!493791))

(declare-fun m!493803 () Bool)

(assert (=> b!512106 m!493803))

(declare-fun m!493805 () Bool)

(assert (=> b!512113 m!493805))

(push 1)

