; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8270 () Bool)

(assert start!8270)

(declare-fun b!52830 () Bool)

(declare-fun b_free!1681 () Bool)

(declare-fun b_next!1681 () Bool)

(assert (=> b!52830 (= b_free!1681 (not b_next!1681))))

(declare-fun tp!7144 () Bool)

(declare-fun b_and!2913 () Bool)

(assert (=> b!52830 (= tp!7144 b_and!2913)))

(declare-fun b!52816 () Bool)

(declare-fun b_free!1683 () Bool)

(declare-fun b_next!1683 () Bool)

(assert (=> b!52816 (= b_free!1683 (not b_next!1683))))

(declare-fun tp!7143 () Bool)

(declare-fun b_and!2915 () Bool)

(assert (=> b!52816 (= tp!7143 b_and!2915)))

(declare-fun b!52813 () Bool)

(declare-fun e!34432 () Bool)

(declare-fun tp_is_empty!2257 () Bool)

(assert (=> b!52813 (= e!34432 tp_is_empty!2257)))

(declare-fun b!52814 () Bool)

(declare-fun e!34426 () Bool)

(declare-fun e!34431 () Bool)

(assert (=> b!52814 (= e!34426 e!34431)))

(declare-fun b!52815 () Bool)

(declare-fun e!34439 () Bool)

(assert (=> b!52815 (= e!34439 tp_is_empty!2257)))

(declare-fun e!34436 () Bool)

(declare-datatypes ((V!2657 0))(
  ( (V!2658 (val!1173 Int)) )
))
(declare-datatypes ((array!3436 0))(
  ( (array!3437 (arr!1640 (Array (_ BitVec 32) (_ BitVec 64))) (size!1869 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!785 0))(
  ( (ValueCellFull!785 (v!2231 V!2657)) (EmptyCell!785) )
))
(declare-datatypes ((array!3438 0))(
  ( (array!3439 (arr!1641 (Array (_ BitVec 32) ValueCell!785)) (size!1870 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!478 0))(
  ( (LongMapFixedSize!479 (defaultEntry!1953 Int) (mask!5782 (_ BitVec 32)) (extraKeys!1844 (_ BitVec 32)) (zeroValue!1871 V!2657) (minValue!1871 V!2657) (_size!288 (_ BitVec 32)) (_keys!3573 array!3436) (_values!1936 array!3438) (_vacant!288 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!478)

(declare-fun e!34437 () Bool)

(declare-fun array_inv!959 (array!3436) Bool)

(declare-fun array_inv!960 (array!3438) Bool)

(assert (=> b!52816 (= e!34436 (and tp!7143 tp_is_empty!2257 (array_inv!959 (_keys!3573 newMap!16)) (array_inv!960 (_values!1936 newMap!16)) e!34437))))

(declare-fun b!52817 () Bool)

(declare-fun res!29978 () Bool)

(declare-fun e!34438 () Bool)

(assert (=> b!52817 (=> (not res!29978) (not e!34438))))

(declare-datatypes ((Cell!294 0))(
  ( (Cell!295 (v!2232 LongMapFixedSize!478)) )
))
(declare-datatypes ((LongMap!294 0))(
  ( (LongMap!295 (underlying!158 Cell!294)) )
))
(declare-fun thiss!992 () LongMap!294)

(assert (=> b!52817 (= res!29978 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5782 newMap!16)) (_size!288 (v!2232 (underlying!158 thiss!992)))))))

(declare-fun b!52819 () Bool)

(declare-fun e!34434 () Bool)

(declare-fun e!34425 () Bool)

(assert (=> b!52819 (= e!34434 e!34425)))

(declare-fun res!29982 () Bool)

(assert (=> b!52819 (=> (not res!29982) (not e!34425))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((tuple2!1866 0))(
  ( (tuple2!1867 (_1!943 (_ BitVec 64)) (_2!943 V!2657)) )
))
(declare-datatypes ((List!1365 0))(
  ( (Nil!1362) (Cons!1361 (h!1941 tuple2!1866) (t!4423 List!1365)) )
))
(declare-datatypes ((ListLongMap!1281 0))(
  ( (ListLongMap!1282 (toList!656 List!1365)) )
))
(declare-fun lt!21352 () ListLongMap!1281)

(declare-fun contains!628 (ListLongMap!1281 (_ BitVec 64)) Bool)

(assert (=> b!52819 (= res!29982 (contains!628 lt!21352 (select (arr!1640 (_keys!3573 (v!2232 (underlying!158 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!1868 0))(
  ( (tuple2!1869 (_1!944 Bool) (_2!944 LongMapFixedSize!478)) )
))
(declare-fun lt!21354 () tuple2!1868)

(declare-fun update!42 (LongMapFixedSize!478 (_ BitVec 64) V!2657) tuple2!1868)

(declare-fun get!987 (ValueCell!785 V!2657) V!2657)

(declare-fun dynLambda!270 (Int (_ BitVec 64)) V!2657)

(assert (=> b!52819 (= lt!21354 (update!42 newMap!16 (select (arr!1640 (_keys!3573 (v!2232 (underlying!158 thiss!992)))) from!355) (get!987 (select (arr!1641 (_values!1936 (v!2232 (underlying!158 thiss!992)))) from!355) (dynLambda!270 (defaultEntry!1953 (v!2232 (underlying!158 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!52820 () Bool)

(declare-fun e!34430 () Bool)

(assert (=> b!52820 (= e!34430 tp_is_empty!2257)))

(declare-fun b!52821 () Bool)

(declare-fun res!29977 () Bool)

(assert (=> b!52821 (=> (not res!29977) (not e!34425))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!52821 (= res!29977 (validMask!0 (mask!5782 (v!2232 (underlying!158 thiss!992)))))))

(declare-fun b!52822 () Bool)

(declare-fun res!29973 () Bool)

(assert (=> b!52822 (=> (not res!29973) (not e!34438))))

(declare-fun valid!173 (LongMapFixedSize!478) Bool)

(assert (=> b!52822 (= res!29973 (valid!173 newMap!16))))

(declare-fun b!52823 () Bool)

(declare-fun res!29981 () Bool)

(assert (=> b!52823 (=> (not res!29981) (not e!34425))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3436 (_ BitVec 32)) Bool)

(assert (=> b!52823 (= res!29981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3573 (v!2232 (underlying!158 thiss!992))) (mask!5782 (v!2232 (underlying!158 thiss!992)))))))

(declare-fun b!52824 () Bool)

(declare-fun e!34429 () Bool)

(assert (=> b!52824 (= e!34429 tp_is_empty!2257)))

(declare-fun b!52825 () Bool)

(declare-fun res!29974 () Bool)

(assert (=> b!52825 (=> (not res!29974) (not e!34425))))

(assert (=> b!52825 (= res!29974 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!1869 (_keys!3573 (v!2232 (underlying!158 thiss!992)))))))))

(declare-fun mapIsEmpty!2441 () Bool)

(declare-fun mapRes!2442 () Bool)

(assert (=> mapIsEmpty!2441 mapRes!2442))

(declare-fun b!52826 () Bool)

(declare-fun res!29980 () Bool)

(assert (=> b!52826 (=> (not res!29980) (not e!34438))))

(assert (=> b!52826 (= res!29980 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1869 (_keys!3573 (v!2232 (underlying!158 thiss!992)))))))))

(declare-fun mapIsEmpty!2442 () Bool)

(declare-fun mapRes!2441 () Bool)

(assert (=> mapIsEmpty!2442 mapRes!2441))

(declare-fun b!52827 () Bool)

(declare-fun e!34433 () Bool)

(assert (=> b!52827 (= e!34433 (and e!34432 mapRes!2442))))

(declare-fun condMapEmpty!2441 () Bool)

(declare-fun mapDefault!2441 () ValueCell!785)

