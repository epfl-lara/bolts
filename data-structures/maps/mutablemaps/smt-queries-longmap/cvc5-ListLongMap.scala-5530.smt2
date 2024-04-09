; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72992 () Bool)

(assert start!72992)

(declare-fun b_free!13879 () Bool)

(declare-fun b_next!13879 () Bool)

(assert (=> start!72992 (= b_free!13879 (not b_next!13879))))

(declare-fun tp!49141 () Bool)

(declare-fun b_and!22983 () Bool)

(assert (=> start!72992 (= tp!49141 b_and!22983)))

(declare-fun mapNonEmpty!25622 () Bool)

(declare-fun mapRes!25622 () Bool)

(declare-fun tp!49142 () Bool)

(declare-fun e!472818 () Bool)

(assert (=> mapNonEmpty!25622 (= mapRes!25622 (and tp!49142 e!472818))))

(declare-datatypes ((V!26401 0))(
  ( (V!26402 (val!8055 Int)) )
))
(declare-datatypes ((ValueCell!7568 0))(
  ( (ValueCellFull!7568 (v!10476 V!26401)) (EmptyCell!7568) )
))
(declare-fun mapValue!25622 () ValueCell!7568)

(declare-fun mapRest!25622 () (Array (_ BitVec 32) ValueCell!7568))

(declare-fun mapKey!25622 () (_ BitVec 32))

(declare-datatypes ((array!48224 0))(
  ( (array!48225 (arr!23139 (Array (_ BitVec 32) ValueCell!7568)) (size!23580 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48224)

(assert (=> mapNonEmpty!25622 (= (arr!23139 _values!688) (store mapRest!25622 mapKey!25622 mapValue!25622))))

(declare-fun res!575784 () Bool)

(declare-fun e!472821 () Bool)

(assert (=> start!72992 (=> (not res!575784) (not e!472821))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!48226 0))(
  ( (array!48227 (arr!23140 (Array (_ BitVec 32) (_ BitVec 64))) (size!23581 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48226)

(assert (=> start!72992 (= res!575784 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23581 _keys!868))))))

(assert (=> start!72992 e!472821))

(declare-fun tp_is_empty!16015 () Bool)

(assert (=> start!72992 tp_is_empty!16015))

(assert (=> start!72992 true))

(assert (=> start!72992 tp!49141))

(declare-fun array_inv!18360 (array!48226) Bool)

(assert (=> start!72992 (array_inv!18360 _keys!868)))

(declare-fun e!472823 () Bool)

(declare-fun array_inv!18361 (array!48224) Bool)

(assert (=> start!72992 (and (array_inv!18361 _values!688) e!472823)))

(declare-fun b!847270 () Bool)

(declare-fun e!472822 () Bool)

(assert (=> b!847270 (= e!472823 (and e!472822 mapRes!25622))))

(declare-fun condMapEmpty!25622 () Bool)

(declare-fun mapDefault!25622 () ValueCell!7568)

