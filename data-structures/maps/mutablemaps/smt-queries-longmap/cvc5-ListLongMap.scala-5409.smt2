; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72236 () Bool)

(assert start!72236)

(declare-fun mapNonEmpty!24524 () Bool)

(declare-fun mapRes!24524 () Bool)

(declare-fun tp!47519 () Bool)

(declare-fun e!466953 () Bool)

(assert (=> mapNonEmpty!24524 (= mapRes!24524 (and tp!47519 e!466953))))

(declare-datatypes ((V!25433 0))(
  ( (V!25434 (val!7692 Int)) )
))
(declare-datatypes ((ValueCell!7205 0))(
  ( (ValueCellFull!7205 (v!10112 V!25433)) (EmptyCell!7205) )
))
(declare-fun mapRest!24524 () (Array (_ BitVec 32) ValueCell!7205))

(declare-fun mapValue!24524 () ValueCell!7205)

(declare-fun mapKey!24524 () (_ BitVec 32))

(declare-datatypes ((array!46846 0))(
  ( (array!46847 (arr!22453 (Array (_ BitVec 32) ValueCell!7205)) (size!22894 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46846)

(assert (=> mapNonEmpty!24524 (= (arr!22453 _values!688) (store mapRest!24524 mapKey!24524 mapValue!24524))))

(declare-fun res!569277 () Bool)

(declare-fun e!466955 () Bool)

(assert (=> start!72236 (=> (not res!569277) (not e!466955))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!46848 0))(
  ( (array!46849 (arr!22454 (Array (_ BitVec 32) (_ BitVec 64))) (size!22895 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46848)

(assert (=> start!72236 (= res!569277 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22895 _keys!868))))))

(assert (=> start!72236 e!466955))

(assert (=> start!72236 true))

(declare-fun array_inv!17876 (array!46848) Bool)

(assert (=> start!72236 (array_inv!17876 _keys!868)))

(declare-fun e!466954 () Bool)

(declare-fun array_inv!17877 (array!46846) Bool)

(assert (=> start!72236 (and (array_inv!17877 _values!688) e!466954)))

(declare-fun b!836786 () Bool)

(declare-fun e!466956 () Bool)

(declare-fun tp_is_empty!15289 () Bool)

(assert (=> b!836786 (= e!466956 tp_is_empty!15289)))

(declare-fun b!836787 () Bool)

(assert (=> b!836787 (= e!466953 tp_is_empty!15289)))

(declare-fun b!836788 () Bool)

(assert (=> b!836788 (= e!466954 (and e!466956 mapRes!24524))))

(declare-fun condMapEmpty!24524 () Bool)

(declare-fun mapDefault!24524 () ValueCell!7205)

