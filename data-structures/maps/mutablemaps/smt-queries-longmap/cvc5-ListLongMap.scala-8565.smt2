; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104622 () Bool)

(assert start!104622)

(declare-fun b!1247170 () Bool)

(declare-fun e!707512 () Bool)

(declare-fun tp_is_empty!31327 () Bool)

(assert (=> b!1247170 (= e!707512 tp_is_empty!31327)))

(declare-fun b!1247171 () Bool)

(declare-fun e!707510 () Bool)

(assert (=> b!1247171 (= e!707510 tp_is_empty!31327)))

(declare-fun b!1247172 () Bool)

(declare-fun res!832291 () Bool)

(declare-fun e!707509 () Bool)

(assert (=> b!1247172 (=> (not res!832291) (not e!707509))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!80329 0))(
  ( (array!80330 (arr!38730 (Array (_ BitVec 32) (_ BitVec 64))) (size!39267 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80329)

(declare-datatypes ((V!47135 0))(
  ( (V!47136 (val!15726 Int)) )
))
(declare-datatypes ((ValueCell!14900 0))(
  ( (ValueCellFull!14900 (v!18421 V!47135)) (EmptyCell!14900) )
))
(declare-datatypes ((array!80331 0))(
  ( (array!80332 (arr!38731 (Array (_ BitVec 32) ValueCell!14900)) (size!39268 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80331)

(assert (=> b!1247172 (= res!832291 (and (= (size!39268 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39267 _keys!1118) (size!39268 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!832293 () Bool)

(assert (=> start!104622 (=> (not res!832293) (not e!707509))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104622 (= res!832293 (validMask!0 mask!1466))))

(assert (=> start!104622 e!707509))

(assert (=> start!104622 true))

(declare-fun array_inv!29499 (array!80329) Bool)

(assert (=> start!104622 (array_inv!29499 _keys!1118)))

(declare-fun e!707511 () Bool)

(declare-fun array_inv!29500 (array!80331) Bool)

(assert (=> start!104622 (and (array_inv!29500 _values!914) e!707511)))

(declare-fun b!1247173 () Bool)

(declare-fun e!707507 () Bool)

(assert (=> b!1247173 (= e!707509 e!707507)))

(declare-fun res!832292 () Bool)

(assert (=> b!1247173 (=> res!832292 e!707507)))

(declare-datatypes ((List!27685 0))(
  ( (Nil!27682) (Cons!27681 (h!28890 (_ BitVec 64)) (t!41161 List!27685)) )
))
(declare-fun contains!7482 (List!27685 (_ BitVec 64)) Bool)

(assert (=> b!1247173 (= res!832292 (contains!7482 Nil!27682 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!48742 () Bool)

(declare-fun mapRes!48742 () Bool)

(assert (=> mapIsEmpty!48742 mapRes!48742))

(declare-fun b!1247174 () Bool)

(declare-fun res!832289 () Bool)

(assert (=> b!1247174 (=> (not res!832289) (not e!707509))))

(declare-fun noDuplicate!2066 (List!27685) Bool)

(assert (=> b!1247174 (= res!832289 (noDuplicate!2066 Nil!27682))))

(declare-fun b!1247175 () Bool)

(declare-fun res!832294 () Bool)

(assert (=> b!1247175 (=> (not res!832294) (not e!707509))))

(assert (=> b!1247175 (= res!832294 (and (bvsle #b00000000000000000000000000000000 (size!39267 _keys!1118)) (bvslt (size!39267 _keys!1118) #b01111111111111111111111111111111)))))

(declare-fun b!1247176 () Bool)

(assert (=> b!1247176 (= e!707511 (and e!707512 mapRes!48742))))

(declare-fun condMapEmpty!48742 () Bool)

(declare-fun mapDefault!48742 () ValueCell!14900)

