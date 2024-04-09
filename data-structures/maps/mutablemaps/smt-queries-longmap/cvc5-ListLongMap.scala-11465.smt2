; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133620 () Bool)

(assert start!133620)

(declare-fun b_free!32005 () Bool)

(declare-fun b_next!32005 () Bool)

(assert (=> start!133620 (= b_free!32005 (not b_next!32005))))

(declare-fun tp!113140 () Bool)

(declare-fun b_and!51531 () Bool)

(assert (=> start!133620 (= tp!113140 b_and!51531)))

(declare-fun b!1561730 () Bool)

(declare-fun e!870326 () Bool)

(declare-fun tp_is_empty!38671 () Bool)

(assert (=> b!1561730 (= e!870326 tp_is_empty!38671)))

(declare-fun mapNonEmpty!59382 () Bool)

(declare-fun mapRes!59382 () Bool)

(declare-fun tp!113139 () Bool)

(assert (=> mapNonEmpty!59382 (= mapRes!59382 (and tp!113139 e!870326))))

(declare-fun mapKey!59382 () (_ BitVec 32))

(declare-datatypes ((V!59769 0))(
  ( (V!59770 (val!19419 Int)) )
))
(declare-datatypes ((ValueCell!18305 0))(
  ( (ValueCellFull!18305 (v!22168 V!59769)) (EmptyCell!18305) )
))
(declare-datatypes ((array!104013 0))(
  ( (array!104014 (arr!50194 (Array (_ BitVec 32) ValueCell!18305)) (size!50745 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104013)

(declare-fun mapRest!59382 () (Array (_ BitVec 32) ValueCell!18305))

(declare-fun mapValue!59382 () ValueCell!18305)

(assert (=> mapNonEmpty!59382 (= (arr!50194 _values!487) (store mapRest!59382 mapKey!59382 mapValue!59382))))

(declare-fun b!1561731 () Bool)

(declare-fun e!870325 () Bool)

(assert (=> b!1561731 (= e!870325 (not true))))

(declare-fun lt!671286 () Bool)

(declare-datatypes ((tuple2!25238 0))(
  ( (tuple2!25239 (_1!12629 (_ BitVec 64)) (_2!12629 V!59769)) )
))
(declare-datatypes ((List!36615 0))(
  ( (Nil!36612) (Cons!36611 (h!38058 tuple2!25238) (t!51417 List!36615)) )
))
(declare-datatypes ((ListLongMap!22685 0))(
  ( (ListLongMap!22686 (toList!11358 List!36615)) )
))
(declare-fun lt!671285 () ListLongMap!22685)

(declare-fun contains!10278 (ListLongMap!22685 (_ BitVec 64)) Bool)

(assert (=> b!1561731 (= lt!671286 (contains!10278 lt!671285 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1561731 (not (contains!10278 lt!671285 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!671284 () ListLongMap!22685)

(declare-fun lt!671282 () V!59769)

(declare-datatypes ((array!104015 0))(
  ( (array!104016 (arr!50195 (Array (_ BitVec 32) (_ BitVec 64))) (size!50746 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104015)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun +!5012 (ListLongMap!22685 tuple2!25238) ListLongMap!22685)

(assert (=> b!1561731 (= lt!671285 (+!5012 lt!671284 (tuple2!25239 (select (arr!50195 _keys!637) from!782) lt!671282)))))

(declare-datatypes ((Unit!51888 0))(
  ( (Unit!51889) )
))
(declare-fun lt!671283 () Unit!51888)

(declare-fun addStillNotContains!548 (ListLongMap!22685 (_ BitVec 64) V!59769 (_ BitVec 64)) Unit!51888)

(assert (=> b!1561731 (= lt!671283 (addStillNotContains!548 lt!671284 (select (arr!50195 _keys!637) from!782) lt!671282 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26254 (ValueCell!18305 V!59769) V!59769)

(declare-fun dynLambda!3901 (Int (_ BitVec 64)) V!59769)

(assert (=> b!1561731 (= lt!671282 (get!26254 (select (arr!50194 _values!487) from!782) (dynLambda!3901 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59769)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59769)

(declare-fun getCurrentListMapNoExtraKeys!6718 (array!104015 array!104013 (_ BitVec 32) (_ BitVec 32) V!59769 V!59769 (_ BitVec 32) Int) ListLongMap!22685)

(assert (=> b!1561731 (= lt!671284 (getCurrentListMapNoExtraKeys!6718 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1561732 () Bool)

(declare-fun res!1067903 () Bool)

(assert (=> b!1561732 (=> (not res!1067903) (not e!870325))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1561732 (= res!1067903 (validKeyInArray!0 (select (arr!50195 _keys!637) from!782)))))

(declare-fun b!1561733 () Bool)

(declare-fun e!870324 () Bool)

(declare-fun e!870322 () Bool)

(assert (=> b!1561733 (= e!870324 (and e!870322 mapRes!59382))))

(declare-fun condMapEmpty!59382 () Bool)

(declare-fun mapDefault!59382 () ValueCell!18305)

