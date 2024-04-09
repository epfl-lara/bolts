; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2990 () Bool)

(assert start!2990)

(declare-fun b!17420 () Bool)

(declare-fun b_free!599 () Bool)

(declare-fun b_next!599 () Bool)

(assert (=> b!17420 (= b_free!599 (not b_next!599))))

(declare-fun tp!2987 () Bool)

(declare-fun b_and!1249 () Bool)

(assert (=> b!17420 (= tp!2987 b_and!1249)))

(declare-fun b!17409 () Bool)

(declare-fun e!10902 () Bool)

(declare-fun tp_is_empty!863 () Bool)

(assert (=> b!17409 (= e!10902 tp_is_empty!863)))

(declare-fun b!17410 () Bool)

(declare-datatypes ((V!975 0))(
  ( (V!976 (val!458 Int)) )
))
(declare-datatypes ((ValueCell!232 0))(
  ( (ValueCellFull!232 (v!1420 V!975)) (EmptyCell!232) )
))
(declare-datatypes ((array!923 0))(
  ( (array!924 (arr!443 (Array (_ BitVec 32) ValueCell!232)) (size!533 (_ BitVec 32))) )
))
(declare-datatypes ((array!925 0))(
  ( (array!926 (arr!444 (Array (_ BitVec 32) (_ BitVec 64))) (size!534 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!50 0))(
  ( (LongMapFixedSize!51 (defaultEntry!1636 Int) (mask!4551 (_ BitVec 32)) (extraKeys!1549 (_ BitVec 32)) (zeroValue!1572 V!975) (minValue!1572 V!975) (_size!57 (_ BitVec 32)) (_keys!3061 array!925) (_values!1633 array!923) (_vacant!57 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!50 0))(
  ( (Cell!51 (v!1421 LongMapFixedSize!50)) )
))
(declare-datatypes ((LongMap!50 0))(
  ( (LongMap!51 (underlying!36 Cell!50)) )
))
(declare-datatypes ((tuple2!708 0))(
  ( (tuple2!709 (_1!355 Bool) (_2!355 LongMap!50)) )
))
(declare-fun e!10897 () tuple2!708)

(declare-fun thiss!848 () LongMap!50)

(assert (=> b!17410 (= e!10897 (tuple2!709 true thiss!848))))

(declare-fun b!17411 () Bool)

(declare-fun e!10898 () Bool)

(declare-fun e!10903 () Bool)

(assert (=> b!17411 (= e!10898 e!10903)))

(declare-fun res!12572 () Bool)

(assert (=> b!17411 (=> (not res!12572) (not e!10903))))

(declare-fun lt!4523 () tuple2!708)

(assert (=> b!17411 (= res!12572 (_1!355 lt!4523))))

(assert (=> b!17411 (= lt!4523 e!10897)))

(declare-fun c!1753 () Bool)

(declare-fun imbalanced!8 (LongMap!50) Bool)

(assert (=> b!17411 (= c!1753 (imbalanced!8 thiss!848))))

(declare-fun b!17412 () Bool)

(declare-fun repack!6 (LongMap!50) tuple2!708)

(assert (=> b!17412 (= e!10897 (repack!6 thiss!848))))

(declare-fun b!17413 () Bool)

(declare-fun res!12573 () Bool)

(declare-fun e!10901 () Bool)

(assert (=> b!17413 (=> (not res!12573) (not e!10901))))

(declare-datatypes ((tuple2!710 0))(
  ( (tuple2!711 (_1!356 Bool) (_2!356 LongMapFixedSize!50)) )
))
(declare-fun lt!4524 () tuple2!710)

(assert (=> b!17413 (= res!12573 (_1!356 lt!4524))))

(declare-fun b!17414 () Bool)

(assert (=> b!17414 (= e!10901 false)))

(declare-fun lt!4521 () Bool)

(declare-fun lt!4522 () LongMap!50)

(declare-fun key!682 () (_ BitVec 64))

(declare-datatypes ((tuple2!712 0))(
  ( (tuple2!713 (_1!357 (_ BitVec 64)) (_2!357 V!975)) )
))
(declare-datatypes ((List!531 0))(
  ( (Nil!528) (Cons!527 (h!1093 tuple2!712) (t!3172 List!531)) )
))
(declare-datatypes ((ListLongMap!513 0))(
  ( (ListLongMap!514 (toList!272 List!531)) )
))
(declare-fun contains!203 (ListLongMap!513 (_ BitVec 64)) Bool)

(declare-fun map!334 (LongMap!50) ListLongMap!513)

(assert (=> b!17414 (= lt!4521 (contains!203 (map!334 lt!4522) key!682))))

(declare-fun mapIsEmpty!729 () Bool)

(declare-fun mapRes!729 () Bool)

(assert (=> mapIsEmpty!729 mapRes!729))

(declare-fun b!17415 () Bool)

(declare-fun e!10896 () Bool)

(assert (=> b!17415 (= e!10896 tp_is_empty!863)))

(declare-fun mapNonEmpty!729 () Bool)

(declare-fun tp!2988 () Bool)

(assert (=> mapNonEmpty!729 (= mapRes!729 (and tp!2988 e!10896))))

(declare-fun mapRest!729 () (Array (_ BitVec 32) ValueCell!232))

(declare-fun mapValue!729 () ValueCell!232)

(declare-fun mapKey!729 () (_ BitVec 32))

(assert (=> mapNonEmpty!729 (= (arr!443 (_values!1633 (v!1421 (underlying!36 thiss!848)))) (store mapRest!729 mapKey!729 mapValue!729))))

(declare-fun res!12570 () Bool)

(assert (=> start!2990 (=> (not res!12570) (not e!10898))))

(declare-fun valid!32 (LongMap!50) Bool)

(assert (=> start!2990 (= res!12570 (valid!32 thiss!848))))

(assert (=> start!2990 e!10898))

(declare-fun e!10895 () Bool)

(assert (=> start!2990 e!10895))

(assert (=> start!2990 true))

(assert (=> start!2990 tp_is_empty!863))

(declare-fun b!17416 () Bool)

(declare-fun e!10904 () Bool)

(assert (=> b!17416 (= e!10895 e!10904)))

(declare-fun b!17417 () Bool)

(declare-fun e!10894 () Bool)

(assert (=> b!17417 (= e!10904 e!10894)))

(declare-fun b!17418 () Bool)

(declare-fun e!10899 () Bool)

(assert (=> b!17418 (= e!10899 (and e!10902 mapRes!729))))

(declare-fun condMapEmpty!729 () Bool)

(declare-fun mapDefault!729 () ValueCell!232)

