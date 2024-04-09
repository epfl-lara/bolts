; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68106 () Bool)

(assert start!68106)

(declare-fun b!791871 () Bool)

(declare-fun e!440018 () Bool)

(declare-datatypes ((array!42964 0))(
  ( (array!42965 (arr!20563 (Array (_ BitVec 32) (_ BitVec 64))) (size!20984 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42964)

(assert (=> b!791871 (= e!440018 (bvsgt #b00000000000000000000000000000000 (size!20984 a!3170)))))

(declare-fun b!791872 () Bool)

(declare-fun res!536777 () Bool)

(assert (=> b!791872 (=> (not res!536777) (not e!440018))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42964 (_ BitVec 32)) Bool)

(assert (=> b!791872 (= res!536777 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!791873 () Bool)

(declare-fun res!536782 () Bool)

(declare-fun e!440020 () Bool)

(assert (=> b!791873 (=> (not res!536782) (not e!440020))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!791873 (= res!536782 (and (= (size!20984 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20984 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20984 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!791874 () Bool)

(assert (=> b!791874 (= e!440020 e!440018)))

(declare-fun res!536779 () Bool)

(assert (=> b!791874 (=> (not res!536779) (not e!440018))))

(declare-datatypes ((SeekEntryResult!8161 0))(
  ( (MissingZero!8161 (index!35011 (_ BitVec 32))) (Found!8161 (index!35012 (_ BitVec 32))) (Intermediate!8161 (undefined!8973 Bool) (index!35013 (_ BitVec 32)) (x!65992 (_ BitVec 32))) (Undefined!8161) (MissingVacant!8161 (index!35014 (_ BitVec 32))) )
))
(declare-fun lt!353299 () SeekEntryResult!8161)

(assert (=> b!791874 (= res!536779 (or (= lt!353299 (MissingZero!8161 i!1163)) (= lt!353299 (MissingVacant!8161 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42964 (_ BitVec 32)) SeekEntryResult!8161)

(assert (=> b!791874 (= lt!353299 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!791875 () Bool)

(declare-fun res!536776 () Bool)

(assert (=> b!791875 (=> (not res!536776) (not e!440020))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791875 (= res!536776 (validKeyInArray!0 k0!2044))))

(declare-fun res!536780 () Bool)

(assert (=> start!68106 (=> (not res!536780) (not e!440020))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68106 (= res!536780 (validMask!0 mask!3266))))

(assert (=> start!68106 e!440020))

(assert (=> start!68106 true))

(declare-fun array_inv!16337 (array!42964) Bool)

(assert (=> start!68106 (array_inv!16337 a!3170)))

(declare-fun b!791876 () Bool)

(declare-fun res!536781 () Bool)

(assert (=> b!791876 (=> (not res!536781) (not e!440020))))

(assert (=> b!791876 (= res!536781 (validKeyInArray!0 (select (arr!20563 a!3170) j!153)))))

(declare-fun b!791877 () Bool)

(declare-fun res!536778 () Bool)

(assert (=> b!791877 (=> (not res!536778) (not e!440020))))

(declare-fun arrayContainsKey!0 (array!42964 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791877 (= res!536778 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68106 res!536780) b!791873))

(assert (= (and b!791873 res!536782) b!791876))

(assert (= (and b!791876 res!536781) b!791875))

(assert (= (and b!791875 res!536776) b!791877))

(assert (= (and b!791877 res!536778) b!791874))

(assert (= (and b!791874 res!536779) b!791872))

(assert (= (and b!791872 res!536777) b!791871))

(declare-fun m!732641 () Bool)

(assert (=> b!791877 m!732641))

(declare-fun m!732643 () Bool)

(assert (=> start!68106 m!732643))

(declare-fun m!732645 () Bool)

(assert (=> start!68106 m!732645))

(declare-fun m!732647 () Bool)

(assert (=> b!791876 m!732647))

(assert (=> b!791876 m!732647))

(declare-fun m!732649 () Bool)

(assert (=> b!791876 m!732649))

(declare-fun m!732651 () Bool)

(assert (=> b!791875 m!732651))

(declare-fun m!732653 () Bool)

(assert (=> b!791872 m!732653))

(declare-fun m!732655 () Bool)

(assert (=> b!791874 m!732655))

(check-sat (not b!791875) (not b!791876) (not b!791872) (not start!68106) (not b!791874) (not b!791877))
(check-sat)
