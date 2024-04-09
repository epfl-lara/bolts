; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77582 () Bool)

(assert start!77582)

(declare-fun b_free!16139 () Bool)

(declare-fun b_next!16139 () Bool)

(assert (=> start!77582 (= b_free!16139 (not b_next!16139))))

(declare-fun tp!56679 () Bool)

(declare-fun b_and!26523 () Bool)

(assert (=> start!77582 (= tp!56679 b_and!26523)))

(declare-fun b!903443 () Bool)

(declare-fun e!506239 () Bool)

(declare-fun tp_is_empty!18557 () Bool)

(assert (=> b!903443 (= e!506239 tp_is_empty!18557)))

(declare-fun res!609642 () Bool)

(declare-fun e!506242 () Bool)

(assert (=> start!77582 (=> (not res!609642) (not e!506242))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77582 (= res!609642 (validMask!0 mask!1756))))

(assert (=> start!77582 e!506242))

(declare-datatypes ((V!29707 0))(
  ( (V!29708 (val!9329 Int)) )
))
(declare-datatypes ((ValueCell!8797 0))(
  ( (ValueCellFull!8797 (v!11834 V!29707)) (EmptyCell!8797) )
))
(declare-datatypes ((array!53152 0))(
  ( (array!53153 (arr!25531 (Array (_ BitVec 32) ValueCell!8797)) (size!25991 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53152)

(declare-fun e!506241 () Bool)

(declare-fun array_inv!19982 (array!53152) Bool)

(assert (=> start!77582 (and (array_inv!19982 _values!1152) e!506241)))

(assert (=> start!77582 tp!56679))

(assert (=> start!77582 true))

(assert (=> start!77582 tp_is_empty!18557))

(declare-datatypes ((array!53154 0))(
  ( (array!53155 (arr!25532 (Array (_ BitVec 32) (_ BitVec 64))) (size!25992 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53154)

(declare-fun array_inv!19983 (array!53154) Bool)

(assert (=> start!77582 (array_inv!19983 _keys!1386)))

(declare-fun mapNonEmpty!29548 () Bool)

(declare-fun mapRes!29548 () Bool)

(declare-fun tp!56680 () Bool)

(assert (=> mapNonEmpty!29548 (= mapRes!29548 (and tp!56680 e!506239))))

(declare-fun mapValue!29548 () ValueCell!8797)

(declare-fun mapKey!29548 () (_ BitVec 32))

(declare-fun mapRest!29548 () (Array (_ BitVec 32) ValueCell!8797))

(assert (=> mapNonEmpty!29548 (= (arr!25531 _values!1152) (store mapRest!29548 mapKey!29548 mapValue!29548))))

(declare-fun b!903444 () Bool)

(declare-fun res!609645 () Bool)

(assert (=> b!903444 (=> (not res!609645) (not e!506242))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53154 (_ BitVec 32)) Bool)

(assert (=> b!903444 (= res!609645 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapIsEmpty!29548 () Bool)

(assert (=> mapIsEmpty!29548 mapRes!29548))

(declare-fun b!903445 () Bool)

(declare-fun res!609644 () Bool)

(assert (=> b!903445 (=> (not res!609644) (not e!506242))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!903445 (= res!609644 (and (= (size!25991 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25992 _keys!1386) (size!25991 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!903446 () Bool)

(assert (=> b!903446 (= e!506242 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29707)

(declare-fun lt!407975 () Bool)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!29707)

(declare-datatypes ((tuple2!12134 0))(
  ( (tuple2!12135 (_1!6077 (_ BitVec 64)) (_2!6077 V!29707)) )
))
(declare-datatypes ((List!18011 0))(
  ( (Nil!18008) (Cons!18007 (h!19153 tuple2!12134) (t!25402 List!18011)) )
))
(declare-datatypes ((ListLongMap!10845 0))(
  ( (ListLongMap!10846 (toList!5438 List!18011)) )
))
(declare-fun contains!4451 (ListLongMap!10845 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2675 (array!53154 array!53152 (_ BitVec 32) (_ BitVec 32) V!29707 V!29707 (_ BitVec 32) Int) ListLongMap!10845)

(assert (=> b!903446 (= lt!407975 (contains!4451 (getCurrentListMap!2675 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!903447 () Bool)

(declare-fun e!506243 () Bool)

(assert (=> b!903447 (= e!506241 (and e!506243 mapRes!29548))))

(declare-fun condMapEmpty!29548 () Bool)

(declare-fun mapDefault!29548 () ValueCell!8797)

