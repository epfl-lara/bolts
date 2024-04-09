; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!9276 () Bool)

(assert start!9276)

(declare-fun b!66393 () Bool)

(declare-fun b_free!2073 () Bool)

(declare-fun b_next!2073 () Bool)

(assert (=> b!66393 (= b_free!2073 (not b_next!2073))))

(declare-fun tp!8374 () Bool)

(declare-fun b_and!4101 () Bool)

(assert (=> b!66393 (= tp!8374 b_and!4101)))

(declare-fun b!66397 () Bool)

(declare-fun b_free!2075 () Bool)

(declare-fun b_next!2075 () Bool)

(assert (=> b!66397 (= b_free!2075 (not b_next!2075))))

(declare-fun tp!8371 () Bool)

(declare-fun b_and!4103 () Bool)

(assert (=> b!66397 (= tp!8371 b_and!4103)))

(declare-fun b!66379 () Bool)

(declare-datatypes ((Unit!1840 0))(
  ( (Unit!1841) )
))
(declare-fun e!43578 () Unit!1840)

(declare-fun Unit!1842 () Unit!1840)

(assert (=> b!66379 (= e!43578 Unit!1842)))

(declare-fun b!66380 () Bool)

(declare-fun e!43574 () Bool)

(declare-fun e!43576 () Bool)

(assert (=> b!66380 (= e!43574 e!43576)))

(declare-fun b!66381 () Bool)

(declare-fun e!43588 () Bool)

(declare-fun tp_is_empty!2453 () Bool)

(assert (=> b!66381 (= e!43588 tp_is_empty!2453)))

(declare-fun res!35934 () Bool)

(declare-fun e!43589 () Bool)

(assert (=> start!9276 (=> (not res!35934) (not e!43589))))

(declare-datatypes ((V!2917 0))(
  ( (V!2918 (val!1271 Int)) )
))
(declare-datatypes ((array!3844 0))(
  ( (array!3845 (arr!1836 (Array (_ BitVec 32) (_ BitVec 64))) (size!2071 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!883 0))(
  ( (ValueCellFull!883 (v!2480 V!2917)) (EmptyCell!883) )
))
(declare-datatypes ((array!3846 0))(
  ( (array!3847 (arr!1837 (Array (_ BitVec 32) ValueCell!883)) (size!2072 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!674 0))(
  ( (LongMapFixedSize!675 (defaultEntry!2148 Int) (mask!6083 (_ BitVec 32)) (extraKeys!2019 (_ BitVec 32)) (zeroValue!2056 V!2917) (minValue!2056 V!2917) (_size!386 (_ BitVec 32)) (_keys!3788 array!3844) (_values!2131 array!3846) (_vacant!386 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!484 0))(
  ( (Cell!485 (v!2481 LongMapFixedSize!674)) )
))
(declare-datatypes ((LongMap!484 0))(
  ( (LongMap!485 (underlying!253 Cell!484)) )
))
(declare-fun thiss!992 () LongMap!484)

(declare-fun valid!279 (LongMap!484) Bool)

(assert (=> start!9276 (= res!35934 (valid!279 thiss!992))))

(assert (=> start!9276 e!43589))

(assert (=> start!9276 e!43574))

(assert (=> start!9276 true))

(declare-fun e!43586 () Bool)

(assert (=> start!9276 e!43586))

(declare-fun mapIsEmpty!3081 () Bool)

(declare-fun mapRes!3081 () Bool)

(assert (=> mapIsEmpty!3081 mapRes!3081))

(declare-fun b!66382 () Bool)

(declare-fun e!43590 () Bool)

(assert (=> b!66382 (= e!43590 tp_is_empty!2453)))

(declare-fun b!66383 () Bool)

(declare-fun e!43583 () Bool)

(declare-fun e!43580 () Bool)

(assert (=> b!66383 (= e!43583 e!43580)))

(declare-fun res!35940 () Bool)

(assert (=> b!66383 (=> (not res!35940) (not e!43580))))

(declare-datatypes ((tuple2!2112 0))(
  ( (tuple2!2113 (_1!1066 Bool) (_2!1066 LongMapFixedSize!674)) )
))
(declare-fun lt!28539 () tuple2!2112)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!66383 (= res!35940 (and (_1!1066 lt!28539) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!28543 () Unit!1840)

(assert (=> b!66383 (= lt!28543 e!43578)))

(declare-fun c!9135 () Bool)

(declare-datatypes ((tuple2!2114 0))(
  ( (tuple2!2115 (_1!1067 (_ BitVec 64)) (_2!1067 V!2917)) )
))
(declare-datatypes ((List!1492 0))(
  ( (Nil!1489) (Cons!1488 (h!2072 tuple2!2114) (t!4982 List!1492)) )
))
(declare-datatypes ((ListLongMap!1417 0))(
  ( (ListLongMap!1418 (toList!724 List!1492)) )
))
(declare-fun lt!28544 () ListLongMap!1417)

(declare-fun contains!717 (ListLongMap!1417 (_ BitVec 64)) Bool)

(assert (=> b!66383 (= c!9135 (contains!717 lt!28544 (select (arr!1836 (_keys!3788 (v!2481 (underlying!253 thiss!992)))) from!355)))))

(declare-fun lt!28536 () V!2917)

(declare-fun newMap!16 () LongMapFixedSize!674)

(declare-fun update!97 (LongMapFixedSize!674 (_ BitVec 64) V!2917) tuple2!2112)

(assert (=> b!66383 (= lt!28539 (update!97 newMap!16 (select (arr!1836 (_keys!3788 (v!2481 (underlying!253 thiss!992)))) from!355) lt!28536))))

(declare-fun b!66384 () Bool)

(declare-fun e!43575 () Bool)

(assert (=> b!66384 (= e!43580 (not e!43575))))

(declare-fun res!35939 () Bool)

(assert (=> b!66384 (=> res!35939 e!43575)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!66384 (= res!35939 (not (validMask!0 (mask!6083 (v!2481 (underlying!253 thiss!992))))))))

(declare-fun lt!28537 () ListLongMap!1417)

(declare-fun lt!28547 () tuple2!2114)

(declare-fun lt!28545 () tuple2!2114)

(declare-fun +!88 (ListLongMap!1417 tuple2!2114) ListLongMap!1417)

(assert (=> b!66384 (= (+!88 (+!88 lt!28537 lt!28547) lt!28545) (+!88 (+!88 lt!28537 lt!28545) lt!28547))))

(assert (=> b!66384 (= lt!28545 (tuple2!2115 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2056 (v!2481 (underlying!253 thiss!992)))))))

(assert (=> b!66384 (= lt!28547 (tuple2!2115 (select (arr!1836 (_keys!3788 (v!2481 (underlying!253 thiss!992)))) from!355) lt!28536))))

(declare-fun lt!28538 () Unit!1840)

(declare-fun addCommutativeForDiffKeys!7 (ListLongMap!1417 (_ BitVec 64) V!2917 (_ BitVec 64) V!2917) Unit!1840)

(assert (=> b!66384 (= lt!28538 (addCommutativeForDiffKeys!7 lt!28537 (select (arr!1836 (_keys!3788 (v!2481 (underlying!253 thiss!992)))) from!355) lt!28536 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2056 (v!2481 (underlying!253 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!52 (array!3844 array!3846 (_ BitVec 32) (_ BitVec 32) V!2917 V!2917 (_ BitVec 32) Int) ListLongMap!1417)

(assert (=> b!66384 (= lt!28537 (getCurrentListMapNoExtraKeys!52 (_keys!3788 (v!2481 (underlying!253 thiss!992))) (_values!2131 (v!2481 (underlying!253 thiss!992))) (mask!6083 (v!2481 (underlying!253 thiss!992))) (extraKeys!2019 (v!2481 (underlying!253 thiss!992))) (zeroValue!2056 (v!2481 (underlying!253 thiss!992))) (minValue!2056 (v!2481 (underlying!253 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2148 (v!2481 (underlying!253 thiss!992)))))))

(declare-fun b!66385 () Bool)

(declare-fun e!43581 () Bool)

(assert (=> b!66385 (= e!43581 tp_is_empty!2453)))

(declare-fun b!66386 () Bool)

(declare-fun e!43584 () Bool)

(assert (=> b!66386 (= e!43584 (and e!43588 mapRes!3081))))

(declare-fun condMapEmpty!3082 () Bool)

(declare-fun mapDefault!3082 () ValueCell!883)

