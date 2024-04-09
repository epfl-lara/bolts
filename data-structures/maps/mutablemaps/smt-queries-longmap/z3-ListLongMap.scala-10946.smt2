; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128100 () Bool)

(assert start!128100)

(declare-fun b!1504034 () Bool)

(declare-fun res!1024897 () Bool)

(declare-fun e!840824 () Bool)

(assert (=> b!1504034 (=> (not res!1024897) (not e!840824))))

(declare-datatypes ((array!100289 0))(
  ( (array!100290 (arr!48395 (Array (_ BitVec 32) (_ BitVec 64))) (size!48946 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100289)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(assert (=> b!1504034 (= res!1024897 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48946 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48946 a!2850)) (= (select (arr!48395 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48395 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48946 a!2850))))))

(declare-fun b!1504035 () Bool)

(declare-fun res!1024898 () Bool)

(assert (=> b!1504035 (=> (not res!1024898) (not e!840824))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100289 (_ BitVec 32)) Bool)

(assert (=> b!1504035 (= res!1024898 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1024900 () Bool)

(assert (=> start!128100 (=> (not res!1024900) (not e!840824))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128100 (= res!1024900 (validMask!0 mask!2661))))

(assert (=> start!128100 e!840824))

(assert (=> start!128100 true))

(declare-fun array_inv!37340 (array!100289) Bool)

(assert (=> start!128100 (array_inv!37340 a!2850)))

(declare-fun b!1504036 () Bool)

(declare-fun res!1024894 () Bool)

(assert (=> b!1504036 (=> (not res!1024894) (not e!840824))))

(declare-datatypes ((List!35067 0))(
  ( (Nil!35064) (Cons!35063 (h!36461 (_ BitVec 64)) (t!49768 List!35067)) )
))
(declare-fun arrayNoDuplicates!0 (array!100289 (_ BitVec 32) List!35067) Bool)

(assert (=> b!1504036 (= res!1024894 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35064))))

(declare-fun b!1504037 () Bool)

(declare-fun res!1024895 () Bool)

(assert (=> b!1504037 (=> (not res!1024895) (not e!840824))))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12612 0))(
  ( (MissingZero!12612 (index!52839 (_ BitVec 32))) (Found!12612 (index!52840 (_ BitVec 32))) (Intermediate!12612 (undefined!13424 Bool) (index!52841 (_ BitVec 32)) (x!134535 (_ BitVec 32))) (Undefined!12612) (MissingVacant!12612 (index!52842 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100289 (_ BitVec 32)) SeekEntryResult!12612)

(assert (=> b!1504037 (= res!1024895 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48395 a!2850) j!87) a!2850 mask!2661) (Found!12612 j!87)))))

(declare-fun b!1504038 () Bool)

(declare-fun res!1024896 () Bool)

(assert (=> b!1504038 (=> (not res!1024896) (not e!840824))))

(assert (=> b!1504038 (= res!1024896 (and (= (size!48946 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48946 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48946 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1504039 () Bool)

(assert (=> b!1504039 (= e!840824 false)))

(declare-fun lt!653599 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1504039 (= lt!653599 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1504040 () Bool)

(declare-fun res!1024901 () Bool)

(assert (=> b!1504040 (=> (not res!1024901) (not e!840824))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1504040 (= res!1024901 (validKeyInArray!0 (select (arr!48395 a!2850) j!87)))))

(declare-fun b!1504041 () Bool)

(declare-fun res!1024902 () Bool)

(assert (=> b!1504041 (=> (not res!1024902) (not e!840824))))

(assert (=> b!1504041 (= res!1024902 (validKeyInArray!0 (select (arr!48395 a!2850) i!996)))))

(declare-fun b!1504042 () Bool)

(declare-fun res!1024899 () Bool)

(assert (=> b!1504042 (=> (not res!1024899) (not e!840824))))

(assert (=> b!1504042 (= res!1024899 (not (= (select (arr!48395 a!2850) index!625) (select (arr!48395 a!2850) j!87))))))

(assert (= (and start!128100 res!1024900) b!1504038))

(assert (= (and b!1504038 res!1024896) b!1504041))

(assert (= (and b!1504041 res!1024902) b!1504040))

(assert (= (and b!1504040 res!1024901) b!1504035))

(assert (= (and b!1504035 res!1024898) b!1504036))

(assert (= (and b!1504036 res!1024894) b!1504034))

(assert (= (and b!1504034 res!1024897) b!1504037))

(assert (= (and b!1504037 res!1024895) b!1504042))

(assert (= (and b!1504042 res!1024899) b!1504039))

(declare-fun m!1387297 () Bool)

(assert (=> b!1504041 m!1387297))

(assert (=> b!1504041 m!1387297))

(declare-fun m!1387299 () Bool)

(assert (=> b!1504041 m!1387299))

(declare-fun m!1387301 () Bool)

(assert (=> b!1504034 m!1387301))

(declare-fun m!1387303 () Bool)

(assert (=> b!1504034 m!1387303))

(declare-fun m!1387305 () Bool)

(assert (=> b!1504034 m!1387305))

(declare-fun m!1387307 () Bool)

(assert (=> b!1504036 m!1387307))

(declare-fun m!1387309 () Bool)

(assert (=> start!128100 m!1387309))

(declare-fun m!1387311 () Bool)

(assert (=> start!128100 m!1387311))

(declare-fun m!1387313 () Bool)

(assert (=> b!1504040 m!1387313))

(assert (=> b!1504040 m!1387313))

(declare-fun m!1387315 () Bool)

(assert (=> b!1504040 m!1387315))

(declare-fun m!1387317 () Bool)

(assert (=> b!1504039 m!1387317))

(declare-fun m!1387319 () Bool)

(assert (=> b!1504042 m!1387319))

(assert (=> b!1504042 m!1387313))

(declare-fun m!1387321 () Bool)

(assert (=> b!1504035 m!1387321))

(assert (=> b!1504037 m!1387313))

(assert (=> b!1504037 m!1387313))

(declare-fun m!1387323 () Bool)

(assert (=> b!1504037 m!1387323))

(check-sat (not b!1504041) (not b!1504040) (not b!1504035) (not b!1504036) (not b!1504037) (not b!1504039) (not start!128100))
