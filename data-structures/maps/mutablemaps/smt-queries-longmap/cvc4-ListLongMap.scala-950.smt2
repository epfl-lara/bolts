; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20812 () Bool)

(assert start!20812)

(declare-fun b_free!5453 () Bool)

(declare-fun b_next!5453 () Bool)

(assert (=> start!20812 (= b_free!5453 (not b_next!5453))))

(declare-fun tp!19400 () Bool)

(declare-fun b_and!12217 () Bool)

(assert (=> start!20812 (= tp!19400 b_and!12217)))

(declare-fun b!208416 () Bool)

(declare-fun res!101408 () Bool)

(declare-fun e!135936 () Bool)

(assert (=> b!208416 (=> (not res!101408) (not e!135936))))

(declare-datatypes ((array!9832 0))(
  ( (array!9833 (arr!4666 (Array (_ BitVec 32) (_ BitVec 64))) (size!4991 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9832)

(declare-datatypes ((List!3011 0))(
  ( (Nil!3008) (Cons!3007 (h!3649 (_ BitVec 64)) (t!7950 List!3011)) )
))
(declare-fun arrayNoDuplicates!0 (array!9832 (_ BitVec 32) List!3011) Bool)

(assert (=> b!208416 (= res!101408 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3008))))

(declare-fun b!208417 () Bool)

(declare-fun e!135938 () Bool)

(declare-fun e!135940 () Bool)

(declare-fun mapRes!9041 () Bool)

(assert (=> b!208417 (= e!135938 (and e!135940 mapRes!9041))))

(declare-fun condMapEmpty!9041 () Bool)

(declare-datatypes ((V!6733 0))(
  ( (V!6734 (val!2702 Int)) )
))
(declare-datatypes ((ValueCell!2314 0))(
  ( (ValueCellFull!2314 (v!4668 V!6733)) (EmptyCell!2314) )
))
(declare-datatypes ((array!9834 0))(
  ( (array!9835 (arr!4667 (Array (_ BitVec 32) ValueCell!2314)) (size!4992 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9834)

(declare-fun mapDefault!9041 () ValueCell!2314)

