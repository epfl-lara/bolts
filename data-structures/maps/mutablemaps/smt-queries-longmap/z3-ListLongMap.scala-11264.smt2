; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131412 () Bool)

(assert start!131412)

(declare-fun b!1540314 () Bool)

(declare-fun res!1057145 () Bool)

(declare-fun e!856693 () Bool)

(assert (=> b!1540314 (=> (not res!1057145) (not e!856693))))

(declare-datatypes ((array!102287 0))(
  ( (array!102288 (arr!49349 (Array (_ BitVec 32) (_ BitVec 64))) (size!49900 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102287)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1540314 (= res!1057145 (validKeyInArray!0 (select (arr!49349 a!2792) i!951)))))

(declare-fun b!1540315 () Bool)

(declare-fun res!1057143 () Bool)

(assert (=> b!1540315 (=> (not res!1057143) (not e!856693))))

(declare-datatypes ((List!36003 0))(
  ( (Nil!36000) (Cons!35999 (h!37445 (_ BitVec 64)) (t!50704 List!36003)) )
))
(declare-fun arrayNoDuplicates!0 (array!102287 (_ BitVec 32) List!36003) Bool)

(assert (=> b!1540315 (= res!1057143 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!36000))))

(declare-fun b!1540316 () Bool)

(declare-fun res!1057142 () Bool)

(assert (=> b!1540316 (=> (not res!1057142) (not e!856693))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1540316 (= res!1057142 (validKeyInArray!0 (select (arr!49349 a!2792) j!64)))))

(declare-fun b!1540317 () Bool)

(declare-fun res!1057147 () Bool)

(assert (=> b!1540317 (=> (not res!1057147) (not e!856693))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102287 (_ BitVec 32)) Bool)

(assert (=> b!1540317 (= res!1057147 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1540318 () Bool)

(declare-fun res!1057148 () Bool)

(assert (=> b!1540318 (=> (not res!1057148) (not e!856693))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun x!510 () (_ BitVec 32))

(assert (=> b!1540318 (= res!1057148 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49900 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49900 a!2792)) (= (select (arr!49349 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1057146 () Bool)

(assert (=> start!131412 (=> (not res!1057146) (not e!856693))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131412 (= res!1057146 (validMask!0 mask!2480))))

(assert (=> start!131412 e!856693))

(assert (=> start!131412 true))

(declare-fun array_inv!38294 (array!102287) Bool)

(assert (=> start!131412 (array_inv!38294 a!2792)))

(declare-fun b!1540319 () Bool)

(declare-fun e!856694 () Bool)

(declare-fun e!856691 () Bool)

(assert (=> b!1540319 (= e!856694 e!856691)))

(declare-fun res!1057144 () Bool)

(assert (=> b!1540319 (=> (not res!1057144) (not e!856691))))

(declare-datatypes ((SeekEntryResult!13498 0))(
  ( (MissingZero!13498 (index!56386 (_ BitVec 32))) (Found!13498 (index!56387 (_ BitVec 32))) (Intermediate!13498 (undefined!14310 Bool) (index!56388 (_ BitVec 32)) (x!138124 (_ BitVec 32))) (Undefined!13498) (MissingVacant!13498 (index!56389 (_ BitVec 32))) )
))
(declare-fun lt!665270 () SeekEntryResult!13498)

(declare-fun lt!665272 () SeekEntryResult!13498)

(assert (=> b!1540319 (= res!1057144 (= lt!665270 lt!665272))))

(declare-fun lt!665269 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102287 (_ BitVec 32)) SeekEntryResult!13498)

(assert (=> b!1540319 (= lt!665270 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665269 vacantIndex!5 (select (arr!49349 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1540320 () Bool)

(declare-fun e!856692 () Bool)

(assert (=> b!1540320 (= e!856693 e!856692)))

(declare-fun res!1057150 () Bool)

(assert (=> b!1540320 (=> (not res!1057150) (not e!856692))))

(assert (=> b!1540320 (= res!1057150 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49349 a!2792) j!64) a!2792 mask!2480) lt!665272))))

(assert (=> b!1540320 (= lt!665272 (Found!13498 j!64))))

(declare-fun b!1540321 () Bool)

(declare-fun res!1057151 () Bool)

(assert (=> b!1540321 (=> (not res!1057151) (not e!856693))))

(assert (=> b!1540321 (= res!1057151 (and (= (size!49900 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49900 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49900 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1540322 () Bool)

(declare-fun res!1057152 () Bool)

(assert (=> b!1540322 (=> (not res!1057152) (not e!856692))))

(assert (=> b!1540322 (= res!1057152 (not (= (select (arr!49349 a!2792) index!463) (select (arr!49349 a!2792) j!64))))))

(declare-fun b!1540323 () Bool)

(assert (=> b!1540323 (= e!856691 (not true))))

(assert (=> b!1540323 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665269 vacantIndex!5 (select (store (arr!49349 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102288 (store (arr!49349 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49900 a!2792)) mask!2480) lt!665270)))

(declare-datatypes ((Unit!51388 0))(
  ( (Unit!51389) )
))
(declare-fun lt!665271 () Unit!51388)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102287 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51388)

(assert (=> b!1540323 (= lt!665271 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!665269 vacantIndex!5 mask!2480))))

(declare-fun b!1540324 () Bool)

(assert (=> b!1540324 (= e!856692 e!856694)))

(declare-fun res!1057149 () Bool)

(assert (=> b!1540324 (=> (not res!1057149) (not e!856694))))

(assert (=> b!1540324 (= res!1057149 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!665269 #b00000000000000000000000000000000) (bvslt lt!665269 (size!49900 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1540324 (= lt!665269 (nextIndex!0 index!463 x!510 mask!2480))))

(assert (= (and start!131412 res!1057146) b!1540321))

(assert (= (and b!1540321 res!1057151) b!1540314))

(assert (= (and b!1540314 res!1057145) b!1540316))

(assert (= (and b!1540316 res!1057142) b!1540317))

(assert (= (and b!1540317 res!1057147) b!1540315))

(assert (= (and b!1540315 res!1057143) b!1540318))

(assert (= (and b!1540318 res!1057148) b!1540320))

(assert (= (and b!1540320 res!1057150) b!1540322))

(assert (= (and b!1540322 res!1057152) b!1540324))

(assert (= (and b!1540324 res!1057149) b!1540319))

(assert (= (and b!1540319 res!1057144) b!1540323))

(declare-fun m!1422475 () Bool)

(assert (=> start!131412 m!1422475))

(declare-fun m!1422477 () Bool)

(assert (=> start!131412 m!1422477))

(declare-fun m!1422479 () Bool)

(assert (=> b!1540316 m!1422479))

(assert (=> b!1540316 m!1422479))

(declare-fun m!1422481 () Bool)

(assert (=> b!1540316 m!1422481))

(declare-fun m!1422483 () Bool)

(assert (=> b!1540323 m!1422483))

(declare-fun m!1422485 () Bool)

(assert (=> b!1540323 m!1422485))

(assert (=> b!1540323 m!1422485))

(declare-fun m!1422487 () Bool)

(assert (=> b!1540323 m!1422487))

(declare-fun m!1422489 () Bool)

(assert (=> b!1540323 m!1422489))

(declare-fun m!1422491 () Bool)

(assert (=> b!1540324 m!1422491))

(declare-fun m!1422493 () Bool)

(assert (=> b!1540317 m!1422493))

(declare-fun m!1422495 () Bool)

(assert (=> b!1540318 m!1422495))

(declare-fun m!1422497 () Bool)

(assert (=> b!1540314 m!1422497))

(assert (=> b!1540314 m!1422497))

(declare-fun m!1422499 () Bool)

(assert (=> b!1540314 m!1422499))

(declare-fun m!1422501 () Bool)

(assert (=> b!1540315 m!1422501))

(assert (=> b!1540320 m!1422479))

(assert (=> b!1540320 m!1422479))

(declare-fun m!1422503 () Bool)

(assert (=> b!1540320 m!1422503))

(assert (=> b!1540319 m!1422479))

(assert (=> b!1540319 m!1422479))

(declare-fun m!1422505 () Bool)

(assert (=> b!1540319 m!1422505))

(declare-fun m!1422507 () Bool)

(assert (=> b!1540322 m!1422507))

(assert (=> b!1540322 m!1422479))

(check-sat (not b!1540316) (not b!1540319) (not b!1540315) (not b!1540317) (not b!1540324) (not b!1540314) (not start!131412) (not b!1540320) (not b!1540323))
(check-sat)
