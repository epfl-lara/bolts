; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90534 () Bool)

(assert start!90534)

(declare-fun b!1035256 () Bool)

(declare-fun b_free!20837 () Bool)

(declare-fun b_next!20837 () Bool)

(assert (=> b!1035256 (= b_free!20837 (not b_next!20837))))

(declare-fun tp!73636 () Bool)

(declare-fun b_and!33355 () Bool)

(assert (=> b!1035256 (= tp!73636 b_and!33355)))

(declare-fun res!691353 () Bool)

(declare-fun e!585394 () Bool)

(assert (=> start!90534 (=> (not res!691353) (not e!585394))))

(declare-datatypes ((V!37615 0))(
  ( (V!37616 (val!12329 Int)) )
))
(declare-datatypes ((ValueCell!11575 0))(
  ( (ValueCellFull!11575 (v!14910 V!37615)) (EmptyCell!11575) )
))
(declare-datatypes ((array!65190 0))(
  ( (array!65191 (arr!31379 (Array (_ BitVec 32) (_ BitVec 64))) (size!31907 (_ BitVec 32))) )
))
(declare-datatypes ((array!65192 0))(
  ( (array!65193 (arr!31380 (Array (_ BitVec 32) ValueCell!11575)) (size!31908 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5744 0))(
  ( (LongMapFixedSize!5745 (defaultEntry!6250 Int) (mask!30126 (_ BitVec 32)) (extraKeys!5980 (_ BitVec 32)) (zeroValue!6084 V!37615) (minValue!6086 V!37615) (_size!2927 (_ BitVec 32)) (_keys!11433 array!65190) (_values!6273 array!65192) (_vacant!2927 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5744)

(declare-fun valid!2118 (LongMapFixedSize!5744) Bool)

(assert (=> start!90534 (= res!691353 (valid!2118 thiss!1427))))

(assert (=> start!90534 e!585394))

(declare-fun e!585392 () Bool)

(assert (=> start!90534 e!585392))

(assert (=> start!90534 true))

(declare-fun b!1035255 () Bool)

(declare-fun res!691352 () Bool)

(assert (=> b!1035255 (=> (not res!691352) (not e!585394))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1035255 (= res!691352 (validMask!0 (mask!30126 thiss!1427)))))

(declare-fun tp_is_empty!24557 () Bool)

(declare-fun e!585393 () Bool)

(declare-fun array_inv!24103 (array!65190) Bool)

(declare-fun array_inv!24104 (array!65192) Bool)

(assert (=> b!1035256 (= e!585392 (and tp!73636 tp_is_empty!24557 (array_inv!24103 (_keys!11433 thiss!1427)) (array_inv!24104 (_values!6273 thiss!1427)) e!585393))))

(declare-fun b!1035257 () Bool)

(declare-fun e!585395 () Bool)

(declare-fun mapRes!38342 () Bool)

(assert (=> b!1035257 (= e!585393 (and e!585395 mapRes!38342))))

(declare-fun condMapEmpty!38342 () Bool)

(declare-fun mapDefault!38342 () ValueCell!11575)

