; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45238 () Bool)

(assert start!45238)

(declare-fun b!496390 () Bool)

(declare-fun e!291081 () Bool)

(declare-fun e!291083 () Bool)

(assert (=> b!496390 (= e!291081 e!291083)))

(declare-fun res!298928 () Bool)

(assert (=> b!496390 (=> (not res!298928) (not e!291083))))

(declare-datatypes ((SeekEntryResult!3897 0))(
  ( (MissingZero!3897 (index!17767 (_ BitVec 32))) (Found!3897 (index!17768 (_ BitVec 32))) (Intermediate!3897 (undefined!4709 Bool) (index!17769 (_ BitVec 32)) (x!46856 (_ BitVec 32))) (Undefined!3897) (MissingVacant!3897 (index!17770 (_ BitVec 32))) )
))
(declare-fun lt!224773 () SeekEntryResult!3897)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!496390 (= res!298928 (or (= lt!224773 (MissingZero!3897 i!1204)) (= lt!224773 (MissingVacant!3897 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32086 0))(
  ( (array!32087 (arr!15423 (Array (_ BitVec 32) (_ BitVec 64))) (size!15787 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32086)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32086 (_ BitVec 32)) SeekEntryResult!3897)

(assert (=> b!496390 (= lt!224773 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!496391 () Bool)

(declare-fun e!291082 () Bool)

(assert (=> b!496391 (= e!291082 true)))

(declare-fun lt!224774 () SeekEntryResult!3897)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!496391 (and (bvslt (x!46856 lt!224774) #b01111111111111111111111111111110) (or (= (select (arr!15423 a!3235) (index!17769 lt!224774)) (select (arr!15423 a!3235) j!176)) (= (select (arr!15423 a!3235) (index!17769 lt!224774)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15423 a!3235) (index!17769 lt!224774)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!496392 () Bool)

(declare-fun res!298929 () Bool)

(assert (=> b!496392 (=> (not res!298929) (not e!291081))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496392 (= res!298929 (validKeyInArray!0 k!2280))))

(declare-fun e!291084 () Bool)

(declare-fun b!496393 () Bool)

(assert (=> b!496393 (= e!291084 (= (seekEntryOrOpen!0 (select (arr!15423 a!3235) j!176) a!3235 mask!3524) (Found!3897 j!176)))))

(declare-fun b!496394 () Bool)

(declare-fun res!298931 () Bool)

(assert (=> b!496394 (=> (not res!298931) (not e!291081))))

(assert (=> b!496394 (= res!298931 (validKeyInArray!0 (select (arr!15423 a!3235) j!176)))))

(declare-fun b!496395 () Bool)

(assert (=> b!496395 (= e!291083 (not e!291082))))

(declare-fun res!298933 () Bool)

(assert (=> b!496395 (=> res!298933 e!291082)))

(declare-fun lt!224772 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32086 (_ BitVec 32)) SeekEntryResult!3897)

(assert (=> b!496395 (= res!298933 (= lt!224774 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224772 (select (store (arr!15423 a!3235) i!1204 k!2280) j!176) (array!32087 (store (arr!15423 a!3235) i!1204 k!2280) (size!15787 a!3235)) mask!3524)))))

(declare-fun lt!224770 () (_ BitVec 32))

(assert (=> b!496395 (= lt!224774 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224770 (select (arr!15423 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496395 (= lt!224772 (toIndex!0 (select (store (arr!15423 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!496395 (= lt!224770 (toIndex!0 (select (arr!15423 a!3235) j!176) mask!3524))))

(assert (=> b!496395 e!291084))

(declare-fun res!298935 () Bool)

(assert (=> b!496395 (=> (not res!298935) (not e!291084))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32086 (_ BitVec 32)) Bool)

(assert (=> b!496395 (= res!298935 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14732 0))(
  ( (Unit!14733) )
))
(declare-fun lt!224771 () Unit!14732)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32086 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14732)

(assert (=> b!496395 (= lt!224771 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!496396 () Bool)

(declare-fun res!298934 () Bool)

(assert (=> b!496396 (=> (not res!298934) (not e!291083))))

(assert (=> b!496396 (= res!298934 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496397 () Bool)

(declare-fun res!298936 () Bool)

(assert (=> b!496397 (=> (not res!298936) (not e!291081))))

(assert (=> b!496397 (= res!298936 (and (= (size!15787 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15787 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15787 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!496398 () Bool)

(declare-fun res!298937 () Bool)

(assert (=> b!496398 (=> (not res!298937) (not e!291083))))

(declare-datatypes ((List!9634 0))(
  ( (Nil!9631) (Cons!9630 (h!10501 (_ BitVec 64)) (t!15870 List!9634)) )
))
(declare-fun arrayNoDuplicates!0 (array!32086 (_ BitVec 32) List!9634) Bool)

(assert (=> b!496398 (= res!298937 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9631))))

(declare-fun res!298932 () Bool)

(assert (=> start!45238 (=> (not res!298932) (not e!291081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45238 (= res!298932 (validMask!0 mask!3524))))

(assert (=> start!45238 e!291081))

(assert (=> start!45238 true))

(declare-fun array_inv!11197 (array!32086) Bool)

(assert (=> start!45238 (array_inv!11197 a!3235)))

(declare-fun b!496399 () Bool)

(declare-fun res!298930 () Bool)

(assert (=> b!496399 (=> (not res!298930) (not e!291081))))

(declare-fun arrayContainsKey!0 (array!32086 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496399 (= res!298930 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!496400 () Bool)

(declare-fun res!298927 () Bool)

(assert (=> b!496400 (=> res!298927 e!291082)))

(assert (=> b!496400 (= res!298927 (or (undefined!4709 lt!224774) (not (is-Intermediate!3897 lt!224774))))))

(assert (= (and start!45238 res!298932) b!496397))

(assert (= (and b!496397 res!298936) b!496394))

(assert (= (and b!496394 res!298931) b!496392))

(assert (= (and b!496392 res!298929) b!496399))

(assert (= (and b!496399 res!298930) b!496390))

(assert (= (and b!496390 res!298928) b!496396))

(assert (= (and b!496396 res!298934) b!496398))

(assert (= (and b!496398 res!298937) b!496395))

(assert (= (and b!496395 res!298935) b!496393))

(assert (= (and b!496395 (not res!298933)) b!496400))

(assert (= (and b!496400 (not res!298927)) b!496391))

(declare-fun m!477685 () Bool)

(assert (=> start!45238 m!477685))

(declare-fun m!477687 () Bool)

(assert (=> start!45238 m!477687))

(declare-fun m!477689 () Bool)

(assert (=> b!496390 m!477689))

(declare-fun m!477691 () Bool)

(assert (=> b!496391 m!477691))

(declare-fun m!477693 () Bool)

(assert (=> b!496391 m!477693))

(declare-fun m!477695 () Bool)

(assert (=> b!496396 m!477695))

(assert (=> b!496394 m!477693))

(assert (=> b!496394 m!477693))

(declare-fun m!477697 () Bool)

(assert (=> b!496394 m!477697))

(declare-fun m!477699 () Bool)

(assert (=> b!496399 m!477699))

(declare-fun m!477701 () Bool)

(assert (=> b!496398 m!477701))

(declare-fun m!477703 () Bool)

(assert (=> b!496392 m!477703))

(declare-fun m!477705 () Bool)

(assert (=> b!496395 m!477705))

(declare-fun m!477707 () Bool)

(assert (=> b!496395 m!477707))

(declare-fun m!477709 () Bool)

(assert (=> b!496395 m!477709))

(assert (=> b!496395 m!477693))

(declare-fun m!477711 () Bool)

(assert (=> b!496395 m!477711))

(assert (=> b!496395 m!477693))

(declare-fun m!477713 () Bool)

(assert (=> b!496395 m!477713))

(assert (=> b!496395 m!477709))

(declare-fun m!477715 () Bool)

(assert (=> b!496395 m!477715))

(assert (=> b!496395 m!477709))

(declare-fun m!477717 () Bool)

(assert (=> b!496395 m!477717))

(assert (=> b!496395 m!477693))

(declare-fun m!477719 () Bool)

(assert (=> b!496395 m!477719))

(assert (=> b!496393 m!477693))

(assert (=> b!496393 m!477693))

(declare-fun m!477721 () Bool)

(assert (=> b!496393 m!477721))

(push 1)

