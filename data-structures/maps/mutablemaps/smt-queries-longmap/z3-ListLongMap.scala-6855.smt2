; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86418 () Bool)

(assert start!86418)

(declare-fun b!999611 () Bool)

(declare-fun res!669252 () Bool)

(declare-fun e!563619 () Bool)

(assert (=> b!999611 (=> (not res!669252) (not e!563619))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!999611 (= res!669252 (validKeyInArray!0 k0!2224))))

(declare-fun b!999612 () Bool)

(declare-fun res!669246 () Bool)

(declare-fun e!563621 () Bool)

(assert (=> b!999612 (=> (not res!669246) (not e!563621))))

(declare-datatypes ((array!63171 0))(
  ( (array!63172 (arr!30407 (Array (_ BitVec 32) (_ BitVec 64))) (size!30910 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63171)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63171 (_ BitVec 32)) Bool)

(assert (=> b!999612 (= res!669246 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!999613 () Bool)

(declare-fun res!669254 () Bool)

(assert (=> b!999613 (=> (not res!669254) (not e!563619))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!999613 (= res!669254 (validKeyInArray!0 (select (arr!30407 a!3219) j!170)))))

(declare-fun res!669256 () Bool)

(assert (=> start!86418 (=> (not res!669256) (not e!563619))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86418 (= res!669256 (validMask!0 mask!3464))))

(assert (=> start!86418 e!563619))

(declare-fun array_inv!23397 (array!63171) Bool)

(assert (=> start!86418 (array_inv!23397 a!3219)))

(assert (=> start!86418 true))

(declare-fun b!999614 () Bool)

(declare-fun e!563620 () Bool)

(assert (=> b!999614 (= e!563620 (bvslt mask!3464 #b00000000000000000000000000000000))))

(declare-fun b!999615 () Bool)

(declare-fun res!669245 () Bool)

(assert (=> b!999615 (=> (not res!669245) (not e!563620))))

(declare-datatypes ((SeekEntryResult!9339 0))(
  ( (MissingZero!9339 (index!39726 (_ BitVec 32))) (Found!9339 (index!39727 (_ BitVec 32))) (Intermediate!9339 (undefined!10151 Bool) (index!39728 (_ BitVec 32)) (x!87192 (_ BitVec 32))) (Undefined!9339) (MissingVacant!9339 (index!39729 (_ BitVec 32))) )
))
(declare-fun lt!442054 () SeekEntryResult!9339)

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63171 (_ BitVec 32)) SeekEntryResult!9339)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!999615 (= res!669245 (not (= lt!442054 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30407 a!3219) i!1194 k0!2224) j!170) mask!3464) (select (store (arr!30407 a!3219) i!1194 k0!2224) j!170) (array!63172 (store (arr!30407 a!3219) i!1194 k0!2224) (size!30910 a!3219)) mask!3464))))))

(declare-fun b!999616 () Bool)

(assert (=> b!999616 (= e!563621 e!563620)))

(declare-fun res!669249 () Bool)

(assert (=> b!999616 (=> (not res!669249) (not e!563620))))

(declare-fun lt!442056 () SeekEntryResult!9339)

(assert (=> b!999616 (= res!669249 (= lt!442054 lt!442056))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!999616 (= lt!442056 (Intermediate!9339 false resIndex!38 resX!38))))

(assert (=> b!999616 (= lt!442054 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30407 a!3219) j!170) mask!3464) (select (arr!30407 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!999617 () Bool)

(declare-fun res!669253 () Bool)

(assert (=> b!999617 (=> (not res!669253) (not e!563621))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!999617 (= res!669253 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30910 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30910 a!3219))))))

(declare-fun b!999618 () Bool)

(declare-fun res!669250 () Bool)

(assert (=> b!999618 (=> (not res!669250) (not e!563619))))

(assert (=> b!999618 (= res!669250 (and (= (size!30910 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30910 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30910 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!999619 () Bool)

(declare-fun res!669248 () Bool)

(assert (=> b!999619 (=> (not res!669248) (not e!563621))))

(declare-datatypes ((List!21209 0))(
  ( (Nil!21206) (Cons!21205 (h!22382 (_ BitVec 64)) (t!30218 List!21209)) )
))
(declare-fun arrayNoDuplicates!0 (array!63171 (_ BitVec 32) List!21209) Bool)

(assert (=> b!999619 (= res!669248 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21206))))

(declare-fun b!999620 () Bool)

(declare-fun res!669251 () Bool)

(assert (=> b!999620 (=> (not res!669251) (not e!563620))))

(assert (=> b!999620 (= res!669251 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30407 a!3219) j!170) a!3219 mask!3464) lt!442056))))

(declare-fun b!999621 () Bool)

(assert (=> b!999621 (= e!563619 e!563621)))

(declare-fun res!669247 () Bool)

(assert (=> b!999621 (=> (not res!669247) (not e!563621))))

(declare-fun lt!442055 () SeekEntryResult!9339)

(assert (=> b!999621 (= res!669247 (or (= lt!442055 (MissingVacant!9339 i!1194)) (= lt!442055 (MissingZero!9339 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63171 (_ BitVec 32)) SeekEntryResult!9339)

(assert (=> b!999621 (= lt!442055 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!999622 () Bool)

(declare-fun res!669255 () Bool)

(assert (=> b!999622 (=> (not res!669255) (not e!563619))))

(declare-fun arrayContainsKey!0 (array!63171 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!999622 (= res!669255 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!86418 res!669256) b!999618))

(assert (= (and b!999618 res!669250) b!999613))

(assert (= (and b!999613 res!669254) b!999611))

(assert (= (and b!999611 res!669252) b!999622))

(assert (= (and b!999622 res!669255) b!999621))

(assert (= (and b!999621 res!669247) b!999612))

(assert (= (and b!999612 res!669246) b!999619))

(assert (= (and b!999619 res!669248) b!999617))

(assert (= (and b!999617 res!669253) b!999616))

(assert (= (and b!999616 res!669249) b!999620))

(assert (= (and b!999620 res!669251) b!999615))

(assert (= (and b!999615 res!669245) b!999614))

(declare-fun m!925943 () Bool)

(assert (=> b!999611 m!925943))

(declare-fun m!925945 () Bool)

(assert (=> b!999620 m!925945))

(assert (=> b!999620 m!925945))

(declare-fun m!925947 () Bool)

(assert (=> b!999620 m!925947))

(declare-fun m!925949 () Bool)

(assert (=> start!86418 m!925949))

(declare-fun m!925951 () Bool)

(assert (=> start!86418 m!925951))

(declare-fun m!925953 () Bool)

(assert (=> b!999612 m!925953))

(assert (=> b!999616 m!925945))

(assert (=> b!999616 m!925945))

(declare-fun m!925955 () Bool)

(assert (=> b!999616 m!925955))

(assert (=> b!999616 m!925955))

(assert (=> b!999616 m!925945))

(declare-fun m!925957 () Bool)

(assert (=> b!999616 m!925957))

(declare-fun m!925959 () Bool)

(assert (=> b!999619 m!925959))

(declare-fun m!925961 () Bool)

(assert (=> b!999621 m!925961))

(declare-fun m!925963 () Bool)

(assert (=> b!999622 m!925963))

(declare-fun m!925965 () Bool)

(assert (=> b!999615 m!925965))

(declare-fun m!925967 () Bool)

(assert (=> b!999615 m!925967))

(assert (=> b!999615 m!925967))

(declare-fun m!925969 () Bool)

(assert (=> b!999615 m!925969))

(assert (=> b!999615 m!925969))

(assert (=> b!999615 m!925967))

(declare-fun m!925971 () Bool)

(assert (=> b!999615 m!925971))

(assert (=> b!999613 m!925945))

(assert (=> b!999613 m!925945))

(declare-fun m!925973 () Bool)

(assert (=> b!999613 m!925973))

(check-sat (not b!999620) (not b!999619) (not start!86418) (not b!999621) (not b!999612) (not b!999622) (not b!999615) (not b!999611) (not b!999616) (not b!999613))
(check-sat)
