; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68598 () Bool)

(assert start!68598)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun e!442523 () Bool)

(declare-datatypes ((SeekEntryResult!8344 0))(
  ( (MissingZero!8344 (index!35743 (_ BitVec 32))) (Found!8344 (index!35744 (_ BitVec 32))) (Intermediate!8344 (undefined!9156 Bool) (index!35745 (_ BitVec 32)) (x!66663 (_ BitVec 32))) (Undefined!8344) (MissingVacant!8344 (index!35746 (_ BitVec 32))) )
))
(declare-fun lt!355953 () SeekEntryResult!8344)

(declare-fun b!797636 () Bool)

(declare-fun lt!355950 () SeekEntryResult!8344)

(assert (=> b!797636 (= e!442523 (not (or (not (= lt!355953 lt!355950)) (bvsge mask!3266 #b00000000000000000000000000000000))))))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!797636 (= lt!355953 (Found!8344 index!1236))))

(declare-fun b!797637 () Bool)

(declare-fun res!542334 () Bool)

(declare-fun e!442527 () Bool)

(assert (=> b!797637 (=> (not res!542334) (not e!442527))))

(declare-datatypes ((array!43339 0))(
  ( (array!43340 (arr!20746 (Array (_ BitVec 32) (_ BitVec 64))) (size!21167 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43339)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!797637 (= res!542334 (validKeyInArray!0 (select (arr!20746 a!3170) j!153)))))

(declare-fun b!797638 () Bool)

(declare-fun res!542331 () Bool)

(declare-fun e!442528 () Bool)

(assert (=> b!797638 (=> (not res!542331) (not e!442528))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!797638 (= res!542331 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21167 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20746 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21167 a!3170)) (= (select (arr!20746 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!797639 () Bool)

(declare-fun res!542325 () Bool)

(assert (=> b!797639 (=> (not res!542325) (not e!442528))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43339 (_ BitVec 32)) Bool)

(assert (=> b!797639 (= res!542325 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!797640 () Bool)

(declare-fun res!542330 () Bool)

(assert (=> b!797640 (=> (not res!542330) (not e!442527))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43339 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!797640 (= res!542330 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun res!542326 () Bool)

(assert (=> start!68598 (=> (not res!542326) (not e!442527))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68598 (= res!542326 (validMask!0 mask!3266))))

(assert (=> start!68598 e!442527))

(assert (=> start!68598 true))

(declare-fun array_inv!16520 (array!43339) Bool)

(assert (=> start!68598 (array_inv!16520 a!3170)))

(declare-fun b!797635 () Bool)

(declare-fun e!442524 () Bool)

(assert (=> b!797635 (= e!442528 e!442524)))

(declare-fun res!542332 () Bool)

(assert (=> b!797635 (=> (not res!542332) (not e!442524))))

(declare-fun lt!355948 () SeekEntryResult!8344)

(assert (=> b!797635 (= res!542332 (= lt!355948 lt!355953))))

(declare-fun lt!355954 () array!43339)

(declare-fun lt!355949 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43339 (_ BitVec 32)) SeekEntryResult!8344)

(assert (=> b!797635 (= lt!355953 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355949 lt!355954 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43339 (_ BitVec 32)) SeekEntryResult!8344)

(assert (=> b!797635 (= lt!355948 (seekEntryOrOpen!0 lt!355949 lt!355954 mask!3266))))

(assert (=> b!797635 (= lt!355949 (select (store (arr!20746 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!797635 (= lt!355954 (array!43340 (store (arr!20746 a!3170) i!1163 k0!2044) (size!21167 a!3170)))))

(declare-fun b!797641 () Bool)

(declare-fun res!542333 () Bool)

(assert (=> b!797641 (=> (not res!542333) (not e!442527))))

(assert (=> b!797641 (= res!542333 (and (= (size!21167 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21167 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21167 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!797642 () Bool)

(declare-fun e!442525 () Bool)

(assert (=> b!797642 (= e!442524 e!442525)))

(declare-fun res!542328 () Bool)

(assert (=> b!797642 (=> (not res!542328) (not e!442525))))

(declare-fun lt!355952 () SeekEntryResult!8344)

(declare-fun lt!355951 () SeekEntryResult!8344)

(assert (=> b!797642 (= res!542328 (= lt!355952 lt!355951))))

(assert (=> b!797642 (= lt!355951 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20746 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!797642 (= lt!355952 (seekEntryOrOpen!0 (select (arr!20746 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!797643 () Bool)

(assert (=> b!797643 (= e!442527 e!442528)))

(declare-fun res!542329 () Bool)

(assert (=> b!797643 (=> (not res!542329) (not e!442528))))

(declare-fun lt!355947 () SeekEntryResult!8344)

(assert (=> b!797643 (= res!542329 (or (= lt!355947 (MissingZero!8344 i!1163)) (= lt!355947 (MissingVacant!8344 i!1163))))))

(assert (=> b!797643 (= lt!355947 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!797644 () Bool)

(declare-fun res!542324 () Bool)

(assert (=> b!797644 (=> (not res!542324) (not e!442528))))

(declare-datatypes ((List!14762 0))(
  ( (Nil!14759) (Cons!14758 (h!15887 (_ BitVec 64)) (t!21085 List!14762)) )
))
(declare-fun arrayNoDuplicates!0 (array!43339 (_ BitVec 32) List!14762) Bool)

(assert (=> b!797644 (= res!542324 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14759))))

(declare-fun b!797645 () Bool)

(declare-fun res!542327 () Bool)

(assert (=> b!797645 (=> (not res!542327) (not e!442527))))

(assert (=> b!797645 (= res!542327 (validKeyInArray!0 k0!2044))))

(declare-fun b!797646 () Bool)

(assert (=> b!797646 (= e!442525 e!442523)))

(declare-fun res!542335 () Bool)

(assert (=> b!797646 (=> (not res!542335) (not e!442523))))

(assert (=> b!797646 (= res!542335 (and (= lt!355951 lt!355950) (= (select (arr!20746 a!3170) index!1236) (select (arr!20746 a!3170) j!153))))))

(assert (=> b!797646 (= lt!355950 (Found!8344 j!153))))

(assert (= (and start!68598 res!542326) b!797641))

(assert (= (and b!797641 res!542333) b!797637))

(assert (= (and b!797637 res!542334) b!797645))

(assert (= (and b!797645 res!542327) b!797640))

(assert (= (and b!797640 res!542330) b!797643))

(assert (= (and b!797643 res!542329) b!797639))

(assert (= (and b!797639 res!542325) b!797644))

(assert (= (and b!797644 res!542324) b!797638))

(assert (= (and b!797638 res!542331) b!797635))

(assert (= (and b!797635 res!542332) b!797642))

(assert (= (and b!797642 res!542328) b!797646))

(assert (= (and b!797646 res!542335) b!797636))

(declare-fun m!738601 () Bool)

(assert (=> b!797646 m!738601))

(declare-fun m!738603 () Bool)

(assert (=> b!797646 m!738603))

(assert (=> b!797642 m!738603))

(assert (=> b!797642 m!738603))

(declare-fun m!738605 () Bool)

(assert (=> b!797642 m!738605))

(assert (=> b!797642 m!738603))

(declare-fun m!738607 () Bool)

(assert (=> b!797642 m!738607))

(declare-fun m!738609 () Bool)

(assert (=> b!797639 m!738609))

(declare-fun m!738611 () Bool)

(assert (=> b!797638 m!738611))

(declare-fun m!738613 () Bool)

(assert (=> b!797638 m!738613))

(declare-fun m!738615 () Bool)

(assert (=> b!797645 m!738615))

(declare-fun m!738617 () Bool)

(assert (=> b!797635 m!738617))

(declare-fun m!738619 () Bool)

(assert (=> b!797635 m!738619))

(declare-fun m!738621 () Bool)

(assert (=> b!797635 m!738621))

(declare-fun m!738623 () Bool)

(assert (=> b!797635 m!738623))

(declare-fun m!738625 () Bool)

(assert (=> b!797643 m!738625))

(declare-fun m!738627 () Bool)

(assert (=> b!797640 m!738627))

(assert (=> b!797637 m!738603))

(assert (=> b!797637 m!738603))

(declare-fun m!738629 () Bool)

(assert (=> b!797637 m!738629))

(declare-fun m!738631 () Bool)

(assert (=> b!797644 m!738631))

(declare-fun m!738633 () Bool)

(assert (=> start!68598 m!738633))

(declare-fun m!738635 () Bool)

(assert (=> start!68598 m!738635))

(check-sat (not b!797642) (not b!797637) (not start!68598) (not b!797645) (not b!797644) (not b!797635) (not b!797643) (not b!797640) (not b!797639))
(check-sat)
