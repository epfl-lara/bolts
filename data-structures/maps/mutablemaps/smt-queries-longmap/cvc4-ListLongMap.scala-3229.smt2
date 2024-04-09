; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45194 () Bool)

(assert start!45194)

(declare-fun b!495664 () Bool)

(declare-fun res!298211 () Bool)

(declare-fun e!290752 () Bool)

(assert (=> b!495664 (=> (not res!298211) (not e!290752))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32042 0))(
  ( (array!32043 (arr!15401 (Array (_ BitVec 32) (_ BitVec 64))) (size!15765 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32042)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(assert (=> b!495664 (= res!298211 (and (= (size!15765 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15765 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15765 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!495665 () Bool)

(declare-fun e!290755 () Bool)

(assert (=> b!495665 (= e!290755 true)))

(declare-datatypes ((SeekEntryResult!3875 0))(
  ( (MissingZero!3875 (index!17679 (_ BitVec 32))) (Found!3875 (index!17680 (_ BitVec 32))) (Intermediate!3875 (undefined!4687 Bool) (index!17681 (_ BitVec 32)) (x!46770 (_ BitVec 32))) (Undefined!3875) (MissingVacant!3875 (index!17682 (_ BitVec 32))) )
))
(declare-fun lt!224442 () SeekEntryResult!3875)

(assert (=> b!495665 (and (bvslt (x!46770 lt!224442) #b01111111111111111111111111111110) (or (= (select (arr!15401 a!3235) (index!17681 lt!224442)) (select (arr!15401 a!3235) j!176)) (= (select (arr!15401 a!3235) (index!17681 lt!224442)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15401 a!3235) (index!17681 lt!224442)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!495666 () Bool)

(declare-fun res!298205 () Bool)

(assert (=> b!495666 (=> (not res!298205) (not e!290752))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!495666 (= res!298205 (validKeyInArray!0 k!2280))))

(declare-fun b!495667 () Bool)

(declare-fun res!298206 () Bool)

(declare-fun e!290753 () Bool)

(assert (=> b!495667 (=> (not res!298206) (not e!290753))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32042 (_ BitVec 32)) Bool)

(assert (=> b!495667 (= res!298206 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!495668 () Bool)

(assert (=> b!495668 (= e!290753 (not e!290755))))

(declare-fun res!298201 () Bool)

(assert (=> b!495668 (=> res!298201 e!290755)))

(declare-fun lt!224444 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32042 (_ BitVec 32)) SeekEntryResult!3875)

(assert (=> b!495668 (= res!298201 (= lt!224442 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224444 (select (store (arr!15401 a!3235) i!1204 k!2280) j!176) (array!32043 (store (arr!15401 a!3235) i!1204 k!2280) (size!15765 a!3235)) mask!3524)))))

(declare-fun lt!224443 () (_ BitVec 32))

(assert (=> b!495668 (= lt!224442 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224443 (select (arr!15401 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!495668 (= lt!224444 (toIndex!0 (select (store (arr!15401 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!495668 (= lt!224443 (toIndex!0 (select (arr!15401 a!3235) j!176) mask!3524))))

(declare-fun e!290754 () Bool)

(assert (=> b!495668 e!290754))

(declare-fun res!298209 () Bool)

(assert (=> b!495668 (=> (not res!298209) (not e!290754))))

(assert (=> b!495668 (= res!298209 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14688 0))(
  ( (Unit!14689) )
))
(declare-fun lt!224441 () Unit!14688)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32042 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14688)

(assert (=> b!495668 (= lt!224441 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!495669 () Bool)

(declare-fun res!298204 () Bool)

(assert (=> b!495669 (=> (not res!298204) (not e!290752))))

(assert (=> b!495669 (= res!298204 (validKeyInArray!0 (select (arr!15401 a!3235) j!176)))))

(declare-fun b!495670 () Bool)

(declare-fun res!298207 () Bool)

(assert (=> b!495670 (=> res!298207 e!290755)))

(assert (=> b!495670 (= res!298207 (or (undefined!4687 lt!224442) (not (is-Intermediate!3875 lt!224442))))))

(declare-fun res!298208 () Bool)

(assert (=> start!45194 (=> (not res!298208) (not e!290752))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45194 (= res!298208 (validMask!0 mask!3524))))

(assert (=> start!45194 e!290752))

(assert (=> start!45194 true))

(declare-fun array_inv!11175 (array!32042) Bool)

(assert (=> start!45194 (array_inv!11175 a!3235)))

(declare-fun b!495671 () Bool)

(declare-fun res!298210 () Bool)

(assert (=> b!495671 (=> (not res!298210) (not e!290752))))

(declare-fun arrayContainsKey!0 (array!32042 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!495671 (= res!298210 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!495672 () Bool)

(assert (=> b!495672 (= e!290752 e!290753)))

(declare-fun res!298203 () Bool)

(assert (=> b!495672 (=> (not res!298203) (not e!290753))))

(declare-fun lt!224440 () SeekEntryResult!3875)

(assert (=> b!495672 (= res!298203 (or (= lt!224440 (MissingZero!3875 i!1204)) (= lt!224440 (MissingVacant!3875 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32042 (_ BitVec 32)) SeekEntryResult!3875)

(assert (=> b!495672 (= lt!224440 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!495673 () Bool)

(declare-fun res!298202 () Bool)

(assert (=> b!495673 (=> (not res!298202) (not e!290753))))

(declare-datatypes ((List!9612 0))(
  ( (Nil!9609) (Cons!9608 (h!10479 (_ BitVec 64)) (t!15848 List!9612)) )
))
(declare-fun arrayNoDuplicates!0 (array!32042 (_ BitVec 32) List!9612) Bool)

(assert (=> b!495673 (= res!298202 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9609))))

(declare-fun b!495674 () Bool)

(assert (=> b!495674 (= e!290754 (= (seekEntryOrOpen!0 (select (arr!15401 a!3235) j!176) a!3235 mask!3524) (Found!3875 j!176)))))

(assert (= (and start!45194 res!298208) b!495664))

(assert (= (and b!495664 res!298211) b!495669))

(assert (= (and b!495669 res!298204) b!495666))

(assert (= (and b!495666 res!298205) b!495671))

(assert (= (and b!495671 res!298210) b!495672))

(assert (= (and b!495672 res!298203) b!495667))

(assert (= (and b!495667 res!298206) b!495673))

(assert (= (and b!495673 res!298202) b!495668))

(assert (= (and b!495668 res!298209) b!495674))

(assert (= (and b!495668 (not res!298201)) b!495670))

(assert (= (and b!495670 (not res!298207)) b!495665))

(declare-fun m!476849 () Bool)

(assert (=> b!495672 m!476849))

(declare-fun m!476851 () Bool)

(assert (=> b!495665 m!476851))

(declare-fun m!476853 () Bool)

(assert (=> b!495665 m!476853))

(assert (=> b!495674 m!476853))

(assert (=> b!495674 m!476853))

(declare-fun m!476855 () Bool)

(assert (=> b!495674 m!476855))

(declare-fun m!476857 () Bool)

(assert (=> b!495671 m!476857))

(assert (=> b!495669 m!476853))

(assert (=> b!495669 m!476853))

(declare-fun m!476859 () Bool)

(assert (=> b!495669 m!476859))

(assert (=> b!495668 m!476853))

(declare-fun m!476861 () Bool)

(assert (=> b!495668 m!476861))

(declare-fun m!476863 () Bool)

(assert (=> b!495668 m!476863))

(declare-fun m!476865 () Bool)

(assert (=> b!495668 m!476865))

(declare-fun m!476867 () Bool)

(assert (=> b!495668 m!476867))

(assert (=> b!495668 m!476867))

(declare-fun m!476869 () Bool)

(assert (=> b!495668 m!476869))

(assert (=> b!495668 m!476853))

(declare-fun m!476871 () Bool)

(assert (=> b!495668 m!476871))

(assert (=> b!495668 m!476853))

(declare-fun m!476873 () Bool)

(assert (=> b!495668 m!476873))

(assert (=> b!495668 m!476867))

(declare-fun m!476875 () Bool)

(assert (=> b!495668 m!476875))

(declare-fun m!476877 () Bool)

(assert (=> start!45194 m!476877))

(declare-fun m!476879 () Bool)

(assert (=> start!45194 m!476879))

(declare-fun m!476881 () Bool)

(assert (=> b!495666 m!476881))

(declare-fun m!476883 () Bool)

(assert (=> b!495673 m!476883))

(declare-fun m!476885 () Bool)

(assert (=> b!495667 m!476885))

(push 1)

