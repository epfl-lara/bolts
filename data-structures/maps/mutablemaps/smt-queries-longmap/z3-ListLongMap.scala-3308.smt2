; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45804 () Bool)

(assert start!45804)

(declare-fun b!506689 () Bool)

(declare-fun res!307801 () Bool)

(declare-fun e!296552 () Bool)

(assert (=> b!506689 (=> (not res!307801) (not e!296552))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32520 0))(
  ( (array!32521 (arr!15637 (Array (_ BitVec 32) (_ BitVec 64))) (size!16001 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32520)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!506689 (= res!307801 (and (= (size!16001 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16001 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16001 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!506690 () Bool)

(declare-fun e!296557 () Bool)

(declare-fun e!296555 () Bool)

(assert (=> b!506690 (= e!296557 (not e!296555))))

(declare-fun res!307804 () Bool)

(assert (=> b!506690 (=> res!307804 e!296555)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4111 0))(
  ( (MissingZero!4111 (index!18632 (_ BitVec 32))) (Found!4111 (index!18633 (_ BitVec 32))) (Intermediate!4111 (undefined!4923 Bool) (index!18634 (_ BitVec 32)) (x!47659 (_ BitVec 32))) (Undefined!4111) (MissingVacant!4111 (index!18635 (_ BitVec 32))) )
))
(declare-fun lt!231299 () SeekEntryResult!4111)

(declare-fun lt!231300 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32520 (_ BitVec 32)) SeekEntryResult!4111)

(assert (=> b!506690 (= res!307804 (= lt!231299 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231300 (select (store (arr!15637 a!3235) i!1204 k0!2280) j!176) (array!32521 (store (arr!15637 a!3235) i!1204 k0!2280) (size!16001 a!3235)) mask!3524)))))

(declare-fun lt!231298 () (_ BitVec 32))

(assert (=> b!506690 (= lt!231299 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231298 (select (arr!15637 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!506690 (= lt!231300 (toIndex!0 (select (store (arr!15637 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!506690 (= lt!231298 (toIndex!0 (select (arr!15637 a!3235) j!176) mask!3524))))

(declare-fun e!296556 () Bool)

(assert (=> b!506690 e!296556))

(declare-fun res!307799 () Bool)

(assert (=> b!506690 (=> (not res!307799) (not e!296556))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32520 (_ BitVec 32)) Bool)

(assert (=> b!506690 (= res!307799 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15502 0))(
  ( (Unit!15503) )
))
(declare-fun lt!231301 () Unit!15502)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32520 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15502)

(assert (=> b!506690 (= lt!231301 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!506691 () Bool)

(declare-fun res!307803 () Bool)

(assert (=> b!506691 (=> (not res!307803) (not e!296552))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!506691 (= res!307803 (validKeyInArray!0 (select (arr!15637 a!3235) j!176)))))

(declare-fun b!506692 () Bool)

(declare-fun res!307805 () Bool)

(assert (=> b!506692 (=> (not res!307805) (not e!296557))))

(assert (=> b!506692 (= res!307805 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!506693 () Bool)

(assert (=> b!506693 (= e!296552 e!296557)))

(declare-fun res!307806 () Bool)

(assert (=> b!506693 (=> (not res!307806) (not e!296557))))

(declare-fun lt!231297 () SeekEntryResult!4111)

(assert (=> b!506693 (= res!307806 (or (= lt!231297 (MissingZero!4111 i!1204)) (= lt!231297 (MissingVacant!4111 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32520 (_ BitVec 32)) SeekEntryResult!4111)

(assert (=> b!506693 (= lt!231297 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!506694 () Bool)

(declare-fun e!296554 () Bool)

(assert (=> b!506694 (= e!296555 e!296554)))

(declare-fun res!307798 () Bool)

(assert (=> b!506694 (=> res!307798 e!296554)))

(declare-fun lt!231302 () Bool)

(assert (=> b!506694 (= res!307798 (or (and (not lt!231302) (undefined!4923 lt!231299)) (and (not lt!231302) (not (undefined!4923 lt!231299)))))))

(get-info :version)

(assert (=> b!506694 (= lt!231302 (not ((_ is Intermediate!4111) lt!231299)))))

(declare-fun res!307807 () Bool)

(assert (=> start!45804 (=> (not res!307807) (not e!296552))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45804 (= res!307807 (validMask!0 mask!3524))))

(assert (=> start!45804 e!296552))

(assert (=> start!45804 true))

(declare-fun array_inv!11411 (array!32520) Bool)

(assert (=> start!45804 (array_inv!11411 a!3235)))

(declare-fun b!506695 () Bool)

(declare-fun res!307808 () Bool)

(assert (=> b!506695 (=> (not res!307808) (not e!296552))))

(assert (=> b!506695 (= res!307808 (validKeyInArray!0 k0!2280))))

(declare-fun b!506696 () Bool)

(declare-fun res!307802 () Bool)

(assert (=> b!506696 (=> (not res!307802) (not e!296557))))

(declare-datatypes ((List!9848 0))(
  ( (Nil!9845) (Cons!9844 (h!10721 (_ BitVec 64)) (t!16084 List!9848)) )
))
(declare-fun arrayNoDuplicates!0 (array!32520 (_ BitVec 32) List!9848) Bool)

(assert (=> b!506696 (= res!307802 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9845))))

(declare-fun b!506697 () Bool)

(assert (=> b!506697 (= e!296556 (= (seekEntryOrOpen!0 (select (arr!15637 a!3235) j!176) a!3235 mask!3524) (Found!4111 j!176)))))

(declare-fun b!506698 () Bool)

(declare-fun res!307800 () Bool)

(assert (=> b!506698 (=> (not res!307800) (not e!296552))))

(declare-fun arrayContainsKey!0 (array!32520 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!506698 (= res!307800 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!506699 () Bool)

(assert (=> b!506699 (= e!296554 true)))

(assert (=> b!506699 false))

(assert (= (and start!45804 res!307807) b!506689))

(assert (= (and b!506689 res!307801) b!506691))

(assert (= (and b!506691 res!307803) b!506695))

(assert (= (and b!506695 res!307808) b!506698))

(assert (= (and b!506698 res!307800) b!506693))

(assert (= (and b!506693 res!307806) b!506692))

(assert (= (and b!506692 res!307805) b!506696))

(assert (= (and b!506696 res!307802) b!506690))

(assert (= (and b!506690 res!307799) b!506697))

(assert (= (and b!506690 (not res!307804)) b!506694))

(assert (= (and b!506694 (not res!307798)) b!506699))

(declare-fun m!487429 () Bool)

(assert (=> b!506691 m!487429))

(assert (=> b!506691 m!487429))

(declare-fun m!487431 () Bool)

(assert (=> b!506691 m!487431))

(declare-fun m!487433 () Bool)

(assert (=> b!506695 m!487433))

(assert (=> b!506697 m!487429))

(assert (=> b!506697 m!487429))

(declare-fun m!487435 () Bool)

(assert (=> b!506697 m!487435))

(assert (=> b!506690 m!487429))

(declare-fun m!487437 () Bool)

(assert (=> b!506690 m!487437))

(declare-fun m!487439 () Bool)

(assert (=> b!506690 m!487439))

(declare-fun m!487441 () Bool)

(assert (=> b!506690 m!487441))

(declare-fun m!487443 () Bool)

(assert (=> b!506690 m!487443))

(assert (=> b!506690 m!487429))

(declare-fun m!487445 () Bool)

(assert (=> b!506690 m!487445))

(assert (=> b!506690 m!487429))

(declare-fun m!487447 () Bool)

(assert (=> b!506690 m!487447))

(assert (=> b!506690 m!487443))

(declare-fun m!487449 () Bool)

(assert (=> b!506690 m!487449))

(assert (=> b!506690 m!487443))

(declare-fun m!487451 () Bool)

(assert (=> b!506690 m!487451))

(declare-fun m!487453 () Bool)

(assert (=> b!506698 m!487453))

(declare-fun m!487455 () Bool)

(assert (=> b!506693 m!487455))

(declare-fun m!487457 () Bool)

(assert (=> b!506696 m!487457))

(declare-fun m!487459 () Bool)

(assert (=> start!45804 m!487459))

(declare-fun m!487461 () Bool)

(assert (=> start!45804 m!487461))

(declare-fun m!487463 () Bool)

(assert (=> b!506692 m!487463))

(check-sat (not b!506695) (not b!506692) (not b!506690) (not b!506697) (not b!506691) (not b!506696) (not b!506698) (not b!506693) (not start!45804))
(check-sat)
