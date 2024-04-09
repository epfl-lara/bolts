; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8288 () Bool)

(assert start!8288)

(declare-fun b!53417 () Bool)

(declare-fun b_free!1717 () Bool)

(declare-fun b_next!1717 () Bool)

(assert (=> b!53417 (= b_free!1717 (not b_next!1717))))

(declare-fun tp!7251 () Bool)

(declare-fun b_and!2985 () Bool)

(assert (=> b!53417 (= tp!7251 b_and!2985)))

(declare-fun b!53405 () Bool)

(declare-fun b_free!1719 () Bool)

(declare-fun b_next!1719 () Bool)

(assert (=> b!53405 (= b_free!1719 (not b_next!1719))))

(declare-fun tp!7252 () Bool)

(declare-fun b_and!2987 () Bool)

(assert (=> b!53405 (= tp!7252 b_and!2987)))

(declare-fun b!53398 () Bool)

(declare-fun res!30279 () Bool)

(declare-fun e!34843 () Bool)

(assert (=> b!53398 (=> (not res!30279) (not e!34843))))

(declare-datatypes ((V!2681 0))(
  ( (V!2682 (val!1182 Int)) )
))
(declare-datatypes ((array!3472 0))(
  ( (array!3473 (arr!1658 (Array (_ BitVec 32) (_ BitVec 64))) (size!1887 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!794 0))(
  ( (ValueCellFull!794 (v!2248 V!2681)) (EmptyCell!794) )
))
(declare-datatypes ((array!3474 0))(
  ( (array!3475 (arr!1659 (Array (_ BitVec 32) ValueCell!794)) (size!1888 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!496 0))(
  ( (LongMapFixedSize!497 (defaultEntry!1962 Int) (mask!5797 (_ BitVec 32)) (extraKeys!1853 (_ BitVec 32)) (zeroValue!1880 V!2681) (minValue!1880 V!2681) (_size!297 (_ BitVec 32)) (_keys!3582 array!3472) (_values!1945 array!3474) (_vacant!297 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!310 0))(
  ( (Cell!311 (v!2249 LongMapFixedSize!496)) )
))
(declare-datatypes ((LongMap!310 0))(
  ( (LongMap!311 (underlying!166 Cell!310)) )
))
(declare-fun thiss!992 () LongMap!310)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3472 (_ BitVec 32)) Bool)

(assert (=> b!53398 (= res!30279 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3582 (v!2249 (underlying!166 thiss!992))) (mask!5797 (v!2249 (underlying!166 thiss!992)))))))

(declare-fun b!53399 () Bool)

(assert (=> b!53399 (= e!34843 false)))

(declare-fun lt!21461 () Bool)

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((tuple2!1884 0))(
  ( (tuple2!1885 (_1!952 (_ BitVec 64)) (_2!952 V!2681)) )
))
(declare-datatypes ((List!1374 0))(
  ( (Nil!1371) (Cons!1370 (h!1950 tuple2!1884) (t!4468 List!1374)) )
))
(declare-datatypes ((ListLongMap!1291 0))(
  ( (ListLongMap!1292 (toList!661 List!1374)) )
))
(declare-fun lt!21462 () ListLongMap!1291)

(declare-fun contains!632 (ListLongMap!1291 (_ BitVec 64)) Bool)

(assert (=> b!53399 (= lt!21461 (contains!632 lt!21462 (select (arr!1658 (_keys!3582 (v!2249 (underlying!166 thiss!992)))) from!355)))))

(declare-fun b!53400 () Bool)

(declare-fun res!30275 () Bool)

(declare-fun e!34836 () Bool)

(assert (=> b!53400 (=> (not res!30275) (not e!34836))))

(assert (=> b!53400 (= res!30275 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1887 (_keys!3582 (v!2249 (underlying!166 thiss!992)))))))))

(declare-fun b!53401 () Bool)

(declare-fun res!30274 () Bool)

(assert (=> b!53401 (=> (not res!30274) (not e!34836))))

(declare-fun newMap!16 () LongMapFixedSize!496)

(assert (=> b!53401 (= res!30274 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5797 newMap!16)) (_size!297 (v!2249 (underlying!166 thiss!992)))))))

(declare-fun b!53402 () Bool)

(declare-fun res!30272 () Bool)

(assert (=> b!53402 (=> (not res!30272) (not e!34843))))

(declare-datatypes ((List!1375 0))(
  ( (Nil!1372) (Cons!1371 (h!1951 (_ BitVec 64)) (t!4469 List!1375)) )
))
(declare-fun arrayNoDuplicates!0 (array!3472 (_ BitVec 32) List!1375) Bool)

(assert (=> b!53402 (= res!30272 (arrayNoDuplicates!0 (_keys!3582 (v!2249 (underlying!166 thiss!992))) #b00000000000000000000000000000000 Nil!1372))))

(declare-fun b!53403 () Bool)

(declare-fun res!30271 () Bool)

(assert (=> b!53403 (=> (not res!30271) (not e!34843))))

(assert (=> b!53403 (= res!30271 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!1887 (_keys!3582 (v!2249 (underlying!166 thiss!992)))))))))

(declare-fun b!53404 () Bool)

(declare-fun e!34842 () Bool)

(declare-fun e!34832 () Bool)

(declare-fun mapRes!2496 () Bool)

(assert (=> b!53404 (= e!34842 (and e!34832 mapRes!2496))))

(declare-fun condMapEmpty!2495 () Bool)

(declare-fun mapDefault!2495 () ValueCell!794)

