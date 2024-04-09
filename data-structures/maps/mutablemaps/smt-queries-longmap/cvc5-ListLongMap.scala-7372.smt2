; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93986 () Bool)

(assert start!93986)

(declare-fun b_free!21409 () Bool)

(declare-fun b_next!21409 () Bool)

(assert (=> start!93986 (= b_free!21409 (not b_next!21409))))

(declare-fun tp!75654 () Bool)

(declare-fun b_and!34149 () Bool)

(assert (=> start!93986 (= tp!75654 b_and!34149)))

(declare-fun res!709596 () Bool)

(declare-fun e!605325 () Bool)

(assert (=> start!93986 (=> (not res!709596) (not e!605325))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93986 (= res!709596 (validMask!0 mask!1515))))

(assert (=> start!93986 e!605325))

(assert (=> start!93986 true))

(declare-fun tp_is_empty!25219 () Bool)

(assert (=> start!93986 tp_is_empty!25219))

(declare-datatypes ((V!38761 0))(
  ( (V!38762 (val!12660 Int)) )
))
(declare-datatypes ((ValueCell!11906 0))(
  ( (ValueCellFull!11906 (v!15271 V!38761)) (EmptyCell!11906) )
))
(declare-datatypes ((array!67412 0))(
  ( (array!67413 (arr!32409 (Array (_ BitVec 32) ValueCell!11906)) (size!32946 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67412)

(declare-fun e!605330 () Bool)

(declare-fun array_inv!24944 (array!67412) Bool)

(assert (=> start!93986 (and (array_inv!24944 _values!955) e!605330)))

(assert (=> start!93986 tp!75654))

(declare-datatypes ((array!67414 0))(
  ( (array!67415 (arr!32410 (Array (_ BitVec 32) (_ BitVec 64))) (size!32947 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67414)

(declare-fun array_inv!24945 (array!67414) Bool)

(assert (=> start!93986 (array_inv!24945 _keys!1163)))

(declare-fun b!1062548 () Bool)

(declare-fun res!709594 () Bool)

(assert (=> b!1062548 (=> (not res!709594) (not e!605325))))

(declare-datatypes ((List!22717 0))(
  ( (Nil!22714) (Cons!22713 (h!23922 (_ BitVec 64)) (t!32035 List!22717)) )
))
(declare-fun arrayNoDuplicates!0 (array!67414 (_ BitVec 32) List!22717) Bool)

(assert (=> b!1062548 (= res!709594 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22714))))

(declare-fun b!1062549 () Bool)

(declare-fun e!605331 () Bool)

(assert (=> b!1062549 (= e!605331 tp_is_empty!25219)))

(declare-fun b!1062550 () Bool)

(declare-fun res!709597 () Bool)

(assert (=> b!1062550 (=> (not res!709597) (not e!605325))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67414 (_ BitVec 32)) Bool)

(assert (=> b!1062550 (= res!709597 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1062551 () Bool)

(declare-fun e!605327 () Bool)

(assert (=> b!1062551 (= e!605325 (not e!605327))))

(declare-fun res!709592 () Bool)

(assert (=> b!1062551 (=> res!709592 e!605327)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1062551 (= res!709592 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!16106 0))(
  ( (tuple2!16107 (_1!8063 (_ BitVec 64)) (_2!8063 V!38761)) )
))
(declare-datatypes ((List!22718 0))(
  ( (Nil!22715) (Cons!22714 (h!23923 tuple2!16106) (t!32036 List!22718)) )
))
(declare-datatypes ((ListLongMap!14087 0))(
  ( (ListLongMap!14088 (toList!7059 List!22718)) )
))
(declare-fun lt!468167 () ListLongMap!14087)

(declare-fun lt!468168 () ListLongMap!14087)

(assert (=> b!1062551 (= lt!468167 lt!468168)))

(declare-fun zeroValueBefore!47 () V!38761)

(declare-datatypes ((Unit!34787 0))(
  ( (Unit!34788) )
))
(declare-fun lt!468165 () Unit!34787)

(declare-fun minValue!907 () V!38761)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38761)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!658 (array!67414 array!67412 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38761 V!38761 V!38761 V!38761 (_ BitVec 32) Int) Unit!34787)

(assert (=> b!1062551 (= lt!468165 (lemmaNoChangeToArrayThenSameMapNoExtras!658 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3619 (array!67414 array!67412 (_ BitVec 32) (_ BitVec 32) V!38761 V!38761 (_ BitVec 32) Int) ListLongMap!14087)

(assert (=> b!1062551 (= lt!468168 (getCurrentListMapNoExtraKeys!3619 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1062551 (= lt!468167 (getCurrentListMapNoExtraKeys!3619 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062552 () Bool)

(declare-fun e!605328 () Bool)

(assert (=> b!1062552 (= e!605328 tp_is_empty!25219)))

(declare-fun b!1062553 () Bool)

(declare-fun e!605326 () Bool)

(assert (=> b!1062553 (= e!605327 e!605326)))

(declare-fun res!709593 () Bool)

(assert (=> b!1062553 (=> res!709593 e!605326)))

(declare-fun lt!468166 () ListLongMap!14087)

(declare-fun contains!6254 (ListLongMap!14087 (_ BitVec 64)) Bool)

(assert (=> b!1062553 (= res!709593 (contains!6254 lt!468166 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4004 (array!67414 array!67412 (_ BitVec 32) (_ BitVec 32) V!38761 V!38761 (_ BitVec 32) Int) ListLongMap!14087)

(assert (=> b!1062553 (= lt!468166 (getCurrentListMap!4004 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062554 () Bool)

(assert (=> b!1062554 (= e!605326 (bvsle #b00000000000000000000000000000000 (size!32947 _keys!1163)))))

(declare-fun -!572 (ListLongMap!14087 (_ BitVec 64)) ListLongMap!14087)

(assert (=> b!1062554 (= (-!572 lt!468166 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468166)))

(declare-fun lt!468164 () Unit!34787)

(declare-fun removeNotPresentStillSame!18 (ListLongMap!14087 (_ BitVec 64)) Unit!34787)

(assert (=> b!1062554 (= lt!468164 (removeNotPresentStillSame!18 lt!468166 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!39502 () Bool)

(declare-fun mapRes!39502 () Bool)

(declare-fun tp!75653 () Bool)

(assert (=> mapNonEmpty!39502 (= mapRes!39502 (and tp!75653 e!605328))))

(declare-fun mapKey!39502 () (_ BitVec 32))

(declare-fun mapRest!39502 () (Array (_ BitVec 32) ValueCell!11906))

(declare-fun mapValue!39502 () ValueCell!11906)

(assert (=> mapNonEmpty!39502 (= (arr!32409 _values!955) (store mapRest!39502 mapKey!39502 mapValue!39502))))

(declare-fun mapIsEmpty!39502 () Bool)

(assert (=> mapIsEmpty!39502 mapRes!39502))

(declare-fun b!1062555 () Bool)

(assert (=> b!1062555 (= e!605330 (and e!605331 mapRes!39502))))

(declare-fun condMapEmpty!39502 () Bool)

(declare-fun mapDefault!39502 () ValueCell!11906)

