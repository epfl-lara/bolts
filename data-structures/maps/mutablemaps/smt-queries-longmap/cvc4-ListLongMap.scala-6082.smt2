; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78632 () Bool)

(assert start!78632)

(declare-fun b_free!16817 () Bool)

(declare-fun b_next!16817 () Bool)

(assert (=> start!78632 (= b_free!16817 (not b_next!16817))))

(declare-fun tp!58893 () Bool)

(declare-fun b_and!27457 () Bool)

(assert (=> start!78632 (= tp!58893 b_and!27457)))

(declare-fun b!916155 () Bool)

(declare-fun res!617745 () Bool)

(declare-fun e!514297 () Bool)

(assert (=> b!916155 (=> (not res!617745) (not e!514297))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!54652 0))(
  ( (array!54653 (arr!26267 (Array (_ BitVec 32) (_ BitVec 64))) (size!26727 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54652)

(assert (=> b!916155 (= res!617745 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26727 _keys!1487))))))

(declare-fun b!916156 () Bool)

(assert (=> b!916156 (= e!514297 (bvsgt from!1844 (size!26727 _keys!1487)))))

(declare-fun b!916157 () Bool)

(declare-fun res!617742 () Bool)

(assert (=> b!916157 (=> (not res!617742) (not e!514297))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54652 (_ BitVec 32)) Bool)

(assert (=> b!916157 (= res!617742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!916158 () Bool)

(declare-fun e!514299 () Bool)

(declare-fun e!514298 () Bool)

(declare-fun mapRes!30744 () Bool)

(assert (=> b!916158 (= e!514299 (and e!514298 mapRes!30744))))

(declare-fun condMapEmpty!30744 () Bool)

(declare-datatypes ((V!30731 0))(
  ( (V!30732 (val!9713 Int)) )
))
(declare-datatypes ((ValueCell!9181 0))(
  ( (ValueCellFull!9181 (v!12231 V!30731)) (EmptyCell!9181) )
))
(declare-datatypes ((array!54654 0))(
  ( (array!54655 (arr!26268 (Array (_ BitVec 32) ValueCell!9181)) (size!26728 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54654)

(declare-fun mapDefault!30744 () ValueCell!9181)

