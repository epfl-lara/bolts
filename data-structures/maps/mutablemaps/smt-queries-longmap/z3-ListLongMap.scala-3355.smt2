; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46134 () Bool)

(assert start!46134)

(declare-fun b!510777 () Bool)

(declare-fun res!311777 () Bool)

(declare-fun e!298498 () Bool)

(assert (=> b!510777 (=> (not res!311777) (not e!298498))))

(declare-datatypes ((array!32805 0))(
  ( (array!32806 (arr!15778 (Array (_ BitVec 32) (_ BitVec 64))) (size!16142 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32805)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510777 (= res!311777 (validKeyInArray!0 (select (arr!15778 a!3235) j!176)))))

(declare-fun b!510778 () Bool)

(declare-fun res!311780 () Bool)

(declare-fun e!298495 () Bool)

(assert (=> b!510778 (=> (not res!311780) (not e!298495))))

(declare-datatypes ((List!9989 0))(
  ( (Nil!9986) (Cons!9985 (h!10862 (_ BitVec 64)) (t!16225 List!9989)) )
))
(declare-fun arrayNoDuplicates!0 (array!32805 (_ BitVec 32) List!9989) Bool)

(assert (=> b!510778 (= res!311780 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9986))))

(declare-fun b!510779 () Bool)

(declare-fun res!311773 () Bool)

(assert (=> b!510779 (=> (not res!311773) (not e!298495))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32805 (_ BitVec 32)) Bool)

(assert (=> b!510779 (= res!311773 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!510780 () Bool)

(declare-fun res!311778 () Bool)

(assert (=> b!510780 (=> (not res!311778) (not e!298498))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32805 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510780 (= res!311778 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!510781 () Bool)

(assert (=> b!510781 (= e!298495 (not true))))

(declare-fun lt!233702 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4252 0))(
  ( (MissingZero!4252 (index!19196 (_ BitVec 32))) (Found!4252 (index!19197 (_ BitVec 32))) (Intermediate!4252 (undefined!5064 Bool) (index!19198 (_ BitVec 32)) (x!48176 (_ BitVec 32))) (Undefined!4252) (MissingVacant!4252 (index!19199 (_ BitVec 32))) )
))
(declare-fun lt!233703 () SeekEntryResult!4252)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32805 (_ BitVec 32)) SeekEntryResult!4252)

(assert (=> b!510781 (= lt!233703 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233702 (select (store (arr!15778 a!3235) i!1204 k0!2280) j!176) (array!32806 (store (arr!15778 a!3235) i!1204 k0!2280) (size!16142 a!3235)) mask!3524))))

(declare-fun lt!233704 () (_ BitVec 32))

(declare-fun lt!233701 () SeekEntryResult!4252)

(assert (=> b!510781 (= lt!233701 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233704 (select (arr!15778 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510781 (= lt!233702 (toIndex!0 (select (store (arr!15778 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!510781 (= lt!233704 (toIndex!0 (select (arr!15778 a!3235) j!176) mask!3524))))

(declare-fun e!298496 () Bool)

(assert (=> b!510781 e!298496))

(declare-fun res!311775 () Bool)

(assert (=> b!510781 (=> (not res!311775) (not e!298496))))

(assert (=> b!510781 (= res!311775 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15754 0))(
  ( (Unit!15755) )
))
(declare-fun lt!233700 () Unit!15754)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32805 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15754)

(assert (=> b!510781 (= lt!233700 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!510783 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32805 (_ BitVec 32)) SeekEntryResult!4252)

(assert (=> b!510783 (= e!298496 (= (seekEntryOrOpen!0 (select (arr!15778 a!3235) j!176) a!3235 mask!3524) (Found!4252 j!176)))))

(declare-fun b!510784 () Bool)

(declare-fun res!311772 () Bool)

(assert (=> b!510784 (=> (not res!311772) (not e!298498))))

(assert (=> b!510784 (= res!311772 (and (= (size!16142 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16142 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16142 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!510785 () Bool)

(assert (=> b!510785 (= e!298498 e!298495)))

(declare-fun res!311779 () Bool)

(assert (=> b!510785 (=> (not res!311779) (not e!298495))))

(declare-fun lt!233705 () SeekEntryResult!4252)

(assert (=> b!510785 (= res!311779 (or (= lt!233705 (MissingZero!4252 i!1204)) (= lt!233705 (MissingVacant!4252 i!1204))))))

(assert (=> b!510785 (= lt!233705 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!510782 () Bool)

(declare-fun res!311776 () Bool)

(assert (=> b!510782 (=> (not res!311776) (not e!298498))))

(assert (=> b!510782 (= res!311776 (validKeyInArray!0 k0!2280))))

(declare-fun res!311774 () Bool)

(assert (=> start!46134 (=> (not res!311774) (not e!298498))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46134 (= res!311774 (validMask!0 mask!3524))))

(assert (=> start!46134 e!298498))

(assert (=> start!46134 true))

(declare-fun array_inv!11552 (array!32805) Bool)

(assert (=> start!46134 (array_inv!11552 a!3235)))

(assert (= (and start!46134 res!311774) b!510784))

(assert (= (and b!510784 res!311772) b!510777))

(assert (= (and b!510777 res!311777) b!510782))

(assert (= (and b!510782 res!311776) b!510780))

(assert (= (and b!510780 res!311778) b!510785))

(assert (= (and b!510785 res!311779) b!510779))

(assert (= (and b!510779 res!311773) b!510778))

(assert (= (and b!510778 res!311780) b!510781))

(assert (= (and b!510781 res!311775) b!510783))

(declare-fun m!492307 () Bool)

(assert (=> b!510779 m!492307))

(declare-fun m!492309 () Bool)

(assert (=> b!510780 m!492309))

(declare-fun m!492311 () Bool)

(assert (=> b!510781 m!492311))

(declare-fun m!492313 () Bool)

(assert (=> b!510781 m!492313))

(declare-fun m!492315 () Bool)

(assert (=> b!510781 m!492315))

(declare-fun m!492317 () Bool)

(assert (=> b!510781 m!492317))

(assert (=> b!510781 m!492311))

(declare-fun m!492319 () Bool)

(assert (=> b!510781 m!492319))

(assert (=> b!510781 m!492311))

(declare-fun m!492321 () Bool)

(assert (=> b!510781 m!492321))

(assert (=> b!510781 m!492317))

(declare-fun m!492323 () Bool)

(assert (=> b!510781 m!492323))

(declare-fun m!492325 () Bool)

(assert (=> b!510781 m!492325))

(assert (=> b!510781 m!492317))

(declare-fun m!492327 () Bool)

(assert (=> b!510781 m!492327))

(assert (=> b!510777 m!492311))

(assert (=> b!510777 m!492311))

(declare-fun m!492329 () Bool)

(assert (=> b!510777 m!492329))

(declare-fun m!492331 () Bool)

(assert (=> start!46134 m!492331))

(declare-fun m!492333 () Bool)

(assert (=> start!46134 m!492333))

(declare-fun m!492335 () Bool)

(assert (=> b!510782 m!492335))

(declare-fun m!492337 () Bool)

(assert (=> b!510778 m!492337))

(assert (=> b!510783 m!492311))

(assert (=> b!510783 m!492311))

(declare-fun m!492339 () Bool)

(assert (=> b!510783 m!492339))

(declare-fun m!492341 () Bool)

(assert (=> b!510785 m!492341))

(check-sat (not b!510780) (not b!510781) (not b!510778) (not b!510783) (not b!510782) (not start!46134) (not b!510779) (not b!510777) (not b!510785))
(check-sat)
