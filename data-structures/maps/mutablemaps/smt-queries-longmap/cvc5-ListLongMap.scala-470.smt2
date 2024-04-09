; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!9218 () Bool)

(assert start!9218)

(declare-fun b!65430 () Bool)

(declare-fun b_free!2029 () Bool)

(declare-fun b_next!2029 () Bool)

(assert (=> b!65430 (= b_free!2029 (not b_next!2029))))

(declare-fun tp!8235 () Bool)

(declare-fun b_and!4001 () Bool)

(assert (=> b!65430 (= tp!8235 b_and!4001)))

(declare-fun b!65425 () Bool)

(declare-fun b_free!2031 () Bool)

(declare-fun b_next!2031 () Bool)

(assert (=> b!65425 (= b_free!2031 (not b_next!2031))))

(declare-fun tp!8236 () Bool)

(declare-fun b_and!4003 () Bool)

(assert (=> b!65425 (= tp!8236 b_and!4003)))

(declare-fun b!65418 () Bool)

(declare-fun e!42855 () Bool)

(declare-fun e!42851 () Bool)

(assert (=> b!65418 (= e!42855 e!42851)))

(declare-fun res!35572 () Bool)

(assert (=> b!65418 (=> (not res!35572) (not e!42851))))

(declare-datatypes ((V!2889 0))(
  ( (V!2890 (val!1260 Int)) )
))
(declare-datatypes ((array!3798 0))(
  ( (array!3799 (arr!1814 (Array (_ BitVec 32) (_ BitVec 64))) (size!2049 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!872 0))(
  ( (ValueCellFull!872 (v!2456 V!2889)) (EmptyCell!872) )
))
(declare-datatypes ((array!3800 0))(
  ( (array!3801 (arr!1815 (Array (_ BitVec 32) ValueCell!872)) (size!2050 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!652 0))(
  ( (LongMapFixedSize!653 (defaultEntry!2134 Int) (mask!6062 (_ BitVec 32)) (extraKeys!2005 (_ BitVec 32)) (zeroValue!2042 V!2889) (minValue!2042 V!2889) (_size!375 (_ BitVec 32)) (_keys!3774 array!3798) (_values!2117 array!3800) (_vacant!375 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!462 0))(
  ( (Cell!463 (v!2457 LongMapFixedSize!652)) )
))
(declare-datatypes ((LongMap!462 0))(
  ( (LongMap!463 (underlying!242 Cell!462)) )
))
(declare-fun thiss!992 () LongMap!462)

(declare-datatypes ((tuple2!2090 0))(
  ( (tuple2!2091 (_1!1055 (_ BitVec 64)) (_2!1055 V!2889)) )
))
(declare-datatypes ((List!1478 0))(
  ( (Nil!1475) (Cons!1474 (h!2058 tuple2!2090) (t!4924 List!1478)) )
))
(declare-datatypes ((ListLongMap!1403 0))(
  ( (ListLongMap!1404 (toList!717 List!1478)) )
))
(declare-fun lt!28000 () ListLongMap!1403)

(declare-fun lt!27995 () ListLongMap!1403)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!65418 (= res!35572 (and (= lt!28000 lt!27995) (not (= (select (arr!1814 (_keys!3774 (v!2457 (underlying!242 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1814 (_keys!3774 (v!2457 (underlying!242 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun newMap!16 () LongMapFixedSize!652)

(declare-fun map!1131 (LongMapFixedSize!652) ListLongMap!1403)

(assert (=> b!65418 (= lt!27995 (map!1131 newMap!16))))

(declare-fun getCurrentListMap!413 (array!3798 array!3800 (_ BitVec 32) (_ BitVec 32) V!2889 V!2889 (_ BitVec 32) Int) ListLongMap!1403)

(assert (=> b!65418 (= lt!28000 (getCurrentListMap!413 (_keys!3774 (v!2457 (underlying!242 thiss!992))) (_values!2117 (v!2457 (underlying!242 thiss!992))) (mask!6062 (v!2457 (underlying!242 thiss!992))) (extraKeys!2005 (v!2457 (underlying!242 thiss!992))) (zeroValue!2042 (v!2457 (underlying!242 thiss!992))) (minValue!2042 (v!2457 (underlying!242 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2134 (v!2457 (underlying!242 thiss!992)))))))

(declare-fun b!65419 () Bool)

(declare-fun e!42850 () Bool)

(declare-fun e!42858 () Bool)

(declare-fun mapRes!3011 () Bool)

(assert (=> b!65419 (= e!42850 (and e!42858 mapRes!3011))))

(declare-fun condMapEmpty!3012 () Bool)

(declare-fun mapDefault!3011 () ValueCell!872)

