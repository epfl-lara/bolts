; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133580 () Bool)

(assert start!133580)

(declare-fun b_free!31965 () Bool)

(declare-fun b_next!31965 () Bool)

(assert (=> start!133580 (= b_free!31965 (not b_next!31965))))

(declare-fun tp!113019 () Bool)

(declare-fun b_and!51451 () Bool)

(assert (=> start!133580 (= tp!113019 b_and!51451)))

(declare-fun mapIsEmpty!59322 () Bool)

(declare-fun mapRes!59322 () Bool)

(assert (=> mapIsEmpty!59322 mapRes!59322))

(declare-fun mapNonEmpty!59322 () Bool)

(declare-fun tp!113020 () Bool)

(declare-fun e!870016 () Bool)

(assert (=> mapNonEmpty!59322 (= mapRes!59322 (and tp!113020 e!870016))))

(declare-datatypes ((V!59715 0))(
  ( (V!59716 (val!19399 Int)) )
))
(declare-datatypes ((ValueCell!18285 0))(
  ( (ValueCellFull!18285 (v!22148 V!59715)) (EmptyCell!18285) )
))
(declare-fun mapRest!59322 () (Array (_ BitVec 32) ValueCell!18285))

(declare-fun mapValue!59322 () ValueCell!18285)

(declare-fun mapKey!59322 () (_ BitVec 32))

(declare-datatypes ((array!103933 0))(
  ( (array!103934 (arr!50154 (Array (_ BitVec 32) ValueCell!18285)) (size!50705 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103933)

(assert (=> mapNonEmpty!59322 (= (arr!50154 _values!487) (store mapRest!59322 mapKey!59322 mapValue!59322))))

(declare-fun b!1561141 () Bool)

(declare-fun res!1067533 () Bool)

(declare-fun e!870015 () Bool)

(assert (=> b!1561141 (=> (not res!1067533) (not e!870015))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!103935 0))(
  ( (array!103936 (arr!50155 (Array (_ BitVec 32) (_ BitVec 64))) (size!50706 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103935)

(declare-fun mask!947 () (_ BitVec 32))

(assert (=> b!1561141 (= res!1067533 (and (= (size!50705 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50706 _keys!637) (size!50705 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1561142 () Bool)

(declare-fun e!870013 () Bool)

(declare-fun e!870014 () Bool)

(assert (=> b!1561142 (= e!870013 (and e!870014 mapRes!59322))))

(declare-fun condMapEmpty!59322 () Bool)

(declare-fun mapDefault!59322 () ValueCell!18285)

(assert (=> b!1561142 (= condMapEmpty!59322 (= (arr!50154 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18285)) mapDefault!59322)))))

(declare-fun b!1561143 () Bool)

(assert (=> b!1561143 (= e!870015 (not true))))

(declare-datatypes ((tuple2!25202 0))(
  ( (tuple2!25203 (_1!12611 (_ BitVec 64)) (_2!12611 V!59715)) )
))
(declare-datatypes ((List!36579 0))(
  ( (Nil!36576) (Cons!36575 (h!38022 tuple2!25202) (t!51341 List!36579)) )
))
(declare-datatypes ((ListLongMap!22649 0))(
  ( (ListLongMap!22650 (toList!11340 List!36579)) )
))
(declare-fun lt!671082 () ListLongMap!22649)

(declare-fun lt!671080 () V!59715)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun contains!10260 (ListLongMap!22649 (_ BitVec 64)) Bool)

(declare-fun +!4995 (ListLongMap!22649 tuple2!25202) ListLongMap!22649)

(assert (=> b!1561143 (not (contains!10260 (+!4995 lt!671082 (tuple2!25203 (select (arr!50155 _keys!637) from!782) lt!671080)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!51854 0))(
  ( (Unit!51855) )
))
(declare-fun lt!671081 () Unit!51854)

(declare-fun addStillNotContains!531 (ListLongMap!22649 (_ BitVec 64) V!59715 (_ BitVec 64)) Unit!51854)

(assert (=> b!1561143 (= lt!671081 (addStillNotContains!531 lt!671082 (select (arr!50155 _keys!637) from!782) lt!671080 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26223 (ValueCell!18285 V!59715) V!59715)

(declare-fun dynLambda!3884 (Int (_ BitVec 64)) V!59715)

(assert (=> b!1561143 (= lt!671080 (get!26223 (select (arr!50154 _values!487) from!782) (dynLambda!3884 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59715)

(declare-fun minValue!453 () V!59715)

(declare-fun getCurrentListMapNoExtraKeys!6701 (array!103935 array!103933 (_ BitVec 32) (_ BitVec 32) V!59715 V!59715 (_ BitVec 32) Int) ListLongMap!22649)

(assert (=> b!1561143 (= lt!671082 (getCurrentListMapNoExtraKeys!6701 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun res!1067529 () Bool)

(assert (=> start!133580 (=> (not res!1067529) (not e!870015))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133580 (= res!1067529 (validMask!0 mask!947))))

(assert (=> start!133580 e!870015))

(assert (=> start!133580 tp!113019))

(declare-fun tp_is_empty!38631 () Bool)

(assert (=> start!133580 tp_is_empty!38631))

(assert (=> start!133580 true))

(declare-fun array_inv!38915 (array!103935) Bool)

(assert (=> start!133580 (array_inv!38915 _keys!637)))

(declare-fun array_inv!38916 (array!103933) Bool)

(assert (=> start!133580 (and (array_inv!38916 _values!487) e!870013)))

(declare-fun b!1561144 () Bool)

(assert (=> b!1561144 (= e!870014 tp_is_empty!38631)))

(declare-fun b!1561145 () Bool)

(declare-fun res!1067534 () Bool)

(assert (=> b!1561145 (=> (not res!1067534) (not e!870015))))

(declare-datatypes ((List!36580 0))(
  ( (Nil!36577) (Cons!36576 (h!38023 (_ BitVec 64)) (t!51342 List!36580)) )
))
(declare-fun arrayNoDuplicates!0 (array!103935 (_ BitVec 32) List!36580) Bool)

(assert (=> b!1561145 (= res!1067534 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36577))))

(declare-fun b!1561146 () Bool)

(declare-fun res!1067532 () Bool)

(assert (=> b!1561146 (=> (not res!1067532) (not e!870015))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1561146 (= res!1067532 (validKeyInArray!0 (select (arr!50155 _keys!637) from!782)))))

(declare-fun b!1561147 () Bool)

(declare-fun res!1067530 () Bool)

(assert (=> b!1561147 (=> (not res!1067530) (not e!870015))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103935 (_ BitVec 32)) Bool)

(assert (=> b!1561147 (= res!1067530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1561148 () Bool)

(assert (=> b!1561148 (= e!870016 tp_is_empty!38631)))

(declare-fun b!1561149 () Bool)

(declare-fun res!1067531 () Bool)

(assert (=> b!1561149 (=> (not res!1067531) (not e!870015))))

(assert (=> b!1561149 (= res!1067531 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50706 _keys!637)) (bvslt from!782 (size!50706 _keys!637))))))

(assert (= (and start!133580 res!1067529) b!1561141))

(assert (= (and b!1561141 res!1067533) b!1561147))

(assert (= (and b!1561147 res!1067530) b!1561145))

(assert (= (and b!1561145 res!1067534) b!1561149))

(assert (= (and b!1561149 res!1067531) b!1561146))

(assert (= (and b!1561146 res!1067532) b!1561143))

(assert (= (and b!1561142 condMapEmpty!59322) mapIsEmpty!59322))

(assert (= (and b!1561142 (not condMapEmpty!59322)) mapNonEmpty!59322))

(get-info :version)

(assert (= (and mapNonEmpty!59322 ((_ is ValueCellFull!18285) mapValue!59322)) b!1561148))

(assert (= (and b!1561142 ((_ is ValueCellFull!18285) mapDefault!59322)) b!1561144))

(assert (= start!133580 b!1561142))

(declare-fun b_lambda!24849 () Bool)

(assert (=> (not b_lambda!24849) (not b!1561143)))

(declare-fun t!51340 () Bool)

(declare-fun tb!12517 () Bool)

(assert (=> (and start!133580 (= defaultEntry!495 defaultEntry!495) t!51340) tb!12517))

(declare-fun result!26307 () Bool)

(assert (=> tb!12517 (= result!26307 tp_is_empty!38631)))

(assert (=> b!1561143 t!51340))

(declare-fun b_and!51453 () Bool)

(assert (= b_and!51451 (and (=> t!51340 result!26307) b_and!51453)))

(declare-fun m!1436863 () Bool)

(assert (=> b!1561145 m!1436863))

(declare-fun m!1436865 () Bool)

(assert (=> mapNonEmpty!59322 m!1436865))

(declare-fun m!1436867 () Bool)

(assert (=> start!133580 m!1436867))

(declare-fun m!1436869 () Bool)

(assert (=> start!133580 m!1436869))

(declare-fun m!1436871 () Bool)

(assert (=> start!133580 m!1436871))

(declare-fun m!1436873 () Bool)

(assert (=> b!1561146 m!1436873))

(assert (=> b!1561146 m!1436873))

(declare-fun m!1436875 () Bool)

(assert (=> b!1561146 m!1436875))

(declare-fun m!1436877 () Bool)

(assert (=> b!1561147 m!1436877))

(declare-fun m!1436879 () Bool)

(assert (=> b!1561143 m!1436879))

(declare-fun m!1436881 () Bool)

(assert (=> b!1561143 m!1436881))

(declare-fun m!1436883 () Bool)

(assert (=> b!1561143 m!1436883))

(declare-fun m!1436885 () Bool)

(assert (=> b!1561143 m!1436885))

(declare-fun m!1436887 () Bool)

(assert (=> b!1561143 m!1436887))

(assert (=> b!1561143 m!1436879))

(assert (=> b!1561143 m!1436885))

(assert (=> b!1561143 m!1436873))

(declare-fun m!1436889 () Bool)

(assert (=> b!1561143 m!1436889))

(assert (=> b!1561143 m!1436873))

(assert (=> b!1561143 m!1436881))

(declare-fun m!1436891 () Bool)

(assert (=> b!1561143 m!1436891))

(check-sat (not start!133580) (not mapNonEmpty!59322) (not b!1561143) (not b_next!31965) b_and!51453 (not b_lambda!24849) (not b!1561145) (not b!1561147) tp_is_empty!38631 (not b!1561146))
(check-sat b_and!51453 (not b_next!31965))
