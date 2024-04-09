; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110714 () Bool)

(assert start!110714)

(declare-fun b_free!29513 () Bool)

(declare-fun b_next!29513 () Bool)

(assert (=> start!110714 (= b_free!29513 (not b_next!29513))))

(declare-fun tp!103862 () Bool)

(declare-fun b_and!47731 () Bool)

(assert (=> start!110714 (= tp!103862 b_and!47731)))

(declare-fun b!1309518 () Bool)

(declare-fun res!869378 () Bool)

(declare-fun e!747182 () Bool)

(assert (=> b!1309518 (=> (not res!869378) (not e!747182))))

(declare-datatypes ((array!87443 0))(
  ( (array!87444 (arr!42197 (Array (_ BitVec 32) (_ BitVec 64))) (size!42748 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87443)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52093 0))(
  ( (V!52094 (val!17696 Int)) )
))
(declare-datatypes ((ValueCell!16723 0))(
  ( (ValueCellFull!16723 (v!20321 V!52093)) (EmptyCell!16723) )
))
(declare-datatypes ((array!87445 0))(
  ( (array!87446 (arr!42198 (Array (_ BitVec 32) ValueCell!16723)) (size!42749 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87445)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1309518 (= res!869378 (and (= (size!42749 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42748 _keys!1628) (size!42749 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1309519 () Bool)

(assert (=> b!1309519 (= e!747182 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585220 () Bool)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52093)

(declare-fun zeroValue!1296 () V!52093)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22958 0))(
  ( (tuple2!22959 (_1!11489 (_ BitVec 64)) (_2!11489 V!52093)) )
))
(declare-datatypes ((List!30125 0))(
  ( (Nil!30122) (Cons!30121 (h!31330 tuple2!22958) (t!43738 List!30125)) )
))
(declare-datatypes ((ListLongMap!20627 0))(
  ( (ListLongMap!20628 (toList!10329 List!30125)) )
))
(declare-fun contains!8415 (ListLongMap!20627 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5285 (array!87443 array!87445 (_ BitVec 32) (_ BitVec 32) V!52093 V!52093 (_ BitVec 32) Int) ListLongMap!20627)

(assert (=> b!1309519 (= lt!585220 (contains!8415 (getCurrentListMap!5285 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1309520 () Bool)

(declare-fun res!869374 () Bool)

(assert (=> b!1309520 (=> (not res!869374) (not e!747182))))

(assert (=> b!1309520 (= res!869374 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42748 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1309521 () Bool)

(declare-fun e!747183 () Bool)

(declare-fun e!747181 () Bool)

(declare-fun mapRes!54493 () Bool)

(assert (=> b!1309521 (= e!747183 (and e!747181 mapRes!54493))))

(declare-fun condMapEmpty!54493 () Bool)

(declare-fun mapDefault!54493 () ValueCell!16723)

