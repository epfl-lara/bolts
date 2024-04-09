; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44674 () Bool)

(assert start!44674)

(declare-fun b!489861 () Bool)

(declare-fun e!288031 () Bool)

(declare-fun e!288030 () Bool)

(assert (=> b!489861 (= e!288031 e!288030)))

(declare-fun res!292952 () Bool)

(assert (=> b!489861 (=> (not res!292952) (not e!288030))))

(declare-datatypes ((SeekEntryResult!3705 0))(
  ( (MissingZero!3705 (index!16999 (_ BitVec 32))) (Found!3705 (index!17000 (_ BitVec 32))) (Intermediate!3705 (undefined!4517 Bool) (index!17001 (_ BitVec 32)) (x!46134 (_ BitVec 32))) (Undefined!3705) (MissingVacant!3705 (index!17002 (_ BitVec 32))) )
))
(declare-fun lt!221202 () SeekEntryResult!3705)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!489861 (= res!292952 (or (= lt!221202 (MissingZero!3705 i!1204)) (= lt!221202 (MissingVacant!3705 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31693 0))(
  ( (array!31694 (arr!15231 (Array (_ BitVec 32) (_ BitVec 64))) (size!15595 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31693)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31693 (_ BitVec 32)) SeekEntryResult!3705)

(assert (=> b!489861 (= lt!221202 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!489862 () Bool)

(declare-fun res!292950 () Bool)

(assert (=> b!489862 (=> (not res!292950) (not e!288031))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489862 (= res!292950 (validKeyInArray!0 k!2280))))

(declare-fun b!489863 () Bool)

(declare-fun res!292951 () Bool)

(assert (=> b!489863 (=> (not res!292951) (not e!288031))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!489863 (= res!292951 (validKeyInArray!0 (select (arr!15231 a!3235) j!176)))))

(declare-fun b!489864 () Bool)

(declare-fun res!292953 () Bool)

(assert (=> b!489864 (=> (not res!292953) (not e!288031))))

(assert (=> b!489864 (= res!292953 (and (= (size!15595 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15595 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15595 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!489865 () Bool)

(declare-fun res!292954 () Bool)

(assert (=> b!489865 (=> (not res!292954) (not e!288030))))

(declare-datatypes ((List!9442 0))(
  ( (Nil!9439) (Cons!9438 (h!10300 (_ BitVec 64)) (t!15678 List!9442)) )
))
(declare-fun arrayNoDuplicates!0 (array!31693 (_ BitVec 32) List!9442) Bool)

(assert (=> b!489865 (= res!292954 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9439))))

(declare-fun b!489866 () Bool)

(declare-fun res!292947 () Bool)

(assert (=> b!489866 (=> (not res!292947) (not e!288031))))

(declare-fun arrayContainsKey!0 (array!31693 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489866 (= res!292947 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!489867 () Bool)

(assert (=> b!489867 (= e!288030 (not true))))

(declare-fun lt!221203 () (_ BitVec 32))

(declare-fun lt!221199 () SeekEntryResult!3705)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31693 (_ BitVec 32)) SeekEntryResult!3705)

(assert (=> b!489867 (= lt!221199 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221203 (select (store (arr!15231 a!3235) i!1204 k!2280) j!176) (array!31694 (store (arr!15231 a!3235) i!1204 k!2280) (size!15595 a!3235)) mask!3524))))

(declare-fun lt!221204 () (_ BitVec 32))

(declare-fun lt!221200 () SeekEntryResult!3705)

(assert (=> b!489867 (= lt!221200 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221204 (select (arr!15231 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489867 (= lt!221203 (toIndex!0 (select (store (arr!15231 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!489867 (= lt!221204 (toIndex!0 (select (arr!15231 a!3235) j!176) mask!3524))))

(declare-fun e!288029 () Bool)

(assert (=> b!489867 e!288029))

(declare-fun res!292949 () Bool)

(assert (=> b!489867 (=> (not res!292949) (not e!288029))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31693 (_ BitVec 32)) Bool)

(assert (=> b!489867 (= res!292949 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14348 0))(
  ( (Unit!14349) )
))
(declare-fun lt!221201 () Unit!14348)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31693 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14348)

(assert (=> b!489867 (= lt!221201 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!489869 () Bool)

(assert (=> b!489869 (= e!288029 (= (seekEntryOrOpen!0 (select (arr!15231 a!3235) j!176) a!3235 mask!3524) (Found!3705 j!176)))))

(declare-fun b!489868 () Bool)

(declare-fun res!292948 () Bool)

(assert (=> b!489868 (=> (not res!292948) (not e!288030))))

(assert (=> b!489868 (= res!292948 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!292955 () Bool)

(assert (=> start!44674 (=> (not res!292955) (not e!288031))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44674 (= res!292955 (validMask!0 mask!3524))))

(assert (=> start!44674 e!288031))

(assert (=> start!44674 true))

(declare-fun array_inv!11005 (array!31693) Bool)

(assert (=> start!44674 (array_inv!11005 a!3235)))

(assert (= (and start!44674 res!292955) b!489864))

(assert (= (and b!489864 res!292953) b!489863))

(assert (= (and b!489863 res!292951) b!489862))

(assert (= (and b!489862 res!292950) b!489866))

(assert (= (and b!489866 res!292947) b!489861))

(assert (= (and b!489861 res!292952) b!489868))

(assert (= (and b!489868 res!292948) b!489865))

(assert (= (and b!489865 res!292954) b!489867))

(assert (= (and b!489867 res!292949) b!489869))

(declare-fun m!469879 () Bool)

(assert (=> b!489862 m!469879))

(declare-fun m!469881 () Bool)

(assert (=> b!489865 m!469881))

(declare-fun m!469883 () Bool)

(assert (=> b!489863 m!469883))

(assert (=> b!489863 m!469883))

(declare-fun m!469885 () Bool)

(assert (=> b!489863 m!469885))

(assert (=> b!489869 m!469883))

(assert (=> b!489869 m!469883))

(declare-fun m!469887 () Bool)

(assert (=> b!489869 m!469887))

(declare-fun m!469889 () Bool)

(assert (=> b!489867 m!469889))

(declare-fun m!469891 () Bool)

(assert (=> b!489867 m!469891))

(declare-fun m!469893 () Bool)

(assert (=> b!489867 m!469893))

(declare-fun m!469895 () Bool)

(assert (=> b!489867 m!469895))

(assert (=> b!489867 m!469889))

(assert (=> b!489867 m!469883))

(declare-fun m!469897 () Bool)

(assert (=> b!489867 m!469897))

(assert (=> b!489867 m!469889))

(declare-fun m!469899 () Bool)

(assert (=> b!489867 m!469899))

(assert (=> b!489867 m!469883))

(declare-fun m!469901 () Bool)

(assert (=> b!489867 m!469901))

(assert (=> b!489867 m!469883))

(declare-fun m!469903 () Bool)

(assert (=> b!489867 m!469903))

(declare-fun m!469905 () Bool)

(assert (=> b!489866 m!469905))

(declare-fun m!469907 () Bool)

(assert (=> b!489868 m!469907))

(declare-fun m!469909 () Bool)

(assert (=> start!44674 m!469909))

(declare-fun m!469911 () Bool)

(assert (=> start!44674 m!469911))

(declare-fun m!469913 () Bool)

(assert (=> b!489861 m!469913))

(push 1)

