; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78786 () Bool)

(assert start!78786)

(declare-fun b_free!16971 () Bool)

(declare-fun b_next!16971 () Bool)

(assert (=> start!78786 (= b_free!16971 (not b_next!16971))))

(declare-fun tp!59355 () Bool)

(declare-fun b_and!27697 () Bool)

(assert (=> start!78786 (= tp!59355 b_and!27697)))

(declare-fun b!918835 () Bool)

(declare-fun res!619645 () Bool)

(declare-fun e!515803 () Bool)

(assert (=> b!918835 (=> (not res!619645) (not e!515803))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-datatypes ((V!30937 0))(
  ( (V!30938 (val!9790 Int)) )
))
(declare-datatypes ((tuple2!12804 0))(
  ( (tuple2!12805 (_1!6412 (_ BitVec 64)) (_2!6412 V!30937)) )
))
(declare-datatypes ((List!18645 0))(
  ( (Nil!18642) (Cons!18641 (h!19787 tuple2!12804) (t!26354 List!18645)) )
))
(declare-datatypes ((ListLongMap!11515 0))(
  ( (ListLongMap!11516 (toList!5773 List!18645)) )
))
(declare-fun lt!412425 () ListLongMap!11515)

(declare-fun v!791 () V!30937)

(declare-fun apply!591 (ListLongMap!11515 (_ BitVec 64)) V!30937)

(assert (=> b!918835 (= res!619645 (= (apply!591 lt!412425 k0!1099) v!791))))

(declare-fun res!619650 () Bool)

(declare-fun e!515804 () Bool)

(assert (=> start!78786 (=> (not res!619650) (not e!515804))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78786 (= res!619650 (validMask!0 mask!1881))))

(assert (=> start!78786 e!515804))

(assert (=> start!78786 true))

(declare-fun tp_is_empty!19479 () Bool)

(assert (=> start!78786 tp_is_empty!19479))

(declare-datatypes ((ValueCell!9258 0))(
  ( (ValueCellFull!9258 (v!12308 V!30937)) (EmptyCell!9258) )
))
(declare-datatypes ((array!54950 0))(
  ( (array!54951 (arr!26416 (Array (_ BitVec 32) ValueCell!9258)) (size!26876 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54950)

(declare-fun e!515802 () Bool)

(declare-fun array_inv!20584 (array!54950) Bool)

(assert (=> start!78786 (and (array_inv!20584 _values!1231) e!515802)))

(assert (=> start!78786 tp!59355))

(declare-datatypes ((array!54952 0))(
  ( (array!54953 (arr!26417 (Array (_ BitVec 32) (_ BitVec 64))) (size!26877 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54952)

(declare-fun array_inv!20585 (array!54952) Bool)

(assert (=> start!78786 (array_inv!20585 _keys!1487)))

(declare-fun b!918836 () Bool)

(declare-fun e!515808 () Bool)

(assert (=> b!918836 (= e!515808 tp_is_empty!19479)))

(declare-fun b!918837 () Bool)

(declare-fun res!619646 () Bool)

(assert (=> b!918837 (=> (not res!619646) (not e!515803))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!918837 (= res!619646 (validKeyInArray!0 k0!1099))))

(declare-fun b!918838 () Bool)

(declare-fun res!619651 () Bool)

(assert (=> b!918838 (=> (not res!619651) (not e!515804))))

(declare-datatypes ((List!18646 0))(
  ( (Nil!18643) (Cons!18642 (h!19788 (_ BitVec 64)) (t!26355 List!18646)) )
))
(declare-fun arrayNoDuplicates!0 (array!54952 (_ BitVec 32) List!18646) Bool)

(assert (=> b!918838 (= res!619651 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18643))))

(declare-fun mapIsEmpty!30975 () Bool)

(declare-fun mapRes!30975 () Bool)

(assert (=> mapIsEmpty!30975 mapRes!30975))

(declare-fun b!918839 () Bool)

(declare-fun res!619648 () Bool)

(assert (=> b!918839 (=> (not res!619648) (not e!515804))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54952 (_ BitVec 32)) Bool)

(assert (=> b!918839 (= res!619648 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!918840 () Bool)

(declare-fun res!619644 () Bool)

(assert (=> b!918840 (=> (not res!619644) (not e!515804))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!918840 (= res!619644 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26877 _keys!1487))))))

(declare-fun b!918841 () Bool)

(declare-fun res!619649 () Bool)

(assert (=> b!918841 (=> (not res!619649) (not e!515804))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!918841 (= res!619649 (and (= (size!26876 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26877 _keys!1487) (size!26876 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!918842 () Bool)

(declare-fun e!515807 () Bool)

(assert (=> b!918842 (= e!515807 (not true))))

(declare-fun lt!412421 () tuple2!12804)

(declare-fun contains!4785 (ListLongMap!11515 (_ BitVec 64)) Bool)

(declare-fun +!2599 (ListLongMap!11515 tuple2!12804) ListLongMap!11515)

(assert (=> b!918842 (contains!4785 (+!2599 lt!412425 lt!412421) k0!1099)))

(declare-fun lt!412424 () (_ BitVec 64))

(declare-datatypes ((Unit!31005 0))(
  ( (Unit!31006) )
))
(declare-fun lt!412423 () Unit!31005)

(declare-fun lt!412422 () V!30937)

(declare-fun addStillContains!361 (ListLongMap!11515 (_ BitVec 64) V!30937 (_ BitVec 64)) Unit!31005)

(assert (=> b!918842 (= lt!412423 (addStillContains!361 lt!412425 lt!412424 lt!412422 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30937)

(declare-fun minValue!1173 () V!30937)

(declare-fun getCurrentListMap!2997 (array!54952 array!54950 (_ BitVec 32) (_ BitVec 32) V!30937 V!30937 (_ BitVec 32) Int) ListLongMap!11515)

(assert (=> b!918842 (= (getCurrentListMap!2997 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2599 (getCurrentListMap!2997 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!412421))))

(assert (=> b!918842 (= lt!412421 (tuple2!12805 lt!412424 lt!412422))))

(declare-fun get!13868 (ValueCell!9258 V!30937) V!30937)

(declare-fun dynLambda!1438 (Int (_ BitVec 64)) V!30937)

(assert (=> b!918842 (= lt!412422 (get!13868 (select (arr!26416 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1438 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!412420 () Unit!31005)

(declare-fun lemmaListMapRecursiveValidKeyArray!34 (array!54952 array!54950 (_ BitVec 32) (_ BitVec 32) V!30937 V!30937 (_ BitVec 32) Int) Unit!31005)

(assert (=> b!918842 (= lt!412420 (lemmaListMapRecursiveValidKeyArray!34 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!918843 () Bool)

(declare-fun e!515805 () Bool)

(assert (=> b!918843 (= e!515805 tp_is_empty!19479)))

(declare-fun mapNonEmpty!30975 () Bool)

(declare-fun tp!59354 () Bool)

(assert (=> mapNonEmpty!30975 (= mapRes!30975 (and tp!59354 e!515805))))

(declare-fun mapKey!30975 () (_ BitVec 32))

(declare-fun mapRest!30975 () (Array (_ BitVec 32) ValueCell!9258))

(declare-fun mapValue!30975 () ValueCell!9258)

(assert (=> mapNonEmpty!30975 (= (arr!26416 _values!1231) (store mapRest!30975 mapKey!30975 mapValue!30975))))

(declare-fun b!918844 () Bool)

(assert (=> b!918844 (= e!515802 (and e!515808 mapRes!30975))))

(declare-fun condMapEmpty!30975 () Bool)

(declare-fun mapDefault!30975 () ValueCell!9258)

(assert (=> b!918844 (= condMapEmpty!30975 (= (arr!26416 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9258)) mapDefault!30975)))))

(declare-fun b!918845 () Bool)

(assert (=> b!918845 (= e!515803 e!515807)))

(declare-fun res!619652 () Bool)

(assert (=> b!918845 (=> (not res!619652) (not e!515807))))

(assert (=> b!918845 (= res!619652 (validKeyInArray!0 lt!412424))))

(assert (=> b!918845 (= lt!412424 (select (arr!26417 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!918846 () Bool)

(declare-fun res!619643 () Bool)

(assert (=> b!918846 (=> (not res!619643) (not e!515803))))

(assert (=> b!918846 (= res!619643 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!918847 () Bool)

(assert (=> b!918847 (= e!515804 e!515803)))

(declare-fun res!619647 () Bool)

(assert (=> b!918847 (=> (not res!619647) (not e!515803))))

(assert (=> b!918847 (= res!619647 (contains!4785 lt!412425 k0!1099))))

(assert (=> b!918847 (= lt!412425 (getCurrentListMap!2997 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(assert (= (and start!78786 res!619650) b!918841))

(assert (= (and b!918841 res!619649) b!918839))

(assert (= (and b!918839 res!619648) b!918838))

(assert (= (and b!918838 res!619651) b!918840))

(assert (= (and b!918840 res!619644) b!918847))

(assert (= (and b!918847 res!619647) b!918835))

(assert (= (and b!918835 res!619645) b!918846))

(assert (= (and b!918846 res!619643) b!918837))

(assert (= (and b!918837 res!619646) b!918845))

(assert (= (and b!918845 res!619652) b!918842))

(assert (= (and b!918844 condMapEmpty!30975) mapIsEmpty!30975))

(assert (= (and b!918844 (not condMapEmpty!30975)) mapNonEmpty!30975))

(get-info :version)

(assert (= (and mapNonEmpty!30975 ((_ is ValueCellFull!9258) mapValue!30975)) b!918843))

(assert (= (and b!918844 ((_ is ValueCellFull!9258) mapDefault!30975)) b!918836))

(assert (= start!78786 b!918844))

(declare-fun b_lambda!13503 () Bool)

(assert (=> (not b_lambda!13503) (not b!918842)))

(declare-fun t!26353 () Bool)

(declare-fun tb!5559 () Bool)

(assert (=> (and start!78786 (= defaultEntry!1235 defaultEntry!1235) t!26353) tb!5559))

(declare-fun result!10933 () Bool)

(assert (=> tb!5559 (= result!10933 tp_is_empty!19479)))

(assert (=> b!918842 t!26353))

(declare-fun b_and!27699 () Bool)

(assert (= b_and!27697 (and (=> t!26353 result!10933) b_and!27699)))

(declare-fun m!852651 () Bool)

(assert (=> b!918839 m!852651))

(declare-fun m!852653 () Bool)

(assert (=> b!918838 m!852653))

(declare-fun m!852655 () Bool)

(assert (=> b!918847 m!852655))

(declare-fun m!852657 () Bool)

(assert (=> b!918847 m!852657))

(declare-fun m!852659 () Bool)

(assert (=> start!78786 m!852659))

(declare-fun m!852661 () Bool)

(assert (=> start!78786 m!852661))

(declare-fun m!852663 () Bool)

(assert (=> start!78786 m!852663))

(declare-fun m!852665 () Bool)

(assert (=> b!918835 m!852665))

(declare-fun m!852667 () Bool)

(assert (=> b!918845 m!852667))

(declare-fun m!852669 () Bool)

(assert (=> b!918845 m!852669))

(declare-fun m!852671 () Bool)

(assert (=> mapNonEmpty!30975 m!852671))

(declare-fun m!852673 () Bool)

(assert (=> b!918837 m!852673))

(declare-fun m!852675 () Bool)

(assert (=> b!918842 m!852675))

(declare-fun m!852677 () Bool)

(assert (=> b!918842 m!852677))

(declare-fun m!852679 () Bool)

(assert (=> b!918842 m!852679))

(declare-fun m!852681 () Bool)

(assert (=> b!918842 m!852681))

(declare-fun m!852683 () Bool)

(assert (=> b!918842 m!852683))

(declare-fun m!852685 () Bool)

(assert (=> b!918842 m!852685))

(assert (=> b!918842 m!852679))

(assert (=> b!918842 m!852683))

(assert (=> b!918842 m!852685))

(declare-fun m!852687 () Bool)

(assert (=> b!918842 m!852687))

(assert (=> b!918842 m!852675))

(declare-fun m!852689 () Bool)

(assert (=> b!918842 m!852689))

(declare-fun m!852691 () Bool)

(assert (=> b!918842 m!852691))

(declare-fun m!852693 () Bool)

(assert (=> b!918842 m!852693))

(check-sat tp_is_empty!19479 (not b!918838) (not b!918842) (not b!918845) (not b!918835) (not b_lambda!13503) (not b_next!16971) (not b!918847) b_and!27699 (not b!918837) (not start!78786) (not b!918839) (not mapNonEmpty!30975))
(check-sat b_and!27699 (not b_next!16971))
