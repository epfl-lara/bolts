; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15662 () Bool)

(assert start!15662)

(declare-fun b!155899 () Bool)

(declare-fun b_free!3317 () Bool)

(declare-fun b_next!3317 () Bool)

(assert (=> b!155899 (= b_free!3317 (not b_next!3317))))

(declare-fun tp!12476 () Bool)

(declare-fun b_and!9749 () Bool)

(assert (=> b!155899 (= tp!12476 b_and!9749)))

(declare-fun b!155898 () Bool)

(declare-fun e!101930 () Bool)

(assert (=> b!155898 (= e!101930 true)))

(declare-fun lt!81492 () Bool)

(declare-datatypes ((V!3805 0))(
  ( (V!3806 (val!1604 Int)) )
))
(declare-datatypes ((ValueCell!1216 0))(
  ( (ValueCellFull!1216 (v!3465 V!3805)) (EmptyCell!1216) )
))
(declare-datatypes ((array!5290 0))(
  ( (array!5291 (arr!2502 (Array (_ BitVec 32) (_ BitVec 64))) (size!2780 (_ BitVec 32))) )
))
(declare-datatypes ((array!5292 0))(
  ( (array!5293 (arr!2503 (Array (_ BitVec 32) ValueCell!1216)) (size!2781 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1340 0))(
  ( (LongMapFixedSize!1341 (defaultEntry!3112 Int) (mask!7549 (_ BitVec 32)) (extraKeys!2853 (_ BitVec 32)) (zeroValue!2955 V!3805) (minValue!2955 V!3805) (_size!719 (_ BitVec 32)) (_keys!4887 array!5290) (_values!3095 array!5292) (_vacant!719 (_ BitVec 32))) )
))
(declare-fun lt!81493 () LongMapFixedSize!1340)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!2824 0))(
  ( (tuple2!2825 (_1!1422 (_ BitVec 64)) (_2!1422 V!3805)) )
))
(declare-datatypes ((List!1857 0))(
  ( (Nil!1854) (Cons!1853 (h!2462 tuple2!2824) (t!6667 List!1857)) )
))
(declare-datatypes ((ListLongMap!1833 0))(
  ( (ListLongMap!1834 (toList!932 List!1857)) )
))
(declare-fun contains!966 (ListLongMap!1833 (_ BitVec 64)) Bool)

(declare-fun map!1533 (LongMapFixedSize!1340) ListLongMap!1833)

(assert (=> b!155898 (= lt!81492 (contains!966 (map!1533 lt!81493) key!828))))

(declare-fun res!73660 () Bool)

(declare-fun e!101926 () Bool)

(assert (=> start!15662 (=> (not res!73660) (not e!101926))))

(declare-fun thiss!1248 () LongMapFixedSize!1340)

(declare-fun valid!647 (LongMapFixedSize!1340) Bool)

(assert (=> start!15662 (= res!73660 (valid!647 thiss!1248))))

(assert (=> start!15662 e!101926))

(declare-fun e!101927 () Bool)

(assert (=> start!15662 e!101927))

(assert (=> start!15662 true))

(declare-fun tp_is_empty!3119 () Bool)

(assert (=> start!15662 tp_is_empty!3119))

(declare-fun mapIsEmpty!5321 () Bool)

(declare-fun mapRes!5321 () Bool)

(assert (=> mapIsEmpty!5321 mapRes!5321))

(declare-fun e!101924 () Bool)

(declare-fun array_inv!1571 (array!5290) Bool)

(declare-fun array_inv!1572 (array!5292) Bool)

(assert (=> b!155899 (= e!101927 (and tp!12476 tp_is_empty!3119 (array_inv!1571 (_keys!4887 thiss!1248)) (array_inv!1572 (_values!3095 thiss!1248)) e!101924))))

(declare-fun b!155900 () Bool)

(declare-fun e!101928 () Bool)

(assert (=> b!155900 (= e!101924 (and e!101928 mapRes!5321))))

(declare-fun condMapEmpty!5321 () Bool)

(declare-fun mapDefault!5321 () ValueCell!1216)

