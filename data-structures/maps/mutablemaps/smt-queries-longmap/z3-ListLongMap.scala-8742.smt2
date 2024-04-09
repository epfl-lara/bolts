; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106092 () Bool)

(assert start!106092)

(declare-fun b_free!27489 () Bool)

(declare-fun b_next!27489 () Bool)

(assert (=> start!106092 (= b_free!27489 (not b_next!27489))))

(declare-fun tp!96017 () Bool)

(declare-fun b_and!45473 () Bool)

(assert (=> start!106092 (= tp!96017 b_and!45473)))

(declare-fun b!1262824 () Bool)

(declare-fun e!718931 () Bool)

(declare-datatypes ((V!48553 0))(
  ( (V!48554 (val!16258 Int)) )
))
(declare-datatypes ((tuple2!21190 0))(
  ( (tuple2!21191 (_1!10605 (_ BitVec 64)) (_2!10605 V!48553)) )
))
(declare-datatypes ((List!28410 0))(
  ( (Nil!28407) (Cons!28406 (h!29615 tuple2!21190) (t!41928 List!28410)) )
))
(declare-datatypes ((ListLongMap!19075 0))(
  ( (ListLongMap!19076 (toList!9553 List!28410)) )
))
(declare-fun lt!572547 () ListLongMap!19075)

(declare-fun lt!572552 () ListLongMap!19075)

(declare-fun -!2145 (ListLongMap!19075 (_ BitVec 64)) ListLongMap!19075)

(assert (=> b!1262824 (= e!718931 (= (-!2145 lt!572547 #b1000000000000000000000000000000000000000000000000000000000000000) lt!572552))))

(declare-fun lt!572549 () ListLongMap!19075)

(declare-fun lt!572551 () ListLongMap!19075)

(assert (=> b!1262824 (= (-!2145 lt!572549 #b1000000000000000000000000000000000000000000000000000000000000000) lt!572551)))

(declare-datatypes ((Unit!42043 0))(
  ( (Unit!42044) )
))
(declare-fun lt!572548 () Unit!42043)

(declare-fun minValueBefore!43 () V!48553)

(declare-fun addThenRemoveForNewKeyIsSame!368 (ListLongMap!19075 (_ BitVec 64) V!48553) Unit!42043)

(assert (=> b!1262824 (= lt!572548 (addThenRemoveForNewKeyIsSame!368 lt!572551 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!572550 () ListLongMap!19075)

(assert (=> b!1262824 (and (= lt!572547 lt!572549) (= lt!572552 lt!572550))))

(declare-fun +!4221 (ListLongMap!19075 tuple2!21190) ListLongMap!19075)

(assert (=> b!1262824 (= lt!572549 (+!4221 lt!572551 (tuple2!21191 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48553)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48553)

(declare-datatypes ((array!82387 0))(
  ( (array!82388 (arr!39736 (Array (_ BitVec 32) (_ BitVec 64))) (size!40273 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82387)

(declare-datatypes ((ValueCell!15432 0))(
  ( (ValueCellFull!15432 (v!18967 V!48553)) (EmptyCell!15432) )
))
(declare-datatypes ((array!82389 0))(
  ( (array!82390 (arr!39737 (Array (_ BitVec 32) ValueCell!15432)) (size!40274 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82389)

(declare-fun getCurrentListMap!4658 (array!82387 array!82389 (_ BitVec 32) (_ BitVec 32) V!48553 V!48553 (_ BitVec 32) Int) ListLongMap!19075)

(assert (=> b!1262824 (= lt!572552 (getCurrentListMap!4658 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1262824 (= lt!572547 (getCurrentListMap!4658 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1262825 () Bool)

(declare-fun e!718928 () Bool)

(declare-fun tp_is_empty!32391 () Bool)

(assert (=> b!1262825 (= e!718928 tp_is_empty!32391)))

(declare-fun b!1262826 () Bool)

(declare-fun res!841319 () Bool)

(declare-fun e!718930 () Bool)

(assert (=> b!1262826 (=> (not res!841319) (not e!718930))))

(assert (=> b!1262826 (= res!841319 (and (= (size!40274 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40273 _keys!1118) (size!40274 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!50407 () Bool)

(declare-fun mapRes!50407 () Bool)

(assert (=> mapIsEmpty!50407 mapRes!50407))

(declare-fun b!1262827 () Bool)

(declare-fun res!841321 () Bool)

(assert (=> b!1262827 (=> (not res!841321) (not e!718930))))

(declare-datatypes ((List!28411 0))(
  ( (Nil!28408) (Cons!28407 (h!29616 (_ BitVec 64)) (t!41929 List!28411)) )
))
(declare-fun arrayNoDuplicates!0 (array!82387 (_ BitVec 32) List!28411) Bool)

(assert (=> b!1262827 (= res!841321 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28408))))

(declare-fun res!841320 () Bool)

(assert (=> start!106092 (=> (not res!841320) (not e!718930))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106092 (= res!841320 (validMask!0 mask!1466))))

(assert (=> start!106092 e!718930))

(assert (=> start!106092 true))

(assert (=> start!106092 tp!96017))

(assert (=> start!106092 tp_is_empty!32391))

(declare-fun array_inv!30199 (array!82387) Bool)

(assert (=> start!106092 (array_inv!30199 _keys!1118)))

(declare-fun e!718929 () Bool)

(declare-fun array_inv!30200 (array!82389) Bool)

(assert (=> start!106092 (and (array_inv!30200 _values!914) e!718929)))

(declare-fun b!1262828 () Bool)

(assert (=> b!1262828 (= e!718929 (and e!718928 mapRes!50407))))

(declare-fun condMapEmpty!50407 () Bool)

(declare-fun mapDefault!50407 () ValueCell!15432)

(assert (=> b!1262828 (= condMapEmpty!50407 (= (arr!39737 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15432)) mapDefault!50407)))))

(declare-fun b!1262829 () Bool)

(declare-fun e!718926 () Bool)

(assert (=> b!1262829 (= e!718926 tp_is_empty!32391)))

(declare-fun mapNonEmpty!50407 () Bool)

(declare-fun tp!96018 () Bool)

(assert (=> mapNonEmpty!50407 (= mapRes!50407 (and tp!96018 e!718926))))

(declare-fun mapRest!50407 () (Array (_ BitVec 32) ValueCell!15432))

(declare-fun mapKey!50407 () (_ BitVec 32))

(declare-fun mapValue!50407 () ValueCell!15432)

(assert (=> mapNonEmpty!50407 (= (arr!39737 _values!914) (store mapRest!50407 mapKey!50407 mapValue!50407))))

(declare-fun b!1262830 () Bool)

(declare-fun res!841317 () Bool)

(assert (=> b!1262830 (=> (not res!841317) (not e!718930))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82387 (_ BitVec 32)) Bool)

(assert (=> b!1262830 (= res!841317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1262831 () Bool)

(assert (=> b!1262831 (= e!718930 (not e!718931))))

(declare-fun res!841318 () Bool)

(assert (=> b!1262831 (=> res!841318 e!718931)))

(assert (=> b!1262831 (= res!841318 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1262831 (= lt!572551 lt!572550)))

(declare-fun lt!572553 () Unit!42043)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1189 (array!82387 array!82389 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48553 V!48553 V!48553 V!48553 (_ BitVec 32) Int) Unit!42043)

(assert (=> b!1262831 (= lt!572553 (lemmaNoChangeToArrayThenSameMapNoExtras!1189 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5893 (array!82387 array!82389 (_ BitVec 32) (_ BitVec 32) V!48553 V!48553 (_ BitVec 32) Int) ListLongMap!19075)

(assert (=> b!1262831 (= lt!572550 (getCurrentListMapNoExtraKeys!5893 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1262831 (= lt!572551 (getCurrentListMapNoExtraKeys!5893 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!106092 res!841320) b!1262826))

(assert (= (and b!1262826 res!841319) b!1262830))

(assert (= (and b!1262830 res!841317) b!1262827))

(assert (= (and b!1262827 res!841321) b!1262831))

(assert (= (and b!1262831 (not res!841318)) b!1262824))

(assert (= (and b!1262828 condMapEmpty!50407) mapIsEmpty!50407))

(assert (= (and b!1262828 (not condMapEmpty!50407)) mapNonEmpty!50407))

(get-info :version)

(assert (= (and mapNonEmpty!50407 ((_ is ValueCellFull!15432) mapValue!50407)) b!1262829))

(assert (= (and b!1262828 ((_ is ValueCellFull!15432) mapDefault!50407)) b!1262825))

(assert (= start!106092 b!1262828))

(declare-fun m!1163367 () Bool)

(assert (=> start!106092 m!1163367))

(declare-fun m!1163369 () Bool)

(assert (=> start!106092 m!1163369))

(declare-fun m!1163371 () Bool)

(assert (=> start!106092 m!1163371))

(declare-fun m!1163373 () Bool)

(assert (=> b!1262830 m!1163373))

(declare-fun m!1163375 () Bool)

(assert (=> b!1262824 m!1163375))

(declare-fun m!1163377 () Bool)

(assert (=> b!1262824 m!1163377))

(declare-fun m!1163379 () Bool)

(assert (=> b!1262824 m!1163379))

(declare-fun m!1163381 () Bool)

(assert (=> b!1262824 m!1163381))

(declare-fun m!1163383 () Bool)

(assert (=> b!1262824 m!1163383))

(declare-fun m!1163385 () Bool)

(assert (=> b!1262824 m!1163385))

(declare-fun m!1163387 () Bool)

(assert (=> b!1262827 m!1163387))

(declare-fun m!1163389 () Bool)

(assert (=> mapNonEmpty!50407 m!1163389))

(declare-fun m!1163391 () Bool)

(assert (=> b!1262831 m!1163391))

(declare-fun m!1163393 () Bool)

(assert (=> b!1262831 m!1163393))

(declare-fun m!1163395 () Bool)

(assert (=> b!1262831 m!1163395))

(check-sat (not mapNonEmpty!50407) (not b_next!27489) b_and!45473 tp_is_empty!32391 (not b!1262827) (not start!106092) (not b!1262824) (not b!1262831) (not b!1262830))
(check-sat b_and!45473 (not b_next!27489))
