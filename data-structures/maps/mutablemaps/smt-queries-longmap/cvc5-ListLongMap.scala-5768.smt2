; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74538 () Bool)

(assert start!74538)

(declare-fun b_free!15199 () Bool)

(declare-fun b_next!15199 () Bool)

(assert (=> start!74538 (= b_free!15199 (not b_next!15199))))

(declare-fun tp!53279 () Bool)

(declare-fun b_and!25093 () Bool)

(assert (=> start!74538 (= tp!53279 b_and!25093)))

(declare-fun b!877469 () Bool)

(declare-fun e!488476 () Bool)

(declare-fun tp_is_empty!17443 () Bool)

(assert (=> b!877469 (= e!488476 tp_is_empty!17443)))

(declare-fun b!877470 () Bool)

(declare-fun e!488475 () Bool)

(assert (=> b!877470 (= e!488475 false)))

(declare-datatypes ((V!28305 0))(
  ( (V!28306 (val!8769 Int)) )
))
(declare-fun v!557 () V!28305)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50996 0))(
  ( (array!50997 (arr!24520 (Array (_ BitVec 32) (_ BitVec 64))) (size!24961 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50996)

(declare-datatypes ((ValueCell!8282 0))(
  ( (ValueCellFull!8282 (v!11205 V!28305)) (EmptyCell!8282) )
))
(declare-datatypes ((array!50998 0))(
  ( (array!50999 (arr!24521 (Array (_ BitVec 32) ValueCell!8282)) (size!24962 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50998)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((tuple2!11610 0))(
  ( (tuple2!11611 (_1!5815 (_ BitVec 64)) (_2!5815 V!28305)) )
))
(declare-datatypes ((List!17491 0))(
  ( (Nil!17488) (Cons!17487 (h!18618 tuple2!11610) (t!24588 List!17491)) )
))
(declare-datatypes ((ListLongMap!10393 0))(
  ( (ListLongMap!10394 (toList!5212 List!17491)) )
))
(declare-fun lt!397052 () ListLongMap!10393)

(declare-fun minValue!654 () V!28305)

(declare-fun zeroValue!654 () V!28305)

(declare-fun getCurrentListMapNoExtraKeys!3174 (array!50996 array!50998 (_ BitVec 32) (_ BitVec 32) V!28305 V!28305 (_ BitVec 32) Int) ListLongMap!10393)

(assert (=> b!877470 (= lt!397052 (getCurrentListMapNoExtraKeys!3174 _keys!868 (array!50999 (store (arr!24521 _values!688) i!612 (ValueCellFull!8282 v!557)) (size!24962 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!397051 () ListLongMap!10393)

(assert (=> b!877470 (= lt!397051 (getCurrentListMapNoExtraKeys!3174 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!877472 () Bool)

(declare-fun res!596199 () Bool)

(assert (=> b!877472 (=> (not res!596199) (not e!488475))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!877472 (= res!596199 (validMask!0 mask!1196))))

(declare-fun b!877473 () Bool)

(declare-fun res!596203 () Bool)

(assert (=> b!877473 (=> (not res!596203) (not e!488475))))

(assert (=> b!877473 (= res!596203 (and (= (size!24962 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24961 _keys!868) (size!24962 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!877474 () Bool)

(declare-fun e!488474 () Bool)

(assert (=> b!877474 (= e!488474 tp_is_empty!17443)))

(declare-fun b!877475 () Bool)

(declare-fun res!596205 () Bool)

(assert (=> b!877475 (=> (not res!596205) (not e!488475))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!877475 (= res!596205 (validKeyInArray!0 k!854))))

(declare-fun b!877476 () Bool)

(declare-fun res!596202 () Bool)

(assert (=> b!877476 (=> (not res!596202) (not e!488475))))

(declare-datatypes ((List!17492 0))(
  ( (Nil!17489) (Cons!17488 (h!18619 (_ BitVec 64)) (t!24589 List!17492)) )
))
(declare-fun arrayNoDuplicates!0 (array!50996 (_ BitVec 32) List!17492) Bool)

(assert (=> b!877476 (= res!596202 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17489))))

(declare-fun mapIsEmpty!27780 () Bool)

(declare-fun mapRes!27780 () Bool)

(assert (=> mapIsEmpty!27780 mapRes!27780))

(declare-fun mapNonEmpty!27780 () Bool)

(declare-fun tp!53280 () Bool)

(assert (=> mapNonEmpty!27780 (= mapRes!27780 (and tp!53280 e!488474))))

(declare-fun mapKey!27780 () (_ BitVec 32))

(declare-fun mapValue!27780 () ValueCell!8282)

(declare-fun mapRest!27780 () (Array (_ BitVec 32) ValueCell!8282))

(assert (=> mapNonEmpty!27780 (= (arr!24521 _values!688) (store mapRest!27780 mapKey!27780 mapValue!27780))))

(declare-fun b!877477 () Bool)

(declare-fun res!596200 () Bool)

(assert (=> b!877477 (=> (not res!596200) (not e!488475))))

(assert (=> b!877477 (= res!596200 (and (= (select (arr!24520 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!877478 () Bool)

(declare-fun e!488478 () Bool)

(assert (=> b!877478 (= e!488478 (and e!488476 mapRes!27780))))

(declare-fun condMapEmpty!27780 () Bool)

(declare-fun mapDefault!27780 () ValueCell!8282)

