; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77648 () Bool)

(assert start!77648)

(declare-fun b_free!16205 () Bool)

(declare-fun b_next!16205 () Bool)

(assert (=> start!77648 (= b_free!16205 (not b_next!16205))))

(declare-fun tp!56877 () Bool)

(declare-fun b_and!26589 () Bool)

(assert (=> start!77648 (= tp!56877 b_and!26589)))

(declare-fun b!904581 () Bool)

(declare-fun e!506917 () Bool)

(declare-fun tp_is_empty!18623 () Bool)

(assert (=> b!904581 (= e!506917 tp_is_empty!18623)))

(declare-fun b!904582 () Bool)

(declare-fun res!610485 () Bool)

(declare-fun e!506916 () Bool)

(assert (=> b!904582 (=> (not res!610485) (not e!506916))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!904582 (= res!610485 (inRange!0 i!717 mask!1756))))

(declare-fun b!904583 () Bool)

(declare-fun e!506914 () Bool)

(assert (=> b!904583 (= e!506916 (not e!506914))))

(declare-fun res!610491 () Bool)

(assert (=> b!904583 (=> res!610491 e!506914)))

(declare-datatypes ((array!53276 0))(
  ( (array!53277 (arr!25593 (Array (_ BitVec 32) (_ BitVec 64))) (size!26053 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53276)

(assert (=> b!904583 (= res!610491 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26053 _keys!1386))))))

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!53276 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!904583 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((V!29795 0))(
  ( (V!29796 (val!9362 Int)) )
))
(declare-datatypes ((ValueCell!8830 0))(
  ( (ValueCellFull!8830 (v!11867 V!29795)) (EmptyCell!8830) )
))
(declare-datatypes ((array!53278 0))(
  ( (array!53279 (arr!25594 (Array (_ BitVec 32) ValueCell!8830)) (size!26054 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53278)

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29795)

(declare-datatypes ((Unit!30657 0))(
  ( (Unit!30658) )
))
(declare-fun lt!408254 () Unit!30657)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29795)

(declare-fun lemmaKeyInListMapIsInArray!191 (array!53276 array!53278 (_ BitVec 32) (_ BitVec 32) V!29795 V!29795 (_ BitVec 64) Int) Unit!30657)

(assert (=> b!904583 (= lt!408254 (lemmaKeyInListMapIsInArray!191 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!904584 () Bool)

(declare-fun e!506918 () Bool)

(assert (=> b!904584 (= e!506918 tp_is_empty!18623)))

(declare-fun b!904585 () Bool)

(declare-fun e!506913 () Bool)

(assert (=> b!904585 (= e!506914 e!506913)))

(declare-fun res!610490 () Bool)

(assert (=> b!904585 (=> res!610490 e!506913)))

(declare-datatypes ((tuple2!12188 0))(
  ( (tuple2!12189 (_1!6104 (_ BitVec 64)) (_2!6104 V!29795)) )
))
(declare-datatypes ((List!18059 0))(
  ( (Nil!18056) (Cons!18055 (h!19201 tuple2!12188) (t!25450 List!18059)) )
))
(declare-datatypes ((ListLongMap!10899 0))(
  ( (ListLongMap!10900 (toList!5465 List!18059)) )
))
(declare-fun lt!408252 () ListLongMap!10899)

(declare-fun contains!4478 (ListLongMap!10899 (_ BitVec 64)) Bool)

(assert (=> b!904585 (= res!610490 (not (contains!4478 lt!408252 k!1033)))))

(declare-fun getCurrentListMap!2702 (array!53276 array!53278 (_ BitVec 32) (_ BitVec 32) V!29795 V!29795 (_ BitVec 32) Int) ListLongMap!10899)

(assert (=> b!904585 (= lt!408252 (getCurrentListMap!2702 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun res!610483 () Bool)

(assert (=> start!77648 (=> (not res!610483) (not e!506916))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77648 (= res!610483 (validMask!0 mask!1756))))

(assert (=> start!77648 e!506916))

(declare-fun e!506915 () Bool)

(declare-fun array_inv!20030 (array!53278) Bool)

(assert (=> start!77648 (and (array_inv!20030 _values!1152) e!506915)))

(assert (=> start!77648 tp!56877))

(assert (=> start!77648 true))

(assert (=> start!77648 tp_is_empty!18623))

(declare-fun array_inv!20031 (array!53276) Bool)

(assert (=> start!77648 (array_inv!20031 _keys!1386)))

(declare-fun mapNonEmpty!29647 () Bool)

(declare-fun mapRes!29647 () Bool)

(declare-fun tp!56878 () Bool)

(assert (=> mapNonEmpty!29647 (= mapRes!29647 (and tp!56878 e!506918))))

(declare-fun mapValue!29647 () ValueCell!8830)

(declare-fun mapRest!29647 () (Array (_ BitVec 32) ValueCell!8830))

(declare-fun mapKey!29647 () (_ BitVec 32))

(assert (=> mapNonEmpty!29647 (= (arr!25594 _values!1152) (store mapRest!29647 mapKey!29647 mapValue!29647))))

(declare-fun mapIsEmpty!29647 () Bool)

(assert (=> mapIsEmpty!29647 mapRes!29647))

(declare-fun b!904586 () Bool)

(declare-fun res!610488 () Bool)

(assert (=> b!904586 (=> (not res!610488) (not e!506916))))

(assert (=> b!904586 (= res!610488 (and (= (select (arr!25593 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!904587 () Bool)

(declare-fun res!610486 () Bool)

(assert (=> b!904587 (=> (not res!610486) (not e!506916))))

(assert (=> b!904587 (= res!610486 (contains!4478 (getCurrentListMap!2702 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!904588 () Bool)

(declare-fun res!610489 () Bool)

(assert (=> b!904588 (=> (not res!610489) (not e!506916))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53276 (_ BitVec 32)) Bool)

(assert (=> b!904588 (= res!610489 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!904589 () Bool)

(assert (=> b!904589 (= e!506915 (and e!506917 mapRes!29647))))

(declare-fun condMapEmpty!29647 () Bool)

(declare-fun mapDefault!29647 () ValueCell!8830)

