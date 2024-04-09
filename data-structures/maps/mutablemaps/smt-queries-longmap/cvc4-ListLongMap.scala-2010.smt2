; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35052 () Bool)

(assert start!35052)

(declare-fun b_free!7733 () Bool)

(declare-fun b_next!7733 () Bool)

(assert (=> start!35052 (= b_free!7733 (not b_next!7733))))

(declare-fun tp!26778 () Bool)

(declare-fun b_and!14981 () Bool)

(assert (=> start!35052 (= tp!26778 b_and!14981)))

(declare-fun b!351135 () Bool)

(declare-fun res!194811 () Bool)

(declare-fun e!215040 () Bool)

(assert (=> b!351135 (=> (not res!194811) (not e!215040))))

(declare-datatypes ((array!18911 0))(
  ( (array!18912 (arr!8958 (Array (_ BitVec 32) (_ BitVec 64))) (size!9310 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18911)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18911 (_ BitVec 32)) Bool)

(assert (=> b!351135 (= res!194811 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!351136 () Bool)

(declare-fun res!194805 () Bool)

(assert (=> b!351136 (=> (not res!194805) (not e!215040))))

(declare-datatypes ((List!5237 0))(
  ( (Nil!5234) (Cons!5233 (h!6089 (_ BitVec 64)) (t!10383 List!5237)) )
))
(declare-fun arrayNoDuplicates!0 (array!18911 (_ BitVec 32) List!5237) Bool)

(assert (=> b!351136 (= res!194805 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5234))))

(declare-fun b!351137 () Bool)

(declare-fun res!194810 () Bool)

(assert (=> b!351137 (=> (not res!194810) (not e!215040))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!351137 (= res!194810 (validKeyInArray!0 k!1348))))

(declare-fun res!194804 () Bool)

(assert (=> start!35052 (=> (not res!194804) (not e!215040))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35052 (= res!194804 (validMask!0 mask!2385))))

(assert (=> start!35052 e!215040))

(assert (=> start!35052 true))

(declare-fun tp_is_empty!7685 () Bool)

(assert (=> start!35052 tp_is_empty!7685))

(assert (=> start!35052 tp!26778))

(declare-datatypes ((V!11223 0))(
  ( (V!11224 (val!3887 Int)) )
))
(declare-datatypes ((ValueCell!3499 0))(
  ( (ValueCellFull!3499 (v!6070 V!11223)) (EmptyCell!3499) )
))
(declare-datatypes ((array!18913 0))(
  ( (array!18914 (arr!8959 (Array (_ BitVec 32) ValueCell!3499)) (size!9311 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18913)

(declare-fun e!215043 () Bool)

(declare-fun array_inv!6602 (array!18913) Bool)

(assert (=> start!35052 (and (array_inv!6602 _values!1525) e!215043)))

(declare-fun array_inv!6603 (array!18911) Bool)

(assert (=> start!35052 (array_inv!6603 _keys!1895)))

(declare-fun mapNonEmpty!12999 () Bool)

(declare-fun mapRes!12999 () Bool)

(declare-fun tp!26777 () Bool)

(declare-fun e!215041 () Bool)

(assert (=> mapNonEmpty!12999 (= mapRes!12999 (and tp!26777 e!215041))))

(declare-fun mapKey!12999 () (_ BitVec 32))

(declare-fun mapRest!12999 () (Array (_ BitVec 32) ValueCell!3499))

(declare-fun mapValue!12999 () ValueCell!3499)

(assert (=> mapNonEmpty!12999 (= (arr!8959 _values!1525) (store mapRest!12999 mapKey!12999 mapValue!12999))))

(declare-fun b!351138 () Bool)

(declare-fun e!215039 () Bool)

(declare-fun lt!164706 () (_ BitVec 32))

(assert (=> b!351138 (= e!215039 (or (bvslt lt!164706 #b00000000000000000000000000000000) (bvsge lt!164706 (size!9310 _keys!1895))))))

(declare-fun arrayScanForKey!0 (array!18911 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!351138 (= lt!164706 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!351139 () Bool)

(declare-fun res!194808 () Bool)

(assert (=> b!351139 (=> (not res!194808) (not e!215039))))

(declare-fun arrayContainsKey!0 (array!18911 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!351139 (= res!194808 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!351140 () Bool)

(declare-fun e!215044 () Bool)

(assert (=> b!351140 (= e!215044 tp_is_empty!7685)))

(declare-fun b!351141 () Bool)

(assert (=> b!351141 (= e!215043 (and e!215044 mapRes!12999))))

(declare-fun condMapEmpty!12999 () Bool)

(declare-fun mapDefault!12999 () ValueCell!3499)

