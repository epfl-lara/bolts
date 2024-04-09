; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8738 () Bool)

(assert start!8738)

(declare-fun b!60681 () Bool)

(declare-fun b_free!1989 () Bool)

(declare-fun b_next!1989 () Bool)

(assert (=> b!60681 (= b_free!1989 (not b_next!1989))))

(declare-fun tp!8087 () Bool)

(declare-fun b_and!3701 () Bool)

(assert (=> b!60681 (= tp!8087 b_and!3701)))

(declare-fun b!60665 () Bool)

(declare-fun b_free!1991 () Bool)

(declare-fun b_next!1991 () Bool)

(assert (=> b!60665 (= b_free!1991 (not b_next!1991))))

(declare-fun tp!8088 () Bool)

(declare-fun b_and!3703 () Bool)

(assert (=> b!60665 (= tp!8088 b_and!3703)))

(declare-fun e!39919 () Bool)

(declare-fun e!39918 () Bool)

(declare-datatypes ((V!2861 0))(
  ( (V!2862 (val!1250 Int)) )
))
(declare-datatypes ((array!3750 0))(
  ( (array!3751 (arr!1794 (Array (_ BitVec 32) (_ BitVec 64))) (size!2025 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!862 0))(
  ( (ValueCellFull!862 (v!2404 V!2861)) (EmptyCell!862) )
))
(declare-datatypes ((array!3752 0))(
  ( (array!3753 (arr!1795 (Array (_ BitVec 32) ValueCell!862)) (size!2026 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!632 0))(
  ( (LongMapFixedSize!633 (defaultEntry!2068 Int) (mask!5964 (_ BitVec 32)) (extraKeys!1951 (_ BitVec 32)) (zeroValue!1982 V!2861) (minValue!1982 V!2861) (_size!365 (_ BitVec 32)) (_keys!3696 array!3750) (_values!2051 array!3752) (_vacant!365 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!632)

(declare-fun tp_is_empty!2411 () Bool)

(declare-fun array_inv!1059 (array!3750) Bool)

(declare-fun array_inv!1060 (array!3752) Bool)

(assert (=> b!60665 (= e!39919 (and tp!8088 tp_is_empty!2411 (array_inv!1059 (_keys!3696 newMap!16)) (array_inv!1060 (_values!2051 newMap!16)) e!39918))))

(declare-fun mapIsEmpty!2923 () Bool)

(declare-fun mapRes!2923 () Bool)

(assert (=> mapIsEmpty!2923 mapRes!2923))

(declare-fun b!60666 () Bool)

(declare-fun res!33502 () Bool)

(declare-fun e!39916 () Bool)

(assert (=> b!60666 (=> (not res!33502) (not e!39916))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((Cell!442 0))(
  ( (Cell!443 (v!2405 LongMapFixedSize!632)) )
))
(declare-datatypes ((LongMap!442 0))(
  ( (LongMap!443 (underlying!232 Cell!442)) )
))
(declare-fun thiss!992 () LongMap!442)

(assert (=> b!60666 (= res!33502 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2025 (_keys!3696 (v!2405 (underlying!232 thiss!992)))))))))

(declare-fun b!60667 () Bool)

(declare-fun e!39917 () Bool)

(assert (=> b!60667 (= e!39917 tp_is_empty!2411)))

(declare-fun b!60668 () Bool)

(declare-fun res!33501 () Bool)

(assert (=> b!60668 (=> (not res!33501) (not e!39916))))

(assert (=> b!60668 (= res!33501 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5964 newMap!16)) (_size!365 (v!2405 (underlying!232 thiss!992)))))))

(declare-fun b!60669 () Bool)

(declare-fun e!39908 () Bool)

(assert (=> b!60669 (= e!39908 tp_is_empty!2411)))

(declare-fun b!60671 () Bool)

(declare-datatypes ((Unit!1626 0))(
  ( (Unit!1627) )
))
(declare-fun e!39911 () Unit!1626)

(declare-fun Unit!1628 () Unit!1626)

(assert (=> b!60671 (= e!39911 Unit!1628)))

(declare-fun b!60672 () Bool)

(declare-fun res!33504 () Bool)

(declare-fun e!39915 () Bool)

(assert (=> b!60672 (=> (not res!33504) (not e!39915))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!60672 (= res!33504 (validMask!0 (mask!5964 (v!2405 (underlying!232 thiss!992)))))))

(declare-fun b!60673 () Bool)

(declare-fun e!39920 () Bool)

(assert (=> b!60673 (= e!39916 e!39920)))

(declare-fun res!33500 () Bool)

(assert (=> b!60673 (=> (not res!33500) (not e!39920))))

(declare-datatypes ((tuple2!2064 0))(
  ( (tuple2!2065 (_1!1042 (_ BitVec 64)) (_2!1042 V!2861)) )
))
(declare-datatypes ((List!1461 0))(
  ( (Nil!1458) (Cons!1457 (h!2039 tuple2!2064) (t!4843 List!1461)) )
))
(declare-datatypes ((ListLongMap!1387 0))(
  ( (ListLongMap!1388 (toList!709 List!1461)) )
))
(declare-fun lt!24800 () ListLongMap!1387)

(declare-fun lt!24805 () ListLongMap!1387)

(assert (=> b!60673 (= res!33500 (and (= lt!24800 lt!24805) (not (= (select (arr!1794 (_keys!3696 (v!2405 (underlying!232 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1794 (_keys!3696 (v!2405 (underlying!232 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1116 (LongMapFixedSize!632) ListLongMap!1387)

(assert (=> b!60673 (= lt!24805 (map!1116 newMap!16))))

(declare-fun getCurrentListMap!406 (array!3750 array!3752 (_ BitVec 32) (_ BitVec 32) V!2861 V!2861 (_ BitVec 32) Int) ListLongMap!1387)

(assert (=> b!60673 (= lt!24800 (getCurrentListMap!406 (_keys!3696 (v!2405 (underlying!232 thiss!992))) (_values!2051 (v!2405 (underlying!232 thiss!992))) (mask!5964 (v!2405 (underlying!232 thiss!992))) (extraKeys!1951 (v!2405 (underlying!232 thiss!992))) (zeroValue!1982 (v!2405 (underlying!232 thiss!992))) (minValue!1982 (v!2405 (underlying!232 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2068 (v!2405 (underlying!232 thiss!992)))))))

(declare-fun b!60674 () Bool)

(declare-fun e!39912 () Bool)

(assert (=> b!60674 (= e!39912 tp_is_empty!2411)))

(declare-fun b!60675 () Bool)

(declare-fun e!39907 () Bool)

(declare-fun e!39910 () Bool)

(assert (=> b!60675 (= e!39907 e!39910)))

(declare-fun b!60676 () Bool)

(declare-fun res!33506 () Bool)

(assert (=> b!60676 (=> (not res!33506) (not e!39916))))

(declare-fun valid!261 (LongMapFixedSize!632) Bool)

(assert (=> b!60676 (= res!33506 (valid!261 newMap!16))))

(declare-fun b!60677 () Bool)

(declare-fun e!39914 () Bool)

(assert (=> b!60677 (= e!39910 e!39914)))

(declare-fun mapNonEmpty!2923 () Bool)

(declare-fun mapRes!2924 () Bool)

(declare-fun tp!8089 () Bool)

(assert (=> mapNonEmpty!2923 (= mapRes!2924 (and tp!8089 e!39917))))

(declare-fun mapRest!2924 () (Array (_ BitVec 32) ValueCell!862))

(declare-fun mapKey!2924 () (_ BitVec 32))

(declare-fun mapValue!2924 () ValueCell!862)

(assert (=> mapNonEmpty!2923 (= (arr!1795 (_values!2051 newMap!16)) (store mapRest!2924 mapKey!2924 mapValue!2924))))

(declare-fun b!60678 () Bool)

(declare-fun e!39909 () Bool)

(assert (=> b!60678 (= e!39909 tp_is_empty!2411)))

(declare-fun b!60679 () Bool)

(assert (=> b!60679 (= e!39918 (and e!39908 mapRes!2924))))

(declare-fun condMapEmpty!2924 () Bool)

(declare-fun mapDefault!2923 () ValueCell!862)

