; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36880 () Bool)

(assert start!36880)

(declare-fun b_free!7999 () Bool)

(declare-fun b_next!7999 () Bool)

(assert (=> start!36880 (= b_free!7999 (not b_next!7999))))

(declare-fun tp!28713 () Bool)

(declare-fun b_and!15259 () Bool)

(assert (=> start!36880 (= tp!28713 b_and!15259)))

(declare-fun b!368825 () Bool)

(declare-fun res!206886 () Bool)

(declare-fun e!225493 () Bool)

(assert (=> b!368825 (=> (not res!206886) (not e!225493))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!368825 (= res!206886 (validKeyInArray!0 k!778))))

(declare-fun mapNonEmpty!14535 () Bool)

(declare-fun mapRes!14535 () Bool)

(declare-fun tp!28712 () Bool)

(declare-fun e!225496 () Bool)

(assert (=> mapNonEmpty!14535 (= mapRes!14535 (and tp!28712 e!225496))))

(declare-datatypes ((V!12635 0))(
  ( (V!12636 (val!4368 Int)) )
))
(declare-datatypes ((ValueCell!3980 0))(
  ( (ValueCellFull!3980 (v!6561 V!12635)) (EmptyCell!3980) )
))
(declare-fun mapRest!14535 () (Array (_ BitVec 32) ValueCell!3980))

(declare-datatypes ((array!21217 0))(
  ( (array!21218 (arr!10074 (Array (_ BitVec 32) ValueCell!3980)) (size!10426 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21217)

(declare-fun mapValue!14535 () ValueCell!3980)

(declare-fun mapKey!14535 () (_ BitVec 32))

(assert (=> mapNonEmpty!14535 (= (arr!10074 _values!506) (store mapRest!14535 mapKey!14535 mapValue!14535))))

(declare-fun mapIsEmpty!14535 () Bool)

(assert (=> mapIsEmpty!14535 mapRes!14535))

(declare-fun b!368826 () Bool)

(declare-fun e!225494 () Bool)

(assert (=> b!368826 (= e!225493 e!225494)))

(declare-fun res!206887 () Bool)

(assert (=> b!368826 (=> (not res!206887) (not e!225494))))

(declare-datatypes ((array!21219 0))(
  ( (array!21220 (arr!10075 (Array (_ BitVec 32) (_ BitVec 64))) (size!10427 (_ BitVec 32))) )
))
(declare-fun lt!169603 () array!21219)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21219 (_ BitVec 32)) Bool)

(assert (=> b!368826 (= res!206887 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169603 mask!970))))

(declare-fun _keys!658 () array!21219)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!368826 (= lt!169603 (array!21220 (store (arr!10075 _keys!658) i!548 k!778) (size!10427 _keys!658)))))

(declare-fun b!368827 () Bool)

(declare-fun res!206894 () Bool)

(assert (=> b!368827 (=> (not res!206894) (not e!225493))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!368827 (= res!206894 (and (= (size!10426 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10427 _keys!658) (size!10426 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!206891 () Bool)

(assert (=> start!36880 (=> (not res!206891) (not e!225493))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36880 (= res!206891 (validMask!0 mask!970))))

(assert (=> start!36880 e!225493))

(declare-fun e!225495 () Bool)

(declare-fun array_inv!7442 (array!21217) Bool)

(assert (=> start!36880 (and (array_inv!7442 _values!506) e!225495)))

(assert (=> start!36880 tp!28713))

(assert (=> start!36880 true))

(declare-fun tp_is_empty!8647 () Bool)

(assert (=> start!36880 tp_is_empty!8647))

(declare-fun array_inv!7443 (array!21219) Bool)

(assert (=> start!36880 (array_inv!7443 _keys!658)))

(declare-fun b!368828 () Bool)

(declare-fun res!206888 () Bool)

(assert (=> b!368828 (=> (not res!206888) (not e!225493))))

(declare-fun arrayContainsKey!0 (array!21219 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!368828 (= res!206888 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!368829 () Bool)

(declare-fun e!225497 () Bool)

(assert (=> b!368829 (= e!225497 tp_is_empty!8647)))

(declare-fun b!368830 () Bool)

(assert (=> b!368830 (= e!225496 tp_is_empty!8647)))

(declare-fun b!368831 () Bool)

(declare-fun res!206889 () Bool)

(assert (=> b!368831 (=> (not res!206889) (not e!225493))))

(declare-datatypes ((List!5642 0))(
  ( (Nil!5639) (Cons!5638 (h!6494 (_ BitVec 64)) (t!10800 List!5642)) )
))
(declare-fun arrayNoDuplicates!0 (array!21219 (_ BitVec 32) List!5642) Bool)

(assert (=> b!368831 (= res!206889 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5639))))

(declare-fun b!368832 () Bool)

(assert (=> b!368832 (= e!225494 false)))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5782 0))(
  ( (tuple2!5783 (_1!2901 (_ BitVec 64)) (_2!2901 V!12635)) )
))
(declare-datatypes ((List!5643 0))(
  ( (Nil!5640) (Cons!5639 (h!6495 tuple2!5782) (t!10801 List!5643)) )
))
(declare-datatypes ((ListLongMap!4709 0))(
  ( (ListLongMap!4710 (toList!2370 List!5643)) )
))
(declare-fun lt!169602 () ListLongMap!4709)

(declare-fun zeroValue!472 () V!12635)

(declare-fun v!373 () V!12635)

(declare-fun minValue!472 () V!12635)

(declare-fun getCurrentListMapNoExtraKeys!638 (array!21219 array!21217 (_ BitVec 32) (_ BitVec 32) V!12635 V!12635 (_ BitVec 32) Int) ListLongMap!4709)

(assert (=> b!368832 (= lt!169602 (getCurrentListMapNoExtraKeys!638 lt!169603 (array!21218 (store (arr!10074 _values!506) i!548 (ValueCellFull!3980 v!373)) (size!10426 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169601 () ListLongMap!4709)

(assert (=> b!368832 (= lt!169601 (getCurrentListMapNoExtraKeys!638 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!368833 () Bool)

(assert (=> b!368833 (= e!225495 (and e!225497 mapRes!14535))))

(declare-fun condMapEmpty!14535 () Bool)

(declare-fun mapDefault!14535 () ValueCell!3980)

