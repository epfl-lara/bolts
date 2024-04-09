; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40300 () Bool)

(assert start!40300)

(declare-fun b_free!10533 () Bool)

(declare-fun b_next!10533 () Bool)

(assert (=> start!40300 (= b_free!10533 (not b_next!10533))))

(declare-fun tp!37139 () Bool)

(declare-fun b_and!18535 () Bool)

(assert (=> start!40300 (= tp!37139 b_and!18535)))

(declare-fun b!442222 () Bool)

(declare-fun res!261986 () Bool)

(declare-fun e!260282 () Bool)

(assert (=> b!442222 (=> (not res!261986) (not e!260282))))

(declare-datatypes ((array!27169 0))(
  ( (array!27170 (arr!13030 (Array (_ BitVec 32) (_ BitVec 64))) (size!13382 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27169)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16693 0))(
  ( (V!16694 (val!5890 Int)) )
))
(declare-datatypes ((ValueCell!5502 0))(
  ( (ValueCellFull!5502 (v!8137 V!16693)) (EmptyCell!5502) )
))
(declare-datatypes ((array!27171 0))(
  ( (array!27172 (arr!13031 (Array (_ BitVec 32) ValueCell!5502)) (size!13383 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27171)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!442222 (= res!261986 (and (= (size!13383 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13382 _keys!709) (size!13383 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!442223 () Bool)

(declare-fun e!260283 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!442223 (= e!260283 (and (not (= from!863 i!563)) (bvsge from!863 i!563)))))

(declare-fun minValue!515 () V!16693)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!7760 0))(
  ( (tuple2!7761 (_1!3890 (_ BitVec 64)) (_2!3890 V!16693)) )
))
(declare-datatypes ((List!7802 0))(
  ( (Nil!7799) (Cons!7798 (h!8654 tuple2!7760) (t!13568 List!7802)) )
))
(declare-datatypes ((ListLongMap!6687 0))(
  ( (ListLongMap!6688 (toList!3359 List!7802)) )
))
(declare-fun lt!203157 () ListLongMap!6687)

(declare-fun zeroValue!515 () V!16693)

(declare-fun lt!203156 () array!27169)

(declare-fun v!412 () V!16693)

(declare-fun getCurrentListMapNoExtraKeys!1541 (array!27169 array!27171 (_ BitVec 32) (_ BitVec 32) V!16693 V!16693 (_ BitVec 32) Int) ListLongMap!6687)

(assert (=> b!442223 (= lt!203157 (getCurrentListMapNoExtraKeys!1541 lt!203156 (array!27172 (store (arr!13031 _values!549) i!563 (ValueCellFull!5502 v!412)) (size!13383 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!203155 () ListLongMap!6687)

(assert (=> b!442223 (= lt!203155 (getCurrentListMapNoExtraKeys!1541 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!19161 () Bool)

(declare-fun mapRes!19161 () Bool)

(declare-fun tp!37140 () Bool)

(declare-fun e!260281 () Bool)

(assert (=> mapNonEmpty!19161 (= mapRes!19161 (and tp!37140 e!260281))))

(declare-fun mapKey!19161 () (_ BitVec 32))

(declare-fun mapRest!19161 () (Array (_ BitVec 32) ValueCell!5502))

(declare-fun mapValue!19161 () ValueCell!5502)

(assert (=> mapNonEmpty!19161 (= (arr!13031 _values!549) (store mapRest!19161 mapKey!19161 mapValue!19161))))

(declare-fun b!442224 () Bool)

(declare-fun res!261990 () Bool)

(assert (=> b!442224 (=> (not res!261990) (not e!260283))))

(declare-datatypes ((List!7803 0))(
  ( (Nil!7800) (Cons!7799 (h!8655 (_ BitVec 64)) (t!13569 List!7803)) )
))
(declare-fun arrayNoDuplicates!0 (array!27169 (_ BitVec 32) List!7803) Bool)

(assert (=> b!442224 (= res!261990 (arrayNoDuplicates!0 lt!203156 #b00000000000000000000000000000000 Nil!7800))))

(declare-fun b!442225 () Bool)

(declare-fun res!261991 () Bool)

(assert (=> b!442225 (=> (not res!261991) (not e!260282))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!442225 (= res!261991 (validMask!0 mask!1025))))

(declare-fun b!442227 () Bool)

(declare-fun res!261993 () Bool)

(assert (=> b!442227 (=> (not res!261993) (not e!260282))))

(assert (=> b!442227 (= res!261993 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7800))))

(declare-fun b!442228 () Bool)

(declare-fun res!261987 () Bool)

(assert (=> b!442228 (=> (not res!261987) (not e!260282))))

(assert (=> b!442228 (= res!261987 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13382 _keys!709))))))

(declare-fun b!442229 () Bool)

(declare-fun res!261988 () Bool)

(assert (=> b!442229 (=> (not res!261988) (not e!260282))))

(assert (=> b!442229 (= res!261988 (or (= (select (arr!13030 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13030 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19161 () Bool)

(assert (=> mapIsEmpty!19161 mapRes!19161))

(declare-fun b!442230 () Bool)

(declare-fun e!260280 () Bool)

(declare-fun tp_is_empty!11691 () Bool)

(assert (=> b!442230 (= e!260280 tp_is_empty!11691)))

(declare-fun b!442231 () Bool)

(declare-fun res!261989 () Bool)

(assert (=> b!442231 (=> (not res!261989) (not e!260282))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!442231 (= res!261989 (validKeyInArray!0 k0!794))))

(declare-fun b!442232 () Bool)

(assert (=> b!442232 (= e!260282 e!260283)))

(declare-fun res!261985 () Bool)

(assert (=> b!442232 (=> (not res!261985) (not e!260283))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27169 (_ BitVec 32)) Bool)

(assert (=> b!442232 (= res!261985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203156 mask!1025))))

(assert (=> b!442232 (= lt!203156 (array!27170 (store (arr!13030 _keys!709) i!563 k0!794) (size!13382 _keys!709)))))

(declare-fun b!442226 () Bool)

(declare-fun res!261984 () Bool)

(assert (=> b!442226 (=> (not res!261984) (not e!260282))))

(assert (=> b!442226 (= res!261984 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!261992 () Bool)

(assert (=> start!40300 (=> (not res!261992) (not e!260282))))

(assert (=> start!40300 (= res!261992 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13382 _keys!709))))))

(assert (=> start!40300 e!260282))

(assert (=> start!40300 tp_is_empty!11691))

(assert (=> start!40300 tp!37139))

(assert (=> start!40300 true))

(declare-fun e!260285 () Bool)

(declare-fun array_inv!9448 (array!27171) Bool)

(assert (=> start!40300 (and (array_inv!9448 _values!549) e!260285)))

(declare-fun array_inv!9449 (array!27169) Bool)

(assert (=> start!40300 (array_inv!9449 _keys!709)))

(declare-fun b!442233 () Bool)

(assert (=> b!442233 (= e!260285 (and e!260280 mapRes!19161))))

(declare-fun condMapEmpty!19161 () Bool)

(declare-fun mapDefault!19161 () ValueCell!5502)

(assert (=> b!442233 (= condMapEmpty!19161 (= (arr!13031 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5502)) mapDefault!19161)))))

(declare-fun b!442234 () Bool)

(assert (=> b!442234 (= e!260281 tp_is_empty!11691)))

(declare-fun b!442235 () Bool)

(declare-fun res!261994 () Bool)

(assert (=> b!442235 (=> (not res!261994) (not e!260282))))

(declare-fun arrayContainsKey!0 (array!27169 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!442235 (= res!261994 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!442236 () Bool)

(declare-fun res!261995 () Bool)

(assert (=> b!442236 (=> (not res!261995) (not e!260283))))

(assert (=> b!442236 (= res!261995 (bvsle from!863 i!563))))

(assert (= (and start!40300 res!261992) b!442225))

(assert (= (and b!442225 res!261991) b!442222))

(assert (= (and b!442222 res!261986) b!442226))

(assert (= (and b!442226 res!261984) b!442227))

(assert (= (and b!442227 res!261993) b!442228))

(assert (= (and b!442228 res!261987) b!442231))

(assert (= (and b!442231 res!261989) b!442229))

(assert (= (and b!442229 res!261988) b!442235))

(assert (= (and b!442235 res!261994) b!442232))

(assert (= (and b!442232 res!261985) b!442224))

(assert (= (and b!442224 res!261990) b!442236))

(assert (= (and b!442236 res!261995) b!442223))

(assert (= (and b!442233 condMapEmpty!19161) mapIsEmpty!19161))

(assert (= (and b!442233 (not condMapEmpty!19161)) mapNonEmpty!19161))

(get-info :version)

(assert (= (and mapNonEmpty!19161 ((_ is ValueCellFull!5502) mapValue!19161)) b!442234))

(assert (= (and b!442233 ((_ is ValueCellFull!5502) mapDefault!19161)) b!442230))

(assert (= start!40300 b!442233))

(declare-fun m!428921 () Bool)

(assert (=> b!442226 m!428921))

(declare-fun m!428923 () Bool)

(assert (=> b!442231 m!428923))

(declare-fun m!428925 () Bool)

(assert (=> b!442232 m!428925))

(declare-fun m!428927 () Bool)

(assert (=> b!442232 m!428927))

(declare-fun m!428929 () Bool)

(assert (=> b!442225 m!428929))

(declare-fun m!428931 () Bool)

(assert (=> start!40300 m!428931))

(declare-fun m!428933 () Bool)

(assert (=> start!40300 m!428933))

(declare-fun m!428935 () Bool)

(assert (=> b!442224 m!428935))

(declare-fun m!428937 () Bool)

(assert (=> b!442229 m!428937))

(declare-fun m!428939 () Bool)

(assert (=> mapNonEmpty!19161 m!428939))

(declare-fun m!428941 () Bool)

(assert (=> b!442227 m!428941))

(declare-fun m!428943 () Bool)

(assert (=> b!442223 m!428943))

(declare-fun m!428945 () Bool)

(assert (=> b!442223 m!428945))

(declare-fun m!428947 () Bool)

(assert (=> b!442223 m!428947))

(declare-fun m!428949 () Bool)

(assert (=> b!442235 m!428949))

(check-sat (not b!442235) (not b!442227) (not b_next!10533) (not b!442223) b_and!18535 (not b!442224) (not b!442225) tp_is_empty!11691 (not b!442226) (not b!442232) (not mapNonEmpty!19161) (not start!40300) (not b!442231))
(check-sat b_and!18535 (not b_next!10533))
