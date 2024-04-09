; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89492 () Bool)

(assert start!89492)

(declare-fun b!1025824 () Bool)

(declare-fun b_free!20455 () Bool)

(declare-fun b_next!20455 () Bool)

(assert (=> b!1025824 (= b_free!20455 (not b_next!20455))))

(declare-fun tp!72412 () Bool)

(declare-fun b_and!32719 () Bool)

(assert (=> b!1025824 (= tp!72412 b_and!32719)))

(declare-fun b!1025821 () Bool)

(declare-fun e!578525 () Bool)

(assert (=> b!1025821 (= e!578525 true)))

(declare-fun lt!451123 () Bool)

(declare-datatypes ((V!37107 0))(
  ( (V!37108 (val!12138 Int)) )
))
(declare-datatypes ((ValueCell!11384 0))(
  ( (ValueCellFull!11384 (v!14708 V!37107)) (EmptyCell!11384) )
))
(declare-datatypes ((array!64384 0))(
  ( (array!64385 (arr!30997 (Array (_ BitVec 32) (_ BitVec 64))) (size!31511 (_ BitVec 32))) )
))
(declare-datatypes ((array!64386 0))(
  ( (array!64387 (arr!30998 (Array (_ BitVec 32) ValueCell!11384)) (size!31512 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5362 0))(
  ( (LongMapFixedSize!5363 (defaultEntry!6033 Int) (mask!29708 (_ BitVec 32)) (extraKeys!5765 (_ BitVec 32)) (zeroValue!5869 V!37107) (minValue!5869 V!37107) (_size!2736 (_ BitVec 32)) (_keys!11177 array!64384) (_values!6056 array!64386) (_vacant!2736 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5362)

(declare-datatypes ((List!21870 0))(
  ( (Nil!21867) (Cons!21866 (h!23064 (_ BitVec 64)) (t!30939 List!21870)) )
))
(declare-fun arrayNoDuplicates!0 (array!64384 (_ BitVec 32) List!21870) Bool)

(assert (=> b!1025821 (= lt!451123 (arrayNoDuplicates!0 (_keys!11177 thiss!1427) #b00000000000000000000000000000000 Nil!21867))))

(declare-fun b!1025822 () Bool)

(declare-fun e!578522 () Bool)

(declare-fun tp_is_empty!24175 () Bool)

(assert (=> b!1025822 (= e!578522 tp_is_empty!24175)))

(declare-fun res!686862 () Bool)

(declare-fun e!578524 () Bool)

(assert (=> start!89492 (=> (not res!686862) (not e!578524))))

(declare-fun valid!1988 (LongMapFixedSize!5362) Bool)

(assert (=> start!89492 (= res!686862 (valid!1988 thiss!1427))))

(assert (=> start!89492 e!578524))

(declare-fun e!578528 () Bool)

(assert (=> start!89492 e!578528))

(assert (=> start!89492 true))

(declare-fun b!1025823 () Bool)

(declare-fun e!578521 () Bool)

(declare-fun mapRes!37691 () Bool)

(assert (=> b!1025823 (= e!578521 (and e!578522 mapRes!37691))))

(declare-fun condMapEmpty!37691 () Bool)

(declare-fun mapDefault!37691 () ValueCell!11384)

