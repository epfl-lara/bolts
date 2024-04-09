; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42604 () Bool)

(assert start!42604)

(declare-fun b_free!12031 () Bool)

(declare-fun b_next!12031 () Bool)

(assert (=> start!42604 (= b_free!12031 (not b_next!12031))))

(declare-fun tp!42133 () Bool)

(declare-fun b_and!20529 () Bool)

(assert (=> start!42604 (= tp!42133 b_and!20529)))

(declare-fun b!475019 () Bool)

(declare-fun e!278911 () Bool)

(declare-fun tp_is_empty!13459 () Bool)

(assert (=> b!475019 (= e!278911 tp_is_empty!13459)))

(declare-fun res!283759 () Bool)

(declare-fun e!278909 () Bool)

(assert (=> start!42604 (=> (not res!283759) (not e!278909))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42604 (= res!283759 (validMask!0 mask!1365))))

(assert (=> start!42604 e!278909))

(assert (=> start!42604 tp_is_empty!13459))

(assert (=> start!42604 tp!42133))

(assert (=> start!42604 true))

(declare-datatypes ((array!30627 0))(
  ( (array!30628 (arr!14728 (Array (_ BitVec 32) (_ BitVec 64))) (size!15080 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30627)

(declare-fun array_inv!10614 (array!30627) Bool)

(assert (=> start!42604 (array_inv!10614 _keys!1025)))

(declare-datatypes ((V!19051 0))(
  ( (V!19052 (val!6774 Int)) )
))
(declare-datatypes ((ValueCell!6386 0))(
  ( (ValueCellFull!6386 (v!9063 V!19051)) (EmptyCell!6386) )
))
(declare-datatypes ((array!30629 0))(
  ( (array!30630 (arr!14729 (Array (_ BitVec 32) ValueCell!6386)) (size!15081 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30629)

(declare-fun e!278910 () Bool)

(declare-fun array_inv!10615 (array!30629) Bool)

(assert (=> start!42604 (and (array_inv!10615 _values!833) e!278910)))

(declare-fun mapNonEmpty!21907 () Bool)

(declare-fun mapRes!21907 () Bool)

(declare-fun tp!42132 () Bool)

(assert (=> mapNonEmpty!21907 (= mapRes!21907 (and tp!42132 e!278911))))

(declare-fun mapValue!21907 () ValueCell!6386)

(declare-fun mapRest!21907 () (Array (_ BitVec 32) ValueCell!6386))

(declare-fun mapKey!21907 () (_ BitVec 32))

(assert (=> mapNonEmpty!21907 (= (arr!14729 _values!833) (store mapRest!21907 mapKey!21907 mapValue!21907))))

(declare-fun b!475020 () Bool)

(declare-fun res!283761 () Bool)

(assert (=> b!475020 (=> (not res!283761) (not e!278909))))

(declare-datatypes ((List!9041 0))(
  ( (Nil!9038) (Cons!9037 (h!9893 (_ BitVec 64)) (t!15023 List!9041)) )
))
(declare-fun arrayNoDuplicates!0 (array!30627 (_ BitVec 32) List!9041) Bool)

(assert (=> b!475020 (= res!283761 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9038))))

(declare-fun b!475021 () Bool)

(declare-fun e!278908 () Bool)

(assert (=> b!475021 (= e!278908 tp_is_empty!13459)))

(declare-fun b!475022 () Bool)

(assert (=> b!475022 (= e!278910 (and e!278908 mapRes!21907))))

(declare-fun condMapEmpty!21907 () Bool)

(declare-fun mapDefault!21907 () ValueCell!6386)

