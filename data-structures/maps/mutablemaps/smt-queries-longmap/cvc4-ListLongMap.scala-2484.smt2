; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38734 () Bool)

(assert start!38734)

(declare-fun b_free!9263 () Bool)

(declare-fun b_next!9263 () Bool)

(assert (=> start!38734 (= b_free!9263 (not b_next!9263))))

(declare-fun tp!32912 () Bool)

(declare-fun b_and!16667 () Bool)

(assert (=> start!38734 (= tp!32912 b_and!16667)))

(declare-fun mapIsEmpty!16839 () Bool)

(declare-fun mapRes!16839 () Bool)

(assert (=> mapIsEmpty!16839 mapRes!16839))

(declare-fun b!402970 () Bool)

(declare-fun res!232271 () Bool)

(declare-fun e!242659 () Bool)

(assert (=> b!402970 (=> (not res!232271) (not e!242659))))

(declare-datatypes ((array!24161 0))(
  ( (array!24162 (arr!11527 (Array (_ BitVec 32) (_ BitVec 64))) (size!11879 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24161)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24161 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!402970 (= res!232271 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-datatypes ((V!14631 0))(
  ( (V!14632 (val!5117 Int)) )
))
(declare-fun minValue!515 () V!14631)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!187976 () array!24161)

(declare-datatypes ((ValueCell!4729 0))(
  ( (ValueCellFull!4729 (v!7360 V!14631)) (EmptyCell!4729) )
))
(declare-datatypes ((array!24163 0))(
  ( (array!24164 (arr!11528 (Array (_ BitVec 32) ValueCell!4729)) (size!11880 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24163)

(declare-fun zeroValue!515 () V!14631)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun bm!28447 () Bool)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!6744 0))(
  ( (tuple2!6745 (_1!3382 (_ BitVec 64)) (_2!3382 V!14631)) )
))
(declare-datatypes ((List!6686 0))(
  ( (Nil!6683) (Cons!6682 (h!7538 tuple2!6744) (t!11868 List!6686)) )
))
(declare-datatypes ((ListLongMap!5671 0))(
  ( (ListLongMap!5672 (toList!2851 List!6686)) )
))
(declare-fun call!28450 () ListLongMap!5671)

(declare-fun c!54776 () Bool)

(declare-fun v!412 () V!14631)

(declare-fun getCurrentListMapNoExtraKeys!1062 (array!24161 array!24163 (_ BitVec 32) (_ BitVec 32) V!14631 V!14631 (_ BitVec 32) Int) ListLongMap!5671)

(assert (=> bm!28447 (= call!28450 (getCurrentListMapNoExtraKeys!1062 (ite c!54776 _keys!709 lt!187976) (ite c!54776 _values!549 (array!24164 (store (arr!11528 _values!549) i!563 (ValueCellFull!4729 v!412)) (size!11880 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402971 () Bool)

(declare-fun e!242660 () Bool)

(declare-fun tp_is_empty!10145 () Bool)

(assert (=> b!402971 (= e!242660 tp_is_empty!10145)))

(declare-fun b!402972 () Bool)

(declare-fun e!242658 () Bool)

(assert (=> b!402972 (= e!242658 tp_is_empty!10145)))

(declare-fun b!402973 () Bool)

(declare-fun res!232265 () Bool)

(assert (=> b!402973 (=> (not res!232265) (not e!242659))))

(assert (=> b!402973 (= res!232265 (and (= (size!11880 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11879 _keys!709) (size!11880 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!402974 () Bool)

(declare-fun e!242661 () Bool)

(assert (=> b!402974 (= e!242661 (not true))))

(declare-fun e!242656 () Bool)

(assert (=> b!402974 e!242656))

(assert (=> b!402974 (= c!54776 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12151 0))(
  ( (Unit!12152) )
))
(declare-fun lt!187977 () Unit!12151)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!338 (array!24161 array!24163 (_ BitVec 32) (_ BitVec 32) V!14631 V!14631 (_ BitVec 32) (_ BitVec 64) V!14631 (_ BitVec 32) Int) Unit!12151)

(assert (=> b!402974 (= lt!187977 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!338 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun call!28451 () ListLongMap!5671)

(declare-fun b!402975 () Bool)

(declare-fun +!1127 (ListLongMap!5671 tuple2!6744) ListLongMap!5671)

(assert (=> b!402975 (= e!242656 (= call!28451 (+!1127 call!28450 (tuple2!6745 k!794 v!412))))))

(declare-fun b!402976 () Bool)

(declare-fun res!232268 () Bool)

(assert (=> b!402976 (=> (not res!232268) (not e!242659))))

(declare-datatypes ((List!6687 0))(
  ( (Nil!6684) (Cons!6683 (h!7539 (_ BitVec 64)) (t!11869 List!6687)) )
))
(declare-fun arrayNoDuplicates!0 (array!24161 (_ BitVec 32) List!6687) Bool)

(assert (=> b!402976 (= res!232268 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6684))))

(declare-fun bm!28448 () Bool)

(assert (=> bm!28448 (= call!28451 (getCurrentListMapNoExtraKeys!1062 (ite c!54776 lt!187976 _keys!709) (ite c!54776 (array!24164 (store (arr!11528 _values!549) i!563 (ValueCellFull!4729 v!412)) (size!11880 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402978 () Bool)

(declare-fun res!232264 () Bool)

(assert (=> b!402978 (=> (not res!232264) (not e!242659))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!402978 (= res!232264 (validMask!0 mask!1025))))

(declare-fun b!402979 () Bool)

(declare-fun res!232262 () Bool)

(assert (=> b!402979 (=> (not res!232262) (not e!242661))))

(assert (=> b!402979 (= res!232262 (arrayNoDuplicates!0 lt!187976 #b00000000000000000000000000000000 Nil!6684))))

(declare-fun b!402980 () Bool)

(assert (=> b!402980 (= e!242659 e!242661)))

(declare-fun res!232266 () Bool)

(assert (=> b!402980 (=> (not res!232266) (not e!242661))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24161 (_ BitVec 32)) Bool)

(assert (=> b!402980 (= res!232266 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187976 mask!1025))))

(assert (=> b!402980 (= lt!187976 (array!24162 (store (arr!11527 _keys!709) i!563 k!794) (size!11879 _keys!709)))))

(declare-fun mapNonEmpty!16839 () Bool)

(declare-fun tp!32913 () Bool)

(assert (=> mapNonEmpty!16839 (= mapRes!16839 (and tp!32913 e!242660))))

(declare-fun mapValue!16839 () ValueCell!4729)

(declare-fun mapKey!16839 () (_ BitVec 32))

(declare-fun mapRest!16839 () (Array (_ BitVec 32) ValueCell!4729))

(assert (=> mapNonEmpty!16839 (= (arr!11528 _values!549) (store mapRest!16839 mapKey!16839 mapValue!16839))))

(declare-fun b!402981 () Bool)

(declare-fun res!232270 () Bool)

(assert (=> b!402981 (=> (not res!232270) (not e!242659))))

(assert (=> b!402981 (= res!232270 (or (= (select (arr!11527 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11527 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!402982 () Bool)

(declare-fun res!232261 () Bool)

(assert (=> b!402982 (=> (not res!232261) (not e!242659))))

(assert (=> b!402982 (= res!232261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!402983 () Bool)

(declare-fun e!242657 () Bool)

(assert (=> b!402983 (= e!242657 (and e!242658 mapRes!16839))))

(declare-fun condMapEmpty!16839 () Bool)

(declare-fun mapDefault!16839 () ValueCell!4729)

