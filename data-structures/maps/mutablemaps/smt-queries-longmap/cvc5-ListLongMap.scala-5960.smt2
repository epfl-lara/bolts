; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77614 () Bool)

(assert start!77614)

(declare-fun b_free!16171 () Bool)

(declare-fun b_next!16171 () Bool)

(assert (=> start!77614 (= b_free!16171 (not b_next!16171))))

(declare-fun tp!56776 () Bool)

(declare-fun b_and!26555 () Bool)

(assert (=> start!77614 (= tp!56776 b_and!26555)))

(declare-fun b!903969 () Bool)

(declare-fun e!506560 () Bool)

(declare-fun tp_is_empty!18589 () Bool)

(assert (=> b!903969 (= e!506560 tp_is_empty!18589)))

(declare-fun b!903970 () Bool)

(declare-fun res!610030 () Bool)

(declare-fun e!506555 () Bool)

(assert (=> b!903970 (=> (not res!610030) (not e!506555))))

(declare-datatypes ((V!29751 0))(
  ( (V!29752 (val!9345 Int)) )
))
(declare-datatypes ((ValueCell!8813 0))(
  ( (ValueCellFull!8813 (v!11850 V!29751)) (EmptyCell!8813) )
))
(declare-datatypes ((array!53208 0))(
  ( (array!53209 (arr!25559 (Array (_ BitVec 32) ValueCell!8813)) (size!26019 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53208)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53210 0))(
  ( (array!53211 (arr!25560 (Array (_ BitVec 32) (_ BitVec 64))) (size!26020 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53210)

(assert (=> b!903970 (= res!610030 (and (= (size!26019 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26020 _keys!1386) (size!26019 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!903971 () Bool)

(declare-fun e!506558 () Bool)

(assert (=> b!903971 (= e!506555 (not e!506558))))

(declare-fun res!610031 () Bool)

(assert (=> b!903971 (=> res!610031 e!506558)))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!903971 (= res!610031 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26020 _keys!1386))))))

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!53210 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!903971 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun defaultEntry!1160 () Int)

(declare-datatypes ((Unit!30627 0))(
  ( (Unit!30628) )
))
(declare-fun lt!408101 () Unit!30627)

(declare-fun zeroValue!1094 () V!29751)

(declare-fun minValue!1094 () V!29751)

(declare-fun lemmaKeyInListMapIsInArray!176 (array!53210 array!53208 (_ BitVec 32) (_ BitVec 32) V!29751 V!29751 (_ BitVec 64) Int) Unit!30627)

(assert (=> b!903971 (= lt!408101 (lemmaKeyInListMapIsInArray!176 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!903972 () Bool)

(declare-fun res!610027 () Bool)

(assert (=> b!903972 (=> (not res!610027) (not e!506555))))

(declare-datatypes ((tuple2!12154 0))(
  ( (tuple2!12155 (_1!6087 (_ BitVec 64)) (_2!6087 V!29751)) )
))
(declare-datatypes ((List!18029 0))(
  ( (Nil!18026) (Cons!18025 (h!19171 tuple2!12154) (t!25420 List!18029)) )
))
(declare-datatypes ((ListLongMap!10865 0))(
  ( (ListLongMap!10866 (toList!5448 List!18029)) )
))
(declare-fun contains!4461 (ListLongMap!10865 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2685 (array!53210 array!53208 (_ BitVec 32) (_ BitVec 32) V!29751 V!29751 (_ BitVec 32) Int) ListLongMap!10865)

(assert (=> b!903972 (= res!610027 (contains!4461 (getCurrentListMap!2685 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!903973 () Bool)

(declare-fun res!610024 () Bool)

(assert (=> b!903973 (=> (not res!610024) (not e!506555))))

(assert (=> b!903973 (= res!610024 (and (= (select (arr!25560 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!610029 () Bool)

(assert (=> start!77614 (=> (not res!610029) (not e!506555))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77614 (= res!610029 (validMask!0 mask!1756))))

(assert (=> start!77614 e!506555))

(declare-fun e!506559 () Bool)

(declare-fun array_inv!20004 (array!53208) Bool)

(assert (=> start!77614 (and (array_inv!20004 _values!1152) e!506559)))

(assert (=> start!77614 tp!56776))

(assert (=> start!77614 true))

(assert (=> start!77614 tp_is_empty!18589))

(declare-fun array_inv!20005 (array!53210) Bool)

(assert (=> start!77614 (array_inv!20005 _keys!1386)))

(declare-fun b!903974 () Bool)

(declare-fun res!610025 () Bool)

(assert (=> b!903974 (=> (not res!610025) (not e!506555))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53210 (_ BitVec 32)) Bool)

(assert (=> b!903974 (= res!610025 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!903975 () Bool)

(declare-fun e!506556 () Bool)

(assert (=> b!903975 (= e!506556 true)))

(declare-fun lt!408100 () V!29751)

(declare-fun lt!408099 () ListLongMap!10865)

(declare-fun apply!431 (ListLongMap!10865 (_ BitVec 64)) V!29751)

(assert (=> b!903975 (= lt!408100 (apply!431 lt!408099 k!1033))))

(declare-fun b!903976 () Bool)

(declare-fun res!610026 () Bool)

(assert (=> b!903976 (=> (not res!610026) (not e!506555))))

(declare-datatypes ((List!18030 0))(
  ( (Nil!18027) (Cons!18026 (h!19172 (_ BitVec 64)) (t!25421 List!18030)) )
))
(declare-fun arrayNoDuplicates!0 (array!53210 (_ BitVec 32) List!18030) Bool)

(assert (=> b!903976 (= res!610026 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18027))))

(declare-fun b!903977 () Bool)

(declare-fun e!506557 () Bool)

(assert (=> b!903977 (= e!506557 tp_is_empty!18589)))

(declare-fun b!903978 () Bool)

(assert (=> b!903978 (= e!506558 e!506556)))

(declare-fun res!610028 () Bool)

(assert (=> b!903978 (=> res!610028 e!506556)))

(assert (=> b!903978 (= res!610028 (not (contains!4461 lt!408099 k!1033)))))

(assert (=> b!903978 (= lt!408099 (getCurrentListMap!2685 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun mapIsEmpty!29596 () Bool)

(declare-fun mapRes!29596 () Bool)

(assert (=> mapIsEmpty!29596 mapRes!29596))

(declare-fun b!903979 () Bool)

(assert (=> b!903979 (= e!506559 (and e!506560 mapRes!29596))))

(declare-fun condMapEmpty!29596 () Bool)

(declare-fun mapDefault!29596 () ValueCell!8813)

