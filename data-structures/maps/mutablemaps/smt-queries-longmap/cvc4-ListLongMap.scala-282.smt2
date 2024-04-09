; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4582 () Bool)

(assert start!4582)

(declare-fun b_free!1283 () Bool)

(declare-fun b_next!1283 () Bool)

(assert (=> start!4582 (= b_free!1283 (not b_next!1283))))

(declare-fun tp!5295 () Bool)

(declare-fun b_and!2113 () Bool)

(assert (=> start!4582 (= tp!5295 b_and!2113)))

(declare-fun mapIsEmpty!2011 () Bool)

(declare-fun mapRes!2011 () Bool)

(assert (=> mapIsEmpty!2011 mapRes!2011))

(declare-fun b!35922 () Bool)

(declare-fun res!21790 () Bool)

(declare-fun e!22686 () Bool)

(assert (=> b!35922 (=> (not res!21790) (not e!22686))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!2007 0))(
  ( (V!2008 (val!845 Int)) )
))
(declare-datatypes ((ValueCell!619 0))(
  ( (ValueCellFull!619 (v!1943 V!2007)) (EmptyCell!619) )
))
(declare-datatypes ((array!2485 0))(
  ( (array!2486 (arr!1187 (Array (_ BitVec 32) ValueCell!619)) (size!1288 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2485)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!2487 0))(
  ( (array!2488 (arr!1188 (Array (_ BitVec 32) (_ BitVec 64))) (size!1289 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2487)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!2007)

(declare-fun minValue!1443 () V!2007)

(declare-datatypes ((tuple2!1356 0))(
  ( (tuple2!1357 (_1!688 (_ BitVec 64)) (_2!688 V!2007)) )
))
(declare-datatypes ((List!963 0))(
  ( (Nil!960) (Cons!959 (h!1526 tuple2!1356) (t!3676 List!963)) )
))
(declare-datatypes ((ListLongMap!937 0))(
  ( (ListLongMap!938 (toList!484 List!963)) )
))
(declare-fun contains!430 (ListLongMap!937 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!305 (array!2487 array!2485 (_ BitVec 32) (_ BitVec 32) V!2007 V!2007 (_ BitVec 32) Int) ListLongMap!937)

(assert (=> b!35922 (= res!21790 (not (contains!430 (getCurrentListMap!305 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!35923 () Bool)

(declare-fun res!21793 () Bool)

(assert (=> b!35923 (=> (not res!21793) (not e!22686))))

(declare-datatypes ((List!964 0))(
  ( (Nil!961) (Cons!960 (h!1527 (_ BitVec 64)) (t!3677 List!964)) )
))
(declare-fun arrayNoDuplicates!0 (array!2487 (_ BitVec 32) List!964) Bool)

(assert (=> b!35923 (= res!21793 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!961))))

(declare-fun b!35924 () Bool)

(declare-datatypes ((SeekEntryResult!176 0))(
  ( (MissingZero!176 (index!2826 (_ BitVec 32))) (Found!176 (index!2827 (_ BitVec 32))) (Intermediate!176 (undefined!988 Bool) (index!2828 (_ BitVec 32)) (x!7064 (_ BitVec 32))) (Undefined!176) (MissingVacant!176 (index!2829 (_ BitVec 32))) )
))
(declare-fun lt!13232 () SeekEntryResult!176)

(assert (=> b!35924 (= e!22686 (and (not (is-Found!176 lt!13232)) (not (is-MissingZero!176 lt!13232)) (not (is-Undefined!176 lt!13232))))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2487 (_ BitVec 32)) SeekEntryResult!176)

(assert (=> b!35924 (= lt!13232 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!35925 () Bool)

(declare-fun e!22688 () Bool)

(declare-fun e!22687 () Bool)

(assert (=> b!35925 (= e!22688 (and e!22687 mapRes!2011))))

(declare-fun condMapEmpty!2011 () Bool)

(declare-fun mapDefault!2011 () ValueCell!619)

