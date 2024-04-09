; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8378 () Bool)

(assert start!8378)

(declare-fun b!56152 () Bool)

(declare-fun b_free!1897 () Bool)

(declare-fun b_next!1897 () Bool)

(assert (=> b!56152 (= b_free!1897 (not b_next!1897))))

(declare-fun tp!7793 () Bool)

(declare-fun b_and!3345 () Bool)

(assert (=> b!56152 (= tp!7793 b_and!3345)))

(declare-fun b!56158 () Bool)

(declare-fun b_free!1899 () Bool)

(declare-fun b_next!1899 () Bool)

(assert (=> b!56158 (= b_free!1899 (not b_next!1899))))

(declare-fun tp!7791 () Bool)

(declare-fun b_and!3347 () Bool)

(assert (=> b!56158 (= tp!7791 b_and!3347)))

(declare-fun b!56143 () Bool)

(declare-fun e!36951 () Bool)

(assert (=> b!56143 (= e!36951 true)))

(declare-datatypes ((V!2801 0))(
  ( (V!2802 (val!1227 Int)) )
))
(declare-datatypes ((array!3652 0))(
  ( (array!3653 (arr!1748 (Array (_ BitVec 32) (_ BitVec 64))) (size!1977 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!839 0))(
  ( (ValueCellFull!839 (v!2336 V!2801)) (EmptyCell!839) )
))
(declare-datatypes ((array!3654 0))(
  ( (array!3655 (arr!1749 (Array (_ BitVec 32) ValueCell!839)) (size!1978 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!586 0))(
  ( (LongMapFixedSize!587 (defaultEntry!2007 Int) (mask!5872 (_ BitVec 32)) (extraKeys!1898 (_ BitVec 32)) (zeroValue!1925 V!2801) (minValue!1925 V!2801) (_size!342 (_ BitVec 32)) (_keys!3627 array!3652) (_values!1990 array!3654) (_vacant!342 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!396 0))(
  ( (Cell!397 (v!2337 LongMapFixedSize!586)) )
))
(declare-datatypes ((LongMap!396 0))(
  ( (LongMap!397 (underlying!209 Cell!396)) )
))
(declare-fun thiss!992 () LongMap!396)

(declare-datatypes ((List!1430 0))(
  ( (Nil!1427) (Cons!1426 (h!2006 (_ BitVec 64)) (t!4704 List!1430)) )
))
(declare-fun lt!22163 () List!1430)

(declare-fun lt!22159 () Bool)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun contains!671 (List!1430 (_ BitVec 64)) Bool)

(assert (=> b!56143 (= lt!22159 (contains!671 lt!22163 (select (arr!1748 (_keys!3627 (v!2337 (underlying!209 thiss!992)))) from!355)))))

(declare-fun b!56144 () Bool)

(declare-fun res!31580 () Bool)

(declare-fun e!36952 () Bool)

(assert (=> b!56144 (=> (not res!31580) (not e!36952))))

(assert (=> b!56144 (= res!31580 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1977 (_keys!3627 (v!2337 (underlying!209 thiss!992)))))))))

(declare-fun b!56145 () Bool)

(declare-fun e!36941 () Bool)

(declare-fun tp_is_empty!2365 () Bool)

(assert (=> b!56145 (= e!36941 tp_is_empty!2365)))

(declare-fun res!31577 () Bool)

(assert (=> start!8378 (=> (not res!31577) (not e!36952))))

(declare-fun valid!232 (LongMap!396) Bool)

(assert (=> start!8378 (= res!31577 (valid!232 thiss!992))))

(assert (=> start!8378 e!36952))

(declare-fun e!36947 () Bool)

(assert (=> start!8378 e!36947))

(assert (=> start!8378 true))

(declare-fun e!36948 () Bool)

(assert (=> start!8378 e!36948))

(declare-fun b!56146 () Bool)

(declare-fun res!31576 () Bool)

(assert (=> b!56146 (=> res!31576 e!36951)))

(declare-fun noDuplicate!44 (List!1430) Bool)

(assert (=> b!56146 (= res!31576 (not (noDuplicate!44 lt!22163)))))

(declare-fun b!56147 () Bool)

(declare-fun e!36946 () Bool)

(declare-fun e!36943 () Bool)

(assert (=> b!56147 (= e!36946 e!36943)))

(declare-fun res!31581 () Bool)

(assert (=> b!56147 (=> (not res!31581) (not e!36943))))

(declare-datatypes ((tuple2!2002 0))(
  ( (tuple2!2003 (_1!1011 (_ BitVec 64)) (_2!1011 V!2801)) )
))
(declare-datatypes ((List!1431 0))(
  ( (Nil!1428) (Cons!1427 (h!2007 tuple2!2002) (t!4705 List!1431)) )
))
(declare-datatypes ((ListLongMap!1353 0))(
  ( (ListLongMap!1354 (toList!692 List!1431)) )
))
(declare-fun lt!22160 () ListLongMap!1353)

(declare-fun contains!672 (ListLongMap!1353 (_ BitVec 64)) Bool)

(assert (=> b!56147 (= res!31581 (contains!672 lt!22160 (select (arr!1748 (_keys!3627 (v!2337 (underlying!209 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2004 0))(
  ( (tuple2!2005 (_1!1012 Bool) (_2!1012 LongMapFixedSize!586)) )
))
(declare-fun lt!22164 () tuple2!2004)

(declare-fun newMap!16 () LongMapFixedSize!586)

(declare-fun update!74 (LongMapFixedSize!586 (_ BitVec 64) V!2801) tuple2!2004)

(declare-fun get!1055 (ValueCell!839 V!2801) V!2801)

(declare-fun dynLambda!302 (Int (_ BitVec 64)) V!2801)

(assert (=> b!56147 (= lt!22164 (update!74 newMap!16 (select (arr!1748 (_keys!3627 (v!2337 (underlying!209 thiss!992)))) from!355) (get!1055 (select (arr!1749 (_values!1990 (v!2337 (underlying!209 thiss!992)))) from!355) (dynLambda!302 (defaultEntry!2007 (v!2337 (underlying!209 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!56148 () Bool)

(declare-fun res!31583 () Bool)

(assert (=> b!56148 (=> res!31583 e!36951)))

(assert (=> b!56148 (= res!31583 (contains!671 lt!22163 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!56149 () Bool)

(declare-fun e!36945 () Bool)

(declare-fun e!36939 () Bool)

(assert (=> b!56149 (= e!36945 e!36939)))

(declare-fun b!56150 () Bool)

(declare-fun res!31578 () Bool)

(assert (=> b!56150 (=> res!31578 e!36951)))

(assert (=> b!56150 (= res!31578 (contains!671 lt!22163 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!56151 () Bool)

(declare-fun res!31579 () Bool)

(assert (=> b!56151 (=> (not res!31579) (not e!36952))))

(assert (=> b!56151 (= res!31579 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5872 newMap!16)) (_size!342 (v!2337 (underlying!209 thiss!992)))))))

(declare-fun e!36949 () Bool)

(declare-fun array_inv!1027 (array!3652) Bool)

(declare-fun array_inv!1028 (array!3654) Bool)

(assert (=> b!56152 (= e!36939 (and tp!7793 tp_is_empty!2365 (array_inv!1027 (_keys!3627 (v!2337 (underlying!209 thiss!992)))) (array_inv!1028 (_values!1990 (v!2337 (underlying!209 thiss!992)))) e!36949))))

(declare-fun b!56153 () Bool)

(assert (=> b!56153 (= e!36943 (not e!36951))))

(declare-fun res!31584 () Bool)

(assert (=> b!56153 (=> res!31584 e!36951)))

(assert (=> b!56153 (= res!31584 (or (bvsge (size!1977 (_keys!3627 (v!2337 (underlying!209 thiss!992)))) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!1977 (_keys!3627 (v!2337 (underlying!209 thiss!992)))))))))

(assert (=> b!56153 (= lt!22163 (Cons!1426 (select (arr!1748 (_keys!3627 (v!2337 (underlying!209 thiss!992)))) from!355) Nil!1427))))

(declare-fun arrayNoDuplicates!0 (array!3652 (_ BitVec 32) List!1430) Bool)

(assert (=> b!56153 (arrayNoDuplicates!0 (_keys!3627 (v!2337 (underlying!209 thiss!992))) from!355 Nil!1427)))

(declare-datatypes ((Unit!1460 0))(
  ( (Unit!1461) )
))
(declare-fun lt!22161 () Unit!1460)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3652 (_ BitVec 32) (_ BitVec 32)) Unit!1460)

(assert (=> b!56153 (= lt!22161 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3627 (v!2337 (underlying!209 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-fun arrayContainsKey!0 (array!3652 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!56153 (arrayContainsKey!0 (_keys!3627 (v!2337 (underlying!209 thiss!992))) (select (arr!1748 (_keys!3627 (v!2337 (underlying!209 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!22165 () Unit!1460)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!19 (array!3652 array!3654 (_ BitVec 32) (_ BitVec 32) V!2801 V!2801 (_ BitVec 64) (_ BitVec 32) Int) Unit!1460)

(assert (=> b!56153 (= lt!22165 (lemmaListMapContainsThenArrayContainsFrom!19 (_keys!3627 (v!2337 (underlying!209 thiss!992))) (_values!1990 (v!2337 (underlying!209 thiss!992))) (mask!5872 (v!2337 (underlying!209 thiss!992))) (extraKeys!1898 (v!2337 (underlying!209 thiss!992))) (zeroValue!1925 (v!2337 (underlying!209 thiss!992))) (minValue!1925 (v!2337 (underlying!209 thiss!992))) (select (arr!1748 (_keys!3627 (v!2337 (underlying!209 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2007 (v!2337 (underlying!209 thiss!992)))))))

(declare-fun b!56154 () Bool)

(declare-fun e!36938 () Bool)

(declare-fun mapRes!2766 () Bool)

(assert (=> b!56154 (= e!36949 (and e!36938 mapRes!2766))))

(declare-fun condMapEmpty!2766 () Bool)

(declare-fun mapDefault!2766 () ValueCell!839)

