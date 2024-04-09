; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120136 () Bool)

(assert start!120136)

(declare-fun b!1398172 () Bool)

(declare-fun res!937200 () Bool)

(declare-fun e!791572 () Bool)

(assert (=> b!1398172 (=> (not res!937200) (not e!791572))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((array!95583 0))(
  ( (array!95584 (arr!46141 (Array (_ BitVec 32) (_ BitVec 64))) (size!46692 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95583)

(assert (=> b!1398172 (= res!937200 (and (= (size!46692 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46692 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46692 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1398173 () Bool)

(declare-fun e!791571 () Bool)

(declare-fun e!791570 () Bool)

(assert (=> b!1398173 (= e!791571 e!791570)))

(declare-fun res!937194 () Bool)

(assert (=> b!1398173 (=> res!937194 e!791570)))

(declare-datatypes ((SeekEntryResult!10480 0))(
  ( (MissingZero!10480 (index!44290 (_ BitVec 32))) (Found!10480 (index!44291 (_ BitVec 32))) (Intermediate!10480 (undefined!11292 Bool) (index!44292 (_ BitVec 32)) (x!125945 (_ BitVec 32))) (Undefined!10480) (MissingVacant!10480 (index!44293 (_ BitVec 32))) )
))
(declare-fun lt!614748 () SeekEntryResult!10480)

(declare-fun lt!614752 () SeekEntryResult!10480)

(assert (=> b!1398173 (= res!937194 (or (= lt!614748 lt!614752) (not (is-Intermediate!10480 lt!614752))))))

(declare-fun lt!614747 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95583 (_ BitVec 32)) SeekEntryResult!10480)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398173 (= lt!614752 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614747 mask!2840) lt!614747 (array!95584 (store (arr!46141 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46692 a!2901)) mask!2840))))

(assert (=> b!1398173 (= lt!614747 (select (store (arr!46141 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1398174 () Bool)

(declare-fun res!937203 () Bool)

(assert (=> b!1398174 (=> (not res!937203) (not e!791572))))

(declare-datatypes ((List!32840 0))(
  ( (Nil!32837) (Cons!32836 (h!34078 (_ BitVec 64)) (t!47541 List!32840)) )
))
(declare-fun arrayNoDuplicates!0 (array!95583 (_ BitVec 32) List!32840) Bool)

(assert (=> b!1398174 (= res!937203 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32837))))

(declare-fun b!1398175 () Bool)

(declare-fun e!791569 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1398175 (= e!791569 (validKeyInArray!0 lt!614747))))

(declare-fun b!1398176 () Bool)

(declare-fun res!937199 () Bool)

(assert (=> b!1398176 (=> (not res!937199) (not e!791572))))

(assert (=> b!1398176 (= res!937199 (validKeyInArray!0 (select (arr!46141 a!2901) i!1037)))))

(declare-fun res!937197 () Bool)

(assert (=> start!120136 (=> (not res!937197) (not e!791572))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120136 (= res!937197 (validMask!0 mask!2840))))

(assert (=> start!120136 e!791572))

(assert (=> start!120136 true))

(declare-fun array_inv!35086 (array!95583) Bool)

(assert (=> start!120136 (array_inv!35086 a!2901)))

(declare-fun b!1398177 () Bool)

(declare-fun res!937195 () Bool)

(assert (=> b!1398177 (=> (not res!937195) (not e!791572))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95583 (_ BitVec 32)) Bool)

(assert (=> b!1398177 (= res!937195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1398178 () Bool)

(assert (=> b!1398178 (= e!791570 e!791569)))

(declare-fun res!937202 () Bool)

(assert (=> b!1398178 (=> res!937202 e!791569)))

(assert (=> b!1398178 (= res!937202 (bvslt mask!2840 #b00000000000000000000000000000000))))

(assert (=> b!1398178 (and (not (undefined!11292 lt!614752)) (= (index!44292 lt!614752) i!1037) (bvslt (x!125945 lt!614752) (x!125945 lt!614748)) (= (select (store (arr!46141 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44292 lt!614752)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!46914 0))(
  ( (Unit!46915) )
))
(declare-fun lt!614749 () Unit!46914)

(declare-fun lt!614750 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95583 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46914)

(assert (=> b!1398178 (= lt!614749 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!614750 (x!125945 lt!614748) (index!44292 lt!614748) (x!125945 lt!614752) (index!44292 lt!614752) (undefined!11292 lt!614752) mask!2840))))

(declare-fun e!791573 () Bool)

(declare-fun b!1398179 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95583 (_ BitVec 32)) SeekEntryResult!10480)

(assert (=> b!1398179 (= e!791573 (= (seekEntryOrOpen!0 (select (arr!46141 a!2901) j!112) a!2901 mask!2840) (Found!10480 j!112)))))

(declare-fun b!1398180 () Bool)

(assert (=> b!1398180 (= e!791572 (not e!791571))))

(declare-fun res!937198 () Bool)

(assert (=> b!1398180 (=> res!937198 e!791571)))

(assert (=> b!1398180 (= res!937198 (or (not (is-Intermediate!10480 lt!614748)) (undefined!11292 lt!614748)))))

(assert (=> b!1398180 e!791573))

(declare-fun res!937201 () Bool)

(assert (=> b!1398180 (=> (not res!937201) (not e!791573))))

(assert (=> b!1398180 (= res!937201 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!614751 () Unit!46914)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95583 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46914)

(assert (=> b!1398180 (= lt!614751 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1398180 (= lt!614748 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614750 (select (arr!46141 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1398180 (= lt!614750 (toIndex!0 (select (arr!46141 a!2901) j!112) mask!2840))))

(declare-fun b!1398181 () Bool)

(declare-fun res!937196 () Bool)

(assert (=> b!1398181 (=> (not res!937196) (not e!791572))))

(assert (=> b!1398181 (= res!937196 (validKeyInArray!0 (select (arr!46141 a!2901) j!112)))))

(assert (= (and start!120136 res!937197) b!1398172))

(assert (= (and b!1398172 res!937200) b!1398176))

(assert (= (and b!1398176 res!937199) b!1398181))

(assert (= (and b!1398181 res!937196) b!1398177))

(assert (= (and b!1398177 res!937195) b!1398174))

(assert (= (and b!1398174 res!937203) b!1398180))

(assert (= (and b!1398180 res!937201) b!1398179))

(assert (= (and b!1398180 (not res!937198)) b!1398173))

(assert (= (and b!1398173 (not res!937194)) b!1398178))

(assert (= (and b!1398178 (not res!937202)) b!1398175))

(declare-fun m!1285289 () Bool)

(assert (=> b!1398177 m!1285289))

(declare-fun m!1285291 () Bool)

(assert (=> b!1398175 m!1285291))

(declare-fun m!1285293 () Bool)

(assert (=> b!1398180 m!1285293))

(declare-fun m!1285295 () Bool)

(assert (=> b!1398180 m!1285295))

(assert (=> b!1398180 m!1285293))

(declare-fun m!1285297 () Bool)

(assert (=> b!1398180 m!1285297))

(assert (=> b!1398180 m!1285293))

(declare-fun m!1285299 () Bool)

(assert (=> b!1398180 m!1285299))

(declare-fun m!1285301 () Bool)

(assert (=> b!1398180 m!1285301))

(declare-fun m!1285303 () Bool)

(assert (=> b!1398173 m!1285303))

(declare-fun m!1285305 () Bool)

(assert (=> b!1398173 m!1285305))

(assert (=> b!1398173 m!1285303))

(declare-fun m!1285307 () Bool)

(assert (=> b!1398173 m!1285307))

(declare-fun m!1285309 () Bool)

(assert (=> b!1398173 m!1285309))

(declare-fun m!1285311 () Bool)

(assert (=> start!120136 m!1285311))

(declare-fun m!1285313 () Bool)

(assert (=> start!120136 m!1285313))

(assert (=> b!1398178 m!1285305))

(declare-fun m!1285315 () Bool)

(assert (=> b!1398178 m!1285315))

(declare-fun m!1285317 () Bool)

(assert (=> b!1398178 m!1285317))

(declare-fun m!1285319 () Bool)

(assert (=> b!1398176 m!1285319))

(assert (=> b!1398176 m!1285319))

(declare-fun m!1285321 () Bool)

(assert (=> b!1398176 m!1285321))

(assert (=> b!1398179 m!1285293))

(assert (=> b!1398179 m!1285293))

(declare-fun m!1285323 () Bool)

(assert (=> b!1398179 m!1285323))

(assert (=> b!1398181 m!1285293))

(assert (=> b!1398181 m!1285293))

(declare-fun m!1285325 () Bool)

(assert (=> b!1398181 m!1285325))

(declare-fun m!1285327 () Bool)

(assert (=> b!1398174 m!1285327))

(push 1)

