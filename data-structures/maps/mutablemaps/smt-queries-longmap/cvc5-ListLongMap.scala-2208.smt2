; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36670 () Bool)

(assert start!36670)

(declare-fun b!365678 () Bool)

(declare-fun e!223963 () Bool)

(declare-fun e!223962 () Bool)

(declare-fun mapRes!14283 () Bool)

(assert (=> b!365678 (= e!223963 (and e!223962 mapRes!14283))))

(declare-fun condMapEmpty!14283 () Bool)

(declare-datatypes ((V!12419 0))(
  ( (V!12420 (val!4287 Int)) )
))
(declare-datatypes ((ValueCell!3899 0))(
  ( (ValueCellFull!3899 (v!6479 V!12419)) (EmptyCell!3899) )
))
(declare-datatypes ((array!20903 0))(
  ( (array!20904 (arr!9920 (Array (_ BitVec 32) ValueCell!3899)) (size!10272 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20903)

(declare-fun mapDefault!14283 () ValueCell!3899)

