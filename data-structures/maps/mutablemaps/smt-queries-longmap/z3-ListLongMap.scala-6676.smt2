; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84058 () Bool)

(assert start!84058)

(declare-fun b_free!19785 () Bool)

(declare-fun b_next!19785 () Bool)

(assert (=> start!84058 (= b_free!19785 (not b_next!19785))))

(declare-fun tp!68879 () Bool)

(declare-fun b_and!31671 () Bool)

(assert (=> start!84058 (= tp!68879 b_and!31671)))

(declare-fun b!982129 () Bool)

(declare-fun res!657349 () Bool)

(declare-fun e!553661 () Bool)

(assert (=> b!982129 (=> (not res!657349) (not e!553661))))

(declare-datatypes ((array!61653 0))(
  ( (array!61654 (arr!29680 (Array (_ BitVec 32) (_ BitVec 64))) (size!30160 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61653)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!982129 (= res!657349 (validKeyInArray!0 (select (arr!29680 _keys!1544) from!1932)))))

(declare-fun b!982130 () Bool)

(declare-fun e!553659 () Bool)

(declare-fun tp_is_empty!22833 () Bool)

(assert (=> b!982130 (= e!553659 tp_is_empty!22833)))

(declare-fun b!982131 () Bool)

(declare-fun e!553664 () Bool)

(assert (=> b!982131 (= e!553664 tp_is_empty!22833)))

(declare-fun b!982132 () Bool)

(declare-fun res!657345 () Bool)

(assert (=> b!982132 (=> (not res!657345) (not e!553661))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35427 0))(
  ( (V!35428 (val!11467 Int)) )
))
(declare-datatypes ((ValueCell!10935 0))(
  ( (ValueCellFull!10935 (v!14029 V!35427)) (EmptyCell!10935) )
))
(declare-datatypes ((array!61655 0))(
  ( (array!61656 (arr!29681 (Array (_ BitVec 32) ValueCell!10935)) (size!30161 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61655)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!982132 (= res!657345 (and (= (size!30161 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30160 _keys!1544) (size!30161 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!982133 () Bool)

(declare-fun res!657344 () Bool)

(assert (=> b!982133 (=> (not res!657344) (not e!553661))))

(assert (=> b!982133 (= res!657344 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!982134 () Bool)

(declare-fun res!657351 () Bool)

(assert (=> b!982134 (=> (not res!657351) (not e!553661))))

(assert (=> b!982134 (= res!657351 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30160 _keys!1544))))))

(declare-fun mapIsEmpty!36278 () Bool)

(declare-fun mapRes!36278 () Bool)

(assert (=> mapIsEmpty!36278 mapRes!36278))

(declare-fun b!982135 () Bool)

(declare-fun res!657347 () Bool)

(assert (=> b!982135 (=> (not res!657347) (not e!553661))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61653 (_ BitVec 32)) Bool)

(assert (=> b!982135 (= res!657347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun res!657346 () Bool)

(assert (=> start!84058 (=> (not res!657346) (not e!553661))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84058 (= res!657346 (validMask!0 mask!1948))))

(assert (=> start!84058 e!553661))

(assert (=> start!84058 true))

(assert (=> start!84058 tp_is_empty!22833))

(declare-fun e!553660 () Bool)

(declare-fun array_inv!22823 (array!61655) Bool)

(assert (=> start!84058 (and (array_inv!22823 _values!1278) e!553660)))

(assert (=> start!84058 tp!68879))

(declare-fun array_inv!22824 (array!61653) Bool)

(assert (=> start!84058 (array_inv!22824 _keys!1544)))

(declare-fun b!982136 () Bool)

(declare-fun e!553663 () Bool)

(assert (=> b!982136 (= e!553663 (not (bvsle from!1932 (size!30160 _keys!1544))))))

(declare-datatypes ((tuple2!14794 0))(
  ( (tuple2!14795 (_1!7407 (_ BitVec 64)) (_2!7407 V!35427)) )
))
(declare-datatypes ((List!20700 0))(
  ( (Nil!20697) (Cons!20696 (h!21858 tuple2!14794) (t!29443 List!20700)) )
))
(declare-datatypes ((ListLongMap!13505 0))(
  ( (ListLongMap!13506 (toList!6768 List!20700)) )
))
(declare-fun lt!436014 () ListLongMap!13505)

(declare-fun lt!436015 () tuple2!14794)

(declare-fun lt!436013 () tuple2!14794)

(declare-fun +!2970 (ListLongMap!13505 tuple2!14794) ListLongMap!13505)

(assert (=> b!982136 (= (+!2970 (+!2970 lt!436014 lt!436015) lt!436013) (+!2970 (+!2970 lt!436014 lt!436013) lt!436015))))

(declare-fun lt!436012 () V!35427)

(assert (=> b!982136 (= lt!436013 (tuple2!14795 (select (arr!29680 _keys!1544) from!1932) lt!436012))))

(declare-fun zeroValue!1220 () V!35427)

(assert (=> b!982136 (= lt!436015 (tuple2!14795 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32615 0))(
  ( (Unit!32616) )
))
(declare-fun lt!436011 () Unit!32615)

(declare-fun addCommutativeForDiffKeys!632 (ListLongMap!13505 (_ BitVec 64) V!35427 (_ BitVec 64) V!35427) Unit!32615)

(assert (=> b!982136 (= lt!436011 (addCommutativeForDiffKeys!632 lt!436014 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29680 _keys!1544) from!1932) lt!436012))))

(declare-fun b!982137 () Bool)

(assert (=> b!982137 (= e!553660 (and e!553659 mapRes!36278))))

(declare-fun condMapEmpty!36278 () Bool)

(declare-fun mapDefault!36278 () ValueCell!10935)

(assert (=> b!982137 (= condMapEmpty!36278 (= (arr!29681 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10935)) mapDefault!36278)))))

(declare-fun b!982138 () Bool)

(declare-fun res!657348 () Bool)

(assert (=> b!982138 (=> (not res!657348) (not e!553661))))

(declare-datatypes ((List!20701 0))(
  ( (Nil!20698) (Cons!20697 (h!21859 (_ BitVec 64)) (t!29444 List!20701)) )
))
(declare-fun arrayNoDuplicates!0 (array!61653 (_ BitVec 32) List!20701) Bool)

(assert (=> b!982138 (= res!657348 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20698))))

(declare-fun b!982139 () Bool)

(assert (=> b!982139 (= e!553661 e!553663)))

(declare-fun res!657350 () Bool)

(assert (=> b!982139 (=> (not res!657350) (not e!553663))))

(assert (=> b!982139 (= res!657350 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29680 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15411 (ValueCell!10935 V!35427) V!35427)

(declare-fun dynLambda!1800 (Int (_ BitVec 64)) V!35427)

(assert (=> b!982139 (= lt!436012 (get!15411 (select (arr!29681 _values!1278) from!1932) (dynLambda!1800 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35427)

(declare-fun getCurrentListMapNoExtraKeys!3427 (array!61653 array!61655 (_ BitVec 32) (_ BitVec 32) V!35427 V!35427 (_ BitVec 32) Int) ListLongMap!13505)

(assert (=> b!982139 (= lt!436014 (getCurrentListMapNoExtraKeys!3427 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun mapNonEmpty!36278 () Bool)

(declare-fun tp!68878 () Bool)

(assert (=> mapNonEmpty!36278 (= mapRes!36278 (and tp!68878 e!553664))))

(declare-fun mapKey!36278 () (_ BitVec 32))

(declare-fun mapRest!36278 () (Array (_ BitVec 32) ValueCell!10935))

(declare-fun mapValue!36278 () ValueCell!10935)

(assert (=> mapNonEmpty!36278 (= (arr!29681 _values!1278) (store mapRest!36278 mapKey!36278 mapValue!36278))))

(assert (= (and start!84058 res!657346) b!982132))

(assert (= (and b!982132 res!657345) b!982135))

(assert (= (and b!982135 res!657347) b!982138))

(assert (= (and b!982138 res!657348) b!982134))

(assert (= (and b!982134 res!657351) b!982129))

(assert (= (and b!982129 res!657349) b!982133))

(assert (= (and b!982133 res!657344) b!982139))

(assert (= (and b!982139 res!657350) b!982136))

(assert (= (and b!982137 condMapEmpty!36278) mapIsEmpty!36278))

(assert (= (and b!982137 (not condMapEmpty!36278)) mapNonEmpty!36278))

(get-info :version)

(assert (= (and mapNonEmpty!36278 ((_ is ValueCellFull!10935) mapValue!36278)) b!982131))

(assert (= (and b!982137 ((_ is ValueCellFull!10935) mapDefault!36278)) b!982130))

(assert (= start!84058 b!982137))

(declare-fun b_lambda!14853 () Bool)

(assert (=> (not b_lambda!14853) (not b!982139)))

(declare-fun t!29442 () Bool)

(declare-fun tb!6593 () Bool)

(assert (=> (and start!84058 (= defaultEntry!1281 defaultEntry!1281) t!29442) tb!6593))

(declare-fun result!13167 () Bool)

(assert (=> tb!6593 (= result!13167 tp_is_empty!22833)))

(assert (=> b!982139 t!29442))

(declare-fun b_and!31673 () Bool)

(assert (= b_and!31671 (and (=> t!29442 result!13167) b_and!31673)))

(declare-fun m!909579 () Bool)

(assert (=> b!982129 m!909579))

(assert (=> b!982129 m!909579))

(declare-fun m!909581 () Bool)

(assert (=> b!982129 m!909581))

(declare-fun m!909583 () Bool)

(assert (=> start!84058 m!909583))

(declare-fun m!909585 () Bool)

(assert (=> start!84058 m!909585))

(declare-fun m!909587 () Bool)

(assert (=> start!84058 m!909587))

(declare-fun m!909589 () Bool)

(assert (=> b!982138 m!909589))

(declare-fun m!909591 () Bool)

(assert (=> b!982136 m!909591))

(declare-fun m!909593 () Bool)

(assert (=> b!982136 m!909593))

(assert (=> b!982136 m!909579))

(declare-fun m!909595 () Bool)

(assert (=> b!982136 m!909595))

(assert (=> b!982136 m!909579))

(assert (=> b!982136 m!909591))

(declare-fun m!909597 () Bool)

(assert (=> b!982136 m!909597))

(assert (=> b!982136 m!909593))

(declare-fun m!909599 () Bool)

(assert (=> b!982136 m!909599))

(declare-fun m!909601 () Bool)

(assert (=> b!982135 m!909601))

(assert (=> b!982139 m!909579))

(declare-fun m!909603 () Bool)

(assert (=> b!982139 m!909603))

(declare-fun m!909605 () Bool)

(assert (=> b!982139 m!909605))

(declare-fun m!909607 () Bool)

(assert (=> b!982139 m!909607))

(assert (=> b!982139 m!909603))

(assert (=> b!982139 m!909607))

(declare-fun m!909609 () Bool)

(assert (=> b!982139 m!909609))

(declare-fun m!909611 () Bool)

(assert (=> mapNonEmpty!36278 m!909611))

(check-sat (not b!982129) (not mapNonEmpty!36278) b_and!31673 (not start!84058) (not b_next!19785) (not b!982135) (not b_lambda!14853) (not b!982138) (not b!982139) (not b!982136) tp_is_empty!22833)
(check-sat b_and!31673 (not b_next!19785))
