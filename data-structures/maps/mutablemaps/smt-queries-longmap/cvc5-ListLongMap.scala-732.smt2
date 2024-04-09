; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17018 () Bool)

(assert start!17018)

(declare-fun b!170817 () Bool)

(declare-fun b_free!4231 () Bool)

(declare-fun b_next!4231 () Bool)

(assert (=> b!170817 (= b_free!4231 (not b_next!4231))))

(declare-fun tp!15322 () Bool)

(declare-fun b_and!10663 () Bool)

(assert (=> b!170817 (= tp!15322 b_and!10663)))

(declare-fun res!81224 () Bool)

(declare-fun e!112769 () Bool)

(assert (=> start!17018 (=> (not res!81224) (not e!112769))))

(declare-datatypes ((V!4985 0))(
  ( (V!4986 (val!2046 Int)) )
))
(declare-datatypes ((ValueCell!1658 0))(
  ( (ValueCellFull!1658 (v!3907 V!4985)) (EmptyCell!1658) )
))
(declare-datatypes ((array!7118 0))(
  ( (array!7119 (arr!3386 (Array (_ BitVec 32) (_ BitVec 64))) (size!3679 (_ BitVec 32))) )
))
(declare-datatypes ((array!7120 0))(
  ( (array!7121 (arr!3387 (Array (_ BitVec 32) ValueCell!1658)) (size!3680 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2224 0))(
  ( (LongMapFixedSize!2225 (defaultEntry!3554 Int) (mask!8382 (_ BitVec 32)) (extraKeys!3295 (_ BitVec 32)) (zeroValue!3397 V!4985) (minValue!3397 V!4985) (_size!1161 (_ BitVec 32)) (_keys!5386 array!7118) (_values!3537 array!7120) (_vacant!1161 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2224)

(declare-fun valid!938 (LongMapFixedSize!2224) Bool)

(assert (=> start!17018 (= res!81224 (valid!938 thiss!1248))))

(assert (=> start!17018 e!112769))

(declare-fun e!112772 () Bool)

(assert (=> start!17018 e!112772))

(assert (=> start!17018 true))

(declare-fun tp_is_empty!4003 () Bool)

(assert (=> start!17018 tp_is_empty!4003))

(declare-fun b!170816 () Bool)

(declare-fun e!112768 () Bool)

(assert (=> b!170816 (= e!112768 tp_is_empty!4003)))

(declare-fun e!112770 () Bool)

(declare-fun array_inv!2157 (array!7118) Bool)

(declare-fun array_inv!2158 (array!7120) Bool)

(assert (=> b!170817 (= e!112772 (and tp!15322 tp_is_empty!4003 (array_inv!2157 (_keys!5386 thiss!1248)) (array_inv!2158 (_values!3537 thiss!1248)) e!112770))))

(declare-fun b!170818 () Bool)

(declare-fun res!81225 () Bool)

(assert (=> b!170818 (=> (not res!81225) (not e!112769))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!170818 (= res!81225 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!112773 () Bool)

(declare-datatypes ((tuple2!3228 0))(
  ( (tuple2!3229 (_1!1624 (_ BitVec 64)) (_2!1624 V!4985)) )
))
(declare-datatypes ((List!2212 0))(
  ( (Nil!2209) (Cons!2208 (h!2825 tuple2!3228) (t!7022 List!2212)) )
))
(declare-datatypes ((ListLongMap!2169 0))(
  ( (ListLongMap!2170 (toList!1100 List!2212)) )
))
(declare-fun lt!85058 () ListLongMap!2169)

(declare-fun b!170819 () Bool)

(declare-fun v!309 () V!4985)

(declare-fun +!238 (ListLongMap!2169 tuple2!3228) ListLongMap!2169)

(declare-fun map!1851 (LongMapFixedSize!2224) ListLongMap!2169)

(assert (=> b!170819 (= e!112773 (= lt!85058 (+!238 (map!1851 thiss!1248) (tuple2!3229 key!828 v!309))))))

(declare-fun b!170820 () Bool)

(declare-fun e!112775 () Bool)

(assert (=> b!170820 (= e!112775 e!112773)))

(declare-fun res!81223 () Bool)

(assert (=> b!170820 (=> (not res!81223) (not e!112773))))

(declare-fun contains!1142 (ListLongMap!2169 (_ BitVec 64)) Bool)

(assert (=> b!170820 (= res!81223 (contains!1142 lt!85058 key!828))))

(declare-fun lt!85056 () LongMapFixedSize!2224)

(assert (=> b!170820 (= lt!85058 (map!1851 lt!85056))))

(declare-fun b!170821 () Bool)

(assert (=> b!170821 (= e!112769 (not e!112775))))

(declare-fun res!81222 () Bool)

(assert (=> b!170821 (=> (not res!81222) (not e!112775))))

(assert (=> b!170821 (= res!81222 (valid!938 lt!85056))))

(assert (=> b!170821 (= lt!85056 (LongMapFixedSize!2225 (defaultEntry!3554 thiss!1248) (mask!8382 thiss!1248) (bvor (extraKeys!3295 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!3397 thiss!1248) (_size!1161 thiss!1248) (_keys!5386 thiss!1248) (_values!3537 thiss!1248) (_vacant!1161 thiss!1248)))))

(declare-fun getCurrentListMap!749 (array!7118 array!7120 (_ BitVec 32) (_ BitVec 32) V!4985 V!4985 (_ BitVec 32) Int) ListLongMap!2169)

(assert (=> b!170821 (= (+!238 (getCurrentListMap!749 (_keys!5386 thiss!1248) (_values!3537 thiss!1248) (mask!8382 thiss!1248) (extraKeys!3295 thiss!1248) (zeroValue!3397 thiss!1248) (minValue!3397 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3554 thiss!1248)) (tuple2!3229 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!749 (_keys!5386 thiss!1248) (_values!3537 thiss!1248) (mask!8382 thiss!1248) (bvor (extraKeys!3295 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!3397 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3554 thiss!1248)))))

(declare-datatypes ((Unit!5247 0))(
  ( (Unit!5248) )
))
(declare-fun lt!85057 () Unit!5247)

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!84 (array!7118 array!7120 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!4985 V!4985 V!4985 Int) Unit!5247)

(assert (=> b!170821 (= lt!85057 (lemmaChangeZeroKeyThenAddPairToListMap!84 (_keys!5386 thiss!1248) (_values!3537 thiss!1248) (mask!8382 thiss!1248) (extraKeys!3295 thiss!1248) (bvor (extraKeys!3295 thiss!1248) #b00000000000000000000000000000001) (zeroValue!3397 thiss!1248) v!309 (minValue!3397 thiss!1248) (defaultEntry!3554 thiss!1248)))))

(declare-fun mapNonEmpty!6797 () Bool)

(declare-fun mapRes!6797 () Bool)

(declare-fun tp!15323 () Bool)

(declare-fun e!112771 () Bool)

(assert (=> mapNonEmpty!6797 (= mapRes!6797 (and tp!15323 e!112771))))

(declare-fun mapValue!6797 () ValueCell!1658)

(declare-fun mapKey!6797 () (_ BitVec 32))

(declare-fun mapRest!6797 () (Array (_ BitVec 32) ValueCell!1658))

(assert (=> mapNonEmpty!6797 (= (arr!3387 (_values!3537 thiss!1248)) (store mapRest!6797 mapKey!6797 mapValue!6797))))

(declare-fun b!170822 () Bool)

(assert (=> b!170822 (= e!112770 (and e!112768 mapRes!6797))))

(declare-fun condMapEmpty!6797 () Bool)

(declare-fun mapDefault!6797 () ValueCell!1658)

