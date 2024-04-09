; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90094 () Bool)

(assert start!90094)

(declare-fun b!1031429 () Bool)

(declare-fun b_free!20665 () Bool)

(declare-fun b_next!20665 () Bool)

(assert (=> b!1031429 (= b_free!20665 (not b_next!20665))))

(declare-fun tp!73066 () Bool)

(declare-fun b_and!33115 () Bool)

(assert (=> b!1031429 (= tp!73066 b_and!33115)))

(declare-fun b!1031428 () Bool)

(declare-fun e!582605 () Bool)

(declare-fun e!582601 () Bool)

(declare-fun mapRes!38031 () Bool)

(assert (=> b!1031428 (= e!582605 (and e!582601 mapRes!38031))))

(declare-fun condMapEmpty!38031 () Bool)

(declare-datatypes ((V!37387 0))(
  ( (V!37388 (val!12243 Int)) )
))
(declare-datatypes ((ValueCell!11489 0))(
  ( (ValueCellFull!11489 (v!14821 V!37387)) (EmptyCell!11489) )
))
(declare-datatypes ((array!64818 0))(
  ( (array!64819 (arr!31207 (Array (_ BitVec 32) (_ BitVec 64))) (size!31725 (_ BitVec 32))) )
))
(declare-datatypes ((array!64820 0))(
  ( (array!64821 (arr!31208 (Array (_ BitVec 32) ValueCell!11489)) (size!31726 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5572 0))(
  ( (LongMapFixedSize!5573 (defaultEntry!6160 Int) (mask!29953 (_ BitVec 32)) (extraKeys!5892 (_ BitVec 32)) (zeroValue!5996 V!37387) (minValue!5996 V!37387) (_size!2841 (_ BitVec 32)) (_keys!11330 array!64818) (_values!6183 array!64820) (_vacant!2841 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5572)

(declare-fun mapDefault!38031 () ValueCell!11489)

