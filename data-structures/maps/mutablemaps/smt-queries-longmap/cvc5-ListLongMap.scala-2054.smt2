; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35500 () Bool)

(assert start!35500)

(declare-fun res!197308 () Bool)

(declare-fun e!217773 () Bool)

(assert (=> start!35500 (=> (not res!197308) (not e!217773))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35500 (= res!197308 (validMask!0 mask!1842))))

(assert (=> start!35500 e!217773))

(assert (=> start!35500 true))

(declare-datatypes ((V!11571 0))(
  ( (V!11572 (val!4017 Int)) )
))
(declare-datatypes ((ValueCell!3629 0))(
  ( (ValueCellFull!3629 (v!6207 V!11571)) (EmptyCell!3629) )
))
(declare-datatypes ((array!19437 0))(
  ( (array!19438 (arr!9209 (Array (_ BitVec 32) ValueCell!3629)) (size!9561 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19437)

(declare-fun e!217771 () Bool)

(declare-fun array_inv!6780 (array!19437) Bool)

(assert (=> start!35500 (and (array_inv!6780 _values!1208) e!217771)))

(declare-datatypes ((array!19439 0))(
  ( (array!19440 (arr!9210 (Array (_ BitVec 32) (_ BitVec 64))) (size!9562 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19439)

(declare-fun array_inv!6781 (array!19439) Bool)

(assert (=> start!35500 (array_inv!6781 _keys!1456)))

(declare-fun b!355497 () Bool)

(declare-fun e!217775 () Bool)

(declare-fun mapRes!13425 () Bool)

(assert (=> b!355497 (= e!217771 (and e!217775 mapRes!13425))))

(declare-fun condMapEmpty!13425 () Bool)

(declare-fun mapDefault!13425 () ValueCell!3629)

