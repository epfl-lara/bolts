; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13450 () Bool)

(assert start!13450)

(declare-fun b!123306 () Bool)

(declare-fun b_free!2809 () Bool)

(declare-fun b_next!2809 () Bool)

(assert (=> b!123306 (= b_free!2809 (not b_next!2809))))

(declare-fun tp!10813 () Bool)

(declare-fun b_and!7585 () Bool)

(assert (=> b!123306 (= tp!10813 b_and!7585)))

(declare-fun b!123301 () Bool)

(declare-fun b_free!2811 () Bool)

(declare-fun b_next!2811 () Bool)

(assert (=> b!123301 (= b_free!2811 (not b_next!2811))))

(declare-fun tp!10816 () Bool)

(declare-fun b_and!7587 () Bool)

(assert (=> b!123301 (= tp!10816 b_and!7587)))

(declare-fun b!123300 () Bool)

(declare-fun e!80585 () Bool)

(declare-fun tp_is_empty!2821 () Bool)

(assert (=> b!123300 (= e!80585 tp_is_empty!2821)))

(declare-datatypes ((V!3409 0))(
  ( (V!3410 (val!1455 Int)) )
))
(declare-datatypes ((array!4652 0))(
  ( (array!4653 (arr!2204 (Array (_ BitVec 32) (_ BitVec 64))) (size!2466 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1067 0))(
  ( (ValueCellFull!1067 (v!3086 V!3409)) (EmptyCell!1067) )
))
(declare-datatypes ((array!4654 0))(
  ( (array!4655 (arr!2205 (Array (_ BitVec 32) ValueCell!1067)) (size!2467 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1042 0))(
  ( (LongMapFixedSize!1043 (defaultEntry!2754 Int) (mask!6992 (_ BitVec 32)) (extraKeys!2539 (_ BitVec 32)) (zeroValue!2619 V!3409) (minValue!2619 V!3409) (_size!570 (_ BitVec 32)) (_keys!4481 array!4652) (_values!2737 array!4654) (_vacant!570 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1042)

(declare-fun e!80596 () Bool)

(declare-fun e!80594 () Bool)

(declare-fun array_inv!1347 (array!4652) Bool)

(declare-fun array_inv!1348 (array!4654) Bool)

(assert (=> b!123301 (= e!80594 (and tp!10816 tp_is_empty!2821 (array_inv!1347 (_keys!4481 newMap!16)) (array_inv!1348 (_values!2737 newMap!16)) e!80596))))

(declare-fun b!123302 () Bool)

(declare-fun e!80592 () Bool)

(assert (=> b!123302 (= e!80592 tp_is_empty!2821)))

(declare-fun b!123303 () Bool)

(declare-fun e!80586 () Bool)

(assert (=> b!123303 (= e!80586 tp_is_empty!2821)))

(declare-fun mapNonEmpty!4419 () Bool)

(declare-fun mapRes!4419 () Bool)

(declare-fun tp!10814 () Bool)

(declare-fun e!80587 () Bool)

(assert (=> mapNonEmpty!4419 (= mapRes!4419 (and tp!10814 e!80587))))

(declare-datatypes ((Cell!834 0))(
  ( (Cell!835 (v!3087 LongMapFixedSize!1042)) )
))
(declare-datatypes ((LongMap!834 0))(
  ( (LongMap!835 (underlying!428 Cell!834)) )
))
(declare-fun thiss!992 () LongMap!834)

(declare-fun mapKey!4420 () (_ BitVec 32))

(declare-fun mapValue!4420 () ValueCell!1067)

(declare-fun mapRest!4419 () (Array (_ BitVec 32) ValueCell!1067))

(assert (=> mapNonEmpty!4419 (= (arr!2205 (_values!2737 (v!3087 (underlying!428 thiss!992)))) (store mapRest!4419 mapKey!4420 mapValue!4420))))

(declare-fun b!123304 () Bool)

(declare-fun res!59881 () Bool)

(declare-fun e!80589 () Bool)

(assert (=> b!123304 (=> (not res!59881) (not e!80589))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!123304 (= res!59881 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2466 (_keys!4481 (v!3087 (underlying!428 thiss!992)))))))))

(declare-fun mapNonEmpty!4420 () Bool)

(declare-fun mapRes!4420 () Bool)

(declare-fun tp!10815 () Bool)

(assert (=> mapNonEmpty!4420 (= mapRes!4420 (and tp!10815 e!80592))))

(declare-fun mapValue!4419 () ValueCell!1067)

(declare-fun mapRest!4420 () (Array (_ BitVec 32) ValueCell!1067))

(declare-fun mapKey!4419 () (_ BitVec 32))

(assert (=> mapNonEmpty!4420 (= (arr!2205 (_values!2737 newMap!16)) (store mapRest!4420 mapKey!4419 mapValue!4419))))

(declare-fun b!123305 () Bool)

(assert (=> b!123305 (= e!80589 (bvsge from!355 (size!2467 (_values!2737 (v!3087 (underlying!428 thiss!992))))))))

(declare-fun b!123307 () Bool)

(assert (=> b!123307 (= e!80596 (and e!80586 mapRes!4420))))

(declare-fun condMapEmpty!4419 () Bool)

(declare-fun mapDefault!4420 () ValueCell!1067)

