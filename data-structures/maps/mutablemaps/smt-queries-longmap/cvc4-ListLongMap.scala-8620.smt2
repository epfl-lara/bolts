; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105026 () Bool)

(assert start!105026)

(declare-fun b_free!26759 () Bool)

(declare-fun b_next!26759 () Bool)

(assert (=> start!105026 (= b_free!26759 (not b_next!26759))))

(declare-fun tp!93773 () Bool)

(declare-fun b_and!44555 () Bool)

(assert (=> start!105026 (= tp!93773 b_and!44555)))

(declare-fun b!1251298 () Bool)

(declare-fun e!710573 () Bool)

(declare-fun tp_is_empty!31661 () Bool)

(assert (=> b!1251298 (= e!710573 tp_is_empty!31661)))

(declare-fun b!1251299 () Bool)

(declare-fun e!710576 () Bool)

(declare-fun e!710577 () Bool)

(assert (=> b!1251299 (= e!710576 e!710577)))

(declare-fun res!834689 () Bool)

(assert (=> b!1251299 (=> res!834689 e!710577)))

(declare-datatypes ((V!47579 0))(
  ( (V!47580 (val!15893 Int)) )
))
(declare-datatypes ((tuple2!20638 0))(
  ( (tuple2!20639 (_1!10329 (_ BitVec 64)) (_2!10329 V!47579)) )
))
(declare-datatypes ((List!27890 0))(
  ( (Nil!27887) (Cons!27886 (h!29095 tuple2!20638) (t!41372 List!27890)) )
))
(declare-datatypes ((ListLongMap!18523 0))(
  ( (ListLongMap!18524 (toList!9277 List!27890)) )
))
(declare-fun lt!564736 () ListLongMap!18523)

(declare-fun contains!7527 (ListLongMap!18523 (_ BitVec 64)) Bool)

(assert (=> b!1251299 (= res!834689 (contains!7527 lt!564736 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47579)

(declare-datatypes ((array!80967 0))(
  ( (array!80968 (arr!39044 (Array (_ BitVec 32) (_ BitVec 64))) (size!39581 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80967)

(declare-datatypes ((ValueCell!15067 0))(
  ( (ValueCellFull!15067 (v!18590 V!47579)) (EmptyCell!15067) )
))
(declare-datatypes ((array!80969 0))(
  ( (array!80970 (arr!39045 (Array (_ BitVec 32) ValueCell!15067)) (size!39582 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80969)

(declare-fun minValueBefore!43 () V!47579)

(declare-fun getCurrentListMap!4492 (array!80967 array!80969 (_ BitVec 32) (_ BitVec 32) V!47579 V!47579 (_ BitVec 32) Int) ListLongMap!18523)

(assert (=> b!1251299 (= lt!564736 (getCurrentListMap!4492 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1251300 () Bool)

(declare-fun res!834687 () Bool)

(declare-fun e!710579 () Bool)

(assert (=> b!1251300 (=> (not res!834687) (not e!710579))))

(declare-datatypes ((List!27891 0))(
  ( (Nil!27888) (Cons!27887 (h!29096 (_ BitVec 64)) (t!41373 List!27891)) )
))
(declare-fun arrayNoDuplicates!0 (array!80967 (_ BitVec 32) List!27891) Bool)

(assert (=> b!1251300 (= res!834687 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27888))))

(declare-fun b!1251301 () Bool)

(declare-fun res!834686 () Bool)

(assert (=> b!1251301 (=> (not res!834686) (not e!710579))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80967 (_ BitVec 32)) Bool)

(assert (=> b!1251301 (= res!834686 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!49258 () Bool)

(declare-fun mapRes!49258 () Bool)

(assert (=> mapIsEmpty!49258 mapRes!49258))

(declare-fun b!1251302 () Bool)

(assert (=> b!1251302 (= e!710579 (not e!710576))))

(declare-fun res!834685 () Bool)

(assert (=> b!1251302 (=> res!834685 e!710576)))

(assert (=> b!1251302 (= res!834685 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!564733 () ListLongMap!18523)

(declare-fun lt!564737 () ListLongMap!18523)

(assert (=> b!1251302 (= lt!564733 lt!564737)))

(declare-fun minValueAfter!43 () V!47579)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((Unit!41529 0))(
  ( (Unit!41530) )
))
(declare-fun lt!564735 () Unit!41529)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!968 (array!80967 array!80969 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47579 V!47579 V!47579 V!47579 (_ BitVec 32) Int) Unit!41529)

(assert (=> b!1251302 (= lt!564735 (lemmaNoChangeToArrayThenSameMapNoExtras!968 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5650 (array!80967 array!80969 (_ BitVec 32) (_ BitVec 32) V!47579 V!47579 (_ BitVec 32) Int) ListLongMap!18523)

(assert (=> b!1251302 (= lt!564737 (getCurrentListMapNoExtraKeys!5650 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1251302 (= lt!564733 (getCurrentListMapNoExtraKeys!5650 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!834688 () Bool)

(assert (=> start!105026 (=> (not res!834688) (not e!710579))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105026 (= res!834688 (validMask!0 mask!1466))))

(assert (=> start!105026 e!710579))

(assert (=> start!105026 true))

(assert (=> start!105026 tp!93773))

(assert (=> start!105026 tp_is_empty!31661))

(declare-fun array_inv!29713 (array!80967) Bool)

(assert (=> start!105026 (array_inv!29713 _keys!1118)))

(declare-fun e!710575 () Bool)

(declare-fun array_inv!29714 (array!80969) Bool)

(assert (=> start!105026 (and (array_inv!29714 _values!914) e!710575)))

(declare-fun b!1251303 () Bool)

(declare-fun e!710578 () Bool)

(assert (=> b!1251303 (= e!710578 tp_is_empty!31661)))

(declare-fun mapNonEmpty!49258 () Bool)

(declare-fun tp!93774 () Bool)

(assert (=> mapNonEmpty!49258 (= mapRes!49258 (and tp!93774 e!710573))))

(declare-fun mapValue!49258 () ValueCell!15067)

(declare-fun mapRest!49258 () (Array (_ BitVec 32) ValueCell!15067))

(declare-fun mapKey!49258 () (_ BitVec 32))

(assert (=> mapNonEmpty!49258 (= (arr!39045 _values!914) (store mapRest!49258 mapKey!49258 mapValue!49258))))

(declare-fun b!1251304 () Bool)

(assert (=> b!1251304 (= e!710575 (and e!710578 mapRes!49258))))

(declare-fun condMapEmpty!49258 () Bool)

(declare-fun mapDefault!49258 () ValueCell!15067)

