; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13558 () Bool)

(assert start!13558)

(declare-fun b!124465 () Bool)

(declare-fun b_free!2833 () Bool)

(declare-fun b_next!2833 () Bool)

(assert (=> b!124465 (= b_free!2833 (not b_next!2833))))

(declare-fun tp!10897 () Bool)

(declare-fun b_and!7657 () Bool)

(assert (=> b!124465 (= tp!10897 b_and!7657)))

(declare-fun b!124462 () Bool)

(declare-fun b_free!2835 () Bool)

(declare-fun b_next!2835 () Bool)

(assert (=> b!124462 (= b_free!2835 (not b_next!2835))))

(declare-fun tp!10900 () Bool)

(declare-fun b_and!7659 () Bool)

(assert (=> b!124462 (= tp!10900 b_and!7659)))

(declare-fun b!124453 () Bool)

(declare-fun e!81358 () Bool)

(declare-fun e!81362 () Bool)

(assert (=> b!124453 (= e!81358 e!81362)))

(declare-fun res!60317 () Bool)

(assert (=> b!124453 (=> (not res!60317) (not e!81362))))

(declare-datatypes ((V!3425 0))(
  ( (V!3426 (val!1461 Int)) )
))
(declare-datatypes ((array!4680 0))(
  ( (array!4681 (arr!2216 (Array (_ BitVec 32) (_ BitVec 64))) (size!2479 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1073 0))(
  ( (ValueCellFull!1073 (v!3103 V!3425)) (EmptyCell!1073) )
))
(declare-datatypes ((array!4682 0))(
  ( (array!4683 (arr!2217 (Array (_ BitVec 32) ValueCell!1073)) (size!2480 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1054 0))(
  ( (LongMapFixedSize!1055 (defaultEntry!2763 Int) (mask!7009 (_ BitVec 32)) (extraKeys!2548 (_ BitVec 32)) (zeroValue!2628 V!3425) (minValue!2628 V!3425) (_size!576 (_ BitVec 32)) (_keys!4492 array!4680) (_values!2746 array!4682) (_vacant!576 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!846 0))(
  ( (Cell!847 (v!3104 LongMapFixedSize!1054)) )
))
(declare-datatypes ((LongMap!846 0))(
  ( (LongMap!847 (underlying!434 Cell!846)) )
))
(declare-fun thiss!992 () LongMap!846)

(declare-datatypes ((tuple2!2558 0))(
  ( (tuple2!2559 (_1!1289 (_ BitVec 64)) (_2!1289 V!3425)) )
))
(declare-datatypes ((List!1715 0))(
  ( (Nil!1712) (Cons!1711 (h!2312 tuple2!2558) (t!6050 List!1715)) )
))
(declare-datatypes ((ListLongMap!1679 0))(
  ( (ListLongMap!1680 (toList!855 List!1715)) )
))
(declare-fun lt!64021 () ListLongMap!1679)

(declare-fun lt!64020 () ListLongMap!1679)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!124453 (= res!60317 (and (= lt!64020 lt!64021) (not (= (select (arr!2216 (_keys!4492 (v!3104 (underlying!434 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2216 (_keys!4492 (v!3104 (underlying!434 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun newMap!16 () LongMapFixedSize!1054)

(declare-fun map!1378 (LongMapFixedSize!1054) ListLongMap!1679)

(assert (=> b!124453 (= lt!64021 (map!1378 newMap!16))))

(declare-fun getCurrentListMap!527 (array!4680 array!4682 (_ BitVec 32) (_ BitVec 32) V!3425 V!3425 (_ BitVec 32) Int) ListLongMap!1679)

(assert (=> b!124453 (= lt!64020 (getCurrentListMap!527 (_keys!4492 (v!3104 (underlying!434 thiss!992))) (_values!2746 (v!3104 (underlying!434 thiss!992))) (mask!7009 (v!3104 (underlying!434 thiss!992))) (extraKeys!2548 (v!3104 (underlying!434 thiss!992))) (zeroValue!2628 (v!3104 (underlying!434 thiss!992))) (minValue!2628 (v!3104 (underlying!434 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2763 (v!3104 (underlying!434 thiss!992)))))))

(declare-fun b!124454 () Bool)

(declare-fun e!81365 () Bool)

(declare-fun tp_is_empty!2833 () Bool)

(assert (=> b!124454 (= e!81365 tp_is_empty!2833)))

(declare-fun b!124455 () Bool)

(declare-fun e!81352 () Bool)

(declare-fun e!81363 () Bool)

(declare-fun mapRes!4467 () Bool)

(assert (=> b!124455 (= e!81352 (and e!81363 mapRes!4467))))

(declare-fun condMapEmpty!4468 () Bool)

(declare-fun mapDefault!4467 () ValueCell!1073)

