; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44984 () Bool)

(assert start!44984)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31889 0))(
  ( (array!31890 (arr!15326 (Array (_ BitVec 32) (_ BitVec 64))) (size!15690 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31889)

(declare-fun e!289606 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!493071 () Bool)

(declare-datatypes ((SeekEntryResult!3800 0))(
  ( (MissingZero!3800 (index!17379 (_ BitVec 32))) (Found!3800 (index!17380 (_ BitVec 32))) (Intermediate!3800 (undefined!4612 Bool) (index!17381 (_ BitVec 32)) (x!46489 (_ BitVec 32))) (Undefined!3800) (MissingVacant!3800 (index!17382 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31889 (_ BitVec 32)) SeekEntryResult!3800)

(assert (=> b!493071 (= e!289606 (= (seekEntryOrOpen!0 (select (arr!15326 a!3235) j!176) a!3235 mask!3524) (Found!3800 j!176)))))

(declare-fun b!493072 () Bool)

(declare-fun e!289605 () Bool)

(declare-fun e!289604 () Bool)

(assert (=> b!493072 (= e!289605 e!289604)))

(declare-fun res!295799 () Bool)

(assert (=> b!493072 (=> (not res!295799) (not e!289604))))

(declare-fun lt!223027 () SeekEntryResult!3800)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!493072 (= res!295799 (or (= lt!223027 (MissingZero!3800 i!1204)) (= lt!223027 (MissingVacant!3800 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!493072 (= lt!223027 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!295793 () Bool)

(assert (=> start!44984 (=> (not res!295793) (not e!289605))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44984 (= res!295793 (validMask!0 mask!3524))))

(assert (=> start!44984 e!289605))

(assert (=> start!44984 true))

(declare-fun array_inv!11100 (array!31889) Bool)

(assert (=> start!44984 (array_inv!11100 a!3235)))

(declare-fun b!493073 () Bool)

(declare-fun res!295794 () Bool)

(assert (=> b!493073 (=> (not res!295794) (not e!289604))))

(declare-datatypes ((List!9537 0))(
  ( (Nil!9534) (Cons!9533 (h!10401 (_ BitVec 64)) (t!15773 List!9537)) )
))
(declare-fun arrayNoDuplicates!0 (array!31889 (_ BitVec 32) List!9537) Bool)

(assert (=> b!493073 (= res!295794 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9534))))

(declare-fun b!493074 () Bool)

(assert (=> b!493074 (= e!289604 (not true))))

(declare-fun lt!223024 () SeekEntryResult!3800)

(declare-fun lt!223025 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31889 (_ BitVec 32)) SeekEntryResult!3800)

(assert (=> b!493074 (= lt!223024 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223025 (select (store (arr!15326 a!3235) i!1204 k!2280) j!176) (array!31890 (store (arr!15326 a!3235) i!1204 k!2280) (size!15690 a!3235)) mask!3524))))

(declare-fun lt!223026 () SeekEntryResult!3800)

(declare-fun lt!223023 () (_ BitVec 32))

(assert (=> b!493074 (= lt!223026 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223023 (select (arr!15326 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493074 (= lt!223025 (toIndex!0 (select (store (arr!15326 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!493074 (= lt!223023 (toIndex!0 (select (arr!15326 a!3235) j!176) mask!3524))))

(assert (=> b!493074 e!289606))

(declare-fun res!295797 () Bool)

(assert (=> b!493074 (=> (not res!295797) (not e!289606))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31889 (_ BitVec 32)) Bool)

(assert (=> b!493074 (= res!295797 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14538 0))(
  ( (Unit!14539) )
))
(declare-fun lt!223028 () Unit!14538)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31889 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14538)

(assert (=> b!493074 (= lt!223028 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!493075 () Bool)

(declare-fun res!295791 () Bool)

(assert (=> b!493075 (=> (not res!295791) (not e!289605))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493075 (= res!295791 (validKeyInArray!0 (select (arr!15326 a!3235) j!176)))))

(declare-fun b!493076 () Bool)

(declare-fun res!295792 () Bool)

(assert (=> b!493076 (=> (not res!295792) (not e!289604))))

(assert (=> b!493076 (= res!295792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!493077 () Bool)

(declare-fun res!295798 () Bool)

(assert (=> b!493077 (=> (not res!295798) (not e!289605))))

(assert (=> b!493077 (= res!295798 (and (= (size!15690 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15690 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15690 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!493078 () Bool)

(declare-fun res!295795 () Bool)

(assert (=> b!493078 (=> (not res!295795) (not e!289605))))

(declare-fun arrayContainsKey!0 (array!31889 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493078 (= res!295795 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493079 () Bool)

(declare-fun res!295796 () Bool)

(assert (=> b!493079 (=> (not res!295796) (not e!289605))))

(assert (=> b!493079 (= res!295796 (validKeyInArray!0 k!2280))))

(assert (= (and start!44984 res!295793) b!493077))

(assert (= (and b!493077 res!295798) b!493075))

(assert (= (and b!493075 res!295791) b!493079))

(assert (= (and b!493079 res!295796) b!493078))

(assert (= (and b!493078 res!295795) b!493072))

(assert (= (and b!493072 res!295799) b!493076))

(assert (= (and b!493076 res!295792) b!493073))

(assert (= (and b!493073 res!295794) b!493074))

(assert (= (and b!493074 res!295797) b!493071))

(declare-fun m!473905 () Bool)

(assert (=> b!493074 m!473905))

(declare-fun m!473907 () Bool)

(assert (=> b!493074 m!473907))

(declare-fun m!473909 () Bool)

(assert (=> b!493074 m!473909))

(assert (=> b!493074 m!473909))

(declare-fun m!473911 () Bool)

(assert (=> b!493074 m!473911))

(declare-fun m!473913 () Bool)

(assert (=> b!493074 m!473913))

(declare-fun m!473915 () Bool)

(assert (=> b!493074 m!473915))

(assert (=> b!493074 m!473913))

(declare-fun m!473917 () Bool)

(assert (=> b!493074 m!473917))

(assert (=> b!493074 m!473909))

(declare-fun m!473919 () Bool)

(assert (=> b!493074 m!473919))

(assert (=> b!493074 m!473913))

(declare-fun m!473921 () Bool)

(assert (=> b!493074 m!473921))

(declare-fun m!473923 () Bool)

(assert (=> b!493076 m!473923))

(declare-fun m!473925 () Bool)

(assert (=> b!493073 m!473925))

(declare-fun m!473927 () Bool)

(assert (=> b!493072 m!473927))

(declare-fun m!473929 () Bool)

(assert (=> b!493079 m!473929))

(declare-fun m!473931 () Bool)

(assert (=> b!493078 m!473931))

(assert (=> b!493071 m!473913))

(assert (=> b!493071 m!473913))

(declare-fun m!473933 () Bool)

(assert (=> b!493071 m!473933))

(declare-fun m!473935 () Bool)

(assert (=> start!44984 m!473935))

(declare-fun m!473937 () Bool)

(assert (=> start!44984 m!473937))

(assert (=> b!493075 m!473913))

(assert (=> b!493075 m!473913))

(declare-fun m!473939 () Bool)

(assert (=> b!493075 m!473939))

(push 1)

