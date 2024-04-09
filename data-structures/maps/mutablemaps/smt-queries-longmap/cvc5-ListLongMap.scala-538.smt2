; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13694 () Bool)

(assert start!13694)

(declare-fun b!126021 () Bool)

(declare-fun b_free!2845 () Bool)

(declare-fun b_next!2845 () Bool)

(assert (=> b!126021 (= b_free!2845 (not b_next!2845))))

(declare-fun tp!10943 () Bool)

(declare-fun b_and!7765 () Bool)

(assert (=> b!126021 (= tp!10943 b_and!7765)))

(declare-fun b!126028 () Bool)

(declare-fun b_free!2847 () Bool)

(declare-fun b_next!2847 () Bool)

(assert (=> b!126028 (= b_free!2847 (not b_next!2847))))

(declare-fun tp!10942 () Bool)

(declare-fun b_and!7767 () Bool)

(assert (=> b!126028 (= tp!10942 b_and!7767)))

(declare-fun b!126018 () Bool)

(declare-fun e!82328 () Bool)

(declare-datatypes ((V!3433 0))(
  ( (V!3434 (val!1464 Int)) )
))
(declare-datatypes ((array!4694 0))(
  ( (array!4695 (arr!2222 (Array (_ BitVec 32) (_ BitVec 64))) (size!2486 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1076 0))(
  ( (ValueCellFull!1076 (v!3119 V!3433)) (EmptyCell!1076) )
))
(declare-datatypes ((array!4696 0))(
  ( (array!4697 (arr!2223 (Array (_ BitVec 32) ValueCell!1076)) (size!2487 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1060 0))(
  ( (LongMapFixedSize!1061 (defaultEntry!2782 Int) (mask!7038 (_ BitVec 32)) (extraKeys!2563 (_ BitVec 32)) (zeroValue!2645 V!3433) (minValue!2645 V!3433) (_size!579 (_ BitVec 32)) (_keys!4515 array!4694) (_values!2765 array!4696) (_vacant!579 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!852 0))(
  ( (Cell!853 (v!3120 LongMapFixedSize!1060)) )
))
(declare-datatypes ((LongMap!852 0))(
  ( (LongMap!853 (underlying!437 Cell!852)) )
))
(declare-fun thiss!992 () LongMap!852)

(assert (=> b!126018 (= e!82328 (and (= (size!2487 (_values!2765 (v!3120 (underlying!437 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!7038 (v!3120 (underlying!437 thiss!992))))) (not (= (size!2486 (_keys!4515 (v!3120 (underlying!437 thiss!992)))) (size!2487 (_values!2765 (v!3120 (underlying!437 thiss!992))))))))))

(declare-fun b!126019 () Bool)

(declare-fun e!82332 () Bool)

(declare-fun tp_is_empty!2839 () Bool)

(assert (=> b!126019 (= e!82332 tp_is_empty!2839)))

(declare-fun b!126020 () Bool)

(declare-fun res!60996 () Bool)

(declare-fun e!82323 () Bool)

(assert (=> b!126020 (=> (not res!60996) (not e!82323))))

(declare-fun newMap!16 () LongMapFixedSize!1060)

(assert (=> b!126020 (= res!60996 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7038 newMap!16)) (_size!579 (v!3120 (underlying!437 thiss!992)))))))

(declare-fun e!82336 () Bool)

(declare-fun e!82324 () Bool)

(declare-fun array_inv!1361 (array!4694) Bool)

(declare-fun array_inv!1362 (array!4696) Bool)

(assert (=> b!126021 (= e!82324 (and tp!10943 tp_is_empty!2839 (array_inv!1361 (_keys!4515 (v!3120 (underlying!437 thiss!992)))) (array_inv!1362 (_values!2765 (v!3120 (underlying!437 thiss!992)))) e!82336))))

(declare-fun b!126022 () Bool)

(declare-fun res!60993 () Bool)

(assert (=> b!126022 (=> (not res!60993) (not e!82323))))

(declare-fun valid!501 (LongMapFixedSize!1060) Bool)

(assert (=> b!126022 (= res!60993 (valid!501 newMap!16))))

(declare-fun mapNonEmpty!4493 () Bool)

(declare-fun mapRes!4493 () Bool)

(declare-fun tp!10944 () Bool)

(declare-fun e!82335 () Bool)

(assert (=> mapNonEmpty!4493 (= mapRes!4493 (and tp!10944 e!82335))))

(declare-fun mapValue!4493 () ValueCell!1076)

(declare-fun mapKey!4494 () (_ BitVec 32))

(declare-fun mapRest!4494 () (Array (_ BitVec 32) ValueCell!1076))

(assert (=> mapNonEmpty!4493 (= (arr!2223 (_values!2765 (v!3120 (underlying!437 thiss!992)))) (store mapRest!4494 mapKey!4494 mapValue!4493))))

(declare-fun b!126023 () Bool)

(declare-fun e!82326 () Bool)

(assert (=> b!126023 (= e!82326 e!82328)))

(declare-fun res!60994 () Bool)

(assert (=> b!126023 (=> (not res!60994) (not e!82328))))

(declare-datatypes ((tuple2!2564 0))(
  ( (tuple2!2565 (_1!1292 (_ BitVec 64)) (_2!1292 V!3433)) )
))
(declare-datatypes ((List!1718 0))(
  ( (Nil!1715) (Cons!1714 (h!2316 tuple2!2564) (t!6073 List!1718)) )
))
(declare-datatypes ((ListLongMap!1683 0))(
  ( (ListLongMap!1684 (toList!857 List!1718)) )
))
(declare-fun lt!65035 () ListLongMap!1683)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun contains!876 (ListLongMap!1683 (_ BitVec 64)) Bool)

(assert (=> b!126023 (= res!60994 (contains!876 lt!65035 (select (arr!2222 (_keys!4515 (v!3120 (underlying!437 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2566 0))(
  ( (tuple2!2567 (_1!1293 Bool) (_2!1293 LongMapFixedSize!1060)) )
))
(declare-fun lt!65034 () tuple2!2566)

(declare-fun update!182 (LongMapFixedSize!1060 (_ BitVec 64) V!3433) tuple2!2566)

(declare-fun get!1451 (ValueCell!1076 V!3433) V!3433)

(declare-fun dynLambda!415 (Int (_ BitVec 64)) V!3433)

(assert (=> b!126023 (= lt!65034 (update!182 newMap!16 (select (arr!2222 (_keys!4515 (v!3120 (underlying!437 thiss!992)))) from!355) (get!1451 (select (arr!2223 (_values!2765 (v!3120 (underlying!437 thiss!992)))) from!355) (dynLambda!415 (defaultEntry!2782 (v!3120 (underlying!437 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!126024 () Bool)

(declare-fun res!60995 () Bool)

(assert (=> b!126024 (=> (not res!60995) (not e!82328))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!126024 (= res!60995 (validMask!0 (mask!7038 (v!3120 (underlying!437 thiss!992)))))))

(declare-fun res!60990 () Bool)

(assert (=> start!13694 (=> (not res!60990) (not e!82323))))

(declare-fun valid!502 (LongMap!852) Bool)

(assert (=> start!13694 (= res!60990 (valid!502 thiss!992))))

(assert (=> start!13694 e!82323))

(declare-fun e!82322 () Bool)

(assert (=> start!13694 e!82322))

(assert (=> start!13694 true))

(declare-fun e!82334 () Bool)

(assert (=> start!13694 e!82334))

(declare-fun mapIsEmpty!4493 () Bool)

(declare-fun mapRes!4494 () Bool)

(assert (=> mapIsEmpty!4493 mapRes!4494))

(declare-fun b!126025 () Bool)

(declare-fun e!82327 () Bool)

(assert (=> b!126025 (= e!82327 e!82324)))

(declare-fun b!126026 () Bool)

(declare-fun e!82325 () Bool)

(assert (=> b!126026 (= e!82325 tp_is_empty!2839)))

(declare-fun mapIsEmpty!4494 () Bool)

(assert (=> mapIsEmpty!4494 mapRes!4493))

(declare-fun b!126027 () Bool)

(declare-fun res!60992 () Bool)

(assert (=> b!126027 (=> (not res!60992) (not e!82323))))

(assert (=> b!126027 (= res!60992 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2486 (_keys!4515 (v!3120 (underlying!437 thiss!992)))))))))

(declare-fun e!82330 () Bool)

(assert (=> b!126028 (= e!82334 (and tp!10942 tp_is_empty!2839 (array_inv!1361 (_keys!4515 newMap!16)) (array_inv!1362 (_values!2765 newMap!16)) e!82330))))

(declare-fun b!126029 () Bool)

(assert (=> b!126029 (= e!82323 e!82326)))

(declare-fun res!60991 () Bool)

(assert (=> b!126029 (=> (not res!60991) (not e!82326))))

(declare-fun lt!65036 () ListLongMap!1683)

(assert (=> b!126029 (= res!60991 (and (= lt!65036 lt!65035) (not (= (select (arr!2222 (_keys!4515 (v!3120 (underlying!437 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2222 (_keys!4515 (v!3120 (underlying!437 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1382 (LongMapFixedSize!1060) ListLongMap!1683)

(assert (=> b!126029 (= lt!65035 (map!1382 newMap!16))))

(declare-fun getCurrentListMap!529 (array!4694 array!4696 (_ BitVec 32) (_ BitVec 32) V!3433 V!3433 (_ BitVec 32) Int) ListLongMap!1683)

(assert (=> b!126029 (= lt!65036 (getCurrentListMap!529 (_keys!4515 (v!3120 (underlying!437 thiss!992))) (_values!2765 (v!3120 (underlying!437 thiss!992))) (mask!7038 (v!3120 (underlying!437 thiss!992))) (extraKeys!2563 (v!3120 (underlying!437 thiss!992))) (zeroValue!2645 (v!3120 (underlying!437 thiss!992))) (minValue!2645 (v!3120 (underlying!437 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2782 (v!3120 (underlying!437 thiss!992)))))))

(declare-fun b!126030 () Bool)

(assert (=> b!126030 (= e!82330 (and e!82325 mapRes!4494))))

(declare-fun condMapEmpty!4493 () Bool)

(declare-fun mapDefault!4493 () ValueCell!1076)

