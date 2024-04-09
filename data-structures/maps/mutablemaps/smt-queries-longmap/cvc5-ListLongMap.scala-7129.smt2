; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90508 () Bool)

(assert start!90508)

(declare-fun b!1035084 () Bool)

(declare-fun b_free!20827 () Bool)

(declare-fun b_next!20827 () Bool)

(assert (=> b!1035084 (= b_free!20827 (not b_next!20827))))

(declare-fun tp!73602 () Bool)

(declare-fun b_and!33345 () Bool)

(assert (=> b!1035084 (= tp!73602 b_and!33345)))

(declare-fun b!1035080 () Bool)

(declare-fun e!585264 () Bool)

(declare-fun e!585265 () Bool)

(declare-fun mapRes!38323 () Bool)

(assert (=> b!1035080 (= e!585264 (and e!585265 mapRes!38323))))

(declare-fun condMapEmpty!38323 () Bool)

(declare-datatypes ((V!37603 0))(
  ( (V!37604 (val!12324 Int)) )
))
(declare-datatypes ((ValueCell!11570 0))(
  ( (ValueCellFull!11570 (v!14905 V!37603)) (EmptyCell!11570) )
))
(declare-datatypes ((array!65168 0))(
  ( (array!65169 (arr!31369 (Array (_ BitVec 32) (_ BitVec 64))) (size!31896 (_ BitVec 32))) )
))
(declare-datatypes ((array!65170 0))(
  ( (array!65171 (arr!31370 (Array (_ BitVec 32) ValueCell!11570)) (size!31897 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5734 0))(
  ( (LongMapFixedSize!5735 (defaultEntry!6245 Int) (mask!30117 (_ BitVec 32)) (extraKeys!5975 (_ BitVec 32)) (zeroValue!6079 V!37603) (minValue!6081 V!37603) (_size!2922 (_ BitVec 32)) (_keys!11427 array!65168) (_values!6268 array!65170) (_vacant!2922 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5734)

(declare-fun mapDefault!38323 () ValueCell!11570)

