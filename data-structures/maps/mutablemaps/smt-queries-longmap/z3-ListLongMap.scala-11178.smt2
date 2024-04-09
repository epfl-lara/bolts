; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130734 () Bool)

(assert start!130734)

(declare-fun b!1532823 () Bool)

(declare-fun res!1050051 () Bool)

(declare-fun e!854039 () Bool)

(assert (=> b!1532823 (=> (not res!1050051) (not e!854039))))

(declare-datatypes ((array!101759 0))(
  ( (array!101760 (arr!49091 (Array (_ BitVec 32) (_ BitVec 64))) (size!49642 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101759)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532823 (= res!1050051 (validKeyInArray!0 (select (arr!49091 a!2792) j!64)))))

(declare-fun b!1532824 () Bool)

(assert (=> b!1532824 (= e!854039 false)))

(declare-fun lt!663676 () Bool)

(declare-datatypes ((List!35745 0))(
  ( (Nil!35742) (Cons!35741 (h!37187 (_ BitVec 64)) (t!50446 List!35745)) )
))
(declare-fun arrayNoDuplicates!0 (array!101759 (_ BitVec 32) List!35745) Bool)

(assert (=> b!1532824 (= lt!663676 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35742))))

(declare-fun res!1050050 () Bool)

(assert (=> start!130734 (=> (not res!1050050) (not e!854039))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130734 (= res!1050050 (validMask!0 mask!2480))))

(assert (=> start!130734 e!854039))

(assert (=> start!130734 true))

(declare-fun array_inv!38036 (array!101759) Bool)

(assert (=> start!130734 (array_inv!38036 a!2792)))

(declare-fun b!1532825 () Bool)

(declare-fun res!1050048 () Bool)

(assert (=> b!1532825 (=> (not res!1050048) (not e!854039))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101759 (_ BitVec 32)) Bool)

(assert (=> b!1532825 (= res!1050048 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1532826 () Bool)

(declare-fun res!1050047 () Bool)

(assert (=> b!1532826 (=> (not res!1050047) (not e!854039))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1532826 (= res!1050047 (validKeyInArray!0 (select (arr!49091 a!2792) i!951)))))

(declare-fun b!1532827 () Bool)

(declare-fun res!1050049 () Bool)

(assert (=> b!1532827 (=> (not res!1050049) (not e!854039))))

(assert (=> b!1532827 (= res!1050049 (and (= (size!49642 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49642 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49642 a!2792)) (not (= i!951 j!64))))))

(assert (= (and start!130734 res!1050050) b!1532827))

(assert (= (and b!1532827 res!1050049) b!1532826))

(assert (= (and b!1532826 res!1050047) b!1532823))

(assert (= (and b!1532823 res!1050051) b!1532825))

(assert (= (and b!1532825 res!1050048) b!1532824))

(declare-fun m!1415581 () Bool)

(assert (=> b!1532826 m!1415581))

(assert (=> b!1532826 m!1415581))

(declare-fun m!1415583 () Bool)

(assert (=> b!1532826 m!1415583))

(declare-fun m!1415585 () Bool)

(assert (=> b!1532823 m!1415585))

(assert (=> b!1532823 m!1415585))

(declare-fun m!1415587 () Bool)

(assert (=> b!1532823 m!1415587))

(declare-fun m!1415589 () Bool)

(assert (=> b!1532825 m!1415589))

(declare-fun m!1415591 () Bool)

(assert (=> b!1532824 m!1415591))

(declare-fun m!1415593 () Bool)

(assert (=> start!130734 m!1415593))

(declare-fun m!1415595 () Bool)

(assert (=> start!130734 m!1415595))

(check-sat (not start!130734) (not b!1532826) (not b!1532824) (not b!1532823) (not b!1532825))
