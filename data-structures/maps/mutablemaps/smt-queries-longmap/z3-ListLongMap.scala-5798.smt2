; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74832 () Bool)

(assert start!74832)

(declare-fun b_free!15381 () Bool)

(declare-fun b_next!15381 () Bool)

(assert (=> start!74832 (= b_free!15381 (not b_next!15381))))

(declare-fun tp!53841 () Bool)

(declare-fun b_and!25447 () Bool)

(assert (=> start!74832 (= tp!53841 b_and!25447)))

(declare-fun b!881670 () Bool)

(declare-fun res!599092 () Bool)

(declare-fun e!490704 () Bool)

(assert (=> b!881670 (=> (not res!599092) (not e!490704))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!881670 (= res!599092 (validMask!0 mask!1196))))

(declare-fun b!881671 () Bool)

(declare-fun e!490709 () Bool)

(assert (=> b!881671 (= e!490704 e!490709)))

(declare-fun res!599089 () Bool)

(assert (=> b!881671 (=> (not res!599089) (not e!490709))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!881671 (= res!599089 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!28547 0))(
  ( (V!28548 (val!8860 Int)) )
))
(declare-datatypes ((ValueCell!8373 0))(
  ( (ValueCellFull!8373 (v!11316 V!28547)) (EmptyCell!8373) )
))
(declare-datatypes ((array!51360 0))(
  ( (array!51361 (arr!24697 (Array (_ BitVec 32) ValueCell!8373)) (size!25138 (_ BitVec 32))) )
))
(declare-fun lt!398838 () array!51360)

(declare-datatypes ((array!51362 0))(
  ( (array!51363 (arr!24698 (Array (_ BitVec 32) (_ BitVec 64))) (size!25139 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51362)

(declare-datatypes ((tuple2!11760 0))(
  ( (tuple2!11761 (_1!5890 (_ BitVec 64)) (_2!5890 V!28547)) )
))
(declare-datatypes ((List!17627 0))(
  ( (Nil!17624) (Cons!17623 (h!18754 tuple2!11760) (t!24818 List!17627)) )
))
(declare-datatypes ((ListLongMap!10543 0))(
  ( (ListLongMap!10544 (toList!5287 List!17627)) )
))
(declare-fun lt!398833 () ListLongMap!10543)

(declare-fun minValue!654 () V!28547)

(declare-fun zeroValue!654 () V!28547)

(declare-fun getCurrentListMapNoExtraKeys!3247 (array!51362 array!51360 (_ BitVec 32) (_ BitVec 32) V!28547 V!28547 (_ BitVec 32) Int) ListLongMap!10543)

(assert (=> b!881671 (= lt!398833 (getCurrentListMapNoExtraKeys!3247 _keys!868 lt!398838 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28547)

(declare-fun _values!688 () array!51360)

(assert (=> b!881671 (= lt!398838 (array!51361 (store (arr!24697 _values!688) i!612 (ValueCellFull!8373 v!557)) (size!25138 _values!688)))))

(declare-fun lt!398831 () ListLongMap!10543)

(assert (=> b!881671 (= lt!398831 (getCurrentListMapNoExtraKeys!3247 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!28068 () Bool)

(declare-fun mapRes!28068 () Bool)

(assert (=> mapIsEmpty!28068 mapRes!28068))

(declare-fun b!881672 () Bool)

(declare-fun res!599087 () Bool)

(assert (=> b!881672 (=> (not res!599087) (not e!490704))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!881672 (= res!599087 (validKeyInArray!0 k0!854))))

(declare-fun b!881673 () Bool)

(declare-fun e!490702 () Bool)

(declare-fun e!490708 () Bool)

(assert (=> b!881673 (= e!490702 e!490708)))

(declare-fun res!599084 () Bool)

(assert (=> b!881673 (=> res!599084 e!490708)))

(assert (=> b!881673 (= res!599084 (not (= (select (arr!24698 _keys!868) from!1053) k0!854)))))

(declare-fun lt!398839 () ListLongMap!10543)

(declare-fun +!2493 (ListLongMap!10543 tuple2!11760) ListLongMap!10543)

(declare-fun get!13014 (ValueCell!8373 V!28547) V!28547)

(declare-fun dynLambda!1253 (Int (_ BitVec 64)) V!28547)

(assert (=> b!881673 (= lt!398833 (+!2493 lt!398839 (tuple2!11761 (select (arr!24698 _keys!868) from!1053) (get!13014 (select (arr!24697 _values!688) from!1053) (dynLambda!1253 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!881674 () Bool)

(declare-fun e!490703 () Bool)

(declare-fun tp_is_empty!17625 () Bool)

(assert (=> b!881674 (= e!490703 tp_is_empty!17625)))

(declare-fun b!881675 () Bool)

(declare-fun res!599088 () Bool)

(assert (=> b!881675 (=> (not res!599088) (not e!490704))))

(assert (=> b!881675 (= res!599088 (and (= (select (arr!24698 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!881676 () Bool)

(declare-fun e!490705 () Bool)

(assert (=> b!881676 (= e!490705 tp_is_empty!17625)))

(declare-fun b!881677 () Bool)

(declare-fun res!599091 () Bool)

(assert (=> b!881677 (=> (not res!599091) (not e!490704))))

(assert (=> b!881677 (= res!599091 (and (= (size!25138 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25139 _keys!868) (size!25138 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!28068 () Bool)

(declare-fun tp!53840 () Bool)

(assert (=> mapNonEmpty!28068 (= mapRes!28068 (and tp!53840 e!490703))))

(declare-fun mapKey!28068 () (_ BitVec 32))

(declare-fun mapValue!28068 () ValueCell!8373)

(declare-fun mapRest!28068 () (Array (_ BitVec 32) ValueCell!8373))

(assert (=> mapNonEmpty!28068 (= (arr!24697 _values!688) (store mapRest!28068 mapKey!28068 mapValue!28068))))

(declare-fun b!881678 () Bool)

(declare-fun res!599086 () Bool)

(assert (=> b!881678 (=> (not res!599086) (not e!490704))))

(assert (=> b!881678 (= res!599086 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25139 _keys!868))))))

(declare-fun b!881679 () Bool)

(assert (=> b!881679 (= e!490709 (not e!490702))))

(declare-fun res!599082 () Bool)

(assert (=> b!881679 (=> res!599082 e!490702)))

(assert (=> b!881679 (= res!599082 (not (validKeyInArray!0 (select (arr!24698 _keys!868) from!1053))))))

(declare-fun lt!398834 () ListLongMap!10543)

(assert (=> b!881679 (= lt!398834 lt!398839)))

(declare-fun lt!398835 () ListLongMap!10543)

(assert (=> b!881679 (= lt!398839 (+!2493 lt!398835 (tuple2!11761 k0!854 v!557)))))

(assert (=> b!881679 (= lt!398834 (getCurrentListMapNoExtraKeys!3247 _keys!868 lt!398838 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!881679 (= lt!398835 (getCurrentListMapNoExtraKeys!3247 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!30062 0))(
  ( (Unit!30063) )
))
(declare-fun lt!398837 () Unit!30062)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!722 (array!51362 array!51360 (_ BitVec 32) (_ BitVec 32) V!28547 V!28547 (_ BitVec 32) (_ BitVec 64) V!28547 (_ BitVec 32) Int) Unit!30062)

(assert (=> b!881679 (= lt!398837 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!722 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!881680 () Bool)

(declare-fun e!490707 () Bool)

(assert (=> b!881680 (= e!490707 (and e!490705 mapRes!28068))))

(declare-fun condMapEmpty!28068 () Bool)

(declare-fun mapDefault!28068 () ValueCell!8373)

(assert (=> b!881680 (= condMapEmpty!28068 (= (arr!24697 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8373)) mapDefault!28068)))))

(declare-fun b!881681 () Bool)

(assert (=> b!881681 (= e!490708 true)))

(declare-fun arrayContainsKey!0 (array!51362 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!881681 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!398836 () Unit!30062)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51362 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30062)

(assert (=> b!881681 (= lt!398836 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-datatypes ((List!17628 0))(
  ( (Nil!17625) (Cons!17624 (h!18755 (_ BitVec 64)) (t!24819 List!17628)) )
))
(declare-fun arrayNoDuplicates!0 (array!51362 (_ BitVec 32) List!17628) Bool)

(assert (=> b!881681 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17625)))

(declare-fun lt!398832 () Unit!30062)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51362 (_ BitVec 32) (_ BitVec 32)) Unit!30062)

(assert (=> b!881681 (= lt!398832 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun res!599090 () Bool)

(assert (=> start!74832 (=> (not res!599090) (not e!490704))))

(assert (=> start!74832 (= res!599090 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25139 _keys!868))))))

(assert (=> start!74832 e!490704))

(assert (=> start!74832 tp_is_empty!17625))

(assert (=> start!74832 true))

(assert (=> start!74832 tp!53841))

(declare-fun array_inv!19436 (array!51362) Bool)

(assert (=> start!74832 (array_inv!19436 _keys!868)))

(declare-fun array_inv!19437 (array!51360) Bool)

(assert (=> start!74832 (and (array_inv!19437 _values!688) e!490707)))

(declare-fun b!881682 () Bool)

(declare-fun res!599085 () Bool)

(assert (=> b!881682 (=> (not res!599085) (not e!490704))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51362 (_ BitVec 32)) Bool)

(assert (=> b!881682 (= res!599085 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!881683 () Bool)

(declare-fun res!599083 () Bool)

(assert (=> b!881683 (=> (not res!599083) (not e!490704))))

(assert (=> b!881683 (= res!599083 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17625))))

(assert (= (and start!74832 res!599090) b!881670))

(assert (= (and b!881670 res!599092) b!881677))

(assert (= (and b!881677 res!599091) b!881682))

(assert (= (and b!881682 res!599085) b!881683))

(assert (= (and b!881683 res!599083) b!881678))

(assert (= (and b!881678 res!599086) b!881672))

(assert (= (and b!881672 res!599087) b!881675))

(assert (= (and b!881675 res!599088) b!881671))

(assert (= (and b!881671 res!599089) b!881679))

(assert (= (and b!881679 (not res!599082)) b!881673))

(assert (= (and b!881673 (not res!599084)) b!881681))

(assert (= (and b!881680 condMapEmpty!28068) mapIsEmpty!28068))

(assert (= (and b!881680 (not condMapEmpty!28068)) mapNonEmpty!28068))

(get-info :version)

(assert (= (and mapNonEmpty!28068 ((_ is ValueCellFull!8373) mapValue!28068)) b!881674))

(assert (= (and b!881680 ((_ is ValueCellFull!8373) mapDefault!28068)) b!881676))

(assert (= start!74832 b!881680))

(declare-fun b_lambda!12621 () Bool)

(assert (=> (not b_lambda!12621) (not b!881673)))

(declare-fun t!24817 () Bool)

(declare-fun tb!5047 () Bool)

(assert (=> (and start!74832 (= defaultEntry!696 defaultEntry!696) t!24817) tb!5047))

(declare-fun result!9717 () Bool)

(assert (=> tb!5047 (= result!9717 tp_is_empty!17625)))

(assert (=> b!881673 t!24817))

(declare-fun b_and!25449 () Bool)

(assert (= b_and!25447 (and (=> t!24817 result!9717) b_and!25449)))

(declare-fun m!821671 () Bool)

(assert (=> start!74832 m!821671))

(declare-fun m!821673 () Bool)

(assert (=> start!74832 m!821673))

(declare-fun m!821675 () Bool)

(assert (=> b!881675 m!821675))

(declare-fun m!821677 () Bool)

(assert (=> b!881681 m!821677))

(declare-fun m!821679 () Bool)

(assert (=> b!881681 m!821679))

(declare-fun m!821681 () Bool)

(assert (=> b!881681 m!821681))

(declare-fun m!821683 () Bool)

(assert (=> b!881681 m!821683))

(declare-fun m!821685 () Bool)

(assert (=> b!881682 m!821685))

(declare-fun m!821687 () Bool)

(assert (=> mapNonEmpty!28068 m!821687))

(declare-fun m!821689 () Bool)

(assert (=> b!881679 m!821689))

(declare-fun m!821691 () Bool)

(assert (=> b!881679 m!821691))

(declare-fun m!821693 () Bool)

(assert (=> b!881679 m!821693))

(declare-fun m!821695 () Bool)

(assert (=> b!881679 m!821695))

(declare-fun m!821697 () Bool)

(assert (=> b!881679 m!821697))

(assert (=> b!881679 m!821695))

(declare-fun m!821699 () Bool)

(assert (=> b!881679 m!821699))

(declare-fun m!821701 () Bool)

(assert (=> b!881683 m!821701))

(declare-fun m!821703 () Bool)

(assert (=> b!881673 m!821703))

(declare-fun m!821705 () Bool)

(assert (=> b!881673 m!821705))

(declare-fun m!821707 () Bool)

(assert (=> b!881673 m!821707))

(declare-fun m!821709 () Bool)

(assert (=> b!881673 m!821709))

(assert (=> b!881673 m!821705))

(assert (=> b!881673 m!821695))

(assert (=> b!881673 m!821707))

(declare-fun m!821711 () Bool)

(assert (=> b!881670 m!821711))

(declare-fun m!821713 () Bool)

(assert (=> b!881672 m!821713))

(declare-fun m!821715 () Bool)

(assert (=> b!881671 m!821715))

(declare-fun m!821717 () Bool)

(assert (=> b!881671 m!821717))

(declare-fun m!821719 () Bool)

(assert (=> b!881671 m!821719))

(check-sat (not b_lambda!12621) (not b_next!15381) (not b!881679) (not b!881682) tp_is_empty!17625 (not b!881672) (not b!881681) (not b!881671) (not b!881673) b_and!25449 (not start!74832) (not mapNonEmpty!28068) (not b!881683) (not b!881670))
(check-sat b_and!25449 (not b_next!15381))
