; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37582 () Bool)

(assert start!37582)

(declare-fun b_free!8701 () Bool)

(declare-fun b_next!8701 () Bool)

(assert (=> start!37582 (= b_free!8701 (not b_next!8701))))

(declare-fun tp!30819 () Bool)

(declare-fun b_and!15961 () Bool)

(assert (=> start!37582 (= tp!30819 b_and!15961)))

(declare-fun b!383803 () Bool)

(declare-fun res!218704 () Bool)

(declare-fun e!233077 () Bool)

(assert (=> b!383803 (=> (not res!218704) (not e!233077))))

(declare-datatypes ((array!22589 0))(
  ( (array!22590 (arr!10760 (Array (_ BitVec 32) (_ BitVec 64))) (size!11112 (_ BitVec 32))) )
))
(declare-fun lt!180525 () array!22589)

(declare-datatypes ((List!6174 0))(
  ( (Nil!6171) (Cons!6170 (h!7026 (_ BitVec 64)) (t!11332 List!6174)) )
))
(declare-fun arrayNoDuplicates!0 (array!22589 (_ BitVec 32) List!6174) Bool)

(assert (=> b!383803 (= res!218704 (arrayNoDuplicates!0 lt!180525 #b00000000000000000000000000000000 Nil!6171))))

(declare-fun b!383804 () Bool)

(declare-fun e!233076 () Bool)

(assert (=> b!383804 (= e!233077 (not e!233076))))

(declare-fun res!218707 () Bool)

(assert (=> b!383804 (=> res!218707 e!233076)))

(declare-fun lt!180526 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!383804 (= res!218707 (or (and (not lt!180526) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!180526) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!180526)))))

(assert (=> b!383804 (= lt!180526 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((V!13571 0))(
  ( (V!13572 (val!4719 Int)) )
))
(declare-datatypes ((ValueCell!4331 0))(
  ( (ValueCellFull!4331 (v!6912 V!13571)) (EmptyCell!4331) )
))
(declare-datatypes ((array!22591 0))(
  ( (array!22592 (arr!10761 (Array (_ BitVec 32) ValueCell!4331)) (size!11113 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22591)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6306 0))(
  ( (tuple2!6307 (_1!3163 (_ BitVec 64)) (_2!3163 V!13571)) )
))
(declare-datatypes ((List!6175 0))(
  ( (Nil!6172) (Cons!6171 (h!7027 tuple2!6306) (t!11333 List!6175)) )
))
(declare-datatypes ((ListLongMap!5233 0))(
  ( (ListLongMap!5234 (toList!2632 List!6175)) )
))
(declare-fun lt!180522 () ListLongMap!5233)

(declare-fun zeroValue!472 () V!13571)

(declare-fun _keys!658 () array!22589)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13571)

(declare-fun getCurrentListMap!2049 (array!22589 array!22591 (_ BitVec 32) (_ BitVec 32) V!13571 V!13571 (_ BitVec 32) Int) ListLongMap!5233)

(assert (=> b!383804 (= lt!180522 (getCurrentListMap!2049 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180518 () array!22591)

(declare-fun lt!180521 () ListLongMap!5233)

(assert (=> b!383804 (= lt!180521 (getCurrentListMap!2049 lt!180525 lt!180518 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180517 () ListLongMap!5233)

(declare-fun lt!180520 () ListLongMap!5233)

(assert (=> b!383804 (and (= lt!180517 lt!180520) (= lt!180520 lt!180517))))

(declare-fun lt!180516 () ListLongMap!5233)

(declare-fun lt!180524 () tuple2!6306)

(declare-fun +!968 (ListLongMap!5233 tuple2!6306) ListLongMap!5233)

(assert (=> b!383804 (= lt!180520 (+!968 lt!180516 lt!180524))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun v!373 () V!13571)

(assert (=> b!383804 (= lt!180524 (tuple2!6307 k!778 v!373))))

(declare-datatypes ((Unit!11827 0))(
  ( (Unit!11828) )
))
(declare-fun lt!180519 () Unit!11827)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!200 (array!22589 array!22591 (_ BitVec 32) (_ BitVec 32) V!13571 V!13571 (_ BitVec 32) (_ BitVec 64) V!13571 (_ BitVec 32) Int) Unit!11827)

(assert (=> b!383804 (= lt!180519 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!200 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!867 (array!22589 array!22591 (_ BitVec 32) (_ BitVec 32) V!13571 V!13571 (_ BitVec 32) Int) ListLongMap!5233)

(assert (=> b!383804 (= lt!180517 (getCurrentListMapNoExtraKeys!867 lt!180525 lt!180518 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!383804 (= lt!180518 (array!22592 (store (arr!10761 _values!506) i!548 (ValueCellFull!4331 v!373)) (size!11113 _values!506)))))

(assert (=> b!383804 (= lt!180516 (getCurrentListMapNoExtraKeys!867 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!383805 () Bool)

(declare-fun res!218713 () Bool)

(declare-fun e!233075 () Bool)

(assert (=> b!383805 (=> (not res!218713) (not e!233075))))

(assert (=> b!383805 (= res!218713 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6171))))

(declare-fun b!383807 () Bool)

(declare-fun e!233079 () Bool)

(declare-fun tp_is_empty!9349 () Bool)

(assert (=> b!383807 (= e!233079 tp_is_empty!9349)))

(declare-fun b!383808 () Bool)

(assert (=> b!383808 (= e!233075 e!233077)))

(declare-fun res!218710 () Bool)

(assert (=> b!383808 (=> (not res!218710) (not e!233077))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22589 (_ BitVec 32)) Bool)

(assert (=> b!383808 (= res!218710 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!180525 mask!970))))

(assert (=> b!383808 (= lt!180525 (array!22590 (store (arr!10760 _keys!658) i!548 k!778) (size!11112 _keys!658)))))

(declare-fun b!383809 () Bool)

(declare-fun res!218705 () Bool)

(assert (=> b!383809 (=> (not res!218705) (not e!233075))))

(assert (=> b!383809 (= res!218705 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11112 _keys!658))))))

(declare-fun b!383810 () Bool)

(declare-fun res!218706 () Bool)

(assert (=> b!383810 (=> (not res!218706) (not e!233075))))

(declare-fun arrayContainsKey!0 (array!22589 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!383810 (= res!218706 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!383811 () Bool)

(declare-fun res!218708 () Bool)

(assert (=> b!383811 (=> (not res!218708) (not e!233075))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!383811 (= res!218708 (validKeyInArray!0 k!778))))

(declare-fun b!383812 () Bool)

(assert (=> b!383812 (= e!233076 true)))

(declare-fun lt!180523 () ListLongMap!5233)

(assert (=> b!383812 (= lt!180523 (+!968 lt!180522 lt!180524))))

(assert (=> b!383812 (= lt!180521 lt!180517)))

(declare-fun mapNonEmpty!15588 () Bool)

(declare-fun mapRes!15588 () Bool)

(declare-fun tp!30818 () Bool)

(assert (=> mapNonEmpty!15588 (= mapRes!15588 (and tp!30818 e!233079))))

(declare-fun mapKey!15588 () (_ BitVec 32))

(declare-fun mapRest!15588 () (Array (_ BitVec 32) ValueCell!4331))

(declare-fun mapValue!15588 () ValueCell!4331)

(assert (=> mapNonEmpty!15588 (= (arr!10761 _values!506) (store mapRest!15588 mapKey!15588 mapValue!15588))))

(declare-fun mapIsEmpty!15588 () Bool)

(assert (=> mapIsEmpty!15588 mapRes!15588))

(declare-fun b!383813 () Bool)

(declare-fun e!233078 () Bool)

(assert (=> b!383813 (= e!233078 tp_is_empty!9349)))

(declare-fun b!383814 () Bool)

(declare-fun res!218714 () Bool)

(assert (=> b!383814 (=> (not res!218714) (not e!233075))))

(assert (=> b!383814 (= res!218714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!383815 () Bool)

(declare-fun res!218709 () Bool)

(assert (=> b!383815 (=> (not res!218709) (not e!233075))))

(assert (=> b!383815 (= res!218709 (and (= (size!11113 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11112 _keys!658) (size!11113 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!383816 () Bool)

(declare-fun res!218711 () Bool)

(assert (=> b!383816 (=> (not res!218711) (not e!233075))))

(assert (=> b!383816 (= res!218711 (or (= (select (arr!10760 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10760 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!218712 () Bool)

(assert (=> start!37582 (=> (not res!218712) (not e!233075))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37582 (= res!218712 (validMask!0 mask!970))))

(assert (=> start!37582 e!233075))

(declare-fun e!233074 () Bool)

(declare-fun array_inv!7904 (array!22591) Bool)

(assert (=> start!37582 (and (array_inv!7904 _values!506) e!233074)))

(assert (=> start!37582 tp!30819))

(assert (=> start!37582 true))

(assert (=> start!37582 tp_is_empty!9349))

(declare-fun array_inv!7905 (array!22589) Bool)

(assert (=> start!37582 (array_inv!7905 _keys!658)))

(declare-fun b!383806 () Bool)

(assert (=> b!383806 (= e!233074 (and e!233078 mapRes!15588))))

(declare-fun condMapEmpty!15588 () Bool)

(declare-fun mapDefault!15588 () ValueCell!4331)

