; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38644 () Bool)

(assert start!38644)

(declare-fun b_free!9173 () Bool)

(declare-fun b_next!9173 () Bool)

(assert (=> start!38644 (= b_free!9173 (not b_next!9173))))

(declare-fun tp!32643 () Bool)

(declare-fun b_and!16577 () Bool)

(assert (=> start!38644 (= tp!32643 b_and!16577)))

(declare-fun mapNonEmpty!16704 () Bool)

(declare-fun mapRes!16704 () Bool)

(declare-fun tp!32642 () Bool)

(declare-fun e!241716 () Bool)

(assert (=> mapNonEmpty!16704 (= mapRes!16704 (and tp!32642 e!241716))))

(declare-datatypes ((V!14511 0))(
  ( (V!14512 (val!5072 Int)) )
))
(declare-datatypes ((ValueCell!4684 0))(
  ( (ValueCellFull!4684 (v!7315 V!14511)) (EmptyCell!4684) )
))
(declare-fun mapRest!16704 () (Array (_ BitVec 32) ValueCell!4684))

(declare-datatypes ((array!23987 0))(
  ( (array!23988 (arr!11440 (Array (_ BitVec 32) ValueCell!4684)) (size!11792 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23987)

(declare-fun mapValue!16704 () ValueCell!4684)

(declare-fun mapKey!16704 () (_ BitVec 32))

(assert (=> mapNonEmpty!16704 (= (arr!11440 _values!549) (store mapRest!16704 mapKey!16704 mapValue!16704))))

(declare-fun b!400675 () Bool)

(declare-fun res!230647 () Bool)

(declare-fun e!241715 () Bool)

(assert (=> b!400675 (=> (not res!230647) (not e!241715))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!23989 0))(
  ( (array!23990 (arr!11441 (Array (_ BitVec 32) (_ BitVec 64))) (size!11793 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23989)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!400675 (= res!230647 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11793 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!400676 () Bool)

(declare-fun e!241717 () Bool)

(declare-fun e!241711 () Bool)

(assert (=> b!400676 (= e!241717 (and e!241711 mapRes!16704))))

(declare-fun condMapEmpty!16704 () Bool)

(declare-fun mapDefault!16704 () ValueCell!4684)

