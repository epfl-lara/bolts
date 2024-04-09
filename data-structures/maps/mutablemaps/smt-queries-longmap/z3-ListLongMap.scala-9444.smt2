; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112310 () Bool)

(assert start!112310)

(declare-fun b_free!30669 () Bool)

(declare-fun b_next!30669 () Bool)

(assert (=> start!112310 (= b_free!30669 (not b_next!30669))))

(declare-fun tp!107644 () Bool)

(declare-fun b_and!49403 () Bool)

(assert (=> start!112310 (= tp!107644 b_and!49403)))

(declare-fun b!1330172 () Bool)

(declare-fun res!882708 () Bool)

(declare-fun e!758193 () Bool)

(assert (=> b!1330172 (=> (not res!882708) (not e!758193))))

(declare-datatypes ((array!90013 0))(
  ( (array!90014 (arr!43468 (Array (_ BitVec 32) (_ BitVec 64))) (size!44019 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90013)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1330172 (= res!882708 (validKeyInArray!0 (select (arr!43468 _keys!1590) from!1980)))))

(declare-fun res!882715 () Bool)

(assert (=> start!112310 (=> (not res!882715) (not e!758193))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112310 (= res!882715 (validMask!0 mask!1998))))

(assert (=> start!112310 e!758193))

(declare-datatypes ((V!53875 0))(
  ( (V!53876 (val!18364 Int)) )
))
(declare-datatypes ((ValueCell!17391 0))(
  ( (ValueCellFull!17391 (v!20999 V!53875)) (EmptyCell!17391) )
))
(declare-datatypes ((array!90015 0))(
  ( (array!90016 (arr!43469 (Array (_ BitVec 32) ValueCell!17391)) (size!44020 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90015)

(declare-fun e!758192 () Bool)

(declare-fun array_inv!32749 (array!90015) Bool)

(assert (=> start!112310 (and (array_inv!32749 _values!1320) e!758192)))

(assert (=> start!112310 true))

(declare-fun array_inv!32750 (array!90013) Bool)

(assert (=> start!112310 (array_inv!32750 _keys!1590)))

(assert (=> start!112310 tp!107644))

(declare-fun tp_is_empty!36579 () Bool)

(assert (=> start!112310 tp_is_empty!36579))

(declare-fun b!1330173 () Bool)

(declare-fun res!882716 () Bool)

(assert (=> b!1330173 (=> (not res!882716) (not e!758193))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!53875)

(declare-fun zeroValue!1262 () V!53875)

(declare-datatypes ((tuple2!23796 0))(
  ( (tuple2!23797 (_1!11908 (_ BitVec 64)) (_2!11908 V!53875)) )
))
(declare-datatypes ((List!30985 0))(
  ( (Nil!30982) (Cons!30981 (h!32190 tuple2!23796) (t!45074 List!30985)) )
))
(declare-datatypes ((ListLongMap!21465 0))(
  ( (ListLongMap!21466 (toList!10748 List!30985)) )
))
(declare-fun contains!8848 (ListLongMap!21465 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5678 (array!90013 array!90015 (_ BitVec 32) (_ BitVec 32) V!53875 V!53875 (_ BitVec 32) Int) ListLongMap!21465)

(assert (=> b!1330173 (= res!882716 (contains!8848 (getCurrentListMap!5678 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1330174 () Bool)

(declare-fun res!882713 () Bool)

(assert (=> b!1330174 (=> (not res!882713) (not e!758193))))

(assert (=> b!1330174 (= res!882713 (not (= (select (arr!43468 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1330175 () Bool)

(declare-fun e!758191 () Bool)

(declare-fun mapRes!56542 () Bool)

(assert (=> b!1330175 (= e!758192 (and e!758191 mapRes!56542))))

(declare-fun condMapEmpty!56542 () Bool)

(declare-fun mapDefault!56542 () ValueCell!17391)

(assert (=> b!1330175 (= condMapEmpty!56542 (= (arr!43469 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17391)) mapDefault!56542)))))

(declare-fun b!1330176 () Bool)

(declare-fun res!882710 () Bool)

(assert (=> b!1330176 (=> (not res!882710) (not e!758193))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90013 (_ BitVec 32)) Bool)

(assert (=> b!1330176 (= res!882710 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1330177 () Bool)

(declare-fun res!882712 () Bool)

(assert (=> b!1330177 (=> (not res!882712) (not e!758193))))

(declare-datatypes ((List!30986 0))(
  ( (Nil!30983) (Cons!30982 (h!32191 (_ BitVec 64)) (t!45075 List!30986)) )
))
(declare-fun arrayNoDuplicates!0 (array!90013 (_ BitVec 32) List!30986) Bool)

(assert (=> b!1330177 (= res!882712 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30983))))

(declare-fun b!1330178 () Bool)

(declare-fun e!758190 () Bool)

(assert (=> b!1330178 (= e!758190 tp_is_empty!36579)))

(declare-fun mapNonEmpty!56542 () Bool)

(declare-fun tp!107645 () Bool)

(assert (=> mapNonEmpty!56542 (= mapRes!56542 (and tp!107645 e!758190))))

(declare-fun mapKey!56542 () (_ BitVec 32))

(declare-fun mapRest!56542 () (Array (_ BitVec 32) ValueCell!17391))

(declare-fun mapValue!56542 () ValueCell!17391)

(assert (=> mapNonEmpty!56542 (= (arr!43469 _values!1320) (store mapRest!56542 mapKey!56542 mapValue!56542))))

(declare-fun b!1330179 () Bool)

(declare-fun res!882714 () Bool)

(assert (=> b!1330179 (=> (not res!882714) (not e!758193))))

(assert (=> b!1330179 (= res!882714 (and (= (size!44020 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44019 _keys!1590) (size!44020 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1330180 () Bool)

(assert (=> b!1330180 (= e!758191 tp_is_empty!36579)))

(declare-fun b!1330181 () Bool)

(declare-fun res!882709 () Bool)

(assert (=> b!1330181 (=> (not res!882709) (not e!758193))))

(assert (=> b!1330181 (= res!882709 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!56542 () Bool)

(assert (=> mapIsEmpty!56542 mapRes!56542))

(declare-fun b!1330182 () Bool)

(assert (=> b!1330182 (= e!758193 (not true))))

(declare-fun lt!591020 () ListLongMap!21465)

(assert (=> b!1330182 (contains!8848 lt!591020 k0!1153)))

(declare-datatypes ((Unit!43709 0))(
  ( (Unit!43710) )
))
(declare-fun lt!591019 () Unit!43709)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!246 ((_ BitVec 64) (_ BitVec 64) V!53875 ListLongMap!21465) Unit!43709)

(assert (=> b!1330182 (= lt!591019 (lemmaInListMapAfterAddingDiffThenInBefore!246 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591020))))

(declare-fun +!4641 (ListLongMap!21465 tuple2!23796) ListLongMap!21465)

(declare-fun getCurrentListMapNoExtraKeys!6359 (array!90013 array!90015 (_ BitVec 32) (_ BitVec 32) V!53875 V!53875 (_ BitVec 32) Int) ListLongMap!21465)

(declare-fun get!21949 (ValueCell!17391 V!53875) V!53875)

(declare-fun dynLambda!3678 (Int (_ BitVec 64)) V!53875)

(assert (=> b!1330182 (= lt!591020 (+!4641 (getCurrentListMapNoExtraKeys!6359 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23797 (select (arr!43468 _keys!1590) from!1980) (get!21949 (select (arr!43469 _values!1320) from!1980) (dynLambda!3678 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1330183 () Bool)

(declare-fun res!882711 () Bool)

(assert (=> b!1330183 (=> (not res!882711) (not e!758193))))

(assert (=> b!1330183 (= res!882711 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44019 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!112310 res!882715) b!1330179))

(assert (= (and b!1330179 res!882714) b!1330176))

(assert (= (and b!1330176 res!882710) b!1330177))

(assert (= (and b!1330177 res!882712) b!1330183))

(assert (= (and b!1330183 res!882711) b!1330173))

(assert (= (and b!1330173 res!882716) b!1330174))

(assert (= (and b!1330174 res!882713) b!1330172))

(assert (= (and b!1330172 res!882708) b!1330181))

(assert (= (and b!1330181 res!882709) b!1330182))

(assert (= (and b!1330175 condMapEmpty!56542) mapIsEmpty!56542))

(assert (= (and b!1330175 (not condMapEmpty!56542)) mapNonEmpty!56542))

(get-info :version)

(assert (= (and mapNonEmpty!56542 ((_ is ValueCellFull!17391) mapValue!56542)) b!1330178))

(assert (= (and b!1330175 ((_ is ValueCellFull!17391) mapDefault!56542)) b!1330180))

(assert (= start!112310 b!1330175))

(declare-fun b_lambda!23939 () Bool)

(assert (=> (not b_lambda!23939) (not b!1330182)))

(declare-fun t!45073 () Bool)

(declare-fun tb!11893 () Bool)

(assert (=> (and start!112310 (= defaultEntry!1323 defaultEntry!1323) t!45073) tb!11893))

(declare-fun result!24849 () Bool)

(assert (=> tb!11893 (= result!24849 tp_is_empty!36579)))

(assert (=> b!1330182 t!45073))

(declare-fun b_and!49405 () Bool)

(assert (= b_and!49403 (and (=> t!45073 result!24849) b_and!49405)))

(declare-fun m!1218883 () Bool)

(assert (=> b!1330173 m!1218883))

(assert (=> b!1330173 m!1218883))

(declare-fun m!1218885 () Bool)

(assert (=> b!1330173 m!1218885))

(declare-fun m!1218887 () Bool)

(assert (=> b!1330177 m!1218887))

(declare-fun m!1218889 () Bool)

(assert (=> mapNonEmpty!56542 m!1218889))

(declare-fun m!1218891 () Bool)

(assert (=> b!1330176 m!1218891))

(declare-fun m!1218893 () Bool)

(assert (=> start!112310 m!1218893))

(declare-fun m!1218895 () Bool)

(assert (=> start!112310 m!1218895))

(declare-fun m!1218897 () Bool)

(assert (=> start!112310 m!1218897))

(declare-fun m!1218899 () Bool)

(assert (=> b!1330174 m!1218899))

(declare-fun m!1218901 () Bool)

(assert (=> b!1330182 m!1218901))

(declare-fun m!1218903 () Bool)

(assert (=> b!1330182 m!1218903))

(declare-fun m!1218905 () Bool)

(assert (=> b!1330182 m!1218905))

(declare-fun m!1218907 () Bool)

(assert (=> b!1330182 m!1218907))

(assert (=> b!1330182 m!1218901))

(declare-fun m!1218909 () Bool)

(assert (=> b!1330182 m!1218909))

(declare-fun m!1218911 () Bool)

(assert (=> b!1330182 m!1218911))

(assert (=> b!1330182 m!1218907))

(assert (=> b!1330182 m!1218899))

(declare-fun m!1218913 () Bool)

(assert (=> b!1330182 m!1218913))

(assert (=> b!1330182 m!1218903))

(assert (=> b!1330172 m!1218899))

(assert (=> b!1330172 m!1218899))

(declare-fun m!1218915 () Bool)

(assert (=> b!1330172 m!1218915))

(check-sat (not mapNonEmpty!56542) b_and!49405 (not b!1330177) (not b_next!30669) (not b!1330182) (not b!1330172) (not b!1330173) (not b!1330176) tp_is_empty!36579 (not b_lambda!23939) (not start!112310))
(check-sat b_and!49405 (not b_next!30669))
