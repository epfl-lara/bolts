; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36934 () Bool)

(assert start!36934)

(declare-fun b_free!8053 () Bool)

(declare-fun b_next!8053 () Bool)

(assert (=> start!36934 (= b_free!8053 (not b_next!8053))))

(declare-fun tp!28875 () Bool)

(declare-fun b_and!15313 () Bool)

(assert (=> start!36934 (= tp!28875 b_and!15313)))

(declare-fun b!369878 () Bool)

(declare-fun e!225981 () Bool)

(assert (=> b!369878 (= e!225981 false)))

(declare-datatypes ((V!12707 0))(
  ( (V!12708 (val!4395 Int)) )
))
(declare-datatypes ((ValueCell!4007 0))(
  ( (ValueCellFull!4007 (v!6588 V!12707)) (EmptyCell!4007) )
))
(declare-datatypes ((array!21323 0))(
  ( (array!21324 (arr!10127 (Array (_ BitVec 32) ValueCell!4007)) (size!10479 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21323)

(declare-datatypes ((tuple2!5820 0))(
  ( (tuple2!5821 (_1!2920 (_ BitVec 64)) (_2!2920 V!12707)) )
))
(declare-datatypes ((List!5683 0))(
  ( (Nil!5680) (Cons!5679 (h!6535 tuple2!5820) (t!10841 List!5683)) )
))
(declare-datatypes ((ListLongMap!4747 0))(
  ( (ListLongMap!4748 (toList!2389 List!5683)) )
))
(declare-fun lt!169844 () ListLongMap!4747)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((array!21325 0))(
  ( (array!21326 (arr!10128 (Array (_ BitVec 32) (_ BitVec 64))) (size!10480 (_ BitVec 32))) )
))
(declare-fun lt!169846 () array!21325)

(declare-fun zeroValue!472 () V!12707)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!12707)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun minValue!472 () V!12707)

(declare-fun getCurrentListMapNoExtraKeys!657 (array!21325 array!21323 (_ BitVec 32) (_ BitVec 32) V!12707 V!12707 (_ BitVec 32) Int) ListLongMap!4747)

(assert (=> b!369878 (= lt!169844 (getCurrentListMapNoExtraKeys!657 lt!169846 (array!21324 (store (arr!10127 _values!506) i!548 (ValueCellFull!4007 v!373)) (size!10479 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun _keys!658 () array!21325)

(declare-fun lt!169845 () ListLongMap!4747)

(assert (=> b!369878 (= lt!169845 (getCurrentListMapNoExtraKeys!657 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!369879 () Bool)

(declare-fun res!207701 () Bool)

(assert (=> b!369879 (=> (not res!207701) (not e!225981))))

(declare-datatypes ((List!5684 0))(
  ( (Nil!5681) (Cons!5680 (h!6536 (_ BitVec 64)) (t!10842 List!5684)) )
))
(declare-fun arrayNoDuplicates!0 (array!21325 (_ BitVec 32) List!5684) Bool)

(assert (=> b!369879 (= res!207701 (arrayNoDuplicates!0 lt!169846 #b00000000000000000000000000000000 Nil!5681))))

(declare-fun b!369880 () Bool)

(declare-fun res!207703 () Bool)

(declare-fun e!225980 () Bool)

(assert (=> b!369880 (=> (not res!207703) (not e!225980))))

(assert (=> b!369880 (= res!207703 (or (= (select (arr!10128 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10128 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!369881 () Bool)

(assert (=> b!369881 (= e!225980 e!225981)))

(declare-fun res!207695 () Bool)

(assert (=> b!369881 (=> (not res!207695) (not e!225981))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21325 (_ BitVec 32)) Bool)

(assert (=> b!369881 (= res!207695 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169846 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!369881 (= lt!169846 (array!21326 (store (arr!10128 _keys!658) i!548 k!778) (size!10480 _keys!658)))))

(declare-fun b!369882 () Bool)

(declare-fun e!225983 () Bool)

(declare-fun tp_is_empty!8701 () Bool)

(assert (=> b!369882 (= e!225983 tp_is_empty!8701)))

(declare-fun mapNonEmpty!14616 () Bool)

(declare-fun mapRes!14616 () Bool)

(declare-fun tp!28874 () Bool)

(declare-fun e!225979 () Bool)

(assert (=> mapNonEmpty!14616 (= mapRes!14616 (and tp!28874 e!225979))))

(declare-fun mapRest!14616 () (Array (_ BitVec 32) ValueCell!4007))

(declare-fun mapKey!14616 () (_ BitVec 32))

(declare-fun mapValue!14616 () ValueCell!4007)

(assert (=> mapNonEmpty!14616 (= (arr!10127 _values!506) (store mapRest!14616 mapKey!14616 mapValue!14616))))

(declare-fun b!369884 () Bool)

(declare-fun res!207697 () Bool)

(assert (=> b!369884 (=> (not res!207697) (not e!225980))))

(assert (=> b!369884 (= res!207697 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10480 _keys!658))))))

(declare-fun b!369885 () Bool)

(declare-fun res!207700 () Bool)

(assert (=> b!369885 (=> (not res!207700) (not e!225980))))

(assert (=> b!369885 (= res!207700 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5681))))

(declare-fun mapIsEmpty!14616 () Bool)

(assert (=> mapIsEmpty!14616 mapRes!14616))

(declare-fun b!369886 () Bool)

(declare-fun res!207698 () Bool)

(assert (=> b!369886 (=> (not res!207698) (not e!225980))))

(declare-fun arrayContainsKey!0 (array!21325 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!369886 (= res!207698 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!369887 () Bool)

(declare-fun res!207702 () Bool)

(assert (=> b!369887 (=> (not res!207702) (not e!225980))))

(assert (=> b!369887 (= res!207702 (and (= (size!10479 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10480 _keys!658) (size!10479 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!369888 () Bool)

(assert (=> b!369888 (= e!225979 tp_is_empty!8701)))

(declare-fun b!369889 () Bool)

(declare-fun res!207699 () Bool)

(assert (=> b!369889 (=> (not res!207699) (not e!225980))))

(assert (=> b!369889 (= res!207699 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!369890 () Bool)

(declare-fun e!225984 () Bool)

(assert (=> b!369890 (= e!225984 (and e!225983 mapRes!14616))))

(declare-fun condMapEmpty!14616 () Bool)

(declare-fun mapDefault!14616 () ValueCell!4007)

