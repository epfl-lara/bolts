; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44724 () Bool)

(assert start!44724)

(declare-fun b!490536 () Bool)

(declare-fun res!293625 () Bool)

(declare-fun e!288331 () Bool)

(assert (=> b!490536 (=> (not res!293625) (not e!288331))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490536 (= res!293625 (validKeyInArray!0 k0!2280))))

(declare-fun b!490537 () Bool)

(declare-fun res!293622 () Bool)

(assert (=> b!490537 (=> (not res!293622) (not e!288331))))

(declare-datatypes ((array!31743 0))(
  ( (array!31744 (arr!15256 (Array (_ BitVec 32) (_ BitVec 64))) (size!15620 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31743)

(declare-fun arrayContainsKey!0 (array!31743 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490537 (= res!293622 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!490538 () Bool)

(declare-fun res!293629 () Bool)

(declare-fun e!288329 () Bool)

(assert (=> b!490538 (=> (not res!293629) (not e!288329))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31743 (_ BitVec 32)) Bool)

(assert (=> b!490538 (= res!293629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490539 () Bool)

(declare-fun e!288330 () Bool)

(assert (=> b!490539 (= e!288330 true)))

(declare-fun lt!221654 () array!31743)

(declare-datatypes ((SeekEntryResult!3730 0))(
  ( (MissingZero!3730 (index!17099 (_ BitVec 32))) (Found!3730 (index!17100 (_ BitVec 32))) (Intermediate!3730 (undefined!4542 Bool) (index!17101 (_ BitVec 32)) (x!46223 (_ BitVec 32))) (Undefined!3730) (MissingVacant!3730 (index!17102 (_ BitVec 32))) )
))
(declare-fun lt!221651 () SeekEntryResult!3730)

(declare-fun lt!221652 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31743 (_ BitVec 32)) SeekEntryResult!3730)

(assert (=> b!490539 (= lt!221651 (seekEntryOrOpen!0 lt!221652 lt!221654 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((Unit!14398 0))(
  ( (Unit!14399) )
))
(declare-fun lt!221650 () Unit!14398)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31743 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14398)

(assert (=> b!490539 (= lt!221650 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k0!2280 j!176 mask!3524))))

(declare-fun b!490540 () Bool)

(declare-fun res!293626 () Bool)

(assert (=> b!490540 (=> (not res!293626) (not e!288329))))

(declare-datatypes ((List!9467 0))(
  ( (Nil!9464) (Cons!9463 (h!10325 (_ BitVec 64)) (t!15703 List!9467)) )
))
(declare-fun arrayNoDuplicates!0 (array!31743 (_ BitVec 32) List!9467) Bool)

(assert (=> b!490540 (= res!293626 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9464))))

(declare-fun b!490541 () Bool)

(assert (=> b!490541 (= e!288331 e!288329)))

(declare-fun res!293630 () Bool)

(assert (=> b!490541 (=> (not res!293630) (not e!288329))))

(declare-fun lt!221653 () SeekEntryResult!3730)

(assert (=> b!490541 (= res!293630 (or (= lt!221653 (MissingZero!3730 i!1204)) (= lt!221653 (MissingVacant!3730 i!1204))))))

(assert (=> b!490541 (= lt!221653 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!490542 () Bool)

(assert (=> b!490542 (= e!288329 (not e!288330))))

(declare-fun res!293623 () Bool)

(assert (=> b!490542 (=> res!293623 e!288330)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31743 (_ BitVec 32)) SeekEntryResult!3730)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490542 (= res!293623 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15256 a!3235) j!176) mask!3524) (select (arr!15256 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221652 mask!3524) lt!221652 lt!221654 mask!3524))))))

(assert (=> b!490542 (= lt!221652 (select (store (arr!15256 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!490542 (= lt!221654 (array!31744 (store (arr!15256 a!3235) i!1204 k0!2280) (size!15620 a!3235)))))

(assert (=> b!490542 (= lt!221651 (Found!3730 j!176))))

(assert (=> b!490542 (= lt!221651 (seekEntryOrOpen!0 (select (arr!15256 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!490542 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!221649 () Unit!14398)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31743 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14398)

(assert (=> b!490542 (= lt!221649 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490543 () Bool)

(declare-fun res!293627 () Bool)

(assert (=> b!490543 (=> (not res!293627) (not e!288331))))

(assert (=> b!490543 (= res!293627 (validKeyInArray!0 (select (arr!15256 a!3235) j!176)))))

(declare-fun res!293624 () Bool)

(assert (=> start!44724 (=> (not res!293624) (not e!288331))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44724 (= res!293624 (validMask!0 mask!3524))))

(assert (=> start!44724 e!288331))

(assert (=> start!44724 true))

(declare-fun array_inv!11030 (array!31743) Bool)

(assert (=> start!44724 (array_inv!11030 a!3235)))

(declare-fun b!490544 () Bool)

(declare-fun res!293628 () Bool)

(assert (=> b!490544 (=> (not res!293628) (not e!288331))))

(assert (=> b!490544 (= res!293628 (and (= (size!15620 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15620 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15620 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!44724 res!293624) b!490544))

(assert (= (and b!490544 res!293628) b!490543))

(assert (= (and b!490543 res!293627) b!490536))

(assert (= (and b!490536 res!293625) b!490537))

(assert (= (and b!490537 res!293622) b!490541))

(assert (= (and b!490541 res!293630) b!490538))

(assert (= (and b!490538 res!293629) b!490540))

(assert (= (and b!490540 res!293626) b!490542))

(assert (= (and b!490542 (not res!293623)) b!490539))

(declare-fun m!470819 () Bool)

(assert (=> b!490537 m!470819))

(declare-fun m!470821 () Bool)

(assert (=> b!490542 m!470821))

(declare-fun m!470823 () Bool)

(assert (=> b!490542 m!470823))

(declare-fun m!470825 () Bool)

(assert (=> b!490542 m!470825))

(declare-fun m!470827 () Bool)

(assert (=> b!490542 m!470827))

(declare-fun m!470829 () Bool)

(assert (=> b!490542 m!470829))

(declare-fun m!470831 () Bool)

(assert (=> b!490542 m!470831))

(declare-fun m!470833 () Bool)

(assert (=> b!490542 m!470833))

(assert (=> b!490542 m!470833))

(declare-fun m!470835 () Bool)

(assert (=> b!490542 m!470835))

(assert (=> b!490542 m!470829))

(assert (=> b!490542 m!470827))

(assert (=> b!490542 m!470829))

(declare-fun m!470837 () Bool)

(assert (=> b!490542 m!470837))

(assert (=> b!490542 m!470829))

(declare-fun m!470839 () Bool)

(assert (=> b!490542 m!470839))

(assert (=> b!490543 m!470829))

(assert (=> b!490543 m!470829))

(declare-fun m!470841 () Bool)

(assert (=> b!490543 m!470841))

(declare-fun m!470843 () Bool)

(assert (=> b!490538 m!470843))

(declare-fun m!470845 () Bool)

(assert (=> start!44724 m!470845))

(declare-fun m!470847 () Bool)

(assert (=> start!44724 m!470847))

(declare-fun m!470849 () Bool)

(assert (=> b!490540 m!470849))

(declare-fun m!470851 () Bool)

(assert (=> b!490539 m!470851))

(declare-fun m!470853 () Bool)

(assert (=> b!490539 m!470853))

(declare-fun m!470855 () Bool)

(assert (=> b!490536 m!470855))

(declare-fun m!470857 () Bool)

(assert (=> b!490541 m!470857))

(check-sat (not b!490538) (not b!490542) (not start!44724) (not b!490540) (not b!490539) (not b!490537) (not b!490541) (not b!490536) (not b!490543))
(check-sat)
