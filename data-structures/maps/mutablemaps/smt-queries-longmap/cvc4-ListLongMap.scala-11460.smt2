; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133594 () Bool)

(assert start!133594)

(declare-fun b_free!31979 () Bool)

(declare-fun b_next!31979 () Bool)

(assert (=> start!133594 (= b_free!31979 (not b_next!31979))))

(declare-fun tp!113061 () Bool)

(declare-fun b_and!51479 () Bool)

(assert (=> start!133594 (= tp!113061 b_and!51479)))

(declare-fun res!1067659 () Bool)

(declare-fun e!870122 () Bool)

(assert (=> start!133594 (=> (not res!1067659) (not e!870122))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133594 (= res!1067659 (validMask!0 mask!947))))

(assert (=> start!133594 e!870122))

(assert (=> start!133594 tp!113061))

(declare-fun tp_is_empty!38645 () Bool)

(assert (=> start!133594 tp_is_empty!38645))

(assert (=> start!133594 true))

(declare-datatypes ((array!103961 0))(
  ( (array!103962 (arr!50168 (Array (_ BitVec 32) (_ BitVec 64))) (size!50719 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103961)

(declare-fun array_inv!38925 (array!103961) Bool)

(assert (=> start!133594 (array_inv!38925 _keys!637)))

(declare-datatypes ((V!59733 0))(
  ( (V!59734 (val!19406 Int)) )
))
(declare-datatypes ((ValueCell!18292 0))(
  ( (ValueCellFull!18292 (v!22155 V!59733)) (EmptyCell!18292) )
))
(declare-datatypes ((array!103963 0))(
  ( (array!103964 (arr!50169 (Array (_ BitVec 32) ValueCell!18292)) (size!50720 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103963)

(declare-fun e!870119 () Bool)

(declare-fun array_inv!38926 (array!103963) Bool)

(assert (=> start!133594 (and (array_inv!38926 _values!487) e!870119)))

(declare-fun b!1561344 () Bool)

(declare-fun res!1067660 () Bool)

(assert (=> b!1561344 (=> (not res!1067660) (not e!870122))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103961 (_ BitVec 32)) Bool)

(assert (=> b!1561344 (= res!1067660 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1561345 () Bool)

(declare-fun res!1067655 () Bool)

(assert (=> b!1561345 (=> (not res!1067655) (not e!870122))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1561345 (= res!1067655 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50719 _keys!637)) (bvslt from!782 (size!50719 _keys!637))))))

(declare-fun mapNonEmpty!59343 () Bool)

(declare-fun mapRes!59343 () Bool)

(declare-fun tp!113062 () Bool)

(declare-fun e!870120 () Bool)

(assert (=> mapNonEmpty!59343 (= mapRes!59343 (and tp!113062 e!870120))))

(declare-fun mapKey!59343 () (_ BitVec 32))

(declare-fun mapValue!59343 () ValueCell!18292)

(declare-fun mapRest!59343 () (Array (_ BitVec 32) ValueCell!18292))

(assert (=> mapNonEmpty!59343 (= (arr!50169 _values!487) (store mapRest!59343 mapKey!59343 mapValue!59343))))

(declare-fun b!1561346 () Bool)

(assert (=> b!1561346 (= e!870122 (not true))))

(declare-datatypes ((tuple2!25214 0))(
  ( (tuple2!25215 (_1!12617 (_ BitVec 64)) (_2!12617 V!59733)) )
))
(declare-datatypes ((List!36591 0))(
  ( (Nil!36588) (Cons!36587 (h!38034 tuple2!25214) (t!51367 List!36591)) )
))
(declare-datatypes ((ListLongMap!22661 0))(
  ( (ListLongMap!22662 (toList!11346 List!36591)) )
))
(declare-fun lt!671144 () ListLongMap!22661)

(declare-fun lt!671145 () V!59733)

(declare-fun contains!10266 (ListLongMap!22661 (_ BitVec 64)) Bool)

(declare-fun +!5001 (ListLongMap!22661 tuple2!25214) ListLongMap!22661)

(assert (=> b!1561346 (not (contains!10266 (+!5001 lt!671144 (tuple2!25215 (select (arr!50168 _keys!637) from!782) lt!671145)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!51866 0))(
  ( (Unit!51867) )
))
(declare-fun lt!671143 () Unit!51866)

(declare-fun addStillNotContains!537 (ListLongMap!22661 (_ BitVec 64) V!59733 (_ BitVec 64)) Unit!51866)

(assert (=> b!1561346 (= lt!671143 (addStillNotContains!537 lt!671144 (select (arr!50168 _keys!637) from!782) lt!671145 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26233 (ValueCell!18292 V!59733) V!59733)

(declare-fun dynLambda!3890 (Int (_ BitVec 64)) V!59733)

(assert (=> b!1561346 (= lt!671145 (get!26233 (select (arr!50169 _values!487) from!782) (dynLambda!3890 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59733)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59733)

(declare-fun getCurrentListMapNoExtraKeys!6707 (array!103961 array!103963 (_ BitVec 32) (_ BitVec 32) V!59733 V!59733 (_ BitVec 32) Int) ListLongMap!22661)

(assert (=> b!1561346 (= lt!671144 (getCurrentListMapNoExtraKeys!6707 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1561347 () Bool)

(declare-fun e!870121 () Bool)

(assert (=> b!1561347 (= e!870121 tp_is_empty!38645)))

(declare-fun b!1561348 () Bool)

(assert (=> b!1561348 (= e!870120 tp_is_empty!38645)))

(declare-fun b!1561349 () Bool)

(assert (=> b!1561349 (= e!870119 (and e!870121 mapRes!59343))))

(declare-fun condMapEmpty!59343 () Bool)

(declare-fun mapDefault!59343 () ValueCell!18292)

