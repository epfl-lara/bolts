; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100162 () Bool)

(assert start!100162)

(declare-fun mapNonEmpty!47180 () Bool)

(declare-fun mapRes!47180 () Bool)

(declare-fun tp!89791 () Bool)

(declare-fun e!678603 () Bool)

(assert (=> mapNonEmpty!47180 (= mapRes!47180 (and tp!89791 e!678603))))

(declare-datatypes ((V!45441 0))(
  ( (V!45442 (val!15174 Int)) )
))
(declare-datatypes ((ValueCell!14408 0))(
  ( (ValueCellFull!14408 (v!17813 V!45441)) (EmptyCell!14408) )
))
(declare-fun mapValue!47180 () ValueCell!14408)

(declare-fun mapKey!47180 () (_ BitVec 32))

(declare-fun mapRest!47180 () (Array (_ BitVec 32) ValueCell!14408))

(declare-datatypes ((array!77232 0))(
  ( (array!77233 (arr!37262 (Array (_ BitVec 32) ValueCell!14408)) (size!37799 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77232)

(assert (=> mapNonEmpty!47180 (= (arr!37262 _values!996) (store mapRest!47180 mapKey!47180 mapValue!47180))))

(declare-fun b!1193959 () Bool)

(declare-fun res!794458 () Bool)

(declare-fun e!678601 () Bool)

(assert (=> b!1193959 (=> (not res!794458) (not e!678601))))

(declare-datatypes ((array!77234 0))(
  ( (array!77235 (arr!37263 (Array (_ BitVec 32) (_ BitVec 64))) (size!37800 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77234)

(declare-datatypes ((List!26411 0))(
  ( (Nil!26408) (Cons!26407 (h!27616 (_ BitVec 64)) (t!39089 List!26411)) )
))
(declare-fun arrayNoDuplicates!0 (array!77234 (_ BitVec 32) List!26411) Bool)

(assert (=> b!1193959 (= res!794458 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26408))))

(declare-fun b!1193960 () Bool)

(declare-fun e!678599 () Bool)

(assert (=> b!1193960 (= e!678599 false)))

(declare-fun lt!542655 () Bool)

(declare-fun lt!542654 () array!77234)

(assert (=> b!1193960 (= lt!542655 (arrayNoDuplicates!0 lt!542654 #b00000000000000000000000000000000 Nil!26408))))

(declare-fun b!1193961 () Bool)

(declare-fun res!794463 () Bool)

(assert (=> b!1193961 (=> (not res!794463) (not e!678601))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1193961 (= res!794463 (= (select (arr!37263 _keys!1208) i!673) k!934))))

(declare-fun b!1193962 () Bool)

(declare-fun res!794464 () Bool)

(assert (=> b!1193962 (=> (not res!794464) (not e!678601))))

(assert (=> b!1193962 (= res!794464 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37800 _keys!1208))))))

(declare-fun b!1193963 () Bool)

(declare-fun e!678604 () Bool)

(declare-fun e!678602 () Bool)

(assert (=> b!1193963 (= e!678604 (and e!678602 mapRes!47180))))

(declare-fun condMapEmpty!47180 () Bool)

(declare-fun mapDefault!47180 () ValueCell!14408)

