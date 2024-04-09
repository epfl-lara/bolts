; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!816 () Bool)

(assert start!816)

(declare-fun b_free!209 () Bool)

(declare-fun b_next!209 () Bool)

(assert (=> start!816 (= b_free!209 (not b_next!209))))

(declare-fun tp!857 () Bool)

(declare-fun b_and!355 () Bool)

(assert (=> start!816 (= tp!857 b_and!355)))

(declare-fun b!6236 () Bool)

(declare-fun e!3414 () Bool)

(declare-fun e!3415 () Bool)

(assert (=> b!6236 (= e!3414 e!3415)))

(declare-fun res!6700 () Bool)

(assert (=> b!6236 (=> res!6700 e!3415)))

(declare-datatypes ((array!507 0))(
  ( (array!508 (arr!242 (Array (_ BitVec 32) (_ BitVec 64))) (size!304 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!507)

(declare-fun mask!2250 () (_ BitVec 32))

(assert (=> b!6236 (= res!6700 (not (= (size!304 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250))))))

(declare-fun lt!1145 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!507 (_ BitVec 32)) Bool)

(assert (=> b!6236 (arrayForallSeekEntryOrOpenFound!0 lt!1145 _keys!1806 mask!2250)))

(declare-datatypes ((Unit!97 0))(
  ( (Unit!98) )
))
(declare-fun lt!1146 () Unit!97)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!507 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!97)

(assert (=> b!6236 (= lt!1146 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!1145))))

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!507 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!6236 (= lt!1145 (arrayScanForKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!6237 () Bool)

(declare-fun res!6696 () Bool)

(declare-fun e!3416 () Bool)

(assert (=> b!6237 (=> (not res!6696) (not e!3416))))

(declare-datatypes ((List!156 0))(
  ( (Nil!153) (Cons!152 (h!718 (_ BitVec 64)) (t!2291 List!156)) )
))
(declare-fun arrayNoDuplicates!0 (array!507 (_ BitVec 32) List!156) Bool)

(assert (=> b!6237 (= res!6696 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!153))))

(declare-fun b!6238 () Bool)

(declare-fun res!6698 () Bool)

(assert (=> b!6238 (=> (not res!6698) (not e!3416))))

(declare-fun defaultEntry!1495 () Int)

(declare-datatypes ((V!559 0))(
  ( (V!560 (val!149 Int)) )
))
(declare-datatypes ((ValueCell!127 0))(
  ( (ValueCellFull!127 (v!1240 V!559)) (EmptyCell!127) )
))
(declare-datatypes ((array!509 0))(
  ( (array!510 (arr!243 (Array (_ BitVec 32) ValueCell!127)) (size!305 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!509)

(declare-fun minValue!1434 () V!559)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!559)

(declare-datatypes ((tuple2!144 0))(
  ( (tuple2!145 (_1!72 (_ BitVec 64)) (_2!72 V!559)) )
))
(declare-datatypes ((List!157 0))(
  ( (Nil!154) (Cons!153 (h!719 tuple2!144) (t!2292 List!157)) )
))
(declare-datatypes ((ListLongMap!149 0))(
  ( (ListLongMap!150 (toList!90 List!157)) )
))
(declare-fun contains!64 (ListLongMap!149 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!49 (array!507 array!509 (_ BitVec 32) (_ BitVec 32) V!559 V!559 (_ BitVec 32) Int) ListLongMap!149)

(assert (=> b!6238 (= res!6698 (contains!64 (getCurrentListMap!49 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!6239 () Bool)

(declare-fun e!3419 () Bool)

(declare-fun e!3413 () Bool)

(declare-fun mapRes!401 () Bool)

(assert (=> b!6239 (= e!3419 (and e!3413 mapRes!401))))

(declare-fun condMapEmpty!401 () Bool)

(declare-fun mapDefault!401 () ValueCell!127)

