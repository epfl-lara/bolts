; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38364 () Bool)

(assert start!38364)

(declare-fun b!395395 () Bool)

(declare-fun e!239388 () Bool)

(declare-fun tp_is_empty!9823 () Bool)

(assert (=> b!395395 (= e!239388 tp_is_empty!9823)))

(declare-fun b!395396 () Bool)

(declare-fun res!226764 () Bool)

(declare-fun e!239390 () Bool)

(assert (=> b!395396 (=> (not res!226764) (not e!239390))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!23531 0))(
  ( (array!23532 (arr!11215 (Array (_ BitVec 32) (_ BitVec 64))) (size!11567 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23531)

(assert (=> b!395396 (= res!226764 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11567 _keys!709))))))

(declare-fun res!226759 () Bool)

(assert (=> start!38364 (=> (not res!226759) (not e!239390))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38364 (= res!226759 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11567 _keys!709))))))

(assert (=> start!38364 e!239390))

(assert (=> start!38364 true))

(declare-datatypes ((V!14203 0))(
  ( (V!14204 (val!4956 Int)) )
))
(declare-datatypes ((ValueCell!4568 0))(
  ( (ValueCellFull!4568 (v!7198 V!14203)) (EmptyCell!4568) )
))
(declare-datatypes ((array!23533 0))(
  ( (array!23534 (arr!11216 (Array (_ BitVec 32) ValueCell!4568)) (size!11568 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23533)

(declare-fun e!239386 () Bool)

(declare-fun array_inv!8212 (array!23533) Bool)

(assert (=> start!38364 (and (array_inv!8212 _values!549) e!239386)))

(declare-fun array_inv!8213 (array!23531) Bool)

(assert (=> start!38364 (array_inv!8213 _keys!709)))

(declare-fun b!395397 () Bool)

(declare-fun res!226761 () Bool)

(assert (=> b!395397 (=> (not res!226761) (not e!239390))))

(assert (=> b!395397 (= res!226761 (or (= (select (arr!11215 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11215 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!395398 () Bool)

(declare-fun e!239389 () Bool)

(declare-fun mapRes!16347 () Bool)

(assert (=> b!395398 (= e!239386 (and e!239389 mapRes!16347))))

(declare-fun condMapEmpty!16347 () Bool)

(declare-fun mapDefault!16347 () ValueCell!4568)

