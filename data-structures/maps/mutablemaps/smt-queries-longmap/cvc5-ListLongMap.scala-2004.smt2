; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35012 () Bool)

(assert start!35012)

(declare-fun b_free!7693 () Bool)

(declare-fun b_next!7693 () Bool)

(assert (=> start!35012 (= b_free!7693 (not b_next!7693))))

(declare-fun tp!26658 () Bool)

(declare-fun b_and!14941 () Bool)

(assert (=> start!35012 (= tp!26658 b_and!14941)))

(declare-fun b!350475 () Bool)

(declare-fun e!214684 () Bool)

(declare-fun e!214683 () Bool)

(declare-fun mapRes!12939 () Bool)

(assert (=> b!350475 (= e!214684 (and e!214683 mapRes!12939))))

(declare-fun condMapEmpty!12939 () Bool)

(declare-datatypes ((V!11171 0))(
  ( (V!11172 (val!3867 Int)) )
))
(declare-datatypes ((ValueCell!3479 0))(
  ( (ValueCellFull!3479 (v!6050 V!11171)) (EmptyCell!3479) )
))
(declare-datatypes ((array!18843 0))(
  ( (array!18844 (arr!8924 (Array (_ BitVec 32) ValueCell!3479)) (size!9276 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18843)

(declare-fun mapDefault!12939 () ValueCell!3479)

