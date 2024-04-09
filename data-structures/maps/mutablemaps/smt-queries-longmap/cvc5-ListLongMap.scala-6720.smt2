; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84320 () Bool)

(assert start!84320)

(declare-fun b!985951 () Bool)

(declare-fun res!659823 () Bool)

(declare-fun e!555873 () Bool)

(assert (=> b!985951 (=> (not res!659823) (not e!555873))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35777 0))(
  ( (V!35778 (val!11598 Int)) )
))
(declare-datatypes ((ValueCell!11066 0))(
  ( (ValueCellFull!11066 (v!14160 V!35777)) (EmptyCell!11066) )
))
(declare-datatypes ((array!62147 0))(
  ( (array!62148 (arr!29927 (Array (_ BitVec 32) ValueCell!11066)) (size!30407 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62147)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!62149 0))(
  ( (array!62150 (arr!29928 (Array (_ BitVec 32) (_ BitVec 64))) (size!30408 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62149)

(assert (=> b!985951 (= res!659823 (and (= (size!30407 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30408 _keys!1544) (size!30407 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!985952 () Bool)

(declare-fun e!555871 () Bool)

(declare-fun e!555872 () Bool)

(declare-fun mapRes!36671 () Bool)

(assert (=> b!985952 (= e!555871 (and e!555872 mapRes!36671))))

(declare-fun condMapEmpty!36671 () Bool)

(declare-fun mapDefault!36671 () ValueCell!11066)

