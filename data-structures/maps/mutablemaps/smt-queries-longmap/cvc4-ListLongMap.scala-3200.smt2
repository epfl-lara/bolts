; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44960 () Bool)

(assert start!44960)

(declare-fun b!492738 () Bool)

(declare-fun res!295462 () Bool)

(declare-fun e!289451 () Bool)

(assert (=> b!492738 (=> (not res!295462) (not e!289451))))

(declare-datatypes ((array!31865 0))(
  ( (array!31866 (arr!15314 (Array (_ BitVec 32) (_ BitVec 64))) (size!15678 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31865)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31865 (_ BitVec 32)) Bool)

(assert (=> b!492738 (= res!295462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!492739 () Bool)

(declare-fun e!289450 () Bool)

(assert (=> b!492739 (= e!289450 e!289451)))

(declare-fun res!295464 () Bool)

(assert (=> b!492739 (=> (not res!295464) (not e!289451))))

(declare-datatypes ((SeekEntryResult!3788 0))(
  ( (MissingZero!3788 (index!17331 (_ BitVec 32))) (Found!3788 (index!17332 (_ BitVec 32))) (Intermediate!3788 (undefined!4600 Bool) (index!17333 (_ BitVec 32)) (x!46445 (_ BitVec 32))) (Undefined!3788) (MissingVacant!3788 (index!17334 (_ BitVec 32))) )
))
(declare-fun lt!222820 () SeekEntryResult!3788)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!492739 (= res!295464 (or (= lt!222820 (MissingZero!3788 i!1204)) (= lt!222820 (MissingVacant!3788 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31865 (_ BitVec 32)) SeekEntryResult!3788)

(assert (=> b!492739 (= lt!222820 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!295465 () Bool)

(assert (=> start!44960 (=> (not res!295465) (not e!289450))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44960 (= res!295465 (validMask!0 mask!3524))))

(assert (=> start!44960 e!289450))

(assert (=> start!44960 true))

(declare-fun array_inv!11088 (array!31865) Bool)

(assert (=> start!44960 (array_inv!11088 a!3235)))

(declare-fun e!289453 () Bool)

(declare-fun b!492740 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!492740 (= e!289453 (= (seekEntryOrOpen!0 (select (arr!15314 a!3235) j!176) a!3235 mask!3524) (Found!3788 j!176)))))

(declare-fun b!492741 () Bool)

(declare-fun res!295459 () Bool)

(assert (=> b!492741 (=> (not res!295459) (not e!289451))))

(declare-datatypes ((List!9525 0))(
  ( (Nil!9522) (Cons!9521 (h!10389 (_ BitVec 64)) (t!15761 List!9525)) )
))
(declare-fun arrayNoDuplicates!0 (array!31865 (_ BitVec 32) List!9525) Bool)

(assert (=> b!492741 (= res!295459 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9522))))

(declare-fun b!492742 () Bool)

(declare-fun res!295460 () Bool)

(assert (=> b!492742 (=> (not res!295460) (not e!289450))))

(declare-fun arrayContainsKey!0 (array!31865 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!492742 (= res!295460 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!492743 () Bool)

(declare-fun res!295461 () Bool)

(assert (=> b!492743 (=> (not res!295461) (not e!289450))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!492743 (= res!295461 (validKeyInArray!0 (select (arr!15314 a!3235) j!176)))))

(declare-fun b!492744 () Bool)

(declare-fun res!295458 () Bool)

(assert (=> b!492744 (=> (not res!295458) (not e!289450))))

(assert (=> b!492744 (= res!295458 (validKeyInArray!0 k!2280))))

(declare-fun b!492745 () Bool)

(declare-fun res!295463 () Bool)

(assert (=> b!492745 (=> (not res!295463) (not e!289450))))

(assert (=> b!492745 (= res!295463 (and (= (size!15678 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15678 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15678 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!492746 () Bool)

(assert (=> b!492746 (= e!289451 (not true))))

(declare-fun lt!222821 () SeekEntryResult!3788)

(declare-fun lt!222819 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31865 (_ BitVec 32)) SeekEntryResult!3788)

(assert (=> b!492746 (= lt!222821 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222819 (select (store (arr!15314 a!3235) i!1204 k!2280) j!176) (array!31866 (store (arr!15314 a!3235) i!1204 k!2280) (size!15678 a!3235)) mask!3524))))

(declare-fun lt!222818 () (_ BitVec 32))

(declare-fun lt!222816 () SeekEntryResult!3788)

(assert (=> b!492746 (= lt!222816 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222818 (select (arr!15314 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!492746 (= lt!222819 (toIndex!0 (select (store (arr!15314 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!492746 (= lt!222818 (toIndex!0 (select (arr!15314 a!3235) j!176) mask!3524))))

(assert (=> b!492746 e!289453))

(declare-fun res!295466 () Bool)

(assert (=> b!492746 (=> (not res!295466) (not e!289453))))

(assert (=> b!492746 (= res!295466 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14514 0))(
  ( (Unit!14515) )
))
(declare-fun lt!222817 () Unit!14514)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31865 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14514)

(assert (=> b!492746 (= lt!222817 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!44960 res!295465) b!492745))

(assert (= (and b!492745 res!295463) b!492743))

(assert (= (and b!492743 res!295461) b!492744))

(assert (= (and b!492744 res!295458) b!492742))

(assert (= (and b!492742 res!295460) b!492739))

(assert (= (and b!492739 res!295464) b!492738))

(assert (= (and b!492738 res!295462) b!492741))

(assert (= (and b!492741 res!295459) b!492746))

(assert (= (and b!492746 res!295466) b!492740))

(declare-fun m!473473 () Bool)

(assert (=> b!492740 m!473473))

(assert (=> b!492740 m!473473))

(declare-fun m!473475 () Bool)

(assert (=> b!492740 m!473475))

(declare-fun m!473477 () Bool)

(assert (=> b!492739 m!473477))

(declare-fun m!473479 () Bool)

(assert (=> b!492744 m!473479))

(assert (=> b!492743 m!473473))

(assert (=> b!492743 m!473473))

(declare-fun m!473481 () Bool)

(assert (=> b!492743 m!473481))

(declare-fun m!473483 () Bool)

(assert (=> b!492738 m!473483))

(declare-fun m!473485 () Bool)

(assert (=> b!492742 m!473485))

(declare-fun m!473487 () Bool)

(assert (=> start!44960 m!473487))

(declare-fun m!473489 () Bool)

(assert (=> start!44960 m!473489))

(declare-fun m!473491 () Bool)

(assert (=> b!492741 m!473491))

(assert (=> b!492746 m!473473))

(declare-fun m!473493 () Bool)

(assert (=> b!492746 m!473493))

(declare-fun m!473495 () Bool)

(assert (=> b!492746 m!473495))

(declare-fun m!473497 () Bool)

(assert (=> b!492746 m!473497))

(declare-fun m!473499 () Bool)

(assert (=> b!492746 m!473499))

(assert (=> b!492746 m!473473))

(declare-fun m!473501 () Bool)

(assert (=> b!492746 m!473501))

(assert (=> b!492746 m!473473))

(declare-fun m!473503 () Bool)

(assert (=> b!492746 m!473503))

(assert (=> b!492746 m!473499))

(declare-fun m!473505 () Bool)

(assert (=> b!492746 m!473505))

(assert (=> b!492746 m!473499))

(declare-fun m!473507 () Bool)

(assert (=> b!492746 m!473507))

(push 1)

