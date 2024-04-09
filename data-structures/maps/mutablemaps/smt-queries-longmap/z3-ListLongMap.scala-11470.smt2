; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133652 () Bool)

(assert start!133652)

(declare-fun b_free!32037 () Bool)

(declare-fun b_next!32037 () Bool)

(assert (=> start!133652 (= b_free!32037 (not b_next!32037))))

(declare-fun tp!113235 () Bool)

(declare-fun b_and!51595 () Bool)

(assert (=> start!133652 (= tp!113235 b_and!51595)))

(declare-fun b!1562194 () Bool)

(declare-fun res!1068190 () Bool)

(declare-fun e!870566 () Bool)

(assert (=> b!1562194 (=> (not res!1068190) (not e!870566))))

(declare-datatypes ((array!104073 0))(
  ( (array!104074 (arr!50224 (Array (_ BitVec 32) (_ BitVec 64))) (size!50775 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104073)

(declare-datatypes ((List!36634 0))(
  ( (Nil!36631) (Cons!36630 (h!38077 (_ BitVec 64)) (t!51468 List!36634)) )
))
(declare-fun arrayNoDuplicates!0 (array!104073 (_ BitVec 32) List!36634) Bool)

(assert (=> b!1562194 (= res!1068190 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36631))))

(declare-fun b!1562195 () Bool)

(declare-fun res!1068188 () Bool)

(assert (=> b!1562195 (=> (not res!1068188) (not e!870566))))

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1562195 (= res!1068188 (validKeyInArray!0 (select (arr!50224 _keys!637) from!782)))))

(declare-fun b!1562196 () Bool)

(declare-fun res!1068186 () Bool)

(assert (=> b!1562196 (=> (not res!1068186) (not e!870566))))

(assert (=> b!1562196 (= res!1068186 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50775 _keys!637)) (bvslt from!782 (size!50775 _keys!637))))))

(declare-fun b!1562197 () Bool)

(declare-fun res!1068187 () Bool)

(assert (=> b!1562197 (=> (not res!1068187) (not e!870566))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((V!59811 0))(
  ( (V!59812 (val!19435 Int)) )
))
(declare-datatypes ((ValueCell!18321 0))(
  ( (ValueCellFull!18321 (v!22184 V!59811)) (EmptyCell!18321) )
))
(declare-datatypes ((array!104075 0))(
  ( (array!104076 (arr!50225 (Array (_ BitVec 32) ValueCell!18321)) (size!50776 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104075)

(assert (=> b!1562197 (= res!1068187 (and (= (size!50776 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50775 _keys!637) (size!50776 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1562198 () Bool)

(declare-fun e!870563 () Bool)

(declare-fun tp_is_empty!38703 () Bool)

(assert (=> b!1562198 (= e!870563 tp_is_empty!38703)))

(declare-fun mapIsEmpty!59430 () Bool)

(declare-fun mapRes!59430 () Bool)

(assert (=> mapIsEmpty!59430 mapRes!59430))

(declare-fun res!1068191 () Bool)

(assert (=> start!133652 (=> (not res!1068191) (not e!870566))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133652 (= res!1068191 (validMask!0 mask!947))))

(assert (=> start!133652 e!870566))

(assert (=> start!133652 tp!113235))

(assert (=> start!133652 tp_is_empty!38703))

(assert (=> start!133652 true))

(declare-fun array_inv!38963 (array!104073) Bool)

(assert (=> start!133652 (array_inv!38963 _keys!637)))

(declare-fun e!870562 () Bool)

(declare-fun array_inv!38964 (array!104075) Bool)

(assert (=> start!133652 (and (array_inv!38964 _values!487) e!870562)))

(declare-fun b!1562199 () Bool)

(declare-fun res!1068189 () Bool)

(assert (=> b!1562199 (=> (not res!1068189) (not e!870566))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104073 (_ BitVec 32)) Bool)

(assert (=> b!1562199 (= res!1068189 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1562200 () Bool)

(assert (=> b!1562200 (= e!870562 (and e!870563 mapRes!59430))))

(declare-fun condMapEmpty!59430 () Bool)

(declare-fun mapDefault!59430 () ValueCell!18321)

(assert (=> b!1562200 (= condMapEmpty!59430 (= (arr!50225 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18321)) mapDefault!59430)))))

(declare-fun b!1562201 () Bool)

(declare-fun e!870565 () Bool)

(assert (=> b!1562201 (= e!870565 tp_is_empty!38703)))

(declare-fun b!1562202 () Bool)

(assert (=> b!1562202 (= e!870566 (not true))))

(declare-fun lt!671522 () Bool)

(declare-datatypes ((tuple2!25260 0))(
  ( (tuple2!25261 (_1!12640 (_ BitVec 64)) (_2!12640 V!59811)) )
))
(declare-datatypes ((List!36635 0))(
  ( (Nil!36632) (Cons!36631 (h!38078 tuple2!25260) (t!51469 List!36635)) )
))
(declare-datatypes ((ListLongMap!22707 0))(
  ( (ListLongMap!22708 (toList!11369 List!36635)) )
))
(declare-fun lt!671524 () ListLongMap!22707)

(declare-fun contains!10289 (ListLongMap!22707 (_ BitVec 64)) Bool)

(assert (=> b!1562202 (= lt!671522 (contains!10289 lt!671524 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1562202 (not (contains!10289 lt!671524 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!671525 () ListLongMap!22707)

(declare-fun lt!671523 () V!59811)

(declare-fun +!5023 (ListLongMap!22707 tuple2!25260) ListLongMap!22707)

(assert (=> b!1562202 (= lt!671524 (+!5023 lt!671525 (tuple2!25261 (select (arr!50224 _keys!637) from!782) lt!671523)))))

(declare-datatypes ((Unit!51910 0))(
  ( (Unit!51911) )
))
(declare-fun lt!671526 () Unit!51910)

(declare-fun addStillNotContains!559 (ListLongMap!22707 (_ BitVec 64) V!59811 (_ BitVec 64)) Unit!51910)

(assert (=> b!1562202 (= lt!671526 (addStillNotContains!559 lt!671525 (select (arr!50224 _keys!637) from!782) lt!671523 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26275 (ValueCell!18321 V!59811) V!59811)

(declare-fun dynLambda!3912 (Int (_ BitVec 64)) V!59811)

(assert (=> b!1562202 (= lt!671523 (get!26275 (select (arr!50225 _values!487) from!782) (dynLambda!3912 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59811)

(declare-fun minValue!453 () V!59811)

(declare-fun getCurrentListMapNoExtraKeys!6729 (array!104073 array!104075 (_ BitVec 32) (_ BitVec 32) V!59811 V!59811 (_ BitVec 32) Int) ListLongMap!22707)

(assert (=> b!1562202 (= lt!671525 (getCurrentListMapNoExtraKeys!6729 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun mapNonEmpty!59430 () Bool)

(declare-fun tp!113236 () Bool)

(assert (=> mapNonEmpty!59430 (= mapRes!59430 (and tp!113236 e!870565))))

(declare-fun mapValue!59430 () ValueCell!18321)

(declare-fun mapRest!59430 () (Array (_ BitVec 32) ValueCell!18321))

(declare-fun mapKey!59430 () (_ BitVec 32))

(assert (=> mapNonEmpty!59430 (= (arr!50225 _values!487) (store mapRest!59430 mapKey!59430 mapValue!59430))))

(assert (= (and start!133652 res!1068191) b!1562197))

(assert (= (and b!1562197 res!1068187) b!1562199))

(assert (= (and b!1562199 res!1068189) b!1562194))

(assert (= (and b!1562194 res!1068190) b!1562196))

(assert (= (and b!1562196 res!1068186) b!1562195))

(assert (= (and b!1562195 res!1068188) b!1562202))

(assert (= (and b!1562200 condMapEmpty!59430) mapIsEmpty!59430))

(assert (= (and b!1562200 (not condMapEmpty!59430)) mapNonEmpty!59430))

(get-info :version)

(assert (= (and mapNonEmpty!59430 ((_ is ValueCellFull!18321) mapValue!59430)) b!1562201))

(assert (= (and b!1562200 ((_ is ValueCellFull!18321) mapDefault!59430)) b!1562198))

(assert (= start!133652 b!1562200))

(declare-fun b_lambda!24921 () Bool)

(assert (=> (not b_lambda!24921) (not b!1562202)))

(declare-fun t!51467 () Bool)

(declare-fun tb!12589 () Bool)

(assert (=> (and start!133652 (= defaultEntry!495 defaultEntry!495) t!51467) tb!12589))

(declare-fun result!26451 () Bool)

(assert (=> tb!12589 (= result!26451 tp_is_empty!38703)))

(assert (=> b!1562202 t!51467))

(declare-fun b_and!51597 () Bool)

(assert (= b_and!51595 (and (=> t!51467 result!26451) b_and!51597)))

(declare-fun m!1437987 () Bool)

(assert (=> mapNonEmpty!59430 m!1437987))

(declare-fun m!1437989 () Bool)

(assert (=> b!1562202 m!1437989))

(declare-fun m!1437991 () Bool)

(assert (=> b!1562202 m!1437991))

(declare-fun m!1437993 () Bool)

(assert (=> b!1562202 m!1437993))

(declare-fun m!1437995 () Bool)

(assert (=> b!1562202 m!1437995))

(assert (=> b!1562202 m!1437989))

(declare-fun m!1437997 () Bool)

(assert (=> b!1562202 m!1437997))

(assert (=> b!1562202 m!1437991))

(declare-fun m!1437999 () Bool)

(assert (=> b!1562202 m!1437999))

(assert (=> b!1562202 m!1437997))

(declare-fun m!1438001 () Bool)

(assert (=> b!1562202 m!1438001))

(declare-fun m!1438003 () Bool)

(assert (=> b!1562202 m!1438003))

(declare-fun m!1438005 () Bool)

(assert (=> b!1562202 m!1438005))

(declare-fun m!1438007 () Bool)

(assert (=> start!133652 m!1438007))

(declare-fun m!1438009 () Bool)

(assert (=> start!133652 m!1438009))

(declare-fun m!1438011 () Bool)

(assert (=> start!133652 m!1438011))

(declare-fun m!1438013 () Bool)

(assert (=> b!1562194 m!1438013))

(assert (=> b!1562195 m!1437997))

(assert (=> b!1562195 m!1437997))

(declare-fun m!1438015 () Bool)

(assert (=> b!1562195 m!1438015))

(declare-fun m!1438017 () Bool)

(assert (=> b!1562199 m!1438017))

(check-sat (not start!133652) (not b!1562194) (not b_lambda!24921) b_and!51597 (not b!1562202) (not b!1562199) (not b!1562195) (not mapNonEmpty!59430) (not b_next!32037) tp_is_empty!38703)
(check-sat b_and!51597 (not b_next!32037))
