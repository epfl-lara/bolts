; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42122 () Bool)

(assert start!42122)

(declare-fun b_free!11647 () Bool)

(declare-fun b_next!11647 () Bool)

(assert (=> start!42122 (= b_free!11647 (not b_next!11647))))

(declare-fun tp!40962 () Bool)

(declare-fun b_and!20087 () Bool)

(assert (=> start!42122 (= tp!40962 b_and!20087)))

(declare-fun b!469979 () Bool)

(declare-fun e!275302 () Bool)

(declare-fun tp_is_empty!13075 () Bool)

(assert (=> b!469979 (= e!275302 tp_is_empty!13075)))

(declare-fun mapNonEmpty!21313 () Bool)

(declare-fun mapRes!21313 () Bool)

(declare-fun tp!40963 () Bool)

(declare-fun e!275299 () Bool)

(assert (=> mapNonEmpty!21313 (= mapRes!21313 (and tp!40963 e!275299))))

(declare-datatypes ((V!18539 0))(
  ( (V!18540 (val!6582 Int)) )
))
(declare-datatypes ((ValueCell!6194 0))(
  ( (ValueCellFull!6194 (v!8869 V!18539)) (EmptyCell!6194) )
))
(declare-datatypes ((array!29883 0))(
  ( (array!29884 (arr!14362 (Array (_ BitVec 32) ValueCell!6194)) (size!14714 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29883)

(declare-fun mapValue!21313 () ValueCell!6194)

(declare-fun mapRest!21313 () (Array (_ BitVec 32) ValueCell!6194))

(declare-fun mapKey!21313 () (_ BitVec 32))

(assert (=> mapNonEmpty!21313 (= (arr!14362 _values!833) (store mapRest!21313 mapKey!21313 mapValue!21313))))

(declare-fun b!469980 () Bool)

(declare-fun res!280905 () Bool)

(declare-fun e!275303 () Bool)

(assert (=> b!469980 (=> (not res!280905) (not e!275303))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29885 0))(
  ( (array!29886 (arr!14363 (Array (_ BitVec 32) (_ BitVec 64))) (size!14715 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29885)

(assert (=> b!469980 (= res!280905 (and (= (size!14714 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14715 _keys!1025) (size!14714 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!21313 () Bool)

(assert (=> mapIsEmpty!21313 mapRes!21313))

(declare-fun b!469981 () Bool)

(assert (=> b!469981 (= e!275303 (not true))))

(declare-datatypes ((tuple2!8640 0))(
  ( (tuple2!8641 (_1!4330 (_ BitVec 64)) (_2!4330 V!18539)) )
))
(declare-datatypes ((List!8759 0))(
  ( (Nil!8756) (Cons!8755 (h!9611 tuple2!8640) (t!14729 List!8759)) )
))
(declare-datatypes ((ListLongMap!7567 0))(
  ( (ListLongMap!7568 (toList!3799 List!8759)) )
))
(declare-fun lt!213302 () ListLongMap!7567)

(declare-fun lt!213304 () ListLongMap!7567)

(assert (=> b!469981 (= lt!213302 lt!213304)))

(declare-fun minValueBefore!38 () V!18539)

(declare-fun zeroValue!794 () V!18539)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18539)

(declare-datatypes ((Unit!13724 0))(
  ( (Unit!13725) )
))
(declare-fun lt!213303 () Unit!13724)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!156 (array!29885 array!29883 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18539 V!18539 V!18539 V!18539 (_ BitVec 32) Int) Unit!13724)

(assert (=> b!469981 (= lt!213303 (lemmaNoChangeToArrayThenSameMapNoExtras!156 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1961 (array!29885 array!29883 (_ BitVec 32) (_ BitVec 32) V!18539 V!18539 (_ BitVec 32) Int) ListLongMap!7567)

(assert (=> b!469981 (= lt!213304 (getCurrentListMapNoExtraKeys!1961 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!469981 (= lt!213302 (getCurrentListMapNoExtraKeys!1961 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!280904 () Bool)

(assert (=> start!42122 (=> (not res!280904) (not e!275303))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42122 (= res!280904 (validMask!0 mask!1365))))

(assert (=> start!42122 e!275303))

(assert (=> start!42122 tp_is_empty!13075))

(assert (=> start!42122 tp!40962))

(assert (=> start!42122 true))

(declare-fun array_inv!10358 (array!29885) Bool)

(assert (=> start!42122 (array_inv!10358 _keys!1025)))

(declare-fun e!275301 () Bool)

(declare-fun array_inv!10359 (array!29883) Bool)

(assert (=> start!42122 (and (array_inv!10359 _values!833) e!275301)))

(declare-fun b!469982 () Bool)

(declare-fun res!280902 () Bool)

(assert (=> b!469982 (=> (not res!280902) (not e!275303))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29885 (_ BitVec 32)) Bool)

(assert (=> b!469982 (= res!280902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!469983 () Bool)

(declare-fun res!280903 () Bool)

(assert (=> b!469983 (=> (not res!280903) (not e!275303))))

(declare-datatypes ((List!8760 0))(
  ( (Nil!8757) (Cons!8756 (h!9612 (_ BitVec 64)) (t!14730 List!8760)) )
))
(declare-fun arrayNoDuplicates!0 (array!29885 (_ BitVec 32) List!8760) Bool)

(assert (=> b!469983 (= res!280903 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8757))))

(declare-fun b!469984 () Bool)

(assert (=> b!469984 (= e!275301 (and e!275302 mapRes!21313))))

(declare-fun condMapEmpty!21313 () Bool)

(declare-fun mapDefault!21313 () ValueCell!6194)

