; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130774 () Bool)

(assert start!130774)

(declare-fun b!1533201 () Bool)

(declare-fun res!1050432 () Bool)

(declare-fun e!854158 () Bool)

(assert (=> b!1533201 (=> (not res!1050432) (not e!854158))))

(declare-datatypes ((array!101799 0))(
  ( (array!101800 (arr!49111 (Array (_ BitVec 32) (_ BitVec 64))) (size!49662 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101799)

(declare-datatypes ((List!35765 0))(
  ( (Nil!35762) (Cons!35761 (h!37207 (_ BitVec 64)) (t!50466 List!35765)) )
))
(declare-fun arrayNoDuplicates!0 (array!101799 (_ BitVec 32) List!35765) Bool)

(assert (=> b!1533201 (= res!1050432 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35762))))

(declare-fun res!1050425 () Bool)

(assert (=> start!130774 (=> (not res!1050425) (not e!854158))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130774 (= res!1050425 (validMask!0 mask!2480))))

(assert (=> start!130774 e!854158))

(assert (=> start!130774 true))

(declare-fun array_inv!38056 (array!101799) Bool)

(assert (=> start!130774 (array_inv!38056 a!2792)))

(declare-fun b!1533202 () Bool)

(declare-fun res!1050431 () Bool)

(assert (=> b!1533202 (=> (not res!1050431) (not e!854158))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1533202 (= res!1050431 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49662 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49662 a!2792)) (= (select (arr!49111 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun b!1533203 () Bool)

(assert (=> b!1533203 (= e!854158 (and (= (select (arr!49111 a!2792) index!463) (select (arr!49111 a!2792) j!64)) (bvsge mask!2480 #b00000000000000000000000000000000) (bvsge index!463 (bvadd #b00000000000000000000000000000001 mask!2480))))))

(declare-fun b!1533204 () Bool)

(declare-fun res!1050426 () Bool)

(assert (=> b!1533204 (=> (not res!1050426) (not e!854158))))

(declare-datatypes ((SeekEntryResult!13266 0))(
  ( (MissingZero!13266 (index!55458 (_ BitVec 32))) (Found!13266 (index!55459 (_ BitVec 32))) (Intermediate!13266 (undefined!14078 Bool) (index!55460 (_ BitVec 32)) (x!137239 (_ BitVec 32))) (Undefined!13266) (MissingVacant!13266 (index!55461 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101799 (_ BitVec 32)) SeekEntryResult!13266)

(assert (=> b!1533204 (= res!1050426 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49111 a!2792) j!64) a!2792 mask!2480) (Found!13266 j!64)))))

(declare-fun b!1533205 () Bool)

(declare-fun res!1050429 () Bool)

(assert (=> b!1533205 (=> (not res!1050429) (not e!854158))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101799 (_ BitVec 32)) Bool)

(assert (=> b!1533205 (= res!1050429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1533206 () Bool)

(declare-fun res!1050428 () Bool)

(assert (=> b!1533206 (=> (not res!1050428) (not e!854158))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533206 (= res!1050428 (validKeyInArray!0 (select (arr!49111 a!2792) j!64)))))

(declare-fun b!1533207 () Bool)

(declare-fun res!1050427 () Bool)

(assert (=> b!1533207 (=> (not res!1050427) (not e!854158))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1533207 (= res!1050427 (and (= (size!49662 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49662 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49662 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533208 () Bool)

(declare-fun res!1050430 () Bool)

(assert (=> b!1533208 (=> (not res!1050430) (not e!854158))))

(assert (=> b!1533208 (= res!1050430 (validKeyInArray!0 (select (arr!49111 a!2792) i!951)))))

(assert (= (and start!130774 res!1050425) b!1533207))

(assert (= (and b!1533207 res!1050427) b!1533208))

(assert (= (and b!1533208 res!1050430) b!1533206))

(assert (= (and b!1533206 res!1050428) b!1533205))

(assert (= (and b!1533205 res!1050429) b!1533201))

(assert (= (and b!1533201 res!1050432) b!1533202))

(assert (= (and b!1533202 res!1050431) b!1533204))

(assert (= (and b!1533204 res!1050426) b!1533203))

(declare-fun m!1415949 () Bool)

(assert (=> b!1533201 m!1415949))

(declare-fun m!1415951 () Bool)

(assert (=> b!1533205 m!1415951))

(declare-fun m!1415953 () Bool)

(assert (=> b!1533204 m!1415953))

(assert (=> b!1533204 m!1415953))

(declare-fun m!1415955 () Bool)

(assert (=> b!1533204 m!1415955))

(declare-fun m!1415957 () Bool)

(assert (=> b!1533202 m!1415957))

(assert (=> b!1533206 m!1415953))

(assert (=> b!1533206 m!1415953))

(declare-fun m!1415959 () Bool)

(assert (=> b!1533206 m!1415959))

(declare-fun m!1415961 () Bool)

(assert (=> b!1533203 m!1415961))

(assert (=> b!1533203 m!1415953))

(declare-fun m!1415963 () Bool)

(assert (=> b!1533208 m!1415963))

(assert (=> b!1533208 m!1415963))

(declare-fun m!1415965 () Bool)

(assert (=> b!1533208 m!1415965))

(declare-fun m!1415967 () Bool)

(assert (=> start!130774 m!1415967))

(declare-fun m!1415969 () Bool)

(assert (=> start!130774 m!1415969))

(push 1)

(assert (not start!130774))

(assert (not b!1533205))

(assert (not b!1533201))

(assert (not b!1533206))

(assert (not b!1533208))

(assert (not b!1533204))

(check-sat)

(pop 1)

(push 1)

(check-sat)

