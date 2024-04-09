; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108796 () Bool)

(assert start!108796)

(declare-fun b_free!28273 () Bool)

(declare-fun b_next!28273 () Bool)

(assert (=> start!108796 (= b_free!28273 (not b_next!28273))))

(declare-fun tp!99936 () Bool)

(declare-fun b_and!46349 () Bool)

(assert (=> start!108796 (= tp!99936 b_and!46349)))

(declare-fun mapIsEmpty!52427 () Bool)

(declare-fun mapRes!52427 () Bool)

(assert (=> mapIsEmpty!52427 mapRes!52427))

(declare-fun b!1284210 () Bool)

(declare-fun res!853211 () Bool)

(declare-fun e!733582 () Bool)

(assert (=> b!1284210 (=> (not res!853211) (not e!733582))))

(declare-datatypes ((array!84841 0))(
  ( (array!84842 (arr!40918 (Array (_ BitVec 32) (_ BitVec 64))) (size!41469 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84841)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84841 (_ BitVec 32)) Bool)

(assert (=> b!1284210 (= res!853211 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun res!853208 () Bool)

(assert (=> start!108796 (=> (not res!853208) (not e!733582))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108796 (= res!853208 (validMask!0 mask!2175))))

(assert (=> start!108796 e!733582))

(declare-fun tp_is_empty!33913 () Bool)

(assert (=> start!108796 tp_is_empty!33913))

(assert (=> start!108796 true))

(declare-datatypes ((V!50321 0))(
  ( (V!50322 (val!17031 Int)) )
))
(declare-datatypes ((ValueCell!16058 0))(
  ( (ValueCellFull!16058 (v!19631 V!50321)) (EmptyCell!16058) )
))
(declare-datatypes ((array!84843 0))(
  ( (array!84844 (arr!40919 (Array (_ BitVec 32) ValueCell!16058)) (size!41470 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84843)

(declare-fun e!733583 () Bool)

(declare-fun array_inv!31015 (array!84843) Bool)

(assert (=> start!108796 (and (array_inv!31015 _values!1445) e!733583)))

(declare-fun array_inv!31016 (array!84841) Bool)

(assert (=> start!108796 (array_inv!31016 _keys!1741)))

(assert (=> start!108796 tp!99936))

(declare-fun b!1284211 () Bool)

(declare-fun e!733581 () Bool)

(assert (=> b!1284211 (= e!733581 tp_is_empty!33913)))

(declare-fun mapNonEmpty!52427 () Bool)

(declare-fun tp!99935 () Bool)

(assert (=> mapNonEmpty!52427 (= mapRes!52427 (and tp!99935 e!733581))))

(declare-fun mapRest!52427 () (Array (_ BitVec 32) ValueCell!16058))

(declare-fun mapValue!52427 () ValueCell!16058)

(declare-fun mapKey!52427 () (_ BitVec 32))

(assert (=> mapNonEmpty!52427 (= (arr!40919 _values!1445) (store mapRest!52427 mapKey!52427 mapValue!52427))))

(declare-fun b!1284212 () Bool)

(declare-fun res!853209 () Bool)

(assert (=> b!1284212 (=> (not res!853209) (not e!733582))))

(declare-datatypes ((List!29166 0))(
  ( (Nil!29163) (Cons!29162 (h!30371 (_ BitVec 64)) (t!42717 List!29166)) )
))
(declare-fun arrayNoDuplicates!0 (array!84841 (_ BitVec 32) List!29166) Bool)

(assert (=> b!1284212 (= res!853209 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29163))))

(declare-fun b!1284213 () Bool)

(declare-fun e!733584 () Bool)

(assert (=> b!1284213 (= e!733583 (and e!733584 mapRes!52427))))

(declare-fun condMapEmpty!52427 () Bool)

(declare-fun mapDefault!52427 () ValueCell!16058)

