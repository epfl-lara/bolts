; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!9596 () Bool)

(assert start!9596)

(declare-fun b!70523 () Bool)

(declare-fun b_free!2089 () Bool)

(declare-fun b_next!2089 () Bool)

(assert (=> b!70523 (= b_free!2089 (not b_next!2089))))

(declare-fun tp!8436 () Bool)

(declare-fun b_and!4325 () Bool)

(assert (=> b!70523 (= tp!8436 b_and!4325)))

(declare-fun b!70521 () Bool)

(declare-fun b_free!2091 () Bool)

(declare-fun b_next!2091 () Bool)

(assert (=> b!70521 (= b_free!2091 (not b_next!2091))))

(declare-fun tp!8438 () Bool)

(declare-fun b_and!4327 () Bool)

(assert (=> b!70521 (= tp!8438 b_and!4327)))

(declare-fun b!70511 () Bool)

(declare-datatypes ((Unit!1994 0))(
  ( (Unit!1995) )
))
(declare-fun e!46147 () Unit!1994)

(declare-fun Unit!1996 () Unit!1994)

(assert (=> b!70511 (= e!46147 Unit!1996)))

(declare-fun b!70512 () Bool)

(declare-fun e!46156 () Bool)

(declare-fun e!46150 () Bool)

(assert (=> b!70512 (= e!46156 (not e!46150))))

(declare-fun res!37704 () Bool)

(assert (=> b!70512 (=> res!37704 e!46150)))

(declare-datatypes ((V!2929 0))(
  ( (V!2930 (val!1275 Int)) )
))
(declare-datatypes ((array!3864 0))(
  ( (array!3865 (arr!1844 (Array (_ BitVec 32) (_ BitVec 64))) (size!2081 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!887 0))(
  ( (ValueCellFull!887 (v!2508 V!2929)) (EmptyCell!887) )
))
(declare-datatypes ((array!3866 0))(
  ( (array!3867 (arr!1845 (Array (_ BitVec 32) ValueCell!887)) (size!2082 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!682 0))(
  ( (LongMapFixedSize!683 (defaultEntry!2188 Int) (mask!6143 (_ BitVec 32)) (extraKeys!2051 (_ BitVec 32)) (zeroValue!2092 V!2929) (minValue!2092 V!2929) (_size!390 (_ BitVec 32)) (_keys!3836 array!3864) (_values!2171 array!3866) (_vacant!390 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!492 0))(
  ( (Cell!493 (v!2509 LongMapFixedSize!682)) )
))
(declare-datatypes ((LongMap!492 0))(
  ( (LongMap!493 (underlying!257 Cell!492)) )
))
(declare-fun thiss!992 () LongMap!492)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!70512 (= res!37704 (not (validMask!0 (mask!6143 (v!2509 (underlying!257 thiss!992))))))))

(declare-datatypes ((tuple2!2124 0))(
  ( (tuple2!2125 (_1!1072 (_ BitVec 64)) (_2!1072 V!2929)) )
))
(declare-datatypes ((List!1497 0))(
  ( (Nil!1494) (Cons!1493 (h!2079 tuple2!2124) (t!5021 List!1497)) )
))
(declare-datatypes ((ListLongMap!1425 0))(
  ( (ListLongMap!1426 (toList!728 List!1497)) )
))
(declare-fun lt!31061 () ListLongMap!1425)

(declare-fun lt!31059 () tuple2!2124)

(declare-fun lt!31065 () tuple2!2124)

(declare-fun +!91 (ListLongMap!1425 tuple2!2124) ListLongMap!1425)

(assert (=> b!70512 (= (+!91 (+!91 lt!31061 lt!31059) lt!31065) (+!91 (+!91 lt!31061 lt!31065) lt!31059))))

(assert (=> b!70512 (= lt!31065 (tuple2!2125 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2092 (v!2509 (underlying!257 thiss!992)))))))

(declare-fun lt!31057 () V!2929)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!70512 (= lt!31059 (tuple2!2125 (select (arr!1844 (_keys!3836 (v!2509 (underlying!257 thiss!992)))) from!355) lt!31057))))

(declare-fun lt!31066 () Unit!1994)

(declare-fun addCommutativeForDiffKeys!10 (ListLongMap!1425 (_ BitVec 64) V!2929 (_ BitVec 64) V!2929) Unit!1994)

(assert (=> b!70512 (= lt!31066 (addCommutativeForDiffKeys!10 lt!31061 (select (arr!1844 (_keys!3836 (v!2509 (underlying!257 thiss!992)))) from!355) lt!31057 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2092 (v!2509 (underlying!257 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!55 (array!3864 array!3866 (_ BitVec 32) (_ BitVec 32) V!2929 V!2929 (_ BitVec 32) Int) ListLongMap!1425)

(assert (=> b!70512 (= lt!31061 (getCurrentListMapNoExtraKeys!55 (_keys!3836 (v!2509 (underlying!257 thiss!992))) (_values!2171 (v!2509 (underlying!257 thiss!992))) (mask!6143 (v!2509 (underlying!257 thiss!992))) (extraKeys!2051 (v!2509 (underlying!257 thiss!992))) (zeroValue!2092 (v!2509 (underlying!257 thiss!992))) (minValue!2092 (v!2509 (underlying!257 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2188 (v!2509 (underlying!257 thiss!992)))))))

(declare-fun b!70513 () Bool)

(declare-fun e!46158 () Bool)

(declare-fun tp_is_empty!2461 () Bool)

(assert (=> b!70513 (= e!46158 tp_is_empty!2461)))

(declare-fun b!70514 () Bool)

(declare-fun e!46157 () Bool)

(assert (=> b!70514 (= e!46157 tp_is_empty!2461)))

(declare-fun mapIsEmpty!3121 () Bool)

(declare-fun mapRes!3122 () Bool)

(assert (=> mapIsEmpty!3121 mapRes!3122))

(declare-fun b!70515 () Bool)

(declare-fun e!46153 () Bool)

(declare-fun e!46145 () Bool)

(assert (=> b!70515 (= e!46153 e!46145)))

(declare-fun b!70516 () Bool)

(declare-fun Unit!1997 () Unit!1994)

(assert (=> b!70516 (= e!46147 Unit!1997)))

(declare-fun lt!31058 () Unit!1994)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!48 (array!3864 array!3866 (_ BitVec 32) (_ BitVec 32) V!2929 V!2929 (_ BitVec 64) (_ BitVec 32) Int) Unit!1994)

(assert (=> b!70516 (= lt!31058 (lemmaListMapContainsThenArrayContainsFrom!48 (_keys!3836 (v!2509 (underlying!257 thiss!992))) (_values!2171 (v!2509 (underlying!257 thiss!992))) (mask!6143 (v!2509 (underlying!257 thiss!992))) (extraKeys!2051 (v!2509 (underlying!257 thiss!992))) (zeroValue!2092 (v!2509 (underlying!257 thiss!992))) (minValue!2092 (v!2509 (underlying!257 thiss!992))) (select (arr!1844 (_keys!3836 (v!2509 (underlying!257 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2188 (v!2509 (underlying!257 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3864 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!70516 (arrayContainsKey!0 (_keys!3836 (v!2509 (underlying!257 thiss!992))) (select (arr!1844 (_keys!3836 (v!2509 (underlying!257 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!31055 () Unit!1994)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3864 (_ BitVec 32) (_ BitVec 32)) Unit!1994)

(assert (=> b!70516 (= lt!31055 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3836 (v!2509 (underlying!257 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1498 0))(
  ( (Nil!1495) (Cons!1494 (h!2080 (_ BitVec 64)) (t!5022 List!1498)) )
))
(declare-fun arrayNoDuplicates!0 (array!3864 (_ BitVec 32) List!1498) Bool)

(assert (=> b!70516 (arrayNoDuplicates!0 (_keys!3836 (v!2509 (underlying!257 thiss!992))) from!355 Nil!1495)))

(declare-fun lt!31060 () Unit!1994)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3864 (_ BitVec 32) (_ BitVec 64) List!1498) Unit!1994)

(assert (=> b!70516 (= lt!31060 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3836 (v!2509 (underlying!257 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1844 (_keys!3836 (v!2509 (underlying!257 thiss!992)))) from!355) (Cons!1494 (select (arr!1844 (_keys!3836 (v!2509 (underlying!257 thiss!992)))) from!355) Nil!1495)))))

(assert (=> b!70516 false))

(declare-fun b!70517 () Bool)

(declare-fun e!46146 () Bool)

(declare-fun e!46149 () Bool)

(assert (=> b!70517 (= e!46146 e!46149)))

(declare-fun res!37701 () Bool)

(assert (=> b!70517 (=> (not res!37701) (not e!46149))))

(assert (=> b!70517 (= res!37701 (and (not (= (select (arr!1844 (_keys!3836 (v!2509 (underlying!257 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1844 (_keys!3836 (v!2509 (underlying!257 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1140 (ValueCell!887 V!2929) V!2929)

(declare-fun dynLambda!327 (Int (_ BitVec 64)) V!2929)

(assert (=> b!70517 (= lt!31057 (get!1140 (select (arr!1845 (_values!2171 (v!2509 (underlying!257 thiss!992)))) from!355) (dynLambda!327 (defaultEntry!2188 (v!2509 (underlying!257 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!70518 () Bool)

(declare-fun e!46148 () Bool)

(assert (=> b!70518 (= e!46145 e!46148)))

(declare-fun b!70519 () Bool)

(declare-fun e!46154 () Bool)

(assert (=> b!70519 (= e!46154 tp_is_empty!2461)))

(declare-fun b!70520 () Bool)

(declare-fun res!37705 () Bool)

(declare-fun e!46144 () Bool)

(assert (=> b!70520 (=> (not res!37705) (not e!46144))))

(assert (=> b!70520 (= res!37705 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2081 (_keys!3836 (v!2509 (underlying!257 thiss!992)))))))))

(declare-fun e!46155 () Bool)

(declare-fun e!46142 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!682)

(declare-fun array_inv!1091 (array!3864) Bool)

(declare-fun array_inv!1092 (array!3866) Bool)

(assert (=> b!70521 (= e!46142 (and tp!8438 tp_is_empty!2461 (array_inv!1091 (_keys!3836 newMap!16)) (array_inv!1092 (_values!2171 newMap!16)) e!46155))))

(declare-fun b!70522 () Bool)

(declare-fun e!46151 () Bool)

(assert (=> b!70522 (= e!46151 tp_is_empty!2461)))

(declare-fun e!46152 () Bool)

(assert (=> b!70523 (= e!46148 (and tp!8436 tp_is_empty!2461 (array_inv!1091 (_keys!3836 (v!2509 (underlying!257 thiss!992)))) (array_inv!1092 (_values!2171 (v!2509 (underlying!257 thiss!992)))) e!46152))))

(declare-fun b!70524 () Bool)

(declare-fun res!37700 () Bool)

(assert (=> b!70524 (=> (not res!37700) (not e!46144))))

(declare-fun valid!283 (LongMapFixedSize!682) Bool)

(assert (=> b!70524 (= res!37700 (valid!283 newMap!16))))

(declare-fun mapIsEmpty!3122 () Bool)

(declare-fun mapRes!3121 () Bool)

(assert (=> mapIsEmpty!3122 mapRes!3121))

(declare-fun b!70525 () Bool)

(assert (=> b!70525 (= e!46150 (or (not (= (size!2082 (_values!2171 (v!2509 (underlying!257 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6143 (v!2509 (underlying!257 thiss!992)))))) (not (= (size!2081 (_keys!3836 (v!2509 (underlying!257 thiss!992)))) (size!2082 (_values!2171 (v!2509 (underlying!257 thiss!992)))))) (bvsge (mask!6143 (v!2509 (underlying!257 thiss!992))) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!3121 () Bool)

(declare-fun tp!8437 () Bool)

(assert (=> mapNonEmpty!3121 (= mapRes!3122 (and tp!8437 e!46158))))

(declare-fun mapRest!3122 () (Array (_ BitVec 32) ValueCell!887))

(declare-fun mapKey!3121 () (_ BitVec 32))

(declare-fun mapValue!3122 () ValueCell!887)

(assert (=> mapNonEmpty!3121 (= (arr!1845 (_values!2171 (v!2509 (underlying!257 thiss!992)))) (store mapRest!3122 mapKey!3121 mapValue!3122))))

(declare-fun b!70526 () Bool)

(assert (=> b!70526 (= e!46155 (and e!46151 mapRes!3121))))

(declare-fun condMapEmpty!3121 () Bool)

(declare-fun mapDefault!3122 () ValueCell!887)

