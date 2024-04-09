; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15226 () Bool)

(assert start!15226)

(declare-fun b!146737 () Bool)

(declare-fun b_free!3133 () Bool)

(declare-fun b_next!3133 () Bool)

(assert (=> b!146737 (= b_free!3133 (not b_next!3133))))

(declare-fun tp!11903 () Bool)

(declare-fun b_and!9209 () Bool)

(assert (=> b!146737 (= tp!11903 b_and!9209)))

(declare-fun b!146738 () Bool)

(declare-fun b_free!3135 () Bool)

(declare-fun b_next!3135 () Bool)

(assert (=> b!146738 (= b_free!3135 (not b_next!3135))))

(declare-fun tp!11904 () Bool)

(declare-fun b_and!9211 () Bool)

(assert (=> b!146738 (= tp!11904 b_and!9211)))

(declare-fun e!95783 () Bool)

(declare-datatypes ((V!3625 0))(
  ( (V!3626 (val!1536 Int)) )
))
(declare-datatypes ((array!5010 0))(
  ( (array!5011 (arr!2366 (Array (_ BitVec 32) (_ BitVec 64))) (size!2642 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1148 0))(
  ( (ValueCellFull!1148 (v!3360 V!3625)) (EmptyCell!1148) )
))
(declare-datatypes ((array!5012 0))(
  ( (array!5013 (arr!2367 (Array (_ BitVec 32) ValueCell!1148)) (size!2643 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1204 0))(
  ( (LongMapFixedSize!1205 (defaultEntry!3018 Int) (mask!7398 (_ BitVec 32)) (extraKeys!2763 (_ BitVec 32)) (zeroValue!2863 V!3625) (minValue!2863 V!3625) (_size!651 (_ BitVec 32)) (_keys!4787 array!5010) (_values!3001 array!5012) (_vacant!651 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!986 0))(
  ( (Cell!987 (v!3361 LongMapFixedSize!1204)) )
))
(declare-datatypes ((LongMap!986 0))(
  ( (LongMap!987 (underlying!504 Cell!986)) )
))
(declare-fun thiss!992 () LongMap!986)

(declare-fun tp_is_empty!2983 () Bool)

(declare-fun e!95772 () Bool)

(declare-fun array_inv!1469 (array!5010) Bool)

(declare-fun array_inv!1470 (array!5012) Bool)

(assert (=> b!146737 (= e!95783 (and tp!11903 tp_is_empty!2983 (array_inv!1469 (_keys!4787 (v!3361 (underlying!504 thiss!992)))) (array_inv!1470 (_values!3001 (v!3361 (underlying!504 thiss!992)))) e!95772))))

(declare-fun mapIsEmpty!5021 () Bool)

(declare-fun mapRes!5021 () Bool)

(assert (=> mapIsEmpty!5021 mapRes!5021))

(declare-fun e!95784 () Bool)

(declare-fun e!95779 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!1204)

(assert (=> b!146738 (= e!95784 (and tp!11904 tp_is_empty!2983 (array_inv!1469 (_keys!4787 newMap!16)) (array_inv!1470 (_values!3001 newMap!16)) e!95779))))

(declare-fun res!69781 () Bool)

(declare-fun e!95780 () Bool)

(assert (=> start!15226 (=> (not res!69781) (not e!95780))))

(declare-fun valid!586 (LongMap!986) Bool)

(assert (=> start!15226 (= res!69781 (valid!586 thiss!992))))

(assert (=> start!15226 e!95780))

(declare-fun e!95777 () Bool)

(assert (=> start!15226 e!95777))

(assert (=> start!15226 true))

(assert (=> start!15226 e!95784))

(declare-fun b!146739 () Bool)

(declare-fun e!95788 () Bool)

(assert (=> b!146739 (= e!95788 tp_is_empty!2983)))

(declare-fun b!146740 () Bool)

(declare-fun e!95791 () Bool)

(assert (=> b!146740 (= e!95791 tp_is_empty!2983)))

(declare-fun b!146741 () Bool)

(declare-datatypes ((Unit!4648 0))(
  ( (Unit!4649) )
))
(declare-fun e!95785 () Unit!4648)

(declare-fun Unit!4650 () Unit!4648)

(assert (=> b!146741 (= e!95785 Unit!4650)))

(declare-fun lt!77256 () Unit!4648)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!159 (array!5010 array!5012 (_ BitVec 32) (_ BitVec 32) V!3625 V!3625 (_ BitVec 64) (_ BitVec 32) Int) Unit!4648)

(assert (=> b!146741 (= lt!77256 (lemmaListMapContainsThenArrayContainsFrom!159 (_keys!4787 (v!3361 (underlying!504 thiss!992))) (_values!3001 (v!3361 (underlying!504 thiss!992))) (mask!7398 (v!3361 (underlying!504 thiss!992))) (extraKeys!2763 (v!3361 (underlying!504 thiss!992))) (zeroValue!2863 (v!3361 (underlying!504 thiss!992))) (minValue!2863 (v!3361 (underlying!504 thiss!992))) (select (arr!2366 (_keys!4787 (v!3361 (underlying!504 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3018 (v!3361 (underlying!504 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!5010 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!146741 (arrayContainsKey!0 (_keys!4787 (v!3361 (underlying!504 thiss!992))) (select (arr!2366 (_keys!4787 (v!3361 (underlying!504 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!77262 () Unit!4648)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!5010 (_ BitVec 32) (_ BitVec 32)) Unit!4648)

(assert (=> b!146741 (= lt!77262 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4787 (v!3361 (underlying!504 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1801 0))(
  ( (Nil!1798) (Cons!1797 (h!2405 (_ BitVec 64)) (t!6526 List!1801)) )
))
(declare-fun arrayNoDuplicates!0 (array!5010 (_ BitVec 32) List!1801) Bool)

(assert (=> b!146741 (arrayNoDuplicates!0 (_keys!4787 (v!3361 (underlying!504 thiss!992))) from!355 Nil!1798)))

(declare-fun lt!77266 () Unit!4648)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!5010 (_ BitVec 32) (_ BitVec 64) List!1801) Unit!4648)

(assert (=> b!146741 (= lt!77266 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4787 (v!3361 (underlying!504 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2366 (_keys!4787 (v!3361 (underlying!504 thiss!992)))) from!355) (Cons!1797 (select (arr!2366 (_keys!4787 (v!3361 (underlying!504 thiss!992)))) from!355) Nil!1798)))))

(assert (=> b!146741 false))

(declare-fun b!146742 () Bool)

(declare-fun e!95789 () Bool)

(assert (=> b!146742 (= e!95789 e!95783)))

(declare-fun b!146743 () Bool)

(declare-fun res!69786 () Bool)

(assert (=> b!146743 (=> (not res!69786) (not e!95780))))

(declare-fun valid!587 (LongMapFixedSize!1204) Bool)

(assert (=> b!146743 (= res!69786 (valid!587 newMap!16))))

(declare-fun mapNonEmpty!5021 () Bool)

(declare-fun mapRes!5022 () Bool)

(declare-fun tp!11901 () Bool)

(assert (=> mapNonEmpty!5021 (= mapRes!5022 (and tp!11901 e!95788))))

(declare-fun mapRest!5022 () (Array (_ BitVec 32) ValueCell!1148))

(declare-fun mapKey!5022 () (_ BitVec 32))

(declare-fun mapValue!5021 () ValueCell!1148)

(assert (=> mapNonEmpty!5021 (= (arr!2367 (_values!3001 newMap!16)) (store mapRest!5022 mapKey!5022 mapValue!5021))))

(declare-fun b!146744 () Bool)

(declare-fun e!95774 () Bool)

(assert (=> b!146744 (= e!95772 (and e!95774 mapRes!5021))))

(declare-fun condMapEmpty!5021 () Bool)

(declare-fun mapDefault!5021 () ValueCell!1148)

