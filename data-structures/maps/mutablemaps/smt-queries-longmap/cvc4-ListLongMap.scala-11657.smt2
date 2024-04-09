; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136372 () Bool)

(assert start!136372)

(declare-fun res!1077356 () Bool)

(declare-fun e!879609 () Bool)

(assert (=> start!136372 (=> (not res!1077356) (not e!879609))))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136372 (= res!1077356 (validMask!0 mask!910))))

(assert (=> start!136372 e!879609))

(assert (=> start!136372 true))

(declare-datatypes ((array!105515 0))(
  ( (array!105516 (arr!50874 (Array (_ BitVec 32) (_ BitVec 64))) (size!51425 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105515)

(declare-fun array_inv!39519 (array!105515) Bool)

(assert (=> start!136372 (array_inv!39519 _keys!610)))

(declare-fun b!1576955 () Bool)

(assert (=> b!1576955 (= e!879609 false)))

(declare-fun lt!675850 () (_ BitVec 32))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576955 (= lt!675850 (nextIndex!0 ee!12 x!458 mask!910))))

(declare-fun b!1576952 () Bool)

(declare-fun res!1077353 () Bool)

(assert (=> b!1576952 (=> (not res!1077353) (not e!879609))))

(assert (=> b!1576952 (= res!1077353 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51425 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1576954 () Bool)

(declare-fun res!1077354 () Bool)

(assert (=> b!1576954 (=> (not res!1077354) (not e!879609))))

(declare-fun k!768 () (_ BitVec 64))

(assert (=> b!1576954 (= res!1077354 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50874 _keys!610) ee!12) k!768)) (not (= (bvadd (select (arr!50874 _keys!610) ee!12) (select (arr!50874 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1576953 () Bool)

(declare-fun res!1077355 () Bool)

(assert (=> b!1576953 (=> (not res!1077355) (not e!879609))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1576953 (= res!1077355 (validKeyInArray!0 k!768))))

(assert (= (and start!136372 res!1077356) b!1576952))

(assert (= (and b!1576952 res!1077353) b!1576953))

(assert (= (and b!1576953 res!1077355) b!1576954))

(assert (= (and b!1576954 res!1077354) b!1576955))

(declare-fun m!1449319 () Bool)

(assert (=> start!136372 m!1449319))

(declare-fun m!1449321 () Bool)

(assert (=> start!136372 m!1449321))

(declare-fun m!1449323 () Bool)

(assert (=> b!1576955 m!1449323))

(declare-fun m!1449325 () Bool)

(assert (=> b!1576954 m!1449325))

(declare-fun m!1449327 () Bool)

(assert (=> b!1576953 m!1449327))

(push 1)

(assert (not b!1576955))

(assert (not b!1576953))

(assert (not start!136372))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

