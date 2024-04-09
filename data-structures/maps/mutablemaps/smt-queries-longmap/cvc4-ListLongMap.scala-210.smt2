; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3944 () Bool)

(assert start!3944)

(declare-fun b_free!851 () Bool)

(declare-fun b_next!851 () Bool)

(assert (=> start!3944 (= b_free!851 (not b_next!851))))

(declare-fun tp!3972 () Bool)

(declare-fun b_and!1663 () Bool)

(assert (=> start!3944 (= tp!3972 b_and!1663)))

(declare-fun b!28175 () Bool)

(declare-fun res!16741 () Bool)

(declare-fun e!18250 () Bool)

(assert (=> b!28175 (=> (not res!16741) (not e!18250))))

(declare-datatypes ((array!1635 0))(
  ( (array!1636 (arr!771 (Array (_ BitVec 32) (_ BitVec 64))) (size!872 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1635)

(declare-datatypes ((List!647 0))(
  ( (Nil!644) (Cons!643 (h!1210 (_ BitVec 64)) (t!3342 List!647)) )
))
(declare-fun arrayNoDuplicates!0 (array!1635 (_ BitVec 32) List!647) Bool)

(assert (=> b!28175 (= res!16741 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!644))))

(declare-fun mapNonEmpty!1336 () Bool)

(declare-fun mapRes!1336 () Bool)

(declare-fun tp!3973 () Bool)

(declare-fun e!18246 () Bool)

(assert (=> mapNonEmpty!1336 (= mapRes!1336 (and tp!3973 e!18246))))

(declare-datatypes ((V!1431 0))(
  ( (V!1432 (val!629 Int)) )
))
(declare-datatypes ((ValueCell!403 0))(
  ( (ValueCellFull!403 (v!1718 V!1431)) (EmptyCell!403) )
))
(declare-datatypes ((array!1637 0))(
  ( (array!1638 (arr!772 (Array (_ BitVec 32) ValueCell!403)) (size!873 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1637)

(declare-fun mapKey!1336 () (_ BitVec 32))

(declare-fun mapValue!1336 () ValueCell!403)

(declare-fun mapRest!1336 () (Array (_ BitVec 32) ValueCell!403))

(assert (=> mapNonEmpty!1336 (= (arr!772 _values!1501) (store mapRest!1336 mapKey!1336 mapValue!1336))))

(declare-fun res!16740 () Bool)

(assert (=> start!3944 (=> (not res!16740) (not e!18250))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3944 (= res!16740 (validMask!0 mask!2294))))

(assert (=> start!3944 e!18250))

(assert (=> start!3944 true))

(assert (=> start!3944 tp!3972))

(declare-fun e!18249 () Bool)

(declare-fun array_inv!525 (array!1637) Bool)

(assert (=> start!3944 (and (array_inv!525 _values!1501) e!18249)))

(declare-fun array_inv!526 (array!1635) Bool)

(assert (=> start!3944 (array_inv!526 _keys!1833)))

(declare-fun tp_is_empty!1205 () Bool)

(assert (=> start!3944 tp_is_empty!1205))

(declare-fun b!28176 () Bool)

(declare-fun res!16737 () Bool)

(assert (=> b!28176 (=> (not res!16737) (not e!18250))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!28176 (= res!16737 (validKeyInArray!0 k!1304))))

(declare-fun b!28177 () Bool)

(declare-fun e!18247 () Bool)

(assert (=> b!28177 (= e!18249 (and e!18247 mapRes!1336))))

(declare-fun condMapEmpty!1336 () Bool)

(declare-fun mapDefault!1336 () ValueCell!403)

