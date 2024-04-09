; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105890 () Bool)

(assert start!105890)

(declare-fun b_free!27395 () Bool)

(declare-fun b_next!27395 () Bool)

(assert (=> start!105890 (= b_free!27395 (not b_next!27395))))

(declare-fun tp!95717 () Bool)

(declare-fun b_and!45313 () Bool)

(assert (=> start!105890 (= tp!95717 b_and!45313)))

(declare-fun b!1260797 () Bool)

(declare-fun res!840285 () Bool)

(declare-fun e!717531 () Bool)

(assert (=> b!1260797 (=> (not res!840285) (not e!717531))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82199 0))(
  ( (array!82200 (arr!39648 (Array (_ BitVec 32) (_ BitVec 64))) (size!40185 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82199)

(declare-datatypes ((V!48427 0))(
  ( (V!48428 (val!16211 Int)) )
))
(declare-datatypes ((ValueCell!15385 0))(
  ( (ValueCellFull!15385 (v!18915 V!48427)) (EmptyCell!15385) )
))
(declare-datatypes ((array!82201 0))(
  ( (array!82202 (arr!39649 (Array (_ BitVec 32) ValueCell!15385)) (size!40186 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82201)

(assert (=> b!1260797 (= res!840285 (and (= (size!40186 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40185 _keys!1118) (size!40186 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!840284 () Bool)

(assert (=> start!105890 (=> (not res!840284) (not e!717531))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105890 (= res!840284 (validMask!0 mask!1466))))

(assert (=> start!105890 e!717531))

(assert (=> start!105890 true))

(assert (=> start!105890 tp!95717))

(declare-fun tp_is_empty!32297 () Bool)

(assert (=> start!105890 tp_is_empty!32297))

(declare-fun array_inv!30135 (array!82199) Bool)

(assert (=> start!105890 (array_inv!30135 _keys!1118)))

(declare-fun e!717532 () Bool)

(declare-fun array_inv!30136 (array!82201) Bool)

(assert (=> start!105890 (and (array_inv!30136 _values!914) e!717532)))

(declare-fun b!1260798 () Bool)

(declare-fun res!840283 () Bool)

(assert (=> b!1260798 (=> (not res!840283) (not e!717531))))

(declare-datatypes ((List!28344 0))(
  ( (Nil!28341) (Cons!28340 (h!29549 (_ BitVec 64)) (t!41850 List!28344)) )
))
(declare-fun arrayNoDuplicates!0 (array!82199 (_ BitVec 32) List!28344) Bool)

(assert (=> b!1260798 (= res!840283 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28341))))

(declare-fun b!1260799 () Bool)

(declare-fun e!717535 () Bool)

(assert (=> b!1260799 (= e!717535 tp_is_empty!32297)))

(declare-fun mapNonEmpty!50248 () Bool)

(declare-fun mapRes!50248 () Bool)

(declare-fun tp!95718 () Bool)

(assert (=> mapNonEmpty!50248 (= mapRes!50248 (and tp!95718 e!717535))))

(declare-fun mapRest!50248 () (Array (_ BitVec 32) ValueCell!15385))

(declare-fun mapValue!50248 () ValueCell!15385)

(declare-fun mapKey!50248 () (_ BitVec 32))

(assert (=> mapNonEmpty!50248 (= (arr!39649 _values!914) (store mapRest!50248 mapKey!50248 mapValue!50248))))

(declare-fun b!1260800 () Bool)

(assert (=> b!1260800 (= e!717531 false)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48427)

(declare-fun zeroValue!871 () V!48427)

(declare-datatypes ((tuple2!21122 0))(
  ( (tuple2!21123 (_1!10571 (_ BitVec 64)) (_2!10571 V!48427)) )
))
(declare-datatypes ((List!28345 0))(
  ( (Nil!28342) (Cons!28341 (h!29550 tuple2!21122) (t!41851 List!28345)) )
))
(declare-datatypes ((ListLongMap!19007 0))(
  ( (ListLongMap!19008 (toList!9519 List!28345)) )
))
(declare-fun lt!571409 () ListLongMap!19007)

(declare-fun getCurrentListMapNoExtraKeys!5860 (array!82199 array!82201 (_ BitVec 32) (_ BitVec 32) V!48427 V!48427 (_ BitVec 32) Int) ListLongMap!19007)

(assert (=> b!1260800 (= lt!571409 (getCurrentListMapNoExtraKeys!5860 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571408 () ListLongMap!19007)

(declare-fun minValueBefore!43 () V!48427)

(assert (=> b!1260800 (= lt!571408 (getCurrentListMapNoExtraKeys!5860 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1260801 () Bool)

(declare-fun res!840286 () Bool)

(assert (=> b!1260801 (=> (not res!840286) (not e!717531))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82199 (_ BitVec 32)) Bool)

(assert (=> b!1260801 (= res!840286 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1260802 () Bool)

(declare-fun e!717533 () Bool)

(assert (=> b!1260802 (= e!717532 (and e!717533 mapRes!50248))))

(declare-fun condMapEmpty!50248 () Bool)

(declare-fun mapDefault!50248 () ValueCell!15385)

