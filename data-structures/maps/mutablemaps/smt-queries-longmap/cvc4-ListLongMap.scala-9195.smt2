; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110558 () Bool)

(assert start!110558)

(declare-fun b_free!29357 () Bool)

(declare-fun b_next!29357 () Bool)

(assert (=> start!110558 (= b_free!29357 (not b_next!29357))))

(declare-fun tp!103394 () Bool)

(declare-fun b_and!47575 () Bool)

(assert (=> start!110558 (= tp!103394 b_and!47575)))

(declare-fun b!1307322 () Bool)

(declare-fun res!867880 () Bool)

(declare-fun e!746011 () Bool)

(assert (=> b!1307322 (=> (not res!867880) (not e!746011))))

(declare-datatypes ((array!87149 0))(
  ( (array!87150 (arr!42050 (Array (_ BitVec 32) (_ BitVec 64))) (size!42601 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87149)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1307322 (= res!867880 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42601 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1307323 () Bool)

(declare-fun e!746012 () Bool)

(declare-fun tp_is_empty!35087 () Bool)

(assert (=> b!1307323 (= e!746012 tp_is_empty!35087)))

(declare-fun b!1307324 () Bool)

(declare-fun res!867884 () Bool)

(assert (=> b!1307324 (=> (not res!867884) (not e!746011))))

(declare-datatypes ((List!30016 0))(
  ( (Nil!30013) (Cons!30012 (h!31221 (_ BitVec 64)) (t!43629 List!30016)) )
))
(declare-fun arrayNoDuplicates!0 (array!87149 (_ BitVec 32) List!30016) Bool)

(assert (=> b!1307324 (= res!867884 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30013))))

(declare-fun b!1307325 () Bool)

(declare-fun e!746015 () Bool)

(assert (=> b!1307325 (= e!746015 tp_is_empty!35087)))

(declare-fun res!867881 () Bool)

(assert (=> start!110558 (=> (not res!867881) (not e!746011))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110558 (= res!867881 (validMask!0 mask!2040))))

(assert (=> start!110558 e!746011))

(assert (=> start!110558 tp!103394))

(declare-fun array_inv!31787 (array!87149) Bool)

(assert (=> start!110558 (array_inv!31787 _keys!1628)))

(assert (=> start!110558 true))

(assert (=> start!110558 tp_is_empty!35087))

(declare-datatypes ((V!51885 0))(
  ( (V!51886 (val!17618 Int)) )
))
(declare-datatypes ((ValueCell!16645 0))(
  ( (ValueCellFull!16645 (v!20243 V!51885)) (EmptyCell!16645) )
))
(declare-datatypes ((array!87151 0))(
  ( (array!87152 (arr!42051 (Array (_ BitVec 32) ValueCell!16645)) (size!42602 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87151)

(declare-fun e!746013 () Bool)

(declare-fun array_inv!31788 (array!87151) Bool)

(assert (=> start!110558 (and (array_inv!31788 _values!1354) e!746013)))

(declare-fun b!1307326 () Bool)

(declare-fun mapRes!54259 () Bool)

(assert (=> b!1307326 (= e!746013 (and e!746012 mapRes!54259))))

(declare-fun condMapEmpty!54259 () Bool)

(declare-fun mapDefault!54259 () ValueCell!16645)

