; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!786 () Bool)

(assert start!786)

(declare-fun b_free!179 () Bool)

(declare-fun b_next!179 () Bool)

(assert (=> start!786 (= b_free!179 (not b_next!179))))

(declare-fun tp!766 () Bool)

(declare-fun b_and!325 () Bool)

(assert (=> start!786 (= tp!766 b_and!325)))

(declare-fun mapIsEmpty!356 () Bool)

(declare-fun mapRes!356 () Bool)

(assert (=> mapIsEmpty!356 mapRes!356))

(declare-fun b!5688 () Bool)

(declare-fun res!6375 () Bool)

(declare-fun e!3089 () Bool)

(assert (=> b!5688 (=> (not res!6375) (not e!3089))))

(declare-datatypes ((array!449 0))(
  ( (array!450 (arr!213 (Array (_ BitVec 32) (_ BitVec 64))) (size!275 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!449)

(declare-datatypes ((List!137 0))(
  ( (Nil!134) (Cons!133 (h!699 (_ BitVec 64)) (t!2272 List!137)) )
))
(declare-fun arrayNoDuplicates!0 (array!449 (_ BitVec 32) List!137) Bool)

(assert (=> b!5688 (= res!6375 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!134))))

(declare-fun b!5689 () Bool)

(declare-fun e!3094 () Bool)

(declare-fun e!3092 () Bool)

(assert (=> b!5689 (= e!3094 (and e!3092 mapRes!356))))

(declare-fun condMapEmpty!356 () Bool)

(declare-datatypes ((V!519 0))(
  ( (V!520 (val!134 Int)) )
))
(declare-datatypes ((ValueCell!112 0))(
  ( (ValueCellFull!112 (v!1225 V!519)) (EmptyCell!112) )
))
(declare-datatypes ((array!451 0))(
  ( (array!452 (arr!214 (Array (_ BitVec 32) ValueCell!112)) (size!276 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!451)

(declare-fun mapDefault!356 () ValueCell!112)

