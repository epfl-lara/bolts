; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41280 () Bool)

(assert start!41280)

(declare-fun b!461608 () Bool)

(declare-fun e!269208 () Bool)

(declare-fun e!269209 () Bool)

(declare-fun mapRes!20305 () Bool)

(assert (=> b!461608 (= e!269208 (and e!269209 mapRes!20305))))

(declare-fun condMapEmpty!20305 () Bool)

(declare-datatypes ((V!17683 0))(
  ( (V!17684 (val!6261 Int)) )
))
(declare-datatypes ((ValueCell!5873 0))(
  ( (ValueCellFull!5873 (v!8543 V!17683)) (EmptyCell!5873) )
))
(declare-datatypes ((array!28631 0))(
  ( (array!28632 (arr!13751 (Array (_ BitVec 32) ValueCell!5873)) (size!14103 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28631)

(declare-fun mapDefault!20305 () ValueCell!5873)

