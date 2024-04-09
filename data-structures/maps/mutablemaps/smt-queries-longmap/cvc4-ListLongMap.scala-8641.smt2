; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105204 () Bool)

(assert start!105204)

(declare-fun b_free!26885 () Bool)

(declare-fun b_next!26885 () Bool)

(assert (=> start!105204 (= b_free!26885 (not b_next!26885))))

(declare-fun tp!94160 () Bool)

(declare-fun b_and!44709 () Bool)

(assert (=> start!105204 (= tp!94160 b_and!44709)))

(declare-fun b!1253146 () Bool)

(declare-fun res!835729 () Bool)

(declare-fun e!711902 () Bool)

(assert (=> b!1253146 (=> (not res!835729) (not e!711902))))

(declare-datatypes ((array!81215 0))(
  ( (array!81216 (arr!39165 (Array (_ BitVec 32) (_ BitVec 64))) (size!39702 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81215)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81215 (_ BitVec 32)) Bool)

(assert (=> b!1253146 (= res!835729 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun res!835728 () Bool)

(assert (=> start!105204 (=> (not res!835728) (not e!711902))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105204 (= res!835728 (validMask!0 mask!1466))))

(assert (=> start!105204 e!711902))

(assert (=> start!105204 true))

(assert (=> start!105204 tp!94160))

(declare-fun tp_is_empty!31787 () Bool)

(assert (=> start!105204 tp_is_empty!31787))

(declare-fun array_inv!29801 (array!81215) Bool)

(assert (=> start!105204 (array_inv!29801 _keys!1118)))

(declare-datatypes ((V!47747 0))(
  ( (V!47748 (val!15956 Int)) )
))
(declare-datatypes ((ValueCell!15130 0))(
  ( (ValueCellFull!15130 (v!18654 V!47747)) (EmptyCell!15130) )
))
(declare-datatypes ((array!81217 0))(
  ( (array!81218 (arr!39166 (Array (_ BitVec 32) ValueCell!15130)) (size!39703 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81217)

(declare-fun e!711903 () Bool)

(declare-fun array_inv!29802 (array!81217) Bool)

(assert (=> start!105204 (and (array_inv!29802 _values!914) e!711903)))

(declare-fun b!1253147 () Bool)

(declare-fun e!711908 () Bool)

(assert (=> b!1253147 (= e!711908 tp_is_empty!31787)))

(declare-fun b!1253148 () Bool)

(declare-fun e!711906 () Bool)

(declare-fun mapRes!49456 () Bool)

(assert (=> b!1253148 (= e!711903 (and e!711906 mapRes!49456))))

(declare-fun condMapEmpty!49456 () Bool)

(declare-fun mapDefault!49456 () ValueCell!15130)

