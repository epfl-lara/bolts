; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105096 () Bool)

(assert start!105096)

(declare-fun b_free!26807 () Bool)

(declare-fun b_next!26807 () Bool)

(assert (=> start!105096 (= b_free!26807 (not b_next!26807))))

(declare-fun tp!93921 () Bool)

(declare-fun b_and!44613 () Bool)

(assert (=> start!105096 (= tp!93921 b_and!44613)))

(declare-fun b!1251997 () Bool)

(declare-fun res!835072 () Bool)

(declare-fun e!711074 () Bool)

(assert (=> b!1251997 (=> (not res!835072) (not e!711074))))

(declare-datatypes ((array!81061 0))(
  ( (array!81062 (arr!39090 (Array (_ BitVec 32) (_ BitVec 64))) (size!39627 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81061)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81061 (_ BitVec 32)) Bool)

(assert (=> b!1251997 (= res!835072 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!49333 () Bool)

(declare-fun mapRes!49333 () Bool)

(declare-fun tp!93920 () Bool)

(declare-fun e!711071 () Bool)

(assert (=> mapNonEmpty!49333 (= mapRes!49333 (and tp!93920 e!711071))))

(declare-datatypes ((V!47643 0))(
  ( (V!47644 (val!15917 Int)) )
))
(declare-datatypes ((ValueCell!15091 0))(
  ( (ValueCellFull!15091 (v!18615 V!47643)) (EmptyCell!15091) )
))
(declare-fun mapValue!49333 () ValueCell!15091)

(declare-fun mapKey!49333 () (_ BitVec 32))

(declare-datatypes ((array!81063 0))(
  ( (array!81064 (arr!39091 (Array (_ BitVec 32) ValueCell!15091)) (size!39628 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81063)

(declare-fun mapRest!49333 () (Array (_ BitVec 32) ValueCell!15091))

(assert (=> mapNonEmpty!49333 (= (arr!39091 _values!914) (store mapRest!49333 mapKey!49333 mapValue!49333))))

(declare-fun res!835073 () Bool)

(assert (=> start!105096 (=> (not res!835073) (not e!711074))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105096 (= res!835073 (validMask!0 mask!1466))))

(assert (=> start!105096 e!711074))

(assert (=> start!105096 true))

(assert (=> start!105096 tp!93921))

(declare-fun tp_is_empty!31709 () Bool)

(assert (=> start!105096 tp_is_empty!31709))

(declare-fun array_inv!29745 (array!81061) Bool)

(assert (=> start!105096 (array_inv!29745 _keys!1118)))

(declare-fun e!711073 () Bool)

(declare-fun array_inv!29746 (array!81063) Bool)

(assert (=> start!105096 (and (array_inv!29746 _values!914) e!711073)))

(declare-fun b!1251998 () Bool)

(declare-fun e!711072 () Bool)

(assert (=> b!1251998 (= e!711072 tp_is_empty!31709)))

(declare-fun b!1251999 () Bool)

(declare-fun res!835071 () Bool)

(assert (=> b!1251999 (=> (not res!835071) (not e!711074))))

(declare-datatypes ((List!27922 0))(
  ( (Nil!27919) (Cons!27918 (h!29127 (_ BitVec 64)) (t!41406 List!27922)) )
))
(declare-fun arrayNoDuplicates!0 (array!81061 (_ BitVec 32) List!27922) Bool)

(assert (=> b!1251999 (= res!835071 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27919))))

(declare-fun b!1252000 () Bool)

(assert (=> b!1252000 (= e!711073 (and e!711072 mapRes!49333))))

(declare-fun condMapEmpty!49333 () Bool)

(declare-fun mapDefault!49333 () ValueCell!15091)

