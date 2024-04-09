; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112836 () Bool)

(assert start!112836)

(declare-fun b_free!31053 () Bool)

(declare-fun b_next!31053 () Bool)

(assert (=> start!112836 (= b_free!31053 (not b_next!31053))))

(declare-fun tp!108808 () Bool)

(declare-fun b_and!50063 () Bool)

(assert (=> start!112836 (= tp!108808 b_and!50063)))

(declare-fun b!1337712 () Bool)

(declare-fun res!887740 () Bool)

(declare-fun e!761744 () Bool)

(assert (=> b!1337712 (=> (not res!887740) (not e!761744))))

(declare-datatypes ((V!54387 0))(
  ( (V!54388 (val!18556 Int)) )
))
(declare-datatypes ((ValueCell!17583 0))(
  ( (ValueCellFull!17583 (v!21198 V!54387)) (EmptyCell!17583) )
))
(declare-datatypes ((array!90759 0))(
  ( (array!90760 (arr!43838 (Array (_ BitVec 32) ValueCell!17583)) (size!44389 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90759)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90761 0))(
  ( (array!90762 (arr!43839 (Array (_ BitVec 32) (_ BitVec 64))) (size!44390 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90761)

(assert (=> b!1337712 (= res!887740 (and (= (size!44389 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44390 _keys!1590) (size!44389 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!57129 () Bool)

(declare-fun mapRes!57129 () Bool)

(assert (=> mapIsEmpty!57129 mapRes!57129))

(declare-fun b!1337713 () Bool)

(declare-fun e!761745 () Bool)

(declare-fun tp_is_empty!36963 () Bool)

(assert (=> b!1337713 (= e!761745 tp_is_empty!36963)))

(declare-fun b!1337714 () Bool)

(declare-fun res!887745 () Bool)

(assert (=> b!1337714 (=> (not res!887745) (not e!761744))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54387)

(declare-fun zeroValue!1262 () V!54387)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k0!1153 () (_ BitVec 64))

(declare-datatypes ((tuple2!24082 0))(
  ( (tuple2!24083 (_1!12051 (_ BitVec 64)) (_2!12051 V!54387)) )
))
(declare-datatypes ((List!31249 0))(
  ( (Nil!31246) (Cons!31245 (h!32454 tuple2!24082) (t!45578 List!31249)) )
))
(declare-datatypes ((ListLongMap!21751 0))(
  ( (ListLongMap!21752 (toList!10891 List!31249)) )
))
(declare-fun contains!8996 (ListLongMap!21751 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5796 (array!90761 array!90759 (_ BitVec 32) (_ BitVec 32) V!54387 V!54387 (_ BitVec 32) Int) ListLongMap!21751)

(assert (=> b!1337714 (= res!887745 (contains!8996 (getCurrentListMap!5796 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1337715 () Bool)

(declare-fun res!887739 () Bool)

(assert (=> b!1337715 (=> (not res!887739) (not e!761744))))

(assert (=> b!1337715 (= res!887739 (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun b!1337716 () Bool)

(declare-fun res!887748 () Bool)

(assert (=> b!1337716 (=> (not res!887748) (not e!761744))))

(declare-datatypes ((List!31250 0))(
  ( (Nil!31247) (Cons!31246 (h!32455 (_ BitVec 64)) (t!45579 List!31250)) )
))
(declare-fun arrayNoDuplicates!0 (array!90761 (_ BitVec 32) List!31250) Bool)

(assert (=> b!1337716 (= res!887748 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31247))))

(declare-fun b!1337718 () Bool)

(assert (=> b!1337718 (= e!761744 (= k0!1153 (select (arr!43839 _keys!1590) from!1980)))))

(declare-fun mapNonEmpty!57129 () Bool)

(declare-fun tp!108807 () Bool)

(assert (=> mapNonEmpty!57129 (= mapRes!57129 (and tp!108807 e!761745))))

(declare-fun mapValue!57129 () ValueCell!17583)

(declare-fun mapKey!57129 () (_ BitVec 32))

(declare-fun mapRest!57129 () (Array (_ BitVec 32) ValueCell!17583))

(assert (=> mapNonEmpty!57129 (= (arr!43838 _values!1320) (store mapRest!57129 mapKey!57129 mapValue!57129))))

(declare-fun b!1337719 () Bool)

(declare-fun res!887742 () Bool)

(assert (=> b!1337719 (=> (not res!887742) (not e!761744))))

(assert (=> b!1337719 (= res!887742 (not (= (select (arr!43839 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1337720 () Bool)

(declare-fun res!887743 () Bool)

(assert (=> b!1337720 (=> (not res!887743) (not e!761744))))

(assert (=> b!1337720 (= res!887743 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44390 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!887741 () Bool)

(assert (=> start!112836 (=> (not res!887741) (not e!761744))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112836 (= res!887741 (validMask!0 mask!1998))))

(assert (=> start!112836 e!761744))

(declare-fun e!761746 () Bool)

(declare-fun array_inv!32987 (array!90759) Bool)

(assert (=> start!112836 (and (array_inv!32987 _values!1320) e!761746)))

(assert (=> start!112836 true))

(declare-fun array_inv!32988 (array!90761) Bool)

(assert (=> start!112836 (array_inv!32988 _keys!1590)))

(assert (=> start!112836 tp!108808))

(assert (=> start!112836 tp_is_empty!36963))

(declare-fun b!1337717 () Bool)

(declare-fun e!761747 () Bool)

(assert (=> b!1337717 (= e!761747 tp_is_empty!36963)))

(declare-fun b!1337721 () Bool)

(declare-fun res!887746 () Bool)

(assert (=> b!1337721 (=> (not res!887746) (not e!761744))))

(declare-fun +!4720 (ListLongMap!21751 tuple2!24082) ListLongMap!21751)

(declare-fun getCurrentListMapNoExtraKeys!6443 (array!90761 array!90759 (_ BitVec 32) (_ BitVec 32) V!54387 V!54387 (_ BitVec 32) Int) ListLongMap!21751)

(declare-fun get!22164 (ValueCell!17583 V!54387) V!54387)

(declare-fun dynLambda!3757 (Int (_ BitVec 64)) V!54387)

(assert (=> b!1337721 (= res!887746 (contains!8996 (+!4720 (getCurrentListMapNoExtraKeys!6443 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24083 (select (arr!43839 _keys!1590) from!1980) (get!22164 (select (arr!43838 _values!1320) from!1980) (dynLambda!3757 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) k0!1153))))

(declare-fun b!1337722 () Bool)

(assert (=> b!1337722 (= e!761746 (and e!761747 mapRes!57129))))

(declare-fun condMapEmpty!57129 () Bool)

(declare-fun mapDefault!57129 () ValueCell!17583)

(assert (=> b!1337722 (= condMapEmpty!57129 (= (arr!43838 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17583)) mapDefault!57129)))))

(declare-fun b!1337723 () Bool)

(declare-fun res!887747 () Bool)

(assert (=> b!1337723 (=> (not res!887747) (not e!761744))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1337723 (= res!887747 (validKeyInArray!0 (select (arr!43839 _keys!1590) from!1980)))))

(declare-fun b!1337724 () Bool)

(declare-fun res!887744 () Bool)

(assert (=> b!1337724 (=> (not res!887744) (not e!761744))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90761 (_ BitVec 32)) Bool)

(assert (=> b!1337724 (= res!887744 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(assert (= (and start!112836 res!887741) b!1337712))

(assert (= (and b!1337712 res!887740) b!1337724))

(assert (= (and b!1337724 res!887744) b!1337716))

(assert (= (and b!1337716 res!887748) b!1337720))

(assert (= (and b!1337720 res!887743) b!1337714))

(assert (= (and b!1337714 res!887745) b!1337719))

(assert (= (and b!1337719 res!887742) b!1337723))

(assert (= (and b!1337723 res!887747) b!1337715))

(assert (= (and b!1337715 res!887739) b!1337721))

(assert (= (and b!1337721 res!887746) b!1337718))

(assert (= (and b!1337722 condMapEmpty!57129) mapIsEmpty!57129))

(assert (= (and b!1337722 (not condMapEmpty!57129)) mapNonEmpty!57129))

(get-info :version)

(assert (= (and mapNonEmpty!57129 ((_ is ValueCellFull!17583) mapValue!57129)) b!1337713))

(assert (= (and b!1337722 ((_ is ValueCellFull!17583) mapDefault!57129)) b!1337717))

(assert (= start!112836 b!1337722))

(declare-fun b_lambda!24257 () Bool)

(assert (=> (not b_lambda!24257) (not b!1337721)))

(declare-fun t!45577 () Bool)

(declare-fun tb!12133 () Bool)

(assert (=> (and start!112836 (= defaultEntry!1323 defaultEntry!1323) t!45577) tb!12133))

(declare-fun result!25335 () Bool)

(assert (=> tb!12133 (= result!25335 tp_is_empty!36963)))

(assert (=> b!1337721 t!45577))

(declare-fun b_and!50065 () Bool)

(assert (= b_and!50063 (and (=> t!45577 result!25335) b_and!50065)))

(declare-fun m!1225913 () Bool)

(assert (=> b!1337724 m!1225913))

(declare-fun m!1225915 () Bool)

(assert (=> b!1337718 m!1225915))

(declare-fun m!1225917 () Bool)

(assert (=> start!112836 m!1225917))

(declare-fun m!1225919 () Bool)

(assert (=> start!112836 m!1225919))

(declare-fun m!1225921 () Bool)

(assert (=> start!112836 m!1225921))

(assert (=> b!1337719 m!1225915))

(declare-fun m!1225923 () Bool)

(assert (=> b!1337716 m!1225923))

(declare-fun m!1225925 () Bool)

(assert (=> b!1337714 m!1225925))

(assert (=> b!1337714 m!1225925))

(declare-fun m!1225927 () Bool)

(assert (=> b!1337714 m!1225927))

(assert (=> b!1337723 m!1225915))

(assert (=> b!1337723 m!1225915))

(declare-fun m!1225929 () Bool)

(assert (=> b!1337723 m!1225929))

(declare-fun m!1225931 () Bool)

(assert (=> b!1337721 m!1225931))

(declare-fun m!1225933 () Bool)

(assert (=> b!1337721 m!1225933))

(declare-fun m!1225935 () Bool)

(assert (=> b!1337721 m!1225935))

(declare-fun m!1225937 () Bool)

(assert (=> b!1337721 m!1225937))

(assert (=> b!1337721 m!1225931))

(declare-fun m!1225939 () Bool)

(assert (=> b!1337721 m!1225939))

(assert (=> b!1337721 m!1225935))

(declare-fun m!1225941 () Bool)

(assert (=> b!1337721 m!1225941))

(assert (=> b!1337721 m!1225933))

(assert (=> b!1337721 m!1225937))

(assert (=> b!1337721 m!1225915))

(declare-fun m!1225943 () Bool)

(assert (=> mapNonEmpty!57129 m!1225943))

(check-sat (not b!1337716) (not b_next!31053) (not b!1337721) tp_is_empty!36963 (not b!1337724) (not b!1337714) (not start!112836) (not b_lambda!24257) b_and!50065 (not mapNonEmpty!57129) (not b!1337723))
(check-sat b_and!50065 (not b_next!31053))
