; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20092 () Bool)

(assert start!20092)

(declare-fun mapIsEmpty!7961 () Bool)

(declare-fun mapRes!7961 () Bool)

(assert (=> mapIsEmpty!7961 mapRes!7961))

(declare-fun b!196591 () Bool)

(declare-fun res!92820 () Bool)

(declare-fun e!129501 () Bool)

(assert (=> b!196591 (=> (not res!92820) (not e!129501))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!196591 (= res!92820 (validKeyInArray!0 k!843))))

(declare-fun b!196592 () Bool)

(declare-fun res!92821 () Bool)

(assert (=> b!196592 (=> (not res!92821) (not e!129501))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!8446 0))(
  ( (array!8447 (arr!3973 (Array (_ BitVec 32) (_ BitVec 64))) (size!4298 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8446)

(assert (=> b!196592 (= res!92821 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4298 _keys!825))))))

(declare-fun b!196593 () Bool)

(declare-fun e!129503 () Bool)

(declare-fun e!129505 () Bool)

(assert (=> b!196593 (= e!129503 (and e!129505 mapRes!7961))))

(declare-fun condMapEmpty!7961 () Bool)

(declare-datatypes ((V!5773 0))(
  ( (V!5774 (val!2342 Int)) )
))
(declare-datatypes ((ValueCell!1954 0))(
  ( (ValueCellFull!1954 (v!4308 V!5773)) (EmptyCell!1954) )
))
(declare-datatypes ((array!8448 0))(
  ( (array!8449 (arr!3974 (Array (_ BitVec 32) ValueCell!1954)) (size!4299 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8448)

(declare-fun mapDefault!7961 () ValueCell!1954)

