; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40716 () Bool)

(assert start!40716)

(declare-fun b_free!10719 () Bool)

(declare-fun b_next!10719 () Bool)

(assert (=> start!40716 (= b_free!10719 (not b_next!10719))))

(declare-fun tp!37976 () Bool)

(declare-fun b_and!18745 () Bool)

(assert (=> start!40716 (= tp!37976 b_and!18745)))

(declare-fun b!450257 () Bool)

(declare-fun res!268066 () Bool)

(declare-fun e!263857 () Bool)

(assert (=> b!450257 (=> (not res!268066) (not e!263857))))

(declare-datatypes ((array!27881 0))(
  ( (array!27882 (arr!13383 (Array (_ BitVec 32) (_ BitVec 64))) (size!13735 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27881)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!450257 (= res!268066 (or (= (select (arr!13383 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13383 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!450258 () Bool)

(declare-fun e!263858 () Bool)

(declare-fun e!263859 () Bool)

(declare-fun mapRes!19719 () Bool)

(assert (=> b!450258 (= e!263858 (and e!263859 mapRes!19719))))

(declare-fun condMapEmpty!19719 () Bool)

(declare-datatypes ((V!17181 0))(
  ( (V!17182 (val!6073 Int)) )
))
(declare-datatypes ((ValueCell!5685 0))(
  ( (ValueCellFull!5685 (v!8324 V!17181)) (EmptyCell!5685) )
))
(declare-datatypes ((array!27883 0))(
  ( (array!27884 (arr!13384 (Array (_ BitVec 32) ValueCell!5685)) (size!13736 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27883)

(declare-fun mapDefault!19719 () ValueCell!5685)

(assert (=> b!450258 (= condMapEmpty!19719 (= (arr!13384 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5685)) mapDefault!19719)))))

(declare-fun b!450259 () Bool)

(declare-fun res!268068 () Bool)

(assert (=> b!450259 (=> (not res!268068) (not e!263857))))

(declare-datatypes ((List!8030 0))(
  ( (Nil!8027) (Cons!8026 (h!8882 (_ BitVec 64)) (t!13800 List!8030)) )
))
(declare-fun arrayNoDuplicates!0 (array!27881 (_ BitVec 32) List!8030) Bool)

(assert (=> b!450259 (= res!268068 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8027))))

(declare-datatypes ((tuple2!7920 0))(
  ( (tuple2!7921 (_1!3970 (_ BitVec 64)) (_2!3970 V!17181)) )
))
(declare-datatypes ((List!8031 0))(
  ( (Nil!8028) (Cons!8027 (h!8883 tuple2!7920) (t!13801 List!8031)) )
))
(declare-datatypes ((ListLongMap!6847 0))(
  ( (ListLongMap!6848 (toList!3439 List!8031)) )
))
(declare-fun call!29746 () ListLongMap!6847)

(declare-fun call!29747 () ListLongMap!6847)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun b!450260 () Bool)

(declare-fun e!263861 () Bool)

(declare-fun v!412 () V!17181)

(declare-fun +!1511 (ListLongMap!6847 tuple2!7920) ListLongMap!6847)

(assert (=> b!450260 (= e!263861 (= call!29746 (+!1511 call!29747 (tuple2!7921 k0!794 v!412))))))

(declare-fun mapIsEmpty!19719 () Bool)

(assert (=> mapIsEmpty!19719 mapRes!19719))

(declare-fun b!450261 () Bool)

(declare-fun res!268058 () Bool)

(assert (=> b!450261 (=> (not res!268058) (not e!263857))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!450261 (= res!268058 (validKeyInArray!0 k0!794))))

(declare-fun b!450262 () Bool)

(declare-fun e!263862 () Bool)

(assert (=> b!450262 (= e!263862 (not true))))

(assert (=> b!450262 e!263861))

(declare-fun c!55910 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!450262 (= c!55910 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!17181)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17181)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((Unit!13125 0))(
  ( (Unit!13126) )
))
(declare-fun lt!204576 () Unit!13125)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!681 (array!27881 array!27883 (_ BitVec 32) (_ BitVec 32) V!17181 V!17181 (_ BitVec 32) (_ BitVec 64) V!17181 (_ BitVec 32) Int) Unit!13125)

(assert (=> b!450262 (= lt!204576 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!681 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!450263 () Bool)

(declare-fun e!263855 () Bool)

(assert (=> b!450263 (= e!263857 e!263855)))

(declare-fun res!268057 () Bool)

(assert (=> b!450263 (=> (not res!268057) (not e!263855))))

(declare-fun lt!204577 () array!27881)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27881 (_ BitVec 32)) Bool)

(assert (=> b!450263 (= res!268057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204577 mask!1025))))

(assert (=> b!450263 (= lt!204577 (array!27882 (store (arr!13383 _keys!709) i!563 k0!794) (size!13735 _keys!709)))))

(declare-fun b!450264 () Bool)

(declare-fun tp_is_empty!12057 () Bool)

(assert (=> b!450264 (= e!263859 tp_is_empty!12057)))

(declare-fun b!450265 () Bool)

(declare-fun res!268062 () Bool)

(assert (=> b!450265 (=> (not res!268062) (not e!263857))))

(declare-fun arrayContainsKey!0 (array!27881 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!450265 (= res!268062 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!450266 () Bool)

(declare-fun res!268063 () Bool)

(assert (=> b!450266 (=> (not res!268063) (not e!263857))))

(assert (=> b!450266 (= res!268063 (and (= (size!13736 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13735 _keys!709) (size!13736 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!450267 () Bool)

(assert (=> b!450267 (= e!263861 (= call!29747 call!29746))))

(declare-fun bm!29743 () Bool)

(declare-fun lt!204575 () array!27883)

(declare-fun getCurrentListMapNoExtraKeys!1617 (array!27881 array!27883 (_ BitVec 32) (_ BitVec 32) V!17181 V!17181 (_ BitVec 32) Int) ListLongMap!6847)

(assert (=> bm!29743 (= call!29746 (getCurrentListMapNoExtraKeys!1617 (ite c!55910 lt!204577 _keys!709) (ite c!55910 lt!204575 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!29744 () Bool)

(assert (=> bm!29744 (= call!29747 (getCurrentListMapNoExtraKeys!1617 (ite c!55910 _keys!709 lt!204577) (ite c!55910 _values!549 lt!204575) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!450268 () Bool)

(declare-fun res!268064 () Bool)

(assert (=> b!450268 (=> (not res!268064) (not e!263855))))

(assert (=> b!450268 (= res!268064 (bvsle from!863 i!563))))

(declare-fun res!268060 () Bool)

(assert (=> start!40716 (=> (not res!268060) (not e!263857))))

(assert (=> start!40716 (= res!268060 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13735 _keys!709))))))

(assert (=> start!40716 e!263857))

(assert (=> start!40716 tp_is_empty!12057))

(assert (=> start!40716 tp!37976))

(assert (=> start!40716 true))

(declare-fun array_inv!9688 (array!27883) Bool)

(assert (=> start!40716 (and (array_inv!9688 _values!549) e!263858)))

(declare-fun array_inv!9689 (array!27881) Bool)

(assert (=> start!40716 (array_inv!9689 _keys!709)))

(declare-fun mapNonEmpty!19719 () Bool)

(declare-fun tp!37977 () Bool)

(declare-fun e!263856 () Bool)

(assert (=> mapNonEmpty!19719 (= mapRes!19719 (and tp!37977 e!263856))))

(declare-fun mapValue!19719 () ValueCell!5685)

(declare-fun mapRest!19719 () (Array (_ BitVec 32) ValueCell!5685))

(declare-fun mapKey!19719 () (_ BitVec 32))

(assert (=> mapNonEmpty!19719 (= (arr!13384 _values!549) (store mapRest!19719 mapKey!19719 mapValue!19719))))

(declare-fun b!450269 () Bool)

(declare-fun res!268056 () Bool)

(assert (=> b!450269 (=> (not res!268056) (not e!263855))))

(assert (=> b!450269 (= res!268056 (arrayNoDuplicates!0 lt!204577 #b00000000000000000000000000000000 Nil!8027))))

(declare-fun b!450270 () Bool)

(declare-fun res!268061 () Bool)

(assert (=> b!450270 (=> (not res!268061) (not e!263857))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!450270 (= res!268061 (validMask!0 mask!1025))))

(declare-fun b!450271 () Bool)

(declare-fun res!268067 () Bool)

(assert (=> b!450271 (=> (not res!268067) (not e!263857))))

(assert (=> b!450271 (= res!268067 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!450272 () Bool)

(assert (=> b!450272 (= e!263855 e!263862)))

(declare-fun res!268059 () Bool)

(assert (=> b!450272 (=> (not res!268059) (not e!263862))))

(assert (=> b!450272 (= res!268059 (= from!863 i!563))))

(declare-fun lt!204574 () ListLongMap!6847)

(assert (=> b!450272 (= lt!204574 (getCurrentListMapNoExtraKeys!1617 lt!204577 lt!204575 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!450272 (= lt!204575 (array!27884 (store (arr!13384 _values!549) i!563 (ValueCellFull!5685 v!412)) (size!13736 _values!549)))))

(declare-fun lt!204573 () ListLongMap!6847)

(assert (=> b!450272 (= lt!204573 (getCurrentListMapNoExtraKeys!1617 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!450273 () Bool)

(declare-fun res!268065 () Bool)

(assert (=> b!450273 (=> (not res!268065) (not e!263857))))

(assert (=> b!450273 (= res!268065 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13735 _keys!709))))))

(declare-fun b!450274 () Bool)

(assert (=> b!450274 (= e!263856 tp_is_empty!12057)))

(assert (= (and start!40716 res!268060) b!450270))

(assert (= (and b!450270 res!268061) b!450266))

(assert (= (and b!450266 res!268063) b!450271))

(assert (= (and b!450271 res!268067) b!450259))

(assert (= (and b!450259 res!268068) b!450273))

(assert (= (and b!450273 res!268065) b!450261))

(assert (= (and b!450261 res!268058) b!450257))

(assert (= (and b!450257 res!268066) b!450265))

(assert (= (and b!450265 res!268062) b!450263))

(assert (= (and b!450263 res!268057) b!450269))

(assert (= (and b!450269 res!268056) b!450268))

(assert (= (and b!450268 res!268064) b!450272))

(assert (= (and b!450272 res!268059) b!450262))

(assert (= (and b!450262 c!55910) b!450260))

(assert (= (and b!450262 (not c!55910)) b!450267))

(assert (= (or b!450260 b!450267) bm!29743))

(assert (= (or b!450260 b!450267) bm!29744))

(assert (= (and b!450258 condMapEmpty!19719) mapIsEmpty!19719))

(assert (= (and b!450258 (not condMapEmpty!19719)) mapNonEmpty!19719))

(get-info :version)

(assert (= (and mapNonEmpty!19719 ((_ is ValueCellFull!5685) mapValue!19719)) b!450274))

(assert (= (and b!450258 ((_ is ValueCellFull!5685) mapDefault!19719)) b!450264))

(assert (= start!40716 b!450258))

(declare-fun m!434197 () Bool)

(assert (=> b!450257 m!434197))

(declare-fun m!434199 () Bool)

(assert (=> b!450261 m!434199))

(declare-fun m!434201 () Bool)

(assert (=> mapNonEmpty!19719 m!434201))

(declare-fun m!434203 () Bool)

(assert (=> b!450265 m!434203))

(declare-fun m!434205 () Bool)

(assert (=> bm!29744 m!434205))

(declare-fun m!434207 () Bool)

(assert (=> bm!29743 m!434207))

(declare-fun m!434209 () Bool)

(assert (=> b!450262 m!434209))

(declare-fun m!434211 () Bool)

(assert (=> start!40716 m!434211))

(declare-fun m!434213 () Bool)

(assert (=> start!40716 m!434213))

(declare-fun m!434215 () Bool)

(assert (=> b!450272 m!434215))

(declare-fun m!434217 () Bool)

(assert (=> b!450272 m!434217))

(declare-fun m!434219 () Bool)

(assert (=> b!450272 m!434219))

(declare-fun m!434221 () Bool)

(assert (=> b!450269 m!434221))

(declare-fun m!434223 () Bool)

(assert (=> b!450259 m!434223))

(declare-fun m!434225 () Bool)

(assert (=> b!450263 m!434225))

(declare-fun m!434227 () Bool)

(assert (=> b!450263 m!434227))

(declare-fun m!434229 () Bool)

(assert (=> b!450260 m!434229))

(declare-fun m!434231 () Bool)

(assert (=> b!450270 m!434231))

(declare-fun m!434233 () Bool)

(assert (=> b!450271 m!434233))

(check-sat (not b!450270) b_and!18745 (not b!450269) tp_is_empty!12057 (not b!450260) (not b!450259) (not bm!29743) (not b!450263) (not bm!29744) (not b!450271) (not mapNonEmpty!19719) (not b!450272) (not b!450265) (not b!450261) (not b!450262) (not b_next!10719) (not start!40716))
(check-sat b_and!18745 (not b_next!10719))
