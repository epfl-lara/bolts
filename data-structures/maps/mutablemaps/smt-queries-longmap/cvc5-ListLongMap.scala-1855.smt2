; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33518 () Bool)

(assert start!33518)

(declare-fun b_free!6799 () Bool)

(declare-fun b_next!6799 () Bool)

(assert (=> start!33518 (= b_free!6799 (not b_next!6799))))

(declare-fun tp!23892 () Bool)

(declare-fun b_and!13991 () Bool)

(assert (=> start!33518 (= tp!23892 b_and!13991)))

(declare-fun b!332323 () Bool)

(declare-fun e!204086 () Bool)

(declare-fun e!204083 () Bool)

(declare-fun mapRes!11514 () Bool)

(assert (=> b!332323 (= e!204086 (and e!204083 mapRes!11514))))

(declare-fun condMapEmpty!11514 () Bool)

(declare-datatypes ((V!9979 0))(
  ( (V!9980 (val!3420 Int)) )
))
(declare-datatypes ((ValueCell!3032 0))(
  ( (ValueCellFull!3032 (v!5575 V!9979)) (EmptyCell!3032) )
))
(declare-datatypes ((array!17097 0))(
  ( (array!17098 (arr!8079 (Array (_ BitVec 32) ValueCell!3032)) (size!8431 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17097)

(declare-fun mapDefault!11514 () ValueCell!3032)

