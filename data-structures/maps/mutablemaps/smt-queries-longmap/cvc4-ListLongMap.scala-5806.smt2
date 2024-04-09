; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74940 () Bool)

(assert start!74940)

(declare-fun b_free!15431 () Bool)

(declare-fun b_next!15431 () Bool)

(assert (=> start!74940 (= b_free!15431 (not b_next!15431))))

(declare-fun tp!53996 () Bool)

(declare-fun b_and!25579 () Bool)

(assert (=> start!74940 (= tp!53996 b_and!25579)))

(declare-fun mapNonEmpty!28149 () Bool)

(declare-fun mapRes!28149 () Bool)

(declare-fun tp!53997 () Bool)

(declare-fun e!491554 () Bool)

(assert (=> mapNonEmpty!28149 (= mapRes!28149 (and tp!53997 e!491554))))

(declare-datatypes ((V!28613 0))(
  ( (V!28614 (val!8885 Int)) )
))
(declare-datatypes ((ValueCell!8398 0))(
  ( (ValueCellFull!8398 (v!11350 V!28613)) (EmptyCell!8398) )
))
(declare-fun mapRest!28149 () (Array (_ BitVec 32) ValueCell!8398))

(declare-fun mapKey!28149 () (_ BitVec 32))

(declare-fun mapValue!28149 () ValueCell!8398)

(declare-datatypes ((array!51460 0))(
  ( (array!51461 (arr!24745 (Array (_ BitVec 32) ValueCell!8398)) (size!25186 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51460)

(assert (=> mapNonEmpty!28149 (= (arr!24745 _values!688) (store mapRest!28149 mapKey!28149 mapValue!28149))))

(declare-fun b!883170 () Bool)

(declare-fun res!600135 () Bool)

(declare-fun e!491555 () Bool)

(assert (=> b!883170 (=> (not res!600135) (not e!491555))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!51462 0))(
  ( (array!51463 (arr!24746 (Array (_ BitVec 32) (_ BitVec 64))) (size!25187 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51462)

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!883170 (= res!600135 (and (= (size!25186 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25187 _keys!868) (size!25186 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!883171 () Bool)

(declare-datatypes ((Unit!30102 0))(
  ( (Unit!30103) )
))
(declare-fun e!491556 () Unit!30102)

(declare-fun Unit!30104 () Unit!30102)

(assert (=> b!883171 (= e!491556 Unit!30104)))

(declare-fun lt!399715 () Unit!30102)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51462 (_ BitVec 32) (_ BitVec 32)) Unit!30102)

(assert (=> b!883171 (= lt!399715 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17668 0))(
  ( (Nil!17665) (Cons!17664 (h!18795 (_ BitVec 64)) (t!24909 List!17668)) )
))
(declare-fun arrayNoDuplicates!0 (array!51462 (_ BitVec 32) List!17668) Bool)

(assert (=> b!883171 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17665)))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lt!399706 () Unit!30102)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51462 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30102)

(assert (=> b!883171 (= lt!399706 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!51462 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!883171 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!399714 () Unit!30102)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!51462 (_ BitVec 64) (_ BitVec 32) List!17668) Unit!30102)

(assert (=> b!883171 (= lt!399714 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17665))))

(assert (=> b!883171 false))

(declare-fun b!883172 () Bool)

(declare-fun res!600130 () Bool)

(assert (=> b!883172 (=> (not res!600130) (not e!491555))))

(assert (=> b!883172 (= res!600130 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25187 _keys!868))))))

(declare-fun b!883173 () Bool)

(declare-fun tp_is_empty!17675 () Bool)

(assert (=> b!883173 (= e!491554 tp_is_empty!17675)))

(declare-fun b!883174 () Bool)

(declare-fun res!600134 () Bool)

(assert (=> b!883174 (=> (not res!600134) (not e!491555))))

(assert (=> b!883174 (= res!600134 (and (= (select (arr!24746 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!883175 () Bool)

(declare-fun res!600127 () Bool)

(assert (=> b!883175 (=> (not res!600127) (not e!491555))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!883175 (= res!600127 (validMask!0 mask!1196))))

(declare-fun b!883176 () Bool)

(declare-fun e!491553 () Bool)

(assert (=> b!883176 (= e!491555 e!491553)))

(declare-fun res!600136 () Bool)

(assert (=> b!883176 (=> (not res!600136) (not e!491553))))

(assert (=> b!883176 (= res!600136 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun minValue!654 () V!28613)

(declare-fun zeroValue!654 () V!28613)

(declare-datatypes ((tuple2!11802 0))(
  ( (tuple2!11803 (_1!5911 (_ BitVec 64)) (_2!5911 V!28613)) )
))
(declare-datatypes ((List!17669 0))(
  ( (Nil!17666) (Cons!17665 (h!18796 tuple2!11802) (t!24910 List!17669)) )
))
(declare-datatypes ((ListLongMap!10585 0))(
  ( (ListLongMap!10586 (toList!5308 List!17669)) )
))
(declare-fun lt!399712 () ListLongMap!10585)

(declare-fun lt!399710 () array!51460)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!3265 (array!51462 array!51460 (_ BitVec 32) (_ BitVec 32) V!28613 V!28613 (_ BitVec 32) Int) ListLongMap!10585)

(assert (=> b!883176 (= lt!399712 (getCurrentListMapNoExtraKeys!3265 _keys!868 lt!399710 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28613)

(assert (=> b!883176 (= lt!399710 (array!51461 (store (arr!24745 _values!688) i!612 (ValueCellFull!8398 v!557)) (size!25186 _values!688)))))

(declare-fun lt!399708 () ListLongMap!10585)

(assert (=> b!883176 (= lt!399708 (getCurrentListMapNoExtraKeys!3265 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!883177 () Bool)

(declare-fun res!600129 () Bool)

(assert (=> b!883177 (=> (not res!600129) (not e!491555))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51462 (_ BitVec 32)) Bool)

(assert (=> b!883177 (= res!600129 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!883178 () Bool)

(declare-fun e!491552 () Bool)

(assert (=> b!883178 (= e!491553 (not e!491552))))

(declare-fun res!600132 () Bool)

(assert (=> b!883178 (=> res!600132 e!491552)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!883178 (= res!600132 (not (validKeyInArray!0 (select (arr!24746 _keys!868) from!1053))))))

(declare-fun lt!399711 () ListLongMap!10585)

(declare-fun lt!399705 () ListLongMap!10585)

(assert (=> b!883178 (= lt!399711 lt!399705)))

(declare-fun lt!399707 () ListLongMap!10585)

(declare-fun +!2513 (ListLongMap!10585 tuple2!11802) ListLongMap!10585)

(assert (=> b!883178 (= lt!399705 (+!2513 lt!399707 (tuple2!11803 k!854 v!557)))))

(assert (=> b!883178 (= lt!399711 (getCurrentListMapNoExtraKeys!3265 _keys!868 lt!399710 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!883178 (= lt!399707 (getCurrentListMapNoExtraKeys!3265 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!399713 () Unit!30102)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!738 (array!51462 array!51460 (_ BitVec 32) (_ BitVec 32) V!28613 V!28613 (_ BitVec 32) (_ BitVec 64) V!28613 (_ BitVec 32) Int) Unit!30102)

(assert (=> b!883178 (= lt!399713 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!738 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!883179 () Bool)

(declare-fun res!600133 () Bool)

(assert (=> b!883179 (=> (not res!600133) (not e!491555))))

(assert (=> b!883179 (= res!600133 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17665))))

(declare-fun b!883180 () Bool)

(declare-fun e!491558 () Bool)

(assert (=> b!883180 (= e!491558 tp_is_empty!17675)))

(declare-fun b!883182 () Bool)

(declare-fun Unit!30105 () Unit!30102)

(assert (=> b!883182 (= e!491556 Unit!30105)))

(declare-fun b!883183 () Bool)

(declare-fun e!491557 () Bool)

(assert (=> b!883183 (= e!491557 (and e!491558 mapRes!28149))))

(declare-fun condMapEmpty!28149 () Bool)

(declare-fun mapDefault!28149 () ValueCell!8398)

