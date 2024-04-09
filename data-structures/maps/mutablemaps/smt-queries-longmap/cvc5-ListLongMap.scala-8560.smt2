; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104560 () Bool)

(assert start!104560)

(declare-fun b!1246843 () Bool)

(declare-fun e!707226 () Bool)

(declare-fun tp_is_empty!31297 () Bool)

(assert (=> b!1246843 (= e!707226 tp_is_empty!31297)))

(declare-fun mapIsEmpty!48685 () Bool)

(declare-fun mapRes!48685 () Bool)

(assert (=> mapIsEmpty!48685 mapRes!48685))

(declare-fun mapNonEmpty!48685 () Bool)

(declare-fun tp!92787 () Bool)

(assert (=> mapNonEmpty!48685 (= mapRes!48685 (and tp!92787 e!707226))))

(declare-datatypes ((V!47095 0))(
  ( (V!47096 (val!15711 Int)) )
))
(declare-datatypes ((ValueCell!14885 0))(
  ( (ValueCellFull!14885 (v!18406 V!47095)) (EmptyCell!14885) )
))
(declare-fun mapRest!48685 () (Array (_ BitVec 32) ValueCell!14885))

(declare-fun mapKey!48685 () (_ BitVec 32))

(declare-fun mapValue!48685 () ValueCell!14885)

(declare-datatypes ((array!80267 0))(
  ( (array!80268 (arr!38703 (Array (_ BitVec 32) ValueCell!14885)) (size!39240 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80267)

(assert (=> mapNonEmpty!48685 (= (arr!38703 _values!914) (store mapRest!48685 mapKey!48685 mapValue!48685))))

(declare-fun b!1246845 () Bool)

(declare-fun e!707223 () Bool)

(assert (=> b!1246845 (= e!707223 tp_is_empty!31297)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun b!1246846 () Bool)

(declare-fun e!707225 () Bool)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!80269 0))(
  ( (array!80270 (arr!38704 (Array (_ BitVec 32) (_ BitVec 64))) (size!39241 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80269)

(assert (=> b!1246846 (= e!707225 (and (= (size!39240 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39241 _keys!1118) (size!39240 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (size!39241 _keys!1118) (bvadd #b00000000000000000000000000000001 mask!1466)))))))

(declare-fun res!832147 () Bool)

(assert (=> start!104560 (=> (not res!832147) (not e!707225))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104560 (= res!832147 (validMask!0 mask!1466))))

(assert (=> start!104560 e!707225))

(assert (=> start!104560 true))

(declare-fun array_inv!29479 (array!80269) Bool)

(assert (=> start!104560 (array_inv!29479 _keys!1118)))

(declare-fun e!707224 () Bool)

(declare-fun array_inv!29480 (array!80267) Bool)

(assert (=> start!104560 (and (array_inv!29480 _values!914) e!707224)))

(declare-fun b!1246844 () Bool)

(assert (=> b!1246844 (= e!707224 (and e!707223 mapRes!48685))))

(declare-fun condMapEmpty!48685 () Bool)

(declare-fun mapDefault!48685 () ValueCell!14885)

