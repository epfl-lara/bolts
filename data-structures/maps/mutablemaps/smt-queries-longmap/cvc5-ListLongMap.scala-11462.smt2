; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133602 () Bool)

(assert start!133602)

(declare-fun b_free!31987 () Bool)

(declare-fun b_next!31987 () Bool)

(assert (=> start!133602 (= b_free!31987 (not b_next!31987))))

(declare-fun tp!113086 () Bool)

(declare-fun b_and!51495 () Bool)

(assert (=> start!133602 (= tp!113086 b_and!51495)))

(declare-fun b!1561460 () Bool)

(declare-fun res!1067732 () Bool)

(declare-fun e!870180 () Bool)

(assert (=> b!1561460 (=> (not res!1067732) (not e!870180))))

(declare-datatypes ((array!103977 0))(
  ( (array!103978 (arr!50176 (Array (_ BitVec 32) (_ BitVec 64))) (size!50727 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103977)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103977 (_ BitVec 32)) Bool)

(assert (=> b!1561460 (= res!1067732 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1561461 () Bool)

(declare-fun res!1067731 () Bool)

(assert (=> b!1561461 (=> (not res!1067731) (not e!870180))))

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1561461 (= res!1067731 (validKeyInArray!0 (select (arr!50176 _keys!637) from!782)))))

(declare-fun b!1561462 () Bool)

(declare-fun res!1067727 () Bool)

(assert (=> b!1561462 (=> (not res!1067727) (not e!870180))))

(assert (=> b!1561462 (= res!1067727 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50727 _keys!637)) (bvslt from!782 (size!50727 _keys!637))))))

(declare-fun b!1561463 () Bool)

(assert (=> b!1561463 (= e!870180 (not true))))

(declare-datatypes ((V!59745 0))(
  ( (V!59746 (val!19410 Int)) )
))
(declare-fun lt!671180 () V!59745)

(declare-datatypes ((tuple2!25222 0))(
  ( (tuple2!25223 (_1!12621 (_ BitVec 64)) (_2!12621 V!59745)) )
))
(declare-datatypes ((List!36598 0))(
  ( (Nil!36595) (Cons!36594 (h!38041 tuple2!25222) (t!51382 List!36598)) )
))
(declare-datatypes ((ListLongMap!22669 0))(
  ( (ListLongMap!22670 (toList!11350 List!36598)) )
))
(declare-fun lt!671179 () ListLongMap!22669)

(declare-fun contains!10270 (ListLongMap!22669 (_ BitVec 64)) Bool)

(declare-fun +!5005 (ListLongMap!22669 tuple2!25222) ListLongMap!22669)

(assert (=> b!1561463 (not (contains!10270 (+!5005 lt!671179 (tuple2!25223 (select (arr!50176 _keys!637) from!782) lt!671180)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!51874 0))(
  ( (Unit!51875) )
))
(declare-fun lt!671181 () Unit!51874)

(declare-fun addStillNotContains!541 (ListLongMap!22669 (_ BitVec 64) V!59745 (_ BitVec 64)) Unit!51874)

(assert (=> b!1561463 (= lt!671181 (addStillNotContains!541 lt!671179 (select (arr!50176 _keys!637) from!782) lt!671180 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-datatypes ((ValueCell!18296 0))(
  ( (ValueCellFull!18296 (v!22159 V!59745)) (EmptyCell!18296) )
))
(declare-datatypes ((array!103979 0))(
  ( (array!103980 (arr!50177 (Array (_ BitVec 32) ValueCell!18296)) (size!50728 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103979)

(declare-fun get!26241 (ValueCell!18296 V!59745) V!59745)

(declare-fun dynLambda!3894 (Int (_ BitVec 64)) V!59745)

(assert (=> b!1561463 (= lt!671180 (get!26241 (select (arr!50177 _values!487) from!782) (dynLambda!3894 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59745)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59745)

(declare-fun getCurrentListMapNoExtraKeys!6711 (array!103977 array!103979 (_ BitVec 32) (_ BitVec 32) V!59745 V!59745 (_ BitVec 32) Int) ListLongMap!22669)

(assert (=> b!1561463 (= lt!671179 (getCurrentListMapNoExtraKeys!6711 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1561464 () Bool)

(declare-fun res!1067730 () Bool)

(assert (=> b!1561464 (=> (not res!1067730) (not e!870180))))

(declare-datatypes ((List!36599 0))(
  ( (Nil!36596) (Cons!36595 (h!38042 (_ BitVec 64)) (t!51383 List!36599)) )
))
(declare-fun arrayNoDuplicates!0 (array!103977 (_ BitVec 32) List!36599) Bool)

(assert (=> b!1561464 (= res!1067730 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36596))))

(declare-fun b!1561465 () Bool)

(declare-fun e!870182 () Bool)

(declare-fun tp_is_empty!38653 () Bool)

(assert (=> b!1561465 (= e!870182 tp_is_empty!38653)))

(declare-fun b!1561466 () Bool)

(declare-fun e!870179 () Bool)

(declare-fun mapRes!59355 () Bool)

(assert (=> b!1561466 (= e!870179 (and e!870182 mapRes!59355))))

(declare-fun condMapEmpty!59355 () Bool)

(declare-fun mapDefault!59355 () ValueCell!18296)

