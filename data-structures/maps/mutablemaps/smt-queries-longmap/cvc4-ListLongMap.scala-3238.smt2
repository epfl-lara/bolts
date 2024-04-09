; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45248 () Bool)

(assert start!45248)

(declare-fun b!496555 () Bool)

(declare-fun res!299100 () Bool)

(declare-fun e!291156 () Bool)

(assert (=> b!496555 (=> (not res!299100) (not e!291156))))

(declare-datatypes ((array!32096 0))(
  ( (array!32097 (arr!15428 (Array (_ BitVec 32) (_ BitVec 64))) (size!15792 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32096)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32096 (_ BitVec 32)) Bool)

(assert (=> b!496555 (= res!299100 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496556 () Bool)

(declare-fun res!299094 () Bool)

(declare-fun e!291159 () Bool)

(assert (=> b!496556 (=> (not res!299094) (not e!291159))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32096 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496556 (= res!299094 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!496557 () Bool)

(declare-fun e!291160 () Bool)

(assert (=> b!496557 (= e!291160 true)))

(declare-datatypes ((SeekEntryResult!3902 0))(
  ( (MissingZero!3902 (index!17787 (_ BitVec 32))) (Found!3902 (index!17788 (_ BitVec 32))) (Intermediate!3902 (undefined!4714 Bool) (index!17789 (_ BitVec 32)) (x!46869 (_ BitVec 32))) (Undefined!3902) (MissingVacant!3902 (index!17790 (_ BitVec 32))) )
))
(declare-fun lt!224849 () SeekEntryResult!3902)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!496557 (and (bvslt (x!46869 lt!224849) #b01111111111111111111111111111110) (or (= (select (arr!15428 a!3235) (index!17789 lt!224849)) (select (arr!15428 a!3235) j!176)) (= (select (arr!15428 a!3235) (index!17789 lt!224849)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15428 a!3235) (index!17789 lt!224849)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!496559 () Bool)

(assert (=> b!496559 (= e!291159 e!291156)))

(declare-fun res!299098 () Bool)

(assert (=> b!496559 (=> (not res!299098) (not e!291156))))

(declare-fun lt!224846 () SeekEntryResult!3902)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!496559 (= res!299098 (or (= lt!224846 (MissingZero!3902 i!1204)) (= lt!224846 (MissingVacant!3902 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32096 (_ BitVec 32)) SeekEntryResult!3902)

(assert (=> b!496559 (= lt!224846 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!496560 () Bool)

(assert (=> b!496560 (= e!291156 (not e!291160))))

(declare-fun res!299092 () Bool)

(assert (=> b!496560 (=> res!299092 e!291160)))

(declare-fun lt!224847 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32096 (_ BitVec 32)) SeekEntryResult!3902)

(assert (=> b!496560 (= res!299092 (= lt!224849 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224847 (select (store (arr!15428 a!3235) i!1204 k!2280) j!176) (array!32097 (store (arr!15428 a!3235) i!1204 k!2280) (size!15792 a!3235)) mask!3524)))))

(declare-fun lt!224845 () (_ BitVec 32))

(assert (=> b!496560 (= lt!224849 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224845 (select (arr!15428 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496560 (= lt!224847 (toIndex!0 (select (store (arr!15428 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!496560 (= lt!224845 (toIndex!0 (select (arr!15428 a!3235) j!176) mask!3524))))

(declare-fun e!291157 () Bool)

(assert (=> b!496560 e!291157))

(declare-fun res!299097 () Bool)

(assert (=> b!496560 (=> (not res!299097) (not e!291157))))

(assert (=> b!496560 (= res!299097 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14742 0))(
  ( (Unit!14743) )
))
(declare-fun lt!224848 () Unit!14742)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32096 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14742)

(assert (=> b!496560 (= lt!224848 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!496561 () Bool)

(declare-fun res!299095 () Bool)

(assert (=> b!496561 (=> (not res!299095) (not e!291159))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496561 (= res!299095 (validKeyInArray!0 k!2280))))

(declare-fun b!496562 () Bool)

(declare-fun res!299099 () Bool)

(assert (=> b!496562 (=> (not res!299099) (not e!291159))))

(assert (=> b!496562 (= res!299099 (validKeyInArray!0 (select (arr!15428 a!3235) j!176)))))

(declare-fun b!496563 () Bool)

(declare-fun res!299096 () Bool)

(assert (=> b!496563 (=> (not res!299096) (not e!291159))))

(assert (=> b!496563 (= res!299096 (and (= (size!15792 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15792 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15792 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!299102 () Bool)

(assert (=> start!45248 (=> (not res!299102) (not e!291159))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45248 (= res!299102 (validMask!0 mask!3524))))

(assert (=> start!45248 e!291159))

(assert (=> start!45248 true))

(declare-fun array_inv!11202 (array!32096) Bool)

(assert (=> start!45248 (array_inv!11202 a!3235)))

(declare-fun b!496558 () Bool)

(declare-fun res!299093 () Bool)

(assert (=> b!496558 (=> res!299093 e!291160)))

(assert (=> b!496558 (= res!299093 (or (undefined!4714 lt!224849) (not (is-Intermediate!3902 lt!224849))))))

(declare-fun b!496564 () Bool)

(declare-fun res!299101 () Bool)

(assert (=> b!496564 (=> (not res!299101) (not e!291156))))

(declare-datatypes ((List!9639 0))(
  ( (Nil!9636) (Cons!9635 (h!10506 (_ BitVec 64)) (t!15875 List!9639)) )
))
(declare-fun arrayNoDuplicates!0 (array!32096 (_ BitVec 32) List!9639) Bool)

(assert (=> b!496564 (= res!299101 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9636))))

(declare-fun b!496565 () Bool)

(assert (=> b!496565 (= e!291157 (= (seekEntryOrOpen!0 (select (arr!15428 a!3235) j!176) a!3235 mask!3524) (Found!3902 j!176)))))

(assert (= (and start!45248 res!299102) b!496563))

(assert (= (and b!496563 res!299096) b!496562))

(assert (= (and b!496562 res!299099) b!496561))

(assert (= (and b!496561 res!299095) b!496556))

(assert (= (and b!496556 res!299094) b!496559))

(assert (= (and b!496559 res!299098) b!496555))

(assert (= (and b!496555 res!299100) b!496564))

(assert (= (and b!496564 res!299101) b!496560))

(assert (= (and b!496560 res!299097) b!496565))

(assert (= (and b!496560 (not res!299092)) b!496558))

(assert (= (and b!496558 (not res!299093)) b!496557))

(declare-fun m!477875 () Bool)

(assert (=> b!496556 m!477875))

(declare-fun m!477877 () Bool)

(assert (=> b!496562 m!477877))

(assert (=> b!496562 m!477877))

(declare-fun m!477879 () Bool)

(assert (=> b!496562 m!477879))

(declare-fun m!477881 () Bool)

(assert (=> b!496564 m!477881))

(declare-fun m!477883 () Bool)

(assert (=> b!496555 m!477883))

(declare-fun m!477885 () Bool)

(assert (=> b!496560 m!477885))

(declare-fun m!477887 () Bool)

(assert (=> b!496560 m!477887))

(declare-fun m!477889 () Bool)

(assert (=> b!496560 m!477889))

(assert (=> b!496560 m!477877))

(declare-fun m!477891 () Bool)

(assert (=> b!496560 m!477891))

(assert (=> b!496560 m!477877))

(declare-fun m!477893 () Bool)

(assert (=> b!496560 m!477893))

(assert (=> b!496560 m!477889))

(declare-fun m!477895 () Bool)

(assert (=> b!496560 m!477895))

(assert (=> b!496560 m!477877))

(declare-fun m!477897 () Bool)

(assert (=> b!496560 m!477897))

(assert (=> b!496560 m!477889))

(declare-fun m!477899 () Bool)

(assert (=> b!496560 m!477899))

(assert (=> b!496565 m!477877))

(assert (=> b!496565 m!477877))

(declare-fun m!477901 () Bool)

(assert (=> b!496565 m!477901))

(declare-fun m!477903 () Bool)

(assert (=> b!496557 m!477903))

(assert (=> b!496557 m!477877))

(declare-fun m!477905 () Bool)

(assert (=> start!45248 m!477905))

(declare-fun m!477907 () Bool)

(assert (=> start!45248 m!477907))

(declare-fun m!477909 () Bool)

(assert (=> b!496561 m!477909))

(declare-fun m!477911 () Bool)

(assert (=> b!496559 m!477911))

(push 1)

