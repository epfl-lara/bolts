; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20764 () Bool)

(assert start!20764)

(declare-fun b_free!5411 () Bool)

(declare-fun b_next!5411 () Bool)

(assert (=> start!20764 (= b_free!5411 (not b_next!5411))))

(declare-fun tp!19265 () Bool)

(declare-fun b_and!12175 () Bool)

(assert (=> start!20764 (= tp!19265 b_and!12175)))

(declare-fun mapIsEmpty!8969 () Bool)

(declare-fun mapRes!8969 () Bool)

(assert (=> mapIsEmpty!8969 mapRes!8969))

(declare-fun b!207732 () Bool)

(declare-fun e!135579 () Bool)

(declare-fun tp_is_empty!5267 () Bool)

(assert (=> b!207732 (= e!135579 tp_is_empty!5267)))

(declare-fun b!207733 () Bool)

(declare-fun e!135576 () Bool)

(declare-fun e!135577 () Bool)

(assert (=> b!207733 (= e!135576 (and e!135577 mapRes!8969))))

(declare-fun condMapEmpty!8969 () Bool)

(declare-datatypes ((V!6669 0))(
  ( (V!6670 (val!2678 Int)) )
))
(declare-datatypes ((ValueCell!2290 0))(
  ( (ValueCellFull!2290 (v!4644 V!6669)) (EmptyCell!2290) )
))
(declare-datatypes ((array!9740 0))(
  ( (array!9741 (arr!4620 (Array (_ BitVec 32) ValueCell!2290)) (size!4945 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9740)

(declare-fun mapDefault!8969 () ValueCell!2290)

