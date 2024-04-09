; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16180 () Bool)

(assert start!16180)

(declare-fun b!161135 () Bool)

(declare-fun b_free!3629 () Bool)

(declare-fun b_next!3629 () Bool)

(assert (=> b!161135 (= b_free!3629 (not b_next!3629))))

(declare-fun tp!13457 () Bool)

(declare-fun b_and!10061 () Bool)

(assert (=> b!161135 (= tp!13457 b_and!10061)))

(declare-fun mapNonEmpty!5834 () Bool)

(declare-fun mapRes!5834 () Bool)

(declare-fun tp!13456 () Bool)

(declare-fun e!105292 () Bool)

(assert (=> mapNonEmpty!5834 (= mapRes!5834 (and tp!13456 e!105292))))

(declare-datatypes ((V!4221 0))(
  ( (V!4222 (val!1760 Int)) )
))
(declare-datatypes ((ValueCell!1372 0))(
  ( (ValueCellFull!1372 (v!3621 V!4221)) (EmptyCell!1372) )
))
(declare-fun mapRest!5834 () (Array (_ BitVec 32) ValueCell!1372))

(declare-fun mapValue!5834 () ValueCell!1372)

(declare-fun mapKey!5834 () (_ BitVec 32))

(declare-datatypes ((array!5940 0))(
  ( (array!5941 (arr!2814 (Array (_ BitVec 32) (_ BitVec 64))) (size!3098 (_ BitVec 32))) )
))
(declare-datatypes ((array!5942 0))(
  ( (array!5943 (arr!2815 (Array (_ BitVec 32) ValueCell!1372)) (size!3099 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1652 0))(
  ( (LongMapFixedSize!1653 (defaultEntry!3268 Int) (mask!7852 (_ BitVec 32)) (extraKeys!3009 (_ BitVec 32)) (zeroValue!3111 V!4221) (minValue!3111 V!4221) (_size!875 (_ BitVec 32)) (_keys!5069 array!5940) (_values!3251 array!5942) (_vacant!875 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1652)

(assert (=> mapNonEmpty!5834 (= (arr!2815 (_values!3251 thiss!1248)) (store mapRest!5834 mapKey!5834 mapValue!5834))))

(declare-fun b!161134 () Bool)

(declare-fun e!105289 () Bool)

(declare-fun tp_is_empty!3431 () Bool)

(assert (=> b!161134 (= e!105289 tp_is_empty!3431)))

(declare-fun e!105291 () Bool)

(declare-fun e!105288 () Bool)

(declare-fun array_inv!1781 (array!5940) Bool)

(declare-fun array_inv!1782 (array!5942) Bool)

(assert (=> b!161135 (= e!105288 (and tp!13457 tp_is_empty!3431 (array_inv!1781 (_keys!5069 thiss!1248)) (array_inv!1782 (_values!3251 thiss!1248)) e!105291))))

(declare-fun b!161136 () Bool)

(assert (=> b!161136 (= e!105292 tp_is_empty!3431)))

(declare-fun b!161137 () Bool)

(declare-fun res!76433 () Bool)

(declare-fun e!105293 () Bool)

(assert (=> b!161137 (=> (not res!76433) (not e!105293))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!161137 (= res!76433 (validMask!0 (mask!7852 thiss!1248)))))

(declare-fun b!161138 () Bool)

(assert (=> b!161138 (= e!105293 false)))

(declare-fun lt!82178 () Bool)

(declare-datatypes ((List!1988 0))(
  ( (Nil!1985) (Cons!1984 (h!2597 (_ BitVec 64)) (t!6798 List!1988)) )
))
(declare-fun arrayNoDuplicates!0 (array!5940 (_ BitVec 32) List!1988) Bool)

(assert (=> b!161138 (= lt!82178 (arrayNoDuplicates!0 (_keys!5069 thiss!1248) #b00000000000000000000000000000000 Nil!1985))))

(declare-fun b!161139 () Bool)

(assert (=> b!161139 (= e!105291 (and e!105289 mapRes!5834))))

(declare-fun condMapEmpty!5834 () Bool)

(declare-fun mapDefault!5834 () ValueCell!1372)

