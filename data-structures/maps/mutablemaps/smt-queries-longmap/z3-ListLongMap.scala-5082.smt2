; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69024 () Bool)

(assert start!69024)

(declare-fun b!804834 () Bool)

(declare-fun res!549531 () Bool)

(declare-fun e!445809 () Bool)

(assert (=> b!804834 (=> (not res!549531) (not e!445809))))

(declare-datatypes ((array!43765 0))(
  ( (array!43766 (arr!20959 (Array (_ BitVec 32) (_ BitVec 64))) (size!21380 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43765)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804834 (= res!549531 (validKeyInArray!0 (select (arr!20959 a!3170) j!153)))))

(declare-fun b!804835 () Bool)

(declare-fun e!445810 () Bool)

(assert (=> b!804835 (= e!445809 e!445810)))

(declare-fun res!549523 () Bool)

(assert (=> b!804835 (=> (not res!549523) (not e!445810))))

(declare-datatypes ((SeekEntryResult!8557 0))(
  ( (MissingZero!8557 (index!36595 (_ BitVec 32))) (Found!8557 (index!36596 (_ BitVec 32))) (Intermediate!8557 (undefined!9369 Bool) (index!36597 (_ BitVec 32)) (x!67444 (_ BitVec 32))) (Undefined!8557) (MissingVacant!8557 (index!36598 (_ BitVec 32))) )
))
(declare-fun lt!360353 () SeekEntryResult!8557)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!804835 (= res!549523 (or (= lt!360353 (MissingZero!8557 i!1163)) (= lt!360353 (MissingVacant!8557 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43765 (_ BitVec 32)) SeekEntryResult!8557)

(assert (=> b!804835 (= lt!360353 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!804836 () Bool)

(declare-fun res!549524 () Bool)

(assert (=> b!804836 (=> (not res!549524) (not e!445810))))

(declare-datatypes ((List!14975 0))(
  ( (Nil!14972) (Cons!14971 (h!16100 (_ BitVec 64)) (t!21298 List!14975)) )
))
(declare-fun arrayNoDuplicates!0 (array!43765 (_ BitVec 32) List!14975) Bool)

(assert (=> b!804836 (= res!549524 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14972))))

(declare-fun b!804837 () Bool)

(declare-fun res!549527 () Bool)

(assert (=> b!804837 (=> (not res!549527) (not e!445809))))

(assert (=> b!804837 (= res!549527 (and (= (size!21380 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21380 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21380 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804838 () Bool)

(declare-fun e!445808 () Bool)

(assert (=> b!804838 (= e!445810 e!445808)))

(declare-fun res!549532 () Bool)

(assert (=> b!804838 (=> (not res!549532) (not e!445808))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!360354 () array!43765)

(declare-fun lt!360351 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43765 (_ BitVec 32)) SeekEntryResult!8557)

(assert (=> b!804838 (= res!549532 (= (seekEntryOrOpen!0 lt!360351 lt!360354 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360351 lt!360354 mask!3266)))))

(assert (=> b!804838 (= lt!360351 (select (store (arr!20959 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!804838 (= lt!360354 (array!43766 (store (arr!20959 a!3170) i!1163 k0!2044) (size!21380 a!3170)))))

(declare-fun b!804839 () Bool)

(declare-fun res!549528 () Bool)

(assert (=> b!804839 (=> (not res!549528) (not e!445810))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43765 (_ BitVec 32)) Bool)

(assert (=> b!804839 (= res!549528 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804840 () Bool)

(declare-fun res!549530 () Bool)

(assert (=> b!804840 (=> (not res!549530) (not e!445810))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!804840 (= res!549530 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21380 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20959 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21380 a!3170)) (= (select (arr!20959 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!549525 () Bool)

(assert (=> start!69024 (=> (not res!549525) (not e!445809))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69024 (= res!549525 (validMask!0 mask!3266))))

(assert (=> start!69024 e!445809))

(assert (=> start!69024 true))

(declare-fun array_inv!16733 (array!43765) Bool)

(assert (=> start!69024 (array_inv!16733 a!3170)))

(declare-fun b!804841 () Bool)

(declare-fun res!549526 () Bool)

(assert (=> b!804841 (=> (not res!549526) (not e!445809))))

(declare-fun arrayContainsKey!0 (array!43765 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804841 (= res!549526 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804842 () Bool)

(assert (=> b!804842 (= e!445808 false)))

(declare-fun lt!360352 () SeekEntryResult!8557)

(assert (=> b!804842 (= lt!360352 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20959 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!360355 () SeekEntryResult!8557)

(assert (=> b!804842 (= lt!360355 (seekEntryOrOpen!0 (select (arr!20959 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!804843 () Bool)

(declare-fun res!549529 () Bool)

(assert (=> b!804843 (=> (not res!549529) (not e!445809))))

(assert (=> b!804843 (= res!549529 (validKeyInArray!0 k0!2044))))

(assert (= (and start!69024 res!549525) b!804837))

(assert (= (and b!804837 res!549527) b!804834))

(assert (= (and b!804834 res!549531) b!804843))

(assert (= (and b!804843 res!549529) b!804841))

(assert (= (and b!804841 res!549526) b!804835))

(assert (= (and b!804835 res!549523) b!804839))

(assert (= (and b!804839 res!549528) b!804836))

(assert (= (and b!804836 res!549524) b!804840))

(assert (= (and b!804840 res!549530) b!804838))

(assert (= (and b!804838 res!549532) b!804842))

(declare-fun m!746819 () Bool)

(assert (=> b!804835 m!746819))

(declare-fun m!746821 () Bool)

(assert (=> b!804839 m!746821))

(declare-fun m!746823 () Bool)

(assert (=> b!804838 m!746823))

(declare-fun m!746825 () Bool)

(assert (=> b!804838 m!746825))

(declare-fun m!746827 () Bool)

(assert (=> b!804838 m!746827))

(declare-fun m!746829 () Bool)

(assert (=> b!804838 m!746829))

(declare-fun m!746831 () Bool)

(assert (=> b!804834 m!746831))

(assert (=> b!804834 m!746831))

(declare-fun m!746833 () Bool)

(assert (=> b!804834 m!746833))

(assert (=> b!804842 m!746831))

(assert (=> b!804842 m!746831))

(declare-fun m!746835 () Bool)

(assert (=> b!804842 m!746835))

(assert (=> b!804842 m!746831))

(declare-fun m!746837 () Bool)

(assert (=> b!804842 m!746837))

(declare-fun m!746839 () Bool)

(assert (=> b!804841 m!746839))

(declare-fun m!746841 () Bool)

(assert (=> start!69024 m!746841))

(declare-fun m!746843 () Bool)

(assert (=> start!69024 m!746843))

(declare-fun m!746845 () Bool)

(assert (=> b!804836 m!746845))

(declare-fun m!746847 () Bool)

(assert (=> b!804843 m!746847))

(declare-fun m!746849 () Bool)

(assert (=> b!804840 m!746849))

(declare-fun m!746851 () Bool)

(assert (=> b!804840 m!746851))

(check-sat (not b!804839) (not b!804836) (not start!69024) (not b!804838) (not b!804843) (not b!804841) (not b!804834) (not b!804835) (not b!804842))
(check-sat)
