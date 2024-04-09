; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15214 () Bool)

(assert start!15214)

(declare-fun b!146378 () Bool)

(declare-fun b_free!3109 () Bool)

(declare-fun b_next!3109 () Bool)

(assert (=> b!146378 (= b_free!3109 (not b_next!3109))))

(declare-fun tp!11831 () Bool)

(declare-fun b_and!9161 () Bool)

(assert (=> b!146378 (= tp!11831 b_and!9161)))

(declare-fun b!146370 () Bool)

(declare-fun b_free!3111 () Bool)

(declare-fun b_next!3111 () Bool)

(assert (=> b!146370 (= b_free!3111 (not b_next!3111))))

(declare-fun tp!11830 () Bool)

(declare-fun b_and!9163 () Bool)

(assert (=> b!146370 (= tp!11830 b_and!9163)))

(declare-fun b!146368 () Bool)

(declare-fun e!95451 () Bool)

(declare-fun e!95462 () Bool)

(assert (=> b!146368 (= e!95451 e!95462)))

(declare-fun res!69637 () Bool)

(assert (=> b!146368 (=> (not res!69637) (not e!95462))))

(declare-datatypes ((V!3609 0))(
  ( (V!3610 (val!1530 Int)) )
))
(declare-datatypes ((array!4986 0))(
  ( (array!4987 (arr!2354 (Array (_ BitVec 32) (_ BitVec 64))) (size!2630 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1142 0))(
  ( (ValueCellFull!1142 (v!3348 V!3609)) (EmptyCell!1142) )
))
(declare-datatypes ((array!4988 0))(
  ( (array!4989 (arr!2355 (Array (_ BitVec 32) ValueCell!1142)) (size!2631 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1192 0))(
  ( (LongMapFixedSize!1193 (defaultEntry!3012 Int) (mask!7388 (_ BitVec 32)) (extraKeys!2757 (_ BitVec 32)) (zeroValue!2857 V!3609) (minValue!2857 V!3609) (_size!645 (_ BitVec 32)) (_keys!4781 array!4986) (_values!2995 array!4988) (_vacant!645 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!2736 0))(
  ( (tuple2!2737 (_1!1378 Bool) (_2!1378 LongMapFixedSize!1192)) )
))
(declare-fun lt!76976 () tuple2!2736)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!146368 (= res!69637 (and (_1!1378 lt!76976) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!4631 0))(
  ( (Unit!4632) )
))
(declare-fun lt!76978 () Unit!4631)

(declare-fun e!95463 () Unit!4631)

(assert (=> b!146368 (= lt!76978 e!95463)))

(declare-datatypes ((Cell!974 0))(
  ( (Cell!975 (v!3349 LongMapFixedSize!1192)) )
))
(declare-datatypes ((LongMap!974 0))(
  ( (LongMap!975 (underlying!498 Cell!974)) )
))
(declare-fun thiss!992 () LongMap!974)

(declare-fun c!27686 () Bool)

(declare-datatypes ((tuple2!2738 0))(
  ( (tuple2!2739 (_1!1379 (_ BitVec 64)) (_2!1379 V!3609)) )
))
(declare-datatypes ((List!1793 0))(
  ( (Nil!1790) (Cons!1789 (h!2397 tuple2!2738) (t!6494 List!1793)) )
))
(declare-datatypes ((ListLongMap!1775 0))(
  ( (ListLongMap!1776 (toList!903 List!1793)) )
))
(declare-fun lt!76973 () ListLongMap!1775)

(declare-fun contains!945 (ListLongMap!1775 (_ BitVec 64)) Bool)

(assert (=> b!146368 (= c!27686 (contains!945 lt!76973 (select (arr!2354 (_keys!4781 (v!3349 (underlying!498 thiss!992)))) from!355)))))

(declare-fun lt!76971 () V!3609)

(declare-fun newMap!16 () LongMapFixedSize!1192)

(declare-fun update!222 (LongMapFixedSize!1192 (_ BitVec 64) V!3609) tuple2!2736)

(assert (=> b!146368 (= lt!76976 (update!222 newMap!16 (select (arr!2354 (_keys!4781 (v!3349 (underlying!498 thiss!992)))) from!355) lt!76971))))

(declare-fun mapIsEmpty!4985 () Bool)

(declare-fun mapRes!4985 () Bool)

(assert (=> mapIsEmpty!4985 mapRes!4985))

(declare-fun b!146369 () Bool)

(declare-fun e!95467 () Bool)

(declare-fun tp_is_empty!2971 () Bool)

(assert (=> b!146369 (= e!95467 tp_is_empty!2971)))

(declare-fun e!95459 () Bool)

(declare-fun e!95460 () Bool)

(declare-fun array_inv!1461 (array!4986) Bool)

(declare-fun array_inv!1462 (array!4988) Bool)

(assert (=> b!146370 (= e!95460 (and tp!11830 tp_is_empty!2971 (array_inv!1461 (_keys!4781 newMap!16)) (array_inv!1462 (_values!2995 newMap!16)) e!95459))))

(declare-fun b!146371 () Bool)

(declare-fun res!69639 () Bool)

(declare-fun e!95461 () Bool)

(assert (=> b!146371 (=> (not res!69639) (not e!95461))))

(assert (=> b!146371 (= res!69639 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2630 (_keys!4781 (v!3349 (underlying!498 thiss!992)))))))))

(declare-fun b!146372 () Bool)

(declare-fun e!95465 () Bool)

(assert (=> b!146372 (= e!95461 e!95465)))

(declare-fun res!69642 () Bool)

(assert (=> b!146372 (=> (not res!69642) (not e!95465))))

(declare-fun lt!76979 () ListLongMap!1775)

(assert (=> b!146372 (= res!69642 (= lt!76979 lt!76973))))

(declare-fun map!1464 (LongMapFixedSize!1192) ListLongMap!1775)

(assert (=> b!146372 (= lt!76973 (map!1464 newMap!16))))

(declare-fun getCurrentListMap!567 (array!4986 array!4988 (_ BitVec 32) (_ BitVec 32) V!3609 V!3609 (_ BitVec 32) Int) ListLongMap!1775)

(assert (=> b!146372 (= lt!76979 (getCurrentListMap!567 (_keys!4781 (v!3349 (underlying!498 thiss!992))) (_values!2995 (v!3349 (underlying!498 thiss!992))) (mask!7388 (v!3349 (underlying!498 thiss!992))) (extraKeys!2757 (v!3349 (underlying!498 thiss!992))) (zeroValue!2857 (v!3349 (underlying!498 thiss!992))) (minValue!2857 (v!3349 (underlying!498 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3012 (v!3349 (underlying!498 thiss!992)))))))

(declare-fun b!146373 () Bool)

(declare-fun e!95466 () Bool)

(assert (=> b!146373 (= e!95466 tp_is_empty!2971)))

(declare-fun b!146374 () Bool)

(declare-fun res!69636 () Bool)

(assert (=> b!146374 (=> (not res!69636) (not e!95461))))

(assert (=> b!146374 (= res!69636 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7388 newMap!16)) (_size!645 (v!3349 (underlying!498 thiss!992)))))))

(declare-fun b!146375 () Bool)

(declare-fun e!95453 () Bool)

(declare-fun e!95455 () Bool)

(assert (=> b!146375 (= e!95453 e!95455)))

(declare-fun b!146376 () Bool)

(declare-fun e!95452 () Bool)

(assert (=> b!146376 (= e!95459 (and e!95452 mapRes!4985))))

(declare-fun condMapEmpty!4985 () Bool)

(declare-fun mapDefault!4985 () ValueCell!1142)

