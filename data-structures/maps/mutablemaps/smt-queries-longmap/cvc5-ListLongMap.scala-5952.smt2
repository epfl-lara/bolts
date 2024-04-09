; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77566 () Bool)

(assert start!77566)

(declare-fun b_free!16123 () Bool)

(declare-fun b_next!16123 () Bool)

(assert (=> start!77566 (= b_free!16123 (not b_next!16123))))

(declare-fun tp!56631 () Bool)

(declare-fun b_and!26507 () Bool)

(assert (=> start!77566 (= tp!56631 b_and!26507)))

(declare-fun mapNonEmpty!29524 () Bool)

(declare-fun mapRes!29524 () Bool)

(declare-fun tp!56632 () Bool)

(declare-fun e!506121 () Bool)

(assert (=> mapNonEmpty!29524 (= mapRes!29524 (and tp!56632 e!506121))))

(declare-datatypes ((V!29687 0))(
  ( (V!29688 (val!9321 Int)) )
))
(declare-datatypes ((ValueCell!8789 0))(
  ( (ValueCellFull!8789 (v!11826 V!29687)) (EmptyCell!8789) )
))
(declare-datatypes ((array!53124 0))(
  ( (array!53125 (arr!25517 (Array (_ BitVec 32) ValueCell!8789)) (size!25977 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53124)

(declare-fun mapRest!29524 () (Array (_ BitVec 32) ValueCell!8789))

(declare-fun mapValue!29524 () ValueCell!8789)

(declare-fun mapKey!29524 () (_ BitVec 32))

(assert (=> mapNonEmpty!29524 (= (arr!25517 _values!1152) (store mapRest!29524 mapKey!29524 mapValue!29524))))

(declare-fun b!903275 () Bool)

(declare-fun res!609547 () Bool)

(declare-fun e!506123 () Bool)

(assert (=> b!903275 (=> (not res!609547) (not e!506123))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53126 0))(
  ( (array!53127 (arr!25518 (Array (_ BitVec 32) (_ BitVec 64))) (size!25978 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53126)

(assert (=> b!903275 (= res!609547 (and (= (size!25977 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25978 _keys!1386) (size!25977 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!903276 () Bool)

(declare-fun res!609548 () Bool)

(assert (=> b!903276 (=> (not res!609548) (not e!506123))))

(declare-datatypes ((List!18001 0))(
  ( (Nil!17998) (Cons!17997 (h!19143 (_ BitVec 64)) (t!25392 List!18001)) )
))
(declare-fun arrayNoDuplicates!0 (array!53126 (_ BitVec 32) List!18001) Bool)

(assert (=> b!903276 (= res!609548 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!17998))))

(declare-fun b!903277 () Bool)

(assert (=> b!903277 (= e!506123 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29687)

(declare-fun lt!407951 () Bool)

(declare-fun minValue!1094 () V!29687)

(declare-fun k!1033 () (_ BitVec 64))

(declare-datatypes ((tuple2!12124 0))(
  ( (tuple2!12125 (_1!6072 (_ BitVec 64)) (_2!6072 V!29687)) )
))
(declare-datatypes ((List!18002 0))(
  ( (Nil!17999) (Cons!17998 (h!19144 tuple2!12124) (t!25393 List!18002)) )
))
(declare-datatypes ((ListLongMap!10835 0))(
  ( (ListLongMap!10836 (toList!5433 List!18002)) )
))
(declare-fun contains!4446 (ListLongMap!10835 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2670 (array!53126 array!53124 (_ BitVec 32) (_ BitVec 32) V!29687 V!29687 (_ BitVec 32) Int) ListLongMap!10835)

(assert (=> b!903277 (= lt!407951 (contains!4446 (getCurrentListMap!2670 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!903278 () Bool)

(declare-fun res!609549 () Bool)

(assert (=> b!903278 (=> (not res!609549) (not e!506123))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53126 (_ BitVec 32)) Bool)

(assert (=> b!903278 (= res!609549 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!903279 () Bool)

(declare-fun e!506119 () Bool)

(declare-fun e!506122 () Bool)

(assert (=> b!903279 (= e!506119 (and e!506122 mapRes!29524))))

(declare-fun condMapEmpty!29524 () Bool)

(declare-fun mapDefault!29524 () ValueCell!8789)

