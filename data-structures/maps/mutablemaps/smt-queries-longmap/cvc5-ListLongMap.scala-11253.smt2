; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131218 () Bool)

(assert start!131218)

(declare-fun b!1538882 () Bool)

(declare-fun e!856076 () Bool)

(assert (=> b!1538882 (= e!856076 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!664885 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538882 (= lt!664885 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1538883 () Bool)

(declare-fun res!1055999 () Bool)

(assert (=> b!1538883 (=> (not res!1055999) (not e!856076))))

(declare-datatypes ((array!102210 0))(
  ( (array!102211 (arr!49315 (Array (_ BitVec 32) (_ BitVec 64))) (size!49866 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102210)

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1538883 (= res!1055999 (not (= (select (arr!49315 a!2792) index!463) (select (arr!49315 a!2792) j!64))))))

(declare-fun b!1538884 () Bool)

(declare-fun res!1056004 () Bool)

(assert (=> b!1538884 (=> (not res!1056004) (not e!856076))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538884 (= res!1056004 (validKeyInArray!0 (select (arr!49315 a!2792) j!64)))))

(declare-fun b!1538885 () Bool)

(declare-fun res!1056002 () Bool)

(assert (=> b!1538885 (=> (not res!1056002) (not e!856076))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1538885 (= res!1056002 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49866 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49866 a!2792)) (= (select (arr!49315 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1538886 () Bool)

(declare-fun res!1056005 () Bool)

(assert (=> b!1538886 (=> (not res!1056005) (not e!856076))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1538886 (= res!1056005 (and (= (size!49866 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49866 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49866 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1538887 () Bool)

(declare-fun res!1056000 () Bool)

(assert (=> b!1538887 (=> (not res!1056000) (not e!856076))))

(assert (=> b!1538887 (= res!1056000 (validKeyInArray!0 (select (arr!49315 a!2792) i!951)))))

(declare-fun res!1056001 () Bool)

(assert (=> start!131218 (=> (not res!1056001) (not e!856076))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131218 (= res!1056001 (validMask!0 mask!2480))))

(assert (=> start!131218 e!856076))

(assert (=> start!131218 true))

(declare-fun array_inv!38260 (array!102210) Bool)

(assert (=> start!131218 (array_inv!38260 a!2792)))

(declare-fun b!1538888 () Bool)

(declare-fun res!1056006 () Bool)

(assert (=> b!1538888 (=> (not res!1056006) (not e!856076))))

(declare-datatypes ((List!35969 0))(
  ( (Nil!35966) (Cons!35965 (h!37411 (_ BitVec 64)) (t!50670 List!35969)) )
))
(declare-fun arrayNoDuplicates!0 (array!102210 (_ BitVec 32) List!35969) Bool)

(assert (=> b!1538888 (= res!1056006 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35966))))

(declare-fun b!1538889 () Bool)

(declare-fun res!1055998 () Bool)

(assert (=> b!1538889 (=> (not res!1055998) (not e!856076))))

(declare-datatypes ((SeekEntryResult!13464 0))(
  ( (MissingZero!13464 (index!56250 (_ BitVec 32))) (Found!13464 (index!56251 (_ BitVec 32))) (Intermediate!13464 (undefined!14276 Bool) (index!56252 (_ BitVec 32)) (x!137984 (_ BitVec 32))) (Undefined!13464) (MissingVacant!13464 (index!56253 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102210 (_ BitVec 32)) SeekEntryResult!13464)

(assert (=> b!1538889 (= res!1055998 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49315 a!2792) j!64) a!2792 mask!2480) (Found!13464 j!64)))))

(declare-fun b!1538890 () Bool)

(declare-fun res!1056003 () Bool)

(assert (=> b!1538890 (=> (not res!1056003) (not e!856076))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102210 (_ BitVec 32)) Bool)

(assert (=> b!1538890 (= res!1056003 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!131218 res!1056001) b!1538886))

(assert (= (and b!1538886 res!1056005) b!1538887))

(assert (= (and b!1538887 res!1056000) b!1538884))

(assert (= (and b!1538884 res!1056004) b!1538890))

(assert (= (and b!1538890 res!1056003) b!1538888))

(assert (= (and b!1538888 res!1056006) b!1538885))

(assert (= (and b!1538885 res!1056002) b!1538889))

(assert (= (and b!1538889 res!1055998) b!1538883))

(assert (= (and b!1538883 res!1055999) b!1538882))

(declare-fun m!1421301 () Bool)

(assert (=> b!1538888 m!1421301))

(declare-fun m!1421303 () Bool)

(assert (=> b!1538883 m!1421303))

(declare-fun m!1421305 () Bool)

(assert (=> b!1538883 m!1421305))

(declare-fun m!1421307 () Bool)

(assert (=> b!1538890 m!1421307))

(declare-fun m!1421309 () Bool)

(assert (=> start!131218 m!1421309))

(declare-fun m!1421311 () Bool)

(assert (=> start!131218 m!1421311))

(declare-fun m!1421313 () Bool)

(assert (=> b!1538887 m!1421313))

(assert (=> b!1538887 m!1421313))

(declare-fun m!1421315 () Bool)

(assert (=> b!1538887 m!1421315))

(assert (=> b!1538889 m!1421305))

(assert (=> b!1538889 m!1421305))

(declare-fun m!1421317 () Bool)

(assert (=> b!1538889 m!1421317))

(assert (=> b!1538884 m!1421305))

(assert (=> b!1538884 m!1421305))

(declare-fun m!1421319 () Bool)

(assert (=> b!1538884 m!1421319))

(declare-fun m!1421321 () Bool)

(assert (=> b!1538882 m!1421321))

(declare-fun m!1421323 () Bool)

(assert (=> b!1538885 m!1421323))

(push 1)

(assert (not b!1538882))

(assert (not b!1538890))

(assert (not start!131218))

(assert (not b!1538888))

(assert (not b!1538887))

(assert (not b!1538889))

(assert (not b!1538884))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

