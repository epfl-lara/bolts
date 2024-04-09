; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84116 () Bool)

(assert start!84116)

(declare-fun res!658032 () Bool)

(declare-fun e!554181 () Bool)

(assert (=> start!84116 (=> (not res!658032) (not e!554181))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84116 (= res!658032 (validMask!0 mask!1948))))

(assert (=> start!84116 e!554181))

(assert (=> start!84116 true))

(declare-datatypes ((V!35505 0))(
  ( (V!35506 (val!11496 Int)) )
))
(declare-datatypes ((ValueCell!10964 0))(
  ( (ValueCellFull!10964 (v!14058 V!35505)) (EmptyCell!10964) )
))
(declare-datatypes ((array!61765 0))(
  ( (array!61766 (arr!29736 (Array (_ BitVec 32) ValueCell!10964)) (size!30216 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61765)

(declare-fun e!554180 () Bool)

(declare-fun array_inv!22865 (array!61765) Bool)

(assert (=> start!84116 (and (array_inv!22865 _values!1278) e!554180)))

(declare-datatypes ((array!61767 0))(
  ( (array!61768 (arr!29737 (Array (_ BitVec 32) (_ BitVec 64))) (size!30217 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61767)

(declare-fun array_inv!22866 (array!61767) Bool)

(assert (=> start!84116 (array_inv!22866 _keys!1544)))

(declare-fun mapIsEmpty!36365 () Bool)

(declare-fun mapRes!36365 () Bool)

(assert (=> mapIsEmpty!36365 mapRes!36365))

(declare-fun b!983134 () Bool)

(declare-fun e!554182 () Bool)

(declare-fun tp_is_empty!22891 () Bool)

(assert (=> b!983134 (= e!554182 tp_is_empty!22891)))

(declare-fun b!983135 () Bool)

(assert (=> b!983135 (= e!554180 (and e!554182 mapRes!36365))))

(declare-fun condMapEmpty!36365 () Bool)

(declare-fun mapDefault!36365 () ValueCell!10964)

