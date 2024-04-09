; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83000 () Bool)

(assert start!83000)

(declare-fun b!968326 () Bool)

(declare-fun e!545720 () Bool)

(declare-fun tp_is_empty!21907 () Bool)

(assert (=> b!968326 (= e!545720 tp_is_empty!21907)))

(declare-fun b!968327 () Bool)

(declare-fun e!545718 () Bool)

(assert (=> b!968327 (= e!545718 tp_is_empty!21907)))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun e!545719 () Bool)

(declare-datatypes ((V!34193 0))(
  ( (V!34194 (val!11004 Int)) )
))
(declare-datatypes ((ValueCell!10472 0))(
  ( (ValueCellFull!10472 (v!13562 V!34193)) (EmptyCell!10472) )
))
(declare-datatypes ((array!59865 0))(
  ( (array!59866 (arr!28797 (Array (_ BitVec 32) ValueCell!10472)) (size!29277 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59865)

(declare-fun b!968328 () Bool)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!59867 0))(
  ( (array!59868 (arr!28798 (Array (_ BitVec 32) (_ BitVec 64))) (size!29278 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!59867)

(assert (=> b!968328 (= e!545719 (and (= (size!29277 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29278 _keys!1717) (size!29277 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011) (not (= (size!29278 _keys!1717) (bvadd #b00000000000000000000000000000001 mask!2147)))))))

(declare-fun res!648380 () Bool)

(assert (=> start!83000 (=> (not res!648380) (not e!545719))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83000 (= res!648380 (validMask!0 mask!2147))))

(assert (=> start!83000 e!545719))

(assert (=> start!83000 true))

(declare-fun e!545722 () Bool)

(declare-fun array_inv!22189 (array!59865) Bool)

(assert (=> start!83000 (and (array_inv!22189 _values!1425) e!545722)))

(declare-fun array_inv!22190 (array!59867) Bool)

(assert (=> start!83000 (array_inv!22190 _keys!1717)))

(declare-fun b!968329 () Bool)

(declare-fun mapRes!34855 () Bool)

(assert (=> b!968329 (= e!545722 (and e!545720 mapRes!34855))))

(declare-fun condMapEmpty!34855 () Bool)

(declare-fun mapDefault!34855 () ValueCell!10472)

