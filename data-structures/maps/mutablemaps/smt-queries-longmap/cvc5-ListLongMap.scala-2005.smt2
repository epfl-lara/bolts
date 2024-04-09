; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35018 () Bool)

(assert start!35018)

(declare-fun b_free!7699 () Bool)

(declare-fun b_next!7699 () Bool)

(assert (=> start!35018 (= b_free!7699 (not b_next!7699))))

(declare-fun tp!26675 () Bool)

(declare-fun b_and!14947 () Bool)

(assert (=> start!35018 (= tp!26675 b_and!14947)))

(declare-fun b!350574 () Bool)

(declare-fun res!194399 () Bool)

(declare-fun e!214734 () Bool)

(assert (=> b!350574 (=> (not res!194399) (not e!214734))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!350574 (= res!194399 (validKeyInArray!0 k!1348))))

(declare-fun b!350575 () Bool)

(declare-fun res!194402 () Bool)

(assert (=> b!350575 (=> (not res!194402) (not e!214734))))

(declare-datatypes ((array!18851 0))(
  ( (array!18852 (arr!8928 (Array (_ BitVec 32) (_ BitVec 64))) (size!9280 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18851)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18851 (_ BitVec 32)) Bool)

(assert (=> b!350575 (= res!194402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!12948 () Bool)

(declare-fun mapRes!12948 () Bool)

(declare-fun tp!26676 () Bool)

(declare-fun e!214737 () Bool)

(assert (=> mapNonEmpty!12948 (= mapRes!12948 (and tp!26676 e!214737))))

(declare-datatypes ((V!11179 0))(
  ( (V!11180 (val!3870 Int)) )
))
(declare-datatypes ((ValueCell!3482 0))(
  ( (ValueCellFull!3482 (v!6053 V!11179)) (EmptyCell!3482) )
))
(declare-fun mapValue!12948 () ValueCell!3482)

(declare-fun mapKey!12948 () (_ BitVec 32))

(declare-datatypes ((array!18853 0))(
  ( (array!18854 (arr!8929 (Array (_ BitVec 32) ValueCell!3482)) (size!9281 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18853)

(declare-fun mapRest!12948 () (Array (_ BitVec 32) ValueCell!3482))

(assert (=> mapNonEmpty!12948 (= (arr!8929 _values!1525) (store mapRest!12948 mapKey!12948 mapValue!12948))))

(declare-fun res!194396 () Bool)

(assert (=> start!35018 (=> (not res!194396) (not e!214734))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35018 (= res!194396 (validMask!0 mask!2385))))

(assert (=> start!35018 e!214734))

(assert (=> start!35018 true))

(declare-fun tp_is_empty!7651 () Bool)

(assert (=> start!35018 tp_is_empty!7651))

(assert (=> start!35018 tp!26675))

(declare-fun e!214733 () Bool)

(declare-fun array_inv!6580 (array!18853) Bool)

(assert (=> start!35018 (and (array_inv!6580 _values!1525) e!214733)))

(declare-fun array_inv!6581 (array!18851) Bool)

(assert (=> start!35018 (array_inv!6581 _keys!1895)))

(declare-fun b!350576 () Bool)

(declare-fun e!214735 () Bool)

(assert (=> b!350576 (= e!214735 false)))

(declare-fun lt!164603 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!18851 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!350576 (= lt!164603 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!350577 () Bool)

(declare-fun e!214736 () Bool)

(assert (=> b!350577 (= e!214733 (and e!214736 mapRes!12948))))

(declare-fun condMapEmpty!12948 () Bool)

(declare-fun mapDefault!12948 () ValueCell!3482)

