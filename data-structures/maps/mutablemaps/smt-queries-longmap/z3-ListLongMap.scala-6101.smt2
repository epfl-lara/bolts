; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78744 () Bool)

(assert start!78744)

(declare-fun b_free!16929 () Bool)

(declare-fun b_next!16929 () Bool)

(assert (=> start!78744 (= b_free!16929 (not b_next!16929))))

(declare-fun tp!59228 () Bool)

(declare-fun b_and!27613 () Bool)

(assert (=> start!78744 (= tp!59228 b_and!27613)))

(declare-fun b!917974 () Bool)

(declare-fun res!619016 () Bool)

(declare-fun e!515361 () Bool)

(assert (=> b!917974 (=> (not res!619016) (not e!515361))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-datatypes ((V!30881 0))(
  ( (V!30882 (val!9769 Int)) )
))
(declare-fun v!791 () V!30881)

(declare-datatypes ((tuple2!12764 0))(
  ( (tuple2!12765 (_1!6392 (_ BitVec 64)) (_2!6392 V!30881)) )
))
(declare-datatypes ((List!18612 0))(
  ( (Nil!18609) (Cons!18608 (h!19754 tuple2!12764) (t!26279 List!18612)) )
))
(declare-datatypes ((ListLongMap!11475 0))(
  ( (ListLongMap!11476 (toList!5753 List!18612)) )
))
(declare-fun lt!412110 () ListLongMap!11475)

(declare-fun apply!575 (ListLongMap!11475 (_ BitVec 64)) V!30881)

(assert (=> b!917974 (= res!619016 (= (apply!575 lt!412110 k0!1099) v!791))))

(declare-fun b!917975 () Bool)

(declare-fun e!515363 () Bool)

(declare-fun tp_is_empty!19437 () Bool)

(assert (=> b!917975 (= e!515363 tp_is_empty!19437)))

(declare-fun b!917976 () Bool)

(declare-fun e!515364 () Bool)

(assert (=> b!917976 (= e!515364 (not true))))

(declare-datatypes ((array!54866 0))(
  ( (array!54867 (arr!26374 (Array (_ BitVec 32) (_ BitVec 64))) (size!26834 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54866)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9237 0))(
  ( (ValueCellFull!9237 (v!12287 V!30881)) (EmptyCell!9237) )
))
(declare-datatypes ((array!54868 0))(
  ( (array!54869 (arr!26375 (Array (_ BitVec 32) ValueCell!9237)) (size!26835 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54868)

(declare-fun defaultEntry!1235 () Int)

(declare-fun lt!412109 () (_ BitVec 64))

(declare-fun zeroValue!1173 () V!30881)

(declare-fun minValue!1173 () V!30881)

(declare-fun getCurrentListMap!2979 (array!54866 array!54868 (_ BitVec 32) (_ BitVec 32) V!30881 V!30881 (_ BitVec 32) Int) ListLongMap!11475)

(declare-fun +!2585 (ListLongMap!11475 tuple2!12764) ListLongMap!11475)

(declare-fun get!13840 (ValueCell!9237 V!30881) V!30881)

(declare-fun dynLambda!1424 (Int (_ BitVec 64)) V!30881)

(assert (=> b!917976 (= (getCurrentListMap!2979 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2585 (getCurrentListMap!2979 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!12765 lt!412109 (get!13840 (select (arr!26375 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1424 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!30977 0))(
  ( (Unit!30978) )
))
(declare-fun lt!412108 () Unit!30977)

(declare-fun lemmaListMapRecursiveValidKeyArray!20 (array!54866 array!54868 (_ BitVec 32) (_ BitVec 32) V!30881 V!30881 (_ BitVec 32) Int) Unit!30977)

(assert (=> b!917976 (= lt!412108 (lemmaListMapRecursiveValidKeyArray!20 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!917977 () Bool)

(declare-fun e!515362 () Bool)

(declare-fun e!515365 () Bool)

(declare-fun mapRes!30912 () Bool)

(assert (=> b!917977 (= e!515362 (and e!515365 mapRes!30912))))

(declare-fun condMapEmpty!30912 () Bool)

(declare-fun mapDefault!30912 () ValueCell!9237)

(assert (=> b!917977 (= condMapEmpty!30912 (= (arr!26375 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9237)) mapDefault!30912)))))

(declare-fun b!917978 () Bool)

(declare-fun res!619022 () Bool)

(declare-fun e!515367 () Bool)

(assert (=> b!917978 (=> (not res!619022) (not e!515367))))

(declare-datatypes ((List!18613 0))(
  ( (Nil!18610) (Cons!18609 (h!19755 (_ BitVec 64)) (t!26280 List!18613)) )
))
(declare-fun arrayNoDuplicates!0 (array!54866 (_ BitVec 32) List!18613) Bool)

(assert (=> b!917978 (= res!619022 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18610))))

(declare-fun b!917979 () Bool)

(declare-fun res!619015 () Bool)

(assert (=> b!917979 (=> (not res!619015) (not e!515361))))

(assert (=> b!917979 (= res!619015 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!917980 () Bool)

(declare-fun res!619013 () Bool)

(assert (=> b!917980 (=> (not res!619013) (not e!515367))))

(assert (=> b!917980 (= res!619013 (and (= (size!26835 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26834 _keys!1487) (size!26835 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!917981 () Bool)

(declare-fun res!619014 () Bool)

(assert (=> b!917981 (=> (not res!619014) (not e!515367))))

(assert (=> b!917981 (= res!619014 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26834 _keys!1487))))))

(declare-fun b!917982 () Bool)

(declare-fun res!619018 () Bool)

(assert (=> b!917982 (=> (not res!619018) (not e!515361))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!917982 (= res!619018 (validKeyInArray!0 k0!1099))))

(declare-fun b!917983 () Bool)

(assert (=> b!917983 (= e!515365 tp_is_empty!19437)))

(declare-fun mapIsEmpty!30912 () Bool)

(assert (=> mapIsEmpty!30912 mapRes!30912))

(declare-fun mapNonEmpty!30912 () Bool)

(declare-fun tp!59229 () Bool)

(assert (=> mapNonEmpty!30912 (= mapRes!30912 (and tp!59229 e!515363))))

(declare-fun mapValue!30912 () ValueCell!9237)

(declare-fun mapRest!30912 () (Array (_ BitVec 32) ValueCell!9237))

(declare-fun mapKey!30912 () (_ BitVec 32))

(assert (=> mapNonEmpty!30912 (= (arr!26375 _values!1231) (store mapRest!30912 mapKey!30912 mapValue!30912))))

(declare-fun b!917985 () Bool)

(declare-fun res!619020 () Bool)

(assert (=> b!917985 (=> (not res!619020) (not e!515367))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54866 (_ BitVec 32)) Bool)

(assert (=> b!917985 (= res!619020 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!917986 () Bool)

(assert (=> b!917986 (= e!515367 e!515361)))

(declare-fun res!619019 () Bool)

(assert (=> b!917986 (=> (not res!619019) (not e!515361))))

(declare-fun contains!4767 (ListLongMap!11475 (_ BitVec 64)) Bool)

(assert (=> b!917986 (= res!619019 (contains!4767 lt!412110 k0!1099))))

(assert (=> b!917986 (= lt!412110 (getCurrentListMap!2979 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!917984 () Bool)

(assert (=> b!917984 (= e!515361 e!515364)))

(declare-fun res!619017 () Bool)

(assert (=> b!917984 (=> (not res!619017) (not e!515364))))

(assert (=> b!917984 (= res!619017 (validKeyInArray!0 lt!412109))))

(assert (=> b!917984 (= lt!412109 (select (arr!26374 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun res!619021 () Bool)

(assert (=> start!78744 (=> (not res!619021) (not e!515367))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78744 (= res!619021 (validMask!0 mask!1881))))

(assert (=> start!78744 e!515367))

(assert (=> start!78744 true))

(assert (=> start!78744 tp_is_empty!19437))

(declare-fun array_inv!20552 (array!54868) Bool)

(assert (=> start!78744 (and (array_inv!20552 _values!1231) e!515362)))

(assert (=> start!78744 tp!59228))

(declare-fun array_inv!20553 (array!54866) Bool)

(assert (=> start!78744 (array_inv!20553 _keys!1487)))

(assert (= (and start!78744 res!619021) b!917980))

(assert (= (and b!917980 res!619013) b!917985))

(assert (= (and b!917985 res!619020) b!917978))

(assert (= (and b!917978 res!619022) b!917981))

(assert (= (and b!917981 res!619014) b!917986))

(assert (= (and b!917986 res!619019) b!917974))

(assert (= (and b!917974 res!619016) b!917979))

(assert (= (and b!917979 res!619015) b!917982))

(assert (= (and b!917982 res!619018) b!917984))

(assert (= (and b!917984 res!619017) b!917976))

(assert (= (and b!917977 condMapEmpty!30912) mapIsEmpty!30912))

(assert (= (and b!917977 (not condMapEmpty!30912)) mapNonEmpty!30912))

(get-info :version)

(assert (= (and mapNonEmpty!30912 ((_ is ValueCellFull!9237) mapValue!30912)) b!917975))

(assert (= (and b!917977 ((_ is ValueCellFull!9237) mapDefault!30912)) b!917983))

(assert (= start!78744 b!917977))

(declare-fun b_lambda!13461 () Bool)

(assert (=> (not b_lambda!13461) (not b!917976)))

(declare-fun t!26278 () Bool)

(declare-fun tb!5517 () Bool)

(assert (=> (and start!78744 (= defaultEntry!1235 defaultEntry!1235) t!26278) tb!5517))

(declare-fun result!10849 () Bool)

(assert (=> tb!5517 (= result!10849 tp_is_empty!19437)))

(assert (=> b!917976 t!26278))

(declare-fun b_and!27615 () Bool)

(assert (= b_and!27613 (and (=> t!26278 result!10849) b_and!27615)))

(declare-fun m!851775 () Bool)

(assert (=> b!917974 m!851775))

(declare-fun m!851777 () Bool)

(assert (=> b!917984 m!851777))

(declare-fun m!851779 () Bool)

(assert (=> b!917984 m!851779))

(declare-fun m!851781 () Bool)

(assert (=> b!917978 m!851781))

(declare-fun m!851783 () Bool)

(assert (=> mapNonEmpty!30912 m!851783))

(declare-fun m!851785 () Bool)

(assert (=> b!917976 m!851785))

(declare-fun m!851787 () Bool)

(assert (=> b!917976 m!851787))

(declare-fun m!851789 () Bool)

(assert (=> b!917976 m!851789))

(declare-fun m!851791 () Bool)

(assert (=> b!917976 m!851791))

(assert (=> b!917976 m!851789))

(assert (=> b!917976 m!851791))

(declare-fun m!851793 () Bool)

(assert (=> b!917976 m!851793))

(declare-fun m!851795 () Bool)

(assert (=> b!917976 m!851795))

(assert (=> b!917976 m!851785))

(declare-fun m!851797 () Bool)

(assert (=> b!917976 m!851797))

(declare-fun m!851799 () Bool)

(assert (=> start!78744 m!851799))

(declare-fun m!851801 () Bool)

(assert (=> start!78744 m!851801))

(declare-fun m!851803 () Bool)

(assert (=> start!78744 m!851803))

(declare-fun m!851805 () Bool)

(assert (=> b!917986 m!851805))

(declare-fun m!851807 () Bool)

(assert (=> b!917986 m!851807))

(declare-fun m!851809 () Bool)

(assert (=> b!917985 m!851809))

(declare-fun m!851811 () Bool)

(assert (=> b!917982 m!851811))

(check-sat (not b_lambda!13461) tp_is_empty!19437 (not b!917985) (not mapNonEmpty!30912) (not b!917984) (not b!917978) (not b!917976) (not b!917986) (not b_next!16929) (not b!917982) b_and!27615 (not start!78744) (not b!917974))
(check-sat b_and!27615 (not b_next!16929))
