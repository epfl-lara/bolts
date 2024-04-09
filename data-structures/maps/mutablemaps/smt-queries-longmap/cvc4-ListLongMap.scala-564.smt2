; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15278 () Bool)

(assert start!15278)

(declare-fun b!147595 () Bool)

(declare-fun b_free!3165 () Bool)

(declare-fun b_next!3165 () Bool)

(assert (=> b!147595 (= b_free!3165 (not b_next!3165))))

(declare-fun tp!12002 () Bool)

(declare-fun b_and!9293 () Bool)

(assert (=> b!147595 (= tp!12002 b_and!9293)))

(declare-fun b!147602 () Bool)

(declare-fun b_free!3167 () Bool)

(declare-fun b_next!3167 () Bool)

(assert (=> b!147602 (= b_free!3167 (not b_next!3167))))

(declare-fun tp!12001 () Bool)

(declare-fun b_and!9295 () Bool)

(assert (=> b!147602 (= tp!12001 b_and!9295)))

(declare-fun res!70103 () Bool)

(declare-fun e!96421 () Bool)

(assert (=> start!15278 (=> (not res!70103) (not e!96421))))

(declare-datatypes ((V!3645 0))(
  ( (V!3646 (val!1544 Int)) )
))
(declare-datatypes ((array!5044 0))(
  ( (array!5045 (arr!2382 (Array (_ BitVec 32) (_ BitVec 64))) (size!2658 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1156 0))(
  ( (ValueCellFull!1156 (v!3378 V!3645)) (EmptyCell!1156) )
))
(declare-datatypes ((array!5046 0))(
  ( (array!5047 (arr!2383 (Array (_ BitVec 32) ValueCell!1156)) (size!2659 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1220 0))(
  ( (LongMapFixedSize!1221 (defaultEntry!3029 Int) (mask!7413 (_ BitVec 32)) (extraKeys!2774 (_ BitVec 32)) (zeroValue!2874 V!3645) (minValue!2874 V!3645) (_size!659 (_ BitVec 32)) (_keys!4798 array!5044) (_values!3012 array!5046) (_vacant!659 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1002 0))(
  ( (Cell!1003 (v!3379 LongMapFixedSize!1220)) )
))
(declare-datatypes ((LongMap!1002 0))(
  ( (LongMap!1003 (underlying!512 Cell!1002)) )
))
(declare-fun thiss!992 () LongMap!1002)

(declare-fun valid!597 (LongMap!1002) Bool)

(assert (=> start!15278 (= res!70103 (valid!597 thiss!992))))

(assert (=> start!15278 e!96421))

(declare-fun e!96406 () Bool)

(assert (=> start!15278 e!96406))

(assert (=> start!15278 true))

(declare-fun e!96410 () Bool)

(assert (=> start!15278 e!96410))

(declare-fun b!147591 () Bool)

(declare-fun e!96411 () Bool)

(declare-fun e!96420 () Bool)

(assert (=> b!147591 (= e!96411 e!96420)))

(declare-fun res!70107 () Bool)

(assert (=> b!147591 (=> (not res!70107) (not e!96420))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!147591 (= res!70107 (and (not (= (select (arr!2382 (_keys!4798 (v!3379 (underlying!512 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2382 (_keys!4798 (v!3379 (underlying!512 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!77907 () V!3645)

(declare-fun get!1592 (ValueCell!1156 V!3645) V!3645)

(declare-fun dynLambda!462 (Int (_ BitVec 64)) V!3645)

(assert (=> b!147591 (= lt!77907 (get!1592 (select (arr!2383 (_values!3012 (v!3379 (underlying!512 thiss!992)))) from!355) (dynLambda!462 (defaultEntry!3029 (v!3379 (underlying!512 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!5073 () Bool)

(declare-fun mapRes!5073 () Bool)

(assert (=> mapIsEmpty!5073 mapRes!5073))

(declare-fun b!147592 () Bool)

(declare-fun e!96416 () Bool)

(declare-fun tp_is_empty!2999 () Bool)

(assert (=> b!147592 (= e!96416 tp_is_empty!2999)))

(declare-fun b!147593 () Bool)

(declare-fun e!96419 () Bool)

(declare-fun e!96407 () Bool)

(assert (=> b!147593 (= e!96419 e!96407)))

(declare-fun b!147594 () Bool)

(declare-datatypes ((Unit!4677 0))(
  ( (Unit!4678) )
))
(declare-fun e!96413 () Unit!4677)

(declare-fun Unit!4679 () Unit!4677)

(assert (=> b!147594 (= e!96413 Unit!4679)))

(declare-fun e!96414 () Bool)

(declare-fun array_inv!1479 (array!5044) Bool)

(declare-fun array_inv!1480 (array!5046) Bool)

(assert (=> b!147595 (= e!96407 (and tp!12002 tp_is_empty!2999 (array_inv!1479 (_keys!4798 (v!3379 (underlying!512 thiss!992)))) (array_inv!1480 (_values!3012 (v!3379 (underlying!512 thiss!992)))) e!96414))))

(declare-fun b!147596 () Bool)

(declare-fun e!96409 () Bool)

(assert (=> b!147596 (= e!96409 tp_is_empty!2999)))

(declare-fun b!147597 () Bool)

(declare-fun res!70104 () Bool)

(assert (=> b!147597 (=> (not res!70104) (not e!96421))))

(declare-fun newMap!16 () LongMapFixedSize!1220)

(assert (=> b!147597 (= res!70104 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7413 newMap!16)) (_size!659 (v!3379 (underlying!512 thiss!992)))))))

(declare-fun b!147598 () Bool)

(assert (=> b!147598 (= e!96406 e!96419)))

(declare-fun mapNonEmpty!5073 () Bool)

(declare-fun mapRes!5074 () Bool)

(declare-fun tp!12003 () Bool)

(declare-fun e!96417 () Bool)

(assert (=> mapNonEmpty!5073 (= mapRes!5074 (and tp!12003 e!96417))))

(declare-fun mapRest!5074 () (Array (_ BitVec 32) ValueCell!1156))

(declare-fun mapKey!5073 () (_ BitVec 32))

(declare-fun mapValue!5074 () ValueCell!1156)

(assert (=> mapNonEmpty!5073 (= (arr!2383 (_values!3012 newMap!16)) (store mapRest!5074 mapKey!5073 mapValue!5074))))

(declare-fun b!147599 () Bool)

(declare-fun res!70102 () Bool)

(assert (=> b!147599 (=> (not res!70102) (not e!96421))))

(assert (=> b!147599 (= res!70102 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2658 (_keys!4798 (v!3379 (underlying!512 thiss!992)))))))))

(declare-fun b!147600 () Bool)

(assert (=> b!147600 (= e!96421 e!96411)))

(declare-fun res!70106 () Bool)

(assert (=> b!147600 (=> (not res!70106) (not e!96411))))

(declare-datatypes ((tuple2!2778 0))(
  ( (tuple2!2779 (_1!1399 (_ BitVec 64)) (_2!1399 V!3645)) )
))
(declare-datatypes ((List!1812 0))(
  ( (Nil!1809) (Cons!1808 (h!2416 tuple2!2778) (t!6569 List!1812)) )
))
(declare-datatypes ((ListLongMap!1799 0))(
  ( (ListLongMap!1800 (toList!915 List!1812)) )
))
(declare-fun lt!77906 () ListLongMap!1799)

(declare-fun lt!77903 () ListLongMap!1799)

(assert (=> b!147600 (= res!70106 (= lt!77906 lt!77903))))

(declare-fun map!1482 (LongMapFixedSize!1220) ListLongMap!1799)

(assert (=> b!147600 (= lt!77903 (map!1482 newMap!16))))

(declare-fun getCurrentListMap!577 (array!5044 array!5046 (_ BitVec 32) (_ BitVec 32) V!3645 V!3645 (_ BitVec 32) Int) ListLongMap!1799)

(assert (=> b!147600 (= lt!77906 (getCurrentListMap!577 (_keys!4798 (v!3379 (underlying!512 thiss!992))) (_values!3012 (v!3379 (underlying!512 thiss!992))) (mask!7413 (v!3379 (underlying!512 thiss!992))) (extraKeys!2774 (v!3379 (underlying!512 thiss!992))) (zeroValue!2874 (v!3379 (underlying!512 thiss!992))) (minValue!2874 (v!3379 (underlying!512 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3029 (v!3379 (underlying!512 thiss!992)))))))

(declare-fun b!147601 () Bool)

(assert (=> b!147601 (= e!96417 tp_is_empty!2999)))

(declare-fun e!96415 () Bool)

(assert (=> b!147602 (= e!96410 (and tp!12001 tp_is_empty!2999 (array_inv!1479 (_keys!4798 newMap!16)) (array_inv!1480 (_values!3012 newMap!16)) e!96415))))

(declare-fun b!147603 () Bool)

(declare-fun e!96412 () Bool)

(assert (=> b!147603 (= e!96420 e!96412)))

(declare-fun res!70105 () Bool)

(assert (=> b!147603 (=> (not res!70105) (not e!96412))))

(declare-datatypes ((tuple2!2780 0))(
  ( (tuple2!2781 (_1!1400 Bool) (_2!1400 LongMapFixedSize!1220)) )
))
(declare-fun lt!77905 () tuple2!2780)

(assert (=> b!147603 (= res!70105 (and (_1!1400 lt!77905) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!77901 () Unit!4677)

(assert (=> b!147603 (= lt!77901 e!96413)))

(declare-fun c!27836 () Bool)

(declare-fun contains!955 (ListLongMap!1799 (_ BitVec 64)) Bool)

(assert (=> b!147603 (= c!27836 (contains!955 lt!77903 (select (arr!2382 (_keys!4798 (v!3379 (underlying!512 thiss!992)))) from!355)))))

(declare-fun update!230 (LongMapFixedSize!1220 (_ BitVec 64) V!3645) tuple2!2780)

(assert (=> b!147603 (= lt!77905 (update!230 newMap!16 (select (arr!2382 (_keys!4798 (v!3379 (underlying!512 thiss!992)))) from!355) lt!77907))))

(declare-fun mapNonEmpty!5074 () Bool)

(declare-fun tp!12004 () Bool)

(declare-fun e!96418 () Bool)

(assert (=> mapNonEmpty!5074 (= mapRes!5073 (and tp!12004 e!96418))))

(declare-fun mapKey!5074 () (_ BitVec 32))

(declare-fun mapValue!5073 () ValueCell!1156)

(declare-fun mapRest!5073 () (Array (_ BitVec 32) ValueCell!1156))

(assert (=> mapNonEmpty!5074 (= (arr!2383 (_values!3012 (v!3379 (underlying!512 thiss!992)))) (store mapRest!5073 mapKey!5074 mapValue!5073))))

(declare-fun mapIsEmpty!5074 () Bool)

(assert (=> mapIsEmpty!5074 mapRes!5074))

(declare-fun b!147604 () Bool)

(assert (=> b!147604 (= e!96415 (and e!96416 mapRes!5074))))

(declare-fun condMapEmpty!5073 () Bool)

(declare-fun mapDefault!5073 () ValueCell!1156)

