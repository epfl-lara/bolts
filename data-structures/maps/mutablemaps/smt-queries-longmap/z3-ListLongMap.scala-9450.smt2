; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112346 () Bool)

(assert start!112346)

(declare-fun b_free!30705 () Bool)

(declare-fun b_next!30705 () Bool)

(assert (=> start!112346 (= b_free!30705 (not b_next!30705))))

(declare-fun tp!107753 () Bool)

(declare-fun b_and!49475 () Bool)

(assert (=> start!112346 (= tp!107753 b_and!49475)))

(declare-fun b!1330856 () Bool)

(declare-fun res!883196 () Bool)

(declare-fun e!758464 () Bool)

(assert (=> b!1330856 (=> (not res!883196) (not e!758464))))

(declare-datatypes ((array!90083 0))(
  ( (array!90084 (arr!43503 (Array (_ BitVec 32) (_ BitVec 64))) (size!44054 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90083)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1330856 (= res!883196 (validKeyInArray!0 (select (arr!43503 _keys!1590) from!1980)))))

(declare-fun b!1330857 () Bool)

(declare-fun e!758463 () Bool)

(declare-fun tp_is_empty!36615 () Bool)

(assert (=> b!1330857 (= e!758463 tp_is_empty!36615)))

(declare-fun b!1330858 () Bool)

(assert (=> b!1330858 (= e!758464 (not true))))

(declare-datatypes ((V!53923 0))(
  ( (V!53924 (val!18382 Int)) )
))
(declare-datatypes ((tuple2!23824 0))(
  ( (tuple2!23825 (_1!11922 (_ BitVec 64)) (_2!11922 V!53923)) )
))
(declare-datatypes ((List!31011 0))(
  ( (Nil!31008) (Cons!31007 (h!32216 tuple2!23824) (t!45136 List!31011)) )
))
(declare-datatypes ((ListLongMap!21493 0))(
  ( (ListLongMap!21494 (toList!10762 List!31011)) )
))
(declare-fun lt!591277 () ListLongMap!21493)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun contains!8862 (ListLongMap!21493 (_ BitVec 64)) Bool)

(assert (=> b!1330858 (contains!8862 lt!591277 k0!1153)))

(declare-datatypes ((Unit!43733 0))(
  ( (Unit!43734) )
))
(declare-fun lt!591281 () Unit!43733)

(declare-fun lt!591278 () V!53923)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!258 ((_ BitVec 64) (_ BitVec 64) V!53923 ListLongMap!21493) Unit!43733)

(assert (=> b!1330858 (= lt!591281 (lemmaInListMapAfterAddingDiffThenInBefore!258 k0!1153 (select (arr!43503 _keys!1590) from!1980) lt!591278 lt!591277))))

(declare-fun lt!591279 () ListLongMap!21493)

(assert (=> b!1330858 (contains!8862 lt!591279 k0!1153)))

(declare-fun lt!591280 () Unit!43733)

(declare-fun minValue!1262 () V!53923)

(assert (=> b!1330858 (= lt!591280 (lemmaInListMapAfterAddingDiffThenInBefore!258 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591279))))

(declare-fun +!4653 (ListLongMap!21493 tuple2!23824) ListLongMap!21493)

(assert (=> b!1330858 (= lt!591279 (+!4653 lt!591277 (tuple2!23825 (select (arr!43503 _keys!1590) from!1980) lt!591278)))))

(declare-datatypes ((ValueCell!17409 0))(
  ( (ValueCellFull!17409 (v!21017 V!53923)) (EmptyCell!17409) )
))
(declare-datatypes ((array!90085 0))(
  ( (array!90086 (arr!43504 (Array (_ BitVec 32) ValueCell!17409)) (size!44055 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90085)

(declare-fun defaultEntry!1323 () Int)

(declare-fun get!21973 (ValueCell!17409 V!53923) V!53923)

(declare-fun dynLambda!3690 (Int (_ BitVec 64)) V!53923)

(assert (=> b!1330858 (= lt!591278 (get!21973 (select (arr!43504 _values!1320) from!1980) (dynLambda!3690 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun zeroValue!1262 () V!53923)

(declare-fun getCurrentListMapNoExtraKeys!6371 (array!90083 array!90085 (_ BitVec 32) (_ BitVec 32) V!53923 V!53923 (_ BitVec 32) Int) ListLongMap!21493)

(assert (=> b!1330858 (= lt!591277 (getCurrentListMapNoExtraKeys!6371 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1330859 () Bool)

(declare-fun res!883197 () Bool)

(assert (=> b!1330859 (=> (not res!883197) (not e!758464))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90083 (_ BitVec 32)) Bool)

(assert (=> b!1330859 (= res!883197 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1330860 () Bool)

(declare-fun res!883200 () Bool)

(assert (=> b!1330860 (=> (not res!883200) (not e!758464))))

(assert (=> b!1330860 (= res!883200 (and (= (size!44055 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44054 _keys!1590) (size!44055 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1330861 () Bool)

(declare-fun res!883201 () Bool)

(assert (=> b!1330861 (=> (not res!883201) (not e!758464))))

(declare-datatypes ((List!31012 0))(
  ( (Nil!31009) (Cons!31008 (h!32217 (_ BitVec 64)) (t!45137 List!31012)) )
))
(declare-fun arrayNoDuplicates!0 (array!90083 (_ BitVec 32) List!31012) Bool)

(assert (=> b!1330861 (= res!883201 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31009))))

(declare-fun b!1330862 () Bool)

(declare-fun e!758461 () Bool)

(assert (=> b!1330862 (= e!758461 tp_is_empty!36615)))

(declare-fun res!883195 () Bool)

(assert (=> start!112346 (=> (not res!883195) (not e!758464))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112346 (= res!883195 (validMask!0 mask!1998))))

(assert (=> start!112346 e!758464))

(declare-fun e!758460 () Bool)

(declare-fun array_inv!32767 (array!90085) Bool)

(assert (=> start!112346 (and (array_inv!32767 _values!1320) e!758460)))

(assert (=> start!112346 true))

(declare-fun array_inv!32768 (array!90083) Bool)

(assert (=> start!112346 (array_inv!32768 _keys!1590)))

(assert (=> start!112346 tp!107753))

(assert (=> start!112346 tp_is_empty!36615))

(declare-fun mapIsEmpty!56596 () Bool)

(declare-fun mapRes!56596 () Bool)

(assert (=> mapIsEmpty!56596 mapRes!56596))

(declare-fun b!1330863 () Bool)

(declare-fun res!883198 () Bool)

(assert (=> b!1330863 (=> (not res!883198) (not e!758464))))

(assert (=> b!1330863 (= res!883198 (not (= (select (arr!43503 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1330864 () Bool)

(declare-fun res!883194 () Bool)

(assert (=> b!1330864 (=> (not res!883194) (not e!758464))))

(assert (=> b!1330864 (= res!883194 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44054 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1330865 () Bool)

(declare-fun res!883199 () Bool)

(assert (=> b!1330865 (=> (not res!883199) (not e!758464))))

(assert (=> b!1330865 (= res!883199 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!56596 () Bool)

(declare-fun tp!107752 () Bool)

(assert (=> mapNonEmpty!56596 (= mapRes!56596 (and tp!107752 e!758461))))

(declare-fun mapRest!56596 () (Array (_ BitVec 32) ValueCell!17409))

(declare-fun mapValue!56596 () ValueCell!17409)

(declare-fun mapKey!56596 () (_ BitVec 32))

(assert (=> mapNonEmpty!56596 (= (arr!43504 _values!1320) (store mapRest!56596 mapKey!56596 mapValue!56596))))

(declare-fun b!1330866 () Bool)

(assert (=> b!1330866 (= e!758460 (and e!758463 mapRes!56596))))

(declare-fun condMapEmpty!56596 () Bool)

(declare-fun mapDefault!56596 () ValueCell!17409)

(assert (=> b!1330866 (= condMapEmpty!56596 (= (arr!43504 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17409)) mapDefault!56596)))))

(declare-fun b!1330867 () Bool)

(declare-fun res!883202 () Bool)

(assert (=> b!1330867 (=> (not res!883202) (not e!758464))))

(declare-fun getCurrentListMap!5687 (array!90083 array!90085 (_ BitVec 32) (_ BitVec 32) V!53923 V!53923 (_ BitVec 32) Int) ListLongMap!21493)

(assert (=> b!1330867 (= res!883202 (contains!8862 (getCurrentListMap!5687 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(assert (= (and start!112346 res!883195) b!1330860))

(assert (= (and b!1330860 res!883200) b!1330859))

(assert (= (and b!1330859 res!883197) b!1330861))

(assert (= (and b!1330861 res!883201) b!1330864))

(assert (= (and b!1330864 res!883194) b!1330867))

(assert (= (and b!1330867 res!883202) b!1330863))

(assert (= (and b!1330863 res!883198) b!1330856))

(assert (= (and b!1330856 res!883196) b!1330865))

(assert (= (and b!1330865 res!883199) b!1330858))

(assert (= (and b!1330866 condMapEmpty!56596) mapIsEmpty!56596))

(assert (= (and b!1330866 (not condMapEmpty!56596)) mapNonEmpty!56596))

(get-info :version)

(assert (= (and mapNonEmpty!56596 ((_ is ValueCellFull!17409) mapValue!56596)) b!1330862))

(assert (= (and b!1330866 ((_ is ValueCellFull!17409) mapDefault!56596)) b!1330857))

(assert (= start!112346 b!1330866))

(declare-fun b_lambda!23975 () Bool)

(assert (=> (not b_lambda!23975) (not b!1330858)))

(declare-fun t!45135 () Bool)

(declare-fun tb!11929 () Bool)

(assert (=> (and start!112346 (= defaultEntry!1323 defaultEntry!1323) t!45135) tb!11929))

(declare-fun result!24921 () Bool)

(assert (=> tb!11929 (= result!24921 tp_is_empty!36615)))

(assert (=> b!1330858 t!45135))

(declare-fun b_and!49477 () Bool)

(assert (= b_and!49475 (and (=> t!45135 result!24921) b_and!49477)))

(declare-fun m!1219559 () Bool)

(assert (=> b!1330861 m!1219559))

(declare-fun m!1219561 () Bool)

(assert (=> b!1330867 m!1219561))

(assert (=> b!1330867 m!1219561))

(declare-fun m!1219563 () Bool)

(assert (=> b!1330867 m!1219563))

(declare-fun m!1219565 () Bool)

(assert (=> b!1330859 m!1219565))

(declare-fun m!1219567 () Bool)

(assert (=> mapNonEmpty!56596 m!1219567))

(declare-fun m!1219569 () Bool)

(assert (=> b!1330863 m!1219569))

(assert (=> b!1330856 m!1219569))

(assert (=> b!1330856 m!1219569))

(declare-fun m!1219571 () Bool)

(assert (=> b!1330856 m!1219571))

(declare-fun m!1219573 () Bool)

(assert (=> start!112346 m!1219573))

(declare-fun m!1219575 () Bool)

(assert (=> start!112346 m!1219575))

(declare-fun m!1219577 () Bool)

(assert (=> start!112346 m!1219577))

(assert (=> b!1330858 m!1219569))

(declare-fun m!1219579 () Bool)

(assert (=> b!1330858 m!1219579))

(declare-fun m!1219581 () Bool)

(assert (=> b!1330858 m!1219581))

(declare-fun m!1219583 () Bool)

(assert (=> b!1330858 m!1219583))

(assert (=> b!1330858 m!1219581))

(declare-fun m!1219585 () Bool)

(assert (=> b!1330858 m!1219585))

(declare-fun m!1219587 () Bool)

(assert (=> b!1330858 m!1219587))

(declare-fun m!1219589 () Bool)

(assert (=> b!1330858 m!1219589))

(declare-fun m!1219591 () Bool)

(assert (=> b!1330858 m!1219591))

(declare-fun m!1219593 () Bool)

(assert (=> b!1330858 m!1219593))

(declare-fun m!1219595 () Bool)

(assert (=> b!1330858 m!1219595))

(assert (=> b!1330858 m!1219583))

(assert (=> b!1330858 m!1219569))

(check-sat (not b_next!30705) (not b!1330858) (not b!1330859) (not start!112346) (not mapNonEmpty!56596) tp_is_empty!36615 (not b!1330861) (not b!1330867) (not b!1330856) b_and!49477 (not b_lambda!23975))
(check-sat b_and!49477 (not b_next!30705))
