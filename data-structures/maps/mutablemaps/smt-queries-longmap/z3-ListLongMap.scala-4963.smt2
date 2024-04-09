; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68310 () Bool)

(assert start!68310)

(declare-fun b!793160 () Bool)

(declare-fun res!537852 () Bool)

(declare-fun e!440654 () Bool)

(assert (=> b!793160 (=> (not res!537852) (not e!440654))))

(declare-datatypes ((array!43051 0))(
  ( (array!43052 (arr!20602 (Array (_ BitVec 32) (_ BitVec 64))) (size!21023 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43051)

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43051 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793160 (= res!537852 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!793161 () Bool)

(declare-fun res!537856 () Bool)

(declare-fun e!440656 () Bool)

(assert (=> b!793161 (=> (not res!537856) (not e!440656))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43051 (_ BitVec 32)) Bool)

(assert (=> b!793161 (= res!537856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun b!793162 () Bool)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!793162 (= e!440656 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21023 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20602 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21023 a!3170)) (= (select (arr!20602 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23)) (bvsge mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266))))))

(declare-fun b!793164 () Bool)

(declare-fun res!537849 () Bool)

(assert (=> b!793164 (=> (not res!537849) (not e!440654))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793164 (= res!537849 (validKeyInArray!0 (select (arr!20602 a!3170) j!153)))))

(declare-fun b!793165 () Bool)

(declare-fun res!537853 () Bool)

(assert (=> b!793165 (=> (not res!537853) (not e!440654))))

(assert (=> b!793165 (= res!537853 (validKeyInArray!0 k0!2044))))

(declare-fun b!793166 () Bool)

(declare-fun res!537850 () Bool)

(assert (=> b!793166 (=> (not res!537850) (not e!440654))))

(assert (=> b!793166 (= res!537850 (and (= (size!21023 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21023 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21023 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793167 () Bool)

(assert (=> b!793167 (= e!440654 e!440656)))

(declare-fun res!537851 () Bool)

(assert (=> b!793167 (=> (not res!537851) (not e!440656))))

(declare-datatypes ((SeekEntryResult!8200 0))(
  ( (MissingZero!8200 (index!35167 (_ BitVec 32))) (Found!8200 (index!35168 (_ BitVec 32))) (Intermediate!8200 (undefined!9012 Bool) (index!35169 (_ BitVec 32)) (x!66135 (_ BitVec 32))) (Undefined!8200) (MissingVacant!8200 (index!35170 (_ BitVec 32))) )
))
(declare-fun lt!353635 () SeekEntryResult!8200)

(assert (=> b!793167 (= res!537851 (or (= lt!353635 (MissingZero!8200 i!1163)) (= lt!353635 (MissingVacant!8200 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43051 (_ BitVec 32)) SeekEntryResult!8200)

(assert (=> b!793167 (= lt!353635 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun res!537854 () Bool)

(assert (=> start!68310 (=> (not res!537854) (not e!440654))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68310 (= res!537854 (validMask!0 mask!3266))))

(assert (=> start!68310 e!440654))

(assert (=> start!68310 true))

(declare-fun array_inv!16376 (array!43051) Bool)

(assert (=> start!68310 (array_inv!16376 a!3170)))

(declare-fun b!793163 () Bool)

(declare-fun res!537855 () Bool)

(assert (=> b!793163 (=> (not res!537855) (not e!440656))))

(declare-datatypes ((List!14618 0))(
  ( (Nil!14615) (Cons!14614 (h!15743 (_ BitVec 64)) (t!20941 List!14618)) )
))
(declare-fun arrayNoDuplicates!0 (array!43051 (_ BitVec 32) List!14618) Bool)

(assert (=> b!793163 (= res!537855 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14615))))

(assert (= (and start!68310 res!537854) b!793166))

(assert (= (and b!793166 res!537850) b!793164))

(assert (= (and b!793164 res!537849) b!793165))

(assert (= (and b!793165 res!537853) b!793160))

(assert (= (and b!793160 res!537852) b!793167))

(assert (= (and b!793167 res!537851) b!793161))

(assert (= (and b!793161 res!537856) b!793163))

(assert (= (and b!793163 res!537855) b!793162))

(declare-fun m!733721 () Bool)

(assert (=> start!68310 m!733721))

(declare-fun m!733723 () Bool)

(assert (=> start!68310 m!733723))

(declare-fun m!733725 () Bool)

(assert (=> b!793167 m!733725))

(declare-fun m!733727 () Bool)

(assert (=> b!793164 m!733727))

(assert (=> b!793164 m!733727))

(declare-fun m!733729 () Bool)

(assert (=> b!793164 m!733729))

(declare-fun m!733731 () Bool)

(assert (=> b!793160 m!733731))

(declare-fun m!733733 () Bool)

(assert (=> b!793165 m!733733))

(declare-fun m!733735 () Bool)

(assert (=> b!793162 m!733735))

(declare-fun m!733737 () Bool)

(assert (=> b!793162 m!733737))

(declare-fun m!733739 () Bool)

(assert (=> b!793163 m!733739))

(declare-fun m!733741 () Bool)

(assert (=> b!793161 m!733741))

(check-sat (not b!793163) (not b!793161) (not b!793160) (not b!793164) (not start!68310) (not b!793165) (not b!793167))
(check-sat)
