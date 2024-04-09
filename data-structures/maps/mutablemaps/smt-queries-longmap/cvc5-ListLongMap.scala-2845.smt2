; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41064 () Bool)

(assert start!41064)

(declare-fun b_free!10969 () Bool)

(declare-fun b_next!10969 () Bool)

(assert (=> start!41064 (= b_free!10969 (not b_next!10969))))

(declare-fun tp!38737 () Bool)

(declare-fun b_and!19163 () Bool)

(assert (=> start!41064 (= tp!38737 b_and!19163)))

(declare-fun b!457525 () Bool)

(declare-fun e!267196 () Bool)

(declare-fun e!267193 () Bool)

(declare-fun mapRes!20104 () Bool)

(assert (=> b!457525 (= e!267196 (and e!267193 mapRes!20104))))

(declare-fun condMapEmpty!20104 () Bool)

(declare-datatypes ((V!17515 0))(
  ( (V!17516 (val!6198 Int)) )
))
(declare-datatypes ((ValueCell!5810 0))(
  ( (ValueCellFull!5810 (v!8464 V!17515)) (EmptyCell!5810) )
))
(declare-datatypes ((array!28383 0))(
  ( (array!28384 (arr!13631 (Array (_ BitVec 32) ValueCell!5810)) (size!13983 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28383)

(declare-fun mapDefault!20104 () ValueCell!5810)

