; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13238 () Bool)

(assert start!13238)

(declare-fun b!116730 () Bool)

(declare-fun b_free!2757 () Bool)

(declare-fun b_next!2757 () Bool)

(assert (=> b!116730 (= b_free!2757 (not b_next!2757))))

(declare-fun tp!10644 () Bool)

(declare-fun b_and!7285 () Bool)

(assert (=> b!116730 (= tp!10644 b_and!7285)))

(declare-fun b!116722 () Bool)

(declare-fun b_free!2759 () Bool)

(declare-fun b_next!2759 () Bool)

(assert (=> b!116722 (= b_free!2759 (not b_next!2759))))

(declare-fun tp!10643 () Bool)

(declare-fun b_and!7287 () Bool)

(assert (=> b!116722 (= tp!10643 b_and!7287)))

(declare-fun b!116719 () Bool)

(declare-fun res!57147 () Bool)

(declare-fun e!76252 () Bool)

(assert (=> b!116719 (=> (not res!57147) (not e!76252))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((V!3373 0))(
  ( (V!3374 (val!1442 Int)) )
))
(declare-datatypes ((array!4596 0))(
  ( (array!4597 (arr!2178 (Array (_ BitVec 32) (_ BitVec 64))) (size!2439 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1054 0))(
  ( (ValueCellFull!1054 (v!3050 V!3373)) (EmptyCell!1054) )
))
(declare-datatypes ((array!4598 0))(
  ( (array!4599 (arr!2179 (Array (_ BitVec 32) ValueCell!1054)) (size!2440 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1016 0))(
  ( (LongMapFixedSize!1017 (defaultEntry!2720 Int) (mask!6938 (_ BitVec 32)) (extraKeys!2509 (_ BitVec 32)) (zeroValue!2587 V!3373) (minValue!2587 V!3373) (_size!557 (_ BitVec 32)) (_keys!4443 array!4596) (_values!2703 array!4598) (_vacant!557 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!810 0))(
  ( (Cell!811 (v!3051 LongMapFixedSize!1016)) )
))
(declare-datatypes ((LongMap!810 0))(
  ( (LongMap!811 (underlying!416 Cell!810)) )
))
(declare-fun thiss!992 () LongMap!810)

(assert (=> b!116719 (= res!57147 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2439 (_keys!4443 (v!3051 (underlying!416 thiss!992)))))))))

(declare-fun b!116720 () Bool)

(declare-fun e!76243 () Bool)

(declare-fun tp_is_empty!2795 () Bool)

(assert (=> b!116720 (= e!76243 tp_is_empty!2795)))

(declare-fun b!116721 () Bool)

(assert (=> b!116721 (= e!76252 false)))

(declare-datatypes ((tuple2!2528 0))(
  ( (tuple2!2529 (_1!1274 (_ BitVec 64)) (_2!1274 V!3373)) )
))
(declare-datatypes ((List!1700 0))(
  ( (Nil!1697) (Cons!1696 (h!2296 tuple2!2528) (t!5978 List!1700)) )
))
(declare-datatypes ((ListLongMap!1657 0))(
  ( (ListLongMap!1658 (toList!844 List!1700)) )
))
(declare-fun lt!60582 () ListLongMap!1657)

(declare-fun newMap!16 () LongMapFixedSize!1016)

(declare-fun map!1354 (LongMapFixedSize!1016) ListLongMap!1657)

(assert (=> b!116721 (= lt!60582 (map!1354 newMap!16))))

(declare-fun lt!60581 () ListLongMap!1657)

(declare-fun getCurrentListMap!517 (array!4596 array!4598 (_ BitVec 32) (_ BitVec 32) V!3373 V!3373 (_ BitVec 32) Int) ListLongMap!1657)

(assert (=> b!116721 (= lt!60581 (getCurrentListMap!517 (_keys!4443 (v!3051 (underlying!416 thiss!992))) (_values!2703 (v!3051 (underlying!416 thiss!992))) (mask!6938 (v!3051 (underlying!416 thiss!992))) (extraKeys!2509 (v!3051 (underlying!416 thiss!992))) (zeroValue!2587 (v!3051 (underlying!416 thiss!992))) (minValue!2587 (v!3051 (underlying!416 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2720 (v!3051 (underlying!416 thiss!992)))))))

(declare-fun e!76242 () Bool)

(declare-fun e!76250 () Bool)

(declare-fun array_inv!1325 (array!4596) Bool)

(declare-fun array_inv!1326 (array!4598) Bool)

(assert (=> b!116722 (= e!76242 (and tp!10643 tp_is_empty!2795 (array_inv!1325 (_keys!4443 newMap!16)) (array_inv!1326 (_values!2703 newMap!16)) e!76250))))

(declare-fun mapIsEmpty!4327 () Bool)

(declare-fun mapRes!4328 () Bool)

(assert (=> mapIsEmpty!4327 mapRes!4328))

(declare-fun b!116723 () Bool)

(declare-fun e!76240 () Bool)

(assert (=> b!116723 (= e!76240 tp_is_empty!2795)))

(declare-fun mapNonEmpty!4327 () Bool)

(declare-fun mapRes!4327 () Bool)

(declare-fun tp!10646 () Bool)

(declare-fun e!76248 () Bool)

(assert (=> mapNonEmpty!4327 (= mapRes!4327 (and tp!10646 e!76248))))

(declare-fun mapKey!4328 () (_ BitVec 32))

(declare-fun mapRest!4327 () (Array (_ BitVec 32) ValueCell!1054))

(declare-fun mapValue!4327 () ValueCell!1054)

(assert (=> mapNonEmpty!4327 (= (arr!2179 (_values!2703 newMap!16)) (store mapRest!4327 mapKey!4328 mapValue!4327))))

(declare-fun res!57148 () Bool)

(assert (=> start!13238 (=> (not res!57148) (not e!76252))))

(declare-fun valid!476 (LongMap!810) Bool)

(assert (=> start!13238 (= res!57148 (valid!476 thiss!992))))

(assert (=> start!13238 e!76252))

(declare-fun e!76247 () Bool)

(assert (=> start!13238 e!76247))

(assert (=> start!13238 true))

(assert (=> start!13238 e!76242))

(declare-fun b!116724 () Bool)

(assert (=> b!116724 (= e!76248 tp_is_empty!2795)))

(declare-fun b!116725 () Bool)

(declare-fun e!76244 () Bool)

(assert (=> b!116725 (= e!76244 tp_is_empty!2795)))

(declare-fun b!116726 () Bool)

(declare-fun e!76249 () Bool)

(assert (=> b!116726 (= e!76247 e!76249)))

(declare-fun b!116727 () Bool)

(declare-fun e!76251 () Bool)

(assert (=> b!116727 (= e!76251 (and e!76240 mapRes!4328))))

(declare-fun condMapEmpty!4328 () Bool)

(declare-fun mapDefault!4327 () ValueCell!1054)

