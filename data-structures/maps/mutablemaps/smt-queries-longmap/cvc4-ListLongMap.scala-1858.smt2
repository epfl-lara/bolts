; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33540 () Bool)

(assert start!33540)

(declare-fun b_free!6821 () Bool)

(declare-fun b_next!6821 () Bool)

(assert (=> start!33540 (= b_free!6821 (not b_next!6821))))

(declare-fun tp!23957 () Bool)

(declare-fun b_and!14013 () Bool)

(assert (=> start!33540 (= tp!23957 b_and!14013)))

(declare-fun mapNonEmpty!11547 () Bool)

(declare-fun mapRes!11547 () Bool)

(declare-fun tp!23958 () Bool)

(declare-fun e!204252 () Bool)

(assert (=> mapNonEmpty!11547 (= mapRes!11547 (and tp!23958 e!204252))))

(declare-datatypes ((V!10007 0))(
  ( (V!10008 (val!3431 Int)) )
))
(declare-datatypes ((ValueCell!3043 0))(
  ( (ValueCellFull!3043 (v!5586 V!10007)) (EmptyCell!3043) )
))
(declare-fun mapRest!11547 () (Array (_ BitVec 32) ValueCell!3043))

(declare-datatypes ((array!17139 0))(
  ( (array!17140 (arr!8100 (Array (_ BitVec 32) ValueCell!3043)) (size!8452 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17139)

(declare-fun mapKey!11547 () (_ BitVec 32))

(declare-fun mapValue!11547 () ValueCell!3043)

(assert (=> mapNonEmpty!11547 (= (arr!8100 _values!1525) (store mapRest!11547 mapKey!11547 mapValue!11547))))

(declare-fun b!332596 () Bool)

(declare-fun e!204250 () Bool)

(declare-fun e!204248 () Bool)

(assert (=> b!332596 (= e!204250 (and e!204248 mapRes!11547))))

(declare-fun condMapEmpty!11547 () Bool)

(declare-fun mapDefault!11547 () ValueCell!3043)

