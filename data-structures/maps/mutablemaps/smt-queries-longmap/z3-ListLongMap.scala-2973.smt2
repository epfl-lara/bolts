; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42124 () Bool)

(assert start!42124)

(declare-fun b_free!11649 () Bool)

(declare-fun b_next!11649 () Bool)

(assert (=> start!42124 (= b_free!11649 (not b_next!11649))))

(declare-fun tp!40968 () Bool)

(declare-fun b_and!20089 () Bool)

(assert (=> start!42124 (= tp!40968 b_and!20089)))

(declare-fun b!470000 () Bool)

(declare-fun res!280915 () Bool)

(declare-fun e!275315 () Bool)

(assert (=> b!470000 (=> (not res!280915) (not e!275315))))

(declare-datatypes ((array!29887 0))(
  ( (array!29888 (arr!14364 (Array (_ BitVec 32) (_ BitVec 64))) (size!14716 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29887)

(declare-datatypes ((List!8761 0))(
  ( (Nil!8758) (Cons!8757 (h!9613 (_ BitVec 64)) (t!14731 List!8761)) )
))
(declare-fun arrayNoDuplicates!0 (array!29887 (_ BitVec 32) List!8761) Bool)

(assert (=> b!470000 (= res!280915 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8758))))

(declare-fun b!470001 () Bool)

(declare-fun res!280914 () Bool)

(assert (=> b!470001 (=> (not res!280914) (not e!275315))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29887 (_ BitVec 32)) Bool)

(assert (=> b!470001 (= res!280914 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!21316 () Bool)

(declare-fun mapRes!21316 () Bool)

(assert (=> mapIsEmpty!21316 mapRes!21316))

(declare-fun b!470002 () Bool)

(declare-fun e!275314 () Bool)

(declare-fun tp_is_empty!13077 () Bool)

(assert (=> b!470002 (= e!275314 tp_is_empty!13077)))

(declare-fun b!470003 () Bool)

(declare-fun e!275317 () Bool)

(declare-fun e!275318 () Bool)

(assert (=> b!470003 (= e!275317 (and e!275318 mapRes!21316))))

(declare-fun condMapEmpty!21316 () Bool)

(declare-datatypes ((V!18541 0))(
  ( (V!18542 (val!6583 Int)) )
))
(declare-datatypes ((ValueCell!6195 0))(
  ( (ValueCellFull!6195 (v!8870 V!18541)) (EmptyCell!6195) )
))
(declare-datatypes ((array!29889 0))(
  ( (array!29890 (arr!14365 (Array (_ BitVec 32) ValueCell!6195)) (size!14717 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29889)

(declare-fun mapDefault!21316 () ValueCell!6195)

(assert (=> b!470003 (= condMapEmpty!21316 (= (arr!14365 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6195)) mapDefault!21316)))))

(declare-fun mapNonEmpty!21316 () Bool)

(declare-fun tp!40969 () Bool)

(assert (=> mapNonEmpty!21316 (= mapRes!21316 (and tp!40969 e!275314))))

(declare-fun mapRest!21316 () (Array (_ BitVec 32) ValueCell!6195))

(declare-fun mapValue!21316 () ValueCell!6195)

(declare-fun mapKey!21316 () (_ BitVec 32))

(assert (=> mapNonEmpty!21316 (= (arr!14365 _values!833) (store mapRest!21316 mapKey!21316 mapValue!21316))))

(declare-fun b!470004 () Bool)

(assert (=> b!470004 (= e!275315 (not true))))

(declare-datatypes ((tuple2!8642 0))(
  ( (tuple2!8643 (_1!4331 (_ BitVec 64)) (_2!4331 V!18541)) )
))
(declare-datatypes ((List!8762 0))(
  ( (Nil!8759) (Cons!8758 (h!9614 tuple2!8642) (t!14732 List!8762)) )
))
(declare-datatypes ((ListLongMap!7569 0))(
  ( (ListLongMap!7570 (toList!3800 List!8762)) )
))
(declare-fun lt!213313 () ListLongMap!7569)

(declare-fun lt!213311 () ListLongMap!7569)

(assert (=> b!470004 (= lt!213313 lt!213311)))

(declare-fun zeroValue!794 () V!18541)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueBefore!38 () V!18541)

(declare-datatypes ((Unit!13726 0))(
  ( (Unit!13727) )
))
(declare-fun lt!213312 () Unit!13726)

(declare-fun minValueAfter!38 () V!18541)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!157 (array!29887 array!29889 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18541 V!18541 V!18541 V!18541 (_ BitVec 32) Int) Unit!13726)

(assert (=> b!470004 (= lt!213312 (lemmaNoChangeToArrayThenSameMapNoExtras!157 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1962 (array!29887 array!29889 (_ BitVec 32) (_ BitVec 32) V!18541 V!18541 (_ BitVec 32) Int) ListLongMap!7569)

(assert (=> b!470004 (= lt!213311 (getCurrentListMapNoExtraKeys!1962 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!470004 (= lt!213313 (getCurrentListMapNoExtraKeys!1962 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!280916 () Bool)

(assert (=> start!42124 (=> (not res!280916) (not e!275315))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42124 (= res!280916 (validMask!0 mask!1365))))

(assert (=> start!42124 e!275315))

(assert (=> start!42124 tp_is_empty!13077))

(assert (=> start!42124 tp!40968))

(assert (=> start!42124 true))

(declare-fun array_inv!10360 (array!29887) Bool)

(assert (=> start!42124 (array_inv!10360 _keys!1025)))

(declare-fun array_inv!10361 (array!29889) Bool)

(assert (=> start!42124 (and (array_inv!10361 _values!833) e!275317)))

(declare-fun b!470005 () Bool)

(assert (=> b!470005 (= e!275318 tp_is_empty!13077)))

(declare-fun b!470006 () Bool)

(declare-fun res!280917 () Bool)

(assert (=> b!470006 (=> (not res!280917) (not e!275315))))

(assert (=> b!470006 (= res!280917 (and (= (size!14717 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14716 _keys!1025) (size!14717 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!42124 res!280916) b!470006))

(assert (= (and b!470006 res!280917) b!470001))

(assert (= (and b!470001 res!280914) b!470000))

(assert (= (and b!470000 res!280915) b!470004))

(assert (= (and b!470003 condMapEmpty!21316) mapIsEmpty!21316))

(assert (= (and b!470003 (not condMapEmpty!21316)) mapNonEmpty!21316))

(get-info :version)

(assert (= (and mapNonEmpty!21316 ((_ is ValueCellFull!6195) mapValue!21316)) b!470002))

(assert (= (and b!470003 ((_ is ValueCellFull!6195) mapDefault!21316)) b!470005))

(assert (= start!42124 b!470003))

(declare-fun m!452359 () Bool)

(assert (=> b!470004 m!452359))

(declare-fun m!452361 () Bool)

(assert (=> b!470004 m!452361))

(declare-fun m!452363 () Bool)

(assert (=> b!470004 m!452363))

(declare-fun m!452365 () Bool)

(assert (=> mapNonEmpty!21316 m!452365))

(declare-fun m!452367 () Bool)

(assert (=> b!470000 m!452367))

(declare-fun m!452369 () Bool)

(assert (=> b!470001 m!452369))

(declare-fun m!452371 () Bool)

(assert (=> start!42124 m!452371))

(declare-fun m!452373 () Bool)

(assert (=> start!42124 m!452373))

(declare-fun m!452375 () Bool)

(assert (=> start!42124 m!452375))

(check-sat (not b!470001) b_and!20089 tp_is_empty!13077 (not b!470000) (not b!470004) (not start!42124) (not b_next!11649) (not mapNonEmpty!21316))
(check-sat b_and!20089 (not b_next!11649))
