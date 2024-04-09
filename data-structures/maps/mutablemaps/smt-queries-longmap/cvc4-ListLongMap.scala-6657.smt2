; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83946 () Bool)

(assert start!83946)

(declare-fun b_free!19727 () Bool)

(declare-fun b_next!19727 () Bool)

(assert (=> start!83946 (= b_free!19727 (not b_next!19727))))

(declare-fun tp!68624 () Bool)

(declare-fun b_and!31561 () Bool)

(assert (=> start!83946 (= tp!68624 b_and!31561)))

(declare-fun b!980616 () Bool)

(declare-fun res!656391 () Bool)

(declare-fun e!552744 () Bool)

(assert (=> b!980616 (=> (not res!656391) (not e!552744))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61449 0))(
  ( (array!61450 (arr!29578 (Array (_ BitVec 32) (_ BitVec 64))) (size!30058 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61449)

(assert (=> b!980616 (= res!656391 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30058 _keys!1544))))))

(declare-fun b!980617 () Bool)

(declare-fun res!656389 () Bool)

(assert (=> b!980617 (=> (not res!656389) (not e!552744))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!980617 (= res!656389 (validKeyInArray!0 (select (arr!29578 _keys!1544) from!1932)))))

(declare-fun b!980618 () Bool)

(declare-fun e!552742 () Bool)

(declare-fun tp_is_empty!22721 () Bool)

(assert (=> b!980618 (= e!552742 tp_is_empty!22721)))

(declare-fun res!656388 () Bool)

(assert (=> start!83946 (=> (not res!656388) (not e!552744))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83946 (= res!656388 (validMask!0 mask!1948))))

(assert (=> start!83946 e!552744))

(assert (=> start!83946 true))

(assert (=> start!83946 tp_is_empty!22721))

(declare-datatypes ((V!35277 0))(
  ( (V!35278 (val!11411 Int)) )
))
(declare-datatypes ((ValueCell!10879 0))(
  ( (ValueCellFull!10879 (v!13973 V!35277)) (EmptyCell!10879) )
))
(declare-datatypes ((array!61451 0))(
  ( (array!61452 (arr!29579 (Array (_ BitVec 32) ValueCell!10879)) (size!30059 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61451)

(declare-fun e!552741 () Bool)

(declare-fun array_inv!22753 (array!61451) Bool)

(assert (=> start!83946 (and (array_inv!22753 _values!1278) e!552741)))

(assert (=> start!83946 tp!68624))

(declare-fun array_inv!22754 (array!61449) Bool)

(assert (=> start!83946 (array_inv!22754 _keys!1544)))

(declare-fun mapIsEmpty!36110 () Bool)

(declare-fun mapRes!36110 () Bool)

(assert (=> mapIsEmpty!36110 mapRes!36110))

(declare-fun b!980619 () Bool)

(declare-fun res!656387 () Bool)

(assert (=> b!980619 (=> (not res!656387) (not e!552744))))

(declare-datatypes ((List!20641 0))(
  ( (Nil!20638) (Cons!20637 (h!21799 (_ BitVec 64)) (t!29332 List!20641)) )
))
(declare-fun arrayNoDuplicates!0 (array!61449 (_ BitVec 32) List!20641) Bool)

(assert (=> b!980619 (= res!656387 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20638))))

(declare-fun mapNonEmpty!36110 () Bool)

(declare-fun tp!68623 () Bool)

(assert (=> mapNonEmpty!36110 (= mapRes!36110 (and tp!68623 e!552742))))

(declare-fun mapRest!36110 () (Array (_ BitVec 32) ValueCell!10879))

(declare-fun mapKey!36110 () (_ BitVec 32))

(declare-fun mapValue!36110 () ValueCell!10879)

(assert (=> mapNonEmpty!36110 (= (arr!29579 _values!1278) (store mapRest!36110 mapKey!36110 mapValue!36110))))

(declare-fun b!980620 () Bool)

(declare-fun res!656393 () Bool)

(assert (=> b!980620 (=> (not res!656393) (not e!552744))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61449 (_ BitVec 32)) Bool)

(assert (=> b!980620 (= res!656393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!980621 () Bool)

(declare-fun e!552746 () Bool)

(assert (=> b!980621 (= e!552746 tp_is_empty!22721)))

(declare-fun b!980622 () Bool)

(declare-fun res!656394 () Bool)

(assert (=> b!980622 (=> (not res!656394) (not e!552744))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!980622 (= res!656394 (and (= (size!30059 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30058 _keys!1544) (size!30059 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!980623 () Bool)

(declare-fun res!656390 () Bool)

(assert (=> b!980623 (=> (not res!656390) (not e!552744))))

(assert (=> b!980623 (= res!656390 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!980624 () Bool)

(declare-fun e!552743 () Bool)

(assert (=> b!980624 (= e!552744 (not e!552743))))

(declare-fun res!656392 () Bool)

(assert (=> b!980624 (=> res!656392 e!552743)))

(assert (=> b!980624 (= res!656392 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29578 _keys!1544) from!1932)))))

(declare-datatypes ((tuple2!14750 0))(
  ( (tuple2!14751 (_1!7385 (_ BitVec 64)) (_2!7385 V!35277)) )
))
(declare-fun lt!435536 () tuple2!14750)

(declare-fun lt!435544 () tuple2!14750)

(declare-datatypes ((List!20642 0))(
  ( (Nil!20639) (Cons!20638 (h!21800 tuple2!14750) (t!29333 List!20642)) )
))
(declare-datatypes ((ListLongMap!13461 0))(
  ( (ListLongMap!13462 (toList!6746 List!20642)) )
))
(declare-fun lt!435540 () ListLongMap!13461)

(declare-fun lt!435542 () ListLongMap!13461)

(declare-fun +!2952 (ListLongMap!13461 tuple2!14750) ListLongMap!13461)

(assert (=> b!980624 (= (+!2952 lt!435542 lt!435544) (+!2952 lt!435540 lt!435536))))

(declare-fun lt!435539 () ListLongMap!13461)

(assert (=> b!980624 (= lt!435540 (+!2952 lt!435539 lt!435544))))

(declare-fun lt!435541 () V!35277)

(assert (=> b!980624 (= lt!435544 (tuple2!14751 (select (arr!29578 _keys!1544) from!1932) lt!435541))))

(assert (=> b!980624 (= lt!435542 (+!2952 lt!435539 lt!435536))))

(declare-fun minValue!1220 () V!35277)

(assert (=> b!980624 (= lt!435536 (tuple2!14751 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32579 0))(
  ( (Unit!32580) )
))
(declare-fun lt!435543 () Unit!32579)

(declare-fun addCommutativeForDiffKeys!614 (ListLongMap!13461 (_ BitVec 64) V!35277 (_ BitVec 64) V!35277) Unit!32579)

(assert (=> b!980624 (= lt!435543 (addCommutativeForDiffKeys!614 lt!435539 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29578 _keys!1544) from!1932) lt!435541))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15356 (ValueCell!10879 V!35277) V!35277)

(declare-fun dynLambda!1783 (Int (_ BitVec 64)) V!35277)

(assert (=> b!980624 (= lt!435541 (get!15356 (select (arr!29579 _values!1278) from!1932) (dynLambda!1783 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!435535 () ListLongMap!13461)

(declare-fun lt!435537 () tuple2!14750)

(assert (=> b!980624 (= lt!435539 (+!2952 lt!435535 lt!435537))))

(declare-fun zeroValue!1220 () V!35277)

(assert (=> b!980624 (= lt!435537 (tuple2!14751 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun getCurrentListMapNoExtraKeys!3408 (array!61449 array!61451 (_ BitVec 32) (_ BitVec 32) V!35277 V!35277 (_ BitVec 32) Int) ListLongMap!13461)

(assert (=> b!980624 (= lt!435535 (getCurrentListMapNoExtraKeys!3408 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!980625 () Bool)

(assert (=> b!980625 (= e!552743 (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000))))

(assert (=> b!980625 (= lt!435540 (+!2952 (+!2952 lt!435535 lt!435544) lt!435537))))

(declare-fun lt!435538 () Unit!32579)

(assert (=> b!980625 (= lt!435538 (addCommutativeForDiffKeys!614 lt!435535 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29578 _keys!1544) from!1932) lt!435541))))

(declare-fun b!980626 () Bool)

(assert (=> b!980626 (= e!552741 (and e!552746 mapRes!36110))))

(declare-fun condMapEmpty!36110 () Bool)

(declare-fun mapDefault!36110 () ValueCell!10879)

