; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104564 () Bool)

(assert start!104564)

(declare-fun res!832153 () Bool)

(declare-fun e!707255 () Bool)

(assert (=> start!104564 (=> (not res!832153) (not e!707255))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104564 (= res!832153 (validMask!0 mask!1466))))

(assert (=> start!104564 e!707255))

(assert (=> start!104564 true))

(declare-datatypes ((array!80275 0))(
  ( (array!80276 (arr!38707 (Array (_ BitVec 32) (_ BitVec 64))) (size!39244 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80275)

(declare-fun array_inv!29483 (array!80275) Bool)

(assert (=> start!104564 (array_inv!29483 _keys!1118)))

(declare-datatypes ((V!47099 0))(
  ( (V!47100 (val!15713 Int)) )
))
(declare-datatypes ((ValueCell!14887 0))(
  ( (ValueCellFull!14887 (v!18408 V!47099)) (EmptyCell!14887) )
))
(declare-datatypes ((array!80277 0))(
  ( (array!80278 (arr!38708 (Array (_ BitVec 32) ValueCell!14887)) (size!39245 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80277)

(declare-fun e!707256 () Bool)

(declare-fun array_inv!29484 (array!80277) Bool)

(assert (=> start!104564 (and (array_inv!29484 _values!914) e!707256)))

(declare-fun mapNonEmpty!48691 () Bool)

(declare-fun mapRes!48691 () Bool)

(declare-fun tp!92793 () Bool)

(declare-fun e!707254 () Bool)

(assert (=> mapNonEmpty!48691 (= mapRes!48691 (and tp!92793 e!707254))))

(declare-fun mapKey!48691 () (_ BitVec 32))

(declare-fun mapValue!48691 () ValueCell!14887)

(declare-fun mapRest!48691 () (Array (_ BitVec 32) ValueCell!14887))

(assert (=> mapNonEmpty!48691 (= (arr!38708 _values!914) (store mapRest!48691 mapKey!48691 mapValue!48691))))

(declare-fun b!1246867 () Bool)

(declare-fun e!707253 () Bool)

(declare-fun tp_is_empty!31301 () Bool)

(assert (=> b!1246867 (= e!707253 tp_is_empty!31301)))

(declare-fun b!1246868 () Bool)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1246868 (= e!707255 (and (= (size!39245 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39244 _keys!1118) (size!39245 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (size!39244 _keys!1118) (bvadd #b00000000000000000000000000000001 mask!1466)))))))

(declare-fun b!1246869 () Bool)

(assert (=> b!1246869 (= e!707254 tp_is_empty!31301)))

(declare-fun mapIsEmpty!48691 () Bool)

(assert (=> mapIsEmpty!48691 mapRes!48691))

(declare-fun b!1246870 () Bool)

(assert (=> b!1246870 (= e!707256 (and e!707253 mapRes!48691))))

(declare-fun condMapEmpty!48691 () Bool)

(declare-fun mapDefault!48691 () ValueCell!14887)

