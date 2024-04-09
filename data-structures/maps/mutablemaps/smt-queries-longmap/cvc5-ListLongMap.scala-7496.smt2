; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94984 () Bool)

(assert start!94984)

(declare-fun b_free!22153 () Bool)

(declare-fun b_next!22153 () Bool)

(assert (=> start!94984 (= b_free!22153 (not b_next!22153))))

(declare-fun tp!77925 () Bool)

(declare-fun b_and!35025 () Bool)

(assert (=> start!94984 (= tp!77925 b_and!35025)))

(declare-fun b!1073502 () Bool)

(declare-fun e!613355 () Bool)

(declare-datatypes ((array!68848 0))(
  ( (array!68849 (arr!33114 (Array (_ BitVec 32) (_ BitVec 64))) (size!33651 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68848)

(assert (=> b!1073502 (= e!613355 (bvsgt #b00000000000000000000000000000000 (size!33651 _keys!1163)))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39753 0))(
  ( (V!39754 (val!13032 Int)) )
))
(declare-datatypes ((tuple2!16662 0))(
  ( (tuple2!16663 (_1!8341 (_ BitVec 64)) (_2!8341 V!39753)) )
))
(declare-datatypes ((List!23239 0))(
  ( (Nil!23236) (Cons!23235 (h!24444 tuple2!16662) (t!32583 List!23239)) )
))
(declare-datatypes ((ListLongMap!14643 0))(
  ( (ListLongMap!14644 (toList!7337 List!23239)) )
))
(declare-fun lt!476057 () ListLongMap!14643)

(declare-datatypes ((ValueCell!12278 0))(
  ( (ValueCellFull!12278 (v!15651 V!39753)) (EmptyCell!12278) )
))
(declare-datatypes ((array!68850 0))(
  ( (array!68851 (arr!33115 (Array (_ BitVec 32) ValueCell!12278)) (size!33652 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68850)

(declare-fun minValue!907 () V!39753)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39753)

(declare-fun getCurrentListMapNoExtraKeys!3867 (array!68848 array!68850 (_ BitVec 32) (_ BitVec 32) V!39753 V!39753 (_ BitVec 32) Int) ListLongMap!14643)

(assert (=> b!1073502 (= lt!476057 (getCurrentListMapNoExtraKeys!3867 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!39753)

(declare-fun lt!476056 () ListLongMap!14643)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1073502 (= lt!476056 (getCurrentListMapNoExtraKeys!3867 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1073504 () Bool)

(declare-fun res!716067 () Bool)

(assert (=> b!1073504 (=> (not res!716067) (not e!613355))))

(assert (=> b!1073504 (= res!716067 (and (= (size!33652 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33651 _keys!1163) (size!33652 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!40657 () Bool)

(declare-fun mapRes!40657 () Bool)

(declare-fun tp!77924 () Bool)

(declare-fun e!613356 () Bool)

(assert (=> mapNonEmpty!40657 (= mapRes!40657 (and tp!77924 e!613356))))

(declare-fun mapRest!40657 () (Array (_ BitVec 32) ValueCell!12278))

(declare-fun mapKey!40657 () (_ BitVec 32))

(declare-fun mapValue!40657 () ValueCell!12278)

(assert (=> mapNonEmpty!40657 (= (arr!33115 _values!955) (store mapRest!40657 mapKey!40657 mapValue!40657))))

(declare-fun b!1073505 () Bool)

(declare-fun e!613357 () Bool)

(declare-fun tp_is_empty!25963 () Bool)

(assert (=> b!1073505 (= e!613357 tp_is_empty!25963)))

(declare-fun b!1073506 () Bool)

(declare-fun res!716066 () Bool)

(assert (=> b!1073506 (=> (not res!716066) (not e!613355))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68848 (_ BitVec 32)) Bool)

(assert (=> b!1073506 (= res!716066 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1073507 () Bool)

(declare-fun res!716065 () Bool)

(assert (=> b!1073507 (=> (not res!716065) (not e!613355))))

(declare-datatypes ((List!23240 0))(
  ( (Nil!23237) (Cons!23236 (h!24445 (_ BitVec 64)) (t!32584 List!23240)) )
))
(declare-fun arrayNoDuplicates!0 (array!68848 (_ BitVec 32) List!23240) Bool)

(assert (=> b!1073507 (= res!716065 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23237))))

(declare-fun b!1073503 () Bool)

(assert (=> b!1073503 (= e!613356 tp_is_empty!25963)))

(declare-fun res!716064 () Bool)

(assert (=> start!94984 (=> (not res!716064) (not e!613355))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94984 (= res!716064 (validMask!0 mask!1515))))

(assert (=> start!94984 e!613355))

(assert (=> start!94984 true))

(assert (=> start!94984 tp_is_empty!25963))

(declare-fun e!613354 () Bool)

(declare-fun array_inv!25448 (array!68850) Bool)

(assert (=> start!94984 (and (array_inv!25448 _values!955) e!613354)))

(assert (=> start!94984 tp!77925))

(declare-fun array_inv!25449 (array!68848) Bool)

(assert (=> start!94984 (array_inv!25449 _keys!1163)))

(declare-fun b!1073508 () Bool)

(assert (=> b!1073508 (= e!613354 (and e!613357 mapRes!40657))))

(declare-fun condMapEmpty!40657 () Bool)

(declare-fun mapDefault!40657 () ValueCell!12278)

