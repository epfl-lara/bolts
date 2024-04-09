; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133592 () Bool)

(assert start!133592)

(declare-fun b_free!31977 () Bool)

(declare-fun b_next!31977 () Bool)

(assert (=> start!133592 (= b_free!31977 (not b_next!31977))))

(declare-fun tp!113056 () Bool)

(declare-fun b_and!51475 () Bool)

(assert (=> start!133592 (= tp!113056 b_and!51475)))

(declare-fun b!1561315 () Bool)

(declare-fun res!1067638 () Bool)

(declare-fun e!870103 () Bool)

(assert (=> b!1561315 (=> (not res!1067638) (not e!870103))))

(declare-datatypes ((array!103957 0))(
  ( (array!103958 (arr!50166 (Array (_ BitVec 32) (_ BitVec 64))) (size!50717 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103957)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1561315 (= res!1067638 (validKeyInArray!0 (select (arr!50166 _keys!637) from!782)))))

(declare-fun b!1561316 () Bool)

(declare-fun res!1067641 () Bool)

(assert (=> b!1561316 (=> (not res!1067641) (not e!870103))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103957 (_ BitVec 32)) Bool)

(assert (=> b!1561316 (= res!1067641 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun mapNonEmpty!59340 () Bool)

(declare-fun mapRes!59340 () Bool)

(declare-fun tp!113055 () Bool)

(declare-fun e!870107 () Bool)

(assert (=> mapNonEmpty!59340 (= mapRes!59340 (and tp!113055 e!870107))))

(declare-datatypes ((V!59731 0))(
  ( (V!59732 (val!19405 Int)) )
))
(declare-datatypes ((ValueCell!18291 0))(
  ( (ValueCellFull!18291 (v!22154 V!59731)) (EmptyCell!18291) )
))
(declare-fun mapValue!59340 () ValueCell!18291)

(declare-fun mapRest!59340 () (Array (_ BitVec 32) ValueCell!18291))

(declare-datatypes ((array!103959 0))(
  ( (array!103960 (arr!50167 (Array (_ BitVec 32) ValueCell!18291)) (size!50718 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103959)

(declare-fun mapKey!59340 () (_ BitVec 32))

(assert (=> mapNonEmpty!59340 (= (arr!50167 _values!487) (store mapRest!59340 mapKey!59340 mapValue!59340))))

(declare-fun b!1561317 () Bool)

(declare-fun e!870106 () Bool)

(declare-fun e!870104 () Bool)

(assert (=> b!1561317 (= e!870106 (and e!870104 mapRes!59340))))

(declare-fun condMapEmpty!59340 () Bool)

(declare-fun mapDefault!59340 () ValueCell!18291)

(assert (=> b!1561317 (= condMapEmpty!59340 (= (arr!50167 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18291)) mapDefault!59340)))))

(declare-fun mapIsEmpty!59340 () Bool)

(assert (=> mapIsEmpty!59340 mapRes!59340))

(declare-fun res!1067639 () Bool)

(assert (=> start!133592 (=> (not res!1067639) (not e!870103))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133592 (= res!1067639 (validMask!0 mask!947))))

(assert (=> start!133592 e!870103))

(assert (=> start!133592 tp!113056))

(declare-fun tp_is_empty!38643 () Bool)

(assert (=> start!133592 tp_is_empty!38643))

(assert (=> start!133592 true))

(declare-fun array_inv!38923 (array!103957) Bool)

(assert (=> start!133592 (array_inv!38923 _keys!637)))

(declare-fun array_inv!38924 (array!103959) Bool)

(assert (=> start!133592 (and (array_inv!38924 _values!487) e!870106)))

(declare-fun b!1561318 () Bool)

(assert (=> b!1561318 (= e!870107 tp_is_empty!38643)))

(declare-fun b!1561319 () Bool)

(declare-fun res!1067640 () Bool)

(assert (=> b!1561319 (=> (not res!1067640) (not e!870103))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1561319 (= res!1067640 (and (= (size!50718 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50717 _keys!637) (size!50718 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1561320 () Bool)

(assert (=> b!1561320 (= e!870104 tp_is_empty!38643)))

(declare-fun b!1561321 () Bool)

(declare-fun res!1067637 () Bool)

(assert (=> b!1561321 (=> (not res!1067637) (not e!870103))))

(declare-datatypes ((List!36589 0))(
  ( (Nil!36586) (Cons!36585 (h!38032 (_ BitVec 64)) (t!51363 List!36589)) )
))
(declare-fun arrayNoDuplicates!0 (array!103957 (_ BitVec 32) List!36589) Bool)

(assert (=> b!1561321 (= res!1067637 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36586))))

(declare-fun b!1561322 () Bool)

(declare-fun res!1067642 () Bool)

(assert (=> b!1561322 (=> (not res!1067642) (not e!870103))))

(assert (=> b!1561322 (= res!1067642 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50717 _keys!637)) (bvslt from!782 (size!50717 _keys!637))))))

(declare-fun b!1561323 () Bool)

(assert (=> b!1561323 (= e!870103 (not true))))

(declare-datatypes ((tuple2!25212 0))(
  ( (tuple2!25213 (_1!12616 (_ BitVec 64)) (_2!12616 V!59731)) )
))
(declare-datatypes ((List!36590 0))(
  ( (Nil!36587) (Cons!36586 (h!38033 tuple2!25212) (t!51364 List!36590)) )
))
(declare-datatypes ((ListLongMap!22659 0))(
  ( (ListLongMap!22660 (toList!11345 List!36590)) )
))
(declare-fun lt!671136 () ListLongMap!22659)

(declare-fun lt!671134 () V!59731)

(declare-fun contains!10265 (ListLongMap!22659 (_ BitVec 64)) Bool)

(declare-fun +!5000 (ListLongMap!22659 tuple2!25212) ListLongMap!22659)

(assert (=> b!1561323 (not (contains!10265 (+!5000 lt!671136 (tuple2!25213 (select (arr!50166 _keys!637) from!782) lt!671134)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!51864 0))(
  ( (Unit!51865) )
))
(declare-fun lt!671135 () Unit!51864)

(declare-fun addStillNotContains!536 (ListLongMap!22659 (_ BitVec 64) V!59731 (_ BitVec 64)) Unit!51864)

(assert (=> b!1561323 (= lt!671135 (addStillNotContains!536 lt!671136 (select (arr!50166 _keys!637) from!782) lt!671134 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26232 (ValueCell!18291 V!59731) V!59731)

(declare-fun dynLambda!3889 (Int (_ BitVec 64)) V!59731)

(assert (=> b!1561323 (= lt!671134 (get!26232 (select (arr!50167 _values!487) from!782) (dynLambda!3889 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59731)

(declare-fun minValue!453 () V!59731)

(declare-fun getCurrentListMapNoExtraKeys!6706 (array!103957 array!103959 (_ BitVec 32) (_ BitVec 32) V!59731 V!59731 (_ BitVec 32) Int) ListLongMap!22659)

(assert (=> b!1561323 (= lt!671136 (getCurrentListMapNoExtraKeys!6706 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(assert (= (and start!133592 res!1067639) b!1561319))

(assert (= (and b!1561319 res!1067640) b!1561316))

(assert (= (and b!1561316 res!1067641) b!1561321))

(assert (= (and b!1561321 res!1067637) b!1561322))

(assert (= (and b!1561322 res!1067642) b!1561315))

(assert (= (and b!1561315 res!1067638) b!1561323))

(assert (= (and b!1561317 condMapEmpty!59340) mapIsEmpty!59340))

(assert (= (and b!1561317 (not condMapEmpty!59340)) mapNonEmpty!59340))

(get-info :version)

(assert (= (and mapNonEmpty!59340 ((_ is ValueCellFull!18291) mapValue!59340)) b!1561318))

(assert (= (and b!1561317 ((_ is ValueCellFull!18291) mapDefault!59340)) b!1561320))

(assert (= start!133592 b!1561317))

(declare-fun b_lambda!24861 () Bool)

(assert (=> (not b_lambda!24861) (not b!1561323)))

(declare-fun t!51362 () Bool)

(declare-fun tb!12529 () Bool)

(assert (=> (and start!133592 (= defaultEntry!495 defaultEntry!495) t!51362) tb!12529))

(declare-fun result!26331 () Bool)

(assert (=> tb!12529 (= result!26331 tp_is_empty!38643)))

(assert (=> b!1561323 t!51362))

(declare-fun b_and!51477 () Bool)

(assert (= b_and!51475 (and (=> t!51362 result!26331) b_and!51477)))

(declare-fun m!1437043 () Bool)

(assert (=> mapNonEmpty!59340 m!1437043))

(declare-fun m!1437045 () Bool)

(assert (=> b!1561323 m!1437045))

(declare-fun m!1437047 () Bool)

(assert (=> b!1561323 m!1437047))

(declare-fun m!1437049 () Bool)

(assert (=> b!1561323 m!1437049))

(assert (=> b!1561323 m!1437045))

(declare-fun m!1437051 () Bool)

(assert (=> b!1561323 m!1437051))

(declare-fun m!1437053 () Bool)

(assert (=> b!1561323 m!1437053))

(declare-fun m!1437055 () Bool)

(assert (=> b!1561323 m!1437055))

(assert (=> b!1561323 m!1437051))

(assert (=> b!1561323 m!1437047))

(declare-fun m!1437057 () Bool)

(assert (=> b!1561323 m!1437057))

(assert (=> b!1561323 m!1437055))

(declare-fun m!1437059 () Bool)

(assert (=> b!1561323 m!1437059))

(assert (=> b!1561315 m!1437055))

(assert (=> b!1561315 m!1437055))

(declare-fun m!1437061 () Bool)

(assert (=> b!1561315 m!1437061))

(declare-fun m!1437063 () Bool)

(assert (=> b!1561316 m!1437063))

(declare-fun m!1437065 () Bool)

(assert (=> start!133592 m!1437065))

(declare-fun m!1437067 () Bool)

(assert (=> start!133592 m!1437067))

(declare-fun m!1437069 () Bool)

(assert (=> start!133592 m!1437069))

(declare-fun m!1437071 () Bool)

(assert (=> b!1561321 m!1437071))

(check-sat (not b_lambda!24861) (not mapNonEmpty!59340) b_and!51477 (not b!1561323) (not b!1561316) tp_is_empty!38643 (not start!133592) (not b!1561315) (not b_next!31977) (not b!1561321))
(check-sat b_and!51477 (not b_next!31977))
