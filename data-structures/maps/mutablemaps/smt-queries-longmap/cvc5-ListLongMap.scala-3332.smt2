; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45994 () Bool)

(assert start!45994)

(declare-fun b!508887 () Bool)

(declare-fun res!309882 () Bool)

(declare-fun e!297657 () Bool)

(assert (=> b!508887 (=> (not res!309882) (not e!297657))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32665 0))(
  ( (array!32666 (arr!15708 (Array (_ BitVec 32) (_ BitVec 64))) (size!16072 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32665)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!508887 (= res!309882 (and (= (size!16072 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16072 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16072 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!508888 () Bool)

(declare-fun res!309884 () Bool)

(declare-fun e!297655 () Bool)

(assert (=> b!508888 (=> (not res!309884) (not e!297655))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32665 (_ BitVec 32)) Bool)

(assert (=> b!508888 (= res!309884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!508889 () Bool)

(declare-fun res!309889 () Bool)

(assert (=> b!508889 (=> (not res!309889) (not e!297657))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508889 (= res!309889 (validKeyInArray!0 (select (arr!15708 a!3235) j!176)))))

(declare-fun b!508890 () Bool)

(declare-fun e!297658 () Bool)

(declare-datatypes ((SeekEntryResult!4182 0))(
  ( (MissingZero!4182 (index!18916 (_ BitVec 32))) (Found!4182 (index!18917 (_ BitVec 32))) (Intermediate!4182 (undefined!4994 Bool) (index!18918 (_ BitVec 32)) (x!47922 (_ BitVec 32))) (Undefined!4182) (MissingVacant!4182 (index!18919 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32665 (_ BitVec 32)) SeekEntryResult!4182)

(assert (=> b!508890 (= e!297658 (= (seekEntryOrOpen!0 (select (arr!15708 a!3235) j!176) a!3235 mask!3524) (Found!4182 j!176)))))

(declare-fun b!508891 () Bool)

(declare-fun res!309887 () Bool)

(assert (=> b!508891 (=> (not res!309887) (not e!297655))))

(declare-datatypes ((List!9919 0))(
  ( (Nil!9916) (Cons!9915 (h!10792 (_ BitVec 64)) (t!16155 List!9919)) )
))
(declare-fun arrayNoDuplicates!0 (array!32665 (_ BitVec 32) List!9919) Bool)

(assert (=> b!508891 (= res!309887 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9916))))

(declare-fun res!309890 () Bool)

(assert (=> start!45994 (=> (not res!309890) (not e!297657))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45994 (= res!309890 (validMask!0 mask!3524))))

(assert (=> start!45994 e!297657))

(assert (=> start!45994 true))

(declare-fun array_inv!11482 (array!32665) Bool)

(assert (=> start!45994 (array_inv!11482 a!3235)))

(declare-fun b!508892 () Bool)

(declare-fun res!309886 () Bool)

(assert (=> b!508892 (=> (not res!309886) (not e!297657))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32665 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508892 (= res!309886 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!508893 () Bool)

(assert (=> b!508893 (= e!297655 (not true))))

(declare-fun lt!232440 () SeekEntryResult!4182)

(declare-fun lt!232441 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32665 (_ BitVec 32)) SeekEntryResult!4182)

(assert (=> b!508893 (= lt!232440 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232441 (select (store (arr!15708 a!3235) i!1204 k!2280) j!176) (array!32666 (store (arr!15708 a!3235) i!1204 k!2280) (size!16072 a!3235)) mask!3524))))

(declare-fun lt!232443 () (_ BitVec 32))

(declare-fun lt!232445 () SeekEntryResult!4182)

(assert (=> b!508893 (= lt!232445 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232443 (select (arr!15708 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!508893 (= lt!232441 (toIndex!0 (select (store (arr!15708 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!508893 (= lt!232443 (toIndex!0 (select (arr!15708 a!3235) j!176) mask!3524))))

(assert (=> b!508893 e!297658))

(declare-fun res!309883 () Bool)

(assert (=> b!508893 (=> (not res!309883) (not e!297658))))

(assert (=> b!508893 (= res!309883 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15614 0))(
  ( (Unit!15615) )
))
(declare-fun lt!232442 () Unit!15614)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32665 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15614)

(assert (=> b!508893 (= lt!232442 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!508894 () Bool)

(declare-fun res!309885 () Bool)

(assert (=> b!508894 (=> (not res!309885) (not e!297657))))

(assert (=> b!508894 (= res!309885 (validKeyInArray!0 k!2280))))

(declare-fun b!508895 () Bool)

(assert (=> b!508895 (= e!297657 e!297655)))

(declare-fun res!309888 () Bool)

(assert (=> b!508895 (=> (not res!309888) (not e!297655))))

(declare-fun lt!232444 () SeekEntryResult!4182)

(assert (=> b!508895 (= res!309888 (or (= lt!232444 (MissingZero!4182 i!1204)) (= lt!232444 (MissingVacant!4182 i!1204))))))

(assert (=> b!508895 (= lt!232444 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!45994 res!309890) b!508887))

(assert (= (and b!508887 res!309882) b!508889))

(assert (= (and b!508889 res!309889) b!508894))

(assert (= (and b!508894 res!309885) b!508892))

(assert (= (and b!508892 res!309886) b!508895))

(assert (= (and b!508895 res!309888) b!508888))

(assert (= (and b!508888 res!309884) b!508891))

(assert (= (and b!508891 res!309887) b!508893))

(assert (= (and b!508893 res!309883) b!508890))

(declare-fun m!489691 () Bool)

(assert (=> b!508893 m!489691))

(declare-fun m!489693 () Bool)

(assert (=> b!508893 m!489693))

(declare-fun m!489695 () Bool)

(assert (=> b!508893 m!489695))

(declare-fun m!489697 () Bool)

(assert (=> b!508893 m!489697))

(assert (=> b!508893 m!489691))

(declare-fun m!489699 () Bool)

(assert (=> b!508893 m!489699))

(declare-fun m!489701 () Bool)

(assert (=> b!508893 m!489701))

(assert (=> b!508893 m!489699))

(declare-fun m!489703 () Bool)

(assert (=> b!508893 m!489703))

(assert (=> b!508893 m!489699))

(declare-fun m!489705 () Bool)

(assert (=> b!508893 m!489705))

(assert (=> b!508893 m!489691))

(declare-fun m!489707 () Bool)

(assert (=> b!508893 m!489707))

(declare-fun m!489709 () Bool)

(assert (=> b!508892 m!489709))

(declare-fun m!489711 () Bool)

(assert (=> b!508891 m!489711))

(declare-fun m!489713 () Bool)

(assert (=> b!508895 m!489713))

(declare-fun m!489715 () Bool)

(assert (=> start!45994 m!489715))

(declare-fun m!489717 () Bool)

(assert (=> start!45994 m!489717))

(declare-fun m!489719 () Bool)

(assert (=> b!508894 m!489719))

(assert (=> b!508889 m!489699))

(assert (=> b!508889 m!489699))

(declare-fun m!489721 () Bool)

(assert (=> b!508889 m!489721))

(declare-fun m!489723 () Bool)

(assert (=> b!508888 m!489723))

(assert (=> b!508890 m!489699))

(assert (=> b!508890 m!489699))

(declare-fun m!489725 () Bool)

(assert (=> b!508890 m!489725))

(push 1)

