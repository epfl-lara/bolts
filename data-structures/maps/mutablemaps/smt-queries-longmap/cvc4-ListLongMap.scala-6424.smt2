; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82372 () Bool)

(assert start!82372)

(declare-fun b_free!18611 () Bool)

(declare-fun b_next!18611 () Bool)

(assert (=> start!82372 (= b_free!18611 (not b_next!18611))))

(declare-fun tp!64803 () Bool)

(declare-fun b_and!30117 () Bool)

(assert (=> start!82372 (= tp!64803 b_and!30117)))

(declare-fun b!959921 () Bool)

(declare-fun res!642671 () Bool)

(declare-fun e!541147 () Bool)

(assert (=> b!959921 (=> (not res!642671) (not e!541147))))

(declare-datatypes ((array!58753 0))(
  ( (array!58754 (arr!28246 (Array (_ BitVec 32) (_ BitVec 64))) (size!28726 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58753)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!959921 (= res!642671 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28726 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28726 _keys!1668))))))

(declare-fun b!959922 () Bool)

(declare-fun e!541144 () Bool)

(declare-fun e!541145 () Bool)

(declare-fun mapRes!33964 () Bool)

(assert (=> b!959922 (= e!541144 (and e!541145 mapRes!33964))))

(declare-fun condMapEmpty!33964 () Bool)

(declare-datatypes ((V!33413 0))(
  ( (V!33414 (val!10712 Int)) )
))
(declare-datatypes ((ValueCell!10180 0))(
  ( (ValueCellFull!10180 (v!13269 V!33413)) (EmptyCell!10180) )
))
(declare-datatypes ((array!58755 0))(
  ( (array!58756 (arr!28247 (Array (_ BitVec 32) ValueCell!10180)) (size!28727 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58755)

(declare-fun mapDefault!33964 () ValueCell!10180)

