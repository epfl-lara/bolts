; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93990 () Bool)

(assert start!93990)

(declare-fun b_free!21413 () Bool)

(declare-fun b_next!21413 () Bool)

(assert (=> start!93990 (= b_free!21413 (not b_next!21413))))

(declare-fun tp!75665 () Bool)

(declare-fun b_and!34153 () Bool)

(assert (=> start!93990 (= tp!75665 b_and!34153)))

(declare-fun b!1062602 () Bool)

(declare-fun res!709628 () Bool)

(declare-fun e!605368 () Bool)

(assert (=> b!1062602 (=> (not res!709628) (not e!605368))))

(declare-datatypes ((array!67420 0))(
  ( (array!67421 (arr!32413 (Array (_ BitVec 32) (_ BitVec 64))) (size!32950 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67420)

(declare-datatypes ((List!22721 0))(
  ( (Nil!22718) (Cons!22717 (h!23926 (_ BitVec 64)) (t!32039 List!22721)) )
))
(declare-fun arrayNoDuplicates!0 (array!67420 (_ BitVec 32) List!22721) Bool)

(assert (=> b!1062602 (= res!709628 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22718))))

(declare-fun mapIsEmpty!39508 () Bool)

(declare-fun mapRes!39508 () Bool)

(assert (=> mapIsEmpty!39508 mapRes!39508))

(declare-fun b!1062603 () Bool)

(declare-fun e!605370 () Bool)

(assert (=> b!1062603 (= e!605370 (bvsle #b00000000000000000000000000000000 (size!32950 _keys!1163)))))

(declare-datatypes ((V!38765 0))(
  ( (V!38766 (val!12662 Int)) )
))
(declare-datatypes ((tuple2!16110 0))(
  ( (tuple2!16111 (_1!8065 (_ BitVec 64)) (_2!8065 V!38765)) )
))
(declare-datatypes ((List!22722 0))(
  ( (Nil!22719) (Cons!22718 (h!23927 tuple2!16110) (t!32040 List!22722)) )
))
(declare-datatypes ((ListLongMap!14091 0))(
  ( (ListLongMap!14092 (toList!7061 List!22722)) )
))
(declare-fun lt!468197 () ListLongMap!14091)

(declare-fun -!574 (ListLongMap!14091 (_ BitVec 64)) ListLongMap!14091)

(assert (=> b!1062603 (= (-!574 lt!468197 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468197)))

(declare-datatypes ((Unit!34791 0))(
  ( (Unit!34792) )
))
(declare-fun lt!468196 () Unit!34791)

(declare-fun removeNotPresentStillSame!20 (ListLongMap!14091 (_ BitVec 64)) Unit!34791)

(assert (=> b!1062603 (= lt!468196 (removeNotPresentStillSame!20 lt!468197 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!39508 () Bool)

(declare-fun tp!75666 () Bool)

(declare-fun e!605373 () Bool)

(assert (=> mapNonEmpty!39508 (= mapRes!39508 (and tp!75666 e!605373))))

(declare-datatypes ((ValueCell!11908 0))(
  ( (ValueCellFull!11908 (v!15273 V!38765)) (EmptyCell!11908) )
))
(declare-datatypes ((array!67422 0))(
  ( (array!67423 (arr!32414 (Array (_ BitVec 32) ValueCell!11908)) (size!32951 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67422)

(declare-fun mapValue!39508 () ValueCell!11908)

(declare-fun mapRest!39508 () (Array (_ BitVec 32) ValueCell!11908))

(declare-fun mapKey!39508 () (_ BitVec 32))

(assert (=> mapNonEmpty!39508 (= (arr!32414 _values!955) (store mapRest!39508 mapKey!39508 mapValue!39508))))

(declare-fun b!1062604 () Bool)

(declare-fun res!709633 () Bool)

(assert (=> b!1062604 (=> (not res!709633) (not e!605368))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67420 (_ BitVec 32)) Bool)

(assert (=> b!1062604 (= res!709633 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1062605 () Bool)

(declare-fun e!605367 () Bool)

(assert (=> b!1062605 (= e!605367 e!605370)))

(declare-fun res!709629 () Bool)

(assert (=> b!1062605 (=> res!709629 e!605370)))

(declare-fun contains!6256 (ListLongMap!14091 (_ BitVec 64)) Bool)

(assert (=> b!1062605 (= res!709629 (contains!6256 lt!468197 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!38765)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38765)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMap!4006 (array!67420 array!67422 (_ BitVec 32) (_ BitVec 32) V!38765 V!38765 (_ BitVec 32) Int) ListLongMap!14091)

(assert (=> b!1062605 (= lt!468197 (getCurrentListMap!4006 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062606 () Bool)

(declare-fun tp_is_empty!25223 () Bool)

(assert (=> b!1062606 (= e!605373 tp_is_empty!25223)))

(declare-fun b!1062607 () Bool)

(declare-fun e!605369 () Bool)

(declare-fun e!605372 () Bool)

(assert (=> b!1062607 (= e!605369 (and e!605372 mapRes!39508))))

(declare-fun condMapEmpty!39508 () Bool)

(declare-fun mapDefault!39508 () ValueCell!11908)

