; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108834 () Bool)

(assert start!108834)

(declare-fun b_free!28311 () Bool)

(declare-fun b_next!28311 () Bool)

(assert (=> start!108834 (= b_free!28311 (not b_next!28311))))

(declare-fun tp!100050 () Bool)

(declare-fun b_and!46387 () Bool)

(assert (=> start!108834 (= tp!100050 b_and!46387)))

(declare-fun b!1284666 () Bool)

(declare-fun res!853497 () Bool)

(declare-fun e!733870 () Bool)

(assert (=> b!1284666 (=> (not res!853497) (not e!733870))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!84917 0))(
  ( (array!84918 (arr!40956 (Array (_ BitVec 32) (_ BitVec 64))) (size!41507 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84917)

(assert (=> b!1284666 (= res!853497 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41507 _keys!1741))))))

(declare-fun res!853494 () Bool)

(assert (=> start!108834 (=> (not res!853494) (not e!733870))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108834 (= res!853494 (validMask!0 mask!2175))))

(assert (=> start!108834 e!733870))

(declare-fun tp_is_empty!33951 () Bool)

(assert (=> start!108834 tp_is_empty!33951))

(assert (=> start!108834 true))

(declare-datatypes ((V!50371 0))(
  ( (V!50372 (val!17050 Int)) )
))
(declare-datatypes ((ValueCell!16077 0))(
  ( (ValueCellFull!16077 (v!19650 V!50371)) (EmptyCell!16077) )
))
(declare-datatypes ((array!84919 0))(
  ( (array!84920 (arr!40957 (Array (_ BitVec 32) ValueCell!16077)) (size!41508 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84919)

(declare-fun e!733869 () Bool)

(declare-fun array_inv!31045 (array!84919) Bool)

(assert (=> start!108834 (and (array_inv!31045 _values!1445) e!733869)))

(declare-fun array_inv!31046 (array!84917) Bool)

(assert (=> start!108834 (array_inv!31046 _keys!1741)))

(assert (=> start!108834 tp!100050))

(declare-fun b!1284667 () Bool)

(declare-fun res!853495 () Bool)

(assert (=> b!1284667 (=> (not res!853495) (not e!733870))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1284667 (= res!853495 (and (= (size!41508 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41507 _keys!1741) (size!41508 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1284668 () Bool)

(assert (=> b!1284668 (= e!733870 false)))

(declare-fun minValue!1387 () V!50371)

(declare-fun zeroValue!1387 () V!50371)

(declare-fun lt!576789 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21982 0))(
  ( (tuple2!21983 (_1!11001 (_ BitVec 64)) (_2!11001 V!50371)) )
))
(declare-datatypes ((List!29194 0))(
  ( (Nil!29191) (Cons!29190 (h!30399 tuple2!21982) (t!42745 List!29194)) )
))
(declare-datatypes ((ListLongMap!19651 0))(
  ( (ListLongMap!19652 (toList!9841 List!29194)) )
))
(declare-fun contains!7896 (ListLongMap!19651 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4859 (array!84917 array!84919 (_ BitVec 32) (_ BitVec 32) V!50371 V!50371 (_ BitVec 32) Int) ListLongMap!19651)

(assert (=> b!1284668 (= lt!576789 (contains!7896 (getCurrentListMap!4859 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1284669 () Bool)

(declare-fun e!733867 () Bool)

(assert (=> b!1284669 (= e!733867 tp_is_empty!33951)))

(declare-fun b!1284670 () Bool)

(declare-fun res!853496 () Bool)

(assert (=> b!1284670 (=> (not res!853496) (not e!733870))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84917 (_ BitVec 32)) Bool)

(assert (=> b!1284670 (= res!853496 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!52484 () Bool)

(declare-fun mapRes!52484 () Bool)

(declare-fun tp!100049 () Bool)

(assert (=> mapNonEmpty!52484 (= mapRes!52484 (and tp!100049 e!733867))))

(declare-fun mapValue!52484 () ValueCell!16077)

(declare-fun mapRest!52484 () (Array (_ BitVec 32) ValueCell!16077))

(declare-fun mapKey!52484 () (_ BitVec 32))

(assert (=> mapNonEmpty!52484 (= (arr!40957 _values!1445) (store mapRest!52484 mapKey!52484 mapValue!52484))))

(declare-fun b!1284671 () Bool)

(declare-fun e!733866 () Bool)

(assert (=> b!1284671 (= e!733866 tp_is_empty!33951)))

(declare-fun b!1284672 () Bool)

(assert (=> b!1284672 (= e!733869 (and e!733866 mapRes!52484))))

(declare-fun condMapEmpty!52484 () Bool)

(declare-fun mapDefault!52484 () ValueCell!16077)

(assert (=> b!1284672 (= condMapEmpty!52484 (= (arr!40957 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16077)) mapDefault!52484)))))

(declare-fun b!1284673 () Bool)

(declare-fun res!853493 () Bool)

(assert (=> b!1284673 (=> (not res!853493) (not e!733870))))

(declare-datatypes ((List!29195 0))(
  ( (Nil!29192) (Cons!29191 (h!30400 (_ BitVec 64)) (t!42746 List!29195)) )
))
(declare-fun arrayNoDuplicates!0 (array!84917 (_ BitVec 32) List!29195) Bool)

(assert (=> b!1284673 (= res!853493 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29192))))

(declare-fun mapIsEmpty!52484 () Bool)

(assert (=> mapIsEmpty!52484 mapRes!52484))

(assert (= (and start!108834 res!853494) b!1284667))

(assert (= (and b!1284667 res!853495) b!1284670))

(assert (= (and b!1284670 res!853496) b!1284673))

(assert (= (and b!1284673 res!853493) b!1284666))

(assert (= (and b!1284666 res!853497) b!1284668))

(assert (= (and b!1284672 condMapEmpty!52484) mapIsEmpty!52484))

(assert (= (and b!1284672 (not condMapEmpty!52484)) mapNonEmpty!52484))

(get-info :version)

(assert (= (and mapNonEmpty!52484 ((_ is ValueCellFull!16077) mapValue!52484)) b!1284669))

(assert (= (and b!1284672 ((_ is ValueCellFull!16077) mapDefault!52484)) b!1284671))

(assert (= start!108834 b!1284672))

(declare-fun m!1178287 () Bool)

(assert (=> mapNonEmpty!52484 m!1178287))

(declare-fun m!1178289 () Bool)

(assert (=> b!1284673 m!1178289))

(declare-fun m!1178291 () Bool)

(assert (=> b!1284668 m!1178291))

(assert (=> b!1284668 m!1178291))

(declare-fun m!1178293 () Bool)

(assert (=> b!1284668 m!1178293))

(declare-fun m!1178295 () Bool)

(assert (=> start!108834 m!1178295))

(declare-fun m!1178297 () Bool)

(assert (=> start!108834 m!1178297))

(declare-fun m!1178299 () Bool)

(assert (=> start!108834 m!1178299))

(declare-fun m!1178301 () Bool)

(assert (=> b!1284670 m!1178301))

(check-sat tp_is_empty!33951 b_and!46387 (not start!108834) (not b_next!28311) (not b!1284673) (not b!1284670) (not mapNonEmpty!52484) (not b!1284668))
(check-sat b_and!46387 (not b_next!28311))
