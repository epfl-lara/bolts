; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93898 () Bool)

(assert start!93898)

(declare-fun b_free!21335 () Bool)

(declare-fun b_next!21335 () Bool)

(assert (=> start!93898 (= b_free!21335 (not b_next!21335))))

(declare-fun tp!75428 () Bool)

(declare-fun b_and!34067 () Bool)

(assert (=> start!93898 (= tp!75428 b_and!34067)))

(declare-fun b!1061529 () Bool)

(declare-fun res!708961 () Bool)

(declare-fun e!604559 () Bool)

(assert (=> b!1061529 (=> (not res!708961) (not e!604559))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38661 0))(
  ( (V!38662 (val!12623 Int)) )
))
(declare-datatypes ((ValueCell!11869 0))(
  ( (ValueCellFull!11869 (v!15234 V!38661)) (EmptyCell!11869) )
))
(declare-datatypes ((array!67272 0))(
  ( (array!67273 (arr!32340 (Array (_ BitVec 32) ValueCell!11869)) (size!32877 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67272)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67274 0))(
  ( (array!67275 (arr!32341 (Array (_ BitVec 32) (_ BitVec 64))) (size!32878 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67274)

(assert (=> b!1061529 (= res!708961 (and (= (size!32877 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32878 _keys!1163) (size!32877 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1061530 () Bool)

(assert (=> b!1061530 (= e!604559 (not true))))

(declare-datatypes ((tuple2!16050 0))(
  ( (tuple2!16051 (_1!8035 (_ BitVec 64)) (_2!8035 V!38661)) )
))
(declare-datatypes ((List!22663 0))(
  ( (Nil!22660) (Cons!22659 (h!23868 tuple2!16050) (t!31979 List!22663)) )
))
(declare-datatypes ((ListLongMap!14031 0))(
  ( (ListLongMap!14032 (toList!7031 List!22663)) )
))
(declare-fun lt!467636 () ListLongMap!14031)

(declare-fun lt!467635 () ListLongMap!14031)

(assert (=> b!1061530 (= lt!467636 lt!467635)))

(declare-fun zeroValueBefore!47 () V!38661)

(declare-datatypes ((Unit!34737 0))(
  ( (Unit!34738) )
))
(declare-fun lt!467634 () Unit!34737)

(declare-fun minValue!907 () V!38661)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38661)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!634 (array!67274 array!67272 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38661 V!38661 V!38661 V!38661 (_ BitVec 32) Int) Unit!34737)

(assert (=> b!1061530 (= lt!467634 (lemmaNoChangeToArrayThenSameMapNoExtras!634 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3595 (array!67274 array!67272 (_ BitVec 32) (_ BitVec 32) V!38661 V!38661 (_ BitVec 32) Int) ListLongMap!14031)

(assert (=> b!1061530 (= lt!467635 (getCurrentListMapNoExtraKeys!3595 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1061530 (= lt!467636 (getCurrentListMapNoExtraKeys!3595 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1061531 () Bool)

(declare-fun e!604560 () Bool)

(declare-fun tp_is_empty!25145 () Bool)

(assert (=> b!1061531 (= e!604560 tp_is_empty!25145)))

(declare-fun b!1061532 () Bool)

(declare-fun res!708962 () Bool)

(assert (=> b!1061532 (=> (not res!708962) (not e!604559))))

(declare-datatypes ((List!22664 0))(
  ( (Nil!22661) (Cons!22660 (h!23869 (_ BitVec 64)) (t!31980 List!22664)) )
))
(declare-fun arrayNoDuplicates!0 (array!67274 (_ BitVec 32) List!22664) Bool)

(assert (=> b!1061532 (= res!708962 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22661))))

(declare-fun mapIsEmpty!39388 () Bool)

(declare-fun mapRes!39388 () Bool)

(assert (=> mapIsEmpty!39388 mapRes!39388))

(declare-fun res!708963 () Bool)

(assert (=> start!93898 (=> (not res!708963) (not e!604559))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93898 (= res!708963 (validMask!0 mask!1515))))

(assert (=> start!93898 e!604559))

(assert (=> start!93898 true))

(assert (=> start!93898 tp_is_empty!25145))

(declare-fun e!604562 () Bool)

(declare-fun array_inv!24898 (array!67272) Bool)

(assert (=> start!93898 (and (array_inv!24898 _values!955) e!604562)))

(assert (=> start!93898 tp!75428))

(declare-fun array_inv!24899 (array!67274) Bool)

(assert (=> start!93898 (array_inv!24899 _keys!1163)))

(declare-fun b!1061533 () Bool)

(declare-fun res!708960 () Bool)

(assert (=> b!1061533 (=> (not res!708960) (not e!604559))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67274 (_ BitVec 32)) Bool)

(assert (=> b!1061533 (= res!708960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1061534 () Bool)

(declare-fun e!604561 () Bool)

(assert (=> b!1061534 (= e!604562 (and e!604561 mapRes!39388))))

(declare-fun condMapEmpty!39388 () Bool)

(declare-fun mapDefault!39388 () ValueCell!11869)

