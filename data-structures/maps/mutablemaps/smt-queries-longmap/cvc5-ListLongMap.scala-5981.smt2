; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77740 () Bool)

(assert start!77740)

(declare-fun b_free!16297 () Bool)

(declare-fun b_next!16297 () Bool)

(assert (=> start!77740 (= b_free!16297 (not b_next!16297))))

(declare-fun tp!57153 () Bool)

(declare-fun b_and!26765 () Bool)

(assert (=> start!77740 (= tp!57153 b_and!26765)))

(declare-fun b!906449 () Bool)

(declare-fun e!508010 () Bool)

(declare-fun e!508008 () Bool)

(assert (=> b!906449 (= e!508010 (not e!508008))))

(declare-fun res!611860 () Bool)

(assert (=> b!906449 (=> res!611860 e!508008)))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53456 0))(
  ( (array!53457 (arr!25683 (Array (_ BitVec 32) (_ BitVec 64))) (size!26143 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53456)

(assert (=> b!906449 (= res!611860 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26143 _keys!1386))))))

(declare-datatypes ((V!29919 0))(
  ( (V!29920 (val!9408 Int)) )
))
(declare-datatypes ((ValueCell!8876 0))(
  ( (ValueCellFull!8876 (v!11913 V!29919)) (EmptyCell!8876) )
))
(declare-datatypes ((array!53458 0))(
  ( (array!53459 (arr!25684 (Array (_ BitVec 32) ValueCell!8876)) (size!26144 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53458)

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!408922 () V!29919)

(declare-fun get!13520 (ValueCell!8876 V!29919) V!29919)

(declare-fun dynLambda!1354 (Int (_ BitVec 64)) V!29919)

(assert (=> b!906449 (= lt!408922 (get!13520 (select (arr!25684 _values!1152) i!717) (dynLambda!1354 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!53456 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!906449 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29919)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29919)

(declare-datatypes ((Unit!30735 0))(
  ( (Unit!30736) )
))
(declare-fun lt!408923 () Unit!30735)

(declare-fun lemmaKeyInListMapIsInArray!227 (array!53456 array!53458 (_ BitVec 32) (_ BitVec 32) V!29919 V!29919 (_ BitVec 64) Int) Unit!30735)

(assert (=> b!906449 (= lt!408923 (lemmaKeyInListMapIsInArray!227 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!906450 () Bool)

(declare-fun res!611854 () Bool)

(declare-fun e!508013 () Bool)

(assert (=> b!906450 (=> (not res!611854) (not e!508013))))

(assert (=> b!906450 (= res!611854 (and (= (size!26144 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26143 _keys!1386) (size!26144 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!906451 () Bool)

(declare-fun e!508012 () Bool)

(assert (=> b!906451 (= e!508008 e!508012)))

(declare-fun res!611861 () Bool)

(assert (=> b!906451 (=> res!611861 e!508012)))

(declare-datatypes ((tuple2!12266 0))(
  ( (tuple2!12267 (_1!6143 (_ BitVec 64)) (_2!6143 V!29919)) )
))
(declare-datatypes ((List!18129 0))(
  ( (Nil!18126) (Cons!18125 (h!19271 tuple2!12266) (t!25606 List!18129)) )
))
(declare-datatypes ((ListLongMap!10977 0))(
  ( (ListLongMap!10978 (toList!5504 List!18129)) )
))
(declare-fun lt!408924 () ListLongMap!10977)

(declare-fun contains!4514 (ListLongMap!10977 (_ BitVec 64)) Bool)

(assert (=> b!906451 (= res!611861 (not (contains!4514 lt!408924 k!1033)))))

(declare-fun getCurrentListMap!2738 (array!53456 array!53458 (_ BitVec 32) (_ BitVec 32) V!29919 V!29919 (_ BitVec 32) Int) ListLongMap!10977)

(assert (=> b!906451 (= lt!408924 (getCurrentListMap!2738 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun mapNonEmpty!29785 () Bool)

(declare-fun mapRes!29785 () Bool)

(declare-fun tp!57154 () Bool)

(declare-fun e!508009 () Bool)

(assert (=> mapNonEmpty!29785 (= mapRes!29785 (and tp!57154 e!508009))))

(declare-fun mapValue!29785 () ValueCell!8876)

(declare-fun mapRest!29785 () (Array (_ BitVec 32) ValueCell!8876))

(declare-fun mapKey!29785 () (_ BitVec 32))

(assert (=> mapNonEmpty!29785 (= (arr!25684 _values!1152) (store mapRest!29785 mapKey!29785 mapValue!29785))))

(declare-fun b!906452 () Bool)

(declare-fun res!611859 () Bool)

(assert (=> b!906452 (=> (not res!611859) (not e!508010))))

(assert (=> b!906452 (= res!611859 (and (= (select (arr!25683 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!906453 () Bool)

(assert (=> b!906453 (= e!508013 e!508010)))

(declare-fun res!611856 () Bool)

(assert (=> b!906453 (=> (not res!611856) (not e!508010))))

(declare-fun lt!408925 () ListLongMap!10977)

(assert (=> b!906453 (= res!611856 (contains!4514 lt!408925 k!1033))))

(assert (=> b!906453 (= lt!408925 (getCurrentListMap!2738 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun res!611853 () Bool)

(assert (=> start!77740 (=> (not res!611853) (not e!508013))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77740 (= res!611853 (validMask!0 mask!1756))))

(assert (=> start!77740 e!508013))

(declare-fun e!508011 () Bool)

(declare-fun array_inv!20090 (array!53458) Bool)

(assert (=> start!77740 (and (array_inv!20090 _values!1152) e!508011)))

(assert (=> start!77740 tp!57153))

(assert (=> start!77740 true))

(declare-fun tp_is_empty!18715 () Bool)

(assert (=> start!77740 tp_is_empty!18715))

(declare-fun array_inv!20091 (array!53456) Bool)

(assert (=> start!77740 (array_inv!20091 _keys!1386)))

(declare-fun b!906454 () Bool)

(assert (=> b!906454 (= e!508009 tp_is_empty!18715)))

(declare-fun b!906455 () Bool)

(declare-fun e!508006 () Bool)

(assert (=> b!906455 (= e!508011 (and e!508006 mapRes!29785))))

(declare-fun condMapEmpty!29785 () Bool)

(declare-fun mapDefault!29785 () ValueCell!8876)

