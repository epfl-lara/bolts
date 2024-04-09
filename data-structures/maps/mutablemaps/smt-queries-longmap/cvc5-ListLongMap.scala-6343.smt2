; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81784 () Bool)

(assert start!81784)

(declare-fun b!953595 () Bool)

(declare-fun res!638731 () Bool)

(declare-fun e!537217 () Bool)

(assert (=> b!953595 (=> (not res!638731) (not e!537217))))

(declare-datatypes ((array!57789 0))(
  ( (array!57790 (arr!27774 (Array (_ BitVec 32) (_ BitVec 64))) (size!28254 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57789)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57789 (_ BitVec 32)) Bool)

(assert (=> b!953595 (= res!638731 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun mapNonEmpty!33199 () Bool)

(declare-fun mapRes!33199 () Bool)

(declare-fun tp!63589 () Bool)

(declare-fun e!537214 () Bool)

(assert (=> mapNonEmpty!33199 (= mapRes!33199 (and tp!63589 e!537214))))

(declare-datatypes ((V!32761 0))(
  ( (V!32762 (val!10467 Int)) )
))
(declare-datatypes ((ValueCell!9935 0))(
  ( (ValueCellFull!9935 (v!13021 V!32761)) (EmptyCell!9935) )
))
(declare-fun mapValue!33199 () ValueCell!9935)

(declare-fun mapRest!33199 () (Array (_ BitVec 32) ValueCell!9935))

(declare-datatypes ((array!57791 0))(
  ( (array!57792 (arr!27775 (Array (_ BitVec 32) ValueCell!9935)) (size!28255 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57791)

(declare-fun mapKey!33199 () (_ BitVec 32))

(assert (=> mapNonEmpty!33199 (= (arr!27775 _values!1197) (store mapRest!33199 mapKey!33199 mapValue!33199))))

(declare-fun b!953597 () Bool)

(declare-fun res!638732 () Bool)

(assert (=> b!953597 (=> (not res!638732) (not e!537217))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!953597 (= res!638732 (and (= (size!28255 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28254 _keys!1441) (size!28255 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!953598 () Bool)

(declare-fun e!537215 () Bool)

(declare-fun tp_is_empty!20833 () Bool)

(assert (=> b!953598 (= e!537215 tp_is_empty!20833)))

(declare-fun mapIsEmpty!33199 () Bool)

(assert (=> mapIsEmpty!33199 mapRes!33199))

(declare-fun res!638730 () Bool)

(assert (=> start!81784 (=> (not res!638730) (not e!537217))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81784 (= res!638730 (validMask!0 mask!1823))))

(assert (=> start!81784 e!537217))

(assert (=> start!81784 true))

(declare-fun e!537213 () Bool)

(declare-fun array_inv!21503 (array!57791) Bool)

(assert (=> start!81784 (and (array_inv!21503 _values!1197) e!537213)))

(declare-fun array_inv!21504 (array!57789) Bool)

(assert (=> start!81784 (array_inv!21504 _keys!1441)))

(declare-fun b!953596 () Bool)

(assert (=> b!953596 (= e!537217 (bvsgt #b00000000000000000000000000000000 (size!28254 _keys!1441)))))

(declare-fun b!953599 () Bool)

(assert (=> b!953599 (= e!537214 tp_is_empty!20833)))

(declare-fun b!953600 () Bool)

(assert (=> b!953600 (= e!537213 (and e!537215 mapRes!33199))))

(declare-fun condMapEmpty!33199 () Bool)

(declare-fun mapDefault!33199 () ValueCell!9935)

