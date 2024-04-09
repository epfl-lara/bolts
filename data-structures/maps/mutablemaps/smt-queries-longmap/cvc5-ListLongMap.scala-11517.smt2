; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134108 () Bool)

(assert start!134108)

(declare-fun b_free!32203 () Bool)

(declare-fun b_next!32203 () Bool)

(assert (=> start!134108 (= b_free!32203 (not b_next!32203))))

(declare-fun tp!113929 () Bool)

(declare-fun b_and!51857 () Bool)

(assert (=> start!134108 (= tp!113929 b_and!51857)))

(declare-fun mapNonEmpty!59874 () Bool)

(declare-fun mapRes!59874 () Bool)

(declare-fun tp!113928 () Bool)

(declare-fun e!873432 () Bool)

(assert (=> mapNonEmpty!59874 (= mapRes!59874 (and tp!113928 e!873432))))

(declare-fun mapKey!59874 () (_ BitVec 32))

(declare-datatypes ((V!60185 0))(
  ( (V!60186 (val!19575 Int)) )
))
(declare-datatypes ((ValueCell!18461 0))(
  ( (ValueCellFull!18461 (v!22331 V!60185)) (EmptyCell!18461) )
))
(declare-fun mapValue!59874 () ValueCell!18461)

(declare-datatypes ((array!104629 0))(
  ( (array!104630 (arr!50495 (Array (_ BitVec 32) ValueCell!18461)) (size!51046 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104629)

(declare-fun mapRest!59874 () (Array (_ BitVec 32) ValueCell!18461))

(assert (=> mapNonEmpty!59874 (= (arr!50495 _values!487) (store mapRest!59874 mapKey!59874 mapValue!59874))))

(declare-fun b!1566876 () Bool)

(declare-fun tp_is_empty!38983 () Bool)

(assert (=> b!1566876 (= e!873432 tp_is_empty!38983)))

(declare-fun b!1566877 () Bool)

(declare-fun res!1070991 () Bool)

(declare-fun e!873429 () Bool)

(assert (=> b!1566877 (=> (not res!1070991) (not e!873429))))

(declare-datatypes ((array!104631 0))(
  ( (array!104632 (arr!50496 (Array (_ BitVec 32) (_ BitVec 64))) (size!51047 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104631)

(declare-datatypes ((List!36806 0))(
  ( (Nil!36803) (Cons!36802 (h!38250 (_ BitVec 64)) (t!51717 List!36806)) )
))
(declare-fun arrayNoDuplicates!0 (array!104631 (_ BitVec 32) List!36806) Bool)

(assert (=> b!1566877 (= res!1070991 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36803))))

(declare-fun res!1070993 () Bool)

(assert (=> start!134108 (=> (not res!1070993) (not e!873429))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134108 (= res!1070993 (validMask!0 mask!947))))

(assert (=> start!134108 e!873429))

(assert (=> start!134108 tp!113929))

(assert (=> start!134108 tp_is_empty!38983))

(assert (=> start!134108 true))

(declare-fun array_inv!39151 (array!104631) Bool)

(assert (=> start!134108 (array_inv!39151 _keys!637)))

(declare-fun e!873430 () Bool)

(declare-fun array_inv!39152 (array!104629) Bool)

(assert (=> start!134108 (and (array_inv!39152 _values!487) e!873430)))

(declare-fun b!1566878 () Bool)

(declare-fun e!873433 () Bool)

(assert (=> b!1566878 (= e!873429 e!873433)))

(declare-fun res!1070994 () Bool)

(assert (=> b!1566878 (=> (not res!1070994) (not e!873433))))

(declare-datatypes ((tuple2!25420 0))(
  ( (tuple2!25421 (_1!12720 (_ BitVec 64)) (_2!12720 V!60185)) )
))
(declare-datatypes ((List!36807 0))(
  ( (Nil!36804) (Cons!36803 (h!38251 tuple2!25420) (t!51718 List!36807)) )
))
(declare-datatypes ((ListLongMap!22867 0))(
  ( (ListLongMap!22868 (toList!11449 List!36807)) )
))
(declare-fun lt!672766 () ListLongMap!22867)

(declare-fun contains!10373 (ListLongMap!22867 (_ BitVec 64)) Bool)

(assert (=> b!1566878 (= res!1070994 (not (contains!10373 lt!672766 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!60185)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!60185)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6788 (array!104631 array!104629 (_ BitVec 32) (_ BitVec 32) V!60185 V!60185 (_ BitVec 32) Int) ListLongMap!22867)

(assert (=> b!1566878 (= lt!672766 (getCurrentListMapNoExtraKeys!6788 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1566879 () Bool)

(assert (=> b!1566879 (= e!873433 false)))

(declare-fun lt!672767 () Bool)

(assert (=> b!1566879 (= lt!672767 (contains!10373 lt!672766 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!59874 () Bool)

(assert (=> mapIsEmpty!59874 mapRes!59874))

(declare-fun b!1566880 () Bool)

(declare-fun res!1070989 () Bool)

(assert (=> b!1566880 (=> (not res!1070989) (not e!873429))))

(assert (=> b!1566880 (= res!1070989 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!51047 _keys!637)) (bvslt from!782 (size!51047 _keys!637))))))

(declare-fun b!1566881 () Bool)

(declare-fun e!873431 () Bool)

(assert (=> b!1566881 (= e!873430 (and e!873431 mapRes!59874))))

(declare-fun condMapEmpty!59874 () Bool)

(declare-fun mapDefault!59874 () ValueCell!18461)

