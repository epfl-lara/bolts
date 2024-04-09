; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108720 () Bool)

(assert start!108720)

(declare-fun b_free!28197 () Bool)

(declare-fun b_next!28197 () Bool)

(assert (=> start!108720 (= b_free!28197 (not b_next!28197))))

(declare-fun tp!99707 () Bool)

(declare-fun b_and!46273 () Bool)

(assert (=> start!108720 (= tp!99707 b_and!46273)))

(declare-fun b!1282886 () Bool)

(declare-fun res!852234 () Bool)

(declare-fun e!733011 () Bool)

(assert (=> b!1282886 (=> (not res!852234) (not e!733011))))

(declare-datatypes ((array!84693 0))(
  ( (array!84694 (arr!40844 (Array (_ BitVec 32) (_ BitVec 64))) (size!41395 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84693)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1282886 (= res!852234 (validKeyInArray!0 (select (arr!40844 _keys!1741) from!2144)))))

(declare-fun b!1282887 () Bool)

(declare-fun res!852229 () Bool)

(assert (=> b!1282887 (=> (not res!852229) (not e!733011))))

(declare-datatypes ((V!50219 0))(
  ( (V!50220 (val!16993 Int)) )
))
(declare-fun minValue!1387 () V!50219)

(declare-fun zeroValue!1387 () V!50219)

(declare-datatypes ((ValueCell!16020 0))(
  ( (ValueCellFull!16020 (v!19593 V!50219)) (EmptyCell!16020) )
))
(declare-datatypes ((array!84695 0))(
  ( (array!84696 (arr!40845 (Array (_ BitVec 32) ValueCell!16020)) (size!41396 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84695)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21906 0))(
  ( (tuple2!21907 (_1!10963 (_ BitVec 64)) (_2!10963 V!50219)) )
))
(declare-datatypes ((List!29114 0))(
  ( (Nil!29111) (Cons!29110 (h!30319 tuple2!21906) (t!42665 List!29114)) )
))
(declare-datatypes ((ListLongMap!19575 0))(
  ( (ListLongMap!19576 (toList!9803 List!29114)) )
))
(declare-fun contains!7858 (ListLongMap!19575 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4822 (array!84693 array!84695 (_ BitVec 32) (_ BitVec 32) V!50219 V!50219 (_ BitVec 32) Int) ListLongMap!19575)

(assert (=> b!1282887 (= res!852229 (contains!7858 (getCurrentListMap!4822 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1282888 () Bool)

(declare-fun res!852233 () Bool)

(assert (=> b!1282888 (=> (not res!852233) (not e!733011))))

(assert (=> b!1282888 (= res!852233 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41395 _keys!1741))))))

(declare-fun b!1282889 () Bool)

(declare-fun e!733012 () Bool)

(declare-fun e!733015 () Bool)

(declare-fun mapRes!52313 () Bool)

(assert (=> b!1282889 (= e!733012 (and e!733015 mapRes!52313))))

(declare-fun condMapEmpty!52313 () Bool)

(declare-fun mapDefault!52313 () ValueCell!16020)

(assert (=> b!1282889 (= condMapEmpty!52313 (= (arr!40845 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16020)) mapDefault!52313)))))

(declare-fun res!852230 () Bool)

(assert (=> start!108720 (=> (not res!852230) (not e!733011))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108720 (= res!852230 (validMask!0 mask!2175))))

(assert (=> start!108720 e!733011))

(declare-fun tp_is_empty!33837 () Bool)

(assert (=> start!108720 tp_is_empty!33837))

(assert (=> start!108720 true))

(declare-fun array_inv!30965 (array!84695) Bool)

(assert (=> start!108720 (and (array_inv!30965 _values!1445) e!733012)))

(declare-fun array_inv!30966 (array!84693) Bool)

(assert (=> start!108720 (array_inv!30966 _keys!1741)))

(assert (=> start!108720 tp!99707))

(declare-fun b!1282890 () Bool)

(declare-fun res!852226 () Bool)

(assert (=> b!1282890 (=> (not res!852226) (not e!733011))))

(assert (=> b!1282890 (= res!852226 (and (= (size!41396 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41395 _keys!1741) (size!41396 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1282891 () Bool)

(declare-fun res!852232 () Bool)

(assert (=> b!1282891 (=> (not res!852232) (not e!733011))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84693 (_ BitVec 32)) Bool)

(assert (=> b!1282891 (= res!852232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1282892 () Bool)

(declare-fun res!852227 () Bool)

(assert (=> b!1282892 (=> (not res!852227) (not e!733011))))

(declare-datatypes ((List!29115 0))(
  ( (Nil!29112) (Cons!29111 (h!30320 (_ BitVec 64)) (t!42666 List!29115)) )
))
(declare-fun arrayNoDuplicates!0 (array!84693 (_ BitVec 32) List!29115) Bool)

(assert (=> b!1282892 (= res!852227 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29112))))

(declare-fun mapIsEmpty!52313 () Bool)

(assert (=> mapIsEmpty!52313 mapRes!52313))

(declare-fun b!1282893 () Bool)

(assert (=> b!1282893 (= e!733011 false)))

(declare-fun lt!576519 () Bool)

(declare-fun +!4251 (ListLongMap!19575 tuple2!21906) ListLongMap!19575)

(declare-fun getCurrentListMapNoExtraKeys!5962 (array!84693 array!84695 (_ BitVec 32) (_ BitVec 32) V!50219 V!50219 (_ BitVec 32) Int) ListLongMap!19575)

(assert (=> b!1282893 (= lt!576519 (contains!7858 (+!4251 (+!4251 (getCurrentListMapNoExtraKeys!5962 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21907 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (tuple2!21907 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun b!1282894 () Bool)

(declare-fun e!733013 () Bool)

(assert (=> b!1282894 (= e!733013 tp_is_empty!33837)))

(declare-fun b!1282895 () Bool)

(declare-fun res!852228 () Bool)

(assert (=> b!1282895 (=> (not res!852228) (not e!733011))))

(assert (=> b!1282895 (= res!852228 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41395 _keys!1741))))))

(declare-fun b!1282896 () Bool)

(declare-fun res!852231 () Bool)

(assert (=> b!1282896 (=> (not res!852231) (not e!733011))))

(assert (=> b!1282896 (= res!852231 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1282897 () Bool)

(assert (=> b!1282897 (= e!733015 tp_is_empty!33837)))

(declare-fun mapNonEmpty!52313 () Bool)

(declare-fun tp!99708 () Bool)

(assert (=> mapNonEmpty!52313 (= mapRes!52313 (and tp!99708 e!733013))))

(declare-fun mapRest!52313 () (Array (_ BitVec 32) ValueCell!16020))

(declare-fun mapKey!52313 () (_ BitVec 32))

(declare-fun mapValue!52313 () ValueCell!16020)

(assert (=> mapNonEmpty!52313 (= (arr!40845 _values!1445) (store mapRest!52313 mapKey!52313 mapValue!52313))))

(assert (= (and start!108720 res!852230) b!1282890))

(assert (= (and b!1282890 res!852226) b!1282891))

(assert (= (and b!1282891 res!852232) b!1282892))

(assert (= (and b!1282892 res!852227) b!1282895))

(assert (= (and b!1282895 res!852228) b!1282887))

(assert (= (and b!1282887 res!852229) b!1282888))

(assert (= (and b!1282888 res!852233) b!1282886))

(assert (= (and b!1282886 res!852234) b!1282896))

(assert (= (and b!1282896 res!852231) b!1282893))

(assert (= (and b!1282889 condMapEmpty!52313) mapIsEmpty!52313))

(assert (= (and b!1282889 (not condMapEmpty!52313)) mapNonEmpty!52313))

(get-info :version)

(assert (= (and mapNonEmpty!52313 ((_ is ValueCellFull!16020) mapValue!52313)) b!1282894))

(assert (= (and b!1282889 ((_ is ValueCellFull!16020) mapDefault!52313)) b!1282897))

(assert (= start!108720 b!1282889))

(declare-fun m!1176955 () Bool)

(assert (=> start!108720 m!1176955))

(declare-fun m!1176957 () Bool)

(assert (=> start!108720 m!1176957))

(declare-fun m!1176959 () Bool)

(assert (=> start!108720 m!1176959))

(declare-fun m!1176961 () Bool)

(assert (=> b!1282886 m!1176961))

(assert (=> b!1282886 m!1176961))

(declare-fun m!1176963 () Bool)

(assert (=> b!1282886 m!1176963))

(declare-fun m!1176965 () Bool)

(assert (=> b!1282893 m!1176965))

(assert (=> b!1282893 m!1176965))

(declare-fun m!1176967 () Bool)

(assert (=> b!1282893 m!1176967))

(assert (=> b!1282893 m!1176967))

(declare-fun m!1176969 () Bool)

(assert (=> b!1282893 m!1176969))

(assert (=> b!1282893 m!1176969))

(declare-fun m!1176971 () Bool)

(assert (=> b!1282893 m!1176971))

(declare-fun m!1176973 () Bool)

(assert (=> b!1282887 m!1176973))

(assert (=> b!1282887 m!1176973))

(declare-fun m!1176975 () Bool)

(assert (=> b!1282887 m!1176975))

(declare-fun m!1176977 () Bool)

(assert (=> b!1282892 m!1176977))

(declare-fun m!1176979 () Bool)

(assert (=> b!1282891 m!1176979))

(declare-fun m!1176981 () Bool)

(assert (=> mapNonEmpty!52313 m!1176981))

(check-sat (not b!1282893) (not b_next!28197) b_and!46273 (not mapNonEmpty!52313) (not b!1282892) (not b!1282886) tp_is_empty!33837 (not start!108720) (not b!1282891) (not b!1282887))
(check-sat b_and!46273 (not b_next!28197))
