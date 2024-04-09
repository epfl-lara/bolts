; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44666 () Bool)

(assert start!44666)

(declare-fun b!489753 () Bool)

(declare-fun e!287981 () Bool)

(declare-fun e!287983 () Bool)

(assert (=> b!489753 (= e!287981 e!287983)))

(declare-fun res!292841 () Bool)

(assert (=> b!489753 (=> (not res!292841) (not e!287983))))

(declare-datatypes ((SeekEntryResult!3701 0))(
  ( (MissingZero!3701 (index!16983 (_ BitVec 32))) (Found!3701 (index!16984 (_ BitVec 32))) (Intermediate!3701 (undefined!4513 Bool) (index!16985 (_ BitVec 32)) (x!46114 (_ BitVec 32))) (Undefined!3701) (MissingVacant!3701 (index!16986 (_ BitVec 32))) )
))
(declare-fun lt!221130 () SeekEntryResult!3701)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!489753 (= res!292841 (or (= lt!221130 (MissingZero!3701 i!1204)) (= lt!221130 (MissingVacant!3701 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-datatypes ((array!31685 0))(
  ( (array!31686 (arr!15227 (Array (_ BitVec 32) (_ BitVec 64))) (size!15591 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31685)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31685 (_ BitVec 32)) SeekEntryResult!3701)

(assert (=> b!489753 (= lt!221130 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!489754 () Bool)

(declare-fun res!292839 () Bool)

(assert (=> b!489754 (=> (not res!292839) (not e!287983))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31685 (_ BitVec 32)) Bool)

(assert (=> b!489754 (= res!292839 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489756 () Bool)

(declare-fun res!292845 () Bool)

(assert (=> b!489756 (=> (not res!292845) (not e!287983))))

(declare-datatypes ((List!9438 0))(
  ( (Nil!9435) (Cons!9434 (h!10296 (_ BitVec 64)) (t!15674 List!9438)) )
))
(declare-fun arrayNoDuplicates!0 (array!31685 (_ BitVec 32) List!9438) Bool)

(assert (=> b!489756 (= res!292845 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9435))))

(declare-fun b!489757 () Bool)

(declare-fun res!292844 () Bool)

(assert (=> b!489757 (=> (not res!292844) (not e!287981))))

(declare-fun arrayContainsKey!0 (array!31685 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489757 (= res!292844 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!489758 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!287980 () Bool)

(assert (=> b!489758 (= e!287980 (= (seekEntryOrOpen!0 (select (arr!15227 a!3235) j!176) a!3235 mask!3524) (Found!3701 j!176)))))

(declare-fun b!489759 () Bool)

(assert (=> b!489759 (= e!287983 (not true))))

(declare-fun lt!221131 () SeekEntryResult!3701)

(declare-fun lt!221128 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31685 (_ BitVec 32)) SeekEntryResult!3701)

(assert (=> b!489759 (= lt!221131 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221128 (select (store (arr!15227 a!3235) i!1204 k!2280) j!176) (array!31686 (store (arr!15227 a!3235) i!1204 k!2280) (size!15591 a!3235)) mask!3524))))

(declare-fun lt!221127 () SeekEntryResult!3701)

(declare-fun lt!221129 () (_ BitVec 32))

(assert (=> b!489759 (= lt!221127 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221129 (select (arr!15227 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489759 (= lt!221128 (toIndex!0 (select (store (arr!15227 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!489759 (= lt!221129 (toIndex!0 (select (arr!15227 a!3235) j!176) mask!3524))))

(assert (=> b!489759 e!287980))

(declare-fun res!292840 () Bool)

(assert (=> b!489759 (=> (not res!292840) (not e!287980))))

(assert (=> b!489759 (= res!292840 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14340 0))(
  ( (Unit!14341) )
))
(declare-fun lt!221132 () Unit!14340)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31685 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14340)

(assert (=> b!489759 (= lt!221132 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!292842 () Bool)

(assert (=> start!44666 (=> (not res!292842) (not e!287981))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44666 (= res!292842 (validMask!0 mask!3524))))

(assert (=> start!44666 e!287981))

(assert (=> start!44666 true))

(declare-fun array_inv!11001 (array!31685) Bool)

(assert (=> start!44666 (array_inv!11001 a!3235)))

(declare-fun b!489755 () Bool)

(declare-fun res!292847 () Bool)

(assert (=> b!489755 (=> (not res!292847) (not e!287981))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489755 (= res!292847 (validKeyInArray!0 k!2280))))

(declare-fun b!489760 () Bool)

(declare-fun res!292843 () Bool)

(assert (=> b!489760 (=> (not res!292843) (not e!287981))))

(assert (=> b!489760 (= res!292843 (validKeyInArray!0 (select (arr!15227 a!3235) j!176)))))

(declare-fun b!489761 () Bool)

(declare-fun res!292846 () Bool)

(assert (=> b!489761 (=> (not res!292846) (not e!287981))))

(assert (=> b!489761 (= res!292846 (and (= (size!15591 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15591 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15591 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!44666 res!292842) b!489761))

(assert (= (and b!489761 res!292846) b!489760))

(assert (= (and b!489760 res!292843) b!489755))

(assert (= (and b!489755 res!292847) b!489757))

(assert (= (and b!489757 res!292844) b!489753))

(assert (= (and b!489753 res!292841) b!489754))

(assert (= (and b!489754 res!292839) b!489756))

(assert (= (and b!489756 res!292845) b!489759))

(assert (= (and b!489759 res!292840) b!489758))

(declare-fun m!469735 () Bool)

(assert (=> b!489755 m!469735))

(declare-fun m!469737 () Bool)

(assert (=> b!489759 m!469737))

(declare-fun m!469739 () Bool)

(assert (=> b!489759 m!469739))

(declare-fun m!469741 () Bool)

(assert (=> b!489759 m!469741))

(declare-fun m!469743 () Bool)

(assert (=> b!489759 m!469743))

(declare-fun m!469745 () Bool)

(assert (=> b!489759 m!469745))

(declare-fun m!469747 () Bool)

(assert (=> b!489759 m!469747))

(assert (=> b!489759 m!469745))

(declare-fun m!469749 () Bool)

(assert (=> b!489759 m!469749))

(assert (=> b!489759 m!469741))

(declare-fun m!469751 () Bool)

(assert (=> b!489759 m!469751))

(assert (=> b!489759 m!469745))

(declare-fun m!469753 () Bool)

(assert (=> b!489759 m!469753))

(assert (=> b!489759 m!469741))

(declare-fun m!469755 () Bool)

(assert (=> b!489756 m!469755))

(declare-fun m!469757 () Bool)

(assert (=> b!489757 m!469757))

(assert (=> b!489758 m!469745))

(assert (=> b!489758 m!469745))

(declare-fun m!469759 () Bool)

(assert (=> b!489758 m!469759))

(declare-fun m!469761 () Bool)

(assert (=> b!489754 m!469761))

(declare-fun m!469763 () Bool)

(assert (=> start!44666 m!469763))

(declare-fun m!469765 () Bool)

(assert (=> start!44666 m!469765))

(declare-fun m!469767 () Bool)

(assert (=> b!489753 m!469767))

(assert (=> b!489760 m!469745))

(assert (=> b!489760 m!469745))

(declare-fun m!469769 () Bool)

(assert (=> b!489760 m!469769))

(push 1)

