; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!792 () Bool)

(assert start!792)

(declare-fun b_free!185 () Bool)

(declare-fun b_next!185 () Bool)

(assert (=> start!792 (= b_free!185 (not b_next!185))))

(declare-fun tp!784 () Bool)

(declare-fun b_and!331 () Bool)

(assert (=> start!792 (= tp!784 b_and!331)))

(declare-fun b!5796 () Bool)

(declare-fun res!6436 () Bool)

(declare-fun e!3155 () Bool)

(assert (=> b!5796 (=> (not res!6436) (not e!3155))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!527 0))(
  ( (V!528 (val!137 Int)) )
))
(declare-datatypes ((ValueCell!115 0))(
  ( (ValueCellFull!115 (v!1228 V!527)) (EmptyCell!115) )
))
(declare-datatypes ((array!461 0))(
  ( (array!462 (arr!219 (Array (_ BitVec 32) ValueCell!115)) (size!281 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!461)

(declare-datatypes ((array!463 0))(
  ( (array!464 (arr!220 (Array (_ BitVec 32) (_ BitVec 64))) (size!282 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!463)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!5796 (= res!6436 (and (= (size!281 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!282 _keys!1806) (size!281 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!5797 () Bool)

(declare-fun e!3152 () Bool)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!463 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!5797 (= e!3152 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!5798 () Bool)

(declare-fun e!3154 () Bool)

(assert (=> b!5798 (= e!3155 (not e!3154))))

(declare-fun res!6437 () Bool)

(assert (=> b!5798 (=> res!6437 e!3154)))

(assert (=> b!5798 (= res!6437 (not (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000)))))

(assert (=> b!5798 e!3152))

(declare-fun c!410 () Bool)

(assert (=> b!5798 (= c!410 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-datatypes ((Unit!79 0))(
  ( (Unit!80) )
))
(declare-fun lt!1055 () Unit!79)

(declare-fun minValue!1434 () V!527)

(declare-fun zeroValue!1434 () V!527)

(declare-fun lemmaKeyInListMapIsInArray!25 (array!463 array!461 (_ BitVec 32) (_ BitVec 32) V!527 V!527 (_ BitVec 64) Int) Unit!79)

(assert (=> b!5798 (= lt!1055 (lemmaKeyInListMapIsInArray!25 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun res!6434 () Bool)

(assert (=> start!792 (=> (not res!6434) (not e!3155))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!792 (= res!6434 (validMask!0 mask!2250))))

(assert (=> start!792 e!3155))

(assert (=> start!792 tp!784))

(assert (=> start!792 true))

(declare-fun e!3158 () Bool)

(declare-fun array_inv!153 (array!461) Bool)

(assert (=> start!792 (and (array_inv!153 _values!1492) e!3158)))

(declare-fun tp_is_empty!263 () Bool)

(assert (=> start!792 tp_is_empty!263))

(declare-fun array_inv!154 (array!463) Bool)

(assert (=> start!792 (array_inv!154 _keys!1806)))

(declare-fun b!5799 () Bool)

(declare-fun res!6433 () Bool)

(assert (=> b!5799 (=> (not res!6433) (not e!3155))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!5799 (= res!6433 (validKeyInArray!0 k!1278))))

(declare-fun mapIsEmpty!365 () Bool)

(declare-fun mapRes!365 () Bool)

(assert (=> mapIsEmpty!365 mapRes!365))

(declare-fun b!5800 () Bool)

(assert (=> b!5800 (= e!3152 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!5801 () Bool)

(declare-fun res!6438 () Bool)

(assert (=> b!5801 (=> (not res!6438) (not e!3155))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!463 (_ BitVec 32)) Bool)

(assert (=> b!5801 (= res!6438 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!5802 () Bool)

(declare-fun e!3156 () Bool)

(assert (=> b!5802 (= e!3158 (and e!3156 mapRes!365))))

(declare-fun condMapEmpty!365 () Bool)

(declare-fun mapDefault!365 () ValueCell!115)

