; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41496 () Bool)

(assert start!41496)

(declare-fun b_free!11155 () Bool)

(declare-fun b_next!11155 () Bool)

(assert (=> start!41496 (= b_free!11155 (not b_next!11155))))

(declare-fun tp!39462 () Bool)

(declare-fun b_and!19513 () Bool)

(assert (=> start!41496 (= tp!39462 b_and!19513)))

(declare-fun b!463279 () Bool)

(declare-fun res!277078 () Bool)

(declare-fun e!270505 () Bool)

(assert (=> b!463279 (=> (not res!277078) (not e!270505))))

(declare-datatypes ((array!28927 0))(
  ( (array!28928 (arr!13892 (Array (_ BitVec 32) (_ BitVec 64))) (size!14244 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28927)

(declare-datatypes ((List!8403 0))(
  ( (Nil!8400) (Cons!8399 (h!9255 (_ BitVec 64)) (t!14357 List!8403)) )
))
(declare-fun arrayNoDuplicates!0 (array!28927 (_ BitVec 32) List!8403) Bool)

(assert (=> b!463279 (= res!277078 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8400))))

(declare-fun b!463280 () Bool)

(declare-fun e!270503 () Bool)

(declare-fun e!270501 () Bool)

(declare-fun mapRes!20551 () Bool)

(assert (=> b!463280 (= e!270503 (and e!270501 mapRes!20551))))

(declare-fun condMapEmpty!20551 () Bool)

(declare-datatypes ((V!17883 0))(
  ( (V!17884 (val!6336 Int)) )
))
(declare-datatypes ((ValueCell!5948 0))(
  ( (ValueCellFull!5948 (v!8619 V!17883)) (EmptyCell!5948) )
))
(declare-datatypes ((array!28929 0))(
  ( (array!28930 (arr!13893 (Array (_ BitVec 32) ValueCell!5948)) (size!14245 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28929)

(declare-fun mapDefault!20551 () ValueCell!5948)

