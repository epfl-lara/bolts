; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77728 () Bool)

(assert start!77728)

(declare-fun b_free!16285 () Bool)

(declare-fun b_next!16285 () Bool)

(assert (=> start!77728 (= b_free!16285 (not b_next!16285))))

(declare-fun tp!57117 () Bool)

(declare-fun b_and!26741 () Bool)

(assert (=> start!77728 (= tp!57117 b_and!26741)))

(declare-fun b!906203 () Bool)

(declare-fun res!611676 () Bool)

(declare-fun e!507868 () Bool)

(assert (=> b!906203 (=> (not res!611676) (not e!507868))))

(declare-datatypes ((array!53434 0))(
  ( (array!53435 (arr!25672 (Array (_ BitVec 32) (_ BitVec 64))) (size!26132 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53434)

(declare-datatypes ((List!18122 0))(
  ( (Nil!18119) (Cons!18118 (h!19264 (_ BitVec 64)) (t!25587 List!18122)) )
))
(declare-fun arrayNoDuplicates!0 (array!53434 (_ BitVec 32) List!18122) Bool)

(assert (=> b!906203 (= res!611676 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18119))))

(declare-fun mapNonEmpty!29767 () Bool)

(declare-fun mapRes!29767 () Bool)

(declare-fun tp!57118 () Bool)

(declare-fun e!507867 () Bool)

(assert (=> mapNonEmpty!29767 (= mapRes!29767 (and tp!57118 e!507867))))

(declare-datatypes ((V!29903 0))(
  ( (V!29904 (val!9402 Int)) )
))
(declare-datatypes ((ValueCell!8870 0))(
  ( (ValueCellFull!8870 (v!11907 V!29903)) (EmptyCell!8870) )
))
(declare-datatypes ((array!53436 0))(
  ( (array!53437 (arr!25673 (Array (_ BitVec 32) ValueCell!8870)) (size!26133 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53436)

(declare-fun mapValue!29767 () ValueCell!8870)

(declare-fun mapKey!29767 () (_ BitVec 32))

(declare-fun mapRest!29767 () (Array (_ BitVec 32) ValueCell!8870))

(assert (=> mapNonEmpty!29767 (= (arr!25673 _values!1152) (store mapRest!29767 mapKey!29767 mapValue!29767))))

(declare-fun b!906204 () Bool)

(declare-fun e!507869 () Bool)

(assert (=> b!906204 (= e!507869 true)))

(declare-datatypes ((tuple2!12260 0))(
  ( (tuple2!12261 (_1!6140 (_ BitVec 64)) (_2!6140 V!29903)) )
))
(declare-datatypes ((List!18123 0))(
  ( (Nil!18120) (Cons!18119 (h!19265 tuple2!12260) (t!25588 List!18123)) )
))
(declare-datatypes ((ListLongMap!10971 0))(
  ( (ListLongMap!10972 (toList!5501 List!18123)) )
))
(declare-fun lt!408833 () ListLongMap!10971)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun lt!408836 () V!29903)

(declare-fun apply!478 (ListLongMap!10971 (_ BitVec 64)) V!29903)

(assert (=> b!906204 (= (apply!478 lt!408833 k!1033) lt!408836)))

(declare-datatypes ((Unit!30727 0))(
  ( (Unit!30728) )
))
(declare-fun lt!408832 () Unit!30727)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29903)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29903)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!27 (array!53434 array!53436 (_ BitVec 32) (_ BitVec 32) V!29903 V!29903 (_ BitVec 64) V!29903 (_ BitVec 32) Int) Unit!30727)

(assert (=> b!906204 (= lt!408832 (lemmaListMapApplyFromThenApplyFromZero!27 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!408836 i!717 defaultEntry!1160))))

(declare-fun b!906205 () Bool)

(declare-fun e!507864 () Bool)

(declare-fun e!507862 () Bool)

(assert (=> b!906205 (= e!507864 (not e!507862))))

(declare-fun res!611679 () Bool)

(assert (=> b!906205 (=> res!611679 e!507862)))

(assert (=> b!906205 (= res!611679 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26132 _keys!1386))))))

(declare-fun get!13512 (ValueCell!8870 V!29903) V!29903)

(declare-fun dynLambda!1350 (Int (_ BitVec 64)) V!29903)

(assert (=> b!906205 (= lt!408836 (get!13512 (select (arr!25673 _values!1152) i!717) (dynLambda!1350 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53434 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!906205 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun lt!408835 () Unit!30727)

(declare-fun lemmaKeyInListMapIsInArray!223 (array!53434 array!53436 (_ BitVec 32) (_ BitVec 32) V!29903 V!29903 (_ BitVec 64) Int) Unit!30727)

(assert (=> b!906205 (= lt!408835 (lemmaKeyInListMapIsInArray!223 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!906206 () Bool)

(declare-fun res!611678 () Bool)

(assert (=> b!906206 (=> (not res!611678) (not e!507864))))

(assert (=> b!906206 (= res!611678 (and (= (select (arr!25672 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!611681 () Bool)

(assert (=> start!77728 (=> (not res!611681) (not e!507868))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77728 (= res!611681 (validMask!0 mask!1756))))

(assert (=> start!77728 e!507868))

(declare-fun e!507866 () Bool)

(declare-fun array_inv!20084 (array!53436) Bool)

(assert (=> start!77728 (and (array_inv!20084 _values!1152) e!507866)))

(assert (=> start!77728 tp!57117))

(assert (=> start!77728 true))

(declare-fun tp_is_empty!18703 () Bool)

(assert (=> start!77728 tp_is_empty!18703))

(declare-fun array_inv!20085 (array!53434) Bool)

(assert (=> start!77728 (array_inv!20085 _keys!1386)))

(declare-fun b!906207 () Bool)

(declare-fun e!507865 () Bool)

(assert (=> b!906207 (= e!507865 tp_is_empty!18703)))

(declare-fun b!906208 () Bool)

(declare-fun res!611673 () Bool)

(assert (=> b!906208 (=> (not res!611673) (not e!507868))))

(assert (=> b!906208 (= res!611673 (and (= (size!26133 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26132 _keys!1386) (size!26133 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!906209 () Bool)

(assert (=> b!906209 (= e!507862 e!507869)))

(declare-fun res!611675 () Bool)

(assert (=> b!906209 (=> res!611675 e!507869)))

(declare-fun lt!408834 () ListLongMap!10971)

(declare-fun contains!4511 (ListLongMap!10971 (_ BitVec 64)) Bool)

(assert (=> b!906209 (= res!611675 (not (contains!4511 lt!408834 k!1033)))))

(declare-fun getCurrentListMap!2735 (array!53434 array!53436 (_ BitVec 32) (_ BitVec 32) V!29903 V!29903 (_ BitVec 32) Int) ListLongMap!10971)

(assert (=> b!906209 (= lt!408834 (getCurrentListMap!2735 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!906210 () Bool)

(declare-fun res!611674 () Bool)

(assert (=> b!906210 (=> res!611674 e!507869)))

(assert (=> b!906210 (= res!611674 (not (= (apply!478 lt!408834 k!1033) lt!408836)))))

(declare-fun b!906211 () Bool)

(assert (=> b!906211 (= e!507868 e!507864)))

(declare-fun res!611680 () Bool)

(assert (=> b!906211 (=> (not res!611680) (not e!507864))))

(assert (=> b!906211 (= res!611680 (contains!4511 lt!408833 k!1033))))

(assert (=> b!906211 (= lt!408833 (getCurrentListMap!2735 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!906212 () Bool)

(declare-fun res!611682 () Bool)

(assert (=> b!906212 (=> (not res!611682) (not e!507864))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!906212 (= res!611682 (inRange!0 i!717 mask!1756))))

(declare-fun b!906213 () Bool)

(declare-fun res!611677 () Bool)

(assert (=> b!906213 (=> (not res!611677) (not e!507868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53434 (_ BitVec 32)) Bool)

(assert (=> b!906213 (= res!611677 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapIsEmpty!29767 () Bool)

(assert (=> mapIsEmpty!29767 mapRes!29767))

(declare-fun b!906214 () Bool)

(assert (=> b!906214 (= e!507866 (and e!507865 mapRes!29767))))

(declare-fun condMapEmpty!29767 () Bool)

(declare-fun mapDefault!29767 () ValueCell!8870)

