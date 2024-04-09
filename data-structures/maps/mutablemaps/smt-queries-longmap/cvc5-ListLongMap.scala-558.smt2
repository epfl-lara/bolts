; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15202 () Bool)

(assert start!15202)

(declare-fun b!146053 () Bool)

(declare-fun b_free!3085 () Bool)

(declare-fun b_next!3085 () Bool)

(assert (=> b!146053 (= b_free!3085 (not b_next!3085))))

(declare-fun tp!11759 () Bool)

(declare-fun b_and!9113 () Bool)

(assert (=> b!146053 (= tp!11759 b_and!9113)))

(declare-fun b!146046 () Bool)

(declare-fun b_free!3087 () Bool)

(declare-fun b_next!3087 () Bool)

(assert (=> b!146046 (= b_free!3087 (not b_next!3087))))

(declare-fun tp!11757 () Bool)

(declare-fun b_and!9115 () Bool)

(assert (=> b!146046 (= tp!11757 b_and!9115)))

(declare-fun mapIsEmpty!4949 () Bool)

(declare-fun mapRes!4949 () Bool)

(assert (=> mapIsEmpty!4949 mapRes!4949))

(declare-fun b!146044 () Bool)

(declare-fun e!95175 () Bool)

(declare-fun tp_is_empty!2959 () Bool)

(assert (=> b!146044 (= e!95175 tp_is_empty!2959)))

(declare-fun b!146045 () Bool)

(declare-fun res!69530 () Bool)

(declare-fun e!95172 () Bool)

(assert (=> b!146045 (=> (not res!69530) (not e!95172))))

(declare-datatypes ((V!3593 0))(
  ( (V!3594 (val!1524 Int)) )
))
(declare-datatypes ((array!4962 0))(
  ( (array!4963 (arr!2342 (Array (_ BitVec 32) (_ BitVec 64))) (size!2618 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1136 0))(
  ( (ValueCellFull!1136 (v!3337 V!3593)) (EmptyCell!1136) )
))
(declare-datatypes ((array!4964 0))(
  ( (array!4965 (arr!2343 (Array (_ BitVec 32) ValueCell!1136)) (size!2619 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1180 0))(
  ( (LongMapFixedSize!1181 (defaultEntry!3006 Int) (mask!7378 (_ BitVec 32)) (extraKeys!2751 (_ BitVec 32)) (zeroValue!2851 V!3593) (minValue!2851 V!3593) (_size!639 (_ BitVec 32)) (_keys!4775 array!4962) (_values!2989 array!4964) (_vacant!639 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1180)

(declare-datatypes ((Cell!964 0))(
  ( (Cell!965 (v!3338 LongMapFixedSize!1180)) )
))
(declare-datatypes ((LongMap!964 0))(
  ( (LongMap!965 (underlying!493 Cell!964)) )
))
(declare-fun thiss!992 () LongMap!964)

(assert (=> b!146045 (= res!69530 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7378 newMap!16)) (_size!639 (v!3338 (underlying!493 thiss!992)))))))

(declare-fun e!95181 () Bool)

(declare-fun e!95179 () Bool)

(declare-fun array_inv!1451 (array!4962) Bool)

(declare-fun array_inv!1452 (array!4964) Bool)

(assert (=> b!146046 (= e!95179 (and tp!11757 tp_is_empty!2959 (array_inv!1451 (_keys!4775 newMap!16)) (array_inv!1452 (_values!2989 newMap!16)) e!95181))))

(declare-fun b!146047 () Bool)

(declare-fun res!69527 () Bool)

(assert (=> b!146047 (=> (not res!69527) (not e!95172))))

(declare-fun valid!572 (LongMapFixedSize!1180) Bool)

(assert (=> b!146047 (= res!69527 (valid!572 newMap!16))))

(declare-fun b!146048 () Bool)

(declare-fun e!95180 () Bool)

(declare-fun e!95171 () Bool)

(assert (=> b!146048 (= e!95180 e!95171)))

(declare-fun res!69526 () Bool)

(assert (=> b!146048 (=> (not res!69526) (not e!95171))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((tuple2!2716 0))(
  ( (tuple2!2717 (_1!1368 (_ BitVec 64)) (_2!1368 V!3593)) )
))
(declare-datatypes ((List!1783 0))(
  ( (Nil!1780) (Cons!1779 (h!2387 tuple2!2716) (t!6460 List!1783)) )
))
(declare-datatypes ((ListLongMap!1765 0))(
  ( (ListLongMap!1766 (toList!898 List!1783)) )
))
(declare-fun lt!76834 () ListLongMap!1765)

(declare-fun contains!940 (ListLongMap!1765 (_ BitVec 64)) Bool)

(assert (=> b!146048 (= res!69526 (contains!940 lt!76834 (select (arr!2342 (_keys!4775 (v!3338 (underlying!493 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2718 0))(
  ( (tuple2!2719 (_1!1369 Bool) (_2!1369 LongMapFixedSize!1180)) )
))
(declare-fun lt!76832 () tuple2!2718)

(declare-fun update!217 (LongMapFixedSize!1180 (_ BitVec 64) V!3593) tuple2!2718)

(declare-fun get!1566 (ValueCell!1136 V!3593) V!3593)

(declare-fun dynLambda!450 (Int (_ BitVec 64)) V!3593)

(assert (=> b!146048 (= lt!76832 (update!217 newMap!16 (select (arr!2342 (_keys!4775 (v!3338 (underlying!493 thiss!992)))) from!355) (get!1566 (select (arr!2343 (_values!2989 (v!3338 (underlying!493 thiss!992)))) from!355) (dynLambda!450 (defaultEntry!3006 (v!3338 (underlying!493 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!69531 () Bool)

(assert (=> start!15202 (=> (not res!69531) (not e!95172))))

(declare-fun valid!573 (LongMap!964) Bool)

(assert (=> start!15202 (= res!69531 (valid!573 thiss!992))))

(assert (=> start!15202 e!95172))

(declare-fun e!95176 () Bool)

(assert (=> start!15202 e!95176))

(assert (=> start!15202 true))

(assert (=> start!15202 e!95179))

(declare-fun b!146049 () Bool)

(assert (=> b!146049 (= e!95171 (not true))))

(assert (=> b!146049 false))

(declare-datatypes ((Unit!4617 0))(
  ( (Unit!4618) )
))
(declare-fun lt!76836 () Unit!4617)

(declare-datatypes ((List!1784 0))(
  ( (Nil!1781) (Cons!1780 (h!2388 (_ BitVec 64)) (t!6461 List!1784)) )
))
(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4962 (_ BitVec 32) (_ BitVec 64) List!1784) Unit!4617)

(assert (=> b!146049 (= lt!76836 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4775 (v!3338 (underlying!493 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2342 (_keys!4775 (v!3338 (underlying!493 thiss!992)))) from!355) (Cons!1780 (select (arr!2342 (_keys!4775 (v!3338 (underlying!493 thiss!992)))) from!355) Nil!1781)))))

(declare-fun arrayNoDuplicates!0 (array!4962 (_ BitVec 32) List!1784) Bool)

(assert (=> b!146049 (arrayNoDuplicates!0 (_keys!4775 (v!3338 (underlying!493 thiss!992))) from!355 Nil!1781)))

(declare-fun lt!76835 () Unit!4617)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4962 (_ BitVec 32) (_ BitVec 32)) Unit!4617)

(assert (=> b!146049 (= lt!76835 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4775 (v!3338 (underlying!493 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-fun arrayContainsKey!0 (array!4962 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!146049 (arrayContainsKey!0 (_keys!4775 (v!3338 (underlying!493 thiss!992))) (select (arr!2342 (_keys!4775 (v!3338 (underlying!493 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!76833 () Unit!4617)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!151 (array!4962 array!4964 (_ BitVec 32) (_ BitVec 32) V!3593 V!3593 (_ BitVec 64) (_ BitVec 32) Int) Unit!4617)

(assert (=> b!146049 (= lt!76833 (lemmaListMapContainsThenArrayContainsFrom!151 (_keys!4775 (v!3338 (underlying!493 thiss!992))) (_values!2989 (v!3338 (underlying!493 thiss!992))) (mask!7378 (v!3338 (underlying!493 thiss!992))) (extraKeys!2751 (v!3338 (underlying!493 thiss!992))) (zeroValue!2851 (v!3338 (underlying!493 thiss!992))) (minValue!2851 (v!3338 (underlying!493 thiss!992))) (select (arr!2342 (_keys!4775 (v!3338 (underlying!493 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3006 (v!3338 (underlying!493 thiss!992)))))))

(declare-fun mapIsEmpty!4950 () Bool)

(declare-fun mapRes!4950 () Bool)

(assert (=> mapIsEmpty!4950 mapRes!4950))

(declare-fun b!146050 () Bool)

(assert (=> b!146050 (= e!95172 e!95180)))

(declare-fun res!69528 () Bool)

(assert (=> b!146050 (=> (not res!69528) (not e!95180))))

(declare-fun lt!76831 () ListLongMap!1765)

(assert (=> b!146050 (= res!69528 (and (= lt!76831 lt!76834) (not (= (select (arr!2342 (_keys!4775 (v!3338 (underlying!493 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2342 (_keys!4775 (v!3338 (underlying!493 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1456 (LongMapFixedSize!1180) ListLongMap!1765)

(assert (=> b!146050 (= lt!76834 (map!1456 newMap!16))))

(declare-fun getCurrentListMap!563 (array!4962 array!4964 (_ BitVec 32) (_ BitVec 32) V!3593 V!3593 (_ BitVec 32) Int) ListLongMap!1765)

(assert (=> b!146050 (= lt!76831 (getCurrentListMap!563 (_keys!4775 (v!3338 (underlying!493 thiss!992))) (_values!2989 (v!3338 (underlying!493 thiss!992))) (mask!7378 (v!3338 (underlying!493 thiss!992))) (extraKeys!2751 (v!3338 (underlying!493 thiss!992))) (zeroValue!2851 (v!3338 (underlying!493 thiss!992))) (minValue!2851 (v!3338 (underlying!493 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3006 (v!3338 (underlying!493 thiss!992)))))))

(declare-fun b!146051 () Bool)

(declare-fun e!95173 () Bool)

(assert (=> b!146051 (= e!95176 e!95173)))

(declare-fun b!146052 () Bool)

(declare-fun e!95168 () Bool)

(assert (=> b!146052 (= e!95168 tp_is_empty!2959)))

(declare-fun e!95169 () Bool)

(declare-fun e!95170 () Bool)

(assert (=> b!146053 (= e!95170 (and tp!11759 tp_is_empty!2959 (array_inv!1451 (_keys!4775 (v!3338 (underlying!493 thiss!992)))) (array_inv!1452 (_values!2989 (v!3338 (underlying!493 thiss!992)))) e!95169))))

(declare-fun b!146054 () Bool)

(assert (=> b!146054 (= e!95169 (and e!95175 mapRes!4950))))

(declare-fun condMapEmpty!4949 () Bool)

(declare-fun mapDefault!4950 () ValueCell!1136)

