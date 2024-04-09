; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130782 () Bool)

(assert start!130782)

(declare-fun b!1533292 () Bool)

(declare-fun res!1050518 () Bool)

(declare-fun e!854182 () Bool)

(assert (=> b!1533292 (=> (not res!1050518) (not e!854182))))

(declare-datatypes ((array!101807 0))(
  ( (array!101808 (arr!49115 (Array (_ BitVec 32) (_ BitVec 64))) (size!49666 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101807)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533292 (= res!1050518 (validKeyInArray!0 (select (arr!49115 a!2792) i!951)))))

(declare-fun b!1533293 () Bool)

(declare-fun res!1050519 () Bool)

(assert (=> b!1533293 (=> (not res!1050519) (not e!854182))))

(declare-datatypes ((List!35769 0))(
  ( (Nil!35766) (Cons!35765 (h!37211 (_ BitVec 64)) (t!50470 List!35769)) )
))
(declare-fun arrayNoDuplicates!0 (array!101807 (_ BitVec 32) List!35769) Bool)

(assert (=> b!1533293 (= res!1050519 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35766))))

(declare-fun b!1533294 () Bool)

(declare-fun res!1050521 () Bool)

(assert (=> b!1533294 (=> (not res!1050521) (not e!854182))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(assert (=> b!1533294 (= res!1050521 (and (= (size!49666 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49666 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49666 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533295 () Bool)

(declare-fun res!1050520 () Bool)

(assert (=> b!1533295 (=> (not res!1050520) (not e!854182))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101807 (_ BitVec 32)) Bool)

(assert (=> b!1533295 (= res!1050520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1533296 () Bool)

(declare-fun res!1050522 () Bool)

(assert (=> b!1533296 (=> (not res!1050522) (not e!854182))))

(assert (=> b!1533296 (= res!1050522 (validKeyInArray!0 (select (arr!49115 a!2792) j!64)))))

(declare-fun res!1050516 () Bool)

(assert (=> start!130782 (=> (not res!1050516) (not e!854182))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130782 (= res!1050516 (validMask!0 mask!2480))))

(assert (=> start!130782 e!854182))

(assert (=> start!130782 true))

(declare-fun array_inv!38060 (array!101807) Bool)

(assert (=> start!130782 (array_inv!38060 a!2792)))

(declare-fun b!1533297 () Bool)

(declare-fun res!1050517 () Bool)

(assert (=> b!1533297 (=> (not res!1050517) (not e!854182))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1533297 (= res!1050517 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49666 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49666 a!2792)) (= (select (arr!49115 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533298 () Bool)

(assert (=> b!1533298 (= e!854182 false)))

(declare-datatypes ((SeekEntryResult!13270 0))(
  ( (MissingZero!13270 (index!55474 (_ BitVec 32))) (Found!13270 (index!55475 (_ BitVec 32))) (Intermediate!13270 (undefined!14082 Bool) (index!55476 (_ BitVec 32)) (x!137251 (_ BitVec 32))) (Undefined!13270) (MissingVacant!13270 (index!55477 (_ BitVec 32))) )
))
(declare-fun lt!663721 () SeekEntryResult!13270)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101807 (_ BitVec 32)) SeekEntryResult!13270)

(assert (=> b!1533298 (= lt!663721 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49115 a!2792) j!64) a!2792 mask!2480))))

(assert (= (and start!130782 res!1050516) b!1533294))

(assert (= (and b!1533294 res!1050521) b!1533292))

(assert (= (and b!1533292 res!1050518) b!1533296))

(assert (= (and b!1533296 res!1050522) b!1533295))

(assert (= (and b!1533295 res!1050520) b!1533293))

(assert (= (and b!1533293 res!1050519) b!1533297))

(assert (= (and b!1533297 res!1050517) b!1533298))

(declare-fun m!1416035 () Bool)

(assert (=> b!1533295 m!1416035))

(declare-fun m!1416037 () Bool)

(assert (=> b!1533297 m!1416037))

(declare-fun m!1416039 () Bool)

(assert (=> b!1533292 m!1416039))

(assert (=> b!1533292 m!1416039))

(declare-fun m!1416041 () Bool)

(assert (=> b!1533292 m!1416041))

(declare-fun m!1416043 () Bool)

(assert (=> b!1533293 m!1416043))

(declare-fun m!1416045 () Bool)

(assert (=> b!1533296 m!1416045))

(assert (=> b!1533296 m!1416045))

(declare-fun m!1416047 () Bool)

(assert (=> b!1533296 m!1416047))

(assert (=> b!1533298 m!1416045))

(assert (=> b!1533298 m!1416045))

(declare-fun m!1416049 () Bool)

(assert (=> b!1533298 m!1416049))

(declare-fun m!1416051 () Bool)

(assert (=> start!130782 m!1416051))

(declare-fun m!1416053 () Bool)

(assert (=> start!130782 m!1416053))

(check-sat (not start!130782) (not b!1533292) (not b!1533293) (not b!1533296) (not b!1533298) (not b!1533295))
