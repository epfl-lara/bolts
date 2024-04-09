; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40674 () Bool)

(assert start!40674)

(declare-fun b_free!10677 () Bool)

(declare-fun b_next!10677 () Bool)

(assert (=> start!40674 (= b_free!10677 (not b_next!10677))))

(declare-fun tp!37851 () Bool)

(declare-fun b_and!18703 () Bool)

(assert (=> start!40674 (= tp!37851 b_and!18703)))

(declare-fun b!449207 () Bool)

(declare-fun res!267265 () Bool)

(declare-fun e!263405 () Bool)

(assert (=> b!449207 (=> (not res!267265) (not e!263405))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!449207 (= res!267265 (bvsle from!863 i!563))))

(declare-fun b!449208 () Bool)

(declare-fun e!263404 () Bool)

(declare-fun tp_is_empty!12015 () Bool)

(assert (=> b!449208 (= e!263404 tp_is_empty!12015)))

(declare-fun b!449209 () Bool)

(declare-fun res!267267 () Bool)

(declare-fun e!263409 () Bool)

(assert (=> b!449209 (=> (not res!267267) (not e!263409))))

(declare-datatypes ((array!27797 0))(
  ( (array!27798 (arr!13341 (Array (_ BitVec 32) (_ BitVec 64))) (size!13693 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27797)

(assert (=> b!449209 (= res!267267 (or (= (select (arr!13341 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13341 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!449210 () Bool)

(declare-fun res!267262 () Bool)

(assert (=> b!449210 (=> (not res!267262) (not e!263409))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17125 0))(
  ( (V!17126 (val!6052 Int)) )
))
(declare-datatypes ((ValueCell!5664 0))(
  ( (ValueCellFull!5664 (v!8303 V!17125)) (EmptyCell!5664) )
))
(declare-datatypes ((array!27799 0))(
  ( (array!27800 (arr!13342 (Array (_ BitVec 32) ValueCell!5664)) (size!13694 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27799)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!449210 (= res!267262 (and (= (size!13694 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13693 _keys!709) (size!13694 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!449211 () Bool)

(declare-fun res!267268 () Bool)

(assert (=> b!449211 (=> (not res!267268) (not e!263409))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!449211 (= res!267268 (validKeyInArray!0 k0!794))))

(declare-fun mapIsEmpty!19656 () Bool)

(declare-fun mapRes!19656 () Bool)

(assert (=> mapIsEmpty!19656 mapRes!19656))

(declare-fun b!449212 () Bool)

(declare-fun res!267261 () Bool)

(assert (=> b!449212 (=> (not res!267261) (not e!263409))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!449212 (= res!267261 (validMask!0 mask!1025))))

(declare-fun res!267260 () Bool)

(assert (=> start!40674 (=> (not res!267260) (not e!263409))))

(assert (=> start!40674 (= res!267260 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13693 _keys!709))))))

(assert (=> start!40674 e!263409))

(assert (=> start!40674 tp_is_empty!12015))

(assert (=> start!40674 tp!37851))

(assert (=> start!40674 true))

(declare-fun e!263407 () Bool)

(declare-fun array_inv!9654 (array!27799) Bool)

(assert (=> start!40674 (and (array_inv!9654 _values!549) e!263407)))

(declare-fun array_inv!9655 (array!27797) Bool)

(assert (=> start!40674 (array_inv!9655 _keys!709)))

(declare-fun b!449213 () Bool)

(declare-fun res!267264 () Bool)

(assert (=> b!449213 (=> (not res!267264) (not e!263409))))

(declare-fun arrayContainsKey!0 (array!27797 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!449213 (= res!267264 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19656 () Bool)

(declare-fun tp!37850 () Bool)

(assert (=> mapNonEmpty!19656 (= mapRes!19656 (and tp!37850 e!263404))))

(declare-fun mapValue!19656 () ValueCell!5664)

(declare-fun mapKey!19656 () (_ BitVec 32))

(declare-fun mapRest!19656 () (Array (_ BitVec 32) ValueCell!5664))

(assert (=> mapNonEmpty!19656 (= (arr!13342 _values!549) (store mapRest!19656 mapKey!19656 mapValue!19656))))

(declare-fun b!449214 () Bool)

(declare-fun res!267266 () Bool)

(assert (=> b!449214 (=> (not res!267266) (not e!263409))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27797 (_ BitVec 32)) Bool)

(assert (=> b!449214 (= res!267266 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!449215 () Bool)

(declare-fun e!263408 () Bool)

(assert (=> b!449215 (= e!263407 (and e!263408 mapRes!19656))))

(declare-fun condMapEmpty!19656 () Bool)

(declare-fun mapDefault!19656 () ValueCell!5664)

(assert (=> b!449215 (= condMapEmpty!19656 (= (arr!13342 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5664)) mapDefault!19656)))))

(declare-fun b!449216 () Bool)

(assert (=> b!449216 (= e!263405 false)))

(declare-fun minValue!515 () V!17125)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!204322 () array!27797)

(declare-fun zeroValue!515 () V!17125)

(declare-datatypes ((tuple2!7880 0))(
  ( (tuple2!7881 (_1!3950 (_ BitVec 64)) (_2!3950 V!17125)) )
))
(declare-datatypes ((List!7991 0))(
  ( (Nil!7988) (Cons!7987 (h!8843 tuple2!7880) (t!13761 List!7991)) )
))
(declare-datatypes ((ListLongMap!6807 0))(
  ( (ListLongMap!6808 (toList!3419 List!7991)) )
))
(declare-fun lt!204321 () ListLongMap!6807)

(declare-fun v!412 () V!17125)

(declare-fun getCurrentListMapNoExtraKeys!1599 (array!27797 array!27799 (_ BitVec 32) (_ BitVec 32) V!17125 V!17125 (_ BitVec 32) Int) ListLongMap!6807)

(assert (=> b!449216 (= lt!204321 (getCurrentListMapNoExtraKeys!1599 lt!204322 (array!27800 (store (arr!13342 _values!549) i!563 (ValueCellFull!5664 v!412)) (size!13694 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204320 () ListLongMap!6807)

(assert (=> b!449216 (= lt!204320 (getCurrentListMapNoExtraKeys!1599 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!449217 () Bool)

(assert (=> b!449217 (= e!263408 tp_is_empty!12015)))

(declare-fun b!449218 () Bool)

(declare-fun res!267269 () Bool)

(assert (=> b!449218 (=> (not res!267269) (not e!263409))))

(declare-datatypes ((List!7992 0))(
  ( (Nil!7989) (Cons!7988 (h!8844 (_ BitVec 64)) (t!13762 List!7992)) )
))
(declare-fun arrayNoDuplicates!0 (array!27797 (_ BitVec 32) List!7992) Bool)

(assert (=> b!449218 (= res!267269 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7989))))

(declare-fun b!449219 () Bool)

(declare-fun res!267259 () Bool)

(assert (=> b!449219 (=> (not res!267259) (not e!263409))))

(assert (=> b!449219 (= res!267259 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13693 _keys!709))))))

(declare-fun b!449220 () Bool)

(assert (=> b!449220 (= e!263409 e!263405)))

(declare-fun res!267263 () Bool)

(assert (=> b!449220 (=> (not res!267263) (not e!263405))))

(assert (=> b!449220 (= res!267263 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204322 mask!1025))))

(assert (=> b!449220 (= lt!204322 (array!27798 (store (arr!13341 _keys!709) i!563 k0!794) (size!13693 _keys!709)))))

(declare-fun b!449221 () Bool)

(declare-fun res!267270 () Bool)

(assert (=> b!449221 (=> (not res!267270) (not e!263405))))

(assert (=> b!449221 (= res!267270 (arrayNoDuplicates!0 lt!204322 #b00000000000000000000000000000000 Nil!7989))))

(assert (= (and start!40674 res!267260) b!449212))

(assert (= (and b!449212 res!267261) b!449210))

(assert (= (and b!449210 res!267262) b!449214))

(assert (= (and b!449214 res!267266) b!449218))

(assert (= (and b!449218 res!267269) b!449219))

(assert (= (and b!449219 res!267259) b!449211))

(assert (= (and b!449211 res!267268) b!449209))

(assert (= (and b!449209 res!267267) b!449213))

(assert (= (and b!449213 res!267264) b!449220))

(assert (= (and b!449220 res!267263) b!449221))

(assert (= (and b!449221 res!267270) b!449207))

(assert (= (and b!449207 res!267265) b!449216))

(assert (= (and b!449215 condMapEmpty!19656) mapIsEmpty!19656))

(assert (= (and b!449215 (not condMapEmpty!19656)) mapNonEmpty!19656))

(get-info :version)

(assert (= (and mapNonEmpty!19656 ((_ is ValueCellFull!5664) mapValue!19656)) b!449208))

(assert (= (and b!449215 ((_ is ValueCellFull!5664) mapDefault!19656)) b!449217))

(assert (= start!40674 b!449215))

(declare-fun m!433475 () Bool)

(assert (=> b!449209 m!433475))

(declare-fun m!433477 () Bool)

(assert (=> b!449221 m!433477))

(declare-fun m!433479 () Bool)

(assert (=> mapNonEmpty!19656 m!433479))

(declare-fun m!433481 () Bool)

(assert (=> b!449218 m!433481))

(declare-fun m!433483 () Bool)

(assert (=> b!449216 m!433483))

(declare-fun m!433485 () Bool)

(assert (=> b!449216 m!433485))

(declare-fun m!433487 () Bool)

(assert (=> b!449216 m!433487))

(declare-fun m!433489 () Bool)

(assert (=> b!449211 m!433489))

(declare-fun m!433491 () Bool)

(assert (=> b!449213 m!433491))

(declare-fun m!433493 () Bool)

(assert (=> b!449212 m!433493))

(declare-fun m!433495 () Bool)

(assert (=> b!449220 m!433495))

(declare-fun m!433497 () Bool)

(assert (=> b!449220 m!433497))

(declare-fun m!433499 () Bool)

(assert (=> start!40674 m!433499))

(declare-fun m!433501 () Bool)

(assert (=> start!40674 m!433501))

(declare-fun m!433503 () Bool)

(assert (=> b!449214 m!433503))

(check-sat (not start!40674) b_and!18703 (not b!449213) (not b!449211) (not b!449212) (not mapNonEmpty!19656) (not b!449220) tp_is_empty!12015 (not b_next!10677) (not b!449216) (not b!449221) (not b!449218) (not b!449214))
(check-sat b_and!18703 (not b_next!10677))
