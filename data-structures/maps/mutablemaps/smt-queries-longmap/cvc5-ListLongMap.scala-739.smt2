; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17238 () Bool)

(assert start!17238)

(declare-fun b!172742 () Bool)

(declare-fun b_free!4273 () Bool)

(declare-fun b_next!4273 () Bool)

(assert (=> b!172742 (= b_free!4273 (not b_next!4273))))

(declare-fun tp!15476 () Bool)

(declare-fun b_and!10731 () Bool)

(assert (=> b!172742 (= tp!15476 b_and!10731)))

(declare-fun b!172741 () Bool)

(declare-fun res!82037 () Bool)

(declare-fun e!114059 () Bool)

(assert (=> b!172741 (=> (not res!82037) (not e!114059))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!172741 (= res!82037 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!82036 () Bool)

(assert (=> start!17238 (=> (not res!82036) (not e!114059))))

(declare-datatypes ((V!5041 0))(
  ( (V!5042 (val!2067 Int)) )
))
(declare-datatypes ((ValueCell!1679 0))(
  ( (ValueCellFull!1679 (v!3931 V!5041)) (EmptyCell!1679) )
))
(declare-datatypes ((array!7216 0))(
  ( (array!7217 (arr!3428 (Array (_ BitVec 32) (_ BitVec 64))) (size!3727 (_ BitVec 32))) )
))
(declare-datatypes ((array!7218 0))(
  ( (array!7219 (arr!3429 (Array (_ BitVec 32) ValueCell!1679)) (size!3728 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2266 0))(
  ( (LongMapFixedSize!2267 (defaultEntry!3579 Int) (mask!8435 (_ BitVec 32)) (extraKeys!3318 (_ BitVec 32)) (zeroValue!3420 V!5041) (minValue!3422 V!5041) (_size!1182 (_ BitVec 32)) (_keys!5418 array!7216) (_values!3562 array!7218) (_vacant!1182 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2266)

(declare-fun valid!952 (LongMapFixedSize!2266) Bool)

(assert (=> start!17238 (= res!82036 (valid!952 thiss!1248))))

(assert (=> start!17238 e!114059))

(declare-fun e!114058 () Bool)

(assert (=> start!17238 e!114058))

(assert (=> start!17238 true))

(declare-fun tp_is_empty!4045 () Bool)

(declare-fun e!114057 () Bool)

(declare-fun array_inv!2187 (array!7216) Bool)

(declare-fun array_inv!2188 (array!7218) Bool)

(assert (=> b!172742 (= e!114058 (and tp!15476 tp_is_empty!4045 (array_inv!2187 (_keys!5418 thiss!1248)) (array_inv!2188 (_values!3562 thiss!1248)) e!114057))))

(declare-fun mapNonEmpty!6888 () Bool)

(declare-fun mapRes!6888 () Bool)

(declare-fun tp!15477 () Bool)

(declare-fun e!114060 () Bool)

(assert (=> mapNonEmpty!6888 (= mapRes!6888 (and tp!15477 e!114060))))

(declare-fun mapValue!6888 () ValueCell!1679)

(declare-fun mapRest!6888 () (Array (_ BitVec 32) ValueCell!1679))

(declare-fun mapKey!6888 () (_ BitVec 32))

(assert (=> mapNonEmpty!6888 (= (arr!3429 (_values!3562 thiss!1248)) (store mapRest!6888 mapKey!6888 mapValue!6888))))

(declare-fun b!172743 () Bool)

(assert (=> b!172743 (= e!114059 (and (= (size!3728 (_values!3562 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8435 thiss!1248))) (= (size!3727 (_keys!5418 thiss!1248)) (size!3728 (_values!3562 thiss!1248))) (bvsge (mask!8435 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3318 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3318 thiss!1248) #b00000000000000000000000000000011) (bvslt (bvor (extraKeys!3318 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!172744 () Bool)

(declare-fun e!114056 () Bool)

(assert (=> b!172744 (= e!114056 tp_is_empty!4045)))

(declare-fun b!172745 () Bool)

(assert (=> b!172745 (= e!114057 (and e!114056 mapRes!6888))))

(declare-fun condMapEmpty!6888 () Bool)

(declare-fun mapDefault!6888 () ValueCell!1679)

