; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93708 () Bool)

(assert start!93708)

(declare-fun b!1059667 () Bool)

(declare-fun e!603224 () Bool)

(declare-fun tp_is_empty!24977 () Bool)

(assert (=> b!1059667 (= e!603224 tp_is_empty!24977)))

(declare-fun b!1059668 () Bool)

(declare-fun res!707922 () Bool)

(declare-fun e!603223 () Bool)

(assert (=> b!1059668 (=> (not res!707922) (not e!603223))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38437 0))(
  ( (V!38438 (val!12539 Int)) )
))
(declare-datatypes ((ValueCell!11785 0))(
  ( (ValueCellFull!11785 (v!15150 V!38437)) (EmptyCell!11785) )
))
(declare-datatypes ((array!66960 0))(
  ( (array!66961 (arr!32186 (Array (_ BitVec 32) ValueCell!11785)) (size!32723 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66960)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!66962 0))(
  ( (array!66963 (arr!32187 (Array (_ BitVec 32) (_ BitVec 64))) (size!32724 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66962)

(assert (=> b!1059668 (= res!707922 (and (= (size!32723 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32724 _keys!1163) (size!32723 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1059669 () Bool)

(declare-fun e!603226 () Bool)

(declare-fun e!603225 () Bool)

(declare-fun mapRes!39130 () Bool)

(assert (=> b!1059669 (= e!603226 (and e!603225 mapRes!39130))))

(declare-fun condMapEmpty!39130 () Bool)

(declare-fun mapDefault!39130 () ValueCell!11785)

