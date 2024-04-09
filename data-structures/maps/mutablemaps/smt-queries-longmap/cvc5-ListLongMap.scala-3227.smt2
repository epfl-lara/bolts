; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45178 () Bool)

(assert start!45178)

(declare-fun b!495400 () Bool)

(declare-fun res!297945 () Bool)

(declare-fun e!290632 () Bool)

(assert (=> b!495400 (=> (not res!297945) (not e!290632))))

(declare-datatypes ((array!32026 0))(
  ( (array!32027 (arr!15393 (Array (_ BitVec 32) (_ BitVec 64))) (size!15757 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32026)

(declare-datatypes ((List!9604 0))(
  ( (Nil!9601) (Cons!9600 (h!10471 (_ BitVec 64)) (t!15840 List!9604)) )
))
(declare-fun arrayNoDuplicates!0 (array!32026 (_ BitVec 32) List!9604) Bool)

(assert (=> b!495400 (= res!297945 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9601))))

(declare-fun b!495401 () Bool)

(declare-fun res!297941 () Bool)

(declare-fun e!290634 () Bool)

(assert (=> b!495401 (=> (not res!297941) (not e!290634))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!495401 (= res!297941 (validKeyInArray!0 (select (arr!15393 a!3235) j!176)))))

(declare-fun b!495402 () Bool)

(declare-fun res!297947 () Bool)

(declare-fun e!290633 () Bool)

(assert (=> b!495402 (=> res!297947 e!290633)))

(declare-datatypes ((SeekEntryResult!3867 0))(
  ( (MissingZero!3867 (index!17647 (_ BitVec 32))) (Found!3867 (index!17648 (_ BitVec 32))) (Intermediate!3867 (undefined!4679 Bool) (index!17649 (_ BitVec 32)) (x!46746 (_ BitVec 32))) (Undefined!3867) (MissingVacant!3867 (index!17650 (_ BitVec 32))) )
))
(declare-fun lt!224321 () SeekEntryResult!3867)

(assert (=> b!495402 (= res!297947 (or (undefined!4679 lt!224321) (not (is-Intermediate!3867 lt!224321))))))

(declare-fun b!495403 () Bool)

(assert (=> b!495403 (= e!290632 (not e!290633))))

(declare-fun res!297946 () Bool)

(assert (=> b!495403 (=> res!297946 e!290633)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!224323 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32026 (_ BitVec 32)) SeekEntryResult!3867)

(assert (=> b!495403 (= res!297946 (= lt!224321 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224323 (select (store (arr!15393 a!3235) i!1204 k!2280) j!176) (array!32027 (store (arr!15393 a!3235) i!1204 k!2280) (size!15757 a!3235)) mask!3524)))))

(declare-fun lt!224324 () (_ BitVec 32))

(assert (=> b!495403 (= lt!224321 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224324 (select (arr!15393 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!495403 (= lt!224323 (toIndex!0 (select (store (arr!15393 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!495403 (= lt!224324 (toIndex!0 (select (arr!15393 a!3235) j!176) mask!3524))))

(declare-fun e!290631 () Bool)

(assert (=> b!495403 e!290631))

(declare-fun res!297944 () Bool)

(assert (=> b!495403 (=> (not res!297944) (not e!290631))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32026 (_ BitVec 32)) Bool)

(assert (=> b!495403 (= res!297944 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14672 0))(
  ( (Unit!14673) )
))
(declare-fun lt!224320 () Unit!14672)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32026 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14672)

(assert (=> b!495403 (= lt!224320 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!495404 () Bool)

(assert (=> b!495404 (= e!290634 e!290632)))

(declare-fun res!297937 () Bool)

(assert (=> b!495404 (=> (not res!297937) (not e!290632))))

(declare-fun lt!224322 () SeekEntryResult!3867)

(assert (=> b!495404 (= res!297937 (or (= lt!224322 (MissingZero!3867 i!1204)) (= lt!224322 (MissingVacant!3867 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32026 (_ BitVec 32)) SeekEntryResult!3867)

(assert (=> b!495404 (= lt!224322 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!495405 () Bool)

(declare-fun res!297943 () Bool)

(assert (=> b!495405 (=> (not res!297943) (not e!290632))))

(assert (=> b!495405 (= res!297943 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!495406 () Bool)

(assert (=> b!495406 (= e!290631 (= (seekEntryOrOpen!0 (select (arr!15393 a!3235) j!176) a!3235 mask!3524) (Found!3867 j!176)))))

(declare-fun b!495407 () Bool)

(declare-fun res!297938 () Bool)

(assert (=> b!495407 (=> (not res!297938) (not e!290634))))

(assert (=> b!495407 (= res!297938 (validKeyInArray!0 k!2280))))

(declare-fun b!495408 () Bool)

(declare-fun res!297939 () Bool)

(assert (=> b!495408 (=> (not res!297939) (not e!290634))))

(assert (=> b!495408 (= res!297939 (and (= (size!15757 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15757 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15757 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!495409 () Bool)

(assert (=> b!495409 (= e!290633 true)))

(assert (=> b!495409 (and (bvslt (x!46746 lt!224321) #b01111111111111111111111111111110) (or (= (select (arr!15393 a!3235) (index!17649 lt!224321)) (select (arr!15393 a!3235) j!176)) (= (select (arr!15393 a!3235) (index!17649 lt!224321)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15393 a!3235) (index!17649 lt!224321)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!495410 () Bool)

(declare-fun res!297942 () Bool)

(assert (=> b!495410 (=> (not res!297942) (not e!290634))))

(declare-fun arrayContainsKey!0 (array!32026 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!495410 (= res!297942 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!297940 () Bool)

(assert (=> start!45178 (=> (not res!297940) (not e!290634))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45178 (= res!297940 (validMask!0 mask!3524))))

(assert (=> start!45178 e!290634))

(assert (=> start!45178 true))

(declare-fun array_inv!11167 (array!32026) Bool)

(assert (=> start!45178 (array_inv!11167 a!3235)))

(assert (= (and start!45178 res!297940) b!495408))

(assert (= (and b!495408 res!297939) b!495401))

(assert (= (and b!495401 res!297941) b!495407))

(assert (= (and b!495407 res!297938) b!495410))

(assert (= (and b!495410 res!297942) b!495404))

(assert (= (and b!495404 res!297937) b!495405))

(assert (= (and b!495405 res!297943) b!495400))

(assert (= (and b!495400 res!297945) b!495403))

(assert (= (and b!495403 res!297944) b!495406))

(assert (= (and b!495403 (not res!297946)) b!495402))

(assert (= (and b!495402 (not res!297947)) b!495409))

(declare-fun m!476545 () Bool)

(assert (=> start!45178 m!476545))

(declare-fun m!476547 () Bool)

(assert (=> start!45178 m!476547))

(declare-fun m!476549 () Bool)

(assert (=> b!495401 m!476549))

(assert (=> b!495401 m!476549))

(declare-fun m!476551 () Bool)

(assert (=> b!495401 m!476551))

(declare-fun m!476553 () Bool)

(assert (=> b!495403 m!476553))

(declare-fun m!476555 () Bool)

(assert (=> b!495403 m!476555))

(declare-fun m!476557 () Bool)

(assert (=> b!495403 m!476557))

(assert (=> b!495403 m!476549))

(declare-fun m!476559 () Bool)

(assert (=> b!495403 m!476559))

(assert (=> b!495403 m!476549))

(declare-fun m!476561 () Bool)

(assert (=> b!495403 m!476561))

(assert (=> b!495403 m!476557))

(declare-fun m!476563 () Bool)

(assert (=> b!495403 m!476563))

(assert (=> b!495403 m!476557))

(declare-fun m!476565 () Bool)

(assert (=> b!495403 m!476565))

(assert (=> b!495403 m!476549))

(declare-fun m!476567 () Bool)

(assert (=> b!495403 m!476567))

(declare-fun m!476569 () Bool)

(assert (=> b!495404 m!476569))

(declare-fun m!476571 () Bool)

(assert (=> b!495410 m!476571))

(declare-fun m!476573 () Bool)

(assert (=> b!495409 m!476573))

(assert (=> b!495409 m!476549))

(declare-fun m!476575 () Bool)

(assert (=> b!495407 m!476575))

(assert (=> b!495406 m!476549))

(assert (=> b!495406 m!476549))

(declare-fun m!476577 () Bool)

(assert (=> b!495406 m!476577))

(declare-fun m!476579 () Bool)

(assert (=> b!495400 m!476579))

(declare-fun m!476581 () Bool)

(assert (=> b!495405 m!476581))

(push 1)

