; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109278 () Bool)

(assert start!109278)

(declare-fun b_free!28731 () Bool)

(declare-fun b_next!28731 () Bool)

(assert (=> start!109278 (= b_free!28731 (not b_next!28731))))

(declare-fun tp!101312 () Bool)

(declare-fun b_and!46831 () Bool)

(assert (=> start!109278 (= tp!101312 b_and!46831)))

(declare-fun b!1292284 () Bool)

(declare-fun e!737634 () Bool)

(assert (=> b!1292284 (= e!737634 (not true))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((V!50931 0))(
  ( (V!50932 (val!17260 Int)) )
))
(declare-datatypes ((tuple2!22340 0))(
  ( (tuple2!22341 (_1!11180 (_ BitVec 64)) (_2!11180 V!50931)) )
))
(declare-datatypes ((List!29527 0))(
  ( (Nil!29524) (Cons!29523 (h!30732 tuple2!22340) (t!43098 List!29527)) )
))
(declare-datatypes ((ListLongMap!20009 0))(
  ( (ListLongMap!20010 (toList!10020 List!29527)) )
))
(declare-fun contains!8076 (ListLongMap!20009 (_ BitVec 64)) Bool)

(assert (=> b!1292284 (not (contains!8076 (ListLongMap!20010 Nil!29524) k0!1205))))

(declare-datatypes ((Unit!42721 0))(
  ( (Unit!42722) )
))
(declare-fun lt!579268 () Unit!42721)

(declare-fun emptyContainsNothing!117 ((_ BitVec 64)) Unit!42721)

(assert (=> b!1292284 (= lt!579268 (emptyContainsNothing!117 k0!1205))))

(declare-fun b!1292285 () Bool)

(declare-fun e!737631 () Bool)

(declare-fun tp_is_empty!34371 () Bool)

(assert (=> b!1292285 (= e!737631 tp_is_empty!34371)))

(declare-fun mapNonEmpty!53117 () Bool)

(declare-fun mapRes!53117 () Bool)

(declare-fun tp!101313 () Bool)

(declare-fun e!737632 () Bool)

(assert (=> mapNonEmpty!53117 (= mapRes!53117 (and tp!101313 e!737632))))

(declare-datatypes ((ValueCell!16287 0))(
  ( (ValueCellFull!16287 (v!19861 V!50931)) (EmptyCell!16287) )
))
(declare-fun mapRest!53117 () (Array (_ BitVec 32) ValueCell!16287))

(declare-datatypes ((array!85735 0))(
  ( (array!85736 (arr!41364 (Array (_ BitVec 32) ValueCell!16287)) (size!41915 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85735)

(declare-fun mapKey!53117 () (_ BitVec 32))

(declare-fun mapValue!53117 () ValueCell!16287)

(assert (=> mapNonEmpty!53117 (= (arr!41364 _values!1445) (store mapRest!53117 mapKey!53117 mapValue!53117))))

(declare-fun b!1292286 () Bool)

(declare-fun res!858736 () Bool)

(assert (=> b!1292286 (=> (not res!858736) (not e!737634))))

(declare-fun minValue!1387 () V!50931)

(declare-fun zeroValue!1387 () V!50931)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85737 0))(
  ( (array!85738 (arr!41365 (Array (_ BitVec 32) (_ BitVec 64))) (size!41916 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85737)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMap!5012 (array!85737 array!85735 (_ BitVec 32) (_ BitVec 32) V!50931 V!50931 (_ BitVec 32) Int) ListLongMap!20009)

(assert (=> b!1292286 (= res!858736 (contains!8076 (getCurrentListMap!5012 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1292287 () Bool)

(declare-fun res!858731 () Bool)

(assert (=> b!1292287 (=> (not res!858731) (not e!737634))))

(assert (=> b!1292287 (= res!858731 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41916 _keys!1741))))))

(declare-fun res!858735 () Bool)

(assert (=> start!109278 (=> (not res!858735) (not e!737634))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109278 (= res!858735 (validMask!0 mask!2175))))

(assert (=> start!109278 e!737634))

(assert (=> start!109278 tp_is_empty!34371))

(assert (=> start!109278 true))

(declare-fun e!737633 () Bool)

(declare-fun array_inv!31311 (array!85735) Bool)

(assert (=> start!109278 (and (array_inv!31311 _values!1445) e!737633)))

(declare-fun array_inv!31312 (array!85737) Bool)

(assert (=> start!109278 (array_inv!31312 _keys!1741)))

(assert (=> start!109278 tp!101312))

(declare-fun b!1292288 () Bool)

(declare-fun res!858732 () Bool)

(assert (=> b!1292288 (=> (not res!858732) (not e!737634))))

(assert (=> b!1292288 (= res!858732 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41916 _keys!1741))))))

(declare-fun b!1292289 () Bool)

(assert (=> b!1292289 (= e!737633 (and e!737631 mapRes!53117))))

(declare-fun condMapEmpty!53117 () Bool)

(declare-fun mapDefault!53117 () ValueCell!16287)

(assert (=> b!1292289 (= condMapEmpty!53117 (= (arr!41364 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16287)) mapDefault!53117)))))

(declare-fun b!1292290 () Bool)

(assert (=> b!1292290 (= e!737632 tp_is_empty!34371)))

(declare-fun b!1292291 () Bool)

(declare-fun res!858734 () Bool)

(assert (=> b!1292291 (=> (not res!858734) (not e!737634))))

(assert (=> b!1292291 (= res!858734 (and (= (size!41915 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41916 _keys!1741) (size!41915 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!53117 () Bool)

(assert (=> mapIsEmpty!53117 mapRes!53117))

(declare-fun b!1292292 () Bool)

(declare-fun res!858733 () Bool)

(assert (=> b!1292292 (=> (not res!858733) (not e!737634))))

(declare-datatypes ((List!29528 0))(
  ( (Nil!29525) (Cons!29524 (h!30733 (_ BitVec 64)) (t!43099 List!29528)) )
))
(declare-fun arrayNoDuplicates!0 (array!85737 (_ BitVec 32) List!29528) Bool)

(assert (=> b!1292292 (= res!858733 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29525))))

(declare-fun b!1292293 () Bool)

(declare-fun res!858737 () Bool)

(assert (=> b!1292293 (=> (not res!858737) (not e!737634))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85737 (_ BitVec 32)) Bool)

(assert (=> b!1292293 (= res!858737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1292294 () Bool)

(declare-fun res!858738 () Bool)

(assert (=> b!1292294 (=> (not res!858738) (not e!737634))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1292294 (= res!858738 (not (validKeyInArray!0 (select (arr!41365 _keys!1741) from!2144))))))

(assert (= (and start!109278 res!858735) b!1292291))

(assert (= (and b!1292291 res!858734) b!1292293))

(assert (= (and b!1292293 res!858737) b!1292292))

(assert (= (and b!1292292 res!858733) b!1292287))

(assert (= (and b!1292287 res!858731) b!1292286))

(assert (= (and b!1292286 res!858736) b!1292288))

(assert (= (and b!1292288 res!858732) b!1292294))

(assert (= (and b!1292294 res!858738) b!1292284))

(assert (= (and b!1292289 condMapEmpty!53117) mapIsEmpty!53117))

(assert (= (and b!1292289 (not condMapEmpty!53117)) mapNonEmpty!53117))

(get-info :version)

(assert (= (and mapNonEmpty!53117 ((_ is ValueCellFull!16287) mapValue!53117)) b!1292290))

(assert (= (and b!1292289 ((_ is ValueCellFull!16287) mapDefault!53117)) b!1292285))

(assert (= start!109278 b!1292289))

(declare-fun m!1184897 () Bool)

(assert (=> b!1292292 m!1184897))

(declare-fun m!1184899 () Bool)

(assert (=> b!1292284 m!1184899))

(declare-fun m!1184901 () Bool)

(assert (=> b!1292284 m!1184901))

(declare-fun m!1184903 () Bool)

(assert (=> b!1292293 m!1184903))

(declare-fun m!1184905 () Bool)

(assert (=> start!109278 m!1184905))

(declare-fun m!1184907 () Bool)

(assert (=> start!109278 m!1184907))

(declare-fun m!1184909 () Bool)

(assert (=> start!109278 m!1184909))

(declare-fun m!1184911 () Bool)

(assert (=> b!1292286 m!1184911))

(assert (=> b!1292286 m!1184911))

(declare-fun m!1184913 () Bool)

(assert (=> b!1292286 m!1184913))

(declare-fun m!1184915 () Bool)

(assert (=> b!1292294 m!1184915))

(assert (=> b!1292294 m!1184915))

(declare-fun m!1184917 () Bool)

(assert (=> b!1292294 m!1184917))

(declare-fun m!1184919 () Bool)

(assert (=> mapNonEmpty!53117 m!1184919))

(check-sat tp_is_empty!34371 (not start!109278) (not b!1292292) b_and!46831 (not b!1292294) (not mapNonEmpty!53117) (not b_next!28731) (not b!1292293) (not b!1292284) (not b!1292286))
(check-sat b_and!46831 (not b_next!28731))
