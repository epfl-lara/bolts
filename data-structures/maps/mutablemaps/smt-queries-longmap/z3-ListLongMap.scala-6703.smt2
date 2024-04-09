; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84220 () Bool)

(assert start!84220)

(declare-fun b_free!19893 () Bool)

(declare-fun b_next!19893 () Bool)

(assert (=> start!84220 (= b_free!19893 (not b_next!19893))))

(declare-fun tp!69284 () Bool)

(declare-fun b_and!31881 () Bool)

(assert (=> start!84220 (= tp!69284 b_and!31881)))

(declare-fun b!984517 () Bool)

(declare-fun e!555032 () Bool)

(declare-fun e!555030 () Bool)

(declare-fun mapRes!36521 () Bool)

(assert (=> b!984517 (= e!555032 (and e!555030 mapRes!36521))))

(declare-fun condMapEmpty!36521 () Bool)

(declare-datatypes ((V!35643 0))(
  ( (V!35644 (val!11548 Int)) )
))
(declare-datatypes ((ValueCell!11016 0))(
  ( (ValueCellFull!11016 (v!14110 V!35643)) (EmptyCell!11016) )
))
(declare-datatypes ((array!61957 0))(
  ( (array!61958 (arr!29832 (Array (_ BitVec 32) ValueCell!11016)) (size!30312 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61957)

(declare-fun mapDefault!36521 () ValueCell!11016)

(assert (=> b!984517 (= condMapEmpty!36521 (= (arr!29832 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11016)) mapDefault!36521)))))

(declare-fun b!984518 () Bool)

(declare-fun res!658908 () Bool)

(declare-fun e!555028 () Bool)

(assert (=> b!984518 (=> (not res!658908) (not e!555028))))

(declare-datatypes ((array!61959 0))(
  ( (array!61960 (arr!29833 (Array (_ BitVec 32) (_ BitVec 64))) (size!30313 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61959)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!984518 (= res!658908 (validKeyInArray!0 (select (arr!29833 _keys!1544) from!1932)))))

(declare-fun b!984519 () Bool)

(declare-fun res!658907 () Bool)

(assert (=> b!984519 (=> (not res!658907) (not e!555028))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61959 (_ BitVec 32)) Bool)

(assert (=> b!984519 (= res!658907 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!36521 () Bool)

(assert (=> mapIsEmpty!36521 mapRes!36521))

(declare-fun b!984520 () Bool)

(declare-fun e!555027 () Bool)

(declare-fun tp_is_empty!22995 () Bool)

(assert (=> b!984520 (= e!555027 tp_is_empty!22995)))

(declare-fun res!658903 () Bool)

(assert (=> start!84220 (=> (not res!658903) (not e!555028))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84220 (= res!658903 (validMask!0 mask!1948))))

(assert (=> start!84220 e!555028))

(assert (=> start!84220 true))

(assert (=> start!84220 tp_is_empty!22995))

(declare-fun array_inv!22925 (array!61957) Bool)

(assert (=> start!84220 (and (array_inv!22925 _values!1278) e!555032)))

(assert (=> start!84220 tp!69284))

(declare-fun array_inv!22926 (array!61959) Bool)

(assert (=> start!84220 (array_inv!22926 _keys!1544)))

(declare-fun b!984521 () Bool)

(declare-fun res!658906 () Bool)

(assert (=> b!984521 (=> (not res!658906) (not e!555028))))

(assert (=> b!984521 (= res!658906 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30313 _keys!1544))))))

(declare-fun b!984522 () Bool)

(declare-fun res!658904 () Bool)

(assert (=> b!984522 (=> (not res!658904) (not e!555028))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!984522 (= res!658904 (and (= (size!30312 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30313 _keys!1544) (size!30312 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!984523 () Bool)

(declare-fun res!658902 () Bool)

(assert (=> b!984523 (=> (not res!658902) (not e!555028))))

(declare-datatypes ((List!20789 0))(
  ( (Nil!20786) (Cons!20785 (h!21947 (_ BitVec 64)) (t!29634 List!20789)) )
))
(declare-fun arrayNoDuplicates!0 (array!61959 (_ BitVec 32) List!20789) Bool)

(assert (=> b!984523 (= res!658902 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20786))))

(declare-fun b!984524 () Bool)

(assert (=> b!984524 (= e!555030 tp_is_empty!22995)))

(declare-fun mapNonEmpty!36521 () Bool)

(declare-fun tp!69283 () Bool)

(assert (=> mapNonEmpty!36521 (= mapRes!36521 (and tp!69283 e!555027))))

(declare-fun mapKey!36521 () (_ BitVec 32))

(declare-fun mapValue!36521 () ValueCell!11016)

(declare-fun mapRest!36521 () (Array (_ BitVec 32) ValueCell!11016))

(assert (=> mapNonEmpty!36521 (= (arr!29832 _values!1278) (store mapRest!36521 mapKey!36521 mapValue!36521))))

(declare-fun b!984525 () Bool)

(declare-fun e!555031 () Bool)

(assert (=> b!984525 (= e!555031 (not true))))

(declare-datatypes ((tuple2!14870 0))(
  ( (tuple2!14871 (_1!7445 (_ BitVec 64)) (_2!7445 V!35643)) )
))
(declare-datatypes ((List!20790 0))(
  ( (Nil!20787) (Cons!20786 (h!21948 tuple2!14870) (t!29635 List!20790)) )
))
(declare-datatypes ((ListLongMap!13581 0))(
  ( (ListLongMap!13582 (toList!6806 List!20790)) )
))
(declare-fun lt!436858 () ListLongMap!13581)

(declare-fun lt!436857 () tuple2!14870)

(declare-fun lt!436860 () tuple2!14870)

(declare-fun +!2997 (ListLongMap!13581 tuple2!14870) ListLongMap!13581)

(assert (=> b!984525 (= (+!2997 (+!2997 lt!436858 lt!436857) lt!436860) (+!2997 (+!2997 lt!436858 lt!436860) lt!436857))))

(declare-fun lt!436861 () V!35643)

(assert (=> b!984525 (= lt!436860 (tuple2!14871 (select (arr!29833 _keys!1544) from!1932) lt!436861))))

(declare-fun minValue!1220 () V!35643)

(assert (=> b!984525 (= lt!436857 (tuple2!14871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32669 0))(
  ( (Unit!32670) )
))
(declare-fun lt!436859 () Unit!32669)

(declare-fun addCommutativeForDiffKeys!659 (ListLongMap!13581 (_ BitVec 64) V!35643 (_ BitVec 64) V!35643) Unit!32669)

(assert (=> b!984525 (= lt!436859 (addCommutativeForDiffKeys!659 lt!436858 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29833 _keys!1544) from!1932) lt!436861))))

(declare-fun b!984526 () Bool)

(declare-fun res!658905 () Bool)

(assert (=> b!984526 (=> (not res!658905) (not e!555028))))

(assert (=> b!984526 (= res!658905 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!984527 () Bool)

(assert (=> b!984527 (= e!555028 e!555031)))

(declare-fun res!658901 () Bool)

(assert (=> b!984527 (=> (not res!658901) (not e!555031))))

(assert (=> b!984527 (= res!658901 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29833 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15497 (ValueCell!11016 V!35643) V!35643)

(declare-fun dynLambda!1832 (Int (_ BitVec 64)) V!35643)

(assert (=> b!984527 (= lt!436861 (get!15497 (select (arr!29832 _values!1278) from!1932) (dynLambda!1832 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35643)

(declare-fun getCurrentListMapNoExtraKeys!3461 (array!61959 array!61957 (_ BitVec 32) (_ BitVec 32) V!35643 V!35643 (_ BitVec 32) Int) ListLongMap!13581)

(assert (=> b!984527 (= lt!436858 (getCurrentListMapNoExtraKeys!3461 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(assert (= (and start!84220 res!658903) b!984522))

(assert (= (and b!984522 res!658904) b!984519))

(assert (= (and b!984519 res!658907) b!984523))

(assert (= (and b!984523 res!658902) b!984521))

(assert (= (and b!984521 res!658906) b!984518))

(assert (= (and b!984518 res!658908) b!984526))

(assert (= (and b!984526 res!658905) b!984527))

(assert (= (and b!984527 res!658901) b!984525))

(assert (= (and b!984517 condMapEmpty!36521) mapIsEmpty!36521))

(assert (= (and b!984517 (not condMapEmpty!36521)) mapNonEmpty!36521))

(get-info :version)

(assert (= (and mapNonEmpty!36521 ((_ is ValueCellFull!11016) mapValue!36521)) b!984520))

(assert (= (and b!984517 ((_ is ValueCellFull!11016) mapDefault!36521)) b!984524))

(assert (= start!84220 b!984517))

(declare-fun b_lambda!14955 () Bool)

(assert (=> (not b_lambda!14955) (not b!984527)))

(declare-fun t!29633 () Bool)

(declare-fun tb!6695 () Bool)

(assert (=> (and start!84220 (= defaultEntry!1281 defaultEntry!1281) t!29633) tb!6695))

(declare-fun result!13371 () Bool)

(assert (=> tb!6695 (= result!13371 tp_is_empty!22995)))

(assert (=> b!984527 t!29633))

(declare-fun b_and!31883 () Bool)

(assert (= b_and!31881 (and (=> t!29633 result!13371) b_and!31883)))

(declare-fun m!911703 () Bool)

(assert (=> b!984523 m!911703))

(declare-fun m!911705 () Bool)

(assert (=> b!984519 m!911705))

(declare-fun m!911707 () Bool)

(assert (=> b!984527 m!911707))

(declare-fun m!911709 () Bool)

(assert (=> b!984527 m!911709))

(declare-fun m!911711 () Bool)

(assert (=> b!984527 m!911711))

(declare-fun m!911713 () Bool)

(assert (=> b!984527 m!911713))

(assert (=> b!984527 m!911709))

(assert (=> b!984527 m!911713))

(declare-fun m!911715 () Bool)

(assert (=> b!984527 m!911715))

(declare-fun m!911717 () Bool)

(assert (=> start!84220 m!911717))

(declare-fun m!911719 () Bool)

(assert (=> start!84220 m!911719))

(declare-fun m!911721 () Bool)

(assert (=> start!84220 m!911721))

(declare-fun m!911723 () Bool)

(assert (=> mapNonEmpty!36521 m!911723))

(assert (=> b!984518 m!911707))

(assert (=> b!984518 m!911707))

(declare-fun m!911725 () Bool)

(assert (=> b!984518 m!911725))

(assert (=> b!984525 m!911707))

(declare-fun m!911727 () Bool)

(assert (=> b!984525 m!911727))

(assert (=> b!984525 m!911727))

(declare-fun m!911729 () Bool)

(assert (=> b!984525 m!911729))

(declare-fun m!911731 () Bool)

(assert (=> b!984525 m!911731))

(declare-fun m!911733 () Bool)

(assert (=> b!984525 m!911733))

(assert (=> b!984525 m!911731))

(assert (=> b!984525 m!911707))

(declare-fun m!911735 () Bool)

(assert (=> b!984525 m!911735))

(check-sat (not start!84220) (not b_lambda!14955) (not b_next!19893) (not b!984527) (not mapNonEmpty!36521) (not b!984519) b_and!31883 (not b!984518) tp_is_empty!22995 (not b!984523) (not b!984525))
(check-sat b_and!31883 (not b_next!19893))
