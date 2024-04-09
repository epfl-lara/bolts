; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133892 () Bool)

(assert start!133892)

(declare-fun b_free!32121 () Bool)

(declare-fun b_next!32121 () Bool)

(assert (=> start!133892 (= b_free!32121 (not b_next!32121))))

(declare-fun tp!113660 () Bool)

(declare-fun b_and!51701 () Bool)

(assert (=> start!133892 (= tp!113660 b_and!51701)))

(declare-fun b!1564817 () Bool)

(declare-fun e!872224 () Bool)

(assert (=> b!1564817 (= e!872224 false)))

(declare-fun defaultEntry!495 () Int)

(declare-datatypes ((V!60067 0))(
  ( (V!60068 (val!19531 Int)) )
))
(declare-fun zeroValue!453 () V!60067)

(declare-fun mask!947 () (_ BitVec 32))

(declare-datatypes ((tuple2!25358 0))(
  ( (tuple2!25359 (_1!12689 (_ BitVec 64)) (_2!12689 V!60067)) )
))
(declare-datatypes ((List!36745 0))(
  ( (Nil!36742) (Cons!36741 (h!38188 tuple2!25358) (t!51599 List!36745)) )
))
(declare-datatypes ((ListLongMap!22805 0))(
  ( (ListLongMap!22806 (toList!11418 List!36745)) )
))
(declare-fun lt!672044 () ListLongMap!22805)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!60067)

(declare-datatypes ((array!104449 0))(
  ( (array!104450 (arr!50409 (Array (_ BitVec 32) (_ BitVec 64))) (size!50960 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104449)

(declare-datatypes ((ValueCell!18417 0))(
  ( (ValueCellFull!18417 (v!22282 V!60067)) (EmptyCell!18417) )
))
(declare-datatypes ((array!104451 0))(
  ( (array!104452 (arr!50410 (Array (_ BitVec 32) ValueCell!18417)) (size!50961 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104451)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6758 (array!104449 array!104451 (_ BitVec 32) (_ BitVec 32) V!60067 V!60067 (_ BitVec 32) Int) ListLongMap!22805)

(assert (=> b!1564817 (= lt!672044 (getCurrentListMapNoExtraKeys!6758 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1564818 () Bool)

(declare-fun res!1069832 () Bool)

(assert (=> b!1564818 (=> (not res!1069832) (not e!872224))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104449 (_ BitVec 32)) Bool)

(assert (=> b!1564818 (= res!1069832 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1564819 () Bool)

(declare-fun res!1069835 () Bool)

(assert (=> b!1564819 (=> (not res!1069835) (not e!872224))))

(assert (=> b!1564819 (= res!1069835 (and (= (size!50961 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50960 _keys!637) (size!50961 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1564820 () Bool)

(declare-fun e!872227 () Bool)

(declare-fun tp_is_empty!38895 () Bool)

(assert (=> b!1564820 (= e!872227 tp_is_empty!38895)))

(declare-fun b!1564821 () Bool)

(declare-fun e!872225 () Bool)

(assert (=> b!1564821 (= e!872225 tp_is_empty!38895)))

(declare-fun b!1564822 () Bool)

(declare-fun res!1069836 () Bool)

(assert (=> b!1564822 (=> (not res!1069836) (not e!872224))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1564822 (= res!1069836 (validKeyInArray!0 (select (arr!50409 _keys!637) from!782)))))

(declare-fun b!1564823 () Bool)

(declare-fun res!1069831 () Bool)

(assert (=> b!1564823 (=> (not res!1069831) (not e!872224))))

(declare-datatypes ((List!36746 0))(
  ( (Nil!36743) (Cons!36742 (h!38189 (_ BitVec 64)) (t!51600 List!36746)) )
))
(declare-fun arrayNoDuplicates!0 (array!104449 (_ BitVec 32) List!36746) Bool)

(assert (=> b!1564823 (= res!1069831 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36743))))

(declare-fun mapNonEmpty!59728 () Bool)

(declare-fun mapRes!59728 () Bool)

(declare-fun tp!113659 () Bool)

(assert (=> mapNonEmpty!59728 (= mapRes!59728 (and tp!113659 e!872225))))

(declare-fun mapValue!59728 () ValueCell!18417)

(declare-fun mapRest!59728 () (Array (_ BitVec 32) ValueCell!18417))

(declare-fun mapKey!59728 () (_ BitVec 32))

(assert (=> mapNonEmpty!59728 (= (arr!50410 _values!487) (store mapRest!59728 mapKey!59728 mapValue!59728))))

(declare-fun b!1564824 () Bool)

(declare-fun e!872228 () Bool)

(assert (=> b!1564824 (= e!872228 (and e!872227 mapRes!59728))))

(declare-fun condMapEmpty!59728 () Bool)

(declare-fun mapDefault!59728 () ValueCell!18417)

(assert (=> b!1564824 (= condMapEmpty!59728 (= (arr!50410 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18417)) mapDefault!59728)))))

(declare-fun b!1564825 () Bool)

(declare-fun res!1069834 () Bool)

(assert (=> b!1564825 (=> (not res!1069834) (not e!872224))))

(assert (=> b!1564825 (= res!1069834 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50960 _keys!637)) (bvslt from!782 (size!50960 _keys!637))))))

(declare-fun res!1069833 () Bool)

(assert (=> start!133892 (=> (not res!1069833) (not e!872224))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133892 (= res!1069833 (validMask!0 mask!947))))

(assert (=> start!133892 e!872224))

(assert (=> start!133892 tp!113660))

(assert (=> start!133892 tp_is_empty!38895))

(assert (=> start!133892 true))

(declare-fun array_inv!39095 (array!104449) Bool)

(assert (=> start!133892 (array_inv!39095 _keys!637)))

(declare-fun array_inv!39096 (array!104451) Bool)

(assert (=> start!133892 (and (array_inv!39096 _values!487) e!872228)))

(declare-fun mapIsEmpty!59728 () Bool)

(assert (=> mapIsEmpty!59728 mapRes!59728))

(assert (= (and start!133892 res!1069833) b!1564819))

(assert (= (and b!1564819 res!1069835) b!1564818))

(assert (= (and b!1564818 res!1069832) b!1564823))

(assert (= (and b!1564823 res!1069831) b!1564825))

(assert (= (and b!1564825 res!1069834) b!1564822))

(assert (= (and b!1564822 res!1069836) b!1564817))

(assert (= (and b!1564824 condMapEmpty!59728) mapIsEmpty!59728))

(assert (= (and b!1564824 (not condMapEmpty!59728)) mapNonEmpty!59728))

(get-info :version)

(assert (= (and mapNonEmpty!59728 ((_ is ValueCellFull!18417) mapValue!59728)) b!1564821))

(assert (= (and b!1564824 ((_ is ValueCellFull!18417) mapDefault!59728)) b!1564820))

(assert (= start!133892 b!1564824))

(declare-fun m!1439887 () Bool)

(assert (=> start!133892 m!1439887))

(declare-fun m!1439889 () Bool)

(assert (=> start!133892 m!1439889))

(declare-fun m!1439891 () Bool)

(assert (=> start!133892 m!1439891))

(declare-fun m!1439893 () Bool)

(assert (=> b!1564823 m!1439893))

(declare-fun m!1439895 () Bool)

(assert (=> b!1564818 m!1439895))

(declare-fun m!1439897 () Bool)

(assert (=> b!1564817 m!1439897))

(declare-fun m!1439899 () Bool)

(assert (=> b!1564822 m!1439899))

(assert (=> b!1564822 m!1439899))

(declare-fun m!1439901 () Bool)

(assert (=> b!1564822 m!1439901))

(declare-fun m!1439903 () Bool)

(assert (=> mapNonEmpty!59728 m!1439903))

(check-sat (not b_next!32121) tp_is_empty!38895 (not b!1564822) (not start!133892) (not b!1564818) (not mapNonEmpty!59728) b_and!51701 (not b!1564823) (not b!1564817))
(check-sat b_and!51701 (not b_next!32121))
