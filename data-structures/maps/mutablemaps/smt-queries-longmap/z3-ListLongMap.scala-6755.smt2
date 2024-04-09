; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84764 () Bool)

(assert start!84764)

(declare-fun b_free!20091 () Bool)

(declare-fun b_next!20091 () Bool)

(assert (=> start!84764 (= b_free!20091 (not b_next!20091))))

(declare-fun tp!70072 () Bool)

(declare-fun b_and!32279 () Bool)

(assert (=> start!84764 (= tp!70072 b_and!32279)))

(declare-fun b!990768 () Bool)

(declare-fun res!662517 () Bool)

(declare-fun e!558719 () Bool)

(assert (=> b!990768 (=> (not res!662517) (not e!558719))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!62565 0))(
  ( (array!62566 (arr!30129 (Array (_ BitVec 32) (_ BitVec 64))) (size!30609 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62565)

(declare-datatypes ((V!36059 0))(
  ( (V!36060 (val!11704 Int)) )
))
(declare-datatypes ((ValueCell!11172 0))(
  ( (ValueCellFull!11172 (v!14277 V!36059)) (EmptyCell!11172) )
))
(declare-datatypes ((array!62567 0))(
  ( (array!62568 (arr!30130 (Array (_ BitVec 32) ValueCell!11172)) (size!30610 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62567)

(assert (=> b!990768 (= res!662517 (and (= (size!30610 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30609 _keys!1544) (size!30610 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!990769 () Bool)

(declare-fun res!662518 () Bool)

(assert (=> b!990769 (=> (not res!662518) (not e!558719))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!990769 (= res!662518 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30609 _keys!1544))))))

(declare-fun mapNonEmpty!37013 () Bool)

(declare-fun mapRes!37013 () Bool)

(declare-fun tp!70073 () Bool)

(declare-fun e!558720 () Bool)

(assert (=> mapNonEmpty!37013 (= mapRes!37013 (and tp!70073 e!558720))))

(declare-fun mapValue!37013 () ValueCell!11172)

(declare-fun mapRest!37013 () (Array (_ BitVec 32) ValueCell!11172))

(declare-fun mapKey!37013 () (_ BitVec 32))

(assert (=> mapNonEmpty!37013 (= (arr!30130 _values!1278) (store mapRest!37013 mapKey!37013 mapValue!37013))))

(declare-fun b!990770 () Bool)

(declare-fun res!662520 () Bool)

(assert (=> b!990770 (=> (not res!662520) (not e!558719))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!990770 (= res!662520 (validKeyInArray!0 (select (arr!30129 _keys!1544) from!1932)))))

(declare-fun b!990771 () Bool)

(declare-fun e!558716 () Bool)

(declare-fun tp_is_empty!23307 () Bool)

(assert (=> b!990771 (= e!558716 tp_is_empty!23307)))

(declare-fun b!990772 () Bool)

(declare-fun e!558717 () Bool)

(assert (=> b!990772 (= e!558719 e!558717)))

(declare-fun res!662521 () Bool)

(assert (=> b!990772 (=> (not res!662521) (not e!558717))))

(declare-fun lt!439644 () Bool)

(assert (=> b!990772 (= res!662521 (and (or lt!439644 (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (or lt!439644 (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (or (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not lt!439644))))))

(assert (=> b!990772 (= lt!439644 (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!990773 () Bool)

(declare-fun res!662516 () Bool)

(assert (=> b!990773 (=> (not res!662516) (not e!558719))))

(declare-datatypes ((List!20970 0))(
  ( (Nil!20967) (Cons!20966 (h!22128 (_ BitVec 64)) (t!29955 List!20970)) )
))
(declare-fun arrayNoDuplicates!0 (array!62565 (_ BitVec 32) List!20970) Bool)

(assert (=> b!990773 (= res!662516 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20967))))

(declare-fun mapIsEmpty!37013 () Bool)

(assert (=> mapIsEmpty!37013 mapRes!37013))

(declare-fun res!662519 () Bool)

(assert (=> start!84764 (=> (not res!662519) (not e!558719))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84764 (= res!662519 (validMask!0 mask!1948))))

(assert (=> start!84764 e!558719))

(assert (=> start!84764 true))

(assert (=> start!84764 tp_is_empty!23307))

(declare-fun e!558721 () Bool)

(declare-fun array_inv!23133 (array!62567) Bool)

(assert (=> start!84764 (and (array_inv!23133 _values!1278) e!558721)))

(assert (=> start!84764 tp!70072))

(declare-fun array_inv!23134 (array!62565) Bool)

(assert (=> start!84764 (array_inv!23134 _keys!1544)))

(declare-fun b!990774 () Bool)

(assert (=> b!990774 (= e!558720 tp_is_empty!23307)))

(declare-fun b!990775 () Bool)

(assert (=> b!990775 (= e!558721 (and e!558716 mapRes!37013))))

(declare-fun condMapEmpty!37013 () Bool)

(declare-fun mapDefault!37013 () ValueCell!11172)

(assert (=> b!990775 (= condMapEmpty!37013 (= (arr!30130 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11172)) mapDefault!37013)))))

(declare-fun b!990776 () Bool)

(declare-fun res!662515 () Bool)

(assert (=> b!990776 (=> (not res!662515) (not e!558719))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62565 (_ BitVec 32)) Bool)

(assert (=> b!990776 (= res!662515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!990777 () Bool)

(assert (=> b!990777 (= e!558717 (bvsge from!1932 (size!30610 _values!1278)))))

(declare-fun minValue!1220 () V!36059)

(declare-fun zeroValue!1220 () V!36059)

(declare-fun defaultEntry!1281 () Int)

(declare-datatypes ((tuple2!15020 0))(
  ( (tuple2!15021 (_1!7520 (_ BitVec 64)) (_2!7520 V!36059)) )
))
(declare-datatypes ((List!20971 0))(
  ( (Nil!20968) (Cons!20967 (h!22129 tuple2!15020) (t!29956 List!20971)) )
))
(declare-datatypes ((ListLongMap!13731 0))(
  ( (ListLongMap!13732 (toList!6881 List!20971)) )
))
(declare-fun lt!439645 () ListLongMap!13731)

(declare-fun getCurrentListMap!3890 (array!62565 array!62567 (_ BitVec 32) (_ BitVec 32) V!36059 V!36059 (_ BitVec 32) Int) ListLongMap!13731)

(assert (=> b!990777 (= lt!439645 (getCurrentListMap!3890 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(assert (= (and start!84764 res!662519) b!990768))

(assert (= (and b!990768 res!662517) b!990776))

(assert (= (and b!990776 res!662515) b!990773))

(assert (= (and b!990773 res!662516) b!990769))

(assert (= (and b!990769 res!662518) b!990770))

(assert (= (and b!990770 res!662520) b!990772))

(assert (= (and b!990772 res!662521) b!990777))

(assert (= (and b!990775 condMapEmpty!37013) mapIsEmpty!37013))

(assert (= (and b!990775 (not condMapEmpty!37013)) mapNonEmpty!37013))

(get-info :version)

(assert (= (and mapNonEmpty!37013 ((_ is ValueCellFull!11172) mapValue!37013)) b!990774))

(assert (= (and b!990775 ((_ is ValueCellFull!11172) mapDefault!37013)) b!990771))

(assert (= start!84764 b!990775))

(declare-fun m!918649 () Bool)

(assert (=> mapNonEmpty!37013 m!918649))

(declare-fun m!918651 () Bool)

(assert (=> b!990776 m!918651))

(declare-fun m!918653 () Bool)

(assert (=> b!990770 m!918653))

(assert (=> b!990770 m!918653))

(declare-fun m!918655 () Bool)

(assert (=> b!990770 m!918655))

(declare-fun m!918657 () Bool)

(assert (=> start!84764 m!918657))

(declare-fun m!918659 () Bool)

(assert (=> start!84764 m!918659))

(declare-fun m!918661 () Bool)

(assert (=> start!84764 m!918661))

(declare-fun m!918663 () Bool)

(assert (=> b!990777 m!918663))

(declare-fun m!918665 () Bool)

(assert (=> b!990773 m!918665))

(check-sat b_and!32279 (not b!990777) tp_is_empty!23307 (not start!84764) (not mapNonEmpty!37013) (not b_next!20091) (not b!990770) (not b!990776) (not b!990773))
(check-sat b_and!32279 (not b_next!20091))
