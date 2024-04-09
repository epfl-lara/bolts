; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105228 () Bool)

(assert start!105228)

(declare-fun b_free!26909 () Bool)

(declare-fun b_next!26909 () Bool)

(assert (=> start!105228 (= b_free!26909 (not b_next!26909))))

(declare-fun tp!94232 () Bool)

(declare-fun b_and!44733 () Bool)

(assert (=> start!105228 (= tp!94232 b_and!44733)))

(declare-fun b!1253435 () Bool)

(declare-fun res!835910 () Bool)

(declare-fun e!712123 () Bool)

(assert (=> b!1253435 (=> (not res!835910) (not e!712123))))

(declare-datatypes ((array!81263 0))(
  ( (array!81264 (arr!39189 (Array (_ BitVec 32) (_ BitVec 64))) (size!39726 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81263)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81263 (_ BitVec 32)) Bool)

(assert (=> b!1253435 (= res!835910 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1253436 () Bool)

(declare-fun res!835909 () Bool)

(assert (=> b!1253436 (=> (not res!835909) (not e!712123))))

(declare-datatypes ((List!28003 0))(
  ( (Nil!28000) (Cons!27999 (h!29208 (_ BitVec 64)) (t!41491 List!28003)) )
))
(declare-fun arrayNoDuplicates!0 (array!81263 (_ BitVec 32) List!28003) Bool)

(assert (=> b!1253436 (= res!835909 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28000))))

(declare-fun b!1253437 () Bool)

(declare-fun e!712119 () Bool)

(declare-fun tp_is_empty!31811 () Bool)

(assert (=> b!1253437 (= e!712119 tp_is_empty!31811)))

(declare-fun b!1253438 () Bool)

(declare-fun res!835908 () Bool)

(assert (=> b!1253438 (=> (not res!835908) (not e!712123))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!47779 0))(
  ( (V!47780 (val!15968 Int)) )
))
(declare-datatypes ((ValueCell!15142 0))(
  ( (ValueCellFull!15142 (v!18666 V!47779)) (EmptyCell!15142) )
))
(declare-datatypes ((array!81265 0))(
  ( (array!81266 (arr!39190 (Array (_ BitVec 32) ValueCell!15142)) (size!39727 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81265)

(assert (=> b!1253438 (= res!835908 (and (= (size!39727 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39726 _keys!1118) (size!39727 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!49492 () Bool)

(declare-fun mapRes!49492 () Bool)

(assert (=> mapIsEmpty!49492 mapRes!49492))

(declare-fun mapNonEmpty!49492 () Bool)

(declare-fun tp!94233 () Bool)

(assert (=> mapNonEmpty!49492 (= mapRes!49492 (and tp!94233 e!712119))))

(declare-fun mapValue!49492 () ValueCell!15142)

(declare-fun mapRest!49492 () (Array (_ BitVec 32) ValueCell!15142))

(declare-fun mapKey!49492 () (_ BitVec 32))

(assert (=> mapNonEmpty!49492 (= (arr!39190 _values!914) (store mapRest!49492 mapKey!49492 mapValue!49492))))

(declare-fun res!835907 () Bool)

(assert (=> start!105228 (=> (not res!835907) (not e!712123))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105228 (= res!835907 (validMask!0 mask!1466))))

(assert (=> start!105228 e!712123))

(assert (=> start!105228 true))

(assert (=> start!105228 tp!94232))

(assert (=> start!105228 tp_is_empty!31811))

(declare-fun array_inv!29817 (array!81263) Bool)

(assert (=> start!105228 (array_inv!29817 _keys!1118)))

(declare-fun e!712122 () Bool)

(declare-fun array_inv!29818 (array!81265) Bool)

(assert (=> start!105228 (and (array_inv!29818 _values!914) e!712122)))

(declare-fun b!1253439 () Bool)

(declare-fun e!712120 () Bool)

(assert (=> b!1253439 (= e!712120 true)))

(declare-datatypes ((tuple2!20756 0))(
  ( (tuple2!20757 (_1!10388 (_ BitVec 64)) (_2!10388 V!47779)) )
))
(declare-datatypes ((List!28004 0))(
  ( (Nil!28001) (Cons!28000 (h!29209 tuple2!20756) (t!41492 List!28004)) )
))
(declare-datatypes ((ListLongMap!18641 0))(
  ( (ListLongMap!18642 (toList!9336 List!28004)) )
))
(declare-fun lt!566000 () ListLongMap!18641)

(declare-fun lt!566001 () ListLongMap!18641)

(declare-fun -!2049 (ListLongMap!18641 (_ BitVec 64)) ListLongMap!18641)

(assert (=> b!1253439 (= lt!566000 (-!2049 lt!566001 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!565999 () ListLongMap!18641)

(declare-fun lt!566003 () ListLongMap!18641)

(assert (=> b!1253439 (= (-!2049 lt!565999 #b1000000000000000000000000000000000000000000000000000000000000000) lt!566003)))

(declare-datatypes ((Unit!41642 0))(
  ( (Unit!41643) )
))
(declare-fun lt!566006 () Unit!41642)

(declare-fun minValueBefore!43 () V!47779)

(declare-fun addThenRemoveForNewKeyIsSame!309 (ListLongMap!18641 (_ BitVec 64) V!47779) Unit!41642)

(assert (=> b!1253439 (= lt!566006 (addThenRemoveForNewKeyIsSame!309 lt!566003 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!566004 () ListLongMap!18641)

(declare-fun lt!566002 () ListLongMap!18641)

(assert (=> b!1253439 (and (= lt!566001 lt!565999) (= lt!566004 lt!566002))))

(declare-fun +!4140 (ListLongMap!18641 tuple2!20756) ListLongMap!18641)

(assert (=> b!1253439 (= lt!565999 (+!4140 lt!566003 (tuple2!20757 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47779)

(declare-fun zeroValue!871 () V!47779)

(declare-fun getCurrentListMap!4527 (array!81263 array!81265 (_ BitVec 32) (_ BitVec 32) V!47779 V!47779 (_ BitVec 32) Int) ListLongMap!18641)

(assert (=> b!1253439 (= lt!566004 (getCurrentListMap!4527 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253439 (= lt!566001 (getCurrentListMap!4527 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253440 () Bool)

(declare-fun e!712121 () Bool)

(assert (=> b!1253440 (= e!712121 tp_is_empty!31811)))

(declare-fun b!1253441 () Bool)

(assert (=> b!1253441 (= e!712122 (and e!712121 mapRes!49492))))

(declare-fun condMapEmpty!49492 () Bool)

(declare-fun mapDefault!49492 () ValueCell!15142)

