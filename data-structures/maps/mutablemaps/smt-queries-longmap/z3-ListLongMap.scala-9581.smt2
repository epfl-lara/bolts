; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113386 () Bool)

(assert start!113386)

(declare-fun b_free!31401 () Bool)

(declare-fun b_next!31401 () Bool)

(assert (=> start!113386 (= b_free!31401 (not b_next!31401))))

(declare-fun tp!110008 () Bool)

(declare-fun b_and!50665 () Bool)

(assert (=> start!113386 (= tp!110008 b_and!50665)))

(declare-fun mapNonEmpty!57808 () Bool)

(declare-fun mapRes!57808 () Bool)

(declare-fun tp!110009 () Bool)

(declare-fun e!765489 () Bool)

(assert (=> mapNonEmpty!57808 (= mapRes!57808 (and tp!110009 e!765489))))

(declare-datatypes ((V!54971 0))(
  ( (V!54972 (val!18775 Int)) )
))
(declare-datatypes ((ValueCell!17802 0))(
  ( (ValueCellFull!17802 (v!21421 V!54971)) (EmptyCell!17802) )
))
(declare-fun mapRest!57808 () (Array (_ BitVec 32) ValueCell!17802))

(declare-fun mapKey!57808 () (_ BitVec 32))

(declare-fun mapValue!57808 () ValueCell!17802)

(declare-datatypes ((array!91599 0))(
  ( (array!91600 (arr!44251 (Array (_ BitVec 32) ValueCell!17802)) (size!44802 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91599)

(assert (=> mapNonEmpty!57808 (= (arr!44251 _values!1303) (store mapRest!57808 mapKey!57808 mapValue!57808))))

(declare-fun b!1345125 () Bool)

(declare-fun res!892601 () Bool)

(declare-fun e!765490 () Bool)

(assert (=> b!1345125 (=> (not res!892601) (not e!765490))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91601 0))(
  ( (array!91602 (arr!44252 (Array (_ BitVec 32) (_ BitVec 64))) (size!44803 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91601)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1345125 (= res!892601 (and (= (size!44802 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44803 _keys!1571) (size!44802 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1345126 () Bool)

(declare-fun res!892605 () Bool)

(assert (=> b!1345126 (=> (not res!892605) (not e!765490))))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1345126 (= res!892605 (validKeyInArray!0 (select (arr!44252 _keys!1571) from!1960)))))

(declare-fun b!1345127 () Bool)

(declare-fun e!765492 () Bool)

(declare-fun tp_is_empty!37401 () Bool)

(assert (=> b!1345127 (= e!765492 tp_is_empty!37401)))

(declare-fun b!1345128 () Bool)

(declare-fun res!892600 () Bool)

(declare-fun e!765491 () Bool)

(assert (=> b!1345128 (=> (not res!892600) (not e!765491))))

(declare-fun k0!1142 () (_ BitVec 64))

(assert (=> b!1345128 (= res!892600 (not (= k0!1142 (select (arr!44252 _keys!1571) from!1960))))))

(declare-fun b!1345129 () Bool)

(assert (=> b!1345129 (= e!765489 tp_is_empty!37401)))

(declare-fun b!1345130 () Bool)

(declare-fun res!892607 () Bool)

(assert (=> b!1345130 (=> (not res!892607) (not e!765490))))

(declare-fun minValue!1245 () V!54971)

(declare-fun zeroValue!1245 () V!54971)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24338 0))(
  ( (tuple2!24339 (_1!12179 (_ BitVec 64)) (_2!12179 V!54971)) )
))
(declare-datatypes ((List!31511 0))(
  ( (Nil!31508) (Cons!31507 (h!32716 tuple2!24338) (t!46076 List!31511)) )
))
(declare-datatypes ((ListLongMap!22007 0))(
  ( (ListLongMap!22008 (toList!11019 List!31511)) )
))
(declare-fun contains!9131 (ListLongMap!22007 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5912 (array!91601 array!91599 (_ BitVec 32) (_ BitVec 32) V!54971 V!54971 (_ BitVec 32) Int) ListLongMap!22007)

(assert (=> b!1345130 (= res!892607 (contains!9131 (getCurrentListMap!5912 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1345132 () Bool)

(declare-fun res!892603 () Bool)

(assert (=> b!1345132 (=> (not res!892603) (not e!765490))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91601 (_ BitVec 32)) Bool)

(assert (=> b!1345132 (= res!892603 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapIsEmpty!57808 () Bool)

(assert (=> mapIsEmpty!57808 mapRes!57808))

(declare-fun b!1345133 () Bool)

(assert (=> b!1345133 (= e!765490 e!765491)))

(declare-fun res!892598 () Bool)

(assert (=> b!1345133 (=> (not res!892598) (not e!765491))))

(declare-fun lt!595240 () V!54971)

(declare-fun lt!595238 () ListLongMap!22007)

(declare-fun +!4799 (ListLongMap!22007 tuple2!24338) ListLongMap!22007)

(assert (=> b!1345133 (= res!892598 (contains!9131 (+!4799 lt!595238 (tuple2!24339 (select (arr!44252 _keys!1571) from!1960) lt!595240)) k0!1142))))

(declare-fun getCurrentListMapNoExtraKeys!6522 (array!91601 array!91599 (_ BitVec 32) (_ BitVec 32) V!54971 V!54971 (_ BitVec 32) Int) ListLongMap!22007)

(assert (=> b!1345133 (= lt!595238 (getCurrentListMapNoExtraKeys!6522 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun get!22394 (ValueCell!17802 V!54971) V!54971)

(declare-fun dynLambda!3836 (Int (_ BitVec 64)) V!54971)

(assert (=> b!1345133 (= lt!595240 (get!22394 (select (arr!44251 _values!1303) from!1960) (dynLambda!3836 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1345134 () Bool)

(assert (=> b!1345134 (= e!765491 (not true))))

(assert (=> b!1345134 (contains!9131 lt!595238 k0!1142)))

(declare-datatypes ((Unit!44055 0))(
  ( (Unit!44056) )
))
(declare-fun lt!595239 () Unit!44055)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!387 ((_ BitVec 64) (_ BitVec 64) V!54971 ListLongMap!22007) Unit!44055)

(assert (=> b!1345134 (= lt!595239 (lemmaInListMapAfterAddingDiffThenInBefore!387 k0!1142 (select (arr!44252 _keys!1571) from!1960) lt!595240 lt!595238))))

(declare-fun b!1345135 () Bool)

(declare-fun e!765493 () Bool)

(assert (=> b!1345135 (= e!765493 (and e!765492 mapRes!57808))))

(declare-fun condMapEmpty!57808 () Bool)

(declare-fun mapDefault!57808 () ValueCell!17802)

(assert (=> b!1345135 (= condMapEmpty!57808 (= (arr!44251 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17802)) mapDefault!57808)))))

(declare-fun b!1345136 () Bool)

(declare-fun res!892597 () Bool)

(assert (=> b!1345136 (=> (not res!892597) (not e!765490))))

(assert (=> b!1345136 (= res!892597 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44803 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1345137 () Bool)

(declare-fun res!892604 () Bool)

(assert (=> b!1345137 (=> (not res!892604) (not e!765490))))

(assert (=> b!1345137 (= res!892604 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1345138 () Bool)

(declare-fun res!892599 () Bool)

(assert (=> b!1345138 (=> (not res!892599) (not e!765490))))

(declare-datatypes ((List!31512 0))(
  ( (Nil!31509) (Cons!31508 (h!32717 (_ BitVec 64)) (t!46077 List!31512)) )
))
(declare-fun arrayNoDuplicates!0 (array!91601 (_ BitVec 32) List!31512) Bool)

(assert (=> b!1345138 (= res!892599 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31509))))

(declare-fun b!1345131 () Bool)

(declare-fun res!892606 () Bool)

(assert (=> b!1345131 (=> (not res!892606) (not e!765490))))

(assert (=> b!1345131 (= res!892606 (not (= (select (arr!44252 _keys!1571) from!1960) k0!1142)))))

(declare-fun res!892602 () Bool)

(assert (=> start!113386 (=> (not res!892602) (not e!765490))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113386 (= res!892602 (validMask!0 mask!1977))))

(assert (=> start!113386 e!765490))

(assert (=> start!113386 tp_is_empty!37401))

(assert (=> start!113386 true))

(declare-fun array_inv!33261 (array!91601) Bool)

(assert (=> start!113386 (array_inv!33261 _keys!1571)))

(declare-fun array_inv!33262 (array!91599) Bool)

(assert (=> start!113386 (and (array_inv!33262 _values!1303) e!765493)))

(assert (=> start!113386 tp!110008))

(assert (= (and start!113386 res!892602) b!1345125))

(assert (= (and b!1345125 res!892601) b!1345132))

(assert (= (and b!1345132 res!892603) b!1345138))

(assert (= (and b!1345138 res!892599) b!1345136))

(assert (= (and b!1345136 res!892597) b!1345130))

(assert (= (and b!1345130 res!892607) b!1345131))

(assert (= (and b!1345131 res!892606) b!1345126))

(assert (= (and b!1345126 res!892605) b!1345137))

(assert (= (and b!1345137 res!892604) b!1345133))

(assert (= (and b!1345133 res!892598) b!1345128))

(assert (= (and b!1345128 res!892600) b!1345134))

(assert (= (and b!1345135 condMapEmpty!57808) mapIsEmpty!57808))

(assert (= (and b!1345135 (not condMapEmpty!57808)) mapNonEmpty!57808))

(get-info :version)

(assert (= (and mapNonEmpty!57808 ((_ is ValueCellFull!17802) mapValue!57808)) b!1345129))

(assert (= (and b!1345135 ((_ is ValueCellFull!17802) mapDefault!57808)) b!1345127))

(assert (= start!113386 b!1345135))

(declare-fun b_lambda!24533 () Bool)

(assert (=> (not b_lambda!24533) (not b!1345133)))

(declare-fun t!46075 () Bool)

(declare-fun tb!12369 () Bool)

(assert (=> (and start!113386 (= defaultEntry!1306 defaultEntry!1306) t!46075) tb!12369))

(declare-fun result!25821 () Bool)

(assert (=> tb!12369 (= result!25821 tp_is_empty!37401)))

(assert (=> b!1345133 t!46075))

(declare-fun b_and!50667 () Bool)

(assert (= b_and!50665 (and (=> t!46075 result!25821) b_and!50667)))

(declare-fun m!1232599 () Bool)

(assert (=> b!1345133 m!1232599))

(declare-fun m!1232601 () Bool)

(assert (=> b!1345133 m!1232601))

(declare-fun m!1232603 () Bool)

(assert (=> b!1345133 m!1232603))

(declare-fun m!1232605 () Bool)

(assert (=> b!1345133 m!1232605))

(declare-fun m!1232607 () Bool)

(assert (=> b!1345133 m!1232607))

(assert (=> b!1345133 m!1232603))

(assert (=> b!1345133 m!1232605))

(assert (=> b!1345133 m!1232599))

(declare-fun m!1232609 () Bool)

(assert (=> b!1345133 m!1232609))

(declare-fun m!1232611 () Bool)

(assert (=> b!1345133 m!1232611))

(declare-fun m!1232613 () Bool)

(assert (=> b!1345138 m!1232613))

(declare-fun m!1232615 () Bool)

(assert (=> mapNonEmpty!57808 m!1232615))

(declare-fun m!1232617 () Bool)

(assert (=> b!1345132 m!1232617))

(assert (=> b!1345131 m!1232611))

(declare-fun m!1232619 () Bool)

(assert (=> b!1345134 m!1232619))

(assert (=> b!1345134 m!1232611))

(assert (=> b!1345134 m!1232611))

(declare-fun m!1232621 () Bool)

(assert (=> b!1345134 m!1232621))

(assert (=> b!1345128 m!1232611))

(declare-fun m!1232623 () Bool)

(assert (=> b!1345130 m!1232623))

(assert (=> b!1345130 m!1232623))

(declare-fun m!1232625 () Bool)

(assert (=> b!1345130 m!1232625))

(assert (=> b!1345126 m!1232611))

(assert (=> b!1345126 m!1232611))

(declare-fun m!1232627 () Bool)

(assert (=> b!1345126 m!1232627))

(declare-fun m!1232629 () Bool)

(assert (=> start!113386 m!1232629))

(declare-fun m!1232631 () Bool)

(assert (=> start!113386 m!1232631))

(declare-fun m!1232633 () Bool)

(assert (=> start!113386 m!1232633))

(check-sat (not b!1345134) b_and!50667 tp_is_empty!37401 (not start!113386) (not b!1345130) (not b!1345133) (not b!1345126) (not b!1345138) (not b!1345132) (not mapNonEmpty!57808) (not b_lambda!24533) (not b_next!31401))
(check-sat b_and!50667 (not b_next!31401))
