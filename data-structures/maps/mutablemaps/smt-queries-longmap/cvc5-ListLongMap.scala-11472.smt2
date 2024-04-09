; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133662 () Bool)

(assert start!133662)

(declare-fun b_free!32047 () Bool)

(declare-fun b_next!32047 () Bool)

(assert (=> start!133662 (= b_free!32047 (not b_next!32047))))

(declare-fun tp!113266 () Bool)

(declare-fun b_and!51615 () Bool)

(assert (=> start!133662 (= tp!113266 b_and!51615)))

(declare-fun b!1562339 () Bool)

(declare-fun res!1068281 () Bool)

(declare-fun e!870638 () Bool)

(assert (=> b!1562339 (=> (not res!1068281) (not e!870638))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!104093 0))(
  ( (array!104094 (arr!50234 (Array (_ BitVec 32) (_ BitVec 64))) (size!50785 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104093)

(declare-datatypes ((V!59825 0))(
  ( (V!59826 (val!19440 Int)) )
))
(declare-datatypes ((ValueCell!18326 0))(
  ( (ValueCellFull!18326 (v!22189 V!59825)) (EmptyCell!18326) )
))
(declare-datatypes ((array!104095 0))(
  ( (array!104096 (arr!50235 (Array (_ BitVec 32) ValueCell!18326)) (size!50786 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104095)

(assert (=> b!1562339 (= res!1068281 (and (= (size!50786 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50785 _keys!637) (size!50786 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!59445 () Bool)

(declare-fun mapRes!59445 () Bool)

(assert (=> mapIsEmpty!59445 mapRes!59445))

(declare-fun b!1562340 () Bool)

(declare-fun res!1068278 () Bool)

(assert (=> b!1562340 (=> (not res!1068278) (not e!870638))))

(declare-datatypes ((List!36641 0))(
  ( (Nil!36638) (Cons!36637 (h!38084 (_ BitVec 64)) (t!51485 List!36641)) )
))
(declare-fun arrayNoDuplicates!0 (array!104093 (_ BitVec 32) List!36641) Bool)

(assert (=> b!1562340 (= res!1068278 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36638))))

(declare-fun b!1562341 () Bool)

(declare-fun res!1068279 () Bool)

(assert (=> b!1562341 (=> (not res!1068279) (not e!870638))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1562341 (= res!1068279 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50785 _keys!637)) (bvslt from!782 (size!50785 _keys!637))))))

(declare-fun b!1562342 () Bool)

(declare-fun e!870639 () Bool)

(declare-fun tp_is_empty!38713 () Bool)

(assert (=> b!1562342 (= e!870639 tp_is_empty!38713)))

(declare-fun res!1068276 () Bool)

(assert (=> start!133662 (=> (not res!1068276) (not e!870638))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133662 (= res!1068276 (validMask!0 mask!947))))

(assert (=> start!133662 e!870638))

(assert (=> start!133662 tp!113266))

(assert (=> start!133662 tp_is_empty!38713))

(assert (=> start!133662 true))

(declare-fun array_inv!38969 (array!104093) Bool)

(assert (=> start!133662 (array_inv!38969 _keys!637)))

(declare-fun e!870641 () Bool)

(declare-fun array_inv!38970 (array!104095) Bool)

(assert (=> start!133662 (and (array_inv!38970 _values!487) e!870641)))

(declare-fun b!1562343 () Bool)

(declare-fun e!870637 () Bool)

(assert (=> b!1562343 (= e!870637 tp_is_empty!38713)))

(declare-fun mapNonEmpty!59445 () Bool)

(declare-fun tp!113265 () Bool)

(assert (=> mapNonEmpty!59445 (= mapRes!59445 (and tp!113265 e!870637))))

(declare-fun mapKey!59445 () (_ BitVec 32))

(declare-fun mapValue!59445 () ValueCell!18326)

(declare-fun mapRest!59445 () (Array (_ BitVec 32) ValueCell!18326))

(assert (=> mapNonEmpty!59445 (= (arr!50235 _values!487) (store mapRest!59445 mapKey!59445 mapValue!59445))))

(declare-fun b!1562344 () Bool)

(declare-fun res!1068280 () Bool)

(assert (=> b!1562344 (=> (not res!1068280) (not e!870638))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1562344 (= res!1068280 (validKeyInArray!0 (select (arr!50234 _keys!637) from!782)))))

(declare-fun b!1562345 () Bool)

(declare-fun res!1068277 () Bool)

(assert (=> b!1562345 (=> (not res!1068277) (not e!870638))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104093 (_ BitVec 32)) Bool)

(assert (=> b!1562345 (= res!1068277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1562346 () Bool)

(assert (=> b!1562346 (= e!870638 (not true))))

(declare-fun lt!671599 () Bool)

(declare-datatypes ((tuple2!25266 0))(
  ( (tuple2!25267 (_1!12643 (_ BitVec 64)) (_2!12643 V!59825)) )
))
(declare-datatypes ((List!36642 0))(
  ( (Nil!36639) (Cons!36638 (h!38085 tuple2!25266) (t!51486 List!36642)) )
))
(declare-datatypes ((ListLongMap!22713 0))(
  ( (ListLongMap!22714 (toList!11372 List!36642)) )
))
(declare-fun lt!671601 () ListLongMap!22713)

(declare-fun contains!10292 (ListLongMap!22713 (_ BitVec 64)) Bool)

(assert (=> b!1562346 (= lt!671599 (contains!10292 lt!671601 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1562346 (not (contains!10292 lt!671601 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!671598 () V!59825)

(declare-fun lt!671597 () ListLongMap!22713)

(declare-fun +!5026 (ListLongMap!22713 tuple2!25266) ListLongMap!22713)

(assert (=> b!1562346 (= lt!671601 (+!5026 lt!671597 (tuple2!25267 (select (arr!50234 _keys!637) from!782) lt!671598)))))

(declare-datatypes ((Unit!51916 0))(
  ( (Unit!51917) )
))
(declare-fun lt!671600 () Unit!51916)

(declare-fun addStillNotContains!562 (ListLongMap!22713 (_ BitVec 64) V!59825 (_ BitVec 64)) Unit!51916)

(assert (=> b!1562346 (= lt!671600 (addStillNotContains!562 lt!671597 (select (arr!50234 _keys!637) from!782) lt!671598 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26282 (ValueCell!18326 V!59825) V!59825)

(declare-fun dynLambda!3915 (Int (_ BitVec 64)) V!59825)

(assert (=> b!1562346 (= lt!671598 (get!26282 (select (arr!50235 _values!487) from!782) (dynLambda!3915 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59825)

(declare-fun minValue!453 () V!59825)

(declare-fun getCurrentListMapNoExtraKeys!6732 (array!104093 array!104095 (_ BitVec 32) (_ BitVec 32) V!59825 V!59825 (_ BitVec 32) Int) ListLongMap!22713)

(assert (=> b!1562346 (= lt!671597 (getCurrentListMapNoExtraKeys!6732 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1562347 () Bool)

(assert (=> b!1562347 (= e!870641 (and e!870639 mapRes!59445))))

(declare-fun condMapEmpty!59445 () Bool)

(declare-fun mapDefault!59445 () ValueCell!18326)

