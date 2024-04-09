; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38302 () Bool)

(assert start!38302)

(declare-fun res!226385 () Bool)

(declare-fun e!239047 () Bool)

(assert (=> start!38302 (=> (not res!226385) (not e!239047))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!23453 0))(
  ( (array!23454 (arr!11178 (Array (_ BitVec 32) (_ BitVec 64))) (size!11530 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23453)

(assert (=> start!38302 (= res!226385 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11530 _keys!709))))))

(assert (=> start!38302 e!239047))

(assert (=> start!38302 true))

(declare-datatypes ((V!14151 0))(
  ( (V!14152 (val!4937 Int)) )
))
(declare-datatypes ((ValueCell!4549 0))(
  ( (ValueCellFull!4549 (v!7178 V!14151)) (EmptyCell!4549) )
))
(declare-datatypes ((array!23455 0))(
  ( (array!23456 (arr!11179 (Array (_ BitVec 32) ValueCell!4549)) (size!11531 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23455)

(declare-fun e!239049 () Bool)

(declare-fun array_inv!8182 (array!23455) Bool)

(assert (=> start!38302 (and (array_inv!8182 _values!549) e!239049)))

(declare-fun array_inv!8183 (array!23453) Bool)

(assert (=> start!38302 (array_inv!8183 _keys!709)))

(declare-fun b!394815 () Bool)

(declare-fun res!226387 () Bool)

(assert (=> b!394815 (=> (not res!226387) (not e!239047))))

(assert (=> b!394815 (= res!226387 (and (bvsle #b00000000000000000000000000000000 (size!11530 _keys!709)) (bvslt (size!11530 _keys!709) #b01111111111111111111111111111111)))))

(declare-fun b!394816 () Bool)

(declare-fun e!239045 () Bool)

(assert (=> b!394816 (= e!239047 e!239045)))

(declare-fun res!226384 () Bool)

(assert (=> b!394816 (=> res!226384 e!239045)))

(declare-datatypes ((List!6461 0))(
  ( (Nil!6458) (Cons!6457 (h!7313 (_ BitVec 64)) (t!11643 List!6461)) )
))
(declare-fun contains!2480 (List!6461 (_ BitVec 64)) Bool)

(assert (=> b!394816 (= res!226384 (contains!2480 Nil!6458 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!394817 () Bool)

(declare-fun res!226388 () Bool)

(assert (=> b!394817 (=> (not res!226388) (not e!239047))))

(declare-fun noDuplicate!196 (List!6461) Bool)

(assert (=> b!394817 (= res!226388 (noDuplicate!196 Nil!6458))))

(declare-fun b!394818 () Bool)

(declare-fun res!226382 () Bool)

(assert (=> b!394818 (=> (not res!226382) (not e!239047))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!394818 (= res!226382 (and (= (size!11531 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11530 _keys!709) (size!11531 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!16284 () Bool)

(declare-fun mapRes!16284 () Bool)

(assert (=> mapIsEmpty!16284 mapRes!16284))

(declare-fun mapNonEmpty!16284 () Bool)

(declare-fun tp!32079 () Bool)

(declare-fun e!239046 () Bool)

(assert (=> mapNonEmpty!16284 (= mapRes!16284 (and tp!32079 e!239046))))

(declare-fun mapRest!16284 () (Array (_ BitVec 32) ValueCell!4549))

(declare-fun mapKey!16284 () (_ BitVec 32))

(declare-fun mapValue!16284 () ValueCell!4549)

(assert (=> mapNonEmpty!16284 (= (arr!11179 _values!549) (store mapRest!16284 mapKey!16284 mapValue!16284))))

(declare-fun b!394819 () Bool)

(declare-fun e!239048 () Bool)

(assert (=> b!394819 (= e!239049 (and e!239048 mapRes!16284))))

(declare-fun condMapEmpty!16284 () Bool)

(declare-fun mapDefault!16284 () ValueCell!4549)

