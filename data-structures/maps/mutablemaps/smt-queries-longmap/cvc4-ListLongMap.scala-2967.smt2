; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42070 () Bool)

(assert start!42070)

(declare-fun b_free!11615 () Bool)

(declare-fun b_next!11615 () Bool)

(assert (=> start!42070 (= b_free!11615 (not b_next!11615))))

(declare-fun tp!40863 () Bool)

(declare-fun b_and!20043 () Bool)

(assert (=> start!42070 (= tp!40863 b_and!20043)))

(declare-fun b!469418 () Bool)

(declare-fun e!274902 () Bool)

(assert (=> b!469418 (= e!274902 true)))

(declare-datatypes ((V!18495 0))(
  ( (V!18496 (val!6566 Int)) )
))
(declare-datatypes ((tuple2!8618 0))(
  ( (tuple2!8619 (_1!4319 (_ BitVec 64)) (_2!4319 V!18495)) )
))
(declare-datatypes ((List!8736 0))(
  ( (Nil!8733) (Cons!8732 (h!9588 tuple2!8618) (t!14704 List!8736)) )
))
(declare-datatypes ((ListLongMap!7545 0))(
  ( (ListLongMap!7546 (toList!3788 List!8736)) )
))
(declare-fun lt!212824 () ListLongMap!7545)

(declare-fun lt!212829 () tuple2!8618)

(declare-fun minValueBefore!38 () V!18495)

(declare-fun +!1676 (ListLongMap!7545 tuple2!8618) ListLongMap!7545)

(assert (=> b!469418 (= (+!1676 lt!212824 lt!212829) (+!1676 (+!1676 lt!212824 (tuple2!8619 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212829))))

(declare-fun minValueAfter!38 () V!18495)

(assert (=> b!469418 (= lt!212829 (tuple2!8619 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13700 0))(
  ( (Unit!13701) )
))
(declare-fun lt!212827 () Unit!13700)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!117 (ListLongMap!7545 (_ BitVec 64) V!18495 V!18495) Unit!13700)

(assert (=> b!469418 (= lt!212827 (addSameAsAddTwiceSameKeyDiffValues!117 lt!212824 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun zeroValue!794 () V!18495)

(declare-fun defaultEntry!841 () Int)

(declare-fun lt!212825 () ListLongMap!7545)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29821 0))(
  ( (array!29822 (arr!14332 (Array (_ BitVec 32) (_ BitVec 64))) (size!14684 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29821)

(declare-datatypes ((ValueCell!6178 0))(
  ( (ValueCellFull!6178 (v!8852 V!18495)) (EmptyCell!6178) )
))
(declare-datatypes ((array!29823 0))(
  ( (array!29824 (arr!14333 (Array (_ BitVec 32) ValueCell!6178)) (size!14685 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29823)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2198 (array!29821 array!29823 (_ BitVec 32) (_ BitVec 32) V!18495 V!18495 (_ BitVec 32) Int) ListLongMap!7545)

(assert (=> b!469418 (= lt!212825 (getCurrentListMap!2198 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212823 () ListLongMap!7545)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!469418 (= lt!212823 (getCurrentListMap!2198 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!280588 () Bool)

(declare-fun e!274906 () Bool)

(assert (=> start!42070 (=> (not res!280588) (not e!274906))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42070 (= res!280588 (validMask!0 mask!1365))))

(assert (=> start!42070 e!274906))

(declare-fun tp_is_empty!13043 () Bool)

(assert (=> start!42070 tp_is_empty!13043))

(assert (=> start!42070 tp!40863))

(assert (=> start!42070 true))

(declare-fun array_inv!10336 (array!29821) Bool)

(assert (=> start!42070 (array_inv!10336 _keys!1025)))

(declare-fun e!274905 () Bool)

(declare-fun array_inv!10337 (array!29823) Bool)

(assert (=> start!42070 (and (array_inv!10337 _values!833) e!274905)))

(declare-fun b!469419 () Bool)

(declare-fun e!274903 () Bool)

(assert (=> b!469419 (= e!274903 tp_is_empty!13043)))

(declare-fun b!469420 () Bool)

(declare-fun res!280589 () Bool)

(assert (=> b!469420 (=> (not res!280589) (not e!274906))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29821 (_ BitVec 32)) Bool)

(assert (=> b!469420 (= res!280589 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!21262 () Bool)

(declare-fun mapRes!21262 () Bool)

(assert (=> mapIsEmpty!21262 mapRes!21262))

(declare-fun b!469421 () Bool)

(declare-fun res!280587 () Bool)

(assert (=> b!469421 (=> (not res!280587) (not e!274906))))

(assert (=> b!469421 (= res!280587 (and (= (size!14685 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14684 _keys!1025) (size!14685 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!21262 () Bool)

(declare-fun tp!40864 () Bool)

(assert (=> mapNonEmpty!21262 (= mapRes!21262 (and tp!40864 e!274903))))

(declare-fun mapRest!21262 () (Array (_ BitVec 32) ValueCell!6178))

(declare-fun mapValue!21262 () ValueCell!6178)

(declare-fun mapKey!21262 () (_ BitVec 32))

(assert (=> mapNonEmpty!21262 (= (arr!14333 _values!833) (store mapRest!21262 mapKey!21262 mapValue!21262))))

(declare-fun b!469422 () Bool)

(assert (=> b!469422 (= e!274906 (not e!274902))))

(declare-fun res!280591 () Bool)

(assert (=> b!469422 (=> res!280591 e!274902)))

(assert (=> b!469422 (= res!280591 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!212826 () ListLongMap!7545)

(assert (=> b!469422 (= lt!212824 lt!212826)))

(declare-fun lt!212828 () Unit!13700)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!146 (array!29821 array!29823 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18495 V!18495 V!18495 V!18495 (_ BitVec 32) Int) Unit!13700)

(assert (=> b!469422 (= lt!212828 (lemmaNoChangeToArrayThenSameMapNoExtras!146 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1951 (array!29821 array!29823 (_ BitVec 32) (_ BitVec 32) V!18495 V!18495 (_ BitVec 32) Int) ListLongMap!7545)

(assert (=> b!469422 (= lt!212826 (getCurrentListMapNoExtraKeys!1951 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!469422 (= lt!212824 (getCurrentListMapNoExtraKeys!1951 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!469423 () Bool)

(declare-fun e!274901 () Bool)

(assert (=> b!469423 (= e!274905 (and e!274901 mapRes!21262))))

(declare-fun condMapEmpty!21262 () Bool)

(declare-fun mapDefault!21262 () ValueCell!6178)

