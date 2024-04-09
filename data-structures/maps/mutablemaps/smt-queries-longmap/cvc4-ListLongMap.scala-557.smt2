; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15170 () Bool)

(assert start!15170)

(declare-fun b!145739 () Bool)

(declare-fun b_free!3081 () Bool)

(declare-fun b_next!3081 () Bool)

(assert (=> b!145739 (= b_free!3081 (not b_next!3081))))

(declare-fun tp!11743 () Bool)

(declare-fun b_and!9101 () Bool)

(assert (=> b!145739 (= tp!11743 b_and!9101)))

(declare-fun b!145733 () Bool)

(declare-fun b_free!3083 () Bool)

(declare-fun b_next!3083 () Bool)

(assert (=> b!145733 (= b_free!3083 (not b_next!3083))))

(declare-fun tp!11742 () Bool)

(declare-fun b_and!9103 () Bool)

(assert (=> b!145733 (= tp!11742 b_and!9103)))

(declare-fun b!145724 () Bool)

(declare-fun e!94963 () Bool)

(declare-fun e!94969 () Bool)

(assert (=> b!145724 (= e!94963 e!94969)))

(declare-fun res!69394 () Bool)

(assert (=> b!145724 (=> (not res!69394) (not e!94969))))

(declare-datatypes ((V!3589 0))(
  ( (V!3590 (val!1523 Int)) )
))
(declare-datatypes ((array!4956 0))(
  ( (array!4957 (arr!2340 (Array (_ BitVec 32) (_ BitVec 64))) (size!2616 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1135 0))(
  ( (ValueCellFull!1135 (v!3332 V!3589)) (EmptyCell!1135) )
))
(declare-datatypes ((array!4958 0))(
  ( (array!4959 (arr!2341 (Array (_ BitVec 32) ValueCell!1135)) (size!2617 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1178 0))(
  ( (LongMapFixedSize!1179 (defaultEntry!3003 Int) (mask!7373 (_ BitVec 32)) (extraKeys!2748 (_ BitVec 32)) (zeroValue!2848 V!3589) (minValue!2848 V!3589) (_size!638 (_ BitVec 32)) (_keys!4772 array!4956) (_values!2986 array!4958) (_vacant!638 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!962 0))(
  ( (Cell!963 (v!3333 LongMapFixedSize!1178)) )
))
(declare-datatypes ((LongMap!962 0))(
  ( (LongMap!963 (underlying!492 Cell!962)) )
))
(declare-fun thiss!992 () LongMap!962)

(declare-datatypes ((tuple2!2712 0))(
  ( (tuple2!2713 (_1!1366 (_ BitVec 64)) (_2!1366 V!3589)) )
))
(declare-datatypes ((List!1782 0))(
  ( (Nil!1779) (Cons!1778 (h!2386 tuple2!2712) (t!6455 List!1782)) )
))
(declare-datatypes ((ListLongMap!1763 0))(
  ( (ListLongMap!1764 (toList!897 List!1782)) )
))
(declare-fun lt!76648 () ListLongMap!1763)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun contains!939 (ListLongMap!1763 (_ BitVec 64)) Bool)

(assert (=> b!145724 (= res!69394 (contains!939 lt!76648 (select (arr!2340 (_keys!4772 (v!3333 (underlying!492 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2714 0))(
  ( (tuple2!2715 (_1!1367 Bool) (_2!1367 LongMapFixedSize!1178)) )
))
(declare-fun lt!76645 () tuple2!2714)

(declare-fun newMap!16 () LongMapFixedSize!1178)

(declare-fun update!216 (LongMapFixedSize!1178 (_ BitVec 64) V!3589) tuple2!2714)

(declare-fun get!1561 (ValueCell!1135 V!3589) V!3589)

(declare-fun dynLambda!449 (Int (_ BitVec 64)) V!3589)

(assert (=> b!145724 (= lt!76645 (update!216 newMap!16 (select (arr!2340 (_keys!4772 (v!3333 (underlying!492 thiss!992)))) from!355) (get!1561 (select (arr!2341 (_values!2986 (v!3333 (underlying!492 thiss!992)))) from!355) (dynLambda!449 (defaultEntry!3003 (v!3333 (underlying!492 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!145725 () Bool)

(declare-fun e!94968 () Bool)

(declare-fun e!94961 () Bool)

(assert (=> b!145725 (= e!94968 e!94961)))

(declare-fun b!145726 () Bool)

(declare-fun e!94970 () Bool)

(declare-fun e!94962 () Bool)

(declare-fun mapRes!4939 () Bool)

(assert (=> b!145726 (= e!94970 (and e!94962 mapRes!4939))))

(declare-fun condMapEmpty!4939 () Bool)

(declare-fun mapDefault!4939 () ValueCell!1135)

