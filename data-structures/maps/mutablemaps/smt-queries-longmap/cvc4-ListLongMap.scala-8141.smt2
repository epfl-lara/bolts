; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99752 () Bool)

(assert start!99752)

(declare-fun b_free!25295 () Bool)

(declare-fun b_next!25295 () Bool)

(assert (=> start!99752 (= b_free!25295 (not b_next!25295))))

(declare-fun tp!88600 () Bool)

(declare-fun b_and!41471 () Bool)

(assert (=> start!99752 (= tp!88600 b_and!41471)))

(declare-fun b!1183367 () Bool)

(declare-fun res!786595 () Bool)

(declare-fun e!672848 () Bool)

(assert (=> b!1183367 (=> (not res!786595) (not e!672848))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1183367 (= res!786595 (validMask!0 mask!1564))))

(declare-fun b!1183368 () Bool)

(declare-fun e!672845 () Bool)

(declare-fun e!672853 () Bool)

(assert (=> b!1183368 (= e!672845 e!672853)))

(declare-fun res!786591 () Bool)

(assert (=> b!1183368 (=> res!786591 e!672853)))

(declare-datatypes ((array!76418 0))(
  ( (array!76419 (arr!36855 (Array (_ BitVec 32) (_ BitVec 64))) (size!37392 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76418)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1183368 (= res!786591 (not (= (select (arr!36855 _keys!1208) from!1455) k!934)))))

(declare-fun b!1183369 () Bool)

(declare-fun e!672847 () Bool)

(declare-fun e!672849 () Bool)

(declare-fun mapRes!46565 () Bool)

(assert (=> b!1183369 (= e!672847 (and e!672849 mapRes!46565))))

(declare-fun condMapEmpty!46565 () Bool)

(declare-datatypes ((V!44893 0))(
  ( (V!44894 (val!14969 Int)) )
))
(declare-datatypes ((ValueCell!14203 0))(
  ( (ValueCellFull!14203 (v!17608 V!44893)) (EmptyCell!14203) )
))
(declare-datatypes ((array!76420 0))(
  ( (array!76421 (arr!36856 (Array (_ BitVec 32) ValueCell!14203)) (size!37393 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76420)

(declare-fun mapDefault!46565 () ValueCell!14203)

