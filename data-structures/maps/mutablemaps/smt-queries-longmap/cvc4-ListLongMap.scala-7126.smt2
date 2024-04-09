; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90454 () Bool)

(assert start!90454)

(declare-fun b!1034780 () Bool)

(declare-fun b_free!20813 () Bool)

(declare-fun b_next!20813 () Bool)

(assert (=> b!1034780 (= b_free!20813 (not b_next!20813))))

(declare-fun tp!73549 () Bool)

(declare-fun b_and!33331 () Bool)

(assert (=> b!1034780 (= tp!73549 b_and!33331)))

(declare-fun b!1034776 () Bool)

(declare-fun e!585046 () Bool)

(declare-datatypes ((V!37583 0))(
  ( (V!37584 (val!12317 Int)) )
))
(declare-datatypes ((ValueCell!11563 0))(
  ( (ValueCellFull!11563 (v!14898 V!37583)) (EmptyCell!11563) )
))
(declare-datatypes ((array!65134 0))(
  ( (array!65135 (arr!31355 (Array (_ BitVec 32) (_ BitVec 64))) (size!31880 (_ BitVec 32))) )
))
(declare-datatypes ((array!65136 0))(
  ( (array!65137 (arr!31356 (Array (_ BitVec 32) ValueCell!11563)) (size!31881 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5720 0))(
  ( (LongMapFixedSize!5721 (defaultEntry!6238 Int) (mask!30099 (_ BitVec 32)) (extraKeys!5968 (_ BitVec 32)) (zeroValue!6072 V!37583) (minValue!6074 V!37583) (_size!2915 (_ BitVec 32)) (_keys!11418 array!65134) (_values!6261 array!65136) (_vacant!2915 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5720)

(assert (=> b!1034776 (= e!585046 (not (= (size!31881 (_values!6261 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30099 thiss!1427)))))))

(declare-fun b!1034777 () Bool)

(declare-fun res!691126 () Bool)

(assert (=> b!1034777 (=> (not res!691126) (not e!585046))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1034777 (= res!691126 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1034778 () Bool)

(declare-fun e!585048 () Bool)

(declare-fun e!585045 () Bool)

(declare-fun mapRes!38291 () Bool)

(assert (=> b!1034778 (= e!585048 (and e!585045 mapRes!38291))))

(declare-fun condMapEmpty!38291 () Bool)

(declare-fun mapDefault!38291 () ValueCell!11563)

