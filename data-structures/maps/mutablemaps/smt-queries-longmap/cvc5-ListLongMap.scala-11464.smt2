; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133614 () Bool)

(assert start!133614)

(declare-fun b_free!31999 () Bool)

(declare-fun b_next!31999 () Bool)

(assert (=> start!133614 (= b_free!31999 (not b_next!31999))))

(declare-fun tp!113122 () Bool)

(declare-fun b_and!51519 () Bool)

(assert (=> start!133614 (= tp!113122 b_and!51519)))

(declare-fun b!1561636 () Bool)

(declare-fun e!870275 () Bool)

(declare-fun tp_is_empty!38665 () Bool)

(assert (=> b!1561636 (= e!870275 tp_is_empty!38665)))

(declare-fun b!1561637 () Bool)

(declare-fun res!1067839 () Bool)

(declare-fun e!870271 () Bool)

(assert (=> b!1561637 (=> (not res!1067839) (not e!870271))))

(declare-datatypes ((array!104001 0))(
  ( (array!104002 (arr!50188 (Array (_ BitVec 32) (_ BitVec 64))) (size!50739 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104001)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1561637 (= res!1067839 (validKeyInArray!0 (select (arr!50188 _keys!637) from!782)))))

(declare-fun b!1561638 () Bool)

(declare-fun res!1067842 () Bool)

(assert (=> b!1561638 (=> (not res!1067842) (not e!870271))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((V!59761 0))(
  ( (V!59762 (val!19416 Int)) )
))
(declare-datatypes ((ValueCell!18302 0))(
  ( (ValueCellFull!18302 (v!22165 V!59761)) (EmptyCell!18302) )
))
(declare-datatypes ((array!104003 0))(
  ( (array!104004 (arr!50189 (Array (_ BitVec 32) ValueCell!18302)) (size!50740 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104003)

(assert (=> b!1561638 (= res!1067842 (and (= (size!50740 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50739 _keys!637) (size!50740 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1561639 () Bool)

(declare-fun res!1067843 () Bool)

(assert (=> b!1561639 (=> (not res!1067843) (not e!870271))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104001 (_ BitVec 32)) Bool)

(assert (=> b!1561639 (= res!1067843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1561640 () Bool)

(declare-fun e!870273 () Bool)

(assert (=> b!1561640 (= e!870271 (not e!870273))))

(declare-fun res!1067838 () Bool)

(assert (=> b!1561640 (=> res!1067838 e!870273)))

(declare-datatypes ((tuple2!25232 0))(
  ( (tuple2!25233 (_1!12626 (_ BitVec 64)) (_2!12626 V!59761)) )
))
(declare-datatypes ((List!36609 0))(
  ( (Nil!36606) (Cons!36605 (h!38052 tuple2!25232) (t!51405 List!36609)) )
))
(declare-datatypes ((ListLongMap!22679 0))(
  ( (ListLongMap!22680 (toList!11355 List!36609)) )
))
(declare-fun lt!671237 () ListLongMap!22679)

(declare-fun contains!10275 (ListLongMap!22679 (_ BitVec 64)) Bool)

(assert (=> b!1561640 (= res!1067838 (contains!10275 lt!671237 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1561640 (not (contains!10275 lt!671237 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!671241 () V!59761)

(declare-fun lt!671239 () ListLongMap!22679)

(declare-fun +!5010 (ListLongMap!22679 tuple2!25232) ListLongMap!22679)

(assert (=> b!1561640 (= lt!671237 (+!5010 lt!671239 (tuple2!25233 (select (arr!50188 _keys!637) from!782) lt!671241)))))

(declare-datatypes ((Unit!51884 0))(
  ( (Unit!51885) )
))
(declare-fun lt!671238 () Unit!51884)

(declare-fun addStillNotContains!546 (ListLongMap!22679 (_ BitVec 64) V!59761 (_ BitVec 64)) Unit!51884)

(assert (=> b!1561640 (= lt!671238 (addStillNotContains!546 lt!671239 (select (arr!50188 _keys!637) from!782) lt!671241 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26250 (ValueCell!18302 V!59761) V!59761)

(declare-fun dynLambda!3899 (Int (_ BitVec 64)) V!59761)

(assert (=> b!1561640 (= lt!671241 (get!26250 (select (arr!50189 _values!487) from!782) (dynLambda!3899 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59761)

(declare-fun minValue!453 () V!59761)

(declare-fun getCurrentListMapNoExtraKeys!6716 (array!104001 array!104003 (_ BitVec 32) (_ BitVec 32) V!59761 V!59761 (_ BitVec 32) Int) ListLongMap!22679)

(assert (=> b!1561640 (= lt!671239 (getCurrentListMapNoExtraKeys!6716 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun res!1067837 () Bool)

(assert (=> start!133614 (=> (not res!1067837) (not e!870271))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133614 (= res!1067837 (validMask!0 mask!947))))

(assert (=> start!133614 e!870271))

(assert (=> start!133614 tp!113122))

(assert (=> start!133614 tp_is_empty!38665))

(assert (=> start!133614 true))

(declare-fun array_inv!38937 (array!104001) Bool)

(assert (=> start!133614 (array_inv!38937 _keys!637)))

(declare-fun e!870272 () Bool)

(declare-fun array_inv!38938 (array!104003) Bool)

(assert (=> start!133614 (and (array_inv!38938 _values!487) e!870272)))

(declare-fun b!1561641 () Bool)

(declare-fun res!1067841 () Bool)

(assert (=> b!1561641 (=> (not res!1067841) (not e!870271))))

(declare-datatypes ((List!36610 0))(
  ( (Nil!36607) (Cons!36606 (h!38053 (_ BitVec 64)) (t!51406 List!36610)) )
))
(declare-fun arrayNoDuplicates!0 (array!104001 (_ BitVec 32) List!36610) Bool)

(assert (=> b!1561641 (= res!1067841 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36607))))

(declare-fun mapNonEmpty!59373 () Bool)

(declare-fun mapRes!59373 () Bool)

(declare-fun tp!113121 () Bool)

(assert (=> mapNonEmpty!59373 (= mapRes!59373 (and tp!113121 e!870275))))

(declare-fun mapRest!59373 () (Array (_ BitVec 32) ValueCell!18302))

(declare-fun mapKey!59373 () (_ BitVec 32))

(declare-fun mapValue!59373 () ValueCell!18302)

(assert (=> mapNonEmpty!59373 (= (arr!50189 _values!487) (store mapRest!59373 mapKey!59373 mapValue!59373))))

(declare-fun b!1561642 () Bool)

(declare-fun e!870274 () Bool)

(assert (=> b!1561642 (= e!870272 (and e!870274 mapRes!59373))))

(declare-fun condMapEmpty!59373 () Bool)

(declare-fun mapDefault!59373 () ValueCell!18302)

