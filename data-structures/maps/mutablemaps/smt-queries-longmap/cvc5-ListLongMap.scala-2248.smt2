; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36958 () Bool)

(assert start!36958)

(declare-fun b_free!8077 () Bool)

(declare-fun b_next!8077 () Bool)

(assert (=> start!36958 (= b_free!8077 (not b_next!8077))))

(declare-fun tp!28947 () Bool)

(declare-fun b_and!15337 () Bool)

(assert (=> start!36958 (= tp!28947 b_and!15337)))

(declare-fun mapNonEmpty!14652 () Bool)

(declare-fun mapRes!14652 () Bool)

(declare-fun tp!28946 () Bool)

(declare-fun e!226200 () Bool)

(assert (=> mapNonEmpty!14652 (= mapRes!14652 (and tp!28946 e!226200))))

(declare-datatypes ((V!12739 0))(
  ( (V!12740 (val!4407 Int)) )
))
(declare-datatypes ((ValueCell!4019 0))(
  ( (ValueCellFull!4019 (v!6600 V!12739)) (EmptyCell!4019) )
))
(declare-fun mapValue!14652 () ValueCell!4019)

(declare-fun mapRest!14652 () (Array (_ BitVec 32) ValueCell!4019))

(declare-datatypes ((array!21367 0))(
  ( (array!21368 (arr!10149 (Array (_ BitVec 32) ValueCell!4019)) (size!10501 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21367)

(declare-fun mapKey!14652 () (_ BitVec 32))

(assert (=> mapNonEmpty!14652 (= (arr!10149 _values!506) (store mapRest!14652 mapKey!14652 mapValue!14652))))

(declare-fun b!370346 () Bool)

(declare-fun res!208058 () Bool)

(declare-fun e!226197 () Bool)

(assert (=> b!370346 (=> (not res!208058) (not e!226197))))

(declare-datatypes ((array!21369 0))(
  ( (array!21370 (arr!10150 (Array (_ BitVec 32) (_ BitVec 64))) (size!10502 (_ BitVec 32))) )
))
(declare-fun lt!169952 () array!21369)

(declare-datatypes ((List!5697 0))(
  ( (Nil!5694) (Cons!5693 (h!6549 (_ BitVec 64)) (t!10855 List!5697)) )
))
(declare-fun arrayNoDuplicates!0 (array!21369 (_ BitVec 32) List!5697) Bool)

(assert (=> b!370346 (= res!208058 (arrayNoDuplicates!0 lt!169952 #b00000000000000000000000000000000 Nil!5694))))

(declare-fun mapIsEmpty!14652 () Bool)

(assert (=> mapIsEmpty!14652 mapRes!14652))

(declare-fun b!370348 () Bool)

(declare-fun res!208059 () Bool)

(declare-fun e!226195 () Bool)

(assert (=> b!370348 (=> (not res!208059) (not e!226195))))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun _keys!658 () array!21369)

(assert (=> b!370348 (= res!208059 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10502 _keys!658))))))

(declare-fun b!370349 () Bool)

(declare-fun res!208057 () Bool)

(assert (=> b!370349 (=> (not res!208057) (not e!226195))))

(assert (=> b!370349 (= res!208057 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5694))))

(declare-fun b!370350 () Bool)

(declare-fun e!226198 () Bool)

(declare-fun tp_is_empty!8725 () Bool)

(assert (=> b!370350 (= e!226198 tp_is_empty!8725)))

(declare-fun b!370351 () Bool)

(assert (=> b!370351 (= e!226197 false)))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12739)

(declare-datatypes ((tuple2!5832 0))(
  ( (tuple2!5833 (_1!2926 (_ BitVec 64)) (_2!2926 V!12739)) )
))
(declare-datatypes ((List!5698 0))(
  ( (Nil!5695) (Cons!5694 (h!6550 tuple2!5832) (t!10856 List!5698)) )
))
(declare-datatypes ((ListLongMap!4759 0))(
  ( (ListLongMap!4760 (toList!2395 List!5698)) )
))
(declare-fun lt!169954 () ListLongMap!4759)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!12739)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!12739)

(declare-fun getCurrentListMapNoExtraKeys!663 (array!21369 array!21367 (_ BitVec 32) (_ BitVec 32) V!12739 V!12739 (_ BitVec 32) Int) ListLongMap!4759)

(assert (=> b!370351 (= lt!169954 (getCurrentListMapNoExtraKeys!663 lt!169952 (array!21368 (store (arr!10149 _values!506) i!548 (ValueCellFull!4019 v!373)) (size!10501 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169953 () ListLongMap!4759)

(assert (=> b!370351 (= lt!169953 (getCurrentListMapNoExtraKeys!663 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!370352 () Bool)

(declare-fun res!208062 () Bool)

(assert (=> b!370352 (=> (not res!208062) (not e!226195))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21369 (_ BitVec 32)) Bool)

(assert (=> b!370352 (= res!208062 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!370353 () Bool)

(assert (=> b!370353 (= e!226195 e!226197)))

(declare-fun res!208055 () Bool)

(assert (=> b!370353 (=> (not res!208055) (not e!226197))))

(assert (=> b!370353 (= res!208055 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169952 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!370353 (= lt!169952 (array!21370 (store (arr!10150 _keys!658) i!548 k!778) (size!10502 _keys!658)))))

(declare-fun b!370354 () Bool)

(declare-fun res!208064 () Bool)

(assert (=> b!370354 (=> (not res!208064) (not e!226195))))

(assert (=> b!370354 (= res!208064 (and (= (size!10501 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10502 _keys!658) (size!10501 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!370355 () Bool)

(assert (=> b!370355 (= e!226200 tp_is_empty!8725)))

(declare-fun b!370356 () Bool)

(declare-fun res!208056 () Bool)

(assert (=> b!370356 (=> (not res!208056) (not e!226195))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!370356 (= res!208056 (validKeyInArray!0 k!778))))

(declare-fun res!208060 () Bool)

(assert (=> start!36958 (=> (not res!208060) (not e!226195))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36958 (= res!208060 (validMask!0 mask!970))))

(assert (=> start!36958 e!226195))

(declare-fun e!226199 () Bool)

(declare-fun array_inv!7494 (array!21367) Bool)

(assert (=> start!36958 (and (array_inv!7494 _values!506) e!226199)))

(assert (=> start!36958 tp!28947))

(assert (=> start!36958 true))

(assert (=> start!36958 tp_is_empty!8725))

(declare-fun array_inv!7495 (array!21369) Bool)

(assert (=> start!36958 (array_inv!7495 _keys!658)))

(declare-fun b!370347 () Bool)

(assert (=> b!370347 (= e!226199 (and e!226198 mapRes!14652))))

(declare-fun condMapEmpty!14652 () Bool)

(declare-fun mapDefault!14652 () ValueCell!4019)

