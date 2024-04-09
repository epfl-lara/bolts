; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131886 () Bool)

(assert start!131886)

(declare-fun b!1543514 () Bool)

(declare-fun res!1059107 () Bool)

(declare-fun e!859083 () Bool)

(assert (=> b!1543514 (=> (not res!1059107) (not e!859083))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!58901 0))(
  ( (V!58902 (val!18999 Int)) )
))
(declare-datatypes ((ValueCell!18011 0))(
  ( (ValueCellFull!18011 (v!21797 V!58901)) (EmptyCell!18011) )
))
(declare-datatypes ((array!102863 0))(
  ( (array!102864 (arr!49629 (Array (_ BitVec 32) ValueCell!18011)) (size!50180 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102863)

(declare-datatypes ((array!102865 0))(
  ( (array!102866 (arr!49630 (Array (_ BitVec 32) (_ BitVec 64))) (size!50181 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102865)

(assert (=> b!1543514 (= res!1059107 (and (= (size!50180 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50181 _keys!618) (size!50180 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1543515 () Bool)

(declare-fun e!859085 () Bool)

(declare-fun tp_is_empty!37843 () Bool)

(assert (=> b!1543515 (= e!859085 tp_is_empty!37843)))

(declare-fun b!1543516 () Bool)

(declare-fun e!859084 () Bool)

(declare-fun e!859086 () Bool)

(declare-fun mapRes!58468 () Bool)

(assert (=> b!1543516 (= e!859084 (and e!859086 mapRes!58468))))

(declare-fun condMapEmpty!58468 () Bool)

(declare-fun mapDefault!58468 () ValueCell!18011)

