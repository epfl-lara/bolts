; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109164 () Bool)

(assert start!109164)

(declare-fun b_free!28617 () Bool)

(declare-fun b_next!28617 () Bool)

(assert (=> start!109164 (= b_free!28617 (not b_next!28617))))

(declare-fun tp!100971 () Bool)

(declare-fun b_and!46717 () Bool)

(assert (=> start!109164 (= tp!100971 b_and!46717)))

(declare-fun b!1290291 () Bool)

(declare-fun res!857254 () Bool)

(declare-fun e!736668 () Bool)

(assert (=> b!1290291 (=> (not res!857254) (not e!736668))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85513 0))(
  ( (array!85514 (arr!41253 (Array (_ BitVec 32) (_ BitVec 64))) (size!41804 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85513)

(declare-datatypes ((V!50779 0))(
  ( (V!50780 (val!17203 Int)) )
))
(declare-datatypes ((ValueCell!16230 0))(
  ( (ValueCellFull!16230 (v!19804 V!50779)) (EmptyCell!16230) )
))
(declare-datatypes ((array!85515 0))(
  ( (array!85516 (arr!41254 (Array (_ BitVec 32) ValueCell!16230)) (size!41805 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85515)

(assert (=> b!1290291 (= res!857254 (and (= (size!41805 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41804 _keys!1741) (size!41805 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1290292 () Bool)

(declare-fun res!857258 () Bool)

(assert (=> b!1290292 (=> (not res!857258) (not e!736668))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85513 (_ BitVec 32)) Bool)

(assert (=> b!1290292 (= res!857258 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1290293 () Bool)

(declare-fun res!857251 () Bool)

(assert (=> b!1290293 (=> (not res!857251) (not e!736668))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1290293 (= res!857251 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41804 _keys!1741))))))

(declare-fun b!1290294 () Bool)

(declare-fun res!857252 () Bool)

(assert (=> b!1290294 (=> (not res!857252) (not e!736668))))

(declare-fun minValue!1387 () V!50779)

(declare-fun zeroValue!1387 () V!50779)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22242 0))(
  ( (tuple2!22243 (_1!11131 (_ BitVec 64)) (_2!11131 V!50779)) )
))
(declare-datatypes ((List!29439 0))(
  ( (Nil!29436) (Cons!29435 (h!30644 tuple2!22242) (t!43010 List!29439)) )
))
(declare-datatypes ((ListLongMap!19911 0))(
  ( (ListLongMap!19912 (toList!9971 List!29439)) )
))
(declare-fun contains!8027 (ListLongMap!19911 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4972 (array!85513 array!85515 (_ BitVec 32) (_ BitVec 32) V!50779 V!50779 (_ BitVec 32) Int) ListLongMap!19911)

(assert (=> b!1290294 (= res!857252 (contains!8027 (getCurrentListMap!4972 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1290295 () Bool)

(declare-fun e!736666 () Bool)

(declare-fun tp_is_empty!34257 () Bool)

(assert (=> b!1290295 (= e!736666 tp_is_empty!34257)))

(declare-fun b!1290296 () Bool)

(declare-fun e!736665 () Bool)

(assert (=> b!1290296 (= e!736665 tp_is_empty!34257)))

(declare-fun res!857255 () Bool)

(assert (=> start!109164 (=> (not res!857255) (not e!736668))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109164 (= res!857255 (validMask!0 mask!2175))))

(assert (=> start!109164 e!736668))

(assert (=> start!109164 tp_is_empty!34257))

(assert (=> start!109164 true))

(declare-fun e!736667 () Bool)

(declare-fun array_inv!31241 (array!85515) Bool)

(assert (=> start!109164 (and (array_inv!31241 _values!1445) e!736667)))

(declare-fun array_inv!31242 (array!85513) Bool)

(assert (=> start!109164 (array_inv!31242 _keys!1741)))

(assert (=> start!109164 tp!100971))

(declare-fun mapIsEmpty!52946 () Bool)

(declare-fun mapRes!52946 () Bool)

(assert (=> mapIsEmpty!52946 mapRes!52946))

(declare-fun b!1290297 () Bool)

(declare-fun res!857253 () Bool)

(assert (=> b!1290297 (=> (not res!857253) (not e!736668))))

(assert (=> b!1290297 (= res!857253 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41804 _keys!1741))))))

(declare-fun b!1290298 () Bool)

(declare-fun res!857257 () Bool)

(assert (=> b!1290298 (=> (not res!857257) (not e!736668))))

(declare-datatypes ((List!29440 0))(
  ( (Nil!29437) (Cons!29436 (h!30645 (_ BitVec 64)) (t!43011 List!29440)) )
))
(declare-fun arrayNoDuplicates!0 (array!85513 (_ BitVec 32) List!29440) Bool)

(assert (=> b!1290298 (= res!857257 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29437))))

(declare-fun b!1290299 () Bool)

(declare-fun e!736669 () Bool)

(assert (=> b!1290299 (= e!736668 (not e!736669))))

(declare-fun res!857256 () Bool)

(assert (=> b!1290299 (=> res!857256 e!736669)))

(assert (=> b!1290299 (= res!857256 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1290299 (not (contains!8027 (ListLongMap!19912 Nil!29436) k0!1205))))

(declare-datatypes ((Unit!42631 0))(
  ( (Unit!42632) )
))
(declare-fun lt!578529 () Unit!42631)

(declare-fun emptyContainsNothing!76 ((_ BitVec 64)) Unit!42631)

(assert (=> b!1290299 (= lt!578529 (emptyContainsNothing!76 k0!1205))))

(declare-fun b!1290300 () Bool)

(assert (=> b!1290300 (= e!736669 true)))

(declare-fun lt!578526 () Bool)

(declare-fun lt!578528 () tuple2!22242)

(declare-fun lt!578524 () ListLongMap!19911)

(declare-fun +!4340 (ListLongMap!19911 tuple2!22242) ListLongMap!19911)

(assert (=> b!1290300 (= lt!578526 (contains!8027 (+!4340 lt!578524 lt!578528) k0!1205))))

(declare-fun lt!578530 () ListLongMap!19911)

(assert (=> b!1290300 (not (contains!8027 (+!4340 lt!578530 lt!578528) k0!1205))))

(assert (=> b!1290300 (= lt!578528 (tuple2!22243 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))

(declare-fun lt!578525 () Unit!42631)

(declare-fun addStillNotContains!385 (ListLongMap!19911 (_ BitVec 64) V!50779 (_ BitVec 64)) Unit!42631)

(assert (=> b!1290300 (= lt!578525 (addStillNotContains!385 lt!578530 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(assert (=> b!1290300 (not (contains!8027 lt!578524 k0!1205))))

(assert (=> b!1290300 (= lt!578524 (+!4340 lt!578530 (tuple2!22243 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!578527 () Unit!42631)

(assert (=> b!1290300 (= lt!578527 (addStillNotContains!385 lt!578530 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6052 (array!85513 array!85515 (_ BitVec 32) (_ BitVec 32) V!50779 V!50779 (_ BitVec 32) Int) ListLongMap!19911)

(assert (=> b!1290300 (= lt!578530 (getCurrentListMapNoExtraKeys!6052 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1290301 () Bool)

(declare-fun res!857259 () Bool)

(assert (=> b!1290301 (=> (not res!857259) (not e!736668))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1290301 (= res!857259 (not (validKeyInArray!0 (select (arr!41253 _keys!1741) from!2144))))))

(declare-fun mapNonEmpty!52946 () Bool)

(declare-fun tp!100970 () Bool)

(assert (=> mapNonEmpty!52946 (= mapRes!52946 (and tp!100970 e!736665))))

(declare-fun mapValue!52946 () ValueCell!16230)

(declare-fun mapKey!52946 () (_ BitVec 32))

(declare-fun mapRest!52946 () (Array (_ BitVec 32) ValueCell!16230))

(assert (=> mapNonEmpty!52946 (= (arr!41254 _values!1445) (store mapRest!52946 mapKey!52946 mapValue!52946))))

(declare-fun b!1290302 () Bool)

(assert (=> b!1290302 (= e!736667 (and e!736666 mapRes!52946))))

(declare-fun condMapEmpty!52946 () Bool)

(declare-fun mapDefault!52946 () ValueCell!16230)

(assert (=> b!1290302 (= condMapEmpty!52946 (= (arr!41254 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16230)) mapDefault!52946)))))

(assert (= (and start!109164 res!857255) b!1290291))

(assert (= (and b!1290291 res!857254) b!1290292))

(assert (= (and b!1290292 res!857258) b!1290298))

(assert (= (and b!1290298 res!857257) b!1290293))

(assert (= (and b!1290293 res!857251) b!1290294))

(assert (= (and b!1290294 res!857252) b!1290297))

(assert (= (and b!1290297 res!857253) b!1290301))

(assert (= (and b!1290301 res!857259) b!1290299))

(assert (= (and b!1290299 (not res!857256)) b!1290300))

(assert (= (and b!1290302 condMapEmpty!52946) mapIsEmpty!52946))

(assert (= (and b!1290302 (not condMapEmpty!52946)) mapNonEmpty!52946))

(get-info :version)

(assert (= (and mapNonEmpty!52946 ((_ is ValueCellFull!16230) mapValue!52946)) b!1290296))

(assert (= (and b!1290302 ((_ is ValueCellFull!16230) mapDefault!52946)) b!1290295))

(assert (= start!109164 b!1290302))

(declare-fun m!1182911 () Bool)

(assert (=> b!1290300 m!1182911))

(declare-fun m!1182913 () Bool)

(assert (=> b!1290300 m!1182913))

(declare-fun m!1182915 () Bool)

(assert (=> b!1290300 m!1182915))

(declare-fun m!1182917 () Bool)

(assert (=> b!1290300 m!1182917))

(declare-fun m!1182919 () Bool)

(assert (=> b!1290300 m!1182919))

(declare-fun m!1182921 () Bool)

(assert (=> b!1290300 m!1182921))

(assert (=> b!1290300 m!1182915))

(declare-fun m!1182923 () Bool)

(assert (=> b!1290300 m!1182923))

(assert (=> b!1290300 m!1182911))

(declare-fun m!1182925 () Bool)

(assert (=> b!1290300 m!1182925))

(declare-fun m!1182927 () Bool)

(assert (=> b!1290300 m!1182927))

(declare-fun m!1182929 () Bool)

(assert (=> b!1290292 m!1182929))

(declare-fun m!1182931 () Bool)

(assert (=> b!1290294 m!1182931))

(assert (=> b!1290294 m!1182931))

(declare-fun m!1182933 () Bool)

(assert (=> b!1290294 m!1182933))

(declare-fun m!1182935 () Bool)

(assert (=> b!1290301 m!1182935))

(assert (=> b!1290301 m!1182935))

(declare-fun m!1182937 () Bool)

(assert (=> b!1290301 m!1182937))

(declare-fun m!1182939 () Bool)

(assert (=> mapNonEmpty!52946 m!1182939))

(declare-fun m!1182941 () Bool)

(assert (=> b!1290298 m!1182941))

(declare-fun m!1182943 () Bool)

(assert (=> start!109164 m!1182943))

(declare-fun m!1182945 () Bool)

(assert (=> start!109164 m!1182945))

(declare-fun m!1182947 () Bool)

(assert (=> start!109164 m!1182947))

(declare-fun m!1182949 () Bool)

(assert (=> b!1290299 m!1182949))

(declare-fun m!1182951 () Bool)

(assert (=> b!1290299 m!1182951))

(check-sat (not b!1290298) (not b!1290292) (not start!109164) (not b!1290301) (not mapNonEmpty!52946) (not b!1290300) (not b!1290299) b_and!46717 (not b!1290294) (not b_next!28617) tp_is_empty!34257)
(check-sat b_and!46717 (not b_next!28617))
