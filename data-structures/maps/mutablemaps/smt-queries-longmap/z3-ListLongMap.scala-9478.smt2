; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112514 () Bool)

(assert start!112514)

(declare-fun b_free!30873 () Bool)

(declare-fun b_next!30873 () Bool)

(assert (=> start!112514 (= b_free!30873 (not b_next!30873))))

(declare-fun tp!108257 () Bool)

(declare-fun b_and!49757 () Bool)

(assert (=> start!112514 (= tp!108257 b_and!49757)))

(declare-fun b!1333761 () Bool)

(declare-fun res!885231 () Bool)

(declare-fun e!759754 () Bool)

(assert (=> b!1333761 (=> (not res!885231) (not e!759754))))

(declare-datatypes ((array!90413 0))(
  ( (array!90414 (arr!43668 (Array (_ BitVec 32) (_ BitVec 64))) (size!44219 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90413)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90413 (_ BitVec 32)) Bool)

(assert (=> b!1333761 (= res!885231 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1333762 () Bool)

(declare-fun res!885234 () Bool)

(assert (=> b!1333762 (=> (not res!885234) (not e!759754))))

(declare-datatypes ((V!54147 0))(
  ( (V!54148 (val!18466 Int)) )
))
(declare-datatypes ((ValueCell!17493 0))(
  ( (ValueCellFull!17493 (v!21101 V!54147)) (EmptyCell!17493) )
))
(declare-datatypes ((array!90415 0))(
  ( (array!90416 (arr!43669 (Array (_ BitVec 32) ValueCell!17493)) (size!44220 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90415)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!54147)

(declare-fun zeroValue!1262 () V!54147)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!23962 0))(
  ( (tuple2!23963 (_1!11991 (_ BitVec 64)) (_2!11991 V!54147)) )
))
(declare-datatypes ((List!31137 0))(
  ( (Nil!31134) (Cons!31133 (h!32342 tuple2!23962) (t!45376 List!31137)) )
))
(declare-datatypes ((ListLongMap!21631 0))(
  ( (ListLongMap!21632 (toList!10831 List!31137)) )
))
(declare-fun contains!8931 (ListLongMap!21631 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5748 (array!90413 array!90415 (_ BitVec 32) (_ BitVec 32) V!54147 V!54147 (_ BitVec 32) Int) ListLongMap!21631)

(assert (=> b!1333762 (= res!885234 (contains!8931 (getCurrentListMap!5748 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun mapNonEmpty!56848 () Bool)

(declare-fun mapRes!56848 () Bool)

(declare-fun tp!108256 () Bool)

(declare-fun e!759752 () Bool)

(assert (=> mapNonEmpty!56848 (= mapRes!56848 (and tp!108256 e!759752))))

(declare-fun mapValue!56848 () ValueCell!17493)

(declare-fun mapRest!56848 () (Array (_ BitVec 32) ValueCell!17493))

(declare-fun mapKey!56848 () (_ BitVec 32))

(assert (=> mapNonEmpty!56848 (= (arr!43669 _values!1320) (store mapRest!56848 mapKey!56848 mapValue!56848))))

(declare-fun mapIsEmpty!56848 () Bool)

(assert (=> mapIsEmpty!56848 mapRes!56848))

(declare-fun b!1333763 () Bool)

(declare-fun e!759753 () Bool)

(declare-fun tp_is_empty!36783 () Bool)

(assert (=> b!1333763 (= e!759753 tp_is_empty!36783)))

(declare-fun b!1333764 () Bool)

(declare-fun res!885236 () Bool)

(assert (=> b!1333764 (=> (not res!885236) (not e!759754))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1333764 (= res!885236 (validKeyInArray!0 (select (arr!43668 _keys!1590) from!1980)))))

(declare-fun b!1333766 () Bool)

(declare-fun e!759755 () Bool)

(assert (=> b!1333766 (= e!759755 (not true))))

(declare-fun lt!592150 () ListLongMap!21631)

(assert (=> b!1333766 (contains!8931 lt!592150 k0!1153)))

(declare-datatypes ((Unit!43809 0))(
  ( (Unit!43810) )
))
(declare-fun lt!592149 () Unit!43809)

(declare-fun lt!592151 () V!54147)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!296 ((_ BitVec 64) (_ BitVec 64) V!54147 ListLongMap!21631) Unit!43809)

(assert (=> b!1333766 (= lt!592149 (lemmaInListMapAfterAddingDiffThenInBefore!296 k0!1153 (select (arr!43668 _keys!1590) from!1980) lt!592151 lt!592150))))

(declare-fun b!1333767 () Bool)

(declare-fun res!885235 () Bool)

(assert (=> b!1333767 (=> (not res!885235) (not e!759754))))

(assert (=> b!1333767 (= res!885235 (and (= (size!44220 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44219 _keys!1590) (size!44220 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1333768 () Bool)

(declare-fun res!885229 () Bool)

(assert (=> b!1333768 (=> (not res!885229) (not e!759754))))

(assert (=> b!1333768 (= res!885229 (not (= (select (arr!43668 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1333769 () Bool)

(assert (=> b!1333769 (= e!759754 e!759755)))

(declare-fun res!885233 () Bool)

(assert (=> b!1333769 (=> (not res!885233) (not e!759755))))

(declare-fun +!4693 (ListLongMap!21631 tuple2!23962) ListLongMap!21631)

(assert (=> b!1333769 (= res!885233 (contains!8931 (+!4693 lt!592150 (tuple2!23963 (select (arr!43668 _keys!1590) from!1980) lt!592151)) k0!1153))))

(declare-fun getCurrentListMapNoExtraKeys!6411 (array!90413 array!90415 (_ BitVec 32) (_ BitVec 32) V!54147 V!54147 (_ BitVec 32) Int) ListLongMap!21631)

(assert (=> b!1333769 (= lt!592150 (getCurrentListMapNoExtraKeys!6411 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun get!22069 (ValueCell!17493 V!54147) V!54147)

(declare-fun dynLambda!3730 (Int (_ BitVec 64)) V!54147)

(assert (=> b!1333769 (= lt!592151 (get!22069 (select (arr!43669 _values!1320) from!1980) (dynLambda!3730 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1333770 () Bool)

(declare-fun res!885239 () Bool)

(assert (=> b!1333770 (=> (not res!885239) (not e!759754))))

(assert (=> b!1333770 (= res!885239 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44219 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1333771 () Bool)

(declare-fun res!885232 () Bool)

(assert (=> b!1333771 (=> (not res!885232) (not e!759754))))

(declare-datatypes ((List!31138 0))(
  ( (Nil!31135) (Cons!31134 (h!32343 (_ BitVec 64)) (t!45377 List!31138)) )
))
(declare-fun arrayNoDuplicates!0 (array!90413 (_ BitVec 32) List!31138) Bool)

(assert (=> b!1333771 (= res!885232 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31135))))

(declare-fun b!1333772 () Bool)

(declare-fun e!759757 () Bool)

(assert (=> b!1333772 (= e!759757 (and e!759753 mapRes!56848))))

(declare-fun condMapEmpty!56848 () Bool)

(declare-fun mapDefault!56848 () ValueCell!17493)

(assert (=> b!1333772 (= condMapEmpty!56848 (= (arr!43669 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17493)) mapDefault!56848)))))

(declare-fun b!1333773 () Bool)

(declare-fun res!885238 () Bool)

(assert (=> b!1333773 (=> (not res!885238) (not e!759755))))

(assert (=> b!1333773 (= res!885238 (not (= k0!1153 (select (arr!43668 _keys!1590) from!1980))))))

(declare-fun b!1333774 () Bool)

(assert (=> b!1333774 (= e!759752 tp_is_empty!36783)))

(declare-fun b!1333765 () Bool)

(declare-fun res!885230 () Bool)

(assert (=> b!1333765 (=> (not res!885230) (not e!759754))))

(assert (=> b!1333765 (= res!885230 (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun res!885237 () Bool)

(assert (=> start!112514 (=> (not res!885237) (not e!759754))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112514 (= res!885237 (validMask!0 mask!1998))))

(assert (=> start!112514 e!759754))

(declare-fun array_inv!32877 (array!90415) Bool)

(assert (=> start!112514 (and (array_inv!32877 _values!1320) e!759757)))

(assert (=> start!112514 true))

(declare-fun array_inv!32878 (array!90413) Bool)

(assert (=> start!112514 (array_inv!32878 _keys!1590)))

(assert (=> start!112514 tp!108257))

(assert (=> start!112514 tp_is_empty!36783))

(assert (= (and start!112514 res!885237) b!1333767))

(assert (= (and b!1333767 res!885235) b!1333761))

(assert (= (and b!1333761 res!885231) b!1333771))

(assert (= (and b!1333771 res!885232) b!1333770))

(assert (= (and b!1333770 res!885239) b!1333762))

(assert (= (and b!1333762 res!885234) b!1333768))

(assert (= (and b!1333768 res!885229) b!1333764))

(assert (= (and b!1333764 res!885236) b!1333765))

(assert (= (and b!1333765 res!885230) b!1333769))

(assert (= (and b!1333769 res!885233) b!1333773))

(assert (= (and b!1333773 res!885238) b!1333766))

(assert (= (and b!1333772 condMapEmpty!56848) mapIsEmpty!56848))

(assert (= (and b!1333772 (not condMapEmpty!56848)) mapNonEmpty!56848))

(get-info :version)

(assert (= (and mapNonEmpty!56848 ((_ is ValueCellFull!17493) mapValue!56848)) b!1333774))

(assert (= (and b!1333772 ((_ is ValueCellFull!17493) mapDefault!56848)) b!1333763))

(assert (= start!112514 b!1333772))

(declare-fun b_lambda!24089 () Bool)

(assert (=> (not b_lambda!24089) (not b!1333769)))

(declare-fun t!45375 () Bool)

(declare-fun tb!12043 () Bool)

(assert (=> (and start!112514 (= defaultEntry!1323 defaultEntry!1323) t!45375) tb!12043))

(declare-fun result!25149 () Bool)

(assert (=> tb!12043 (= result!25149 tp_is_empty!36783)))

(assert (=> b!1333769 t!45375))

(declare-fun b_and!49759 () Bool)

(assert (= b_and!49757 (and (=> t!45375 result!25149) b_and!49759)))

(declare-fun m!1222275 () Bool)

(assert (=> b!1333762 m!1222275))

(assert (=> b!1333762 m!1222275))

(declare-fun m!1222277 () Bool)

(assert (=> b!1333762 m!1222277))

(declare-fun m!1222279 () Bool)

(assert (=> b!1333769 m!1222279))

(declare-fun m!1222281 () Bool)

(assert (=> b!1333769 m!1222281))

(assert (=> b!1333769 m!1222279))

(declare-fun m!1222283 () Bool)

(assert (=> b!1333769 m!1222283))

(declare-fun m!1222285 () Bool)

(assert (=> b!1333769 m!1222285))

(declare-fun m!1222287 () Bool)

(assert (=> b!1333769 m!1222287))

(declare-fun m!1222289 () Bool)

(assert (=> b!1333769 m!1222289))

(declare-fun m!1222291 () Bool)

(assert (=> b!1333769 m!1222291))

(assert (=> b!1333769 m!1222281))

(assert (=> b!1333769 m!1222287))

(declare-fun m!1222293 () Bool)

(assert (=> b!1333766 m!1222293))

(assert (=> b!1333766 m!1222291))

(assert (=> b!1333766 m!1222291))

(declare-fun m!1222295 () Bool)

(assert (=> b!1333766 m!1222295))

(declare-fun m!1222297 () Bool)

(assert (=> start!112514 m!1222297))

(declare-fun m!1222299 () Bool)

(assert (=> start!112514 m!1222299))

(declare-fun m!1222301 () Bool)

(assert (=> start!112514 m!1222301))

(declare-fun m!1222303 () Bool)

(assert (=> b!1333761 m!1222303))

(assert (=> b!1333768 m!1222291))

(declare-fun m!1222305 () Bool)

(assert (=> mapNonEmpty!56848 m!1222305))

(assert (=> b!1333764 m!1222291))

(assert (=> b!1333764 m!1222291))

(declare-fun m!1222307 () Bool)

(assert (=> b!1333764 m!1222307))

(declare-fun m!1222309 () Bool)

(assert (=> b!1333771 m!1222309))

(assert (=> b!1333773 m!1222291))

(check-sat (not mapNonEmpty!56848) (not b!1333761) (not b_lambda!24089) (not b!1333771) (not b_next!30873) (not b!1333764) tp_is_empty!36783 (not b!1333766) (not b!1333762) (not start!112514) b_and!49759 (not b!1333769))
(check-sat b_and!49759 (not b_next!30873))
