; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36674 () Bool)

(assert start!36674)

(declare-fun b!365744 () Bool)

(declare-fun e!223989 () Bool)

(declare-fun tp_is_empty!8489 () Bool)

(assert (=> b!365744 (= e!223989 tp_is_empty!8489)))

(declare-fun b!365745 () Bool)

(declare-fun e!223993 () Bool)

(declare-fun e!223991 () Bool)

(declare-fun mapRes!14289 () Bool)

(assert (=> b!365745 (= e!223993 (and e!223991 mapRes!14289))))

(declare-fun condMapEmpty!14289 () Bool)

(declare-datatypes ((V!12423 0))(
  ( (V!12424 (val!4289 Int)) )
))
(declare-datatypes ((ValueCell!3901 0))(
  ( (ValueCellFull!3901 (v!6481 V!12423)) (EmptyCell!3901) )
))
(declare-datatypes ((array!20909 0))(
  ( (array!20910 (arr!9923 (Array (_ BitVec 32) ValueCell!3901)) (size!10275 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20909)

(declare-fun mapDefault!14289 () ValueCell!3901)

