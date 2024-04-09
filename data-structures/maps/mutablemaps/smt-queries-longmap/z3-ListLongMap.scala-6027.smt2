; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78076 () Bool)

(assert start!78076)

(declare-fun b_free!16575 () Bool)

(declare-fun b_next!16575 () Bool)

(assert (=> start!78076 (= b_free!16575 (not b_next!16575))))

(declare-fun tp!57997 () Bool)

(declare-fun b_and!27165 () Bool)

(assert (=> start!78076 (= tp!57997 b_and!27165)))

(declare-fun b!910902 () Bool)

(declare-fun res!614727 () Bool)

(declare-fun e!510848 () Bool)

(assert (=> b!910902 (=> (not res!614727) (not e!510848))))

(declare-datatypes ((V!30289 0))(
  ( (V!30290 (val!9547 Int)) )
))
(declare-datatypes ((ValueCell!9015 0))(
  ( (ValueCellFull!9015 (v!12056 V!30289)) (EmptyCell!9015) )
))
(declare-datatypes ((array!53996 0))(
  ( (array!53997 (arr!25950 (Array (_ BitVec 32) ValueCell!9015)) (size!26410 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53996)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53998 0))(
  ( (array!53999 (arr!25951 (Array (_ BitVec 32) (_ BitVec 64))) (size!26411 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53998)

(assert (=> b!910902 (= res!614727 (and (= (size!26410 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26411 _keys!1386) (size!26410 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!910903 () Bool)

(declare-fun e!510845 () Bool)

(declare-fun tp_is_empty!18993 () Bool)

(assert (=> b!910903 (= e!510845 tp_is_empty!18993)))

(declare-fun b!910904 () Bool)

(assert (=> b!910904 (= e!510848 false)))

(declare-fun zeroValue!1094 () V!30289)

(declare-fun lt!410290 () Bool)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30289)

(declare-fun defaultEntry!1160 () Int)

(declare-datatypes ((tuple2!12482 0))(
  ( (tuple2!12483 (_1!6251 (_ BitVec 64)) (_2!6251 V!30289)) )
))
(declare-datatypes ((List!18332 0))(
  ( (Nil!18329) (Cons!18328 (h!19474 tuple2!12482) (t!25925 List!18332)) )
))
(declare-datatypes ((ListLongMap!11193 0))(
  ( (ListLongMap!11194 (toList!5612 List!18332)) )
))
(declare-fun contains!4621 (ListLongMap!11193 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2842 (array!53998 array!53996 (_ BitVec 32) (_ BitVec 32) V!30289 V!30289 (_ BitVec 32) Int) ListLongMap!11193)

(assert (=> b!910904 (= lt!410290 (contains!4621 (getCurrentListMap!2842 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!910905 () Bool)

(declare-fun e!510844 () Bool)

(declare-fun mapRes!30211 () Bool)

(assert (=> b!910905 (= e!510844 (and e!510845 mapRes!30211))))

(declare-fun condMapEmpty!30211 () Bool)

(declare-fun mapDefault!30211 () ValueCell!9015)

(assert (=> b!910905 (= condMapEmpty!30211 (= (arr!25950 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9015)) mapDefault!30211)))))

(declare-fun b!910906 () Bool)

(declare-fun e!510847 () Bool)

(assert (=> b!910906 (= e!510847 tp_is_empty!18993)))

(declare-fun b!910907 () Bool)

(declare-fun res!614726 () Bool)

(assert (=> b!910907 (=> (not res!614726) (not e!510848))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53998 (_ BitVec 32)) Bool)

(assert (=> b!910907 (= res!614726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapNonEmpty!30211 () Bool)

(declare-fun tp!57996 () Bool)

(assert (=> mapNonEmpty!30211 (= mapRes!30211 (and tp!57996 e!510847))))

(declare-fun mapValue!30211 () ValueCell!9015)

(declare-fun mapRest!30211 () (Array (_ BitVec 32) ValueCell!9015))

(declare-fun mapKey!30211 () (_ BitVec 32))

(assert (=> mapNonEmpty!30211 (= (arr!25950 _values!1152) (store mapRest!30211 mapKey!30211 mapValue!30211))))

(declare-fun res!614725 () Bool)

(assert (=> start!78076 (=> (not res!614725) (not e!510848))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78076 (= res!614725 (validMask!0 mask!1756))))

(assert (=> start!78076 e!510848))

(declare-fun array_inv!20272 (array!53996) Bool)

(assert (=> start!78076 (and (array_inv!20272 _values!1152) e!510844)))

(assert (=> start!78076 tp!57997))

(assert (=> start!78076 true))

(assert (=> start!78076 tp_is_empty!18993))

(declare-fun array_inv!20273 (array!53998) Bool)

(assert (=> start!78076 (array_inv!20273 _keys!1386)))

(declare-fun mapIsEmpty!30211 () Bool)

(assert (=> mapIsEmpty!30211 mapRes!30211))

(declare-fun b!910908 () Bool)

(declare-fun res!614728 () Bool)

(assert (=> b!910908 (=> (not res!614728) (not e!510848))))

(declare-datatypes ((List!18333 0))(
  ( (Nil!18330) (Cons!18329 (h!19475 (_ BitVec 64)) (t!25926 List!18333)) )
))
(declare-fun arrayNoDuplicates!0 (array!53998 (_ BitVec 32) List!18333) Bool)

(assert (=> b!910908 (= res!614728 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18330))))

(assert (= (and start!78076 res!614725) b!910902))

(assert (= (and b!910902 res!614727) b!910907))

(assert (= (and b!910907 res!614726) b!910908))

(assert (= (and b!910908 res!614728) b!910904))

(assert (= (and b!910905 condMapEmpty!30211) mapIsEmpty!30211))

(assert (= (and b!910905 (not condMapEmpty!30211)) mapNonEmpty!30211))

(get-info :version)

(assert (= (and mapNonEmpty!30211 ((_ is ValueCellFull!9015) mapValue!30211)) b!910906))

(assert (= (and b!910905 ((_ is ValueCellFull!9015) mapDefault!30211)) b!910903))

(assert (= start!78076 b!910905))

(declare-fun m!845861 () Bool)

(assert (=> b!910907 m!845861))

(declare-fun m!845863 () Bool)

(assert (=> mapNonEmpty!30211 m!845863))

(declare-fun m!845865 () Bool)

(assert (=> start!78076 m!845865))

(declare-fun m!845867 () Bool)

(assert (=> start!78076 m!845867))

(declare-fun m!845869 () Bool)

(assert (=> start!78076 m!845869))

(declare-fun m!845871 () Bool)

(assert (=> b!910904 m!845871))

(assert (=> b!910904 m!845871))

(declare-fun m!845873 () Bool)

(assert (=> b!910904 m!845873))

(declare-fun m!845875 () Bool)

(assert (=> b!910908 m!845875))

(check-sat (not start!78076) b_and!27165 (not b_next!16575) (not mapNonEmpty!30211) (not b!910908) tp_is_empty!18993 (not b!910907) (not b!910904))
(check-sat b_and!27165 (not b_next!16575))
