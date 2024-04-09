; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40244 () Bool)

(assert start!40244)

(declare-fun b_free!10503 () Bool)

(declare-fun b_next!10503 () Bool)

(assert (=> start!40244 (= b_free!10503 (not b_next!10503))))

(declare-fun tp!37038 () Bool)

(declare-fun b_and!18489 () Bool)

(assert (=> start!40244 (= tp!37038 b_and!18489)))

(declare-fun b!441233 () Bool)

(declare-fun e!259822 () Bool)

(declare-fun e!259816 () Bool)

(assert (=> b!441233 (= e!259822 e!259816)))

(declare-fun res!261261 () Bool)

(assert (=> b!441233 (=> (not res!261261) (not e!259816))))

(declare-datatypes ((array!27097 0))(
  ( (array!27098 (arr!12995 (Array (_ BitVec 32) (_ BitVec 64))) (size!13347 (_ BitVec 32))) )
))
(declare-fun lt!202854 () array!27097)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27097 (_ BitVec 32)) Bool)

(assert (=> b!441233 (= res!261261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202854 mask!1025))))

(declare-fun _keys!709 () array!27097)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!441233 (= lt!202854 (array!27098 (store (arr!12995 _keys!709) i!563 k0!794) (size!13347 _keys!709)))))

(declare-fun b!441234 () Bool)

(declare-fun e!259818 () Bool)

(assert (=> b!441234 (= e!259816 e!259818)))

(declare-fun res!261257 () Bool)

(assert (=> b!441234 (=> (not res!261257) (not e!259818))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!441234 (= res!261257 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16645 0))(
  ( (V!16646 (val!5872 Int)) )
))
(declare-datatypes ((ValueCell!5484 0))(
  ( (ValueCellFull!5484 (v!8115 V!16645)) (EmptyCell!5484) )
))
(declare-datatypes ((array!27099 0))(
  ( (array!27100 (arr!12996 (Array (_ BitVec 32) ValueCell!5484)) (size!13348 (_ BitVec 32))) )
))
(declare-fun lt!202857 () array!27099)

(declare-fun minValue!515 () V!16645)

(declare-datatypes ((tuple2!7734 0))(
  ( (tuple2!7735 (_1!3877 (_ BitVec 64)) (_2!3877 V!16645)) )
))
(declare-datatypes ((List!7776 0))(
  ( (Nil!7773) (Cons!7772 (h!8628 tuple2!7734) (t!13540 List!7776)) )
))
(declare-datatypes ((ListLongMap!6661 0))(
  ( (ListLongMap!6662 (toList!3346 List!7776)) )
))
(declare-fun lt!202853 () ListLongMap!6661)

(declare-fun zeroValue!515 () V!16645)

(declare-fun getCurrentListMapNoExtraKeys!1528 (array!27097 array!27099 (_ BitVec 32) (_ BitVec 32) V!16645 V!16645 (_ BitVec 32) Int) ListLongMap!6661)

(assert (=> b!441234 (= lt!202853 (getCurrentListMapNoExtraKeys!1528 lt!202854 lt!202857 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!27099)

(declare-fun v!412 () V!16645)

(assert (=> b!441234 (= lt!202857 (array!27100 (store (arr!12996 _values!549) i!563 (ValueCellFull!5484 v!412)) (size!13348 _values!549)))))

(declare-fun lt!202855 () ListLongMap!6661)

(assert (=> b!441234 (= lt!202855 (getCurrentListMapNoExtraKeys!1528 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun res!261265 () Bool)

(assert (=> start!40244 (=> (not res!261265) (not e!259822))))

(assert (=> start!40244 (= res!261265 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13347 _keys!709))))))

(assert (=> start!40244 e!259822))

(declare-fun tp_is_empty!11655 () Bool)

(assert (=> start!40244 tp_is_empty!11655))

(assert (=> start!40244 tp!37038))

(assert (=> start!40244 true))

(declare-fun e!259819 () Bool)

(declare-fun array_inv!9424 (array!27099) Bool)

(assert (=> start!40244 (and (array_inv!9424 _values!549) e!259819)))

(declare-fun array_inv!9425 (array!27097) Bool)

(assert (=> start!40244 (array_inv!9425 _keys!709)))

(declare-fun b!441235 () Bool)

(declare-fun res!261262 () Bool)

(assert (=> b!441235 (=> (not res!261262) (not e!259822))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!441235 (= res!261262 (validMask!0 mask!1025))))

(declare-fun b!441236 () Bool)

(declare-fun e!259820 () Bool)

(assert (=> b!441236 (= e!259820 tp_is_empty!11655)))

(declare-fun b!441237 () Bool)

(declare-fun res!261259 () Bool)

(assert (=> b!441237 (=> (not res!261259) (not e!259816))))

(declare-datatypes ((List!7777 0))(
  ( (Nil!7774) (Cons!7773 (h!8629 (_ BitVec 64)) (t!13541 List!7777)) )
))
(declare-fun arrayNoDuplicates!0 (array!27097 (_ BitVec 32) List!7777) Bool)

(assert (=> b!441237 (= res!261259 (arrayNoDuplicates!0 lt!202854 #b00000000000000000000000000000000 Nil!7774))))

(declare-fun mapIsEmpty!19104 () Bool)

(declare-fun mapRes!19104 () Bool)

(assert (=> mapIsEmpty!19104 mapRes!19104))

(declare-fun b!441238 () Bool)

(declare-fun res!261266 () Bool)

(assert (=> b!441238 (=> (not res!261266) (not e!259822))))

(assert (=> b!441238 (= res!261266 (or (= (select (arr!12995 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12995 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!441239 () Bool)

(declare-fun res!261255 () Bool)

(assert (=> b!441239 (=> (not res!261255) (not e!259822))))

(assert (=> b!441239 (= res!261255 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7774))))

(declare-fun b!441240 () Bool)

(declare-fun res!261267 () Bool)

(assert (=> b!441240 (=> (not res!261267) (not e!259822))))

(declare-fun arrayContainsKey!0 (array!27097 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!441240 (= res!261267 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!441241 () Bool)

(declare-fun res!261260 () Bool)

(assert (=> b!441241 (=> (not res!261260) (not e!259822))))

(assert (=> b!441241 (= res!261260 (and (= (size!13348 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13347 _keys!709) (size!13348 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!441242 () Bool)

(declare-fun e!259821 () Bool)

(assert (=> b!441242 (= e!259821 tp_is_empty!11655)))

(declare-fun b!441243 () Bool)

(assert (=> b!441243 (= e!259819 (and e!259820 mapRes!19104))))

(declare-fun condMapEmpty!19104 () Bool)

(declare-fun mapDefault!19104 () ValueCell!5484)

(assert (=> b!441243 (= condMapEmpty!19104 (= (arr!12996 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5484)) mapDefault!19104)))))

(declare-fun b!441244 () Bool)

(declare-fun res!261263 () Bool)

(assert (=> b!441244 (=> (not res!261263) (not e!259822))))

(assert (=> b!441244 (= res!261263 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!19104 () Bool)

(declare-fun tp!37037 () Bool)

(assert (=> mapNonEmpty!19104 (= mapRes!19104 (and tp!37037 e!259821))))

(declare-fun mapKey!19104 () (_ BitVec 32))

(declare-fun mapValue!19104 () ValueCell!5484)

(declare-fun mapRest!19104 () (Array (_ BitVec 32) ValueCell!5484))

(assert (=> mapNonEmpty!19104 (= (arr!12996 _values!549) (store mapRest!19104 mapKey!19104 mapValue!19104))))

(declare-fun b!441245 () Bool)

(declare-fun res!261256 () Bool)

(assert (=> b!441245 (=> (not res!261256) (not e!259822))))

(assert (=> b!441245 (= res!261256 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13347 _keys!709))))))

(declare-fun b!441246 () Bool)

(declare-fun res!261258 () Bool)

(assert (=> b!441246 (=> (not res!261258) (not e!259816))))

(assert (=> b!441246 (= res!261258 (bvsle from!863 i!563))))

(declare-fun b!441247 () Bool)

(assert (=> b!441247 (= e!259818 (not true))))

(declare-fun +!1480 (ListLongMap!6661 tuple2!7734) ListLongMap!6661)

(assert (=> b!441247 (= (getCurrentListMapNoExtraKeys!1528 lt!202854 lt!202857 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1480 (getCurrentListMapNoExtraKeys!1528 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7735 k0!794 v!412)))))

(declare-datatypes ((Unit!13075 0))(
  ( (Unit!13076) )
))
(declare-fun lt!202856 () Unit!13075)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!658 (array!27097 array!27099 (_ BitVec 32) (_ BitVec 32) V!16645 V!16645 (_ BitVec 32) (_ BitVec 64) V!16645 (_ BitVec 32) Int) Unit!13075)

(assert (=> b!441247 (= lt!202856 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!658 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!441248 () Bool)

(declare-fun res!261264 () Bool)

(assert (=> b!441248 (=> (not res!261264) (not e!259822))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!441248 (= res!261264 (validKeyInArray!0 k0!794))))

(assert (= (and start!40244 res!261265) b!441235))

(assert (= (and b!441235 res!261262) b!441241))

(assert (= (and b!441241 res!261260) b!441244))

(assert (= (and b!441244 res!261263) b!441239))

(assert (= (and b!441239 res!261255) b!441245))

(assert (= (and b!441245 res!261256) b!441248))

(assert (= (and b!441248 res!261264) b!441238))

(assert (= (and b!441238 res!261266) b!441240))

(assert (= (and b!441240 res!261267) b!441233))

(assert (= (and b!441233 res!261261) b!441237))

(assert (= (and b!441237 res!261259) b!441246))

(assert (= (and b!441246 res!261258) b!441234))

(assert (= (and b!441234 res!261257) b!441247))

(assert (= (and b!441243 condMapEmpty!19104) mapIsEmpty!19104))

(assert (= (and b!441243 (not condMapEmpty!19104)) mapNonEmpty!19104))

(get-info :version)

(assert (= (and mapNonEmpty!19104 ((_ is ValueCellFull!5484) mapValue!19104)) b!441242))

(assert (= (and b!441243 ((_ is ValueCellFull!5484) mapDefault!19104)) b!441236))

(assert (= start!40244 b!441243))

(declare-fun m!428109 () Bool)

(assert (=> b!441239 m!428109))

(declare-fun m!428111 () Bool)

(assert (=> b!441238 m!428111))

(declare-fun m!428113 () Bool)

(assert (=> b!441237 m!428113))

(declare-fun m!428115 () Bool)

(assert (=> b!441233 m!428115))

(declare-fun m!428117 () Bool)

(assert (=> b!441233 m!428117))

(declare-fun m!428119 () Bool)

(assert (=> b!441247 m!428119))

(declare-fun m!428121 () Bool)

(assert (=> b!441247 m!428121))

(assert (=> b!441247 m!428121))

(declare-fun m!428123 () Bool)

(assert (=> b!441247 m!428123))

(declare-fun m!428125 () Bool)

(assert (=> b!441247 m!428125))

(declare-fun m!428127 () Bool)

(assert (=> mapNonEmpty!19104 m!428127))

(declare-fun m!428129 () Bool)

(assert (=> b!441240 m!428129))

(declare-fun m!428131 () Bool)

(assert (=> b!441235 m!428131))

(declare-fun m!428133 () Bool)

(assert (=> b!441244 m!428133))

(declare-fun m!428135 () Bool)

(assert (=> start!40244 m!428135))

(declare-fun m!428137 () Bool)

(assert (=> start!40244 m!428137))

(declare-fun m!428139 () Bool)

(assert (=> b!441248 m!428139))

(declare-fun m!428141 () Bool)

(assert (=> b!441234 m!428141))

(declare-fun m!428143 () Bool)

(assert (=> b!441234 m!428143))

(declare-fun m!428145 () Bool)

(assert (=> b!441234 m!428145))

(check-sat (not b_next!10503) (not b!441240) (not b!441247) (not b!441235) (not b!441244) (not b!441233) (not start!40244) (not b!441234) (not b!441248) b_and!18489 (not b!441239) (not b!441237) (not mapNonEmpty!19104) tp_is_empty!11655)
(check-sat b_and!18489 (not b_next!10503))
