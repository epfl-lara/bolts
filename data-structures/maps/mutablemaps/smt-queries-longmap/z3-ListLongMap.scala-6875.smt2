; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86538 () Bool)

(assert start!86538)

(declare-fun b!1001971 () Bool)

(declare-fun res!671608 () Bool)

(declare-fun e!564553 () Bool)

(assert (=> b!1001971 (=> (not res!671608) (not e!564553))))

(declare-datatypes ((array!63291 0))(
  ( (array!63292 (arr!30467 (Array (_ BitVec 32) (_ BitVec 64))) (size!30970 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63291)

(declare-fun lt!442954 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9399 0))(
  ( (MissingZero!9399 (index!39966 (_ BitVec 32))) (Found!9399 (index!39967 (_ BitVec 32))) (Intermediate!9399 (undefined!10211 Bool) (index!39968 (_ BitVec 32)) (x!87412 (_ BitVec 32))) (Undefined!9399) (MissingVacant!9399 (index!39969 (_ BitVec 32))) )
))
(declare-fun lt!442958 () SeekEntryResult!9399)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63291 (_ BitVec 32)) SeekEntryResult!9399)

(assert (=> b!1001971 (= res!671608 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442954 (select (arr!30467 a!3219) j!170) a!3219 mask!3464) lt!442958))))

(declare-fun b!1001972 () Bool)

(assert (=> b!1001972 (= e!564553 false)))

(declare-fun lt!442953 () array!63291)

(declare-fun lt!442957 () SeekEntryResult!9399)

(declare-fun lt!442952 () (_ BitVec 64))

(assert (=> b!1001972 (= lt!442957 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442954 lt!442952 lt!442953 mask!3464))))

(declare-fun b!1001973 () Bool)

(declare-fun res!671616 () Bool)

(declare-fun e!564554 () Bool)

(assert (=> b!1001973 (=> (not res!671616) (not e!564554))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1001973 (= res!671616 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30970 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30970 a!3219))))))

(declare-fun b!1001974 () Bool)

(declare-fun e!564556 () Bool)

(assert (=> b!1001974 (= e!564554 e!564556)))

(declare-fun res!671606 () Bool)

(assert (=> b!1001974 (=> (not res!671606) (not e!564556))))

(declare-fun lt!442955 () SeekEntryResult!9399)

(assert (=> b!1001974 (= res!671606 (= lt!442955 lt!442958))))

(assert (=> b!1001974 (= lt!442958 (Intermediate!9399 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001974 (= lt!442955 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30467 a!3219) j!170) mask!3464) (select (arr!30467 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001975 () Bool)

(declare-fun res!671618 () Bool)

(declare-fun e!564551 () Bool)

(assert (=> b!1001975 (=> (not res!671618) (not e!564551))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1001975 (= res!671618 (validKeyInArray!0 k0!2224))))

(declare-fun b!1001976 () Bool)

(declare-fun e!564552 () Bool)

(declare-fun e!564555 () Bool)

(assert (=> b!1001976 (= e!564552 e!564555)))

(declare-fun res!671609 () Bool)

(assert (=> b!1001976 (=> (not res!671609) (not e!564555))))

(assert (=> b!1001976 (= res!671609 (not (= lt!442955 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442952 mask!3464) lt!442952 lt!442953 mask!3464))))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1001976 (= lt!442952 (select (store (arr!30467 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1001976 (= lt!442953 (array!63292 (store (arr!30467 a!3219) i!1194 k0!2224) (size!30970 a!3219)))))

(declare-fun b!1001977 () Bool)

(declare-fun res!671612 () Bool)

(assert (=> b!1001977 (=> (not res!671612) (not e!564554))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63291 (_ BitVec 32)) Bool)

(assert (=> b!1001977 (= res!671612 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1001978 () Bool)

(declare-fun res!671610 () Bool)

(assert (=> b!1001978 (=> (not res!671610) (not e!564554))))

(declare-datatypes ((List!21269 0))(
  ( (Nil!21266) (Cons!21265 (h!22442 (_ BitVec 64)) (t!30278 List!21269)) )
))
(declare-fun arrayNoDuplicates!0 (array!63291 (_ BitVec 32) List!21269) Bool)

(assert (=> b!1001978 (= res!671610 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21266))))

(declare-fun b!1001979 () Bool)

(assert (=> b!1001979 (= e!564556 e!564552)))

(declare-fun res!671613 () Bool)

(assert (=> b!1001979 (=> (not res!671613) (not e!564552))))

(declare-fun lt!442959 () SeekEntryResult!9399)

(assert (=> b!1001979 (= res!671613 (= lt!442959 lt!442958))))

(assert (=> b!1001979 (= lt!442959 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30467 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001980 () Bool)

(declare-fun res!671611 () Bool)

(assert (=> b!1001980 (=> (not res!671611) (not e!564555))))

(assert (=> b!1001980 (= res!671611 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1001981 () Bool)

(declare-fun res!671615 () Bool)

(assert (=> b!1001981 (=> (not res!671615) (not e!564551))))

(assert (=> b!1001981 (= res!671615 (and (= (size!30970 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30970 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30970 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1001982 () Bool)

(assert (=> b!1001982 (= e!564551 e!564554)))

(declare-fun res!671619 () Bool)

(assert (=> b!1001982 (=> (not res!671619) (not e!564554))))

(declare-fun lt!442956 () SeekEntryResult!9399)

(assert (=> b!1001982 (= res!671619 (or (= lt!442956 (MissingVacant!9399 i!1194)) (= lt!442956 (MissingZero!9399 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63291 (_ BitVec 32)) SeekEntryResult!9399)

(assert (=> b!1001982 (= lt!442956 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1001983 () Bool)

(declare-fun res!671614 () Bool)

(assert (=> b!1001983 (=> (not res!671614) (not e!564551))))

(declare-fun arrayContainsKey!0 (array!63291 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1001983 (= res!671614 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1001984 () Bool)

(declare-fun res!671607 () Bool)

(assert (=> b!1001984 (=> (not res!671607) (not e!564555))))

(assert (=> b!1001984 (= res!671607 (not (= lt!442959 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442952 lt!442953 mask!3464))))))

(declare-fun res!671620 () Bool)

(assert (=> start!86538 (=> (not res!671620) (not e!564551))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86538 (= res!671620 (validMask!0 mask!3464))))

(assert (=> start!86538 e!564551))

(declare-fun array_inv!23457 (array!63291) Bool)

(assert (=> start!86538 (array_inv!23457 a!3219)))

(assert (=> start!86538 true))

(declare-fun b!1001985 () Bool)

(declare-fun res!671617 () Bool)

(assert (=> b!1001985 (=> (not res!671617) (not e!564551))))

(assert (=> b!1001985 (= res!671617 (validKeyInArray!0 (select (arr!30467 a!3219) j!170)))))

(declare-fun b!1001986 () Bool)

(assert (=> b!1001986 (= e!564555 e!564553)))

(declare-fun res!671605 () Bool)

(assert (=> b!1001986 (=> (not res!671605) (not e!564553))))

(assert (=> b!1001986 (= res!671605 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!442954 #b00000000000000000000000000000000) (bvslt lt!442954 (size!30970 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001986 (= lt!442954 (nextIndex!0 index!1507 x!1245 mask!3464))))

(assert (= (and start!86538 res!671620) b!1001981))

(assert (= (and b!1001981 res!671615) b!1001985))

(assert (= (and b!1001985 res!671617) b!1001975))

(assert (= (and b!1001975 res!671618) b!1001983))

(assert (= (and b!1001983 res!671614) b!1001982))

(assert (= (and b!1001982 res!671619) b!1001977))

(assert (= (and b!1001977 res!671612) b!1001978))

(assert (= (and b!1001978 res!671610) b!1001973))

(assert (= (and b!1001973 res!671616) b!1001974))

(assert (= (and b!1001974 res!671606) b!1001979))

(assert (= (and b!1001979 res!671613) b!1001976))

(assert (= (and b!1001976 res!671609) b!1001984))

(assert (= (and b!1001984 res!671607) b!1001980))

(assert (= (and b!1001980 res!671611) b!1001986))

(assert (= (and b!1001986 res!671605) b!1001971))

(assert (= (and b!1001971 res!671608) b!1001972))

(declare-fun m!928021 () Bool)

(assert (=> b!1001983 m!928021))

(declare-fun m!928023 () Bool)

(assert (=> b!1001982 m!928023))

(declare-fun m!928025 () Bool)

(assert (=> b!1001985 m!928025))

(assert (=> b!1001985 m!928025))

(declare-fun m!928027 () Bool)

(assert (=> b!1001985 m!928027))

(assert (=> b!1001979 m!928025))

(assert (=> b!1001979 m!928025))

(declare-fun m!928029 () Bool)

(assert (=> b!1001979 m!928029))

(declare-fun m!928031 () Bool)

(assert (=> b!1001972 m!928031))

(declare-fun m!928033 () Bool)

(assert (=> start!86538 m!928033))

(declare-fun m!928035 () Bool)

(assert (=> start!86538 m!928035))

(declare-fun m!928037 () Bool)

(assert (=> b!1001977 m!928037))

(assert (=> b!1001971 m!928025))

(assert (=> b!1001971 m!928025))

(declare-fun m!928039 () Bool)

(assert (=> b!1001971 m!928039))

(assert (=> b!1001974 m!928025))

(assert (=> b!1001974 m!928025))

(declare-fun m!928041 () Bool)

(assert (=> b!1001974 m!928041))

(assert (=> b!1001974 m!928041))

(assert (=> b!1001974 m!928025))

(declare-fun m!928043 () Bool)

(assert (=> b!1001974 m!928043))

(declare-fun m!928045 () Bool)

(assert (=> b!1001984 m!928045))

(declare-fun m!928047 () Bool)

(assert (=> b!1001978 m!928047))

(declare-fun m!928049 () Bool)

(assert (=> b!1001986 m!928049))

(declare-fun m!928051 () Bool)

(assert (=> b!1001976 m!928051))

(assert (=> b!1001976 m!928051))

(declare-fun m!928053 () Bool)

(assert (=> b!1001976 m!928053))

(declare-fun m!928055 () Bool)

(assert (=> b!1001976 m!928055))

(declare-fun m!928057 () Bool)

(assert (=> b!1001976 m!928057))

(declare-fun m!928059 () Bool)

(assert (=> b!1001975 m!928059))

(check-sat (not b!1001972) (not b!1001975) (not b!1001977) (not b!1001984) (not b!1001976) (not b!1001979) (not b!1001974) (not b!1001983) (not start!86538) (not b!1001978) (not b!1001985) (not b!1001982) (not b!1001986) (not b!1001971))
(check-sat)
