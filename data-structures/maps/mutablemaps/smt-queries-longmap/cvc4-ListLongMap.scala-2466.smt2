; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38626 () Bool)

(assert start!38626)

(declare-fun b_free!9155 () Bool)

(declare-fun b_next!9155 () Bool)

(assert (=> start!38626 (= b_free!9155 (not b_next!9155))))

(declare-fun tp!32589 () Bool)

(declare-fun b_and!16559 () Bool)

(assert (=> start!38626 (= tp!32589 b_and!16559)))

(declare-datatypes ((V!14487 0))(
  ( (V!14488 (val!5063 Int)) )
))
(declare-datatypes ((tuple2!6646 0))(
  ( (tuple2!6647 (_1!3333 (_ BitVec 64)) (_2!3333 V!14487)) )
))
(declare-datatypes ((List!6600 0))(
  ( (Nil!6597) (Cons!6596 (h!7452 tuple2!6646) (t!11782 List!6600)) )
))
(declare-datatypes ((ListLongMap!5573 0))(
  ( (ListLongMap!5574 (toList!2802 List!6600)) )
))
(declare-fun call!28126 () ListLongMap!5573)

(declare-fun e!241524 () Bool)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!14487)

(declare-fun b!400216 () Bool)

(declare-fun call!28127 () ListLongMap!5573)

(declare-fun +!1090 (ListLongMap!5573 tuple2!6646) ListLongMap!5573)

(assert (=> b!400216 (= e!241524 (= call!28126 (+!1090 call!28127 (tuple2!6647 k!794 v!412))))))

(declare-fun res!230318 () Bool)

(declare-fun e!241522 () Bool)

(assert (=> start!38626 (=> (not res!230318) (not e!241522))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!23951 0))(
  ( (array!23952 (arr!11422 (Array (_ BitVec 32) (_ BitVec 64))) (size!11774 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23951)

(assert (=> start!38626 (= res!230318 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11774 _keys!709))))))

(assert (=> start!38626 e!241522))

(declare-fun tp_is_empty!10037 () Bool)

(assert (=> start!38626 tp_is_empty!10037))

(assert (=> start!38626 tp!32589))

(assert (=> start!38626 true))

(declare-datatypes ((ValueCell!4675 0))(
  ( (ValueCellFull!4675 (v!7306 V!14487)) (EmptyCell!4675) )
))
(declare-datatypes ((array!23953 0))(
  ( (array!23954 (arr!11423 (Array (_ BitVec 32) ValueCell!4675)) (size!11775 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23953)

(declare-fun e!241525 () Bool)

(declare-fun array_inv!8362 (array!23953) Bool)

(assert (=> start!38626 (and (array_inv!8362 _values!549) e!241525)))

(declare-fun array_inv!8363 (array!23951) Bool)

(assert (=> start!38626 (array_inv!8363 _keys!709)))

(declare-fun b!400217 () Bool)

(declare-fun res!230317 () Bool)

(assert (=> b!400217 (=> (not res!230317) (not e!241522))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23951 (_ BitVec 32)) Bool)

(assert (=> b!400217 (= res!230317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!400218 () Bool)

(assert (=> b!400218 (= e!241524 (= call!28127 call!28126))))

(declare-fun b!400219 () Bool)

(declare-fun res!230320 () Bool)

(assert (=> b!400219 (=> (not res!230320) (not e!241522))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!400219 (= res!230320 (and (= (size!11775 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11774 _keys!709) (size!11775 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!400220 () Bool)

(declare-fun res!230323 () Bool)

(assert (=> b!400220 (=> (not res!230323) (not e!241522))))

(declare-fun arrayContainsKey!0 (array!23951 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!400220 (= res!230323 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!400221 () Bool)

(declare-fun e!241528 () Bool)

(declare-fun mapRes!16677 () Bool)

(assert (=> b!400221 (= e!241525 (and e!241528 mapRes!16677))))

(declare-fun condMapEmpty!16677 () Bool)

(declare-fun mapDefault!16677 () ValueCell!4675)

