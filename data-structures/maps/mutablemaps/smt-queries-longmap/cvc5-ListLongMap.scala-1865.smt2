; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33632 () Bool)

(assert start!33632)

(declare-fun b_free!6859 () Bool)

(declare-fun b_next!6859 () Bool)

(assert (=> start!33632 (= b_free!6859 (not b_next!6859))))

(declare-fun tp!24081 () Bool)

(declare-fun b_and!14057 () Bool)

(assert (=> start!33632 (= tp!24081 b_and!14057)))

(declare-fun b!333489 () Bool)

(declare-fun e!204777 () Bool)

(declare-fun e!204776 () Bool)

(declare-fun mapRes!11613 () Bool)

(assert (=> b!333489 (= e!204777 (and e!204776 mapRes!11613))))

(declare-fun condMapEmpty!11613 () Bool)

(declare-datatypes ((V!10059 0))(
  ( (V!10060 (val!3450 Int)) )
))
(declare-datatypes ((ValueCell!3062 0))(
  ( (ValueCellFull!3062 (v!5608 V!10059)) (EmptyCell!3062) )
))
(declare-datatypes ((array!17217 0))(
  ( (array!17218 (arr!8136 (Array (_ BitVec 32) ValueCell!3062)) (size!8488 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17217)

(declare-fun mapDefault!11613 () ValueCell!3062)

