; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113368 () Bool)

(assert start!113368)

(declare-fun b_free!31383 () Bool)

(declare-fun b_next!31383 () Bool)

(assert (=> start!113368 (= b_free!31383 (not b_next!31383))))

(declare-fun tp!109954 () Bool)

(declare-fun b_and!50629 () Bool)

(assert (=> start!113368 (= tp!109954 b_and!50629)))

(declare-fun b!1344729 () Bool)

(declare-fun res!892301 () Bool)

(declare-fun e!765328 () Bool)

(assert (=> b!1344729 (=> (not res!892301) (not e!765328))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((array!91563 0))(
  ( (array!91564 (arr!44233 (Array (_ BitVec 32) (_ BitVec 64))) (size!44784 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91563)

(assert (=> b!1344729 (= res!892301 (not (= (select (arr!44233 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1344730 () Bool)

(declare-fun res!892304 () Bool)

(assert (=> b!1344730 (=> (not res!892304) (not e!765328))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1344730 (= res!892304 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1344731 () Bool)

(declare-fun e!765329 () Bool)

(assert (=> b!1344731 (= e!765329 (not true))))

(declare-datatypes ((V!54947 0))(
  ( (V!54948 (val!18766 Int)) )
))
(declare-datatypes ((tuple2!24324 0))(
  ( (tuple2!24325 (_1!12172 (_ BitVec 64)) (_2!12172 V!54947)) )
))
(declare-datatypes ((List!31499 0))(
  ( (Nil!31496) (Cons!31495 (h!32704 tuple2!24324) (t!46046 List!31499)) )
))
(declare-datatypes ((ListLongMap!21993 0))(
  ( (ListLongMap!21994 (toList!11012 List!31499)) )
))
(declare-fun lt!595157 () ListLongMap!21993)

(declare-fun contains!9124 (ListLongMap!21993 (_ BitVec 64)) Bool)

(assert (=> b!1344731 (contains!9124 lt!595157 k0!1142)))

(declare-datatypes ((Unit!44045 0))(
  ( (Unit!44046) )
))
(declare-fun lt!595158 () Unit!44045)

(declare-fun lt!595159 () V!54947)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!382 ((_ BitVec 64) (_ BitVec 64) V!54947 ListLongMap!21993) Unit!44045)

(assert (=> b!1344731 (= lt!595158 (lemmaInListMapAfterAddingDiffThenInBefore!382 k0!1142 (select (arr!44233 _keys!1571) from!1960) lt!595159 lt!595157))))

(declare-fun b!1344732 () Bool)

(declare-fun res!892302 () Bool)

(assert (=> b!1344732 (=> (not res!892302) (not e!765328))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91563 (_ BitVec 32)) Bool)

(assert (=> b!1344732 (= res!892302 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1344733 () Bool)

(declare-fun e!765330 () Bool)

(declare-fun tp_is_empty!37383 () Bool)

(assert (=> b!1344733 (= e!765330 tp_is_empty!37383)))

(declare-fun mapIsEmpty!57781 () Bool)

(declare-fun mapRes!57781 () Bool)

(assert (=> mapIsEmpty!57781 mapRes!57781))

(declare-fun b!1344734 () Bool)

(declare-fun res!892300 () Bool)

(assert (=> b!1344734 (=> (not res!892300) (not e!765328))))

(assert (=> b!1344734 (= res!892300 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44784 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1344735 () Bool)

(declare-fun e!765332 () Bool)

(assert (=> b!1344735 (= e!765332 (and e!765330 mapRes!57781))))

(declare-fun condMapEmpty!57781 () Bool)

(declare-datatypes ((ValueCell!17793 0))(
  ( (ValueCellFull!17793 (v!21412 V!54947)) (EmptyCell!17793) )
))
(declare-datatypes ((array!91565 0))(
  ( (array!91566 (arr!44234 (Array (_ BitVec 32) ValueCell!17793)) (size!44785 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91565)

(declare-fun mapDefault!57781 () ValueCell!17793)

(assert (=> b!1344735 (= condMapEmpty!57781 (= (arr!44234 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17793)) mapDefault!57781)))))

(declare-fun b!1344736 () Bool)

(declare-fun e!765331 () Bool)

(assert (=> b!1344736 (= e!765331 tp_is_empty!37383)))

(declare-fun b!1344737 () Bool)

(declare-fun res!892306 () Bool)

(assert (=> b!1344737 (=> (not res!892306) (not e!765328))))

(declare-fun zeroValue!1245 () V!54947)

(declare-fun minValue!1245 () V!54947)

(declare-fun defaultEntry!1306 () Int)

(declare-fun getCurrentListMap!5905 (array!91563 array!91565 (_ BitVec 32) (_ BitVec 32) V!54947 V!54947 (_ BitVec 32) Int) ListLongMap!21993)

(assert (=> b!1344737 (= res!892306 (contains!9124 (getCurrentListMap!5905 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1344738 () Bool)

(declare-fun res!892305 () Bool)

(assert (=> b!1344738 (=> (not res!892305) (not e!765328))))

(assert (=> b!1344738 (= res!892305 (and (= (size!44785 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44784 _keys!1571) (size!44785 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1344739 () Bool)

(assert (=> b!1344739 (= e!765328 e!765329)))

(declare-fun res!892309 () Bool)

(assert (=> b!1344739 (=> (not res!892309) (not e!765329))))

(declare-fun +!4793 (ListLongMap!21993 tuple2!24324) ListLongMap!21993)

(assert (=> b!1344739 (= res!892309 (contains!9124 (+!4793 lt!595157 (tuple2!24325 (select (arr!44233 _keys!1571) from!1960) lt!595159)) k0!1142))))

(declare-fun getCurrentListMapNoExtraKeys!6516 (array!91563 array!91565 (_ BitVec 32) (_ BitVec 32) V!54947 V!54947 (_ BitVec 32) Int) ListLongMap!21993)

(assert (=> b!1344739 (= lt!595157 (getCurrentListMapNoExtraKeys!6516 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun get!22382 (ValueCell!17793 V!54947) V!54947)

(declare-fun dynLambda!3830 (Int (_ BitVec 64)) V!54947)

(assert (=> b!1344739 (= lt!595159 (get!22382 (select (arr!44234 _values!1303) from!1960) (dynLambda!3830 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1344740 () Bool)

(declare-fun res!892307 () Bool)

(assert (=> b!1344740 (=> (not res!892307) (not e!765328))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1344740 (= res!892307 (validKeyInArray!0 (select (arr!44233 _keys!1571) from!1960)))))

(declare-fun b!1344741 () Bool)

(declare-fun res!892308 () Bool)

(assert (=> b!1344741 (=> (not res!892308) (not e!765329))))

(assert (=> b!1344741 (= res!892308 (not (= k0!1142 (select (arr!44233 _keys!1571) from!1960))))))

(declare-fun res!892303 () Bool)

(assert (=> start!113368 (=> (not res!892303) (not e!765328))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113368 (= res!892303 (validMask!0 mask!1977))))

(assert (=> start!113368 e!765328))

(assert (=> start!113368 tp_is_empty!37383))

(assert (=> start!113368 true))

(declare-fun array_inv!33249 (array!91563) Bool)

(assert (=> start!113368 (array_inv!33249 _keys!1571)))

(declare-fun array_inv!33250 (array!91565) Bool)

(assert (=> start!113368 (and (array_inv!33250 _values!1303) e!765332)))

(assert (=> start!113368 tp!109954))

(declare-fun mapNonEmpty!57781 () Bool)

(declare-fun tp!109955 () Bool)

(assert (=> mapNonEmpty!57781 (= mapRes!57781 (and tp!109955 e!765331))))

(declare-fun mapKey!57781 () (_ BitVec 32))

(declare-fun mapValue!57781 () ValueCell!17793)

(declare-fun mapRest!57781 () (Array (_ BitVec 32) ValueCell!17793))

(assert (=> mapNonEmpty!57781 (= (arr!44234 _values!1303) (store mapRest!57781 mapKey!57781 mapValue!57781))))

(declare-fun b!1344742 () Bool)

(declare-fun res!892310 () Bool)

(assert (=> b!1344742 (=> (not res!892310) (not e!765328))))

(declare-datatypes ((List!31500 0))(
  ( (Nil!31497) (Cons!31496 (h!32705 (_ BitVec 64)) (t!46047 List!31500)) )
))
(declare-fun arrayNoDuplicates!0 (array!91563 (_ BitVec 32) List!31500) Bool)

(assert (=> b!1344742 (= res!892310 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31497))))

(assert (= (and start!113368 res!892303) b!1344738))

(assert (= (and b!1344738 res!892305) b!1344732))

(assert (= (and b!1344732 res!892302) b!1344742))

(assert (= (and b!1344742 res!892310) b!1344734))

(assert (= (and b!1344734 res!892300) b!1344737))

(assert (= (and b!1344737 res!892306) b!1344729))

(assert (= (and b!1344729 res!892301) b!1344740))

(assert (= (and b!1344740 res!892307) b!1344730))

(assert (= (and b!1344730 res!892304) b!1344739))

(assert (= (and b!1344739 res!892309) b!1344741))

(assert (= (and b!1344741 res!892308) b!1344731))

(assert (= (and b!1344735 condMapEmpty!57781) mapIsEmpty!57781))

(assert (= (and b!1344735 (not condMapEmpty!57781)) mapNonEmpty!57781))

(get-info :version)

(assert (= (and mapNonEmpty!57781 ((_ is ValueCellFull!17793) mapValue!57781)) b!1344736))

(assert (= (and b!1344735 ((_ is ValueCellFull!17793) mapDefault!57781)) b!1344733))

(assert (= start!113368 b!1344735))

(declare-fun b_lambda!24515 () Bool)

(assert (=> (not b_lambda!24515) (not b!1344739)))

(declare-fun t!46045 () Bool)

(declare-fun tb!12351 () Bool)

(assert (=> (and start!113368 (= defaultEntry!1306 defaultEntry!1306) t!46045) tb!12351))

(declare-fun result!25785 () Bool)

(assert (=> tb!12351 (= result!25785 tp_is_empty!37383)))

(assert (=> b!1344739 t!46045))

(declare-fun b_and!50631 () Bool)

(assert (= b_and!50629 (and (=> t!46045 result!25785) b_and!50631)))

(declare-fun m!1232275 () Bool)

(assert (=> b!1344742 m!1232275))

(declare-fun m!1232277 () Bool)

(assert (=> b!1344739 m!1232277))

(declare-fun m!1232279 () Bool)

(assert (=> b!1344739 m!1232279))

(declare-fun m!1232281 () Bool)

(assert (=> b!1344739 m!1232281))

(declare-fun m!1232283 () Bool)

(assert (=> b!1344739 m!1232283))

(assert (=> b!1344739 m!1232279))

(declare-fun m!1232285 () Bool)

(assert (=> b!1344739 m!1232285))

(declare-fun m!1232287 () Bool)

(assert (=> b!1344739 m!1232287))

(declare-fun m!1232289 () Bool)

(assert (=> b!1344739 m!1232289))

(assert (=> b!1344739 m!1232281))

(assert (=> b!1344739 m!1232285))

(declare-fun m!1232291 () Bool)

(assert (=> start!113368 m!1232291))

(declare-fun m!1232293 () Bool)

(assert (=> start!113368 m!1232293))

(declare-fun m!1232295 () Bool)

(assert (=> start!113368 m!1232295))

(declare-fun m!1232297 () Bool)

(assert (=> b!1344732 m!1232297))

(assert (=> b!1344729 m!1232289))

(declare-fun m!1232299 () Bool)

(assert (=> mapNonEmpty!57781 m!1232299))

(assert (=> b!1344741 m!1232289))

(assert (=> b!1344740 m!1232289))

(assert (=> b!1344740 m!1232289))

(declare-fun m!1232301 () Bool)

(assert (=> b!1344740 m!1232301))

(declare-fun m!1232303 () Bool)

(assert (=> b!1344737 m!1232303))

(assert (=> b!1344737 m!1232303))

(declare-fun m!1232305 () Bool)

(assert (=> b!1344737 m!1232305))

(declare-fun m!1232307 () Bool)

(assert (=> b!1344731 m!1232307))

(assert (=> b!1344731 m!1232289))

(assert (=> b!1344731 m!1232289))

(declare-fun m!1232309 () Bool)

(assert (=> b!1344731 m!1232309))

(check-sat (not start!113368) (not b!1344740) (not b_lambda!24515) (not b!1344739) (not b!1344731) tp_is_empty!37383 (not b_next!31383) b_and!50631 (not b!1344732) (not b!1344737) (not b!1344742) (not mapNonEmpty!57781))
(check-sat b_and!50631 (not b_next!31383))
