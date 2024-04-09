; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44786 () Bool)

(assert start!44786)

(declare-fun b!491382 () Bool)

(declare-fun res!294472 () Bool)

(declare-fun e!288709 () Bool)

(assert (=> b!491382 (=> (not res!294472) (not e!288709))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!491382 (= res!294472 (validKeyInArray!0 k!2280))))

(declare-fun b!491383 () Bool)

(declare-fun e!288710 () Bool)

(assert (=> b!491383 (= e!288709 e!288710)))

(declare-fun res!294473 () Bool)

(assert (=> b!491383 (=> (not res!294473) (not e!288710))))

(declare-datatypes ((SeekEntryResult!3761 0))(
  ( (MissingZero!3761 (index!17223 (_ BitVec 32))) (Found!3761 (index!17224 (_ BitVec 32))) (Intermediate!3761 (undefined!4573 Bool) (index!17225 (_ BitVec 32)) (x!46334 (_ BitVec 32))) (Undefined!3761) (MissingVacant!3761 (index!17226 (_ BitVec 32))) )
))
(declare-fun lt!222210 () SeekEntryResult!3761)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!491383 (= res!294473 (or (= lt!222210 (MissingZero!3761 i!1204)) (= lt!222210 (MissingVacant!3761 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31805 0))(
  ( (array!31806 (arr!15287 (Array (_ BitVec 32) (_ BitVec 64))) (size!15651 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31805)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31805 (_ BitVec 32)) SeekEntryResult!3761)

(assert (=> b!491383 (= lt!222210 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!491384 () Bool)

(declare-fun e!288711 () Bool)

(assert (=> b!491384 (= e!288710 (not e!288711))))

(declare-fun res!294476 () Bool)

(assert (=> b!491384 (=> res!294476 e!288711)))

(declare-fun lt!222211 () array!31805)

(declare-fun lt!222209 () (_ BitVec 64))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31805 (_ BitVec 32)) SeekEntryResult!3761)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!491384 (= res!294476 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15287 a!3235) j!176) mask!3524) (select (arr!15287 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!222209 mask!3524) lt!222209 lt!222211 mask!3524))))))

(assert (=> b!491384 (= lt!222209 (select (store (arr!15287 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!491384 (= lt!222211 (array!31806 (store (arr!15287 a!3235) i!1204 k!2280) (size!15651 a!3235)))))

(declare-fun lt!222208 () SeekEntryResult!3761)

(assert (=> b!491384 (= lt!222208 (Found!3761 j!176))))

(assert (=> b!491384 (= lt!222208 (seekEntryOrOpen!0 (select (arr!15287 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31805 (_ BitVec 32)) Bool)

(assert (=> b!491384 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14460 0))(
  ( (Unit!14461) )
))
(declare-fun lt!222212 () Unit!14460)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31805 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14460)

(assert (=> b!491384 (= lt!222212 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!491385 () Bool)

(declare-fun res!294468 () Bool)

(assert (=> b!491385 (=> (not res!294468) (not e!288710))))

(assert (=> b!491385 (= res!294468 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!491386 () Bool)

(declare-fun res!294469 () Bool)

(assert (=> b!491386 (=> (not res!294469) (not e!288710))))

(declare-datatypes ((List!9498 0))(
  ( (Nil!9495) (Cons!9494 (h!10356 (_ BitVec 64)) (t!15734 List!9498)) )
))
(declare-fun arrayNoDuplicates!0 (array!31805 (_ BitVec 32) List!9498) Bool)

(assert (=> b!491386 (= res!294469 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9495))))

(declare-fun b!491387 () Bool)

(declare-fun res!294471 () Bool)

(assert (=> b!491387 (=> (not res!294471) (not e!288709))))

(declare-fun arrayContainsKey!0 (array!31805 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!491387 (= res!294471 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!491388 () Bool)

(assert (=> b!491388 (= e!288711 (bvsge mask!3524 #b00000000000000000000000000000000))))

(assert (=> b!491388 (= lt!222208 (seekEntryOrOpen!0 lt!222209 lt!222211 mask!3524))))

(declare-fun lt!222207 () Unit!14460)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31805 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14460)

(assert (=> b!491388 (= lt!222207 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!491389 () Bool)

(declare-fun res!294474 () Bool)

(assert (=> b!491389 (=> (not res!294474) (not e!288709))))

(assert (=> b!491389 (= res!294474 (and (= (size!15651 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15651 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15651 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!294475 () Bool)

(assert (=> start!44786 (=> (not res!294475) (not e!288709))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44786 (= res!294475 (validMask!0 mask!3524))))

(assert (=> start!44786 e!288709))

(assert (=> start!44786 true))

(declare-fun array_inv!11061 (array!31805) Bool)

(assert (=> start!44786 (array_inv!11061 a!3235)))

(declare-fun b!491390 () Bool)

(declare-fun res!294470 () Bool)

(assert (=> b!491390 (=> (not res!294470) (not e!288709))))

(assert (=> b!491390 (= res!294470 (validKeyInArray!0 (select (arr!15287 a!3235) j!176)))))

(assert (= (and start!44786 res!294475) b!491389))

(assert (= (and b!491389 res!294474) b!491390))

(assert (= (and b!491390 res!294470) b!491382))

(assert (= (and b!491382 res!294472) b!491387))

(assert (= (and b!491387 res!294471) b!491383))

(assert (= (and b!491383 res!294473) b!491385))

(assert (= (and b!491385 res!294468) b!491386))

(assert (= (and b!491386 res!294469) b!491384))

(assert (= (and b!491384 (not res!294476)) b!491388))

(declare-fun m!472065 () Bool)

(assert (=> b!491384 m!472065))

(declare-fun m!472067 () Bool)

(assert (=> b!491384 m!472067))

(declare-fun m!472069 () Bool)

(assert (=> b!491384 m!472069))

(declare-fun m!472071 () Bool)

(assert (=> b!491384 m!472071))

(declare-fun m!472073 () Bool)

(assert (=> b!491384 m!472073))

(declare-fun m!472075 () Bool)

(assert (=> b!491384 m!472075))

(assert (=> b!491384 m!472073))

(assert (=> b!491384 m!472071))

(assert (=> b!491384 m!472073))

(declare-fun m!472077 () Bool)

(assert (=> b!491384 m!472077))

(declare-fun m!472079 () Bool)

(assert (=> b!491384 m!472079))

(declare-fun m!472081 () Bool)

(assert (=> b!491384 m!472081))

(assert (=> b!491384 m!472073))

(declare-fun m!472083 () Bool)

(assert (=> b!491384 m!472083))

(assert (=> b!491384 m!472079))

(declare-fun m!472085 () Bool)

(assert (=> b!491388 m!472085))

(declare-fun m!472087 () Bool)

(assert (=> b!491388 m!472087))

(assert (=> b!491390 m!472073))

(assert (=> b!491390 m!472073))

(declare-fun m!472089 () Bool)

(assert (=> b!491390 m!472089))

(declare-fun m!472091 () Bool)

(assert (=> b!491386 m!472091))

(declare-fun m!472093 () Bool)

(assert (=> b!491387 m!472093))

(declare-fun m!472095 () Bool)

(assert (=> b!491385 m!472095))

(declare-fun m!472097 () Bool)

(assert (=> b!491383 m!472097))

(declare-fun m!472099 () Bool)

(assert (=> b!491382 m!472099))

(declare-fun m!472101 () Bool)

(assert (=> start!44786 m!472101))

(declare-fun m!472103 () Bool)

(assert (=> start!44786 m!472103))

(push 1)

(assert (not start!44786))

(assert (not b!491390))

