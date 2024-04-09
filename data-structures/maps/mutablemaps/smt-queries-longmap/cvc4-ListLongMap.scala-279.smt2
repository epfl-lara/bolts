; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4522 () Bool)

(assert start!4522)

(declare-fun b_free!1265 () Bool)

(declare-fun b_next!1265 () Bool)

(assert (=> start!4522 (= b_free!1265 (not b_next!1265))))

(declare-fun tp!5236 () Bool)

(declare-fun b_and!2091 () Bool)

(assert (=> start!4522 (= tp!5236 b_and!2091)))

(declare-fun b!35361 () Bool)

(declare-fun e!22338 () Bool)

(declare-fun tp_is_empty!1619 () Bool)

(assert (=> b!35361 (= e!22338 tp_is_empty!1619)))

(declare-fun b!35362 () Bool)

(declare-fun e!22333 () Bool)

(assert (=> b!35362 (= e!22333 tp_is_empty!1619)))

(declare-fun b!35363 () Bool)

(declare-fun res!21481 () Bool)

(declare-fun e!22336 () Bool)

(assert (=> b!35363 (=> (not res!21481) (not e!22336))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!35363 (= res!21481 (validKeyInArray!0 k!1304))))

(declare-fun b!35364 () Bool)

(declare-fun e!22335 () Bool)

(declare-datatypes ((array!2445 0))(
  ( (array!2446 (arr!1169 (Array (_ BitVec 32) (_ BitVec 64))) (size!1270 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2445)

(declare-datatypes ((SeekEntryResult!169 0))(
  ( (MissingZero!169 (index!2798 (_ BitVec 32))) (Found!169 (index!2799 (_ BitVec 32))) (Intermediate!169 (undefined!981 Bool) (index!2800 (_ BitVec 32)) (x!7013 (_ BitVec 32))) (Undefined!169) (MissingVacant!169 (index!2801 (_ BitVec 32))) )
))
(declare-fun lt!12964 () SeekEntryResult!169)

(assert (=> b!35364 (= e!22335 (not (validKeyInArray!0 (select (arr!1169 _keys!1833) (index!2799 lt!12964)))))))

(declare-fun b!35365 () Bool)

(declare-fun res!21480 () Bool)

(assert (=> b!35365 (=> (not res!21480) (not e!22336))))

(declare-datatypes ((List!948 0))(
  ( (Nil!945) (Cons!944 (h!1511 (_ BitVec 64)) (t!3657 List!948)) )
))
(declare-fun arrayNoDuplicates!0 (array!2445 (_ BitVec 32) List!948) Bool)

(assert (=> b!35365 (= res!21480 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!945))))

(declare-fun mapIsEmpty!1978 () Bool)

(declare-fun mapRes!1978 () Bool)

(assert (=> mapIsEmpty!1978 mapRes!1978))

(declare-fun b!35366 () Bool)

(declare-fun res!21479 () Bool)

(assert (=> b!35366 (=> (not res!21479) (not e!22336))))

(declare-datatypes ((V!1983 0))(
  ( (V!1984 (val!836 Int)) )
))
(declare-datatypes ((ValueCell!610 0))(
  ( (ValueCellFull!610 (v!1932 V!1983)) (EmptyCell!610) )
))
(declare-datatypes ((array!2447 0))(
  ( (array!2448 (arr!1170 (Array (_ BitVec 32) ValueCell!610)) (size!1271 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2447)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!35366 (= res!21479 (and (= (size!1271 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1270 _keys!1833) (size!1271 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!35367 () Bool)

(assert (=> b!35367 (= e!22336 e!22335)))

(declare-fun res!21474 () Bool)

(assert (=> b!35367 (=> (not res!21474) (not e!22335))))

(assert (=> b!35367 (= res!21474 (and (is-Found!169 lt!12964) (bvsge (index!2799 lt!12964) #b00000000000000000000000000000000) (bvslt (index!2799 lt!12964) (size!1270 _keys!1833))))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2445 (_ BitVec 32)) SeekEntryResult!169)

(assert (=> b!35367 (= lt!12964 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!35368 () Bool)

(declare-fun res!21475 () Bool)

(assert (=> b!35368 (=> (not res!21475) (not e!22336))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1983)

(declare-fun minValue!1443 () V!1983)

(declare-datatypes ((tuple2!1340 0))(
  ( (tuple2!1341 (_1!680 (_ BitVec 64)) (_2!680 V!1983)) )
))
(declare-datatypes ((List!949 0))(
  ( (Nil!946) (Cons!945 (h!1512 tuple2!1340) (t!3658 List!949)) )
))
(declare-datatypes ((ListLongMap!921 0))(
  ( (ListLongMap!922 (toList!476 List!949)) )
))
(declare-fun contains!420 (ListLongMap!921 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!297 (array!2445 array!2447 (_ BitVec 32) (_ BitVec 32) V!1983 V!1983 (_ BitVec 32) Int) ListLongMap!921)

(assert (=> b!35368 (= res!21475 (not (contains!420 (getCurrentListMap!297 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!35369 () Bool)

(declare-fun res!21477 () Bool)

(assert (=> b!35369 (=> (not res!21477) (not e!22336))))

(declare-fun arrayContainsKey!0 (array!2445 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!35369 (= res!21477 (not (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000)))))

(declare-fun b!35370 () Bool)

(declare-fun e!22334 () Bool)

(assert (=> b!35370 (= e!22334 (and e!22338 mapRes!1978))))

(declare-fun condMapEmpty!1978 () Bool)

(declare-fun mapDefault!1978 () ValueCell!610)

