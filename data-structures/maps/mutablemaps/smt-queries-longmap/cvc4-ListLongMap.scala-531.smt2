; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13244 () Bool)

(assert start!13244)

(declare-fun b!116872 () Bool)

(declare-fun b_free!2769 () Bool)

(declare-fun b_next!2769 () Bool)

(assert (=> b!116872 (= b_free!2769 (not b_next!2769))))

(declare-fun tp!10682 () Bool)

(declare-fun b_and!7297 () Bool)

(assert (=> b!116872 (= tp!10682 b_and!7297)))

(declare-fun b!116862 () Bool)

(declare-fun b_free!2771 () Bool)

(declare-fun b_next!2771 () Bool)

(assert (=> b!116862 (= b_free!2771 (not b_next!2771))))

(declare-fun tp!10681 () Bool)

(declare-fun b_and!7299 () Bool)

(assert (=> b!116862 (= tp!10681 b_and!7299)))

(declare-fun b!116861 () Bool)

(declare-fun e!76367 () Bool)

(declare-fun tp_is_empty!2801 () Bool)

(assert (=> b!116861 (= e!76367 tp_is_empty!2801)))

(declare-fun mapIsEmpty!4345 () Bool)

(declare-fun mapRes!4345 () Bool)

(assert (=> mapIsEmpty!4345 mapRes!4345))

(declare-datatypes ((V!3381 0))(
  ( (V!3382 (val!1445 Int)) )
))
(declare-datatypes ((array!4608 0))(
  ( (array!4609 (arr!2184 (Array (_ BitVec 32) (_ BitVec 64))) (size!2445 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1057 0))(
  ( (ValueCellFull!1057 (v!3055 V!3381)) (EmptyCell!1057) )
))
(declare-datatypes ((array!4610 0))(
  ( (array!4611 (arr!2185 (Array (_ BitVec 32) ValueCell!1057)) (size!2446 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1022 0))(
  ( (LongMapFixedSize!1023 (defaultEntry!2723 Int) (mask!6943 (_ BitVec 32)) (extraKeys!2512 (_ BitVec 32)) (zeroValue!2590 V!3381) (minValue!2590 V!3381) (_size!560 (_ BitVec 32)) (_keys!4446 array!4608) (_values!2706 array!4610) (_vacant!560 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1022)

(declare-fun e!76362 () Bool)

(declare-fun e!76364 () Bool)

(declare-fun array_inv!1329 (array!4608) Bool)

(declare-fun array_inv!1330 (array!4610) Bool)

(assert (=> b!116862 (= e!76362 (and tp!10681 tp_is_empty!2801 (array_inv!1329 (_keys!4446 newMap!16)) (array_inv!1330 (_values!2706 newMap!16)) e!76364))))

(declare-fun b!116863 () Bool)

(declare-fun e!76357 () Bool)

(declare-fun e!76369 () Bool)

(assert (=> b!116863 (= e!76357 e!76369)))

(declare-fun mapIsEmpty!4346 () Bool)

(declare-fun mapRes!4346 () Bool)

(assert (=> mapIsEmpty!4346 mapRes!4346))

(declare-fun b!116864 () Bool)

(declare-fun e!76361 () Bool)

(assert (=> b!116864 (= e!76369 e!76361)))

(declare-fun b!116865 () Bool)

(declare-fun e!76358 () Bool)

(assert (=> b!116865 (= e!76358 (and e!76367 mapRes!4346))))

(declare-fun condMapEmpty!4346 () Bool)

(declare-datatypes ((Cell!814 0))(
  ( (Cell!815 (v!3056 LongMapFixedSize!1022)) )
))
(declare-datatypes ((LongMap!814 0))(
  ( (LongMap!815 (underlying!418 Cell!814)) )
))
(declare-fun thiss!992 () LongMap!814)

(declare-fun mapDefault!4346 () ValueCell!1057)

