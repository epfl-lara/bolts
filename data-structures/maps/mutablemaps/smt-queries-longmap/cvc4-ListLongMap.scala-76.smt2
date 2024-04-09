; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1036 () Bool)

(assert start!1036)

(declare-fun b_free!365 () Bool)

(declare-fun b_next!365 () Bool)

(assert (=> start!1036 (= b_free!365 (not b_next!365))))

(declare-fun tp!1333 () Bool)

(declare-fun b_and!517 () Bool)

(assert (=> start!1036 (= tp!1333 b_and!517)))

(declare-fun mapIsEmpty!644 () Bool)

(declare-fun mapRes!644 () Bool)

(assert (=> mapIsEmpty!644 mapRes!644))

(declare-fun b!9087 () Bool)

(declare-fun e!5187 () Bool)

(assert (=> b!9087 (= e!5187 true)))

(declare-fun lt!1970 () (_ BitVec 32))

(declare-datatypes ((array!809 0))(
  ( (array!810 (arr!390 (Array (_ BitVec 32) (_ BitVec 64))) (size!452 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!809)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!809 (_ BitVec 32)) Bool)

(assert (=> b!9087 (arrayForallSeekEntryOrOpenFound!0 lt!1970 _keys!1806 mask!2250)))

(declare-datatypes ((Unit!181 0))(
  ( (Unit!182) )
))
(declare-fun lt!1969 () Unit!181)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!809 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!181)

(assert (=> b!9087 (= lt!1969 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!1970))))

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!809 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!9087 (= lt!1970 (arrayScanForKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!9088 () Bool)

(declare-fun e!5186 () Bool)

(declare-fun e!5189 () Bool)

(assert (=> b!9088 (= e!5186 (and e!5189 mapRes!644))))

(declare-fun condMapEmpty!644 () Bool)

(declare-datatypes ((V!767 0))(
  ( (V!768 (val!227 Int)) )
))
(declare-datatypes ((ValueCell!205 0))(
  ( (ValueCellFull!205 (v!1321 V!767)) (EmptyCell!205) )
))
(declare-datatypes ((array!811 0))(
  ( (array!812 (arr!391 (Array (_ BitVec 32) ValueCell!205)) (size!453 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!811)

(declare-fun mapDefault!644 () ValueCell!205)

