; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89582 () Bool)

(assert start!89582)

(declare-fun b!1027075 () Bool)

(declare-fun b_free!20545 () Bool)

(declare-fun b_next!20545 () Bool)

(assert (=> b!1027075 (= b_free!20545 (not b_next!20545))))

(declare-fun tp!72682 () Bool)

(declare-fun b_and!32809 () Bool)

(assert (=> b!1027075 (= tp!72682 b_and!32809)))

(declare-fun b!1027067 () Bool)

(declare-fun e!579601 () Bool)

(assert (=> b!1027067 (= e!579601 true)))

(declare-fun lt!452016 () Bool)

(declare-datatypes ((V!37227 0))(
  ( (V!37228 (val!12183 Int)) )
))
(declare-datatypes ((ValueCell!11429 0))(
  ( (ValueCellFull!11429 (v!14753 V!37227)) (EmptyCell!11429) )
))
(declare-datatypes ((array!64564 0))(
  ( (array!64565 (arr!31087 (Array (_ BitVec 32) (_ BitVec 64))) (size!31601 (_ BitVec 32))) )
))
(declare-datatypes ((array!64566 0))(
  ( (array!64567 (arr!31088 (Array (_ BitVec 32) ValueCell!11429)) (size!31602 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5452 0))(
  ( (LongMapFixedSize!5453 (defaultEntry!6078 Int) (mask!29783 (_ BitVec 32)) (extraKeys!5810 (_ BitVec 32)) (zeroValue!5914 V!37227) (minValue!5914 V!37227) (_size!2781 (_ BitVec 32)) (_keys!11222 array!64564) (_values!6101 array!64566) (_vacant!2781 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5452)

(declare-datatypes ((List!21906 0))(
  ( (Nil!21903) (Cons!21902 (h!23100 (_ BitVec 64)) (t!30975 List!21906)) )
))
(declare-fun arrayNoDuplicates!0 (array!64564 (_ BitVec 32) List!21906) Bool)

(assert (=> b!1027067 (= lt!452016 (arrayNoDuplicates!0 (_keys!11222 thiss!1427) #b00000000000000000000000000000000 Nil!21903))))

(declare-fun b!1027068 () Bool)

(declare-fun e!579602 () Bool)

(declare-fun e!579607 () Bool)

(declare-fun mapRes!37826 () Bool)

(assert (=> b!1027068 (= e!579602 (and e!579607 mapRes!37826))))

(declare-fun condMapEmpty!37826 () Bool)

(declare-fun mapDefault!37826 () ValueCell!11429)

