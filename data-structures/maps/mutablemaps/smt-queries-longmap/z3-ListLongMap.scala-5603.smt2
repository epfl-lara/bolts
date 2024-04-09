; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73432 () Bool)

(assert start!73432)

(declare-fun b_free!14319 () Bool)

(declare-fun b_next!14319 () Bool)

(assert (=> start!73432 (= b_free!14319 (not b_next!14319))))

(declare-fun tp!50461 () Bool)

(declare-fun b_and!23693 () Bool)

(assert (=> start!73432 (= tp!50461 b_and!23693)))

(declare-fun b!856716 () Bool)

(declare-fun e!477564 () Bool)

(assert (=> b!856716 (= e!477564 (not true))))

(declare-datatypes ((V!26987 0))(
  ( (V!26988 (val!8275 Int)) )
))
(declare-fun v!557 () V!26987)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7788 0))(
  ( (ValueCellFull!7788 (v!10696 V!26987)) (EmptyCell!7788) )
))
(declare-datatypes ((array!49078 0))(
  ( (array!49079 (arr!23566 (Array (_ BitVec 32) ValueCell!7788)) (size!24007 (_ BitVec 32))) )
))
(declare-fun lt!386044 () array!49078)

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!49080 0))(
  ( (array!49081 (arr!23567 (Array (_ BitVec 32) (_ BitVec 64))) (size!24008 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49080)

(declare-fun _values!688 () array!49078)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26987)

(declare-fun zeroValue!654 () V!26987)

(declare-datatypes ((tuple2!10902 0))(
  ( (tuple2!10903 (_1!5461 (_ BitVec 64)) (_2!5461 V!26987)) )
))
(declare-datatypes ((List!16773 0))(
  ( (Nil!16770) (Cons!16769 (h!17900 tuple2!10902) (t!23422 List!16773)) )
))
(declare-datatypes ((ListLongMap!9685 0))(
  ( (ListLongMap!9686 (toList!4858 List!16773)) )
))
(declare-fun getCurrentListMapNoExtraKeys!2840 (array!49080 array!49078 (_ BitVec 32) (_ BitVec 32) V!26987 V!26987 (_ BitVec 32) Int) ListLongMap!9685)

(declare-fun +!2167 (ListLongMap!9685 tuple2!10902) ListLongMap!9685)

(assert (=> b!856716 (= (getCurrentListMapNoExtraKeys!2840 _keys!868 lt!386044 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2167 (getCurrentListMapNoExtraKeys!2840 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10903 k0!854 v!557)))))

(declare-datatypes ((Unit!29176 0))(
  ( (Unit!29177) )
))
(declare-fun lt!386043 () Unit!29176)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!427 (array!49080 array!49078 (_ BitVec 32) (_ BitVec 32) V!26987 V!26987 (_ BitVec 32) (_ BitVec 64) V!26987 (_ BitVec 32) Int) Unit!29176)

(assert (=> b!856716 (= lt!386043 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!427 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!856717 () Bool)

(declare-fun e!477562 () Bool)

(declare-fun e!477561 () Bool)

(declare-fun mapRes!26282 () Bool)

(assert (=> b!856717 (= e!477562 (and e!477561 mapRes!26282))))

(declare-fun condMapEmpty!26282 () Bool)

(declare-fun mapDefault!26282 () ValueCell!7788)

(assert (=> b!856717 (= condMapEmpty!26282 (= (arr!23566 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7788)) mapDefault!26282)))))

(declare-fun b!856718 () Bool)

(declare-fun res!582029 () Bool)

(declare-fun e!477563 () Bool)

(assert (=> b!856718 (=> (not res!582029) (not e!477563))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!856718 (= res!582029 (validKeyInArray!0 k0!854))))

(declare-fun mapIsEmpty!26282 () Bool)

(assert (=> mapIsEmpty!26282 mapRes!26282))

(declare-fun res!582036 () Bool)

(assert (=> start!73432 (=> (not res!582036) (not e!477563))))

(assert (=> start!73432 (= res!582036 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24008 _keys!868))))))

(assert (=> start!73432 e!477563))

(declare-fun tp_is_empty!16455 () Bool)

(assert (=> start!73432 tp_is_empty!16455))

(assert (=> start!73432 true))

(assert (=> start!73432 tp!50461))

(declare-fun array_inv!18654 (array!49080) Bool)

(assert (=> start!73432 (array_inv!18654 _keys!868)))

(declare-fun array_inv!18655 (array!49078) Bool)

(assert (=> start!73432 (and (array_inv!18655 _values!688) e!477562)))

(declare-fun b!856719 () Bool)

(assert (=> b!856719 (= e!477563 e!477564)))

(declare-fun res!582034 () Bool)

(assert (=> b!856719 (=> (not res!582034) (not e!477564))))

(assert (=> b!856719 (= res!582034 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!386045 () ListLongMap!9685)

(assert (=> b!856719 (= lt!386045 (getCurrentListMapNoExtraKeys!2840 _keys!868 lt!386044 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!856719 (= lt!386044 (array!49079 (store (arr!23566 _values!688) i!612 (ValueCellFull!7788 v!557)) (size!24007 _values!688)))))

(declare-fun lt!386046 () ListLongMap!9685)

(assert (=> b!856719 (= lt!386046 (getCurrentListMapNoExtraKeys!2840 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!26282 () Bool)

(declare-fun tp!50462 () Bool)

(declare-fun e!477560 () Bool)

(assert (=> mapNonEmpty!26282 (= mapRes!26282 (and tp!50462 e!477560))))

(declare-fun mapKey!26282 () (_ BitVec 32))

(declare-fun mapValue!26282 () ValueCell!7788)

(declare-fun mapRest!26282 () (Array (_ BitVec 32) ValueCell!7788))

(assert (=> mapNonEmpty!26282 (= (arr!23566 _values!688) (store mapRest!26282 mapKey!26282 mapValue!26282))))

(declare-fun b!856720 () Bool)

(declare-fun res!582033 () Bool)

(assert (=> b!856720 (=> (not res!582033) (not e!477563))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49080 (_ BitVec 32)) Bool)

(assert (=> b!856720 (= res!582033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!856721 () Bool)

(declare-fun res!582032 () Bool)

(assert (=> b!856721 (=> (not res!582032) (not e!477563))))

(assert (=> b!856721 (= res!582032 (and (= (size!24007 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24008 _keys!868) (size!24007 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!856722 () Bool)

(assert (=> b!856722 (= e!477561 tp_is_empty!16455)))

(declare-fun b!856723 () Bool)

(declare-fun res!582028 () Bool)

(assert (=> b!856723 (=> (not res!582028) (not e!477563))))

(declare-datatypes ((List!16774 0))(
  ( (Nil!16771) (Cons!16770 (h!17901 (_ BitVec 64)) (t!23423 List!16774)) )
))
(declare-fun arrayNoDuplicates!0 (array!49080 (_ BitVec 32) List!16774) Bool)

(assert (=> b!856723 (= res!582028 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16771))))

(declare-fun b!856724 () Bool)

(declare-fun res!582035 () Bool)

(assert (=> b!856724 (=> (not res!582035) (not e!477563))))

(assert (=> b!856724 (= res!582035 (and (= (select (arr!23567 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!856725 () Bool)

(declare-fun res!582031 () Bool)

(assert (=> b!856725 (=> (not res!582031) (not e!477563))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!856725 (= res!582031 (validMask!0 mask!1196))))

(declare-fun b!856726 () Bool)

(declare-fun res!582030 () Bool)

(assert (=> b!856726 (=> (not res!582030) (not e!477563))))

(assert (=> b!856726 (= res!582030 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24008 _keys!868))))))

(declare-fun b!856727 () Bool)

(assert (=> b!856727 (= e!477560 tp_is_empty!16455)))

(assert (= (and start!73432 res!582036) b!856725))

(assert (= (and b!856725 res!582031) b!856721))

(assert (= (and b!856721 res!582032) b!856720))

(assert (= (and b!856720 res!582033) b!856723))

(assert (= (and b!856723 res!582028) b!856726))

(assert (= (and b!856726 res!582030) b!856718))

(assert (= (and b!856718 res!582029) b!856724))

(assert (= (and b!856724 res!582035) b!856719))

(assert (= (and b!856719 res!582034) b!856716))

(assert (= (and b!856717 condMapEmpty!26282) mapIsEmpty!26282))

(assert (= (and b!856717 (not condMapEmpty!26282)) mapNonEmpty!26282))

(get-info :version)

(assert (= (and mapNonEmpty!26282 ((_ is ValueCellFull!7788) mapValue!26282)) b!856727))

(assert (= (and b!856717 ((_ is ValueCellFull!7788) mapDefault!26282)) b!856722))

(assert (= start!73432 b!856717))

(declare-fun m!797695 () Bool)

(assert (=> b!856719 m!797695))

(declare-fun m!797697 () Bool)

(assert (=> b!856719 m!797697))

(declare-fun m!797699 () Bool)

(assert (=> b!856719 m!797699))

(declare-fun m!797701 () Bool)

(assert (=> b!856716 m!797701))

(declare-fun m!797703 () Bool)

(assert (=> b!856716 m!797703))

(assert (=> b!856716 m!797703))

(declare-fun m!797705 () Bool)

(assert (=> b!856716 m!797705))

(declare-fun m!797707 () Bool)

(assert (=> b!856716 m!797707))

(declare-fun m!797709 () Bool)

(assert (=> start!73432 m!797709))

(declare-fun m!797711 () Bool)

(assert (=> start!73432 m!797711))

(declare-fun m!797713 () Bool)

(assert (=> b!856718 m!797713))

(declare-fun m!797715 () Bool)

(assert (=> b!856720 m!797715))

(declare-fun m!797717 () Bool)

(assert (=> b!856725 m!797717))

(declare-fun m!797719 () Bool)

(assert (=> b!856723 m!797719))

(declare-fun m!797721 () Bool)

(assert (=> b!856724 m!797721))

(declare-fun m!797723 () Bool)

(assert (=> mapNonEmpty!26282 m!797723))

(check-sat tp_is_empty!16455 (not b_next!14319) b_and!23693 (not start!73432) (not b!856719) (not b!856716) (not b!856723) (not b!856725) (not mapNonEmpty!26282) (not b!856720) (not b!856718))
(check-sat b_and!23693 (not b_next!14319))
