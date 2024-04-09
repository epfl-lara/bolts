; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89316 () Bool)

(assert start!89316)

(declare-fun b!1023698 () Bool)

(declare-fun b_free!20321 () Bool)

(declare-fun b_next!20321 () Bool)

(assert (=> b!1023698 (= b_free!20321 (not b_next!20321))))

(declare-fun tp!71998 () Bool)

(declare-fun b_and!32571 () Bool)

(assert (=> b!1023698 (= tp!71998 b_and!32571)))

(declare-fun b!1023693 () Bool)

(declare-fun e!576937 () Bool)

(declare-fun e!576934 () Bool)

(declare-fun mapRes!37479 () Bool)

(assert (=> b!1023693 (= e!576937 (and e!576934 mapRes!37479))))

(declare-fun condMapEmpty!37479 () Bool)

(declare-datatypes ((V!36927 0))(
  ( (V!36928 (val!12071 Int)) )
))
(declare-datatypes ((ValueCell!11317 0))(
  ( (ValueCellFull!11317 (v!14641 V!36927)) (EmptyCell!11317) )
))
(declare-datatypes ((array!64110 0))(
  ( (array!64111 (arr!30863 (Array (_ BitVec 32) (_ BitVec 64))) (size!31375 (_ BitVec 32))) )
))
(declare-datatypes ((array!64112 0))(
  ( (array!64113 (arr!30864 (Array (_ BitVec 32) ValueCell!11317)) (size!31376 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5228 0))(
  ( (LongMapFixedSize!5229 (defaultEntry!5966 Int) (mask!29590 (_ BitVec 32)) (extraKeys!5698 (_ BitVec 32)) (zeroValue!5802 V!36927) (minValue!5802 V!36927) (_size!2669 (_ BitVec 32)) (_keys!11108 array!64110) (_values!5989 array!64112) (_vacant!2669 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5228)

(declare-fun mapDefault!37479 () ValueCell!11317)

