; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94030 () Bool)

(assert start!94030)

(declare-fun b_free!21431 () Bool)

(declare-fun b_next!21431 () Bool)

(assert (=> start!94030 (= b_free!21431 (not b_next!21431))))

(declare-fun tp!75722 () Bool)

(declare-fun b_and!34181 () Bool)

(assert (=> start!94030 (= tp!75722 b_and!34181)))

(declare-fun mapNonEmpty!39538 () Bool)

(declare-fun mapRes!39538 () Bool)

(declare-fun tp!75723 () Bool)

(declare-fun e!605661 () Bool)

(assert (=> mapNonEmpty!39538 (= mapRes!39538 (and tp!75723 e!605661))))

(declare-fun mapKey!39538 () (_ BitVec 32))

(declare-datatypes ((V!38789 0))(
  ( (V!38790 (val!12671 Int)) )
))
(declare-datatypes ((ValueCell!11917 0))(
  ( (ValueCellFull!11917 (v!15283 V!38789)) (EmptyCell!11917) )
))
(declare-fun mapValue!39538 () ValueCell!11917)

(declare-datatypes ((array!67458 0))(
  ( (array!67459 (arr!32431 (Array (_ BitVec 32) ValueCell!11917)) (size!32968 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67458)

(declare-fun mapRest!39538 () (Array (_ BitVec 32) ValueCell!11917))

(assert (=> mapNonEmpty!39538 (= (arr!32431 _values!955) (store mapRest!39538 mapKey!39538 mapValue!39538))))

(declare-fun b!1063002 () Bool)

(declare-fun e!605662 () Bool)

(declare-fun e!605660 () Bool)

(assert (=> b!1063002 (= e!605662 (not e!605660))))

(declare-fun res!709856 () Bool)

(assert (=> b!1063002 (=> res!709856 e!605660)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1063002 (= res!709856 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!16126 0))(
  ( (tuple2!16127 (_1!8073 (_ BitVec 64)) (_2!8073 V!38789)) )
))
(declare-datatypes ((List!22734 0))(
  ( (Nil!22731) (Cons!22730 (h!23939 tuple2!16126) (t!32054 List!22734)) )
))
(declare-datatypes ((ListLongMap!14107 0))(
  ( (ListLongMap!14108 (toList!7069 List!22734)) )
))
(declare-fun lt!468457 () ListLongMap!14107)

(declare-fun lt!468453 () ListLongMap!14107)

(assert (=> b!1063002 (= lt!468457 lt!468453)))

(declare-fun zeroValueBefore!47 () V!38789)

(declare-fun minValue!907 () V!38789)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-datatypes ((Unit!34805 0))(
  ( (Unit!34806) )
))
(declare-fun lt!468456 () Unit!34805)

(declare-fun zeroValueAfter!47 () V!38789)

(declare-datatypes ((array!67460 0))(
  ( (array!67461 (arr!32432 (Array (_ BitVec 32) (_ BitVec 64))) (size!32969 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67460)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!664 (array!67460 array!67458 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38789 V!38789 V!38789 V!38789 (_ BitVec 32) Int) Unit!34805)

(assert (=> b!1063002 (= lt!468456 (lemmaNoChangeToArrayThenSameMapNoExtras!664 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3625 (array!67460 array!67458 (_ BitVec 32) (_ BitVec 32) V!38789 V!38789 (_ BitVec 32) Int) ListLongMap!14107)

(assert (=> b!1063002 (= lt!468453 (getCurrentListMapNoExtraKeys!3625 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1063002 (= lt!468457 (getCurrentListMapNoExtraKeys!3625 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063003 () Bool)

(declare-fun res!709854 () Bool)

(assert (=> b!1063003 (=> (not res!709854) (not e!605662))))

(declare-datatypes ((List!22735 0))(
  ( (Nil!22732) (Cons!22731 (h!23940 (_ BitVec 64)) (t!32055 List!22735)) )
))
(declare-fun arrayNoDuplicates!0 (array!67460 (_ BitVec 32) List!22735) Bool)

(assert (=> b!1063003 (= res!709854 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22732))))

(declare-fun b!1063004 () Bool)

(declare-fun e!605658 () Bool)

(assert (=> b!1063004 (= e!605660 e!605658)))

(declare-fun res!709851 () Bool)

(assert (=> b!1063004 (=> res!709851 e!605658)))

(declare-fun lt!468455 () ListLongMap!14107)

(declare-fun contains!6265 (ListLongMap!14107 (_ BitVec 64)) Bool)

(assert (=> b!1063004 (= res!709851 (contains!6265 lt!468455 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4014 (array!67460 array!67458 (_ BitVec 32) (_ BitVec 32) V!38789 V!38789 (_ BitVec 32) Int) ListLongMap!14107)

(assert (=> b!1063004 (= lt!468455 (getCurrentListMap!4014 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063005 () Bool)

(assert (=> b!1063005 (= e!605658 true)))

(declare-fun -!580 (ListLongMap!14107 (_ BitVec 64)) ListLongMap!14107)

(assert (=> b!1063005 (= (-!580 lt!468455 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468455)))

(declare-fun lt!468454 () Unit!34805)

(declare-fun removeNotPresentStillSame!26 (ListLongMap!14107 (_ BitVec 64)) Unit!34805)

(assert (=> b!1063005 (= lt!468454 (removeNotPresentStillSame!26 lt!468455 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!709853 () Bool)

(assert (=> start!94030 (=> (not res!709853) (not e!605662))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94030 (= res!709853 (validMask!0 mask!1515))))

(assert (=> start!94030 e!605662))

(assert (=> start!94030 true))

(declare-fun tp_is_empty!25241 () Bool)

(assert (=> start!94030 tp_is_empty!25241))

(declare-fun e!605657 () Bool)

(declare-fun array_inv!24962 (array!67458) Bool)

(assert (=> start!94030 (and (array_inv!24962 _values!955) e!605657)))

(assert (=> start!94030 tp!75722))

(declare-fun array_inv!24963 (array!67460) Bool)

(assert (=> start!94030 (array_inv!24963 _keys!1163)))

(declare-fun b!1063006 () Bool)

(declare-fun e!605659 () Bool)

(assert (=> b!1063006 (= e!605657 (and e!605659 mapRes!39538))))

(declare-fun condMapEmpty!39538 () Bool)

(declare-fun mapDefault!39538 () ValueCell!11917)

