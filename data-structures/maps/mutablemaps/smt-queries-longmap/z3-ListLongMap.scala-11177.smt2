; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130728 () Bool)

(assert start!130728)

(declare-fun b!1532774 () Bool)

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!101753 0))(
  ( (array!101754 (arr!49088 (Array (_ BitVec 32) (_ BitVec 64))) (size!49639 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101753)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun e!854020 () Bool)

(assert (=> b!1532774 (= e!854020 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49639 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49639 a!2792)) (= (select (arr!49088 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge mask!2480 #b00000000000000000000000000000000) (bvsge index!463 (bvadd #b00000000000000000000000000000001 mask!2480))))))

(declare-fun b!1532775 () Bool)

(declare-fun res!1050003 () Bool)

(assert (=> b!1532775 (=> (not res!1050003) (not e!854020))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1532775 (= res!1050003 (and (= (size!49639 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49639 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49639 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1532776 () Bool)

(declare-fun res!1049999 () Bool)

(assert (=> b!1532776 (=> (not res!1049999) (not e!854020))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532776 (= res!1049999 (validKeyInArray!0 (select (arr!49088 a!2792) j!64)))))

(declare-fun b!1532777 () Bool)

(declare-fun res!1050000 () Bool)

(assert (=> b!1532777 (=> (not res!1050000) (not e!854020))))

(declare-datatypes ((List!35742 0))(
  ( (Nil!35739) (Cons!35738 (h!37184 (_ BitVec 64)) (t!50443 List!35742)) )
))
(declare-fun arrayNoDuplicates!0 (array!101753 (_ BitVec 32) List!35742) Bool)

(assert (=> b!1532777 (= res!1050000 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35739))))

(declare-fun b!1532778 () Bool)

(declare-fun res!1050001 () Bool)

(assert (=> b!1532778 (=> (not res!1050001) (not e!854020))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101753 (_ BitVec 32)) Bool)

(assert (=> b!1532778 (= res!1050001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1532779 () Bool)

(declare-fun res!1050002 () Bool)

(assert (=> b!1532779 (=> (not res!1050002) (not e!854020))))

(assert (=> b!1532779 (= res!1050002 (validKeyInArray!0 (select (arr!49088 a!2792) i!951)))))

(declare-fun res!1049998 () Bool)

(assert (=> start!130728 (=> (not res!1049998) (not e!854020))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130728 (= res!1049998 (validMask!0 mask!2480))))

(assert (=> start!130728 e!854020))

(assert (=> start!130728 true))

(declare-fun array_inv!38033 (array!101753) Bool)

(assert (=> start!130728 (array_inv!38033 a!2792)))

(assert (= (and start!130728 res!1049998) b!1532775))

(assert (= (and b!1532775 res!1050003) b!1532779))

(assert (= (and b!1532779 res!1050002) b!1532776))

(assert (= (and b!1532776 res!1049999) b!1532778))

(assert (= (and b!1532778 res!1050001) b!1532777))

(assert (= (and b!1532777 res!1050000) b!1532774))

(declare-fun m!1415529 () Bool)

(assert (=> start!130728 m!1415529))

(declare-fun m!1415531 () Bool)

(assert (=> start!130728 m!1415531))

(declare-fun m!1415533 () Bool)

(assert (=> b!1532776 m!1415533))

(assert (=> b!1532776 m!1415533))

(declare-fun m!1415535 () Bool)

(assert (=> b!1532776 m!1415535))

(declare-fun m!1415537 () Bool)

(assert (=> b!1532777 m!1415537))

(declare-fun m!1415539 () Bool)

(assert (=> b!1532774 m!1415539))

(declare-fun m!1415541 () Bool)

(assert (=> b!1532778 m!1415541))

(declare-fun m!1415543 () Bool)

(assert (=> b!1532779 m!1415543))

(assert (=> b!1532779 m!1415543))

(declare-fun m!1415545 () Bool)

(assert (=> b!1532779 m!1415545))

(check-sat (not b!1532779) (not b!1532777) (not start!130728) (not b!1532776) (not b!1532778))
(check-sat)
