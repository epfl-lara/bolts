; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112580 () Bool)

(assert start!112580)

(declare-fun b_free!30939 () Bool)

(declare-fun b_next!30939 () Bool)

(assert (=> start!112580 (= b_free!30939 (not b_next!30939))))

(declare-fun tp!108455 () Bool)

(declare-fun b_and!49857 () Bool)

(assert (=> start!112580 (= tp!108455 b_and!49857)))

(declare-fun res!886019 () Bool)

(declare-fun e!760298 () Bool)

(assert (=> start!112580 (=> (not res!886019) (not e!760298))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112580 (= res!886019 (validMask!0 mask!1998))))

(assert (=> start!112580 e!760298))

(declare-datatypes ((V!54235 0))(
  ( (V!54236 (val!18499 Int)) )
))
(declare-datatypes ((ValueCell!17526 0))(
  ( (ValueCellFull!17526 (v!21134 V!54235)) (EmptyCell!17526) )
))
(declare-datatypes ((array!90537 0))(
  ( (array!90538 (arr!43730 (Array (_ BitVec 32) ValueCell!17526)) (size!44281 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90537)

(declare-fun e!760296 () Bool)

(declare-fun array_inv!32915 (array!90537) Bool)

(assert (=> start!112580 (and (array_inv!32915 _values!1320) e!760296)))

(assert (=> start!112580 true))

(declare-datatypes ((array!90539 0))(
  ( (array!90540 (arr!43731 (Array (_ BitVec 32) (_ BitVec 64))) (size!44282 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90539)

(declare-fun array_inv!32916 (array!90539) Bool)

(assert (=> start!112580 (array_inv!32916 _keys!1590)))

(assert (=> start!112580 tp!108455))

(declare-fun tp_is_empty!36849 () Bool)

(assert (=> start!112580 tp_is_empty!36849))

(declare-fun b!1334881 () Bool)

(declare-fun e!760297 () Bool)

(declare-fun mapRes!56947 () Bool)

(assert (=> b!1334881 (= e!760296 (and e!760297 mapRes!56947))))

(declare-fun condMapEmpty!56947 () Bool)

(declare-fun mapDefault!56947 () ValueCell!17526)

(assert (=> b!1334881 (= condMapEmpty!56947 (= (arr!43730 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17526)) mapDefault!56947)))))

(declare-fun b!1334882 () Bool)

(declare-fun res!886021 () Bool)

(assert (=> b!1334882 (=> (not res!886021) (not e!760298))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1334882 (= res!886021 (and (= (size!44281 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44282 _keys!1590) (size!44281 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1334883 () Bool)

(declare-fun res!886020 () Bool)

(assert (=> b!1334883 (=> (not res!886020) (not e!760298))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1334883 (= res!886020 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44282 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1334884 () Bool)

(declare-fun res!886018 () Bool)

(assert (=> b!1334884 (=> (not res!886018) (not e!760298))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90539 (_ BitVec 32)) Bool)

(assert (=> b!1334884 (= res!886018 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun mapIsEmpty!56947 () Bool)

(assert (=> mapIsEmpty!56947 mapRes!56947))

(declare-fun b!1334885 () Bool)

(declare-fun e!760299 () Bool)

(assert (=> b!1334885 (= e!760299 tp_is_empty!36849)))

(declare-fun mapNonEmpty!56947 () Bool)

(declare-fun tp!108454 () Bool)

(assert (=> mapNonEmpty!56947 (= mapRes!56947 (and tp!108454 e!760299))))

(declare-fun mapRest!56947 () (Array (_ BitVec 32) ValueCell!17526))

(declare-fun mapValue!56947 () ValueCell!17526)

(declare-fun mapKey!56947 () (_ BitVec 32))

(assert (=> mapNonEmpty!56947 (= (arr!43730 _values!1320) (store mapRest!56947 mapKey!56947 mapValue!56947))))

(declare-fun b!1334886 () Bool)

(assert (=> b!1334886 (= e!760297 tp_is_empty!36849)))

(declare-fun b!1334887 () Bool)

(declare-fun res!886022 () Bool)

(assert (=> b!1334887 (=> (not res!886022) (not e!760298))))

(declare-datatypes ((List!31181 0))(
  ( (Nil!31178) (Cons!31177 (h!32386 (_ BitVec 64)) (t!45452 List!31181)) )
))
(declare-fun arrayNoDuplicates!0 (array!90539 (_ BitVec 32) List!31181) Bool)

(assert (=> b!1334887 (= res!886022 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31178))))

(declare-fun b!1334888 () Bool)

(assert (=> b!1334888 (= e!760298 false)))

(declare-fun lt!592346 () Bool)

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54235)

(declare-fun zeroValue!1262 () V!54235)

(declare-datatypes ((tuple2!24010 0))(
  ( (tuple2!24011 (_1!12015 (_ BitVec 64)) (_2!12015 V!54235)) )
))
(declare-datatypes ((List!31182 0))(
  ( (Nil!31179) (Cons!31178 (h!32387 tuple2!24010) (t!45453 List!31182)) )
))
(declare-datatypes ((ListLongMap!21679 0))(
  ( (ListLongMap!21680 (toList!10855 List!31182)) )
))
(declare-fun contains!8955 (ListLongMap!21679 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5766 (array!90539 array!90537 (_ BitVec 32) (_ BitVec 32) V!54235 V!54235 (_ BitVec 32) Int) ListLongMap!21679)

(assert (=> b!1334888 (= lt!592346 (contains!8955 (getCurrentListMap!5766 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(assert (= (and start!112580 res!886019) b!1334882))

(assert (= (and b!1334882 res!886021) b!1334884))

(assert (= (and b!1334884 res!886018) b!1334887))

(assert (= (and b!1334887 res!886022) b!1334883))

(assert (= (and b!1334883 res!886020) b!1334888))

(assert (= (and b!1334881 condMapEmpty!56947) mapIsEmpty!56947))

(assert (= (and b!1334881 (not condMapEmpty!56947)) mapNonEmpty!56947))

(get-info :version)

(assert (= (and mapNonEmpty!56947 ((_ is ValueCellFull!17526) mapValue!56947)) b!1334885))

(assert (= (and b!1334881 ((_ is ValueCellFull!17526) mapDefault!56947)) b!1334886))

(assert (= start!112580 b!1334881))

(declare-fun m!1223143 () Bool)

(assert (=> b!1334884 m!1223143))

(declare-fun m!1223145 () Bool)

(assert (=> mapNonEmpty!56947 m!1223145))

(declare-fun m!1223147 () Bool)

(assert (=> b!1334888 m!1223147))

(assert (=> b!1334888 m!1223147))

(declare-fun m!1223149 () Bool)

(assert (=> b!1334888 m!1223149))

(declare-fun m!1223151 () Bool)

(assert (=> start!112580 m!1223151))

(declare-fun m!1223153 () Bool)

(assert (=> start!112580 m!1223153))

(declare-fun m!1223155 () Bool)

(assert (=> start!112580 m!1223155))

(declare-fun m!1223157 () Bool)

(assert (=> b!1334887 m!1223157))

(check-sat (not mapNonEmpty!56947) (not b_next!30939) (not b!1334887) b_and!49857 (not b!1334884) (not start!112580) (not b!1334888) tp_is_empty!36849)
(check-sat b_and!49857 (not b_next!30939))
