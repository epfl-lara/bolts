; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133638 () Bool)

(assert start!133638)

(declare-fun b_free!32023 () Bool)

(declare-fun b_next!32023 () Bool)

(assert (=> start!133638 (= b_free!32023 (not b_next!32023))))

(declare-fun tp!113194 () Bool)

(declare-fun b_and!51567 () Bool)

(assert (=> start!133638 (= tp!113194 b_and!51567)))

(declare-fun b!1561991 () Bool)

(declare-fun res!1068060 () Bool)

(declare-fun e!870457 () Bool)

(assert (=> b!1561991 (=> (not res!1068060) (not e!870457))))

(declare-datatypes ((array!104047 0))(
  ( (array!104048 (arr!50211 (Array (_ BitVec 32) (_ BitVec 64))) (size!50762 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104047)

(declare-datatypes ((List!36626 0))(
  ( (Nil!36623) (Cons!36622 (h!38069 (_ BitVec 64)) (t!51446 List!36626)) )
))
(declare-fun arrayNoDuplicates!0 (array!104047 (_ BitVec 32) List!36626) Bool)

(assert (=> b!1561991 (= res!1068060 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36623))))

(declare-fun b!1561992 () Bool)

(declare-fun e!870461 () Bool)

(declare-fun tp_is_empty!38689 () Bool)

(assert (=> b!1561992 (= e!870461 tp_is_empty!38689)))

(declare-fun b!1561993 () Bool)

(declare-fun res!1068064 () Bool)

(assert (=> b!1561993 (=> (not res!1068064) (not e!870457))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1561993 (= res!1068064 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50762 _keys!637)) (bvslt from!782 (size!50762 _keys!637))))))

(declare-fun b!1561994 () Bool)

(declare-fun e!870460 () Bool)

(assert (=> b!1561994 (= e!870460 tp_is_empty!38689)))

(declare-fun b!1561995 () Bool)

(assert (=> b!1561995 (= e!870457 (not true))))

(declare-fun lt!671418 () Bool)

(declare-datatypes ((V!59793 0))(
  ( (V!59794 (val!19428 Int)) )
))
(declare-datatypes ((tuple2!25250 0))(
  ( (tuple2!25251 (_1!12635 (_ BitVec 64)) (_2!12635 V!59793)) )
))
(declare-datatypes ((List!36627 0))(
  ( (Nil!36624) (Cons!36623 (h!38070 tuple2!25250) (t!51447 List!36627)) )
))
(declare-datatypes ((ListLongMap!22697 0))(
  ( (ListLongMap!22698 (toList!11364 List!36627)) )
))
(declare-fun lt!671421 () ListLongMap!22697)

(declare-fun contains!10284 (ListLongMap!22697 (_ BitVec 64)) Bool)

(assert (=> b!1561995 (= lt!671418 (contains!10284 lt!671421 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1561995 (not (contains!10284 lt!671421 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!671417 () ListLongMap!22697)

(declare-fun lt!671420 () V!59793)

(declare-fun +!5018 (ListLongMap!22697 tuple2!25250) ListLongMap!22697)

(assert (=> b!1561995 (= lt!671421 (+!5018 lt!671417 (tuple2!25251 (select (arr!50211 _keys!637) from!782) lt!671420)))))

(declare-datatypes ((Unit!51900 0))(
  ( (Unit!51901) )
))
(declare-fun lt!671419 () Unit!51900)

(declare-fun addStillNotContains!554 (ListLongMap!22697 (_ BitVec 64) V!59793 (_ BitVec 64)) Unit!51900)

(assert (=> b!1561995 (= lt!671419 (addStillNotContains!554 lt!671417 (select (arr!50211 _keys!637) from!782) lt!671420 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-datatypes ((ValueCell!18314 0))(
  ( (ValueCellFull!18314 (v!22177 V!59793)) (EmptyCell!18314) )
))
(declare-datatypes ((array!104049 0))(
  ( (array!104050 (arr!50212 (Array (_ BitVec 32) ValueCell!18314)) (size!50763 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104049)

(declare-fun get!26266 (ValueCell!18314 V!59793) V!59793)

(declare-fun dynLambda!3907 (Int (_ BitVec 64)) V!59793)

(assert (=> b!1561995 (= lt!671420 (get!26266 (select (arr!50212 _values!487) from!782) (dynLambda!3907 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59793)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59793)

(declare-fun getCurrentListMapNoExtraKeys!6724 (array!104047 array!104049 (_ BitVec 32) (_ BitVec 32) V!59793 V!59793 (_ BitVec 32) Int) ListLongMap!22697)

(assert (=> b!1561995 (= lt!671417 (getCurrentListMapNoExtraKeys!6724 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1561996 () Bool)

(declare-fun res!1068062 () Bool)

(assert (=> b!1561996 (=> (not res!1068062) (not e!870457))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1561996 (= res!1068062 (validKeyInArray!0 (select (arr!50211 _keys!637) from!782)))))

(declare-fun b!1561997 () Bool)

(declare-fun e!870458 () Bool)

(declare-fun mapRes!59409 () Bool)

(assert (=> b!1561997 (= e!870458 (and e!870461 mapRes!59409))))

(declare-fun condMapEmpty!59409 () Bool)

(declare-fun mapDefault!59409 () ValueCell!18314)

