; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100292 () Bool)

(assert start!100292)

(declare-fun res!795836 () Bool)

(declare-fun e!679508 () Bool)

(assert (=> start!100292 (=> (not res!795836) (not e!679508))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77408 0))(
  ( (array!77409 (arr!37347 (Array (_ BitVec 32) (_ BitVec 64))) (size!37884 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77408)

(assert (=> start!100292 (= res!795836 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37884 _keys!1208))))))

(assert (=> start!100292 e!679508))

(declare-fun array_inv!28368 (array!77408) Bool)

(assert (=> start!100292 (array_inv!28368 _keys!1208)))

(assert (=> start!100292 true))

(declare-datatypes ((V!45557 0))(
  ( (V!45558 (val!15218 Int)) )
))
(declare-datatypes ((ValueCell!14452 0))(
  ( (ValueCellFull!14452 (v!17857 V!45557)) (EmptyCell!14452) )
))
(declare-datatypes ((array!77410 0))(
  ( (array!77411 (arr!37348 (Array (_ BitVec 32) ValueCell!14452)) (size!37885 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77410)

(declare-fun e!679506 () Bool)

(declare-fun array_inv!28369 (array!77410) Bool)

(assert (=> start!100292 (and (array_inv!28369 _values!996) e!679506)))

(declare-fun b!1195802 () Bool)

(declare-fun res!795833 () Bool)

(assert (=> b!1195802 (=> (not res!795833) (not e!679508))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1195802 (= res!795833 (validMask!0 mask!1564))))

(declare-fun b!1195803 () Bool)

(declare-fun res!795837 () Bool)

(assert (=> b!1195803 (=> (not res!795837) (not e!679508))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77408 (_ BitVec 32)) Bool)

(assert (=> b!1195803 (= res!795837 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1195804 () Bool)

(declare-fun e!679510 () Bool)

(assert (=> b!1195804 (= e!679510 (not true))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77408 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1195804 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39594 0))(
  ( (Unit!39595) )
))
(declare-fun lt!542940 () Unit!39594)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77408 (_ BitVec 64) (_ BitVec 32)) Unit!39594)

(assert (=> b!1195804 (= lt!542940 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1195805 () Bool)

(declare-fun res!795832 () Bool)

(assert (=> b!1195805 (=> (not res!795832) (not e!679510))))

(declare-fun lt!542939 () array!77408)

(declare-datatypes ((List!26449 0))(
  ( (Nil!26446) (Cons!26445 (h!27654 (_ BitVec 64)) (t!39127 List!26449)) )
))
(declare-fun arrayNoDuplicates!0 (array!77408 (_ BitVec 32) List!26449) Bool)

(assert (=> b!1195805 (= res!795832 (arrayNoDuplicates!0 lt!542939 #b00000000000000000000000000000000 Nil!26446))))

(declare-fun b!1195806 () Bool)

(declare-fun res!795841 () Bool)

(assert (=> b!1195806 (=> (not res!795841) (not e!679508))))

(assert (=> b!1195806 (= res!795841 (= (select (arr!37347 _keys!1208) i!673) k!934))))

(declare-fun b!1195807 () Bool)

(assert (=> b!1195807 (= e!679508 e!679510)))

(declare-fun res!795834 () Bool)

(assert (=> b!1195807 (=> (not res!795834) (not e!679510))))

(assert (=> b!1195807 (= res!795834 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542939 mask!1564))))

(assert (=> b!1195807 (= lt!542939 (array!77409 (store (arr!37347 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37884 _keys!1208)))))

(declare-fun mapIsEmpty!47321 () Bool)

(declare-fun mapRes!47321 () Bool)

(assert (=> mapIsEmpty!47321 mapRes!47321))

(declare-fun b!1195808 () Bool)

(declare-fun res!795839 () Bool)

(assert (=> b!1195808 (=> (not res!795839) (not e!679508))))

(assert (=> b!1195808 (= res!795839 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26446))))

(declare-fun b!1195809 () Bool)

(declare-fun e!679505 () Bool)

(declare-fun tp_is_empty!30323 () Bool)

(assert (=> b!1195809 (= e!679505 tp_is_empty!30323)))

(declare-fun b!1195810 () Bool)

(assert (=> b!1195810 (= e!679506 (and e!679505 mapRes!47321))))

(declare-fun condMapEmpty!47321 () Bool)

(declare-fun mapDefault!47321 () ValueCell!14452)

