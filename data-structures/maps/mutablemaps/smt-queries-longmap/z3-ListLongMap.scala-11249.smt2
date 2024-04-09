; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131196 () Bool)

(assert start!131196)

(declare-fun b!1538585 () Bool)

(declare-fun res!1055702 () Bool)

(declare-fun e!856010 () Bool)

(assert (=> b!1538585 (=> (not res!1055702) (not e!856010))))

(declare-datatypes ((array!102188 0))(
  ( (array!102189 (arr!49304 (Array (_ BitVec 32) (_ BitVec 64))) (size!49855 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102188)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538585 (= res!1055702 (validKeyInArray!0 (select (arr!49304 a!2792) j!64)))))

(declare-fun b!1538587 () Bool)

(assert (=> b!1538587 (= e!856010 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun lt!664852 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538587 (= lt!664852 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1538588 () Bool)

(declare-fun res!1055703 () Bool)

(assert (=> b!1538588 (=> (not res!1055703) (not e!856010))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1538588 (= res!1055703 (and (= (size!49855 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49855 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49855 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1538589 () Bool)

(declare-fun res!1055706 () Bool)

(assert (=> b!1538589 (=> (not res!1055706) (not e!856010))))

(assert (=> b!1538589 (= res!1055706 (not (= (select (arr!49304 a!2792) index!463) (select (arr!49304 a!2792) j!64))))))

(declare-fun b!1538590 () Bool)

(declare-fun res!1055707 () Bool)

(assert (=> b!1538590 (=> (not res!1055707) (not e!856010))))

(declare-datatypes ((List!35958 0))(
  ( (Nil!35955) (Cons!35954 (h!37400 (_ BitVec 64)) (t!50659 List!35958)) )
))
(declare-fun arrayNoDuplicates!0 (array!102188 (_ BitVec 32) List!35958) Bool)

(assert (=> b!1538590 (= res!1055707 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35955))))

(declare-fun b!1538591 () Bool)

(declare-fun res!1055708 () Bool)

(assert (=> b!1538591 (=> (not res!1055708) (not e!856010))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1538591 (= res!1055708 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49855 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49855 a!2792)) (= (select (arr!49304 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1538586 () Bool)

(declare-fun res!1055705 () Bool)

(assert (=> b!1538586 (=> (not res!1055705) (not e!856010))))

(declare-datatypes ((SeekEntryResult!13453 0))(
  ( (MissingZero!13453 (index!56206 (_ BitVec 32))) (Found!13453 (index!56207 (_ BitVec 32))) (Intermediate!13453 (undefined!14265 Bool) (index!56208 (_ BitVec 32)) (x!137941 (_ BitVec 32))) (Undefined!13453) (MissingVacant!13453 (index!56209 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102188 (_ BitVec 32)) SeekEntryResult!13453)

(assert (=> b!1538586 (= res!1055705 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49304 a!2792) j!64) a!2792 mask!2480) (Found!13453 j!64)))))

(declare-fun res!1055709 () Bool)

(assert (=> start!131196 (=> (not res!1055709) (not e!856010))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131196 (= res!1055709 (validMask!0 mask!2480))))

(assert (=> start!131196 e!856010))

(assert (=> start!131196 true))

(declare-fun array_inv!38249 (array!102188) Bool)

(assert (=> start!131196 (array_inv!38249 a!2792)))

(declare-fun b!1538592 () Bool)

(declare-fun res!1055704 () Bool)

(assert (=> b!1538592 (=> (not res!1055704) (not e!856010))))

(assert (=> b!1538592 (= res!1055704 (validKeyInArray!0 (select (arr!49304 a!2792) i!951)))))

(declare-fun b!1538593 () Bool)

(declare-fun res!1055701 () Bool)

(assert (=> b!1538593 (=> (not res!1055701) (not e!856010))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102188 (_ BitVec 32)) Bool)

(assert (=> b!1538593 (= res!1055701 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!131196 res!1055709) b!1538588))

(assert (= (and b!1538588 res!1055703) b!1538592))

(assert (= (and b!1538592 res!1055704) b!1538585))

(assert (= (and b!1538585 res!1055702) b!1538593))

(assert (= (and b!1538593 res!1055701) b!1538590))

(assert (= (and b!1538590 res!1055707) b!1538591))

(assert (= (and b!1538591 res!1055708) b!1538586))

(assert (= (and b!1538586 res!1055705) b!1538589))

(assert (= (and b!1538589 res!1055706) b!1538587))

(declare-fun m!1421037 () Bool)

(assert (=> b!1538590 m!1421037))

(declare-fun m!1421039 () Bool)

(assert (=> b!1538592 m!1421039))

(assert (=> b!1538592 m!1421039))

(declare-fun m!1421041 () Bool)

(assert (=> b!1538592 m!1421041))

(declare-fun m!1421043 () Bool)

(assert (=> b!1538591 m!1421043))

(declare-fun m!1421045 () Bool)

(assert (=> start!131196 m!1421045))

(declare-fun m!1421047 () Bool)

(assert (=> start!131196 m!1421047))

(declare-fun m!1421049 () Bool)

(assert (=> b!1538589 m!1421049))

(declare-fun m!1421051 () Bool)

(assert (=> b!1538589 m!1421051))

(assert (=> b!1538585 m!1421051))

(assert (=> b!1538585 m!1421051))

(declare-fun m!1421053 () Bool)

(assert (=> b!1538585 m!1421053))

(declare-fun m!1421055 () Bool)

(assert (=> b!1538593 m!1421055))

(declare-fun m!1421057 () Bool)

(assert (=> b!1538587 m!1421057))

(assert (=> b!1538586 m!1421051))

(assert (=> b!1538586 m!1421051))

(declare-fun m!1421059 () Bool)

(assert (=> b!1538586 m!1421059))

(check-sat (not b!1538590) (not b!1538592) (not b!1538593) (not start!131196) (not b!1538586) (not b!1538585) (not b!1538587))
