; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48148 () Bool)

(assert start!48148)

(declare-fun res!325901 () Bool)

(declare-fun e!308845 () Bool)

(assert (=> start!48148 (=> (not res!325901) (not e!308845))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48148 (= res!325901 (validMask!0 mask!3524))))

(assert (=> start!48148 e!308845))

(assert (=> start!48148 true))

(declare-datatypes ((array!33544 0))(
  ( (array!33545 (arr!16116 (Array (_ BitVec 32) (_ BitVec 64))) (size!16480 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33544)

(declare-fun array_inv!11890 (array!33544) Bool)

(assert (=> start!48148 (array_inv!11890 a!3235)))

(declare-fun b!530041 () Bool)

(declare-fun e!308844 () Bool)

(assert (=> b!530041 (= e!308845 e!308844)))

(declare-fun res!325903 () Bool)

(assert (=> b!530041 (=> (not res!325903) (not e!308844))))

(declare-datatypes ((SeekEntryResult!4590 0))(
  ( (MissingZero!4590 (index!20584 (_ BitVec 32))) (Found!4590 (index!20585 (_ BitVec 32))) (Intermediate!4590 (undefined!5402 Bool) (index!20586 (_ BitVec 32)) (x!49583 (_ BitVec 32))) (Undefined!4590) (MissingVacant!4590 (index!20587 (_ BitVec 32))) )
))
(declare-fun lt!244582 () SeekEntryResult!4590)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!530041 (= res!325903 (or (= lt!244582 (MissingZero!4590 i!1204)) (= lt!244582 (MissingVacant!4590 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33544 (_ BitVec 32)) SeekEntryResult!4590)

(assert (=> b!530041 (= lt!244582 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!530042 () Bool)

(declare-fun res!325902 () Bool)

(assert (=> b!530042 (=> (not res!325902) (not e!308845))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!530042 (= res!325902 (and (= (size!16480 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16480 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16480 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!530043 () Bool)

(declare-fun e!308847 () Bool)

(declare-fun e!308848 () Bool)

(assert (=> b!530043 (= e!308847 e!308848)))

(declare-fun res!325900 () Bool)

(assert (=> b!530043 (=> res!325900 e!308848)))

(declare-fun lt!244579 () Bool)

(declare-fun lt!244576 () SeekEntryResult!4590)

(assert (=> b!530043 (= res!325900 (or (and (not lt!244579) (undefined!5402 lt!244576)) (and (not lt!244579) (not (undefined!5402 lt!244576)))))))

(assert (=> b!530043 (= lt!244579 (not (is-Intermediate!4590 lt!244576)))))

(declare-fun b!530044 () Bool)

(declare-fun res!325905 () Bool)

(assert (=> b!530044 (=> (not res!325905) (not e!308844))))

(declare-datatypes ((List!10327 0))(
  ( (Nil!10324) (Cons!10323 (h!11263 (_ BitVec 64)) (t!16563 List!10327)) )
))
(declare-fun arrayNoDuplicates!0 (array!33544 (_ BitVec 32) List!10327) Bool)

(assert (=> b!530044 (= res!325905 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10324))))

(declare-fun b!530045 () Bool)

(declare-fun res!325897 () Bool)

(assert (=> b!530045 (=> (not res!325897) (not e!308845))))

(declare-fun arrayContainsKey!0 (array!33544 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530045 (= res!325897 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!530046 () Bool)

(declare-fun res!325906 () Bool)

(assert (=> b!530046 (=> (not res!325906) (not e!308845))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530046 (= res!325906 (validKeyInArray!0 (select (arr!16116 a!3235) j!176)))))

(declare-fun b!530047 () Bool)

(declare-fun res!325904 () Bool)

(assert (=> b!530047 (=> (not res!325904) (not e!308845))))

(assert (=> b!530047 (= res!325904 (validKeyInArray!0 k!2280))))

(declare-fun b!530048 () Bool)

(declare-fun e!308843 () Bool)

(assert (=> b!530048 (= e!308843 (= (seekEntryOrOpen!0 (select (arr!16116 a!3235) j!176) a!3235 mask!3524) (Found!4590 j!176)))))

(declare-fun b!530049 () Bool)

(declare-fun res!325898 () Bool)

(assert (=> b!530049 (=> (not res!325898) (not e!308844))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33544 (_ BitVec 32)) Bool)

(assert (=> b!530049 (= res!325898 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!530050 () Bool)

(assert (=> b!530050 (= e!308848 true)))

(declare-fun lt!244575 () array!33544)

(declare-fun lt!244583 () SeekEntryResult!4590)

(declare-fun lt!244581 () (_ BitVec 64))

(assert (=> b!530050 (= lt!244583 (seekEntryOrOpen!0 lt!244581 lt!244575 mask!3524))))

(assert (=> b!530050 false))

(declare-fun b!530051 () Bool)

(assert (=> b!530051 (= e!308844 (not e!308847))))

(declare-fun res!325907 () Bool)

(assert (=> b!530051 (=> res!325907 e!308847)))

(declare-fun lt!244577 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33544 (_ BitVec 32)) SeekEntryResult!4590)

(assert (=> b!530051 (= res!325907 (= lt!244576 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244577 lt!244581 lt!244575 mask!3524)))))

(declare-fun lt!244578 () (_ BitVec 32))

(assert (=> b!530051 (= lt!244576 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244578 (select (arr!16116 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!530051 (= lt!244577 (toIndex!0 lt!244581 mask!3524))))

(assert (=> b!530051 (= lt!244581 (select (store (arr!16116 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!530051 (= lt!244578 (toIndex!0 (select (arr!16116 a!3235) j!176) mask!3524))))

(assert (=> b!530051 (= lt!244575 (array!33545 (store (arr!16116 a!3235) i!1204 k!2280) (size!16480 a!3235)))))

(assert (=> b!530051 e!308843))

(declare-fun res!325899 () Bool)

(assert (=> b!530051 (=> (not res!325899) (not e!308843))))

(assert (=> b!530051 (= res!325899 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16784 0))(
  ( (Unit!16785) )
))
(declare-fun lt!244580 () Unit!16784)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33544 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16784)

(assert (=> b!530051 (= lt!244580 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!48148 res!325901) b!530042))

(assert (= (and b!530042 res!325902) b!530046))

(assert (= (and b!530046 res!325906) b!530047))

(assert (= (and b!530047 res!325904) b!530045))

(assert (= (and b!530045 res!325897) b!530041))

(assert (= (and b!530041 res!325903) b!530049))

(assert (= (and b!530049 res!325898) b!530044))

(assert (= (and b!530044 res!325905) b!530051))

(assert (= (and b!530051 res!325899) b!530048))

(assert (= (and b!530051 (not res!325907)) b!530043))

(assert (= (and b!530043 (not res!325900)) b!530050))

(declare-fun m!510631 () Bool)

(assert (=> b!530041 m!510631))

(declare-fun m!510633 () Bool)

(assert (=> b!530045 m!510633))

(declare-fun m!510635 () Bool)

(assert (=> b!530050 m!510635))

(declare-fun m!510637 () Bool)

(assert (=> b!530047 m!510637))

(declare-fun m!510639 () Bool)

(assert (=> b!530049 m!510639))

(declare-fun m!510641 () Bool)

(assert (=> start!48148 m!510641))

(declare-fun m!510643 () Bool)

(assert (=> start!48148 m!510643))

(declare-fun m!510645 () Bool)

(assert (=> b!530051 m!510645))

(declare-fun m!510647 () Bool)

(assert (=> b!530051 m!510647))

(declare-fun m!510649 () Bool)

(assert (=> b!530051 m!510649))

(declare-fun m!510651 () Bool)

(assert (=> b!530051 m!510651))

(declare-fun m!510653 () Bool)

(assert (=> b!530051 m!510653))

(declare-fun m!510655 () Bool)

(assert (=> b!530051 m!510655))

(assert (=> b!530051 m!510653))

(declare-fun m!510657 () Bool)

(assert (=> b!530051 m!510657))

(assert (=> b!530051 m!510653))

(declare-fun m!510659 () Bool)

(assert (=> b!530051 m!510659))

(declare-fun m!510661 () Bool)

(assert (=> b!530051 m!510661))

(assert (=> b!530046 m!510653))

(assert (=> b!530046 m!510653))

(declare-fun m!510663 () Bool)

(assert (=> b!530046 m!510663))

(declare-fun m!510665 () Bool)

(assert (=> b!530044 m!510665))

(assert (=> b!530048 m!510653))

(assert (=> b!530048 m!510653))

(declare-fun m!510667 () Bool)

(assert (=> b!530048 m!510667))

(push 1)

