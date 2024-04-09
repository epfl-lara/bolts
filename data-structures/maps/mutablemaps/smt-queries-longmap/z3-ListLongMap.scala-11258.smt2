; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131334 () Bool)

(assert start!131334)

(declare-fun b!1539584 () Bool)

(declare-fun res!1056527 () Bool)

(declare-fun e!856351 () Bool)

(assert (=> b!1539584 (=> (not res!1056527) (not e!856351))))

(declare-datatypes ((array!102248 0))(
  ( (array!102249 (arr!49331 (Array (_ BitVec 32) (_ BitVec 64))) (size!49882 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102248)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1539584 (= res!1056527 (not (= (select (arr!49331 a!2792) index!463) (select (arr!49331 a!2792) j!64))))))

(declare-fun b!1539585 () Bool)

(declare-fun res!1056524 () Bool)

(assert (=> b!1539585 (=> (not res!1056524) (not e!856351))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1539585 (= res!1056524 (validKeyInArray!0 (select (arr!49331 a!2792) j!64)))))

(declare-fun b!1539586 () Bool)

(declare-fun res!1056521 () Bool)

(assert (=> b!1539586 (=> (not res!1056521) (not e!856351))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13480 0))(
  ( (MissingZero!13480 (index!56314 (_ BitVec 32))) (Found!13480 (index!56315 (_ BitVec 32))) (Intermediate!13480 (undefined!14292 Bool) (index!56316 (_ BitVec 32)) (x!138052 (_ BitVec 32))) (Undefined!13480) (MissingVacant!13480 (index!56317 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102248 (_ BitVec 32)) SeekEntryResult!13480)

(assert (=> b!1539586 (= res!1056521 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49331 a!2792) j!64) a!2792 mask!2480) (Found!13480 j!64)))))

(declare-fun b!1539587 () Bool)

(declare-fun res!1056523 () Bool)

(assert (=> b!1539587 (=> (not res!1056523) (not e!856351))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102248 (_ BitVec 32)) Bool)

(assert (=> b!1539587 (= res!1056523 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1539589 () Bool)

(declare-fun res!1056526 () Bool)

(assert (=> b!1539589 (=> (not res!1056526) (not e!856351))))

(declare-datatypes ((List!35985 0))(
  ( (Nil!35982) (Cons!35981 (h!37427 (_ BitVec 64)) (t!50686 List!35985)) )
))
(declare-fun arrayNoDuplicates!0 (array!102248 (_ BitVec 32) List!35985) Bool)

(assert (=> b!1539589 (= res!1056526 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35982))))

(declare-fun b!1539590 () Bool)

(declare-fun res!1056525 () Bool)

(assert (=> b!1539590 (=> (not res!1056525) (not e!856351))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1539590 (= res!1056525 (validKeyInArray!0 (select (arr!49331 a!2792) i!951)))))

(declare-fun b!1539591 () Bool)

(declare-fun res!1056520 () Bool)

(assert (=> b!1539591 (=> (not res!1056520) (not e!856351))))

(assert (=> b!1539591 (= res!1056520 (and (= (size!49882 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49882 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49882 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1539592 () Bool)

(assert (=> b!1539592 (= e!856351 false)))

(declare-fun lt!665041 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1539592 (= lt!665041 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1539588 () Bool)

(declare-fun res!1056522 () Bool)

(assert (=> b!1539588 (=> (not res!1056522) (not e!856351))))

(assert (=> b!1539588 (= res!1056522 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49882 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49882 a!2792)) (= (select (arr!49331 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1056528 () Bool)

(assert (=> start!131334 (=> (not res!1056528) (not e!856351))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131334 (= res!1056528 (validMask!0 mask!2480))))

(assert (=> start!131334 e!856351))

(assert (=> start!131334 true))

(declare-fun array_inv!38276 (array!102248) Bool)

(assert (=> start!131334 (array_inv!38276 a!2792)))

(assert (= (and start!131334 res!1056528) b!1539591))

(assert (= (and b!1539591 res!1056520) b!1539590))

(assert (= (and b!1539590 res!1056525) b!1539585))

(assert (= (and b!1539585 res!1056524) b!1539587))

(assert (= (and b!1539587 res!1056523) b!1539589))

(assert (= (and b!1539589 res!1056526) b!1539588))

(assert (= (and b!1539588 res!1056522) b!1539586))

(assert (= (and b!1539586 res!1056521) b!1539584))

(assert (= (and b!1539584 res!1056527) b!1539592))

(declare-fun m!1421829 () Bool)

(assert (=> b!1539584 m!1421829))

(declare-fun m!1421831 () Bool)

(assert (=> b!1539584 m!1421831))

(declare-fun m!1421833 () Bool)

(assert (=> start!131334 m!1421833))

(declare-fun m!1421835 () Bool)

(assert (=> start!131334 m!1421835))

(declare-fun m!1421837 () Bool)

(assert (=> b!1539587 m!1421837))

(assert (=> b!1539585 m!1421831))

(assert (=> b!1539585 m!1421831))

(declare-fun m!1421839 () Bool)

(assert (=> b!1539585 m!1421839))

(assert (=> b!1539586 m!1421831))

(assert (=> b!1539586 m!1421831))

(declare-fun m!1421841 () Bool)

(assert (=> b!1539586 m!1421841))

(declare-fun m!1421843 () Bool)

(assert (=> b!1539592 m!1421843))

(declare-fun m!1421845 () Bool)

(assert (=> b!1539590 m!1421845))

(assert (=> b!1539590 m!1421845))

(declare-fun m!1421847 () Bool)

(assert (=> b!1539590 m!1421847))

(declare-fun m!1421849 () Bool)

(assert (=> b!1539589 m!1421849))

(declare-fun m!1421851 () Bool)

(assert (=> b!1539588 m!1421851))

(check-sat (not b!1539592) (not start!131334) (not b!1539589) (not b!1539587) (not b!1539585) (not b!1539586) (not b!1539590))
