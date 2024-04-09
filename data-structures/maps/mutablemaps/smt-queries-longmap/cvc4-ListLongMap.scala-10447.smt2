; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122888 () Bool)

(assert start!122888)

(declare-fun b!1424817 () Bool)

(declare-fun res!960360 () Bool)

(declare-fun e!805199 () Bool)

(assert (=> b!1424817 (=> (not res!960360) (not e!805199))))

(declare-datatypes ((array!97171 0))(
  ( (array!97172 (arr!46899 (Array (_ BitVec 32) (_ BitVec 64))) (size!47450 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97171)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97171 (_ BitVec 32)) Bool)

(assert (=> b!1424817 (= res!960360 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1424818 () Bool)

(declare-fun res!960359 () Bool)

(assert (=> b!1424818 (=> (not res!960359) (not e!805199))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1424818 (= res!960359 (validKeyInArray!0 (select (arr!46899 a!2831) j!81)))))

(declare-fun res!960362 () Bool)

(assert (=> start!122888 (=> (not res!960362) (not e!805199))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122888 (= res!960362 (validMask!0 mask!2608))))

(assert (=> start!122888 e!805199))

(assert (=> start!122888 true))

(declare-fun array_inv!35844 (array!97171) Bool)

(assert (=> start!122888 (array_inv!35844 a!2831)))

(declare-fun b!1424819 () Bool)

(declare-fun res!960363 () Bool)

(assert (=> b!1424819 (=> (not res!960363) (not e!805199))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1424819 (= res!960363 (validKeyInArray!0 (select (arr!46899 a!2831) i!982)))))

(declare-fun b!1424820 () Bool)

(assert (=> b!1424820 (= e!805199 false)))

(declare-fun lt!627682 () Bool)

(declare-datatypes ((List!33589 0))(
  ( (Nil!33586) (Cons!33585 (h!34887 (_ BitVec 64)) (t!48290 List!33589)) )
))
(declare-fun arrayNoDuplicates!0 (array!97171 (_ BitVec 32) List!33589) Bool)

(assert (=> b!1424820 (= lt!627682 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33586))))

(declare-fun b!1424821 () Bool)

(declare-fun res!960361 () Bool)

(assert (=> b!1424821 (=> (not res!960361) (not e!805199))))

(assert (=> b!1424821 (= res!960361 (and (= (size!47450 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47450 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47450 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!122888 res!960362) b!1424821))

(assert (= (and b!1424821 res!960361) b!1424819))

(assert (= (and b!1424819 res!960363) b!1424818))

(assert (= (and b!1424818 res!960359) b!1424817))

(assert (= (and b!1424817 res!960360) b!1424820))

(declare-fun m!1315447 () Bool)

(assert (=> b!1424820 m!1315447))

(declare-fun m!1315449 () Bool)

(assert (=> b!1424819 m!1315449))

(assert (=> b!1424819 m!1315449))

(declare-fun m!1315451 () Bool)

(assert (=> b!1424819 m!1315451))

(declare-fun m!1315453 () Bool)

(assert (=> b!1424817 m!1315453))

(declare-fun m!1315455 () Bool)

(assert (=> b!1424818 m!1315455))

(assert (=> b!1424818 m!1315455))

(declare-fun m!1315457 () Bool)

(assert (=> b!1424818 m!1315457))

(declare-fun m!1315459 () Bool)

(assert (=> start!122888 m!1315459))

(declare-fun m!1315461 () Bool)

(assert (=> start!122888 m!1315461))

(push 1)

(assert (not b!1424819))

(assert (not start!122888))

(assert (not b!1424817))

(assert (not b!1424820))

(assert (not b!1424818))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

