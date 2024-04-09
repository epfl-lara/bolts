; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83392 () Bool)

(assert start!83392)

(declare-fun b_free!19357 () Bool)

(declare-fun b_next!19357 () Bool)

(assert (=> start!83392 (= b_free!19357 (not b_next!19357))))

(declare-fun tp!67350 () Bool)

(declare-fun b_and!30953 () Bool)

(assert (=> start!83392 (= tp!67350 b_and!30953)))

(declare-fun b!973236 () Bool)

(declare-fun e!548608 () Bool)

(declare-fun e!548607 () Bool)

(assert (=> b!973236 (= e!548608 e!548607)))

(declare-fun res!651575 () Bool)

(assert (=> b!973236 (=> (not res!651575) (not e!548607))))

(declare-datatypes ((array!60535 0))(
  ( (array!60536 (arr!29127 (Array (_ BitVec 32) (_ BitVec 64))) (size!29607 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60535)

(declare-datatypes ((V!34657 0))(
  ( (V!34658 (val!11178 Int)) )
))
(declare-datatypes ((tuple2!14450 0))(
  ( (tuple2!14451 (_1!7235 (_ BitVec 64)) (_2!7235 V!34657)) )
))
(declare-datatypes ((List!20331 0))(
  ( (Nil!20328) (Cons!20327 (h!21489 tuple2!14450) (t!28794 List!20331)) )
))
(declare-datatypes ((ListLongMap!13161 0))(
  ( (ListLongMap!13162 (toList!6596 List!20331)) )
))
(declare-fun lt!432414 () ListLongMap!13161)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun contains!5640 (ListLongMap!13161 (_ BitVec 64)) Bool)

(assert (=> b!973236 (= res!651575 (contains!5640 lt!432414 (select (arr!29127 _keys!1717) i!822)))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((ValueCell!10646 0))(
  ( (ValueCellFull!10646 (v!13737 V!34657)) (EmptyCell!10646) )
))
(declare-datatypes ((array!60537 0))(
  ( (array!60538 (arr!29128 (Array (_ BitVec 32) ValueCell!10646)) (size!29608 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60537)

(declare-fun zeroValue!1367 () V!34657)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34657)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3781 (array!60535 array!60537 (_ BitVec 32) (_ BitVec 32) V!34657 V!34657 (_ BitVec 32) Int) ListLongMap!13161)

(assert (=> b!973236 (= lt!432414 (getCurrentListMap!3781 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))))

(declare-fun mapNonEmpty!35392 () Bool)

(declare-fun mapRes!35392 () Bool)

(declare-fun tp!67351 () Bool)

(declare-fun e!548613 () Bool)

(assert (=> mapNonEmpty!35392 (= mapRes!35392 (and tp!67351 e!548613))))

(declare-fun mapKey!35392 () (_ BitVec 32))

(declare-fun mapValue!35392 () ValueCell!10646)

(declare-fun mapRest!35392 () (Array (_ BitVec 32) ValueCell!10646))

(assert (=> mapNonEmpty!35392 (= (arr!29128 _values!1425) (store mapRest!35392 mapKey!35392 mapValue!35392))))

(declare-fun b!973237 () Bool)

(declare-fun e!548610 () Bool)

(assert (=> b!973237 (= e!548607 e!548610)))

(declare-fun res!651573 () Bool)

(assert (=> b!973237 (=> (not res!651573) (not e!548610))))

(declare-fun lt!432417 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!973237 (= res!651573 (validKeyInArray!0 lt!432417))))

(assert (=> b!973237 (= lt!432417 (select (arr!29127 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(declare-fun lt!432416 () ListLongMap!13161)

(assert (=> b!973237 (= lt!432416 (getCurrentListMap!3781 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!973238 () Bool)

(declare-fun res!651571 () Bool)

(assert (=> b!973238 (=> (not res!651571) (not e!548608))))

(declare-datatypes ((List!20332 0))(
  ( (Nil!20329) (Cons!20328 (h!21490 (_ BitVec 64)) (t!28795 List!20332)) )
))
(declare-fun arrayNoDuplicates!0 (array!60535 (_ BitVec 32) List!20332) Bool)

(assert (=> b!973238 (= res!651571 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20329))))

(declare-fun b!973239 () Bool)

(declare-fun res!651576 () Bool)

(assert (=> b!973239 (=> (not res!651576) (not e!548608))))

(assert (=> b!973239 (= res!651576 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29607 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29607 _keys!1717))))))

(declare-fun b!973240 () Bool)

(assert (=> b!973240 (= e!548610 (not true))))

(declare-fun lt!432415 () tuple2!14450)

(declare-fun +!2866 (ListLongMap!13161 tuple2!14450) ListLongMap!13161)

(assert (=> b!973240 (contains!5640 (+!2866 lt!432414 lt!432415) (select (arr!29127 _keys!1717) i!822))))

(declare-datatypes ((Unit!32393 0))(
  ( (Unit!32394) )
))
(declare-fun lt!432412 () Unit!32393)

(declare-fun lt!432418 () V!34657)

(declare-fun addStillContains!605 (ListLongMap!13161 (_ BitVec 64) V!34657 (_ BitVec 64)) Unit!32393)

(assert (=> b!973240 (= lt!432412 (addStillContains!605 lt!432414 lt!432417 lt!432418 (select (arr!29127 _keys!1717) i!822)))))

(assert (=> b!973240 (= lt!432416 (+!2866 (getCurrentListMap!3781 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) lt!432415))))

(assert (=> b!973240 (= lt!432415 (tuple2!14451 lt!432417 lt!432418))))

(declare-fun get!15121 (ValueCell!10646 V!34657) V!34657)

(declare-fun dynLambda!1705 (Int (_ BitVec 64)) V!34657)

(assert (=> b!973240 (= lt!432418 (get!15121 (select (arr!29128 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1705 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!432413 () Unit!32393)

(declare-fun lemmaListMapRecursiveValidKeyArray!277 (array!60535 array!60537 (_ BitVec 32) (_ BitVec 32) V!34657 V!34657 (_ BitVec 32) Int) Unit!32393)

(assert (=> b!973240 (= lt!432413 (lemmaListMapRecursiveValidKeyArray!277 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun res!651572 () Bool)

(assert (=> start!83392 (=> (not res!651572) (not e!548608))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83392 (= res!651572 (validMask!0 mask!2147))))

(assert (=> start!83392 e!548608))

(assert (=> start!83392 true))

(declare-fun e!548612 () Bool)

(declare-fun array_inv!22429 (array!60537) Bool)

(assert (=> start!83392 (and (array_inv!22429 _values!1425) e!548612)))

(declare-fun tp_is_empty!22255 () Bool)

(assert (=> start!83392 tp_is_empty!22255))

(assert (=> start!83392 tp!67350))

(declare-fun array_inv!22430 (array!60535) Bool)

(assert (=> start!83392 (array_inv!22430 _keys!1717)))

(declare-fun b!973241 () Bool)

(declare-fun res!651577 () Bool)

(assert (=> b!973241 (=> (not res!651577) (not e!548608))))

(assert (=> b!973241 (= res!651577 (validKeyInArray!0 (select (arr!29127 _keys!1717) i!822)))))

(declare-fun b!973242 () Bool)

(declare-fun res!651574 () Bool)

(assert (=> b!973242 (=> (not res!651574) (not e!548608))))

(assert (=> b!973242 (= res!651574 (and (= (size!29608 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29607 _keys!1717) (size!29608 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!973243 () Bool)

(assert (=> b!973243 (= e!548613 tp_is_empty!22255)))

(declare-fun b!973244 () Bool)

(declare-fun e!548609 () Bool)

(assert (=> b!973244 (= e!548612 (and e!548609 mapRes!35392))))

(declare-fun condMapEmpty!35392 () Bool)

(declare-fun mapDefault!35392 () ValueCell!10646)

