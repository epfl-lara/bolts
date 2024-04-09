; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73224 () Bool)

(assert start!73224)

(declare-fun b_free!14111 () Bool)

(declare-fun b_next!14111 () Bool)

(assert (=> start!73224 (= b_free!14111 (not b_next!14111))))

(declare-fun tp!49837 () Bool)

(declare-fun b_and!23399 () Bool)

(assert (=> start!73224 (= tp!49837 b_and!23399)))

(declare-fun b!852613 () Bool)

(declare-fun e!475541 () Bool)

(declare-fun tp_is_empty!16247 () Bool)

(assert (=> b!852613 (= e!475541 tp_is_empty!16247)))

(declare-fun b!852614 () Bool)

(declare-fun res!579204 () Bool)

(declare-fun e!475544 () Bool)

(assert (=> b!852614 (=> (not res!579204) (not e!475544))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!852614 (= res!579204 (validKeyInArray!0 k!854))))

(declare-fun b!852615 () Bool)

(declare-fun e!475546 () Bool)

(declare-datatypes ((V!26709 0))(
  ( (V!26710 (val!8171 Int)) )
))
(declare-datatypes ((tuple2!10746 0))(
  ( (tuple2!10747 (_1!5383 (_ BitVec 64)) (_2!5383 V!26709)) )
))
(declare-datatypes ((List!16628 0))(
  ( (Nil!16625) (Cons!16624 (h!17755 tuple2!10746) (t!23193 List!16628)) )
))
(declare-datatypes ((ListLongMap!9529 0))(
  ( (ListLongMap!9530 (toList!4780 List!16628)) )
))
(declare-fun call!38188 () ListLongMap!9529)

(declare-fun call!38189 () ListLongMap!9529)

(declare-fun v!557 () V!26709)

(declare-fun +!2120 (ListLongMap!9529 tuple2!10746) ListLongMap!9529)

(assert (=> b!852615 (= e!475546 (= call!38188 (+!2120 call!38189 (tuple2!10747 k!854 v!557))))))

(declare-fun b!852616 () Bool)

(declare-fun e!475545 () Bool)

(declare-fun mapRes!25970 () Bool)

(assert (=> b!852616 (= e!475545 (and e!475541 mapRes!25970))))

(declare-fun condMapEmpty!25970 () Bool)

(declare-datatypes ((ValueCell!7684 0))(
  ( (ValueCellFull!7684 (v!10592 V!26709)) (EmptyCell!7684) )
))
(declare-datatypes ((array!48680 0))(
  ( (array!48681 (arr!23367 (Array (_ BitVec 32) ValueCell!7684)) (size!23808 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48680)

(declare-fun mapDefault!25970 () ValueCell!7684)

