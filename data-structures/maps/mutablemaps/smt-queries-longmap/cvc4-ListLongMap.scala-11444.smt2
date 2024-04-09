; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133498 () Bool)

(assert start!133498)

(declare-fun b!1560230 () Bool)

(declare-fun res!1067010 () Bool)

(declare-fun e!869399 () Bool)

(assert (=> b!1560230 (=> (not res!1067010) (not e!869399))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!103775 0))(
  ( (array!103776 (arr!50075 (Array (_ BitVec 32) (_ BitVec 64))) (size!50626 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103775)

(declare-datatypes ((V!59605 0))(
  ( (V!59606 (val!19358 Int)) )
))
(declare-datatypes ((ValueCell!18244 0))(
  ( (ValueCellFull!18244 (v!22107 V!59605)) (EmptyCell!18244) )
))
(declare-datatypes ((array!103777 0))(
  ( (array!103778 (arr!50076 (Array (_ BitVec 32) ValueCell!18244)) (size!50627 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103777)

(assert (=> b!1560230 (= res!1067010 (and (= (size!50627 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50626 _keys!637) (size!50627 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1560231 () Bool)

(declare-fun e!869398 () Bool)

(declare-fun tp_is_empty!38549 () Bool)

(assert (=> b!1560231 (= e!869398 tp_is_empty!38549)))

(declare-fun mapIsEmpty!59199 () Bool)

(declare-fun mapRes!59199 () Bool)

(assert (=> mapIsEmpty!59199 mapRes!59199))

(declare-fun b!1560232 () Bool)

(declare-fun res!1067012 () Bool)

(assert (=> b!1560232 (=> (not res!1067012) (not e!869399))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103775 (_ BitVec 32)) Bool)

(assert (=> b!1560232 (= res!1067012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1560233 () Bool)

(declare-fun res!1067011 () Bool)

(assert (=> b!1560233 (=> (not res!1067011) (not e!869399))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1560233 (= res!1067011 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50626 _keys!637)) (bvsge from!782 (size!50626 _keys!637))))))

(declare-fun res!1067009 () Bool)

(assert (=> start!133498 (=> (not res!1067009) (not e!869399))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133498 (= res!1067009 (validMask!0 mask!947))))

(assert (=> start!133498 e!869399))

(assert (=> start!133498 true))

(declare-fun array_inv!38847 (array!103775) Bool)

(assert (=> start!133498 (array_inv!38847 _keys!637)))

(declare-fun e!869402 () Bool)

(declare-fun array_inv!38848 (array!103777) Bool)

(assert (=> start!133498 (and (array_inv!38848 _values!487) e!869402)))

(declare-fun b!1560234 () Bool)

(declare-fun e!869400 () Bool)

(assert (=> b!1560234 (= e!869400 tp_is_empty!38549)))

(declare-fun mapNonEmpty!59199 () Bool)

(declare-fun tp!112855 () Bool)

(assert (=> mapNonEmpty!59199 (= mapRes!59199 (and tp!112855 e!869400))))

(declare-fun mapValue!59199 () ValueCell!18244)

(declare-fun mapRest!59199 () (Array (_ BitVec 32) ValueCell!18244))

(declare-fun mapKey!59199 () (_ BitVec 32))

(assert (=> mapNonEmpty!59199 (= (arr!50076 _values!487) (store mapRest!59199 mapKey!59199 mapValue!59199))))

(declare-fun b!1560235 () Bool)

(declare-fun res!1067008 () Bool)

(assert (=> b!1560235 (=> (not res!1067008) (not e!869399))))

(declare-datatypes ((tuple2!25182 0))(
  ( (tuple2!25183 (_1!12601 (_ BitVec 64)) (_2!12601 V!59605)) )
))
(declare-datatypes ((List!36539 0))(
  ( (Nil!36536) (Cons!36535 (h!37982 tuple2!25182) (t!51279 List!36539)) )
))
(declare-datatypes ((ListLongMap!22629 0))(
  ( (ListLongMap!22630 (toList!11330 List!36539)) )
))
(declare-fun contains!10250 (ListLongMap!22629 (_ BitVec 64)) Bool)

(assert (=> b!1560235 (= res!1067008 (not (contains!10250 (ListLongMap!22630 Nil!36536) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1560236 () Bool)

(declare-fun res!1067007 () Bool)

(assert (=> b!1560236 (=> (not res!1067007) (not e!869399))))

(declare-datatypes ((List!36540 0))(
  ( (Nil!36537) (Cons!36536 (h!37983 (_ BitVec 64)) (t!51280 List!36540)) )
))
(declare-fun arrayNoDuplicates!0 (array!103775 (_ BitVec 32) List!36540) Bool)

(assert (=> b!1560236 (= res!1067007 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36537))))

(declare-fun b!1560237 () Bool)

(assert (=> b!1560237 (= e!869402 (and e!869398 mapRes!59199))))

(declare-fun condMapEmpty!59199 () Bool)

(declare-fun mapDefault!59199 () ValueCell!18244)

