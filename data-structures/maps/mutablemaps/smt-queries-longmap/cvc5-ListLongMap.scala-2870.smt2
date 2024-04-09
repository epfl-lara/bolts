; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41326 () Bool)

(assert start!41326)

(declare-fun b!461842 () Bool)

(declare-fun e!269422 () Bool)

(declare-datatypes ((List!8335 0))(
  ( (Nil!8332) (Cons!8331 (h!9187 (_ BitVec 64)) (t!14287 List!8335)) )
))
(declare-fun noDuplicate!200 (List!8335) Bool)

(assert (=> b!461842 (= e!269422 (not (noDuplicate!200 Nil!8332)))))

(declare-fun b!461843 () Bool)

(declare-fun e!269424 () Bool)

(declare-fun e!269423 () Bool)

(declare-fun mapRes!20350 () Bool)

(assert (=> b!461843 (= e!269424 (and e!269423 mapRes!20350))))

(declare-fun condMapEmpty!20350 () Bool)

(declare-datatypes ((V!17715 0))(
  ( (V!17716 (val!6273 Int)) )
))
(declare-datatypes ((ValueCell!5885 0))(
  ( (ValueCellFull!5885 (v!8555 V!17715)) (EmptyCell!5885) )
))
(declare-datatypes ((array!28681 0))(
  ( (array!28682 (arr!13773 (Array (_ BitVec 32) ValueCell!5885)) (size!14125 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28681)

(declare-fun mapDefault!20350 () ValueCell!5885)

