; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84016 () Bool)

(assert start!84016)

(declare-fun b_free!19743 () Bool)

(declare-fun b_next!19743 () Bool)

(assert (=> start!84016 (= b_free!19743 (not b_next!19743))))

(declare-fun tp!68753 () Bool)

(declare-fun b_and!31587 () Bool)

(assert (=> start!84016 (= tp!68753 b_and!31587)))

(declare-fun mapIsEmpty!36215 () Bool)

(declare-fun mapRes!36215 () Bool)

(assert (=> mapIsEmpty!36215 mapRes!36215))

(declare-fun b!981394 () Bool)

(declare-fun e!553281 () Bool)

(declare-fun e!553283 () Bool)

(assert (=> b!981394 (= e!553281 (and e!553283 mapRes!36215))))

(declare-fun condMapEmpty!36215 () Bool)

(declare-datatypes ((V!35371 0))(
  ( (V!35372 (val!11446 Int)) )
))
(declare-datatypes ((ValueCell!10914 0))(
  ( (ValueCellFull!10914 (v!14008 V!35371)) (EmptyCell!10914) )
))
(declare-datatypes ((array!61575 0))(
  ( (array!61576 (arr!29641 (Array (_ BitVec 32) ValueCell!10914)) (size!30121 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61575)

(declare-fun mapDefault!36215 () ValueCell!10914)

(assert (=> b!981394 (= condMapEmpty!36215 (= (arr!29641 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10914)) mapDefault!36215)))))

(declare-fun b!981395 () Bool)

(declare-fun res!656843 () Bool)

(declare-fun e!553282 () Bool)

(assert (=> b!981395 (=> (not res!656843) (not e!553282))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61577 0))(
  ( (array!61578 (arr!29642 (Array (_ BitVec 32) (_ BitVec 64))) (size!30122 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61577)

(assert (=> b!981395 (= res!656843 (and (= (size!30121 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30122 _keys!1544) (size!30121 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun res!656841 () Bool)

(assert (=> start!84016 (=> (not res!656841) (not e!553282))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84016 (= res!656841 (validMask!0 mask!1948))))

(assert (=> start!84016 e!553282))

(assert (=> start!84016 true))

(declare-fun tp_is_empty!22791 () Bool)

(assert (=> start!84016 tp_is_empty!22791))

(declare-fun array_inv!22797 (array!61575) Bool)

(assert (=> start!84016 (and (array_inv!22797 _values!1278) e!553281)))

(assert (=> start!84016 tp!68753))

(declare-fun array_inv!22798 (array!61577) Bool)

(assert (=> start!84016 (array_inv!22798 _keys!1544)))

(declare-fun b!981396 () Bool)

(declare-fun e!553285 () Bool)

(assert (=> b!981396 (= e!553285 (not true))))

(declare-datatypes ((tuple2!14764 0))(
  ( (tuple2!14765 (_1!7392 (_ BitVec 64)) (_2!7392 V!35371)) )
))
(declare-datatypes ((List!20670 0))(
  ( (Nil!20667) (Cons!20666 (h!21828 tuple2!14764) (t!29371 List!20670)) )
))
(declare-datatypes ((ListLongMap!13475 0))(
  ( (ListLongMap!13476 (toList!6753 List!20670)) )
))
(declare-fun lt!435699 () ListLongMap!13475)

(declare-fun lt!435700 () tuple2!14764)

(declare-fun lt!435696 () tuple2!14764)

(declare-fun +!2957 (ListLongMap!13475 tuple2!14764) ListLongMap!13475)

(assert (=> b!981396 (= (+!2957 (+!2957 lt!435699 lt!435700) lt!435696) (+!2957 (+!2957 lt!435699 lt!435696) lt!435700))))

(declare-fun lt!435697 () V!35371)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!981396 (= lt!435696 (tuple2!14765 (select (arr!29642 _keys!1544) from!1932) lt!435697))))

(declare-fun zeroValue!1220 () V!35371)

(assert (=> b!981396 (= lt!435700 (tuple2!14765 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32589 0))(
  ( (Unit!32590) )
))
(declare-fun lt!435698 () Unit!32589)

(declare-fun addCommutativeForDiffKeys!619 (ListLongMap!13475 (_ BitVec 64) V!35371 (_ BitVec 64) V!35371) Unit!32589)

(assert (=> b!981396 (= lt!435698 (addCommutativeForDiffKeys!619 lt!435699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29642 _keys!1544) from!1932) lt!435697))))

(declare-fun b!981397 () Bool)

(assert (=> b!981397 (= e!553282 e!553285)))

(declare-fun res!656846 () Bool)

(assert (=> b!981397 (=> (not res!656846) (not e!553285))))

(assert (=> b!981397 (= res!656846 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29642 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15383 (ValueCell!10914 V!35371) V!35371)

(declare-fun dynLambda!1786 (Int (_ BitVec 64)) V!35371)

(assert (=> b!981397 (= lt!435697 (get!15383 (select (arr!29641 _values!1278) from!1932) (dynLambda!1786 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35371)

(declare-fun getCurrentListMapNoExtraKeys!3413 (array!61577 array!61575 (_ BitVec 32) (_ BitVec 32) V!35371 V!35371 (_ BitVec 32) Int) ListLongMap!13475)

(assert (=> b!981397 (= lt!435699 (getCurrentListMapNoExtraKeys!3413 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!981398 () Bool)

(declare-fun res!656844 () Bool)

(assert (=> b!981398 (=> (not res!656844) (not e!553282))))

(assert (=> b!981398 (= res!656844 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30122 _keys!1544))))))

(declare-fun b!981399 () Bool)

(declare-fun res!656845 () Bool)

(assert (=> b!981399 (=> (not res!656845) (not e!553282))))

(declare-datatypes ((List!20671 0))(
  ( (Nil!20668) (Cons!20667 (h!21829 (_ BitVec 64)) (t!29372 List!20671)) )
))
(declare-fun arrayNoDuplicates!0 (array!61577 (_ BitVec 32) List!20671) Bool)

(assert (=> b!981399 (= res!656845 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20668))))

(declare-fun b!981400 () Bool)

(declare-fun res!656847 () Bool)

(assert (=> b!981400 (=> (not res!656847) (not e!553282))))

(assert (=> b!981400 (= res!656847 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!981401 () Bool)

(assert (=> b!981401 (= e!553283 tp_is_empty!22791)))

(declare-fun b!981402 () Bool)

(declare-fun res!656840 () Bool)

(assert (=> b!981402 (=> (not res!656840) (not e!553282))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61577 (_ BitVec 32)) Bool)

(assert (=> b!981402 (= res!656840 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!981403 () Bool)

(declare-fun e!553286 () Bool)

(assert (=> b!981403 (= e!553286 tp_is_empty!22791)))

(declare-fun mapNonEmpty!36215 () Bool)

(declare-fun tp!68752 () Bool)

(assert (=> mapNonEmpty!36215 (= mapRes!36215 (and tp!68752 e!553286))))

(declare-fun mapKey!36215 () (_ BitVec 32))

(declare-fun mapValue!36215 () ValueCell!10914)

(declare-fun mapRest!36215 () (Array (_ BitVec 32) ValueCell!10914))

(assert (=> mapNonEmpty!36215 (= (arr!29641 _values!1278) (store mapRest!36215 mapKey!36215 mapValue!36215))))

(declare-fun b!981404 () Bool)

(declare-fun res!656842 () Bool)

(assert (=> b!981404 (=> (not res!656842) (not e!553282))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!981404 (= res!656842 (validKeyInArray!0 (select (arr!29642 _keys!1544) from!1932)))))

(assert (= (and start!84016 res!656841) b!981395))

(assert (= (and b!981395 res!656843) b!981402))

(assert (= (and b!981402 res!656840) b!981399))

(assert (= (and b!981399 res!656845) b!981398))

(assert (= (and b!981398 res!656844) b!981404))

(assert (= (and b!981404 res!656842) b!981400))

(assert (= (and b!981400 res!656847) b!981397))

(assert (= (and b!981397 res!656846) b!981396))

(assert (= (and b!981394 condMapEmpty!36215) mapIsEmpty!36215))

(assert (= (and b!981394 (not condMapEmpty!36215)) mapNonEmpty!36215))

(get-info :version)

(assert (= (and mapNonEmpty!36215 ((_ is ValueCellFull!10914) mapValue!36215)) b!981403))

(assert (= (and b!981394 ((_ is ValueCellFull!10914) mapDefault!36215)) b!981401))

(assert (= start!84016 b!981394))

(declare-fun b_lambda!14811 () Bool)

(assert (=> (not b_lambda!14811) (not b!981397)))

(declare-fun t!29370 () Bool)

(declare-fun tb!6551 () Bool)

(assert (=> (and start!84016 (= defaultEntry!1281 defaultEntry!1281) t!29370) tb!6551))

(declare-fun result!13083 () Bool)

(assert (=> tb!6551 (= result!13083 tp_is_empty!22791)))

(assert (=> b!981397 t!29370))

(declare-fun b_and!31589 () Bool)

(assert (= b_and!31587 (and (=> t!29370 result!13083) b_and!31589)))

(declare-fun m!908865 () Bool)

(assert (=> b!981399 m!908865))

(declare-fun m!908867 () Bool)

(assert (=> b!981402 m!908867))

(declare-fun m!908869 () Bool)

(assert (=> start!84016 m!908869))

(declare-fun m!908871 () Bool)

(assert (=> start!84016 m!908871))

(declare-fun m!908873 () Bool)

(assert (=> start!84016 m!908873))

(declare-fun m!908875 () Bool)

(assert (=> b!981397 m!908875))

(declare-fun m!908877 () Bool)

(assert (=> b!981397 m!908877))

(declare-fun m!908879 () Bool)

(assert (=> b!981397 m!908879))

(declare-fun m!908881 () Bool)

(assert (=> b!981397 m!908881))

(assert (=> b!981397 m!908877))

(assert (=> b!981397 m!908881))

(declare-fun m!908883 () Bool)

(assert (=> b!981397 m!908883))

(declare-fun m!908885 () Bool)

(assert (=> mapNonEmpty!36215 m!908885))

(assert (=> b!981404 m!908875))

(assert (=> b!981404 m!908875))

(declare-fun m!908887 () Bool)

(assert (=> b!981404 m!908887))

(declare-fun m!908889 () Bool)

(assert (=> b!981396 m!908889))

(declare-fun m!908891 () Bool)

(assert (=> b!981396 m!908891))

(declare-fun m!908893 () Bool)

(assert (=> b!981396 m!908893))

(assert (=> b!981396 m!908875))

(declare-fun m!908895 () Bool)

(assert (=> b!981396 m!908895))

(assert (=> b!981396 m!908875))

(assert (=> b!981396 m!908891))

(assert (=> b!981396 m!908889))

(declare-fun m!908897 () Bool)

(assert (=> b!981396 m!908897))

(check-sat (not b!981404) (not b!981402) (not start!84016) (not b_lambda!14811) (not mapNonEmpty!36215) tp_is_empty!22791 b_and!31589 (not b!981396) (not b!981399) (not b!981397) (not b_next!19743))
(check-sat b_and!31589 (not b_next!19743))
