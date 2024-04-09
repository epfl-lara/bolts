; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15574 () Bool)

(assert start!15574)

(declare-fun b!154772 () Bool)

(declare-fun b_free!3229 () Bool)

(declare-fun b_next!3229 () Bool)

(assert (=> b!154772 (= b_free!3229 (not b_next!3229))))

(declare-fun tp!12211 () Bool)

(declare-fun b_and!9661 () Bool)

(assert (=> b!154772 (= tp!12211 b_and!9661)))

(declare-fun b!154771 () Bool)

(declare-fun e!101118 () Bool)

(assert (=> b!154771 (= e!101118 false)))

(declare-fun lt!81317 () Bool)

(declare-datatypes ((V!3689 0))(
  ( (V!3690 (val!1560 Int)) )
))
(declare-datatypes ((ValueCell!1172 0))(
  ( (ValueCellFull!1172 (v!3421 V!3689)) (EmptyCell!1172) )
))
(declare-datatypes ((array!5114 0))(
  ( (array!5115 (arr!2414 (Array (_ BitVec 32) (_ BitVec 64))) (size!2692 (_ BitVec 32))) )
))
(declare-datatypes ((array!5116 0))(
  ( (array!5117 (arr!2415 (Array (_ BitVec 32) ValueCell!1172)) (size!2693 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1252 0))(
  ( (LongMapFixedSize!1253 (defaultEntry!3068 Int) (mask!7477 (_ BitVec 32)) (extraKeys!2809 (_ BitVec 32)) (zeroValue!2911 V!3689) (minValue!2911 V!3689) (_size!675 (_ BitVec 32)) (_keys!4843 array!5114) (_values!3051 array!5116) (_vacant!675 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1252)

(declare-datatypes ((List!1825 0))(
  ( (Nil!1822) (Cons!1821 (h!2430 (_ BitVec 64)) (t!6635 List!1825)) )
))
(declare-fun arrayNoDuplicates!0 (array!5114 (_ BitVec 32) List!1825) Bool)

(assert (=> b!154771 (= lt!81317 (arrayNoDuplicates!0 (_keys!4843 thiss!1248) #b00000000000000000000000000000000 Nil!1822))))

(declare-fun mapNonEmpty!5189 () Bool)

(declare-fun mapRes!5189 () Bool)

(declare-fun tp!12212 () Bool)

(declare-fun e!101120 () Bool)

(assert (=> mapNonEmpty!5189 (= mapRes!5189 (and tp!12212 e!101120))))

(declare-fun mapKey!5189 () (_ BitVec 32))

(declare-fun mapValue!5189 () ValueCell!1172)

(declare-fun mapRest!5189 () (Array (_ BitVec 32) ValueCell!1172))

(assert (=> mapNonEmpty!5189 (= (arr!2415 (_values!3051 thiss!1248)) (store mapRest!5189 mapKey!5189 mapValue!5189))))

(declare-fun e!101117 () Bool)

(declare-fun tp_is_empty!3031 () Bool)

(declare-fun e!101116 () Bool)

(declare-fun array_inv!1499 (array!5114) Bool)

(declare-fun array_inv!1500 (array!5116) Bool)

(assert (=> b!154772 (= e!101117 (and tp!12211 tp_is_empty!3031 (array_inv!1499 (_keys!4843 thiss!1248)) (array_inv!1500 (_values!3051 thiss!1248)) e!101116))))

(declare-fun b!154773 () Bool)

(declare-fun res!73063 () Bool)

(assert (=> b!154773 (=> (not res!73063) (not e!101118))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!154773 (= res!73063 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!154774 () Bool)

(declare-fun res!73061 () Bool)

(assert (=> b!154774 (=> (not res!73061) (not e!101118))))

(assert (=> b!154774 (= res!73061 (and (= (size!2693 (_values!3051 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7477 thiss!1248))) (= (size!2692 (_keys!4843 thiss!1248)) (size!2693 (_values!3051 thiss!1248))) (bvsge (mask!7477 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2809 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2809 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2809 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2809 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!2809 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!2809 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!2809 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!154776 () Bool)

(declare-fun e!101115 () Bool)

(assert (=> b!154776 (= e!101116 (and e!101115 mapRes!5189))))

(declare-fun condMapEmpty!5189 () Bool)

(declare-fun mapDefault!5189 () ValueCell!1172)

