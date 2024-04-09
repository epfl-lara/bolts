; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77578 () Bool)

(assert start!77578)

(declare-fun b_free!16135 () Bool)

(declare-fun b_next!16135 () Bool)

(assert (=> start!77578 (= b_free!16135 (not b_next!16135))))

(declare-fun tp!56668 () Bool)

(declare-fun b_and!26519 () Bool)

(assert (=> start!77578 (= tp!56668 b_and!26519)))

(declare-fun mapIsEmpty!29542 () Bool)

(declare-fun mapRes!29542 () Bool)

(assert (=> mapIsEmpty!29542 mapRes!29542))

(declare-fun b!903401 () Bool)

(declare-fun res!609618 () Bool)

(declare-fun e!506209 () Bool)

(assert (=> b!903401 (=> (not res!609618) (not e!506209))))

(declare-datatypes ((array!53144 0))(
  ( (array!53145 (arr!25527 (Array (_ BitVec 32) (_ BitVec 64))) (size!25987 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53144)

(declare-datatypes ((List!18007 0))(
  ( (Nil!18004) (Cons!18003 (h!19149 (_ BitVec 64)) (t!25398 List!18007)) )
))
(declare-fun arrayNoDuplicates!0 (array!53144 (_ BitVec 32) List!18007) Bool)

(assert (=> b!903401 (= res!609618 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18004))))

(declare-fun res!609620 () Bool)

(assert (=> start!77578 (=> (not res!609620) (not e!506209))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77578 (= res!609620 (validMask!0 mask!1756))))

(assert (=> start!77578 e!506209))

(declare-datatypes ((V!29703 0))(
  ( (V!29704 (val!9327 Int)) )
))
(declare-datatypes ((ValueCell!8795 0))(
  ( (ValueCellFull!8795 (v!11832 V!29703)) (EmptyCell!8795) )
))
(declare-datatypes ((array!53146 0))(
  ( (array!53147 (arr!25528 (Array (_ BitVec 32) ValueCell!8795)) (size!25988 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53146)

(declare-fun e!506210 () Bool)

(declare-fun array_inv!19978 (array!53146) Bool)

(assert (=> start!77578 (and (array_inv!19978 _values!1152) e!506210)))

(assert (=> start!77578 tp!56668))

(assert (=> start!77578 true))

(declare-fun tp_is_empty!18553 () Bool)

(assert (=> start!77578 tp_is_empty!18553))

(declare-fun array_inv!19979 (array!53144) Bool)

(assert (=> start!77578 (array_inv!19979 _keys!1386)))

(declare-fun mapNonEmpty!29542 () Bool)

(declare-fun tp!56667 () Bool)

(declare-fun e!506213 () Bool)

(assert (=> mapNonEmpty!29542 (= mapRes!29542 (and tp!56667 e!506213))))

(declare-fun mapKey!29542 () (_ BitVec 32))

(declare-fun mapRest!29542 () (Array (_ BitVec 32) ValueCell!8795))

(declare-fun mapValue!29542 () ValueCell!8795)

(assert (=> mapNonEmpty!29542 (= (arr!25528 _values!1152) (store mapRest!29542 mapKey!29542 mapValue!29542))))

(declare-fun b!903402 () Bool)

(assert (=> b!903402 (= e!506213 tp_is_empty!18553)))

(declare-fun b!903403 () Bool)

(assert (=> b!903403 (= e!506209 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!407969 () Bool)

(declare-fun zeroValue!1094 () V!29703)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29703)

(declare-datatypes ((tuple2!12130 0))(
  ( (tuple2!12131 (_1!6075 (_ BitVec 64)) (_2!6075 V!29703)) )
))
(declare-datatypes ((List!18008 0))(
  ( (Nil!18005) (Cons!18004 (h!19150 tuple2!12130) (t!25399 List!18008)) )
))
(declare-datatypes ((ListLongMap!10841 0))(
  ( (ListLongMap!10842 (toList!5436 List!18008)) )
))
(declare-fun contains!4449 (ListLongMap!10841 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2673 (array!53144 array!53146 (_ BitVec 32) (_ BitVec 32) V!29703 V!29703 (_ BitVec 32) Int) ListLongMap!10841)

(assert (=> b!903403 (= lt!407969 (contains!4449 (getCurrentListMap!2673 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!903404 () Bool)

(declare-fun e!506211 () Bool)

(assert (=> b!903404 (= e!506211 tp_is_empty!18553)))

(declare-fun b!903405 () Bool)

(declare-fun res!609619 () Bool)

(assert (=> b!903405 (=> (not res!609619) (not e!506209))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53144 (_ BitVec 32)) Bool)

(assert (=> b!903405 (= res!609619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!903406 () Bool)

(assert (=> b!903406 (= e!506210 (and e!506211 mapRes!29542))))

(declare-fun condMapEmpty!29542 () Bool)

(declare-fun mapDefault!29542 () ValueCell!8795)

