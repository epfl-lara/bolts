; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44756 () Bool)

(assert start!44756)

(declare-fun b!490977 () Bool)

(declare-fun res!294071 () Bool)

(declare-fun e!288532 () Bool)

(assert (=> b!490977 (=> (not res!294071) (not e!288532))))

(declare-datatypes ((array!31775 0))(
  ( (array!31776 (arr!15272 (Array (_ BitVec 32) (_ BitVec 64))) (size!15636 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31775)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31775 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490977 (= res!294071 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!294065 () Bool)

(assert (=> start!44756 (=> (not res!294065) (not e!288532))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44756 (= res!294065 (validMask!0 mask!3524))))

(assert (=> start!44756 e!288532))

(assert (=> start!44756 true))

(declare-fun array_inv!11046 (array!31775) Bool)

(assert (=> start!44756 (array_inv!11046 a!3235)))

(declare-fun b!490978 () Bool)

(declare-fun res!294069 () Bool)

(declare-fun e!288531 () Bool)

(assert (=> b!490978 (=> (not res!294069) (not e!288531))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31775 (_ BitVec 32)) Bool)

(assert (=> b!490978 (= res!294069 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490979 () Bool)

(declare-fun res!294067 () Bool)

(assert (=> b!490979 (=> (not res!294067) (not e!288532))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490979 (= res!294067 (validKeyInArray!0 k!2280))))

(declare-fun b!490980 () Bool)

(declare-fun res!294066 () Bool)

(assert (=> b!490980 (=> (not res!294066) (not e!288532))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!490980 (= res!294066 (validKeyInArray!0 (select (arr!15272 a!3235) j!176)))))

(declare-fun b!490981 () Bool)

(declare-fun res!294063 () Bool)

(assert (=> b!490981 (=> (not res!294063) (not e!288532))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!490981 (= res!294063 (and (= (size!15636 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15636 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15636 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!490982 () Bool)

(declare-fun e!288529 () Bool)

(assert (=> b!490982 (= e!288529 true)))

(declare-fun lt!221942 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3746 0))(
  ( (MissingZero!3746 (index!17163 (_ BitVec 32))) (Found!3746 (index!17164 (_ BitVec 32))) (Intermediate!3746 (undefined!4558 Bool) (index!17165 (_ BitVec 32)) (x!46279 (_ BitVec 32))) (Undefined!3746) (MissingVacant!3746 (index!17166 (_ BitVec 32))) )
))
(declare-fun lt!221940 () SeekEntryResult!3746)

(declare-fun lt!221938 () array!31775)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31775 (_ BitVec 32)) SeekEntryResult!3746)

(assert (=> b!490982 (= lt!221940 (seekEntryOrOpen!0 lt!221942 lt!221938 mask!3524))))

(declare-datatypes ((Unit!14430 0))(
  ( (Unit!14431) )
))
(declare-fun lt!221939 () Unit!14430)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31775 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14430)

(assert (=> b!490982 (= lt!221939 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!490983 () Bool)

(assert (=> b!490983 (= e!288531 (not e!288529))))

(declare-fun res!294070 () Bool)

(assert (=> b!490983 (=> res!294070 e!288529)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31775 (_ BitVec 32)) SeekEntryResult!3746)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490983 (= res!294070 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15272 a!3235) j!176) mask!3524) (select (arr!15272 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221942 mask!3524) lt!221942 lt!221938 mask!3524))))))

(assert (=> b!490983 (= lt!221942 (select (store (arr!15272 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!490983 (= lt!221938 (array!31776 (store (arr!15272 a!3235) i!1204 k!2280) (size!15636 a!3235)))))

(assert (=> b!490983 (= lt!221940 (Found!3746 j!176))))

(assert (=> b!490983 (= lt!221940 (seekEntryOrOpen!0 (select (arr!15272 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!490983 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!221941 () Unit!14430)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31775 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14430)

(assert (=> b!490983 (= lt!221941 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490984 () Bool)

(assert (=> b!490984 (= e!288532 e!288531)))

(declare-fun res!294064 () Bool)

(assert (=> b!490984 (=> (not res!294064) (not e!288531))))

(declare-fun lt!221937 () SeekEntryResult!3746)

(assert (=> b!490984 (= res!294064 (or (= lt!221937 (MissingZero!3746 i!1204)) (= lt!221937 (MissingVacant!3746 i!1204))))))

(assert (=> b!490984 (= lt!221937 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!490985 () Bool)

(declare-fun res!294068 () Bool)

(assert (=> b!490985 (=> (not res!294068) (not e!288531))))

(declare-datatypes ((List!9483 0))(
  ( (Nil!9480) (Cons!9479 (h!10341 (_ BitVec 64)) (t!15719 List!9483)) )
))
(declare-fun arrayNoDuplicates!0 (array!31775 (_ BitVec 32) List!9483) Bool)

(assert (=> b!490985 (= res!294068 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9480))))

(assert (= (and start!44756 res!294065) b!490981))

(assert (= (and b!490981 res!294063) b!490980))

(assert (= (and b!490980 res!294066) b!490979))

(assert (= (and b!490979 res!294067) b!490977))

(assert (= (and b!490977 res!294071) b!490984))

(assert (= (and b!490984 res!294064) b!490978))

(assert (= (and b!490978 res!294069) b!490985))

(assert (= (and b!490985 res!294068) b!490983))

(assert (= (and b!490983 (not res!294070)) b!490982))

(declare-fun m!471465 () Bool)

(assert (=> b!490977 m!471465))

(declare-fun m!471467 () Bool)

(assert (=> b!490982 m!471467))

(declare-fun m!471469 () Bool)

(assert (=> b!490982 m!471469))

(declare-fun m!471471 () Bool)

(assert (=> start!44756 m!471471))

(declare-fun m!471473 () Bool)

(assert (=> start!44756 m!471473))

(declare-fun m!471475 () Bool)

(assert (=> b!490983 m!471475))

(declare-fun m!471477 () Bool)

(assert (=> b!490983 m!471477))

(declare-fun m!471479 () Bool)

(assert (=> b!490983 m!471479))

(declare-fun m!471481 () Bool)

(assert (=> b!490983 m!471481))

(declare-fun m!471483 () Bool)

(assert (=> b!490983 m!471483))

(declare-fun m!471485 () Bool)

(assert (=> b!490983 m!471485))

(declare-fun m!471487 () Bool)

(assert (=> b!490983 m!471487))

(declare-fun m!471489 () Bool)

(assert (=> b!490983 m!471489))

(assert (=> b!490983 m!471487))

(assert (=> b!490983 m!471485))

(assert (=> b!490983 m!471475))

(assert (=> b!490983 m!471487))

(declare-fun m!471491 () Bool)

(assert (=> b!490983 m!471491))

(assert (=> b!490983 m!471487))

(declare-fun m!471493 () Bool)

(assert (=> b!490983 m!471493))

(declare-fun m!471495 () Bool)

(assert (=> b!490979 m!471495))

(assert (=> b!490980 m!471487))

(assert (=> b!490980 m!471487))

(declare-fun m!471497 () Bool)

(assert (=> b!490980 m!471497))

(declare-fun m!471499 () Bool)

(assert (=> b!490985 m!471499))

(declare-fun m!471501 () Bool)

(assert (=> b!490978 m!471501))

(declare-fun m!471503 () Bool)

(assert (=> b!490984 m!471503))

(push 1)

