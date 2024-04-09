; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136440 () Bool)

(assert start!136440)

(declare-fun res!1077590 () Bool)

(declare-fun e!879740 () Bool)

(assert (=> start!136440 (=> (not res!1077590) (not e!879740))))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136440 (= res!1077590 (validMask!0 mask!910))))

(assert (=> start!136440 e!879740))

(assert (=> start!136440 true))

(declare-datatypes ((array!105562 0))(
  ( (array!105563 (arr!50896 (Array (_ BitVec 32) (_ BitVec 64))) (size!51447 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105562)

(declare-fun array_inv!39541 (array!105562) Bool)

(assert (=> start!136440 (array_inv!39541 _keys!610)))

(declare-fun b!1577187 () Bool)

(declare-fun res!1077589 () Bool)

(assert (=> b!1577187 (=> (not res!1077589) (not e!879740))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(assert (=> b!1577187 (= res!1077589 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51447 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577188 () Bool)

(declare-fun res!1077588 () Bool)

(assert (=> b!1577188 (=> (not res!1077588) (not e!879740))))

(declare-fun k!768 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577188 (= res!1077588 (validKeyInArray!0 k!768))))

(declare-fun b!1577189 () Bool)

(assert (=> b!1577189 (= e!879740 (and (bvslt x!458 #b01111111111111111111111111111110) (or (= (select (arr!50896 _keys!610) ee!12) k!768) (= (bvadd (select (arr!50896 _keys!610) ee!12) (select (arr!50896 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50896 _keys!610) ee!12) k!768)) (not (= (select (arr!50896 _keys!610) ee!12) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsge ee!12 (size!51447 _keys!610))))))

(assert (= (and start!136440 res!1077590) b!1577187))

(assert (= (and b!1577187 res!1077589) b!1577188))

(assert (= (and b!1577188 res!1077588) b!1577189))

(declare-fun m!1449521 () Bool)

(assert (=> start!136440 m!1449521))

(declare-fun m!1449523 () Bool)

(assert (=> start!136440 m!1449523))

(declare-fun m!1449525 () Bool)

(assert (=> b!1577188 m!1449525))

(declare-fun m!1449527 () Bool)

(assert (=> b!1577189 m!1449527))

(push 1)

(assert (not start!136440))

(assert (not b!1577188))

(check-sat)

(pop 1)

(push 1)

(check-sat)

