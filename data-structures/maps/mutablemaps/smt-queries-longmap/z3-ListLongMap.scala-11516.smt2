; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134104 () Bool)

(assert start!134104)

(declare-fun b_free!32199 () Bool)

(declare-fun b_next!32199 () Bool)

(assert (=> start!134104 (= b_free!32199 (not b_next!32199))))

(declare-fun tp!113917 () Bool)

(declare-fun b_and!51853 () Bool)

(assert (=> start!134104 (= tp!113917 b_and!51853)))

(declare-fun mapNonEmpty!59868 () Bool)

(declare-fun mapRes!59868 () Bool)

(declare-fun tp!113916 () Bool)

(declare-fun e!873394 () Bool)

(assert (=> mapNonEmpty!59868 (= mapRes!59868 (and tp!113916 e!873394))))

(declare-datatypes ((V!60179 0))(
  ( (V!60180 (val!19573 Int)) )
))
(declare-datatypes ((ValueCell!18459 0))(
  ( (ValueCellFull!18459 (v!22329 V!60179)) (EmptyCell!18459) )
))
(declare-fun mapValue!59868 () ValueCell!18459)

(declare-fun mapKey!59868 () (_ BitVec 32))

(declare-fun mapRest!59868 () (Array (_ BitVec 32) ValueCell!18459))

(declare-datatypes ((array!104621 0))(
  ( (array!104622 (arr!50491 (Array (_ BitVec 32) ValueCell!18459)) (size!51042 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104621)

(assert (=> mapNonEmpty!59868 (= (arr!50491 _values!487) (store mapRest!59868 mapKey!59868 mapValue!59868))))

(declare-fun b!1566816 () Bool)

(declare-fun e!873397 () Bool)

(assert (=> b!1566816 (= e!873397 false)))

(declare-fun lt!672755 () Bool)

(declare-datatypes ((tuple2!25418 0))(
  ( (tuple2!25419 (_1!12719 (_ BitVec 64)) (_2!12719 V!60179)) )
))
(declare-datatypes ((List!36803 0))(
  ( (Nil!36800) (Cons!36799 (h!38247 tuple2!25418) (t!51714 List!36803)) )
))
(declare-datatypes ((ListLongMap!22865 0))(
  ( (ListLongMap!22866 (toList!11448 List!36803)) )
))
(declare-fun lt!672754 () ListLongMap!22865)

(declare-fun contains!10372 (ListLongMap!22865 (_ BitVec 64)) Bool)

(assert (=> b!1566816 (= lt!672755 (contains!10372 lt!672754 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1566817 () Bool)

(declare-fun e!873395 () Bool)

(declare-fun tp_is_empty!38979 () Bool)

(assert (=> b!1566817 (= e!873395 tp_is_empty!38979)))

(declare-fun b!1566819 () Bool)

(declare-fun e!873393 () Bool)

(assert (=> b!1566819 (= e!873393 e!873397)))

(declare-fun res!1070950 () Bool)

(assert (=> b!1566819 (=> (not res!1070950) (not e!873397))))

(assert (=> b!1566819 (= res!1070950 (not (contains!10372 lt!672754 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!60179)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!60179)

(declare-datatypes ((array!104623 0))(
  ( (array!104624 (arr!50492 (Array (_ BitVec 32) (_ BitVec 64))) (size!51043 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104623)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6787 (array!104623 array!104621 (_ BitVec 32) (_ BitVec 32) V!60179 V!60179 (_ BitVec 32) Int) ListLongMap!22865)

(assert (=> b!1566819 (= lt!672754 (getCurrentListMapNoExtraKeys!6787 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun mapIsEmpty!59868 () Bool)

(assert (=> mapIsEmpty!59868 mapRes!59868))

(declare-fun b!1566820 () Bool)

(declare-fun e!873398 () Bool)

(assert (=> b!1566820 (= e!873398 (and e!873395 mapRes!59868))))

(declare-fun condMapEmpty!59868 () Bool)

(declare-fun mapDefault!59868 () ValueCell!18459)

(assert (=> b!1566820 (= condMapEmpty!59868 (= (arr!50491 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18459)) mapDefault!59868)))))

(declare-fun b!1566821 () Bool)

(declare-fun res!1070951 () Bool)

(assert (=> b!1566821 (=> (not res!1070951) (not e!873393))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1566821 (= res!1070951 (not (validKeyInArray!0 (select (arr!50492 _keys!637) from!782))))))

(declare-fun b!1566822 () Bool)

(declare-fun res!1070952 () Bool)

(assert (=> b!1566822 (=> (not res!1070952) (not e!873393))))

(declare-datatypes ((List!36804 0))(
  ( (Nil!36801) (Cons!36800 (h!38248 (_ BitVec 64)) (t!51715 List!36804)) )
))
(declare-fun arrayNoDuplicates!0 (array!104623 (_ BitVec 32) List!36804) Bool)

(assert (=> b!1566822 (= res!1070952 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36801))))

(declare-fun b!1566823 () Bool)

(declare-fun res!1070949 () Bool)

(assert (=> b!1566823 (=> (not res!1070949) (not e!873393))))

(assert (=> b!1566823 (= res!1070949 (and (= (size!51042 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!51043 _keys!637) (size!51042 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun res!1070948 () Bool)

(assert (=> start!134104 (=> (not res!1070948) (not e!873393))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134104 (= res!1070948 (validMask!0 mask!947))))

(assert (=> start!134104 e!873393))

(assert (=> start!134104 tp!113917))

(assert (=> start!134104 tp_is_empty!38979))

(assert (=> start!134104 true))

(declare-fun array_inv!39149 (array!104623) Bool)

(assert (=> start!134104 (array_inv!39149 _keys!637)))

(declare-fun array_inv!39150 (array!104621) Bool)

(assert (=> start!134104 (and (array_inv!39150 _values!487) e!873398)))

(declare-fun b!1566818 () Bool)

(assert (=> b!1566818 (= e!873394 tp_is_empty!38979)))

(declare-fun b!1566824 () Bool)

(declare-fun res!1070947 () Bool)

(assert (=> b!1566824 (=> (not res!1070947) (not e!873393))))

(assert (=> b!1566824 (= res!1070947 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!51043 _keys!637)) (bvslt from!782 (size!51043 _keys!637))))))

(declare-fun b!1566825 () Bool)

(declare-fun res!1070946 () Bool)

(assert (=> b!1566825 (=> (not res!1070946) (not e!873393))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104623 (_ BitVec 32)) Bool)

(assert (=> b!1566825 (= res!1070946 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(assert (= (and start!134104 res!1070948) b!1566823))

(assert (= (and b!1566823 res!1070949) b!1566825))

(assert (= (and b!1566825 res!1070946) b!1566822))

(assert (= (and b!1566822 res!1070952) b!1566824))

(assert (= (and b!1566824 res!1070947) b!1566821))

(assert (= (and b!1566821 res!1070951) b!1566819))

(assert (= (and b!1566819 res!1070950) b!1566816))

(assert (= (and b!1566820 condMapEmpty!59868) mapIsEmpty!59868))

(assert (= (and b!1566820 (not condMapEmpty!59868)) mapNonEmpty!59868))

(get-info :version)

(assert (= (and mapNonEmpty!59868 ((_ is ValueCellFull!18459) mapValue!59868)) b!1566818))

(assert (= (and b!1566820 ((_ is ValueCellFull!18459) mapDefault!59868)) b!1566817))

(assert (= start!134104 b!1566820))

(declare-fun m!1441857 () Bool)

(assert (=> start!134104 m!1441857))

(declare-fun m!1441859 () Bool)

(assert (=> start!134104 m!1441859))

(declare-fun m!1441861 () Bool)

(assert (=> start!134104 m!1441861))

(declare-fun m!1441863 () Bool)

(assert (=> b!1566819 m!1441863))

(declare-fun m!1441865 () Bool)

(assert (=> b!1566819 m!1441865))

(declare-fun m!1441867 () Bool)

(assert (=> b!1566816 m!1441867))

(declare-fun m!1441869 () Bool)

(assert (=> b!1566825 m!1441869))

(declare-fun m!1441871 () Bool)

(assert (=> b!1566822 m!1441871))

(declare-fun m!1441873 () Bool)

(assert (=> mapNonEmpty!59868 m!1441873))

(declare-fun m!1441875 () Bool)

(assert (=> b!1566821 m!1441875))

(assert (=> b!1566821 m!1441875))

(declare-fun m!1441877 () Bool)

(assert (=> b!1566821 m!1441877))

(check-sat tp_is_empty!38979 (not b_next!32199) (not b!1566825) (not b!1566821) (not b!1566822) (not b!1566816) b_and!51853 (not b!1566819) (not start!134104) (not mapNonEmpty!59868))
(check-sat b_and!51853 (not b_next!32199))
