; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89226 () Bool)

(assert start!89226)

(declare-fun b!1022546 () Bool)

(declare-fun b_free!20231 () Bool)

(declare-fun b_next!20231 () Bool)

(assert (=> b!1022546 (= b_free!20231 (not b_next!20231))))

(declare-fun tp!71728 () Bool)

(declare-fun b_and!32463 () Bool)

(assert (=> b!1022546 (= tp!71728 b_and!32463)))

(declare-fun b!1022541 () Bool)

(declare-fun e!576124 () Bool)

(declare-fun e!576123 () Bool)

(declare-fun mapRes!37344 () Bool)

(assert (=> b!1022541 (= e!576124 (and e!576123 mapRes!37344))))

(declare-fun condMapEmpty!37344 () Bool)

(declare-datatypes ((V!36807 0))(
  ( (V!36808 (val!12026 Int)) )
))
(declare-datatypes ((ValueCell!11272 0))(
  ( (ValueCellFull!11272 (v!14596 V!36807)) (EmptyCell!11272) )
))
(declare-datatypes ((array!63930 0))(
  ( (array!63931 (arr!30773 (Array (_ BitVec 32) (_ BitVec 64))) (size!31285 (_ BitVec 32))) )
))
(declare-datatypes ((array!63932 0))(
  ( (array!63933 (arr!30774 (Array (_ BitVec 32) ValueCell!11272)) (size!31286 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5138 0))(
  ( (LongMapFixedSize!5139 (defaultEntry!5921 Int) (mask!29515 (_ BitVec 32)) (extraKeys!5653 (_ BitVec 32)) (zeroValue!5757 V!36807) (minValue!5757 V!36807) (_size!2624 (_ BitVec 32)) (_keys!11063 array!63930) (_values!5944 array!63932) (_vacant!2624 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5138)

(declare-fun mapDefault!37344 () ValueCell!11272)

