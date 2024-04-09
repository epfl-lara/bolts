; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3338 () Bool)

(assert start!3338)

(declare-fun b!21004 () Bool)

(declare-fun b_free!727 () Bool)

(declare-fun b_next!727 () Bool)

(assert (=> b!21004 (= b_free!727 (not b_next!727))))

(declare-fun tp!3415 () Bool)

(declare-fun b_and!1413 () Bool)

(assert (=> b!21004 (= tp!3415 b_and!1413)))

(declare-fun mapIsEmpty!964 () Bool)

(declare-fun mapRes!964 () Bool)

(assert (=> mapIsEmpty!964 mapRes!964))

(declare-fun b!20996 () Bool)

(declare-datatypes ((V!1147 0))(
  ( (V!1148 (val!522 Int)) )
))
(declare-datatypes ((ValueCell!296 0))(
  ( (ValueCellFull!296 (v!1563 V!1147)) (EmptyCell!296) )
))
(declare-datatypes ((array!1203 0))(
  ( (array!1204 (arr!571 (Array (_ BitVec 32) ValueCell!296)) (size!664 (_ BitVec 32))) )
))
(declare-datatypes ((array!1205 0))(
  ( (array!1206 (arr!572 (Array (_ BitVec 32) (_ BitVec 64))) (size!665 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!178 0))(
  ( (LongMapFixedSize!179 (defaultEntry!1714 Int) (mask!4684 (_ BitVec 32)) (extraKeys!1618 (_ BitVec 32)) (zeroValue!1642 V!1147) (minValue!1642 V!1147) (_size!129 (_ BitVec 32)) (_keys!3136 array!1205) (_values!1704 array!1203) (_vacant!129 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!864 0))(
  ( (tuple2!865 (_1!435 Bool) (_2!435 LongMapFixedSize!178)) )
))
(declare-fun lt!6411 () tuple2!864)

(declare-fun call!1228 () tuple2!864)

(assert (=> b!20996 (= lt!6411 call!1228)))

(declare-datatypes ((Cell!178 0))(
  ( (Cell!179 (v!1564 LongMapFixedSize!178)) )
))
(declare-datatypes ((tuple2!866 0))(
  ( (tuple2!867 (_1!436 Bool) (_2!436 Cell!178)) )
))
(declare-fun e!13704 () tuple2!866)

(assert (=> b!20996 (= e!13704 (tuple2!867 (_1!435 lt!6411) (Cell!179 (_2!435 lt!6411))))))

(declare-fun b!20997 () Bool)

(declare-fun e!13700 () tuple2!866)

(declare-fun lt!6412 () tuple2!864)

(assert (=> b!20997 (= e!13700 (tuple2!867 (_1!435 lt!6412) (Cell!179 (_2!435 lt!6412))))))

(assert (=> b!20997 (= lt!6412 call!1228)))

(declare-fun bm!1224 () Bool)

(declare-fun call!1227 () tuple2!864)

(assert (=> bm!1224 (= call!1228 call!1227)))

(declare-fun b!20998 () Bool)

(declare-fun e!13701 () tuple2!866)

(assert (=> b!20998 (= e!13701 e!13704)))

(declare-fun c!2380 () Bool)

(declare-fun lt!6410 () Bool)

(declare-datatypes ((LongMap!178 0))(
  ( (LongMap!179 (underlying!100 Cell!178)) )
))
(declare-fun thiss!938 () LongMap!178)

(assert (=> b!20998 (= c!2380 (and (not lt!6410) (= (bvand (extraKeys!1618 (v!1564 (underlying!100 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!20999 () Bool)

(declare-fun c!2381 () Bool)

(assert (=> b!20999 (= c!2381 (and (not (= (bvand (extraKeys!1618 (v!1564 (underlying!100 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!6410))))

(assert (=> b!20999 (= e!13704 e!13700)))

(declare-fun b!21000 () Bool)

(declare-fun e!13703 () Bool)

(declare-fun tp_is_empty!991 () Bool)

(assert (=> b!21000 (= e!13703 tp_is_empty!991)))

(declare-fun b!21001 () Bool)

(declare-fun e!13708 () Bool)

(declare-fun e!13707 () Bool)

(assert (=> b!21001 (= e!13708 (and e!13707 mapRes!964))))

(declare-fun condMapEmpty!964 () Bool)

(declare-fun mapDefault!964 () ValueCell!296)

