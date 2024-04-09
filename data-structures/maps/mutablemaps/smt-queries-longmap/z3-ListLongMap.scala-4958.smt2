; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68280 () Bool)

(assert start!68280)

(declare-fun b!792822 () Bool)

(declare-fun res!537512 () Bool)

(declare-fun e!440521 () Bool)

(assert (=> b!792822 (=> (not res!537512) (not e!440521))))

(declare-datatypes ((array!43021 0))(
  ( (array!43022 (arr!20587 (Array (_ BitVec 32) (_ BitVec 64))) (size!21008 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43021)

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43021 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!792822 (= res!537512 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!792823 () Bool)

(declare-fun res!537516 () Bool)

(assert (=> b!792823 (=> (not res!537516) (not e!440521))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!792823 (= res!537516 (validKeyInArray!0 (select (arr!20587 a!3170) j!153)))))

(declare-fun b!792824 () Bool)

(declare-fun e!440520 () Bool)

(assert (=> b!792824 (= e!440520 false)))

(declare-fun lt!353569 () Bool)

(declare-datatypes ((List!14603 0))(
  ( (Nil!14600) (Cons!14599 (h!15728 (_ BitVec 64)) (t!20926 List!14603)) )
))
(declare-fun arrayNoDuplicates!0 (array!43021 (_ BitVec 32) List!14603) Bool)

(assert (=> b!792824 (= lt!353569 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14600))))

(declare-fun res!537513 () Bool)

(assert (=> start!68280 (=> (not res!537513) (not e!440521))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68280 (= res!537513 (validMask!0 mask!3266))))

(assert (=> start!68280 e!440521))

(assert (=> start!68280 true))

(declare-fun array_inv!16361 (array!43021) Bool)

(assert (=> start!68280 (array_inv!16361 a!3170)))

(declare-fun b!792825 () Bool)

(declare-fun res!537515 () Bool)

(assert (=> b!792825 (=> (not res!537515) (not e!440521))))

(assert (=> b!792825 (= res!537515 (validKeyInArray!0 k0!2044))))

(declare-fun b!792826 () Bool)

(assert (=> b!792826 (= e!440521 e!440520)))

(declare-fun res!537514 () Bool)

(assert (=> b!792826 (=> (not res!537514) (not e!440520))))

(declare-datatypes ((SeekEntryResult!8185 0))(
  ( (MissingZero!8185 (index!35107 (_ BitVec 32))) (Found!8185 (index!35108 (_ BitVec 32))) (Intermediate!8185 (undefined!8997 Bool) (index!35109 (_ BitVec 32)) (x!66080 (_ BitVec 32))) (Undefined!8185) (MissingVacant!8185 (index!35110 (_ BitVec 32))) )
))
(declare-fun lt!353568 () SeekEntryResult!8185)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!792826 (= res!537514 (or (= lt!353568 (MissingZero!8185 i!1163)) (= lt!353568 (MissingVacant!8185 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43021 (_ BitVec 32)) SeekEntryResult!8185)

(assert (=> b!792826 (= lt!353568 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!792827 () Bool)

(declare-fun res!537517 () Bool)

(assert (=> b!792827 (=> (not res!537517) (not e!440521))))

(assert (=> b!792827 (= res!537517 (and (= (size!21008 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21008 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21008 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!792828 () Bool)

(declare-fun res!537511 () Bool)

(assert (=> b!792828 (=> (not res!537511) (not e!440520))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43021 (_ BitVec 32)) Bool)

(assert (=> b!792828 (= res!537511 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(assert (= (and start!68280 res!537513) b!792827))

(assert (= (and b!792827 res!537517) b!792823))

(assert (= (and b!792823 res!537516) b!792825))

(assert (= (and b!792825 res!537515) b!792822))

(assert (= (and b!792822 res!537512) b!792826))

(assert (= (and b!792826 res!537514) b!792828))

(assert (= (and b!792828 res!537511) b!792824))

(declare-fun m!733423 () Bool)

(assert (=> b!792825 m!733423))

(declare-fun m!733425 () Bool)

(assert (=> start!68280 m!733425))

(declare-fun m!733427 () Bool)

(assert (=> start!68280 m!733427))

(declare-fun m!733429 () Bool)

(assert (=> b!792826 m!733429))

(declare-fun m!733431 () Bool)

(assert (=> b!792822 m!733431))

(declare-fun m!733433 () Bool)

(assert (=> b!792823 m!733433))

(assert (=> b!792823 m!733433))

(declare-fun m!733435 () Bool)

(assert (=> b!792823 m!733435))

(declare-fun m!733437 () Bool)

(assert (=> b!792824 m!733437))

(declare-fun m!733439 () Bool)

(assert (=> b!792828 m!733439))

(check-sat (not b!792822) (not b!792824) (not b!792823) (not b!792826) (not b!792825) (not b!792828) (not start!68280))
(check-sat)
