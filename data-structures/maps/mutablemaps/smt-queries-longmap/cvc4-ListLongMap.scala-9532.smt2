; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113094 () Bool)

(assert start!113094)

(declare-fun b_free!31109 () Bool)

(declare-fun b_next!31109 () Bool)

(assert (=> start!113094 (= b_free!31109 (not b_next!31109))))

(declare-fun tp!109133 () Bool)

(declare-fun b_and!50149 () Bool)

(assert (=> start!113094 (= tp!109133 b_and!50149)))

(declare-fun b!1339927 () Bool)

(declare-fun e!763267 () Bool)

(declare-fun tp_is_empty!37109 () Bool)

(assert (=> b!1339927 (= e!763267 tp_is_empty!37109)))

(declare-fun b!1339928 () Bool)

(declare-fun res!888939 () Bool)

(declare-fun e!763270 () Bool)

(assert (=> b!1339928 (=> (not res!888939) (not e!763270))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!91035 0))(
  ( (array!91036 (arr!43969 (Array (_ BitVec 32) (_ BitVec 64))) (size!44520 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91035)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1339928 (= res!888939 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44520 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1339929 () Bool)

(declare-fun e!763268 () Bool)

(assert (=> b!1339929 (= e!763268 tp_is_empty!37109)))

(declare-fun mapNonEmpty!57370 () Bool)

(declare-fun mapRes!57370 () Bool)

(declare-fun tp!109132 () Bool)

(assert (=> mapNonEmpty!57370 (= mapRes!57370 (and tp!109132 e!763267))))

(declare-datatypes ((V!54581 0))(
  ( (V!54582 (val!18629 Int)) )
))
(declare-datatypes ((ValueCell!17656 0))(
  ( (ValueCellFull!17656 (v!21275 V!54581)) (EmptyCell!17656) )
))
(declare-fun mapRest!57370 () (Array (_ BitVec 32) ValueCell!17656))

(declare-fun mapValue!57370 () ValueCell!17656)

(declare-fun mapKey!57370 () (_ BitVec 32))

(declare-datatypes ((array!91037 0))(
  ( (array!91038 (arr!43970 (Array (_ BitVec 32) ValueCell!17656)) (size!44521 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91037)

(assert (=> mapNonEmpty!57370 (= (arr!43970 _values!1303) (store mapRest!57370 mapKey!57370 mapValue!57370))))

(declare-fun b!1339930 () Bool)

(declare-fun res!888937 () Bool)

(assert (=> b!1339930 (=> (not res!888937) (not e!763270))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91035 (_ BitVec 32)) Bool)

(assert (=> b!1339930 (= res!888937 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1339931 () Bool)

(declare-fun res!888941 () Bool)

(assert (=> b!1339931 (=> (not res!888941) (not e!763270))))

(declare-datatypes ((List!31313 0))(
  ( (Nil!31310) (Cons!31309 (h!32518 (_ BitVec 64)) (t!45652 List!31313)) )
))
(declare-fun arrayNoDuplicates!0 (array!91035 (_ BitVec 32) List!31313) Bool)

(assert (=> b!1339931 (= res!888941 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31310))))

(declare-fun b!1339932 () Bool)

(declare-fun e!763269 () Bool)

(assert (=> b!1339932 (= e!763269 (and e!763268 mapRes!57370))))

(declare-fun condMapEmpty!57370 () Bool)

(declare-fun mapDefault!57370 () ValueCell!17656)

