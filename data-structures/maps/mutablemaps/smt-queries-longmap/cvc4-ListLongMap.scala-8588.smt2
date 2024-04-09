; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104798 () Bool)

(assert start!104798)

(declare-fun b_free!26567 () Bool)

(declare-fun b_next!26567 () Bool)

(assert (=> start!104798 (= b_free!26567 (not b_next!26567))))

(declare-fun tp!93191 () Bool)

(declare-fun b_and!44345 () Bool)

(assert (=> start!104798 (= tp!93191 b_and!44345)))

(declare-fun b!1248745 () Bool)

(declare-fun res!833145 () Bool)

(declare-fun e!708685 () Bool)

(assert (=> b!1248745 (=> (not res!833145) (not e!708685))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!80605 0))(
  ( (array!80606 (arr!38865 (Array (_ BitVec 32) (_ BitVec 64))) (size!39402 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80605)

(declare-datatypes ((V!47323 0))(
  ( (V!47324 (val!15797 Int)) )
))
(declare-datatypes ((ValueCell!14971 0))(
  ( (ValueCellFull!14971 (v!18493 V!47323)) (EmptyCell!14971) )
))
(declare-datatypes ((array!80607 0))(
  ( (array!80608 (arr!38866 (Array (_ BitVec 32) ValueCell!14971)) (size!39403 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80607)

(assert (=> b!1248745 (= res!833145 (and (= (size!39403 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39402 _keys!1118) (size!39403 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1248746 () Bool)

(declare-fun res!833147 () Bool)

(assert (=> b!1248746 (=> (not res!833147) (not e!708685))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80605 (_ BitVec 32)) Bool)

(assert (=> b!1248746 (= res!833147 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1248747 () Bool)

(declare-fun e!708686 () Bool)

(declare-fun tp_is_empty!31469 () Bool)

(assert (=> b!1248747 (= e!708686 tp_is_empty!31469)))

(declare-fun res!833148 () Bool)

(assert (=> start!104798 (=> (not res!833148) (not e!708685))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104798 (= res!833148 (validMask!0 mask!1466))))

(assert (=> start!104798 e!708685))

(assert (=> start!104798 true))

(assert (=> start!104798 tp!93191))

(assert (=> start!104798 tp_is_empty!31469))

(declare-fun array_inv!29587 (array!80605) Bool)

(assert (=> start!104798 (array_inv!29587 _keys!1118)))

(declare-fun e!708684 () Bool)

(declare-fun array_inv!29588 (array!80607) Bool)

(assert (=> start!104798 (and (array_inv!29588 _values!914) e!708684)))

(declare-fun b!1248748 () Bool)

(declare-fun res!833146 () Bool)

(assert (=> b!1248748 (=> (not res!833146) (not e!708685))))

(declare-datatypes ((List!27760 0))(
  ( (Nil!27757) (Cons!27756 (h!28965 (_ BitVec 64)) (t!41238 List!27760)) )
))
(declare-fun arrayNoDuplicates!0 (array!80605 (_ BitVec 32) List!27760) Bool)

(assert (=> b!1248748 (= res!833146 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27757))))

(declare-fun b!1248749 () Bool)

(declare-fun mapRes!48964 () Bool)

(assert (=> b!1248749 (= e!708684 (and e!708686 mapRes!48964))))

(declare-fun condMapEmpty!48964 () Bool)

(declare-fun mapDefault!48964 () ValueCell!14971)

