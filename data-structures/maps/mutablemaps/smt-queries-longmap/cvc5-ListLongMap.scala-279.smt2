; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4518 () Bool)

(assert start!4518)

(declare-fun b_free!1261 () Bool)

(declare-fun b_next!1261 () Bool)

(assert (=> start!4518 (= b_free!1261 (not b_next!1261))))

(declare-fun tp!5224 () Bool)

(declare-fun b_and!2087 () Bool)

(assert (=> start!4518 (= tp!5224 b_and!2087)))

(declare-fun b!35295 () Bool)

(declare-fun e!22302 () Bool)

(declare-datatypes ((array!2437 0))(
  ( (array!2438 (arr!1165 (Array (_ BitVec 32) (_ BitVec 64))) (size!1266 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2437)

(declare-datatypes ((SeekEntryResult!167 0))(
  ( (MissingZero!167 (index!2790 (_ BitVec 32))) (Found!167 (index!2791 (_ BitVec 32))) (Intermediate!167 (undefined!979 Bool) (index!2792 (_ BitVec 32)) (x!7011 (_ BitVec 32))) (Undefined!167) (MissingVacant!167 (index!2793 (_ BitVec 32))) )
))
(declare-fun lt!12958 () SeekEntryResult!167)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!35295 (= e!22302 (not (validKeyInArray!0 (select (arr!1165 _keys!1833) (index!2791 lt!12958)))))))

(declare-fun mapNonEmpty!1972 () Bool)

(declare-fun mapRes!1972 () Bool)

(declare-fun tp!5223 () Bool)

(declare-fun e!22297 () Bool)

(assert (=> mapNonEmpty!1972 (= mapRes!1972 (and tp!5223 e!22297))))

(declare-datatypes ((V!1979 0))(
  ( (V!1980 (val!834 Int)) )
))
(declare-datatypes ((ValueCell!608 0))(
  ( (ValueCellFull!608 (v!1930 V!1979)) (EmptyCell!608) )
))
(declare-datatypes ((array!2439 0))(
  ( (array!2440 (arr!1166 (Array (_ BitVec 32) ValueCell!608)) (size!1267 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2439)

(declare-fun mapValue!1972 () ValueCell!608)

(declare-fun mapRest!1972 () (Array (_ BitVec 32) ValueCell!608))

(declare-fun mapKey!1972 () (_ BitVec 32))

(assert (=> mapNonEmpty!1972 (= (arr!1166 _values!1501) (store mapRest!1972 mapKey!1972 mapValue!1972))))

(declare-fun b!35297 () Bool)

(declare-fun res!21428 () Bool)

(declare-fun e!22298 () Bool)

(assert (=> b!35297 (=> (not res!21428) (not e!22298))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1979)

(declare-fun minValue!1443 () V!1979)

(declare-datatypes ((tuple2!1336 0))(
  ( (tuple2!1337 (_1!678 (_ BitVec 64)) (_2!678 V!1979)) )
))
(declare-datatypes ((List!945 0))(
  ( (Nil!942) (Cons!941 (h!1508 tuple2!1336) (t!3654 List!945)) )
))
(declare-datatypes ((ListLongMap!917 0))(
  ( (ListLongMap!918 (toList!474 List!945)) )
))
(declare-fun contains!418 (ListLongMap!917 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!295 (array!2437 array!2439 (_ BitVec 32) (_ BitVec 32) V!1979 V!1979 (_ BitVec 32) Int) ListLongMap!917)

(assert (=> b!35297 (= res!21428 (not (contains!418 (getCurrentListMap!295 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!35298 () Bool)

(declare-fun res!21433 () Bool)

(assert (=> b!35298 (=> (not res!21433) (not e!22298))))

(declare-fun arrayContainsKey!0 (array!2437 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!35298 (= res!21433 (not (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000)))))

(declare-fun b!35299 () Bool)

(assert (=> b!35299 (= e!22298 e!22302)))

(declare-fun res!21430 () Bool)

(assert (=> b!35299 (=> (not res!21430) (not e!22302))))

(assert (=> b!35299 (= res!21430 (and (is-Found!167 lt!12958) (bvsge (index!2791 lt!12958) #b00000000000000000000000000000000) (bvslt (index!2791 lt!12958) (size!1266 _keys!1833))))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2437 (_ BitVec 32)) SeekEntryResult!167)

(assert (=> b!35299 (= lt!12958 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!35300 () Bool)

(declare-fun res!21426 () Bool)

(assert (=> b!35300 (=> (not res!21426) (not e!22298))))

(assert (=> b!35300 (= res!21426 (validKeyInArray!0 k!1304))))

(declare-fun b!35301 () Bool)

(declare-fun res!21431 () Bool)

(assert (=> b!35301 (=> (not res!21431) (not e!22298))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2437 (_ BitVec 32)) Bool)

(assert (=> b!35301 (= res!21431 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapIsEmpty!1972 () Bool)

(assert (=> mapIsEmpty!1972 mapRes!1972))

(declare-fun b!35302 () Bool)

(declare-fun tp_is_empty!1615 () Bool)

(assert (=> b!35302 (= e!22297 tp_is_empty!1615)))

(declare-fun b!35303 () Bool)

(declare-fun res!21427 () Bool)

(assert (=> b!35303 (=> (not res!21427) (not e!22298))))

(assert (=> b!35303 (= res!21427 (and (= (size!1267 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1266 _keys!1833) (size!1267 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!35296 () Bool)

(declare-fun e!22301 () Bool)

(declare-fun e!22300 () Bool)

(assert (=> b!35296 (= e!22301 (and e!22300 mapRes!1972))))

(declare-fun condMapEmpty!1972 () Bool)

(declare-fun mapDefault!1972 () ValueCell!608)

