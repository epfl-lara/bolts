; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122416 () Bool)

(assert start!122416)

(declare-fun b!1418284 () Bool)

(declare-fun res!954033 () Bool)

(declare-fun e!802658 () Bool)

(assert (=> b!1418284 (=> (not res!954033) (not e!802658))))

(declare-datatypes ((array!96810 0))(
  ( (array!96811 (arr!46723 (Array (_ BitVec 32) (_ BitVec 64))) (size!47274 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96810)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418284 (= res!954033 (validKeyInArray!0 (select (arr!46723 a!2831) i!982)))))

(declare-fun b!1418285 () Bool)

(declare-fun res!954034 () Bool)

(assert (=> b!1418285 (=> (not res!954034) (not e!802658))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1418285 (= res!954034 (validKeyInArray!0 (select (arr!46723 a!2831) j!81)))))

(declare-fun b!1418286 () Bool)

(declare-fun res!954037 () Bool)

(assert (=> b!1418286 (=> (not res!954037) (not e!802658))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1418286 (= res!954037 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47274 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47274 a!2831))))))

(declare-fun b!1418287 () Bool)

(declare-fun res!954036 () Bool)

(assert (=> b!1418287 (=> (not res!954036) (not e!802658))))

(declare-fun mask!2608 () (_ BitVec 32))

(assert (=> b!1418287 (= res!954036 (and (= (size!47274 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47274 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47274 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1418288 () Bool)

(assert (=> b!1418288 (= e!802658 (bvslt mask!2608 #b00000000000000000000000000000000))))

(declare-fun lt!625510 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1418288 (= lt!625510 (toIndex!0 (select (arr!46723 a!2831) j!81) mask!2608))))

(declare-fun b!1418289 () Bool)

(declare-fun res!954035 () Bool)

(assert (=> b!1418289 (=> (not res!954035) (not e!802658))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96810 (_ BitVec 32)) Bool)

(assert (=> b!1418289 (= res!954035 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1418290 () Bool)

(declare-fun res!954038 () Bool)

(assert (=> b!1418290 (=> (not res!954038) (not e!802658))))

(declare-datatypes ((List!33413 0))(
  ( (Nil!33410) (Cons!33409 (h!34702 (_ BitVec 64)) (t!48114 List!33413)) )
))
(declare-fun arrayNoDuplicates!0 (array!96810 (_ BitVec 32) List!33413) Bool)

(assert (=> b!1418290 (= res!954038 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33410))))

(declare-fun res!954039 () Bool)

(assert (=> start!122416 (=> (not res!954039) (not e!802658))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122416 (= res!954039 (validMask!0 mask!2608))))

(assert (=> start!122416 e!802658))

(assert (=> start!122416 true))

(declare-fun array_inv!35668 (array!96810) Bool)

(assert (=> start!122416 (array_inv!35668 a!2831)))

(assert (= (and start!122416 res!954039) b!1418287))

(assert (= (and b!1418287 res!954036) b!1418284))

(assert (= (and b!1418284 res!954033) b!1418285))

(assert (= (and b!1418285 res!954034) b!1418289))

(assert (= (and b!1418289 res!954035) b!1418290))

(assert (= (and b!1418290 res!954038) b!1418286))

(assert (= (and b!1418286 res!954037) b!1418288))

(declare-fun m!1309037 () Bool)

(assert (=> b!1418285 m!1309037))

(assert (=> b!1418285 m!1309037))

(declare-fun m!1309039 () Bool)

(assert (=> b!1418285 m!1309039))

(declare-fun m!1309041 () Bool)

(assert (=> b!1418284 m!1309041))

(assert (=> b!1418284 m!1309041))

(declare-fun m!1309043 () Bool)

(assert (=> b!1418284 m!1309043))

(declare-fun m!1309045 () Bool)

(assert (=> start!122416 m!1309045))

(declare-fun m!1309047 () Bool)

(assert (=> start!122416 m!1309047))

(assert (=> b!1418288 m!1309037))

(assert (=> b!1418288 m!1309037))

(declare-fun m!1309049 () Bool)

(assert (=> b!1418288 m!1309049))

(declare-fun m!1309051 () Bool)

(assert (=> b!1418289 m!1309051))

(declare-fun m!1309053 () Bool)

(assert (=> b!1418290 m!1309053))

(push 1)

(assert (not b!1418285))

(assert (not b!1418284))

(assert (not b!1418290))

(assert (not b!1418289))

(assert (not start!122416))

(assert (not b!1418288))

(check-sat)

(pop 1)

(push 1)

(check-sat)

