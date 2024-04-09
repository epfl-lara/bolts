; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131844 () Bool)

(assert start!131844)

(declare-fun b!1543136 () Bool)

(declare-fun res!1058916 () Bool)

(declare-fun e!858771 () Bool)

(assert (=> b!1543136 (=> (not res!1058916) (not e!858771))))

(declare-datatypes ((array!102783 0))(
  ( (array!102784 (arr!49589 (Array (_ BitVec 32) (_ BitVec 64))) (size!50140 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102783)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!58845 0))(
  ( (V!58846 (val!18978 Int)) )
))
(declare-datatypes ((ValueCell!17990 0))(
  ( (ValueCellFull!17990 (v!21776 V!58845)) (EmptyCell!17990) )
))
(declare-datatypes ((array!102785 0))(
  ( (array!102786 (arr!49590 (Array (_ BitVec 32) ValueCell!17990)) (size!50141 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102785)

(assert (=> b!1543136 (= res!1058916 (and (= (size!50141 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50140 _keys!618) (size!50141 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1543137 () Bool)

(declare-fun e!858768 () Bool)

(declare-fun e!858769 () Bool)

(declare-fun mapRes!58405 () Bool)

(assert (=> b!1543137 (= e!858768 (and e!858769 mapRes!58405))))

(declare-fun condMapEmpty!58405 () Bool)

(declare-fun mapDefault!58405 () ValueCell!17990)

