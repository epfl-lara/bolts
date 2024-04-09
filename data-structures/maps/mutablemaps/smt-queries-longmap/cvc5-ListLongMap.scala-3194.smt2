; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44800 () Bool)

(assert start!44800)

(declare-fun b!491582 () Bool)

(declare-fun res!294673 () Bool)

(declare-fun e!288808 () Bool)

(assert (=> b!491582 (=> (not res!294673) (not e!288808))))

(declare-datatypes ((array!31819 0))(
  ( (array!31820 (arr!15294 (Array (_ BitVec 32) (_ BitVec 64))) (size!15658 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31819)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31819 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!491582 (= res!294673 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!491583 () Bool)

(declare-fun res!294676 () Bool)

(assert (=> b!491583 (=> (not res!294676) (not e!288808))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!491583 (= res!294676 (validKeyInArray!0 (select (arr!15294 a!3235) j!176)))))

(declare-fun b!491584 () Bool)

(declare-fun res!294671 () Bool)

(assert (=> b!491584 (=> (not res!294671) (not e!288808))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!491584 (= res!294671 (and (= (size!15658 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15658 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15658 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!491585 () Bool)

(declare-fun res!294668 () Bool)

(declare-fun e!288807 () Bool)

(assert (=> b!491585 (=> (not res!294668) (not e!288807))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31819 (_ BitVec 32)) Bool)

(assert (=> b!491585 (= res!294668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!491586 () Bool)

(declare-fun e!288806 () Bool)

(assert (=> b!491586 (= e!288807 (not e!288806))))

(declare-fun res!294672 () Bool)

(assert (=> b!491586 (=> res!294672 e!288806)))

(declare-datatypes ((SeekEntryResult!3768 0))(
  ( (MissingZero!3768 (index!17251 (_ BitVec 32))) (Found!3768 (index!17252 (_ BitVec 32))) (Intermediate!3768 (undefined!4580 Bool) (index!17253 (_ BitVec 32)) (x!46365 (_ BitVec 32))) (Undefined!3768) (MissingVacant!3768 (index!17254 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31819 (_ BitVec 32)) SeekEntryResult!3768)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!491586 (= res!294672 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15294 a!3235) j!176) mask!3524) (select (arr!15294 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!15294 a!3235) i!1204 k!2280) j!176) mask!3524) (select (store (arr!15294 a!3235) i!1204 k!2280) j!176) (array!31820 (store (arr!15294 a!3235) i!1204 k!2280) (size!15658 a!3235)) mask!3524)))))

(declare-fun e!288804 () Bool)

(assert (=> b!491586 e!288804))

(declare-fun res!294674 () Bool)

(assert (=> b!491586 (=> (not res!294674) (not e!288804))))

(assert (=> b!491586 (= res!294674 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14474 0))(
  ( (Unit!14475) )
))
(declare-fun lt!222325 () Unit!14474)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31819 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14474)

(assert (=> b!491586 (= lt!222325 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!491587 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31819 (_ BitVec 32)) SeekEntryResult!3768)

(assert (=> b!491587 (= e!288804 (= (seekEntryOrOpen!0 (select (arr!15294 a!3235) j!176) a!3235 mask!3524) (Found!3768 j!176)))))

(declare-fun b!491588 () Bool)

(declare-fun res!294669 () Bool)

(assert (=> b!491588 (=> (not res!294669) (not e!288808))))

(assert (=> b!491588 (= res!294669 (validKeyInArray!0 k!2280))))

(declare-fun b!491589 () Bool)

(assert (=> b!491589 (= e!288806 (bvsge mask!3524 #b00000000000000000000000000000000))))

(declare-fun res!294677 () Bool)

(assert (=> start!44800 (=> (not res!294677) (not e!288808))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44800 (= res!294677 (validMask!0 mask!3524))))

(assert (=> start!44800 e!288808))

(assert (=> start!44800 true))

(declare-fun array_inv!11068 (array!31819) Bool)

(assert (=> start!44800 (array_inv!11068 a!3235)))

(declare-fun b!491590 () Bool)

(declare-fun res!294670 () Bool)

(assert (=> b!491590 (=> (not res!294670) (not e!288807))))

(declare-datatypes ((List!9505 0))(
  ( (Nil!9502) (Cons!9501 (h!10363 (_ BitVec 64)) (t!15741 List!9505)) )
))
(declare-fun arrayNoDuplicates!0 (array!31819 (_ BitVec 32) List!9505) Bool)

(assert (=> b!491590 (= res!294670 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9502))))

(declare-fun b!491591 () Bool)

(assert (=> b!491591 (= e!288808 e!288807)))

(declare-fun res!294675 () Bool)

(assert (=> b!491591 (=> (not res!294675) (not e!288807))))

(declare-fun lt!222326 () SeekEntryResult!3768)

(assert (=> b!491591 (= res!294675 (or (= lt!222326 (MissingZero!3768 i!1204)) (= lt!222326 (MissingVacant!3768 i!1204))))))

(assert (=> b!491591 (= lt!222326 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!44800 res!294677) b!491584))

(assert (= (and b!491584 res!294671) b!491583))

(assert (= (and b!491583 res!294676) b!491588))

(assert (= (and b!491588 res!294669) b!491582))

(assert (= (and b!491582 res!294673) b!491591))

(assert (= (and b!491591 res!294675) b!491585))

(assert (= (and b!491585 res!294668) b!491590))

(assert (= (and b!491590 res!294670) b!491586))

(assert (= (and b!491586 res!294674) b!491587))

(assert (= (and b!491586 (not res!294672)) b!491589))

(declare-fun m!472351 () Bool)

(assert (=> start!44800 m!472351))

(declare-fun m!472353 () Bool)

(assert (=> start!44800 m!472353))

(declare-fun m!472355 () Bool)

(assert (=> b!491590 m!472355))

(declare-fun m!472357 () Bool)

(assert (=> b!491587 m!472357))

(assert (=> b!491587 m!472357))

(declare-fun m!472359 () Bool)

(assert (=> b!491587 m!472359))

(declare-fun m!472361 () Bool)

(assert (=> b!491585 m!472361))

(declare-fun m!472363 () Bool)

(assert (=> b!491586 m!472363))

(declare-fun m!472365 () Bool)

(assert (=> b!491586 m!472365))

(declare-fun m!472367 () Bool)

(assert (=> b!491586 m!472367))

(declare-fun m!472369 () Bool)

(assert (=> b!491586 m!472369))

(assert (=> b!491586 m!472357))

(declare-fun m!472371 () Bool)

(assert (=> b!491586 m!472371))

(assert (=> b!491586 m!472357))

(assert (=> b!491586 m!472369))

(declare-fun m!472373 () Bool)

(assert (=> b!491586 m!472373))

(assert (=> b!491586 m!472367))

(declare-fun m!472375 () Bool)

(assert (=> b!491586 m!472375))

(assert (=> b!491586 m!472357))

(declare-fun m!472377 () Bool)

(assert (=> b!491586 m!472377))

(assert (=> b!491586 m!472367))

(assert (=> b!491586 m!472373))

(declare-fun m!472379 () Bool)

(assert (=> b!491591 m!472379))

(declare-fun m!472381 () Bool)

(assert (=> b!491588 m!472381))

(declare-fun m!472383 () Bool)

(assert (=> b!491582 m!472383))

(assert (=> b!491583 m!472357))

(assert (=> b!491583 m!472357))

(declare-fun m!472385 () Bool)

(assert (=> b!491583 m!472385))

(push 1)

