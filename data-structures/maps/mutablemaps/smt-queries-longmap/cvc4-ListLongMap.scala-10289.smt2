; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120938 () Bool)

(assert start!120938)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96163 0))(
  ( (array!96164 (arr!46425 (Array (_ BitVec 32) (_ BitVec 64))) (size!46976 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96163)

(declare-fun b!1406634 () Bool)

(declare-fun e!796165 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10758 0))(
  ( (MissingZero!10758 (index!45408 (_ BitVec 32))) (Found!10758 (index!45409 (_ BitVec 32))) (Intermediate!10758 (undefined!11570 Bool) (index!45410 (_ BitVec 32)) (x!127008 (_ BitVec 32))) (Undefined!10758) (MissingVacant!10758 (index!45411 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96163 (_ BitVec 32)) SeekEntryResult!10758)

(assert (=> b!1406634 (= e!796165 (= (seekEntryOrOpen!0 (select (arr!46425 a!2901) j!112) a!2901 mask!2840) (Found!10758 j!112)))))

(declare-fun b!1406635 () Bool)

(declare-fun e!796166 () Bool)

(assert (=> b!1406635 (= e!796166 true)))

(declare-fun lt!619427 () SeekEntryResult!10758)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96163 (_ BitVec 32)) SeekEntryResult!10758)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406635 (= lt!619427 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46425 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46425 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96164 (store (arr!46425 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46976 a!2901)) mask!2840))))

(declare-fun b!1406636 () Bool)

(declare-fun e!796164 () Bool)

(assert (=> b!1406636 (= e!796164 (not e!796166))))

(declare-fun res!944967 () Bool)

(assert (=> b!1406636 (=> res!944967 e!796166)))

(declare-fun lt!619428 () SeekEntryResult!10758)

(assert (=> b!1406636 (= res!944967 (or (not (is-Intermediate!10758 lt!619428)) (undefined!11570 lt!619428)))))

(assert (=> b!1406636 e!796165))

(declare-fun res!944962 () Bool)

(assert (=> b!1406636 (=> (not res!944962) (not e!796165))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96163 (_ BitVec 32)) Bool)

(assert (=> b!1406636 (= res!944962 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47440 0))(
  ( (Unit!47441) )
))
(declare-fun lt!619429 () Unit!47440)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96163 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47440)

(assert (=> b!1406636 (= lt!619429 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1406636 (= lt!619428 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46425 a!2901) j!112) mask!2840) (select (arr!46425 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406637 () Bool)

(declare-fun res!944964 () Bool)

(assert (=> b!1406637 (=> (not res!944964) (not e!796164))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406637 (= res!944964 (validKeyInArray!0 (select (arr!46425 a!2901) j!112)))))

(declare-fun b!1406638 () Bool)

(declare-fun res!944965 () Bool)

(assert (=> b!1406638 (=> (not res!944965) (not e!796164))))

(assert (=> b!1406638 (= res!944965 (validKeyInArray!0 (select (arr!46425 a!2901) i!1037)))))

(declare-fun b!1406639 () Bool)

(declare-fun res!944960 () Bool)

(assert (=> b!1406639 (=> (not res!944960) (not e!796164))))

(declare-datatypes ((List!33124 0))(
  ( (Nil!33121) (Cons!33120 (h!34374 (_ BitVec 64)) (t!47825 List!33124)) )
))
(declare-fun arrayNoDuplicates!0 (array!96163 (_ BitVec 32) List!33124) Bool)

(assert (=> b!1406639 (= res!944960 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33121))))

(declare-fun b!1406640 () Bool)

(declare-fun res!944966 () Bool)

(assert (=> b!1406640 (=> (not res!944966) (not e!796164))))

(assert (=> b!1406640 (= res!944966 (and (= (size!46976 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46976 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46976 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1406641 () Bool)

(declare-fun res!944963 () Bool)

(assert (=> b!1406641 (=> (not res!944963) (not e!796164))))

(assert (=> b!1406641 (= res!944963 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!944961 () Bool)

(assert (=> start!120938 (=> (not res!944961) (not e!796164))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120938 (= res!944961 (validMask!0 mask!2840))))

(assert (=> start!120938 e!796164))

(assert (=> start!120938 true))

(declare-fun array_inv!35370 (array!96163) Bool)

(assert (=> start!120938 (array_inv!35370 a!2901)))

(assert (= (and start!120938 res!944961) b!1406640))

(assert (= (and b!1406640 res!944966) b!1406638))

(assert (= (and b!1406638 res!944965) b!1406637))

(assert (= (and b!1406637 res!944964) b!1406641))

(assert (= (and b!1406641 res!944963) b!1406639))

(assert (= (and b!1406639 res!944960) b!1406636))

(assert (= (and b!1406636 res!944962) b!1406634))

(assert (= (and b!1406636 (not res!944967)) b!1406635))

(declare-fun m!1295953 () Bool)

(assert (=> b!1406636 m!1295953))

(declare-fun m!1295955 () Bool)

(assert (=> b!1406636 m!1295955))

(assert (=> b!1406636 m!1295953))

(declare-fun m!1295957 () Bool)

(assert (=> b!1406636 m!1295957))

(assert (=> b!1406636 m!1295955))

(assert (=> b!1406636 m!1295953))

(declare-fun m!1295959 () Bool)

(assert (=> b!1406636 m!1295959))

(declare-fun m!1295961 () Bool)

(assert (=> b!1406636 m!1295961))

(declare-fun m!1295963 () Bool)

(assert (=> b!1406638 m!1295963))

(assert (=> b!1406638 m!1295963))

(declare-fun m!1295965 () Bool)

(assert (=> b!1406638 m!1295965))

(declare-fun m!1295967 () Bool)

(assert (=> start!120938 m!1295967))

(declare-fun m!1295969 () Bool)

(assert (=> start!120938 m!1295969))

(declare-fun m!1295971 () Bool)

(assert (=> b!1406635 m!1295971))

(declare-fun m!1295973 () Bool)

(assert (=> b!1406635 m!1295973))

(assert (=> b!1406635 m!1295973))

(declare-fun m!1295975 () Bool)

(assert (=> b!1406635 m!1295975))

(assert (=> b!1406635 m!1295975))

(assert (=> b!1406635 m!1295973))

(declare-fun m!1295977 () Bool)

(assert (=> b!1406635 m!1295977))

(declare-fun m!1295979 () Bool)

(assert (=> b!1406639 m!1295979))

(declare-fun m!1295981 () Bool)

(assert (=> b!1406641 m!1295981))

(assert (=> b!1406634 m!1295953))

(assert (=> b!1406634 m!1295953))

(declare-fun m!1295983 () Bool)

(assert (=> b!1406634 m!1295983))

(assert (=> b!1406637 m!1295953))

(assert (=> b!1406637 m!1295953))

(declare-fun m!1295985 () Bool)

(assert (=> b!1406637 m!1295985))

(push 1)

(assert (not b!1406636))

(assert (not start!120938))

(assert (not b!1406634))

(assert (not b!1406637))

(assert (not b!1406641))

(assert (not b!1406638))

(assert (not b!1406635))

(assert (not b!1406639))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

