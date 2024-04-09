; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11168 () Bool)

(assert start!11168)

(declare-fun b!91493 () Bool)

(declare-fun b_free!2337 () Bool)

(declare-fun b_next!2337 () Bool)

(assert (=> b!91493 (= b_free!2337 (not b_next!2337))))

(declare-fun tp!9264 () Bool)

(declare-fun b_and!5541 () Bool)

(assert (=> b!91493 (= tp!9264 b_and!5541)))

(declare-fun b!91502 () Bool)

(declare-fun b_free!2339 () Bool)

(declare-fun b_next!2339 () Bool)

(assert (=> b!91502 (= b_free!2339 (not b_next!2339))))

(declare-fun tp!9263 () Bool)

(declare-fun b_and!5543 () Bool)

(assert (=> b!91502 (= tp!9263 b_and!5543)))

(declare-fun b!91488 () Bool)

(declare-fun e!59703 () Bool)

(declare-fun tp_is_empty!2585 () Bool)

(assert (=> b!91488 (= e!59703 tp_is_empty!2585)))

(declare-fun b!91489 () Bool)

(declare-fun e!59708 () Bool)

(declare-fun e!59713 () Bool)

(assert (=> b!91489 (= e!59708 e!59713)))

(declare-fun res!46573 () Bool)

(assert (=> b!91489 (=> (not res!46573) (not e!59713))))

(declare-datatypes ((V!3093 0))(
  ( (V!3094 (val!1337 Int)) )
))
(declare-datatypes ((array!4138 0))(
  ( (array!4139 (arr!1968 (Array (_ BitVec 32) (_ BitVec 64))) (size!2215 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!949 0))(
  ( (ValueCellFull!949 (v!2723 V!3093)) (EmptyCell!949) )
))
(declare-datatypes ((array!4140 0))(
  ( (array!4141 (arr!1969 (Array (_ BitVec 32) ValueCell!949)) (size!2216 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!806 0))(
  ( (LongMapFixedSize!807 (defaultEntry!2407 Int) (mask!6467 (_ BitVec 32)) (extraKeys!2238 (_ BitVec 32)) (zeroValue!2295 V!3093) (minValue!2295 V!3093) (_size!452 (_ BitVec 32)) (_keys!4087 array!4138) (_values!2390 array!4140) (_vacant!452 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!2294 0))(
  ( (tuple2!2295 (_1!1157 Bool) (_2!1157 LongMapFixedSize!806)) )
))
(declare-fun lt!44566 () tuple2!2294)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!91489 (= res!46573 (and (_1!1157 lt!44566) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!2742 0))(
  ( (Unit!2743) )
))
(declare-fun lt!44574 () Unit!2742)

(declare-fun e!59707 () Unit!2742)

(assert (=> b!91489 (= lt!44574 e!59707)))

(declare-datatypes ((Cell!610 0))(
  ( (Cell!611 (v!2724 LongMapFixedSize!806)) )
))
(declare-datatypes ((LongMap!610 0))(
  ( (LongMap!611 (underlying!316 Cell!610)) )
))
(declare-fun thiss!992 () LongMap!610)

(declare-datatypes ((tuple2!2296 0))(
  ( (tuple2!2297 (_1!1158 (_ BitVec 64)) (_2!1158 V!3093)) )
))
(declare-datatypes ((List!1583 0))(
  ( (Nil!1580) (Cons!1579 (h!2171 tuple2!2296) (t!5425 List!1583)) )
))
(declare-datatypes ((ListLongMap!1519 0))(
  ( (ListLongMap!1520 (toList!775 List!1583)) )
))
(declare-fun lt!44562 () ListLongMap!1519)

(declare-fun c!15175 () Bool)

(declare-fun contains!785 (ListLongMap!1519 (_ BitVec 64)) Bool)

(assert (=> b!91489 (= c!15175 (contains!785 lt!44562 (select (arr!1968 (_keys!4087 (v!2724 (underlying!316 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!806)

(declare-fun lt!44560 () V!3093)

(declare-fun update!135 (LongMapFixedSize!806 (_ BitVec 64) V!3093) tuple2!2294)

(assert (=> b!91489 (= lt!44566 (update!135 newMap!16 (select (arr!1968 (_keys!4087 (v!2724 (underlying!316 thiss!992)))) from!355) lt!44560))))

(declare-fun b!91490 () Bool)

(declare-fun Unit!2744 () Unit!2742)

(assert (=> b!91490 (= e!59707 Unit!2744)))

(declare-fun lt!44561 () Unit!2742)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!86 (array!4138 array!4140 (_ BitVec 32) (_ BitVec 32) V!3093 V!3093 (_ BitVec 64) (_ BitVec 32) Int) Unit!2742)

(assert (=> b!91490 (= lt!44561 (lemmaListMapContainsThenArrayContainsFrom!86 (_keys!4087 (v!2724 (underlying!316 thiss!992))) (_values!2390 (v!2724 (underlying!316 thiss!992))) (mask!6467 (v!2724 (underlying!316 thiss!992))) (extraKeys!2238 (v!2724 (underlying!316 thiss!992))) (zeroValue!2295 (v!2724 (underlying!316 thiss!992))) (minValue!2295 (v!2724 (underlying!316 thiss!992))) (select (arr!1968 (_keys!4087 (v!2724 (underlying!316 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2407 (v!2724 (underlying!316 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4138 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!91490 (arrayContainsKey!0 (_keys!4087 (v!2724 (underlying!316 thiss!992))) (select (arr!1968 (_keys!4087 (v!2724 (underlying!316 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!44575 () Unit!2742)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4138 (_ BitVec 32) (_ BitVec 32)) Unit!2742)

(assert (=> b!91490 (= lt!44575 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4087 (v!2724 (underlying!316 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1584 0))(
  ( (Nil!1581) (Cons!1580 (h!2172 (_ BitVec 64)) (t!5426 List!1584)) )
))
(declare-fun arrayNoDuplicates!0 (array!4138 (_ BitVec 32) List!1584) Bool)

(assert (=> b!91490 (arrayNoDuplicates!0 (_keys!4087 (v!2724 (underlying!316 thiss!992))) from!355 Nil!1581)))

(declare-fun lt!44558 () Unit!2742)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4138 (_ BitVec 32) (_ BitVec 64) List!1584) Unit!2742)

(assert (=> b!91490 (= lt!44558 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4087 (v!2724 (underlying!316 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1968 (_keys!4087 (v!2724 (underlying!316 thiss!992)))) from!355) (Cons!1580 (select (arr!1968 (_keys!4087 (v!2724 (underlying!316 thiss!992)))) from!355) Nil!1581)))))

(assert (=> b!91490 false))

(declare-fun b!91491 () Bool)

(declare-fun e!59704 () Bool)

(assert (=> b!91491 (= e!59713 (not e!59704))))

(declare-fun res!46572 () Bool)

(assert (=> b!91491 (=> res!46572 e!59704)))

(declare-fun getCurrentListMap!457 (array!4138 array!4140 (_ BitVec 32) (_ BitVec 32) V!3093 V!3093 (_ BitVec 32) Int) ListLongMap!1519)

(declare-fun map!1225 (LongMapFixedSize!806) ListLongMap!1519)

(assert (=> b!91491 (= res!46572 (not (= (getCurrentListMap!457 (_keys!4087 (v!2724 (underlying!316 thiss!992))) (_values!2390 (v!2724 (underlying!316 thiss!992))) (mask!6467 (v!2724 (underlying!316 thiss!992))) (extraKeys!2238 (v!2724 (underlying!316 thiss!992))) (zeroValue!2295 (v!2724 (underlying!316 thiss!992))) (minValue!2295 (v!2724 (underlying!316 thiss!992))) from!355 (defaultEntry!2407 (v!2724 (underlying!316 thiss!992)))) (map!1225 (_2!1157 lt!44566)))))))

(declare-fun lt!44559 () ListLongMap!1519)

(declare-fun lt!44571 () tuple2!2296)

(declare-fun lt!44573 () ListLongMap!1519)

(declare-fun lt!44565 () tuple2!2296)

(declare-fun +!130 (ListLongMap!1519 tuple2!2296) ListLongMap!1519)

(assert (=> b!91491 (= (+!130 lt!44559 lt!44565) (+!130 (+!130 lt!44573 lt!44565) lt!44571))))

(assert (=> b!91491 (= lt!44565 (tuple2!2297 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2295 (v!2724 (underlying!316 thiss!992)))))))

(declare-fun lt!44563 () Unit!2742)

(declare-fun addCommutativeForDiffKeys!49 (ListLongMap!1519 (_ BitVec 64) V!3093 (_ BitVec 64) V!3093) Unit!2742)

(assert (=> b!91491 (= lt!44563 (addCommutativeForDiffKeys!49 lt!44573 (select (arr!1968 (_keys!4087 (v!2724 (underlying!316 thiss!992)))) from!355) lt!44560 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2295 (v!2724 (underlying!316 thiss!992)))))))

(declare-fun lt!44567 () ListLongMap!1519)

(assert (=> b!91491 (= lt!44567 lt!44559)))

(assert (=> b!91491 (= lt!44559 (+!130 lt!44573 lt!44571))))

(declare-fun lt!44570 () ListLongMap!1519)

(declare-fun lt!44572 () tuple2!2296)

(assert (=> b!91491 (= lt!44567 (+!130 lt!44570 lt!44572))))

(declare-fun lt!44568 () ListLongMap!1519)

(assert (=> b!91491 (= lt!44573 (+!130 lt!44568 lt!44572))))

(assert (=> b!91491 (= lt!44572 (tuple2!2297 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2295 (v!2724 (underlying!316 thiss!992)))))))

(assert (=> b!91491 (= lt!44570 (+!130 lt!44568 lt!44571))))

(assert (=> b!91491 (= lt!44571 (tuple2!2297 (select (arr!1968 (_keys!4087 (v!2724 (underlying!316 thiss!992)))) from!355) lt!44560))))

(declare-fun lt!44569 () Unit!2742)

(assert (=> b!91491 (= lt!44569 (addCommutativeForDiffKeys!49 lt!44568 (select (arr!1968 (_keys!4087 (v!2724 (underlying!316 thiss!992)))) from!355) lt!44560 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2295 (v!2724 (underlying!316 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!94 (array!4138 array!4140 (_ BitVec 32) (_ BitVec 32) V!3093 V!3093 (_ BitVec 32) Int) ListLongMap!1519)

(assert (=> b!91491 (= lt!44568 (getCurrentListMapNoExtraKeys!94 (_keys!4087 (v!2724 (underlying!316 thiss!992))) (_values!2390 (v!2724 (underlying!316 thiss!992))) (mask!6467 (v!2724 (underlying!316 thiss!992))) (extraKeys!2238 (v!2724 (underlying!316 thiss!992))) (zeroValue!2295 (v!2724 (underlying!316 thiss!992))) (minValue!2295 (v!2724 (underlying!316 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2407 (v!2724 (underlying!316 thiss!992)))))))

(declare-fun res!46570 () Bool)

(declare-fun e!59711 () Bool)

(assert (=> start!11168 (=> (not res!46570) (not e!59711))))

(declare-fun valid!357 (LongMap!610) Bool)

(assert (=> start!11168 (= res!46570 (valid!357 thiss!992))))

(assert (=> start!11168 e!59711))

(declare-fun e!59702 () Bool)

(assert (=> start!11168 e!59702))

(assert (=> start!11168 true))

(declare-fun e!59696 () Bool)

(assert (=> start!11168 e!59696))

(declare-fun b!91492 () Bool)

(declare-fun e!59698 () Bool)

(declare-fun e!59709 () Bool)

(declare-fun mapRes!3578 () Bool)

(assert (=> b!91492 (= e!59698 (and e!59709 mapRes!3578))))

(declare-fun condMapEmpty!3577 () Bool)

(declare-fun mapDefault!3578 () ValueCell!949)

