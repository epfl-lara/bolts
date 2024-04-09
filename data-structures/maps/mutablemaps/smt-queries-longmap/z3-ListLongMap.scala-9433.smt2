; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112244 () Bool)

(assert start!112244)

(declare-fun b_free!30603 () Bool)

(declare-fun b_next!30603 () Bool)

(assert (=> start!112244 (= b_free!30603 (not b_next!30603))))

(declare-fun tp!107446 () Bool)

(declare-fun b_and!49271 () Bool)

(assert (=> start!112244 (= tp!107446 b_and!49271)))

(declare-fun b!1328918 () Bool)

(declare-fun e!757696 () Bool)

(assert (=> b!1328918 (= e!757696 false)))

(declare-datatypes ((V!53787 0))(
  ( (V!53788 (val!18331 Int)) )
))
(declare-datatypes ((ValueCell!17358 0))(
  ( (ValueCellFull!17358 (v!20966 V!53787)) (EmptyCell!17358) )
))
(declare-datatypes ((array!89883 0))(
  ( (array!89884 (arr!43403 (Array (_ BitVec 32) ValueCell!17358)) (size!43954 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89883)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun lt!590825 () Bool)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89885 0))(
  ( (array!89886 (arr!43404 (Array (_ BitVec 32) (_ BitVec 64))) (size!43955 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89885)

(declare-fun defaultEntry!1323 () Int)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!53787)

(declare-fun zeroValue!1262 () V!53787)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!23746 0))(
  ( (tuple2!23747 (_1!11883 (_ BitVec 64)) (_2!11883 V!53787)) )
))
(declare-datatypes ((List!30935 0))(
  ( (Nil!30932) (Cons!30931 (h!32140 tuple2!23746) (t!44958 List!30935)) )
))
(declare-datatypes ((ListLongMap!21415 0))(
  ( (ListLongMap!21416 (toList!10723 List!30935)) )
))
(declare-fun contains!8823 (ListLongMap!21415 (_ BitVec 64)) Bool)

(declare-fun +!4620 (ListLongMap!21415 tuple2!23746) ListLongMap!21415)

(declare-fun getCurrentListMapNoExtraKeys!6338 (array!89885 array!89883 (_ BitVec 32) (_ BitVec 32) V!53787 V!53787 (_ BitVec 32) Int) ListLongMap!21415)

(declare-fun get!21906 (ValueCell!17358 V!53787) V!53787)

(declare-fun dynLambda!3657 (Int (_ BitVec 64)) V!53787)

(assert (=> b!1328918 (= lt!590825 (contains!8823 (+!4620 (+!4620 (getCurrentListMapNoExtraKeys!6338 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23747 (select (arr!43404 _keys!1590) from!1980) (get!21906 (select (arr!43403 _values!1320) from!1980) (dynLambda!3657 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23747 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k0!1153))))

(declare-fun b!1328919 () Bool)

(declare-fun res!881822 () Bool)

(assert (=> b!1328919 (=> (not res!881822) (not e!757696))))

(assert (=> b!1328919 (= res!881822 (and (= (size!43954 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43955 _keys!1590) (size!43954 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1328920 () Bool)

(declare-fun res!881820 () Bool)

(assert (=> b!1328920 (=> (not res!881820) (not e!757696))))

(declare-datatypes ((List!30936 0))(
  ( (Nil!30933) (Cons!30932 (h!32141 (_ BitVec 64)) (t!44959 List!30936)) )
))
(declare-fun arrayNoDuplicates!0 (array!89885 (_ BitVec 32) List!30936) Bool)

(assert (=> b!1328920 (= res!881820 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30933))))

(declare-fun b!1328921 () Bool)

(declare-fun res!881817 () Bool)

(assert (=> b!1328921 (=> (not res!881817) (not e!757696))))

(assert (=> b!1328921 (= res!881817 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1328922 () Bool)

(declare-fun res!881825 () Bool)

(assert (=> b!1328922 (=> (not res!881825) (not e!757696))))

(assert (=> b!1328922 (= res!881825 (not (= (select (arr!43404 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1328923 () Bool)

(declare-fun res!881818 () Bool)

(assert (=> b!1328923 (=> (not res!881818) (not e!757696))))

(declare-fun getCurrentListMap!5655 (array!89885 array!89883 (_ BitVec 32) (_ BitVec 32) V!53787 V!53787 (_ BitVec 32) Int) ListLongMap!21415)

(assert (=> b!1328923 (= res!881818 (contains!8823 (getCurrentListMap!5655 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1328924 () Bool)

(declare-fun res!881823 () Bool)

(assert (=> b!1328924 (=> (not res!881823) (not e!757696))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1328924 (= res!881823 (validKeyInArray!0 (select (arr!43404 _keys!1590) from!1980)))))

(declare-fun b!1328925 () Bool)

(declare-fun e!757695 () Bool)

(declare-fun tp_is_empty!36513 () Bool)

(assert (=> b!1328925 (= e!757695 tp_is_empty!36513)))

(declare-fun mapIsEmpty!56443 () Bool)

(declare-fun mapRes!56443 () Bool)

(assert (=> mapIsEmpty!56443 mapRes!56443))

(declare-fun b!1328926 () Bool)

(declare-fun e!757698 () Bool)

(assert (=> b!1328926 (= e!757698 tp_is_empty!36513)))

(declare-fun b!1328927 () Bool)

(declare-fun res!881824 () Bool)

(assert (=> b!1328927 (=> (not res!881824) (not e!757696))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89885 (_ BitVec 32)) Bool)

(assert (=> b!1328927 (= res!881824 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun mapNonEmpty!56443 () Bool)

(declare-fun tp!107447 () Bool)

(assert (=> mapNonEmpty!56443 (= mapRes!56443 (and tp!107447 e!757695))))

(declare-fun mapKey!56443 () (_ BitVec 32))

(declare-fun mapRest!56443 () (Array (_ BitVec 32) ValueCell!17358))

(declare-fun mapValue!56443 () ValueCell!17358)

(assert (=> mapNonEmpty!56443 (= (arr!43403 _values!1320) (store mapRest!56443 mapKey!56443 mapValue!56443))))

(declare-fun res!881821 () Bool)

(assert (=> start!112244 (=> (not res!881821) (not e!757696))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112244 (= res!881821 (validMask!0 mask!1998))))

(assert (=> start!112244 e!757696))

(declare-fun e!757697 () Bool)

(declare-fun array_inv!32699 (array!89883) Bool)

(assert (=> start!112244 (and (array_inv!32699 _values!1320) e!757697)))

(assert (=> start!112244 true))

(declare-fun array_inv!32700 (array!89885) Bool)

(assert (=> start!112244 (array_inv!32700 _keys!1590)))

(assert (=> start!112244 tp!107446))

(assert (=> start!112244 tp_is_empty!36513))

(declare-fun b!1328928 () Bool)

(declare-fun res!881819 () Bool)

(assert (=> b!1328928 (=> (not res!881819) (not e!757696))))

(assert (=> b!1328928 (= res!881819 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43955 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1328929 () Bool)

(assert (=> b!1328929 (= e!757697 (and e!757698 mapRes!56443))))

(declare-fun condMapEmpty!56443 () Bool)

(declare-fun mapDefault!56443 () ValueCell!17358)

(assert (=> b!1328929 (= condMapEmpty!56443 (= (arr!43403 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17358)) mapDefault!56443)))))

(assert (= (and start!112244 res!881821) b!1328919))

(assert (= (and b!1328919 res!881822) b!1328927))

(assert (= (and b!1328927 res!881824) b!1328920))

(assert (= (and b!1328920 res!881820) b!1328928))

(assert (= (and b!1328928 res!881819) b!1328923))

(assert (= (and b!1328923 res!881818) b!1328922))

(assert (= (and b!1328922 res!881825) b!1328924))

(assert (= (and b!1328924 res!881823) b!1328921))

(assert (= (and b!1328921 res!881817) b!1328918))

(assert (= (and b!1328929 condMapEmpty!56443) mapIsEmpty!56443))

(assert (= (and b!1328929 (not condMapEmpty!56443)) mapNonEmpty!56443))

(get-info :version)

(assert (= (and mapNonEmpty!56443 ((_ is ValueCellFull!17358) mapValue!56443)) b!1328925))

(assert (= (and b!1328929 ((_ is ValueCellFull!17358) mapDefault!56443)) b!1328926))

(assert (= start!112244 b!1328929))

(declare-fun b_lambda!23873 () Bool)

(assert (=> (not b_lambda!23873) (not b!1328918)))

(declare-fun t!44957 () Bool)

(declare-fun tb!11827 () Bool)

(assert (=> (and start!112244 (= defaultEntry!1323 defaultEntry!1323) t!44957) tb!11827))

(declare-fun result!24717 () Bool)

(assert (=> tb!11827 (= result!24717 tp_is_empty!36513)))

(assert (=> b!1328918 t!44957))

(declare-fun b_and!49273 () Bool)

(assert (= b_and!49271 (and (=> t!44957 result!24717) b_and!49273)))

(declare-fun m!1217761 () Bool)

(assert (=> b!1328927 m!1217761))

(declare-fun m!1217763 () Bool)

(assert (=> mapNonEmpty!56443 m!1217763))

(declare-fun m!1217765 () Bool)

(assert (=> start!112244 m!1217765))

(declare-fun m!1217767 () Bool)

(assert (=> start!112244 m!1217767))

(declare-fun m!1217769 () Bool)

(assert (=> start!112244 m!1217769))

(declare-fun m!1217771 () Bool)

(assert (=> b!1328922 m!1217771))

(declare-fun m!1217773 () Bool)

(assert (=> b!1328920 m!1217773))

(declare-fun m!1217775 () Bool)

(assert (=> b!1328923 m!1217775))

(assert (=> b!1328923 m!1217775))

(declare-fun m!1217777 () Bool)

(assert (=> b!1328923 m!1217777))

(declare-fun m!1217779 () Bool)

(assert (=> b!1328918 m!1217779))

(declare-fun m!1217781 () Bool)

(assert (=> b!1328918 m!1217781))

(declare-fun m!1217783 () Bool)

(assert (=> b!1328918 m!1217783))

(declare-fun m!1217785 () Bool)

(assert (=> b!1328918 m!1217785))

(declare-fun m!1217787 () Bool)

(assert (=> b!1328918 m!1217787))

(assert (=> b!1328918 m!1217781))

(declare-fun m!1217789 () Bool)

(assert (=> b!1328918 m!1217789))

(assert (=> b!1328918 m!1217779))

(assert (=> b!1328918 m!1217783))

(assert (=> b!1328918 m!1217771))

(assert (=> b!1328918 m!1217785))

(assert (=> b!1328918 m!1217789))

(declare-fun m!1217791 () Bool)

(assert (=> b!1328918 m!1217791))

(assert (=> b!1328924 m!1217771))

(assert (=> b!1328924 m!1217771))

(declare-fun m!1217793 () Bool)

(assert (=> b!1328924 m!1217793))

(check-sat (not b_lambda!23873) (not b!1328918) (not mapNonEmpty!56443) (not b_next!30603) b_and!49273 (not b!1328924) (not start!112244) tp_is_empty!36513 (not b!1328927) (not b!1328923) (not b!1328920))
(check-sat b_and!49273 (not b_next!30603))
