; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72602 () Bool)

(assert start!72602)

(declare-fun res!572632 () Bool)

(declare-fun e!469873 () Bool)

(assert (=> start!72602 (=> (not res!572632) (not e!469873))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47492 0))(
  ( (array!47493 (arr!22773 (Array (_ BitVec 32) (_ BitVec 64))) (size!23214 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47492)

(assert (=> start!72602 (= res!572632 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23214 _keys!868))))))

(assert (=> start!72602 e!469873))

(assert (=> start!72602 true))

(declare-fun array_inv!18102 (array!47492) Bool)

(assert (=> start!72602 (array_inv!18102 _keys!868)))

(declare-datatypes ((V!25881 0))(
  ( (V!25882 (val!7860 Int)) )
))
(declare-datatypes ((ValueCell!7373 0))(
  ( (ValueCellFull!7373 (v!10281 V!25881)) (EmptyCell!7373) )
))
(declare-datatypes ((array!47494 0))(
  ( (array!47495 (arr!22774 (Array (_ BitVec 32) ValueCell!7373)) (size!23215 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47494)

(declare-fun e!469871 () Bool)

(declare-fun array_inv!18103 (array!47494) Bool)

(assert (=> start!72602 (and (array_inv!18103 _values!688) e!469871)))

(declare-fun mapNonEmpty!25037 () Bool)

(declare-fun mapRes!25037 () Bool)

(declare-fun tp!48356 () Bool)

(declare-fun e!469875 () Bool)

(assert (=> mapNonEmpty!25037 (= mapRes!25037 (and tp!48356 e!469875))))

(declare-fun mapRest!25037 () (Array (_ BitVec 32) ValueCell!7373))

(declare-fun mapKey!25037 () (_ BitVec 32))

(declare-fun mapValue!25037 () ValueCell!7373)

(assert (=> mapNonEmpty!25037 (= (arr!22774 _values!688) (store mapRest!25037 mapKey!25037 mapValue!25037))))

(declare-fun b!842342 () Bool)

(declare-fun tp_is_empty!15625 () Bool)

(assert (=> b!842342 (= e!469875 tp_is_empty!15625)))

(declare-fun b!842343 () Bool)

(declare-fun res!572634 () Bool)

(assert (=> b!842343 (=> (not res!572634) (not e!469873))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!842343 (= res!572634 (validMask!0 mask!1196))))

(declare-fun b!842344 () Bool)

(declare-fun res!572633 () Bool)

(assert (=> b!842344 (=> (not res!572633) (not e!469873))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47492 (_ BitVec 32)) Bool)

(assert (=> b!842344 (= res!572633 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!25037 () Bool)

(assert (=> mapIsEmpty!25037 mapRes!25037))

(declare-fun b!842345 () Bool)

(assert (=> b!842345 (= e!469873 false)))

(declare-fun lt!380949 () Bool)

(declare-datatypes ((List!16274 0))(
  ( (Nil!16271) (Cons!16270 (h!17401 (_ BitVec 64)) (t!22653 List!16274)) )
))
(declare-fun arrayNoDuplicates!0 (array!47492 (_ BitVec 32) List!16274) Bool)

(assert (=> b!842345 (= lt!380949 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16271))))

(declare-fun b!842346 () Bool)

(declare-fun e!469872 () Bool)

(assert (=> b!842346 (= e!469871 (and e!469872 mapRes!25037))))

(declare-fun condMapEmpty!25037 () Bool)

(declare-fun mapDefault!25037 () ValueCell!7373)

