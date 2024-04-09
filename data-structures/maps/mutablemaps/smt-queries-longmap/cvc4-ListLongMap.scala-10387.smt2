; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122378 () Bool)

(assert start!122378)

(declare-fun b!1418120 () Bool)

(declare-fun res!953908 () Bool)

(declare-fun e!802571 () Bool)

(assert (=> b!1418120 (=> (not res!953908) (not e!802571))))

(declare-datatypes ((array!96799 0))(
  ( (array!96800 (arr!46719 (Array (_ BitVec 32) (_ BitVec 64))) (size!47270 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96799)

(declare-datatypes ((List!33409 0))(
  ( (Nil!33406) (Cons!33405 (h!34698 (_ BitVec 64)) (t!48110 List!33409)) )
))
(declare-fun arrayNoDuplicates!0 (array!96799 (_ BitVec 32) List!33409) Bool)

(assert (=> b!1418120 (= res!953908 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33406))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun b!1418121 () Bool)

(assert (=> b!1418121 (= e!802571 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47270 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47270 a!2831)) (bvsge mask!2608 #b00000000000000000000000000000000) (bvsgt mask!2608 #b00111111111111111111111111111111)))))

(declare-fun b!1418122 () Bool)

(declare-fun res!953906 () Bool)

(assert (=> b!1418122 (=> (not res!953906) (not e!802571))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418122 (= res!953906 (validKeyInArray!0 (select (arr!46719 a!2831) i!982)))))

(declare-fun b!1418123 () Bool)

(declare-fun res!953905 () Bool)

(assert (=> b!1418123 (=> (not res!953905) (not e!802571))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1418123 (= res!953905 (and (= (size!47270 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47270 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47270 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1418124 () Bool)

(declare-fun res!953909 () Bool)

(assert (=> b!1418124 (=> (not res!953909) (not e!802571))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96799 (_ BitVec 32)) Bool)

(assert (=> b!1418124 (= res!953909 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!953907 () Bool)

(assert (=> start!122378 (=> (not res!953907) (not e!802571))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122378 (= res!953907 (validMask!0 mask!2608))))

(assert (=> start!122378 e!802571))

(assert (=> start!122378 true))

(declare-fun array_inv!35664 (array!96799) Bool)

(assert (=> start!122378 (array_inv!35664 a!2831)))

(declare-fun b!1418125 () Bool)

(declare-fun res!953910 () Bool)

(assert (=> b!1418125 (=> (not res!953910) (not e!802571))))

(assert (=> b!1418125 (= res!953910 (validKeyInArray!0 (select (arr!46719 a!2831) j!81)))))

(assert (= (and start!122378 res!953907) b!1418123))

(assert (= (and b!1418123 res!953905) b!1418122))

(assert (= (and b!1418122 res!953906) b!1418125))

(assert (= (and b!1418125 res!953910) b!1418124))

(assert (= (and b!1418124 res!953909) b!1418120))

(assert (= (and b!1418120 res!953908) b!1418121))

(declare-fun m!1308919 () Bool)

(assert (=> b!1418120 m!1308919))

(declare-fun m!1308921 () Bool)

(assert (=> b!1418125 m!1308921))

(assert (=> b!1418125 m!1308921))

(declare-fun m!1308923 () Bool)

(assert (=> b!1418125 m!1308923))

(declare-fun m!1308925 () Bool)

(assert (=> start!122378 m!1308925))

(declare-fun m!1308927 () Bool)

(assert (=> start!122378 m!1308927))

(declare-fun m!1308929 () Bool)

(assert (=> b!1418122 m!1308929))

(assert (=> b!1418122 m!1308929))

(declare-fun m!1308931 () Bool)

(assert (=> b!1418122 m!1308931))

(declare-fun m!1308933 () Bool)

(assert (=> b!1418124 m!1308933))

(push 1)

(assert (not b!1418124))

(assert (not b!1418122))

(assert (not b!1418125))

(assert (not start!122378))

(assert (not b!1418120))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1418161 () Bool)

(declare-fun e!802601 () Bool)

(declare-fun call!67257 () Bool)

(assert (=> b!1418161 (= e!802601 call!67257)))

(declare-fun b!1418162 () Bool)

(declare-fun e!802600 () Bool)

(assert (=> b!1418162 (= e!802601 e!802600)))

(declare-fun lt!625488 () (_ BitVec 64))

