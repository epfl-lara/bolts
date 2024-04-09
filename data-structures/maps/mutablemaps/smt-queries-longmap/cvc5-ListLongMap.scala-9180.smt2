; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110452 () Bool)

(assert start!110452)

(declare-fun b!1306306 () Bool)

(declare-fun res!867306 () Bool)

(declare-fun e!745274 () Bool)

(assert (=> b!1306306 (=> (not res!867306) (not e!745274))))

(declare-datatypes ((array!86975 0))(
  ( (array!86976 (arr!41964 (Array (_ BitVec 32) (_ BitVec 64))) (size!42515 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!86975)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86975 (_ BitVec 32)) Bool)

(assert (=> b!1306306 (= res!867306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1306307 () Bool)

(declare-fun res!867303 () Bool)

(assert (=> b!1306307 (=> (not res!867303) (not e!745274))))

(assert (=> b!1306307 (= res!867303 (and (bvsle #b00000000000000000000000000000000 (size!42515 _keys!1628)) (bvslt (size!42515 _keys!1628) #b01111111111111111111111111111111)))))

(declare-fun b!1306308 () Bool)

(declare-fun e!745272 () Bool)

(declare-datatypes ((List!29975 0))(
  ( (Nil!29972) (Cons!29971 (h!31180 (_ BitVec 64)) (t!43588 List!29975)) )
))
(declare-fun contains!8346 (List!29975 (_ BitVec 64)) Bool)

(assert (=> b!1306308 (= e!745272 (contains!8346 Nil!29972 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1306309 () Bool)

(assert (=> b!1306309 (= e!745274 e!745272)))

(declare-fun res!867302 () Bool)

(assert (=> b!1306309 (=> res!867302 e!745272)))

(assert (=> b!1306309 (= res!867302 (contains!8346 Nil!29972 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1306310 () Bool)

(declare-fun e!745271 () Bool)

(declare-fun e!745270 () Bool)

(declare-fun mapRes!54115 () Bool)

(assert (=> b!1306310 (= e!745271 (and e!745270 mapRes!54115))))

(declare-fun condMapEmpty!54115 () Bool)

(declare-datatypes ((V!51761 0))(
  ( (V!51762 (val!17571 Int)) )
))
(declare-datatypes ((ValueCell!16598 0))(
  ( (ValueCellFull!16598 (v!20195 V!51761)) (EmptyCell!16598) )
))
(declare-datatypes ((array!86977 0))(
  ( (array!86978 (arr!41965 (Array (_ BitVec 32) ValueCell!16598)) (size!42516 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!86977)

(declare-fun mapDefault!54115 () ValueCell!16598)

