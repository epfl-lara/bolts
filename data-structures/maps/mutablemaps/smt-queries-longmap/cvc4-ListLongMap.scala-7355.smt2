; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93874 () Bool)

(assert start!93874)

(declare-fun b_free!21311 () Bool)

(declare-fun b_next!21311 () Bool)

(assert (=> start!93874 (= b_free!21311 (not b_next!21311))))

(declare-fun tp!75357 () Bool)

(declare-fun b_and!34043 () Bool)

(assert (=> start!93874 (= tp!75357 b_and!34043)))

(declare-fun mapIsEmpty!39352 () Bool)

(declare-fun mapRes!39352 () Bool)

(assert (=> mapIsEmpty!39352 mapRes!39352))

(declare-fun mapNonEmpty!39352 () Bool)

(declare-fun tp!75356 () Bool)

(declare-fun e!604380 () Bool)

(assert (=> mapNonEmpty!39352 (= mapRes!39352 (and tp!75356 e!604380))))

(declare-datatypes ((V!38629 0))(
  ( (V!38630 (val!12611 Int)) )
))
(declare-datatypes ((ValueCell!11857 0))(
  ( (ValueCellFull!11857 (v!15222 V!38629)) (EmptyCell!11857) )
))
(declare-fun mapValue!39352 () ValueCell!11857)

(declare-fun mapKey!39352 () (_ BitVec 32))

(declare-datatypes ((array!67228 0))(
  ( (array!67229 (arr!32318 (Array (_ BitVec 32) ValueCell!11857)) (size!32855 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67228)

(declare-fun mapRest!39352 () (Array (_ BitVec 32) ValueCell!11857))

(assert (=> mapNonEmpty!39352 (= (arr!32318 _values!955) (store mapRest!39352 mapKey!39352 mapValue!39352))))

(declare-fun b!1061278 () Bool)

(declare-fun res!708818 () Bool)

(declare-fun e!604379 () Bool)

(assert (=> b!1061278 (=> (not res!708818) (not e!604379))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67230 0))(
  ( (array!67231 (arr!32319 (Array (_ BitVec 32) (_ BitVec 64))) (size!32856 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67230)

(assert (=> b!1061278 (= res!708818 (and (= (size!32855 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32856 _keys!1163) (size!32855 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1061279 () Bool)

(declare-fun res!708816 () Bool)

(assert (=> b!1061279 (=> (not res!708816) (not e!604379))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67230 (_ BitVec 32)) Bool)

(assert (=> b!1061279 (= res!708816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1061280 () Bool)

(declare-fun e!604382 () Bool)

(declare-fun e!604378 () Bool)

(assert (=> b!1061280 (= e!604382 (and e!604378 mapRes!39352))))

(declare-fun condMapEmpty!39352 () Bool)

(declare-fun mapDefault!39352 () ValueCell!11857)

