; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104726 () Bool)

(assert start!104726)

(declare-fun b_free!26507 () Bool)

(declare-fun b_next!26507 () Bool)

(assert (=> start!104726 (= b_free!26507 (not b_next!26507))))

(declare-fun tp!93009 () Bool)

(declare-fun b_and!44281 () Bool)

(assert (=> start!104726 (= tp!93009 b_and!44281)))

(declare-fun mapNonEmpty!48871 () Bool)

(declare-fun mapRes!48871 () Bool)

(declare-fun tp!93008 () Bool)

(declare-fun e!708188 () Bool)

(assert (=> mapNonEmpty!48871 (= mapRes!48871 (and tp!93008 e!708188))))

(declare-datatypes ((V!47243 0))(
  ( (V!47244 (val!15767 Int)) )
))
(declare-datatypes ((ValueCell!14941 0))(
  ( (ValueCellFull!14941 (v!18463 V!47243)) (EmptyCell!14941) )
))
(declare-fun mapRest!48871 () (Array (_ BitVec 32) ValueCell!14941))

(declare-datatypes ((array!80485 0))(
  ( (array!80486 (arr!38806 (Array (_ BitVec 32) ValueCell!14941)) (size!39343 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80485)

(declare-fun mapValue!48871 () ValueCell!14941)

(declare-fun mapKey!48871 () (_ BitVec 32))

(assert (=> mapNonEmpty!48871 (= (arr!38806 _values!914) (store mapRest!48871 mapKey!48871 mapValue!48871))))

(declare-fun res!832758 () Bool)

(declare-fun e!708186 () Bool)

(assert (=> start!104726 (=> (not res!832758) (not e!708186))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104726 (= res!832758 (validMask!0 mask!1466))))

(assert (=> start!104726 e!708186))

(assert (=> start!104726 true))

(assert (=> start!104726 tp!93009))

(declare-fun tp_is_empty!31409 () Bool)

(assert (=> start!104726 tp_is_empty!31409))

(declare-datatypes ((array!80487 0))(
  ( (array!80488 (arr!38807 (Array (_ BitVec 32) (_ BitVec 64))) (size!39344 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80487)

(declare-fun array_inv!29549 (array!80487) Bool)

(assert (=> start!104726 (array_inv!29549 _keys!1118)))

(declare-fun e!708187 () Bool)

(declare-fun array_inv!29550 (array!80485) Bool)

(assert (=> start!104726 (and (array_inv!29550 _values!914) e!708187)))

(declare-fun b!1248042 () Bool)

(assert (=> b!1248042 (= e!708188 tp_is_empty!31409)))

(declare-fun b!1248043 () Bool)

(declare-fun e!708185 () Bool)

(assert (=> b!1248043 (= e!708187 (and e!708185 mapRes!48871))))

(declare-fun condMapEmpty!48871 () Bool)

(declare-fun mapDefault!48871 () ValueCell!14941)

