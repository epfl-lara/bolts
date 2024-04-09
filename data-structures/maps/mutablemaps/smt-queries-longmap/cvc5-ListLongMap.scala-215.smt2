; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3970 () Bool)

(assert start!3970)

(declare-fun b_free!877 () Bool)

(declare-fun b_next!877 () Bool)

(assert (=> start!3970 (= b_free!877 (not b_next!877))))

(declare-fun tp!4050 () Bool)

(declare-fun b_and!1689 () Bool)

(assert (=> start!3970 (= tp!4050 b_and!1689)))

(declare-fun b!28585 () Bool)

(declare-fun e!18483 () Bool)

(assert (=> b!28585 (= e!18483 true)))

(declare-fun k!1304 () (_ BitVec 64))

(declare-datatypes ((array!1687 0))(
  ( (array!1688 (arr!797 (Array (_ BitVec 32) (_ BitVec 64))) (size!898 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1687)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!75 0))(
  ( (MissingZero!75 (index!2422 (_ BitVec 32))) (Found!75 (index!2423 (_ BitVec 32))) (Intermediate!75 (undefined!887 Bool) (index!2424 (_ BitVec 32)) (x!6337 (_ BitVec 32))) (Undefined!75) (MissingVacant!75 (index!2425 (_ BitVec 32))) )
))
(declare-fun lt!10862 () SeekEntryResult!75)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1687 (_ BitVec 32)) SeekEntryResult!75)

(assert (=> b!28585 (= lt!10862 (seekEntryOrOpen!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!28586 () Bool)

(declare-fun e!18487 () Bool)

(declare-fun e!18486 () Bool)

(assert (=> b!28586 (= e!18487 e!18486)))

(declare-fun res!17033 () Bool)

(assert (=> b!28586 (=> (not res!17033) (not e!18486))))

(declare-datatypes ((V!1467 0))(
  ( (V!1468 (val!642 Int)) )
))
(declare-datatypes ((tuple2!1052 0))(
  ( (tuple2!1053 (_1!536 (_ BitVec 64)) (_2!536 V!1467)) )
))
(declare-datatypes ((List!666 0))(
  ( (Nil!663) (Cons!662 (h!1229 tuple2!1052) (t!3361 List!666)) )
))
(declare-datatypes ((ListLongMap!633 0))(
  ( (ListLongMap!634 (toList!332 List!666)) )
))
(declare-fun lt!10863 () ListLongMap!633)

(declare-fun contains!269 (ListLongMap!633 (_ BitVec 64)) Bool)

(assert (=> b!28586 (= res!17033 (not (contains!269 lt!10863 k!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((ValueCell!416 0))(
  ( (ValueCellFull!416 (v!1731 V!1467)) (EmptyCell!416) )
))
(declare-datatypes ((array!1689 0))(
  ( (array!1690 (arr!798 (Array (_ BitVec 32) ValueCell!416)) (size!899 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1689)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1467)

(declare-fun minValue!1443 () V!1467)

(declare-fun getCurrentListMap!159 (array!1687 array!1689 (_ BitVec 32) (_ BitVec 32) V!1467 V!1467 (_ BitVec 32) Int) ListLongMap!633)

(assert (=> b!28586 (= lt!10863 (getCurrentListMap!159 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun mapIsEmpty!1375 () Bool)

(declare-fun mapRes!1375 () Bool)

(assert (=> mapIsEmpty!1375 mapRes!1375))

(declare-fun b!28587 () Bool)

(declare-fun res!17032 () Bool)

(assert (=> b!28587 (=> (not res!17032) (not e!18487))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1687 (_ BitVec 32)) Bool)

(assert (=> b!28587 (= res!17032 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!28588 () Bool)

(declare-fun res!17031 () Bool)

(assert (=> b!28588 (=> (not res!17031) (not e!18486))))

(declare-fun arrayContainsKey!0 (array!1687 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!28588 (= res!17031 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!28589 () Bool)

(declare-fun e!18484 () Bool)

(declare-fun e!18481 () Bool)

(assert (=> b!28589 (= e!18484 (and e!18481 mapRes!1375))))

(declare-fun condMapEmpty!1375 () Bool)

(declare-fun mapDefault!1375 () ValueCell!416)

