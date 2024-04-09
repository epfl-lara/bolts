; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44662 () Bool)

(assert start!44662)

(declare-fun b!489699 () Bool)

(declare-fun res!292789 () Bool)

(declare-fun e!287957 () Bool)

(assert (=> b!489699 (=> (not res!292789) (not e!287957))))

(declare-datatypes ((array!31681 0))(
  ( (array!31682 (arr!15225 (Array (_ BitVec 32) (_ BitVec 64))) (size!15589 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31681)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31681 (_ BitVec 32)) Bool)

(assert (=> b!489699 (= res!292789 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489701 () Bool)

(declare-fun e!287956 () Bool)

(assert (=> b!489701 (= e!287956 e!287957)))

(declare-fun res!292788 () Bool)

(assert (=> b!489701 (=> (not res!292788) (not e!287957))))

(declare-datatypes ((SeekEntryResult!3699 0))(
  ( (MissingZero!3699 (index!16975 (_ BitVec 32))) (Found!3699 (index!16976 (_ BitVec 32))) (Intermediate!3699 (undefined!4511 Bool) (index!16977 (_ BitVec 32)) (x!46112 (_ BitVec 32))) (Undefined!3699) (MissingVacant!3699 (index!16978 (_ BitVec 32))) )
))
(declare-fun lt!221096 () SeekEntryResult!3699)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!489701 (= res!292788 (or (= lt!221096 (MissingZero!3699 i!1204)) (= lt!221096 (MissingVacant!3699 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31681 (_ BitVec 32)) SeekEntryResult!3699)

(assert (=> b!489701 (= lt!221096 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!489702 () Bool)

(declare-fun res!292792 () Bool)

(assert (=> b!489702 (=> (not res!292792) (not e!287956))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489702 (= res!292792 (validKeyInArray!0 (select (arr!15225 a!3235) j!176)))))

(declare-fun b!489703 () Bool)

(assert (=> b!489703 (= e!287957 (not true))))

(declare-fun lt!221092 () SeekEntryResult!3699)

(declare-fun lt!221093 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31681 (_ BitVec 32)) SeekEntryResult!3699)

(assert (=> b!489703 (= lt!221092 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221093 (select (store (arr!15225 a!3235) i!1204 k!2280) j!176) (array!31682 (store (arr!15225 a!3235) i!1204 k!2280) (size!15589 a!3235)) mask!3524))))

(declare-fun lt!221094 () SeekEntryResult!3699)

(declare-fun lt!221091 () (_ BitVec 32))

(assert (=> b!489703 (= lt!221094 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221091 (select (arr!15225 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489703 (= lt!221093 (toIndex!0 (select (store (arr!15225 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!489703 (= lt!221091 (toIndex!0 (select (arr!15225 a!3235) j!176) mask!3524))))

(declare-fun e!287958 () Bool)

(assert (=> b!489703 e!287958))

(declare-fun res!292786 () Bool)

(assert (=> b!489703 (=> (not res!292786) (not e!287958))))

(assert (=> b!489703 (= res!292786 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14336 0))(
  ( (Unit!14337) )
))
(declare-fun lt!221095 () Unit!14336)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31681 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14336)

(assert (=> b!489703 (= lt!221095 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!489704 () Bool)

(declare-fun res!292793 () Bool)

(assert (=> b!489704 (=> (not res!292793) (not e!287956))))

(assert (=> b!489704 (= res!292793 (and (= (size!15589 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15589 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15589 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!489705 () Bool)

(assert (=> b!489705 (= e!287958 (= (seekEntryOrOpen!0 (select (arr!15225 a!3235) j!176) a!3235 mask!3524) (Found!3699 j!176)))))

(declare-fun b!489706 () Bool)

(declare-fun res!292787 () Bool)

(assert (=> b!489706 (=> (not res!292787) (not e!287956))))

(declare-fun arrayContainsKey!0 (array!31681 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489706 (= res!292787 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!489707 () Bool)

(declare-fun res!292791 () Bool)

(assert (=> b!489707 (=> (not res!292791) (not e!287957))))

(declare-datatypes ((List!9436 0))(
  ( (Nil!9433) (Cons!9432 (h!10294 (_ BitVec 64)) (t!15672 List!9436)) )
))
(declare-fun arrayNoDuplicates!0 (array!31681 (_ BitVec 32) List!9436) Bool)

(assert (=> b!489707 (= res!292791 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9433))))

(declare-fun res!292785 () Bool)

(assert (=> start!44662 (=> (not res!292785) (not e!287956))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44662 (= res!292785 (validMask!0 mask!3524))))

(assert (=> start!44662 e!287956))

(assert (=> start!44662 true))

(declare-fun array_inv!10999 (array!31681) Bool)

(assert (=> start!44662 (array_inv!10999 a!3235)))

(declare-fun b!489700 () Bool)

(declare-fun res!292790 () Bool)

(assert (=> b!489700 (=> (not res!292790) (not e!287956))))

(assert (=> b!489700 (= res!292790 (validKeyInArray!0 k!2280))))

(assert (= (and start!44662 res!292785) b!489704))

(assert (= (and b!489704 res!292793) b!489702))

(assert (= (and b!489702 res!292792) b!489700))

(assert (= (and b!489700 res!292790) b!489706))

(assert (= (and b!489706 res!292787) b!489701))

(assert (= (and b!489701 res!292788) b!489699))

(assert (= (and b!489699 res!292789) b!489707))

(assert (= (and b!489707 res!292791) b!489703))

(assert (= (and b!489703 res!292786) b!489705))

(declare-fun m!469663 () Bool)

(assert (=> b!489700 m!469663))

(declare-fun m!469665 () Bool)

(assert (=> b!489703 m!469665))

(declare-fun m!469667 () Bool)

(assert (=> b!489703 m!469667))

(declare-fun m!469669 () Bool)

(assert (=> b!489703 m!469669))

(assert (=> b!489703 m!469669))

(declare-fun m!469671 () Bool)

(assert (=> b!489703 m!469671))

(declare-fun m!469673 () Bool)

(assert (=> b!489703 m!469673))

(declare-fun m!469675 () Bool)

(assert (=> b!489703 m!469675))

(assert (=> b!489703 m!469673))

(declare-fun m!469677 () Bool)

(assert (=> b!489703 m!469677))

(assert (=> b!489703 m!469673))

(declare-fun m!469679 () Bool)

(assert (=> b!489703 m!469679))

(assert (=> b!489703 m!469669))

(declare-fun m!469681 () Bool)

(assert (=> b!489703 m!469681))

(declare-fun m!469683 () Bool)

(assert (=> b!489706 m!469683))

(assert (=> b!489705 m!469673))

(assert (=> b!489705 m!469673))

(declare-fun m!469685 () Bool)

(assert (=> b!489705 m!469685))

(declare-fun m!469687 () Bool)

(assert (=> b!489699 m!469687))

(declare-fun m!469689 () Bool)

(assert (=> start!44662 m!469689))

(declare-fun m!469691 () Bool)

(assert (=> start!44662 m!469691))

(declare-fun m!469693 () Bool)

(assert (=> b!489707 m!469693))

(assert (=> b!489702 m!469673))

(assert (=> b!489702 m!469673))

(declare-fun m!469695 () Bool)

(assert (=> b!489702 m!469695))

(declare-fun m!469697 () Bool)

(assert (=> b!489701 m!469697))

(push 1)

