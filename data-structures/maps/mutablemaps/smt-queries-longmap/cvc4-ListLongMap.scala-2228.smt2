; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36842 () Bool)

(assert start!36842)

(declare-fun b_free!7961 () Bool)

(declare-fun b_next!7961 () Bool)

(assert (=> start!36842 (= b_free!7961 (not b_next!7961))))

(declare-fun tp!28599 () Bool)

(declare-fun b_and!15221 () Bool)

(assert (=> start!36842 (= tp!28599 b_and!15221)))

(declare-fun b!368084 () Bool)

(declare-fun res!206321 () Bool)

(declare-fun e!225156 () Bool)

(assert (=> b!368084 (=> (not res!206321) (not e!225156))))

(declare-datatypes ((array!21143 0))(
  ( (array!21144 (arr!10037 (Array (_ BitVec 32) (_ BitVec 64))) (size!10389 (_ BitVec 32))) )
))
(declare-fun lt!169468 () array!21143)

(declare-datatypes ((List!5615 0))(
  ( (Nil!5612) (Cons!5611 (h!6467 (_ BitVec 64)) (t!10773 List!5615)) )
))
(declare-fun arrayNoDuplicates!0 (array!21143 (_ BitVec 32) List!5615) Bool)

(assert (=> b!368084 (= res!206321 (arrayNoDuplicates!0 lt!169468 #b00000000000000000000000000000000 Nil!5612))))

(declare-fun b!368085 () Bool)

(declare-fun e!225151 () Bool)

(declare-fun tp_is_empty!8609 () Bool)

(assert (=> b!368085 (= e!225151 tp_is_empty!8609)))

(declare-fun res!206316 () Bool)

(declare-fun e!225154 () Bool)

(assert (=> start!36842 (=> (not res!206316) (not e!225154))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36842 (= res!206316 (validMask!0 mask!970))))

(assert (=> start!36842 e!225154))

(assert (=> start!36842 true))

(declare-datatypes ((V!12583 0))(
  ( (V!12584 (val!4349 Int)) )
))
(declare-datatypes ((ValueCell!3961 0))(
  ( (ValueCellFull!3961 (v!6542 V!12583)) (EmptyCell!3961) )
))
(declare-datatypes ((array!21145 0))(
  ( (array!21146 (arr!10038 (Array (_ BitVec 32) ValueCell!3961)) (size!10390 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21145)

(declare-fun e!225153 () Bool)

(declare-fun array_inv!7416 (array!21145) Bool)

(assert (=> start!36842 (and (array_inv!7416 _values!506) e!225153)))

(assert (=> start!36842 tp!28599))

(assert (=> start!36842 tp_is_empty!8609))

(declare-fun _keys!658 () array!21143)

(declare-fun array_inv!7417 (array!21143) Bool)

(assert (=> start!36842 (array_inv!7417 _keys!658)))

(declare-fun mapIsEmpty!14478 () Bool)

(declare-fun mapRes!14478 () Bool)

(assert (=> mapIsEmpty!14478 mapRes!14478))

(declare-fun b!368086 () Bool)

(declare-fun res!206317 () Bool)

(assert (=> b!368086 (=> (not res!206317) (not e!225154))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!368086 (= res!206317 (or (= (select (arr!10037 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10037 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!14478 () Bool)

(declare-fun tp!28598 () Bool)

(declare-fun e!225155 () Bool)

(assert (=> mapNonEmpty!14478 (= mapRes!14478 (and tp!28598 e!225155))))

(declare-fun mapValue!14478 () ValueCell!3961)

(declare-fun mapKey!14478 () (_ BitVec 32))

(declare-fun mapRest!14478 () (Array (_ BitVec 32) ValueCell!3961))

(assert (=> mapNonEmpty!14478 (= (arr!10038 _values!506) (store mapRest!14478 mapKey!14478 mapValue!14478))))

(declare-fun b!368087 () Bool)

(declare-fun res!206322 () Bool)

(assert (=> b!368087 (=> (not res!206322) (not e!225154))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21143 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!368087 (= res!206322 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!368088 () Bool)

(declare-fun res!206324 () Bool)

(assert (=> b!368088 (=> (not res!206324) (not e!225154))))

(assert (=> b!368088 (= res!206324 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10389 _keys!658))))))

(declare-fun b!368089 () Bool)

(assert (=> b!368089 (= e!225156 false)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5754 0))(
  ( (tuple2!5755 (_1!2887 (_ BitVec 64)) (_2!2887 V!12583)) )
))
(declare-datatypes ((List!5616 0))(
  ( (Nil!5613) (Cons!5612 (h!6468 tuple2!5754) (t!10774 List!5616)) )
))
(declare-datatypes ((ListLongMap!4681 0))(
  ( (ListLongMap!4682 (toList!2356 List!5616)) )
))
(declare-fun lt!169467 () ListLongMap!4681)

(declare-fun zeroValue!472 () V!12583)

(declare-fun minValue!472 () V!12583)

(declare-fun getCurrentListMapNoExtraKeys!624 (array!21143 array!21145 (_ BitVec 32) (_ BitVec 32) V!12583 V!12583 (_ BitVec 32) Int) ListLongMap!4681)

(assert (=> b!368089 (= lt!169467 (getCurrentListMapNoExtraKeys!624 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!368090 () Bool)

(declare-fun res!206318 () Bool)

(assert (=> b!368090 (=> (not res!206318) (not e!225154))))

(assert (=> b!368090 (= res!206318 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5612))))

(declare-fun b!368091 () Bool)

(declare-fun res!206320 () Bool)

(assert (=> b!368091 (=> (not res!206320) (not e!225154))))

(assert (=> b!368091 (= res!206320 (and (= (size!10390 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10389 _keys!658) (size!10390 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!368092 () Bool)

(assert (=> b!368092 (= e!225155 tp_is_empty!8609)))

(declare-fun b!368093 () Bool)

(declare-fun res!206323 () Bool)

(assert (=> b!368093 (=> (not res!206323) (not e!225154))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!368093 (= res!206323 (validKeyInArray!0 k!778))))

(declare-fun b!368094 () Bool)

(assert (=> b!368094 (= e!225153 (and e!225151 mapRes!14478))))

(declare-fun condMapEmpty!14478 () Bool)

(declare-fun mapDefault!14478 () ValueCell!3961)

