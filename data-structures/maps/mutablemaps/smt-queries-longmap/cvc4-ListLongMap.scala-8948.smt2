; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108454 () Bool)

(assert start!108454)

(declare-fun b_free!27965 () Bool)

(declare-fun b_next!27965 () Bool)

(assert (=> start!108454 (= b_free!27965 (not b_next!27965))))

(declare-fun tp!99006 () Bool)

(declare-fun b_and!46035 () Bool)

(assert (=> start!108454 (= tp!99006 b_and!46035)))

(declare-fun b!1279486 () Bool)

(declare-fun e!731078 () Bool)

(declare-fun tp_is_empty!33605 () Bool)

(assert (=> b!1279486 (= e!731078 tp_is_empty!33605)))

(declare-fun mapIsEmpty!51959 () Bool)

(declare-fun mapRes!51959 () Bool)

(assert (=> mapIsEmpty!51959 mapRes!51959))

(declare-fun b!1279487 () Bool)

(declare-fun res!850020 () Bool)

(declare-fun e!731079 () Bool)

(assert (=> b!1279487 (=> (not res!850020) (not e!731079))))

(declare-datatypes ((array!84245 0))(
  ( (array!84246 (arr!40622 (Array (_ BitVec 32) (_ BitVec 64))) (size!41173 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84245)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84245 (_ BitVec 32)) Bool)

(assert (=> b!1279487 (= res!850020 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!51959 () Bool)

(declare-fun tp!99005 () Bool)

(assert (=> mapNonEmpty!51959 (= mapRes!51959 (and tp!99005 e!731078))))

(declare-datatypes ((V!49909 0))(
  ( (V!49910 (val!16877 Int)) )
))
(declare-datatypes ((ValueCell!15904 0))(
  ( (ValueCellFull!15904 (v!19475 V!49909)) (EmptyCell!15904) )
))
(declare-fun mapValue!51959 () ValueCell!15904)

(declare-fun mapKey!51959 () (_ BitVec 32))

(declare-datatypes ((array!84247 0))(
  ( (array!84248 (arr!40623 (Array (_ BitVec 32) ValueCell!15904)) (size!41174 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84247)

(declare-fun mapRest!51959 () (Array (_ BitVec 32) ValueCell!15904))

(assert (=> mapNonEmpty!51959 (= (arr!40623 _values!1445) (store mapRest!51959 mapKey!51959 mapValue!51959))))

(declare-fun b!1279488 () Bool)

(declare-fun res!850019 () Bool)

(assert (=> b!1279488 (=> (not res!850019) (not e!731079))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1279488 (= res!850019 (and (= (size!41174 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41173 _keys!1741) (size!41174 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1279489 () Bool)

(declare-fun e!731080 () Bool)

(assert (=> b!1279489 (= e!731080 tp_is_empty!33605)))

(declare-fun b!1279491 () Bool)

(declare-fun res!850022 () Bool)

(assert (=> b!1279491 (=> (not res!850022) (not e!731079))))

(declare-datatypes ((List!28954 0))(
  ( (Nil!28951) (Cons!28950 (h!30159 (_ BitVec 64)) (t!42501 List!28954)) )
))
(declare-fun arrayNoDuplicates!0 (array!84245 (_ BitVec 32) List!28954) Bool)

(assert (=> b!1279491 (= res!850022 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28951))))

(declare-fun res!850018 () Bool)

(assert (=> start!108454 (=> (not res!850018) (not e!731079))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108454 (= res!850018 (validMask!0 mask!2175))))

(assert (=> start!108454 e!731079))

(assert (=> start!108454 tp_is_empty!33605))

(assert (=> start!108454 true))

(declare-fun e!731076 () Bool)

(declare-fun array_inv!30817 (array!84247) Bool)

(assert (=> start!108454 (and (array_inv!30817 _values!1445) e!731076)))

(declare-fun array_inv!30818 (array!84245) Bool)

(assert (=> start!108454 (array_inv!30818 _keys!1741)))

(assert (=> start!108454 tp!99006))

(declare-fun b!1279490 () Bool)

(assert (=> b!1279490 (= e!731076 (and e!731080 mapRes!51959))))

(declare-fun condMapEmpty!51959 () Bool)

(declare-fun mapDefault!51959 () ValueCell!15904)

