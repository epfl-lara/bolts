; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112326 () Bool)

(assert start!112326)

(declare-fun b_free!30685 () Bool)

(declare-fun b_next!30685 () Bool)

(assert (=> start!112326 (= b_free!30685 (not b_next!30685))))

(declare-fun tp!107692 () Bool)

(declare-fun b_and!49435 () Bool)

(assert (=> start!112326 (= tp!107692 b_and!49435)))

(declare-fun b!1330476 () Bool)

(declare-fun res!882925 () Bool)

(declare-fun e!758311 () Bool)

(assert (=> b!1330476 (=> (not res!882925) (not e!758311))))

(declare-datatypes ((array!90043 0))(
  ( (array!90044 (arr!43483 (Array (_ BitVec 32) (_ BitVec 64))) (size!44034 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90043)

(declare-datatypes ((List!30995 0))(
  ( (Nil!30992) (Cons!30991 (h!32200 (_ BitVec 64)) (t!45100 List!30995)) )
))
(declare-fun arrayNoDuplicates!0 (array!90043 (_ BitVec 32) List!30995) Bool)

(assert (=> b!1330476 (= res!882925 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30992))))

(declare-fun b!1330477 () Bool)

(declare-fun res!882931 () Bool)

(assert (=> b!1330477 (=> (not res!882931) (not e!758311))))

(declare-datatypes ((V!53897 0))(
  ( (V!53898 (val!18372 Int)) )
))
(declare-datatypes ((ValueCell!17399 0))(
  ( (ValueCellFull!17399 (v!21007 V!53897)) (EmptyCell!17399) )
))
(declare-datatypes ((array!90045 0))(
  ( (array!90046 (arr!43484 (Array (_ BitVec 32) ValueCell!17399)) (size!44035 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90045)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1330477 (= res!882931 (and (= (size!44035 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44034 _keys!1590) (size!44035 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1330478 () Bool)

(declare-fun res!882930 () Bool)

(assert (=> b!1330478 (=> (not res!882930) (not e!758311))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1330478 (= res!882930 (validKeyInArray!0 (select (arr!43483 _keys!1590) from!1980)))))

(declare-fun b!1330479 () Bool)

(declare-fun res!882928 () Bool)

(assert (=> b!1330479 (=> (not res!882928) (not e!758311))))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1330479 (= res!882928 (not (= (select (arr!43483 _keys!1590) from!1980) k!1153)))))

(declare-fun mapIsEmpty!56566 () Bool)

(declare-fun mapRes!56566 () Bool)

(assert (=> mapIsEmpty!56566 mapRes!56566))

(declare-fun b!1330481 () Bool)

(declare-fun e!758310 () Bool)

(declare-fun e!758312 () Bool)

(assert (=> b!1330481 (= e!758310 (and e!758312 mapRes!56566))))

(declare-fun condMapEmpty!56566 () Bool)

(declare-fun mapDefault!56566 () ValueCell!17399)

