; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8580 () Bool)

(assert start!8580)

(declare-fun b!58768 () Bool)

(declare-fun b_free!1957 () Bool)

(declare-fun b_next!1957 () Bool)

(assert (=> b!58768 (= b_free!1957 (not b_next!1957))))

(declare-fun tp!7983 () Bool)

(declare-fun b_and!3553 () Bool)

(assert (=> b!58768 (= tp!7983 b_and!3553)))

(declare-fun b!58775 () Bool)

(declare-fun b_free!1959 () Bool)

(declare-fun b_next!1959 () Bool)

(assert (=> b!58775 (= b_free!1959 (not b_next!1959))))

(declare-fun tp!7986 () Bool)

(declare-fun b_and!3555 () Bool)

(assert (=> b!58775 (= tp!7986 b_and!3555)))

(declare-fun mapNonEmpty!2867 () Bool)

(declare-fun mapRes!2867 () Bool)

(declare-fun tp!7985 () Bool)

(declare-fun e!38680 () Bool)

(assert (=> mapNonEmpty!2867 (= mapRes!2867 (and tp!7985 e!38680))))

(declare-datatypes ((V!2841 0))(
  ( (V!2842 (val!1242 Int)) )
))
(declare-datatypes ((ValueCell!854 0))(
  ( (ValueCellFull!854 (v!2378 V!2841)) (EmptyCell!854) )
))
(declare-fun mapRest!2867 () (Array (_ BitVec 32) ValueCell!854))

(declare-fun mapValue!2867 () ValueCell!854)

(declare-datatypes ((array!3716 0))(
  ( (array!3717 (arr!1778 (Array (_ BitVec 32) (_ BitVec 64))) (size!2008 (_ BitVec 32))) )
))
(declare-datatypes ((array!3718 0))(
  ( (array!3719 (arr!1779 (Array (_ BitVec 32) ValueCell!854)) (size!2009 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!616 0))(
  ( (LongMapFixedSize!617 (defaultEntry!2042 Int) (mask!5926 (_ BitVec 32)) (extraKeys!1929 (_ BitVec 32)) (zeroValue!1958 V!2841) (minValue!1958 V!2841) (_size!357 (_ BitVec 32)) (_keys!3666 array!3716) (_values!2025 array!3718) (_vacant!357 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!616)

(declare-fun mapKey!2867 () (_ BitVec 32))

(assert (=> mapNonEmpty!2867 (= (arr!1779 (_values!2025 newMap!16)) (store mapRest!2867 mapKey!2867 mapValue!2867))))

(declare-fun b!58760 () Bool)

(declare-fun e!38677 () Bool)

(declare-fun e!38672 () Bool)

(assert (=> b!58760 (= e!38677 e!38672)))

(declare-fun res!32710 () Bool)

(assert (=> b!58760 (=> (not res!32710) (not e!38672))))

(declare-datatypes ((tuple2!2042 0))(
  ( (tuple2!2043 (_1!1031 Bool) (_2!1031 LongMapFixedSize!616)) )
))
(declare-fun lt!23641 () tuple2!2042)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!58760 (= res!32710 (and (_1!1031 lt!23641) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!1551 0))(
  ( (Unit!1552) )
))
(declare-fun lt!23642 () Unit!1551)

(declare-fun e!38678 () Unit!1551)

(assert (=> b!58760 (= lt!23642 e!38678)))

(declare-datatypes ((Cell!426 0))(
  ( (Cell!427 (v!2379 LongMapFixedSize!616)) )
))
(declare-datatypes ((LongMap!426 0))(
  ( (LongMap!427 (underlying!224 Cell!426)) )
))
(declare-fun thiss!992 () LongMap!426)

(declare-datatypes ((tuple2!2044 0))(
  ( (tuple2!2045 (_1!1032 (_ BitVec 64)) (_2!1032 V!2841)) )
))
(declare-datatypes ((List!1452 0))(
  ( (Nil!1449) (Cons!1448 (h!2029 tuple2!2044) (t!4794 List!1452)) )
))
(declare-datatypes ((ListLongMap!1375 0))(
  ( (ListLongMap!1376 (toList!703 List!1452)) )
))
(declare-fun lt!23643 () ListLongMap!1375)

(declare-fun c!7458 () Bool)

(declare-fun contains!691 (ListLongMap!1375 (_ BitVec 64)) Bool)

(assert (=> b!58760 (= c!7458 (contains!691 lt!23643 (select (arr!1778 (_keys!3666 (v!2379 (underlying!224 thiss!992)))) from!355)))))

(declare-fun update!83 (LongMapFixedSize!616 (_ BitVec 64) V!2841) tuple2!2042)

(declare-fun get!1079 (ValueCell!854 V!2841) V!2841)

(declare-fun dynLambda!311 (Int (_ BitVec 64)) V!2841)

(assert (=> b!58760 (= lt!23641 (update!83 newMap!16 (select (arr!1778 (_keys!3666 (v!2379 (underlying!224 thiss!992)))) from!355) (get!1079 (select (arr!1779 (_values!2025 (v!2379 (underlying!224 thiss!992)))) from!355) (dynLambda!311 (defaultEntry!2042 (v!2379 (underlying!224 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!2867 () Bool)

(declare-fun mapRes!2868 () Bool)

(assert (=> mapIsEmpty!2867 mapRes!2868))

(declare-fun b!58761 () Bool)

(declare-fun res!32707 () Bool)

(declare-fun e!38669 () Bool)

(assert (=> b!58761 (=> (not res!32707) (not e!38669))))

(declare-fun valid!248 (LongMapFixedSize!616) Bool)

(assert (=> b!58761 (= res!32707 (valid!248 newMap!16))))

(declare-fun b!58762 () Bool)

(declare-fun e!38679 () Bool)

(declare-fun e!38675 () Bool)

(assert (=> b!58762 (= e!38679 (and e!38675 mapRes!2868))))

(declare-fun condMapEmpty!2868 () Bool)

(declare-fun mapDefault!2867 () ValueCell!854)

