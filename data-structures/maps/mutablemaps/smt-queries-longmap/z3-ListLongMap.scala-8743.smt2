; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106098 () Bool)

(assert start!106098)

(declare-fun b_free!27495 () Bool)

(declare-fun b_next!27495 () Bool)

(assert (=> start!106098 (= b_free!27495 (not b_next!27495))))

(declare-fun tp!96036 () Bool)

(declare-fun b_and!45479 () Bool)

(assert (=> start!106098 (= tp!96036 b_and!45479)))

(declare-fun b!1262896 () Bool)

(declare-fun e!718985 () Bool)

(declare-fun tp_is_empty!32397 () Bool)

(assert (=> b!1262896 (= e!718985 tp_is_empty!32397)))

(declare-fun b!1262897 () Bool)

(declare-fun res!841363 () Bool)

(declare-fun e!718984 () Bool)

(assert (=> b!1262897 (=> (not res!841363) (not e!718984))))

(declare-datatypes ((array!82399 0))(
  ( (array!82400 (arr!39742 (Array (_ BitVec 32) (_ BitVec 64))) (size!40279 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82399)

(declare-datatypes ((List!28415 0))(
  ( (Nil!28412) (Cons!28411 (h!29620 (_ BitVec 64)) (t!41933 List!28415)) )
))
(declare-fun arrayNoDuplicates!0 (array!82399 (_ BitVec 32) List!28415) Bool)

(assert (=> b!1262897 (= res!841363 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28412))))

(declare-fun b!1262898 () Bool)

(declare-fun e!718982 () Bool)

(declare-fun mapRes!50416 () Bool)

(assert (=> b!1262898 (= e!718982 (and e!718985 mapRes!50416))))

(declare-fun condMapEmpty!50416 () Bool)

(declare-datatypes ((V!48561 0))(
  ( (V!48562 (val!16261 Int)) )
))
(declare-datatypes ((ValueCell!15435 0))(
  ( (ValueCellFull!15435 (v!18970 V!48561)) (EmptyCell!15435) )
))
(declare-datatypes ((array!82401 0))(
  ( (array!82402 (arr!39743 (Array (_ BitVec 32) ValueCell!15435)) (size!40280 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82401)

(declare-fun mapDefault!50416 () ValueCell!15435)

(assert (=> b!1262898 (= condMapEmpty!50416 (= (arr!39743 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15435)) mapDefault!50416)))))

(declare-fun b!1262899 () Bool)

(declare-fun res!841366 () Bool)

(assert (=> b!1262899 (=> (not res!841366) (not e!718984))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1262899 (= res!841366 (and (= (size!40280 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40279 _keys!1118) (size!40280 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1262900 () Bool)

(declare-fun e!718983 () Bool)

(assert (=> b!1262900 (= e!718983 true)))

(declare-datatypes ((tuple2!21194 0))(
  ( (tuple2!21195 (_1!10607 (_ BitVec 64)) (_2!10607 V!48561)) )
))
(declare-datatypes ((List!28416 0))(
  ( (Nil!28413) (Cons!28412 (h!29621 tuple2!21194) (t!41934 List!28416)) )
))
(declare-datatypes ((ListLongMap!19079 0))(
  ( (ListLongMap!19080 (toList!9555 List!28416)) )
))
(declare-fun lt!572620 () ListLongMap!19079)

(declare-fun lt!572617 () ListLongMap!19079)

(declare-fun -!2147 (ListLongMap!19079 (_ BitVec 64)) ListLongMap!19079)

(assert (=> b!1262900 (= lt!572620 (-!2147 lt!572617 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!572622 () ListLongMap!19079)

(declare-fun lt!572616 () ListLongMap!19079)

(assert (=> b!1262900 (= (-!2147 lt!572622 #b1000000000000000000000000000000000000000000000000000000000000000) lt!572616)))

(declare-datatypes ((Unit!42047 0))(
  ( (Unit!42048) )
))
(declare-fun lt!572618 () Unit!42047)

(declare-fun minValueBefore!43 () V!48561)

(declare-fun addThenRemoveForNewKeyIsSame!370 (ListLongMap!19079 (_ BitVec 64) V!48561) Unit!42047)

(assert (=> b!1262900 (= lt!572618 (addThenRemoveForNewKeyIsSame!370 lt!572616 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!572615 () ListLongMap!19079)

(declare-fun lt!572619 () ListLongMap!19079)

(assert (=> b!1262900 (and (= lt!572617 lt!572622) (= lt!572619 lt!572615))))

(declare-fun +!4223 (ListLongMap!19079 tuple2!21194) ListLongMap!19079)

(assert (=> b!1262900 (= lt!572622 (+!4223 lt!572616 (tuple2!21195 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48561)

(declare-fun zeroValue!871 () V!48561)

(declare-fun getCurrentListMap!4660 (array!82399 array!82401 (_ BitVec 32) (_ BitVec 32) V!48561 V!48561 (_ BitVec 32) Int) ListLongMap!19079)

(assert (=> b!1262900 (= lt!572619 (getCurrentListMap!4660 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1262900 (= lt!572617 (getCurrentListMap!4660 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!50416 () Bool)

(declare-fun tp!96035 () Bool)

(declare-fun e!718981 () Bool)

(assert (=> mapNonEmpty!50416 (= mapRes!50416 (and tp!96035 e!718981))))

(declare-fun mapValue!50416 () ValueCell!15435)

(declare-fun mapKey!50416 () (_ BitVec 32))

(declare-fun mapRest!50416 () (Array (_ BitVec 32) ValueCell!15435))

(assert (=> mapNonEmpty!50416 (= (arr!39743 _values!914) (store mapRest!50416 mapKey!50416 mapValue!50416))))

(declare-fun res!841362 () Bool)

(assert (=> start!106098 (=> (not res!841362) (not e!718984))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106098 (= res!841362 (validMask!0 mask!1466))))

(assert (=> start!106098 e!718984))

(assert (=> start!106098 true))

(assert (=> start!106098 tp!96036))

(assert (=> start!106098 tp_is_empty!32397))

(declare-fun array_inv!30205 (array!82399) Bool)

(assert (=> start!106098 (array_inv!30205 _keys!1118)))

(declare-fun array_inv!30206 (array!82401) Bool)

(assert (=> start!106098 (and (array_inv!30206 _values!914) e!718982)))

(declare-fun b!1262901 () Bool)

(declare-fun res!841364 () Bool)

(assert (=> b!1262901 (=> (not res!841364) (not e!718984))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82399 (_ BitVec 32)) Bool)

(assert (=> b!1262901 (= res!841364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!50416 () Bool)

(assert (=> mapIsEmpty!50416 mapRes!50416))

(declare-fun b!1262902 () Bool)

(assert (=> b!1262902 (= e!718981 tp_is_empty!32397)))

(declare-fun b!1262903 () Bool)

(assert (=> b!1262903 (= e!718984 (not e!718983))))

(declare-fun res!841365 () Bool)

(assert (=> b!1262903 (=> res!841365 e!718983)))

(assert (=> b!1262903 (= res!841365 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1262903 (= lt!572616 lt!572615)))

(declare-fun lt!572621 () Unit!42047)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1191 (array!82399 array!82401 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48561 V!48561 V!48561 V!48561 (_ BitVec 32) Int) Unit!42047)

(assert (=> b!1262903 (= lt!572621 (lemmaNoChangeToArrayThenSameMapNoExtras!1191 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5895 (array!82399 array!82401 (_ BitVec 32) (_ BitVec 32) V!48561 V!48561 (_ BitVec 32) Int) ListLongMap!19079)

(assert (=> b!1262903 (= lt!572615 (getCurrentListMapNoExtraKeys!5895 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1262903 (= lt!572616 (getCurrentListMapNoExtraKeys!5895 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!106098 res!841362) b!1262899))

(assert (= (and b!1262899 res!841366) b!1262901))

(assert (= (and b!1262901 res!841364) b!1262897))

(assert (= (and b!1262897 res!841363) b!1262903))

(assert (= (and b!1262903 (not res!841365)) b!1262900))

(assert (= (and b!1262898 condMapEmpty!50416) mapIsEmpty!50416))

(assert (= (and b!1262898 (not condMapEmpty!50416)) mapNonEmpty!50416))

(get-info :version)

(assert (= (and mapNonEmpty!50416 ((_ is ValueCellFull!15435) mapValue!50416)) b!1262902))

(assert (= (and b!1262898 ((_ is ValueCellFull!15435) mapDefault!50416)) b!1262896))

(assert (= start!106098 b!1262898))

(declare-fun m!1163457 () Bool)

(assert (=> b!1262901 m!1163457))

(declare-fun m!1163459 () Bool)

(assert (=> b!1262900 m!1163459))

(declare-fun m!1163461 () Bool)

(assert (=> b!1262900 m!1163461))

(declare-fun m!1163463 () Bool)

(assert (=> b!1262900 m!1163463))

(declare-fun m!1163465 () Bool)

(assert (=> b!1262900 m!1163465))

(declare-fun m!1163467 () Bool)

(assert (=> b!1262900 m!1163467))

(declare-fun m!1163469 () Bool)

(assert (=> b!1262900 m!1163469))

(declare-fun m!1163471 () Bool)

(assert (=> b!1262897 m!1163471))

(declare-fun m!1163473 () Bool)

(assert (=> b!1262903 m!1163473))

(declare-fun m!1163475 () Bool)

(assert (=> b!1262903 m!1163475))

(declare-fun m!1163477 () Bool)

(assert (=> b!1262903 m!1163477))

(declare-fun m!1163479 () Bool)

(assert (=> mapNonEmpty!50416 m!1163479))

(declare-fun m!1163481 () Bool)

(assert (=> start!106098 m!1163481))

(declare-fun m!1163483 () Bool)

(assert (=> start!106098 m!1163483))

(declare-fun m!1163485 () Bool)

(assert (=> start!106098 m!1163485))

(check-sat b_and!45479 (not b!1262900) tp_is_empty!32397 (not b_next!27495) (not b!1262903) (not start!106098) (not b!1262901) (not b!1262897) (not mapNonEmpty!50416))
(check-sat b_and!45479 (not b_next!27495))
