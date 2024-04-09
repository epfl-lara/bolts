; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84258 () Bool)

(assert start!84258)

(declare-fun b_free!19931 () Bool)

(declare-fun b_next!19931 () Bool)

(assert (=> start!84258 (= b_free!19931 (not b_next!19931))))

(declare-fun tp!69397 () Bool)

(declare-fun b_and!31957 () Bool)

(assert (=> start!84258 (= tp!69397 b_and!31957)))

(declare-fun b!985182 () Bool)

(declare-fun e!555371 () Bool)

(declare-fun e!555373 () Bool)

(assert (=> b!985182 (= e!555371 e!555373)))

(declare-fun res!659359 () Bool)

(assert (=> b!985182 (=> (not res!659359) (not e!555373))))

(declare-datatypes ((array!62031 0))(
  ( (array!62032 (arr!29869 (Array (_ BitVec 32) (_ BitVec 64))) (size!30349 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62031)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!985182 (= res!659359 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29869 _keys!1544) from!1932))))))

(declare-datatypes ((V!35693 0))(
  ( (V!35694 (val!11567 Int)) )
))
(declare-datatypes ((ValueCell!11035 0))(
  ( (ValueCellFull!11035 (v!14129 V!35693)) (EmptyCell!11035) )
))
(declare-datatypes ((array!62033 0))(
  ( (array!62034 (arr!29870 (Array (_ BitVec 32) ValueCell!11035)) (size!30350 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62033)

(declare-fun lt!437145 () V!35693)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15525 (ValueCell!11035 V!35693) V!35693)

(declare-fun dynLambda!1848 (Int (_ BitVec 64)) V!35693)

(assert (=> b!985182 (= lt!437145 (get!15525 (select (arr!29870 _values!1278) from!1932) (dynLambda!1848 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun minValue!1220 () V!35693)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35693)

(declare-datatypes ((tuple2!14902 0))(
  ( (tuple2!14903 (_1!7461 (_ BitVec 64)) (_2!7461 V!35693)) )
))
(declare-datatypes ((List!20820 0))(
  ( (Nil!20817) (Cons!20816 (h!21978 tuple2!14902) (t!29703 List!20820)) )
))
(declare-datatypes ((ListLongMap!13613 0))(
  ( (ListLongMap!13614 (toList!6822 List!20820)) )
))
(declare-fun lt!437144 () ListLongMap!13613)

(declare-fun getCurrentListMapNoExtraKeys!3477 (array!62031 array!62033 (_ BitVec 32) (_ BitVec 32) V!35693 V!35693 (_ BitVec 32) Int) ListLongMap!13613)

(assert (=> b!985182 (= lt!437144 (getCurrentListMapNoExtraKeys!3477 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!985183 () Bool)

(declare-fun e!555372 () Bool)

(declare-fun e!555374 () Bool)

(declare-fun mapRes!36578 () Bool)

(assert (=> b!985183 (= e!555372 (and e!555374 mapRes!36578))))

(declare-fun condMapEmpty!36578 () Bool)

(declare-fun mapDefault!36578 () ValueCell!11035)

