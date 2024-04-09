; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44530 () Bool)

(assert start!44530)

(declare-fun b!488454 () Bool)

(declare-fun res!291656 () Bool)

(declare-fun e!287356 () Bool)

(assert (=> b!488454 (=> (not res!291656) (not e!287356))))

(declare-datatypes ((array!31600 0))(
  ( (array!31601 (arr!15186 (Array (_ BitVec 32) (_ BitVec 64))) (size!15550 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31600)

(declare-datatypes ((List!9397 0))(
  ( (Nil!9394) (Cons!9393 (h!10252 (_ BitVec 64)) (t!15633 List!9397)) )
))
(declare-fun arrayNoDuplicates!0 (array!31600 (_ BitVec 32) List!9397) Bool)

(assert (=> b!488454 (= res!291656 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9394))))

(declare-fun res!291651 () Bool)

(declare-fun e!287353 () Bool)

(assert (=> start!44530 (=> (not res!291651) (not e!287353))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44530 (= res!291651 (validMask!0 mask!3524))))

(assert (=> start!44530 e!287353))

(assert (=> start!44530 true))

(declare-fun array_inv!10960 (array!31600) Bool)

(assert (=> start!44530 (array_inv!10960 a!3235)))

(declare-fun b!488455 () Bool)

(assert (=> b!488455 (= e!287356 (not true))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!220447 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!488455 (= lt!220447 (toIndex!0 (select (store (arr!15186 a!3235) i!1204 k!2280) j!176) mask!3524))))

(declare-fun e!287354 () Bool)

(assert (=> b!488455 e!287354))

(declare-fun res!291658 () Bool)

(assert (=> b!488455 (=> (not res!291658) (not e!287354))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31600 (_ BitVec 32)) Bool)

(assert (=> b!488455 (= res!291658 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14258 0))(
  ( (Unit!14259) )
))
(declare-fun lt!220446 () Unit!14258)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31600 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14258)

(assert (=> b!488455 (= lt!220446 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!488456 () Bool)

(declare-datatypes ((SeekEntryResult!3660 0))(
  ( (MissingZero!3660 (index!16819 (_ BitVec 32))) (Found!3660 (index!16820 (_ BitVec 32))) (Intermediate!3660 (undefined!4472 Bool) (index!16821 (_ BitVec 32)) (x!45966 (_ BitVec 32))) (Undefined!3660) (MissingVacant!3660 (index!16822 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31600 (_ BitVec 32)) SeekEntryResult!3660)

(assert (=> b!488456 (= e!287354 (= (seekEntryOrOpen!0 (select (arr!15186 a!3235) j!176) a!3235 mask!3524) (Found!3660 j!176)))))

(declare-fun b!488457 () Bool)

(declare-fun res!291653 () Bool)

(assert (=> b!488457 (=> (not res!291653) (not e!287353))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!488457 (= res!291653 (validKeyInArray!0 k!2280))))

(declare-fun b!488458 () Bool)

(assert (=> b!488458 (= e!287353 e!287356)))

(declare-fun res!291654 () Bool)

(assert (=> b!488458 (=> (not res!291654) (not e!287356))))

(declare-fun lt!220448 () SeekEntryResult!3660)

(assert (=> b!488458 (= res!291654 (or (= lt!220448 (MissingZero!3660 i!1204)) (= lt!220448 (MissingVacant!3660 i!1204))))))

(assert (=> b!488458 (= lt!220448 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!488459 () Bool)

(declare-fun res!291652 () Bool)

(assert (=> b!488459 (=> (not res!291652) (not e!287353))))

(assert (=> b!488459 (= res!291652 (and (= (size!15550 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15550 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15550 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!488460 () Bool)

(declare-fun res!291659 () Bool)

(assert (=> b!488460 (=> (not res!291659) (not e!287356))))

(assert (=> b!488460 (= res!291659 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!488461 () Bool)

(declare-fun res!291657 () Bool)

(assert (=> b!488461 (=> (not res!291657) (not e!287353))))

(assert (=> b!488461 (= res!291657 (validKeyInArray!0 (select (arr!15186 a!3235) j!176)))))

(declare-fun b!488462 () Bool)

(declare-fun res!291655 () Bool)

(assert (=> b!488462 (=> (not res!291655) (not e!287353))))

(declare-fun arrayContainsKey!0 (array!31600 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!488462 (= res!291655 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44530 res!291651) b!488459))

(assert (= (and b!488459 res!291652) b!488461))

(assert (= (and b!488461 res!291657) b!488457))

(assert (= (and b!488457 res!291653) b!488462))

(assert (= (and b!488462 res!291655) b!488458))

(assert (= (and b!488458 res!291654) b!488460))

(assert (= (and b!488460 res!291659) b!488454))

(assert (= (and b!488454 res!291656) b!488455))

(assert (= (and b!488455 res!291658) b!488456))

(declare-fun m!468199 () Bool)

(assert (=> b!488458 m!468199))

(declare-fun m!468201 () Bool)

(assert (=> b!488456 m!468201))

(assert (=> b!488456 m!468201))

(declare-fun m!468203 () Bool)

(assert (=> b!488456 m!468203))

(declare-fun m!468205 () Bool)

(assert (=> b!488454 m!468205))

(declare-fun m!468207 () Bool)

(assert (=> b!488460 m!468207))

(declare-fun m!468209 () Bool)

(assert (=> b!488457 m!468209))

(assert (=> b!488461 m!468201))

(assert (=> b!488461 m!468201))

(declare-fun m!468211 () Bool)

(assert (=> b!488461 m!468211))

(declare-fun m!468213 () Bool)

(assert (=> b!488455 m!468213))

(declare-fun m!468215 () Bool)

(assert (=> b!488455 m!468215))

(declare-fun m!468217 () Bool)

(assert (=> b!488455 m!468217))

(declare-fun m!468219 () Bool)

(assert (=> b!488455 m!468219))

(assert (=> b!488455 m!468217))

(declare-fun m!468221 () Bool)

(assert (=> b!488455 m!468221))

(declare-fun m!468223 () Bool)

(assert (=> start!44530 m!468223))

(declare-fun m!468225 () Bool)

(assert (=> start!44530 m!468225))

(declare-fun m!468227 () Bool)

(assert (=> b!488462 m!468227))

(push 1)

