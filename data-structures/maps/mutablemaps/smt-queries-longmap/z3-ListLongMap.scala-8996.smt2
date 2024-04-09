; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108774 () Bool)

(assert start!108774)

(declare-fun b_free!28251 () Bool)

(declare-fun b_next!28251 () Bool)

(assert (=> start!108774 (= b_free!28251 (not b_next!28251))))

(declare-fun tp!99870 () Bool)

(declare-fun b_and!46327 () Bool)

(assert (=> start!108774 (= tp!99870 b_and!46327)))

(declare-fun b!1283858 () Bool)

(declare-fun res!852957 () Bool)

(declare-fun e!733417 () Bool)

(assert (=> b!1283858 (=> (not res!852957) (not e!733417))))

(declare-datatypes ((array!84799 0))(
  ( (array!84800 (arr!40897 (Array (_ BitVec 32) (_ BitVec 64))) (size!41448 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84799)

(declare-datatypes ((List!29151 0))(
  ( (Nil!29148) (Cons!29147 (h!30356 (_ BitVec 64)) (t!42702 List!29151)) )
))
(declare-fun arrayNoDuplicates!0 (array!84799 (_ BitVec 32) List!29151) Bool)

(assert (=> b!1283858 (= res!852957 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29148))))

(declare-fun b!1283859 () Bool)

(declare-fun res!852958 () Bool)

(assert (=> b!1283859 (=> (not res!852958) (not e!733417))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84799 (_ BitVec 32)) Bool)

(assert (=> b!1283859 (= res!852958 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!52394 () Bool)

(declare-fun mapRes!52394 () Bool)

(assert (=> mapIsEmpty!52394 mapRes!52394))

(declare-fun b!1283860 () Bool)

(declare-fun res!852961 () Bool)

(assert (=> b!1283860 (=> (not res!852961) (not e!733417))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1283860 (= res!852961 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41448 _keys!1741))))))

(declare-fun b!1283861 () Bool)

(declare-fun e!733418 () Bool)

(declare-fun tp_is_empty!33891 () Bool)

(assert (=> b!1283861 (= e!733418 tp_is_empty!33891)))

(declare-fun b!1283862 () Bool)

(declare-fun res!852960 () Bool)

(assert (=> b!1283862 (=> (not res!852960) (not e!733417))))

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1283862 (= res!852960 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41448 _keys!1741))))))

(declare-fun mapNonEmpty!52394 () Bool)

(declare-fun tp!99869 () Bool)

(assert (=> mapNonEmpty!52394 (= mapRes!52394 (and tp!99869 e!733418))))

(declare-datatypes ((V!50291 0))(
  ( (V!50292 (val!17020 Int)) )
))
(declare-datatypes ((ValueCell!16047 0))(
  ( (ValueCellFull!16047 (v!19620 V!50291)) (EmptyCell!16047) )
))
(declare-fun mapRest!52394 () (Array (_ BitVec 32) ValueCell!16047))

(declare-fun mapKey!52394 () (_ BitVec 32))

(declare-fun mapValue!52394 () ValueCell!16047)

(declare-datatypes ((array!84801 0))(
  ( (array!84802 (arr!40898 (Array (_ BitVec 32) ValueCell!16047)) (size!41449 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84801)

(assert (=> mapNonEmpty!52394 (= (arr!40898 _values!1445) (store mapRest!52394 mapKey!52394 mapValue!52394))))

(declare-fun b!1283863 () Bool)

(declare-fun res!852959 () Bool)

(assert (=> b!1283863 (=> (not res!852959) (not e!733417))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1283863 (= res!852959 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!852962 () Bool)

(assert (=> start!108774 (=> (not res!852962) (not e!733417))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108774 (= res!852962 (validMask!0 mask!2175))))

(assert (=> start!108774 e!733417))

(assert (=> start!108774 tp_is_empty!33891))

(assert (=> start!108774 true))

(declare-fun e!733419 () Bool)

(declare-fun array_inv!31003 (array!84801) Bool)

(assert (=> start!108774 (and (array_inv!31003 _values!1445) e!733419)))

(declare-fun array_inv!31004 (array!84799) Bool)

(assert (=> start!108774 (array_inv!31004 _keys!1741)))

(assert (=> start!108774 tp!99870))

(declare-fun b!1283864 () Bool)

(assert (=> b!1283864 (= e!733417 (not (bvsle from!2144 (size!41448 _keys!1741))))))

(declare-datatypes ((tuple2!21944 0))(
  ( (tuple2!21945 (_1!10982 (_ BitVec 64)) (_2!10982 V!50291)) )
))
(declare-datatypes ((List!29152 0))(
  ( (Nil!29149) (Cons!29148 (h!30357 tuple2!21944) (t!42703 List!29152)) )
))
(declare-datatypes ((ListLongMap!19613 0))(
  ( (ListLongMap!19614 (toList!9822 List!29152)) )
))
(declare-fun lt!576678 () ListLongMap!19613)

(declare-fun contains!7877 (ListLongMap!19613 (_ BitVec 64)) Bool)

(assert (=> b!1283864 (contains!7877 lt!576678 k0!1205)))

(declare-fun minValue!1387 () V!50291)

(declare-datatypes ((Unit!42433 0))(
  ( (Unit!42434) )
))
(declare-fun lt!576677 () Unit!42433)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!18 ((_ BitVec 64) (_ BitVec 64) V!50291 ListLongMap!19613) Unit!42433)

(assert (=> b!1283864 (= lt!576677 (lemmaInListMapAfterAddingDiffThenInBefore!18 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!576678))))

(declare-fun zeroValue!1387 () V!50291)

(declare-fun defaultEntry!1448 () Int)

(declare-fun +!4269 (ListLongMap!19613 tuple2!21944) ListLongMap!19613)

(declare-fun getCurrentListMapNoExtraKeys!5980 (array!84799 array!84801 (_ BitVec 32) (_ BitVec 32) V!50291 V!50291 (_ BitVec 32) Int) ListLongMap!19613)

(assert (=> b!1283864 (= lt!576678 (+!4269 (getCurrentListMapNoExtraKeys!5980 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21945 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun b!1283865 () Bool)

(declare-fun res!852963 () Bool)

(assert (=> b!1283865 (=> (not res!852963) (not e!733417))))

(declare-fun getCurrentListMap!4840 (array!84799 array!84801 (_ BitVec 32) (_ BitVec 32) V!50291 V!50291 (_ BitVec 32) Int) ListLongMap!19613)

(assert (=> b!1283865 (= res!852963 (contains!7877 (getCurrentListMap!4840 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1283866 () Bool)

(declare-fun e!733416 () Bool)

(assert (=> b!1283866 (= e!733416 tp_is_empty!33891)))

(declare-fun b!1283867 () Bool)

(declare-fun res!852956 () Bool)

(assert (=> b!1283867 (=> (not res!852956) (not e!733417))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1283867 (= res!852956 (validKeyInArray!0 (select (arr!40897 _keys!1741) from!2144)))))

(declare-fun b!1283868 () Bool)

(assert (=> b!1283868 (= e!733419 (and e!733416 mapRes!52394))))

(declare-fun condMapEmpty!52394 () Bool)

(declare-fun mapDefault!52394 () ValueCell!16047)

(assert (=> b!1283868 (= condMapEmpty!52394 (= (arr!40898 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16047)) mapDefault!52394)))))

(declare-fun b!1283869 () Bool)

(declare-fun res!852955 () Bool)

(assert (=> b!1283869 (=> (not res!852955) (not e!733417))))

(assert (=> b!1283869 (= res!852955 (and (= (size!41449 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41448 _keys!1741) (size!41449 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(assert (= (and start!108774 res!852962) b!1283869))

(assert (= (and b!1283869 res!852955) b!1283859))

(assert (= (and b!1283859 res!852958) b!1283858))

(assert (= (and b!1283858 res!852957) b!1283860))

(assert (= (and b!1283860 res!852961) b!1283865))

(assert (= (and b!1283865 res!852963) b!1283862))

(assert (= (and b!1283862 res!852960) b!1283867))

(assert (= (and b!1283867 res!852956) b!1283863))

(assert (= (and b!1283863 res!852959) b!1283864))

(assert (= (and b!1283868 condMapEmpty!52394) mapIsEmpty!52394))

(assert (= (and b!1283868 (not condMapEmpty!52394)) mapNonEmpty!52394))

(get-info :version)

(assert (= (and mapNonEmpty!52394 ((_ is ValueCellFull!16047) mapValue!52394)) b!1283861))

(assert (= (and b!1283868 ((_ is ValueCellFull!16047) mapDefault!52394)) b!1283866))

(assert (= start!108774 b!1283868))

(declare-fun m!1177711 () Bool)

(assert (=> mapNonEmpty!52394 m!1177711))

(declare-fun m!1177713 () Bool)

(assert (=> b!1283864 m!1177713))

(declare-fun m!1177715 () Bool)

(assert (=> b!1283864 m!1177715))

(declare-fun m!1177717 () Bool)

(assert (=> b!1283864 m!1177717))

(assert (=> b!1283864 m!1177717))

(declare-fun m!1177719 () Bool)

(assert (=> b!1283864 m!1177719))

(declare-fun m!1177721 () Bool)

(assert (=> start!108774 m!1177721))

(declare-fun m!1177723 () Bool)

(assert (=> start!108774 m!1177723))

(declare-fun m!1177725 () Bool)

(assert (=> start!108774 m!1177725))

(declare-fun m!1177727 () Bool)

(assert (=> b!1283859 m!1177727))

(declare-fun m!1177729 () Bool)

(assert (=> b!1283858 m!1177729))

(declare-fun m!1177731 () Bool)

(assert (=> b!1283865 m!1177731))

(assert (=> b!1283865 m!1177731))

(declare-fun m!1177733 () Bool)

(assert (=> b!1283865 m!1177733))

(declare-fun m!1177735 () Bool)

(assert (=> b!1283867 m!1177735))

(assert (=> b!1283867 m!1177735))

(declare-fun m!1177737 () Bool)

(assert (=> b!1283867 m!1177737))

(check-sat tp_is_empty!33891 (not b_next!28251) (not b!1283864) (not mapNonEmpty!52394) (not b!1283859) (not b!1283865) (not start!108774) (not b!1283858) (not b!1283867) b_and!46327)
(check-sat b_and!46327 (not b_next!28251))
