; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11066 () Bool)

(assert start!11066)

(declare-fun b!89792 () Bool)

(declare-fun b_free!2269 () Bool)

(declare-fun b_next!2269 () Bool)

(assert (=> b!89792 (= b_free!2269 (not b_next!2269))))

(declare-fun tp!9051 () Bool)

(declare-fun b_and!5377 () Bool)

(assert (=> b!89792 (= tp!9051 b_and!5377)))

(declare-fun b!89799 () Bool)

(declare-fun b_free!2271 () Bool)

(declare-fun b_next!2271 () Bool)

(assert (=> b!89799 (= b_free!2271 (not b_next!2271))))

(declare-fun tp!9052 () Bool)

(declare-fun b_and!5379 () Bool)

(assert (=> b!89799 (= tp!9052 b_and!5379)))

(declare-fun b!89777 () Bool)

(declare-fun res!45871 () Bool)

(declare-fun e!58441 () Bool)

(assert (=> b!89777 (=> (not res!45871) (not e!58441))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((V!3049 0))(
  ( (V!3050 (val!1320 Int)) )
))
(declare-datatypes ((array!4066 0))(
  ( (array!4067 (arr!1934 (Array (_ BitVec 32) (_ BitVec 64))) (size!2181 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!932 0))(
  ( (ValueCellFull!932 (v!2686 V!3049)) (EmptyCell!932) )
))
(declare-datatypes ((array!4068 0))(
  ( (array!4069 (arr!1935 (Array (_ BitVec 32) ValueCell!932)) (size!2182 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!772 0))(
  ( (LongMapFixedSize!773 (defaultEntry!2384 Int) (mask!6434 (_ BitVec 32)) (extraKeys!2215 (_ BitVec 32)) (zeroValue!2272 V!3049) (minValue!2272 V!3049) (_size!435 (_ BitVec 32)) (_keys!4064 array!4066) (_values!2367 array!4068) (_vacant!435 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!578 0))(
  ( (Cell!579 (v!2687 LongMapFixedSize!772)) )
))
(declare-datatypes ((LongMap!578 0))(
  ( (LongMap!579 (underlying!300 Cell!578)) )
))
(declare-fun thiss!992 () LongMap!578)

(assert (=> b!89777 (= res!45871 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2181 (_keys!4064 (v!2687 (underlying!300 thiss!992)))))))))

(declare-fun res!45867 () Bool)

(assert (=> start!11066 (=> (not res!45867) (not e!58441))))

(declare-fun valid!336 (LongMap!578) Bool)

(assert (=> start!11066 (= res!45867 (valid!336 thiss!992))))

(assert (=> start!11066 e!58441))

(declare-fun e!58449 () Bool)

(assert (=> start!11066 e!58449))

(assert (=> start!11066 true))

(declare-fun e!58439 () Bool)

(assert (=> start!11066 e!58439))

(declare-fun b!89778 () Bool)

(declare-fun res!45868 () Bool)

(declare-fun e!58434 () Bool)

(assert (=> b!89778 (=> res!45868 e!58434)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4066 (_ BitVec 32)) Bool)

(assert (=> b!89778 (= res!45868 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4064 (v!2687 (underlying!300 thiss!992))) (mask!6434 (v!2687 (underlying!300 thiss!992))))))))

(declare-fun mapNonEmpty!3467 () Bool)

(declare-fun mapRes!3468 () Bool)

(declare-fun tp!9053 () Bool)

(declare-fun e!58442 () Bool)

(assert (=> mapNonEmpty!3467 (= mapRes!3468 (and tp!9053 e!58442))))

(declare-fun newMap!16 () LongMapFixedSize!772)

(declare-fun mapRest!3467 () (Array (_ BitVec 32) ValueCell!932))

(declare-fun mapValue!3467 () ValueCell!932)

(declare-fun mapKey!3467 () (_ BitVec 32))

(assert (=> mapNonEmpty!3467 (= (arr!1935 (_values!2367 newMap!16)) (store mapRest!3467 mapKey!3467 mapValue!3467))))

(declare-fun b!89779 () Bool)

(declare-fun e!58440 () Bool)

(assert (=> b!89779 (= e!58449 e!58440)))

(declare-fun b!89780 () Bool)

(declare-fun res!45873 () Bool)

(assert (=> b!89780 (=> (not res!45873) (not e!58441))))

(assert (=> b!89780 (= res!45873 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6434 newMap!16)) (_size!435 (v!2687 (underlying!300 thiss!992)))))))

(declare-fun b!89781 () Bool)

(declare-fun res!45874 () Bool)

(assert (=> b!89781 (=> res!45874 e!58434)))

(declare-datatypes ((List!1561 0))(
  ( (Nil!1558) (Cons!1557 (h!2149 (_ BitVec 64)) (t!5335 List!1561)) )
))
(declare-fun arrayNoDuplicates!0 (array!4066 (_ BitVec 32) List!1561) Bool)

(assert (=> b!89781 (= res!45874 (not (arrayNoDuplicates!0 (_keys!4064 (v!2687 (underlying!300 thiss!992))) #b00000000000000000000000000000000 Nil!1558)))))

(declare-fun b!89782 () Bool)

(declare-datatypes ((Unit!2686 0))(
  ( (Unit!2687) )
))
(declare-fun e!58444 () Unit!2686)

(declare-fun Unit!2688 () Unit!2686)

(assert (=> b!89782 (= e!58444 Unit!2688)))

(declare-fun b!89783 () Bool)

(declare-fun e!58448 () Bool)

(declare-fun e!58435 () Bool)

(declare-fun mapRes!3467 () Bool)

(assert (=> b!89783 (= e!58448 (and e!58435 mapRes!3467))))

(declare-fun condMapEmpty!3467 () Bool)

(declare-fun mapDefault!3468 () ValueCell!932)

