; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44758 () Bool)

(assert start!44758)

(declare-fun b!491004 () Bool)

(declare-fun e!288543 () Bool)

(declare-fun e!288542 () Bool)

(assert (=> b!491004 (= e!288543 e!288542)))

(declare-fun res!294093 () Bool)

(assert (=> b!491004 (=> (not res!294093) (not e!288542))))

(declare-datatypes ((SeekEntryResult!3747 0))(
  ( (MissingZero!3747 (index!17167 (_ BitVec 32))) (Found!3747 (index!17168 (_ BitVec 32))) (Intermediate!3747 (undefined!4559 Bool) (index!17169 (_ BitVec 32)) (x!46288 (_ BitVec 32))) (Undefined!3747) (MissingVacant!3747 (index!17170 (_ BitVec 32))) )
))
(declare-fun lt!221957 () SeekEntryResult!3747)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!491004 (= res!294093 (or (= lt!221957 (MissingZero!3747 i!1204)) (= lt!221957 (MissingVacant!3747 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31777 0))(
  ( (array!31778 (arr!15273 (Array (_ BitVec 32) (_ BitVec 64))) (size!15637 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31777)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31777 (_ BitVec 32)) SeekEntryResult!3747)

(assert (=> b!491004 (= lt!221957 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!491005 () Bool)

(declare-fun res!294091 () Bool)

(assert (=> b!491005 (=> (not res!294091) (not e!288543))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!491005 (= res!294091 (validKeyInArray!0 k!2280))))

(declare-fun b!491006 () Bool)

(declare-fun e!288544 () Bool)

(assert (=> b!491006 (= e!288542 (not e!288544))))

(declare-fun res!294092 () Bool)

(assert (=> b!491006 (=> res!294092 e!288544)))

(declare-fun lt!221960 () (_ BitVec 64))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!221958 () array!31777)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31777 (_ BitVec 32)) SeekEntryResult!3747)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!491006 (= res!294092 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15273 a!3235) j!176) mask!3524) (select (arr!15273 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221960 mask!3524) lt!221960 lt!221958 mask!3524))))))

(assert (=> b!491006 (= lt!221960 (select (store (arr!15273 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!491006 (= lt!221958 (array!31778 (store (arr!15273 a!3235) i!1204 k!2280) (size!15637 a!3235)))))

(declare-fun lt!221955 () SeekEntryResult!3747)

(assert (=> b!491006 (= lt!221955 (Found!3747 j!176))))

(assert (=> b!491006 (= lt!221955 (seekEntryOrOpen!0 (select (arr!15273 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31777 (_ BitVec 32)) Bool)

(assert (=> b!491006 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14432 0))(
  ( (Unit!14433) )
))
(declare-fun lt!221959 () Unit!14432)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31777 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14432)

(assert (=> b!491006 (= lt!221959 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!491007 () Bool)

(declare-fun res!294090 () Bool)

(assert (=> b!491007 (=> (not res!294090) (not e!288542))))

(declare-datatypes ((List!9484 0))(
  ( (Nil!9481) (Cons!9480 (h!10342 (_ BitVec 64)) (t!15720 List!9484)) )
))
(declare-fun arrayNoDuplicates!0 (array!31777 (_ BitVec 32) List!9484) Bool)

(assert (=> b!491007 (= res!294090 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9481))))

(declare-fun b!491008 () Bool)

(declare-fun res!294096 () Bool)

(assert (=> b!491008 (=> (not res!294096) (not e!288543))))

(assert (=> b!491008 (= res!294096 (and (= (size!15637 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15637 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15637 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!491009 () Bool)

(declare-fun res!294097 () Bool)

(assert (=> b!491009 (=> (not res!294097) (not e!288542))))

(assert (=> b!491009 (= res!294097 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!491011 () Bool)

(declare-fun res!294098 () Bool)

(assert (=> b!491011 (=> (not res!294098) (not e!288543))))

(declare-fun arrayContainsKey!0 (array!31777 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!491011 (= res!294098 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!491012 () Bool)

(assert (=> b!491012 (= e!288544 (bvsge mask!3524 #b00000000000000000000000000000000))))

(assert (=> b!491012 (= lt!221955 (seekEntryOrOpen!0 lt!221960 lt!221958 mask!3524))))

(declare-fun lt!221956 () Unit!14432)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31777 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14432)

(assert (=> b!491012 (= lt!221956 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!491010 () Bool)

(declare-fun res!294094 () Bool)

(assert (=> b!491010 (=> (not res!294094) (not e!288543))))

(assert (=> b!491010 (= res!294094 (validKeyInArray!0 (select (arr!15273 a!3235) j!176)))))

(declare-fun res!294095 () Bool)

(assert (=> start!44758 (=> (not res!294095) (not e!288543))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44758 (= res!294095 (validMask!0 mask!3524))))

(assert (=> start!44758 e!288543))

(assert (=> start!44758 true))

(declare-fun array_inv!11047 (array!31777) Bool)

(assert (=> start!44758 (array_inv!11047 a!3235)))

(assert (= (and start!44758 res!294095) b!491008))

(assert (= (and b!491008 res!294096) b!491010))

(assert (= (and b!491010 res!294094) b!491005))

(assert (= (and b!491005 res!294091) b!491011))

(assert (= (and b!491011 res!294098) b!491004))

(assert (= (and b!491004 res!294093) b!491009))

(assert (= (and b!491009 res!294097) b!491007))

(assert (= (and b!491007 res!294090) b!491006))

(assert (= (and b!491006 (not res!294092)) b!491012))

(declare-fun m!471505 () Bool)

(assert (=> b!491006 m!471505))

(declare-fun m!471507 () Bool)

(assert (=> b!491006 m!471507))

(declare-fun m!471509 () Bool)

(assert (=> b!491006 m!471509))

(declare-fun m!471511 () Bool)

(assert (=> b!491006 m!471511))

(declare-fun m!471513 () Bool)

(assert (=> b!491006 m!471513))

(declare-fun m!471515 () Bool)

(assert (=> b!491006 m!471515))

(assert (=> b!491006 m!471513))

(assert (=> b!491006 m!471511))

(assert (=> b!491006 m!471513))

(declare-fun m!471517 () Bool)

(assert (=> b!491006 m!471517))

(assert (=> b!491006 m!471513))

(declare-fun m!471519 () Bool)

(assert (=> b!491006 m!471519))

(declare-fun m!471521 () Bool)

(assert (=> b!491006 m!471521))

(assert (=> b!491006 m!471521))

(declare-fun m!471523 () Bool)

(assert (=> b!491006 m!471523))

(declare-fun m!471525 () Bool)

(assert (=> b!491011 m!471525))

(declare-fun m!471527 () Bool)

(assert (=> b!491007 m!471527))

(declare-fun m!471529 () Bool)

(assert (=> b!491012 m!471529))

(declare-fun m!471531 () Bool)

(assert (=> b!491012 m!471531))

(declare-fun m!471533 () Bool)

(assert (=> b!491009 m!471533))

(declare-fun m!471535 () Bool)

(assert (=> b!491004 m!471535))

(assert (=> b!491010 m!471513))

(assert (=> b!491010 m!471513))

(declare-fun m!471537 () Bool)

(assert (=> b!491010 m!471537))

(declare-fun m!471539 () Bool)

(assert (=> b!491005 m!471539))

(declare-fun m!471541 () Bool)

(assert (=> start!44758 m!471541))

(declare-fun m!471543 () Bool)

(assert (=> start!44758 m!471543))

(push 1)

