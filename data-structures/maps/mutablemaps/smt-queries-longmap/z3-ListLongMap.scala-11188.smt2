; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130794 () Bool)

(assert start!130794)

(declare-fun b!1533432 () Bool)

(declare-fun res!1050661 () Bool)

(declare-fun e!854219 () Bool)

(assert (=> b!1533432 (=> (not res!1050661) (not e!854219))))

(declare-datatypes ((array!101819 0))(
  ( (array!101820 (arr!49121 (Array (_ BitVec 32) (_ BitVec 64))) (size!49672 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101819)

(declare-datatypes ((List!35775 0))(
  ( (Nil!35772) (Cons!35771 (h!37217 (_ BitVec 64)) (t!50476 List!35775)) )
))
(declare-fun arrayNoDuplicates!0 (array!101819 (_ BitVec 32) List!35775) Bool)

(assert (=> b!1533432 (= res!1050661 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35772))))

(declare-fun b!1533434 () Bool)

(declare-fun res!1050660 () Bool)

(assert (=> b!1533434 (=> (not res!1050660) (not e!854219))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13276 0))(
  ( (MissingZero!13276 (index!55498 (_ BitVec 32))) (Found!13276 (index!55499 (_ BitVec 32))) (Intermediate!13276 (undefined!14088 Bool) (index!55500 (_ BitVec 32)) (x!137273 (_ BitVec 32))) (Undefined!13276) (MissingVacant!13276 (index!55501 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101819 (_ BitVec 32)) SeekEntryResult!13276)

(assert (=> b!1533434 (= res!1050660 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49121 a!2792) j!64) a!2792 mask!2480) (Found!13276 j!64)))))

(declare-fun b!1533435 () Bool)

(declare-fun res!1050659 () Bool)

(assert (=> b!1533435 (=> (not res!1050659) (not e!854219))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533435 (= res!1050659 (validKeyInArray!0 (select (arr!49121 a!2792) j!64)))))

(declare-fun b!1533436 () Bool)

(declare-fun res!1050656 () Bool)

(assert (=> b!1533436 (=> (not res!1050656) (not e!854219))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1533436 (= res!1050656 (and (= (size!49672 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49672 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49672 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533437 () Bool)

(declare-fun res!1050658 () Bool)

(assert (=> b!1533437 (=> (not res!1050658) (not e!854219))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101819 (_ BitVec 32)) Bool)

(assert (=> b!1533437 (= res!1050658 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1533438 () Bool)

(assert (=> b!1533438 (= e!854219 (and (= (select (arr!49121 a!2792) index!463) (select (arr!49121 a!2792) j!64)) (bvsge mask!2480 #b00000000000000000000000000000000) (bvslt index!463 (bvadd #b00000000000000000000000000000001 mask!2480)) (bvslt vacantIndex!5 (bvadd #b00000000000000000000000000000001 mask!2480)) (not (= (select (store (arr!49121 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1533439 () Bool)

(declare-fun res!1050662 () Bool)

(assert (=> b!1533439 (=> (not res!1050662) (not e!854219))))

(assert (=> b!1533439 (= res!1050662 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49672 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49672 a!2792)) (= (select (arr!49121 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1050663 () Bool)

(assert (=> start!130794 (=> (not res!1050663) (not e!854219))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130794 (= res!1050663 (validMask!0 mask!2480))))

(assert (=> start!130794 e!854219))

(assert (=> start!130794 true))

(declare-fun array_inv!38066 (array!101819) Bool)

(assert (=> start!130794 (array_inv!38066 a!2792)))

(declare-fun b!1533433 () Bool)

(declare-fun res!1050657 () Bool)

(assert (=> b!1533433 (=> (not res!1050657) (not e!854219))))

(assert (=> b!1533433 (= res!1050657 (validKeyInArray!0 (select (arr!49121 a!2792) i!951)))))

(assert (= (and start!130794 res!1050663) b!1533436))

(assert (= (and b!1533436 res!1050656) b!1533433))

(assert (= (and b!1533433 res!1050657) b!1533435))

(assert (= (and b!1533435 res!1050659) b!1533437))

(assert (= (and b!1533437 res!1050658) b!1533432))

(assert (= (and b!1533432 res!1050661) b!1533439))

(assert (= (and b!1533439 res!1050662) b!1533434))

(assert (= (and b!1533434 res!1050660) b!1533438))

(declare-fun m!1416167 () Bool)

(assert (=> b!1533435 m!1416167))

(assert (=> b!1533435 m!1416167))

(declare-fun m!1416169 () Bool)

(assert (=> b!1533435 m!1416169))

(declare-fun m!1416171 () Bool)

(assert (=> b!1533438 m!1416171))

(assert (=> b!1533438 m!1416167))

(declare-fun m!1416173 () Bool)

(assert (=> b!1533438 m!1416173))

(declare-fun m!1416175 () Bool)

(assert (=> b!1533438 m!1416175))

(declare-fun m!1416177 () Bool)

(assert (=> b!1533439 m!1416177))

(declare-fun m!1416179 () Bool)

(assert (=> start!130794 m!1416179))

(declare-fun m!1416181 () Bool)

(assert (=> start!130794 m!1416181))

(declare-fun m!1416183 () Bool)

(assert (=> b!1533432 m!1416183))

(declare-fun m!1416185 () Bool)

(assert (=> b!1533437 m!1416185))

(assert (=> b!1533434 m!1416167))

(assert (=> b!1533434 m!1416167))

(declare-fun m!1416187 () Bool)

(assert (=> b!1533434 m!1416187))

(declare-fun m!1416189 () Bool)

(assert (=> b!1533433 m!1416189))

(assert (=> b!1533433 m!1416189))

(declare-fun m!1416191 () Bool)

(assert (=> b!1533433 m!1416191))

(check-sat (not start!130794) (not b!1533437) (not b!1533435) (not b!1533434) (not b!1533432) (not b!1533433))
(check-sat)
