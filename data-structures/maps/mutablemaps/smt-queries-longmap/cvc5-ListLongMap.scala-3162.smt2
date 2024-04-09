; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44608 () Bool)

(assert start!44608)

(declare-fun b!488961 () Bool)

(declare-fun e!287623 () Bool)

(assert (=> b!488961 (= e!287623 (not true))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31627 0))(
  ( (array!31628 (arr!15198 (Array (_ BitVec 32) (_ BitVec 64))) (size!15562 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31627)

(declare-fun lt!220654 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!488961 (= lt!220654 (toIndex!0 (select (store (arr!15198 a!3235) i!1204 k!2280) j!176) mask!3524))))

(declare-fun e!287624 () Bool)

(assert (=> b!488961 e!287624))

(declare-fun res!292055 () Bool)

(assert (=> b!488961 (=> (not res!292055) (not e!287624))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31627 (_ BitVec 32)) Bool)

(assert (=> b!488961 (= res!292055 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14282 0))(
  ( (Unit!14283) )
))
(declare-fun lt!220653 () Unit!14282)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31627 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14282)

(assert (=> b!488961 (= lt!220653 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!488962 () Bool)

(declare-fun res!292052 () Bool)

(declare-fun e!287625 () Bool)

(assert (=> b!488962 (=> (not res!292052) (not e!287625))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!488962 (= res!292052 (validKeyInArray!0 k!2280))))

(declare-fun res!292050 () Bool)

(assert (=> start!44608 (=> (not res!292050) (not e!287625))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44608 (= res!292050 (validMask!0 mask!3524))))

(assert (=> start!44608 e!287625))

(assert (=> start!44608 true))

(declare-fun array_inv!10972 (array!31627) Bool)

(assert (=> start!44608 (array_inv!10972 a!3235)))

(declare-fun b!488963 () Bool)

(declare-datatypes ((SeekEntryResult!3672 0))(
  ( (MissingZero!3672 (index!16867 (_ BitVec 32))) (Found!3672 (index!16868 (_ BitVec 32))) (Intermediate!3672 (undefined!4484 Bool) (index!16869 (_ BitVec 32)) (x!46013 (_ BitVec 32))) (Undefined!3672) (MissingVacant!3672 (index!16870 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31627 (_ BitVec 32)) SeekEntryResult!3672)

(assert (=> b!488963 (= e!287624 (= (seekEntryOrOpen!0 (select (arr!15198 a!3235) j!176) a!3235 mask!3524) (Found!3672 j!176)))))

(declare-fun b!488964 () Bool)

(declare-fun res!292053 () Bool)

(assert (=> b!488964 (=> (not res!292053) (not e!287623))))

(assert (=> b!488964 (= res!292053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!488965 () Bool)

(declare-fun res!292047 () Bool)

(assert (=> b!488965 (=> (not res!292047) (not e!287623))))

(declare-datatypes ((List!9409 0))(
  ( (Nil!9406) (Cons!9405 (h!10267 (_ BitVec 64)) (t!15645 List!9409)) )
))
(declare-fun arrayNoDuplicates!0 (array!31627 (_ BitVec 32) List!9409) Bool)

(assert (=> b!488965 (= res!292047 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9406))))

(declare-fun b!488966 () Bool)

(declare-fun res!292049 () Bool)

(assert (=> b!488966 (=> (not res!292049) (not e!287625))))

(assert (=> b!488966 (= res!292049 (and (= (size!15562 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15562 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15562 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!488967 () Bool)

(declare-fun res!292051 () Bool)

(assert (=> b!488967 (=> (not res!292051) (not e!287625))))

(declare-fun arrayContainsKey!0 (array!31627 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!488967 (= res!292051 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!488968 () Bool)

(assert (=> b!488968 (= e!287625 e!287623)))

(declare-fun res!292054 () Bool)

(assert (=> b!488968 (=> (not res!292054) (not e!287623))))

(declare-fun lt!220655 () SeekEntryResult!3672)

(assert (=> b!488968 (= res!292054 (or (= lt!220655 (MissingZero!3672 i!1204)) (= lt!220655 (MissingVacant!3672 i!1204))))))

(assert (=> b!488968 (= lt!220655 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!488969 () Bool)

(declare-fun res!292048 () Bool)

(assert (=> b!488969 (=> (not res!292048) (not e!287625))))

(assert (=> b!488969 (= res!292048 (validKeyInArray!0 (select (arr!15198 a!3235) j!176)))))

(assert (= (and start!44608 res!292050) b!488966))

(assert (= (and b!488966 res!292049) b!488969))

(assert (= (and b!488969 res!292048) b!488962))

(assert (= (and b!488962 res!292052) b!488967))

(assert (= (and b!488967 res!292051) b!488968))

(assert (= (and b!488968 res!292054) b!488964))

(assert (= (and b!488964 res!292053) b!488965))

(assert (= (and b!488965 res!292047) b!488961))

(assert (= (and b!488961 res!292055) b!488963))

(declare-fun m!468721 () Bool)

(assert (=> b!488965 m!468721))

(declare-fun m!468723 () Bool)

(assert (=> start!44608 m!468723))

(declare-fun m!468725 () Bool)

(assert (=> start!44608 m!468725))

(declare-fun m!468727 () Bool)

(assert (=> b!488961 m!468727))

(declare-fun m!468729 () Bool)

(assert (=> b!488961 m!468729))

(declare-fun m!468731 () Bool)

(assert (=> b!488961 m!468731))

(declare-fun m!468733 () Bool)

(assert (=> b!488961 m!468733))

(assert (=> b!488961 m!468731))

(declare-fun m!468735 () Bool)

(assert (=> b!488961 m!468735))

(declare-fun m!468737 () Bool)

(assert (=> b!488967 m!468737))

(declare-fun m!468739 () Bool)

(assert (=> b!488964 m!468739))

(declare-fun m!468741 () Bool)

(assert (=> b!488969 m!468741))

(assert (=> b!488969 m!468741))

(declare-fun m!468743 () Bool)

(assert (=> b!488969 m!468743))

(assert (=> b!488963 m!468741))

(assert (=> b!488963 m!468741))

(declare-fun m!468745 () Bool)

(assert (=> b!488963 m!468745))

(declare-fun m!468747 () Bool)

(assert (=> b!488962 m!468747))

(declare-fun m!468749 () Bool)

(assert (=> b!488968 m!468749))

(push 1)

