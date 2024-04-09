; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36686 () Bool)

(assert start!36686)

(declare-fun b!365897 () Bool)

(declare-fun e!224082 () Bool)

(declare-fun e!224081 () Bool)

(declare-fun mapRes!14307 () Bool)

(assert (=> b!365897 (= e!224082 (and e!224081 mapRes!14307))))

(declare-fun condMapEmpty!14307 () Bool)

(declare-datatypes ((V!12439 0))(
  ( (V!12440 (val!4295 Int)) )
))
(declare-datatypes ((ValueCell!3907 0))(
  ( (ValueCellFull!3907 (v!6487 V!12439)) (EmptyCell!3907) )
))
(declare-datatypes ((array!20931 0))(
  ( (array!20932 (arr!9934 (Array (_ BitVec 32) ValueCell!3907)) (size!10286 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20931)

(declare-fun mapDefault!14307 () ValueCell!3907)

