; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104818 () Bool)

(assert start!104818)

(declare-fun b_free!26587 () Bool)

(declare-fun b_next!26587 () Bool)

(assert (=> start!104818 (= b_free!26587 (not b_next!26587))))

(declare-fun tp!93251 () Bool)

(declare-fun b_and!44365 () Bool)

(assert (=> start!104818 (= tp!93251 b_and!44365)))

(declare-fun res!833267 () Bool)

(declare-fun e!708836 () Bool)

(assert (=> start!104818 (=> (not res!833267) (not e!708836))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104818 (= res!833267 (validMask!0 mask!1466))))

(assert (=> start!104818 e!708836))

(assert (=> start!104818 true))

(assert (=> start!104818 tp!93251))

(declare-fun tp_is_empty!31489 () Bool)

(assert (=> start!104818 tp_is_empty!31489))

(declare-datatypes ((array!80643 0))(
  ( (array!80644 (arr!38884 (Array (_ BitVec 32) (_ BitVec 64))) (size!39421 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80643)

(declare-fun array_inv!29605 (array!80643) Bool)

(assert (=> start!104818 (array_inv!29605 _keys!1118)))

(declare-datatypes ((V!47351 0))(
  ( (V!47352 (val!15807 Int)) )
))
(declare-datatypes ((ValueCell!14981 0))(
  ( (ValueCellFull!14981 (v!18503 V!47351)) (EmptyCell!14981) )
))
(declare-datatypes ((array!80645 0))(
  ( (array!80646 (arr!38885 (Array (_ BitVec 32) ValueCell!14981)) (size!39422 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80645)

(declare-fun e!708837 () Bool)

(declare-fun array_inv!29606 (array!80645) Bool)

(assert (=> start!104818 (and (array_inv!29606 _values!914) e!708837)))

(declare-fun b!1248955 () Bool)

(declare-fun res!833266 () Bool)

(assert (=> b!1248955 (=> (not res!833266) (not e!708836))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1248955 (= res!833266 (and (= (size!39422 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39421 _keys!1118) (size!39422 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1248956 () Bool)

(declare-fun e!708834 () Bool)

(declare-fun mapRes!48994 () Bool)

(assert (=> b!1248956 (= e!708837 (and e!708834 mapRes!48994))))

(declare-fun condMapEmpty!48994 () Bool)

(declare-fun mapDefault!48994 () ValueCell!14981)

