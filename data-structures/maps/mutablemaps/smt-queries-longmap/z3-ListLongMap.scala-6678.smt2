; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84070 () Bool)

(assert start!84070)

(declare-fun b_free!19797 () Bool)

(declare-fun b_next!19797 () Bool)

(assert (=> start!84070 (= b_free!19797 (not b_next!19797))))

(declare-fun tp!68915 () Bool)

(declare-fun b_and!31695 () Bool)

(assert (=> start!84070 (= tp!68915 b_and!31695)))

(declare-fun b!982339 () Bool)

(declare-fun res!657489 () Bool)

(declare-fun e!553770 () Bool)

(assert (=> b!982339 (=> (not res!657489) (not e!553770))))

(declare-datatypes ((array!61675 0))(
  ( (array!61676 (arr!29691 (Array (_ BitVec 32) (_ BitVec 64))) (size!30171 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61675)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61675 (_ BitVec 32)) Bool)

(assert (=> b!982339 (= res!657489 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun res!657488 () Bool)

(assert (=> start!84070 (=> (not res!657488) (not e!553770))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84070 (= res!657488 (validMask!0 mask!1948))))

(assert (=> start!84070 e!553770))

(assert (=> start!84070 true))

(declare-fun tp_is_empty!22845 () Bool)

(assert (=> start!84070 tp_is_empty!22845))

(declare-datatypes ((V!35443 0))(
  ( (V!35444 (val!11473 Int)) )
))
(declare-datatypes ((ValueCell!10941 0))(
  ( (ValueCellFull!10941 (v!14035 V!35443)) (EmptyCell!10941) )
))
(declare-datatypes ((array!61677 0))(
  ( (array!61678 (arr!29692 (Array (_ BitVec 32) ValueCell!10941)) (size!30172 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61677)

(declare-fun e!553768 () Bool)

(declare-fun array_inv!22833 (array!61677) Bool)

(assert (=> start!84070 (and (array_inv!22833 _values!1278) e!553768)))

(assert (=> start!84070 tp!68915))

(declare-fun array_inv!22834 (array!61675) Bool)

(assert (=> start!84070 (array_inv!22834 _keys!1544)))

(declare-fun b!982340 () Bool)

(declare-fun res!657494 () Bool)

(assert (=> b!982340 (=> (not res!657494) (not e!553770))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!982340 (= res!657494 (validKeyInArray!0 (select (arr!29691 _keys!1544) from!1932)))))

(declare-fun b!982341 () Bool)

(declare-fun e!553771 () Bool)

(assert (=> b!982341 (= e!553771 tp_is_empty!22845)))

(declare-fun b!982342 () Bool)

(declare-fun res!657495 () Bool)

(assert (=> b!982342 (=> (not res!657495) (not e!553770))))

(assert (=> b!982342 (= res!657495 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30171 _keys!1544))))))

(declare-fun b!982343 () Bool)

(declare-fun res!657491 () Bool)

(assert (=> b!982343 (=> (not res!657491) (not e!553770))))

(declare-datatypes ((List!20707 0))(
  ( (Nil!20704) (Cons!20703 (h!21865 (_ BitVec 64)) (t!29462 List!20707)) )
))
(declare-fun arrayNoDuplicates!0 (array!61675 (_ BitVec 32) List!20707) Bool)

(assert (=> b!982343 (= res!657491 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20704))))

(declare-fun b!982344 () Bool)

(declare-fun res!657492 () Bool)

(assert (=> b!982344 (=> (not res!657492) (not e!553770))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!982344 (= res!657492 (and (= (size!30172 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30171 _keys!1544) (size!30172 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!36296 () Bool)

(declare-fun mapRes!36296 () Bool)

(declare-fun tp!68914 () Bool)

(declare-fun e!553769 () Bool)

(assert (=> mapNonEmpty!36296 (= mapRes!36296 (and tp!68914 e!553769))))

(declare-fun mapKey!36296 () (_ BitVec 32))

(declare-fun mapRest!36296 () (Array (_ BitVec 32) ValueCell!10941))

(declare-fun mapValue!36296 () ValueCell!10941)

(assert (=> mapNonEmpty!36296 (= (arr!29692 _values!1278) (store mapRest!36296 mapKey!36296 mapValue!36296))))

(declare-fun b!982345 () Bool)

(declare-fun e!553772 () Bool)

(assert (=> b!982345 (= e!553770 e!553772)))

(declare-fun res!657493 () Bool)

(assert (=> b!982345 (=> (not res!657493) (not e!553772))))

(assert (=> b!982345 (= res!657493 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29691 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun lt!436104 () V!35443)

(declare-fun get!15418 (ValueCell!10941 V!35443) V!35443)

(declare-fun dynLambda!1803 (Int (_ BitVec 64)) V!35443)

(assert (=> b!982345 (= lt!436104 (get!15418 (select (arr!29692 _values!1278) from!1932) (dynLambda!1803 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35443)

(declare-fun zeroValue!1220 () V!35443)

(declare-datatypes ((tuple2!14800 0))(
  ( (tuple2!14801 (_1!7410 (_ BitVec 64)) (_2!7410 V!35443)) )
))
(declare-datatypes ((List!20708 0))(
  ( (Nil!20705) (Cons!20704 (h!21866 tuple2!14800) (t!29463 List!20708)) )
))
(declare-datatypes ((ListLongMap!13511 0))(
  ( (ListLongMap!13512 (toList!6771 List!20708)) )
))
(declare-fun lt!436101 () ListLongMap!13511)

(declare-fun getCurrentListMapNoExtraKeys!3430 (array!61675 array!61677 (_ BitVec 32) (_ BitVec 32) V!35443 V!35443 (_ BitVec 32) Int) ListLongMap!13511)

(assert (=> b!982345 (= lt!436101 (getCurrentListMapNoExtraKeys!3430 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!982346 () Bool)

(assert (=> b!982346 (= e!553769 tp_is_empty!22845)))

(declare-fun b!982347 () Bool)

(assert (=> b!982347 (= e!553772 (not true))))

(declare-fun lt!436105 () tuple2!14800)

(declare-fun lt!436102 () tuple2!14800)

(declare-fun +!2973 (ListLongMap!13511 tuple2!14800) ListLongMap!13511)

(assert (=> b!982347 (= (+!2973 (+!2973 lt!436101 lt!436105) lt!436102) (+!2973 (+!2973 lt!436101 lt!436102) lt!436105))))

(assert (=> b!982347 (= lt!436102 (tuple2!14801 (select (arr!29691 _keys!1544) from!1932) lt!436104))))

(assert (=> b!982347 (= lt!436105 (tuple2!14801 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32621 0))(
  ( (Unit!32622) )
))
(declare-fun lt!436103 () Unit!32621)

(declare-fun addCommutativeForDiffKeys!635 (ListLongMap!13511 (_ BitVec 64) V!35443 (_ BitVec 64) V!35443) Unit!32621)

(assert (=> b!982347 (= lt!436103 (addCommutativeForDiffKeys!635 lt!436101 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29691 _keys!1544) from!1932) lt!436104))))

(declare-fun mapIsEmpty!36296 () Bool)

(assert (=> mapIsEmpty!36296 mapRes!36296))

(declare-fun b!982348 () Bool)

(assert (=> b!982348 (= e!553768 (and e!553771 mapRes!36296))))

(declare-fun condMapEmpty!36296 () Bool)

(declare-fun mapDefault!36296 () ValueCell!10941)

(assert (=> b!982348 (= condMapEmpty!36296 (= (arr!29692 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10941)) mapDefault!36296)))))

(declare-fun b!982349 () Bool)

(declare-fun res!657490 () Bool)

(assert (=> b!982349 (=> (not res!657490) (not e!553770))))

(assert (=> b!982349 (= res!657490 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(assert (= (and start!84070 res!657488) b!982344))

(assert (= (and b!982344 res!657492) b!982339))

(assert (= (and b!982339 res!657489) b!982343))

(assert (= (and b!982343 res!657491) b!982342))

(assert (= (and b!982342 res!657495) b!982340))

(assert (= (and b!982340 res!657494) b!982349))

(assert (= (and b!982349 res!657490) b!982345))

(assert (= (and b!982345 res!657493) b!982347))

(assert (= (and b!982348 condMapEmpty!36296) mapIsEmpty!36296))

(assert (= (and b!982348 (not condMapEmpty!36296)) mapNonEmpty!36296))

(get-info :version)

(assert (= (and mapNonEmpty!36296 ((_ is ValueCellFull!10941) mapValue!36296)) b!982346))

(assert (= (and b!982348 ((_ is ValueCellFull!10941) mapDefault!36296)) b!982341))

(assert (= start!84070 b!982348))

(declare-fun b_lambda!14865 () Bool)

(assert (=> (not b_lambda!14865) (not b!982345)))

(declare-fun t!29461 () Bool)

(declare-fun tb!6605 () Bool)

(assert (=> (and start!84070 (= defaultEntry!1281 defaultEntry!1281) t!29461) tb!6605))

(declare-fun result!13191 () Bool)

(assert (=> tb!6605 (= result!13191 tp_is_empty!22845)))

(assert (=> b!982345 t!29461))

(declare-fun b_and!31697 () Bool)

(assert (= b_and!31695 (and (=> t!29461 result!13191) b_and!31697)))

(declare-fun m!909783 () Bool)

(assert (=> mapNonEmpty!36296 m!909783))

(declare-fun m!909785 () Bool)

(assert (=> start!84070 m!909785))

(declare-fun m!909787 () Bool)

(assert (=> start!84070 m!909787))

(declare-fun m!909789 () Bool)

(assert (=> start!84070 m!909789))

(declare-fun m!909791 () Bool)

(assert (=> b!982343 m!909791))

(declare-fun m!909793 () Bool)

(assert (=> b!982339 m!909793))

(declare-fun m!909795 () Bool)

(assert (=> b!982345 m!909795))

(declare-fun m!909797 () Bool)

(assert (=> b!982345 m!909797))

(declare-fun m!909799 () Bool)

(assert (=> b!982345 m!909799))

(declare-fun m!909801 () Bool)

(assert (=> b!982345 m!909801))

(assert (=> b!982345 m!909797))

(assert (=> b!982345 m!909801))

(declare-fun m!909803 () Bool)

(assert (=> b!982345 m!909803))

(assert (=> b!982340 m!909795))

(assert (=> b!982340 m!909795))

(declare-fun m!909805 () Bool)

(assert (=> b!982340 m!909805))

(assert (=> b!982347 m!909795))

(assert (=> b!982347 m!909795))

(declare-fun m!909807 () Bool)

(assert (=> b!982347 m!909807))

(declare-fun m!909809 () Bool)

(assert (=> b!982347 m!909809))

(declare-fun m!909811 () Bool)

(assert (=> b!982347 m!909811))

(assert (=> b!982347 m!909809))

(declare-fun m!909813 () Bool)

(assert (=> b!982347 m!909813))

(assert (=> b!982347 m!909811))

(declare-fun m!909815 () Bool)

(assert (=> b!982347 m!909815))

(check-sat (not b!982345) (not b_next!19797) (not b!982343) (not start!84070) b_and!31697 (not b!982347) (not b!982340) (not mapNonEmpty!36296) tp_is_empty!22845 (not b_lambda!14865) (not b!982339))
(check-sat b_and!31697 (not b_next!19797))
