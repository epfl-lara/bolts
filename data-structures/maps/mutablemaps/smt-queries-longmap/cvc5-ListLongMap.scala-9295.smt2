; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111154 () Bool)

(assert start!111154)

(declare-fun b_free!29953 () Bool)

(declare-fun b_next!29953 () Bool)

(assert (=> start!111154 (= b_free!29953 (not b_next!29953))))

(declare-fun tp!105182 () Bool)

(declare-fun b_and!48171 () Bool)

(assert (=> start!111154 (= tp!105182 b_and!48171)))

(declare-fun b!1315545 () Bool)

(declare-fun res!873424 () Bool)

(declare-fun e!750483 () Bool)

(assert (=> b!1315545 (=> (not res!873424) (not e!750483))))

(declare-datatypes ((array!88289 0))(
  ( (array!88290 (arr!42620 (Array (_ BitVec 32) (_ BitVec 64))) (size!43171 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88289)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88289 (_ BitVec 32)) Bool)

(assert (=> b!1315545 (= res!873424 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapNonEmpty!55153 () Bool)

(declare-fun mapRes!55153 () Bool)

(declare-fun tp!105181 () Bool)

(declare-fun e!750485 () Bool)

(assert (=> mapNonEmpty!55153 (= mapRes!55153 (and tp!105181 e!750485))))

(declare-datatypes ((V!52681 0))(
  ( (V!52682 (val!17916 Int)) )
))
(declare-datatypes ((ValueCell!16943 0))(
  ( (ValueCellFull!16943 (v!20541 V!52681)) (EmptyCell!16943) )
))
(declare-fun mapRest!55153 () (Array (_ BitVec 32) ValueCell!16943))

(declare-fun mapKey!55153 () (_ BitVec 32))

(declare-fun mapValue!55153 () ValueCell!16943)

(declare-datatypes ((array!88291 0))(
  ( (array!88292 (arr!42621 (Array (_ BitVec 32) ValueCell!16943)) (size!43172 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88291)

(assert (=> mapNonEmpty!55153 (= (arr!42621 _values!1354) (store mapRest!55153 mapKey!55153 mapValue!55153))))

(declare-fun b!1315546 () Bool)

(declare-fun e!750482 () Bool)

(declare-fun e!750481 () Bool)

(assert (=> b!1315546 (= e!750482 (and e!750481 mapRes!55153))))

(declare-fun condMapEmpty!55153 () Bool)

(declare-fun mapDefault!55153 () ValueCell!16943)

