; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106044 () Bool)

(assert start!106044)

(declare-fun b_free!27479 () Bool)

(declare-fun b_next!27479 () Bool)

(assert (=> start!106044 (= b_free!27479 (not b_next!27479))))

(declare-fun tp!95981 () Bool)

(declare-fun b_and!45439 () Bool)

(assert (=> start!106044 (= tp!95981 b_and!45439)))

(declare-fun b!1262334 () Bool)

(declare-fun e!718606 () Bool)

(declare-fun e!718600 () Bool)

(assert (=> b!1262334 (= e!718606 e!718600)))

(declare-fun res!841085 () Bool)

(assert (=> b!1262334 (=> res!841085 e!718600)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1262334 (= res!841085 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1262335 () Bool)

(declare-fun e!718605 () Bool)

(declare-fun tp_is_empty!32381 () Bool)

(assert (=> b!1262335 (= e!718605 tp_is_empty!32381)))

(declare-fun mapIsEmpty!50386 () Bool)

(declare-fun mapRes!50386 () Bool)

(assert (=> mapIsEmpty!50386 mapRes!50386))

(declare-fun res!841083 () Bool)

(declare-fun e!718601 () Bool)

(assert (=> start!106044 (=> (not res!841083) (not e!718601))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106044 (= res!841083 (validMask!0 mask!1466))))

(assert (=> start!106044 e!718601))

(assert (=> start!106044 true))

(assert (=> start!106044 tp!95981))

(assert (=> start!106044 tp_is_empty!32381))

(declare-datatypes ((array!82365 0))(
  ( (array!82366 (arr!39727 (Array (_ BitVec 32) (_ BitVec 64))) (size!40264 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82365)

(declare-fun array_inv!30193 (array!82365) Bool)

(assert (=> start!106044 (array_inv!30193 _keys!1118)))

(declare-datatypes ((V!48539 0))(
  ( (V!48540 (val!16253 Int)) )
))
(declare-datatypes ((ValueCell!15427 0))(
  ( (ValueCellFull!15427 (v!18960 V!48539)) (EmptyCell!15427) )
))
(declare-datatypes ((array!82367 0))(
  ( (array!82368 (arr!39728 (Array (_ BitVec 32) ValueCell!15427)) (size!40265 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82367)

(declare-fun e!718604 () Bool)

(declare-fun array_inv!30194 (array!82367) Bool)

(assert (=> start!106044 (and (array_inv!30194 _values!914) e!718604)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48539)

(declare-datatypes ((tuple2!21182 0))(
  ( (tuple2!21183 (_1!10601 (_ BitVec 64)) (_2!10601 V!48539)) )
))
(declare-datatypes ((List!28404 0))(
  ( (Nil!28401) (Cons!28400 (h!29609 tuple2!21182) (t!41918 List!28404)) )
))
(declare-datatypes ((ListLongMap!19067 0))(
  ( (ListLongMap!19068 (toList!9549 List!28404)) )
))
(declare-fun lt!572174 () ListLongMap!19067)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48539)

(declare-fun e!718599 () Bool)

(declare-fun b!1262336 () Bool)

(declare-fun getCurrentListMap!4654 (array!82365 array!82367 (_ BitVec 32) (_ BitVec 32) V!48539 V!48539 (_ BitVec 32) Int) ListLongMap!19067)

(assert (=> b!1262336 (= e!718599 (= (getCurrentListMap!4654 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!572174))))

(declare-fun b!1262337 () Bool)

(assert (=> b!1262337 (= e!718601 (not e!718599))))

(declare-fun res!841084 () Bool)

(assert (=> b!1262337 (=> res!841084 e!718599)))

(assert (=> b!1262337 (= res!841084 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1262337 e!718606))

(declare-fun res!841082 () Bool)

(assert (=> b!1262337 (=> (not res!841082) (not e!718606))))

(declare-fun lt!572172 () ListLongMap!19067)

(assert (=> b!1262337 (= res!841082 (= lt!572172 lt!572174))))

(declare-fun minValueBefore!43 () V!48539)

(declare-datatypes ((Unit!42030 0))(
  ( (Unit!42031) )
))
(declare-fun lt!572173 () Unit!42030)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1185 (array!82365 array!82367 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48539 V!48539 V!48539 V!48539 (_ BitVec 32) Int) Unit!42030)

(assert (=> b!1262337 (= lt!572173 (lemmaNoChangeToArrayThenSameMapNoExtras!1185 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5889 (array!82365 array!82367 (_ BitVec 32) (_ BitVec 32) V!48539 V!48539 (_ BitVec 32) Int) ListLongMap!19067)

(assert (=> b!1262337 (= lt!572174 (getCurrentListMapNoExtraKeys!5889 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1262337 (= lt!572172 (getCurrentListMapNoExtraKeys!5889 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1262338 () Bool)

(declare-fun res!841086 () Bool)

(assert (=> b!1262338 (=> (not res!841086) (not e!718601))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82365 (_ BitVec 32)) Bool)

(assert (=> b!1262338 (= res!841086 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1262339 () Bool)

(declare-fun +!4217 (ListLongMap!19067 tuple2!21182) ListLongMap!19067)

(assert (=> b!1262339 (= e!718600 (= (getCurrentListMap!4654 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (+!4217 lt!572172 (tuple2!21183 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun b!1262340 () Bool)

(declare-fun res!841087 () Bool)

(assert (=> b!1262340 (=> (not res!841087) (not e!718601))))

(assert (=> b!1262340 (= res!841087 (and (= (size!40265 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40264 _keys!1118) (size!40265 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!50386 () Bool)

(declare-fun tp!95982 () Bool)

(assert (=> mapNonEmpty!50386 (= mapRes!50386 (and tp!95982 e!718605))))

(declare-fun mapValue!50386 () ValueCell!15427)

(declare-fun mapKey!50386 () (_ BitVec 32))

(declare-fun mapRest!50386 () (Array (_ BitVec 32) ValueCell!15427))

(assert (=> mapNonEmpty!50386 (= (arr!39728 _values!914) (store mapRest!50386 mapKey!50386 mapValue!50386))))

(declare-fun b!1262341 () Bool)

(declare-fun e!718603 () Bool)

(assert (=> b!1262341 (= e!718603 tp_is_empty!32381)))

(declare-fun b!1262342 () Bool)

(assert (=> b!1262342 (= e!718604 (and e!718603 mapRes!50386))))

(declare-fun condMapEmpty!50386 () Bool)

(declare-fun mapDefault!50386 () ValueCell!15427)

