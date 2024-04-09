; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89256 () Bool)

(assert start!89256)

(declare-fun b!1022930 () Bool)

(declare-fun b_free!20261 () Bool)

(declare-fun b_next!20261 () Bool)

(assert (=> b!1022930 (= b_free!20261 (not b_next!20261))))

(declare-fun tp!71818 () Bool)

(declare-fun b_and!32501 () Bool)

(assert (=> b!1022930 (= tp!71818 b_and!32501)))

(declare-fun b!1022924 () Bool)

(declare-fun res!685230 () Bool)

(declare-fun e!576395 () Bool)

(assert (=> b!1022924 (=> (not res!685230) (not e!576395))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1022924 (= res!685230 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1022925 () Bool)

(declare-fun e!576393 () Bool)

(declare-fun e!576394 () Bool)

(declare-fun mapRes!37389 () Bool)

(assert (=> b!1022925 (= e!576393 (and e!576394 mapRes!37389))))

(declare-fun condMapEmpty!37389 () Bool)

(declare-datatypes ((V!36847 0))(
  ( (V!36848 (val!12041 Int)) )
))
(declare-datatypes ((ValueCell!11287 0))(
  ( (ValueCellFull!11287 (v!14611 V!36847)) (EmptyCell!11287) )
))
(declare-datatypes ((array!63990 0))(
  ( (array!63991 (arr!30803 (Array (_ BitVec 32) (_ BitVec 64))) (size!31315 (_ BitVec 32))) )
))
(declare-datatypes ((array!63992 0))(
  ( (array!63993 (arr!30804 (Array (_ BitVec 32) ValueCell!11287)) (size!31316 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5168 0))(
  ( (LongMapFixedSize!5169 (defaultEntry!5936 Int) (mask!29540 (_ BitVec 32)) (extraKeys!5668 (_ BitVec 32)) (zeroValue!5772 V!36847) (minValue!5772 V!36847) (_size!2639 (_ BitVec 32)) (_keys!11078 array!63990) (_values!5959 array!63992) (_vacant!2639 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5168)

(declare-fun mapDefault!37389 () ValueCell!11287)

