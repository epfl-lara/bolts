; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36688 () Bool)

(assert start!36688)

(declare-fun b!365932 () Bool)

(declare-fun e!224098 () Bool)

(declare-fun e!224096 () Bool)

(declare-fun mapRes!14310 () Bool)

(assert (=> b!365932 (= e!224098 (and e!224096 mapRes!14310))))

(declare-fun condMapEmpty!14310 () Bool)

(declare-datatypes ((V!12443 0))(
  ( (V!12444 (val!4296 Int)) )
))
(declare-datatypes ((ValueCell!3908 0))(
  ( (ValueCellFull!3908 (v!6488 V!12443)) (EmptyCell!3908) )
))
(declare-datatypes ((array!20933 0))(
  ( (array!20934 (arr!9935 (Array (_ BitVec 32) ValueCell!3908)) (size!10287 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20933)

(declare-fun mapDefault!14310 () ValueCell!3908)

