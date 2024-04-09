; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112538 () Bool)

(assert start!112538)

(declare-fun b_free!30897 () Bool)

(declare-fun b_next!30897 () Bool)

(assert (=> start!112538 (= b_free!30897 (not b_next!30897))))

(declare-fun tp!108329 () Bool)

(declare-fun b_and!49805 () Bool)

(assert (=> start!112538 (= tp!108329 b_and!49805)))

(declare-fun mapIsEmpty!56884 () Bool)

(declare-fun mapRes!56884 () Bool)

(assert (=> mapIsEmpty!56884 mapRes!56884))

(declare-fun mapNonEmpty!56884 () Bool)

(declare-fun tp!108328 () Bool)

(declare-fun e!759971 () Bool)

(assert (=> mapNonEmpty!56884 (= mapRes!56884 (and tp!108328 e!759971))))

(declare-datatypes ((V!54179 0))(
  ( (V!54180 (val!18478 Int)) )
))
(declare-datatypes ((ValueCell!17505 0))(
  ( (ValueCellFull!17505 (v!21113 V!54179)) (EmptyCell!17505) )
))
(declare-datatypes ((array!90459 0))(
  ( (array!90460 (arr!43691 (Array (_ BitVec 32) ValueCell!17505)) (size!44242 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90459)

(declare-fun mapValue!56884 () ValueCell!17505)

(declare-fun mapKey!56884 () (_ BitVec 32))

(declare-fun mapRest!56884 () (Array (_ BitVec 32) ValueCell!17505))

(assert (=> mapNonEmpty!56884 (= (arr!43691 _values!1320) (store mapRest!56884 mapKey!56884 mapValue!56884))))

(declare-fun b!1334289 () Bool)

(declare-fun res!885635 () Bool)

(declare-fun e!759973 () Bool)

(assert (=> b!1334289 (=> (not res!885635) (not e!759973))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!90461 0))(
  ( (array!90462 (arr!43692 (Array (_ BitVec 32) (_ BitVec 64))) (size!44243 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90461)

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1334289 (= res!885635 (not (= (select (arr!43692 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1334290 () Bool)

(declare-fun res!885632 () Bool)

(assert (=> b!1334290 (=> (not res!885632) (not e!759973))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1334290 (= res!885632 (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun b!1334291 () Bool)

(declare-fun res!885627 () Bool)

(assert (=> b!1334291 (=> (not res!885627) (not e!759973))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90461 (_ BitVec 32)) Bool)

(assert (=> b!1334291 (= res!885627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1334292 () Bool)

(declare-fun res!885628 () Bool)

(assert (=> b!1334292 (=> (not res!885628) (not e!759973))))

(assert (=> b!1334292 (= res!885628 (and (= (size!44242 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44243 _keys!1590) (size!44242 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1334293 () Bool)

(declare-fun e!759970 () Bool)

(declare-fun e!759968 () Bool)

(assert (=> b!1334293 (= e!759970 (and e!759968 mapRes!56884))))

(declare-fun condMapEmpty!56884 () Bool)

(declare-fun mapDefault!56884 () ValueCell!17505)

(assert (=> b!1334293 (= condMapEmpty!56884 (= (arr!43691 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17505)) mapDefault!56884)))))

(declare-fun b!1334294 () Bool)

(declare-fun res!885633 () Bool)

(assert (=> b!1334294 (=> (not res!885633) (not e!759973))))

(declare-datatypes ((List!31153 0))(
  ( (Nil!31150) (Cons!31149 (h!32358 (_ BitVec 64)) (t!45416 List!31153)) )
))
(declare-fun arrayNoDuplicates!0 (array!90461 (_ BitVec 32) List!31153) Bool)

(assert (=> b!1334294 (= res!885633 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31150))))

(declare-fun b!1334295 () Bool)

(declare-fun e!759969 () Bool)

(assert (=> b!1334295 (= e!759973 e!759969)))

(declare-fun res!885625 () Bool)

(assert (=> b!1334295 (=> (not res!885625) (not e!759969))))

(declare-datatypes ((tuple2!23982 0))(
  ( (tuple2!23983 (_1!12001 (_ BitVec 64)) (_2!12001 V!54179)) )
))
(declare-datatypes ((List!31154 0))(
  ( (Nil!31151) (Cons!31150 (h!32359 tuple2!23982) (t!45417 List!31154)) )
))
(declare-datatypes ((ListLongMap!21651 0))(
  ( (ListLongMap!21652 (toList!10841 List!31154)) )
))
(declare-fun lt!592259 () ListLongMap!21651)

(declare-fun lt!592257 () V!54179)

(declare-fun contains!8941 (ListLongMap!21651 (_ BitVec 64)) Bool)

(declare-fun +!4700 (ListLongMap!21651 tuple2!23982) ListLongMap!21651)

(assert (=> b!1334295 (= res!885625 (contains!8941 (+!4700 lt!592259 (tuple2!23983 (select (arr!43692 _keys!1590) from!1980) lt!592257)) k0!1153))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54179)

(declare-fun zeroValue!1262 () V!54179)

(declare-fun getCurrentListMapNoExtraKeys!6418 (array!90461 array!90459 (_ BitVec 32) (_ BitVec 32) V!54179 V!54179 (_ BitVec 32) Int) ListLongMap!21651)

(assert (=> b!1334295 (= lt!592259 (getCurrentListMapNoExtraKeys!6418 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun get!22084 (ValueCell!17505 V!54179) V!54179)

(declare-fun dynLambda!3737 (Int (_ BitVec 64)) V!54179)

(assert (=> b!1334295 (= lt!592257 (get!22084 (select (arr!43691 _values!1320) from!1980) (dynLambda!3737 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1334296 () Bool)

(declare-fun tp_is_empty!36807 () Bool)

(assert (=> b!1334296 (= e!759971 tp_is_empty!36807)))

(declare-fun b!1334297 () Bool)

(assert (=> b!1334297 (= e!759969 (not true))))

(assert (=> b!1334297 (contains!8941 lt!592259 k0!1153)))

(declare-datatypes ((Unit!43823 0))(
  ( (Unit!43824) )
))
(declare-fun lt!592258 () Unit!43823)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!303 ((_ BitVec 64) (_ BitVec 64) V!54179 ListLongMap!21651) Unit!43823)

(assert (=> b!1334297 (= lt!592258 (lemmaInListMapAfterAddingDiffThenInBefore!303 k0!1153 (select (arr!43692 _keys!1590) from!1980) lt!592257 lt!592259))))

(declare-fun b!1334298 () Bool)

(declare-fun res!885626 () Bool)

(assert (=> b!1334298 (=> (not res!885626) (not e!759973))))

(declare-fun getCurrentListMap!5754 (array!90461 array!90459 (_ BitVec 32) (_ BitVec 32) V!54179 V!54179 (_ BitVec 32) Int) ListLongMap!21651)

(assert (=> b!1334298 (= res!885626 (contains!8941 (getCurrentListMap!5754 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun res!885631 () Bool)

(assert (=> start!112538 (=> (not res!885631) (not e!759973))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112538 (= res!885631 (validMask!0 mask!1998))))

(assert (=> start!112538 e!759973))

(declare-fun array_inv!32887 (array!90459) Bool)

(assert (=> start!112538 (and (array_inv!32887 _values!1320) e!759970)))

(assert (=> start!112538 true))

(declare-fun array_inv!32888 (array!90461) Bool)

(assert (=> start!112538 (array_inv!32888 _keys!1590)))

(assert (=> start!112538 tp!108329))

(assert (=> start!112538 tp_is_empty!36807))

(declare-fun b!1334299 () Bool)

(assert (=> b!1334299 (= e!759968 tp_is_empty!36807)))

(declare-fun b!1334300 () Bool)

(declare-fun res!885629 () Bool)

(assert (=> b!1334300 (=> (not res!885629) (not e!759973))))

(assert (=> b!1334300 (= res!885629 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44243 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1334301 () Bool)

(declare-fun res!885634 () Bool)

(assert (=> b!1334301 (=> (not res!885634) (not e!759973))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1334301 (= res!885634 (validKeyInArray!0 (select (arr!43692 _keys!1590) from!1980)))))

(declare-fun b!1334302 () Bool)

(declare-fun res!885630 () Bool)

(assert (=> b!1334302 (=> (not res!885630) (not e!759969))))

(assert (=> b!1334302 (= res!885630 (not (= k0!1153 (select (arr!43692 _keys!1590) from!1980))))))

(assert (= (and start!112538 res!885631) b!1334292))

(assert (= (and b!1334292 res!885628) b!1334291))

(assert (= (and b!1334291 res!885627) b!1334294))

(assert (= (and b!1334294 res!885633) b!1334300))

(assert (= (and b!1334300 res!885629) b!1334298))

(assert (= (and b!1334298 res!885626) b!1334289))

(assert (= (and b!1334289 res!885635) b!1334301))

(assert (= (and b!1334301 res!885634) b!1334290))

(assert (= (and b!1334290 res!885632) b!1334295))

(assert (= (and b!1334295 res!885625) b!1334302))

(assert (= (and b!1334302 res!885630) b!1334297))

(assert (= (and b!1334293 condMapEmpty!56884) mapIsEmpty!56884))

(assert (= (and b!1334293 (not condMapEmpty!56884)) mapNonEmpty!56884))

(get-info :version)

(assert (= (and mapNonEmpty!56884 ((_ is ValueCellFull!17505) mapValue!56884)) b!1334296))

(assert (= (and b!1334293 ((_ is ValueCellFull!17505) mapDefault!56884)) b!1334299))

(assert (= start!112538 b!1334293))

(declare-fun b_lambda!24113 () Bool)

(assert (=> (not b_lambda!24113) (not b!1334295)))

(declare-fun t!45415 () Bool)

(declare-fun tb!12067 () Bool)

(assert (=> (and start!112538 (= defaultEntry!1323 defaultEntry!1323) t!45415) tb!12067))

(declare-fun result!25197 () Bool)

(assert (=> tb!12067 (= result!25197 tp_is_empty!36807)))

(assert (=> b!1334295 t!45415))

(declare-fun b_and!49807 () Bool)

(assert (= b_and!49805 (and (=> t!45415 result!25197) b_and!49807)))

(declare-fun m!1222707 () Bool)

(assert (=> b!1334295 m!1222707))

(declare-fun m!1222709 () Bool)

(assert (=> b!1334295 m!1222709))

(assert (=> b!1334295 m!1222707))

(declare-fun m!1222711 () Bool)

(assert (=> b!1334295 m!1222711))

(declare-fun m!1222713 () Bool)

(assert (=> b!1334295 m!1222713))

(assert (=> b!1334295 m!1222713))

(declare-fun m!1222715 () Bool)

(assert (=> b!1334295 m!1222715))

(declare-fun m!1222717 () Bool)

(assert (=> b!1334295 m!1222717))

(assert (=> b!1334295 m!1222709))

(declare-fun m!1222719 () Bool)

(assert (=> b!1334295 m!1222719))

(declare-fun m!1222721 () Bool)

(assert (=> b!1334294 m!1222721))

(assert (=> b!1334301 m!1222719))

(assert (=> b!1334301 m!1222719))

(declare-fun m!1222723 () Bool)

(assert (=> b!1334301 m!1222723))

(declare-fun m!1222725 () Bool)

(assert (=> mapNonEmpty!56884 m!1222725))

(declare-fun m!1222727 () Bool)

(assert (=> b!1334297 m!1222727))

(assert (=> b!1334297 m!1222719))

(assert (=> b!1334297 m!1222719))

(declare-fun m!1222729 () Bool)

(assert (=> b!1334297 m!1222729))

(declare-fun m!1222731 () Bool)

(assert (=> b!1334291 m!1222731))

(assert (=> b!1334302 m!1222719))

(assert (=> b!1334289 m!1222719))

(declare-fun m!1222733 () Bool)

(assert (=> b!1334298 m!1222733))

(assert (=> b!1334298 m!1222733))

(declare-fun m!1222735 () Bool)

(assert (=> b!1334298 m!1222735))

(declare-fun m!1222737 () Bool)

(assert (=> start!112538 m!1222737))

(declare-fun m!1222739 () Bool)

(assert (=> start!112538 m!1222739))

(declare-fun m!1222741 () Bool)

(assert (=> start!112538 m!1222741))

(check-sat (not b!1334294) (not start!112538) (not b!1334291) (not b_next!30897) tp_is_empty!36807 (not b_lambda!24113) b_and!49807 (not b!1334298) (not b!1334297) (not b!1334295) (not b!1334301) (not mapNonEmpty!56884))
(check-sat b_and!49807 (not b_next!30897))
