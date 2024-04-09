; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37402 () Bool)

(assert start!37402)

(declare-fun b_free!8521 () Bool)

(declare-fun b_next!8521 () Bool)

(assert (=> start!37402 (= b_free!8521 (not b_next!8521))))

(declare-fun tp!30279 () Bool)

(declare-fun b_and!15781 () Bool)

(assert (=> start!37402 (= tp!30279 b_and!15781)))

(declare-fun b!379980 () Bool)

(declare-fun res!215691 () Bool)

(declare-fun e!231143 () Bool)

(assert (=> b!379980 (=> (not res!215691) (not e!231143))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22235 0))(
  ( (array!22236 (arr!10583 (Array (_ BitVec 32) (_ BitVec 64))) (size!10935 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22235)

(assert (=> b!379980 (= res!215691 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10935 _keys!658))))))

(declare-fun mapIsEmpty!15318 () Bool)

(declare-fun mapRes!15318 () Bool)

(assert (=> mapIsEmpty!15318 mapRes!15318))

(declare-fun b!379981 () Bool)

(declare-fun res!215693 () Bool)

(assert (=> b!379981 (=> (not res!215693) (not e!231143))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22235 (_ BitVec 32)) Bool)

(assert (=> b!379981 (= res!215693 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!379982 () Bool)

(declare-fun res!215695 () Bool)

(declare-fun e!231147 () Bool)

(assert (=> b!379982 (=> (not res!215695) (not e!231147))))

(declare-fun lt!177789 () array!22235)

(declare-datatypes ((List!6039 0))(
  ( (Nil!6036) (Cons!6035 (h!6891 (_ BitVec 64)) (t!11197 List!6039)) )
))
(declare-fun arrayNoDuplicates!0 (array!22235 (_ BitVec 32) List!6039) Bool)

(assert (=> b!379982 (= res!215695 (arrayNoDuplicates!0 lt!177789 #b00000000000000000000000000000000 Nil!6036))))

(declare-fun b!379983 () Bool)

(declare-fun e!231144 () Bool)

(declare-fun tp_is_empty!9169 () Bool)

(assert (=> b!379983 (= e!231144 tp_is_empty!9169)))

(declare-fun b!379984 () Bool)

(assert (=> b!379984 (= e!231143 e!231147)))

(declare-fun res!215700 () Bool)

(assert (=> b!379984 (=> (not res!215700) (not e!231147))))

(assert (=> b!379984 (= res!215700 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!177789 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!379984 (= lt!177789 (array!22236 (store (arr!10583 _keys!658) i!548 k!778) (size!10935 _keys!658)))))

(declare-fun b!379985 () Bool)

(declare-fun res!215701 () Bool)

(assert (=> b!379985 (=> (not res!215701) (not e!231143))))

(assert (=> b!379985 (= res!215701 (or (= (select (arr!10583 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10583 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!379986 () Bool)

(declare-fun e!231142 () Bool)

(assert (=> b!379986 (= e!231142 true)))

(declare-datatypes ((V!13331 0))(
  ( (V!13332 (val!4629 Int)) )
))
(declare-datatypes ((tuple2!6168 0))(
  ( (tuple2!6169 (_1!3094 (_ BitVec 64)) (_2!3094 V!13331)) )
))
(declare-datatypes ((List!6040 0))(
  ( (Nil!6037) (Cons!6036 (h!6892 tuple2!6168) (t!11198 List!6040)) )
))
(declare-datatypes ((ListLongMap!5095 0))(
  ( (ListLongMap!5096 (toList!2563 List!6040)) )
))
(declare-fun lt!177793 () ListLongMap!5095)

(declare-fun lt!177796 () ListLongMap!5095)

(declare-fun lt!177785 () tuple2!6168)

(declare-fun +!904 (ListLongMap!5095 tuple2!6168) ListLongMap!5095)

(assert (=> b!379986 (= lt!177793 (+!904 lt!177796 lt!177785))))

(declare-fun v!373 () V!13331)

(declare-datatypes ((Unit!11703 0))(
  ( (Unit!11704) )
))
(declare-fun lt!177790 () Unit!11703)

(declare-fun lt!177792 () ListLongMap!5095)

(declare-fun minValue!472 () V!13331)

(declare-fun addCommutativeForDiffKeys!315 (ListLongMap!5095 (_ BitVec 64) V!13331 (_ BitVec 64) V!13331) Unit!11703)

(assert (=> b!379986 (= lt!177790 (addCommutativeForDiffKeys!315 lt!177792 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!379987 () Bool)

(declare-fun res!215699 () Bool)

(assert (=> b!379987 (=> (not res!215699) (not e!231143))))

(assert (=> b!379987 (= res!215699 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6036))))

(declare-fun b!379988 () Bool)

(declare-fun res!215694 () Bool)

(assert (=> b!379988 (=> (not res!215694) (not e!231143))))

(declare-fun arrayContainsKey!0 (array!22235 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!379988 (= res!215694 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun res!215698 () Bool)

(assert (=> start!37402 (=> (not res!215698) (not e!231143))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37402 (= res!215698 (validMask!0 mask!970))))

(assert (=> start!37402 e!231143))

(declare-datatypes ((ValueCell!4241 0))(
  ( (ValueCellFull!4241 (v!6822 V!13331)) (EmptyCell!4241) )
))
(declare-datatypes ((array!22237 0))(
  ( (array!22238 (arr!10584 (Array (_ BitVec 32) ValueCell!4241)) (size!10936 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22237)

(declare-fun e!231145 () Bool)

(declare-fun array_inv!7786 (array!22237) Bool)

(assert (=> start!37402 (and (array_inv!7786 _values!506) e!231145)))

(assert (=> start!37402 tp!30279))

(assert (=> start!37402 true))

(assert (=> start!37402 tp_is_empty!9169))

(declare-fun array_inv!7787 (array!22235) Bool)

(assert (=> start!37402 (array_inv!7787 _keys!658)))

(declare-fun mapNonEmpty!15318 () Bool)

(declare-fun tp!30278 () Bool)

(declare-fun e!231140 () Bool)

(assert (=> mapNonEmpty!15318 (= mapRes!15318 (and tp!30278 e!231140))))

(declare-fun mapKey!15318 () (_ BitVec 32))

(declare-fun mapValue!15318 () ValueCell!4241)

(declare-fun mapRest!15318 () (Array (_ BitVec 32) ValueCell!4241))

(assert (=> mapNonEmpty!15318 (= (arr!10584 _values!506) (store mapRest!15318 mapKey!15318 mapValue!15318))))

(declare-fun b!379989 () Bool)

(declare-fun res!215697 () Bool)

(assert (=> b!379989 (=> (not res!215697) (not e!231143))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!379989 (= res!215697 (validKeyInArray!0 k!778))))

(declare-fun b!379990 () Bool)

(declare-fun e!231141 () Bool)

(assert (=> b!379990 (= e!231141 e!231142)))

(declare-fun res!215702 () Bool)

(assert (=> b!379990 (=> res!215702 e!231142)))

(assert (=> b!379990 (= res!215702 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!177791 () ListLongMap!5095)

(assert (=> b!379990 (= lt!177791 lt!177796)))

(declare-fun lt!177795 () tuple2!6168)

(assert (=> b!379990 (= lt!177796 (+!904 lt!177792 lt!177795))))

(declare-fun lt!177788 () ListLongMap!5095)

(assert (=> b!379990 (= lt!177788 lt!177793)))

(declare-fun lt!177787 () ListLongMap!5095)

(assert (=> b!379990 (= lt!177793 (+!904 lt!177787 lt!177795))))

(declare-fun lt!177784 () ListLongMap!5095)

(assert (=> b!379990 (= lt!177788 (+!904 lt!177784 lt!177795))))

(assert (=> b!379990 (= lt!177795 (tuple2!6169 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!379991 () Bool)

(assert (=> b!379991 (= e!231147 (not e!231141))))

(declare-fun res!215692 () Bool)

(assert (=> b!379991 (=> res!215692 e!231141)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!379991 (= res!215692 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13331)

(declare-fun getCurrentListMap!1988 (array!22235 array!22237 (_ BitVec 32) (_ BitVec 32) V!13331 V!13331 (_ BitVec 32) Int) ListLongMap!5095)

(assert (=> b!379991 (= lt!177791 (getCurrentListMap!1988 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177794 () array!22237)

(assert (=> b!379991 (= lt!177788 (getCurrentListMap!1988 lt!177789 lt!177794 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!379991 (and (= lt!177784 lt!177787) (= lt!177787 lt!177784))))

(assert (=> b!379991 (= lt!177787 (+!904 lt!177792 lt!177785))))

(assert (=> b!379991 (= lt!177785 (tuple2!6169 k!778 v!373))))

(declare-fun lt!177786 () Unit!11703)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!139 (array!22235 array!22237 (_ BitVec 32) (_ BitVec 32) V!13331 V!13331 (_ BitVec 32) (_ BitVec 64) V!13331 (_ BitVec 32) Int) Unit!11703)

(assert (=> b!379991 (= lt!177786 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!139 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!806 (array!22235 array!22237 (_ BitVec 32) (_ BitVec 32) V!13331 V!13331 (_ BitVec 32) Int) ListLongMap!5095)

(assert (=> b!379991 (= lt!177784 (getCurrentListMapNoExtraKeys!806 lt!177789 lt!177794 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!379991 (= lt!177794 (array!22238 (store (arr!10584 _values!506) i!548 (ValueCellFull!4241 v!373)) (size!10936 _values!506)))))

(assert (=> b!379991 (= lt!177792 (getCurrentListMapNoExtraKeys!806 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!379992 () Bool)

(assert (=> b!379992 (= e!231140 tp_is_empty!9169)))

(declare-fun b!379993 () Bool)

(assert (=> b!379993 (= e!231145 (and e!231144 mapRes!15318))))

(declare-fun condMapEmpty!15318 () Bool)

(declare-fun mapDefault!15318 () ValueCell!4241)

