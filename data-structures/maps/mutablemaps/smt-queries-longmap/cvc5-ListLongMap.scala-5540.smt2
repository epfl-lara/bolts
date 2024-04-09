; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73052 () Bool)

(assert start!73052)

(declare-fun b_free!13939 () Bool)

(declare-fun b_next!13939 () Bool)

(assert (=> start!73052 (= b_free!13939 (not b_next!13939))))

(declare-fun tp!49321 () Bool)

(declare-fun b_and!23055 () Bool)

(assert (=> start!73052 (= tp!49321 b_and!23055)))

(declare-fun b!848571 () Bool)

(declare-fun res!576623 () Bool)

(declare-fun e!473482 () Bool)

(assert (=> b!848571 (=> (not res!576623) (not e!473482))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!848571 (= res!576623 (validMask!0 mask!1196))))

(declare-fun b!848572 () Bool)

(declare-fun res!576627 () Bool)

(assert (=> b!848572 (=> (not res!576627) (not e!473482))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!48342 0))(
  ( (array!48343 (arr!23198 (Array (_ BitVec 32) (_ BitVec 64))) (size!23639 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48342)

(declare-datatypes ((V!26481 0))(
  ( (V!26482 (val!8085 Int)) )
))
(declare-datatypes ((ValueCell!7598 0))(
  ( (ValueCellFull!7598 (v!10506 V!26481)) (EmptyCell!7598) )
))
(declare-datatypes ((array!48344 0))(
  ( (array!48345 (arr!23199 (Array (_ BitVec 32) ValueCell!7598)) (size!23640 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48344)

(assert (=> b!848572 (= res!576627 (and (= (size!23640 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23639 _keys!868) (size!23640 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!848573 () Bool)

(declare-fun res!576630 () Bool)

(assert (=> b!848573 (=> (not res!576630) (not e!473482))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48342 (_ BitVec 32)) Bool)

(assert (=> b!848573 (= res!576630 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun v!557 () V!26481)

(declare-datatypes ((tuple2!10588 0))(
  ( (tuple2!10589 (_1!5304 (_ BitVec 64)) (_2!5304 V!26481)) )
))
(declare-datatypes ((List!16494 0))(
  ( (Nil!16491) (Cons!16490 (h!17621 tuple2!10588) (t!22887 List!16494)) )
))
(declare-datatypes ((ListLongMap!9371 0))(
  ( (ListLongMap!9372 (toList!4701 List!16494)) )
))
(declare-fun call!37672 () ListLongMap!9371)

(declare-fun b!848574 () Bool)

(declare-fun e!473480 () Bool)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun call!37673 () ListLongMap!9371)

(declare-fun +!2049 (ListLongMap!9371 tuple2!10588) ListLongMap!9371)

(assert (=> b!848574 (= e!473480 (= call!37673 (+!2049 call!37672 (tuple2!10589 k!854 v!557))))))

(declare-fun b!848575 () Bool)

(declare-fun e!473481 () Bool)

(declare-fun tp_is_empty!16075 () Bool)

(assert (=> b!848575 (= e!473481 tp_is_empty!16075)))

(declare-fun b!848576 () Bool)

(assert (=> b!848576 (= e!473480 (= call!37673 call!37672))))

(declare-fun b!848577 () Bool)

(declare-fun e!473478 () Bool)

(declare-fun mapRes!25712 () Bool)

(assert (=> b!848577 (= e!473478 (and e!473481 mapRes!25712))))

(declare-fun condMapEmpty!25712 () Bool)

(declare-fun mapDefault!25712 () ValueCell!7598)

