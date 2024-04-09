; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97282 () Bool)

(assert start!97282)

(declare-fun b!1106761 () Bool)

(declare-fun e!631561 () Bool)

(declare-fun e!631563 () Bool)

(declare-fun mapRes!43033 () Bool)

(assert (=> b!1106761 (= e!631561 (and e!631563 mapRes!43033))))

(declare-fun condMapEmpty!43033 () Bool)

(declare-datatypes ((V!41763 0))(
  ( (V!41764 (val!13795 Int)) )
))
(declare-datatypes ((ValueCell!13029 0))(
  ( (ValueCellFull!13029 (v!16429 V!41763)) (EmptyCell!13029) )
))
(declare-datatypes ((array!71824 0))(
  ( (array!71825 (arr!34561 (Array (_ BitVec 32) ValueCell!13029)) (size!35098 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71824)

(declare-fun mapDefault!43033 () ValueCell!13029)

(assert (=> b!1106761 (= condMapEmpty!43033 (= (arr!34561 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13029)) mapDefault!43033)))))

(declare-fun b!1106762 () Bool)

(declare-fun res!738709 () Bool)

(declare-fun e!631562 () Bool)

(assert (=> b!1106762 (=> (not res!738709) (not e!631562))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1106762 (= res!738709 (validKeyInArray!0 k0!934))))

(declare-fun res!738714 () Bool)

(assert (=> start!97282 (=> (not res!738714) (not e!631562))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!71826 0))(
  ( (array!71827 (arr!34562 (Array (_ BitVec 32) (_ BitVec 64))) (size!35099 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71826)

(assert (=> start!97282 (= res!738714 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35099 _keys!1208))))))

(assert (=> start!97282 e!631562))

(declare-fun array_inv!26462 (array!71826) Bool)

(assert (=> start!97282 (array_inv!26462 _keys!1208)))

(assert (=> start!97282 true))

(declare-fun array_inv!26463 (array!71824) Bool)

(assert (=> start!97282 (and (array_inv!26463 _values!996) e!631561)))

(declare-fun b!1106763 () Bool)

(declare-fun res!738713 () Bool)

(assert (=> b!1106763 (=> (not res!738713) (not e!631562))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1106763 (= res!738713 (= (select (arr!34562 _keys!1208) i!673) k0!934))))

(declare-fun b!1106764 () Bool)

(declare-fun e!631564 () Bool)

(declare-fun tp_is_empty!27477 () Bool)

(assert (=> b!1106764 (= e!631564 tp_is_empty!27477)))

(declare-fun b!1106765 () Bool)

(declare-fun res!738708 () Bool)

(assert (=> b!1106765 (=> (not res!738708) (not e!631562))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1106765 (= res!738708 (and (= (size!35098 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35099 _keys!1208) (size!35098 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!43033 () Bool)

(assert (=> mapIsEmpty!43033 mapRes!43033))

(declare-fun mapNonEmpty!43033 () Bool)

(declare-fun tp!81954 () Bool)

(assert (=> mapNonEmpty!43033 (= mapRes!43033 (and tp!81954 e!631564))))

(declare-fun mapRest!43033 () (Array (_ BitVec 32) ValueCell!13029))

(declare-fun mapKey!43033 () (_ BitVec 32))

(declare-fun mapValue!43033 () ValueCell!13029)

(assert (=> mapNonEmpty!43033 (= (arr!34561 _values!996) (store mapRest!43033 mapKey!43033 mapValue!43033))))

(declare-fun b!1106766 () Bool)

(declare-fun res!738710 () Bool)

(assert (=> b!1106766 (=> (not res!738710) (not e!631562))))

(declare-datatypes ((List!24224 0))(
  ( (Nil!24221) (Cons!24220 (h!25429 (_ BitVec 64)) (t!34496 List!24224)) )
))
(declare-fun arrayNoDuplicates!0 (array!71826 (_ BitVec 32) List!24224) Bool)

(assert (=> b!1106766 (= res!738710 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24221))))

(declare-fun b!1106767 () Bool)

(declare-fun res!738716 () Bool)

(declare-fun e!631560 () Bool)

(assert (=> b!1106767 (=> (not res!738716) (not e!631560))))

(declare-fun lt!495494 () array!71826)

(assert (=> b!1106767 (= res!738716 (arrayNoDuplicates!0 lt!495494 #b00000000000000000000000000000000 Nil!24221))))

(declare-fun b!1106768 () Bool)

(assert (=> b!1106768 (= e!631563 tp_is_empty!27477)))

(declare-fun b!1106769 () Bool)

(assert (=> b!1106769 (= e!631560 (not true))))

(declare-fun arrayContainsKey!0 (array!71826 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1106769 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36261 0))(
  ( (Unit!36262) )
))
(declare-fun lt!495495 () Unit!36261)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71826 (_ BitVec 64) (_ BitVec 32)) Unit!36261)

(assert (=> b!1106769 (= lt!495495 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1106770 () Bool)

(declare-fun res!738717 () Bool)

(assert (=> b!1106770 (=> (not res!738717) (not e!631562))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71826 (_ BitVec 32)) Bool)

(assert (=> b!1106770 (= res!738717 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1106771 () Bool)

(declare-fun res!738712 () Bool)

(assert (=> b!1106771 (=> (not res!738712) (not e!631562))))

(assert (=> b!1106771 (= res!738712 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35099 _keys!1208))))))

(declare-fun b!1106772 () Bool)

(assert (=> b!1106772 (= e!631562 e!631560)))

(declare-fun res!738711 () Bool)

(assert (=> b!1106772 (=> (not res!738711) (not e!631560))))

(assert (=> b!1106772 (= res!738711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495494 mask!1564))))

(assert (=> b!1106772 (= lt!495494 (array!71827 (store (arr!34562 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35099 _keys!1208)))))

(declare-fun b!1106773 () Bool)

(declare-fun res!738715 () Bool)

(assert (=> b!1106773 (=> (not res!738715) (not e!631562))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1106773 (= res!738715 (validMask!0 mask!1564))))

(assert (= (and start!97282 res!738714) b!1106773))

(assert (= (and b!1106773 res!738715) b!1106765))

(assert (= (and b!1106765 res!738708) b!1106770))

(assert (= (and b!1106770 res!738717) b!1106766))

(assert (= (and b!1106766 res!738710) b!1106771))

(assert (= (and b!1106771 res!738712) b!1106762))

(assert (= (and b!1106762 res!738709) b!1106763))

(assert (= (and b!1106763 res!738713) b!1106772))

(assert (= (and b!1106772 res!738711) b!1106767))

(assert (= (and b!1106767 res!738716) b!1106769))

(assert (= (and b!1106761 condMapEmpty!43033) mapIsEmpty!43033))

(assert (= (and b!1106761 (not condMapEmpty!43033)) mapNonEmpty!43033))

(get-info :version)

(assert (= (and mapNonEmpty!43033 ((_ is ValueCellFull!13029) mapValue!43033)) b!1106764))

(assert (= (and b!1106761 ((_ is ValueCellFull!13029) mapDefault!43033)) b!1106768))

(assert (= start!97282 b!1106761))

(declare-fun m!1025835 () Bool)

(assert (=> b!1106769 m!1025835))

(declare-fun m!1025837 () Bool)

(assert (=> b!1106769 m!1025837))

(declare-fun m!1025839 () Bool)

(assert (=> b!1106763 m!1025839))

(declare-fun m!1025841 () Bool)

(assert (=> b!1106770 m!1025841))

(declare-fun m!1025843 () Bool)

(assert (=> b!1106773 m!1025843))

(declare-fun m!1025845 () Bool)

(assert (=> b!1106766 m!1025845))

(declare-fun m!1025847 () Bool)

(assert (=> mapNonEmpty!43033 m!1025847))

(declare-fun m!1025849 () Bool)

(assert (=> b!1106762 m!1025849))

(declare-fun m!1025851 () Bool)

(assert (=> b!1106767 m!1025851))

(declare-fun m!1025853 () Bool)

(assert (=> b!1106772 m!1025853))

(declare-fun m!1025855 () Bool)

(assert (=> b!1106772 m!1025855))

(declare-fun m!1025857 () Bool)

(assert (=> start!97282 m!1025857))

(declare-fun m!1025859 () Bool)

(assert (=> start!97282 m!1025859))

(check-sat (not b!1106773) (not b!1106762) (not mapNonEmpty!43033) tp_is_empty!27477 (not b!1106766) (not start!97282) (not b!1106772) (not b!1106770) (not b!1106769) (not b!1106767))
(check-sat)
