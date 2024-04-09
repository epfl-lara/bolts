; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130716 () Bool)

(assert start!130716)

(declare-fun b!1532675 () Bool)

(declare-fun res!1049900 () Bool)

(declare-fun e!853984 () Bool)

(assert (=> b!1532675 (=> (not res!1049900) (not e!853984))))

(declare-datatypes ((array!101741 0))(
  ( (array!101742 (arr!49082 (Array (_ BitVec 32) (_ BitVec 64))) (size!49633 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101741)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532675 (= res!1049900 (validKeyInArray!0 (select (arr!49082 a!2792) i!951)))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun b!1532676 () Bool)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(assert (=> b!1532676 (= e!853984 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49633 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49633 a!2792)) (= (select (arr!49082 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!2480 #b00000000000000000000000000000000)))))

(declare-fun b!1532677 () Bool)

(declare-fun res!1049902 () Bool)

(assert (=> b!1532677 (=> (not res!1049902) (not e!853984))))

(declare-datatypes ((List!35736 0))(
  ( (Nil!35733) (Cons!35732 (h!37178 (_ BitVec 64)) (t!50437 List!35736)) )
))
(declare-fun arrayNoDuplicates!0 (array!101741 (_ BitVec 32) List!35736) Bool)

(assert (=> b!1532677 (= res!1049902 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35733))))

(declare-fun res!1049899 () Bool)

(assert (=> start!130716 (=> (not res!1049899) (not e!853984))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130716 (= res!1049899 (validMask!0 mask!2480))))

(assert (=> start!130716 e!853984))

(assert (=> start!130716 true))

(declare-fun array_inv!38027 (array!101741) Bool)

(assert (=> start!130716 (array_inv!38027 a!2792)))

(declare-fun b!1532678 () Bool)

(declare-fun res!1049904 () Bool)

(assert (=> b!1532678 (=> (not res!1049904) (not e!853984))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1532678 (= res!1049904 (and (= (size!49633 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49633 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49633 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1532679 () Bool)

(declare-fun res!1049903 () Bool)

(assert (=> b!1532679 (=> (not res!1049903) (not e!853984))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101741 (_ BitVec 32)) Bool)

(assert (=> b!1532679 (= res!1049903 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1532680 () Bool)

(declare-fun res!1049901 () Bool)

(assert (=> b!1532680 (=> (not res!1049901) (not e!853984))))

(assert (=> b!1532680 (= res!1049901 (validKeyInArray!0 (select (arr!49082 a!2792) j!64)))))

(assert (= (and start!130716 res!1049899) b!1532678))

(assert (= (and b!1532678 res!1049904) b!1532675))

(assert (= (and b!1532675 res!1049900) b!1532680))

(assert (= (and b!1532680 res!1049901) b!1532679))

(assert (= (and b!1532679 res!1049903) b!1532677))

(assert (= (and b!1532677 res!1049902) b!1532676))

(declare-fun m!1415427 () Bool)

(assert (=> b!1532679 m!1415427))

(declare-fun m!1415429 () Bool)

(assert (=> b!1532680 m!1415429))

(assert (=> b!1532680 m!1415429))

(declare-fun m!1415431 () Bool)

(assert (=> b!1532680 m!1415431))

(declare-fun m!1415433 () Bool)

(assert (=> b!1532675 m!1415433))

(assert (=> b!1532675 m!1415433))

(declare-fun m!1415435 () Bool)

(assert (=> b!1532675 m!1415435))

(declare-fun m!1415437 () Bool)

(assert (=> b!1532677 m!1415437))

(declare-fun m!1415439 () Bool)

(assert (=> b!1532676 m!1415439))

(declare-fun m!1415441 () Bool)

(assert (=> start!130716 m!1415441))

(declare-fun m!1415443 () Bool)

(assert (=> start!130716 m!1415443))

(check-sat (not b!1532675) (not b!1532680) (not b!1532679) (not start!130716) (not b!1532677))
(check-sat)
