; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83396 () Bool)

(assert start!83396)

(declare-fun b_free!19361 () Bool)

(declare-fun b_next!19361 () Bool)

(assert (=> start!83396 (= b_free!19361 (not b_next!19361))))

(declare-fun tp!67362 () Bool)

(declare-fun b_and!30961 () Bool)

(assert (=> start!83396 (= tp!67362 b_and!30961)))

(declare-fun b!973306 () Bool)

(declare-fun e!548655 () Bool)

(assert (=> b!973306 (= e!548655 (not true))))

(declare-datatypes ((V!34661 0))(
  ( (V!34662 (val!11180 Int)) )
))
(declare-datatypes ((tuple2!14454 0))(
  ( (tuple2!14455 (_1!7237 (_ BitVec 64)) (_2!7237 V!34661)) )
))
(declare-fun lt!432459 () tuple2!14454)

(declare-datatypes ((array!60543 0))(
  ( (array!60544 (arr!29131 (Array (_ BitVec 32) (_ BitVec 64))) (size!29611 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60543)

(declare-datatypes ((List!20335 0))(
  ( (Nil!20332) (Cons!20331 (h!21493 tuple2!14454) (t!28802 List!20335)) )
))
(declare-datatypes ((ListLongMap!13165 0))(
  ( (ListLongMap!13166 (toList!6598 List!20335)) )
))
(declare-fun lt!432458 () ListLongMap!13165)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun contains!5642 (ListLongMap!13165 (_ BitVec 64)) Bool)

(declare-fun +!2868 (ListLongMap!13165 tuple2!14454) ListLongMap!13165)

(assert (=> b!973306 (contains!5642 (+!2868 lt!432458 lt!432459) (select (arr!29131 _keys!1717) i!822))))

(declare-fun lt!432460 () V!34661)

(declare-datatypes ((Unit!32397 0))(
  ( (Unit!32398) )
))
(declare-fun lt!432456 () Unit!32397)

(declare-fun lt!432457 () (_ BitVec 64))

(declare-fun addStillContains!607 (ListLongMap!13165 (_ BitVec 64) V!34661 (_ BitVec 64)) Unit!32397)

(assert (=> b!973306 (= lt!432456 (addStillContains!607 lt!432458 lt!432457 lt!432460 (select (arr!29131 _keys!1717) i!822)))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun lt!432454 () ListLongMap!13165)

(declare-datatypes ((ValueCell!10648 0))(
  ( (ValueCellFull!10648 (v!13739 V!34661)) (EmptyCell!10648) )
))
(declare-datatypes ((array!60545 0))(
  ( (array!60546 (arr!29132 (Array (_ BitVec 32) ValueCell!10648)) (size!29612 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60545)

(declare-fun zeroValue!1367 () V!34661)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34661)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3783 (array!60543 array!60545 (_ BitVec 32) (_ BitVec 32) V!34661 V!34661 (_ BitVec 32) Int) ListLongMap!13165)

(assert (=> b!973306 (= lt!432454 (+!2868 (getCurrentListMap!3783 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) lt!432459))))

(assert (=> b!973306 (= lt!432459 (tuple2!14455 lt!432457 lt!432460))))

(declare-fun get!15123 (ValueCell!10648 V!34661) V!34661)

(declare-fun dynLambda!1707 (Int (_ BitVec 64)) V!34661)

(assert (=> b!973306 (= lt!432460 (get!15123 (select (arr!29132 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1707 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!432455 () Unit!32397)

(declare-fun lemmaListMapRecursiveValidKeyArray!279 (array!60543 array!60545 (_ BitVec 32) (_ BitVec 32) V!34661 V!34661 (_ BitVec 32) Int) Unit!32397)

(assert (=> b!973306 (= lt!432455 (lemmaListMapRecursiveValidKeyArray!279 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!973308 () Bool)

(declare-fun e!548649 () Bool)

(declare-fun tp_is_empty!22259 () Bool)

(assert (=> b!973308 (= e!548649 tp_is_empty!22259)))

(declare-fun b!973309 () Bool)

(declare-fun e!548652 () Bool)

(declare-fun mapRes!35398 () Bool)

(assert (=> b!973309 (= e!548652 (and e!548649 mapRes!35398))))

(declare-fun condMapEmpty!35398 () Bool)

(declare-fun mapDefault!35398 () ValueCell!10648)

