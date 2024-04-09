; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112252 () Bool)

(assert start!112252)

(declare-fun b_free!30611 () Bool)

(declare-fun b_next!30611 () Bool)

(assert (=> start!112252 (= b_free!30611 (not b_next!30611))))

(declare-fun tp!107470 () Bool)

(declare-fun b_and!49287 () Bool)

(assert (=> start!112252 (= tp!107470 b_and!49287)))

(declare-fun b!1329070 () Bool)

(declare-fun res!881930 () Bool)

(declare-fun e!757757 () Bool)

(assert (=> b!1329070 (=> (not res!881930) (not e!757757))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!89899 0))(
  ( (array!89900 (arr!43411 (Array (_ BitVec 32) (_ BitVec 64))) (size!43962 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89899)

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1329070 (= res!881930 (not (= (select (arr!43411 _keys!1590) from!1980) k!1153)))))

(declare-fun mapNonEmpty!56455 () Bool)

(declare-fun mapRes!56455 () Bool)

(declare-fun tp!107471 () Bool)

(declare-fun e!757755 () Bool)

(assert (=> mapNonEmpty!56455 (= mapRes!56455 (and tp!107471 e!757755))))

(declare-fun mapKey!56455 () (_ BitVec 32))

(declare-datatypes ((V!53797 0))(
  ( (V!53798 (val!18335 Int)) )
))
(declare-datatypes ((ValueCell!17362 0))(
  ( (ValueCellFull!17362 (v!20970 V!53797)) (EmptyCell!17362) )
))
(declare-datatypes ((array!89901 0))(
  ( (array!89902 (arr!43412 (Array (_ BitVec 32) ValueCell!17362)) (size!43963 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89901)

(declare-fun mapValue!56455 () ValueCell!17362)

(declare-fun mapRest!56455 () (Array (_ BitVec 32) ValueCell!17362))

(assert (=> mapNonEmpty!56455 (= (arr!43412 _values!1320) (store mapRest!56455 mapKey!56455 mapValue!56455))))

(declare-fun b!1329071 () Bool)

(declare-fun res!881933 () Bool)

(assert (=> b!1329071 (=> (not res!881933) (not e!757757))))

(declare-datatypes ((List!30941 0))(
  ( (Nil!30938) (Cons!30937 (h!32146 (_ BitVec 64)) (t!44972 List!30941)) )
))
(declare-fun arrayNoDuplicates!0 (array!89899 (_ BitVec 32) List!30941) Bool)

(assert (=> b!1329071 (= res!881933 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30938))))

(declare-fun b!1329072 () Bool)

(declare-fun res!881932 () Bool)

(assert (=> b!1329072 (=> (not res!881932) (not e!757757))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1329072 (= res!881932 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43962 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1329073 () Bool)

(declare-fun e!757759 () Bool)

(declare-fun tp_is_empty!36521 () Bool)

(assert (=> b!1329073 (= e!757759 tp_is_empty!36521)))

(declare-fun b!1329074 () Bool)

(declare-fun res!881925 () Bool)

(assert (=> b!1329074 (=> (not res!881925) (not e!757757))))

(assert (=> b!1329074 (= res!881925 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1329075 () Bool)

(declare-fun e!757758 () Bool)

(assert (=> b!1329075 (= e!757758 (and e!757759 mapRes!56455))))

(declare-fun condMapEmpty!56455 () Bool)

(declare-fun mapDefault!56455 () ValueCell!17362)

