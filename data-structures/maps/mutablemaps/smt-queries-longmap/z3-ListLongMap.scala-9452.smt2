; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112358 () Bool)

(assert start!112358)

(declare-fun b_free!30717 () Bool)

(declare-fun b_next!30717 () Bool)

(assert (=> start!112358 (= b_free!30717 (not b_next!30717))))

(declare-fun tp!107788 () Bool)

(declare-fun b_and!49499 () Bool)

(assert (=> start!112358 (= tp!107788 b_and!49499)))

(declare-fun mapNonEmpty!56614 () Bool)

(declare-fun mapRes!56614 () Bool)

(declare-fun tp!107789 () Bool)

(declare-fun e!758552 () Bool)

(assert (=> mapNonEmpty!56614 (= mapRes!56614 (and tp!107789 e!758552))))

(declare-fun mapKey!56614 () (_ BitVec 32))

(declare-datatypes ((V!53939 0))(
  ( (V!53940 (val!18388 Int)) )
))
(declare-datatypes ((ValueCell!17415 0))(
  ( (ValueCellFull!17415 (v!21023 V!53939)) (EmptyCell!17415) )
))
(declare-fun mapRest!56614 () (Array (_ BitVec 32) ValueCell!17415))

(declare-datatypes ((array!90105 0))(
  ( (array!90106 (arr!43514 (Array (_ BitVec 32) ValueCell!17415)) (size!44065 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90105)

(declare-fun mapValue!56614 () ValueCell!17415)

(assert (=> mapNonEmpty!56614 (= (arr!43514 _values!1320) (store mapRest!56614 mapKey!56614 mapValue!56614))))

(declare-fun b!1331084 () Bool)

(declare-fun res!883364 () Bool)

(declare-fun e!758550 () Bool)

(assert (=> b!1331084 (=> (not res!883364) (not e!758550))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90107 0))(
  ( (array!90108 (arr!43515 (Array (_ BitVec 32) (_ BitVec 64))) (size!44066 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90107)

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1331084 (= res!883364 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44066 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1331085 () Bool)

(declare-fun res!883359 () Bool)

(assert (=> b!1331085 (=> (not res!883359) (not e!758550))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1331085 (= res!883359 (validKeyInArray!0 (select (arr!43515 _keys!1590) from!1980)))))

(declare-fun b!1331086 () Bool)

(declare-fun e!758553 () Bool)

(declare-fun tp_is_empty!36627 () Bool)

(assert (=> b!1331086 (= e!758553 tp_is_empty!36627)))

(declare-fun b!1331087 () Bool)

(declare-fun res!883358 () Bool)

(assert (=> b!1331087 (=> (not res!883358) (not e!758550))))

(assert (=> b!1331087 (= res!883358 (not (= (select (arr!43515 _keys!1590) from!1980) k0!1153)))))

(declare-fun res!883357 () Bool)

(assert (=> start!112358 (=> (not res!883357) (not e!758550))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112358 (= res!883357 (validMask!0 mask!1998))))

(assert (=> start!112358 e!758550))

(declare-fun e!758551 () Bool)

(declare-fun array_inv!32775 (array!90105) Bool)

(assert (=> start!112358 (and (array_inv!32775 _values!1320) e!758551)))

(assert (=> start!112358 true))

(declare-fun array_inv!32776 (array!90107) Bool)

(assert (=> start!112358 (array_inv!32776 _keys!1590)))

(assert (=> start!112358 tp!107788))

(assert (=> start!112358 tp_is_empty!36627))

(declare-fun b!1331088 () Bool)

(declare-fun res!883356 () Bool)

(assert (=> b!1331088 (=> (not res!883356) (not e!758550))))

(assert (=> b!1331088 (= res!883356 (and (= (size!44065 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44066 _keys!1590) (size!44065 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!56614 () Bool)

(assert (=> mapIsEmpty!56614 mapRes!56614))

(declare-fun b!1331089 () Bool)

(declare-fun res!883361 () Bool)

(assert (=> b!1331089 (=> (not res!883361) (not e!758550))))

(declare-datatypes ((List!31020 0))(
  ( (Nil!31017) (Cons!31016 (h!32225 (_ BitVec 64)) (t!45157 List!31020)) )
))
(declare-fun arrayNoDuplicates!0 (array!90107 (_ BitVec 32) List!31020) Bool)

(assert (=> b!1331089 (= res!883361 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31017))))

(declare-fun b!1331090 () Bool)

(declare-fun res!883360 () Bool)

(assert (=> b!1331090 (=> (not res!883360) (not e!758550))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!53939)

(declare-fun zeroValue!1262 () V!53939)

(declare-datatypes ((tuple2!23834 0))(
  ( (tuple2!23835 (_1!11927 (_ BitVec 64)) (_2!11927 V!53939)) )
))
(declare-datatypes ((List!31021 0))(
  ( (Nil!31018) (Cons!31017 (h!32226 tuple2!23834) (t!45158 List!31021)) )
))
(declare-datatypes ((ListLongMap!21503 0))(
  ( (ListLongMap!21504 (toList!10767 List!31021)) )
))
(declare-fun contains!8867 (ListLongMap!21503 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5690 (array!90107 array!90105 (_ BitVec 32) (_ BitVec 32) V!53939 V!53939 (_ BitVec 32) Int) ListLongMap!21503)

(assert (=> b!1331090 (= res!883360 (contains!8867 (getCurrentListMap!5690 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1331091 () Bool)

(assert (=> b!1331091 (= e!758551 (and e!758553 mapRes!56614))))

(declare-fun condMapEmpty!56614 () Bool)

(declare-fun mapDefault!56614 () ValueCell!17415)

(assert (=> b!1331091 (= condMapEmpty!56614 (= (arr!43514 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17415)) mapDefault!56614)))))

(declare-fun b!1331092 () Bool)

(assert (=> b!1331092 (= e!758550 (not true))))

(declare-fun lt!591368 () ListLongMap!21503)

(assert (=> b!1331092 (contains!8867 lt!591368 k0!1153)))

(declare-datatypes ((Unit!43743 0))(
  ( (Unit!43744) )
))
(declare-fun lt!591367 () Unit!43743)

(declare-fun lt!591371 () V!53939)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!263 ((_ BitVec 64) (_ BitVec 64) V!53939 ListLongMap!21503) Unit!43743)

(assert (=> b!1331092 (= lt!591367 (lemmaInListMapAfterAddingDiffThenInBefore!263 k0!1153 (select (arr!43515 _keys!1590) from!1980) lt!591371 lt!591368))))

(declare-fun lt!591369 () ListLongMap!21503)

(assert (=> b!1331092 (contains!8867 lt!591369 k0!1153)))

(declare-fun lt!591370 () Unit!43743)

(assert (=> b!1331092 (= lt!591370 (lemmaInListMapAfterAddingDiffThenInBefore!263 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591369))))

(declare-fun +!4658 (ListLongMap!21503 tuple2!23834) ListLongMap!21503)

(assert (=> b!1331092 (= lt!591369 (+!4658 lt!591368 (tuple2!23835 (select (arr!43515 _keys!1590) from!1980) lt!591371)))))

(declare-fun get!21982 (ValueCell!17415 V!53939) V!53939)

(declare-fun dynLambda!3695 (Int (_ BitVec 64)) V!53939)

(assert (=> b!1331092 (= lt!591371 (get!21982 (select (arr!43514 _values!1320) from!1980) (dynLambda!3695 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6376 (array!90107 array!90105 (_ BitVec 32) (_ BitVec 32) V!53939 V!53939 (_ BitVec 32) Int) ListLongMap!21503)

(assert (=> b!1331092 (= lt!591368 (getCurrentListMapNoExtraKeys!6376 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1331093 () Bool)

(declare-fun res!883362 () Bool)

(assert (=> b!1331093 (=> (not res!883362) (not e!758550))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90107 (_ BitVec 32)) Bool)

(assert (=> b!1331093 (= res!883362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1331094 () Bool)

(declare-fun res!883363 () Bool)

(assert (=> b!1331094 (=> (not res!883363) (not e!758550))))

(assert (=> b!1331094 (= res!883363 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1331095 () Bool)

(assert (=> b!1331095 (= e!758552 tp_is_empty!36627)))

(assert (= (and start!112358 res!883357) b!1331088))

(assert (= (and b!1331088 res!883356) b!1331093))

(assert (= (and b!1331093 res!883362) b!1331089))

(assert (= (and b!1331089 res!883361) b!1331084))

(assert (= (and b!1331084 res!883364) b!1331090))

(assert (= (and b!1331090 res!883360) b!1331087))

(assert (= (and b!1331087 res!883358) b!1331085))

(assert (= (and b!1331085 res!883359) b!1331094))

(assert (= (and b!1331094 res!883363) b!1331092))

(assert (= (and b!1331091 condMapEmpty!56614) mapIsEmpty!56614))

(assert (= (and b!1331091 (not condMapEmpty!56614)) mapNonEmpty!56614))

(get-info :version)

(assert (= (and mapNonEmpty!56614 ((_ is ValueCellFull!17415) mapValue!56614)) b!1331095))

(assert (= (and b!1331091 ((_ is ValueCellFull!17415) mapDefault!56614)) b!1331086))

(assert (= start!112358 b!1331091))

(declare-fun b_lambda!23987 () Bool)

(assert (=> (not b_lambda!23987) (not b!1331092)))

(declare-fun t!45156 () Bool)

(declare-fun tb!11941 () Bool)

(assert (=> (and start!112358 (= defaultEntry!1323 defaultEntry!1323) t!45156) tb!11941))

(declare-fun result!24945 () Bool)

(assert (=> tb!11941 (= result!24945 tp_is_empty!36627)))

(assert (=> b!1331092 t!45156))

(declare-fun b_and!49501 () Bool)

(assert (= b_and!49499 (and (=> t!45156 result!24945) b_and!49501)))

(declare-fun m!1219787 () Bool)

(assert (=> b!1331090 m!1219787))

(assert (=> b!1331090 m!1219787))

(declare-fun m!1219789 () Bool)

(assert (=> b!1331090 m!1219789))

(declare-fun m!1219791 () Bool)

(assert (=> b!1331089 m!1219791))

(declare-fun m!1219793 () Bool)

(assert (=> b!1331093 m!1219793))

(declare-fun m!1219795 () Bool)

(assert (=> start!112358 m!1219795))

(declare-fun m!1219797 () Bool)

(assert (=> start!112358 m!1219797))

(declare-fun m!1219799 () Bool)

(assert (=> start!112358 m!1219799))

(declare-fun m!1219801 () Bool)

(assert (=> b!1331092 m!1219801))

(declare-fun m!1219803 () Bool)

(assert (=> b!1331092 m!1219803))

(declare-fun m!1219805 () Bool)

(assert (=> b!1331092 m!1219805))

(declare-fun m!1219807 () Bool)

(assert (=> b!1331092 m!1219807))

(assert (=> b!1331092 m!1219803))

(declare-fun m!1219809 () Bool)

(assert (=> b!1331092 m!1219809))

(declare-fun m!1219811 () Bool)

(assert (=> b!1331092 m!1219811))

(declare-fun m!1219813 () Bool)

(assert (=> b!1331092 m!1219813))

(assert (=> b!1331092 m!1219807))

(declare-fun m!1219815 () Bool)

(assert (=> b!1331092 m!1219815))

(assert (=> b!1331092 m!1219811))

(declare-fun m!1219817 () Bool)

(assert (=> b!1331092 m!1219817))

(declare-fun m!1219819 () Bool)

(assert (=> b!1331092 m!1219819))

(assert (=> b!1331085 m!1219811))

(assert (=> b!1331085 m!1219811))

(declare-fun m!1219821 () Bool)

(assert (=> b!1331085 m!1219821))

(declare-fun m!1219823 () Bool)

(assert (=> mapNonEmpty!56614 m!1219823))

(assert (=> b!1331087 m!1219811))

(check-sat (not b!1331085) (not mapNonEmpty!56614) b_and!49501 (not b_lambda!23987) (not b_next!30717) tp_is_empty!36627 (not start!112358) (not b!1331090) (not b!1331093) (not b!1331092) (not b!1331089))
(check-sat b_and!49501 (not b_next!30717))
