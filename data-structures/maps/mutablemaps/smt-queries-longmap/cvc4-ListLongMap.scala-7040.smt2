; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89292 () Bool)

(assert start!89292)

(declare-fun b!1023414 () Bool)

(declare-fun b_free!20297 () Bool)

(declare-fun b_next!20297 () Bool)

(assert (=> b!1023414 (= b_free!20297 (not b_next!20297))))

(declare-fun tp!71927 () Bool)

(declare-fun b_and!32537 () Bool)

(assert (=> b!1023414 (= tp!71927 b_and!32537)))

(declare-fun b!1023410 () Bool)

(declare-fun res!685501 () Bool)

(declare-fun e!576716 () Bool)

(assert (=> b!1023410 (=> (not res!685501) (not e!576716))))

(declare-datatypes ((V!36895 0))(
  ( (V!36896 (val!12059 Int)) )
))
(declare-datatypes ((ValueCell!11305 0))(
  ( (ValueCellFull!11305 (v!14629 V!36895)) (EmptyCell!11305) )
))
(declare-datatypes ((array!64062 0))(
  ( (array!64063 (arr!30839 (Array (_ BitVec 32) (_ BitVec 64))) (size!31351 (_ BitVec 32))) )
))
(declare-datatypes ((array!64064 0))(
  ( (array!64065 (arr!30840 (Array (_ BitVec 32) ValueCell!11305)) (size!31352 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5204 0))(
  ( (LongMapFixedSize!5205 (defaultEntry!5954 Int) (mask!29570 (_ BitVec 32)) (extraKeys!5686 (_ BitVec 32)) (zeroValue!5790 V!36895) (minValue!5790 V!36895) (_size!2657 (_ BitVec 32)) (_keys!11096 array!64062) (_values!5977 array!64064) (_vacant!2657 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5204)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1023410 (= res!685501 (validMask!0 (mask!29570 thiss!1427)))))

(declare-fun b!1023411 () Bool)

(declare-fun e!576718 () Bool)

(declare-fun e!576717 () Bool)

(declare-fun mapRes!37443 () Bool)

(assert (=> b!1023411 (= e!576718 (and e!576717 mapRes!37443))))

(declare-fun condMapEmpty!37443 () Bool)

(declare-fun mapDefault!37443 () ValueCell!11305)

