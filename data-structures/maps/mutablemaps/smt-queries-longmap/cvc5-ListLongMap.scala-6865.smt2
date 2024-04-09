; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86476 () Bool)

(assert start!86476)

(declare-fun b!1000621 () Bool)

(declare-fun e!563967 () Bool)

(declare-fun e!563966 () Bool)

(assert (=> b!1000621 (= e!563967 e!563966)))

(declare-fun res!670266 () Bool)

(assert (=> b!1000621 (=> (not res!670266) (not e!563966))))

(declare-datatypes ((SeekEntryResult!9368 0))(
  ( (MissingZero!9368 (index!39842 (_ BitVec 32))) (Found!9368 (index!39843 (_ BitVec 32))) (Intermediate!9368 (undefined!10180 Bool) (index!39844 (_ BitVec 32)) (x!87301 (_ BitVec 32))) (Undefined!9368) (MissingVacant!9368 (index!39845 (_ BitVec 32))) )
))
(declare-fun lt!442315 () SeekEntryResult!9368)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1000621 (= res!670266 (or (= lt!442315 (MissingVacant!9368 i!1194)) (= lt!442315 (MissingZero!9368 i!1194))))))

(declare-datatypes ((array!63229 0))(
  ( (array!63230 (arr!30436 (Array (_ BitVec 32) (_ BitVec 64))) (size!30939 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63229)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63229 (_ BitVec 32)) SeekEntryResult!9368)

(assert (=> b!1000621 (= lt!442315 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1000622 () Bool)

(declare-fun res!670260 () Bool)

(assert (=> b!1000622 (=> (not res!670260) (not e!563966))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1000622 (= res!670260 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30939 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30939 a!3219))))))

(declare-fun b!1000623 () Bool)

(declare-fun res!670262 () Bool)

(assert (=> b!1000623 (=> (not res!670262) (not e!563966))))

(declare-datatypes ((List!21238 0))(
  ( (Nil!21235) (Cons!21234 (h!22411 (_ BitVec 64)) (t!30247 List!21238)) )
))
(declare-fun arrayNoDuplicates!0 (array!63229 (_ BitVec 32) List!21238) Bool)

(assert (=> b!1000623 (= res!670262 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21235))))

(declare-fun b!1000624 () Bool)

(declare-fun res!670264 () Bool)

(declare-fun e!563968 () Bool)

(assert (=> b!1000624 (=> (not res!670264) (not e!563968))))

(assert (=> b!1000624 (= res!670264 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvslt index!1507 (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsle x!1245 #b01111111111111111111111111111110)))))

(declare-fun b!1000625 () Bool)

(declare-fun res!670261 () Bool)

(assert (=> b!1000625 (=> (not res!670261) (not e!563966))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63229 (_ BitVec 32)) Bool)

(assert (=> b!1000625 (= res!670261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1000626 () Bool)

(declare-fun res!670267 () Bool)

(assert (=> b!1000626 (=> (not res!670267) (not e!563968))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun lt!442316 () SeekEntryResult!9368)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63229 (_ BitVec 32)) SeekEntryResult!9368)

(assert (=> b!1000626 (= res!670267 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30436 a!3219) j!170) a!3219 mask!3464) lt!442316))))

(declare-fun b!1000627 () Bool)

(declare-fun res!670257 () Bool)

(assert (=> b!1000627 (=> (not res!670257) (not e!563967))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1000627 (= res!670257 (validKeyInArray!0 k!2224))))

(declare-fun b!1000628 () Bool)

(assert (=> b!1000628 (= e!563966 e!563968)))

(declare-fun res!670255 () Bool)

(assert (=> b!1000628 (=> (not res!670255) (not e!563968))))

(declare-fun lt!442317 () SeekEntryResult!9368)

(assert (=> b!1000628 (= res!670255 (= lt!442317 lt!442316))))

(assert (=> b!1000628 (= lt!442316 (Intermediate!9368 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1000628 (= lt!442317 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30436 a!3219) j!170) mask!3464) (select (arr!30436 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1000629 () Bool)

(declare-fun res!670258 () Bool)

(assert (=> b!1000629 (=> (not res!670258) (not e!563967))))

(assert (=> b!1000629 (= res!670258 (validKeyInArray!0 (select (arr!30436 a!3219) j!170)))))

(declare-fun b!1000630 () Bool)

(declare-fun res!670256 () Bool)

(assert (=> b!1000630 (=> (not res!670256) (not e!563968))))

(assert (=> b!1000630 (= res!670256 (not (= lt!442317 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30436 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30436 a!3219) i!1194 k!2224) j!170) (array!63230 (store (arr!30436 a!3219) i!1194 k!2224) (size!30939 a!3219)) mask!3464))))))

(declare-fun res!670265 () Bool)

(assert (=> start!86476 (=> (not res!670265) (not e!563967))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86476 (= res!670265 (validMask!0 mask!3464))))

(assert (=> start!86476 e!563967))

(declare-fun array_inv!23426 (array!63229) Bool)

(assert (=> start!86476 (array_inv!23426 a!3219)))

(assert (=> start!86476 true))

(declare-fun b!1000631 () Bool)

(assert (=> b!1000631 (= e!563968 (not (validKeyInArray!0 (select (store (arr!30436 a!3219) i!1194 k!2224) j!170))))))

(declare-fun b!1000632 () Bool)

(declare-fun res!670263 () Bool)

(assert (=> b!1000632 (=> (not res!670263) (not e!563967))))

(assert (=> b!1000632 (= res!670263 (and (= (size!30939 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30939 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30939 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1000633 () Bool)

(declare-fun res!670259 () Bool)

(assert (=> b!1000633 (=> (not res!670259) (not e!563967))))

(declare-fun arrayContainsKey!0 (array!63229 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1000633 (= res!670259 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!86476 res!670265) b!1000632))

(assert (= (and b!1000632 res!670263) b!1000629))

(assert (= (and b!1000629 res!670258) b!1000627))

(assert (= (and b!1000627 res!670257) b!1000633))

(assert (= (and b!1000633 res!670259) b!1000621))

(assert (= (and b!1000621 res!670266) b!1000625))

(assert (= (and b!1000625 res!670261) b!1000623))

(assert (= (and b!1000623 res!670262) b!1000622))

(assert (= (and b!1000622 res!670260) b!1000628))

(assert (= (and b!1000628 res!670255) b!1000626))

(assert (= (and b!1000626 res!670267) b!1000630))

(assert (= (and b!1000630 res!670256) b!1000624))

(assert (= (and b!1000624 res!670264) b!1000631))

(declare-fun m!926871 () Bool)

(assert (=> b!1000626 m!926871))

(assert (=> b!1000626 m!926871))

(declare-fun m!926873 () Bool)

(assert (=> b!1000626 m!926873))

(declare-fun m!926875 () Bool)

(assert (=> b!1000623 m!926875))

(declare-fun m!926877 () Bool)

(assert (=> b!1000627 m!926877))

(declare-fun m!926879 () Bool)

(assert (=> b!1000631 m!926879))

(declare-fun m!926881 () Bool)

(assert (=> b!1000631 m!926881))

(assert (=> b!1000631 m!926881))

(declare-fun m!926883 () Bool)

(assert (=> b!1000631 m!926883))

(declare-fun m!926885 () Bool)

(assert (=> b!1000633 m!926885))

(declare-fun m!926887 () Bool)

(assert (=> b!1000621 m!926887))

(declare-fun m!926889 () Bool)

(assert (=> start!86476 m!926889))

(declare-fun m!926891 () Bool)

(assert (=> start!86476 m!926891))

(declare-fun m!926893 () Bool)

(assert (=> b!1000625 m!926893))

(assert (=> b!1000630 m!926879))

(assert (=> b!1000630 m!926881))

(assert (=> b!1000630 m!926881))

(declare-fun m!926895 () Bool)

(assert (=> b!1000630 m!926895))

(assert (=> b!1000630 m!926895))

(assert (=> b!1000630 m!926881))

(declare-fun m!926897 () Bool)

(assert (=> b!1000630 m!926897))

(assert (=> b!1000628 m!926871))

(assert (=> b!1000628 m!926871))

(declare-fun m!926899 () Bool)

(assert (=> b!1000628 m!926899))

(assert (=> b!1000628 m!926899))

(assert (=> b!1000628 m!926871))

(declare-fun m!926901 () Bool)

(assert (=> b!1000628 m!926901))

(assert (=> b!1000629 m!926871))

(assert (=> b!1000629 m!926871))

(declare-fun m!926903 () Bool)

(assert (=> b!1000629 m!926903))

(push 1)

