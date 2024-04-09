; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!14720 () Bool)

(assert start!14720)

(declare-fun b!139516 () Bool)

(declare-fun b_free!3025 () Bool)

(declare-fun b_next!3025 () Bool)

(assert (=> b!139516 (= b_free!3025 (not b_next!3025))))

(declare-fun tp!11546 () Bool)

(declare-fun b_and!8733 () Bool)

(assert (=> b!139516 (= tp!11546 b_and!8733)))

(declare-fun b!139517 () Bool)

(declare-fun b_free!3027 () Bool)

(declare-fun b_next!3027 () Bool)

(assert (=> b!139517 (= b_free!3027 (not b_next!3027))))

(declare-fun tp!11547 () Bool)

(declare-fun b_and!8735 () Bool)

(assert (=> b!139517 (= tp!11547 b_and!8735)))

(declare-fun e!91011 () Bool)

(declare-fun tp_is_empty!2929 () Bool)

(declare-fun e!91006 () Bool)

(declare-datatypes ((V!3553 0))(
  ( (V!3554 (val!1509 Int)) )
))
(declare-datatypes ((array!4892 0))(
  ( (array!4893 (arr!2312 (Array (_ BitVec 32) (_ BitVec 64))) (size!2584 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1121 0))(
  ( (ValueCellFull!1121 (v!3277 V!3553)) (EmptyCell!1121) )
))
(declare-datatypes ((array!4894 0))(
  ( (array!4895 (arr!2313 (Array (_ BitVec 32) ValueCell!1121)) (size!2585 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1150 0))(
  ( (LongMapFixedSize!1151 (defaultEntry!2939 Int) (mask!7279 (_ BitVec 32)) (extraKeys!2694 (_ BitVec 32)) (zeroValue!2789 V!3553) (minValue!2789 V!3553) (_size!624 (_ BitVec 32)) (_keys!4698 array!4892) (_values!2922 array!4894) (_vacant!624 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!938 0))(
  ( (Cell!939 (v!3278 LongMapFixedSize!1150)) )
))
(declare-datatypes ((LongMap!938 0))(
  ( (LongMap!939 (underlying!480 Cell!938)) )
))
(declare-fun thiss!992 () LongMap!938)

(declare-fun array_inv!1429 (array!4892) Bool)

(declare-fun array_inv!1430 (array!4894) Bool)

(assert (=> b!139516 (= e!91006 (and tp!11546 tp_is_empty!2929 (array_inv!1429 (_keys!4698 (v!3278 (underlying!480 thiss!992)))) (array_inv!1430 (_values!2922 (v!3278 (underlying!480 thiss!992)))) e!91011))))

(declare-fun e!90998 () Bool)

(declare-fun e!91008 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!1150)

(assert (=> b!139517 (= e!90998 (and tp!11547 tp_is_empty!2929 (array_inv!1429 (_keys!4698 newMap!16)) (array_inv!1430 (_values!2922 newMap!16)) e!91008))))

(declare-fun b!139518 () Bool)

(declare-fun res!66734 () Bool)

(declare-fun e!91005 () Bool)

(assert (=> b!139518 (=> (not res!66734) (not e!91005))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!139518 (= res!66734 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2584 (_keys!4698 (v!3278 (underlying!480 thiss!992)))))))))

(declare-fun b!139519 () Bool)

(declare-fun e!91009 () Bool)

(assert (=> b!139519 (= e!91009 tp_is_empty!2929)))

(declare-fun b!139520 () Bool)

(declare-fun e!91000 () Bool)

(assert (=> b!139520 (= e!91005 e!91000)))

(declare-fun res!66731 () Bool)

(assert (=> b!139520 (=> (not res!66731) (not e!91000))))

(declare-datatypes ((tuple2!2682 0))(
  ( (tuple2!2683 (_1!1351 (_ BitVec 64)) (_2!1351 V!3553)) )
))
(declare-datatypes ((List!1762 0))(
  ( (Nil!1759) (Cons!1758 (h!2365 tuple2!2682) (t!6354 List!1762)) )
))
(declare-datatypes ((ListLongMap!1745 0))(
  ( (ListLongMap!1746 (toList!888 List!1762)) )
))
(declare-fun lt!73046 () ListLongMap!1745)

(declare-fun lt!73050 () ListLongMap!1745)

(assert (=> b!139520 (= res!66731 (and (= lt!73046 lt!73050) (not (= (select (arr!2312 (_keys!4698 (v!3278 (underlying!480 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2312 (_keys!4698 (v!3278 (underlying!480 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1437 (LongMapFixedSize!1150) ListLongMap!1745)

(assert (=> b!139520 (= lt!73050 (map!1437 newMap!16))))

(declare-fun getCurrentListMap!554 (array!4892 array!4894 (_ BitVec 32) (_ BitVec 32) V!3553 V!3553 (_ BitVec 32) Int) ListLongMap!1745)

(assert (=> b!139520 (= lt!73046 (getCurrentListMap!554 (_keys!4698 (v!3278 (underlying!480 thiss!992))) (_values!2922 (v!3278 (underlying!480 thiss!992))) (mask!7279 (v!3278 (underlying!480 thiss!992))) (extraKeys!2694 (v!3278 (underlying!480 thiss!992))) (zeroValue!2789 (v!3278 (underlying!480 thiss!992))) (minValue!2789 (v!3278 (underlying!480 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2939 (v!3278 (underlying!480 thiss!992)))))))

(declare-fun b!139521 () Bool)

(declare-fun e!91001 () Bool)

(assert (=> b!139521 (= e!91001 tp_is_empty!2929)))

(declare-fun res!66733 () Bool)

(assert (=> start!14720 (=> (not res!66733) (not e!91005))))

(declare-fun valid!553 (LongMap!938) Bool)

(assert (=> start!14720 (= res!66733 (valid!553 thiss!992))))

(assert (=> start!14720 e!91005))

(declare-fun e!90999 () Bool)

(assert (=> start!14720 e!90999))

(assert (=> start!14720 true))

(assert (=> start!14720 e!90998))

(declare-fun b!139522 () Bool)

(declare-fun mapRes!4828 () Bool)

(assert (=> b!139522 (= e!91011 (and e!91009 mapRes!4828))))

(declare-fun condMapEmpty!4828 () Bool)

(declare-fun mapDefault!4827 () ValueCell!1121)

