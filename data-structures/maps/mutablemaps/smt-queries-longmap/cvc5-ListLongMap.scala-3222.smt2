; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45088 () Bool)

(assert start!45088)

(declare-fun b!494621 () Bool)

(declare-fun res!297343 () Bool)

(declare-fun e!290227 () Bool)

(assert (=> b!494621 (=> (not res!297343) (not e!290227))))

(declare-datatypes ((array!31993 0))(
  ( (array!31994 (arr!15378 (Array (_ BitVec 32) (_ BitVec 64))) (size!15742 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31993)

(declare-datatypes ((List!9589 0))(
  ( (Nil!9586) (Cons!9585 (h!10453 (_ BitVec 64)) (t!15825 List!9589)) )
))
(declare-fun arrayNoDuplicates!0 (array!31993 (_ BitVec 32) List!9589) Bool)

(assert (=> b!494621 (= res!297343 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9586))))

(declare-fun res!297346 () Bool)

(declare-fun e!290230 () Bool)

(assert (=> start!45088 (=> (not res!297346) (not e!290230))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45088 (= res!297346 (validMask!0 mask!3524))))

(assert (=> start!45088 e!290230))

(assert (=> start!45088 true))

(declare-fun array_inv!11152 (array!31993) Bool)

(assert (=> start!45088 (array_inv!11152 a!3235)))

(declare-fun b!494622 () Bool)

(declare-fun res!297341 () Bool)

(assert (=> b!494622 (=> (not res!297341) (not e!290230))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!494622 (= res!297341 (and (= (size!15742 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15742 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15742 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!494623 () Bool)

(declare-fun res!297350 () Bool)

(assert (=> b!494623 (=> (not res!297350) (not e!290230))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31993 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!494623 (= res!297350 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!494624 () Bool)

(declare-fun res!297344 () Bool)

(declare-fun e!290229 () Bool)

(assert (=> b!494624 (=> res!297344 e!290229)))

(declare-datatypes ((SeekEntryResult!3852 0))(
  ( (MissingZero!3852 (index!17587 (_ BitVec 32))) (Found!3852 (index!17588 (_ BitVec 32))) (Intermediate!3852 (undefined!4664 Bool) (index!17589 (_ BitVec 32)) (x!46685 (_ BitVec 32))) (Undefined!3852) (MissingVacant!3852 (index!17590 (_ BitVec 32))) )
))
(declare-fun lt!223960 () SeekEntryResult!3852)

(assert (=> b!494624 (= res!297344 (or (not (is-Intermediate!3852 lt!223960)) (not (undefined!4664 lt!223960))))))

(declare-fun b!494625 () Bool)

(assert (=> b!494625 (= e!290227 (not e!290229))))

(declare-fun res!297349 () Bool)

(assert (=> b!494625 (=> res!297349 e!290229)))

(declare-fun lt!223959 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31993 (_ BitVec 32)) SeekEntryResult!3852)

(assert (=> b!494625 (= res!297349 (= lt!223960 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223959 (select (store (arr!15378 a!3235) i!1204 k!2280) j!176) (array!31994 (store (arr!15378 a!3235) i!1204 k!2280) (size!15742 a!3235)) mask!3524)))))

(declare-fun lt!223963 () (_ BitVec 32))

(assert (=> b!494625 (= lt!223960 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223963 (select (arr!15378 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494625 (= lt!223959 (toIndex!0 (select (store (arr!15378 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!494625 (= lt!223963 (toIndex!0 (select (arr!15378 a!3235) j!176) mask!3524))))

(declare-fun lt!223962 () SeekEntryResult!3852)

(assert (=> b!494625 (= lt!223962 (Found!3852 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31993 (_ BitVec 32)) SeekEntryResult!3852)

(assert (=> b!494625 (= lt!223962 (seekEntryOrOpen!0 (select (arr!15378 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31993 (_ BitVec 32)) Bool)

(assert (=> b!494625 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14642 0))(
  ( (Unit!14643) )
))
(declare-fun lt!223964 () Unit!14642)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31993 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14642)

(assert (=> b!494625 (= lt!223964 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!494626 () Bool)

(declare-fun res!297347 () Bool)

(assert (=> b!494626 (=> (not res!297347) (not e!290230))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!494626 (= res!297347 (validKeyInArray!0 (select (arr!15378 a!3235) j!176)))))

(declare-fun b!494627 () Bool)

(declare-fun res!297342 () Bool)

(assert (=> b!494627 (=> (not res!297342) (not e!290230))))

(assert (=> b!494627 (= res!297342 (validKeyInArray!0 k!2280))))

(declare-fun b!494628 () Bool)

(assert (=> b!494628 (= e!290229 true)))

(assert (=> b!494628 (= lt!223962 Undefined!3852)))

(declare-fun b!494629 () Bool)

(assert (=> b!494629 (= e!290230 e!290227)))

(declare-fun res!297345 () Bool)

(assert (=> b!494629 (=> (not res!297345) (not e!290227))))

(declare-fun lt!223961 () SeekEntryResult!3852)

(assert (=> b!494629 (= res!297345 (or (= lt!223961 (MissingZero!3852 i!1204)) (= lt!223961 (MissingVacant!3852 i!1204))))))

(assert (=> b!494629 (= lt!223961 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!494630 () Bool)

(declare-fun res!297348 () Bool)

(assert (=> b!494630 (=> (not res!297348) (not e!290227))))

(assert (=> b!494630 (= res!297348 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!45088 res!297346) b!494622))

(assert (= (and b!494622 res!297341) b!494626))

(assert (= (and b!494626 res!297347) b!494627))

(assert (= (and b!494627 res!297342) b!494623))

(assert (= (and b!494623 res!297350) b!494629))

(assert (= (and b!494629 res!297345) b!494630))

(assert (= (and b!494630 res!297348) b!494621))

(assert (= (and b!494621 res!297343) b!494625))

(assert (= (and b!494625 (not res!297349)) b!494624))

(assert (= (and b!494624 (not res!297344)) b!494628))

(declare-fun m!475777 () Bool)

(assert (=> b!494621 m!475777))

(declare-fun m!475779 () Bool)

(assert (=> b!494627 m!475779))

(declare-fun m!475781 () Bool)

(assert (=> b!494626 m!475781))

(assert (=> b!494626 m!475781))

(declare-fun m!475783 () Bool)

(assert (=> b!494626 m!475783))

(declare-fun m!475785 () Bool)

(assert (=> start!45088 m!475785))

(declare-fun m!475787 () Bool)

(assert (=> start!45088 m!475787))

(declare-fun m!475789 () Bool)

(assert (=> b!494623 m!475789))

(declare-fun m!475791 () Bool)

(assert (=> b!494625 m!475791))

(assert (=> b!494625 m!475781))

(declare-fun m!475793 () Bool)

(assert (=> b!494625 m!475793))

(declare-fun m!475795 () Bool)

(assert (=> b!494625 m!475795))

(declare-fun m!475797 () Bool)

(assert (=> b!494625 m!475797))

(assert (=> b!494625 m!475781))

(declare-fun m!475799 () Bool)

(assert (=> b!494625 m!475799))

(assert (=> b!494625 m!475781))

(declare-fun m!475801 () Bool)

(assert (=> b!494625 m!475801))

(assert (=> b!494625 m!475797))

(declare-fun m!475803 () Bool)

(assert (=> b!494625 m!475803))

(assert (=> b!494625 m!475781))

(declare-fun m!475805 () Bool)

(assert (=> b!494625 m!475805))

(assert (=> b!494625 m!475797))

(declare-fun m!475807 () Bool)

(assert (=> b!494625 m!475807))

(declare-fun m!475809 () Bool)

(assert (=> b!494629 m!475809))

(declare-fun m!475811 () Bool)

(assert (=> b!494630 m!475811))

(push 1)

