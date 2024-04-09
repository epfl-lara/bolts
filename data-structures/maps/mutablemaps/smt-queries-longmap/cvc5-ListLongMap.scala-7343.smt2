; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93798 () Bool)

(assert start!93798)

(declare-fun b_free!21235 () Bool)

(declare-fun b_next!21235 () Bool)

(assert (=> start!93798 (= b_free!21235 (not b_next!21235))))

(declare-fun tp!75129 () Bool)

(declare-fun b_and!33967 () Bool)

(assert (=> start!93798 (= tp!75129 b_and!33967)))

(declare-fun mapNonEmpty!39238 () Bool)

(declare-fun mapRes!39238 () Bool)

(declare-fun tp!75128 () Bool)

(declare-fun e!603808 () Bool)

(assert (=> mapNonEmpty!39238 (= mapRes!39238 (and tp!75128 e!603808))))

(declare-datatypes ((V!38529 0))(
  ( (V!38530 (val!12573 Int)) )
))
(declare-datatypes ((ValueCell!11819 0))(
  ( (ValueCellFull!11819 (v!15184 V!38529)) (EmptyCell!11819) )
))
(declare-fun mapValue!39238 () ValueCell!11819)

(declare-fun mapKey!39238 () (_ BitVec 32))

(declare-fun mapRest!39238 () (Array (_ BitVec 32) ValueCell!11819))

(declare-datatypes ((array!67086 0))(
  ( (array!67087 (arr!32247 (Array (_ BitVec 32) ValueCell!11819)) (size!32784 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67086)

(assert (=> mapNonEmpty!39238 (= (arr!32247 _values!955) (store mapRest!39238 mapKey!39238 mapValue!39238))))

(declare-fun b!1060479 () Bool)

(declare-fun res!708362 () Bool)

(declare-fun e!603810 () Bool)

(assert (=> b!1060479 (=> (not res!708362) (not e!603810))))

(declare-datatypes ((array!67088 0))(
  ( (array!67089 (arr!32248 (Array (_ BitVec 32) (_ BitVec 64))) (size!32785 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67088)

(declare-datatypes ((List!22596 0))(
  ( (Nil!22593) (Cons!22592 (h!23801 (_ BitVec 64)) (t!31912 List!22596)) )
))
(declare-fun arrayNoDuplicates!0 (array!67088 (_ BitVec 32) List!22596) Bool)

(assert (=> b!1060479 (= res!708362 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22593))))

(declare-fun b!1060480 () Bool)

(declare-fun res!708361 () Bool)

(assert (=> b!1060480 (=> (not res!708361) (not e!603810))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67088 (_ BitVec 32)) Bool)

(assert (=> b!1060480 (= res!708361 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1060481 () Bool)

(declare-fun tp_is_empty!25045 () Bool)

(assert (=> b!1060481 (= e!603808 tp_is_empty!25045)))

(declare-fun b!1060482 () Bool)

(declare-fun res!708363 () Bool)

(assert (=> b!1060482 (=> (not res!708363) (not e!603810))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1060482 (= res!708363 (and (= (size!32784 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32785 _keys!1163) (size!32784 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1060483 () Bool)

(assert (=> b!1060483 (= e!603810 false)))

(declare-fun minValue!907 () V!38529)

(declare-datatypes ((tuple2!15984 0))(
  ( (tuple2!15985 (_1!8002 (_ BitVec 64)) (_2!8002 V!38529)) )
))
(declare-datatypes ((List!22597 0))(
  ( (Nil!22594) (Cons!22593 (h!23802 tuple2!15984) (t!31913 List!22597)) )
))
(declare-datatypes ((ListLongMap!13965 0))(
  ( (ListLongMap!13966 (toList!6998 List!22597)) )
))
(declare-fun lt!467281 () ListLongMap!13965)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38529)

(declare-fun getCurrentListMapNoExtraKeys!3562 (array!67088 array!67086 (_ BitVec 32) (_ BitVec 32) V!38529 V!38529 (_ BitVec 32) Int) ListLongMap!13965)

(assert (=> b!1060483 (= lt!467281 (getCurrentListMapNoExtraKeys!3562 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!38529)

(declare-fun lt!467282 () ListLongMap!13965)

(assert (=> b!1060483 (= lt!467282 (getCurrentListMapNoExtraKeys!3562 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!39238 () Bool)

(assert (=> mapIsEmpty!39238 mapRes!39238))

(declare-fun b!1060484 () Bool)

(declare-fun e!603809 () Bool)

(assert (=> b!1060484 (= e!603809 tp_is_empty!25045)))

(declare-fun res!708360 () Bool)

(assert (=> start!93798 (=> (not res!708360) (not e!603810))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93798 (= res!708360 (validMask!0 mask!1515))))

(assert (=> start!93798 e!603810))

(assert (=> start!93798 true))

(assert (=> start!93798 tp_is_empty!25045))

(declare-fun e!603812 () Bool)

(declare-fun array_inv!24836 (array!67086) Bool)

(assert (=> start!93798 (and (array_inv!24836 _values!955) e!603812)))

(assert (=> start!93798 tp!75129))

(declare-fun array_inv!24837 (array!67088) Bool)

(assert (=> start!93798 (array_inv!24837 _keys!1163)))

(declare-fun b!1060485 () Bool)

(assert (=> b!1060485 (= e!603812 (and e!603809 mapRes!39238))))

(declare-fun condMapEmpty!39238 () Bool)

(declare-fun mapDefault!39238 () ValueCell!11819)

