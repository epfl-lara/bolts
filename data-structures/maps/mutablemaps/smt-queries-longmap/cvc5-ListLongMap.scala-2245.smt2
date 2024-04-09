; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36940 () Bool)

(assert start!36940)

(declare-fun b_free!8059 () Bool)

(declare-fun b_next!8059 () Bool)

(assert (=> start!36940 (= b_free!8059 (not b_next!8059))))

(declare-fun tp!28892 () Bool)

(declare-fun b_and!15319 () Bool)

(assert (=> start!36940 (= tp!28892 b_and!15319)))

(declare-fun res!207788 () Bool)

(declare-fun e!226033 () Bool)

(assert (=> start!36940 (=> (not res!207788) (not e!226033))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36940 (= res!207788 (validMask!0 mask!970))))

(assert (=> start!36940 e!226033))

(declare-datatypes ((V!12715 0))(
  ( (V!12716 (val!4398 Int)) )
))
(declare-datatypes ((ValueCell!4010 0))(
  ( (ValueCellFull!4010 (v!6591 V!12715)) (EmptyCell!4010) )
))
(declare-datatypes ((array!21335 0))(
  ( (array!21336 (arr!10133 (Array (_ BitVec 32) ValueCell!4010)) (size!10485 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21335)

(declare-fun e!226035 () Bool)

(declare-fun array_inv!7482 (array!21335) Bool)

(assert (=> start!36940 (and (array_inv!7482 _values!506) e!226035)))

(assert (=> start!36940 tp!28892))

(assert (=> start!36940 true))

(declare-fun tp_is_empty!8707 () Bool)

(assert (=> start!36940 tp_is_empty!8707))

(declare-datatypes ((array!21337 0))(
  ( (array!21338 (arr!10134 (Array (_ BitVec 32) (_ BitVec 64))) (size!10486 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21337)

(declare-fun array_inv!7483 (array!21337) Bool)

(assert (=> start!36940 (array_inv!7483 _keys!658)))

(declare-fun b!369995 () Bool)

(declare-fun e!226038 () Bool)

(assert (=> b!369995 (= e!226038 tp_is_empty!8707)))

(declare-fun mapNonEmpty!14625 () Bool)

(declare-fun mapRes!14625 () Bool)

(declare-fun tp!28893 () Bool)

(declare-fun e!226034 () Bool)

(assert (=> mapNonEmpty!14625 (= mapRes!14625 (and tp!28893 e!226034))))

(declare-fun mapKey!14625 () (_ BitVec 32))

(declare-fun mapRest!14625 () (Array (_ BitVec 32) ValueCell!4010))

(declare-fun mapValue!14625 () ValueCell!4010)

(assert (=> mapNonEmpty!14625 (= (arr!10133 _values!506) (store mapRest!14625 mapKey!14625 mapValue!14625))))

(declare-fun b!369996 () Bool)

(declare-fun res!207790 () Bool)

(assert (=> b!369996 (=> (not res!207790) (not e!226033))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!369996 (= res!207790 (validKeyInArray!0 k!778))))

(declare-fun b!369997 () Bool)

(declare-fun res!207787 () Bool)

(assert (=> b!369997 (=> (not res!207787) (not e!226033))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!369997 (= res!207787 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10486 _keys!658))))))

(declare-fun b!369998 () Bool)

(declare-fun res!207793 () Bool)

(assert (=> b!369998 (=> (not res!207793) (not e!226033))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21337 (_ BitVec 32)) Bool)

(assert (=> b!369998 (= res!207793 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!369999 () Bool)

(declare-fun res!207789 () Bool)

(assert (=> b!369999 (=> (not res!207789) (not e!226033))))

(declare-fun arrayContainsKey!0 (array!21337 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!369999 (= res!207789 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!370000 () Bool)

(declare-fun res!207794 () Bool)

(declare-fun e!226037 () Bool)

(assert (=> b!370000 (=> (not res!207794) (not e!226037))))

(declare-fun lt!169871 () array!21337)

(declare-datatypes ((List!5688 0))(
  ( (Nil!5685) (Cons!5684 (h!6540 (_ BitVec 64)) (t!10846 List!5688)) )
))
(declare-fun arrayNoDuplicates!0 (array!21337 (_ BitVec 32) List!5688) Bool)

(assert (=> b!370000 (= res!207794 (arrayNoDuplicates!0 lt!169871 #b00000000000000000000000000000000 Nil!5685))))

(declare-fun b!370001 () Bool)

(assert (=> b!370001 (= e!226033 e!226037)))

(declare-fun res!207792 () Bool)

(assert (=> b!370001 (=> (not res!207792) (not e!226037))))

(assert (=> b!370001 (= res!207792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169871 mask!970))))

(assert (=> b!370001 (= lt!169871 (array!21338 (store (arr!10134 _keys!658) i!548 k!778) (size!10486 _keys!658)))))

(declare-fun b!370002 () Bool)

(declare-fun res!207786 () Bool)

(assert (=> b!370002 (=> (not res!207786) (not e!226033))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!370002 (= res!207786 (and (= (size!10485 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10486 _keys!658) (size!10485 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!370003 () Bool)

(assert (=> b!370003 (= e!226037 false)))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12715)

(declare-fun v!373 () V!12715)

(declare-datatypes ((tuple2!5824 0))(
  ( (tuple2!5825 (_1!2922 (_ BitVec 64)) (_2!2922 V!12715)) )
))
(declare-datatypes ((List!5689 0))(
  ( (Nil!5686) (Cons!5685 (h!6541 tuple2!5824) (t!10847 List!5689)) )
))
(declare-datatypes ((ListLongMap!4751 0))(
  ( (ListLongMap!4752 (toList!2391 List!5689)) )
))
(declare-fun lt!169872 () ListLongMap!4751)

(declare-fun minValue!472 () V!12715)

(declare-fun getCurrentListMapNoExtraKeys!659 (array!21337 array!21335 (_ BitVec 32) (_ BitVec 32) V!12715 V!12715 (_ BitVec 32) Int) ListLongMap!4751)

(assert (=> b!370003 (= lt!169872 (getCurrentListMapNoExtraKeys!659 lt!169871 (array!21336 (store (arr!10133 _values!506) i!548 (ValueCellFull!4010 v!373)) (size!10485 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169873 () ListLongMap!4751)

(assert (=> b!370003 (= lt!169873 (getCurrentListMapNoExtraKeys!659 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!370004 () Bool)

(declare-fun res!207791 () Bool)

(assert (=> b!370004 (=> (not res!207791) (not e!226033))))

(assert (=> b!370004 (= res!207791 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5685))))

(declare-fun b!370005 () Bool)

(declare-fun res!207785 () Bool)

(assert (=> b!370005 (=> (not res!207785) (not e!226033))))

(assert (=> b!370005 (= res!207785 (or (= (select (arr!10134 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10134 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!14625 () Bool)

(assert (=> mapIsEmpty!14625 mapRes!14625))

(declare-fun b!370006 () Bool)

(assert (=> b!370006 (= e!226035 (and e!226038 mapRes!14625))))

(declare-fun condMapEmpty!14625 () Bool)

(declare-fun mapDefault!14625 () ValueCell!4010)

