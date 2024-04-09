; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84268 () Bool)

(assert start!84268)

(declare-fun b_free!19941 () Bool)

(declare-fun b_next!19941 () Bool)

(assert (=> start!84268 (= b_free!19941 (not b_next!19941))))

(declare-fun tp!69428 () Bool)

(declare-fun b_and!31977 () Bool)

(assert (=> start!84268 (= tp!69428 b_and!31977)))

(declare-fun b!985357 () Bool)

(declare-fun e!555463 () Bool)

(declare-fun e!555460 () Bool)

(assert (=> b!985357 (= e!555463 e!555460)))

(declare-fun res!659484 () Bool)

(assert (=> b!985357 (=> (not res!659484) (not e!555460))))

(declare-datatypes ((array!62051 0))(
  ( (array!62052 (arr!29879 (Array (_ BitVec 32) (_ BitVec 64))) (size!30359 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62051)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!985357 (= res!659484 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29879 _keys!1544) from!1932))))))

(declare-datatypes ((V!35707 0))(
  ( (V!35708 (val!11572 Int)) )
))
(declare-datatypes ((ValueCell!11040 0))(
  ( (ValueCellFull!11040 (v!14134 V!35707)) (EmptyCell!11040) )
))
(declare-datatypes ((array!62053 0))(
  ( (array!62054 (arr!29880 (Array (_ BitVec 32) ValueCell!11040)) (size!30360 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62053)

(declare-fun defaultEntry!1281 () Int)

(declare-fun lt!437219 () V!35707)

(declare-fun get!15531 (ValueCell!11040 V!35707) V!35707)

(declare-fun dynLambda!1850 (Int (_ BitVec 64)) V!35707)

(assert (=> b!985357 (= lt!437219 (get!15531 (select (arr!29880 _values!1278) from!1932) (dynLambda!1850 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun minValue!1220 () V!35707)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((tuple2!14906 0))(
  ( (tuple2!14907 (_1!7463 (_ BitVec 64)) (_2!7463 V!35707)) )
))
(declare-datatypes ((List!20824 0))(
  ( (Nil!20821) (Cons!20820 (h!21982 tuple2!14906) (t!29717 List!20824)) )
))
(declare-datatypes ((ListLongMap!13617 0))(
  ( (ListLongMap!13618 (toList!6824 List!20824)) )
))
(declare-fun lt!437217 () ListLongMap!13617)

(declare-fun zeroValue!1220 () V!35707)

(declare-fun getCurrentListMapNoExtraKeys!3479 (array!62051 array!62053 (_ BitVec 32) (_ BitVec 32) V!35707 V!35707 (_ BitVec 32) Int) ListLongMap!13617)

(assert (=> b!985357 (= lt!437217 (getCurrentListMapNoExtraKeys!3479 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun mapNonEmpty!36593 () Bool)

(declare-fun mapRes!36593 () Bool)

(declare-fun tp!69427 () Bool)

(declare-fun e!555462 () Bool)

(assert (=> mapNonEmpty!36593 (= mapRes!36593 (and tp!69427 e!555462))))

(declare-fun mapValue!36593 () ValueCell!11040)

(declare-fun mapKey!36593 () (_ BitVec 32))

(declare-fun mapRest!36593 () (Array (_ BitVec 32) ValueCell!11040))

(assert (=> mapNonEmpty!36593 (= (arr!29880 _values!1278) (store mapRest!36593 mapKey!36593 mapValue!36593))))

(declare-fun mapIsEmpty!36593 () Bool)

(assert (=> mapIsEmpty!36593 mapRes!36593))

(declare-fun res!659477 () Bool)

(assert (=> start!84268 (=> (not res!659477) (not e!555463))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84268 (= res!659477 (validMask!0 mask!1948))))

(assert (=> start!84268 e!555463))

(assert (=> start!84268 true))

(declare-fun tp_is_empty!23043 () Bool)

(assert (=> start!84268 tp_is_empty!23043))

(declare-fun e!555461 () Bool)

(declare-fun array_inv!22959 (array!62053) Bool)

(assert (=> start!84268 (and (array_inv!22959 _values!1278) e!555461)))

(assert (=> start!84268 tp!69428))

(declare-fun array_inv!22960 (array!62051) Bool)

(assert (=> start!84268 (array_inv!22960 _keys!1544)))

(declare-fun b!985358 () Bool)

(declare-fun res!659483 () Bool)

(assert (=> b!985358 (=> (not res!659483) (not e!555463))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62051 (_ BitVec 32)) Bool)

(assert (=> b!985358 (= res!659483 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!985359 () Bool)

(declare-fun res!659478 () Bool)

(assert (=> b!985359 (=> (not res!659478) (not e!555463))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!985359 (= res!659478 (validKeyInArray!0 (select (arr!29879 _keys!1544) from!1932)))))

(declare-fun b!985360 () Bool)

(declare-fun res!659481 () Bool)

(assert (=> b!985360 (=> (not res!659481) (not e!555463))))

(assert (=> b!985360 (= res!659481 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30359 _keys!1544))))))

(declare-fun b!985361 () Bool)

(declare-fun res!659482 () Bool)

(assert (=> b!985361 (=> (not res!659482) (not e!555463))))

(assert (=> b!985361 (= res!659482 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!985362 () Bool)

(declare-fun res!659479 () Bool)

(assert (=> b!985362 (=> (not res!659479) (not e!555463))))

(assert (=> b!985362 (= res!659479 (and (= (size!30360 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30359 _keys!1544) (size!30360 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!985363 () Bool)

(assert (=> b!985363 (= e!555462 tp_is_empty!23043)))

(declare-fun b!985364 () Bool)

(declare-fun res!659480 () Bool)

(assert (=> b!985364 (=> (not res!659480) (not e!555463))))

(declare-datatypes ((List!20825 0))(
  ( (Nil!20822) (Cons!20821 (h!21983 (_ BitVec 64)) (t!29718 List!20825)) )
))
(declare-fun arrayNoDuplicates!0 (array!62051 (_ BitVec 32) List!20825) Bool)

(assert (=> b!985364 (= res!659480 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20822))))

(declare-fun b!985365 () Bool)

(assert (=> b!985365 (= e!555460 (not true))))

(declare-fun lt!437221 () tuple2!14906)

(declare-fun lt!437218 () tuple2!14906)

(declare-fun +!3012 (ListLongMap!13617 tuple2!14906) ListLongMap!13617)

(assert (=> b!985365 (= (+!3012 (+!3012 lt!437217 lt!437221) lt!437218) (+!3012 (+!3012 lt!437217 lt!437218) lt!437221))))

(assert (=> b!985365 (= lt!437218 (tuple2!14907 (select (arr!29879 _keys!1544) from!1932) lt!437219))))

(assert (=> b!985365 (= lt!437221 (tuple2!14907 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32699 0))(
  ( (Unit!32700) )
))
(declare-fun lt!437220 () Unit!32699)

(declare-fun addCommutativeForDiffKeys!674 (ListLongMap!13617 (_ BitVec 64) V!35707 (_ BitVec 64) V!35707) Unit!32699)

(assert (=> b!985365 (= lt!437220 (addCommutativeForDiffKeys!674 lt!437217 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29879 _keys!1544) from!1932) lt!437219))))

(declare-fun b!985366 () Bool)

(declare-fun e!555459 () Bool)

(assert (=> b!985366 (= e!555461 (and e!555459 mapRes!36593))))

(declare-fun condMapEmpty!36593 () Bool)

(declare-fun mapDefault!36593 () ValueCell!11040)

(assert (=> b!985366 (= condMapEmpty!36593 (= (arr!29880 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11040)) mapDefault!36593)))))

(declare-fun b!985367 () Bool)

(assert (=> b!985367 (= e!555459 tp_is_empty!23043)))

(assert (= (and start!84268 res!659477) b!985362))

(assert (= (and b!985362 res!659479) b!985358))

(assert (= (and b!985358 res!659483) b!985364))

(assert (= (and b!985364 res!659480) b!985360))

(assert (= (and b!985360 res!659481) b!985359))

(assert (= (and b!985359 res!659478) b!985361))

(assert (= (and b!985361 res!659482) b!985357))

(assert (= (and b!985357 res!659484) b!985365))

(assert (= (and b!985366 condMapEmpty!36593) mapIsEmpty!36593))

(assert (= (and b!985366 (not condMapEmpty!36593)) mapNonEmpty!36593))

(get-info :version)

(assert (= (and mapNonEmpty!36593 ((_ is ValueCellFull!11040) mapValue!36593)) b!985363))

(assert (= (and b!985366 ((_ is ValueCellFull!11040) mapDefault!36593)) b!985367))

(assert (= start!84268 b!985366))

(declare-fun b_lambda!15003 () Bool)

(assert (=> (not b_lambda!15003) (not b!985357)))

(declare-fun t!29716 () Bool)

(declare-fun tb!6743 () Bool)

(assert (=> (and start!84268 (= defaultEntry!1281 defaultEntry!1281) t!29716) tb!6743))

(declare-fun result!13467 () Bool)

(assert (=> tb!6743 (= result!13467 tp_is_empty!23043)))

(assert (=> b!985357 t!29716))

(declare-fun b_and!31979 () Bool)

(assert (= b_and!31977 (and (=> t!29716 result!13467) b_and!31979)))

(declare-fun m!912519 () Bool)

(assert (=> start!84268 m!912519))

(declare-fun m!912521 () Bool)

(assert (=> start!84268 m!912521))

(declare-fun m!912523 () Bool)

(assert (=> start!84268 m!912523))

(declare-fun m!912525 () Bool)

(assert (=> mapNonEmpty!36593 m!912525))

(declare-fun m!912527 () Bool)

(assert (=> b!985357 m!912527))

(declare-fun m!912529 () Bool)

(assert (=> b!985357 m!912529))

(declare-fun m!912531 () Bool)

(assert (=> b!985357 m!912531))

(declare-fun m!912533 () Bool)

(assert (=> b!985357 m!912533))

(assert (=> b!985357 m!912529))

(assert (=> b!985357 m!912533))

(declare-fun m!912535 () Bool)

(assert (=> b!985357 m!912535))

(assert (=> b!985365 m!912527))

(declare-fun m!912537 () Bool)

(assert (=> b!985365 m!912537))

(declare-fun m!912539 () Bool)

(assert (=> b!985365 m!912539))

(declare-fun m!912541 () Bool)

(assert (=> b!985365 m!912541))

(declare-fun m!912543 () Bool)

(assert (=> b!985365 m!912543))

(assert (=> b!985365 m!912527))

(declare-fun m!912545 () Bool)

(assert (=> b!985365 m!912545))

(assert (=> b!985365 m!912541))

(assert (=> b!985365 m!912537))

(declare-fun m!912547 () Bool)

(assert (=> b!985358 m!912547))

(declare-fun m!912549 () Bool)

(assert (=> b!985364 m!912549))

(assert (=> b!985359 m!912527))

(assert (=> b!985359 m!912527))

(declare-fun m!912551 () Bool)

(assert (=> b!985359 m!912551))

(check-sat (not b!985357) (not b!985358) tp_is_empty!23043 (not b_lambda!15003) (not b!985364) (not mapNonEmpty!36593) (not b!985365) (not b!985359) b_and!31979 (not start!84268) (not b_next!19941))
(check-sat b_and!31979 (not b_next!19941))
