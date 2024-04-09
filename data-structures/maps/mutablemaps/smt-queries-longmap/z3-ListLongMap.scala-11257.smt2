; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131328 () Bool)

(assert start!131328)

(declare-fun b!1539503 () Bool)

(declare-fun res!1056447 () Bool)

(declare-fun e!856334 () Bool)

(assert (=> b!1539503 (=> (not res!1056447) (not e!856334))))

(declare-datatypes ((array!102242 0))(
  ( (array!102243 (arr!49328 (Array (_ BitVec 32) (_ BitVec 64))) (size!49879 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102242)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102242 (_ BitVec 32)) Bool)

(assert (=> b!1539503 (= res!1056447 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1539504 () Bool)

(declare-fun res!1056439 () Bool)

(assert (=> b!1539504 (=> (not res!1056439) (not e!856334))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1539504 (= res!1056439 (validKeyInArray!0 (select (arr!49328 a!2792) j!64)))))

(declare-fun res!1056445 () Bool)

(assert (=> start!131328 (=> (not res!1056445) (not e!856334))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131328 (= res!1056445 (validMask!0 mask!2480))))

(assert (=> start!131328 e!856334))

(assert (=> start!131328 true))

(declare-fun array_inv!38273 (array!102242) Bool)

(assert (=> start!131328 (array_inv!38273 a!2792)))

(declare-fun b!1539505 () Bool)

(declare-fun res!1056444 () Bool)

(assert (=> b!1539505 (=> (not res!1056444) (not e!856334))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13477 0))(
  ( (MissingZero!13477 (index!56302 (_ BitVec 32))) (Found!13477 (index!56303 (_ BitVec 32))) (Intermediate!13477 (undefined!14289 Bool) (index!56304 (_ BitVec 32)) (x!138041 (_ BitVec 32))) (Undefined!13477) (MissingVacant!13477 (index!56305 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102242 (_ BitVec 32)) SeekEntryResult!13477)

(assert (=> b!1539505 (= res!1056444 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49328 a!2792) j!64) a!2792 mask!2480) (Found!13477 j!64)))))

(declare-fun b!1539506 () Bool)

(declare-fun res!1056446 () Bool)

(assert (=> b!1539506 (=> (not res!1056446) (not e!856334))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1539506 (= res!1056446 (and (= (size!49879 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49879 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49879 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1539507 () Bool)

(declare-fun res!1056441 () Bool)

(assert (=> b!1539507 (=> (not res!1056441) (not e!856334))))

(assert (=> b!1539507 (= res!1056441 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49879 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49879 a!2792)) (= (select (arr!49328 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1539508 () Bool)

(assert (=> b!1539508 (= e!856334 false)))

(declare-fun lt!665032 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1539508 (= lt!665032 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1539509 () Bool)

(declare-fun res!1056440 () Bool)

(assert (=> b!1539509 (=> (not res!1056440) (not e!856334))))

(assert (=> b!1539509 (= res!1056440 (validKeyInArray!0 (select (arr!49328 a!2792) i!951)))))

(declare-fun b!1539510 () Bool)

(declare-fun res!1056443 () Bool)

(assert (=> b!1539510 (=> (not res!1056443) (not e!856334))))

(assert (=> b!1539510 (= res!1056443 (not (= (select (arr!49328 a!2792) index!463) (select (arr!49328 a!2792) j!64))))))

(declare-fun b!1539511 () Bool)

(declare-fun res!1056442 () Bool)

(assert (=> b!1539511 (=> (not res!1056442) (not e!856334))))

(declare-datatypes ((List!35982 0))(
  ( (Nil!35979) (Cons!35978 (h!37424 (_ BitVec 64)) (t!50683 List!35982)) )
))
(declare-fun arrayNoDuplicates!0 (array!102242 (_ BitVec 32) List!35982) Bool)

(assert (=> b!1539511 (= res!1056442 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35979))))

(assert (= (and start!131328 res!1056445) b!1539506))

(assert (= (and b!1539506 res!1056446) b!1539509))

(assert (= (and b!1539509 res!1056440) b!1539504))

(assert (= (and b!1539504 res!1056439) b!1539503))

(assert (= (and b!1539503 res!1056447) b!1539511))

(assert (= (and b!1539511 res!1056442) b!1539507))

(assert (= (and b!1539507 res!1056441) b!1539505))

(assert (= (and b!1539505 res!1056444) b!1539510))

(assert (= (and b!1539510 res!1056443) b!1539508))

(declare-fun m!1421757 () Bool)

(assert (=> b!1539508 m!1421757))

(declare-fun m!1421759 () Bool)

(assert (=> b!1539509 m!1421759))

(assert (=> b!1539509 m!1421759))

(declare-fun m!1421761 () Bool)

(assert (=> b!1539509 m!1421761))

(declare-fun m!1421763 () Bool)

(assert (=> b!1539504 m!1421763))

(assert (=> b!1539504 m!1421763))

(declare-fun m!1421765 () Bool)

(assert (=> b!1539504 m!1421765))

(declare-fun m!1421767 () Bool)

(assert (=> b!1539511 m!1421767))

(declare-fun m!1421769 () Bool)

(assert (=> b!1539507 m!1421769))

(assert (=> b!1539505 m!1421763))

(assert (=> b!1539505 m!1421763))

(declare-fun m!1421771 () Bool)

(assert (=> b!1539505 m!1421771))

(declare-fun m!1421773 () Bool)

(assert (=> start!131328 m!1421773))

(declare-fun m!1421775 () Bool)

(assert (=> start!131328 m!1421775))

(declare-fun m!1421777 () Bool)

(assert (=> b!1539503 m!1421777))

(declare-fun m!1421779 () Bool)

(assert (=> b!1539510 m!1421779))

(assert (=> b!1539510 m!1421763))

(check-sat (not b!1539511) (not b!1539504) (not b!1539505) (not b!1539509) (not start!131328) (not b!1539503) (not b!1539508))
