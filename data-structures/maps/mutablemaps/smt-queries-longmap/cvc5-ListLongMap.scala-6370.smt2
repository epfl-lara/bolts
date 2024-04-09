; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81984 () Bool)

(assert start!81984)

(declare-fun mapIsEmpty!33454 () Bool)

(declare-fun mapRes!33454 () Bool)

(assert (=> mapIsEmpty!33454 mapRes!33454))

(declare-fun b!955837 () Bool)

(declare-fun e!538518 () Bool)

(declare-fun tp_is_empty!20995 () Bool)

(assert (=> b!955837 (= e!538518 tp_is_empty!20995)))

(declare-fun res!640187 () Bool)

(declare-fun e!538519 () Bool)

(assert (=> start!81984 (=> (not res!640187) (not e!538519))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81984 (= res!640187 (validMask!0 mask!1823))))

(assert (=> start!81984 e!538519))

(assert (=> start!81984 true))

(declare-datatypes ((V!32977 0))(
  ( (V!32978 (val!10548 Int)) )
))
(declare-datatypes ((ValueCell!10016 0))(
  ( (ValueCellFull!10016 (v!13103 V!32977)) (EmptyCell!10016) )
))
(declare-datatypes ((array!58111 0))(
  ( (array!58112 (arr!27931 (Array (_ BitVec 32) ValueCell!10016)) (size!28411 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58111)

(declare-fun e!538520 () Bool)

(declare-fun array_inv!21621 (array!58111) Bool)

(assert (=> start!81984 (and (array_inv!21621 _values!1197) e!538520)))

(declare-datatypes ((array!58113 0))(
  ( (array!58114 (arr!27932 (Array (_ BitVec 32) (_ BitVec 64))) (size!28412 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58113)

(declare-fun array_inv!21622 (array!58113) Bool)

(assert (=> start!81984 (array_inv!21622 _keys!1441)))

(declare-fun b!955838 () Bool)

(declare-fun res!640189 () Bool)

(assert (=> b!955838 (=> (not res!640189) (not e!538519))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58113 (_ BitVec 32)) Bool)

(assert (=> b!955838 (= res!640189 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!955839 () Bool)

(assert (=> b!955839 (= e!538520 (and e!538518 mapRes!33454))))

(declare-fun condMapEmpty!33454 () Bool)

(declare-fun mapDefault!33454 () ValueCell!10016)

