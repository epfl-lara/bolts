; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74572 () Bool)

(assert start!74572)

(declare-fun b_free!15233 () Bool)

(declare-fun b_next!15233 () Bool)

(assert (=> start!74572 (= b_free!15233 (not b_next!15233))))

(declare-fun tp!53382 () Bool)

(declare-fun b_and!25127 () Bool)

(assert (=> start!74572 (= tp!53382 b_and!25127)))

(declare-fun b!878030 () Bool)

(declare-fun res!596606 () Bool)

(declare-fun e!488729 () Bool)

(assert (=> b!878030 (=> (not res!596606) (not e!488729))))

(declare-datatypes ((array!51062 0))(
  ( (array!51063 (arr!24553 (Array (_ BitVec 32) (_ BitVec 64))) (size!24994 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51062)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51062 (_ BitVec 32)) Bool)

(assert (=> b!878030 (= res!596606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!27831 () Bool)

(declare-fun mapRes!27831 () Bool)

(declare-fun tp!53381 () Bool)

(declare-fun e!488732 () Bool)

(assert (=> mapNonEmpty!27831 (= mapRes!27831 (and tp!53381 e!488732))))

(declare-datatypes ((V!28349 0))(
  ( (V!28350 (val!8786 Int)) )
))
(declare-datatypes ((ValueCell!8299 0))(
  ( (ValueCellFull!8299 (v!11222 V!28349)) (EmptyCell!8299) )
))
(declare-fun mapValue!27831 () ValueCell!8299)

(declare-fun mapKey!27831 () (_ BitVec 32))

(declare-fun mapRest!27831 () (Array (_ BitVec 32) ValueCell!8299))

(declare-datatypes ((array!51064 0))(
  ( (array!51065 (arr!24554 (Array (_ BitVec 32) ValueCell!8299)) (size!24995 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51064)

(assert (=> mapNonEmpty!27831 (= (arr!24554 _values!688) (store mapRest!27831 mapKey!27831 mapValue!27831))))

(declare-fun b!878031 () Bool)

(declare-fun e!488733 () Bool)

(declare-fun tp_is_empty!17477 () Bool)

(assert (=> b!878031 (= e!488733 tp_is_empty!17477)))

(declare-fun b!878032 () Bool)

(declare-fun res!596609 () Bool)

(assert (=> b!878032 (=> (not res!596609) (not e!488729))))

(declare-datatypes ((List!17518 0))(
  ( (Nil!17515) (Cons!17514 (h!18645 (_ BitVec 64)) (t!24615 List!17518)) )
))
(declare-fun arrayNoDuplicates!0 (array!51062 (_ BitVec 32) List!17518) Bool)

(assert (=> b!878032 (= res!596609 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17515))))

(declare-fun b!878033 () Bool)

(declare-fun res!596608 () Bool)

(assert (=> b!878033 (=> (not res!596608) (not e!488729))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!878033 (= res!596608 (and (= (size!24995 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24994 _keys!868) (size!24995 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!878035 () Bool)

(declare-fun res!596607 () Bool)

(assert (=> b!878035 (=> (not res!596607) (not e!488729))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!878035 (= res!596607 (validKeyInArray!0 k!854))))

(declare-fun b!878036 () Bool)

(declare-fun res!596612 () Bool)

(assert (=> b!878036 (=> (not res!596612) (not e!488729))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!878036 (= res!596612 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24994 _keys!868))))))

(declare-fun mapIsEmpty!27831 () Bool)

(assert (=> mapIsEmpty!27831 mapRes!27831))

(declare-fun b!878037 () Bool)

(declare-fun res!596611 () Bool)

(assert (=> b!878037 (=> (not res!596611) (not e!488729))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!878037 (= res!596611 (and (= (select (arr!24553 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!878038 () Bool)

(declare-fun res!596613 () Bool)

(assert (=> b!878038 (=> (not res!596613) (not e!488729))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!878038 (= res!596613 (validMask!0 mask!1196))))

(declare-fun b!878039 () Bool)

(assert (=> b!878039 (= e!488732 tp_is_empty!17477)))

(declare-fun b!878040 () Bool)

(assert (=> b!878040 (= e!488729 false)))

(declare-fun v!557 () V!28349)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11634 0))(
  ( (tuple2!11635 (_1!5827 (_ BitVec 64)) (_2!5827 V!28349)) )
))
(declare-datatypes ((List!17519 0))(
  ( (Nil!17516) (Cons!17515 (h!18646 tuple2!11634) (t!24616 List!17519)) )
))
(declare-datatypes ((ListLongMap!10417 0))(
  ( (ListLongMap!10418 (toList!5224 List!17519)) )
))
(declare-fun lt!397153 () ListLongMap!10417)

(declare-fun minValue!654 () V!28349)

(declare-fun zeroValue!654 () V!28349)

(declare-fun getCurrentListMapNoExtraKeys!3186 (array!51062 array!51064 (_ BitVec 32) (_ BitVec 32) V!28349 V!28349 (_ BitVec 32) Int) ListLongMap!10417)

(assert (=> b!878040 (= lt!397153 (getCurrentListMapNoExtraKeys!3186 _keys!868 (array!51065 (store (arr!24554 _values!688) i!612 (ValueCellFull!8299 v!557)) (size!24995 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!397154 () ListLongMap!10417)

(assert (=> b!878040 (= lt!397154 (getCurrentListMapNoExtraKeys!3186 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!878034 () Bool)

(declare-fun e!488731 () Bool)

(assert (=> b!878034 (= e!488731 (and e!488733 mapRes!27831))))

(declare-fun condMapEmpty!27831 () Bool)

(declare-fun mapDefault!27831 () ValueCell!8299)

