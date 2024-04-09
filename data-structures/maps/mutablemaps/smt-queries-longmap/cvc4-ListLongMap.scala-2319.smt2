; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37388 () Bool)

(assert start!37388)

(declare-fun b_free!8507 () Bool)

(declare-fun b_next!8507 () Bool)

(assert (=> start!37388 (= b_free!8507 (not b_next!8507))))

(declare-fun tp!30237 () Bool)

(declare-fun b_and!15767 () Bool)

(assert (=> start!37388 (= tp!30237 b_and!15767)))

(declare-fun b!379665 () Bool)

(declare-fun e!230972 () Bool)

(declare-fun tp_is_empty!9155 () Bool)

(assert (=> b!379665 (= e!230972 tp_is_empty!9155)))

(declare-fun b!379666 () Bool)

(declare-fun res!215439 () Bool)

(declare-fun e!230975 () Bool)

(assert (=> b!379666 (=> (not res!215439) (not e!230975))))

(declare-datatypes ((array!22207 0))(
  ( (array!22208 (arr!10569 (Array (_ BitVec 32) (_ BitVec 64))) (size!10921 (_ BitVec 32))) )
))
(declare-fun lt!177521 () array!22207)

(declare-datatypes ((List!6026 0))(
  ( (Nil!6023) (Cons!6022 (h!6878 (_ BitVec 64)) (t!11184 List!6026)) )
))
(declare-fun arrayNoDuplicates!0 (array!22207 (_ BitVec 32) List!6026) Bool)

(assert (=> b!379666 (= res!215439 (arrayNoDuplicates!0 lt!177521 #b00000000000000000000000000000000 Nil!6023))))

(declare-fun mapNonEmpty!15297 () Bool)

(declare-fun mapRes!15297 () Bool)

(declare-fun tp!30236 () Bool)

(assert (=> mapNonEmpty!15297 (= mapRes!15297 (and tp!30236 e!230972))))

(declare-datatypes ((V!13311 0))(
  ( (V!13312 (val!4622 Int)) )
))
(declare-datatypes ((ValueCell!4234 0))(
  ( (ValueCellFull!4234 (v!6815 V!13311)) (EmptyCell!4234) )
))
(declare-fun mapValue!15297 () ValueCell!4234)

(declare-datatypes ((array!22209 0))(
  ( (array!22210 (arr!10570 (Array (_ BitVec 32) ValueCell!4234)) (size!10922 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22209)

(declare-fun mapRest!15297 () (Array (_ BitVec 32) ValueCell!4234))

(declare-fun mapKey!15297 () (_ BitVec 32))

(assert (=> mapNonEmpty!15297 (= (arr!10570 _values!506) (store mapRest!15297 mapKey!15297 mapValue!15297))))

(declare-fun b!379668 () Bool)

(declare-fun res!215450 () Bool)

(declare-fun e!230978 () Bool)

(assert (=> b!379668 (=> (not res!215450) (not e!230978))))

(declare-fun _keys!658 () array!22207)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!379668 (= res!215450 (or (= (select (arr!10569 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10569 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!379669 () Bool)

(declare-fun e!230974 () Bool)

(assert (=> b!379669 (= e!230975 (not e!230974))))

(declare-fun res!215443 () Bool)

(assert (=> b!379669 (=> res!215443 e!230974)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!379669 (= res!215443 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6154 0))(
  ( (tuple2!6155 (_1!3087 (_ BitVec 64)) (_2!3087 V!13311)) )
))
(declare-datatypes ((List!6027 0))(
  ( (Nil!6024) (Cons!6023 (h!6879 tuple2!6154) (t!11185 List!6027)) )
))
(declare-datatypes ((ListLongMap!5081 0))(
  ( (ListLongMap!5082 (toList!2556 List!6027)) )
))
(declare-fun lt!177519 () ListLongMap!5081)

(declare-fun zeroValue!472 () V!13311)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13311)

(declare-fun getCurrentListMap!1981 (array!22207 array!22209 (_ BitVec 32) (_ BitVec 32) V!13311 V!13311 (_ BitVec 32) Int) ListLongMap!5081)

(assert (=> b!379669 (= lt!177519 (getCurrentListMap!1981 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177511 () ListLongMap!5081)

(declare-fun lt!177518 () array!22209)

(assert (=> b!379669 (= lt!177511 (getCurrentListMap!1981 lt!177521 lt!177518 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177523 () ListLongMap!5081)

(declare-fun lt!177515 () ListLongMap!5081)

(assert (=> b!379669 (and (= lt!177523 lt!177515) (= lt!177515 lt!177523))))

(declare-fun lt!177512 () ListLongMap!5081)

(declare-fun lt!177522 () tuple2!6154)

(declare-fun +!897 (ListLongMap!5081 tuple2!6154) ListLongMap!5081)

(assert (=> b!379669 (= lt!177515 (+!897 lt!177512 lt!177522))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun v!373 () V!13311)

(assert (=> b!379669 (= lt!177522 (tuple2!6155 k!778 v!373))))

(declare-datatypes ((Unit!11689 0))(
  ( (Unit!11690) )
))
(declare-fun lt!177513 () Unit!11689)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!132 (array!22207 array!22209 (_ BitVec 32) (_ BitVec 32) V!13311 V!13311 (_ BitVec 32) (_ BitVec 64) V!13311 (_ BitVec 32) Int) Unit!11689)

(assert (=> b!379669 (= lt!177513 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!132 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!799 (array!22207 array!22209 (_ BitVec 32) (_ BitVec 32) V!13311 V!13311 (_ BitVec 32) Int) ListLongMap!5081)

(assert (=> b!379669 (= lt!177523 (getCurrentListMapNoExtraKeys!799 lt!177521 lt!177518 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!379669 (= lt!177518 (array!22210 (store (arr!10570 _values!506) i!548 (ValueCellFull!4234 v!373)) (size!10922 _values!506)))))

(assert (=> b!379669 (= lt!177512 (getCurrentListMapNoExtraKeys!799 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!379670 () Bool)

(declare-fun res!215447 () Bool)

(assert (=> b!379670 (=> (not res!215447) (not e!230978))))

(declare-fun arrayContainsKey!0 (array!22207 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!379670 (= res!215447 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!379671 () Bool)

(declare-fun e!230973 () Bool)

(assert (=> b!379671 (= e!230973 true)))

(declare-fun lt!177520 () ListLongMap!5081)

(declare-fun lt!177517 () ListLongMap!5081)

(assert (=> b!379671 (= lt!177520 (+!897 lt!177517 lt!177522))))

(declare-fun lt!177514 () Unit!11689)

(declare-fun addCommutativeForDiffKeys!309 (ListLongMap!5081 (_ BitVec 64) V!13311 (_ BitVec 64) V!13311) Unit!11689)

(assert (=> b!379671 (= lt!177514 (addCommutativeForDiffKeys!309 lt!177512 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!379667 () Bool)

(assert (=> b!379667 (= e!230978 e!230975)))

(declare-fun res!215441 () Bool)

(assert (=> b!379667 (=> (not res!215441) (not e!230975))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22207 (_ BitVec 32)) Bool)

(assert (=> b!379667 (= res!215441 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!177521 mask!970))))

(assert (=> b!379667 (= lt!177521 (array!22208 (store (arr!10569 _keys!658) i!548 k!778) (size!10921 _keys!658)))))

(declare-fun res!215444 () Bool)

(assert (=> start!37388 (=> (not res!215444) (not e!230978))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37388 (= res!215444 (validMask!0 mask!970))))

(assert (=> start!37388 e!230978))

(declare-fun e!230979 () Bool)

(declare-fun array_inv!7774 (array!22209) Bool)

(assert (=> start!37388 (and (array_inv!7774 _values!506) e!230979)))

(assert (=> start!37388 tp!30237))

(assert (=> start!37388 true))

(assert (=> start!37388 tp_is_empty!9155))

(declare-fun array_inv!7775 (array!22207) Bool)

(assert (=> start!37388 (array_inv!7775 _keys!658)))

(declare-fun b!379672 () Bool)

(declare-fun res!215446 () Bool)

(assert (=> b!379672 (=> (not res!215446) (not e!230978))))

(assert (=> b!379672 (= res!215446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!15297 () Bool)

(assert (=> mapIsEmpty!15297 mapRes!15297))

(declare-fun b!379673 () Bool)

(declare-fun e!230976 () Bool)

(assert (=> b!379673 (= e!230979 (and e!230976 mapRes!15297))))

(declare-fun condMapEmpty!15297 () Bool)

(declare-fun mapDefault!15297 () ValueCell!4234)

