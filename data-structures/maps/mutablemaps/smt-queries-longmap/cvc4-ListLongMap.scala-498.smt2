; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11286 () Bool)

(assert start!11286)

(declare-fun b!93074 () Bool)

(declare-fun b_free!2373 () Bool)

(declare-fun b_next!2373 () Bool)

(assert (=> b!93074 (= b_free!2373 (not b_next!2373))))

(declare-fun tp!9380 () Bool)

(declare-fun b_and!5665 () Bool)

(assert (=> b!93074 (= tp!9380 b_and!5665)))

(declare-fun b!93063 () Bool)

(declare-fun b_free!2375 () Bool)

(declare-fun b_next!2375 () Bool)

(assert (=> b!93063 (= b_free!2375 (not b_next!2375))))

(declare-fun tp!9379 () Bool)

(declare-fun b_and!5667 () Bool)

(assert (=> b!93063 (= tp!9379 b_and!5667)))

(declare-fun e!60780 () Bool)

(declare-fun e!60771 () Bool)

(declare-fun tp_is_empty!2603 () Bool)

(declare-datatypes ((V!3117 0))(
  ( (V!3118 (val!1346 Int)) )
))
(declare-datatypes ((array!4176 0))(
  ( (array!4177 (arr!1986 (Array (_ BitVec 32) (_ BitVec 64))) (size!2234 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!958 0))(
  ( (ValueCellFull!958 (v!2748 V!3117)) (EmptyCell!958) )
))
(declare-datatypes ((array!4178 0))(
  ( (array!4179 (arr!1987 (Array (_ BitVec 32) ValueCell!958)) (size!2235 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!824 0))(
  ( (LongMapFixedSize!825 (defaultEntry!2426 Int) (mask!6496 (_ BitVec 32)) (extraKeys!2255 (_ BitVec 32)) (zeroValue!2313 V!3117) (minValue!2313 V!3117) (_size!461 (_ BitVec 32)) (_keys!4108 array!4176) (_values!2409 array!4178) (_vacant!461 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!824)

(declare-fun array_inv!1191 (array!4176) Bool)

(declare-fun array_inv!1192 (array!4178) Bool)

(assert (=> b!93063 (= e!60780 (and tp!9379 tp_is_empty!2603 (array_inv!1191 (_keys!4108 newMap!16)) (array_inv!1192 (_values!2409 newMap!16)) e!60771))))

(declare-fun mapIsEmpty!3637 () Bool)

(declare-fun mapRes!3637 () Bool)

(assert (=> mapIsEmpty!3637 mapRes!3637))

(declare-fun b!93064 () Bool)

(declare-datatypes ((Unit!2798 0))(
  ( (Unit!2799) )
))
(declare-fun e!60775 () Unit!2798)

(declare-fun Unit!2800 () Unit!2798)

(assert (=> b!93064 (= e!60775 Unit!2800)))

(declare-fun lt!45852 () Unit!2798)

(declare-datatypes ((Cell!628 0))(
  ( (Cell!629 (v!2749 LongMapFixedSize!824)) )
))
(declare-datatypes ((LongMap!628 0))(
  ( (LongMap!629 (underlying!325 Cell!628)) )
))
(declare-fun thiss!992 () LongMap!628)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!91 (array!4176 array!4178 (_ BitVec 32) (_ BitVec 32) V!3117 V!3117 (_ BitVec 64) (_ BitVec 32) Int) Unit!2798)

(assert (=> b!93064 (= lt!45852 (lemmaListMapContainsThenArrayContainsFrom!91 (_keys!4108 (v!2749 (underlying!325 thiss!992))) (_values!2409 (v!2749 (underlying!325 thiss!992))) (mask!6496 (v!2749 (underlying!325 thiss!992))) (extraKeys!2255 (v!2749 (underlying!325 thiss!992))) (zeroValue!2313 (v!2749 (underlying!325 thiss!992))) (minValue!2313 (v!2749 (underlying!325 thiss!992))) (select (arr!1986 (_keys!4108 (v!2749 (underlying!325 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2426 (v!2749 (underlying!325 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4176 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!93064 (arrayContainsKey!0 (_keys!4108 (v!2749 (underlying!325 thiss!992))) (select (arr!1986 (_keys!4108 (v!2749 (underlying!325 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!45836 () Unit!2798)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4176 (_ BitVec 32) (_ BitVec 32)) Unit!2798)

(assert (=> b!93064 (= lt!45836 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4108 (v!2749 (underlying!325 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1595 0))(
  ( (Nil!1592) (Cons!1591 (h!2183 (_ BitVec 64)) (t!5481 List!1595)) )
))
(declare-fun arrayNoDuplicates!0 (array!4176 (_ BitVec 32) List!1595) Bool)

(assert (=> b!93064 (arrayNoDuplicates!0 (_keys!4108 (v!2749 (underlying!325 thiss!992))) from!355 Nil!1592)))

(declare-fun lt!45847 () Unit!2798)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4176 (_ BitVec 32) (_ BitVec 64) List!1595) Unit!2798)

(assert (=> b!93064 (= lt!45847 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4108 (v!2749 (underlying!325 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1986 (_keys!4108 (v!2749 (underlying!325 thiss!992)))) from!355) (Cons!1591 (select (arr!1986 (_keys!4108 (v!2749 (underlying!325 thiss!992)))) from!355) Nil!1592)))))

(assert (=> b!93064 false))

(declare-fun b!93065 () Bool)

(declare-fun res!47273 () Bool)

(declare-fun e!60767 () Bool)

(assert (=> b!93065 (=> (not res!47273) (not e!60767))))

(assert (=> b!93065 (= res!47273 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6496 newMap!16)) (_size!461 (v!2749 (underlying!325 thiss!992)))))))

(declare-fun b!93066 () Bool)

(declare-fun e!60772 () Bool)

(assert (=> b!93066 (= e!60771 (and e!60772 mapRes!3637))))

(declare-fun condMapEmpty!3637 () Bool)

(declare-fun mapDefault!3637 () ValueCell!958)

