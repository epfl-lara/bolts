; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112544 () Bool)

(assert start!112544)

(declare-fun b_free!30903 () Bool)

(declare-fun b_next!30903 () Bool)

(assert (=> start!112544 (= b_free!30903 (not b_next!30903))))

(declare-fun tp!108346 () Bool)

(declare-fun b_and!49817 () Bool)

(assert (=> start!112544 (= tp!108346 b_and!49817)))

(declare-fun b!1334421 () Bool)

(declare-fun e!760023 () Bool)

(declare-fun from!1980 () (_ BitVec 32))

(assert (=> b!1334421 (= e!760023 (not (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!54187 0))(
  ( (V!54188 (val!18481 Int)) )
))
(declare-datatypes ((tuple2!23988 0))(
  ( (tuple2!23989 (_1!12004 (_ BitVec 64)) (_2!12004 V!54187)) )
))
(declare-datatypes ((List!31158 0))(
  ( (Nil!31155) (Cons!31154 (h!32363 tuple2!23988) (t!45427 List!31158)) )
))
(declare-datatypes ((ListLongMap!21657 0))(
  ( (ListLongMap!21658 (toList!10844 List!31158)) )
))
(declare-fun lt!592284 () ListLongMap!21657)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun contains!8944 (ListLongMap!21657 (_ BitVec 64)) Bool)

(assert (=> b!1334421 (contains!8944 lt!592284 k0!1153)))

(declare-datatypes ((array!90471 0))(
  ( (array!90472 (arr!43697 (Array (_ BitVec 32) (_ BitVec 64))) (size!44248 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90471)

(declare-datatypes ((Unit!43827 0))(
  ( (Unit!43828) )
))
(declare-fun lt!592285 () Unit!43827)

(declare-fun lt!592286 () V!54187)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!305 ((_ BitVec 64) (_ BitVec 64) V!54187 ListLongMap!21657) Unit!43827)

(assert (=> b!1334421 (= lt!592285 (lemmaInListMapAfterAddingDiffThenInBefore!305 k0!1153 (select (arr!43697 _keys!1590) from!1980) lt!592286 lt!592284))))

(declare-fun b!1334422 () Bool)

(declare-fun res!885727 () Bool)

(declare-fun e!760027 () Bool)

(assert (=> b!1334422 (=> (not res!885727) (not e!760027))))

(declare-datatypes ((ValueCell!17508 0))(
  ( (ValueCellFull!17508 (v!21116 V!54187)) (EmptyCell!17508) )
))
(declare-datatypes ((array!90473 0))(
  ( (array!90474 (arr!43698 (Array (_ BitVec 32) ValueCell!17508)) (size!44249 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90473)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54187)

(declare-fun zeroValue!1262 () V!54187)

(declare-fun getCurrentListMap!5755 (array!90471 array!90473 (_ BitVec 32) (_ BitVec 32) V!54187 V!54187 (_ BitVec 32) Int) ListLongMap!21657)

(assert (=> b!1334422 (= res!885727 (contains!8944 (getCurrentListMap!5755 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1334423 () Bool)

(declare-fun res!885734 () Bool)

(assert (=> b!1334423 (=> (not res!885734) (not e!760027))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1334423 (= res!885734 (validKeyInArray!0 (select (arr!43697 _keys!1590) from!1980)))))

(declare-fun b!1334424 () Bool)

(declare-fun res!885729 () Bool)

(assert (=> b!1334424 (=> (not res!885729) (not e!760027))))

(assert (=> b!1334424 (= res!885729 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44248 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!885726 () Bool)

(assert (=> start!112544 (=> (not res!885726) (not e!760027))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112544 (= res!885726 (validMask!0 mask!1998))))

(assert (=> start!112544 e!760027))

(declare-fun e!760025 () Bool)

(declare-fun array_inv!32889 (array!90473) Bool)

(assert (=> start!112544 (and (array_inv!32889 _values!1320) e!760025)))

(assert (=> start!112544 true))

(declare-fun array_inv!32890 (array!90471) Bool)

(assert (=> start!112544 (array_inv!32890 _keys!1590)))

(assert (=> start!112544 tp!108346))

(declare-fun tp_is_empty!36813 () Bool)

(assert (=> start!112544 tp_is_empty!36813))

(declare-fun b!1334425 () Bool)

(declare-fun res!885725 () Bool)

(assert (=> b!1334425 (=> (not res!885725) (not e!760027))))

(assert (=> b!1334425 (= res!885725 (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun b!1334426 () Bool)

(declare-fun e!760024 () Bool)

(declare-fun mapRes!56893 () Bool)

(assert (=> b!1334426 (= e!760025 (and e!760024 mapRes!56893))))

(declare-fun condMapEmpty!56893 () Bool)

(declare-fun mapDefault!56893 () ValueCell!17508)

(assert (=> b!1334426 (= condMapEmpty!56893 (= (arr!43698 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17508)) mapDefault!56893)))))

(declare-fun b!1334427 () Bool)

(declare-fun res!885732 () Bool)

(assert (=> b!1334427 (=> (not res!885732) (not e!760023))))

(assert (=> b!1334427 (= res!885732 (not (= k0!1153 (select (arr!43697 _keys!1590) from!1980))))))

(declare-fun b!1334428 () Bool)

(assert (=> b!1334428 (= e!760027 e!760023)))

(declare-fun res!885733 () Bool)

(assert (=> b!1334428 (=> (not res!885733) (not e!760023))))

(declare-fun +!4702 (ListLongMap!21657 tuple2!23988) ListLongMap!21657)

(assert (=> b!1334428 (= res!885733 (contains!8944 (+!4702 lt!592284 (tuple2!23989 (select (arr!43697 _keys!1590) from!1980) lt!592286)) k0!1153))))

(declare-fun getCurrentListMapNoExtraKeys!6420 (array!90471 array!90473 (_ BitVec 32) (_ BitVec 32) V!54187 V!54187 (_ BitVec 32) Int) ListLongMap!21657)

(assert (=> b!1334428 (= lt!592284 (getCurrentListMapNoExtraKeys!6420 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun get!22088 (ValueCell!17508 V!54187) V!54187)

(declare-fun dynLambda!3739 (Int (_ BitVec 64)) V!54187)

(assert (=> b!1334428 (= lt!592286 (get!22088 (select (arr!43698 _values!1320) from!1980) (dynLambda!3739 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1334429 () Bool)

(declare-fun res!885728 () Bool)

(assert (=> b!1334429 (=> (not res!885728) (not e!760027))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90471 (_ BitVec 32)) Bool)

(assert (=> b!1334429 (= res!885728 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun mapIsEmpty!56893 () Bool)

(assert (=> mapIsEmpty!56893 mapRes!56893))

(declare-fun b!1334430 () Bool)

(declare-fun res!885724 () Bool)

(assert (=> b!1334430 (=> (not res!885724) (not e!760027))))

(assert (=> b!1334430 (= res!885724 (not (= (select (arr!43697 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1334431 () Bool)

(assert (=> b!1334431 (= e!760024 tp_is_empty!36813)))

(declare-fun b!1334432 () Bool)

(declare-fun e!760026 () Bool)

(assert (=> b!1334432 (= e!760026 tp_is_empty!36813)))

(declare-fun b!1334433 () Bool)

(declare-fun res!885731 () Bool)

(assert (=> b!1334433 (=> (not res!885731) (not e!760027))))

(declare-datatypes ((List!31159 0))(
  ( (Nil!31156) (Cons!31155 (h!32364 (_ BitVec 64)) (t!45428 List!31159)) )
))
(declare-fun arrayNoDuplicates!0 (array!90471 (_ BitVec 32) List!31159) Bool)

(assert (=> b!1334433 (= res!885731 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31156))))

(declare-fun mapNonEmpty!56893 () Bool)

(declare-fun tp!108347 () Bool)

(assert (=> mapNonEmpty!56893 (= mapRes!56893 (and tp!108347 e!760026))))

(declare-fun mapKey!56893 () (_ BitVec 32))

(declare-fun mapRest!56893 () (Array (_ BitVec 32) ValueCell!17508))

(declare-fun mapValue!56893 () ValueCell!17508)

(assert (=> mapNonEmpty!56893 (= (arr!43698 _values!1320) (store mapRest!56893 mapKey!56893 mapValue!56893))))

(declare-fun b!1334434 () Bool)

(declare-fun res!885730 () Bool)

(assert (=> b!1334434 (=> (not res!885730) (not e!760027))))

(assert (=> b!1334434 (= res!885730 (and (= (size!44249 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44248 _keys!1590) (size!44249 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(assert (= (and start!112544 res!885726) b!1334434))

(assert (= (and b!1334434 res!885730) b!1334429))

(assert (= (and b!1334429 res!885728) b!1334433))

(assert (= (and b!1334433 res!885731) b!1334424))

(assert (= (and b!1334424 res!885729) b!1334422))

(assert (= (and b!1334422 res!885727) b!1334430))

(assert (= (and b!1334430 res!885724) b!1334423))

(assert (= (and b!1334423 res!885734) b!1334425))

(assert (= (and b!1334425 res!885725) b!1334428))

(assert (= (and b!1334428 res!885733) b!1334427))

(assert (= (and b!1334427 res!885732) b!1334421))

(assert (= (and b!1334426 condMapEmpty!56893) mapIsEmpty!56893))

(assert (= (and b!1334426 (not condMapEmpty!56893)) mapNonEmpty!56893))

(get-info :version)

(assert (= (and mapNonEmpty!56893 ((_ is ValueCellFull!17508) mapValue!56893)) b!1334432))

(assert (= (and b!1334426 ((_ is ValueCellFull!17508) mapDefault!56893)) b!1334431))

(assert (= start!112544 b!1334426))

(declare-fun b_lambda!24119 () Bool)

(assert (=> (not b_lambda!24119) (not b!1334428)))

(declare-fun t!45426 () Bool)

(declare-fun tb!12073 () Bool)

(assert (=> (and start!112544 (= defaultEntry!1323 defaultEntry!1323) t!45426) tb!12073))

(declare-fun result!25209 () Bool)

(assert (=> tb!12073 (= result!25209 tp_is_empty!36813)))

(assert (=> b!1334428 t!45426))

(declare-fun b_and!49819 () Bool)

(assert (= b_and!49817 (and (=> t!45426 result!25209) b_and!49819)))

(declare-fun m!1222815 () Bool)

(assert (=> mapNonEmpty!56893 m!1222815))

(declare-fun m!1222817 () Bool)

(assert (=> b!1334433 m!1222817))

(declare-fun m!1222819 () Bool)

(assert (=> b!1334429 m!1222819))

(declare-fun m!1222821 () Bool)

(assert (=> start!112544 m!1222821))

(declare-fun m!1222823 () Bool)

(assert (=> start!112544 m!1222823))

(declare-fun m!1222825 () Bool)

(assert (=> start!112544 m!1222825))

(declare-fun m!1222827 () Bool)

(assert (=> b!1334427 m!1222827))

(declare-fun m!1222829 () Bool)

(assert (=> b!1334422 m!1222829))

(assert (=> b!1334422 m!1222829))

(declare-fun m!1222831 () Bool)

(assert (=> b!1334422 m!1222831))

(declare-fun m!1222833 () Bool)

(assert (=> b!1334421 m!1222833))

(assert (=> b!1334421 m!1222827))

(assert (=> b!1334421 m!1222827))

(declare-fun m!1222835 () Bool)

(assert (=> b!1334421 m!1222835))

(assert (=> b!1334430 m!1222827))

(declare-fun m!1222837 () Bool)

(assert (=> b!1334428 m!1222837))

(declare-fun m!1222839 () Bool)

(assert (=> b!1334428 m!1222839))

(assert (=> b!1334428 m!1222837))

(declare-fun m!1222841 () Bool)

(assert (=> b!1334428 m!1222841))

(declare-fun m!1222843 () Bool)

(assert (=> b!1334428 m!1222843))

(assert (=> b!1334428 m!1222843))

(declare-fun m!1222845 () Bool)

(assert (=> b!1334428 m!1222845))

(declare-fun m!1222847 () Bool)

(assert (=> b!1334428 m!1222847))

(assert (=> b!1334428 m!1222839))

(assert (=> b!1334428 m!1222827))

(assert (=> b!1334423 m!1222827))

(assert (=> b!1334423 m!1222827))

(declare-fun m!1222849 () Bool)

(assert (=> b!1334423 m!1222849))

(check-sat b_and!49819 (not b!1334422) (not b!1334428) (not mapNonEmpty!56893) (not b!1334421) (not b_next!30903) (not start!112544) (not b_lambda!24119) (not b!1334429) (not b!1334423) (not b!1334433) tp_is_empty!36813)
(check-sat b_and!49819 (not b_next!30903))
