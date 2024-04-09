; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133586 () Bool)

(assert start!133586)

(declare-fun b_free!31971 () Bool)

(declare-fun b_next!31971 () Bool)

(assert (=> start!133586 (= b_free!31971 (not b_next!31971))))

(declare-fun tp!113037 () Bool)

(declare-fun b_and!51463 () Bool)

(assert (=> start!133586 (= tp!113037 b_and!51463)))

(declare-fun res!1067584 () Bool)

(declare-fun e!870061 () Bool)

(assert (=> start!133586 (=> (not res!1067584) (not e!870061))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133586 (= res!1067584 (validMask!0 mask!947))))

(assert (=> start!133586 e!870061))

(assert (=> start!133586 tp!113037))

(declare-fun tp_is_empty!38637 () Bool)

(assert (=> start!133586 tp_is_empty!38637))

(assert (=> start!133586 true))

(declare-datatypes ((array!103945 0))(
  ( (array!103946 (arr!50160 (Array (_ BitVec 32) (_ BitVec 64))) (size!50711 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103945)

(declare-fun array_inv!38919 (array!103945) Bool)

(assert (=> start!133586 (array_inv!38919 _keys!637)))

(declare-datatypes ((V!59723 0))(
  ( (V!59724 (val!19402 Int)) )
))
(declare-datatypes ((ValueCell!18288 0))(
  ( (ValueCellFull!18288 (v!22151 V!59723)) (EmptyCell!18288) )
))
(declare-datatypes ((array!103947 0))(
  ( (array!103948 (arr!50161 (Array (_ BitVec 32) ValueCell!18288)) (size!50712 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103947)

(declare-fun e!870058 () Bool)

(declare-fun array_inv!38920 (array!103947) Bool)

(assert (=> start!133586 (and (array_inv!38920 _values!487) e!870058)))

(declare-fun b!1561228 () Bool)

(declare-fun res!1067587 () Bool)

(assert (=> b!1561228 (=> (not res!1067587) (not e!870061))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1561228 (= res!1067587 (and (= (size!50712 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50711 _keys!637) (size!50712 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!59331 () Bool)

(declare-fun mapRes!59331 () Bool)

(assert (=> mapIsEmpty!59331 mapRes!59331))

(declare-fun b!1561229 () Bool)

(declare-fun res!1067588 () Bool)

(assert (=> b!1561229 (=> (not res!1067588) (not e!870061))))

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1561229 (= res!1067588 (validKeyInArray!0 (select (arr!50160 _keys!637) from!782)))))

(declare-fun b!1561230 () Bool)

(declare-fun res!1067586 () Bool)

(assert (=> b!1561230 (=> (not res!1067586) (not e!870061))))

(assert (=> b!1561230 (= res!1067586 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50711 _keys!637)) (bvslt from!782 (size!50711 _keys!637))))))

(declare-fun b!1561231 () Bool)

(assert (=> b!1561231 (= e!870061 (not true))))

(declare-datatypes ((tuple2!25206 0))(
  ( (tuple2!25207 (_1!12613 (_ BitVec 64)) (_2!12613 V!59723)) )
))
(declare-datatypes ((List!36584 0))(
  ( (Nil!36581) (Cons!36580 (h!38027 tuple2!25206) (t!51352 List!36584)) )
))
(declare-datatypes ((ListLongMap!22653 0))(
  ( (ListLongMap!22654 (toList!11342 List!36584)) )
))
(declare-fun lt!671107 () ListLongMap!22653)

(declare-fun lt!671109 () V!59723)

(declare-fun contains!10262 (ListLongMap!22653 (_ BitVec 64)) Bool)

(declare-fun +!4997 (ListLongMap!22653 tuple2!25206) ListLongMap!22653)

(assert (=> b!1561231 (not (contains!10262 (+!4997 lt!671107 (tuple2!25207 (select (arr!50160 _keys!637) from!782) lt!671109)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!51858 0))(
  ( (Unit!51859) )
))
(declare-fun lt!671108 () Unit!51858)

(declare-fun addStillNotContains!533 (ListLongMap!22653 (_ BitVec 64) V!59723 (_ BitVec 64)) Unit!51858)

(assert (=> b!1561231 (= lt!671108 (addStillNotContains!533 lt!671107 (select (arr!50160 _keys!637) from!782) lt!671109 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26227 (ValueCell!18288 V!59723) V!59723)

(declare-fun dynLambda!3886 (Int (_ BitVec 64)) V!59723)

(assert (=> b!1561231 (= lt!671109 (get!26227 (select (arr!50161 _values!487) from!782) (dynLambda!3886 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59723)

(declare-fun minValue!453 () V!59723)

(declare-fun getCurrentListMapNoExtraKeys!6703 (array!103945 array!103947 (_ BitVec 32) (_ BitVec 32) V!59723 V!59723 (_ BitVec 32) Int) ListLongMap!22653)

(assert (=> b!1561231 (= lt!671107 (getCurrentListMapNoExtraKeys!6703 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1561232 () Bool)

(declare-fun e!870060 () Bool)

(assert (=> b!1561232 (= e!870060 tp_is_empty!38637)))

(declare-fun b!1561233 () Bool)

(declare-fun e!870059 () Bool)

(assert (=> b!1561233 (= e!870059 tp_is_empty!38637)))

(declare-fun b!1561234 () Bool)

(declare-fun res!1067585 () Bool)

(assert (=> b!1561234 (=> (not res!1067585) (not e!870061))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103945 (_ BitVec 32)) Bool)

(assert (=> b!1561234 (= res!1067585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1561235 () Bool)

(assert (=> b!1561235 (= e!870058 (and e!870059 mapRes!59331))))

(declare-fun condMapEmpty!59331 () Bool)

(declare-fun mapDefault!59331 () ValueCell!18288)

(assert (=> b!1561235 (= condMapEmpty!59331 (= (arr!50161 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18288)) mapDefault!59331)))))

(declare-fun mapNonEmpty!59331 () Bool)

(declare-fun tp!113038 () Bool)

(assert (=> mapNonEmpty!59331 (= mapRes!59331 (and tp!113038 e!870060))))

(declare-fun mapValue!59331 () ValueCell!18288)

(declare-fun mapRest!59331 () (Array (_ BitVec 32) ValueCell!18288))

(declare-fun mapKey!59331 () (_ BitVec 32))

(assert (=> mapNonEmpty!59331 (= (arr!50161 _values!487) (store mapRest!59331 mapKey!59331 mapValue!59331))))

(declare-fun b!1561236 () Bool)

(declare-fun res!1067583 () Bool)

(assert (=> b!1561236 (=> (not res!1067583) (not e!870061))))

(declare-datatypes ((List!36585 0))(
  ( (Nil!36582) (Cons!36581 (h!38028 (_ BitVec 64)) (t!51353 List!36585)) )
))
(declare-fun arrayNoDuplicates!0 (array!103945 (_ BitVec 32) List!36585) Bool)

(assert (=> b!1561236 (= res!1067583 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36582))))

(assert (= (and start!133586 res!1067584) b!1561228))

(assert (= (and b!1561228 res!1067587) b!1561234))

(assert (= (and b!1561234 res!1067585) b!1561236))

(assert (= (and b!1561236 res!1067583) b!1561230))

(assert (= (and b!1561230 res!1067586) b!1561229))

(assert (= (and b!1561229 res!1067588) b!1561231))

(assert (= (and b!1561235 condMapEmpty!59331) mapIsEmpty!59331))

(assert (= (and b!1561235 (not condMapEmpty!59331)) mapNonEmpty!59331))

(get-info :version)

(assert (= (and mapNonEmpty!59331 ((_ is ValueCellFull!18288) mapValue!59331)) b!1561232))

(assert (= (and b!1561235 ((_ is ValueCellFull!18288) mapDefault!59331)) b!1561233))

(assert (= start!133586 b!1561235))

(declare-fun b_lambda!24855 () Bool)

(assert (=> (not b_lambda!24855) (not b!1561231)))

(declare-fun t!51351 () Bool)

(declare-fun tb!12523 () Bool)

(assert (=> (and start!133586 (= defaultEntry!495 defaultEntry!495) t!51351) tb!12523))

(declare-fun result!26319 () Bool)

(assert (=> tb!12523 (= result!26319 tp_is_empty!38637)))

(assert (=> b!1561231 t!51351))

(declare-fun b_and!51465 () Bool)

(assert (= b_and!51463 (and (=> t!51351 result!26319) b_and!51465)))

(declare-fun m!1436953 () Bool)

(assert (=> b!1561234 m!1436953))

(declare-fun m!1436955 () Bool)

(assert (=> b!1561229 m!1436955))

(assert (=> b!1561229 m!1436955))

(declare-fun m!1436957 () Bool)

(assert (=> b!1561229 m!1436957))

(declare-fun m!1436959 () Bool)

(assert (=> b!1561236 m!1436959))

(declare-fun m!1436961 () Bool)

(assert (=> start!133586 m!1436961))

(declare-fun m!1436963 () Bool)

(assert (=> start!133586 m!1436963))

(declare-fun m!1436965 () Bool)

(assert (=> start!133586 m!1436965))

(declare-fun m!1436967 () Bool)

(assert (=> b!1561231 m!1436967))

(declare-fun m!1436969 () Bool)

(assert (=> b!1561231 m!1436969))

(declare-fun m!1436971 () Bool)

(assert (=> b!1561231 m!1436971))

(assert (=> b!1561231 m!1436967))

(declare-fun m!1436973 () Bool)

(assert (=> b!1561231 m!1436973))

(assert (=> b!1561231 m!1436955))

(assert (=> b!1561231 m!1436969))

(assert (=> b!1561231 m!1436973))

(declare-fun m!1436975 () Bool)

(assert (=> b!1561231 m!1436975))

(assert (=> b!1561231 m!1436955))

(declare-fun m!1436977 () Bool)

(assert (=> b!1561231 m!1436977))

(declare-fun m!1436979 () Bool)

(assert (=> b!1561231 m!1436979))

(declare-fun m!1436981 () Bool)

(assert (=> mapNonEmpty!59331 m!1436981))

(check-sat (not mapNonEmpty!59331) (not b_next!31971) (not start!133586) tp_is_empty!38637 (not b!1561236) (not b!1561229) (not b_lambda!24855) (not b!1561231) b_and!51465 (not b!1561234))
(check-sat b_and!51465 (not b_next!31971))
