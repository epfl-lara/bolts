; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108544 () Bool)

(assert start!108544)

(declare-fun b_free!28055 () Bool)

(declare-fun b_next!28055 () Bool)

(assert (=> start!108544 (= b_free!28055 (not b_next!28055))))

(declare-fun tp!99276 () Bool)

(declare-fun b_and!46125 () Bool)

(assert (=> start!108544 (= tp!99276 b_and!46125)))

(declare-fun b!1280627 () Bool)

(declare-fun e!731755 () Bool)

(declare-fun tp_is_empty!33695 () Bool)

(assert (=> b!1280627 (= e!731755 tp_is_empty!33695)))

(declare-fun mapNonEmpty!52094 () Bool)

(declare-fun mapRes!52094 () Bool)

(declare-fun tp!99275 () Bool)

(declare-fun e!731752 () Bool)

(assert (=> mapNonEmpty!52094 (= mapRes!52094 (and tp!99275 e!731752))))

(declare-datatypes ((V!50029 0))(
  ( (V!50030 (val!16922 Int)) )
))
(declare-datatypes ((ValueCell!15949 0))(
  ( (ValueCellFull!15949 (v!19520 V!50029)) (EmptyCell!15949) )
))
(declare-fun mapValue!52094 () ValueCell!15949)

(declare-fun mapRest!52094 () (Array (_ BitVec 32) ValueCell!15949))

(declare-fun mapKey!52094 () (_ BitVec 32))

(declare-datatypes ((array!84419 0))(
  ( (array!84420 (arr!40709 (Array (_ BitVec 32) ValueCell!15949)) (size!41260 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84419)

(assert (=> mapNonEmpty!52094 (= (arr!40709 _values!1445) (store mapRest!52094 mapKey!52094 mapValue!52094))))

(declare-fun b!1280628 () Bool)

(declare-fun e!731754 () Bool)

(assert (=> b!1280628 (= e!731754 (not true))))

(declare-fun minValue!1387 () V!50029)

(declare-fun zeroValue!1387 () V!50029)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84421 0))(
  ( (array!84422 (arr!40710 (Array (_ BitVec 32) (_ BitVec 64))) (size!41261 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84421)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21808 0))(
  ( (tuple2!21809 (_1!10914 (_ BitVec 64)) (_2!10914 V!50029)) )
))
(declare-datatypes ((List!29018 0))(
  ( (Nil!29015) (Cons!29014 (h!30223 tuple2!21808) (t!42565 List!29018)) )
))
(declare-datatypes ((ListLongMap!19477 0))(
  ( (ListLongMap!19478 (toList!9754 List!29018)) )
))
(declare-fun contains!7807 (ListLongMap!19477 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4774 (array!84421 array!84419 (_ BitVec 32) (_ BitVec 32) V!50029 V!50029 (_ BitVec 32) Int) ListLongMap!19477)

(assert (=> b!1280628 (contains!7807 (getCurrentListMap!4774 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k!1205)))

(declare-datatypes ((Unit!42349 0))(
  ( (Unit!42350) )
))
(declare-fun lt!576091 () Unit!42349)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!7 (array!84421 array!84419 (_ BitVec 32) (_ BitVec 32) V!50029 V!50029 (_ BitVec 64) (_ BitVec 32) Int) Unit!42349)

(assert (=> b!1280628 (= lt!576091 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!7 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1280629 () Bool)

(declare-fun res!850755 () Bool)

(assert (=> b!1280629 (=> (not res!850755) (not e!731754))))

(assert (=> b!1280629 (= res!850755 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41261 _keys!1741)) (not (= (select (arr!40710 _keys!1741) from!2144) k!1205))))))

(declare-fun b!1280630 () Bool)

(declare-fun res!850760 () Bool)

(assert (=> b!1280630 (=> (not res!850760) (not e!731754))))

(assert (=> b!1280630 (= res!850760 (contains!7807 (getCurrentListMap!4774 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun res!850757 () Bool)

(assert (=> start!108544 (=> (not res!850757) (not e!731754))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108544 (= res!850757 (validMask!0 mask!2175))))

(assert (=> start!108544 e!731754))

(assert (=> start!108544 tp_is_empty!33695))

(assert (=> start!108544 true))

(declare-fun e!731753 () Bool)

(declare-fun array_inv!30881 (array!84419) Bool)

(assert (=> start!108544 (and (array_inv!30881 _values!1445) e!731753)))

(declare-fun array_inv!30882 (array!84421) Bool)

(assert (=> start!108544 (array_inv!30882 _keys!1741)))

(assert (=> start!108544 tp!99276))

(declare-fun b!1280631 () Bool)

(declare-fun res!850756 () Bool)

(assert (=> b!1280631 (=> (not res!850756) (not e!731754))))

(declare-datatypes ((List!29019 0))(
  ( (Nil!29016) (Cons!29015 (h!30224 (_ BitVec 64)) (t!42566 List!29019)) )
))
(declare-fun arrayNoDuplicates!0 (array!84421 (_ BitVec 32) List!29019) Bool)

(assert (=> b!1280631 (= res!850756 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29016))))

(declare-fun b!1280632 () Bool)

(declare-fun res!850754 () Bool)

(assert (=> b!1280632 (=> (not res!850754) (not e!731754))))

(assert (=> b!1280632 (= res!850754 (and (= (size!41260 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41261 _keys!1741) (size!41260 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1280633 () Bool)

(declare-fun res!850759 () Bool)

(assert (=> b!1280633 (=> (not res!850759) (not e!731754))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84421 (_ BitVec 32)) Bool)

(assert (=> b!1280633 (= res!850759 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1280634 () Bool)

(assert (=> b!1280634 (= e!731752 tp_is_empty!33695)))

(declare-fun b!1280635 () Bool)

(assert (=> b!1280635 (= e!731753 (and e!731755 mapRes!52094))))

(declare-fun condMapEmpty!52094 () Bool)

(declare-fun mapDefault!52094 () ValueCell!15949)

