; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42304 () Bool)

(assert start!42304)

(declare-fun b_free!11801 () Bool)

(declare-fun b_next!11801 () Bool)

(assert (=> start!42304 (= b_free!11801 (not b_next!11801))))

(declare-fun tp!41430 () Bool)

(declare-fun b_and!20257 () Bool)

(assert (=> start!42304 (= tp!41430 b_and!20257)))

(declare-fun b!471766 () Bool)

(declare-fun res!281891 () Bool)

(declare-fun e!276568 () Bool)

(assert (=> b!471766 (=> (not res!281891) (not e!276568))))

(declare-datatypes ((array!30181 0))(
  ( (array!30182 (arr!14509 (Array (_ BitVec 32) (_ BitVec 64))) (size!14861 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30181)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30181 (_ BitVec 32)) Bool)

(assert (=> b!471766 (= res!281891 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!471767 () Bool)

(declare-fun res!281888 () Bool)

(assert (=> b!471767 (=> (not res!281888) (not e!276568))))

(declare-datatypes ((List!8868 0))(
  ( (Nil!8865) (Cons!8864 (h!9720 (_ BitVec 64)) (t!14842 List!8868)) )
))
(declare-fun arrayNoDuplicates!0 (array!30181 (_ BitVec 32) List!8868) Bool)

(assert (=> b!471767 (= res!281888 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8865))))

(declare-fun b!471768 () Bool)

(assert (=> b!471768 (= e!276568 (not true))))

(declare-datatypes ((V!18743 0))(
  ( (V!18744 (val!6659 Int)) )
))
(declare-datatypes ((tuple2!8752 0))(
  ( (tuple2!8753 (_1!4386 (_ BitVec 64)) (_2!4386 V!18743)) )
))
(declare-datatypes ((List!8869 0))(
  ( (Nil!8866) (Cons!8865 (h!9721 tuple2!8752) (t!14843 List!8869)) )
))
(declare-datatypes ((ListLongMap!7679 0))(
  ( (ListLongMap!7680 (toList!3855 List!8869)) )
))
(declare-fun lt!214077 () ListLongMap!7679)

(declare-fun lt!214076 () ListLongMap!7679)

(assert (=> b!471768 (= lt!214077 lt!214076)))

(declare-fun minValueBefore!38 () V!18743)

(declare-fun zeroValue!794 () V!18743)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13836 0))(
  ( (Unit!13837) )
))
(declare-fun lt!214075 () Unit!13836)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6271 0))(
  ( (ValueCellFull!6271 (v!8946 V!18743)) (EmptyCell!6271) )
))
(declare-datatypes ((array!30183 0))(
  ( (array!30184 (arr!14510 (Array (_ BitVec 32) ValueCell!6271)) (size!14862 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30183)

(declare-fun minValueAfter!38 () V!18743)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!212 (array!30181 array!30183 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18743 V!18743 V!18743 V!18743 (_ BitVec 32) Int) Unit!13836)

(assert (=> b!471768 (= lt!214075 (lemmaNoChangeToArrayThenSameMapNoExtras!212 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2017 (array!30181 array!30183 (_ BitVec 32) (_ BitVec 32) V!18743 V!18743 (_ BitVec 32) Int) ListLongMap!7679)

(assert (=> b!471768 (= lt!214076 (getCurrentListMapNoExtraKeys!2017 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471768 (= lt!214077 (getCurrentListMapNoExtraKeys!2017 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!471769 () Bool)

(declare-fun e!276564 () Bool)

(declare-fun tp_is_empty!13229 () Bool)

(assert (=> b!471769 (= e!276564 tp_is_empty!13229)))

(declare-fun b!471770 () Bool)

(declare-fun e!276565 () Bool)

(assert (=> b!471770 (= e!276565 tp_is_empty!13229)))

(declare-fun b!471771 () Bool)

(declare-fun res!281890 () Bool)

(assert (=> b!471771 (=> (not res!281890) (not e!276568))))

(assert (=> b!471771 (= res!281890 (and (= (size!14862 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14861 _keys!1025) (size!14862 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!21550 () Bool)

(declare-fun mapRes!21550 () Bool)

(declare-fun tp!41431 () Bool)

(assert (=> mapNonEmpty!21550 (= mapRes!21550 (and tp!41431 e!276565))))

(declare-fun mapValue!21550 () ValueCell!6271)

(declare-fun mapKey!21550 () (_ BitVec 32))

(declare-fun mapRest!21550 () (Array (_ BitVec 32) ValueCell!6271))

(assert (=> mapNonEmpty!21550 (= (arr!14510 _values!833) (store mapRest!21550 mapKey!21550 mapValue!21550))))

(declare-fun res!281889 () Bool)

(assert (=> start!42304 (=> (not res!281889) (not e!276568))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42304 (= res!281889 (validMask!0 mask!1365))))

(assert (=> start!42304 e!276568))

(assert (=> start!42304 tp_is_empty!13229))

(assert (=> start!42304 tp!41430))

(assert (=> start!42304 true))

(declare-fun array_inv!10470 (array!30181) Bool)

(assert (=> start!42304 (array_inv!10470 _keys!1025)))

(declare-fun e!276566 () Bool)

(declare-fun array_inv!10471 (array!30183) Bool)

(assert (=> start!42304 (and (array_inv!10471 _values!833) e!276566)))

(declare-fun b!471772 () Bool)

(assert (=> b!471772 (= e!276566 (and e!276564 mapRes!21550))))

(declare-fun condMapEmpty!21550 () Bool)

(declare-fun mapDefault!21550 () ValueCell!6271)

