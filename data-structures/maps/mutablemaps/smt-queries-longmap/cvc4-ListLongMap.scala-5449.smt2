; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72510 () Bool)

(assert start!72510)

(declare-fun b_free!13667 () Bool)

(declare-fun b_next!13667 () Bool)

(assert (=> start!72510 (= b_free!13667 (not b_next!13667))))

(declare-fun tp!48100 () Bool)

(declare-fun b_and!22771 () Bool)

(assert (=> start!72510 (= tp!48100 b_and!22771)))

(declare-fun b!840668 () Bool)

(declare-fun res!571613 () Bool)

(declare-fun e!469067 () Bool)

(assert (=> b!840668 (=> (not res!571613) (not e!469067))))

(declare-datatypes ((array!47312 0))(
  ( (array!47313 (arr!22683 (Array (_ BitVec 32) (_ BitVec 64))) (size!23124 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47312)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47312 (_ BitVec 32)) Bool)

(assert (=> b!840668 (= res!571613 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!840669 () Bool)

(declare-fun e!469063 () Bool)

(declare-datatypes ((V!25757 0))(
  ( (V!25758 (val!7814 Int)) )
))
(declare-datatypes ((tuple2!10378 0))(
  ( (tuple2!10379 (_1!5199 (_ BitVec 64)) (_2!5199 V!25757)) )
))
(declare-datatypes ((List!16204 0))(
  ( (Nil!16201) (Cons!16200 (h!17331 tuple2!10378) (t!22583 List!16204)) )
))
(declare-datatypes ((ListLongMap!9161 0))(
  ( (ListLongMap!9162 (toList!4596 List!16204)) )
))
(declare-fun call!37235 () ListLongMap!9161)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun v!557 () V!25757)

(declare-fun call!37234 () ListLongMap!9161)

(declare-fun +!2005 (ListLongMap!9161 tuple2!10378) ListLongMap!9161)

(assert (=> b!840669 (= e!469063 (= call!37235 (+!2005 call!37234 (tuple2!10379 k!854 v!557))))))

(declare-fun b!840670 () Bool)

(declare-fun e!469064 () Bool)

(declare-fun tp_is_empty!15533 () Bool)

(assert (=> b!840670 (= e!469064 tp_is_empty!15533)))

(declare-fun res!571611 () Bool)

(assert (=> start!72510 (=> (not res!571611) (not e!469067))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72510 (= res!571611 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23124 _keys!868))))))

(assert (=> start!72510 e!469067))

(assert (=> start!72510 tp_is_empty!15533))

(assert (=> start!72510 true))

(assert (=> start!72510 tp!48100))

(declare-fun array_inv!18032 (array!47312) Bool)

(assert (=> start!72510 (array_inv!18032 _keys!868)))

(declare-datatypes ((ValueCell!7327 0))(
  ( (ValueCellFull!7327 (v!10235 V!25757)) (EmptyCell!7327) )
))
(declare-datatypes ((array!47314 0))(
  ( (array!47315 (arr!22684 (Array (_ BitVec 32) ValueCell!7327)) (size!23125 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47314)

(declare-fun e!469065 () Bool)

(declare-fun array_inv!18033 (array!47314) Bool)

(assert (=> start!72510 (and (array_inv!18033 _values!688) e!469065)))

(declare-fun mapNonEmpty!24899 () Bool)

(declare-fun mapRes!24899 () Bool)

(declare-fun tp!48101 () Bool)

(assert (=> mapNonEmpty!24899 (= mapRes!24899 (and tp!48101 e!469064))))

(declare-fun mapRest!24899 () (Array (_ BitVec 32) ValueCell!7327))

(declare-fun mapValue!24899 () ValueCell!7327)

(declare-fun mapKey!24899 () (_ BitVec 32))

(assert (=> mapNonEmpty!24899 (= (arr!22684 _values!688) (store mapRest!24899 mapKey!24899 mapValue!24899))))

(declare-fun b!840671 () Bool)

(declare-fun e!469066 () Bool)

(assert (=> b!840671 (= e!469065 (and e!469066 mapRes!24899))))

(declare-fun condMapEmpty!24899 () Bool)

(declare-fun mapDefault!24899 () ValueCell!7327)

