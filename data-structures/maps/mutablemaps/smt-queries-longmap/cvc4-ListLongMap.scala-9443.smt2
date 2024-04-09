; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112306 () Bool)

(assert start!112306)

(declare-fun b_free!30665 () Bool)

(declare-fun b_next!30665 () Bool)

(assert (=> start!112306 (= b_free!30665 (not b_next!30665))))

(declare-fun tp!107633 () Bool)

(declare-fun b_and!49395 () Bool)

(assert (=> start!112306 (= tp!107633 b_and!49395)))

(declare-fun b!1330096 () Bool)

(declare-fun res!882658 () Bool)

(declare-fun e!758160 () Bool)

(assert (=> b!1330096 (=> (not res!882658) (not e!758160))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90005 0))(
  ( (array!90006 (arr!43464 (Array (_ BitVec 32) (_ BitVec 64))) (size!44015 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90005)

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1330096 (= res!882658 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44015 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!56536 () Bool)

(declare-fun mapRes!56536 () Bool)

(declare-fun tp!107632 () Bool)

(declare-fun e!758161 () Bool)

(assert (=> mapNonEmpty!56536 (= mapRes!56536 (and tp!107632 e!758161))))

(declare-datatypes ((V!53869 0))(
  ( (V!53870 (val!18362 Int)) )
))
(declare-datatypes ((ValueCell!17389 0))(
  ( (ValueCellFull!17389 (v!20997 V!53869)) (EmptyCell!17389) )
))
(declare-datatypes ((array!90007 0))(
  ( (array!90008 (arr!43465 (Array (_ BitVec 32) ValueCell!17389)) (size!44016 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90007)

(declare-fun mapValue!56536 () ValueCell!17389)

(declare-fun mapRest!56536 () (Array (_ BitVec 32) ValueCell!17389))

(declare-fun mapKey!56536 () (_ BitVec 32))

(assert (=> mapNonEmpty!56536 (= (arr!43465 _values!1320) (store mapRest!56536 mapKey!56536 mapValue!56536))))

(declare-fun b!1330097 () Bool)

(declare-fun res!882656 () Bool)

(assert (=> b!1330097 (=> (not res!882656) (not e!758160))))

(assert (=> b!1330097 (= res!882656 (not (= (select (arr!43464 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1330098 () Bool)

(declare-fun res!882657 () Bool)

(assert (=> b!1330098 (=> (not res!882657) (not e!758160))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!53869)

(declare-fun zeroValue!1262 () V!53869)

(declare-datatypes ((tuple2!23792 0))(
  ( (tuple2!23793 (_1!11906 (_ BitVec 64)) (_2!11906 V!53869)) )
))
(declare-datatypes ((List!30981 0))(
  ( (Nil!30978) (Cons!30977 (h!32186 tuple2!23792) (t!45066 List!30981)) )
))
(declare-datatypes ((ListLongMap!21461 0))(
  ( (ListLongMap!21462 (toList!10746 List!30981)) )
))
(declare-fun contains!8846 (ListLongMap!21461 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5676 (array!90005 array!90007 (_ BitVec 32) (_ BitVec 32) V!53869 V!53869 (_ BitVec 32) Int) ListLongMap!21461)

(assert (=> b!1330098 (= res!882657 (contains!8846 (getCurrentListMap!5676 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun res!882654 () Bool)

(assert (=> start!112306 (=> (not res!882654) (not e!758160))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112306 (= res!882654 (validMask!0 mask!1998))))

(assert (=> start!112306 e!758160))

(declare-fun e!758164 () Bool)

(declare-fun array_inv!32745 (array!90007) Bool)

(assert (=> start!112306 (and (array_inv!32745 _values!1320) e!758164)))

(assert (=> start!112306 true))

(declare-fun array_inv!32746 (array!90005) Bool)

(assert (=> start!112306 (array_inv!32746 _keys!1590)))

(assert (=> start!112306 tp!107633))

(declare-fun tp_is_empty!36575 () Bool)

(assert (=> start!112306 tp_is_empty!36575))

(declare-fun b!1330099 () Bool)

(declare-fun res!882659 () Bool)

(assert (=> b!1330099 (=> (not res!882659) (not e!758160))))

(declare-datatypes ((List!30982 0))(
  ( (Nil!30979) (Cons!30978 (h!32187 (_ BitVec 64)) (t!45067 List!30982)) )
))
(declare-fun arrayNoDuplicates!0 (array!90005 (_ BitVec 32) List!30982) Bool)

(assert (=> b!1330099 (= res!882659 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30979))))

(declare-fun b!1330100 () Bool)

(declare-fun e!758162 () Bool)

(assert (=> b!1330100 (= e!758164 (and e!758162 mapRes!56536))))

(declare-fun condMapEmpty!56536 () Bool)

(declare-fun mapDefault!56536 () ValueCell!17389)

