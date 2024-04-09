; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86612 () Bool)

(assert start!86612)

(declare-fun b!1003747 () Bool)

(declare-fun res!673382 () Bool)

(declare-fun e!565330 () Bool)

(assert (=> b!1003747 (=> (not res!673382) (not e!565330))))

(declare-datatypes ((array!63365 0))(
  ( (array!63366 (arr!30504 (Array (_ BitVec 32) (_ BitVec 64))) (size!31007 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63365)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1003747 (= res!673382 (validKeyInArray!0 (select (arr!30504 a!3219) j!170)))))

(declare-fun b!1003748 () Bool)

(declare-fun res!673388 () Bool)

(declare-fun e!565333 () Bool)

(assert (=> b!1003748 (=> (not res!673388) (not e!565333))))

(declare-datatypes ((List!21306 0))(
  ( (Nil!21303) (Cons!21302 (h!22479 (_ BitVec 64)) (t!30315 List!21306)) )
))
(declare-fun arrayNoDuplicates!0 (array!63365 (_ BitVec 32) List!21306) Bool)

(assert (=> b!1003748 (= res!673388 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21303))))

(declare-fun b!1003749 () Bool)

(assert (=> b!1003749 (= e!565330 e!565333)))

(declare-fun res!673385 () Bool)

(assert (=> b!1003749 (=> (not res!673385) (not e!565333))))

(declare-datatypes ((SeekEntryResult!9436 0))(
  ( (MissingZero!9436 (index!40114 (_ BitVec 32))) (Found!9436 (index!40115 (_ BitVec 32))) (Intermediate!9436 (undefined!10248 Bool) (index!40116 (_ BitVec 32)) (x!87545 (_ BitVec 32))) (Undefined!9436) (MissingVacant!9436 (index!40117 (_ BitVec 32))) )
))
(declare-fun lt!443840 () SeekEntryResult!9436)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1003749 (= res!673385 (or (= lt!443840 (MissingVacant!9436 i!1194)) (= lt!443840 (MissingZero!9436 i!1194))))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63365 (_ BitVec 32)) SeekEntryResult!9436)

(assert (=> b!1003749 (= lt!443840 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1003750 () Bool)

(declare-fun res!673384 () Bool)

(assert (=> b!1003750 (=> (not res!673384) (not e!565333))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63365 (_ BitVec 32)) Bool)

(assert (=> b!1003750 (= res!673384 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1003751 () Bool)

(declare-fun e!565334 () Bool)

(assert (=> b!1003751 (= e!565334 false)))

(declare-fun lt!443846 () SeekEntryResult!9436)

(declare-fun lt!443843 () (_ BitVec 32))

(declare-fun lt!443847 () array!63365)

(declare-fun lt!443845 () (_ BitVec 64))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63365 (_ BitVec 32)) SeekEntryResult!9436)

(assert (=> b!1003751 (= lt!443846 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443843 lt!443845 lt!443847 mask!3464))))

(declare-fun b!1003752 () Bool)

(declare-fun res!673383 () Bool)

(assert (=> b!1003752 (=> (not res!673383) (not e!565333))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1003752 (= res!673383 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31007 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31007 a!3219))))))

(declare-fun b!1003754 () Bool)

(declare-fun e!565328 () Bool)

(declare-fun e!565332 () Bool)

(assert (=> b!1003754 (= e!565328 e!565332)))

(declare-fun res!673391 () Bool)

(assert (=> b!1003754 (=> (not res!673391) (not e!565332))))

(declare-fun lt!443841 () SeekEntryResult!9436)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003754 (= res!673391 (not (= lt!443841 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443845 mask!3464) lt!443845 lt!443847 mask!3464))))))

(assert (=> b!1003754 (= lt!443845 (select (store (arr!30504 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1003754 (= lt!443847 (array!63366 (store (arr!30504 a!3219) i!1194 k!2224) (size!31007 a!3219)))))

(declare-fun b!1003755 () Bool)

(declare-fun res!673396 () Bool)

(assert (=> b!1003755 (=> (not res!673396) (not e!565334))))

(declare-fun lt!443844 () SeekEntryResult!9436)

(assert (=> b!1003755 (= res!673396 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443843 (select (arr!30504 a!3219) j!170) a!3219 mask!3464) lt!443844))))

(declare-fun b!1003756 () Bool)

(declare-fun e!565329 () Bool)

(assert (=> b!1003756 (= e!565329 e!565328)))

(declare-fun res!673389 () Bool)

(assert (=> b!1003756 (=> (not res!673389) (not e!565328))))

(declare-fun lt!443842 () SeekEntryResult!9436)

(assert (=> b!1003756 (= res!673389 (= lt!443842 lt!443844))))

(assert (=> b!1003756 (= lt!443842 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30504 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003757 () Bool)

(assert (=> b!1003757 (= e!565332 e!565334)))

(declare-fun res!673381 () Bool)

(assert (=> b!1003757 (=> (not res!673381) (not e!565334))))

(assert (=> b!1003757 (= res!673381 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443843 #b00000000000000000000000000000000) (bvslt lt!443843 (size!31007 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003757 (= lt!443843 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1003758 () Bool)

(declare-fun res!673387 () Bool)

(assert (=> b!1003758 (=> (not res!673387) (not e!565330))))

(declare-fun arrayContainsKey!0 (array!63365 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1003758 (= res!673387 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1003759 () Bool)

(declare-fun res!673393 () Bool)

(assert (=> b!1003759 (=> (not res!673393) (not e!565332))))

(assert (=> b!1003759 (= res!673393 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1003760 () Bool)

(assert (=> b!1003760 (= e!565333 e!565329)))

(declare-fun res!673386 () Bool)

(assert (=> b!1003760 (=> (not res!673386) (not e!565329))))

(assert (=> b!1003760 (= res!673386 (= lt!443841 lt!443844))))

(assert (=> b!1003760 (= lt!443844 (Intermediate!9436 false resIndex!38 resX!38))))

(assert (=> b!1003760 (= lt!443841 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30504 a!3219) j!170) mask!3464) (select (arr!30504 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003761 () Bool)

(declare-fun res!673392 () Bool)

(assert (=> b!1003761 (=> (not res!673392) (not e!565330))))

(assert (=> b!1003761 (= res!673392 (and (= (size!31007 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31007 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31007 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1003762 () Bool)

(declare-fun res!673390 () Bool)

(assert (=> b!1003762 (=> (not res!673390) (not e!565332))))

(assert (=> b!1003762 (= res!673390 (not (= lt!443842 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443845 lt!443847 mask!3464))))))

(declare-fun res!673395 () Bool)

(assert (=> start!86612 (=> (not res!673395) (not e!565330))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86612 (= res!673395 (validMask!0 mask!3464))))

(assert (=> start!86612 e!565330))

(declare-fun array_inv!23494 (array!63365) Bool)

(assert (=> start!86612 (array_inv!23494 a!3219)))

(assert (=> start!86612 true))

(declare-fun b!1003753 () Bool)

(declare-fun res!673394 () Bool)

(assert (=> b!1003753 (=> (not res!673394) (not e!565330))))

(assert (=> b!1003753 (= res!673394 (validKeyInArray!0 k!2224))))

(assert (= (and start!86612 res!673395) b!1003761))

(assert (= (and b!1003761 res!673392) b!1003747))

(assert (= (and b!1003747 res!673382) b!1003753))

(assert (= (and b!1003753 res!673394) b!1003758))

(assert (= (and b!1003758 res!673387) b!1003749))

(assert (= (and b!1003749 res!673385) b!1003750))

(assert (= (and b!1003750 res!673384) b!1003748))

(assert (= (and b!1003748 res!673388) b!1003752))

(assert (= (and b!1003752 res!673383) b!1003760))

(assert (= (and b!1003760 res!673386) b!1003756))

(assert (= (and b!1003756 res!673389) b!1003754))

(assert (= (and b!1003754 res!673391) b!1003762))

(assert (= (and b!1003762 res!673390) b!1003759))

(assert (= (and b!1003759 res!673393) b!1003757))

(assert (= (and b!1003757 res!673381) b!1003755))

(assert (= (and b!1003755 res!673396) b!1003751))

(declare-fun m!929501 () Bool)

(assert (=> b!1003748 m!929501))

(declare-fun m!929503 () Bool)

(assert (=> start!86612 m!929503))

(declare-fun m!929505 () Bool)

(assert (=> start!86612 m!929505))

(declare-fun m!929507 () Bool)

(assert (=> b!1003758 m!929507))

(declare-fun m!929509 () Bool)

(assert (=> b!1003750 m!929509))

(declare-fun m!929511 () Bool)

(assert (=> b!1003757 m!929511))

(declare-fun m!929513 () Bool)

(assert (=> b!1003762 m!929513))

(declare-fun m!929515 () Bool)

(assert (=> b!1003747 m!929515))

(assert (=> b!1003747 m!929515))

(declare-fun m!929517 () Bool)

(assert (=> b!1003747 m!929517))

(declare-fun m!929519 () Bool)

(assert (=> b!1003749 m!929519))

(declare-fun m!929521 () Bool)

(assert (=> b!1003754 m!929521))

(assert (=> b!1003754 m!929521))

(declare-fun m!929523 () Bool)

(assert (=> b!1003754 m!929523))

(declare-fun m!929525 () Bool)

(assert (=> b!1003754 m!929525))

(declare-fun m!929527 () Bool)

(assert (=> b!1003754 m!929527))

(declare-fun m!929529 () Bool)

(assert (=> b!1003753 m!929529))

(assert (=> b!1003756 m!929515))

(assert (=> b!1003756 m!929515))

(declare-fun m!929531 () Bool)

(assert (=> b!1003756 m!929531))

(assert (=> b!1003760 m!929515))

(assert (=> b!1003760 m!929515))

(declare-fun m!929533 () Bool)

(assert (=> b!1003760 m!929533))

(assert (=> b!1003760 m!929533))

(assert (=> b!1003760 m!929515))

(declare-fun m!929535 () Bool)

(assert (=> b!1003760 m!929535))

(declare-fun m!929537 () Bool)

(assert (=> b!1003751 m!929537))

(assert (=> b!1003755 m!929515))

(assert (=> b!1003755 m!929515))

(declare-fun m!929539 () Bool)

(assert (=> b!1003755 m!929539))

(push 1)

(assert (not b!1003760))

(assert (not b!1003749))

(assert (not b!1003753))

(assert (not b!1003750))

(assert (not b!1003751))

(assert (not b!1003755))

(assert (not b!1003757))

(assert (not b!1003748))

(assert (not start!86612))

(assert (not b!1003756))

(assert (not b!1003754))

(assert (not b!1003762))

(assert (not b!1003758))

(assert (not b!1003747))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

