; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78728 () Bool)

(assert start!78728)

(declare-fun b_free!16913 () Bool)

(declare-fun b_next!16913 () Bool)

(assert (=> start!78728 (= b_free!16913 (not b_next!16913))))

(declare-fun tp!59180 () Bool)

(declare-fun b_and!27581 () Bool)

(assert (=> start!78728 (= tp!59180 b_and!27581)))

(declare-fun b!917646 () Bool)

(declare-fun e!515195 () Bool)

(declare-fun e!515197 () Bool)

(assert (=> b!917646 (= e!515195 e!515197)))

(declare-fun res!618775 () Bool)

(assert (=> b!917646 (=> (not res!618775) (not e!515197))))

(declare-fun lt!412036 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!917646 (= res!618775 (validKeyInArray!0 lt!412036))))

(declare-datatypes ((array!54834 0))(
  ( (array!54835 (arr!26358 (Array (_ BitVec 32) (_ BitVec 64))) (size!26818 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54834)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!917646 (= lt!412036 (select (arr!26358 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!917647 () Bool)

(declare-fun e!515194 () Bool)

(declare-fun e!515196 () Bool)

(declare-fun mapRes!30888 () Bool)

(assert (=> b!917647 (= e!515194 (and e!515196 mapRes!30888))))

(declare-fun condMapEmpty!30888 () Bool)

(declare-datatypes ((V!30859 0))(
  ( (V!30860 (val!9761 Int)) )
))
(declare-datatypes ((ValueCell!9229 0))(
  ( (ValueCellFull!9229 (v!12279 V!30859)) (EmptyCell!9229) )
))
(declare-datatypes ((array!54836 0))(
  ( (array!54837 (arr!26359 (Array (_ BitVec 32) ValueCell!9229)) (size!26819 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54836)

(declare-fun mapDefault!30888 () ValueCell!9229)

