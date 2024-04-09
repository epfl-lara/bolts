; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77538 () Bool)

(assert start!77538)

(declare-fun b_free!16095 () Bool)

(declare-fun b_next!16095 () Bool)

(assert (=> start!77538 (= b_free!16095 (not b_next!16095))))

(declare-fun tp!56548 () Bool)

(declare-fun b_and!26479 () Bool)

(assert (=> start!77538 (= tp!56548 b_and!26479)))

(declare-fun b!902981 () Bool)

(declare-fun res!609381 () Bool)

(declare-fun e!505912 () Bool)

(assert (=> b!902981 (=> (not res!609381) (not e!505912))))

(declare-datatypes ((array!53072 0))(
  ( (array!53073 (arr!25491 (Array (_ BitVec 32) (_ BitVec 64))) (size!25951 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53072)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53072 (_ BitVec 32)) Bool)

(assert (=> b!902981 (= res!609381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!902982 () Bool)

(declare-fun res!609379 () Bool)

(assert (=> b!902982 (=> (not res!609379) (not e!505912))))

(declare-datatypes ((List!17984 0))(
  ( (Nil!17981) (Cons!17980 (h!19126 (_ BitVec 64)) (t!25375 List!17984)) )
))
(declare-fun arrayNoDuplicates!0 (array!53072 (_ BitVec 32) List!17984) Bool)

(assert (=> b!902982 (= res!609379 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!17981))))

(declare-fun b!902983 () Bool)

(declare-fun e!505911 () Bool)

(declare-fun tp_is_empty!18513 () Bool)

(assert (=> b!902983 (= e!505911 tp_is_empty!18513)))

(declare-fun mapNonEmpty!29482 () Bool)

(declare-fun mapRes!29482 () Bool)

(declare-fun tp!56547 () Bool)

(declare-fun e!505909 () Bool)

(assert (=> mapNonEmpty!29482 (= mapRes!29482 (and tp!56547 e!505909))))

(declare-datatypes ((V!29649 0))(
  ( (V!29650 (val!9307 Int)) )
))
(declare-datatypes ((ValueCell!8775 0))(
  ( (ValueCellFull!8775 (v!11812 V!29649)) (EmptyCell!8775) )
))
(declare-datatypes ((array!53074 0))(
  ( (array!53075 (arr!25492 (Array (_ BitVec 32) ValueCell!8775)) (size!25952 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53074)

(declare-fun mapKey!29482 () (_ BitVec 32))

(declare-fun mapValue!29482 () ValueCell!8775)

(declare-fun mapRest!29482 () (Array (_ BitVec 32) ValueCell!8775))

(assert (=> mapNonEmpty!29482 (= (arr!25492 _values!1152) (store mapRest!29482 mapKey!29482 mapValue!29482))))

(declare-fun b!902984 () Bool)

(assert (=> b!902984 (= e!505912 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29649)

(declare-fun lt!407909 () Bool)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29649)

(declare-datatypes ((tuple2!12106 0))(
  ( (tuple2!12107 (_1!6063 (_ BitVec 64)) (_2!6063 V!29649)) )
))
(declare-datatypes ((List!17985 0))(
  ( (Nil!17982) (Cons!17981 (h!19127 tuple2!12106) (t!25376 List!17985)) )
))
(declare-datatypes ((ListLongMap!10817 0))(
  ( (ListLongMap!10818 (toList!5424 List!17985)) )
))
(declare-fun contains!4437 (ListLongMap!10817 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2661 (array!53072 array!53074 (_ BitVec 32) (_ BitVec 32) V!29649 V!29649 (_ BitVec 32) Int) ListLongMap!10817)

(assert (=> b!902984 (= lt!407909 (contains!4437 (getCurrentListMap!2661 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun mapIsEmpty!29482 () Bool)

(assert (=> mapIsEmpty!29482 mapRes!29482))

(declare-fun res!609380 () Bool)

(assert (=> start!77538 (=> (not res!609380) (not e!505912))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77538 (= res!609380 (validMask!0 mask!1756))))

(assert (=> start!77538 e!505912))

(declare-fun e!505913 () Bool)

(declare-fun array_inv!19958 (array!53074) Bool)

(assert (=> start!77538 (and (array_inv!19958 _values!1152) e!505913)))

(assert (=> start!77538 tp!56548))

(assert (=> start!77538 true))

(assert (=> start!77538 tp_is_empty!18513))

(declare-fun array_inv!19959 (array!53072) Bool)

(assert (=> start!77538 (array_inv!19959 _keys!1386)))

(declare-fun b!902985 () Bool)

(assert (=> b!902985 (= e!505913 (and e!505911 mapRes!29482))))

(declare-fun condMapEmpty!29482 () Bool)

(declare-fun mapDefault!29482 () ValueCell!8775)

(assert (=> b!902985 (= condMapEmpty!29482 (= (arr!25492 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8775)) mapDefault!29482)))))

(declare-fun b!902986 () Bool)

(assert (=> b!902986 (= e!505909 tp_is_empty!18513)))

(declare-fun b!902987 () Bool)

(declare-fun res!609378 () Bool)

(assert (=> b!902987 (=> (not res!609378) (not e!505912))))

(assert (=> b!902987 (= res!609378 (and (= (size!25952 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25951 _keys!1386) (size!25952 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(assert (= (and start!77538 res!609380) b!902987))

(assert (= (and b!902987 res!609378) b!902981))

(assert (= (and b!902981 res!609381) b!902982))

(assert (= (and b!902982 res!609379) b!902984))

(assert (= (and b!902985 condMapEmpty!29482) mapIsEmpty!29482))

(assert (= (and b!902985 (not condMapEmpty!29482)) mapNonEmpty!29482))

(get-info :version)

(assert (= (and mapNonEmpty!29482 ((_ is ValueCellFull!8775) mapValue!29482)) b!902986))

(assert (= (and b!902985 ((_ is ValueCellFull!8775) mapDefault!29482)) b!902983))

(assert (= start!77538 b!902985))

(declare-fun m!838845 () Bool)

(assert (=> mapNonEmpty!29482 m!838845))

(declare-fun m!838847 () Bool)

(assert (=> start!77538 m!838847))

(declare-fun m!838849 () Bool)

(assert (=> start!77538 m!838849))

(declare-fun m!838851 () Bool)

(assert (=> start!77538 m!838851))

(declare-fun m!838853 () Bool)

(assert (=> b!902981 m!838853))

(declare-fun m!838855 () Bool)

(assert (=> b!902984 m!838855))

(assert (=> b!902984 m!838855))

(declare-fun m!838857 () Bool)

(assert (=> b!902984 m!838857))

(declare-fun m!838859 () Bool)

(assert (=> b!902982 m!838859))

(check-sat (not b!902981) (not b_next!16095) (not start!77538) (not b!902982) b_and!26479 tp_is_empty!18513 (not b!902984) (not mapNonEmpty!29482))
(check-sat b_and!26479 (not b_next!16095))
