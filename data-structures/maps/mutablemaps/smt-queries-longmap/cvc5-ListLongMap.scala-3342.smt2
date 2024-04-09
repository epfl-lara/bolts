; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46054 () Bool)

(assert start!46054)

(declare-fun res!310694 () Bool)

(declare-fun e!298018 () Bool)

(assert (=> start!46054 (=> (not res!310694) (not e!298018))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46054 (= res!310694 (validMask!0 mask!3524))))

(assert (=> start!46054 e!298018))

(assert (=> start!46054 true))

(declare-datatypes ((array!32725 0))(
  ( (array!32726 (arr!15738 (Array (_ BitVec 32) (_ BitVec 64))) (size!16102 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32725)

(declare-fun array_inv!11512 (array!32725) Bool)

(assert (=> start!46054 (array_inv!11512 a!3235)))

(declare-fun e!298015 () Bool)

(declare-fun b!509697 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4212 0))(
  ( (MissingZero!4212 (index!19036 (_ BitVec 32))) (Found!4212 (index!19037 (_ BitVec 32))) (Intermediate!4212 (undefined!5024 Bool) (index!19038 (_ BitVec 32)) (x!48032 (_ BitVec 32))) (Undefined!4212) (MissingVacant!4212 (index!19039 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32725 (_ BitVec 32)) SeekEntryResult!4212)

(assert (=> b!509697 (= e!298015 (= (seekEntryOrOpen!0 (select (arr!15738 a!3235) j!176) a!3235 mask!3524) (Found!4212 j!176)))))

(declare-fun b!509698 () Bool)

(declare-fun res!310696 () Bool)

(assert (=> b!509698 (=> (not res!310696) (not e!298018))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!509698 (= res!310696 (and (= (size!16102 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16102 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16102 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509699 () Bool)

(declare-fun e!298016 () Bool)

(assert (=> b!509699 (= e!298016 (not true))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun lt!232984 () SeekEntryResult!4212)

(declare-fun lt!232985 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32725 (_ BitVec 32)) SeekEntryResult!4212)

(assert (=> b!509699 (= lt!232984 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232985 (select (store (arr!15738 a!3235) i!1204 k!2280) j!176) (array!32726 (store (arr!15738 a!3235) i!1204 k!2280) (size!16102 a!3235)) mask!3524))))

(declare-fun lt!232980 () (_ BitVec 32))

(declare-fun lt!232981 () SeekEntryResult!4212)

(assert (=> b!509699 (= lt!232981 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232980 (select (arr!15738 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509699 (= lt!232985 (toIndex!0 (select (store (arr!15738 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!509699 (= lt!232980 (toIndex!0 (select (arr!15738 a!3235) j!176) mask!3524))))

(assert (=> b!509699 e!298015))

(declare-fun res!310700 () Bool)

(assert (=> b!509699 (=> (not res!310700) (not e!298015))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32725 (_ BitVec 32)) Bool)

(assert (=> b!509699 (= res!310700 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15674 0))(
  ( (Unit!15675) )
))
(declare-fun lt!232982 () Unit!15674)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32725 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15674)

(assert (=> b!509699 (= lt!232982 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!509700 () Bool)

(assert (=> b!509700 (= e!298018 e!298016)))

(declare-fun res!310699 () Bool)

(assert (=> b!509700 (=> (not res!310699) (not e!298016))))

(declare-fun lt!232983 () SeekEntryResult!4212)

(assert (=> b!509700 (= res!310699 (or (= lt!232983 (MissingZero!4212 i!1204)) (= lt!232983 (MissingVacant!4212 i!1204))))))

(assert (=> b!509700 (= lt!232983 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!509701 () Bool)

(declare-fun res!310692 () Bool)

(assert (=> b!509701 (=> (not res!310692) (not e!298016))))

(assert (=> b!509701 (= res!310692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509702 () Bool)

(declare-fun res!310698 () Bool)

(assert (=> b!509702 (=> (not res!310698) (not e!298018))))

(declare-fun arrayContainsKey!0 (array!32725 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509702 (= res!310698 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!509703 () Bool)

(declare-fun res!310693 () Bool)

(assert (=> b!509703 (=> (not res!310693) (not e!298016))))

(declare-datatypes ((List!9949 0))(
  ( (Nil!9946) (Cons!9945 (h!10822 (_ BitVec 64)) (t!16185 List!9949)) )
))
(declare-fun arrayNoDuplicates!0 (array!32725 (_ BitVec 32) List!9949) Bool)

(assert (=> b!509703 (= res!310693 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9946))))

(declare-fun b!509704 () Bool)

(declare-fun res!310695 () Bool)

(assert (=> b!509704 (=> (not res!310695) (not e!298018))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509704 (= res!310695 (validKeyInArray!0 (select (arr!15738 a!3235) j!176)))))

(declare-fun b!509705 () Bool)

(declare-fun res!310697 () Bool)

(assert (=> b!509705 (=> (not res!310697) (not e!298018))))

(assert (=> b!509705 (= res!310697 (validKeyInArray!0 k!2280))))

(assert (= (and start!46054 res!310694) b!509698))

(assert (= (and b!509698 res!310696) b!509704))

(assert (= (and b!509704 res!310695) b!509705))

(assert (= (and b!509705 res!310697) b!509702))

(assert (= (and b!509702 res!310698) b!509700))

(assert (= (and b!509700 res!310699) b!509701))

(assert (= (and b!509701 res!310692) b!509703))

(assert (= (and b!509703 res!310693) b!509699))

(assert (= (and b!509699 res!310700) b!509697))

(declare-fun m!490771 () Bool)

(assert (=> b!509697 m!490771))

(assert (=> b!509697 m!490771))

(declare-fun m!490773 () Bool)

(assert (=> b!509697 m!490773))

(declare-fun m!490775 () Bool)

(assert (=> start!46054 m!490775))

(declare-fun m!490777 () Bool)

(assert (=> start!46054 m!490777))

(declare-fun m!490779 () Bool)

(assert (=> b!509700 m!490779))

(declare-fun m!490781 () Bool)

(assert (=> b!509705 m!490781))

(assert (=> b!509704 m!490771))

(assert (=> b!509704 m!490771))

(declare-fun m!490783 () Bool)

(assert (=> b!509704 m!490783))

(declare-fun m!490785 () Bool)

(assert (=> b!509701 m!490785))

(declare-fun m!490787 () Bool)

(assert (=> b!509699 m!490787))

(declare-fun m!490789 () Bool)

(assert (=> b!509699 m!490789))

(declare-fun m!490791 () Bool)

(assert (=> b!509699 m!490791))

(assert (=> b!509699 m!490791))

(declare-fun m!490793 () Bool)

(assert (=> b!509699 m!490793))

(assert (=> b!509699 m!490771))

(declare-fun m!490795 () Bool)

(assert (=> b!509699 m!490795))

(assert (=> b!509699 m!490771))

(declare-fun m!490797 () Bool)

(assert (=> b!509699 m!490797))

(assert (=> b!509699 m!490771))

(declare-fun m!490799 () Bool)

(assert (=> b!509699 m!490799))

(assert (=> b!509699 m!490791))

(declare-fun m!490801 () Bool)

(assert (=> b!509699 m!490801))

(declare-fun m!490803 () Bool)

(assert (=> b!509703 m!490803))

(declare-fun m!490805 () Bool)

(assert (=> b!509702 m!490805))

(push 1)

