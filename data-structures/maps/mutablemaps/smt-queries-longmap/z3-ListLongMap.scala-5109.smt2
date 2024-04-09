; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69282 () Bool)

(assert start!69282)

(declare-fun b!807998 () Bool)

(declare-fun res!552291 () Bool)

(declare-fun e!447319 () Bool)

(assert (=> b!807998 (=> (not res!552291) (not e!447319))))

(declare-datatypes ((array!43933 0))(
  ( (array!43934 (arr!21040 (Array (_ BitVec 32) (_ BitVec 64))) (size!21461 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43933)

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43933 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807998 (= res!552291 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!807999 () Bool)

(declare-fun e!447318 () Bool)

(assert (=> b!807999 (= e!447319 e!447318)))

(declare-fun res!552292 () Bool)

(assert (=> b!807999 (=> (not res!552292) (not e!447318))))

(declare-datatypes ((SeekEntryResult!8638 0))(
  ( (MissingZero!8638 (index!36919 (_ BitVec 32))) (Found!8638 (index!36920 (_ BitVec 32))) (Intermediate!8638 (undefined!9450 Bool) (index!36921 (_ BitVec 32)) (x!67747 (_ BitVec 32))) (Undefined!8638) (MissingVacant!8638 (index!36922 (_ BitVec 32))) )
))
(declare-fun lt!362069 () SeekEntryResult!8638)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!807999 (= res!552292 (or (= lt!362069 (MissingZero!8638 i!1163)) (= lt!362069 (MissingVacant!8638 i!1163))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43933 (_ BitVec 32)) SeekEntryResult!8638)

(assert (=> b!807999 (= lt!362069 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!808000 () Bool)

(declare-fun e!447317 () Bool)

(assert (=> b!808000 (= e!447317 false)))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!362073 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!808000 (= lt!362073 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!808001 () Bool)

(declare-fun res!552295 () Bool)

(assert (=> b!808001 (=> (not res!552295) (not e!447318))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43933 (_ BitVec 32)) Bool)

(assert (=> b!808001 (= res!552295 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!808002 () Bool)

(declare-fun res!552300 () Bool)

(assert (=> b!808002 (=> (not res!552300) (not e!447318))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!808002 (= res!552300 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21461 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21040 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21461 a!3170)) (= (select (arr!21040 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!808003 () Bool)

(declare-fun e!447315 () Bool)

(assert (=> b!808003 (= e!447315 e!447317)))

(declare-fun res!552299 () Bool)

(assert (=> b!808003 (=> (not res!552299) (not e!447317))))

(declare-fun lt!362071 () SeekEntryResult!8638)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!362074 () SeekEntryResult!8638)

(assert (=> b!808003 (= res!552299 (and (= lt!362074 lt!362071) (= lt!362071 (Found!8638 j!153)) (not (= (select (arr!21040 a!3170) index!1236) (select (arr!21040 a!3170) j!153)))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43933 (_ BitVec 32)) SeekEntryResult!8638)

(assert (=> b!808003 (= lt!362071 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21040 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!808003 (= lt!362074 (seekEntryOrOpen!0 (select (arr!21040 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!808004 () Bool)

(declare-fun res!552301 () Bool)

(assert (=> b!808004 (=> (not res!552301) (not e!447319))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!808004 (= res!552301 (validKeyInArray!0 (select (arr!21040 a!3170) j!153)))))

(declare-fun res!552294 () Bool)

(assert (=> start!69282 (=> (not res!552294) (not e!447319))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69282 (= res!552294 (validMask!0 mask!3266))))

(assert (=> start!69282 e!447319))

(assert (=> start!69282 true))

(declare-fun array_inv!16814 (array!43933) Bool)

(assert (=> start!69282 (array_inv!16814 a!3170)))

(declare-fun b!808005 () Bool)

(declare-fun res!552298 () Bool)

(assert (=> b!808005 (=> (not res!552298) (not e!447318))))

(declare-datatypes ((List!15056 0))(
  ( (Nil!15053) (Cons!15052 (h!16181 (_ BitVec 64)) (t!21379 List!15056)) )
))
(declare-fun arrayNoDuplicates!0 (array!43933 (_ BitVec 32) List!15056) Bool)

(assert (=> b!808005 (= res!552298 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15053))))

(declare-fun b!808006 () Bool)

(declare-fun res!552297 () Bool)

(assert (=> b!808006 (=> (not res!552297) (not e!447319))))

(assert (=> b!808006 (= res!552297 (validKeyInArray!0 k0!2044))))

(declare-fun b!808007 () Bool)

(declare-fun res!552293 () Bool)

(assert (=> b!808007 (=> (not res!552293) (not e!447319))))

(assert (=> b!808007 (= res!552293 (and (= (size!21461 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21461 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21461 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!808008 () Bool)

(assert (=> b!808008 (= e!447318 e!447315)))

(declare-fun res!552296 () Bool)

(assert (=> b!808008 (=> (not res!552296) (not e!447315))))

(declare-fun lt!362072 () array!43933)

(declare-fun lt!362070 () (_ BitVec 64))

(assert (=> b!808008 (= res!552296 (= (seekEntryOrOpen!0 lt!362070 lt!362072 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362070 lt!362072 mask!3266)))))

(assert (=> b!808008 (= lt!362070 (select (store (arr!21040 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!808008 (= lt!362072 (array!43934 (store (arr!21040 a!3170) i!1163 k0!2044) (size!21461 a!3170)))))

(assert (= (and start!69282 res!552294) b!808007))

(assert (= (and b!808007 res!552293) b!808004))

(assert (= (and b!808004 res!552301) b!808006))

(assert (= (and b!808006 res!552297) b!807998))

(assert (= (and b!807998 res!552291) b!807999))

(assert (= (and b!807999 res!552292) b!808001))

(assert (= (and b!808001 res!552295) b!808005))

(assert (= (and b!808005 res!552298) b!808002))

(assert (= (and b!808002 res!552300) b!808008))

(assert (= (and b!808008 res!552296) b!808003))

(assert (= (and b!808003 res!552299) b!808000))

(declare-fun m!750237 () Bool)

(assert (=> b!808006 m!750237))

(declare-fun m!750239 () Bool)

(assert (=> b!807999 m!750239))

(declare-fun m!750241 () Bool)

(assert (=> b!807998 m!750241))

(declare-fun m!750243 () Bool)

(assert (=> b!808008 m!750243))

(declare-fun m!750245 () Bool)

(assert (=> b!808008 m!750245))

(declare-fun m!750247 () Bool)

(assert (=> b!808008 m!750247))

(declare-fun m!750249 () Bool)

(assert (=> b!808008 m!750249))

(declare-fun m!750251 () Bool)

(assert (=> b!808001 m!750251))

(declare-fun m!750253 () Bool)

(assert (=> b!808005 m!750253))

(declare-fun m!750255 () Bool)

(assert (=> b!808003 m!750255))

(declare-fun m!750257 () Bool)

(assert (=> b!808003 m!750257))

(assert (=> b!808003 m!750257))

(declare-fun m!750259 () Bool)

(assert (=> b!808003 m!750259))

(assert (=> b!808003 m!750257))

(declare-fun m!750261 () Bool)

(assert (=> b!808003 m!750261))

(assert (=> b!808004 m!750257))

(assert (=> b!808004 m!750257))

(declare-fun m!750263 () Bool)

(assert (=> b!808004 m!750263))

(declare-fun m!750265 () Bool)

(assert (=> b!808002 m!750265))

(declare-fun m!750267 () Bool)

(assert (=> b!808002 m!750267))

(declare-fun m!750269 () Bool)

(assert (=> start!69282 m!750269))

(declare-fun m!750271 () Bool)

(assert (=> start!69282 m!750271))

(declare-fun m!750273 () Bool)

(assert (=> b!808000 m!750273))

(check-sat (not b!808004) (not start!69282) (not b!808003) (not b!807999) (not b!808001) (not b!808000) (not b!808006) (not b!808005) (not b!807998) (not b!808008))
(check-sat)
