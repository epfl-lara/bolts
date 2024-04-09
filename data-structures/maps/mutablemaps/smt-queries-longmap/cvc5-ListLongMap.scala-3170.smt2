; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44656 () Bool)

(assert start!44656)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31675 0))(
  ( (array!31676 (arr!15222 (Array (_ BitVec 32) (_ BitVec 64))) (size!15586 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31675)

(declare-fun e!287921 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!489618 () Bool)

(declare-datatypes ((SeekEntryResult!3696 0))(
  ( (MissingZero!3696 (index!16963 (_ BitVec 32))) (Found!3696 (index!16964 (_ BitVec 32))) (Intermediate!3696 (undefined!4508 Bool) (index!16965 (_ BitVec 32)) (x!46101 (_ BitVec 32))) (Undefined!3696) (MissingVacant!3696 (index!16966 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31675 (_ BitVec 32)) SeekEntryResult!3696)

(assert (=> b!489618 (= e!287921 (= (seekEntryOrOpen!0 (select (arr!15222 a!3235) j!176) a!3235 mask!3524) (Found!3696 j!176)))))

(declare-fun b!489619 () Bool)

(declare-fun res!292712 () Bool)

(declare-fun e!287923 () Bool)

(assert (=> b!489619 (=> (not res!292712) (not e!287923))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489619 (= res!292712 (validKeyInArray!0 k!2280))))

(declare-fun b!489620 () Bool)

(declare-fun res!292710 () Bool)

(assert (=> b!489620 (=> (not res!292710) (not e!287923))))

(assert (=> b!489620 (= res!292710 (validKeyInArray!0 (select (arr!15222 a!3235) j!176)))))

(declare-fun b!489621 () Bool)

(declare-fun res!292704 () Bool)

(declare-fun e!287920 () Bool)

(assert (=> b!489621 (=> (not res!292704) (not e!287920))))

(declare-datatypes ((List!9433 0))(
  ( (Nil!9430) (Cons!9429 (h!10291 (_ BitVec 64)) (t!15669 List!9433)) )
))
(declare-fun arrayNoDuplicates!0 (array!31675 (_ BitVec 32) List!9433) Bool)

(assert (=> b!489621 (= res!292704 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9430))))

(declare-fun res!292705 () Bool)

(assert (=> start!44656 (=> (not res!292705) (not e!287923))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44656 (= res!292705 (validMask!0 mask!3524))))

(assert (=> start!44656 e!287923))

(assert (=> start!44656 true))

(declare-fun array_inv!10996 (array!31675) Bool)

(assert (=> start!44656 (array_inv!10996 a!3235)))

(declare-fun b!489622 () Bool)

(assert (=> b!489622 (= e!287923 e!287920)))

(declare-fun res!292707 () Bool)

(assert (=> b!489622 (=> (not res!292707) (not e!287920))))

(declare-fun lt!221039 () SeekEntryResult!3696)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!489622 (= res!292707 (or (= lt!221039 (MissingZero!3696 i!1204)) (= lt!221039 (MissingVacant!3696 i!1204))))))

(assert (=> b!489622 (= lt!221039 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!489623 () Bool)

(declare-fun res!292711 () Bool)

(assert (=> b!489623 (=> (not res!292711) (not e!287920))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31675 (_ BitVec 32)) Bool)

(assert (=> b!489623 (= res!292711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489624 () Bool)

(declare-fun res!292709 () Bool)

(assert (=> b!489624 (=> (not res!292709) (not e!287923))))

(declare-fun arrayContainsKey!0 (array!31675 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489624 (= res!292709 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!489625 () Bool)

(declare-fun res!292706 () Bool)

(assert (=> b!489625 (=> (not res!292706) (not e!287923))))

(assert (=> b!489625 (= res!292706 (and (= (size!15586 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15586 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15586 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!489626 () Bool)

(assert (=> b!489626 (= e!287920 (not true))))

(declare-fun lt!221042 () (_ BitVec 32))

(declare-fun lt!221037 () SeekEntryResult!3696)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31675 (_ BitVec 32)) SeekEntryResult!3696)

(assert (=> b!489626 (= lt!221037 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221042 (select (store (arr!15222 a!3235) i!1204 k!2280) j!176) (array!31676 (store (arr!15222 a!3235) i!1204 k!2280) (size!15586 a!3235)) mask!3524))))

(declare-fun lt!221041 () (_ BitVec 32))

(declare-fun lt!221038 () SeekEntryResult!3696)

(assert (=> b!489626 (= lt!221038 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221041 (select (arr!15222 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489626 (= lt!221042 (toIndex!0 (select (store (arr!15222 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!489626 (= lt!221041 (toIndex!0 (select (arr!15222 a!3235) j!176) mask!3524))))

(assert (=> b!489626 e!287921))

(declare-fun res!292708 () Bool)

(assert (=> b!489626 (=> (not res!292708) (not e!287921))))

(assert (=> b!489626 (= res!292708 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14330 0))(
  ( (Unit!14331) )
))
(declare-fun lt!221040 () Unit!14330)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31675 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14330)

(assert (=> b!489626 (= lt!221040 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!44656 res!292705) b!489625))

(assert (= (and b!489625 res!292706) b!489620))

(assert (= (and b!489620 res!292710) b!489619))

(assert (= (and b!489619 res!292712) b!489624))

(assert (= (and b!489624 res!292709) b!489622))

(assert (= (and b!489622 res!292707) b!489623))

(assert (= (and b!489623 res!292711) b!489621))

(assert (= (and b!489621 res!292704) b!489626))

(assert (= (and b!489626 res!292708) b!489618))

(declare-fun m!469555 () Bool)

(assert (=> b!489626 m!469555))

(declare-fun m!469557 () Bool)

(assert (=> b!489626 m!469557))

(declare-fun m!469559 () Bool)

(assert (=> b!489626 m!469559))

(declare-fun m!469561 () Bool)

(assert (=> b!489626 m!469561))

(declare-fun m!469563 () Bool)

(assert (=> b!489626 m!469563))

(assert (=> b!489626 m!469561))

(declare-fun m!469565 () Bool)

(assert (=> b!489626 m!469565))

(assert (=> b!489626 m!469561))

(assert (=> b!489626 m!469559))

(declare-fun m!469567 () Bool)

(assert (=> b!489626 m!469567))

(assert (=> b!489626 m!469559))

(declare-fun m!469569 () Bool)

(assert (=> b!489626 m!469569))

(declare-fun m!469571 () Bool)

(assert (=> b!489626 m!469571))

(assert (=> b!489620 m!469561))

(assert (=> b!489620 m!469561))

(declare-fun m!469573 () Bool)

(assert (=> b!489620 m!469573))

(declare-fun m!469575 () Bool)

(assert (=> b!489622 m!469575))

(declare-fun m!469577 () Bool)

(assert (=> b!489619 m!469577))

(declare-fun m!469579 () Bool)

(assert (=> start!44656 m!469579))

(declare-fun m!469581 () Bool)

(assert (=> start!44656 m!469581))

(declare-fun m!469583 () Bool)

(assert (=> b!489623 m!469583))

(assert (=> b!489618 m!469561))

(assert (=> b!489618 m!469561))

(declare-fun m!469585 () Bool)

(assert (=> b!489618 m!469585))

(declare-fun m!469587 () Bool)

(assert (=> b!489624 m!469587))

(declare-fun m!469589 () Bool)

(assert (=> b!489621 m!469589))

(push 1)

