; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133626 () Bool)

(assert start!133626)

(declare-fun b_free!32011 () Bool)

(declare-fun b_next!32011 () Bool)

(assert (=> start!133626 (= b_free!32011 (not b_next!32011))))

(declare-fun tp!113158 () Bool)

(declare-fun b_and!51543 () Bool)

(assert (=> start!133626 (= tp!113158 b_and!51543)))

(declare-fun b!1561817 () Bool)

(declare-fun res!1067952 () Bool)

(declare-fun e!870371 () Bool)

(assert (=> b!1561817 (=> (not res!1067952) (not e!870371))))

(declare-datatypes ((array!104025 0))(
  ( (array!104026 (arr!50200 (Array (_ BitVec 32) (_ BitVec 64))) (size!50751 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104025)

(declare-datatypes ((List!36618 0))(
  ( (Nil!36615) (Cons!36614 (h!38061 (_ BitVec 64)) (t!51426 List!36618)) )
))
(declare-fun arrayNoDuplicates!0 (array!104025 (_ BitVec 32) List!36618) Bool)

(assert (=> b!1561817 (= res!1067952 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36615))))

(declare-fun b!1561818 () Bool)

(assert (=> b!1561818 (= e!870371 (not true))))

(declare-fun lt!671329 () Bool)

(declare-datatypes ((V!59777 0))(
  ( (V!59778 (val!19422 Int)) )
))
(declare-datatypes ((tuple2!25242 0))(
  ( (tuple2!25243 (_1!12631 (_ BitVec 64)) (_2!12631 V!59777)) )
))
(declare-datatypes ((List!36619 0))(
  ( (Nil!36616) (Cons!36615 (h!38062 tuple2!25242) (t!51427 List!36619)) )
))
(declare-datatypes ((ListLongMap!22689 0))(
  ( (ListLongMap!22690 (toList!11360 List!36619)) )
))
(declare-fun lt!671330 () ListLongMap!22689)

(declare-fun contains!10280 (ListLongMap!22689 (_ BitVec 64)) Bool)

(assert (=> b!1561818 (= lt!671329 (contains!10280 lt!671330 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1561818 (not (contains!10280 lt!671330 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!671327 () V!59777)

(declare-fun lt!671328 () ListLongMap!22689)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun +!5014 (ListLongMap!22689 tuple2!25242) ListLongMap!22689)

(assert (=> b!1561818 (= lt!671330 (+!5014 lt!671328 (tuple2!25243 (select (arr!50200 _keys!637) from!782) lt!671327)))))

(declare-datatypes ((Unit!51892 0))(
  ( (Unit!51893) )
))
(declare-fun lt!671331 () Unit!51892)

(declare-fun addStillNotContains!550 (ListLongMap!22689 (_ BitVec 64) V!59777 (_ BitVec 64)) Unit!51892)

(assert (=> b!1561818 (= lt!671331 (addStillNotContains!550 lt!671328 (select (arr!50200 _keys!637) from!782) lt!671327 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-datatypes ((ValueCell!18308 0))(
  ( (ValueCellFull!18308 (v!22171 V!59777)) (EmptyCell!18308) )
))
(declare-datatypes ((array!104027 0))(
  ( (array!104028 (arr!50201 (Array (_ BitVec 32) ValueCell!18308)) (size!50752 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104027)

(declare-fun get!26258 (ValueCell!18308 V!59777) V!59777)

(declare-fun dynLambda!3903 (Int (_ BitVec 64)) V!59777)

(assert (=> b!1561818 (= lt!671327 (get!26258 (select (arr!50201 _values!487) from!782) (dynLambda!3903 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59777)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59777)

(declare-fun getCurrentListMapNoExtraKeys!6720 (array!104025 array!104027 (_ BitVec 32) (_ BitVec 32) V!59777 V!59777 (_ BitVec 32) Int) ListLongMap!22689)

(assert (=> b!1561818 (= lt!671328 (getCurrentListMapNoExtraKeys!6720 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun res!1067957 () Bool)

(assert (=> start!133626 (=> (not res!1067957) (not e!870371))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133626 (= res!1067957 (validMask!0 mask!947))))

(assert (=> start!133626 e!870371))

(assert (=> start!133626 tp!113158))

(declare-fun tp_is_empty!38677 () Bool)

(assert (=> start!133626 tp_is_empty!38677))

(assert (=> start!133626 true))

(declare-fun array_inv!38945 (array!104025) Bool)

(assert (=> start!133626 (array_inv!38945 _keys!637)))

(declare-fun e!870370 () Bool)

(declare-fun array_inv!38946 (array!104027) Bool)

(assert (=> start!133626 (and (array_inv!38946 _values!487) e!870370)))

(declare-fun b!1561819 () Bool)

(declare-fun e!870368 () Bool)

(assert (=> b!1561819 (= e!870368 tp_is_empty!38677)))

(declare-fun b!1561820 () Bool)

(declare-fun res!1067954 () Bool)

(assert (=> b!1561820 (=> (not res!1067954) (not e!870371))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104025 (_ BitVec 32)) Bool)

(assert (=> b!1561820 (= res!1067954 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun mapIsEmpty!59391 () Bool)

(declare-fun mapRes!59391 () Bool)

(assert (=> mapIsEmpty!59391 mapRes!59391))

(declare-fun mapNonEmpty!59391 () Bool)

(declare-fun tp!113157 () Bool)

(assert (=> mapNonEmpty!59391 (= mapRes!59391 (and tp!113157 e!870368))))

(declare-fun mapValue!59391 () ValueCell!18308)

(declare-fun mapRest!59391 () (Array (_ BitVec 32) ValueCell!18308))

(declare-fun mapKey!59391 () (_ BitVec 32))

(assert (=> mapNonEmpty!59391 (= (arr!50201 _values!487) (store mapRest!59391 mapKey!59391 mapValue!59391))))

(declare-fun b!1561821 () Bool)

(declare-fun res!1067955 () Bool)

(assert (=> b!1561821 (=> (not res!1067955) (not e!870371))))

(assert (=> b!1561821 (= res!1067955 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50751 _keys!637)) (bvslt from!782 (size!50751 _keys!637))))))

(declare-fun b!1561822 () Bool)

(declare-fun e!870367 () Bool)

(assert (=> b!1561822 (= e!870370 (and e!870367 mapRes!59391))))

(declare-fun condMapEmpty!59391 () Bool)

(declare-fun mapDefault!59391 () ValueCell!18308)

