; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41138 () Bool)

(assert start!41138)

(declare-fun b_free!10999 () Bool)

(declare-fun b_next!10999 () Bool)

(assert (=> start!41138 (= b_free!10999 (not b_next!10999))))

(declare-fun tp!38833 () Bool)

(declare-fun b_and!19255 () Bool)

(assert (=> start!41138 (= tp!38833 b_and!19255)))

(declare-fun b!458623 () Bool)

(declare-fun e!267762 () Bool)

(declare-fun e!267760 () Bool)

(declare-fun mapRes!20155 () Bool)

(assert (=> b!458623 (= e!267762 (and e!267760 mapRes!20155))))

(declare-fun condMapEmpty!20155 () Bool)

(declare-datatypes ((V!17555 0))(
  ( (V!17556 (val!6213 Int)) )
))
(declare-datatypes ((ValueCell!5825 0))(
  ( (ValueCellFull!5825 (v!8487 V!17555)) (EmptyCell!5825) )
))
(declare-datatypes ((array!28443 0))(
  ( (array!28444 (arr!13659 (Array (_ BitVec 32) ValueCell!5825)) (size!14011 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28443)

(declare-fun mapDefault!20155 () ValueCell!5825)

