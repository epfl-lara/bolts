; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68304 () Bool)

(assert start!68304)

(declare-fun b!793092 () Bool)

(declare-fun res!537786 () Bool)

(declare-fun e!440628 () Bool)

(assert (=> b!793092 (=> (not res!537786) (not e!440628))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43045 0))(
  ( (array!43046 (arr!20599 (Array (_ BitVec 32) (_ BitVec 64))) (size!21020 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43045)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!793092 (= res!537786 (and (= (size!21020 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21020 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21020 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!537784 () Bool)

(assert (=> start!68304 (=> (not res!537784) (not e!440628))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68304 (= res!537784 (validMask!0 mask!3266))))

(assert (=> start!68304 e!440628))

(assert (=> start!68304 true))

(declare-fun array_inv!16373 (array!43045) Bool)

(assert (=> start!68304 (array_inv!16373 a!3170)))

(declare-fun b!793093 () Bool)

(declare-fun res!537782 () Bool)

(declare-fun e!440627 () Bool)

(assert (=> b!793093 (=> (not res!537782) (not e!440627))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43045 (_ BitVec 32)) Bool)

(assert (=> b!793093 (= res!537782 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!793094 () Bool)

(declare-fun res!537787 () Bool)

(assert (=> b!793094 (=> (not res!537787) (not e!440628))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43045 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793094 (= res!537787 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!793095 () Bool)

(assert (=> b!793095 (= e!440628 e!440627)))

(declare-fun res!537783 () Bool)

(assert (=> b!793095 (=> (not res!537783) (not e!440627))))

(declare-datatypes ((SeekEntryResult!8197 0))(
  ( (MissingZero!8197 (index!35155 (_ BitVec 32))) (Found!8197 (index!35156 (_ BitVec 32))) (Intermediate!8197 (undefined!9009 Bool) (index!35157 (_ BitVec 32)) (x!66124 (_ BitVec 32))) (Undefined!8197) (MissingVacant!8197 (index!35158 (_ BitVec 32))) )
))
(declare-fun lt!353622 () SeekEntryResult!8197)

(assert (=> b!793095 (= res!537783 (or (= lt!353622 (MissingZero!8197 i!1163)) (= lt!353622 (MissingVacant!8197 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43045 (_ BitVec 32)) SeekEntryResult!8197)

(assert (=> b!793095 (= lt!353622 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!793096 () Bool)

(assert (=> b!793096 (= e!440627 false)))

(declare-fun lt!353623 () Bool)

(declare-datatypes ((List!14615 0))(
  ( (Nil!14612) (Cons!14611 (h!15740 (_ BitVec 64)) (t!20938 List!14615)) )
))
(declare-fun arrayNoDuplicates!0 (array!43045 (_ BitVec 32) List!14615) Bool)

(assert (=> b!793096 (= lt!353623 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14612))))

(declare-fun b!793097 () Bool)

(declare-fun res!537781 () Bool)

(assert (=> b!793097 (=> (not res!537781) (not e!440628))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793097 (= res!537781 (validKeyInArray!0 k0!2044))))

(declare-fun b!793098 () Bool)

(declare-fun res!537785 () Bool)

(assert (=> b!793098 (=> (not res!537785) (not e!440628))))

(assert (=> b!793098 (= res!537785 (validKeyInArray!0 (select (arr!20599 a!3170) j!153)))))

(assert (= (and start!68304 res!537784) b!793092))

(assert (= (and b!793092 res!537786) b!793098))

(assert (= (and b!793098 res!537785) b!793097))

(assert (= (and b!793097 res!537781) b!793094))

(assert (= (and b!793094 res!537787) b!793095))

(assert (= (and b!793095 res!537783) b!793093))

(assert (= (and b!793093 res!537782) b!793096))

(declare-fun m!733663 () Bool)

(assert (=> b!793094 m!733663))

(declare-fun m!733665 () Bool)

(assert (=> b!793093 m!733665))

(declare-fun m!733667 () Bool)

(assert (=> b!793095 m!733667))

(declare-fun m!733669 () Bool)

(assert (=> b!793097 m!733669))

(declare-fun m!733671 () Bool)

(assert (=> b!793098 m!733671))

(assert (=> b!793098 m!733671))

(declare-fun m!733673 () Bool)

(assert (=> b!793098 m!733673))

(declare-fun m!733675 () Bool)

(assert (=> start!68304 m!733675))

(declare-fun m!733677 () Bool)

(assert (=> start!68304 m!733677))

(declare-fun m!733679 () Bool)

(assert (=> b!793096 m!733679))

(check-sat (not b!793096) (not b!793098) (not b!793093) (not start!68304) (not b!793097) (not b!793094) (not b!793095))
(check-sat)
