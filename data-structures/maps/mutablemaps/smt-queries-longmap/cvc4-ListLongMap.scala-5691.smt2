; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73962 () Bool)

(assert start!73962)

(declare-fun b_free!14849 () Bool)

(declare-fun b_next!14849 () Bool)

(assert (=> start!73962 (= b_free!14849 (not b_next!14849))))

(declare-fun tp!52051 () Bool)

(declare-fun b_and!24619 () Bool)

(assert (=> start!73962 (= tp!52051 b_and!24619)))

(declare-fun b!868785 () Bool)

(declare-fun res!590494 () Bool)

(declare-fun e!483887 () Bool)

(assert (=> b!868785 (=> (not res!590494) (not e!483887))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!868785 (= res!590494 (validMask!0 mask!1196))))

(declare-fun b!868786 () Bool)

(declare-fun e!483888 () Bool)

(declare-fun tp_is_empty!16985 () Bool)

(assert (=> b!868786 (= e!483888 tp_is_empty!16985)))

(declare-fun mapNonEmpty!27077 () Bool)

(declare-fun mapRes!27077 () Bool)

(declare-fun tp!52052 () Bool)

(declare-fun e!483886 () Bool)

(assert (=> mapNonEmpty!27077 (= mapRes!27077 (and tp!52052 e!483886))))

(declare-datatypes ((V!27693 0))(
  ( (V!27694 (val!8540 Int)) )
))
(declare-datatypes ((ValueCell!8053 0))(
  ( (ValueCellFull!8053 (v!10961 V!27693)) (EmptyCell!8053) )
))
(declare-fun mapValue!27077 () ValueCell!8053)

(declare-fun mapKey!27077 () (_ BitVec 32))

(declare-fun mapRest!27077 () (Array (_ BitVec 32) ValueCell!8053))

(declare-datatypes ((array!50104 0))(
  ( (array!50105 (arr!24079 (Array (_ BitVec 32) ValueCell!8053)) (size!24520 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50104)

(assert (=> mapNonEmpty!27077 (= (arr!24079 _values!688) (store mapRest!27077 mapKey!27077 mapValue!27077))))

(declare-fun b!868787 () Bool)

(declare-fun res!590496 () Bool)

(assert (=> b!868787 (=> (not res!590496) (not e!483887))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50106 0))(
  ( (array!50107 (arr!24080 (Array (_ BitVec 32) (_ BitVec 64))) (size!24521 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50106)

(assert (=> b!868787 (= res!590496 (and (= (select (arr!24080 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!868788 () Bool)

(declare-fun res!590490 () Bool)

(assert (=> b!868788 (=> (not res!590490) (not e!483887))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50106 (_ BitVec 32)) Bool)

(assert (=> b!868788 (= res!590490 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!868789 () Bool)

(declare-fun e!483890 () Bool)

(assert (=> b!868789 (= e!483887 e!483890)))

(declare-fun res!590492 () Bool)

(assert (=> b!868789 (=> (not res!590492) (not e!483890))))

(assert (=> b!868789 (= res!590492 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lt!394579 () array!50104)

(declare-fun minValue!654 () V!27693)

(declare-fun zeroValue!654 () V!27693)

(declare-datatypes ((tuple2!11340 0))(
  ( (tuple2!11341 (_1!5680 (_ BitVec 64)) (_2!5680 V!27693)) )
))
(declare-datatypes ((List!17198 0))(
  ( (Nil!17195) (Cons!17194 (h!18325 tuple2!11340) (t!24243 List!17198)) )
))
(declare-datatypes ((ListLongMap!10123 0))(
  ( (ListLongMap!10124 (toList!5077 List!17198)) )
))
(declare-fun lt!394580 () ListLongMap!10123)

(declare-fun getCurrentListMapNoExtraKeys!3041 (array!50106 array!50104 (_ BitVec 32) (_ BitVec 32) V!27693 V!27693 (_ BitVec 32) Int) ListLongMap!10123)

(assert (=> b!868789 (= lt!394580 (getCurrentListMapNoExtraKeys!3041 _keys!868 lt!394579 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27693)

(assert (=> b!868789 (= lt!394579 (array!50105 (store (arr!24079 _values!688) i!612 (ValueCellFull!8053 v!557)) (size!24520 _values!688)))))

(declare-fun lt!394578 () ListLongMap!10123)

(assert (=> b!868789 (= lt!394578 (getCurrentListMapNoExtraKeys!3041 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun res!590495 () Bool)

(assert (=> start!73962 (=> (not res!590495) (not e!483887))))

(assert (=> start!73962 (= res!590495 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24521 _keys!868))))))

(assert (=> start!73962 e!483887))

(assert (=> start!73962 tp_is_empty!16985))

(assert (=> start!73962 true))

(assert (=> start!73962 tp!52051))

(declare-fun array_inv!18996 (array!50106) Bool)

(assert (=> start!73962 (array_inv!18996 _keys!868)))

(declare-fun e!483889 () Bool)

(declare-fun array_inv!18997 (array!50104) Bool)

(assert (=> start!73962 (and (array_inv!18997 _values!688) e!483889)))

(declare-fun b!868790 () Bool)

(assert (=> b!868790 (= e!483886 tp_is_empty!16985)))

(declare-fun b!868791 () Bool)

(assert (=> b!868791 (= e!483889 (and e!483888 mapRes!27077))))

(declare-fun condMapEmpty!27077 () Bool)

(declare-fun mapDefault!27077 () ValueCell!8053)

