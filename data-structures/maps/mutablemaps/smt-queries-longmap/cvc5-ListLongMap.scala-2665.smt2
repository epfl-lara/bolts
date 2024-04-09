; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39816 () Bool)

(assert start!39816)

(declare-fun b_free!10075 () Bool)

(declare-fun b_next!10075 () Bool)

(assert (=> start!39816 (= b_free!10075 (not b_next!10075))))

(declare-fun tp!35754 () Bool)

(declare-fun b_and!17827 () Bool)

(assert (=> start!39816 (= tp!35754 b_and!17827)))

(declare-fun mapIsEmpty!18462 () Bool)

(declare-fun mapRes!18462 () Bool)

(assert (=> mapIsEmpty!18462 mapRes!18462))

(declare-fun b!429356 () Bool)

(declare-fun e!254306 () Bool)

(assert (=> b!429356 (= e!254306 true)))

(declare-datatypes ((array!26271 0))(
  ( (array!26272 (arr!12582 (Array (_ BitVec 32) (_ BitVec 64))) (size!12934 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26271)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!429356 (not (= (select (arr!12582 _keys!709) from!863) k!794))))

(declare-datatypes ((Unit!12580 0))(
  ( (Unit!12581) )
))
(declare-fun lt!196281 () Unit!12580)

(declare-fun e!254300 () Unit!12580)

(assert (=> b!429356 (= lt!196281 e!254300)))

(declare-fun c!55373 () Bool)

(assert (=> b!429356 (= c!55373 (= (select (arr!12582 _keys!709) from!863) k!794))))

(declare-datatypes ((V!16075 0))(
  ( (V!16076 (val!5658 Int)) )
))
(declare-datatypes ((tuple2!7386 0))(
  ( (tuple2!7387 (_1!3703 (_ BitVec 64)) (_2!3703 V!16075)) )
))
(declare-datatypes ((List!7436 0))(
  ( (Nil!7433) (Cons!7432 (h!8288 tuple2!7386) (t!12968 List!7436)) )
))
(declare-datatypes ((ListLongMap!6313 0))(
  ( (ListLongMap!6314 (toList!3172 List!7436)) )
))
(declare-fun lt!196287 () ListLongMap!6313)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5270 0))(
  ( (ValueCellFull!5270 (v!7901 V!16075)) (EmptyCell!5270) )
))
(declare-datatypes ((array!26273 0))(
  ( (array!26274 (arr!12583 (Array (_ BitVec 32) ValueCell!5270)) (size!12935 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26273)

(declare-fun lt!196283 () ListLongMap!6313)

(declare-fun +!1321 (ListLongMap!6313 tuple2!7386) ListLongMap!6313)

(declare-fun get!6246 (ValueCell!5270 V!16075) V!16075)

(declare-fun dynLambda!767 (Int (_ BitVec 64)) V!16075)

(assert (=> b!429356 (= lt!196283 (+!1321 lt!196287 (tuple2!7387 (select (arr!12582 _keys!709) from!863) (get!6246 (select (arr!12583 _values!549) from!863) (dynLambda!767 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!429357 () Bool)

(declare-fun e!254307 () Bool)

(declare-fun tp_is_empty!11227 () Bool)

(assert (=> b!429357 (= e!254307 tp_is_empty!11227)))

(declare-fun b!429358 () Bool)

(declare-fun res!252248 () Bool)

(declare-fun e!254308 () Bool)

(assert (=> b!429358 (=> (not res!252248) (not e!254308))))

(declare-datatypes ((List!7437 0))(
  ( (Nil!7434) (Cons!7433 (h!8289 (_ BitVec 64)) (t!12969 List!7437)) )
))
(declare-fun arrayNoDuplicates!0 (array!26271 (_ BitVec 32) List!7437) Bool)

(assert (=> b!429358 (= res!252248 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7434))))

(declare-fun mapNonEmpty!18462 () Bool)

(declare-fun tp!35753 () Bool)

(assert (=> mapNonEmpty!18462 (= mapRes!18462 (and tp!35753 e!254307))))

(declare-fun mapValue!18462 () ValueCell!5270)

(declare-fun mapKey!18462 () (_ BitVec 32))

(declare-fun mapRest!18462 () (Array (_ BitVec 32) ValueCell!5270))

(assert (=> mapNonEmpty!18462 (= (arr!12583 _values!549) (store mapRest!18462 mapKey!18462 mapValue!18462))))

(declare-fun b!429359 () Bool)

(declare-fun e!254301 () Bool)

(declare-fun e!254304 () Bool)

(assert (=> b!429359 (= e!254301 (and e!254304 mapRes!18462))))

(declare-fun condMapEmpty!18462 () Bool)

(declare-fun mapDefault!18462 () ValueCell!5270)

