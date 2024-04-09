; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122368 () Bool)

(assert start!122368)

(declare-fun b!1418030 () Bool)

(declare-fun res!953818 () Bool)

(declare-fun e!802540 () Bool)

(assert (=> b!1418030 (=> (not res!953818) (not e!802540))))

(declare-datatypes ((array!96789 0))(
  ( (array!96790 (arr!46714 (Array (_ BitVec 32) (_ BitVec 64))) (size!47265 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96789)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96789 (_ BitVec 32)) Bool)

(assert (=> b!1418030 (= res!953818 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1418031 () Bool)

(declare-fun res!953819 () Bool)

(assert (=> b!1418031 (=> (not res!953819) (not e!802540))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1418031 (= res!953819 (and (= (size!47265 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47265 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47265 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1418032 () Bool)

(declare-fun res!953820 () Bool)

(assert (=> b!1418032 (=> (not res!953820) (not e!802540))))

(declare-datatypes ((List!33404 0))(
  ( (Nil!33401) (Cons!33400 (h!34693 (_ BitVec 64)) (t!48105 List!33404)) )
))
(declare-fun arrayNoDuplicates!0 (array!96789 (_ BitVec 32) List!33404) Bool)

(assert (=> b!1418032 (= res!953820 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33401))))

(declare-fun res!953817 () Bool)

(assert (=> start!122368 (=> (not res!953817) (not e!802540))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122368 (= res!953817 (validMask!0 mask!2608))))

(assert (=> start!122368 e!802540))

(assert (=> start!122368 true))

(declare-fun array_inv!35659 (array!96789) Bool)

(assert (=> start!122368 (array_inv!35659 a!2831)))

(declare-fun b!1418033 () Bool)

(declare-fun res!953815 () Bool)

(assert (=> b!1418033 (=> (not res!953815) (not e!802540))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418033 (= res!953815 (validKeyInArray!0 (select (arr!46714 a!2831) i!982)))))

(declare-fun b!1418034 () Bool)

(declare-fun res!953816 () Bool)

(assert (=> b!1418034 (=> (not res!953816) (not e!802540))))

(assert (=> b!1418034 (= res!953816 (validKeyInArray!0 (select (arr!46714 a!2831) j!81)))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun b!1418035 () Bool)

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1418035 (= e!802540 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47265 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47265 a!2831)) (bvslt mask!2608 #b00000000000000000000000000000000)))))

(assert (= (and start!122368 res!953817) b!1418031))

(assert (= (and b!1418031 res!953819) b!1418033))

(assert (= (and b!1418033 res!953815) b!1418034))

(assert (= (and b!1418034 res!953816) b!1418030))

(assert (= (and b!1418030 res!953818) b!1418032))

(assert (= (and b!1418032 res!953820) b!1418035))

(declare-fun m!1308839 () Bool)

(assert (=> start!122368 m!1308839))

(declare-fun m!1308841 () Bool)

(assert (=> start!122368 m!1308841))

(declare-fun m!1308843 () Bool)

(assert (=> b!1418034 m!1308843))

(assert (=> b!1418034 m!1308843))

(declare-fun m!1308845 () Bool)

(assert (=> b!1418034 m!1308845))

(declare-fun m!1308847 () Bool)

(assert (=> b!1418032 m!1308847))

(declare-fun m!1308849 () Bool)

(assert (=> b!1418030 m!1308849))

(declare-fun m!1308851 () Bool)

(assert (=> b!1418033 m!1308851))

(assert (=> b!1418033 m!1308851))

(declare-fun m!1308853 () Bool)

(assert (=> b!1418033 m!1308853))

(push 1)

(assert (not b!1418030))

(assert (not b!1418032))

(assert (not b!1418034))

(assert (not start!122368))

(assert (not b!1418033))

(check-sat)

(pop 1)

