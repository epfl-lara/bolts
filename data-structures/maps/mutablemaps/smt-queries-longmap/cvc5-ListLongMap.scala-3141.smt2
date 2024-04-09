; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44278 () Bool)

(assert start!44278)

(declare-fun b!486614 () Bool)

(declare-fun res!290153 () Bool)

(declare-fun e!286424 () Bool)

(assert (=> b!486614 (=> (not res!290153) (not e!286424))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31489 0))(
  ( (array!31490 (arr!15135 (Array (_ BitVec 32) (_ BitVec 64))) (size!15499 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31489)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!486614 (= res!290153 (and (= (size!15499 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15499 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15499 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!290151 () Bool)

(assert (=> start!44278 (=> (not res!290151) (not e!286424))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44278 (= res!290151 (validMask!0 mask!3524))))

(assert (=> start!44278 e!286424))

(assert (=> start!44278 true))

(declare-fun array_inv!10909 (array!31489) Bool)

(assert (=> start!44278 (array_inv!10909 a!3235)))

(declare-fun b!486615 () Bool)

(declare-fun e!286426 () Bool)

(assert (=> b!486615 (= e!286426 false)))

(declare-fun lt!219824 () Bool)

(declare-datatypes ((List!9346 0))(
  ( (Nil!9343) (Cons!9342 (h!10198 (_ BitVec 64)) (t!15582 List!9346)) )
))
(declare-fun arrayNoDuplicates!0 (array!31489 (_ BitVec 32) List!9346) Bool)

(assert (=> b!486615 (= lt!219824 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9343))))

(declare-fun b!486616 () Bool)

(declare-fun res!290150 () Bool)

(assert (=> b!486616 (=> (not res!290150) (not e!286424))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!486616 (= res!290150 (validKeyInArray!0 k!2280))))

(declare-fun b!486617 () Bool)

(declare-fun res!290156 () Bool)

(assert (=> b!486617 (=> (not res!290156) (not e!286426))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31489 (_ BitVec 32)) Bool)

(assert (=> b!486617 (= res!290156 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!486618 () Bool)

(assert (=> b!486618 (= e!286424 e!286426)))

(declare-fun res!290152 () Bool)

(assert (=> b!486618 (=> (not res!290152) (not e!286426))))

(declare-datatypes ((SeekEntryResult!3609 0))(
  ( (MissingZero!3609 (index!16615 (_ BitVec 32))) (Found!3609 (index!16616 (_ BitVec 32))) (Intermediate!3609 (undefined!4421 Bool) (index!16617 (_ BitVec 32)) (x!45776 (_ BitVec 32))) (Undefined!3609) (MissingVacant!3609 (index!16618 (_ BitVec 32))) )
))
(declare-fun lt!219823 () SeekEntryResult!3609)

(assert (=> b!486618 (= res!290152 (or (= lt!219823 (MissingZero!3609 i!1204)) (= lt!219823 (MissingVacant!3609 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31489 (_ BitVec 32)) SeekEntryResult!3609)

(assert (=> b!486618 (= lt!219823 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!486619 () Bool)

(declare-fun res!290154 () Bool)

(assert (=> b!486619 (=> (not res!290154) (not e!286424))))

(assert (=> b!486619 (= res!290154 (validKeyInArray!0 (select (arr!15135 a!3235) j!176)))))

(declare-fun b!486620 () Bool)

(declare-fun res!290155 () Bool)

(assert (=> b!486620 (=> (not res!290155) (not e!286424))))

(declare-fun arrayContainsKey!0 (array!31489 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!486620 (= res!290155 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44278 res!290151) b!486614))

(assert (= (and b!486614 res!290153) b!486619))

(assert (= (and b!486619 res!290154) b!486616))

(assert (= (and b!486616 res!290150) b!486620))

(assert (= (and b!486620 res!290155) b!486618))

(assert (= (and b!486618 res!290152) b!486617))

(assert (= (and b!486617 res!290156) b!486615))

(declare-fun m!466537 () Bool)

(assert (=> b!486617 m!466537))

(declare-fun m!466539 () Bool)

(assert (=> b!486619 m!466539))

(assert (=> b!486619 m!466539))

(declare-fun m!466541 () Bool)

(assert (=> b!486619 m!466541))

(declare-fun m!466543 () Bool)

(assert (=> b!486615 m!466543))

(declare-fun m!466545 () Bool)

(assert (=> b!486618 m!466545))

(declare-fun m!466547 () Bool)

(assert (=> b!486620 m!466547))

(declare-fun m!466549 () Bool)

(assert (=> start!44278 m!466549))

(declare-fun m!466551 () Bool)

(assert (=> start!44278 m!466551))

(declare-fun m!466553 () Bool)

(assert (=> b!486616 m!466553))

(push 1)

