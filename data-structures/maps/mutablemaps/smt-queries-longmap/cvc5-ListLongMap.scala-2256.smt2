; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37006 () Bool)

(assert start!37006)

(declare-fun b_free!8125 () Bool)

(declare-fun b_next!8125 () Bool)

(assert (=> start!37006 (= b_free!8125 (not b_next!8125))))

(declare-fun tp!29090 () Bool)

(declare-fun b_and!15385 () Bool)

(assert (=> start!37006 (= tp!29090 b_and!15385)))

(declare-fun b!371282 () Bool)

(declare-fun e!226630 () Bool)

(declare-fun tp_is_empty!8773 () Bool)

(assert (=> b!371282 (= e!226630 tp_is_empty!8773)))

(declare-fun mapNonEmpty!14724 () Bool)

(declare-fun mapRes!14724 () Bool)

(declare-fun tp!29091 () Bool)

(declare-fun e!226632 () Bool)

(assert (=> mapNonEmpty!14724 (= mapRes!14724 (and tp!29091 e!226632))))

(declare-datatypes ((V!12803 0))(
  ( (V!12804 (val!4431 Int)) )
))
(declare-datatypes ((ValueCell!4043 0))(
  ( (ValueCellFull!4043 (v!6624 V!12803)) (EmptyCell!4043) )
))
(declare-datatypes ((array!21459 0))(
  ( (array!21460 (arr!10195 (Array (_ BitVec 32) ValueCell!4043)) (size!10547 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21459)

(declare-fun mapValue!14724 () ValueCell!4043)

(declare-fun mapKey!14724 () (_ BitVec 32))

(declare-fun mapRest!14724 () (Array (_ BitVec 32) ValueCell!4043))

(assert (=> mapNonEmpty!14724 (= (arr!10195 _values!506) (store mapRest!14724 mapKey!14724 mapValue!14724))))

(declare-fun b!371283 () Bool)

(declare-fun e!226627 () Bool)

(assert (=> b!371283 (= e!226627 (not true))))

(declare-datatypes ((tuple2!5854 0))(
  ( (tuple2!5855 (_1!2937 (_ BitVec 64)) (_2!2937 V!12803)) )
))
(declare-datatypes ((List!5725 0))(
  ( (Nil!5722) (Cons!5721 (h!6577 tuple2!5854) (t!10883 List!5725)) )
))
(declare-datatypes ((ListLongMap!4781 0))(
  ( (ListLongMap!4782 (toList!2406 List!5725)) )
))
(declare-fun lt!170265 () ListLongMap!4781)

(declare-fun lt!170266 () ListLongMap!4781)

(assert (=> b!371283 (and (= lt!170265 lt!170266) (= lt!170266 lt!170265))))

(declare-fun v!373 () V!12803)

(declare-fun lt!170262 () ListLongMap!4781)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun +!747 (ListLongMap!4781 tuple2!5854) ListLongMap!4781)

(assert (=> b!371283 (= lt!170266 (+!747 lt!170262 (tuple2!5855 k!778 v!373)))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((Unit!11399 0))(
  ( (Unit!11400) )
))
(declare-fun lt!170264 () Unit!11399)

(declare-fun zeroValue!472 () V!12803)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((array!21461 0))(
  ( (array!21462 (arr!10196 (Array (_ BitVec 32) (_ BitVec 64))) (size!10548 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21461)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun minValue!472 () V!12803)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!7 (array!21461 array!21459 (_ BitVec 32) (_ BitVec 32) V!12803 V!12803 (_ BitVec 32) (_ BitVec 64) V!12803 (_ BitVec 32) Int) Unit!11399)

(assert (=> b!371283 (= lt!170264 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!7 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!170263 () array!21461)

(declare-fun getCurrentListMapNoExtraKeys!674 (array!21461 array!21459 (_ BitVec 32) (_ BitVec 32) V!12803 V!12803 (_ BitVec 32) Int) ListLongMap!4781)

(assert (=> b!371283 (= lt!170265 (getCurrentListMapNoExtraKeys!674 lt!170263 (array!21460 (store (arr!10195 _values!506) i!548 (ValueCellFull!4043 v!373)) (size!10547 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!371283 (= lt!170262 (getCurrentListMapNoExtraKeys!674 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun res!208778 () Bool)

(declare-fun e!226631 () Bool)

(assert (=> start!37006 (=> (not res!208778) (not e!226631))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37006 (= res!208778 (validMask!0 mask!970))))

(assert (=> start!37006 e!226631))

(declare-fun e!226628 () Bool)

(declare-fun array_inv!7528 (array!21459) Bool)

(assert (=> start!37006 (and (array_inv!7528 _values!506) e!226628)))

(assert (=> start!37006 tp!29090))

(assert (=> start!37006 true))

(assert (=> start!37006 tp_is_empty!8773))

(declare-fun array_inv!7529 (array!21461) Bool)

(assert (=> start!37006 (array_inv!7529 _keys!658)))

(declare-fun b!371284 () Bool)

(declare-fun res!208775 () Bool)

(assert (=> b!371284 (=> (not res!208775) (not e!226631))))

(assert (=> b!371284 (= res!208775 (or (= (select (arr!10196 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10196 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!371285 () Bool)

(declare-fun res!208780 () Bool)

(assert (=> b!371285 (=> (not res!208780) (not e!226631))))

(assert (=> b!371285 (= res!208780 (and (= (size!10547 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10548 _keys!658) (size!10547 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!371286 () Bool)

(declare-fun res!208781 () Bool)

(assert (=> b!371286 (=> (not res!208781) (not e!226627))))

(declare-datatypes ((List!5726 0))(
  ( (Nil!5723) (Cons!5722 (h!6578 (_ BitVec 64)) (t!10884 List!5726)) )
))
(declare-fun arrayNoDuplicates!0 (array!21461 (_ BitVec 32) List!5726) Bool)

(assert (=> b!371286 (= res!208781 (arrayNoDuplicates!0 lt!170263 #b00000000000000000000000000000000 Nil!5723))))

(declare-fun b!371287 () Bool)

(declare-fun res!208783 () Bool)

(assert (=> b!371287 (=> (not res!208783) (not e!226631))))

(declare-fun arrayContainsKey!0 (array!21461 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!371287 (= res!208783 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!371288 () Bool)

(assert (=> b!371288 (= e!226631 e!226627)))

(declare-fun res!208784 () Bool)

(assert (=> b!371288 (=> (not res!208784) (not e!226627))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21461 (_ BitVec 32)) Bool)

(assert (=> b!371288 (= res!208784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170263 mask!970))))

(assert (=> b!371288 (= lt!170263 (array!21462 (store (arr!10196 _keys!658) i!548 k!778) (size!10548 _keys!658)))))

(declare-fun b!371289 () Bool)

(declare-fun res!208782 () Bool)

(assert (=> b!371289 (=> (not res!208782) (not e!226631))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!371289 (= res!208782 (validKeyInArray!0 k!778))))

(declare-fun b!371290 () Bool)

(assert (=> b!371290 (= e!226632 tp_is_empty!8773)))

(declare-fun b!371291 () Bool)

(declare-fun res!208779 () Bool)

(assert (=> b!371291 (=> (not res!208779) (not e!226631))))

(assert (=> b!371291 (= res!208779 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5723))))

(declare-fun b!371292 () Bool)

(declare-fun res!208777 () Bool)

(assert (=> b!371292 (=> (not res!208777) (not e!226631))))

(assert (=> b!371292 (= res!208777 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!371293 () Bool)

(assert (=> b!371293 (= e!226628 (and e!226630 mapRes!14724))))

(declare-fun condMapEmpty!14724 () Bool)

(declare-fun mapDefault!14724 () ValueCell!4043)

