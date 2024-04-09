; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40966 () Bool)

(assert start!40966)

(declare-fun b_free!10893 () Bool)

(declare-fun b_next!10893 () Bool)

(assert (=> start!40966 (= b_free!10893 (not b_next!10893))))

(declare-fun tp!38505 () Bool)

(declare-fun b_and!19053 () Bool)

(assert (=> start!40966 (= tp!38505 b_and!19053)))

(declare-fun b!455522 () Bool)

(declare-fun res!271750 () Bool)

(declare-fun e!266284 () Bool)

(assert (=> b!455522 (=> (not res!271750) (not e!266284))))

(declare-datatypes ((array!28231 0))(
  ( (array!28232 (arr!13556 (Array (_ BitVec 32) (_ BitVec 64))) (size!13908 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28231)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!455522 (= res!271750 (or (= (select (arr!13556 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13556 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!455523 () Bool)

(declare-fun e!266286 () Bool)

(assert (=> b!455523 (= e!266284 e!266286)))

(declare-fun res!271744 () Bool)

(assert (=> b!455523 (=> (not res!271744) (not e!266286))))

(declare-fun lt!206355 () array!28231)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28231 (_ BitVec 32)) Bool)

(assert (=> b!455523 (= res!271744 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206355 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!455523 (= lt!206355 (array!28232 (store (arr!13556 _keys!709) i!563 k0!794) (size!13908 _keys!709)))))

(declare-fun b!455524 () Bool)

(declare-fun e!266287 () Bool)

(declare-fun tp_is_empty!12231 () Bool)

(assert (=> b!455524 (= e!266287 tp_is_empty!12231)))

(declare-fun b!455525 () Bool)

(declare-fun res!271752 () Bool)

(assert (=> b!455525 (=> (not res!271752) (not e!266284))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!455525 (= res!271752 (validKeyInArray!0 k0!794))))

(declare-fun b!455526 () Bool)

(declare-fun e!266285 () Bool)

(declare-fun mapRes!19987 () Bool)

(assert (=> b!455526 (= e!266285 (and e!266287 mapRes!19987))))

(declare-fun condMapEmpty!19987 () Bool)

(declare-datatypes ((V!17413 0))(
  ( (V!17414 (val!6160 Int)) )
))
(declare-datatypes ((ValueCell!5772 0))(
  ( (ValueCellFull!5772 (v!8422 V!17413)) (EmptyCell!5772) )
))
(declare-datatypes ((array!28233 0))(
  ( (array!28234 (arr!13557 (Array (_ BitVec 32) ValueCell!5772)) (size!13909 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28233)

(declare-fun mapDefault!19987 () ValueCell!5772)

(assert (=> b!455526 (= condMapEmpty!19987 (= (arr!13557 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5772)) mapDefault!19987)))))

(declare-fun b!455527 () Bool)

(declare-fun res!271753 () Bool)

(assert (=> b!455527 (=> (not res!271753) (not e!266284))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!455527 (= res!271753 (and (= (size!13909 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13908 _keys!709) (size!13909 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!455528 () Bool)

(declare-fun res!271743 () Bool)

(assert (=> b!455528 (=> (not res!271743) (not e!266284))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!455528 (= res!271743 (validMask!0 mask!1025))))

(declare-fun b!455529 () Bool)

(declare-fun e!266288 () Bool)

(assert (=> b!455529 (= e!266288 tp_is_empty!12231)))

(declare-fun res!271746 () Bool)

(assert (=> start!40966 (=> (not res!271746) (not e!266284))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40966 (= res!271746 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13908 _keys!709))))))

(assert (=> start!40966 e!266284))

(assert (=> start!40966 tp_is_empty!12231))

(assert (=> start!40966 tp!38505))

(assert (=> start!40966 true))

(declare-fun array_inv!9808 (array!28233) Bool)

(assert (=> start!40966 (and (array_inv!9808 _values!549) e!266285)))

(declare-fun array_inv!9809 (array!28231) Bool)

(assert (=> start!40966 (array_inv!9809 _keys!709)))

(declare-fun mapIsEmpty!19987 () Bool)

(assert (=> mapIsEmpty!19987 mapRes!19987))

(declare-fun b!455530 () Bool)

(declare-fun res!271751 () Bool)

(assert (=> b!455530 (=> (not res!271751) (not e!266284))))

(declare-datatypes ((List!8170 0))(
  ( (Nil!8167) (Cons!8166 (h!9022 (_ BitVec 64)) (t!14006 List!8170)) )
))
(declare-fun arrayNoDuplicates!0 (array!28231 (_ BitVec 32) List!8170) Bool)

(assert (=> b!455530 (= res!271751 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8167))))

(declare-fun b!455531 () Bool)

(assert (=> b!455531 (= e!266286 false)))

(declare-fun minValue!515 () V!17413)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17413)

(declare-fun v!412 () V!17413)

(declare-datatypes ((tuple2!8064 0))(
  ( (tuple2!8065 (_1!4042 (_ BitVec 64)) (_2!4042 V!17413)) )
))
(declare-datatypes ((List!8171 0))(
  ( (Nil!8168) (Cons!8167 (h!9023 tuple2!8064) (t!14007 List!8171)) )
))
(declare-datatypes ((ListLongMap!6991 0))(
  ( (ListLongMap!6992 (toList!3511 List!8171)) )
))
(declare-fun lt!206353 () ListLongMap!6991)

(declare-fun getCurrentListMapNoExtraKeys!1687 (array!28231 array!28233 (_ BitVec 32) (_ BitVec 32) V!17413 V!17413 (_ BitVec 32) Int) ListLongMap!6991)

(assert (=> b!455531 (= lt!206353 (getCurrentListMapNoExtraKeys!1687 lt!206355 (array!28234 (store (arr!13557 _values!549) i!563 (ValueCellFull!5772 v!412)) (size!13909 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206354 () ListLongMap!6991)

(assert (=> b!455531 (= lt!206354 (getCurrentListMapNoExtraKeys!1687 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!455532 () Bool)

(declare-fun res!271749 () Bool)

(assert (=> b!455532 (=> (not res!271749) (not e!266284))))

(declare-fun arrayContainsKey!0 (array!28231 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!455532 (= res!271749 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!455533 () Bool)

(declare-fun res!271745 () Bool)

(assert (=> b!455533 (=> (not res!271745) (not e!266286))))

(assert (=> b!455533 (= res!271745 (bvsle from!863 i!563))))

(declare-fun b!455534 () Bool)

(declare-fun res!271748 () Bool)

(assert (=> b!455534 (=> (not res!271748) (not e!266284))))

(assert (=> b!455534 (= res!271748 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!455535 () Bool)

(declare-fun res!271754 () Bool)

(assert (=> b!455535 (=> (not res!271754) (not e!266284))))

(assert (=> b!455535 (= res!271754 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13908 _keys!709))))))

(declare-fun mapNonEmpty!19987 () Bool)

(declare-fun tp!38506 () Bool)

(assert (=> mapNonEmpty!19987 (= mapRes!19987 (and tp!38506 e!266288))))

(declare-fun mapKey!19987 () (_ BitVec 32))

(declare-fun mapValue!19987 () ValueCell!5772)

(declare-fun mapRest!19987 () (Array (_ BitVec 32) ValueCell!5772))

(assert (=> mapNonEmpty!19987 (= (arr!13557 _values!549) (store mapRest!19987 mapKey!19987 mapValue!19987))))

(declare-fun b!455536 () Bool)

(declare-fun res!271747 () Bool)

(assert (=> b!455536 (=> (not res!271747) (not e!266286))))

(assert (=> b!455536 (= res!271747 (arrayNoDuplicates!0 lt!206355 #b00000000000000000000000000000000 Nil!8167))))

(assert (= (and start!40966 res!271746) b!455528))

(assert (= (and b!455528 res!271743) b!455527))

(assert (= (and b!455527 res!271753) b!455534))

(assert (= (and b!455534 res!271748) b!455530))

(assert (= (and b!455530 res!271751) b!455535))

(assert (= (and b!455535 res!271754) b!455525))

(assert (= (and b!455525 res!271752) b!455522))

(assert (= (and b!455522 res!271750) b!455532))

(assert (= (and b!455532 res!271749) b!455523))

(assert (= (and b!455523 res!271744) b!455536))

(assert (= (and b!455536 res!271747) b!455533))

(assert (= (and b!455533 res!271745) b!455531))

(assert (= (and b!455526 condMapEmpty!19987) mapIsEmpty!19987))

(assert (= (and b!455526 (not condMapEmpty!19987)) mapNonEmpty!19987))

(get-info :version)

(assert (= (and mapNonEmpty!19987 ((_ is ValueCellFull!5772) mapValue!19987)) b!455529))

(assert (= (and b!455526 ((_ is ValueCellFull!5772) mapDefault!19987)) b!455524))

(assert (= start!40966 b!455526))

(declare-fun m!439251 () Bool)

(assert (=> b!455523 m!439251))

(declare-fun m!439253 () Bool)

(assert (=> b!455523 m!439253))

(declare-fun m!439255 () Bool)

(assert (=> b!455531 m!439255))

(declare-fun m!439257 () Bool)

(assert (=> b!455531 m!439257))

(declare-fun m!439259 () Bool)

(assert (=> b!455531 m!439259))

(declare-fun m!439261 () Bool)

(assert (=> b!455525 m!439261))

(declare-fun m!439263 () Bool)

(assert (=> b!455536 m!439263))

(declare-fun m!439265 () Bool)

(assert (=> b!455532 m!439265))

(declare-fun m!439267 () Bool)

(assert (=> mapNonEmpty!19987 m!439267))

(declare-fun m!439269 () Bool)

(assert (=> b!455522 m!439269))

(declare-fun m!439271 () Bool)

(assert (=> b!455530 m!439271))

(declare-fun m!439273 () Bool)

(assert (=> start!40966 m!439273))

(declare-fun m!439275 () Bool)

(assert (=> start!40966 m!439275))

(declare-fun m!439277 () Bool)

(assert (=> b!455528 m!439277))

(declare-fun m!439279 () Bool)

(assert (=> b!455534 m!439279))

(check-sat (not b!455530) (not mapNonEmpty!19987) (not b!455523) (not b!455531) tp_is_empty!12231 (not b!455525) (not start!40966) (not b!455534) (not b!455528) b_and!19053 (not b!455536) (not b!455532) (not b_next!10893))
(check-sat b_and!19053 (not b_next!10893))
