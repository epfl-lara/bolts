; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111020 () Bool)

(assert start!111020)

(declare-fun b_free!29819 () Bool)

(declare-fun b_next!29819 () Bool)

(assert (=> start!111020 (= b_free!29819 (not b_next!29819))))

(declare-fun tp!104779 () Bool)

(declare-fun b_and!48037 () Bool)

(assert (=> start!111020 (= tp!104779 b_and!48037)))

(declare-fun b!1313865 () Bool)

(declare-fun e!749476 () Bool)

(declare-fun tp_is_empty!35549 () Bool)

(assert (=> b!1313865 (= e!749476 tp_is_empty!35549)))

(declare-fun b!1313866 () Bool)

(declare-fun res!872345 () Bool)

(declare-fun e!749478 () Bool)

(assert (=> b!1313866 (=> (not res!872345) (not e!749478))))

(declare-datatypes ((array!88037 0))(
  ( (array!88038 (arr!42494 (Array (_ BitVec 32) (_ BitVec 64))) (size!43045 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88037)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1313866 (= res!872345 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43045 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1313867 () Bool)

(declare-fun res!872347 () Bool)

(assert (=> b!1313867 (=> (not res!872347) (not e!749478))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52501 0))(
  ( (V!52502 (val!17849 Int)) )
))
(declare-datatypes ((ValueCell!16876 0))(
  ( (ValueCellFull!16876 (v!20474 V!52501)) (EmptyCell!16876) )
))
(declare-datatypes ((array!88039 0))(
  ( (array!88040 (arr!42495 (Array (_ BitVec 32) ValueCell!16876)) (size!43046 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88039)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1313867 (= res!872347 (and (= (size!43046 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43045 _keys!1628) (size!43046 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1313868 () Bool)

(assert (=> b!1313868 (= e!749478 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52501)

(declare-fun lt!585670 () Bool)

(declare-fun zeroValue!1296 () V!52501)

(declare-datatypes ((tuple2!23186 0))(
  ( (tuple2!23187 (_1!11603 (_ BitVec 64)) (_2!11603 V!52501)) )
))
(declare-datatypes ((List!30349 0))(
  ( (Nil!30346) (Cons!30345 (h!31554 tuple2!23186) (t!43962 List!30349)) )
))
(declare-datatypes ((ListLongMap!20855 0))(
  ( (ListLongMap!20856 (toList!10443 List!30349)) )
))
(declare-fun contains!8529 (ListLongMap!20855 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5399 (array!88037 array!88039 (_ BitVec 32) (_ BitVec 32) V!52501 V!52501 (_ BitVec 32) Int) ListLongMap!20855)

(assert (=> b!1313868 (= lt!585670 (contains!8529 (getCurrentListMap!5399 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1313869 () Bool)

(declare-fun res!872348 () Bool)

(assert (=> b!1313869 (=> (not res!872348) (not e!749478))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88037 (_ BitVec 32)) Bool)

(assert (=> b!1313869 (= res!872348 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapNonEmpty!54952 () Bool)

(declare-fun mapRes!54952 () Bool)

(declare-fun tp!104780 () Bool)

(assert (=> mapNonEmpty!54952 (= mapRes!54952 (and tp!104780 e!749476))))

(declare-fun mapKey!54952 () (_ BitVec 32))

(declare-fun mapValue!54952 () ValueCell!16876)

(declare-fun mapRest!54952 () (Array (_ BitVec 32) ValueCell!16876))

(assert (=> mapNonEmpty!54952 (= (arr!42495 _values!1354) (store mapRest!54952 mapKey!54952 mapValue!54952))))

(declare-fun b!1313870 () Bool)

(declare-fun e!749480 () Bool)

(declare-fun e!749477 () Bool)

(assert (=> b!1313870 (= e!749480 (and e!749477 mapRes!54952))))

(declare-fun condMapEmpty!54952 () Bool)

(declare-fun mapDefault!54952 () ValueCell!16876)

