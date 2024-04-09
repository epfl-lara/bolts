; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101238 () Bool)

(assert start!101238)

(declare-fun b_free!26125 () Bool)

(declare-fun b_next!26125 () Bool)

(assert (=> start!101238 (= b_free!26125 (not b_next!26125))))

(declare-fun tp!91397 () Bool)

(declare-fun b_and!43377 () Bool)

(assert (=> start!101238 (= tp!91397 b_and!43377)))

(declare-fun b!1214948 () Bool)

(declare-fun e!689941 () Bool)

(declare-fun tp_is_empty!30829 () Bool)

(assert (=> b!1214948 (= e!689941 tp_is_empty!30829)))

(declare-fun mapNonEmpty!48118 () Bool)

(declare-fun mapRes!48118 () Bool)

(declare-fun tp!91398 () Bool)

(declare-fun e!689942 () Bool)

(assert (=> mapNonEmpty!48118 (= mapRes!48118 (and tp!91398 e!689942))))

(declare-fun mapKey!48118 () (_ BitVec 32))

(declare-datatypes ((V!46233 0))(
  ( (V!46234 (val!15471 Int)) )
))
(declare-datatypes ((ValueCell!14705 0))(
  ( (ValueCellFull!14705 (v!18125 V!46233)) (EmptyCell!14705) )
))
(declare-fun mapRest!48118 () (Array (_ BitVec 32) ValueCell!14705))

(declare-datatypes ((array!78412 0))(
  ( (array!78413 (arr!37837 (Array (_ BitVec 32) ValueCell!14705)) (size!38374 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78412)

(declare-fun mapValue!48118 () ValueCell!14705)

(assert (=> mapNonEmpty!48118 (= (arr!37837 _values!996) (store mapRest!48118 mapKey!48118 mapValue!48118))))

(declare-fun b!1214949 () Bool)

(declare-fun e!689946 () Bool)

(declare-fun e!689944 () Bool)

(assert (=> b!1214949 (= e!689946 (not e!689944))))

(declare-fun res!806737 () Bool)

(assert (=> b!1214949 (=> res!806737 e!689944)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1214949 (= res!806737 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!78414 0))(
  ( (array!78415 (arr!37838 (Array (_ BitVec 32) (_ BitVec 64))) (size!38375 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78414)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78414 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1214949 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40218 0))(
  ( (Unit!40219) )
))
(declare-fun lt!552440 () Unit!40218)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78414 (_ BitVec 64) (_ BitVec 32)) Unit!40218)

(assert (=> b!1214949 (= lt!552440 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!806735 () Bool)

(declare-fun e!689945 () Bool)

(assert (=> start!101238 (=> (not res!806735) (not e!689945))))

(assert (=> start!101238 (= res!806735 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38375 _keys!1208))))))

(assert (=> start!101238 e!689945))

(assert (=> start!101238 tp_is_empty!30829))

(declare-fun array_inv!28714 (array!78414) Bool)

(assert (=> start!101238 (array_inv!28714 _keys!1208)))

(assert (=> start!101238 true))

(assert (=> start!101238 tp!91397))

(declare-fun e!689940 () Bool)

(declare-fun array_inv!28715 (array!78412) Bool)

(assert (=> start!101238 (and (array_inv!28715 _values!996) e!689940)))

(declare-fun b!1214950 () Bool)

(assert (=> b!1214950 (= e!689940 (and e!689941 mapRes!48118))))

(declare-fun condMapEmpty!48118 () Bool)

(declare-fun mapDefault!48118 () ValueCell!14705)

