; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8882 () Bool)

(assert start!8882)

(declare-fun b!62176 () Bool)

(declare-fun b_free!1993 () Bool)

(declare-fun b_next!1993 () Bool)

(assert (=> b!62176 (= b_free!1993 (not b_next!1993))))

(declare-fun tp!8109 () Bool)

(declare-fun b_and!3793 () Bool)

(assert (=> b!62176 (= tp!8109 b_and!3793)))

(declare-fun b!62178 () Bool)

(declare-fun b_free!1995 () Bool)

(declare-fun b_next!1995 () Bool)

(assert (=> b!62178 (= b_free!1995 (not b_next!1995))))

(declare-fun tp!8110 () Bool)

(declare-fun b_and!3795 () Bool)

(assert (=> b!62178 (= tp!8110 b_and!3795)))

(declare-fun mapIsEmpty!2937 () Bool)

(declare-fun mapRes!2937 () Bool)

(assert (=> mapIsEmpty!2937 mapRes!2937))

(declare-fun res!34154 () Bool)

(declare-fun e!40824 () Bool)

(assert (=> start!8882 (=> (not res!34154) (not e!40824))))

(declare-datatypes ((V!2865 0))(
  ( (V!2866 (val!1251 Int)) )
))
(declare-datatypes ((array!3756 0))(
  ( (array!3757 (arr!1796 (Array (_ BitVec 32) (_ BitVec 64))) (size!2028 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!863 0))(
  ( (ValueCellFull!863 (v!2416 V!2865)) (EmptyCell!863) )
))
(declare-datatypes ((array!3758 0))(
  ( (array!3759 (arr!1797 (Array (_ BitVec 32) ValueCell!863)) (size!2029 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!634 0))(
  ( (LongMapFixedSize!635 (defaultEntry!2087 Int) (mask!5993 (_ BitVec 32)) (extraKeys!1966 (_ BitVec 32)) (zeroValue!1999 V!2865) (minValue!1999 V!2865) (_size!366 (_ BitVec 32)) (_keys!3719 array!3756) (_values!2070 array!3758) (_vacant!366 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!444 0))(
  ( (Cell!445 (v!2417 LongMapFixedSize!634)) )
))
(declare-datatypes ((LongMap!444 0))(
  ( (LongMap!445 (underlying!233 Cell!444)) )
))
(declare-fun thiss!992 () LongMap!444)

(declare-fun valid!262 (LongMap!444) Bool)

(assert (=> start!8882 (= res!34154 (valid!262 thiss!992))))

(assert (=> start!8882 e!40824))

(declare-fun e!40826 () Bool)

(assert (=> start!8882 e!40826))

(assert (=> start!8882 true))

(declare-fun e!40831 () Bool)

(assert (=> start!8882 e!40831))

(declare-fun b!62167 () Bool)

(declare-fun e!40832 () Bool)

(assert (=> b!62167 (= e!40832 (and (= (size!2029 (_values!2070 (v!2417 (underlying!233 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5993 (v!2417 (underlying!233 thiss!992))))) (= (size!2028 (_keys!3719 (v!2417 (underlying!233 thiss!992)))) (size!2029 (_values!2070 (v!2417 (underlying!233 thiss!992))))) (bvsge (mask!5993 (v!2417 (underlying!233 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!1966 (v!2417 (underlying!233 thiss!992))) #b00000000000000000000000000000000) (bvsgt (extraKeys!1966 (v!2417 (underlying!233 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!2937 () Bool)

(declare-fun mapRes!2938 () Bool)

(declare-fun tp!8108 () Bool)

(declare-fun e!40833 () Bool)

(assert (=> mapNonEmpty!2937 (= mapRes!2938 (and tp!8108 e!40833))))

(declare-fun mapValue!2938 () ValueCell!863)

(declare-fun mapRest!2937 () (Array (_ BitVec 32) ValueCell!863))

(declare-fun mapKey!2938 () (_ BitVec 32))

(declare-fun newMap!16 () LongMapFixedSize!634)

(assert (=> mapNonEmpty!2937 (= (arr!1797 (_values!2070 newMap!16)) (store mapRest!2937 mapKey!2938 mapValue!2938))))

(declare-fun b!62168 () Bool)

(declare-fun tp_is_empty!2413 () Bool)

(assert (=> b!62168 (= e!40833 tp_is_empty!2413)))

(declare-fun b!62169 () Bool)

(declare-fun e!40820 () Bool)

(assert (=> b!62169 (= e!40820 tp_is_empty!2413)))

(declare-fun b!62170 () Bool)

(declare-fun res!34151 () Bool)

(assert (=> b!62170 (=> (not res!34151) (not e!40832))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!62170 (= res!34151 (validMask!0 (mask!5993 (v!2417 (underlying!233 thiss!992)))))))

(declare-fun b!62171 () Bool)

(declare-datatypes ((Unit!1685 0))(
  ( (Unit!1686) )
))
(declare-fun e!40821 () Unit!1685)

(declare-fun Unit!1687 () Unit!1685)

(assert (=> b!62171 (= e!40821 Unit!1687)))

(declare-fun mapNonEmpty!2938 () Bool)

(declare-fun tp!8107 () Bool)

(declare-fun e!40830 () Bool)

(assert (=> mapNonEmpty!2938 (= mapRes!2937 (and tp!8107 e!40830))))

(declare-fun mapValue!2937 () ValueCell!863)

(declare-fun mapKey!2937 () (_ BitVec 32))

(declare-fun mapRest!2938 () (Array (_ BitVec 32) ValueCell!863))

(assert (=> mapNonEmpty!2938 (= (arr!1797 (_values!2070 (v!2417 (underlying!233 thiss!992)))) (store mapRest!2938 mapKey!2937 mapValue!2937))))

(declare-fun b!62172 () Bool)

(declare-fun Unit!1688 () Unit!1685)

(assert (=> b!62172 (= e!40821 Unit!1688)))

(declare-fun lt!25821 () Unit!1685)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!31 (array!3756 array!3758 (_ BitVec 32) (_ BitVec 32) V!2865 V!2865 (_ BitVec 64) (_ BitVec 32) Int) Unit!1685)

(assert (=> b!62172 (= lt!25821 (lemmaListMapContainsThenArrayContainsFrom!31 (_keys!3719 (v!2417 (underlying!233 thiss!992))) (_values!2070 (v!2417 (underlying!233 thiss!992))) (mask!5993 (v!2417 (underlying!233 thiss!992))) (extraKeys!1966 (v!2417 (underlying!233 thiss!992))) (zeroValue!1999 (v!2417 (underlying!233 thiss!992))) (minValue!1999 (v!2417 (underlying!233 thiss!992))) (select (arr!1796 (_keys!3719 (v!2417 (underlying!233 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2087 (v!2417 (underlying!233 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3756 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!62172 (arrayContainsKey!0 (_keys!3719 (v!2417 (underlying!233 thiss!992))) (select (arr!1796 (_keys!3719 (v!2417 (underlying!233 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!25824 () Unit!1685)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3756 (_ BitVec 32) (_ BitVec 32)) Unit!1685)

(assert (=> b!62172 (= lt!25824 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3719 (v!2417 (underlying!233 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1462 0))(
  ( (Nil!1459) (Cons!1458 (h!2041 (_ BitVec 64)) (t!4856 List!1462)) )
))
(declare-fun arrayNoDuplicates!0 (array!3756 (_ BitVec 32) List!1462) Bool)

(assert (=> b!62172 (arrayNoDuplicates!0 (_keys!3719 (v!2417 (underlying!233 thiss!992))) from!355 Nil!1459)))

(declare-fun lt!25823 () Unit!1685)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3756 (_ BitVec 32) (_ BitVec 64) List!1462) Unit!1685)

(assert (=> b!62172 (= lt!25823 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3719 (v!2417 (underlying!233 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1796 (_keys!3719 (v!2417 (underlying!233 thiss!992)))) from!355) (Cons!1458 (select (arr!1796 (_keys!3719 (v!2417 (underlying!233 thiss!992)))) from!355) Nil!1459)))))

(assert (=> b!62172 false))

(declare-fun b!62173 () Bool)

(declare-fun e!40822 () Bool)

(assert (=> b!62173 (= e!40826 e!40822)))

(declare-fun b!62174 () Bool)

(declare-fun e!40825 () Bool)

(assert (=> b!62174 (= e!40822 e!40825)))

(declare-fun b!62175 () Bool)

(declare-fun res!34155 () Bool)

(assert (=> b!62175 (=> (not res!34155) (not e!40824))))

(assert (=> b!62175 (= res!34155 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2028 (_keys!3719 (v!2417 (underlying!233 thiss!992)))))))))

(declare-fun e!40818 () Bool)

(declare-fun array_inv!1061 (array!3756) Bool)

(declare-fun array_inv!1062 (array!3758) Bool)

(assert (=> b!62176 (= e!40825 (and tp!8109 tp_is_empty!2413 (array_inv!1061 (_keys!3719 (v!2417 (underlying!233 thiss!992)))) (array_inv!1062 (_values!2070 (v!2417 (underlying!233 thiss!992)))) e!40818))))

(declare-fun b!62177 () Bool)

(declare-fun e!40827 () Bool)

(assert (=> b!62177 (= e!40827 (and e!40820 mapRes!2938))))

(declare-fun condMapEmpty!2938 () Bool)

(declare-fun mapDefault!2937 () ValueCell!863)

