; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94614 () Bool)

(assert start!94614)

(declare-fun b_free!21861 () Bool)

(declare-fun b_next!21861 () Bool)

(assert (=> start!94614 (= b_free!21861 (not b_next!21861))))

(declare-fun tp!77036 () Bool)

(declare-fun b_and!34691 () Bool)

(assert (=> start!94614 (= tp!77036 b_and!34691)))

(declare-fun b!1069378 () Bool)

(declare-fun e!610328 () Bool)

(declare-fun tp_is_empty!25671 () Bool)

(assert (=> b!1069378 (= e!610328 tp_is_empty!25671)))

(declare-fun mapIsEmpty!40207 () Bool)

(declare-fun mapRes!40207 () Bool)

(assert (=> mapIsEmpty!40207 mapRes!40207))

(declare-fun b!1069379 () Bool)

(declare-fun res!713602 () Bool)

(declare-fun e!610327 () Bool)

(assert (=> b!1069379 (=> (not res!713602) (not e!610327))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39363 0))(
  ( (V!39364 (val!12886 Int)) )
))
(declare-datatypes ((ValueCell!12132 0))(
  ( (ValueCellFull!12132 (v!15503 V!39363)) (EmptyCell!12132) )
))
(declare-datatypes ((array!68290 0))(
  ( (array!68291 (arr!32839 (Array (_ BitVec 32) ValueCell!12132)) (size!33376 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68290)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68292 0))(
  ( (array!68293 (arr!32840 (Array (_ BitVec 32) (_ BitVec 64))) (size!33377 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68292)

(assert (=> b!1069379 (= res!713602 (and (= (size!33376 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33377 _keys!1163) (size!33376 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1069380 () Bool)

(declare-fun e!610331 () Bool)

(assert (=> b!1069380 (= e!610331 tp_is_empty!25671)))

(declare-fun b!1069381 () Bool)

(assert (=> b!1069381 (= e!610327 (not true))))

(declare-datatypes ((tuple2!16448 0))(
  ( (tuple2!16449 (_1!8234 (_ BitVec 64)) (_2!8234 V!39363)) )
))
(declare-datatypes ((List!23036 0))(
  ( (Nil!23033) (Cons!23032 (h!24241 tuple2!16448) (t!32372 List!23036)) )
))
(declare-datatypes ((ListLongMap!14429 0))(
  ( (ListLongMap!14430 (toList!7230 List!23036)) )
))
(declare-fun lt!472583 () ListLongMap!14429)

(declare-fun lt!472585 () ListLongMap!14429)

(assert (=> b!1069381 (= lt!472583 lt!472585)))

(declare-fun zeroValueBefore!47 () V!39363)

(declare-datatypes ((Unit!35126 0))(
  ( (Unit!35127) )
))
(declare-fun lt!472584 () Unit!35126)

(declare-fun minValue!907 () V!39363)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39363)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!806 (array!68292 array!68290 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39363 V!39363 V!39363 V!39363 (_ BitVec 32) Int) Unit!35126)

(assert (=> b!1069381 (= lt!472584 (lemmaNoChangeToArrayThenSameMapNoExtras!806 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3767 (array!68292 array!68290 (_ BitVec 32) (_ BitVec 32) V!39363 V!39363 (_ BitVec 32) Int) ListLongMap!14429)

(assert (=> b!1069381 (= lt!472585 (getCurrentListMapNoExtraKeys!3767 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1069381 (= lt!472583 (getCurrentListMapNoExtraKeys!3767 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1069382 () Bool)

(declare-fun e!610329 () Bool)

(assert (=> b!1069382 (= e!610329 (and e!610328 mapRes!40207))))

(declare-fun condMapEmpty!40207 () Bool)

(declare-fun mapDefault!40207 () ValueCell!12132)

(assert (=> b!1069382 (= condMapEmpty!40207 (= (arr!32839 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12132)) mapDefault!40207)))))

(declare-fun mapNonEmpty!40207 () Bool)

(declare-fun tp!77037 () Bool)

(assert (=> mapNonEmpty!40207 (= mapRes!40207 (and tp!77037 e!610331))))

(declare-fun mapKey!40207 () (_ BitVec 32))

(declare-fun mapRest!40207 () (Array (_ BitVec 32) ValueCell!12132))

(declare-fun mapValue!40207 () ValueCell!12132)

(assert (=> mapNonEmpty!40207 (= (arr!32839 _values!955) (store mapRest!40207 mapKey!40207 mapValue!40207))))

(declare-fun b!1069383 () Bool)

(declare-fun res!713605 () Bool)

(assert (=> b!1069383 (=> (not res!713605) (not e!610327))))

(declare-datatypes ((List!23037 0))(
  ( (Nil!23034) (Cons!23033 (h!24242 (_ BitVec 64)) (t!32373 List!23037)) )
))
(declare-fun arrayNoDuplicates!0 (array!68292 (_ BitVec 32) List!23037) Bool)

(assert (=> b!1069383 (= res!713605 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23034))))

(declare-fun res!713604 () Bool)

(assert (=> start!94614 (=> (not res!713604) (not e!610327))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94614 (= res!713604 (validMask!0 mask!1515))))

(assert (=> start!94614 e!610327))

(assert (=> start!94614 true))

(assert (=> start!94614 tp_is_empty!25671))

(declare-fun array_inv!25256 (array!68290) Bool)

(assert (=> start!94614 (and (array_inv!25256 _values!955) e!610329)))

(assert (=> start!94614 tp!77036))

(declare-fun array_inv!25257 (array!68292) Bool)

(assert (=> start!94614 (array_inv!25257 _keys!1163)))

(declare-fun b!1069384 () Bool)

(declare-fun res!713603 () Bool)

(assert (=> b!1069384 (=> (not res!713603) (not e!610327))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68292 (_ BitVec 32)) Bool)

(assert (=> b!1069384 (= res!713603 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(assert (= (and start!94614 res!713604) b!1069379))

(assert (= (and b!1069379 res!713602) b!1069384))

(assert (= (and b!1069384 res!713603) b!1069383))

(assert (= (and b!1069383 res!713605) b!1069381))

(assert (= (and b!1069382 condMapEmpty!40207) mapIsEmpty!40207))

(assert (= (and b!1069382 (not condMapEmpty!40207)) mapNonEmpty!40207))

(get-info :version)

(assert (= (and mapNonEmpty!40207 ((_ is ValueCellFull!12132) mapValue!40207)) b!1069380))

(assert (= (and b!1069382 ((_ is ValueCellFull!12132) mapDefault!40207)) b!1069378))

(assert (= start!94614 b!1069382))

(declare-fun m!988025 () Bool)

(assert (=> b!1069384 m!988025))

(declare-fun m!988027 () Bool)

(assert (=> b!1069381 m!988027))

(declare-fun m!988029 () Bool)

(assert (=> b!1069381 m!988029))

(declare-fun m!988031 () Bool)

(assert (=> b!1069381 m!988031))

(declare-fun m!988033 () Bool)

(assert (=> start!94614 m!988033))

(declare-fun m!988035 () Bool)

(assert (=> start!94614 m!988035))

(declare-fun m!988037 () Bool)

(assert (=> start!94614 m!988037))

(declare-fun m!988039 () Bool)

(assert (=> b!1069383 m!988039))

(declare-fun m!988041 () Bool)

(assert (=> mapNonEmpty!40207 m!988041))

(check-sat (not mapNonEmpty!40207) (not b!1069383) (not start!94614) tp_is_empty!25671 (not b_next!21861) (not b!1069384) b_and!34691 (not b!1069381))
(check-sat b_and!34691 (not b_next!21861))
