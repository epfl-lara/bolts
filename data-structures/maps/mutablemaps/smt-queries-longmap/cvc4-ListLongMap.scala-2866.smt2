; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41284 () Bool)

(assert start!41284)

(declare-fun b!461632 () Bool)

(declare-fun e!269240 () Bool)

(declare-fun e!269238 () Bool)

(declare-fun mapRes!20311 () Bool)

(assert (=> b!461632 (= e!269240 (and e!269238 mapRes!20311))))

(declare-fun condMapEmpty!20311 () Bool)

(declare-datatypes ((V!17687 0))(
  ( (V!17688 (val!6263 Int)) )
))
(declare-datatypes ((ValueCell!5875 0))(
  ( (ValueCellFull!5875 (v!8545 V!17687)) (EmptyCell!5875) )
))
(declare-datatypes ((array!28637 0))(
  ( (array!28638 (arr!13754 (Array (_ BitVec 32) ValueCell!5875)) (size!14106 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28637)

(declare-fun mapDefault!20311 () ValueCell!5875)

