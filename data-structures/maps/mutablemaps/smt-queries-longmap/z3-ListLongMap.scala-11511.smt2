; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133984 () Bool)

(assert start!133984)

(declare-fun b_free!32175 () Bool)

(declare-fun b_next!32175 () Bool)

(assert (=> start!133984 (= b_free!32175 (not b_next!32175))))

(declare-fun tp!113827 () Bool)

(declare-fun b_and!51801 () Bool)

(assert (=> start!133984 (= tp!113827 b_and!51801)))

(declare-fun b!1565790 () Bool)

(declare-fun e!872770 () Bool)

(declare-fun tp_is_empty!38949 () Bool)

(assert (=> b!1565790 (= e!872770 tp_is_empty!38949)))

(declare-fun b!1565791 () Bool)

(declare-fun e!872773 () Bool)

(declare-fun mapRes!59815 () Bool)

(assert (=> b!1565791 (= e!872773 (and e!872770 mapRes!59815))))

(declare-fun condMapEmpty!59815 () Bool)

(declare-datatypes ((V!60139 0))(
  ( (V!60140 (val!19558 Int)) )
))
(declare-datatypes ((ValueCell!18444 0))(
  ( (ValueCellFull!18444 (v!22311 V!60139)) (EmptyCell!18444) )
))
(declare-datatypes ((array!104557 0))(
  ( (array!104558 (arr!50461 (Array (_ BitVec 32) ValueCell!18444)) (size!51012 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104557)

(declare-fun mapDefault!59815 () ValueCell!18444)

(assert (=> b!1565791 (= condMapEmpty!59815 (= (arr!50461 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18444)) mapDefault!59815)))))

(declare-fun res!1070414 () Bool)

(declare-fun e!872774 () Bool)

(assert (=> start!133984 (=> (not res!1070414) (not e!872774))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133984 (= res!1070414 (validMask!0 mask!947))))

(assert (=> start!133984 e!872774))

(assert (=> start!133984 tp!113827))

(assert (=> start!133984 tp_is_empty!38949))

(assert (=> start!133984 true))

(declare-datatypes ((array!104559 0))(
  ( (array!104560 (arr!50462 (Array (_ BitVec 32) (_ BitVec 64))) (size!51013 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104559)

(declare-fun array_inv!39127 (array!104559) Bool)

(assert (=> start!133984 (array_inv!39127 _keys!637)))

(declare-fun array_inv!39128 (array!104557) Bool)

(assert (=> start!133984 (and (array_inv!39128 _values!487) e!872773)))

(declare-fun b!1565792 () Bool)

(declare-fun e!872769 () Bool)

(assert (=> b!1565792 (= e!872774 (not e!872769))))

(declare-fun res!1070418 () Bool)

(assert (=> b!1565792 (=> res!1070418 e!872769)))

(declare-datatypes ((tuple2!25396 0))(
  ( (tuple2!25397 (_1!12708 (_ BitVec 64)) (_2!12708 V!60139)) )
))
(declare-datatypes ((List!36782 0))(
  ( (Nil!36779) (Cons!36778 (h!38225 tuple2!25396) (t!51678 List!36782)) )
))
(declare-datatypes ((ListLongMap!22843 0))(
  ( (ListLongMap!22844 (toList!11437 List!36782)) )
))
(declare-fun lt!672395 () ListLongMap!22843)

(declare-fun contains!10358 (ListLongMap!22843 (_ BitVec 64)) Bool)

(assert (=> b!1565792 (= res!1070418 (contains!10358 lt!672395 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1565792 (not (contains!10358 lt!672395 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!672393 () V!60139)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun lt!672394 () ListLongMap!22843)

(declare-fun +!5044 (ListLongMap!22843 tuple2!25396) ListLongMap!22843)

(assert (=> b!1565792 (= lt!672395 (+!5044 lt!672394 (tuple2!25397 (select (arr!50462 _keys!637) from!782) lt!672393)))))

(declare-datatypes ((Unit!51962 0))(
  ( (Unit!51963) )
))
(declare-fun lt!672392 () Unit!51962)

(declare-fun addStillNotContains!580 (ListLongMap!22843 (_ BitVec 64) V!60139 (_ BitVec 64)) Unit!51962)

(assert (=> b!1565792 (= lt!672392 (addStillNotContains!580 lt!672394 (select (arr!50462 _keys!637) from!782) lt!672393 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26380 (ValueCell!18444 V!60139) V!60139)

(declare-fun dynLambda!3933 (Int (_ BitVec 64)) V!60139)

(assert (=> b!1565792 (= lt!672393 (get!26380 (select (arr!50461 _values!487) from!782) (dynLambda!3933 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!60139)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!60139)

(declare-fun getCurrentListMapNoExtraKeys!6777 (array!104559 array!104557 (_ BitVec 32) (_ BitVec 32) V!60139 V!60139 (_ BitVec 32) Int) ListLongMap!22843)

(assert (=> b!1565792 (= lt!672394 (getCurrentListMapNoExtraKeys!6777 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1565793 () Bool)

(declare-fun e!872772 () Bool)

(assert (=> b!1565793 (= e!872772 tp_is_empty!38949)))

(declare-fun mapIsEmpty!59815 () Bool)

(assert (=> mapIsEmpty!59815 mapRes!59815))

(declare-fun mapNonEmpty!59815 () Bool)

(declare-fun tp!113828 () Bool)

(assert (=> mapNonEmpty!59815 (= mapRes!59815 (and tp!113828 e!872772))))

(declare-fun mapRest!59815 () (Array (_ BitVec 32) ValueCell!18444))

(declare-fun mapKey!59815 () (_ BitVec 32))

(declare-fun mapValue!59815 () ValueCell!18444)

(assert (=> mapNonEmpty!59815 (= (arr!50461 _values!487) (store mapRest!59815 mapKey!59815 mapValue!59815))))

(declare-fun b!1565794 () Bool)

(declare-fun res!1070421 () Bool)

(assert (=> b!1565794 (=> (not res!1070421) (not e!872774))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104559 (_ BitVec 32)) Bool)

(assert (=> b!1565794 (= res!1070421 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1565795 () Bool)

(declare-fun res!1070416 () Bool)

(assert (=> b!1565795 (=> (not res!1070416) (not e!872774))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1565795 (= res!1070416 (validKeyInArray!0 (select (arr!50462 _keys!637) from!782)))))

(declare-fun b!1565796 () Bool)

(declare-fun res!1070415 () Bool)

(assert (=> b!1565796 (=> res!1070415 e!872769)))

(assert (=> b!1565796 (= res!1070415 (not (contains!10358 lt!672395 (select (arr!50462 _keys!637) from!782))))))

(declare-fun b!1565797 () Bool)

(declare-fun res!1070417 () Bool)

(assert (=> b!1565797 (=> (not res!1070417) (not e!872774))))

(declare-datatypes ((List!36783 0))(
  ( (Nil!36780) (Cons!36779 (h!38226 (_ BitVec 64)) (t!51679 List!36783)) )
))
(declare-fun arrayNoDuplicates!0 (array!104559 (_ BitVec 32) List!36783) Bool)

(assert (=> b!1565797 (= res!1070417 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36780))))

(declare-fun b!1565798 () Bool)

(declare-fun res!1070419 () Bool)

(assert (=> b!1565798 (=> (not res!1070419) (not e!872774))))

(assert (=> b!1565798 (= res!1070419 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!51013 _keys!637)) (bvslt from!782 (size!51013 _keys!637))))))

(declare-fun b!1565799 () Bool)

(declare-fun res!1070420 () Bool)

(assert (=> b!1565799 (=> (not res!1070420) (not e!872774))))

(assert (=> b!1565799 (= res!1070420 (and (= (size!51012 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!51013 _keys!637) (size!51012 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1565800 () Bool)

(assert (=> b!1565800 (= e!872769 (bvslt from!782 (size!51012 _values!487)))))

(assert (= (and start!133984 res!1070414) b!1565799))

(assert (= (and b!1565799 res!1070420) b!1565794))

(assert (= (and b!1565794 res!1070421) b!1565797))

(assert (= (and b!1565797 res!1070417) b!1565798))

(assert (= (and b!1565798 res!1070419) b!1565795))

(assert (= (and b!1565795 res!1070416) b!1565792))

(assert (= (and b!1565792 (not res!1070418)) b!1565796))

(assert (= (and b!1565796 (not res!1070415)) b!1565800))

(assert (= (and b!1565791 condMapEmpty!59815) mapIsEmpty!59815))

(assert (= (and b!1565791 (not condMapEmpty!59815)) mapNonEmpty!59815))

(get-info :version)

(assert (= (and mapNonEmpty!59815 ((_ is ValueCellFull!18444) mapValue!59815)) b!1565793))

(assert (= (and b!1565791 ((_ is ValueCellFull!18444) mapDefault!59815)) b!1565790))

(assert (= start!133984 b!1565791))

(declare-fun b_lambda!24999 () Bool)

(assert (=> (not b_lambda!24999) (not b!1565792)))

(declare-fun t!51677 () Bool)

(declare-fun tb!12651 () Bool)

(assert (=> (and start!133984 (= defaultEntry!495 defaultEntry!495) t!51677) tb!12651))

(declare-fun result!26585 () Bool)

(assert (=> tb!12651 (= result!26585 tp_is_empty!38949)))

(assert (=> b!1565792 t!51677))

(declare-fun b_and!51803 () Bool)

(assert (= b_and!51801 (and (=> t!51677 result!26585) b_and!51803)))

(declare-fun m!1440765 () Bool)

(assert (=> b!1565794 m!1440765))

(declare-fun m!1440767 () Bool)

(assert (=> mapNonEmpty!59815 m!1440767))

(declare-fun m!1440769 () Bool)

(assert (=> b!1565792 m!1440769))

(declare-fun m!1440771 () Bool)

(assert (=> b!1565792 m!1440771))

(declare-fun m!1440773 () Bool)

(assert (=> b!1565792 m!1440773))

(assert (=> b!1565792 m!1440769))

(declare-fun m!1440775 () Bool)

(assert (=> b!1565792 m!1440775))

(declare-fun m!1440777 () Bool)

(assert (=> b!1565792 m!1440777))

(declare-fun m!1440779 () Bool)

(assert (=> b!1565792 m!1440779))

(assert (=> b!1565792 m!1440771))

(assert (=> b!1565792 m!1440777))

(declare-fun m!1440781 () Bool)

(assert (=> b!1565792 m!1440781))

(declare-fun m!1440783 () Bool)

(assert (=> b!1565792 m!1440783))

(declare-fun m!1440785 () Bool)

(assert (=> b!1565792 m!1440785))

(declare-fun m!1440787 () Bool)

(assert (=> start!133984 m!1440787))

(declare-fun m!1440789 () Bool)

(assert (=> start!133984 m!1440789))

(declare-fun m!1440791 () Bool)

(assert (=> start!133984 m!1440791))

(assert (=> b!1565796 m!1440777))

(assert (=> b!1565796 m!1440777))

(declare-fun m!1440793 () Bool)

(assert (=> b!1565796 m!1440793))

(declare-fun m!1440795 () Bool)

(assert (=> b!1565797 m!1440795))

(assert (=> b!1565795 m!1440777))

(assert (=> b!1565795 m!1440777))

(declare-fun m!1440797 () Bool)

(assert (=> b!1565795 m!1440797))

(check-sat (not start!133984) (not b!1565792) (not b_lambda!24999) tp_is_empty!38949 b_and!51803 (not b!1565795) (not mapNonEmpty!59815) (not b!1565794) (not b_next!32175) (not b!1565797) (not b!1565796))
(check-sat b_and!51803 (not b_next!32175))
