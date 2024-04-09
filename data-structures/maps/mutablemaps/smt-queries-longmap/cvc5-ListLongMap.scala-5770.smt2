; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74550 () Bool)

(assert start!74550)

(declare-fun b_free!15211 () Bool)

(declare-fun b_next!15211 () Bool)

(assert (=> start!74550 (= b_free!15211 (not b_next!15211))))

(declare-fun tp!53316 () Bool)

(declare-fun b_and!25105 () Bool)

(assert (=> start!74550 (= tp!53316 b_and!25105)))

(declare-fun mapNonEmpty!27798 () Bool)

(declare-fun mapRes!27798 () Bool)

(declare-fun tp!53315 () Bool)

(declare-fun e!488564 () Bool)

(assert (=> mapNonEmpty!27798 (= mapRes!27798 (and tp!53315 e!488564))))

(declare-datatypes ((V!28321 0))(
  ( (V!28322 (val!8775 Int)) )
))
(declare-datatypes ((ValueCell!8288 0))(
  ( (ValueCellFull!8288 (v!11211 V!28321)) (EmptyCell!8288) )
))
(declare-fun mapValue!27798 () ValueCell!8288)

(declare-fun mapRest!27798 () (Array (_ BitVec 32) ValueCell!8288))

(declare-fun mapKey!27798 () (_ BitVec 32))

(declare-datatypes ((array!51020 0))(
  ( (array!51021 (arr!24532 (Array (_ BitVec 32) ValueCell!8288)) (size!24973 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51020)

(assert (=> mapNonEmpty!27798 (= (arr!24532 _values!688) (store mapRest!27798 mapKey!27798 mapValue!27798))))

(declare-fun b!877667 () Bool)

(declare-fun e!488565 () Bool)

(declare-fun tp_is_empty!17455 () Bool)

(assert (=> b!877667 (= e!488565 tp_is_empty!17455)))

(declare-fun mapIsEmpty!27798 () Bool)

(assert (=> mapIsEmpty!27798 mapRes!27798))

(declare-fun b!877668 () Bool)

(declare-fun res!596343 () Bool)

(declare-fun e!488566 () Bool)

(assert (=> b!877668 (=> (not res!596343) (not e!488566))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!877668 (= res!596343 (validKeyInArray!0 k!854))))

(declare-fun b!877669 () Bool)

(declare-fun res!596345 () Bool)

(assert (=> b!877669 (=> (not res!596345) (not e!488566))))

(declare-datatypes ((array!51022 0))(
  ( (array!51023 (arr!24533 (Array (_ BitVec 32) (_ BitVec 64))) (size!24974 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51022)

(declare-datatypes ((List!17501 0))(
  ( (Nil!17498) (Cons!17497 (h!18628 (_ BitVec 64)) (t!24598 List!17501)) )
))
(declare-fun arrayNoDuplicates!0 (array!51022 (_ BitVec 32) List!17501) Bool)

(assert (=> b!877669 (= res!596345 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17498))))

(declare-fun res!596346 () Bool)

(assert (=> start!74550 (=> (not res!596346) (not e!488566))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74550 (= res!596346 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24974 _keys!868))))))

(assert (=> start!74550 e!488566))

(assert (=> start!74550 tp_is_empty!17455))

(assert (=> start!74550 true))

(assert (=> start!74550 tp!53316))

(declare-fun array_inv!19322 (array!51022) Bool)

(assert (=> start!74550 (array_inv!19322 _keys!868)))

(declare-fun e!488568 () Bool)

(declare-fun array_inv!19323 (array!51020) Bool)

(assert (=> start!74550 (and (array_inv!19323 _values!688) e!488568)))

(declare-fun b!877670 () Bool)

(assert (=> b!877670 (= e!488566 false)))

(declare-fun v!557 () V!28321)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!11620 0))(
  ( (tuple2!11621 (_1!5820 (_ BitVec 64)) (_2!5820 V!28321)) )
))
(declare-datatypes ((List!17502 0))(
  ( (Nil!17499) (Cons!17498 (h!18629 tuple2!11620) (t!24599 List!17502)) )
))
(declare-datatypes ((ListLongMap!10403 0))(
  ( (ListLongMap!10404 (toList!5217 List!17502)) )
))
(declare-fun lt!397087 () ListLongMap!10403)

(declare-fun minValue!654 () V!28321)

(declare-fun zeroValue!654 () V!28321)

(declare-fun getCurrentListMapNoExtraKeys!3179 (array!51022 array!51020 (_ BitVec 32) (_ BitVec 32) V!28321 V!28321 (_ BitVec 32) Int) ListLongMap!10403)

(assert (=> b!877670 (= lt!397087 (getCurrentListMapNoExtraKeys!3179 _keys!868 (array!51021 (store (arr!24532 _values!688) i!612 (ValueCellFull!8288 v!557)) (size!24973 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!397088 () ListLongMap!10403)

(assert (=> b!877670 (= lt!397088 (getCurrentListMapNoExtraKeys!3179 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!877671 () Bool)

(declare-fun res!596347 () Bool)

(assert (=> b!877671 (=> (not res!596347) (not e!488566))))

(assert (=> b!877671 (= res!596347 (and (= (select (arr!24533 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!877672 () Bool)

(assert (=> b!877672 (= e!488564 tp_is_empty!17455)))

(declare-fun b!877673 () Bool)

(declare-fun res!596342 () Bool)

(assert (=> b!877673 (=> (not res!596342) (not e!488566))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!877673 (= res!596342 (validMask!0 mask!1196))))

(declare-fun b!877674 () Bool)

(declare-fun res!596344 () Bool)

(assert (=> b!877674 (=> (not res!596344) (not e!488566))))

(assert (=> b!877674 (= res!596344 (and (= (size!24973 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24974 _keys!868) (size!24973 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!877675 () Bool)

(assert (=> b!877675 (= e!488568 (and e!488565 mapRes!27798))))

(declare-fun condMapEmpty!27798 () Bool)

(declare-fun mapDefault!27798 () ValueCell!8288)

