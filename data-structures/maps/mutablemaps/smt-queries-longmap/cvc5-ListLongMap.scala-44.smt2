; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!776 () Bool)

(assert start!776)

(declare-fun b_free!169 () Bool)

(declare-fun b_next!169 () Bool)

(assert (=> start!776 (= b_free!169 (not b_next!169))))

(declare-fun tp!737 () Bool)

(declare-fun b_and!315 () Bool)

(assert (=> start!776 (= tp!737 b_and!315)))

(declare-fun b!5515 () Bool)

(declare-fun e!2992 () Bool)

(assert (=> b!5515 (= e!2992 (not true))))

(declare-fun e!2995 () Bool)

(assert (=> b!5515 e!2995))

(declare-fun c!386 () Bool)

(declare-fun k!1278 () (_ BitVec 64))

(assert (=> b!5515 (= c!386 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!507 0))(
  ( (V!508 (val!129 Int)) )
))
(declare-datatypes ((ValueCell!107 0))(
  ( (ValueCellFull!107 (v!1220 V!507)) (EmptyCell!107) )
))
(declare-datatypes ((array!429 0))(
  ( (array!430 (arr!203 (Array (_ BitVec 32) ValueCell!107)) (size!265 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!429)

(declare-fun minValue!1434 () V!507)

(declare-datatypes ((array!431 0))(
  ( (array!432 (arr!204 (Array (_ BitVec 32) (_ BitVec 64))) (size!266 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!431)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!507)

(declare-datatypes ((Unit!69 0))(
  ( (Unit!70) )
))
(declare-fun lt!1014 () Unit!69)

(declare-fun lemmaKeyInListMapIsInArray!20 (array!431 array!429 (_ BitVec 32) (_ BitVec 32) V!507 V!507 (_ BitVec 64) Int) Unit!69)

(assert (=> b!5515 (= lt!1014 (lemmaKeyInListMapIsInArray!20 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun b!5516 () Bool)

(declare-fun e!2993 () Bool)

(declare-fun e!2991 () Bool)

(declare-fun mapRes!341 () Bool)

(assert (=> b!5516 (= e!2993 (and e!2991 mapRes!341))))

(declare-fun condMapEmpty!341 () Bool)

(declare-fun mapDefault!341 () ValueCell!107)

