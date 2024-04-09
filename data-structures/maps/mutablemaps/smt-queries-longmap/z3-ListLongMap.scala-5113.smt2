; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69414 () Bool)

(assert start!69414)

(declare-fun b!808916 () Bool)

(declare-fun e!447821 () Bool)

(declare-fun e!447819 () Bool)

(assert (=> b!808916 (= e!447821 e!447819)))

(declare-fun res!552813 () Bool)

(assert (=> b!808916 (=> (not res!552813) (not e!447819))))

(declare-datatypes ((SeekEntryResult!8650 0))(
  ( (MissingZero!8650 (index!36967 (_ BitVec 32))) (Found!8650 (index!36968 (_ BitVec 32))) (Intermediate!8650 (undefined!9462 Bool) (index!36969 (_ BitVec 32)) (x!67803 (_ BitVec 32))) (Undefined!8650) (MissingVacant!8650 (index!36970 (_ BitVec 32))) )
))
(declare-fun lt!362496 () SeekEntryResult!8650)

(declare-datatypes ((array!43963 0))(
  ( (array!43964 (arr!21052 (Array (_ BitVec 32) (_ BitVec 64))) (size!21473 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43963)

(declare-fun lt!362497 () SeekEntryResult!8650)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!808916 (= res!552813 (and (= lt!362497 lt!362496) (= lt!362496 (Found!8650 j!153)) (not (= (select (arr!21052 a!3170) index!1236) (select (arr!21052 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43963 (_ BitVec 32)) SeekEntryResult!8650)

(assert (=> b!808916 (= lt!362496 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21052 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43963 (_ BitVec 32)) SeekEntryResult!8650)

(assert (=> b!808916 (= lt!362497 (seekEntryOrOpen!0 (select (arr!21052 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!808917 () Bool)

(declare-fun res!552818 () Bool)

(declare-fun e!447820 () Bool)

(assert (=> b!808917 (=> (not res!552818) (not e!447820))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!808917 (= res!552818 (and (= (size!21473 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21473 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21473 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!808918 () Bool)

(declare-fun res!552817 () Bool)

(declare-fun e!447822 () Bool)

(assert (=> b!808918 (=> (not res!552817) (not e!447822))))

(declare-datatypes ((List!15068 0))(
  ( (Nil!15065) (Cons!15064 (h!16193 (_ BitVec 64)) (t!21391 List!15068)) )
))
(declare-fun arrayNoDuplicates!0 (array!43963 (_ BitVec 32) List!15068) Bool)

(assert (=> b!808918 (= res!552817 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15065))))

(declare-fun b!808919 () Bool)

(declare-fun res!552814 () Bool)

(assert (=> b!808919 (=> (not res!552814) (not e!447820))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43963 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!808919 (= res!552814 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!808920 () Bool)

(declare-fun res!552819 () Bool)

(assert (=> b!808920 (=> (not res!552819) (not e!447822))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!808920 (= res!552819 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21473 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21052 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21473 a!3170)) (= (select (arr!21052 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!552815 () Bool)

(assert (=> start!69414 (=> (not res!552815) (not e!447820))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69414 (= res!552815 (validMask!0 mask!3266))))

(assert (=> start!69414 e!447820))

(assert (=> start!69414 true))

(declare-fun array_inv!16826 (array!43963) Bool)

(assert (=> start!69414 (array_inv!16826 a!3170)))

(declare-fun b!808921 () Bool)

(declare-fun res!552823 () Bool)

(assert (=> b!808921 (=> (not res!552823) (not e!447820))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!808921 (= res!552823 (validKeyInArray!0 k0!2044))))

(declare-fun b!808922 () Bool)

(assert (=> b!808922 (= e!447819 false)))

(declare-fun lt!362498 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!808922 (= lt!362498 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!808923 () Bool)

(declare-fun res!552820 () Bool)

(assert (=> b!808923 (=> (not res!552820) (not e!447822))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43963 (_ BitVec 32)) Bool)

(assert (=> b!808923 (= res!552820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!808924 () Bool)

(assert (=> b!808924 (= e!447822 e!447821)))

(declare-fun res!552821 () Bool)

(assert (=> b!808924 (=> (not res!552821) (not e!447821))))

(declare-fun lt!362495 () array!43963)

(declare-fun lt!362499 () (_ BitVec 64))

(assert (=> b!808924 (= res!552821 (= (seekEntryOrOpen!0 lt!362499 lt!362495 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362499 lt!362495 mask!3266)))))

(assert (=> b!808924 (= lt!362499 (select (store (arr!21052 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!808924 (= lt!362495 (array!43964 (store (arr!21052 a!3170) i!1163 k0!2044) (size!21473 a!3170)))))

(declare-fun b!808925 () Bool)

(declare-fun res!552822 () Bool)

(assert (=> b!808925 (=> (not res!552822) (not e!447820))))

(assert (=> b!808925 (= res!552822 (validKeyInArray!0 (select (arr!21052 a!3170) j!153)))))

(declare-fun b!808926 () Bool)

(assert (=> b!808926 (= e!447820 e!447822)))

(declare-fun res!552816 () Bool)

(assert (=> b!808926 (=> (not res!552816) (not e!447822))))

(declare-fun lt!362500 () SeekEntryResult!8650)

(assert (=> b!808926 (= res!552816 (or (= lt!362500 (MissingZero!8650 i!1163)) (= lt!362500 (MissingVacant!8650 i!1163))))))

(assert (=> b!808926 (= lt!362500 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(assert (= (and start!69414 res!552815) b!808917))

(assert (= (and b!808917 res!552818) b!808925))

(assert (= (and b!808925 res!552822) b!808921))

(assert (= (and b!808921 res!552823) b!808919))

(assert (= (and b!808919 res!552814) b!808926))

(assert (= (and b!808926 res!552816) b!808923))

(assert (= (and b!808923 res!552820) b!808918))

(assert (= (and b!808918 res!552817) b!808920))

(assert (= (and b!808920 res!552819) b!808924))

(assert (= (and b!808924 res!552821) b!808916))

(assert (= (and b!808916 res!552813) b!808922))

(declare-fun m!751149 () Bool)

(assert (=> b!808918 m!751149))

(declare-fun m!751151 () Bool)

(assert (=> b!808916 m!751151))

(declare-fun m!751153 () Bool)

(assert (=> b!808916 m!751153))

(assert (=> b!808916 m!751153))

(declare-fun m!751155 () Bool)

(assert (=> b!808916 m!751155))

(assert (=> b!808916 m!751153))

(declare-fun m!751157 () Bool)

(assert (=> b!808916 m!751157))

(declare-fun m!751159 () Bool)

(assert (=> start!69414 m!751159))

(declare-fun m!751161 () Bool)

(assert (=> start!69414 m!751161))

(declare-fun m!751163 () Bool)

(assert (=> b!808923 m!751163))

(declare-fun m!751165 () Bool)

(assert (=> b!808924 m!751165))

(declare-fun m!751167 () Bool)

(assert (=> b!808924 m!751167))

(declare-fun m!751169 () Bool)

(assert (=> b!808924 m!751169))

(declare-fun m!751171 () Bool)

(assert (=> b!808924 m!751171))

(declare-fun m!751173 () Bool)

(assert (=> b!808922 m!751173))

(declare-fun m!751175 () Bool)

(assert (=> b!808926 m!751175))

(declare-fun m!751177 () Bool)

(assert (=> b!808919 m!751177))

(declare-fun m!751179 () Bool)

(assert (=> b!808920 m!751179))

(declare-fun m!751181 () Bool)

(assert (=> b!808920 m!751181))

(declare-fun m!751183 () Bool)

(assert (=> b!808921 m!751183))

(assert (=> b!808925 m!751153))

(assert (=> b!808925 m!751153))

(declare-fun m!751185 () Bool)

(assert (=> b!808925 m!751185))

(check-sat (not start!69414) (not b!808919) (not b!808925) (not b!808918) (not b!808924) (not b!808926) (not b!808923) (not b!808916) (not b!808922) (not b!808921))
(check-sat)
