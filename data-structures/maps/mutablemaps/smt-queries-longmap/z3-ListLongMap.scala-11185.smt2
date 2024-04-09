; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130776 () Bool)

(assert start!130776)

(declare-fun b!1533225 () Bool)

(declare-fun res!1050454 () Bool)

(declare-fun e!854165 () Bool)

(assert (=> b!1533225 (=> (not res!1050454) (not e!854165))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!101801 0))(
  ( (array!101802 (arr!49112 (Array (_ BitVec 32) (_ BitVec 64))) (size!49663 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101801)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1533225 (= res!1050454 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49663 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49663 a!2792)) (= (select (arr!49112 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1050453 () Bool)

(assert (=> start!130776 (=> (not res!1050453) (not e!854165))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130776 (= res!1050453 (validMask!0 mask!2480))))

(assert (=> start!130776 e!854165))

(assert (=> start!130776 true))

(declare-fun array_inv!38057 (array!101801) Bool)

(assert (=> start!130776 (array_inv!38057 a!2792)))

(declare-fun b!1533226 () Bool)

(declare-fun res!1050456 () Bool)

(assert (=> b!1533226 (=> (not res!1050456) (not e!854165))))

(declare-fun j!64 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13267 0))(
  ( (MissingZero!13267 (index!55462 (_ BitVec 32))) (Found!13267 (index!55463 (_ BitVec 32))) (Intermediate!13267 (undefined!14079 Bool) (index!55464 (_ BitVec 32)) (x!137240 (_ BitVec 32))) (Undefined!13267) (MissingVacant!13267 (index!55465 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101801 (_ BitVec 32)) SeekEntryResult!13267)

(assert (=> b!1533226 (= res!1050456 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49112 a!2792) j!64) a!2792 mask!2480) (Found!13267 j!64)))))

(declare-fun b!1533227 () Bool)

(declare-fun res!1050449 () Bool)

(assert (=> b!1533227 (=> (not res!1050449) (not e!854165))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1533227 (= res!1050449 (and (= (size!49663 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49663 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49663 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533228 () Bool)

(declare-fun res!1050452 () Bool)

(assert (=> b!1533228 (=> (not res!1050452) (not e!854165))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533228 (= res!1050452 (validKeyInArray!0 (select (arr!49112 a!2792) i!951)))))

(declare-fun b!1533229 () Bool)

(declare-fun res!1050455 () Bool)

(assert (=> b!1533229 (=> (not res!1050455) (not e!854165))))

(assert (=> b!1533229 (= res!1050455 (validKeyInArray!0 (select (arr!49112 a!2792) j!64)))))

(declare-fun b!1533230 () Bool)

(declare-fun res!1050451 () Bool)

(assert (=> b!1533230 (=> (not res!1050451) (not e!854165))))

(declare-datatypes ((List!35766 0))(
  ( (Nil!35763) (Cons!35762 (h!37208 (_ BitVec 64)) (t!50467 List!35766)) )
))
(declare-fun arrayNoDuplicates!0 (array!101801 (_ BitVec 32) List!35766) Bool)

(assert (=> b!1533230 (= res!1050451 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35763))))

(declare-fun b!1533231 () Bool)

(declare-fun res!1050450 () Bool)

(assert (=> b!1533231 (=> (not res!1050450) (not e!854165))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101801 (_ BitVec 32)) Bool)

(assert (=> b!1533231 (= res!1050450 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1533232 () Bool)

(assert (=> b!1533232 (= e!854165 (and (= (select (arr!49112 a!2792) index!463) (select (arr!49112 a!2792) j!64)) (bvsge mask!2480 #b00000000000000000000000000000000) (bvsge index!463 (bvadd #b00000000000000000000000000000001 mask!2480))))))

(assert (= (and start!130776 res!1050453) b!1533227))

(assert (= (and b!1533227 res!1050449) b!1533228))

(assert (= (and b!1533228 res!1050452) b!1533229))

(assert (= (and b!1533229 res!1050455) b!1533231))

(assert (= (and b!1533231 res!1050450) b!1533230))

(assert (= (and b!1533230 res!1050451) b!1533225))

(assert (= (and b!1533225 res!1050454) b!1533226))

(assert (= (and b!1533226 res!1050456) b!1533232))

(declare-fun m!1415971 () Bool)

(assert (=> b!1533230 m!1415971))

(declare-fun m!1415973 () Bool)

(assert (=> b!1533226 m!1415973))

(assert (=> b!1533226 m!1415973))

(declare-fun m!1415975 () Bool)

(assert (=> b!1533226 m!1415975))

(assert (=> b!1533229 m!1415973))

(assert (=> b!1533229 m!1415973))

(declare-fun m!1415977 () Bool)

(assert (=> b!1533229 m!1415977))

(declare-fun m!1415979 () Bool)

(assert (=> b!1533232 m!1415979))

(assert (=> b!1533232 m!1415973))

(declare-fun m!1415981 () Bool)

(assert (=> b!1533225 m!1415981))

(declare-fun m!1415983 () Bool)

(assert (=> b!1533231 m!1415983))

(declare-fun m!1415985 () Bool)

(assert (=> start!130776 m!1415985))

(declare-fun m!1415987 () Bool)

(assert (=> start!130776 m!1415987))

(declare-fun m!1415989 () Bool)

(assert (=> b!1533228 m!1415989))

(assert (=> b!1533228 m!1415989))

(declare-fun m!1415991 () Bool)

(assert (=> b!1533228 m!1415991))

(check-sat (not b!1533229) (not b!1533226) (not start!130776) (not b!1533231) (not b!1533230) (not b!1533228))
(check-sat)
