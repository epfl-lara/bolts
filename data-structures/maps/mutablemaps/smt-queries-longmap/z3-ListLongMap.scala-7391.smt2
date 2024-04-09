; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94160 () Bool)

(assert start!94160)

(declare-fun b_free!21525 () Bool)

(declare-fun b_next!21525 () Bool)

(assert (=> start!94160 (= b_free!21525 (not b_next!21525))))

(declare-fun tp!76010 () Bool)

(declare-fun b_and!34293 () Bool)

(assert (=> start!94160 (= tp!76010 b_and!34293)))

(declare-fun b!1064346 () Bool)

(declare-fun e!606633 () Bool)

(declare-fun tp_is_empty!25335 () Bool)

(assert (=> b!1064346 (= e!606633 tp_is_empty!25335)))

(declare-fun b!1064347 () Bool)

(declare-fun res!710625 () Bool)

(declare-fun e!606635 () Bool)

(assert (=> b!1064347 (=> (not res!710625) (not e!606635))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38915 0))(
  ( (V!38916 (val!12718 Int)) )
))
(declare-datatypes ((ValueCell!11964 0))(
  ( (ValueCellFull!11964 (v!15331 V!38915)) (EmptyCell!11964) )
))
(declare-datatypes ((array!67636 0))(
  ( (array!67637 (arr!32518 (Array (_ BitVec 32) ValueCell!11964)) (size!33055 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67636)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67638 0))(
  ( (array!67639 (arr!32519 (Array (_ BitVec 32) (_ BitVec 64))) (size!33056 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67638)

(assert (=> b!1064347 (= res!710625 (and (= (size!33055 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33056 _keys!1163) (size!33055 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1064348 () Bool)

(declare-fun res!710622 () Bool)

(assert (=> b!1064348 (=> (not res!710622) (not e!606635))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67638 (_ BitVec 32)) Bool)

(assert (=> b!1064348 (= res!710622 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1064349 () Bool)

(declare-fun e!606634 () Bool)

(assert (=> b!1064349 (= e!606634 tp_is_empty!25335)))

(declare-fun b!1064350 () Bool)

(declare-fun res!710623 () Bool)

(assert (=> b!1064350 (=> (not res!710623) (not e!606635))))

(declare-datatypes ((List!22792 0))(
  ( (Nil!22789) (Cons!22788 (h!23997 (_ BitVec 64)) (t!32116 List!22792)) )
))
(declare-fun arrayNoDuplicates!0 (array!67638 (_ BitVec 32) List!22792) Bool)

(assert (=> b!1064350 (= res!710623 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22789))))

(declare-fun b!1064351 () Bool)

(declare-fun e!606632 () Bool)

(declare-fun mapRes!39685 () Bool)

(assert (=> b!1064351 (= e!606632 (and e!606634 mapRes!39685))))

(declare-fun condMapEmpty!39685 () Bool)

(declare-fun mapDefault!39685 () ValueCell!11964)

(assert (=> b!1064351 (= condMapEmpty!39685 (= (arr!32518 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11964)) mapDefault!39685)))))

(declare-fun b!1064352 () Bool)

(declare-fun e!606636 () Bool)

(assert (=> b!1064352 (= e!606635 (not e!606636))))

(declare-fun res!710626 () Bool)

(assert (=> b!1064352 (=> res!710626 e!606636)))

(assert (=> b!1064352 (= res!710626 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16190 0))(
  ( (tuple2!16191 (_1!8105 (_ BitVec 64)) (_2!8105 V!38915)) )
))
(declare-datatypes ((List!22793 0))(
  ( (Nil!22790) (Cons!22789 (h!23998 tuple2!16190) (t!32117 List!22793)) )
))
(declare-datatypes ((ListLongMap!14171 0))(
  ( (ListLongMap!14172 (toList!7101 List!22793)) )
))
(declare-fun lt!469158 () ListLongMap!14171)

(declare-fun lt!469157 () ListLongMap!14171)

(assert (=> b!1064352 (= lt!469158 lt!469157)))

(declare-fun zeroValueBefore!47 () V!38915)

(declare-fun minValue!907 () V!38915)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38915)

(declare-datatypes ((Unit!34869 0))(
  ( (Unit!34870) )
))
(declare-fun lt!469156 () Unit!34869)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!694 (array!67638 array!67636 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38915 V!38915 V!38915 V!38915 (_ BitVec 32) Int) Unit!34869)

(assert (=> b!1064352 (= lt!469156 (lemmaNoChangeToArrayThenSameMapNoExtras!694 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3655 (array!67638 array!67636 (_ BitVec 32) (_ BitVec 32) V!38915 V!38915 (_ BitVec 32) Int) ListLongMap!14171)

(assert (=> b!1064352 (= lt!469157 (getCurrentListMapNoExtraKeys!3655 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1064352 (= lt!469158 (getCurrentListMapNoExtraKeys!3655 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!39685 () Bool)

(declare-fun tp!76011 () Bool)

(assert (=> mapNonEmpty!39685 (= mapRes!39685 (and tp!76011 e!606633))))

(declare-fun mapRest!39685 () (Array (_ BitVec 32) ValueCell!11964))

(declare-fun mapValue!39685 () ValueCell!11964)

(declare-fun mapKey!39685 () (_ BitVec 32))

(assert (=> mapNonEmpty!39685 (= (arr!32518 _values!955) (store mapRest!39685 mapKey!39685 mapValue!39685))))

(declare-fun mapIsEmpty!39685 () Bool)

(assert (=> mapIsEmpty!39685 mapRes!39685))

(declare-fun res!710624 () Bool)

(assert (=> start!94160 (=> (not res!710624) (not e!606635))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94160 (= res!710624 (validMask!0 mask!1515))))

(assert (=> start!94160 e!606635))

(assert (=> start!94160 true))

(assert (=> start!94160 tp_is_empty!25335))

(declare-fun array_inv!25018 (array!67636) Bool)

(assert (=> start!94160 (and (array_inv!25018 _values!955) e!606632)))

(assert (=> start!94160 tp!76010))

(declare-fun array_inv!25019 (array!67638) Bool)

(assert (=> start!94160 (array_inv!25019 _keys!1163)))

(declare-fun b!1064353 () Bool)

(assert (=> b!1064353 (= e!606636 true)))

(declare-fun lt!469155 () ListLongMap!14171)

(declare-fun getCurrentListMap!4027 (array!67638 array!67636 (_ BitVec 32) (_ BitVec 32) V!38915 V!38915 (_ BitVec 32) Int) ListLongMap!14171)

(assert (=> b!1064353 (= lt!469155 (getCurrentListMap!4027 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (= (and start!94160 res!710624) b!1064347))

(assert (= (and b!1064347 res!710625) b!1064348))

(assert (= (and b!1064348 res!710622) b!1064350))

(assert (= (and b!1064350 res!710623) b!1064352))

(assert (= (and b!1064352 (not res!710626)) b!1064353))

(assert (= (and b!1064351 condMapEmpty!39685) mapIsEmpty!39685))

(assert (= (and b!1064351 (not condMapEmpty!39685)) mapNonEmpty!39685))

(get-info :version)

(assert (= (and mapNonEmpty!39685 ((_ is ValueCellFull!11964) mapValue!39685)) b!1064346))

(assert (= (and b!1064351 ((_ is ValueCellFull!11964) mapDefault!39685)) b!1064349))

(assert (= start!94160 b!1064351))

(declare-fun m!983035 () Bool)

(assert (=> b!1064352 m!983035))

(declare-fun m!983037 () Bool)

(assert (=> b!1064352 m!983037))

(declare-fun m!983039 () Bool)

(assert (=> b!1064352 m!983039))

(declare-fun m!983041 () Bool)

(assert (=> b!1064353 m!983041))

(declare-fun m!983043 () Bool)

(assert (=> b!1064348 m!983043))

(declare-fun m!983045 () Bool)

(assert (=> b!1064350 m!983045))

(declare-fun m!983047 () Bool)

(assert (=> mapNonEmpty!39685 m!983047))

(declare-fun m!983049 () Bool)

(assert (=> start!94160 m!983049))

(declare-fun m!983051 () Bool)

(assert (=> start!94160 m!983051))

(declare-fun m!983053 () Bool)

(assert (=> start!94160 m!983053))

(check-sat (not b!1064348) tp_is_empty!25335 (not b!1064350) (not mapNonEmpty!39685) (not start!94160) (not b!1064352) (not b_next!21525) (not b!1064353) b_and!34293)
(check-sat b_and!34293 (not b_next!21525))
