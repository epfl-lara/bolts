; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42010 () Bool)

(assert start!42010)

(declare-fun b_free!11575 () Bool)

(declare-fun b_next!11575 () Bool)

(assert (=> start!42010 (= b_free!11575 (not b_next!11575))))

(declare-fun tp!40740 () Bool)

(declare-fun b_and!19991 () Bool)

(assert (=> start!42010 (= tp!40740 b_and!19991)))

(declare-fun b!468759 () Bool)

(declare-fun res!280211 () Bool)

(declare-fun e!274429 () Bool)

(assert (=> b!468759 (=> (not res!280211) (not e!274429))))

(declare-datatypes ((array!29739 0))(
  ( (array!29740 (arr!14292 (Array (_ BitVec 32) (_ BitVec 64))) (size!14644 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29739)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29739 (_ BitVec 32)) Bool)

(assert (=> b!468759 (= res!280211 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!468760 () Bool)

(declare-fun e!274434 () Bool)

(declare-fun tp_is_empty!13003 () Bool)

(assert (=> b!468760 (= e!274434 tp_is_empty!13003)))

(declare-fun b!468761 () Bool)

(declare-fun res!280210 () Bool)

(assert (=> b!468761 (=> (not res!280210) (not e!274429))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!18443 0))(
  ( (V!18444 (val!6546 Int)) )
))
(declare-datatypes ((ValueCell!6158 0))(
  ( (ValueCellFull!6158 (v!8831 V!18443)) (EmptyCell!6158) )
))
(declare-datatypes ((array!29741 0))(
  ( (array!29742 (arr!14293 (Array (_ BitVec 32) ValueCell!6158)) (size!14645 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29741)

(assert (=> b!468761 (= res!280210 (and (= (size!14645 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14644 _keys!1025) (size!14645 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!468762 () Bool)

(declare-fun e!274432 () Bool)

(assert (=> b!468762 (= e!274429 (not e!274432))))

(declare-fun res!280212 () Bool)

(assert (=> b!468762 (=> res!280212 e!274432)))

(assert (=> b!468762 (= res!280212 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8586 0))(
  ( (tuple2!8587 (_1!4303 (_ BitVec 64)) (_2!4303 V!18443)) )
))
(declare-datatypes ((List!8706 0))(
  ( (Nil!8703) (Cons!8702 (h!9558 tuple2!8586) (t!14672 List!8706)) )
))
(declare-datatypes ((ListLongMap!7513 0))(
  ( (ListLongMap!7514 (toList!3772 List!8706)) )
))
(declare-fun lt!212257 () ListLongMap!7513)

(declare-fun lt!212258 () ListLongMap!7513)

(assert (=> b!468762 (= lt!212257 lt!212258)))

(declare-fun minValueBefore!38 () V!18443)

(declare-fun zeroValue!794 () V!18443)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13666 0))(
  ( (Unit!13667) )
))
(declare-fun lt!212256 () Unit!13666)

(declare-fun minValueAfter!38 () V!18443)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!131 (array!29739 array!29741 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18443 V!18443 V!18443 V!18443 (_ BitVec 32) Int) Unit!13666)

(assert (=> b!468762 (= lt!212256 (lemmaNoChangeToArrayThenSameMapNoExtras!131 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1936 (array!29739 array!29741 (_ BitVec 32) (_ BitVec 32) V!18443 V!18443 (_ BitVec 32) Int) ListLongMap!7513)

(assert (=> b!468762 (= lt!212258 (getCurrentListMapNoExtraKeys!1936 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!468762 (= lt!212257 (getCurrentListMapNoExtraKeys!1936 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468764 () Bool)

(declare-fun res!280213 () Bool)

(assert (=> b!468764 (=> (not res!280213) (not e!274429))))

(declare-datatypes ((List!8707 0))(
  ( (Nil!8704) (Cons!8703 (h!9559 (_ BitVec 64)) (t!14673 List!8707)) )
))
(declare-fun arrayNoDuplicates!0 (array!29739 (_ BitVec 32) List!8707) Bool)

(assert (=> b!468764 (= res!280213 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8704))))

(declare-fun mapIsEmpty!21199 () Bool)

(declare-fun mapRes!21199 () Bool)

(assert (=> mapIsEmpty!21199 mapRes!21199))

(declare-fun b!468765 () Bool)

(assert (=> b!468765 (= e!274432 true)))

(declare-fun lt!212255 () tuple2!8586)

(declare-fun +!1661 (ListLongMap!7513 tuple2!8586) ListLongMap!7513)

(assert (=> b!468765 (= (+!1661 lt!212257 lt!212255) (+!1661 (+!1661 lt!212257 (tuple2!8587 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212255))))

(assert (=> b!468765 (= lt!212255 (tuple2!8587 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-fun lt!212253 () Unit!13666)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!102 (ListLongMap!7513 (_ BitVec 64) V!18443 V!18443) Unit!13666)

(assert (=> b!468765 (= lt!212253 (addSameAsAddTwiceSameKeyDiffValues!102 lt!212257 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!212252 () ListLongMap!7513)

(declare-fun getCurrentListMap!2183 (array!29739 array!29741 (_ BitVec 32) (_ BitVec 32) V!18443 V!18443 (_ BitVec 32) Int) ListLongMap!7513)

(assert (=> b!468765 (= lt!212252 (getCurrentListMap!2183 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212254 () ListLongMap!7513)

(assert (=> b!468765 (= lt!212254 (getCurrentListMap!2183 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21199 () Bool)

(declare-fun tp!40741 () Bool)

(declare-fun e!274431 () Bool)

(assert (=> mapNonEmpty!21199 (= mapRes!21199 (and tp!40741 e!274431))))

(declare-fun mapValue!21199 () ValueCell!6158)

(declare-fun mapKey!21199 () (_ BitVec 32))

(declare-fun mapRest!21199 () (Array (_ BitVec 32) ValueCell!6158))

(assert (=> mapNonEmpty!21199 (= (arr!14293 _values!833) (store mapRest!21199 mapKey!21199 mapValue!21199))))

(declare-fun b!468766 () Bool)

(assert (=> b!468766 (= e!274431 tp_is_empty!13003)))

(declare-fun res!280214 () Bool)

(assert (=> start!42010 (=> (not res!280214) (not e!274429))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42010 (= res!280214 (validMask!0 mask!1365))))

(assert (=> start!42010 e!274429))

(assert (=> start!42010 tp_is_empty!13003))

(assert (=> start!42010 tp!40740))

(assert (=> start!42010 true))

(declare-fun array_inv!10310 (array!29739) Bool)

(assert (=> start!42010 (array_inv!10310 _keys!1025)))

(declare-fun e!274430 () Bool)

(declare-fun array_inv!10311 (array!29741) Bool)

(assert (=> start!42010 (and (array_inv!10311 _values!833) e!274430)))

(declare-fun b!468763 () Bool)

(assert (=> b!468763 (= e!274430 (and e!274434 mapRes!21199))))

(declare-fun condMapEmpty!21199 () Bool)

(declare-fun mapDefault!21199 () ValueCell!6158)

