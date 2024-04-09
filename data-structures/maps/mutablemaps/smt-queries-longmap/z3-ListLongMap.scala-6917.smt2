; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86952 () Bool)

(assert start!86952)

(declare-fun b!1007973 () Bool)

(declare-fun e!567239 () Bool)

(declare-fun e!567240 () Bool)

(assert (=> b!1007973 (= e!567239 e!567240)))

(declare-fun res!677029 () Bool)

(assert (=> b!1007973 (=> (not res!677029) (not e!567240))))

(declare-datatypes ((SeekEntryResult!9525 0))(
  ( (MissingZero!9525 (index!40470 (_ BitVec 32))) (Found!9525 (index!40471 (_ BitVec 32))) (Intermediate!9525 (undefined!10337 Bool) (index!40472 (_ BitVec 32)) (x!87892 (_ BitVec 32))) (Undefined!9525) (MissingVacant!9525 (index!40473 (_ BitVec 32))) )
))
(declare-fun lt!445476 () SeekEntryResult!9525)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1007973 (= res!677029 (or (= lt!445476 (MissingVacant!9525 i!1194)) (= lt!445476 (MissingZero!9525 i!1194))))))

(declare-datatypes ((array!63552 0))(
  ( (array!63553 (arr!30593 (Array (_ BitVec 32) (_ BitVec 64))) (size!31096 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63552)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63552 (_ BitVec 32)) SeekEntryResult!9525)

(assert (=> b!1007973 (= lt!445476 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1007975 () Bool)

(declare-fun res!677024 () Bool)

(declare-fun e!567241 () Bool)

(assert (=> b!1007975 (=> (not res!677024) (not e!567241))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!445478 () SeekEntryResult!9525)

(declare-fun lt!445482 () (_ BitVec 64))

(declare-fun lt!445481 () array!63552)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63552 (_ BitVec 32)) SeekEntryResult!9525)

(assert (=> b!1007975 (= res!677024 (not (= lt!445478 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445482 lt!445481 mask!3464))))))

(declare-fun b!1007976 () Bool)

(declare-fun e!567237 () Bool)

(assert (=> b!1007976 (= e!567237 e!567241)))

(declare-fun res!677031 () Bool)

(assert (=> b!1007976 (=> (not res!677031) (not e!567241))))

(declare-fun lt!445480 () SeekEntryResult!9525)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007976 (= res!677031 (not (= lt!445480 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445482 mask!3464) lt!445482 lt!445481 mask!3464))))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1007976 (= lt!445482 (select (store (arr!30593 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1007976 (= lt!445481 (array!63553 (store (arr!30593 a!3219) i!1194 k0!2224) (size!31096 a!3219)))))

(declare-fun b!1007977 () Bool)

(assert (=> b!1007977 (= e!567241 false)))

(declare-fun lt!445479 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007977 (= lt!445479 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1007978 () Bool)

(declare-fun res!677026 () Bool)

(assert (=> b!1007978 (=> (not res!677026) (not e!567239))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1007978 (= res!677026 (validKeyInArray!0 (select (arr!30593 a!3219) j!170)))))

(declare-fun b!1007979 () Bool)

(declare-fun res!677025 () Bool)

(assert (=> b!1007979 (=> (not res!677025) (not e!567239))))

(assert (=> b!1007979 (= res!677025 (and (= (size!31096 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31096 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31096 a!3219)) (not (= i!1194 j!170))))))

(declare-fun res!677034 () Bool)

(assert (=> start!86952 (=> (not res!677034) (not e!567239))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86952 (= res!677034 (validMask!0 mask!3464))))

(assert (=> start!86952 e!567239))

(declare-fun array_inv!23583 (array!63552) Bool)

(assert (=> start!86952 (array_inv!23583 a!3219)))

(assert (=> start!86952 true))

(declare-fun b!1007974 () Bool)

(declare-fun res!677030 () Bool)

(assert (=> b!1007974 (=> (not res!677030) (not e!567240))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1007974 (= res!677030 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31096 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31096 a!3219))))))

(declare-fun b!1007980 () Bool)

(declare-fun res!677022 () Bool)

(assert (=> b!1007980 (=> (not res!677022) (not e!567240))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63552 (_ BitVec 32)) Bool)

(assert (=> b!1007980 (= res!677022 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1007981 () Bool)

(declare-fun res!677033 () Bool)

(assert (=> b!1007981 (=> (not res!677033) (not e!567239))))

(declare-fun arrayContainsKey!0 (array!63552 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1007981 (= res!677033 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1007982 () Bool)

(declare-fun e!567238 () Bool)

(assert (=> b!1007982 (= e!567238 e!567237)))

(declare-fun res!677032 () Bool)

(assert (=> b!1007982 (=> (not res!677032) (not e!567237))))

(declare-fun lt!445477 () SeekEntryResult!9525)

(assert (=> b!1007982 (= res!677032 (= lt!445478 lt!445477))))

(assert (=> b!1007982 (= lt!445478 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30593 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007983 () Bool)

(assert (=> b!1007983 (= e!567240 e!567238)))

(declare-fun res!677035 () Bool)

(assert (=> b!1007983 (=> (not res!677035) (not e!567238))))

(assert (=> b!1007983 (= res!677035 (= lt!445480 lt!445477))))

(assert (=> b!1007983 (= lt!445477 (Intermediate!9525 false resIndex!38 resX!38))))

(assert (=> b!1007983 (= lt!445480 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30593 a!3219) j!170) mask!3464) (select (arr!30593 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007984 () Bool)

(declare-fun res!677028 () Bool)

(assert (=> b!1007984 (=> (not res!677028) (not e!567241))))

(assert (=> b!1007984 (= res!677028 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1007985 () Bool)

(declare-fun res!677027 () Bool)

(assert (=> b!1007985 (=> (not res!677027) (not e!567239))))

(assert (=> b!1007985 (= res!677027 (validKeyInArray!0 k0!2224))))

(declare-fun b!1007986 () Bool)

(declare-fun res!677023 () Bool)

(assert (=> b!1007986 (=> (not res!677023) (not e!567240))))

(declare-datatypes ((List!21395 0))(
  ( (Nil!21392) (Cons!21391 (h!22577 (_ BitVec 64)) (t!30404 List!21395)) )
))
(declare-fun arrayNoDuplicates!0 (array!63552 (_ BitVec 32) List!21395) Bool)

(assert (=> b!1007986 (= res!677023 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21392))))

(assert (= (and start!86952 res!677034) b!1007979))

(assert (= (and b!1007979 res!677025) b!1007978))

(assert (= (and b!1007978 res!677026) b!1007985))

(assert (= (and b!1007985 res!677027) b!1007981))

(assert (= (and b!1007981 res!677033) b!1007973))

(assert (= (and b!1007973 res!677029) b!1007980))

(assert (= (and b!1007980 res!677022) b!1007986))

(assert (= (and b!1007986 res!677023) b!1007974))

(assert (= (and b!1007974 res!677030) b!1007983))

(assert (= (and b!1007983 res!677035) b!1007982))

(assert (= (and b!1007982 res!677032) b!1007976))

(assert (= (and b!1007976 res!677031) b!1007975))

(assert (= (and b!1007975 res!677024) b!1007984))

(assert (= (and b!1007984 res!677028) b!1007977))

(declare-fun m!932883 () Bool)

(assert (=> b!1007980 m!932883))

(declare-fun m!932885 () Bool)

(assert (=> b!1007981 m!932885))

(declare-fun m!932887 () Bool)

(assert (=> b!1007985 m!932887))

(declare-fun m!932889 () Bool)

(assert (=> b!1007977 m!932889))

(declare-fun m!932891 () Bool)

(assert (=> b!1007975 m!932891))

(declare-fun m!932893 () Bool)

(assert (=> b!1007986 m!932893))

(declare-fun m!932895 () Bool)

(assert (=> b!1007978 m!932895))

(assert (=> b!1007978 m!932895))

(declare-fun m!932897 () Bool)

(assert (=> b!1007978 m!932897))

(declare-fun m!932899 () Bool)

(assert (=> b!1007973 m!932899))

(declare-fun m!932901 () Bool)

(assert (=> start!86952 m!932901))

(declare-fun m!932903 () Bool)

(assert (=> start!86952 m!932903))

(assert (=> b!1007983 m!932895))

(assert (=> b!1007983 m!932895))

(declare-fun m!932905 () Bool)

(assert (=> b!1007983 m!932905))

(assert (=> b!1007983 m!932905))

(assert (=> b!1007983 m!932895))

(declare-fun m!932907 () Bool)

(assert (=> b!1007983 m!932907))

(declare-fun m!932909 () Bool)

(assert (=> b!1007976 m!932909))

(assert (=> b!1007976 m!932909))

(declare-fun m!932911 () Bool)

(assert (=> b!1007976 m!932911))

(declare-fun m!932913 () Bool)

(assert (=> b!1007976 m!932913))

(declare-fun m!932915 () Bool)

(assert (=> b!1007976 m!932915))

(assert (=> b!1007982 m!932895))

(assert (=> b!1007982 m!932895))

(declare-fun m!932917 () Bool)

(assert (=> b!1007982 m!932917))

(check-sat (not b!1007975) (not b!1007980) (not b!1007985) (not b!1007976) (not b!1007977) (not b!1007983) (not b!1007978) (not b!1007973) (not b!1007982) (not b!1007986) (not start!86952) (not b!1007981))
(check-sat)
