; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44886 () Bool)

(assert start!44886)

(declare-fun b!492249 () Bool)

(declare-fun e!289172 () Bool)

(assert (=> b!492249 (= e!289172 (not true))))

(declare-datatypes ((SeekEntryResult!3781 0))(
  ( (MissingZero!3781 (index!17303 (_ BitVec 32))) (Found!3781 (index!17304 (_ BitVec 32))) (Intermediate!3781 (undefined!4593 Bool) (index!17305 (_ BitVec 32)) (x!46416 (_ BitVec 32))) (Undefined!3781) (MissingVacant!3781 (index!17306 (_ BitVec 32))) )
))
(declare-fun lt!222589 () SeekEntryResult!3781)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31848 0))(
  ( (array!31849 (arr!15307 (Array (_ BitVec 32) (_ BitVec 64))) (size!15671 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31848)

(declare-fun lt!222592 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31848 (_ BitVec 32)) SeekEntryResult!3781)

(assert (=> b!492249 (= lt!222589 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222592 (select (store (arr!15307 a!3235) i!1204 k0!2280) j!176) (array!31849 (store (arr!15307 a!3235) i!1204 k0!2280) (size!15671 a!3235)) mask!3524))))

(declare-fun lt!222593 () SeekEntryResult!3781)

(declare-fun lt!222590 () (_ BitVec 32))

(assert (=> b!492249 (= lt!222593 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222590 (select (arr!15307 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!492249 (= lt!222592 (toIndex!0 (select (store (arr!15307 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!492249 (= lt!222590 (toIndex!0 (select (arr!15307 a!3235) j!176) mask!3524))))

(declare-fun e!289174 () Bool)

(assert (=> b!492249 e!289174))

(declare-fun res!295160 () Bool)

(assert (=> b!492249 (=> (not res!295160) (not e!289174))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31848 (_ BitVec 32)) Bool)

(assert (=> b!492249 (= res!295160 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14500 0))(
  ( (Unit!14501) )
))
(declare-fun lt!222591 () Unit!14500)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31848 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14500)

(assert (=> b!492249 (= lt!222591 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!492250 () Bool)

(declare-fun e!289173 () Bool)

(assert (=> b!492250 (= e!289173 e!289172)))

(declare-fun res!295157 () Bool)

(assert (=> b!492250 (=> (not res!295157) (not e!289172))))

(declare-fun lt!222588 () SeekEntryResult!3781)

(assert (=> b!492250 (= res!295157 (or (= lt!222588 (MissingZero!3781 i!1204)) (= lt!222588 (MissingVacant!3781 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31848 (_ BitVec 32)) SeekEntryResult!3781)

(assert (=> b!492250 (= lt!222588 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!492251 () Bool)

(declare-fun res!295156 () Bool)

(assert (=> b!492251 (=> (not res!295156) (not e!289173))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!492251 (= res!295156 (validKeyInArray!0 k0!2280))))

(declare-fun b!492252 () Bool)

(declare-fun res!295158 () Bool)

(assert (=> b!492252 (=> (not res!295158) (not e!289173))))

(declare-fun arrayContainsKey!0 (array!31848 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!492252 (= res!295158 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!492253 () Bool)

(declare-fun res!295152 () Bool)

(assert (=> b!492253 (=> (not res!295152) (not e!289173))))

(assert (=> b!492253 (= res!295152 (validKeyInArray!0 (select (arr!15307 a!3235) j!176)))))

(declare-fun b!492255 () Bool)

(declare-fun res!295154 () Bool)

(assert (=> b!492255 (=> (not res!295154) (not e!289172))))

(declare-datatypes ((List!9518 0))(
  ( (Nil!9515) (Cons!9514 (h!10379 (_ BitVec 64)) (t!15754 List!9518)) )
))
(declare-fun arrayNoDuplicates!0 (array!31848 (_ BitVec 32) List!9518) Bool)

(assert (=> b!492255 (= res!295154 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9515))))

(declare-fun b!492254 () Bool)

(declare-fun res!295159 () Bool)

(assert (=> b!492254 (=> (not res!295159) (not e!289172))))

(assert (=> b!492254 (= res!295159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!295155 () Bool)

(assert (=> start!44886 (=> (not res!295155) (not e!289173))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44886 (= res!295155 (validMask!0 mask!3524))))

(assert (=> start!44886 e!289173))

(assert (=> start!44886 true))

(declare-fun array_inv!11081 (array!31848) Bool)

(assert (=> start!44886 (array_inv!11081 a!3235)))

(declare-fun b!492256 () Bool)

(assert (=> b!492256 (= e!289174 (= (seekEntryOrOpen!0 (select (arr!15307 a!3235) j!176) a!3235 mask!3524) (Found!3781 j!176)))))

(declare-fun b!492257 () Bool)

(declare-fun res!295153 () Bool)

(assert (=> b!492257 (=> (not res!295153) (not e!289173))))

(assert (=> b!492257 (= res!295153 (and (= (size!15671 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15671 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15671 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!44886 res!295155) b!492257))

(assert (= (and b!492257 res!295153) b!492253))

(assert (= (and b!492253 res!295152) b!492251))

(assert (= (and b!492251 res!295156) b!492252))

(assert (= (and b!492252 res!295158) b!492250))

(assert (= (and b!492250 res!295157) b!492254))

(assert (= (and b!492254 res!295159) b!492255))

(assert (= (and b!492255 res!295154) b!492249))

(assert (= (and b!492249 res!295160) b!492256))

(declare-fun m!473017 () Bool)

(assert (=> start!44886 m!473017))

(declare-fun m!473019 () Bool)

(assert (=> start!44886 m!473019))

(declare-fun m!473021 () Bool)

(assert (=> b!492253 m!473021))

(assert (=> b!492253 m!473021))

(declare-fun m!473023 () Bool)

(assert (=> b!492253 m!473023))

(declare-fun m!473025 () Bool)

(assert (=> b!492254 m!473025))

(declare-fun m!473027 () Bool)

(assert (=> b!492252 m!473027))

(declare-fun m!473029 () Bool)

(assert (=> b!492251 m!473029))

(assert (=> b!492256 m!473021))

(assert (=> b!492256 m!473021))

(declare-fun m!473031 () Bool)

(assert (=> b!492256 m!473031))

(declare-fun m!473033 () Bool)

(assert (=> b!492255 m!473033))

(declare-fun m!473035 () Bool)

(assert (=> b!492250 m!473035))

(declare-fun m!473037 () Bool)

(assert (=> b!492249 m!473037))

(declare-fun m!473039 () Bool)

(assert (=> b!492249 m!473039))

(declare-fun m!473041 () Bool)

(assert (=> b!492249 m!473041))

(assert (=> b!492249 m!473037))

(assert (=> b!492249 m!473021))

(declare-fun m!473043 () Bool)

(assert (=> b!492249 m!473043))

(assert (=> b!492249 m!473021))

(declare-fun m!473045 () Bool)

(assert (=> b!492249 m!473045))

(assert (=> b!492249 m!473037))

(declare-fun m!473047 () Bool)

(assert (=> b!492249 m!473047))

(assert (=> b!492249 m!473021))

(declare-fun m!473049 () Bool)

(assert (=> b!492249 m!473049))

(declare-fun m!473051 () Bool)

(assert (=> b!492249 m!473051))

(check-sat (not b!492253) (not b!492250) (not b!492249) (not b!492251) (not b!492256) (not start!44886) (not b!492254) (not b!492252) (not b!492255))
(check-sat)
