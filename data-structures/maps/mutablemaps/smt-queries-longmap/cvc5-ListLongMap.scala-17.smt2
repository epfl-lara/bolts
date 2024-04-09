; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!512 () Bool)

(assert start!512)

(declare-fun mapIsEmpty!80 () Bool)

(declare-fun mapRes!80 () Bool)

(assert (=> mapIsEmpty!80 mapRes!80))

(declare-fun b!2996 () Bool)

(declare-fun e!1292 () Bool)

(declare-fun tp_is_empty!85 () Bool)

(assert (=> b!2996 (= e!1292 tp_is_empty!85)))

(declare-fun b!2997 () Bool)

(declare-fun res!4945 () Bool)

(declare-fun e!1288 () Bool)

(assert (=> b!2997 (=> (not res!4945) (not e!1288))))

(declare-datatypes ((array!103 0))(
  ( (array!104 (arr!46 (Array (_ BitVec 32) (_ BitVec 64))) (size!108 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!103)

(assert (=> b!2997 (= res!4945 (and (bvsle #b00000000000000000000000000000000 (size!108 _keys!1806)) (bvslt (size!108 _keys!1806) #b01111111111111111111111111111111)))))

(declare-fun b!2998 () Bool)

(declare-fun e!1289 () Bool)

(assert (=> b!2998 (= e!1288 e!1289)))

(declare-fun res!4946 () Bool)

(assert (=> b!2998 (=> res!4946 e!1289)))

(declare-datatypes ((List!38 0))(
  ( (Nil!35) (Cons!34 (h!600 (_ BitVec 64)) (t!2165 List!38)) )
))
(declare-fun contains!11 (List!38 (_ BitVec 64)) Bool)

(assert (=> b!2998 (= res!4946 (contains!11 Nil!35 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!4949 () Bool)

(assert (=> start!512 (=> (not res!4949) (not e!1288))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!512 (= res!4949 (validMask!0 mask!2250))))

(assert (=> start!512 e!1288))

(assert (=> start!512 true))

(declare-datatypes ((V!291 0))(
  ( (V!292 (val!48 Int)) )
))
(declare-datatypes ((ValueCell!26 0))(
  ( (ValueCellFull!26 (v!1134 V!291)) (EmptyCell!26) )
))
(declare-datatypes ((array!105 0))(
  ( (array!106 (arr!47 (Array (_ BitVec 32) ValueCell!26)) (size!109 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!105)

(declare-fun e!1290 () Bool)

(declare-fun array_inv!27 (array!105) Bool)

(assert (=> start!512 (and (array_inv!27 _values!1492) e!1290)))

(declare-fun array_inv!28 (array!103) Bool)

(assert (=> start!512 (array_inv!28 _keys!1806)))

(declare-fun b!2999 () Bool)

(assert (=> b!2999 (= e!1289 (contains!11 Nil!35 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!3000 () Bool)

(declare-fun e!1293 () Bool)

(assert (=> b!3000 (= e!1293 tp_is_empty!85)))

(declare-fun mapNonEmpty!80 () Bool)

(declare-fun tp!320 () Bool)

(assert (=> mapNonEmpty!80 (= mapRes!80 (and tp!320 e!1292))))

(declare-fun mapValue!80 () ValueCell!26)

(declare-fun mapKey!80 () (_ BitVec 32))

(declare-fun mapRest!80 () (Array (_ BitVec 32) ValueCell!26))

(assert (=> mapNonEmpty!80 (= (arr!47 _values!1492) (store mapRest!80 mapKey!80 mapValue!80))))

(declare-fun b!3001 () Bool)

(declare-fun res!4947 () Bool)

(assert (=> b!3001 (=> (not res!4947) (not e!1288))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103 (_ BitVec 32)) Bool)

(assert (=> b!3001 (= res!4947 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!3002 () Bool)

(declare-fun res!4948 () Bool)

(assert (=> b!3002 (=> (not res!4948) (not e!1288))))

(declare-fun noDuplicate!5 (List!38) Bool)

(assert (=> b!3002 (= res!4948 (noDuplicate!5 Nil!35))))

(declare-fun b!3003 () Bool)

(assert (=> b!3003 (= e!1290 (and e!1293 mapRes!80))))

(declare-fun condMapEmpty!80 () Bool)

(declare-fun mapDefault!80 () ValueCell!26)

