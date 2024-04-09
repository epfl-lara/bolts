; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111386 () Bool)

(assert start!111386)

(declare-fun b_free!30007 () Bool)

(declare-fun b_next!30007 () Bool)

(assert (=> start!111386 (= b_free!30007 (not b_next!30007))))

(declare-fun tp!105497 () Bool)

(declare-fun b_and!48237 () Bool)

(assert (=> start!111386 (= tp!105497 b_and!48237)))

(declare-fun res!874491 () Bool)

(declare-fun e!751863 () Bool)

(assert (=> start!111386 (=> (not res!874491) (not e!751863))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111386 (= res!874491 (validMask!0 mask!2019))))

(assert (=> start!111386 e!751863))

(declare-datatypes ((array!88561 0))(
  ( (array!88562 (arr!42750 (Array (_ BitVec 32) (_ BitVec 64))) (size!43301 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88561)

(declare-fun array_inv!32241 (array!88561) Bool)

(assert (=> start!111386 (array_inv!32241 _keys!1609)))

(assert (=> start!111386 true))

(declare-fun tp_is_empty!35827 () Bool)

(assert (=> start!111386 tp_is_empty!35827))

(declare-datatypes ((V!52873 0))(
  ( (V!52874 (val!17988 Int)) )
))
(declare-datatypes ((ValueCell!17015 0))(
  ( (ValueCellFull!17015 (v!20616 V!52873)) (EmptyCell!17015) )
))
(declare-datatypes ((array!88563 0))(
  ( (array!88564 (arr!42751 (Array (_ BitVec 32) ValueCell!17015)) (size!43302 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88563)

(declare-fun e!751866 () Bool)

(declare-fun array_inv!32242 (array!88563) Bool)

(assert (=> start!111386 (and (array_inv!32242 _values!1337) e!751866)))

(assert (=> start!111386 tp!105497))

(declare-fun b!1317503 () Bool)

(assert (=> b!1317503 (= e!751863 false)))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun lt!586318 () Bool)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!52873)

(declare-fun minValue!1279 () V!52873)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23300 0))(
  ( (tuple2!23301 (_1!11660 (_ BitVec 64)) (_2!11660 V!52873)) )
))
(declare-datatypes ((List!30490 0))(
  ( (Nil!30487) (Cons!30486 (h!31695 tuple2!23300) (t!44105 List!30490)) )
))
(declare-datatypes ((ListLongMap!20969 0))(
  ( (ListLongMap!20970 (toList!10500 List!30490)) )
))
(declare-fun contains!8591 (ListLongMap!20969 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5456 (array!88561 array!88563 (_ BitVec 32) (_ BitVec 32) V!52873 V!52873 (_ BitVec 32) Int) ListLongMap!20969)

(assert (=> b!1317503 (= lt!586318 (contains!8591 (getCurrentListMap!5456 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1317504 () Bool)

(declare-fun res!874495 () Bool)

(assert (=> b!1317504 (=> (not res!874495) (not e!751863))))

(assert (=> b!1317504 (= res!874495 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43301 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1317505 () Bool)

(declare-fun e!751865 () Bool)

(assert (=> b!1317505 (= e!751865 tp_is_empty!35827)))

(declare-fun b!1317506 () Bool)

(declare-fun e!751867 () Bool)

(declare-fun mapRes!55388 () Bool)

(assert (=> b!1317506 (= e!751866 (and e!751867 mapRes!55388))))

(declare-fun condMapEmpty!55388 () Bool)

(declare-fun mapDefault!55388 () ValueCell!17015)

