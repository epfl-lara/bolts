; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100184 () Bool)

(assert start!100184)

(declare-fun b!1194362 () Bool)

(declare-fun res!794770 () Bool)

(declare-fun e!678801 () Bool)

(assert (=> b!1194362 (=> (not res!794770) (not e!678801))))

(declare-datatypes ((array!77276 0))(
  ( (array!77277 (arr!37284 (Array (_ BitVec 32) (_ BitVec 64))) (size!37821 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77276)

(declare-datatypes ((List!26421 0))(
  ( (Nil!26418) (Cons!26417 (h!27626 (_ BitVec 64)) (t!39099 List!26421)) )
))
(declare-fun arrayNoDuplicates!0 (array!77276 (_ BitVec 32) List!26421) Bool)

(assert (=> b!1194362 (= res!794770 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26418))))

(declare-fun b!1194363 () Bool)

(declare-fun e!678802 () Bool)

(declare-fun tp_is_empty!30257 () Bool)

(assert (=> b!1194363 (= e!678802 tp_is_empty!30257)))

(declare-fun b!1194364 () Bool)

(declare-fun res!794762 () Bool)

(assert (=> b!1194364 (=> (not res!794762) (not e!678801))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45469 0))(
  ( (V!45470 (val!15185 Int)) )
))
(declare-datatypes ((ValueCell!14419 0))(
  ( (ValueCellFull!14419 (v!17824 V!45469)) (EmptyCell!14419) )
))
(declare-datatypes ((array!77278 0))(
  ( (array!77279 (arr!37285 (Array (_ BitVec 32) ValueCell!14419)) (size!37822 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77278)

(assert (=> b!1194364 (= res!794762 (and (= (size!37822 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37821 _keys!1208) (size!37822 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1194365 () Bool)

(declare-fun res!794769 () Bool)

(declare-fun e!678799 () Bool)

(assert (=> b!1194365 (=> (not res!794769) (not e!678799))))

(declare-fun lt!542712 () array!77276)

(assert (=> b!1194365 (= res!794769 (arrayNoDuplicates!0 lt!542712 #b00000000000000000000000000000000 Nil!26418))))

(declare-fun mapIsEmpty!47213 () Bool)

(declare-fun mapRes!47213 () Bool)

(assert (=> mapIsEmpty!47213 mapRes!47213))

(declare-fun b!1194366 () Bool)

(declare-fun res!794763 () Bool)

(assert (=> b!1194366 (=> (not res!794763) (not e!678801))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1194366 (= res!794763 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37821 _keys!1208))))))

(declare-fun res!794766 () Bool)

(assert (=> start!100184 (=> (not res!794766) (not e!678801))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100184 (= res!794766 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37821 _keys!1208))))))

(assert (=> start!100184 e!678801))

(declare-fun array_inv!28322 (array!77276) Bool)

(assert (=> start!100184 (array_inv!28322 _keys!1208)))

(assert (=> start!100184 true))

(declare-fun e!678800 () Bool)

(declare-fun array_inv!28323 (array!77278) Bool)

(assert (=> start!100184 (and (array_inv!28323 _values!996) e!678800)))

(declare-fun b!1194367 () Bool)

(assert (=> b!1194367 (= e!678800 (and e!678802 mapRes!47213))))

(declare-fun condMapEmpty!47213 () Bool)

(declare-fun mapDefault!47213 () ValueCell!14419)

