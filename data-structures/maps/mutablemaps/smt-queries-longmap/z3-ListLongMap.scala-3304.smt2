; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45780 () Bool)

(assert start!45780)

(declare-fun b!506293 () Bool)

(declare-fun res!307410 () Bool)

(declare-fun e!296337 () Bool)

(assert (=> b!506293 (=> (not res!307410) (not e!296337))))

(declare-datatypes ((array!32496 0))(
  ( (array!32497 (arr!15625 (Array (_ BitVec 32) (_ BitVec 64))) (size!15989 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32496)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32496 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!506293 (= res!307410 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!506294 () Bool)

(declare-fun res!307412 () Bool)

(assert (=> b!506294 (=> (not res!307412) (not e!296337))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!506294 (= res!307412 (validKeyInArray!0 (select (arr!15625 a!3235) j!176)))))

(declare-fun b!506295 () Bool)

(declare-fun e!296340 () Bool)

(assert (=> b!506295 (= e!296340 true)))

(assert (=> b!506295 false))

(declare-fun b!506296 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!296336 () Bool)

(declare-datatypes ((SeekEntryResult!4099 0))(
  ( (MissingZero!4099 (index!18584 (_ BitVec 32))) (Found!4099 (index!18585 (_ BitVec 32))) (Intermediate!4099 (undefined!4911 Bool) (index!18586 (_ BitVec 32)) (x!47615 (_ BitVec 32))) (Undefined!4099) (MissingVacant!4099 (index!18587 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32496 (_ BitVec 32)) SeekEntryResult!4099)

(assert (=> b!506296 (= e!296336 (= (seekEntryOrOpen!0 (select (arr!15625 a!3235) j!176) a!3235 mask!3524) (Found!4099 j!176)))))

(declare-fun b!506297 () Bool)

(declare-fun res!307411 () Bool)

(declare-fun e!296338 () Bool)

(assert (=> b!506297 (=> (not res!307411) (not e!296338))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32496 (_ BitVec 32)) Bool)

(assert (=> b!506297 (= res!307411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!506298 () Bool)

(assert (=> b!506298 (= e!296337 e!296338)))

(declare-fun res!307403 () Bool)

(assert (=> b!506298 (=> (not res!307403) (not e!296338))))

(declare-fun lt!231085 () SeekEntryResult!4099)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!506298 (= res!307403 (or (= lt!231085 (MissingZero!4099 i!1204)) (= lt!231085 (MissingVacant!4099 i!1204))))))

(assert (=> b!506298 (= lt!231085 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!506300 () Bool)

(declare-fun res!307405 () Bool)

(assert (=> b!506300 (=> (not res!307405) (not e!296337))))

(assert (=> b!506300 (= res!307405 (validKeyInArray!0 k0!2280))))

(declare-fun b!506301 () Bool)

(declare-fun e!296341 () Bool)

(assert (=> b!506301 (= e!296338 (not e!296341))))

(declare-fun res!307408 () Bool)

(assert (=> b!506301 (=> res!307408 e!296341)))

(declare-fun lt!231086 () (_ BitVec 32))

(declare-fun lt!231081 () SeekEntryResult!4099)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32496 (_ BitVec 32)) SeekEntryResult!4099)

(assert (=> b!506301 (= res!307408 (= lt!231081 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231086 (select (store (arr!15625 a!3235) i!1204 k0!2280) j!176) (array!32497 (store (arr!15625 a!3235) i!1204 k0!2280) (size!15989 a!3235)) mask!3524)))))

(declare-fun lt!231084 () (_ BitVec 32))

(assert (=> b!506301 (= lt!231081 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231084 (select (arr!15625 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!506301 (= lt!231086 (toIndex!0 (select (store (arr!15625 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!506301 (= lt!231084 (toIndex!0 (select (arr!15625 a!3235) j!176) mask!3524))))

(assert (=> b!506301 e!296336))

(declare-fun res!307402 () Bool)

(assert (=> b!506301 (=> (not res!307402) (not e!296336))))

(assert (=> b!506301 (= res!307402 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15478 0))(
  ( (Unit!15479) )
))
(declare-fun lt!231083 () Unit!15478)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32496 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15478)

(assert (=> b!506301 (= lt!231083 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!506302 () Bool)

(declare-fun res!307407 () Bool)

(assert (=> b!506302 (=> (not res!307407) (not e!296337))))

(assert (=> b!506302 (= res!307407 (and (= (size!15989 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15989 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15989 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!506303 () Bool)

(assert (=> b!506303 (= e!296341 e!296340)))

(declare-fun res!307404 () Bool)

(assert (=> b!506303 (=> res!307404 e!296340)))

(declare-fun lt!231082 () Bool)

(assert (=> b!506303 (= res!307404 (or (and (not lt!231082) (undefined!4911 lt!231081)) (and (not lt!231082) (not (undefined!4911 lt!231081)))))))

(get-info :version)

(assert (=> b!506303 (= lt!231082 (not ((_ is Intermediate!4099) lt!231081)))))

(declare-fun res!307406 () Bool)

(assert (=> start!45780 (=> (not res!307406) (not e!296337))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45780 (= res!307406 (validMask!0 mask!3524))))

(assert (=> start!45780 e!296337))

(assert (=> start!45780 true))

(declare-fun array_inv!11399 (array!32496) Bool)

(assert (=> start!45780 (array_inv!11399 a!3235)))

(declare-fun b!506299 () Bool)

(declare-fun res!307409 () Bool)

(assert (=> b!506299 (=> (not res!307409) (not e!296338))))

(declare-datatypes ((List!9836 0))(
  ( (Nil!9833) (Cons!9832 (h!10709 (_ BitVec 64)) (t!16072 List!9836)) )
))
(declare-fun arrayNoDuplicates!0 (array!32496 (_ BitVec 32) List!9836) Bool)

(assert (=> b!506299 (= res!307409 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9833))))

(assert (= (and start!45780 res!307406) b!506302))

(assert (= (and b!506302 res!307407) b!506294))

(assert (= (and b!506294 res!307412) b!506300))

(assert (= (and b!506300 res!307405) b!506293))

(assert (= (and b!506293 res!307410) b!506298))

(assert (= (and b!506298 res!307403) b!506297))

(assert (= (and b!506297 res!307411) b!506299))

(assert (= (and b!506299 res!307409) b!506301))

(assert (= (and b!506301 res!307402) b!506296))

(assert (= (and b!506301 (not res!307408)) b!506303))

(assert (= (and b!506303 (not res!307404)) b!506295))

(declare-fun m!486997 () Bool)

(assert (=> b!506298 m!486997))

(declare-fun m!486999 () Bool)

(assert (=> b!506294 m!486999))

(assert (=> b!506294 m!486999))

(declare-fun m!487001 () Bool)

(assert (=> b!506294 m!487001))

(declare-fun m!487003 () Bool)

(assert (=> b!506297 m!487003))

(declare-fun m!487005 () Bool)

(assert (=> b!506299 m!487005))

(declare-fun m!487007 () Bool)

(assert (=> b!506293 m!487007))

(declare-fun m!487009 () Bool)

(assert (=> b!506300 m!487009))

(assert (=> b!506301 m!486999))

(declare-fun m!487011 () Bool)

(assert (=> b!506301 m!487011))

(declare-fun m!487013 () Bool)

(assert (=> b!506301 m!487013))

(declare-fun m!487015 () Bool)

(assert (=> b!506301 m!487015))

(declare-fun m!487017 () Bool)

(assert (=> b!506301 m!487017))

(assert (=> b!506301 m!487017))

(declare-fun m!487019 () Bool)

(assert (=> b!506301 m!487019))

(assert (=> b!506301 m!486999))

(declare-fun m!487021 () Bool)

(assert (=> b!506301 m!487021))

(assert (=> b!506301 m!486999))

(declare-fun m!487023 () Bool)

(assert (=> b!506301 m!487023))

(assert (=> b!506301 m!487017))

(declare-fun m!487025 () Bool)

(assert (=> b!506301 m!487025))

(declare-fun m!487027 () Bool)

(assert (=> start!45780 m!487027))

(declare-fun m!487029 () Bool)

(assert (=> start!45780 m!487029))

(assert (=> b!506296 m!486999))

(assert (=> b!506296 m!486999))

(declare-fun m!487031 () Bool)

(assert (=> b!506296 m!487031))

(check-sat (not b!506298) (not start!45780) (not b!506300) (not b!506296) (not b!506301) (not b!506299) (not b!506297) (not b!506293) (not b!506294))
(check-sat)
