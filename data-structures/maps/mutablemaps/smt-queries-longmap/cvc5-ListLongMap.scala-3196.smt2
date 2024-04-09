; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44872 () Bool)

(assert start!44872)

(declare-fun b!492051 () Bool)

(declare-fun e!289081 () Bool)

(assert (=> b!492051 (= e!289081 (not true))))

(declare-datatypes ((SeekEntryResult!3774 0))(
  ( (MissingZero!3774 (index!17275 (_ BitVec 32))) (Found!3774 (index!17276 (_ BitVec 32))) (Intermediate!3774 (undefined!4586 Bool) (index!17277 (_ BitVec 32)) (x!46393 (_ BitVec 32))) (Undefined!3774) (MissingVacant!3774 (index!17278 (_ BitVec 32))) )
))
(declare-fun lt!222503 () SeekEntryResult!3774)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31834 0))(
  ( (array!31835 (arr!15300 (Array (_ BitVec 32) (_ BitVec 64))) (size!15664 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31834)

(declare-fun lt!222499 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31834 (_ BitVec 32)) SeekEntryResult!3774)

(assert (=> b!492051 (= lt!222503 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222499 (select (store (arr!15300 a!3235) i!1204 k!2280) j!176) (array!31835 (store (arr!15300 a!3235) i!1204 k!2280) (size!15664 a!3235)) mask!3524))))

(declare-fun lt!222498 () SeekEntryResult!3774)

(declare-fun lt!222502 () (_ BitVec 32))

(assert (=> b!492051 (= lt!222498 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222502 (select (arr!15300 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!492051 (= lt!222499 (toIndex!0 (select (store (arr!15300 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!492051 (= lt!222502 (toIndex!0 (select (arr!15300 a!3235) j!176) mask!3524))))

(declare-fun e!289080 () Bool)

(assert (=> b!492051 e!289080))

(declare-fun res!294959 () Bool)

(assert (=> b!492051 (=> (not res!294959) (not e!289080))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31834 (_ BitVec 32)) Bool)

(assert (=> b!492051 (= res!294959 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14486 0))(
  ( (Unit!14487) )
))
(declare-fun lt!222501 () Unit!14486)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31834 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14486)

(assert (=> b!492051 (= lt!222501 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!294960 () Bool)

(declare-fun e!289078 () Bool)

(assert (=> start!44872 (=> (not res!294960) (not e!289078))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44872 (= res!294960 (validMask!0 mask!3524))))

(assert (=> start!44872 e!289078))

(assert (=> start!44872 true))

(declare-fun array_inv!11074 (array!31834) Bool)

(assert (=> start!44872 (array_inv!11074 a!3235)))

(declare-fun b!492052 () Bool)

(declare-fun res!294958 () Bool)

(assert (=> b!492052 (=> (not res!294958) (not e!289078))))

(declare-fun arrayContainsKey!0 (array!31834 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!492052 (= res!294958 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!492053 () Bool)

(declare-fun res!294955 () Bool)

(assert (=> b!492053 (=> (not res!294955) (not e!289081))))

(assert (=> b!492053 (= res!294955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!492054 () Bool)

(declare-fun res!294956 () Bool)

(assert (=> b!492054 (=> (not res!294956) (not e!289078))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!492054 (= res!294956 (validKeyInArray!0 (select (arr!15300 a!3235) j!176)))))

(declare-fun b!492055 () Bool)

(declare-fun res!294957 () Bool)

(assert (=> b!492055 (=> (not res!294957) (not e!289078))))

(assert (=> b!492055 (= res!294957 (and (= (size!15664 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15664 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15664 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!492056 () Bool)

(declare-fun res!294961 () Bool)

(assert (=> b!492056 (=> (not res!294961) (not e!289081))))

(declare-datatypes ((List!9511 0))(
  ( (Nil!9508) (Cons!9507 (h!10372 (_ BitVec 64)) (t!15747 List!9511)) )
))
(declare-fun arrayNoDuplicates!0 (array!31834 (_ BitVec 32) List!9511) Bool)

(assert (=> b!492056 (= res!294961 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9508))))

(declare-fun b!492057 () Bool)

(declare-fun res!294954 () Bool)

(assert (=> b!492057 (=> (not res!294954) (not e!289078))))

(assert (=> b!492057 (= res!294954 (validKeyInArray!0 k!2280))))

(declare-fun b!492058 () Bool)

(assert (=> b!492058 (= e!289078 e!289081)))

(declare-fun res!294962 () Bool)

(assert (=> b!492058 (=> (not res!294962) (not e!289081))))

(declare-fun lt!222500 () SeekEntryResult!3774)

(assert (=> b!492058 (= res!294962 (or (= lt!222500 (MissingZero!3774 i!1204)) (= lt!222500 (MissingVacant!3774 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31834 (_ BitVec 32)) SeekEntryResult!3774)

(assert (=> b!492058 (= lt!222500 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!492059 () Bool)

(assert (=> b!492059 (= e!289080 (= (seekEntryOrOpen!0 (select (arr!15300 a!3235) j!176) a!3235 mask!3524) (Found!3774 j!176)))))

(assert (= (and start!44872 res!294960) b!492055))

(assert (= (and b!492055 res!294957) b!492054))

(assert (= (and b!492054 res!294956) b!492057))

(assert (= (and b!492057 res!294954) b!492052))

(assert (= (and b!492052 res!294958) b!492058))

(assert (= (and b!492058 res!294962) b!492053))

(assert (= (and b!492053 res!294955) b!492056))

(assert (= (and b!492056 res!294961) b!492051))

(assert (= (and b!492051 res!294959) b!492059))

(declare-fun m!472765 () Bool)

(assert (=> b!492058 m!472765))

(declare-fun m!472767 () Bool)

(assert (=> b!492056 m!472767))

(declare-fun m!472769 () Bool)

(assert (=> b!492057 m!472769))

(declare-fun m!472771 () Bool)

(assert (=> b!492059 m!472771))

(assert (=> b!492059 m!472771))

(declare-fun m!472773 () Bool)

(assert (=> b!492059 m!472773))

(declare-fun m!472775 () Bool)

(assert (=> start!44872 m!472775))

(declare-fun m!472777 () Bool)

(assert (=> start!44872 m!472777))

(declare-fun m!472779 () Bool)

(assert (=> b!492052 m!472779))

(declare-fun m!472781 () Bool)

(assert (=> b!492053 m!472781))

(declare-fun m!472783 () Bool)

(assert (=> b!492051 m!472783))

(declare-fun m!472785 () Bool)

(assert (=> b!492051 m!472785))

(declare-fun m!472787 () Bool)

(assert (=> b!492051 m!472787))

(declare-fun m!472789 () Bool)

(assert (=> b!492051 m!472789))

(assert (=> b!492051 m!472783))

(assert (=> b!492051 m!472771))

(declare-fun m!472791 () Bool)

(assert (=> b!492051 m!472791))

(assert (=> b!492051 m!472771))

(declare-fun m!472793 () Bool)

(assert (=> b!492051 m!472793))

(assert (=> b!492051 m!472771))

(declare-fun m!472795 () Bool)

(assert (=> b!492051 m!472795))

(assert (=> b!492051 m!472783))

(declare-fun m!472797 () Bool)

(assert (=> b!492051 m!472797))

(assert (=> b!492054 m!472771))

(assert (=> b!492054 m!472771))

(declare-fun m!472799 () Bool)

(assert (=> b!492054 m!472799))

(push 1)

