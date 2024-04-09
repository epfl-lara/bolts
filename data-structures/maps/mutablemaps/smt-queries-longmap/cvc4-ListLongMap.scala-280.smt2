; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4548 () Bool)

(assert start!4548)

(declare-fun b_free!1271 () Bool)

(declare-fun b_next!1271 () Bool)

(assert (=> start!4548 (= b_free!1271 (not b_next!1271))))

(declare-fun tp!5256 () Bool)

(declare-fun b_and!2099 () Bool)

(assert (=> start!4548 (= tp!5256 b_and!2099)))

(declare-fun b!35593 () Bool)

(declare-fun e!22487 () Bool)

(declare-fun e!22486 () Bool)

(assert (=> b!35593 (= e!22487 e!22486)))

(declare-fun res!21599 () Bool)

(assert (=> b!35593 (=> (not res!21599) (not e!22486))))

(declare-datatypes ((V!1991 0))(
  ( (V!1992 (val!839 Int)) )
))
(declare-datatypes ((tuple2!1346 0))(
  ( (tuple2!1347 (_1!683 (_ BitVec 64)) (_2!683 V!1991)) )
))
(declare-datatypes ((List!954 0))(
  ( (Nil!951) (Cons!950 (h!1517 tuple2!1346) (t!3665 List!954)) )
))
(declare-datatypes ((ListLongMap!927 0))(
  ( (ListLongMap!928 (toList!479 List!954)) )
))
(declare-fun lt!13088 () ListLongMap!927)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun contains!424 (ListLongMap!927 (_ BitVec 64)) Bool)

(assert (=> b!35593 (= res!21599 (not (contains!424 lt!13088 k!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((ValueCell!613 0))(
  ( (ValueCellFull!613 (v!1936 V!1991)) (EmptyCell!613) )
))
(declare-datatypes ((array!2459 0))(
  ( (array!2460 (arr!1175 (Array (_ BitVec 32) ValueCell!613)) (size!1276 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2459)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-datatypes ((array!2461 0))(
  ( (array!2462 (arr!1176 (Array (_ BitVec 32) (_ BitVec 64))) (size!1277 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2461)

(declare-fun zeroValue!1443 () V!1991)

(declare-fun minValue!1443 () V!1991)

(declare-fun getCurrentListMap!300 (array!2461 array!2459 (_ BitVec 32) (_ BitVec 32) V!1991 V!1991 (_ BitVec 32) Int) ListLongMap!927)

(assert (=> b!35593 (= lt!13088 (getCurrentListMap!300 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!35594 () Bool)

(declare-fun res!21604 () Bool)

(assert (=> b!35594 (=> (not res!21604) (not e!22487))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!35594 (= res!21604 (validKeyInArray!0 k!1304))))

(declare-fun mapIsEmpty!1990 () Bool)

(declare-fun mapRes!1990 () Bool)

(assert (=> mapIsEmpty!1990 mapRes!1990))

(declare-fun b!35595 () Bool)

(declare-fun res!21597 () Bool)

(assert (=> b!35595 (=> (not res!21597) (not e!22487))))

(assert (=> b!35595 (= res!21597 (and (= (size!1276 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1277 _keys!1833) (size!1276 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!35596 () Bool)

(declare-fun e!22482 () Bool)

(declare-fun e!22484 () Bool)

(assert (=> b!35596 (= e!22482 (and e!22484 mapRes!1990))))

(declare-fun condMapEmpty!1990 () Bool)

(declare-fun mapDefault!1990 () ValueCell!613)

