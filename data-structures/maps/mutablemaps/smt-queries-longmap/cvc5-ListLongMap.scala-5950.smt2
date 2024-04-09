; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77554 () Bool)

(assert start!77554)

(declare-fun b_free!16111 () Bool)

(declare-fun b_next!16111 () Bool)

(assert (=> start!77554 (= b_free!16111 (not b_next!16111))))

(declare-fun tp!56595 () Bool)

(declare-fun b_and!26495 () Bool)

(assert (=> start!77554 (= tp!56595 b_and!26495)))

(declare-fun mapIsEmpty!29506 () Bool)

(declare-fun mapRes!29506 () Bool)

(assert (=> mapIsEmpty!29506 mapRes!29506))

(declare-fun b!903149 () Bool)

(declare-fun e!506032 () Bool)

(assert (=> b!903149 (= e!506032 false)))

(declare-datatypes ((V!29671 0))(
  ( (V!29672 (val!9315 Int)) )
))
(declare-datatypes ((ValueCell!8783 0))(
  ( (ValueCellFull!8783 (v!11820 V!29671)) (EmptyCell!8783) )
))
(declare-datatypes ((array!53100 0))(
  ( (array!53101 (arr!25505 (Array (_ BitVec 32) ValueCell!8783)) (size!25965 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53100)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29671)

(declare-datatypes ((array!53102 0))(
  ( (array!53103 (arr!25506 (Array (_ BitVec 32) (_ BitVec 64))) (size!25966 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53102)

(declare-fun lt!407933 () Bool)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29671)

(declare-datatypes ((tuple2!12116 0))(
  ( (tuple2!12117 (_1!6068 (_ BitVec 64)) (_2!6068 V!29671)) )
))
(declare-datatypes ((List!17992 0))(
  ( (Nil!17989) (Cons!17988 (h!19134 tuple2!12116) (t!25383 List!17992)) )
))
(declare-datatypes ((ListLongMap!10827 0))(
  ( (ListLongMap!10828 (toList!5429 List!17992)) )
))
(declare-fun contains!4442 (ListLongMap!10827 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2666 (array!53102 array!53100 (_ BitVec 32) (_ BitVec 32) V!29671 V!29671 (_ BitVec 32) Int) ListLongMap!10827)

(assert (=> b!903149 (= lt!407933 (contains!4442 (getCurrentListMap!2666 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun mapNonEmpty!29506 () Bool)

(declare-fun tp!56596 () Bool)

(declare-fun e!506033 () Bool)

(assert (=> mapNonEmpty!29506 (= mapRes!29506 (and tp!56596 e!506033))))

(declare-fun mapRest!29506 () (Array (_ BitVec 32) ValueCell!8783))

(declare-fun mapValue!29506 () ValueCell!8783)

(declare-fun mapKey!29506 () (_ BitVec 32))

(assert (=> mapNonEmpty!29506 (= (arr!25505 _values!1152) (store mapRest!29506 mapKey!29506 mapValue!29506))))

(declare-fun b!903150 () Bool)

(declare-fun res!609477 () Bool)

(assert (=> b!903150 (=> (not res!609477) (not e!506032))))

(declare-datatypes ((List!17993 0))(
  ( (Nil!17990) (Cons!17989 (h!19135 (_ BitVec 64)) (t!25384 List!17993)) )
))
(declare-fun arrayNoDuplicates!0 (array!53102 (_ BitVec 32) List!17993) Bool)

(assert (=> b!903150 (= res!609477 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!17990))))

(declare-fun b!903151 () Bool)

(declare-fun e!506030 () Bool)

(declare-fun tp_is_empty!18529 () Bool)

(assert (=> b!903151 (= e!506030 tp_is_empty!18529)))

(declare-fun b!903152 () Bool)

(declare-fun res!609476 () Bool)

(assert (=> b!903152 (=> (not res!609476) (not e!506032))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53102 (_ BitVec 32)) Bool)

(assert (=> b!903152 (= res!609476 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!903153 () Bool)

(declare-fun e!506029 () Bool)

(assert (=> b!903153 (= e!506029 (and e!506030 mapRes!29506))))

(declare-fun condMapEmpty!29506 () Bool)

(declare-fun mapDefault!29506 () ValueCell!8783)

