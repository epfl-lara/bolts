; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74318 () Bool)

(assert start!74318)

(declare-fun b_free!15053 () Bool)

(declare-fun b_next!15053 () Bool)

(assert (=> start!74318 (= b_free!15053 (not b_next!15053))))

(declare-fun tp!52835 () Bool)

(declare-fun b_and!24847 () Bool)

(assert (=> start!74318 (= tp!52835 b_and!24847)))

(declare-fun b!873900 () Bool)

(declare-fun e!486640 () Bool)

(assert (=> b!873900 (= e!486640 false)))

(declare-datatypes ((V!28109 0))(
  ( (V!28110 (val!8696 Int)) )
))
(declare-fun v!557 () V!28109)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11488 0))(
  ( (tuple2!11489 (_1!5754 (_ BitVec 64)) (_2!5754 V!28109)) )
))
(declare-datatypes ((List!17376 0))(
  ( (Nil!17373) (Cons!17372 (h!18503 tuple2!11488) (t!24425 List!17376)) )
))
(declare-datatypes ((ListLongMap!10271 0))(
  ( (ListLongMap!10272 (toList!5151 List!17376)) )
))
(declare-fun lt!395818 () ListLongMap!10271)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50708 0))(
  ( (array!50709 (arr!24378 (Array (_ BitVec 32) (_ BitVec 64))) (size!24819 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50708)

(declare-datatypes ((ValueCell!8209 0))(
  ( (ValueCellFull!8209 (v!11121 V!28109)) (EmptyCell!8209) )
))
(declare-datatypes ((array!50710 0))(
  ( (array!50711 (arr!24379 (Array (_ BitVec 32) ValueCell!8209)) (size!24820 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50710)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28109)

(declare-fun zeroValue!654 () V!28109)

(declare-fun getCurrentListMapNoExtraKeys!3115 (array!50708 array!50710 (_ BitVec 32) (_ BitVec 32) V!28109 V!28109 (_ BitVec 32) Int) ListLongMap!10271)

(assert (=> b!873900 (= lt!395818 (getCurrentListMapNoExtraKeys!3115 _keys!868 (array!50711 (store (arr!24379 _values!688) i!612 (ValueCellFull!8209 v!557)) (size!24820 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!395817 () ListLongMap!10271)

(assert (=> b!873900 (= lt!395817 (getCurrentListMapNoExtraKeys!3115 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!27554 () Bool)

(declare-fun mapRes!27554 () Bool)

(declare-fun tp!52834 () Bool)

(declare-fun e!486642 () Bool)

(assert (=> mapNonEmpty!27554 (= mapRes!27554 (and tp!52834 e!486642))))

(declare-fun mapRest!27554 () (Array (_ BitVec 32) ValueCell!8209))

(declare-fun mapValue!27554 () ValueCell!8209)

(declare-fun mapKey!27554 () (_ BitVec 32))

(assert (=> mapNonEmpty!27554 (= (arr!24379 _values!688) (store mapRest!27554 mapKey!27554 mapValue!27554))))

(declare-fun b!873901 () Bool)

(declare-fun e!486641 () Bool)

(declare-fun tp_is_empty!17297 () Bool)

(assert (=> b!873901 (= e!486641 tp_is_empty!17297)))

(declare-fun b!873902 () Bool)

(declare-fun res!593979 () Bool)

(assert (=> b!873902 (=> (not res!593979) (not e!486640))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!873902 (= res!593979 (validMask!0 mask!1196))))

(declare-fun b!873903 () Bool)

(declare-fun e!486643 () Bool)

(assert (=> b!873903 (= e!486643 (and e!486641 mapRes!27554))))

(declare-fun condMapEmpty!27554 () Bool)

(declare-fun mapDefault!27554 () ValueCell!8209)

