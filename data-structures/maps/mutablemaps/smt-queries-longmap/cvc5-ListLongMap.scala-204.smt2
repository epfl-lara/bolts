; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3904 () Bool)

(assert start!3904)

(declare-fun b_free!811 () Bool)

(declare-fun b_next!811 () Bool)

(assert (=> start!3904 (= b_free!811 (not b_next!811))))

(declare-fun tp!3852 () Bool)

(declare-fun b_and!1623 () Bool)

(assert (=> start!3904 (= tp!3852 b_and!1623)))

(declare-fun b!27575 () Bool)

(declare-fun res!16319 () Bool)

(declare-fun e!17948 () Bool)

(assert (=> b!27575 (=> (not res!16319) (not e!17948))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1379 0))(
  ( (V!1380 (val!609 Int)) )
))
(declare-datatypes ((ValueCell!383 0))(
  ( (ValueCellFull!383 (v!1698 V!1379)) (EmptyCell!383) )
))
(declare-datatypes ((array!1561 0))(
  ( (array!1562 (arr!734 (Array (_ BitVec 32) ValueCell!383)) (size!835 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1561)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1563 0))(
  ( (array!1564 (arr!735 (Array (_ BitVec 32) (_ BitVec 64))) (size!836 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1563)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1379)

(declare-fun minValue!1443 () V!1379)

(declare-datatypes ((tuple2!1004 0))(
  ( (tuple2!1005 (_1!512 (_ BitVec 64)) (_2!512 V!1379)) )
))
(declare-datatypes ((List!621 0))(
  ( (Nil!618) (Cons!617 (h!1184 tuple2!1004) (t!3316 List!621)) )
))
(declare-datatypes ((ListLongMap!585 0))(
  ( (ListLongMap!586 (toList!308 List!621)) )
))
(declare-fun contains!245 (ListLongMap!585 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!136 (array!1563 array!1561 (_ BitVec 32) (_ BitVec 32) V!1379 V!1379 (_ BitVec 32) Int) ListLongMap!585)

(assert (=> b!27575 (= res!16319 (not (contains!245 (getCurrentListMap!136 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun mapNonEmpty!1276 () Bool)

(declare-fun mapRes!1276 () Bool)

(declare-fun tp!3853 () Bool)

(declare-fun e!17946 () Bool)

(assert (=> mapNonEmpty!1276 (= mapRes!1276 (and tp!3853 e!17946))))

(declare-fun mapKey!1276 () (_ BitVec 32))

(declare-fun mapValue!1276 () ValueCell!383)

(declare-fun mapRest!1276 () (Array (_ BitVec 32) ValueCell!383))

(assert (=> mapNonEmpty!1276 (= (arr!734 _values!1501) (store mapRest!1276 mapKey!1276 mapValue!1276))))

(declare-fun mapIsEmpty!1276 () Bool)

(assert (=> mapIsEmpty!1276 mapRes!1276))

(declare-fun b!27576 () Bool)

(assert (=> b!27576 (= e!17948 false)))

(declare-fun lt!10701 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!1563 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!27576 (= lt!10701 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!27577 () Bool)

(declare-fun e!17947 () Bool)

(declare-fun e!17950 () Bool)

(assert (=> b!27577 (= e!17947 (and e!17950 mapRes!1276))))

(declare-fun condMapEmpty!1276 () Bool)

(declare-fun mapDefault!1276 () ValueCell!383)

