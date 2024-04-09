; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86090 () Bool)

(assert start!86090)

(declare-fun b!996760 () Bool)

(declare-fun e!562313 () Bool)

(declare-fun e!562312 () Bool)

(assert (=> b!996760 (= e!562313 e!562312)))

(declare-fun res!667032 () Bool)

(assert (=> b!996760 (=> (not res!667032) (not e!562312))))

(declare-datatypes ((SeekEntryResult!9283 0))(
  ( (MissingZero!9283 (index!39502 (_ BitVec 32))) (Found!9283 (index!39503 (_ BitVec 32))) (Intermediate!9283 (undefined!10095 Bool) (index!39504 (_ BitVec 32)) (x!86960 (_ BitVec 32))) (Undefined!9283) (MissingVacant!9283 (index!39505 (_ BitVec 32))) )
))
(declare-fun lt!441252 () SeekEntryResult!9283)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!996760 (= res!667032 (or (= lt!441252 (MissingVacant!9283 i!1194)) (= lt!441252 (MissingZero!9283 i!1194))))))

(declare-datatypes ((array!63047 0))(
  ( (array!63048 (arr!30351 (Array (_ BitVec 32) (_ BitVec 64))) (size!30854 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63047)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63047 (_ BitVec 32)) SeekEntryResult!9283)

(assert (=> b!996760 (= lt!441252 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!996761 () Bool)

(declare-fun res!667039 () Bool)

(assert (=> b!996761 (=> (not res!667039) (not e!562313))))

(declare-fun arrayContainsKey!0 (array!63047 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!996761 (= res!667039 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!996762 () Bool)

(declare-fun res!667037 () Bool)

(assert (=> b!996762 (=> (not res!667037) (not e!562312))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!996762 (= res!667037 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30854 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30854 a!3219))))))

(declare-fun b!996763 () Bool)

(declare-fun res!667031 () Bool)

(assert (=> b!996763 (=> (not res!667031) (not e!562313))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!996763 (= res!667031 (and (= (size!30854 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30854 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30854 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!996764 () Bool)

(declare-fun res!667035 () Bool)

(assert (=> b!996764 (=> (not res!667035) (not e!562312))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63047 (_ BitVec 32)) Bool)

(assert (=> b!996764 (= res!667035 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!996765 () Bool)

(declare-fun res!667034 () Bool)

(assert (=> b!996765 (=> (not res!667034) (not e!562312))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63047 (_ BitVec 32)) SeekEntryResult!9283)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!996765 (= res!667034 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30351 a!3219) j!170) mask!3464) (select (arr!30351 a!3219) j!170) a!3219 mask!3464) (Intermediate!9283 false resIndex!38 resX!38)))))

(declare-fun b!996766 () Bool)

(declare-fun res!667030 () Bool)

(assert (=> b!996766 (=> (not res!667030) (not e!562312))))

(declare-datatypes ((List!21153 0))(
  ( (Nil!21150) (Cons!21149 (h!22314 (_ BitVec 64)) (t!30162 List!21153)) )
))
(declare-fun arrayNoDuplicates!0 (array!63047 (_ BitVec 32) List!21153) Bool)

(assert (=> b!996766 (= res!667030 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21150))))

(declare-fun res!667038 () Bool)

(assert (=> start!86090 (=> (not res!667038) (not e!562313))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86090 (= res!667038 (validMask!0 mask!3464))))

(assert (=> start!86090 e!562313))

(declare-fun array_inv!23341 (array!63047) Bool)

(assert (=> start!86090 (array_inv!23341 a!3219)))

(assert (=> start!86090 true))

(declare-fun b!996767 () Bool)

(declare-fun res!667036 () Bool)

(assert (=> b!996767 (=> (not res!667036) (not e!562313))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!996767 (= res!667036 (validKeyInArray!0 (select (arr!30351 a!3219) j!170)))))

(declare-fun b!996768 () Bool)

(declare-fun res!667033 () Bool)

(assert (=> b!996768 (=> (not res!667033) (not e!562313))))

(assert (=> b!996768 (= res!667033 (validKeyInArray!0 k!2224))))

(declare-fun b!996769 () Bool)

(assert (=> b!996769 (= e!562312 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvslt index!1507 (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsgt x!1245 #b01111111111111111111111111111110)))))

(assert (= (and start!86090 res!667038) b!996763))

(assert (= (and b!996763 res!667031) b!996767))

(assert (= (and b!996767 res!667036) b!996768))

(assert (= (and b!996768 res!667033) b!996761))

(assert (= (and b!996761 res!667039) b!996760))

(assert (= (and b!996760 res!667032) b!996764))

(assert (= (and b!996764 res!667035) b!996766))

(assert (= (and b!996766 res!667030) b!996762))

(assert (= (and b!996762 res!667037) b!996765))

(assert (= (and b!996765 res!667034) b!996769))

(declare-fun m!923885 () Bool)

(assert (=> b!996766 m!923885))

(declare-fun m!923887 () Bool)

(assert (=> b!996765 m!923887))

(assert (=> b!996765 m!923887))

(declare-fun m!923889 () Bool)

(assert (=> b!996765 m!923889))

(assert (=> b!996765 m!923889))

(assert (=> b!996765 m!923887))

(declare-fun m!923891 () Bool)

(assert (=> b!996765 m!923891))

(declare-fun m!923893 () Bool)

(assert (=> b!996768 m!923893))

(assert (=> b!996767 m!923887))

(assert (=> b!996767 m!923887))

(declare-fun m!923895 () Bool)

(assert (=> b!996767 m!923895))

(declare-fun m!923897 () Bool)

(assert (=> b!996761 m!923897))

(declare-fun m!923899 () Bool)

(assert (=> b!996760 m!923899))

(declare-fun m!923901 () Bool)

(assert (=> b!996764 m!923901))

(declare-fun m!923903 () Bool)

(assert (=> start!86090 m!923903))

(declare-fun m!923905 () Bool)

(assert (=> start!86090 m!923905))

(push 1)

(assert (not b!996768))

(assert (not b!996767))

(assert (not b!996766))

(assert (not b!996761))

(assert (not start!86090))

(assert (not b!996764))

(assert (not b!996760))

(assert (not b!996765))

(check-sat)

