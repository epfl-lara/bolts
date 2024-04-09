; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17022 () Bool)

(assert start!17022)

(declare-fun b!170865 () Bool)

(declare-fun b_free!4235 () Bool)

(declare-fun b_next!4235 () Bool)

(assert (=> b!170865 (= b_free!4235 (not b_next!4235))))

(declare-fun tp!15334 () Bool)

(declare-fun b_and!10667 () Bool)

(assert (=> b!170865 (= tp!15334 b_and!10667)))

(declare-fun b!170864 () Bool)

(declare-fun e!112820 () Bool)

(declare-fun tp_is_empty!4007 () Bool)

(assert (=> b!170864 (= e!112820 tp_is_empty!4007)))

(declare-datatypes ((V!4989 0))(
  ( (V!4990 (val!2048 Int)) )
))
(declare-datatypes ((ValueCell!1660 0))(
  ( (ValueCellFull!1660 (v!3909 V!4989)) (EmptyCell!1660) )
))
(declare-datatypes ((array!7126 0))(
  ( (array!7127 (arr!3390 (Array (_ BitVec 32) (_ BitVec 64))) (size!3683 (_ BitVec 32))) )
))
(declare-datatypes ((array!7128 0))(
  ( (array!7129 (arr!3391 (Array (_ BitVec 32) ValueCell!1660)) (size!3684 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2228 0))(
  ( (LongMapFixedSize!2229 (defaultEntry!3556 Int) (mask!8384 (_ BitVec 32)) (extraKeys!3297 (_ BitVec 32)) (zeroValue!3399 V!4989) (minValue!3399 V!4989) (_size!1163 (_ BitVec 32)) (_keys!5388 array!7126) (_values!3539 array!7128) (_vacant!1163 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2228)

(declare-fun e!112819 () Bool)

(declare-fun e!112823 () Bool)

(declare-fun array_inv!2161 (array!7126) Bool)

(declare-fun array_inv!2162 (array!7128) Bool)

(assert (=> b!170865 (= e!112823 (and tp!15334 tp_is_empty!4007 (array_inv!2161 (_keys!5388 thiss!1248)) (array_inv!2162 (_values!3539 thiss!1248)) e!112819))))

(declare-fun mapIsEmpty!6803 () Bool)

(declare-fun mapRes!6803 () Bool)

(assert (=> mapIsEmpty!6803 mapRes!6803))

(declare-fun b!170866 () Bool)

(declare-fun e!112818 () Bool)

(declare-fun e!112821 () Bool)

(assert (=> b!170866 (= e!112818 e!112821)))

(declare-fun res!81248 () Bool)

(assert (=> b!170866 (=> (not res!81248) (not e!112821))))

(declare-datatypes ((tuple2!3232 0))(
  ( (tuple2!3233 (_1!1626 (_ BitVec 64)) (_2!1626 V!4989)) )
))
(declare-datatypes ((List!2214 0))(
  ( (Nil!2211) (Cons!2210 (h!2827 tuple2!3232) (t!7024 List!2214)) )
))
(declare-datatypes ((ListLongMap!2173 0))(
  ( (ListLongMap!2174 (toList!1102 List!2214)) )
))
(declare-fun lt!85076 () ListLongMap!2173)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun contains!1144 (ListLongMap!2173 (_ BitVec 64)) Bool)

(assert (=> b!170866 (= res!81248 (contains!1144 lt!85076 key!828))))

(declare-fun lt!85075 () LongMapFixedSize!2228)

(declare-fun map!1853 (LongMapFixedSize!2228) ListLongMap!2173)

(assert (=> b!170866 (= lt!85076 (map!1853 lt!85075))))

(declare-fun b!170867 () Bool)

(declare-fun res!81247 () Bool)

(declare-fun e!112816 () Bool)

(assert (=> b!170867 (=> (not res!81247) (not e!112816))))

(assert (=> b!170867 (= res!81247 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!6803 () Bool)

(declare-fun tp!15335 () Bool)

(declare-fun e!112822 () Bool)

(assert (=> mapNonEmpty!6803 (= mapRes!6803 (and tp!15335 e!112822))))

(declare-fun mapKey!6803 () (_ BitVec 32))

(declare-fun mapValue!6803 () ValueCell!1660)

(declare-fun mapRest!6803 () (Array (_ BitVec 32) ValueCell!1660))

(assert (=> mapNonEmpty!6803 (= (arr!3391 (_values!3539 thiss!1248)) (store mapRest!6803 mapKey!6803 mapValue!6803))))

(declare-fun b!170868 () Bool)

(assert (=> b!170868 (= e!112819 (and e!112820 mapRes!6803))))

(declare-fun condMapEmpty!6803 () Bool)

(declare-fun mapDefault!6803 () ValueCell!1660)

