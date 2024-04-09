; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!9606 () Bool)

(assert start!9606)

(declare-fun b!70828 () Bool)

(declare-fun b_free!2109 () Bool)

(declare-fun b_next!2109 () Bool)

(assert (=> b!70828 (= b_free!2109 (not b_next!2109))))

(declare-fun tp!8495 () Bool)

(declare-fun b_and!4365 () Bool)

(assert (=> b!70828 (= tp!8495 b_and!4365)))

(declare-fun b!70838 () Bool)

(declare-fun b_free!2111 () Bool)

(declare-fun b_next!2111 () Bool)

(assert (=> b!70838 (= b_free!2111 (not b_next!2111))))

(declare-fun tp!8498 () Bool)

(declare-fun b_and!4367 () Bool)

(assert (=> b!70838 (= tp!8498 b_and!4367)))

(declare-fun b!70821 () Bool)

(declare-fun e!46411 () Bool)

(declare-fun e!46418 () Bool)

(assert (=> b!70821 (= e!46411 e!46418)))

(declare-fun res!37818 () Bool)

(assert (=> b!70821 (=> (not res!37818) (not e!46418))))

(declare-datatypes ((V!2941 0))(
  ( (V!2942 (val!1280 Int)) )
))
(declare-datatypes ((array!3884 0))(
  ( (array!3885 (arr!1854 (Array (_ BitVec 32) (_ BitVec 64))) (size!2091 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!892 0))(
  ( (ValueCellFull!892 (v!2518 V!2941)) (EmptyCell!892) )
))
(declare-datatypes ((array!3886 0))(
  ( (array!3887 (arr!1855 (Array (_ BitVec 32) ValueCell!892)) (size!2092 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!692 0))(
  ( (LongMapFixedSize!693 (defaultEntry!2193 Int) (mask!6150 (_ BitVec 32)) (extraKeys!2056 (_ BitVec 32)) (zeroValue!2097 V!2941) (minValue!2097 V!2941) (_size!395 (_ BitVec 32)) (_keys!3841 array!3884) (_values!2176 array!3886) (_vacant!395 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!502 0))(
  ( (Cell!503 (v!2519 LongMapFixedSize!692)) )
))
(declare-datatypes ((LongMap!502 0))(
  ( (LongMap!503 (underlying!262 Cell!502)) )
))
(declare-fun thiss!992 () LongMap!502)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!70821 (= res!37818 (and (not (= (select (arr!1854 (_keys!3841 (v!2519 (underlying!262 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1854 (_keys!3841 (v!2519 (underlying!262 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!31242 () V!2941)

(declare-fun get!1147 (ValueCell!892 V!2941) V!2941)

(declare-fun dynLambda!332 (Int (_ BitVec 64)) V!2941)

(assert (=> b!70821 (= lt!31242 (get!1147 (select (arr!1855 (_values!2176 (v!2519 (underlying!262 thiss!992)))) from!355) (dynLambda!332 (defaultEntry!2193 (v!2519 (underlying!262 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!70822 () Bool)

(declare-fun e!46415 () Bool)

(declare-fun tp_is_empty!2471 () Bool)

(assert (=> b!70822 (= e!46415 tp_is_empty!2471)))

(declare-fun b!70823 () Bool)

(declare-fun e!46423 () Bool)

(assert (=> b!70823 (= e!46423 tp_is_empty!2471)))

(declare-fun b!70824 () Bool)

(declare-fun e!46417 () Bool)

(declare-fun e!46427 () Bool)

(assert (=> b!70824 (= e!46417 e!46427)))

(declare-fun b!70825 () Bool)

(declare-fun res!37820 () Bool)

(declare-fun e!46416 () Bool)

(assert (=> b!70825 (=> (not res!37820) (not e!46416))))

(declare-fun newMap!16 () LongMapFixedSize!692)

(assert (=> b!70825 (= res!37820 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6150 newMap!16)) (_size!395 (v!2519 (underlying!262 thiss!992)))))))

(declare-fun b!70826 () Bool)

(declare-fun e!46413 () Bool)

(declare-fun e!46420 () Bool)

(assert (=> b!70826 (= e!46413 (not e!46420))))

(declare-fun res!37824 () Bool)

(assert (=> b!70826 (=> res!37824 e!46420)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!70826 (= res!37824 (not (validMask!0 (mask!6150 (v!2519 (underlying!262 thiss!992))))))))

(declare-datatypes ((tuple2!2142 0))(
  ( (tuple2!2143 (_1!1081 (_ BitVec 64)) (_2!1081 V!2941)) )
))
(declare-datatypes ((List!1505 0))(
  ( (Nil!1502) (Cons!1501 (h!2087 tuple2!2142) (t!5049 List!1505)) )
))
(declare-datatypes ((ListLongMap!1435 0))(
  ( (ListLongMap!1436 (toList!733 List!1505)) )
))
(declare-fun lt!31235 () ListLongMap!1435)

(declare-fun lt!31239 () tuple2!2142)

(declare-fun lt!31236 () tuple2!2142)

(declare-fun +!96 (ListLongMap!1435 tuple2!2142) ListLongMap!1435)

(assert (=> b!70826 (= (+!96 (+!96 lt!31235 lt!31239) lt!31236) (+!96 (+!96 lt!31235 lt!31236) lt!31239))))

(assert (=> b!70826 (= lt!31236 (tuple2!2143 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2097 (v!2519 (underlying!262 thiss!992)))))))

(assert (=> b!70826 (= lt!31239 (tuple2!2143 (select (arr!1854 (_keys!3841 (v!2519 (underlying!262 thiss!992)))) from!355) lt!31242))))

(declare-datatypes ((Unit!2010 0))(
  ( (Unit!2011) )
))
(declare-fun lt!31244 () Unit!2010)

(declare-fun addCommutativeForDiffKeys!15 (ListLongMap!1435 (_ BitVec 64) V!2941 (_ BitVec 64) V!2941) Unit!2010)

(assert (=> b!70826 (= lt!31244 (addCommutativeForDiffKeys!15 lt!31235 (select (arr!1854 (_keys!3841 (v!2519 (underlying!262 thiss!992)))) from!355) lt!31242 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2097 (v!2519 (underlying!262 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!60 (array!3884 array!3886 (_ BitVec 32) (_ BitVec 32) V!2941 V!2941 (_ BitVec 32) Int) ListLongMap!1435)

(assert (=> b!70826 (= lt!31235 (getCurrentListMapNoExtraKeys!60 (_keys!3841 (v!2519 (underlying!262 thiss!992))) (_values!2176 (v!2519 (underlying!262 thiss!992))) (mask!6150 (v!2519 (underlying!262 thiss!992))) (extraKeys!2056 (v!2519 (underlying!262 thiss!992))) (zeroValue!2097 (v!2519 (underlying!262 thiss!992))) (minValue!2097 (v!2519 (underlying!262 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2193 (v!2519 (underlying!262 thiss!992)))))))

(declare-fun e!46421 () Bool)

(declare-fun array_inv!1099 (array!3884) Bool)

(declare-fun array_inv!1100 (array!3886) Bool)

(assert (=> b!70828 (= e!46427 (and tp!8495 tp_is_empty!2471 (array_inv!1099 (_keys!3841 (v!2519 (underlying!262 thiss!992)))) (array_inv!1100 (_values!2176 (v!2519 (underlying!262 thiss!992)))) e!46421))))

(declare-fun b!70829 () Bool)

(declare-fun e!46412 () Unit!2010)

(declare-fun Unit!2012 () Unit!2010)

(assert (=> b!70829 (= e!46412 Unit!2012)))

(declare-fun b!70830 () Bool)

(declare-fun res!37822 () Bool)

(assert (=> b!70830 (=> (not res!37822) (not e!46416))))

(assert (=> b!70830 (= res!37822 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2091 (_keys!3841 (v!2519 (underlying!262 thiss!992)))))))))

(declare-fun mapIsEmpty!3151 () Bool)

(declare-fun mapRes!3151 () Bool)

(assert (=> mapIsEmpty!3151 mapRes!3151))

(declare-fun b!70831 () Bool)

(declare-fun e!46425 () Bool)

(assert (=> b!70831 (= e!46425 e!46417)))

(declare-fun b!70832 () Bool)

(declare-fun res!37825 () Bool)

(assert (=> b!70832 (=> (not res!37825) (not e!46416))))

(declare-fun valid!290 (LongMapFixedSize!692) Bool)

(assert (=> b!70832 (= res!37825 (valid!290 newMap!16))))

(declare-fun b!70833 () Bool)

(declare-fun e!46424 () Bool)

(declare-fun e!46414 () Bool)

(assert (=> b!70833 (= e!46424 (and e!46414 mapRes!3151))))

(declare-fun condMapEmpty!3151 () Bool)

(declare-fun mapDefault!3151 () ValueCell!892)

