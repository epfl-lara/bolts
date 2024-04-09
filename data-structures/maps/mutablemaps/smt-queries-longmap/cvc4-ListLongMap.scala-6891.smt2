; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86636 () Bool)

(assert start!86636)

(declare-fun b!1004323 () Bool)

(declare-fun e!565583 () Bool)

(declare-fun e!565581 () Bool)

(assert (=> b!1004323 (= e!565583 e!565581)))

(declare-fun res!673965 () Bool)

(assert (=> b!1004323 (=> (not res!673965) (not e!565581))))

(declare-datatypes ((SeekEntryResult!9448 0))(
  ( (MissingZero!9448 (index!40162 (_ BitVec 32))) (Found!9448 (index!40163 (_ BitVec 32))) (Intermediate!9448 (undefined!10260 Bool) (index!40164 (_ BitVec 32)) (x!87589 (_ BitVec 32))) (Undefined!9448) (MissingVacant!9448 (index!40165 (_ BitVec 32))) )
))
(declare-fun lt!444128 () SeekEntryResult!9448)

(declare-fun lt!444134 () SeekEntryResult!9448)

(assert (=> b!1004323 (= res!673965 (= lt!444128 lt!444134))))

(declare-datatypes ((array!63389 0))(
  ( (array!63390 (arr!30516 (Array (_ BitVec 32) (_ BitVec 64))) (size!31019 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63389)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63389 (_ BitVec 32)) SeekEntryResult!9448)

(assert (=> b!1004323 (= lt!444128 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30516 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004324 () Bool)

(declare-fun res!673958 () Bool)

(declare-fun e!565585 () Bool)

(assert (=> b!1004324 (=> (not res!673958) (not e!565585))))

(declare-fun lt!444135 () (_ BitVec 32))

(assert (=> b!1004324 (= res!673958 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!444135 (select (arr!30516 a!3219) j!170) a!3219 mask!3464) lt!444134))))

(declare-fun b!1004325 () Bool)

(declare-fun res!673966 () Bool)

(declare-fun e!565582 () Bool)

(assert (=> b!1004325 (=> (not res!673966) (not e!565582))))

(declare-fun lt!444131 () (_ BitVec 64))

(declare-fun lt!444133 () array!63389)

(assert (=> b!1004325 (= res!673966 (not (= lt!444128 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!444131 lt!444133 mask!3464))))))

(declare-fun b!1004326 () Bool)

(declare-fun e!565584 () Bool)

(declare-fun e!565580 () Bool)

(assert (=> b!1004326 (= e!565584 e!565580)))

(declare-fun res!673959 () Bool)

(assert (=> b!1004326 (=> (not res!673959) (not e!565580))))

(declare-fun lt!444129 () SeekEntryResult!9448)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1004326 (= res!673959 (or (= lt!444129 (MissingVacant!9448 i!1194)) (= lt!444129 (MissingZero!9448 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63389 (_ BitVec 32)) SeekEntryResult!9448)

(assert (=> b!1004326 (= lt!444129 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1004327 () Bool)

(declare-fun res!673969 () Bool)

(assert (=> b!1004327 (=> (not res!673969) (not e!565584))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1004327 (= res!673969 (validKeyInArray!0 (select (arr!30516 a!3219) j!170)))))

(declare-fun b!1004328 () Bool)

(assert (=> b!1004328 (= e!565582 e!565585)))

(declare-fun res!673971 () Bool)

(assert (=> b!1004328 (=> (not res!673971) (not e!565585))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1004328 (= res!673971 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!444135 #b00000000000000000000000000000000) (bvslt lt!444135 (size!31019 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1004328 (= lt!444135 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1004329 () Bool)

(declare-fun res!673962 () Bool)

(assert (=> b!1004329 (=> (not res!673962) (not e!565580))))

(declare-datatypes ((List!21318 0))(
  ( (Nil!21315) (Cons!21314 (h!22491 (_ BitVec 64)) (t!30327 List!21318)) )
))
(declare-fun arrayNoDuplicates!0 (array!63389 (_ BitVec 32) List!21318) Bool)

(assert (=> b!1004329 (= res!673962 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21315))))

(declare-fun b!1004330 () Bool)

(declare-fun res!673972 () Bool)

(assert (=> b!1004330 (=> (not res!673972) (not e!565584))))

(declare-fun arrayContainsKey!0 (array!63389 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1004330 (= res!673972 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1004331 () Bool)

(assert (=> b!1004331 (= e!565581 e!565582)))

(declare-fun res!673964 () Bool)

(assert (=> b!1004331 (=> (not res!673964) (not e!565582))))

(declare-fun lt!444132 () SeekEntryResult!9448)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1004331 (= res!673964 (not (= lt!444132 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!444131 mask!3464) lt!444131 lt!444133 mask!3464))))))

(assert (=> b!1004331 (= lt!444131 (select (store (arr!30516 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1004331 (= lt!444133 (array!63390 (store (arr!30516 a!3219) i!1194 k!2224) (size!31019 a!3219)))))

(declare-fun b!1004332 () Bool)

(declare-fun res!673967 () Bool)

(assert (=> b!1004332 (=> (not res!673967) (not e!565582))))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1004332 (= res!673967 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1004333 () Bool)

(declare-fun res!673963 () Bool)

(assert (=> b!1004333 (=> (not res!673963) (not e!565584))))

(assert (=> b!1004333 (= res!673963 (and (= (size!31019 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31019 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31019 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1004334 () Bool)

(assert (=> b!1004334 (= e!565585 false)))

(declare-fun lt!444130 () SeekEntryResult!9448)

(assert (=> b!1004334 (= lt!444130 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!444135 lt!444131 lt!444133 mask!3464))))

(declare-fun b!1004335 () Bool)

(assert (=> b!1004335 (= e!565580 e!565583)))

(declare-fun res!673957 () Bool)

(assert (=> b!1004335 (=> (not res!673957) (not e!565583))))

(assert (=> b!1004335 (= res!673957 (= lt!444132 lt!444134))))

(assert (=> b!1004335 (= lt!444134 (Intermediate!9448 false resIndex!38 resX!38))))

(assert (=> b!1004335 (= lt!444132 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30516 a!3219) j!170) mask!3464) (select (arr!30516 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004336 () Bool)

(declare-fun res!673960 () Bool)

(assert (=> b!1004336 (=> (not res!673960) (not e!565584))))

(assert (=> b!1004336 (= res!673960 (validKeyInArray!0 k!2224))))

(declare-fun b!1004337 () Bool)

(declare-fun res!673968 () Bool)

(assert (=> b!1004337 (=> (not res!673968) (not e!565580))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63389 (_ BitVec 32)) Bool)

(assert (=> b!1004337 (= res!673968 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!673961 () Bool)

(assert (=> start!86636 (=> (not res!673961) (not e!565584))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86636 (= res!673961 (validMask!0 mask!3464))))

(assert (=> start!86636 e!565584))

(declare-fun array_inv!23506 (array!63389) Bool)

(assert (=> start!86636 (array_inv!23506 a!3219)))

(assert (=> start!86636 true))

(declare-fun b!1004338 () Bool)

(declare-fun res!673970 () Bool)

(assert (=> b!1004338 (=> (not res!673970) (not e!565580))))

(assert (=> b!1004338 (= res!673970 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31019 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31019 a!3219))))))

(assert (= (and start!86636 res!673961) b!1004333))

(assert (= (and b!1004333 res!673963) b!1004327))

(assert (= (and b!1004327 res!673969) b!1004336))

(assert (= (and b!1004336 res!673960) b!1004330))

(assert (= (and b!1004330 res!673972) b!1004326))

(assert (= (and b!1004326 res!673959) b!1004337))

(assert (= (and b!1004337 res!673968) b!1004329))

(assert (= (and b!1004329 res!673962) b!1004338))

(assert (= (and b!1004338 res!673970) b!1004335))

(assert (= (and b!1004335 res!673957) b!1004323))

(assert (= (and b!1004323 res!673965) b!1004331))

(assert (= (and b!1004331 res!673964) b!1004325))

(assert (= (and b!1004325 res!673966) b!1004332))

(assert (= (and b!1004332 res!673967) b!1004328))

(assert (= (and b!1004328 res!673971) b!1004324))

(assert (= (and b!1004324 res!673958) b!1004334))

(declare-fun m!929981 () Bool)

(assert (=> b!1004336 m!929981))

(declare-fun m!929983 () Bool)

(assert (=> b!1004323 m!929983))

(assert (=> b!1004323 m!929983))

(declare-fun m!929985 () Bool)

(assert (=> b!1004323 m!929985))

(assert (=> b!1004327 m!929983))

(assert (=> b!1004327 m!929983))

(declare-fun m!929987 () Bool)

(assert (=> b!1004327 m!929987))

(declare-fun m!929989 () Bool)

(assert (=> b!1004325 m!929989))

(declare-fun m!929991 () Bool)

(assert (=> b!1004330 m!929991))

(declare-fun m!929993 () Bool)

(assert (=> b!1004329 m!929993))

(declare-fun m!929995 () Bool)

(assert (=> b!1004328 m!929995))

(assert (=> b!1004335 m!929983))

(assert (=> b!1004335 m!929983))

(declare-fun m!929997 () Bool)

(assert (=> b!1004335 m!929997))

(assert (=> b!1004335 m!929997))

(assert (=> b!1004335 m!929983))

(declare-fun m!929999 () Bool)

(assert (=> b!1004335 m!929999))

(declare-fun m!930001 () Bool)

(assert (=> b!1004326 m!930001))

(declare-fun m!930003 () Bool)

(assert (=> start!86636 m!930003))

(declare-fun m!930005 () Bool)

(assert (=> start!86636 m!930005))

(declare-fun m!930007 () Bool)

(assert (=> b!1004331 m!930007))

(assert (=> b!1004331 m!930007))

(declare-fun m!930009 () Bool)

(assert (=> b!1004331 m!930009))

(declare-fun m!930011 () Bool)

(assert (=> b!1004331 m!930011))

(declare-fun m!930013 () Bool)

(assert (=> b!1004331 m!930013))

(assert (=> b!1004324 m!929983))

(assert (=> b!1004324 m!929983))

(declare-fun m!930015 () Bool)

(assert (=> b!1004324 m!930015))

(declare-fun m!930017 () Bool)

(assert (=> b!1004334 m!930017))

(declare-fun m!930019 () Bool)

(assert (=> b!1004337 m!930019))

(push 1)

