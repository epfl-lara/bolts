; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73032 () Bool)

(assert start!73032)

(declare-fun b_free!13919 () Bool)

(declare-fun b_next!13919 () Bool)

(assert (=> start!73032 (= b_free!13919 (not b_next!13919))))

(declare-fun tp!49261 () Bool)

(declare-fun b_and!23023 () Bool)

(assert (=> start!73032 (= tp!49261 b_and!23023)))

(declare-fun b!848110 () Bool)

(declare-fun e!473240 () Bool)

(declare-fun tp_is_empty!16055 () Bool)

(assert (=> b!848110 (= e!473240 tp_is_empty!16055)))

(declare-fun b!848111 () Bool)

(declare-fun res!576322 () Bool)

(declare-fun e!473238 () Bool)

(assert (=> b!848111 (=> (not res!576322) (not e!473238))))

(declare-datatypes ((array!48302 0))(
  ( (array!48303 (arr!23178 (Array (_ BitVec 32) (_ BitVec 64))) (size!23619 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48302)

(declare-datatypes ((List!16479 0))(
  ( (Nil!16476) (Cons!16475 (h!17606 (_ BitVec 64)) (t!22858 List!16479)) )
))
(declare-fun arrayNoDuplicates!0 (array!48302 (_ BitVec 32) List!16479) Bool)

(assert (=> b!848111 (= res!576322 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16476))))

(declare-fun b!848112 () Bool)

(declare-fun e!473241 () Bool)

(declare-fun e!473242 () Bool)

(declare-fun mapRes!25682 () Bool)

(assert (=> b!848112 (= e!473241 (and e!473242 mapRes!25682))))

(declare-fun condMapEmpty!25682 () Bool)

(declare-datatypes ((V!26453 0))(
  ( (V!26454 (val!8075 Int)) )
))
(declare-datatypes ((ValueCell!7588 0))(
  ( (ValueCellFull!7588 (v!10496 V!26453)) (EmptyCell!7588) )
))
(declare-datatypes ((array!48304 0))(
  ( (array!48305 (arr!23179 (Array (_ BitVec 32) ValueCell!7588)) (size!23620 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48304)

(declare-fun mapDefault!25682 () ValueCell!7588)

