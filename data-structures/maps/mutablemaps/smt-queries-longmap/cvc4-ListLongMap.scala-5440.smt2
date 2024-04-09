; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72456 () Bool)

(assert start!72456)

(declare-fun b_free!13613 () Bool)

(declare-fun b_next!13613 () Bool)

(assert (=> start!72456 (= b_free!13613 (not b_next!13613))))

(declare-fun tp!47938 () Bool)

(declare-fun b_and!22717 () Bool)

(assert (=> start!72456 (= tp!47938 b_and!22717)))

(declare-fun res!570964 () Bool)

(declare-fun e!468580 () Bool)

(assert (=> start!72456 (=> (not res!570964) (not e!468580))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47210 0))(
  ( (array!47211 (arr!22632 (Array (_ BitVec 32) (_ BitVec 64))) (size!23073 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47210)

(assert (=> start!72456 (= res!570964 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23073 _keys!868))))))

(assert (=> start!72456 e!468580))

(declare-fun tp_is_empty!15479 () Bool)

(assert (=> start!72456 tp_is_empty!15479))

(assert (=> start!72456 true))

(assert (=> start!72456 tp!47938))

(declare-fun array_inv!17998 (array!47210) Bool)

(assert (=> start!72456 (array_inv!17998 _keys!868)))

(declare-datatypes ((V!25685 0))(
  ( (V!25686 (val!7787 Int)) )
))
(declare-datatypes ((ValueCell!7300 0))(
  ( (ValueCellFull!7300 (v!10208 V!25685)) (EmptyCell!7300) )
))
(declare-datatypes ((array!47212 0))(
  ( (array!47213 (arr!22633 (Array (_ BitVec 32) ValueCell!7300)) (size!23074 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47212)

(declare-fun e!468578 () Bool)

(declare-fun array_inv!17999 (array!47212) Bool)

(assert (=> start!72456 (and (array_inv!17999 _values!688) e!468578)))

(declare-fun b!839615 () Bool)

(declare-fun res!570960 () Bool)

(assert (=> b!839615 (=> (not res!570960) (not e!468580))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!839615 (= res!570960 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23073 _keys!868))))))

(declare-fun b!839616 () Bool)

(declare-fun e!468577 () Bool)

(declare-fun mapRes!24818 () Bool)

(assert (=> b!839616 (= e!468578 (and e!468577 mapRes!24818))))

(declare-fun condMapEmpty!24818 () Bool)

(declare-fun mapDefault!24818 () ValueCell!7300)

