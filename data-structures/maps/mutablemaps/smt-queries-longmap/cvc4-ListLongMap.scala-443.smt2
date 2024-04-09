; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8286 () Bool)

(assert start!8286)

(declare-fun b!53346 () Bool)

(declare-fun b_free!1713 () Bool)

(declare-fun b_next!1713 () Bool)

(assert (=> b!53346 (= b_free!1713 (not b_next!1713))))

(declare-fun tp!7241 () Bool)

(declare-fun b_and!2977 () Bool)

(assert (=> b!53346 (= tp!7241 b_and!2977)))

(declare-fun b!53353 () Bool)

(declare-fun b_free!1715 () Bool)

(declare-fun b_next!1715 () Bool)

(assert (=> b!53353 (= b_free!1715 (not b_next!1715))))

(declare-fun tp!7242 () Bool)

(declare-fun b_and!2979 () Bool)

(assert (=> b!53353 (= tp!7242 b_and!2979)))

(declare-fun b!53333 () Bool)

(declare-fun res!30243 () Bool)

(declare-fun e!34791 () Bool)

(assert (=> b!53333 (=> (not res!30243) (not e!34791))))

(declare-datatypes ((V!2677 0))(
  ( (V!2678 (val!1181 Int)) )
))
(declare-datatypes ((array!3468 0))(
  ( (array!3469 (arr!1656 (Array (_ BitVec 32) (_ BitVec 64))) (size!1885 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!793 0))(
  ( (ValueCellFull!793 (v!2246 V!2677)) (EmptyCell!793) )
))
(declare-datatypes ((array!3470 0))(
  ( (array!3471 (arr!1657 (Array (_ BitVec 32) ValueCell!793)) (size!1886 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!494 0))(
  ( (LongMapFixedSize!495 (defaultEntry!1961 Int) (mask!5794 (_ BitVec 32)) (extraKeys!1852 (_ BitVec 32)) (zeroValue!1879 V!2677) (minValue!1879 V!2677) (_size!296 (_ BitVec 32)) (_keys!3581 array!3468) (_values!1944 array!3470) (_vacant!296 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!494)

(declare-fun valid!183 (LongMapFixedSize!494) Bool)

(assert (=> b!53333 (= res!30243 (valid!183 newMap!16))))

(declare-fun b!53335 () Bool)

(declare-fun e!34787 () Bool)

(declare-fun e!34792 () Bool)

(assert (=> b!53335 (= e!34787 e!34792)))

(declare-fun b!53336 () Bool)

(declare-fun e!34790 () Bool)

(assert (=> b!53336 (= e!34791 e!34790)))

(declare-fun res!30239 () Bool)

(assert (=> b!53336 (=> (not res!30239) (not e!34790))))

(declare-datatypes ((Cell!308 0))(
  ( (Cell!309 (v!2247 LongMapFixedSize!494)) )
))
(declare-datatypes ((LongMap!308 0))(
  ( (LongMap!309 (underlying!165 Cell!308)) )
))
(declare-fun thiss!992 () LongMap!308)

(declare-datatypes ((tuple2!1882 0))(
  ( (tuple2!1883 (_1!951 (_ BitVec 64)) (_2!951 V!2677)) )
))
(declare-datatypes ((List!1373 0))(
  ( (Nil!1370) (Cons!1369 (h!1949 tuple2!1882) (t!4463 List!1373)) )
))
(declare-datatypes ((ListLongMap!1289 0))(
  ( (ListLongMap!1290 (toList!660 List!1373)) )
))
(declare-fun lt!21450 () ListLongMap!1289)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lt!21451 () ListLongMap!1289)

(assert (=> b!53336 (= res!30239 (and (= lt!21450 lt!21451) (not (= (select (arr!1656 (_keys!3581 (v!2247 (underlying!165 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1656 (_keys!3581 (v!2247 (underlying!165 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1032 (LongMapFixedSize!494) ListLongMap!1289)

(assert (=> b!53336 (= lt!21451 (map!1032 newMap!16))))

(declare-fun getCurrentListMap!368 (array!3468 array!3470 (_ BitVec 32) (_ BitVec 32) V!2677 V!2677 (_ BitVec 32) Int) ListLongMap!1289)

(assert (=> b!53336 (= lt!21450 (getCurrentListMap!368 (_keys!3581 (v!2247 (underlying!165 thiss!992))) (_values!1944 (v!2247 (underlying!165 thiss!992))) (mask!5794 (v!2247 (underlying!165 thiss!992))) (extraKeys!1852 (v!2247 (underlying!165 thiss!992))) (zeroValue!1879 (v!2247 (underlying!165 thiss!992))) (minValue!1879 (v!2247 (underlying!165 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1961 (v!2247 (underlying!165 thiss!992)))))))

(declare-fun mapNonEmpty!2489 () Bool)

(declare-fun mapRes!2489 () Bool)

(declare-fun tp!7240 () Bool)

(declare-fun e!34795 () Bool)

(assert (=> mapNonEmpty!2489 (= mapRes!2489 (and tp!7240 e!34795))))

(declare-fun mapRest!2490 () (Array (_ BitVec 32) ValueCell!793))

(declare-fun mapValue!2490 () ValueCell!793)

(declare-fun mapKey!2489 () (_ BitVec 32))

(assert (=> mapNonEmpty!2489 (= (arr!1657 (_values!1944 newMap!16)) (store mapRest!2490 mapKey!2489 mapValue!2490))))

(declare-fun b!53337 () Bool)

(declare-fun e!34796 () Bool)

(declare-fun e!34785 () Bool)

(declare-fun mapRes!2490 () Bool)

(assert (=> b!53337 (= e!34796 (and e!34785 mapRes!2490))))

(declare-fun condMapEmpty!2489 () Bool)

(declare-fun mapDefault!2489 () ValueCell!793)

