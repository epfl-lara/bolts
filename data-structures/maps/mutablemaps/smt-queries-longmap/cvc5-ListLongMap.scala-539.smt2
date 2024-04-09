; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13830 () Bool)

(assert start!13830)

(declare-fun b!127630 () Bool)

(declare-fun b_free!2857 () Bool)

(declare-fun b_next!2857 () Bool)

(assert (=> b!127630 (= b_free!2857 (not b_next!2857))))

(declare-fun tp!10985 () Bool)

(declare-fun b_and!7881 () Bool)

(assert (=> b!127630 (= tp!10985 b_and!7881)))

(declare-fun b!127618 () Bool)

(declare-fun b_free!2859 () Bool)

(declare-fun b_next!2859 () Bool)

(assert (=> b!127618 (= b_free!2859 (not b_next!2859))))

(declare-fun tp!10988 () Bool)

(declare-fun b_and!7883 () Bool)

(assert (=> b!127618 (= tp!10988 b_and!7883)))

(declare-fun b!127616 () Bool)

(declare-fun e!83316 () Bool)

(declare-fun e!83320 () Bool)

(assert (=> b!127616 (= e!83316 e!83320)))

(declare-fun b!127617 () Bool)

(declare-fun e!83327 () Bool)

(declare-fun e!83319 () Bool)

(assert (=> b!127617 (= e!83327 e!83319)))

(declare-fun res!61686 () Bool)

(assert (=> b!127617 (=> (not res!61686) (not e!83319))))

(declare-datatypes ((V!3441 0))(
  ( (V!3442 (val!1467 Int)) )
))
(declare-datatypes ((tuple2!2572 0))(
  ( (tuple2!2573 (_1!1296 (_ BitVec 64)) (_2!1296 V!3441)) )
))
(declare-datatypes ((List!1721 0))(
  ( (Nil!1718) (Cons!1717 (h!2320 tuple2!2572) (t!6096 List!1721)) )
))
(declare-datatypes ((ListLongMap!1687 0))(
  ( (ListLongMap!1688 (toList!859 List!1721)) )
))
(declare-fun lt!66100 () ListLongMap!1687)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lt!66102 () ListLongMap!1687)

(declare-datatypes ((array!4708 0))(
  ( (array!4709 (arr!2228 (Array (_ BitVec 32) (_ BitVec 64))) (size!2493 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1079 0))(
  ( (ValueCellFull!1079 (v!3134 V!3441)) (EmptyCell!1079) )
))
(declare-datatypes ((array!4710 0))(
  ( (array!4711 (arr!2229 (Array (_ BitVec 32) ValueCell!1079)) (size!2494 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1066 0))(
  ( (LongMapFixedSize!1067 (defaultEntry!2801 Int) (mask!7067 (_ BitVec 32)) (extraKeys!2578 (_ BitVec 32)) (zeroValue!2662 V!3441) (minValue!2662 V!3441) (_size!582 (_ BitVec 32)) (_keys!4538 array!4708) (_values!2784 array!4710) (_vacant!582 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!856 0))(
  ( (Cell!857 (v!3135 LongMapFixedSize!1066)) )
))
(declare-datatypes ((LongMap!856 0))(
  ( (LongMap!857 (underlying!439 Cell!856)) )
))
(declare-fun thiss!992 () LongMap!856)

(assert (=> b!127617 (= res!61686 (and (= lt!66100 lt!66102) (not (= (select (arr!2228 (_keys!4538 (v!3135 (underlying!439 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2228 (_keys!4538 (v!3135 (underlying!439 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun newMap!16 () LongMapFixedSize!1066)

(declare-fun map!1386 (LongMapFixedSize!1066) ListLongMap!1687)

(assert (=> b!127617 (= lt!66102 (map!1386 newMap!16))))

(declare-fun getCurrentListMap!531 (array!4708 array!4710 (_ BitVec 32) (_ BitVec 32) V!3441 V!3441 (_ BitVec 32) Int) ListLongMap!1687)

(assert (=> b!127617 (= lt!66100 (getCurrentListMap!531 (_keys!4538 (v!3135 (underlying!439 thiss!992))) (_values!2784 (v!3135 (underlying!439 thiss!992))) (mask!7067 (v!3135 (underlying!439 thiss!992))) (extraKeys!2578 (v!3135 (underlying!439 thiss!992))) (zeroValue!2662 (v!3135 (underlying!439 thiss!992))) (minValue!2662 (v!3135 (underlying!439 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2801 (v!3135 (underlying!439 thiss!992)))))))

(declare-fun mapNonEmpty!4519 () Bool)

(declare-fun mapRes!4520 () Bool)

(declare-fun tp!10987 () Bool)

(declare-fun e!83325 () Bool)

(assert (=> mapNonEmpty!4519 (= mapRes!4520 (and tp!10987 e!83325))))

(declare-fun mapKey!4520 () (_ BitVec 32))

(declare-fun mapRest!4520 () (Array (_ BitVec 32) ValueCell!1079))

(declare-fun mapValue!4520 () ValueCell!1079)

(assert (=> mapNonEmpty!4519 (= (arr!2229 (_values!2784 (v!3135 (underlying!439 thiss!992)))) (store mapRest!4520 mapKey!4520 mapValue!4520))))

(declare-fun tp_is_empty!2845 () Bool)

(declare-fun e!83313 () Bool)

(declare-fun e!83315 () Bool)

(declare-fun array_inv!1367 (array!4708) Bool)

(declare-fun array_inv!1368 (array!4710) Bool)

(assert (=> b!127618 (= e!83313 (and tp!10988 tp_is_empty!2845 (array_inv!1367 (_keys!4538 newMap!16)) (array_inv!1368 (_values!2784 newMap!16)) e!83315))))

(declare-fun mapIsEmpty!4519 () Bool)

(assert (=> mapIsEmpty!4519 mapRes!4520))

(declare-fun b!127619 () Bool)

(declare-fun res!61687 () Bool)

(assert (=> b!127619 (=> (not res!61687) (not e!83327))))

(declare-fun valid!505 (LongMapFixedSize!1066) Bool)

(assert (=> b!127619 (= res!61687 (valid!505 newMap!16))))

(declare-fun mapIsEmpty!4520 () Bool)

(declare-fun mapRes!4519 () Bool)

(assert (=> mapIsEmpty!4520 mapRes!4519))

(declare-fun b!127621 () Bool)

(declare-fun e!83322 () Bool)

(assert (=> b!127621 (= e!83322 tp_is_empty!2845)))

(declare-fun b!127622 () Bool)

(assert (=> b!127622 (= e!83325 tp_is_empty!2845)))

(declare-fun b!127623 () Bool)

(declare-fun e!83314 () Bool)

(assert (=> b!127623 (= e!83320 e!83314)))

(declare-fun b!127624 () Bool)

(declare-fun e!83321 () Bool)

(assert (=> b!127624 (= e!83321 (and e!83322 mapRes!4520))))

(declare-fun condMapEmpty!4519 () Bool)

(declare-fun mapDefault!4519 () ValueCell!1079)

