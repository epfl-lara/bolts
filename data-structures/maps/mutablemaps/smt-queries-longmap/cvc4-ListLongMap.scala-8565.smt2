; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104626 () Bool)

(assert start!104626)

(declare-fun b!1247224 () Bool)

(declare-fun e!707544 () Bool)

(declare-fun tp_is_empty!31331 () Bool)

(assert (=> b!1247224 (= e!707544 tp_is_empty!31331)))

(declare-fun b!1247225 () Bool)

(declare-fun res!832327 () Bool)

(declare-fun e!707546 () Bool)

(assert (=> b!1247225 (=> (not res!832327) (not e!707546))))

(declare-datatypes ((List!27687 0))(
  ( (Nil!27684) (Cons!27683 (h!28892 (_ BitVec 64)) (t!41163 List!27687)) )
))
(declare-fun noDuplicate!2068 (List!27687) Bool)

(assert (=> b!1247225 (= res!832327 (noDuplicate!2068 Nil!27684))))

(declare-fun b!1247226 () Bool)

(declare-fun e!707548 () Bool)

(declare-fun contains!7484 (List!27687 (_ BitVec 64)) Bool)

(assert (=> b!1247226 (= e!707548 (contains!7484 Nil!27684 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1247227 () Bool)

(assert (=> b!1247227 (= e!707546 e!707548)))

(declare-fun res!832325 () Bool)

(assert (=> b!1247227 (=> res!832325 e!707548)))

(assert (=> b!1247227 (= res!832325 (contains!7484 Nil!27684 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!832329 () Bool)

(assert (=> start!104626 (=> (not res!832329) (not e!707546))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104626 (= res!832329 (validMask!0 mask!1466))))

(assert (=> start!104626 e!707546))

(assert (=> start!104626 true))

(declare-datatypes ((array!80337 0))(
  ( (array!80338 (arr!38734 (Array (_ BitVec 32) (_ BitVec 64))) (size!39271 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80337)

(declare-fun array_inv!29503 (array!80337) Bool)

(assert (=> start!104626 (array_inv!29503 _keys!1118)))

(declare-datatypes ((V!47139 0))(
  ( (V!47140 (val!15728 Int)) )
))
(declare-datatypes ((ValueCell!14902 0))(
  ( (ValueCellFull!14902 (v!18423 V!47139)) (EmptyCell!14902) )
))
(declare-datatypes ((array!80339 0))(
  ( (array!80340 (arr!38735 (Array (_ BitVec 32) ValueCell!14902)) (size!39272 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80339)

(declare-fun e!707547 () Bool)

(declare-fun array_inv!29504 (array!80339) Bool)

(assert (=> start!104626 (and (array_inv!29504 _values!914) e!707547)))

(declare-fun b!1247228 () Bool)

(declare-fun res!832328 () Bool)

(assert (=> b!1247228 (=> (not res!832328) (not e!707546))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1247228 (= res!832328 (and (= (size!39272 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39271 _keys!1118) (size!39272 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!48748 () Bool)

(declare-fun mapRes!48748 () Bool)

(assert (=> mapIsEmpty!48748 mapRes!48748))

(declare-fun b!1247229 () Bool)

(declare-fun res!832330 () Bool)

(assert (=> b!1247229 (=> (not res!832330) (not e!707546))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80337 (_ BitVec 32)) Bool)

(assert (=> b!1247229 (= res!832330 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1247230 () Bool)

(declare-fun e!707545 () Bool)

(assert (=> b!1247230 (= e!707547 (and e!707545 mapRes!48748))))

(declare-fun condMapEmpty!48748 () Bool)

(declare-fun mapDefault!48748 () ValueCell!14902)

