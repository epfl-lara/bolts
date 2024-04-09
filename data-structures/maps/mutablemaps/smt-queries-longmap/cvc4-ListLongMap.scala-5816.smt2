; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75030 () Bool)

(assert start!75030)

(declare-fun b_free!15491 () Bool)

(declare-fun b_next!15491 () Bool)

(assert (=> start!75030 (= b_free!15491 (not b_next!15491))))

(declare-fun tp!54180 () Bool)

(declare-fun b_and!25699 () Bool)

(assert (=> start!75030 (= tp!54180 b_and!25699)))

(declare-fun b!884677 () Bool)

(declare-fun e!492358 () Bool)

(declare-fun tp_is_empty!17735 () Bool)

(assert (=> b!884677 (= e!492358 tp_is_empty!17735)))

(declare-fun b!884678 () Bool)

(declare-fun res!601116 () Bool)

(declare-fun e!492360 () Bool)

(assert (=> b!884678 (=> (not res!601116) (not e!492360))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!51580 0))(
  ( (array!51581 (arr!24804 (Array (_ BitVec 32) (_ BitVec 64))) (size!25245 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51580)

(assert (=> b!884678 (= res!601116 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25245 _keys!868))))))

(declare-fun res!601111 () Bool)

(assert (=> start!75030 (=> (not res!601111) (not e!492360))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!75030 (= res!601111 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25245 _keys!868))))))

(assert (=> start!75030 e!492360))

(assert (=> start!75030 tp_is_empty!17735))

(assert (=> start!75030 true))

(assert (=> start!75030 tp!54180))

(declare-fun array_inv!19504 (array!51580) Bool)

(assert (=> start!75030 (array_inv!19504 _keys!868)))

(declare-datatypes ((V!28693 0))(
  ( (V!28694 (val!8915 Int)) )
))
(declare-datatypes ((ValueCell!8428 0))(
  ( (ValueCellFull!8428 (v!11384 V!28693)) (EmptyCell!8428) )
))
(declare-datatypes ((array!51582 0))(
  ( (array!51583 (arr!24805 (Array (_ BitVec 32) ValueCell!8428)) (size!25246 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51582)

(declare-fun e!492363 () Bool)

(declare-fun array_inv!19505 (array!51582) Bool)

(assert (=> start!75030 (and (array_inv!19505 _values!688) e!492363)))

(declare-fun b!884679 () Bool)

(declare-fun e!492362 () Bool)

(declare-fun e!492361 () Bool)

(assert (=> b!884679 (= e!492362 (not e!492361))))

(declare-fun res!601112 () Bool)

(assert (=> b!884679 (=> res!601112 e!492361)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!884679 (= res!601112 (validKeyInArray!0 (select (arr!24804 _keys!868) from!1053)))))

(declare-fun lt!400753 () array!51582)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11850 0))(
  ( (tuple2!11851 (_1!5935 (_ BitVec 64)) (_2!5935 V!28693)) )
))
(declare-fun lt!400750 () tuple2!11850)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!28693)

(declare-fun zeroValue!654 () V!28693)

(declare-datatypes ((List!17715 0))(
  ( (Nil!17712) (Cons!17711 (h!18842 tuple2!11850) (t!24998 List!17715)) )
))
(declare-datatypes ((ListLongMap!10633 0))(
  ( (ListLongMap!10634 (toList!5332 List!17715)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3286 (array!51580 array!51582 (_ BitVec 32) (_ BitVec 32) V!28693 V!28693 (_ BitVec 32) Int) ListLongMap!10633)

(declare-fun +!2535 (ListLongMap!10633 tuple2!11850) ListLongMap!10633)

(assert (=> b!884679 (= (getCurrentListMapNoExtraKeys!3286 _keys!868 lt!400753 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2535 (getCurrentListMapNoExtraKeys!3286 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!400750))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun v!557 () V!28693)

(assert (=> b!884679 (= lt!400750 (tuple2!11851 k!854 v!557))))

(declare-datatypes ((Unit!30179 0))(
  ( (Unit!30180) )
))
(declare-fun lt!400752 () Unit!30179)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!756 (array!51580 array!51582 (_ BitVec 32) (_ BitVec 32) V!28693 V!28693 (_ BitVec 32) (_ BitVec 64) V!28693 (_ BitVec 32) Int) Unit!30179)

(assert (=> b!884679 (= lt!400752 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!756 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!884680 () Bool)

(declare-fun res!601110 () Bool)

(assert (=> b!884680 (=> (not res!601110) (not e!492360))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51580 (_ BitVec 32)) Bool)

(assert (=> b!884680 (= res!601110 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!884681 () Bool)

(assert (=> b!884681 (= e!492360 e!492362)))

(declare-fun res!601115 () Bool)

(assert (=> b!884681 (=> (not res!601115) (not e!492362))))

(assert (=> b!884681 (= res!601115 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!400754 () ListLongMap!10633)

(assert (=> b!884681 (= lt!400754 (getCurrentListMapNoExtraKeys!3286 _keys!868 lt!400753 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!884681 (= lt!400753 (array!51583 (store (arr!24805 _values!688) i!612 (ValueCellFull!8428 v!557)) (size!25246 _values!688)))))

(declare-fun lt!400751 () ListLongMap!10633)

(assert (=> b!884681 (= lt!400751 (getCurrentListMapNoExtraKeys!3286 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!884682 () Bool)

(declare-fun res!601119 () Bool)

(assert (=> b!884682 (=> (not res!601119) (not e!492360))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!884682 (= res!601119 (validMask!0 mask!1196))))

(declare-fun b!884683 () Bool)

(assert (=> b!884683 (= e!492361 (= lt!400754 (+!2535 lt!400751 lt!400750)))))

(declare-fun mapIsEmpty!28242 () Bool)

(declare-fun mapRes!28242 () Bool)

(assert (=> mapIsEmpty!28242 mapRes!28242))

(declare-fun b!884684 () Bool)

(assert (=> b!884684 (= e!492363 (and e!492358 mapRes!28242))))

(declare-fun condMapEmpty!28242 () Bool)

(declare-fun mapDefault!28242 () ValueCell!8428)

