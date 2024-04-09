; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122410 () Bool)

(assert start!122410)

(declare-fun b!1418221 () Bool)

(declare-fun res!953976 () Bool)

(declare-fun e!802639 () Bool)

(assert (=> b!1418221 (=> (not res!953976) (not e!802639))))

(declare-datatypes ((array!96804 0))(
  ( (array!96805 (arr!46720 (Array (_ BitVec 32) (_ BitVec 64))) (size!47271 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96804)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96804 (_ BitVec 32)) Bool)

(assert (=> b!1418221 (= res!953976 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1418222 () Bool)

(declare-fun res!953974 () Bool)

(assert (=> b!1418222 (=> (not res!953974) (not e!802639))))

(declare-datatypes ((List!33410 0))(
  ( (Nil!33407) (Cons!33406 (h!34699 (_ BitVec 64)) (t!48111 List!33410)) )
))
(declare-fun arrayNoDuplicates!0 (array!96804 (_ BitVec 32) List!33410) Bool)

(assert (=> b!1418222 (= res!953974 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33407))))

(declare-fun b!1418223 () Bool)

(declare-fun res!953973 () Bool)

(assert (=> b!1418223 (=> (not res!953973) (not e!802639))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418223 (= res!953973 (validKeyInArray!0 (select (arr!46720 a!2831) i!982)))))

(declare-fun res!953975 () Bool)

(assert (=> start!122410 (=> (not res!953975) (not e!802639))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122410 (= res!953975 (validMask!0 mask!2608))))

(assert (=> start!122410 e!802639))

(assert (=> start!122410 true))

(declare-fun array_inv!35665 (array!96804) Bool)

(assert (=> start!122410 (array_inv!35665 a!2831)))

(declare-fun b!1418224 () Bool)

(declare-fun res!953971 () Bool)

(assert (=> b!1418224 (=> (not res!953971) (not e!802639))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1418224 (= res!953971 (and (= (size!47271 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47271 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47271 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1418225 () Bool)

(assert (=> b!1418225 (= e!802639 false)))

(declare-fun lt!625501 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1418225 (= lt!625501 (toIndex!0 (select (arr!46720 a!2831) j!81) mask!2608))))

(declare-fun b!1418226 () Bool)

(declare-fun res!953972 () Bool)

(assert (=> b!1418226 (=> (not res!953972) (not e!802639))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1418226 (= res!953972 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47271 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47271 a!2831))))))

(declare-fun b!1418227 () Bool)

(declare-fun res!953970 () Bool)

(assert (=> b!1418227 (=> (not res!953970) (not e!802639))))

(assert (=> b!1418227 (= res!953970 (validKeyInArray!0 (select (arr!46720 a!2831) j!81)))))

(assert (= (and start!122410 res!953975) b!1418224))

(assert (= (and b!1418224 res!953971) b!1418223))

(assert (= (and b!1418223 res!953973) b!1418227))

(assert (= (and b!1418227 res!953970) b!1418221))

(assert (= (and b!1418221 res!953976) b!1418222))

(assert (= (and b!1418222 res!953974) b!1418226))

(assert (= (and b!1418226 res!953972) b!1418225))

(declare-fun m!1308983 () Bool)

(assert (=> b!1418221 m!1308983))

(declare-fun m!1308985 () Bool)

(assert (=> b!1418225 m!1308985))

(assert (=> b!1418225 m!1308985))

(declare-fun m!1308987 () Bool)

(assert (=> b!1418225 m!1308987))

(assert (=> b!1418227 m!1308985))

(assert (=> b!1418227 m!1308985))

(declare-fun m!1308989 () Bool)

(assert (=> b!1418227 m!1308989))

(declare-fun m!1308991 () Bool)

(assert (=> start!122410 m!1308991))

(declare-fun m!1308993 () Bool)

(assert (=> start!122410 m!1308993))

(declare-fun m!1308995 () Bool)

(assert (=> b!1418223 m!1308995))

(assert (=> b!1418223 m!1308995))

(declare-fun m!1308997 () Bool)

(assert (=> b!1418223 m!1308997))

(declare-fun m!1308999 () Bool)

(assert (=> b!1418222 m!1308999))

(push 1)

(assert (not b!1418222))

(assert (not b!1418225))

(assert (not start!122410))

(assert (not b!1418227))

(assert (not b!1418223))

(assert (not b!1418221))

(check-sat)

(pop 1)

