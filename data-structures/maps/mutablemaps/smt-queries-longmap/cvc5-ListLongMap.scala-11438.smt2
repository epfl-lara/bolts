; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133458 () Bool)

(assert start!133458)

(declare-fun b!1559690 () Bool)

(declare-fun res!1066647 () Bool)

(declare-fun e!869101 () Bool)

(assert (=> b!1559690 (=> (not res!1066647) (not e!869101))))

(declare-datatypes ((array!103697 0))(
  ( (array!103698 (arr!50036 (Array (_ BitVec 32) (_ BitVec 64))) (size!50587 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103697)

(declare-datatypes ((List!36507 0))(
  ( (Nil!36504) (Cons!36503 (h!37950 (_ BitVec 64)) (t!51247 List!36507)) )
))
(declare-fun arrayNoDuplicates!0 (array!103697 (_ BitVec 32) List!36507) Bool)

(assert (=> b!1559690 (= res!1066647 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36504))))

(declare-fun b!1559691 () Bool)

(declare-fun res!1066652 () Bool)

(assert (=> b!1559691 (=> (not res!1066652) (not e!869101))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1559691 (= res!1066652 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50587 _keys!637)) (bvsge from!782 (size!50587 _keys!637))))))

(declare-fun b!1559692 () Bool)

(declare-fun e!869099 () Bool)

(declare-fun tp_is_empty!38509 () Bool)

(assert (=> b!1559692 (= e!869099 tp_is_empty!38509)))

(declare-fun b!1559693 () Bool)

(assert (=> b!1559693 (= e!869101 false)))

(declare-fun lt!670842 () Bool)

(declare-datatypes ((V!59553 0))(
  ( (V!59554 (val!19338 Int)) )
))
(declare-datatypes ((tuple2!25150 0))(
  ( (tuple2!25151 (_1!12585 (_ BitVec 64)) (_2!12585 V!59553)) )
))
(declare-datatypes ((List!36508 0))(
  ( (Nil!36505) (Cons!36504 (h!37951 tuple2!25150) (t!51248 List!36508)) )
))
(declare-datatypes ((ListLongMap!22597 0))(
  ( (ListLongMap!22598 (toList!11314 List!36508)) )
))
(declare-fun contains!10234 (ListLongMap!22597 (_ BitVec 64)) Bool)

(assert (=> b!1559693 (= lt!670842 (contains!10234 (ListLongMap!22598 Nil!36505) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1559694 () Bool)

(declare-fun e!869102 () Bool)

(assert (=> b!1559694 (= e!869102 tp_is_empty!38509)))

(declare-fun b!1559695 () Bool)

(declare-fun res!1066651 () Bool)

(assert (=> b!1559695 (=> (not res!1066651) (not e!869101))))

(assert (=> b!1559695 (= res!1066651 (not (contains!10234 (ListLongMap!22598 Nil!36505) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!59139 () Bool)

(declare-fun mapRes!59139 () Bool)

(assert (=> mapIsEmpty!59139 mapRes!59139))

(declare-fun b!1559696 () Bool)

(declare-fun res!1066650 () Bool)

(assert (=> b!1559696 (=> (not res!1066650) (not e!869101))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103697 (_ BitVec 32)) Bool)

(assert (=> b!1559696 (= res!1066650 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun mapNonEmpty!59139 () Bool)

(declare-fun tp!112795 () Bool)

(assert (=> mapNonEmpty!59139 (= mapRes!59139 (and tp!112795 e!869102))))

(declare-fun mapKey!59139 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18224 0))(
  ( (ValueCellFull!18224 (v!22087 V!59553)) (EmptyCell!18224) )
))
(declare-fun mapValue!59139 () ValueCell!18224)

(declare-fun mapRest!59139 () (Array (_ BitVec 32) ValueCell!18224))

(declare-datatypes ((array!103699 0))(
  ( (array!103700 (arr!50037 (Array (_ BitVec 32) ValueCell!18224)) (size!50588 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103699)

(assert (=> mapNonEmpty!59139 (= (arr!50037 _values!487) (store mapRest!59139 mapKey!59139 mapValue!59139))))

(declare-fun b!1559698 () Bool)

(declare-fun e!869100 () Bool)

(assert (=> b!1559698 (= e!869100 (and e!869099 mapRes!59139))))

(declare-fun condMapEmpty!59139 () Bool)

(declare-fun mapDefault!59139 () ValueCell!18224)

