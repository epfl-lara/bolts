; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111262 () Bool)

(assert start!111262)

(declare-datatypes ((array!88407 0))(
  ( (array!88408 (arr!42678 (Array (_ BitVec 32) (_ BitVec 64))) (size!43229 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88407)

(declare-fun e!751172 () Bool)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!52765 0))(
  ( (V!52766 (val!17948 Int)) )
))
(declare-datatypes ((ValueCell!16975 0))(
  ( (ValueCellFull!16975 (v!20575 V!52765)) (EmptyCell!16975) )
))
(declare-datatypes ((array!88409 0))(
  ( (array!88410 (arr!42679 (Array (_ BitVec 32) ValueCell!16975)) (size!43230 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88409)

(declare-fun b!1316628 () Bool)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1316628 (= e!751172 (and (= (size!43230 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43229 _keys!1609) (size!43230 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011) (= (size!43229 _keys!1609) (bvadd #b00000000000000000000000000000001 mask!2019)) (bvsgt #b00000000000000000000000000000000 (size!43229 _keys!1609))))))

(declare-fun b!1316629 () Bool)

(declare-fun e!751170 () Bool)

(declare-fun e!751171 () Bool)

(declare-fun mapRes!55253 () Bool)

(assert (=> b!1316629 (= e!751170 (and e!751171 mapRes!55253))))

(declare-fun condMapEmpty!55253 () Bool)

(declare-fun mapDefault!55253 () ValueCell!16975)

