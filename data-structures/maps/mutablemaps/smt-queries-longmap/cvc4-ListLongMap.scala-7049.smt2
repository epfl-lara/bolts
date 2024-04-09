; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89378 () Bool)

(assert start!89378)

(declare-fun b!1024147 () Bool)

(declare-fun b_free!20351 () Bool)

(declare-fun b_next!20351 () Bool)

(assert (=> b!1024147 (= b_free!20351 (not b_next!20351))))

(declare-fun tp!72097 () Bool)

(declare-fun b_and!32615 () Bool)

(assert (=> b!1024147 (= tp!72097 b_and!32615)))

(declare-fun b!1024142 () Bool)

(declare-fun res!685818 () Bool)

(declare-fun e!577287 () Bool)

(assert (=> b!1024142 (=> (not res!685818) (not e!577287))))

(declare-datatypes ((V!36967 0))(
  ( (V!36968 (val!12086 Int)) )
))
(declare-datatypes ((ValueCell!11332 0))(
  ( (ValueCellFull!11332 (v!14656 V!36967)) (EmptyCell!11332) )
))
(declare-datatypes ((array!64174 0))(
  ( (array!64175 (arr!30893 (Array (_ BitVec 32) (_ BitVec 64))) (size!31407 (_ BitVec 32))) )
))
(declare-datatypes ((array!64176 0))(
  ( (array!64177 (arr!30894 (Array (_ BitVec 32) ValueCell!11332)) (size!31408 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5258 0))(
  ( (LongMapFixedSize!5259 (defaultEntry!5981 Int) (mask!29619 (_ BitVec 32)) (extraKeys!5713 (_ BitVec 32)) (zeroValue!5817 V!36967) (minValue!5817 V!36967) (_size!2684 (_ BitVec 32)) (_keys!11125 array!64174) (_values!6004 array!64176) (_vacant!2684 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5258)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1024142 (= res!685818 (validMask!0 (mask!29619 thiss!1427)))))

(declare-fun b!1024143 () Bool)

(declare-fun res!685815 () Bool)

(assert (=> b!1024143 (=> (not res!685815) (not e!577287))))

(assert (=> b!1024143 (= res!685815 (= (size!31407 (_keys!11125 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29619 thiss!1427))))))

(declare-fun b!1024144 () Bool)

(declare-fun e!577288 () Bool)

(declare-fun e!577284 () Bool)

(declare-fun mapRes!37532 () Bool)

(assert (=> b!1024144 (= e!577288 (and e!577284 mapRes!37532))))

(declare-fun condMapEmpty!37532 () Bool)

(declare-fun mapDefault!37532 () ValueCell!11332)

