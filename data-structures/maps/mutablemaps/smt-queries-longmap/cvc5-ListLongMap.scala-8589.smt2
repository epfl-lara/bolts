; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104800 () Bool)

(assert start!104800)

(declare-fun b_free!26569 () Bool)

(declare-fun b_next!26569 () Bool)

(assert (=> start!104800 (= b_free!26569 (not b_next!26569))))

(declare-fun tp!93198 () Bool)

(declare-fun b_and!44347 () Bool)

(assert (=> start!104800 (= tp!93198 b_and!44347)))

(declare-fun b!1248766 () Bool)

(declare-fun e!708701 () Bool)

(declare-fun tp_is_empty!31471 () Bool)

(assert (=> b!1248766 (= e!708701 tp_is_empty!31471)))

(declare-fun b!1248767 () Bool)

(declare-fun res!833159 () Bool)

(declare-fun e!708702 () Bool)

(assert (=> b!1248767 (=> (not res!833159) (not e!708702))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!80609 0))(
  ( (array!80610 (arr!38867 (Array (_ BitVec 32) (_ BitVec 64))) (size!39404 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80609)

(declare-datatypes ((V!47327 0))(
  ( (V!47328 (val!15798 Int)) )
))
(declare-datatypes ((ValueCell!14972 0))(
  ( (ValueCellFull!14972 (v!18494 V!47327)) (EmptyCell!14972) )
))
(declare-datatypes ((array!80611 0))(
  ( (array!80612 (arr!38868 (Array (_ BitVec 32) ValueCell!14972)) (size!39405 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80611)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1248767 (= res!833159 (and (= (size!39405 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39404 _keys!1118) (size!39405 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!48967 () Bool)

(declare-fun mapRes!48967 () Bool)

(assert (=> mapIsEmpty!48967 mapRes!48967))

(declare-fun mapNonEmpty!48967 () Bool)

(declare-fun tp!93197 () Bool)

(assert (=> mapNonEmpty!48967 (= mapRes!48967 (and tp!93197 e!708701))))

(declare-fun mapKey!48967 () (_ BitVec 32))

(declare-fun mapValue!48967 () ValueCell!14972)

(declare-fun mapRest!48967 () (Array (_ BitVec 32) ValueCell!14972))

(assert (=> mapNonEmpty!48967 (= (arr!38868 _values!914) (store mapRest!48967 mapKey!48967 mapValue!48967))))

(declare-fun b!1248768 () Bool)

(declare-fun res!833160 () Bool)

(assert (=> b!1248768 (=> (not res!833160) (not e!708702))))

(declare-datatypes ((List!27761 0))(
  ( (Nil!27758) (Cons!27757 (h!28966 (_ BitVec 64)) (t!41239 List!27761)) )
))
(declare-fun arrayNoDuplicates!0 (array!80609 (_ BitVec 32) List!27761) Bool)

(assert (=> b!1248768 (= res!833160 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27758))))

(declare-fun b!1248769 () Bool)

(declare-fun e!708699 () Bool)

(assert (=> b!1248769 (= e!708699 tp_is_empty!31471)))

(declare-fun res!833158 () Bool)

(assert (=> start!104800 (=> (not res!833158) (not e!708702))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104800 (= res!833158 (validMask!0 mask!1466))))

(assert (=> start!104800 e!708702))

(assert (=> start!104800 true))

(assert (=> start!104800 tp!93198))

(assert (=> start!104800 tp_is_empty!31471))

(declare-fun array_inv!29589 (array!80609) Bool)

(assert (=> start!104800 (array_inv!29589 _keys!1118)))

(declare-fun e!708698 () Bool)

(declare-fun array_inv!29590 (array!80611) Bool)

(assert (=> start!104800 (and (array_inv!29590 _values!914) e!708698)))

(declare-fun b!1248770 () Bool)

(assert (=> b!1248770 (= e!708698 (and e!708699 mapRes!48967))))

(declare-fun condMapEmpty!48967 () Bool)

(declare-fun mapDefault!48967 () ValueCell!14972)

