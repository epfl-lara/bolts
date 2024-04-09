; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119218 () Bool)

(assert start!119218)

(declare-fun b!1390159 () Bool)

(declare-fun e!787318 () Bool)

(assert (=> b!1390159 (= e!787318 (not true))))

(declare-fun e!787317 () Bool)

(assert (=> b!1390159 e!787317))

(declare-fun res!930435 () Bool)

(assert (=> b!1390159 (=> (not res!930435) (not e!787317))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95073 0))(
  ( (array!95074 (arr!45898 (Array (_ BitVec 32) (_ BitVec 64))) (size!46449 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95073)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95073 (_ BitVec 32)) Bool)

(assert (=> b!1390159 (= res!930435 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46428 0))(
  ( (Unit!46429) )
))
(declare-fun lt!610707 () Unit!46428)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95073 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46428)

(assert (=> b!1390159 (= lt!610707 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10237 0))(
  ( (MissingZero!10237 (index!43318 (_ BitVec 32))) (Found!10237 (index!43319 (_ BitVec 32))) (Intermediate!10237 (undefined!11049 Bool) (index!43320 (_ BitVec 32)) (x!125006 (_ BitVec 32))) (Undefined!10237) (MissingVacant!10237 (index!43321 (_ BitVec 32))) )
))
(declare-fun lt!610708 () SeekEntryResult!10237)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95073 (_ BitVec 32)) SeekEntryResult!10237)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390159 (= lt!610708 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45898 a!2901) j!112) mask!2840) (select (arr!45898 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!930432 () Bool)

(assert (=> start!119218 (=> (not res!930432) (not e!787318))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119218 (= res!930432 (validMask!0 mask!2840))))

(assert (=> start!119218 e!787318))

(assert (=> start!119218 true))

(declare-fun array_inv!34843 (array!95073) Bool)

(assert (=> start!119218 (array_inv!34843 a!2901)))

(declare-fun b!1390160 () Bool)

(declare-fun res!930429 () Bool)

(assert (=> b!1390160 (=> (not res!930429) (not e!787318))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1390160 (= res!930429 (and (= (size!46449 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46449 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46449 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1390161 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95073 (_ BitVec 32)) SeekEntryResult!10237)

(assert (=> b!1390161 (= e!787317 (= (seekEntryOrOpen!0 (select (arr!45898 a!2901) j!112) a!2901 mask!2840) (Found!10237 j!112)))))

(declare-fun b!1390162 () Bool)

(declare-fun res!930430 () Bool)

(assert (=> b!1390162 (=> (not res!930430) (not e!787318))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390162 (= res!930430 (validKeyInArray!0 (select (arr!45898 a!2901) j!112)))))

(declare-fun b!1390163 () Bool)

(declare-fun res!930433 () Bool)

(assert (=> b!1390163 (=> (not res!930433) (not e!787318))))

(assert (=> b!1390163 (= res!930433 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1390164 () Bool)

(declare-fun res!930434 () Bool)

(assert (=> b!1390164 (=> (not res!930434) (not e!787318))))

(assert (=> b!1390164 (= res!930434 (validKeyInArray!0 (select (arr!45898 a!2901) i!1037)))))

(declare-fun b!1390165 () Bool)

(declare-fun res!930431 () Bool)

(assert (=> b!1390165 (=> (not res!930431) (not e!787318))))

(declare-datatypes ((List!32597 0))(
  ( (Nil!32594) (Cons!32593 (h!33811 (_ BitVec 64)) (t!47298 List!32597)) )
))
(declare-fun arrayNoDuplicates!0 (array!95073 (_ BitVec 32) List!32597) Bool)

(assert (=> b!1390165 (= res!930431 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32594))))

(assert (= (and start!119218 res!930432) b!1390160))

(assert (= (and b!1390160 res!930429) b!1390164))

(assert (= (and b!1390164 res!930434) b!1390162))

(assert (= (and b!1390162 res!930430) b!1390163))

(assert (= (and b!1390163 res!930433) b!1390165))

(assert (= (and b!1390165 res!930431) b!1390159))

(assert (= (and b!1390159 res!930435) b!1390161))

(declare-fun m!1276019 () Bool)

(assert (=> b!1390163 m!1276019))

(declare-fun m!1276021 () Bool)

(assert (=> b!1390164 m!1276021))

(assert (=> b!1390164 m!1276021))

(declare-fun m!1276023 () Bool)

(assert (=> b!1390164 m!1276023))

(declare-fun m!1276025 () Bool)

(assert (=> b!1390162 m!1276025))

(assert (=> b!1390162 m!1276025))

(declare-fun m!1276027 () Bool)

(assert (=> b!1390162 m!1276027))

(assert (=> b!1390161 m!1276025))

(assert (=> b!1390161 m!1276025))

(declare-fun m!1276029 () Bool)

(assert (=> b!1390161 m!1276029))

(assert (=> b!1390159 m!1276025))

(declare-fun m!1276031 () Bool)

(assert (=> b!1390159 m!1276031))

(assert (=> b!1390159 m!1276025))

(declare-fun m!1276033 () Bool)

(assert (=> b!1390159 m!1276033))

(assert (=> b!1390159 m!1276031))

(assert (=> b!1390159 m!1276025))

(declare-fun m!1276035 () Bool)

(assert (=> b!1390159 m!1276035))

(declare-fun m!1276037 () Bool)

(assert (=> b!1390159 m!1276037))

(declare-fun m!1276039 () Bool)

(assert (=> start!119218 m!1276039))

(declare-fun m!1276041 () Bool)

(assert (=> start!119218 m!1276041))

(declare-fun m!1276043 () Bool)

(assert (=> b!1390165 m!1276043))

(push 1)

(assert (not b!1390161))

(assert (not b!1390162))

(assert (not b!1390159))

(assert (not b!1390165))

(assert (not b!1390164))

(assert (not b!1390163))

(assert (not start!119218))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

