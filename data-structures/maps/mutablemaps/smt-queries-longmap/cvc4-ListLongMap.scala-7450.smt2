; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94634 () Bool)

(assert start!94634)

(declare-fun b_free!21881 () Bool)

(declare-fun b_next!21881 () Bool)

(assert (=> start!94634 (= b_free!21881 (not b_next!21881))))

(declare-fun tp!77096 () Bool)

(declare-fun b_and!34711 () Bool)

(assert (=> start!94634 (= tp!77096 b_and!34711)))

(declare-fun b!1069588 () Bool)

(declare-fun res!713725 () Bool)

(declare-fun e!610477 () Bool)

(assert (=> b!1069588 (=> (not res!713725) (not e!610477))))

(declare-datatypes ((array!68330 0))(
  ( (array!68331 (arr!32859 (Array (_ BitVec 32) (_ BitVec 64))) (size!33396 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68330)

(declare-datatypes ((List!23051 0))(
  ( (Nil!23048) (Cons!23047 (h!24256 (_ BitVec 64)) (t!32387 List!23051)) )
))
(declare-fun arrayNoDuplicates!0 (array!68330 (_ BitVec 32) List!23051) Bool)

(assert (=> b!1069588 (= res!713725 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23048))))

(declare-fun b!1069589 () Bool)

(assert (=> b!1069589 (= e!610477 (not true))))

(declare-datatypes ((V!39389 0))(
  ( (V!39390 (val!12896 Int)) )
))
(declare-datatypes ((tuple2!16464 0))(
  ( (tuple2!16465 (_1!8242 (_ BitVec 64)) (_2!8242 V!39389)) )
))
(declare-datatypes ((List!23052 0))(
  ( (Nil!23049) (Cons!23048 (h!24257 tuple2!16464) (t!32388 List!23052)) )
))
(declare-datatypes ((ListLongMap!14445 0))(
  ( (ListLongMap!14446 (toList!7238 List!23052)) )
))
(declare-fun lt!472673 () ListLongMap!14445)

(declare-fun lt!472675 () ListLongMap!14445)

(assert (=> b!1069589 (= lt!472673 lt!472675)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39389)

(declare-datatypes ((Unit!35142 0))(
  ( (Unit!35143) )
))
(declare-fun lt!472674 () Unit!35142)

(declare-datatypes ((ValueCell!12142 0))(
  ( (ValueCellFull!12142 (v!15513 V!39389)) (EmptyCell!12142) )
))
(declare-datatypes ((array!68332 0))(
  ( (array!68333 (arr!32860 (Array (_ BitVec 32) ValueCell!12142)) (size!33397 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68332)

(declare-fun minValue!907 () V!39389)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39389)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!814 (array!68330 array!68332 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39389 V!39389 V!39389 V!39389 (_ BitVec 32) Int) Unit!35142)

(assert (=> b!1069589 (= lt!472674 (lemmaNoChangeToArrayThenSameMapNoExtras!814 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3775 (array!68330 array!68332 (_ BitVec 32) (_ BitVec 32) V!39389 V!39389 (_ BitVec 32) Int) ListLongMap!14445)

(assert (=> b!1069589 (= lt!472675 (getCurrentListMapNoExtraKeys!3775 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1069589 (= lt!472673 (getCurrentListMapNoExtraKeys!3775 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1069590 () Bool)

(declare-fun e!610481 () Bool)

(declare-fun e!610479 () Bool)

(declare-fun mapRes!40237 () Bool)

(assert (=> b!1069590 (= e!610481 (and e!610479 mapRes!40237))))

(declare-fun condMapEmpty!40237 () Bool)

(declare-fun mapDefault!40237 () ValueCell!12142)

