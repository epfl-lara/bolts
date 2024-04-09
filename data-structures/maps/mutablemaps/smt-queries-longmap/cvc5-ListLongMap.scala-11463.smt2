; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133608 () Bool)

(assert start!133608)

(declare-fun b_free!31993 () Bool)

(declare-fun b_next!31993 () Bool)

(assert (=> start!133608 (= b_free!31993 (not b_next!31993))))

(declare-fun tp!113104 () Bool)

(declare-fun b_and!51507 () Bool)

(assert (=> start!133608 (= tp!113104 b_and!51507)))

(declare-fun b!1561547 () Bool)

(declare-fun e!870227 () Bool)

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1561547 (= e!870227 (not (bvsge (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!59753 0))(
  ( (V!59754 (val!19413 Int)) )
))
(declare-datatypes ((tuple2!25226 0))(
  ( (tuple2!25227 (_1!12623 (_ BitVec 64)) (_2!12623 V!59753)) )
))
(declare-datatypes ((List!36603 0))(
  ( (Nil!36600) (Cons!36599 (h!38046 tuple2!25226) (t!51393 List!36603)) )
))
(declare-datatypes ((ListLongMap!22673 0))(
  ( (ListLongMap!22674 (toList!11352 List!36603)) )
))
(declare-fun lt!671208 () ListLongMap!22673)

(declare-datatypes ((array!103989 0))(
  ( (array!103990 (arr!50182 (Array (_ BitVec 32) (_ BitVec 64))) (size!50733 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103989)

(declare-fun lt!671207 () V!59753)

(declare-fun contains!10272 (ListLongMap!22673 (_ BitVec 64)) Bool)

(declare-fun +!5007 (ListLongMap!22673 tuple2!25226) ListLongMap!22673)

(assert (=> b!1561547 (not (contains!10272 (+!5007 lt!671208 (tuple2!25227 (select (arr!50182 _keys!637) from!782) lt!671207)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!51878 0))(
  ( (Unit!51879) )
))
(declare-fun lt!671206 () Unit!51878)

(declare-fun addStillNotContains!543 (ListLongMap!22673 (_ BitVec 64) V!59753 (_ BitVec 64)) Unit!51878)

(assert (=> b!1561547 (= lt!671206 (addStillNotContains!543 lt!671208 (select (arr!50182 _keys!637) from!782) lt!671207 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-datatypes ((ValueCell!18299 0))(
  ( (ValueCellFull!18299 (v!22162 V!59753)) (EmptyCell!18299) )
))
(declare-datatypes ((array!103991 0))(
  ( (array!103992 (arr!50183 (Array (_ BitVec 32) ValueCell!18299)) (size!50734 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103991)

(declare-fun get!26245 (ValueCell!18299 V!59753) V!59753)

(declare-fun dynLambda!3896 (Int (_ BitVec 64)) V!59753)

(assert (=> b!1561547 (= lt!671207 (get!26245 (select (arr!50183 _values!487) from!782) (dynLambda!3896 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59753)

(declare-fun zeroValue!453 () V!59753)

(declare-fun getCurrentListMapNoExtraKeys!6713 (array!103989 array!103991 (_ BitVec 32) (_ BitVec 32) V!59753 V!59753 (_ BitVec 32) Int) ListLongMap!22673)

(assert (=> b!1561547 (= lt!671208 (getCurrentListMapNoExtraKeys!6713 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1561548 () Bool)

(declare-fun res!1067782 () Bool)

(assert (=> b!1561548 (=> (not res!1067782) (not e!870227))))

(declare-datatypes ((List!36604 0))(
  ( (Nil!36601) (Cons!36600 (h!38047 (_ BitVec 64)) (t!51394 List!36604)) )
))
(declare-fun arrayNoDuplicates!0 (array!103989 (_ BitVec 32) List!36604) Bool)

(assert (=> b!1561548 (= res!1067782 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36601))))

(declare-fun mapNonEmpty!59364 () Bool)

(declare-fun mapRes!59364 () Bool)

(declare-fun tp!113103 () Bool)

(declare-fun e!870223 () Bool)

(assert (=> mapNonEmpty!59364 (= mapRes!59364 (and tp!113103 e!870223))))

(declare-fun mapRest!59364 () (Array (_ BitVec 32) ValueCell!18299))

(declare-fun mapKey!59364 () (_ BitVec 32))

(declare-fun mapValue!59364 () ValueCell!18299)

(assert (=> mapNonEmpty!59364 (= (arr!50183 _values!487) (store mapRest!59364 mapKey!59364 mapValue!59364))))

(declare-fun b!1561549 () Bool)

(declare-fun e!870225 () Bool)

(declare-fun e!870224 () Bool)

(assert (=> b!1561549 (= e!870225 (and e!870224 mapRes!59364))))

(declare-fun condMapEmpty!59364 () Bool)

(declare-fun mapDefault!59364 () ValueCell!18299)

