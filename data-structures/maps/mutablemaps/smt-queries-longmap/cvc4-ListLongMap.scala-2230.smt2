; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36854 () Bool)

(assert start!36854)

(declare-fun b_free!7973 () Bool)

(declare-fun b_next!7973 () Bool)

(assert (=> start!36854 (= b_free!7973 (not b_next!7973))))

(declare-fun tp!28635 () Bool)

(declare-fun b_and!15233 () Bool)

(assert (=> start!36854 (= tp!28635 b_and!15233)))

(declare-fun b!368318 () Bool)

(declare-fun res!206504 () Bool)

(declare-fun e!225264 () Bool)

(assert (=> b!368318 (=> (not res!206504) (not e!225264))))

(declare-datatypes ((array!21167 0))(
  ( (array!21168 (arr!10049 (Array (_ BitVec 32) (_ BitVec 64))) (size!10401 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21167)

(declare-datatypes ((List!5623 0))(
  ( (Nil!5620) (Cons!5619 (h!6475 (_ BitVec 64)) (t!10781 List!5623)) )
))
(declare-fun arrayNoDuplicates!0 (array!21167 (_ BitVec 32) List!5623) Bool)

(assert (=> b!368318 (= res!206504 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5620))))

(declare-fun b!368319 () Bool)

(declare-fun res!206499 () Bool)

(assert (=> b!368319 (=> (not res!206499) (not e!225264))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12599 0))(
  ( (V!12600 (val!4355 Int)) )
))
(declare-datatypes ((ValueCell!3967 0))(
  ( (ValueCellFull!3967 (v!6548 V!12599)) (EmptyCell!3967) )
))
(declare-datatypes ((array!21169 0))(
  ( (array!21170 (arr!10050 (Array (_ BitVec 32) ValueCell!3967)) (size!10402 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21169)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!368319 (= res!206499 (and (= (size!10402 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10401 _keys!658) (size!10402 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!368320 () Bool)

(declare-fun res!206501 () Bool)

(assert (=> b!368320 (=> (not res!206501) (not e!225264))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21167 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!368320 (= res!206501 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!368321 () Bool)

(declare-fun e!225259 () Bool)

(declare-fun tp_is_empty!8621 () Bool)

(assert (=> b!368321 (= e!225259 tp_is_empty!8621)))

(declare-fun b!368322 () Bool)

(declare-fun res!206496 () Bool)

(declare-fun e!225261 () Bool)

(assert (=> b!368322 (=> (not res!206496) (not e!225261))))

(declare-fun lt!169504 () array!21167)

(assert (=> b!368322 (= res!206496 (arrayNoDuplicates!0 lt!169504 #b00000000000000000000000000000000 Nil!5620))))

(declare-fun b!368323 () Bool)

(assert (=> b!368323 (= e!225261 false)))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5762 0))(
  ( (tuple2!5763 (_1!2891 (_ BitVec 64)) (_2!2891 V!12599)) )
))
(declare-datatypes ((List!5624 0))(
  ( (Nil!5621) (Cons!5620 (h!6476 tuple2!5762) (t!10782 List!5624)) )
))
(declare-datatypes ((ListLongMap!4689 0))(
  ( (ListLongMap!4690 (toList!2360 List!5624)) )
))
(declare-fun lt!169503 () ListLongMap!4689)

(declare-fun zeroValue!472 () V!12599)

(declare-fun minValue!472 () V!12599)

(declare-fun getCurrentListMapNoExtraKeys!628 (array!21167 array!21169 (_ BitVec 32) (_ BitVec 32) V!12599 V!12599 (_ BitVec 32) Int) ListLongMap!4689)

(assert (=> b!368323 (= lt!169503 (getCurrentListMapNoExtraKeys!628 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!368324 () Bool)

(declare-fun e!225263 () Bool)

(declare-fun e!225262 () Bool)

(declare-fun mapRes!14496 () Bool)

(assert (=> b!368324 (= e!225263 (and e!225262 mapRes!14496))))

(declare-fun condMapEmpty!14496 () Bool)

(declare-fun mapDefault!14496 () ValueCell!3967)

