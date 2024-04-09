; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78828 () Bool)

(assert start!78828)

(declare-fun b_free!17013 () Bool)

(declare-fun b_next!17013 () Bool)

(assert (=> start!78828 (= b_free!17013 (not b_next!17013))))

(declare-fun tp!59481 () Bool)

(declare-fun b_and!27781 () Bool)

(assert (=> start!78828 (= tp!59481 b_and!27781)))

(declare-fun b!919696 () Bool)

(declare-fun e!516249 () Bool)

(declare-fun tp_is_empty!19521 () Bool)

(assert (=> b!919696 (= e!516249 tp_is_empty!19521)))

(declare-fun b!919697 () Bool)

(declare-fun e!516246 () Bool)

(assert (=> b!919697 (= e!516246 tp_is_empty!19521)))

(declare-fun res!620280 () Bool)

(declare-fun e!516243 () Bool)

(assert (=> start!78828 (=> (not res!620280) (not e!516243))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78828 (= res!620280 (validMask!0 mask!1881))))

(assert (=> start!78828 e!516243))

(assert (=> start!78828 true))

(assert (=> start!78828 tp_is_empty!19521))

(declare-datatypes ((V!30993 0))(
  ( (V!30994 (val!9811 Int)) )
))
(declare-datatypes ((ValueCell!9279 0))(
  ( (ValueCellFull!9279 (v!12329 V!30993)) (EmptyCell!9279) )
))
(declare-datatypes ((array!55034 0))(
  ( (array!55035 (arr!26458 (Array (_ BitVec 32) ValueCell!9279)) (size!26918 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55034)

(declare-fun e!516244 () Bool)

(declare-fun array_inv!20610 (array!55034) Bool)

(assert (=> start!78828 (and (array_inv!20610 _values!1231) e!516244)))

(assert (=> start!78828 tp!59481))

(declare-datatypes ((array!55036 0))(
  ( (array!55037 (arr!26459 (Array (_ BitVec 32) (_ BitVec 64))) (size!26919 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55036)

(declare-fun array_inv!20611 (array!55036) Bool)

(assert (=> start!78828 (array_inv!20611 _keys!1487)))

(declare-fun mapNonEmpty!31038 () Bool)

(declare-fun mapRes!31038 () Bool)

(declare-fun tp!59480 () Bool)

(assert (=> mapNonEmpty!31038 (= mapRes!31038 (and tp!59480 e!516246))))

(declare-fun mapValue!31038 () ValueCell!9279)

(declare-fun mapRest!31038 () (Array (_ BitVec 32) ValueCell!9279))

(declare-fun mapKey!31038 () (_ BitVec 32))

(assert (=> mapNonEmpty!31038 (= (arr!26458 _values!1231) (store mapRest!31038 mapKey!31038 mapValue!31038))))

(declare-fun b!919698 () Bool)

(declare-fun res!620277 () Bool)

(assert (=> b!919698 (=> (not res!620277) (not e!516243))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!919698 (= res!620277 (and (= (size!26918 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26919 _keys!1487) (size!26918 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!919699 () Bool)

(declare-fun e!516247 () Bool)

(assert (=> b!919699 (= e!516247 (not true))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((List!18682 0))(
  ( (Nil!18679) (Cons!18678 (h!19824 (_ BitVec 64)) (t!26433 List!18682)) )
))
(declare-fun arrayNoDuplicates!0 (array!55036 (_ BitVec 32) List!18682) Bool)

(assert (=> b!919699 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18679)))

(declare-datatypes ((Unit!31035 0))(
  ( (Unit!31036) )
))
(declare-fun lt!412862 () Unit!31035)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55036 (_ BitVec 32) (_ BitVec 32)) Unit!31035)

(assert (=> b!919699 (= lt!412862 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!12838 0))(
  ( (tuple2!12839 (_1!6429 (_ BitVec 64)) (_2!6429 V!30993)) )
))
(declare-datatypes ((List!18683 0))(
  ( (Nil!18680) (Cons!18679 (h!19825 tuple2!12838) (t!26434 List!18683)) )
))
(declare-datatypes ((ListLongMap!11549 0))(
  ( (ListLongMap!11550 (toList!5790 List!18683)) )
))
(declare-fun lt!412859 () ListLongMap!11549)

(declare-fun lt!412860 () tuple2!12838)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4801 (ListLongMap!11549 (_ BitVec 64)) Bool)

(declare-fun +!2614 (ListLongMap!11549 tuple2!12838) ListLongMap!11549)

(assert (=> b!919699 (contains!4801 (+!2614 lt!412859 lt!412860) k0!1099)))

(declare-fun lt!412863 () V!30993)

(declare-fun lt!412861 () (_ BitVec 64))

(declare-fun lt!412858 () Unit!31035)

(declare-fun addStillContains!376 (ListLongMap!11549 (_ BitVec 64) V!30993 (_ BitVec 64)) Unit!31035)

(assert (=> b!919699 (= lt!412858 (addStillContains!376 lt!412859 lt!412861 lt!412863 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30993)

(declare-fun minValue!1173 () V!30993)

(declare-fun getCurrentListMap!3013 (array!55036 array!55034 (_ BitVec 32) (_ BitVec 32) V!30993 V!30993 (_ BitVec 32) Int) ListLongMap!11549)

(assert (=> b!919699 (= (getCurrentListMap!3013 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2614 (getCurrentListMap!3013 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!412860))))

(assert (=> b!919699 (= lt!412860 (tuple2!12839 lt!412861 lt!412863))))

(declare-fun get!13897 (ValueCell!9279 V!30993) V!30993)

(declare-fun dynLambda!1453 (Int (_ BitVec 64)) V!30993)

(assert (=> b!919699 (= lt!412863 (get!13897 (select (arr!26458 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1453 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!412857 () Unit!31035)

(declare-fun lemmaListMapRecursiveValidKeyArray!49 (array!55036 array!55034 (_ BitVec 32) (_ BitVec 32) V!30993 V!30993 (_ BitVec 32) Int) Unit!31035)

(assert (=> b!919699 (= lt!412857 (lemmaListMapRecursiveValidKeyArray!49 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!919700 () Bool)

(declare-fun e!516248 () Bool)

(assert (=> b!919700 (= e!516248 e!516247)))

(declare-fun res!620282 () Bool)

(assert (=> b!919700 (=> (not res!620282) (not e!516247))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!919700 (= res!620282 (validKeyInArray!0 lt!412861))))

(assert (=> b!919700 (= lt!412861 (select (arr!26459 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!919701 () Bool)

(declare-fun res!620279 () Bool)

(assert (=> b!919701 (=> (not res!620279) (not e!516243))))

(assert (=> b!919701 (= res!620279 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26919 _keys!1487))))))

(declare-fun b!919702 () Bool)

(declare-fun res!620276 () Bool)

(assert (=> b!919702 (=> (not res!620276) (not e!516243))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55036 (_ BitVec 32)) Bool)

(assert (=> b!919702 (= res!620276 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!919703 () Bool)

(declare-fun res!620278 () Bool)

(assert (=> b!919703 (=> (not res!620278) (not e!516248))))

(assert (=> b!919703 (= res!620278 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!919704 () Bool)

(declare-fun res!620273 () Bool)

(assert (=> b!919704 (=> (not res!620273) (not e!516243))))

(assert (=> b!919704 (= res!620273 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18679))))

(declare-fun b!919705 () Bool)

(declare-fun res!620281 () Bool)

(assert (=> b!919705 (=> (not res!620281) (not e!516248))))

(assert (=> b!919705 (= res!620281 (validKeyInArray!0 k0!1099))))

(declare-fun mapIsEmpty!31038 () Bool)

(assert (=> mapIsEmpty!31038 mapRes!31038))

(declare-fun b!919706 () Bool)

(declare-fun res!620274 () Bool)

(assert (=> b!919706 (=> (not res!620274) (not e!516248))))

(declare-fun v!791 () V!30993)

(declare-fun apply!604 (ListLongMap!11549 (_ BitVec 64)) V!30993)

(assert (=> b!919706 (= res!620274 (= (apply!604 lt!412859 k0!1099) v!791))))

(declare-fun b!919707 () Bool)

(assert (=> b!919707 (= e!516243 e!516248)))

(declare-fun res!620275 () Bool)

(assert (=> b!919707 (=> (not res!620275) (not e!516248))))

(assert (=> b!919707 (= res!620275 (contains!4801 lt!412859 k0!1099))))

(assert (=> b!919707 (= lt!412859 (getCurrentListMap!3013 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!919708 () Bool)

(assert (=> b!919708 (= e!516244 (and e!516249 mapRes!31038))))

(declare-fun condMapEmpty!31038 () Bool)

(declare-fun mapDefault!31038 () ValueCell!9279)

(assert (=> b!919708 (= condMapEmpty!31038 (= (arr!26458 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9279)) mapDefault!31038)))))

(assert (= (and start!78828 res!620280) b!919698))

(assert (= (and b!919698 res!620277) b!919702))

(assert (= (and b!919702 res!620276) b!919704))

(assert (= (and b!919704 res!620273) b!919701))

(assert (= (and b!919701 res!620279) b!919707))

(assert (= (and b!919707 res!620275) b!919706))

(assert (= (and b!919706 res!620274) b!919703))

(assert (= (and b!919703 res!620278) b!919705))

(assert (= (and b!919705 res!620281) b!919700))

(assert (= (and b!919700 res!620282) b!919699))

(assert (= (and b!919708 condMapEmpty!31038) mapIsEmpty!31038))

(assert (= (and b!919708 (not condMapEmpty!31038)) mapNonEmpty!31038))

(get-info :version)

(assert (= (and mapNonEmpty!31038 ((_ is ValueCellFull!9279) mapValue!31038)) b!919697))

(assert (= (and b!919708 ((_ is ValueCellFull!9279) mapDefault!31038)) b!919696))

(assert (= start!78828 b!919708))

(declare-fun b_lambda!13545 () Bool)

(assert (=> (not b_lambda!13545) (not b!919699)))

(declare-fun t!26432 () Bool)

(declare-fun tb!5601 () Bool)

(assert (=> (and start!78828 (= defaultEntry!1235 defaultEntry!1235) t!26432) tb!5601))

(declare-fun result!11017 () Bool)

(assert (=> tb!5601 (= result!11017 tp_is_empty!19521)))

(assert (=> b!919699 t!26432))

(declare-fun b_and!27783 () Bool)

(assert (= b_and!27781 (and (=> t!26432 result!11017) b_and!27783)))

(declare-fun m!853651 () Bool)

(assert (=> b!919699 m!853651))

(declare-fun m!853653 () Bool)

(assert (=> b!919699 m!853653))

(declare-fun m!853655 () Bool)

(assert (=> b!919699 m!853655))

(declare-fun m!853657 () Bool)

(assert (=> b!919699 m!853657))

(assert (=> b!919699 m!853655))

(assert (=> b!919699 m!853657))

(declare-fun m!853659 () Bool)

(assert (=> b!919699 m!853659))

(declare-fun m!853661 () Bool)

(assert (=> b!919699 m!853661))

(declare-fun m!853663 () Bool)

(assert (=> b!919699 m!853663))

(declare-fun m!853665 () Bool)

(assert (=> b!919699 m!853665))

(declare-fun m!853667 () Bool)

(assert (=> b!919699 m!853667))

(declare-fun m!853669 () Bool)

(assert (=> b!919699 m!853669))

(assert (=> b!919699 m!853663))

(declare-fun m!853671 () Bool)

(assert (=> b!919699 m!853671))

(assert (=> b!919699 m!853651))

(declare-fun m!853673 () Bool)

(assert (=> b!919699 m!853673))

(declare-fun m!853675 () Bool)

(assert (=> b!919702 m!853675))

(declare-fun m!853677 () Bool)

(assert (=> b!919707 m!853677))

(declare-fun m!853679 () Bool)

(assert (=> b!919707 m!853679))

(declare-fun m!853681 () Bool)

(assert (=> b!919704 m!853681))

(declare-fun m!853683 () Bool)

(assert (=> b!919700 m!853683))

(declare-fun m!853685 () Bool)

(assert (=> b!919700 m!853685))

(declare-fun m!853687 () Bool)

(assert (=> mapNonEmpty!31038 m!853687))

(declare-fun m!853689 () Bool)

(assert (=> b!919705 m!853689))

(declare-fun m!853691 () Bool)

(assert (=> start!78828 m!853691))

(declare-fun m!853693 () Bool)

(assert (=> start!78828 m!853693))

(declare-fun m!853695 () Bool)

(assert (=> start!78828 m!853695))

(declare-fun m!853697 () Bool)

(assert (=> b!919706 m!853697))

(check-sat (not b!919705) (not mapNonEmpty!31038) (not b!919704) b_and!27783 tp_is_empty!19521 (not b!919707) (not b_lambda!13545) (not b!919706) (not b!919699) (not b!919702) (not b!919700) (not b_next!17013) (not start!78828))
(check-sat b_and!27783 (not b_next!17013))
