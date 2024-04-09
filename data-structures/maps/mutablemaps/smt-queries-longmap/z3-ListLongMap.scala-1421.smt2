; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27564 () Bool)

(assert start!27564)

(declare-fun b!284656 () Bool)

(declare-fun res!147202 () Bool)

(declare-fun e!180543 () Bool)

(assert (=> b!284656 (=> (not res!147202) (not e!180543))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284656 (= res!147202 (validKeyInArray!0 k0!2581))))

(declare-fun b!284657 () Bool)

(declare-fun res!147207 () Bool)

(assert (=> b!284657 (=> (not res!147207) (not e!180543))))

(declare-datatypes ((array!14203 0))(
  ( (array!14204 (arr!6740 (Array (_ BitVec 32) (_ BitVec 64))) (size!7092 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14203)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!284657 (= res!147207 (and (= (size!7092 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7092 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7092 a!3325))))))

(declare-fun res!147204 () Bool)

(assert (=> start!27564 (=> (not res!147204) (not e!180543))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27564 (= res!147204 (validMask!0 mask!3868))))

(assert (=> start!27564 e!180543))

(declare-fun array_inv!4694 (array!14203) Bool)

(assert (=> start!27564 (array_inv!4694 a!3325)))

(assert (=> start!27564 true))

(declare-fun b!284658 () Bool)

(declare-fun e!180544 () Bool)

(assert (=> b!284658 (= e!180544 false)))

(declare-fun lt!140611 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14203 (_ BitVec 32)) Bool)

(assert (=> b!284658 (= lt!140611 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!284659 () Bool)

(assert (=> b!284659 (= e!180543 e!180544)))

(declare-fun res!147206 () Bool)

(assert (=> b!284659 (=> (not res!147206) (not e!180544))))

(declare-datatypes ((SeekEntryResult!1909 0))(
  ( (MissingZero!1909 (index!9806 (_ BitVec 32))) (Found!1909 (index!9807 (_ BitVec 32))) (Intermediate!1909 (undefined!2721 Bool) (index!9808 (_ BitVec 32)) (x!27980 (_ BitVec 32))) (Undefined!1909) (MissingVacant!1909 (index!9809 (_ BitVec 32))) )
))
(declare-fun lt!140612 () SeekEntryResult!1909)

(assert (=> b!284659 (= res!147206 (or (= lt!140612 (MissingZero!1909 i!1267)) (= lt!140612 (MissingVacant!1909 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14203 (_ BitVec 32)) SeekEntryResult!1909)

(assert (=> b!284659 (= lt!140612 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!284660 () Bool)

(declare-fun res!147203 () Bool)

(assert (=> b!284660 (=> (not res!147203) (not e!180543))))

(declare-datatypes ((List!4569 0))(
  ( (Nil!4566) (Cons!4565 (h!5238 (_ BitVec 64)) (t!9659 List!4569)) )
))
(declare-fun arrayNoDuplicates!0 (array!14203 (_ BitVec 32) List!4569) Bool)

(assert (=> b!284660 (= res!147203 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4566))))

(declare-fun b!284661 () Bool)

(declare-fun res!147205 () Bool)

(assert (=> b!284661 (=> (not res!147205) (not e!180543))))

(declare-fun arrayContainsKey!0 (array!14203 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284661 (= res!147205 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!27564 res!147204) b!284657))

(assert (= (and b!284657 res!147207) b!284656))

(assert (= (and b!284656 res!147202) b!284660))

(assert (= (and b!284660 res!147203) b!284661))

(assert (= (and b!284661 res!147205) b!284659))

(assert (= (and b!284659 res!147206) b!284658))

(declare-fun m!299655 () Bool)

(assert (=> b!284659 m!299655))

(declare-fun m!299657 () Bool)

(assert (=> b!284656 m!299657))

(declare-fun m!299659 () Bool)

(assert (=> start!27564 m!299659))

(declare-fun m!299661 () Bool)

(assert (=> start!27564 m!299661))

(declare-fun m!299663 () Bool)

(assert (=> b!284661 m!299663))

(declare-fun m!299665 () Bool)

(assert (=> b!284658 m!299665))

(declare-fun m!299667 () Bool)

(assert (=> b!284660 m!299667))

(check-sat (not b!284660) (not b!284659) (not start!27564) (not b!284656) (not b!284658) (not b!284661))
(check-sat)
