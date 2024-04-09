; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113338 () Bool)

(assert start!113338)

(declare-fun b_free!31353 () Bool)

(declare-fun b_next!31353 () Bool)

(assert (=> start!113338 (= b_free!31353 (not b_next!31353))))

(declare-fun tp!109865 () Bool)

(declare-fun b_and!50585 () Bool)

(assert (=> start!113338 (= tp!109865 b_and!50585)))

(declare-fun res!891947 () Bool)

(declare-fun e!765098 () Bool)

(assert (=> start!113338 (=> (not res!891947) (not e!765098))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113338 (= res!891947 (validMask!0 mask!1977))))

(assert (=> start!113338 e!765098))

(declare-fun tp_is_empty!37353 () Bool)

(assert (=> start!113338 tp_is_empty!37353))

(assert (=> start!113338 true))

(declare-datatypes ((array!91503 0))(
  ( (array!91504 (arr!44203 (Array (_ BitVec 32) (_ BitVec 64))) (size!44754 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91503)

(declare-fun array_inv!33233 (array!91503) Bool)

(assert (=> start!113338 (array_inv!33233 _keys!1571)))

(declare-datatypes ((V!54907 0))(
  ( (V!54908 (val!18751 Int)) )
))
(declare-datatypes ((ValueCell!17778 0))(
  ( (ValueCellFull!17778 (v!21397 V!54907)) (EmptyCell!17778) )
))
(declare-datatypes ((array!91505 0))(
  ( (array!91506 (arr!44204 (Array (_ BitVec 32) ValueCell!17778)) (size!44755 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91505)

(declare-fun e!765099 () Bool)

(declare-fun array_inv!33234 (array!91505) Bool)

(assert (=> start!113338 (and (array_inv!33234 _values!1303) e!765099)))

(assert (=> start!113338 tp!109865))

(declare-fun b!1344226 () Bool)

(declare-fun e!765097 () Bool)

(declare-fun mapRes!57736 () Bool)

(assert (=> b!1344226 (= e!765099 (and e!765097 mapRes!57736))))

(declare-fun condMapEmpty!57736 () Bool)

(declare-fun mapDefault!57736 () ValueCell!17778)

(assert (=> b!1344226 (= condMapEmpty!57736 (= (arr!44204 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17778)) mapDefault!57736)))))

(declare-fun b!1344227 () Bool)

(declare-fun res!891946 () Bool)

(assert (=> b!1344227 (=> (not res!891946) (not e!765098))))

(declare-datatypes ((List!31481 0))(
  ( (Nil!31478) (Cons!31477 (h!32686 (_ BitVec 64)) (t!46012 List!31481)) )
))
(declare-fun arrayNoDuplicates!0 (array!91503 (_ BitVec 32) List!31481) Bool)

(assert (=> b!1344227 (= res!891946 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31478))))

(declare-fun mapNonEmpty!57736 () Bool)

(declare-fun tp!109864 () Bool)

(declare-fun e!765100 () Bool)

(assert (=> mapNonEmpty!57736 (= mapRes!57736 (and tp!109864 e!765100))))

(declare-fun mapKey!57736 () (_ BitVec 32))

(declare-fun mapRest!57736 () (Array (_ BitVec 32) ValueCell!17778))

(declare-fun mapValue!57736 () ValueCell!17778)

(assert (=> mapNonEmpty!57736 (= (arr!44204 _values!1303) (store mapRest!57736 mapKey!57736 mapValue!57736))))

(declare-fun b!1344228 () Bool)

(assert (=> b!1344228 (= e!765098 false)))

(declare-fun minValue!1245 () V!54907)

(declare-fun zeroValue!1245 () V!54907)

(declare-fun lt!595111 () Bool)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24308 0))(
  ( (tuple2!24309 (_1!12164 (_ BitVec 64)) (_2!12164 V!54907)) )
))
(declare-datatypes ((List!31482 0))(
  ( (Nil!31479) (Cons!31478 (h!32687 tuple2!24308) (t!46013 List!31482)) )
))
(declare-datatypes ((ListLongMap!21977 0))(
  ( (ListLongMap!21978 (toList!11004 List!31482)) )
))
(declare-fun contains!9116 (ListLongMap!21977 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5897 (array!91503 array!91505 (_ BitVec 32) (_ BitVec 32) V!54907 V!54907 (_ BitVec 32) Int) ListLongMap!21977)

(assert (=> b!1344228 (= lt!595111 (contains!9116 (getCurrentListMap!5897 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun mapIsEmpty!57736 () Bool)

(assert (=> mapIsEmpty!57736 mapRes!57736))

(declare-fun b!1344229 () Bool)

(assert (=> b!1344229 (= e!765100 tp_is_empty!37353)))

(declare-fun b!1344230 () Bool)

(declare-fun res!891948 () Bool)

(assert (=> b!1344230 (=> (not res!891948) (not e!765098))))

(assert (=> b!1344230 (= res!891948 (and (= (size!44755 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44754 _keys!1571) (size!44755 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1344231 () Bool)

(declare-fun res!891949 () Bool)

(assert (=> b!1344231 (=> (not res!891949) (not e!765098))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91503 (_ BitVec 32)) Bool)

(assert (=> b!1344231 (= res!891949 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1344232 () Bool)

(assert (=> b!1344232 (= e!765097 tp_is_empty!37353)))

(declare-fun b!1344233 () Bool)

(declare-fun res!891950 () Bool)

(assert (=> b!1344233 (=> (not res!891950) (not e!765098))))

(assert (=> b!1344233 (= res!891950 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44754 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!113338 res!891947) b!1344230))

(assert (= (and b!1344230 res!891948) b!1344231))

(assert (= (and b!1344231 res!891949) b!1344227))

(assert (= (and b!1344227 res!891946) b!1344233))

(assert (= (and b!1344233 res!891950) b!1344228))

(assert (= (and b!1344226 condMapEmpty!57736) mapIsEmpty!57736))

(assert (= (and b!1344226 (not condMapEmpty!57736)) mapNonEmpty!57736))

(get-info :version)

(assert (= (and mapNonEmpty!57736 ((_ is ValueCellFull!17778) mapValue!57736)) b!1344229))

(assert (= (and b!1344226 ((_ is ValueCellFull!17778) mapDefault!57736)) b!1344232))

(assert (= start!113338 b!1344226))

(declare-fun m!1231907 () Bool)

(assert (=> b!1344227 m!1231907))

(declare-fun m!1231909 () Bool)

(assert (=> b!1344231 m!1231909))

(declare-fun m!1231911 () Bool)

(assert (=> mapNonEmpty!57736 m!1231911))

(declare-fun m!1231913 () Bool)

(assert (=> b!1344228 m!1231913))

(assert (=> b!1344228 m!1231913))

(declare-fun m!1231915 () Bool)

(assert (=> b!1344228 m!1231915))

(declare-fun m!1231917 () Bool)

(assert (=> start!113338 m!1231917))

(declare-fun m!1231919 () Bool)

(assert (=> start!113338 m!1231919))

(declare-fun m!1231921 () Bool)

(assert (=> start!113338 m!1231921))

(check-sat (not b!1344231) (not mapNonEmpty!57736) (not b_next!31353) b_and!50585 (not start!113338) (not b!1344228) (not b!1344227) tp_is_empty!37353)
(check-sat b_and!50585 (not b_next!31353))
