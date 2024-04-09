; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86808 () Bool)

(assert start!86808)

(declare-fun b!1005933 () Bool)

(declare-fun res!675179 () Bool)

(declare-fun e!566330 () Bool)

(assert (=> b!1005933 (=> (not res!675179) (not e!566330))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1005933 (= res!675179 (validKeyInArray!0 k0!2224))))

(declare-fun b!1005934 () Bool)

(declare-fun res!675185 () Bool)

(declare-fun e!566329 () Bool)

(assert (=> b!1005934 (=> (not res!675185) (not e!566329))))

(declare-datatypes ((array!63459 0))(
  ( (array!63460 (arr!30548 (Array (_ BitVec 32) (_ BitVec 64))) (size!31051 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63459)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1005934 (= res!675185 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31051 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31051 a!3219))))))

(declare-fun b!1005935 () Bool)

(declare-fun res!675177 () Bool)

(assert (=> b!1005935 (=> (not res!675177) (not e!566330))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1005935 (= res!675177 (validKeyInArray!0 (select (arr!30548 a!3219) j!170)))))

(declare-fun b!1005936 () Bool)

(declare-fun res!675181 () Bool)

(assert (=> b!1005936 (=> (not res!675181) (not e!566329))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63459 (_ BitVec 32)) Bool)

(assert (=> b!1005936 (= res!675181 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1005937 () Bool)

(declare-fun e!566327 () Bool)

(assert (=> b!1005937 (= e!566327 false)))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun lt!444632 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1005937 (= lt!444632 (toIndex!0 (select (store (arr!30548 a!3219) i!1194 k0!2224) j!170) mask!3464))))

(declare-fun b!1005938 () Bool)

(assert (=> b!1005938 (= e!566330 e!566329)))

(declare-fun res!675182 () Bool)

(assert (=> b!1005938 (=> (not res!675182) (not e!566329))))

(declare-datatypes ((SeekEntryResult!9480 0))(
  ( (MissingZero!9480 (index!40290 (_ BitVec 32))) (Found!9480 (index!40291 (_ BitVec 32))) (Intermediate!9480 (undefined!10292 Bool) (index!40292 (_ BitVec 32)) (x!87721 (_ BitVec 32))) (Undefined!9480) (MissingVacant!9480 (index!40293 (_ BitVec 32))) )
))
(declare-fun lt!444631 () SeekEntryResult!9480)

(assert (=> b!1005938 (= res!675182 (or (= lt!444631 (MissingVacant!9480 i!1194)) (= lt!444631 (MissingZero!9480 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63459 (_ BitVec 32)) SeekEntryResult!9480)

(assert (=> b!1005938 (= lt!444631 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1005939 () Bool)

(declare-fun res!675178 () Bool)

(assert (=> b!1005939 (=> (not res!675178) (not e!566329))))

(declare-datatypes ((List!21350 0))(
  ( (Nil!21347) (Cons!21346 (h!22529 (_ BitVec 64)) (t!30359 List!21350)) )
))
(declare-fun arrayNoDuplicates!0 (array!63459 (_ BitVec 32) List!21350) Bool)

(assert (=> b!1005939 (= res!675178 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21347))))

(declare-fun b!1005940 () Bool)

(declare-fun res!675186 () Bool)

(assert (=> b!1005940 (=> (not res!675186) (not e!566327))))

(declare-fun lt!444633 () SeekEntryResult!9480)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63459 (_ BitVec 32)) SeekEntryResult!9480)

(assert (=> b!1005940 (= res!675186 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30548 a!3219) j!170) a!3219 mask!3464) lt!444633))))

(declare-fun b!1005941 () Bool)

(assert (=> b!1005941 (= e!566329 e!566327)))

(declare-fun res!675183 () Bool)

(assert (=> b!1005941 (=> (not res!675183) (not e!566327))))

(assert (=> b!1005941 (= res!675183 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30548 a!3219) j!170) mask!3464) (select (arr!30548 a!3219) j!170) a!3219 mask!3464) lt!444633))))

(assert (=> b!1005941 (= lt!444633 (Intermediate!9480 false resIndex!38 resX!38))))

(declare-fun res!675184 () Bool)

(assert (=> start!86808 (=> (not res!675184) (not e!566330))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86808 (= res!675184 (validMask!0 mask!3464))))

(assert (=> start!86808 e!566330))

(declare-fun array_inv!23538 (array!63459) Bool)

(assert (=> start!86808 (array_inv!23538 a!3219)))

(assert (=> start!86808 true))

(declare-fun b!1005942 () Bool)

(declare-fun res!675180 () Bool)

(assert (=> b!1005942 (=> (not res!675180) (not e!566330))))

(assert (=> b!1005942 (= res!675180 (and (= (size!31051 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31051 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31051 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1005943 () Bool)

(declare-fun res!675187 () Bool)

(assert (=> b!1005943 (=> (not res!675187) (not e!566330))))

(declare-fun arrayContainsKey!0 (array!63459 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1005943 (= res!675187 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!86808 res!675184) b!1005942))

(assert (= (and b!1005942 res!675180) b!1005935))

(assert (= (and b!1005935 res!675177) b!1005933))

(assert (= (and b!1005933 res!675179) b!1005943))

(assert (= (and b!1005943 res!675187) b!1005938))

(assert (= (and b!1005938 res!675182) b!1005936))

(assert (= (and b!1005936 res!675181) b!1005939))

(assert (= (and b!1005939 res!675178) b!1005934))

(assert (= (and b!1005934 res!675185) b!1005941))

(assert (= (and b!1005941 res!675183) b!1005940))

(assert (= (and b!1005940 res!675186) b!1005937))

(declare-fun m!931167 () Bool)

(assert (=> b!1005933 m!931167))

(declare-fun m!931169 () Bool)

(assert (=> b!1005940 m!931169))

(assert (=> b!1005940 m!931169))

(declare-fun m!931171 () Bool)

(assert (=> b!1005940 m!931171))

(assert (=> b!1005935 m!931169))

(assert (=> b!1005935 m!931169))

(declare-fun m!931173 () Bool)

(assert (=> b!1005935 m!931173))

(assert (=> b!1005941 m!931169))

(assert (=> b!1005941 m!931169))

(declare-fun m!931175 () Bool)

(assert (=> b!1005941 m!931175))

(assert (=> b!1005941 m!931175))

(assert (=> b!1005941 m!931169))

(declare-fun m!931177 () Bool)

(assert (=> b!1005941 m!931177))

(declare-fun m!931179 () Bool)

(assert (=> start!86808 m!931179))

(declare-fun m!931181 () Bool)

(assert (=> start!86808 m!931181))

(declare-fun m!931183 () Bool)

(assert (=> b!1005943 m!931183))

(declare-fun m!931185 () Bool)

(assert (=> b!1005936 m!931185))

(declare-fun m!931187 () Bool)

(assert (=> b!1005939 m!931187))

(declare-fun m!931189 () Bool)

(assert (=> b!1005938 m!931189))

(declare-fun m!931191 () Bool)

(assert (=> b!1005937 m!931191))

(declare-fun m!931193 () Bool)

(assert (=> b!1005937 m!931193))

(assert (=> b!1005937 m!931193))

(declare-fun m!931195 () Bool)

(assert (=> b!1005937 m!931195))

(check-sat (not b!1005936) (not b!1005940) (not b!1005937) (not start!86808) (not b!1005933) (not b!1005935) (not b!1005941) (not b!1005939) (not b!1005938) (not b!1005943))
(check-sat)
