; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20206 () Bool)

(assert start!20206)

(declare-fun b_free!4853 () Bool)

(declare-fun b_next!4853 () Bool)

(assert (=> start!20206 (= b_free!4853 (not b_next!4853))))

(declare-fun tp!17590 () Bool)

(declare-fun b_and!11617 () Bool)

(assert (=> start!20206 (= tp!17590 b_and!11617)))

(declare-fun b!198300 () Bool)

(declare-fun res!94015 () Bool)

(declare-fun e!130356 () Bool)

(assert (=> b!198300 (=> (not res!94015) (not e!130356))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!198300 (= res!94015 (validKeyInArray!0 k!843))))

(declare-fun mapIsEmpty!8132 () Bool)

(declare-fun mapRes!8132 () Bool)

(assert (=> mapIsEmpty!8132 mapRes!8132))

(declare-fun res!94016 () Bool)

(assert (=> start!20206 (=> (not res!94016) (not e!130356))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20206 (= res!94016 (validMask!0 mask!1149))))

(assert (=> start!20206 e!130356))

(declare-datatypes ((V!5925 0))(
  ( (V!5926 (val!2399 Int)) )
))
(declare-datatypes ((ValueCell!2011 0))(
  ( (ValueCellFull!2011 (v!4365 V!5925)) (EmptyCell!2011) )
))
(declare-datatypes ((array!8666 0))(
  ( (array!8667 (arr!4083 (Array (_ BitVec 32) ValueCell!2011)) (size!4408 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8666)

(declare-fun e!130358 () Bool)

(declare-fun array_inv!2663 (array!8666) Bool)

(assert (=> start!20206 (and (array_inv!2663 _values!649) e!130358)))

(assert (=> start!20206 true))

(declare-fun tp_is_empty!4709 () Bool)

(assert (=> start!20206 tp_is_empty!4709))

(declare-datatypes ((array!8668 0))(
  ( (array!8669 (arr!4084 (Array (_ BitVec 32) (_ BitVec 64))) (size!4409 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8668)

(declare-fun array_inv!2664 (array!8668) Bool)

(assert (=> start!20206 (array_inv!2664 _keys!825)))

(assert (=> start!20206 tp!17590))

(declare-fun b!198301 () Bool)

(declare-fun res!94019 () Bool)

(assert (=> b!198301 (=> (not res!94019) (not e!130356))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8668 (_ BitVec 32)) Bool)

(assert (=> b!198301 (= res!94019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!198302 () Bool)

(declare-fun res!94021 () Bool)

(assert (=> b!198302 (=> (not res!94021) (not e!130356))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!198302 (= res!94021 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4409 _keys!825))))))

(declare-fun b!198303 () Bool)

(declare-fun e!130357 () Bool)

(assert (=> b!198303 (= e!130357 tp_is_empty!4709)))

(declare-fun b!198304 () Bool)

(declare-fun res!94017 () Bool)

(assert (=> b!198304 (=> (not res!94017) (not e!130356))))

(declare-datatypes ((List!2574 0))(
  ( (Nil!2571) (Cons!2570 (h!3212 (_ BitVec 64)) (t!7513 List!2574)) )
))
(declare-fun arrayNoDuplicates!0 (array!8668 (_ BitVec 32) List!2574) Bool)

(assert (=> b!198304 (= res!94017 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2571))))

(declare-fun b!198305 () Bool)

(declare-fun res!94018 () Bool)

(assert (=> b!198305 (=> (not res!94018) (not e!130356))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!198305 (= res!94018 (and (= (size!4408 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4409 _keys!825) (size!4408 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!198306 () Bool)

(declare-fun res!94020 () Bool)

(assert (=> b!198306 (=> (not res!94020) (not e!130356))))

(assert (=> b!198306 (= res!94020 (= (select (arr!4084 _keys!825) i!601) k!843))))

(declare-fun mapNonEmpty!8132 () Bool)

(declare-fun tp!17591 () Bool)

(assert (=> mapNonEmpty!8132 (= mapRes!8132 (and tp!17591 e!130357))))

(declare-fun mapKey!8132 () (_ BitVec 32))

(declare-fun mapValue!8132 () ValueCell!2011)

(declare-fun mapRest!8132 () (Array (_ BitVec 32) ValueCell!2011))

(assert (=> mapNonEmpty!8132 (= (arr!4083 _values!649) (store mapRest!8132 mapKey!8132 mapValue!8132))))

(declare-fun b!198307 () Bool)

(assert (=> b!198307 (= e!130356 false)))

(declare-fun v!520 () V!5925)

(declare-fun zeroValue!615 () V!5925)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!5925)

(declare-datatypes ((tuple2!3636 0))(
  ( (tuple2!3637 (_1!1828 (_ BitVec 64)) (_2!1828 V!5925)) )
))
(declare-datatypes ((List!2575 0))(
  ( (Nil!2572) (Cons!2571 (h!3213 tuple2!3636) (t!7514 List!2575)) )
))
(declare-datatypes ((ListLongMap!2563 0))(
  ( (ListLongMap!2564 (toList!1297 List!2575)) )
))
(declare-fun lt!97921 () ListLongMap!2563)

(declare-fun getCurrentListMapNoExtraKeys!254 (array!8668 array!8666 (_ BitVec 32) (_ BitVec 32) V!5925 V!5925 (_ BitVec 32) Int) ListLongMap!2563)

(assert (=> b!198307 (= lt!97921 (getCurrentListMapNoExtraKeys!254 _keys!825 (array!8667 (store (arr!4083 _values!649) i!601 (ValueCellFull!2011 v!520)) (size!4408 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!97920 () ListLongMap!2563)

(assert (=> b!198307 (= lt!97920 (getCurrentListMapNoExtraKeys!254 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!198308 () Bool)

(declare-fun e!130360 () Bool)

(assert (=> b!198308 (= e!130358 (and e!130360 mapRes!8132))))

(declare-fun condMapEmpty!8132 () Bool)

(declare-fun mapDefault!8132 () ValueCell!2011)

