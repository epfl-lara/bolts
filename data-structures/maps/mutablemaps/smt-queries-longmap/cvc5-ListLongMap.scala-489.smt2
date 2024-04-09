; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!10958 () Bool)

(assert start!10958)

(declare-fun b!88696 () Bool)

(declare-fun b_free!2257 () Bool)

(declare-fun b_next!2257 () Bool)

(assert (=> b!88696 (= b_free!2257 (not b_next!2257))))

(declare-fun tp!9010 () Bool)

(declare-fun b_and!5321 () Bool)

(assert (=> b!88696 (= tp!9010 b_and!5321)))

(declare-fun b!88694 () Bool)

(declare-fun b_free!2259 () Bool)

(declare-fun b_next!2259 () Bool)

(assert (=> b!88694 (= b_free!2259 (not b_next!2259))))

(declare-fun tp!9009 () Bool)

(declare-fun b_and!5323 () Bool)

(assert (=> b!88694 (= tp!9009 b_and!5323)))

(declare-fun mapIsEmpty!3443 () Bool)

(declare-fun mapRes!3444 () Bool)

(assert (=> mapIsEmpty!3443 mapRes!3444))

(declare-fun b!88687 () Bool)

(declare-fun res!45392 () Bool)

(declare-fun e!57756 () Bool)

(assert (=> b!88687 (=> (not res!45392) (not e!57756))))

(declare-datatypes ((V!3041 0))(
  ( (V!3042 (val!1317 Int)) )
))
(declare-datatypes ((array!4052 0))(
  ( (array!4053 (arr!1928 (Array (_ BitVec 32) (_ BitVec 64))) (size!2174 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!929 0))(
  ( (ValueCellFull!929 (v!2673 V!3041)) (EmptyCell!929) )
))
(declare-datatypes ((array!4054 0))(
  ( (array!4055 (arr!1929 (Array (_ BitVec 32) ValueCell!929)) (size!2175 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!766 0))(
  ( (LongMapFixedSize!767 (defaultEntry!2371 Int) (mask!6415 (_ BitVec 32)) (extraKeys!2204 (_ BitVec 32)) (zeroValue!2260 V!3041) (minValue!2260 V!3041) (_size!432 (_ BitVec 32)) (_keys!4049 array!4052) (_values!2354 array!4054) (_vacant!432 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!766)

(declare-fun valid!332 (LongMapFixedSize!766) Bool)

(assert (=> b!88687 (= res!45392 (valid!332 newMap!16))))

(declare-fun b!88688 () Bool)

(declare-datatypes ((Unit!2651 0))(
  ( (Unit!2652) )
))
(declare-fun e!57753 () Unit!2651)

(declare-fun Unit!2653 () Unit!2651)

(assert (=> b!88688 (= e!57753 Unit!2653)))

(declare-fun lt!42351 () Unit!2651)

(declare-datatypes ((Cell!572 0))(
  ( (Cell!573 (v!2674 LongMapFixedSize!766)) )
))
(declare-datatypes ((LongMap!572 0))(
  ( (LongMap!573 (underlying!297 Cell!572)) )
))
(declare-fun thiss!992 () LongMap!572)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!75 (array!4052 array!4054 (_ BitVec 32) (_ BitVec 32) V!3041 V!3041 (_ BitVec 64) (_ BitVec 32) Int) Unit!2651)

(assert (=> b!88688 (= lt!42351 (lemmaListMapContainsThenArrayContainsFrom!75 (_keys!4049 (v!2674 (underlying!297 thiss!992))) (_values!2354 (v!2674 (underlying!297 thiss!992))) (mask!6415 (v!2674 (underlying!297 thiss!992))) (extraKeys!2204 (v!2674 (underlying!297 thiss!992))) (zeroValue!2260 (v!2674 (underlying!297 thiss!992))) (minValue!2260 (v!2674 (underlying!297 thiss!992))) (select (arr!1928 (_keys!4049 (v!2674 (underlying!297 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2371 (v!2674 (underlying!297 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4052 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!88688 (arrayContainsKey!0 (_keys!4049 (v!2674 (underlying!297 thiss!992))) (select (arr!1928 (_keys!4049 (v!2674 (underlying!297 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!42358 () Unit!2651)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4052 (_ BitVec 32) (_ BitVec 32)) Unit!2651)

(assert (=> b!88688 (= lt!42358 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4049 (v!2674 (underlying!297 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1558 0))(
  ( (Nil!1555) (Cons!1554 (h!2146 (_ BitVec 64)) (t!5316 List!1558)) )
))
(declare-fun arrayNoDuplicates!0 (array!4052 (_ BitVec 32) List!1558) Bool)

(assert (=> b!88688 (arrayNoDuplicates!0 (_keys!4049 (v!2674 (underlying!297 thiss!992))) from!355 Nil!1555)))

(declare-fun lt!42347 () Unit!2651)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4052 (_ BitVec 32) (_ BitVec 64) List!1558) Unit!2651)

(assert (=> b!88688 (= lt!42347 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4049 (v!2674 (underlying!297 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1928 (_keys!4049 (v!2674 (underlying!297 thiss!992)))) from!355) (Cons!1554 (select (arr!1928 (_keys!4049 (v!2674 (underlying!297 thiss!992)))) from!355) Nil!1555)))))

(assert (=> b!88688 false))

(declare-fun b!88689 () Bool)

(declare-fun res!45396 () Bool)

(assert (=> b!88689 (=> (not res!45396) (not e!57756))))

(assert (=> b!88689 (= res!45396 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2174 (_keys!4049 (v!2674 (underlying!297 thiss!992)))))))))

(declare-fun mapNonEmpty!3443 () Bool)

(declare-fun tp!9011 () Bool)

(declare-fun e!57760 () Bool)

(assert (=> mapNonEmpty!3443 (= mapRes!3444 (and tp!9011 e!57760))))

(declare-fun mapRest!3444 () (Array (_ BitVec 32) ValueCell!929))

(declare-fun mapKey!3443 () (_ BitVec 32))

(declare-fun mapValue!3444 () ValueCell!929)

(assert (=> mapNonEmpty!3443 (= (arr!1929 (_values!2354 (v!2674 (underlying!297 thiss!992)))) (store mapRest!3444 mapKey!3443 mapValue!3444))))

(declare-fun b!88690 () Bool)

(declare-fun e!57766 () Bool)

(assert (=> b!88690 (= e!57766 (arrayNoDuplicates!0 (_keys!4049 (v!2674 (underlying!297 thiss!992))) #b00000000000000000000000000000000 Nil!1555))))

(declare-fun res!45395 () Bool)

(assert (=> start!10958 (=> (not res!45395) (not e!57756))))

(declare-fun valid!333 (LongMap!572) Bool)

(assert (=> start!10958 (= res!45395 (valid!333 thiss!992))))

(assert (=> start!10958 e!57756))

(declare-fun e!57770 () Bool)

(assert (=> start!10958 e!57770))

(assert (=> start!10958 true))

(declare-fun e!57758 () Bool)

(assert (=> start!10958 e!57758))

(declare-fun b!88691 () Bool)

(declare-fun e!57761 () Bool)

(declare-fun e!57762 () Bool)

(declare-fun mapRes!3443 () Bool)

(assert (=> b!88691 (= e!57761 (and e!57762 mapRes!3443))))

(declare-fun condMapEmpty!3444 () Bool)

(declare-fun mapDefault!3443 () ValueCell!929)

