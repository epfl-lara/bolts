; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86634 () Bool)

(assert start!86634)

(declare-fun b!1004275 () Bool)

(declare-fun e!565565 () Bool)

(declare-fun e!565561 () Bool)

(assert (=> b!1004275 (= e!565565 e!565561)))

(declare-fun res!673915 () Bool)

(assert (=> b!1004275 (=> (not res!673915) (not e!565561))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9447 0))(
  ( (MissingZero!9447 (index!40158 (_ BitVec 32))) (Found!9447 (index!40159 (_ BitVec 32))) (Intermediate!9447 (undefined!10259 Bool) (index!40160 (_ BitVec 32)) (x!87588 (_ BitVec 32))) (Undefined!9447) (MissingVacant!9447 (index!40161 (_ BitVec 32))) )
))
(declare-fun lt!444105 () SeekEntryResult!9447)

(declare-fun lt!444111 () (_ BitVec 64))

(declare-datatypes ((array!63387 0))(
  ( (array!63388 (arr!30515 (Array (_ BitVec 32) (_ BitVec 64))) (size!31018 (_ BitVec 32))) )
))
(declare-fun lt!444110 () array!63387)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63387 (_ BitVec 32)) SeekEntryResult!9447)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1004275 (= res!673915 (not (= lt!444105 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!444111 mask!3464) lt!444111 lt!444110 mask!3464))))))

(declare-fun a!3219 () array!63387)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(assert (=> b!1004275 (= lt!444111 (select (store (arr!30515 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1004275 (= lt!444110 (array!63388 (store (arr!30515 a!3219) i!1194 k0!2224) (size!31018 a!3219)))))

(declare-fun b!1004276 () Bool)

(declare-fun e!565560 () Bool)

(assert (=> b!1004276 (= e!565560 e!565565)))

(declare-fun res!673924 () Bool)

(assert (=> b!1004276 (=> (not res!673924) (not e!565565))))

(declare-fun lt!444106 () SeekEntryResult!9447)

(declare-fun lt!444104 () SeekEntryResult!9447)

(assert (=> b!1004276 (= res!673924 (= lt!444106 lt!444104))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1004276 (= lt!444106 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30515 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004277 () Bool)

(declare-fun e!565564 () Bool)

(assert (=> b!1004277 (= e!565561 e!565564)))

(declare-fun res!673921 () Bool)

(assert (=> b!1004277 (=> (not res!673921) (not e!565564))))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun lt!444109 () (_ BitVec 32))

(assert (=> b!1004277 (= res!673921 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!444109 #b00000000000000000000000000000000) (bvslt lt!444109 (size!31018 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1004277 (= lt!444109 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1004278 () Bool)

(declare-fun e!565562 () Bool)

(declare-fun e!565559 () Bool)

(assert (=> b!1004278 (= e!565562 e!565559)))

(declare-fun res!673913 () Bool)

(assert (=> b!1004278 (=> (not res!673913) (not e!565559))))

(declare-fun lt!444108 () SeekEntryResult!9447)

(assert (=> b!1004278 (= res!673913 (or (= lt!444108 (MissingVacant!9447 i!1194)) (= lt!444108 (MissingZero!9447 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63387 (_ BitVec 32)) SeekEntryResult!9447)

(assert (=> b!1004278 (= lt!444108 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1004279 () Bool)

(declare-fun res!673914 () Bool)

(assert (=> b!1004279 (=> (not res!673914) (not e!565564))))

(assert (=> b!1004279 (= res!673914 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!444109 (select (arr!30515 a!3219) j!170) a!3219 mask!3464) lt!444104))))

(declare-fun b!1004280 () Bool)

(declare-fun res!673912 () Bool)

(assert (=> b!1004280 (=> (not res!673912) (not e!565562))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1004280 (= res!673912 (validKeyInArray!0 k0!2224))))

(declare-fun b!1004281 () Bool)

(declare-fun res!673910 () Bool)

(assert (=> b!1004281 (=> (not res!673910) (not e!565559))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63387 (_ BitVec 32)) Bool)

(assert (=> b!1004281 (= res!673910 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1004282 () Bool)

(declare-fun res!673923 () Bool)

(assert (=> b!1004282 (=> (not res!673923) (not e!565559))))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1004282 (= res!673923 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31018 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31018 a!3219))))))

(declare-fun b!1004283 () Bool)

(declare-fun res!673909 () Bool)

(assert (=> b!1004283 (=> (not res!673909) (not e!565562))))

(assert (=> b!1004283 (= res!673909 (validKeyInArray!0 (select (arr!30515 a!3219) j!170)))))

(declare-fun b!1004284 () Bool)

(assert (=> b!1004284 (= e!565559 e!565560)))

(declare-fun res!673922 () Bool)

(assert (=> b!1004284 (=> (not res!673922) (not e!565560))))

(assert (=> b!1004284 (= res!673922 (= lt!444105 lt!444104))))

(assert (=> b!1004284 (= lt!444104 (Intermediate!9447 false resIndex!38 resX!38))))

(assert (=> b!1004284 (= lt!444105 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30515 a!3219) j!170) mask!3464) (select (arr!30515 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004285 () Bool)

(declare-fun res!673911 () Bool)

(assert (=> b!1004285 (=> (not res!673911) (not e!565562))))

(declare-fun arrayContainsKey!0 (array!63387 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1004285 (= res!673911 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1004286 () Bool)

(declare-fun res!673920 () Bool)

(assert (=> b!1004286 (=> (not res!673920) (not e!565559))))

(declare-datatypes ((List!21317 0))(
  ( (Nil!21314) (Cons!21313 (h!22490 (_ BitVec 64)) (t!30326 List!21317)) )
))
(declare-fun arrayNoDuplicates!0 (array!63387 (_ BitVec 32) List!21317) Bool)

(assert (=> b!1004286 (= res!673920 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21314))))

(declare-fun res!673919 () Bool)

(assert (=> start!86634 (=> (not res!673919) (not e!565562))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86634 (= res!673919 (validMask!0 mask!3464))))

(assert (=> start!86634 e!565562))

(declare-fun array_inv!23505 (array!63387) Bool)

(assert (=> start!86634 (array_inv!23505 a!3219)))

(assert (=> start!86634 true))

(declare-fun b!1004287 () Bool)

(assert (=> b!1004287 (= e!565564 false)))

(declare-fun lt!444107 () SeekEntryResult!9447)

(assert (=> b!1004287 (= lt!444107 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!444109 lt!444111 lt!444110 mask!3464))))

(declare-fun b!1004288 () Bool)

(declare-fun res!673918 () Bool)

(assert (=> b!1004288 (=> (not res!673918) (not e!565561))))

(assert (=> b!1004288 (= res!673918 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1004289 () Bool)

(declare-fun res!673917 () Bool)

(assert (=> b!1004289 (=> (not res!673917) (not e!565562))))

(assert (=> b!1004289 (= res!673917 (and (= (size!31018 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31018 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31018 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1004290 () Bool)

(declare-fun res!673916 () Bool)

(assert (=> b!1004290 (=> (not res!673916) (not e!565561))))

(assert (=> b!1004290 (= res!673916 (not (= lt!444106 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!444111 lt!444110 mask!3464))))))

(assert (= (and start!86634 res!673919) b!1004289))

(assert (= (and b!1004289 res!673917) b!1004283))

(assert (= (and b!1004283 res!673909) b!1004280))

(assert (= (and b!1004280 res!673912) b!1004285))

(assert (= (and b!1004285 res!673911) b!1004278))

(assert (= (and b!1004278 res!673913) b!1004281))

(assert (= (and b!1004281 res!673910) b!1004286))

(assert (= (and b!1004286 res!673920) b!1004282))

(assert (= (and b!1004282 res!673923) b!1004284))

(assert (= (and b!1004284 res!673922) b!1004276))

(assert (= (and b!1004276 res!673924) b!1004275))

(assert (= (and b!1004275 res!673915) b!1004290))

(assert (= (and b!1004290 res!673916) b!1004288))

(assert (= (and b!1004288 res!673918) b!1004277))

(assert (= (and b!1004277 res!673921) b!1004279))

(assert (= (and b!1004279 res!673914) b!1004287))

(declare-fun m!929941 () Bool)

(assert (=> b!1004284 m!929941))

(assert (=> b!1004284 m!929941))

(declare-fun m!929943 () Bool)

(assert (=> b!1004284 m!929943))

(assert (=> b!1004284 m!929943))

(assert (=> b!1004284 m!929941))

(declare-fun m!929945 () Bool)

(assert (=> b!1004284 m!929945))

(declare-fun m!929947 () Bool)

(assert (=> start!86634 m!929947))

(declare-fun m!929949 () Bool)

(assert (=> start!86634 m!929949))

(declare-fun m!929951 () Bool)

(assert (=> b!1004285 m!929951))

(declare-fun m!929953 () Bool)

(assert (=> b!1004278 m!929953))

(assert (=> b!1004283 m!929941))

(assert (=> b!1004283 m!929941))

(declare-fun m!929955 () Bool)

(assert (=> b!1004283 m!929955))

(declare-fun m!929957 () Bool)

(assert (=> b!1004286 m!929957))

(declare-fun m!929959 () Bool)

(assert (=> b!1004280 m!929959))

(declare-fun m!929961 () Bool)

(assert (=> b!1004290 m!929961))

(declare-fun m!929963 () Bool)

(assert (=> b!1004281 m!929963))

(assert (=> b!1004276 m!929941))

(assert (=> b!1004276 m!929941))

(declare-fun m!929965 () Bool)

(assert (=> b!1004276 m!929965))

(declare-fun m!929967 () Bool)

(assert (=> b!1004287 m!929967))

(declare-fun m!929969 () Bool)

(assert (=> b!1004277 m!929969))

(assert (=> b!1004279 m!929941))

(assert (=> b!1004279 m!929941))

(declare-fun m!929971 () Bool)

(assert (=> b!1004279 m!929971))

(declare-fun m!929973 () Bool)

(assert (=> b!1004275 m!929973))

(assert (=> b!1004275 m!929973))

(declare-fun m!929975 () Bool)

(assert (=> b!1004275 m!929975))

(declare-fun m!929977 () Bool)

(assert (=> b!1004275 m!929977))

(declare-fun m!929979 () Bool)

(assert (=> b!1004275 m!929979))

(check-sat (not b!1004280) (not b!1004277) (not b!1004286) (not b!1004290) (not b!1004275) (not b!1004284) (not b!1004281) (not start!86634) (not b!1004276) (not b!1004285) (not b!1004287) (not b!1004278) (not b!1004279) (not b!1004283))
(check-sat)
