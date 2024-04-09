; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77560 () Bool)

(assert start!77560)

(declare-fun b_free!16117 () Bool)

(declare-fun b_next!16117 () Bool)

(assert (=> start!77560 (= b_free!16117 (not b_next!16117))))

(declare-fun tp!56614 () Bool)

(declare-fun b_and!26501 () Bool)

(assert (=> start!77560 (= tp!56614 b_and!26501)))

(declare-fun mapIsEmpty!29515 () Bool)

(declare-fun mapRes!29515 () Bool)

(assert (=> mapIsEmpty!29515 mapRes!29515))

(declare-fun res!609512 () Bool)

(declare-fun e!506076 () Bool)

(assert (=> start!77560 (=> (not res!609512) (not e!506076))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77560 (= res!609512 (validMask!0 mask!1756))))

(assert (=> start!77560 e!506076))

(declare-datatypes ((V!29679 0))(
  ( (V!29680 (val!9318 Int)) )
))
(declare-datatypes ((ValueCell!8786 0))(
  ( (ValueCellFull!8786 (v!11823 V!29679)) (EmptyCell!8786) )
))
(declare-datatypes ((array!53112 0))(
  ( (array!53113 (arr!25511 (Array (_ BitVec 32) ValueCell!8786)) (size!25971 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53112)

(declare-fun e!506074 () Bool)

(declare-fun array_inv!19968 (array!53112) Bool)

(assert (=> start!77560 (and (array_inv!19968 _values!1152) e!506074)))

(assert (=> start!77560 tp!56614))

(assert (=> start!77560 true))

(declare-fun tp_is_empty!18535 () Bool)

(assert (=> start!77560 tp_is_empty!18535))

(declare-datatypes ((array!53114 0))(
  ( (array!53115 (arr!25512 (Array (_ BitVec 32) (_ BitVec 64))) (size!25972 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53114)

(declare-fun array_inv!19969 (array!53114) Bool)

(assert (=> start!77560 (array_inv!19969 _keys!1386)))

(declare-fun b!903212 () Bool)

(declare-fun e!506078 () Bool)

(assert (=> b!903212 (= e!506078 tp_is_empty!18535)))

(declare-fun b!903213 () Bool)

(assert (=> b!903213 (= e!506076 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!407942 () Bool)

(declare-fun zeroValue!1094 () V!29679)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29679)

(declare-datatypes ((tuple2!12120 0))(
  ( (tuple2!12121 (_1!6070 (_ BitVec 64)) (_2!6070 V!29679)) )
))
(declare-datatypes ((List!17996 0))(
  ( (Nil!17993) (Cons!17992 (h!19138 tuple2!12120) (t!25387 List!17996)) )
))
(declare-datatypes ((ListLongMap!10831 0))(
  ( (ListLongMap!10832 (toList!5431 List!17996)) )
))
(declare-fun contains!4444 (ListLongMap!10831 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2668 (array!53114 array!53112 (_ BitVec 32) (_ BitVec 32) V!29679 V!29679 (_ BitVec 32) Int) ListLongMap!10831)

(assert (=> b!903213 (= lt!407942 (contains!4444 (getCurrentListMap!2668 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun mapNonEmpty!29515 () Bool)

(declare-fun tp!56613 () Bool)

(declare-fun e!506075 () Bool)

(assert (=> mapNonEmpty!29515 (= mapRes!29515 (and tp!56613 e!506075))))

(declare-fun mapRest!29515 () (Array (_ BitVec 32) ValueCell!8786))

(declare-fun mapValue!29515 () ValueCell!8786)

(declare-fun mapKey!29515 () (_ BitVec 32))

(assert (=> mapNonEmpty!29515 (= (arr!25511 _values!1152) (store mapRest!29515 mapKey!29515 mapValue!29515))))

(declare-fun b!903214 () Bool)

(declare-fun res!609513 () Bool)

(assert (=> b!903214 (=> (not res!609513) (not e!506076))))

(declare-datatypes ((List!17997 0))(
  ( (Nil!17994) (Cons!17993 (h!19139 (_ BitVec 64)) (t!25388 List!17997)) )
))
(declare-fun arrayNoDuplicates!0 (array!53114 (_ BitVec 32) List!17997) Bool)

(assert (=> b!903214 (= res!609513 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!17994))))

(declare-fun b!903215 () Bool)

(assert (=> b!903215 (= e!506075 tp_is_empty!18535)))

(declare-fun b!903216 () Bool)

(declare-fun res!609511 () Bool)

(assert (=> b!903216 (=> (not res!609511) (not e!506076))))

(assert (=> b!903216 (= res!609511 (and (= (size!25971 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25972 _keys!1386) (size!25971 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!903217 () Bool)

(assert (=> b!903217 (= e!506074 (and e!506078 mapRes!29515))))

(declare-fun condMapEmpty!29515 () Bool)

(declare-fun mapDefault!29515 () ValueCell!8786)

