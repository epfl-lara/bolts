; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110912 () Bool)

(assert start!110912)

(declare-fun b_free!29711 () Bool)

(declare-fun b_next!29711 () Bool)

(assert (=> start!110912 (= b_free!29711 (not b_next!29711))))

(declare-fun tp!104455 () Bool)

(declare-fun b_and!47929 () Bool)

(assert (=> start!110912 (= tp!104455 b_and!47929)))

(declare-fun b!1312542 () Bool)

(declare-fun res!871508 () Bool)

(declare-fun e!748666 () Bool)

(assert (=> b!1312542 (=> (not res!871508) (not e!748666))))

(declare-datatypes ((array!87833 0))(
  ( (array!87834 (arr!42392 (Array (_ BitVec 32) (_ BitVec 64))) (size!42943 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87833)

(declare-datatypes ((List!30277 0))(
  ( (Nil!30274) (Cons!30273 (h!31482 (_ BitVec 64)) (t!43890 List!30277)) )
))
(declare-fun arrayNoDuplicates!0 (array!87833 (_ BitVec 32) List!30277) Bool)

(assert (=> b!1312542 (= res!871508 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30274))))

(declare-fun res!871511 () Bool)

(assert (=> start!110912 (=> (not res!871511) (not e!748666))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110912 (= res!871511 (validMask!0 mask!2040))))

(assert (=> start!110912 e!748666))

(assert (=> start!110912 tp!104455))

(declare-fun array_inv!32009 (array!87833) Bool)

(assert (=> start!110912 (array_inv!32009 _keys!1628)))

(assert (=> start!110912 true))

(declare-fun tp_is_empty!35441 () Bool)

(assert (=> start!110912 tp_is_empty!35441))

(declare-datatypes ((V!52357 0))(
  ( (V!52358 (val!17795 Int)) )
))
(declare-datatypes ((ValueCell!16822 0))(
  ( (ValueCellFull!16822 (v!20420 V!52357)) (EmptyCell!16822) )
))
(declare-datatypes ((array!87835 0))(
  ( (array!87836 (arr!42393 (Array (_ BitVec 32) ValueCell!16822)) (size!42944 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87835)

(declare-fun e!748668 () Bool)

(declare-fun array_inv!32010 (array!87835) Bool)

(assert (=> start!110912 (and (array_inv!32010 _values!1354) e!748668)))

(declare-fun mapIsEmpty!54790 () Bool)

(declare-fun mapRes!54790 () Bool)

(assert (=> mapIsEmpty!54790 mapRes!54790))

(declare-fun b!1312543 () Bool)

(declare-fun e!748667 () Bool)

(assert (=> b!1312543 (= e!748668 (and e!748667 mapRes!54790))))

(declare-fun condMapEmpty!54790 () Bool)

(declare-fun mapDefault!54790 () ValueCell!16822)

