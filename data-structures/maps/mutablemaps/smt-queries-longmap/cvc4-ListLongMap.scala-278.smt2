; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4496 () Bool)

(assert start!4496)

(declare-fun b_free!1259 () Bool)

(declare-fun b_next!1259 () Bool)

(assert (=> start!4496 (= b_free!1259 (not b_next!1259))))

(declare-fun tp!5214 () Bool)

(declare-fun b_and!2083 () Bool)

(assert (=> start!4496 (= tp!5214 b_and!2083)))

(declare-fun res!21355 () Bool)

(declare-fun e!22195 () Bool)

(assert (=> start!4496 (=> (not res!21355) (not e!22195))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4496 (= res!21355 (validMask!0 mask!2294))))

(assert (=> start!4496 e!22195))

(assert (=> start!4496 true))

(assert (=> start!4496 tp!5214))

(declare-datatypes ((V!1975 0))(
  ( (V!1976 (val!833 Int)) )
))
(declare-datatypes ((ValueCell!607 0))(
  ( (ValueCellFull!607 (v!1928 V!1975)) (EmptyCell!607) )
))
(declare-datatypes ((array!2431 0))(
  ( (array!2432 (arr!1163 (Array (_ BitVec 32) ValueCell!607)) (size!1264 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2431)

(declare-fun e!22196 () Bool)

(declare-fun array_inv!771 (array!2431) Bool)

(assert (=> start!4496 (and (array_inv!771 _values!1501) e!22196)))

(declare-datatypes ((array!2433 0))(
  ( (array!2434 (arr!1164 (Array (_ BitVec 32) (_ BitVec 64))) (size!1265 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2433)

(declare-fun array_inv!772 (array!2433) Bool)

(assert (=> start!4496 (array_inv!772 _keys!1833)))

(declare-fun tp_is_empty!1613 () Bool)

(assert (=> start!4496 tp_is_empty!1613))

(declare-fun b!35130 () Bool)

(declare-datatypes ((SeekEntryResult!166 0))(
  ( (MissingZero!166 (index!2786 (_ BitVec 32))) (Found!166 (index!2787 (_ BitVec 32))) (Intermediate!166 (undefined!978 Bool) (index!2788 (_ BitVec 32)) (x!6992 (_ BitVec 32))) (Undefined!166) (MissingVacant!166 (index!2789 (_ BitVec 32))) )
))
(declare-fun lt!12856 () SeekEntryResult!166)

(assert (=> b!35130 (= e!22195 (and (is-Found!166 lt!12856) (or (bvslt (index!2787 lt!12856) #b00000000000000000000000000000000) (bvsge (index!2787 lt!12856) (size!1265 _keys!1833)))))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2433 (_ BitVec 32)) SeekEntryResult!166)

(assert (=> b!35130 (= lt!12856 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!35131 () Bool)

(declare-fun res!21352 () Bool)

(assert (=> b!35131 (=> (not res!21352) (not e!22195))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!35131 (= res!21352 (and (= (size!1264 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1265 _keys!1833) (size!1264 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!1966 () Bool)

(declare-fun mapRes!1966 () Bool)

(declare-fun tp!5215 () Bool)

(declare-fun e!22194 () Bool)

(assert (=> mapNonEmpty!1966 (= mapRes!1966 (and tp!5215 e!22194))))

(declare-fun mapKey!1966 () (_ BitVec 32))

(declare-fun mapRest!1966 () (Array (_ BitVec 32) ValueCell!607))

(declare-fun mapValue!1966 () ValueCell!607)

(assert (=> mapNonEmpty!1966 (= (arr!1163 _values!1501) (store mapRest!1966 mapKey!1966 mapValue!1966))))

(declare-fun b!35132 () Bool)

(declare-fun res!21354 () Bool)

(assert (=> b!35132 (=> (not res!21354) (not e!22195))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!35132 (= res!21354 (validKeyInArray!0 k!1304))))

(declare-fun b!35133 () Bool)

(assert (=> b!35133 (= e!22194 tp_is_empty!1613)))

(declare-fun mapIsEmpty!1966 () Bool)

(assert (=> mapIsEmpty!1966 mapRes!1966))

(declare-fun b!35134 () Bool)

(declare-fun res!21356 () Bool)

(assert (=> b!35134 (=> (not res!21356) (not e!22195))))

(declare-datatypes ((List!943 0))(
  ( (Nil!940) (Cons!939 (h!1506 (_ BitVec 64)) (t!3650 List!943)) )
))
(declare-fun arrayNoDuplicates!0 (array!2433 (_ BitVec 32) List!943) Bool)

(assert (=> b!35134 (= res!21356 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!940))))

(declare-fun b!35135 () Bool)

(declare-fun res!21358 () Bool)

(assert (=> b!35135 (=> (not res!21358) (not e!22195))))

(declare-fun arrayContainsKey!0 (array!2433 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!35135 (= res!21358 (not (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000)))))

(declare-fun b!35136 () Bool)

(declare-fun res!21353 () Bool)

(assert (=> b!35136 (=> (not res!21353) (not e!22195))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1975)

(declare-fun minValue!1443 () V!1975)

(declare-datatypes ((tuple2!1334 0))(
  ( (tuple2!1335 (_1!677 (_ BitVec 64)) (_2!677 V!1975)) )
))
(declare-datatypes ((List!944 0))(
  ( (Nil!941) (Cons!940 (h!1507 tuple2!1334) (t!3651 List!944)) )
))
(declare-datatypes ((ListLongMap!915 0))(
  ( (ListLongMap!916 (toList!473 List!944)) )
))
(declare-fun contains!416 (ListLongMap!915 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!294 (array!2433 array!2431 (_ BitVec 32) (_ BitVec 32) V!1975 V!1975 (_ BitVec 32) Int) ListLongMap!915)

(assert (=> b!35136 (= res!21353 (not (contains!416 (getCurrentListMap!294 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!35137 () Bool)

(declare-fun res!21357 () Bool)

(assert (=> b!35137 (=> (not res!21357) (not e!22195))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2433 (_ BitVec 32)) Bool)

(assert (=> b!35137 (= res!21357 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!35138 () Bool)

(declare-fun e!22193 () Bool)

(assert (=> b!35138 (= e!22193 tp_is_empty!1613)))

(declare-fun b!35139 () Bool)

(assert (=> b!35139 (= e!22196 (and e!22193 mapRes!1966))))

(declare-fun condMapEmpty!1966 () Bool)

(declare-fun mapDefault!1966 () ValueCell!607)

