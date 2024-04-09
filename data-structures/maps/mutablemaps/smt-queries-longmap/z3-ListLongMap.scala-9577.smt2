; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113362 () Bool)

(assert start!113362)

(declare-fun b_free!31377 () Bool)

(declare-fun b_next!31377 () Bool)

(assert (=> start!113362 (= b_free!31377 (not b_next!31377))))

(declare-fun tp!109937 () Bool)

(declare-fun b_and!50617 () Bool)

(assert (=> start!113362 (= tp!109937 b_and!50617)))

(declare-fun b!1344605 () Bool)

(declare-fun e!765281 () Bool)

(declare-fun tp_is_empty!37377 () Bool)

(assert (=> b!1344605 (= e!765281 tp_is_empty!37377)))

(declare-fun b!1344606 () Bool)

(declare-fun e!765280 () Bool)

(assert (=> b!1344606 (= e!765280 false)))

(declare-datatypes ((V!54939 0))(
  ( (V!54940 (val!18763 Int)) )
))
(declare-fun minValue!1245 () V!54939)

(declare-fun lt!595138 () Bool)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91551 0))(
  ( (array!91552 (arr!44227 (Array (_ BitVec 32) (_ BitVec 64))) (size!44778 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91551)

(declare-fun zeroValue!1245 () V!54939)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17790 0))(
  ( (ValueCellFull!17790 (v!21409 V!54939)) (EmptyCell!17790) )
))
(declare-datatypes ((array!91553 0))(
  ( (array!91554 (arr!44228 (Array (_ BitVec 32) ValueCell!17790)) (size!44779 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91553)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24322 0))(
  ( (tuple2!24323 (_1!12171 (_ BitVec 64)) (_2!12171 V!54939)) )
))
(declare-datatypes ((List!31496 0))(
  ( (Nil!31493) (Cons!31492 (h!32701 tuple2!24322) (t!46037 List!31496)) )
))
(declare-datatypes ((ListLongMap!21991 0))(
  ( (ListLongMap!21992 (toList!11011 List!31496)) )
))
(declare-fun contains!9123 (ListLongMap!21991 (_ BitVec 64)) Bool)

(declare-fun +!4792 (ListLongMap!21991 tuple2!24322) ListLongMap!21991)

(declare-fun getCurrentListMapNoExtraKeys!6515 (array!91551 array!91553 (_ BitVec 32) (_ BitVec 32) V!54939 V!54939 (_ BitVec 32) Int) ListLongMap!21991)

(declare-fun get!22379 (ValueCell!17790 V!54939) V!54939)

(declare-fun dynLambda!3829 (Int (_ BitVec 64)) V!54939)

(assert (=> b!1344606 (= lt!595138 (contains!9123 (+!4792 (getCurrentListMapNoExtraKeys!6515 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24323 (select (arr!44227 _keys!1571) from!1960) (get!22379 (select (arr!44228 _values!1303) from!1960) (dynLambda!3829 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) k0!1142))))

(declare-fun b!1344607 () Bool)

(declare-fun res!892215 () Bool)

(assert (=> b!1344607 (=> (not res!892215) (not e!765280))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91551 (_ BitVec 32)) Bool)

(assert (=> b!1344607 (= res!892215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1344608 () Bool)

(declare-fun res!892216 () Bool)

(assert (=> b!1344608 (=> (not res!892216) (not e!765280))))

(assert (=> b!1344608 (= res!892216 (not (= (select (arr!44227 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1344609 () Bool)

(declare-fun res!892210 () Bool)

(assert (=> b!1344609 (=> (not res!892210) (not e!765280))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1344609 (= res!892210 (validKeyInArray!0 (select (arr!44227 _keys!1571) from!1960)))))

(declare-fun b!1344610 () Bool)

(declare-fun res!892214 () Bool)

(assert (=> b!1344610 (=> (not res!892214) (not e!765280))))

(assert (=> b!1344610 (= res!892214 (and (= (size!44779 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44778 _keys!1571) (size!44779 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!57772 () Bool)

(declare-fun mapRes!57772 () Bool)

(assert (=> mapIsEmpty!57772 mapRes!57772))

(declare-fun b!1344611 () Bool)

(declare-fun res!892213 () Bool)

(assert (=> b!1344611 (=> (not res!892213) (not e!765280))))

(declare-fun getCurrentListMap!5904 (array!91551 array!91553 (_ BitVec 32) (_ BitVec 32) V!54939 V!54939 (_ BitVec 32) Int) ListLongMap!21991)

(assert (=> b!1344611 (= res!892213 (contains!9123 (getCurrentListMap!5904 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1344612 () Bool)

(declare-fun e!765279 () Bool)

(declare-fun e!765278 () Bool)

(assert (=> b!1344612 (= e!765279 (and e!765278 mapRes!57772))))

(declare-fun condMapEmpty!57772 () Bool)

(declare-fun mapDefault!57772 () ValueCell!17790)

(assert (=> b!1344612 (= condMapEmpty!57772 (= (arr!44228 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17790)) mapDefault!57772)))))

(declare-fun res!892209 () Bool)

(assert (=> start!113362 (=> (not res!892209) (not e!765280))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113362 (= res!892209 (validMask!0 mask!1977))))

(assert (=> start!113362 e!765280))

(assert (=> start!113362 tp_is_empty!37377))

(assert (=> start!113362 true))

(declare-fun array_inv!33247 (array!91551) Bool)

(assert (=> start!113362 (array_inv!33247 _keys!1571)))

(declare-fun array_inv!33248 (array!91553) Bool)

(assert (=> start!113362 (and (array_inv!33248 _values!1303) e!765279)))

(assert (=> start!113362 tp!109937))

(declare-fun mapNonEmpty!57772 () Bool)

(declare-fun tp!109936 () Bool)

(assert (=> mapNonEmpty!57772 (= mapRes!57772 (and tp!109936 e!765281))))

(declare-fun mapKey!57772 () (_ BitVec 32))

(declare-fun mapValue!57772 () ValueCell!17790)

(declare-fun mapRest!57772 () (Array (_ BitVec 32) ValueCell!17790))

(assert (=> mapNonEmpty!57772 (= (arr!44228 _values!1303) (store mapRest!57772 mapKey!57772 mapValue!57772))))

(declare-fun b!1344613 () Bool)

(declare-fun res!892211 () Bool)

(assert (=> b!1344613 (=> (not res!892211) (not e!765280))))

(declare-datatypes ((List!31497 0))(
  ( (Nil!31494) (Cons!31493 (h!32702 (_ BitVec 64)) (t!46038 List!31497)) )
))
(declare-fun arrayNoDuplicates!0 (array!91551 (_ BitVec 32) List!31497) Bool)

(assert (=> b!1344613 (= res!892211 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31494))))

(declare-fun b!1344614 () Bool)

(assert (=> b!1344614 (= e!765278 tp_is_empty!37377)))

(declare-fun b!1344615 () Bool)

(declare-fun res!892217 () Bool)

(assert (=> b!1344615 (=> (not res!892217) (not e!765280))))

(assert (=> b!1344615 (= res!892217 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44778 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1344616 () Bool)

(declare-fun res!892212 () Bool)

(assert (=> b!1344616 (=> (not res!892212) (not e!765280))))

(assert (=> b!1344616 (= res!892212 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (= (and start!113362 res!892209) b!1344610))

(assert (= (and b!1344610 res!892214) b!1344607))

(assert (= (and b!1344607 res!892215) b!1344613))

(assert (= (and b!1344613 res!892211) b!1344615))

(assert (= (and b!1344615 res!892217) b!1344611))

(assert (= (and b!1344611 res!892213) b!1344608))

(assert (= (and b!1344608 res!892216) b!1344609))

(assert (= (and b!1344609 res!892210) b!1344616))

(assert (= (and b!1344616 res!892212) b!1344606))

(assert (= (and b!1344612 condMapEmpty!57772) mapIsEmpty!57772))

(assert (= (and b!1344612 (not condMapEmpty!57772)) mapNonEmpty!57772))

(get-info :version)

(assert (= (and mapNonEmpty!57772 ((_ is ValueCellFull!17790) mapValue!57772)) b!1344605))

(assert (= (and b!1344612 ((_ is ValueCellFull!17790) mapDefault!57772)) b!1344614))

(assert (= start!113362 b!1344612))

(declare-fun b_lambda!24509 () Bool)

(assert (=> (not b_lambda!24509) (not b!1344606)))

(declare-fun t!46036 () Bool)

(declare-fun tb!12345 () Bool)

(assert (=> (and start!113362 (= defaultEntry!1306 defaultEntry!1306) t!46036) tb!12345))

(declare-fun result!25773 () Bool)

(assert (=> tb!12345 (= result!25773 tp_is_empty!37377)))

(assert (=> b!1344606 t!46036))

(declare-fun b_and!50619 () Bool)

(assert (= b_and!50617 (and (=> t!46036 result!25773) b_and!50619)))

(declare-fun m!1232175 () Bool)

(assert (=> b!1344606 m!1232175))

(declare-fun m!1232177 () Bool)

(assert (=> b!1344606 m!1232177))

(declare-fun m!1232179 () Bool)

(assert (=> b!1344606 m!1232179))

(declare-fun m!1232181 () Bool)

(assert (=> b!1344606 m!1232181))

(assert (=> b!1344606 m!1232175))

(declare-fun m!1232183 () Bool)

(assert (=> b!1344606 m!1232183))

(assert (=> b!1344606 m!1232177))

(assert (=> b!1344606 m!1232179))

(assert (=> b!1344606 m!1232183))

(declare-fun m!1232185 () Bool)

(assert (=> b!1344606 m!1232185))

(declare-fun m!1232187 () Bool)

(assert (=> b!1344606 m!1232187))

(declare-fun m!1232189 () Bool)

(assert (=> b!1344611 m!1232189))

(assert (=> b!1344611 m!1232189))

(declare-fun m!1232191 () Bool)

(assert (=> b!1344611 m!1232191))

(assert (=> b!1344608 m!1232187))

(declare-fun m!1232193 () Bool)

(assert (=> b!1344607 m!1232193))

(declare-fun m!1232195 () Bool)

(assert (=> start!113362 m!1232195))

(declare-fun m!1232197 () Bool)

(assert (=> start!113362 m!1232197))

(declare-fun m!1232199 () Bool)

(assert (=> start!113362 m!1232199))

(declare-fun m!1232201 () Bool)

(assert (=> b!1344613 m!1232201))

(declare-fun m!1232203 () Bool)

(assert (=> mapNonEmpty!57772 m!1232203))

(assert (=> b!1344609 m!1232187))

(assert (=> b!1344609 m!1232187))

(declare-fun m!1232205 () Bool)

(assert (=> b!1344609 m!1232205))

(check-sat (not b_next!31377) (not start!113362) (not b_lambda!24509) (not b!1344613) (not b!1344607) (not b!1344609) (not b!1344611) b_and!50619 (not b!1344606) tp_is_empty!37377 (not mapNonEmpty!57772))
(check-sat b_and!50619 (not b_next!31377))
