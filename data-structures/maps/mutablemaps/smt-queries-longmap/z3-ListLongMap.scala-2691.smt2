; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39974 () Bool)

(assert start!39974)

(declare-fun b_free!10233 () Bool)

(declare-fun b_next!10233 () Bool)

(assert (=> start!39974 (= b_free!10233 (not b_next!10233))))

(declare-fun tp!36228 () Bool)

(declare-fun b_and!18143 () Bool)

(assert (=> start!39974 (= tp!36228 b_and!18143)))

(declare-fun b!434229 () Bool)

(declare-fun e!256653 () Bool)

(declare-fun tp_is_empty!11385 () Bool)

(assert (=> b!434229 (= e!256653 tp_is_empty!11385)))

(declare-fun res!255766 () Bool)

(declare-fun e!256647 () Bool)

(assert (=> start!39974 (=> (not res!255766) (not e!256647))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!26577 0))(
  ( (array!26578 (arr!12735 (Array (_ BitVec 32) (_ BitVec 64))) (size!13087 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26577)

(assert (=> start!39974 (= res!255766 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13087 _keys!709))))))

(assert (=> start!39974 e!256647))

(assert (=> start!39974 tp_is_empty!11385))

(assert (=> start!39974 tp!36228))

(assert (=> start!39974 true))

(declare-datatypes ((V!16285 0))(
  ( (V!16286 (val!5737 Int)) )
))
(declare-datatypes ((ValueCell!5349 0))(
  ( (ValueCellFull!5349 (v!7980 V!16285)) (EmptyCell!5349) )
))
(declare-datatypes ((array!26579 0))(
  ( (array!26580 (arr!12736 (Array (_ BitVec 32) ValueCell!5349)) (size!13088 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26579)

(declare-fun e!256648 () Bool)

(declare-fun array_inv!9260 (array!26579) Bool)

(assert (=> start!39974 (and (array_inv!9260 _values!549) e!256648)))

(declare-fun array_inv!9261 (array!26577) Bool)

(assert (=> start!39974 (array_inv!9261 _keys!709)))

(declare-fun b!434230 () Bool)

(declare-fun e!256651 () Bool)

(declare-fun e!256650 () Bool)

(assert (=> b!434230 (= e!256651 (not e!256650))))

(declare-fun res!255780 () Bool)

(assert (=> b!434230 (=> res!255780 e!256650)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!434230 (= res!255780 (not (validKeyInArray!0 (select (arr!12735 _keys!709) from!863))))))

(declare-datatypes ((tuple2!7520 0))(
  ( (tuple2!7521 (_1!3770 (_ BitVec 64)) (_2!3770 V!16285)) )
))
(declare-datatypes ((List!7568 0))(
  ( (Nil!7565) (Cons!7564 (h!8420 tuple2!7520) (t!13258 List!7568)) )
))
(declare-datatypes ((ListLongMap!6447 0))(
  ( (ListLongMap!6448 (toList!3239 List!7568)) )
))
(declare-fun lt!199711 () ListLongMap!6447)

(declare-fun lt!199720 () ListLongMap!6447)

(assert (=> b!434230 (= lt!199711 lt!199720)))

(declare-fun lt!199709 () ListLongMap!6447)

(declare-fun lt!199718 () tuple2!7520)

(declare-fun +!1384 (ListLongMap!6447 tuple2!7520) ListLongMap!6447)

(assert (=> b!434230 (= lt!199720 (+!1384 lt!199709 lt!199718))))

(declare-fun minValue!515 () V!16285)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!199712 () array!26577)

(declare-fun zeroValue!515 () V!16285)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!199719 () array!26579)

(declare-fun getCurrentListMapNoExtraKeys!1427 (array!26577 array!26579 (_ BitVec 32) (_ BitVec 32) V!16285 V!16285 (_ BitVec 32) Int) ListLongMap!6447)

(assert (=> b!434230 (= lt!199711 (getCurrentListMapNoExtraKeys!1427 lt!199712 lt!199719 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun v!412 () V!16285)

(assert (=> b!434230 (= lt!199718 (tuple2!7521 k0!794 v!412))))

(assert (=> b!434230 (= lt!199709 (getCurrentListMapNoExtraKeys!1427 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!12833 0))(
  ( (Unit!12834) )
))
(declare-fun lt!199713 () Unit!12833)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!570 (array!26577 array!26579 (_ BitVec 32) (_ BitVec 32) V!16285 V!16285 (_ BitVec 32) (_ BitVec 64) V!16285 (_ BitVec 32) Int) Unit!12833)

(assert (=> b!434230 (= lt!199713 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!570 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!434231 () Bool)

(declare-fun res!255772 () Bool)

(assert (=> b!434231 (=> (not res!255772) (not e!256647))))

(declare-fun arrayContainsKey!0 (array!26577 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!434231 (= res!255772 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!434232 () Bool)

(declare-fun res!255767 () Bool)

(assert (=> b!434232 (=> (not res!255767) (not e!256647))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!434232 (= res!255767 (validMask!0 mask!1025))))

(declare-fun b!434233 () Bool)

(declare-fun e!256652 () Bool)

(assert (=> b!434233 (= e!256647 e!256652)))

(declare-fun res!255779 () Bool)

(assert (=> b!434233 (=> (not res!255779) (not e!256652))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26577 (_ BitVec 32)) Bool)

(assert (=> b!434233 (= res!255779 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!199712 mask!1025))))

(assert (=> b!434233 (= lt!199712 (array!26578 (store (arr!12735 _keys!709) i!563 k0!794) (size!13087 _keys!709)))))

(declare-fun b!434234 () Bool)

(declare-fun res!255769 () Bool)

(assert (=> b!434234 (=> (not res!255769) (not e!256652))))

(assert (=> b!434234 (= res!255769 (bvsle from!863 i!563))))

(declare-fun b!434235 () Bool)

(assert (=> b!434235 (= e!256652 e!256651)))

(declare-fun res!255778 () Bool)

(assert (=> b!434235 (=> (not res!255778) (not e!256651))))

(assert (=> b!434235 (= res!255778 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!199716 () ListLongMap!6447)

(assert (=> b!434235 (= lt!199716 (getCurrentListMapNoExtraKeys!1427 lt!199712 lt!199719 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!434235 (= lt!199719 (array!26580 (store (arr!12736 _values!549) i!563 (ValueCellFull!5349 v!412)) (size!13088 _values!549)))))

(declare-fun lt!199721 () ListLongMap!6447)

(assert (=> b!434235 (= lt!199721 (getCurrentListMapNoExtraKeys!1427 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!434236 () Bool)

(declare-fun e!256654 () Unit!12833)

(declare-fun Unit!12835 () Unit!12833)

(assert (=> b!434236 (= e!256654 Unit!12835)))

(declare-fun b!434237 () Bool)

(declare-fun e!256645 () Bool)

(assert (=> b!434237 (= e!256650 e!256645)))

(declare-fun res!255777 () Bool)

(assert (=> b!434237 (=> res!255777 e!256645)))

(assert (=> b!434237 (= res!255777 (= k0!794 (select (arr!12735 _keys!709) from!863)))))

(assert (=> b!434237 (not (= (select (arr!12735 _keys!709) from!863) k0!794))))

(declare-fun lt!199708 () Unit!12833)

(assert (=> b!434237 (= lt!199708 e!256654)))

(declare-fun c!55610 () Bool)

(assert (=> b!434237 (= c!55610 (= (select (arr!12735 _keys!709) from!863) k0!794))))

(declare-fun lt!199714 () ListLongMap!6447)

(assert (=> b!434237 (= lt!199716 lt!199714)))

(declare-fun lt!199715 () tuple2!7520)

(assert (=> b!434237 (= lt!199714 (+!1384 lt!199720 lt!199715))))

(declare-fun lt!199710 () V!16285)

(assert (=> b!434237 (= lt!199715 (tuple2!7521 (select (arr!12735 _keys!709) from!863) lt!199710))))

(declare-fun get!6347 (ValueCell!5349 V!16285) V!16285)

(declare-fun dynLambda!816 (Int (_ BitVec 64)) V!16285)

(assert (=> b!434237 (= lt!199710 (get!6347 (select (arr!12736 _values!549) from!863) (dynLambda!816 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!18699 () Bool)

(declare-fun mapRes!18699 () Bool)

(assert (=> mapIsEmpty!18699 mapRes!18699))

(declare-fun b!434238 () Bool)

(declare-fun res!255776 () Bool)

(assert (=> b!434238 (=> (not res!255776) (not e!256647))))

(assert (=> b!434238 (= res!255776 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13087 _keys!709))))))

(declare-fun b!434239 () Bool)

(declare-fun Unit!12836 () Unit!12833)

(assert (=> b!434239 (= e!256654 Unit!12836)))

(declare-fun lt!199722 () Unit!12833)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26577 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12833)

(assert (=> b!434239 (= lt!199722 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!434239 false))

(declare-fun b!434240 () Bool)

(declare-fun e!256646 () Bool)

(assert (=> b!434240 (= e!256646 tp_is_empty!11385)))

(declare-fun b!434241 () Bool)

(assert (=> b!434241 (= e!256645 true)))

(assert (=> b!434241 (= lt!199714 (+!1384 (+!1384 lt!199709 lt!199715) lt!199718))))

(declare-fun lt!199717 () Unit!12833)

(declare-fun addCommutativeForDiffKeys!392 (ListLongMap!6447 (_ BitVec 64) V!16285 (_ BitVec 64) V!16285) Unit!12833)

(assert (=> b!434241 (= lt!199717 (addCommutativeForDiffKeys!392 lt!199709 k0!794 v!412 (select (arr!12735 _keys!709) from!863) lt!199710))))

(declare-fun mapNonEmpty!18699 () Bool)

(declare-fun tp!36227 () Bool)

(assert (=> mapNonEmpty!18699 (= mapRes!18699 (and tp!36227 e!256653))))

(declare-fun mapRest!18699 () (Array (_ BitVec 32) ValueCell!5349))

(declare-fun mapKey!18699 () (_ BitVec 32))

(declare-fun mapValue!18699 () ValueCell!5349)

(assert (=> mapNonEmpty!18699 (= (arr!12736 _values!549) (store mapRest!18699 mapKey!18699 mapValue!18699))))

(declare-fun b!434242 () Bool)

(declare-fun res!255774 () Bool)

(assert (=> b!434242 (=> (not res!255774) (not e!256652))))

(declare-datatypes ((List!7569 0))(
  ( (Nil!7566) (Cons!7565 (h!8421 (_ BitVec 64)) (t!13259 List!7569)) )
))
(declare-fun arrayNoDuplicates!0 (array!26577 (_ BitVec 32) List!7569) Bool)

(assert (=> b!434242 (= res!255774 (arrayNoDuplicates!0 lt!199712 #b00000000000000000000000000000000 Nil!7566))))

(declare-fun b!434243 () Bool)

(declare-fun res!255770 () Bool)

(assert (=> b!434243 (=> (not res!255770) (not e!256647))))

(assert (=> b!434243 (= res!255770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!434244 () Bool)

(declare-fun res!255773 () Bool)

(assert (=> b!434244 (=> (not res!255773) (not e!256647))))

(assert (=> b!434244 (= res!255773 (and (= (size!13088 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13087 _keys!709) (size!13088 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!434245 () Bool)

(declare-fun res!255771 () Bool)

(assert (=> b!434245 (=> (not res!255771) (not e!256647))))

(assert (=> b!434245 (= res!255771 (or (= (select (arr!12735 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12735 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!434246 () Bool)

(assert (=> b!434246 (= e!256648 (and e!256646 mapRes!18699))))

(declare-fun condMapEmpty!18699 () Bool)

(declare-fun mapDefault!18699 () ValueCell!5349)

(assert (=> b!434246 (= condMapEmpty!18699 (= (arr!12736 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5349)) mapDefault!18699)))))

(declare-fun b!434247 () Bool)

(declare-fun res!255775 () Bool)

(assert (=> b!434247 (=> (not res!255775) (not e!256647))))

(assert (=> b!434247 (= res!255775 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7566))))

(declare-fun b!434248 () Bool)

(declare-fun res!255768 () Bool)

(assert (=> b!434248 (=> (not res!255768) (not e!256647))))

(assert (=> b!434248 (= res!255768 (validKeyInArray!0 k0!794))))

(assert (= (and start!39974 res!255766) b!434232))

(assert (= (and b!434232 res!255767) b!434244))

(assert (= (and b!434244 res!255773) b!434243))

(assert (= (and b!434243 res!255770) b!434247))

(assert (= (and b!434247 res!255775) b!434238))

(assert (= (and b!434238 res!255776) b!434248))

(assert (= (and b!434248 res!255768) b!434245))

(assert (= (and b!434245 res!255771) b!434231))

(assert (= (and b!434231 res!255772) b!434233))

(assert (= (and b!434233 res!255779) b!434242))

(assert (= (and b!434242 res!255774) b!434234))

(assert (= (and b!434234 res!255769) b!434235))

(assert (= (and b!434235 res!255778) b!434230))

(assert (= (and b!434230 (not res!255780)) b!434237))

(assert (= (and b!434237 c!55610) b!434239))

(assert (= (and b!434237 (not c!55610)) b!434236))

(assert (= (and b!434237 (not res!255777)) b!434241))

(assert (= (and b!434246 condMapEmpty!18699) mapIsEmpty!18699))

(assert (= (and b!434246 (not condMapEmpty!18699)) mapNonEmpty!18699))

(get-info :version)

(assert (= (and mapNonEmpty!18699 ((_ is ValueCellFull!5349) mapValue!18699)) b!434229))

(assert (= (and b!434246 ((_ is ValueCellFull!5349) mapDefault!18699)) b!434240))

(assert (= start!39974 b!434246))

(declare-fun b_lambda!9351 () Bool)

(assert (=> (not b_lambda!9351) (not b!434237)))

(declare-fun t!13257 () Bool)

(declare-fun tb!3647 () Bool)

(assert (=> (and start!39974 (= defaultEntry!557 defaultEntry!557) t!13257) tb!3647))

(declare-fun result!6813 () Bool)

(assert (=> tb!3647 (= result!6813 tp_is_empty!11385)))

(assert (=> b!434237 t!13257))

(declare-fun b_and!18145 () Bool)

(assert (= b_and!18143 (and (=> t!13257 result!6813) b_and!18145)))

(declare-fun m!422219 () Bool)

(assert (=> b!434243 m!422219))

(declare-fun m!422221 () Bool)

(assert (=> b!434242 m!422221))

(declare-fun m!422223 () Bool)

(assert (=> b!434247 m!422223))

(declare-fun m!422225 () Bool)

(assert (=> b!434248 m!422225))

(declare-fun m!422227 () Bool)

(assert (=> mapNonEmpty!18699 m!422227))

(declare-fun m!422229 () Bool)

(assert (=> b!434237 m!422229))

(declare-fun m!422231 () Bool)

(assert (=> b!434237 m!422231))

(declare-fun m!422233 () Bool)

(assert (=> b!434237 m!422233))

(assert (=> b!434237 m!422233))

(assert (=> b!434237 m!422231))

(declare-fun m!422235 () Bool)

(assert (=> b!434237 m!422235))

(declare-fun m!422237 () Bool)

(assert (=> b!434237 m!422237))

(declare-fun m!422239 () Bool)

(assert (=> b!434231 m!422239))

(declare-fun m!422241 () Bool)

(assert (=> b!434245 m!422241))

(declare-fun m!422243 () Bool)

(assert (=> b!434239 m!422243))

(declare-fun m!422245 () Bool)

(assert (=> b!434233 m!422245))

(declare-fun m!422247 () Bool)

(assert (=> b!434233 m!422247))

(declare-fun m!422249 () Bool)

(assert (=> b!434241 m!422249))

(assert (=> b!434241 m!422249))

(declare-fun m!422251 () Bool)

(assert (=> b!434241 m!422251))

(assert (=> b!434241 m!422229))

(assert (=> b!434241 m!422229))

(declare-fun m!422253 () Bool)

(assert (=> b!434241 m!422253))

(assert (=> b!434230 m!422229))

(declare-fun m!422255 () Bool)

(assert (=> b!434230 m!422255))

(declare-fun m!422257 () Bool)

(assert (=> b!434230 m!422257))

(declare-fun m!422259 () Bool)

(assert (=> b!434230 m!422259))

(assert (=> b!434230 m!422229))

(declare-fun m!422261 () Bool)

(assert (=> b!434230 m!422261))

(declare-fun m!422263 () Bool)

(assert (=> b!434230 m!422263))

(declare-fun m!422265 () Bool)

(assert (=> b!434235 m!422265))

(declare-fun m!422267 () Bool)

(assert (=> b!434235 m!422267))

(declare-fun m!422269 () Bool)

(assert (=> b!434235 m!422269))

(declare-fun m!422271 () Bool)

(assert (=> start!39974 m!422271))

(declare-fun m!422273 () Bool)

(assert (=> start!39974 m!422273))

(declare-fun m!422275 () Bool)

(assert (=> b!434232 m!422275))

(check-sat (not b!434248) (not b!434239) (not b!434235) (not b!434242) (not mapNonEmpty!18699) (not b_lambda!9351) (not b!434243) (not b!434232) b_and!18145 (not b!434233) (not b!434247) (not start!39974) (not b!434231) (not b!434241) (not b!434237) tp_is_empty!11385 (not b!434230) (not b_next!10233))
(check-sat b_and!18145 (not b_next!10233))
