; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93820 () Bool)

(assert start!93820)

(declare-fun b_free!21257 () Bool)

(declare-fun b_next!21257 () Bool)

(assert (=> start!93820 (= b_free!21257 (not b_next!21257))))

(declare-fun tp!75194 () Bool)

(declare-fun b_and!33989 () Bool)

(assert (=> start!93820 (= tp!75194 b_and!33989)))

(declare-fun b!1060710 () Bool)

(declare-fun res!708494 () Bool)

(declare-fun e!603976 () Bool)

(assert (=> b!1060710 (=> (not res!708494) (not e!603976))))

(declare-datatypes ((array!67128 0))(
  ( (array!67129 (arr!32268 (Array (_ BitVec 32) (_ BitVec 64))) (size!32805 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67128)

(declare-datatypes ((List!22612 0))(
  ( (Nil!22609) (Cons!22608 (h!23817 (_ BitVec 64)) (t!31928 List!22612)) )
))
(declare-fun arrayNoDuplicates!0 (array!67128 (_ BitVec 32) List!22612) Bool)

(assert (=> b!1060710 (= res!708494 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22609))))

(declare-fun mapNonEmpty!39271 () Bool)

(declare-fun mapRes!39271 () Bool)

(declare-fun tp!75195 () Bool)

(declare-fun e!603977 () Bool)

(assert (=> mapNonEmpty!39271 (= mapRes!39271 (and tp!75195 e!603977))))

(declare-fun mapKey!39271 () (_ BitVec 32))

(declare-datatypes ((V!38557 0))(
  ( (V!38558 (val!12584 Int)) )
))
(declare-datatypes ((ValueCell!11830 0))(
  ( (ValueCellFull!11830 (v!15195 V!38557)) (EmptyCell!11830) )
))
(declare-fun mapValue!39271 () ValueCell!11830)

(declare-fun mapRest!39271 () (Array (_ BitVec 32) ValueCell!11830))

(declare-datatypes ((array!67130 0))(
  ( (array!67131 (arr!32269 (Array (_ BitVec 32) ValueCell!11830)) (size!32806 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67130)

(assert (=> mapNonEmpty!39271 (= (arr!32269 _values!955) (store mapRest!39271 mapKey!39271 mapValue!39271))))

(declare-fun mapIsEmpty!39271 () Bool)

(assert (=> mapIsEmpty!39271 mapRes!39271))

(declare-fun b!1060711 () Bool)

(assert (=> b!1060711 (= e!603976 false)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((tuple2!16000 0))(
  ( (tuple2!16001 (_1!8010 (_ BitVec 64)) (_2!8010 V!38557)) )
))
(declare-datatypes ((List!22613 0))(
  ( (Nil!22610) (Cons!22609 (h!23818 tuple2!16000) (t!31929 List!22613)) )
))
(declare-datatypes ((ListLongMap!13981 0))(
  ( (ListLongMap!13982 (toList!7006 List!22613)) )
))
(declare-fun lt!467348 () ListLongMap!13981)

(declare-fun minValue!907 () V!38557)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38557)

(declare-fun getCurrentListMapNoExtraKeys!3570 (array!67128 array!67130 (_ BitVec 32) (_ BitVec 32) V!38557 V!38557 (_ BitVec 32) Int) ListLongMap!13981)

(assert (=> b!1060711 (= lt!467348 (getCurrentListMapNoExtraKeys!3570 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!38557)

(declare-fun lt!467347 () ListLongMap!13981)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1060711 (= lt!467347 (getCurrentListMapNoExtraKeys!3570 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1060712 () Bool)

(declare-fun res!708493 () Bool)

(assert (=> b!1060712 (=> (not res!708493) (not e!603976))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67128 (_ BitVec 32)) Bool)

(assert (=> b!1060712 (= res!708493 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1060713 () Bool)

(declare-fun e!603973 () Bool)

(declare-fun e!603974 () Bool)

(assert (=> b!1060713 (= e!603973 (and e!603974 mapRes!39271))))

(declare-fun condMapEmpty!39271 () Bool)

(declare-fun mapDefault!39271 () ValueCell!11830)

