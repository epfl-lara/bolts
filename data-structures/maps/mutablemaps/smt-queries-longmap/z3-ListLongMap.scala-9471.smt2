; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112472 () Bool)

(assert start!112472)

(declare-fun b_free!30831 () Bool)

(declare-fun b_next!30831 () Bool)

(assert (=> start!112472 (= b_free!30831 (not b_next!30831))))

(declare-fun tp!108131 () Bool)

(declare-fun b_and!49683 () Bool)

(assert (=> start!112472 (= tp!108131 b_and!49683)))

(declare-fun b!1332934 () Bool)

(declare-fun res!884626 () Bool)

(declare-fun e!759409 () Bool)

(assert (=> b!1332934 (=> (not res!884626) (not e!759409))))

(declare-datatypes ((array!90329 0))(
  ( (array!90330 (arr!43626 (Array (_ BitVec 32) (_ BitVec 64))) (size!44177 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90329)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90329 (_ BitVec 32)) Bool)

(assert (=> b!1332934 (= res!884626 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun mapNonEmpty!56785 () Bool)

(declare-fun mapRes!56785 () Bool)

(declare-fun tp!108130 () Bool)

(declare-fun e!759408 () Bool)

(assert (=> mapNonEmpty!56785 (= mapRes!56785 (and tp!108130 e!759408))))

(declare-datatypes ((V!54091 0))(
  ( (V!54092 (val!18445 Int)) )
))
(declare-datatypes ((ValueCell!17472 0))(
  ( (ValueCellFull!17472 (v!21080 V!54091)) (EmptyCell!17472) )
))
(declare-datatypes ((array!90331 0))(
  ( (array!90332 (arr!43627 (Array (_ BitVec 32) ValueCell!17472)) (size!44178 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90331)

(declare-fun mapRest!56785 () (Array (_ BitVec 32) ValueCell!17472))

(declare-fun mapKey!56785 () (_ BitVec 32))

(declare-fun mapValue!56785 () ValueCell!17472)

(assert (=> mapNonEmpty!56785 (= (arr!43627 _values!1320) (store mapRest!56785 mapKey!56785 mapValue!56785))))

(declare-fun b!1332935 () Bool)

(assert (=> b!1332935 (= e!759409 false)))

(declare-fun lt!592031 () Bool)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!54091)

(declare-fun zeroValue!1262 () V!54091)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!23922 0))(
  ( (tuple2!23923 (_1!11971 (_ BitVec 64)) (_2!11971 V!54091)) )
))
(declare-datatypes ((List!31102 0))(
  ( (Nil!31099) (Cons!31098 (h!32307 tuple2!23922) (t!45307 List!31102)) )
))
(declare-datatypes ((ListLongMap!21591 0))(
  ( (ListLongMap!21592 (toList!10811 List!31102)) )
))
(declare-fun contains!8911 (ListLongMap!21591 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5732 (array!90329 array!90331 (_ BitVec 32) (_ BitVec 32) V!54091 V!54091 (_ BitVec 32) Int) ListLongMap!21591)

(assert (=> b!1332935 (= lt!592031 (contains!8911 (getCurrentListMap!5732 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1332936 () Bool)

(declare-fun res!884624 () Bool)

(assert (=> b!1332936 (=> (not res!884624) (not e!759409))))

(assert (=> b!1332936 (= res!884624 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44177 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1332937 () Bool)

(declare-fun tp_is_empty!36741 () Bool)

(assert (=> b!1332937 (= e!759408 tp_is_empty!36741)))

(declare-fun b!1332938 () Bool)

(declare-fun e!759405 () Bool)

(assert (=> b!1332938 (= e!759405 tp_is_empty!36741)))

(declare-fun res!884623 () Bool)

(assert (=> start!112472 (=> (not res!884623) (not e!759409))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112472 (= res!884623 (validMask!0 mask!1998))))

(assert (=> start!112472 e!759409))

(declare-fun e!759406 () Bool)

(declare-fun array_inv!32849 (array!90331) Bool)

(assert (=> start!112472 (and (array_inv!32849 _values!1320) e!759406)))

(assert (=> start!112472 true))

(declare-fun array_inv!32850 (array!90329) Bool)

(assert (=> start!112472 (array_inv!32850 _keys!1590)))

(assert (=> start!112472 tp!108131))

(assert (=> start!112472 tp_is_empty!36741))

(declare-fun b!1332939 () Bool)

(assert (=> b!1332939 (= e!759406 (and e!759405 mapRes!56785))))

(declare-fun condMapEmpty!56785 () Bool)

(declare-fun mapDefault!56785 () ValueCell!17472)

(assert (=> b!1332939 (= condMapEmpty!56785 (= (arr!43627 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17472)) mapDefault!56785)))))

(declare-fun b!1332940 () Bool)

(declare-fun res!884627 () Bool)

(assert (=> b!1332940 (=> (not res!884627) (not e!759409))))

(assert (=> b!1332940 (= res!884627 (and (= (size!44178 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44177 _keys!1590) (size!44178 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1332941 () Bool)

(declare-fun res!884625 () Bool)

(assert (=> b!1332941 (=> (not res!884625) (not e!759409))))

(declare-datatypes ((List!31103 0))(
  ( (Nil!31100) (Cons!31099 (h!32308 (_ BitVec 64)) (t!45308 List!31103)) )
))
(declare-fun arrayNoDuplicates!0 (array!90329 (_ BitVec 32) List!31103) Bool)

(assert (=> b!1332941 (= res!884625 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31100))))

(declare-fun mapIsEmpty!56785 () Bool)

(assert (=> mapIsEmpty!56785 mapRes!56785))

(assert (= (and start!112472 res!884623) b!1332940))

(assert (= (and b!1332940 res!884627) b!1332934))

(assert (= (and b!1332934 res!884626) b!1332941))

(assert (= (and b!1332941 res!884625) b!1332936))

(assert (= (and b!1332936 res!884624) b!1332935))

(assert (= (and b!1332939 condMapEmpty!56785) mapIsEmpty!56785))

(assert (= (and b!1332939 (not condMapEmpty!56785)) mapNonEmpty!56785))

(get-info :version)

(assert (= (and mapNonEmpty!56785 ((_ is ValueCellFull!17472) mapValue!56785)) b!1332937))

(assert (= (and b!1332939 ((_ is ValueCellFull!17472) mapDefault!56785)) b!1332938))

(assert (= start!112472 b!1332939))

(declare-fun m!1221631 () Bool)

(assert (=> b!1332935 m!1221631))

(assert (=> b!1332935 m!1221631))

(declare-fun m!1221633 () Bool)

(assert (=> b!1332935 m!1221633))

(declare-fun m!1221635 () Bool)

(assert (=> b!1332934 m!1221635))

(declare-fun m!1221637 () Bool)

(assert (=> b!1332941 m!1221637))

(declare-fun m!1221639 () Bool)

(assert (=> start!112472 m!1221639))

(declare-fun m!1221641 () Bool)

(assert (=> start!112472 m!1221641))

(declare-fun m!1221643 () Bool)

(assert (=> start!112472 m!1221643))

(declare-fun m!1221645 () Bool)

(assert (=> mapNonEmpty!56785 m!1221645))

(check-sat (not b!1332941) (not b!1332935) (not b_next!30831) (not start!112472) tp_is_empty!36741 (not b!1332934) b_and!49683 (not mapNonEmpty!56785))
(check-sat b_and!49683 (not b_next!30831))
