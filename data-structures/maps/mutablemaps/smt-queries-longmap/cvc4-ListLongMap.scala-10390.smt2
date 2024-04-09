; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122426 () Bool)

(assert start!122426)

(declare-fun b!1418389 () Bool)

(declare-fun res!954144 () Bool)

(declare-fun e!802687 () Bool)

(assert (=> b!1418389 (=> (not res!954144) (not e!802687))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!96820 0))(
  ( (array!96821 (arr!46728 (Array (_ BitVec 32) (_ BitVec 64))) (size!47279 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96820)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1418389 (= res!954144 (and (= (size!47279 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47279 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47279 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1418390 () Bool)

(declare-fun res!954138 () Bool)

(assert (=> b!1418390 (=> (not res!954138) (not e!802687))))

(declare-datatypes ((List!33418 0))(
  ( (Nil!33415) (Cons!33414 (h!34707 (_ BitVec 64)) (t!48119 List!33418)) )
))
(declare-fun arrayNoDuplicates!0 (array!96820 (_ BitVec 32) List!33418) Bool)

(assert (=> b!1418390 (= res!954138 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33415))))

(declare-fun res!954139 () Bool)

(assert (=> start!122426 (=> (not res!954139) (not e!802687))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122426 (= res!954139 (validMask!0 mask!2608))))

(assert (=> start!122426 e!802687))

(assert (=> start!122426 true))

(declare-fun array_inv!35673 (array!96820) Bool)

(assert (=> start!122426 (array_inv!35673 a!2831)))

(declare-fun b!1418391 () Bool)

(declare-fun res!954142 () Bool)

(assert (=> b!1418391 (=> (not res!954142) (not e!802687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96820 (_ BitVec 32)) Bool)

(assert (=> b!1418391 (= res!954142 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1418392 () Bool)

(assert (=> b!1418392 (= e!802687 false)))

(declare-fun lt!625525 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1418392 (= lt!625525 (toIndex!0 (select (arr!46728 a!2831) j!81) mask!2608))))

(declare-fun b!1418393 () Bool)

(declare-fun res!954141 () Bool)

(assert (=> b!1418393 (=> (not res!954141) (not e!802687))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1418393 (= res!954141 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47279 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47279 a!2831))))))

(declare-fun b!1418394 () Bool)

(declare-fun res!954140 () Bool)

(assert (=> b!1418394 (=> (not res!954140) (not e!802687))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418394 (= res!954140 (validKeyInArray!0 (select (arr!46728 a!2831) i!982)))))

(declare-fun b!1418395 () Bool)

(declare-fun res!954143 () Bool)

(assert (=> b!1418395 (=> (not res!954143) (not e!802687))))

(assert (=> b!1418395 (= res!954143 (validKeyInArray!0 (select (arr!46728 a!2831) j!81)))))

(assert (= (and start!122426 res!954139) b!1418389))

(assert (= (and b!1418389 res!954144) b!1418394))

(assert (= (and b!1418394 res!954140) b!1418395))

(assert (= (and b!1418395 res!954143) b!1418391))

(assert (= (and b!1418391 res!954142) b!1418390))

(assert (= (and b!1418390 res!954138) b!1418393))

(assert (= (and b!1418393 res!954141) b!1418392))

(declare-fun m!1309127 () Bool)

(assert (=> b!1418391 m!1309127))

(declare-fun m!1309129 () Bool)

(assert (=> b!1418390 m!1309129))

(declare-fun m!1309131 () Bool)

(assert (=> b!1418394 m!1309131))

(assert (=> b!1418394 m!1309131))

(declare-fun m!1309133 () Bool)

(assert (=> b!1418394 m!1309133))

(declare-fun m!1309135 () Bool)

(assert (=> b!1418395 m!1309135))

(assert (=> b!1418395 m!1309135))

(declare-fun m!1309137 () Bool)

(assert (=> b!1418395 m!1309137))

(assert (=> b!1418392 m!1309135))

(assert (=> b!1418392 m!1309135))

(declare-fun m!1309139 () Bool)

(assert (=> b!1418392 m!1309139))

(declare-fun m!1309141 () Bool)

(assert (=> start!122426 m!1309141))

(declare-fun m!1309143 () Bool)

(assert (=> start!122426 m!1309143))

(push 1)

(assert (not b!1418395))

(assert (not start!122426))

(assert (not b!1418394))

(assert (not b!1418392))

(assert (not b!1418391))

(assert (not b!1418390))

(check-sat)

(pop 1)

