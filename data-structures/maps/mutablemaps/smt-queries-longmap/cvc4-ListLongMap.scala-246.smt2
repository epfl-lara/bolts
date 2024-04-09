; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4160 () Bool)

(assert start!4160)

(declare-fun b_free!1067 () Bool)

(declare-fun b_next!1067 () Bool)

(assert (=> start!4160 (= b_free!1067 (not b_next!1067))))

(declare-fun tp!4621 () Bool)

(declare-fun b_and!1879 () Bool)

(assert (=> start!4160 (= tp!4621 b_and!1879)))

(declare-fun b!31426 () Bool)

(declare-fun res!19014 () Bool)

(declare-fun e!20086 () Bool)

(assert (=> b!31426 (=> (not res!19014) (not e!20086))))

(declare-datatypes ((array!2049 0))(
  ( (array!2050 (arr!978 (Array (_ BitVec 32) (_ BitVec 64))) (size!1079 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2049)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2049 (_ BitVec 32)) Bool)

(assert (=> b!31426 (= res!19014 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!31427 () Bool)

(declare-fun res!19017 () Bool)

(assert (=> b!31427 (=> (not res!19017) (not e!20086))))

(declare-datatypes ((List!803 0))(
  ( (Nil!800) (Cons!799 (h!1366 (_ BitVec 64)) (t!3498 List!803)) )
))
(declare-fun arrayNoDuplicates!0 (array!2049 (_ BitVec 32) List!803) Bool)

(assert (=> b!31427 (= res!19017 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!800))))

(declare-fun res!19018 () Bool)

(assert (=> start!4160 (=> (not res!19018) (not e!20086))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4160 (= res!19018 (validMask!0 mask!2294))))

(assert (=> start!4160 e!20086))

(assert (=> start!4160 true))

(assert (=> start!4160 tp!4621))

(declare-datatypes ((V!1719 0))(
  ( (V!1720 (val!737 Int)) )
))
(declare-datatypes ((ValueCell!511 0))(
  ( (ValueCellFull!511 (v!1826 V!1719)) (EmptyCell!511) )
))
(declare-datatypes ((array!2051 0))(
  ( (array!2052 (arr!979 (Array (_ BitVec 32) ValueCell!511)) (size!1080 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2051)

(declare-fun e!20084 () Bool)

(declare-fun array_inv!655 (array!2051) Bool)

(assert (=> start!4160 (and (array_inv!655 _values!1501) e!20084)))

(declare-fun array_inv!656 (array!2049) Bool)

(assert (=> start!4160 (array_inv!656 _keys!1833)))

(declare-fun tp_is_empty!1421 () Bool)

(assert (=> start!4160 tp_is_empty!1421))

(declare-fun mapNonEmpty!1660 () Bool)

(declare-fun mapRes!1660 () Bool)

(declare-fun tp!4620 () Bool)

(declare-fun e!20085 () Bool)

(assert (=> mapNonEmpty!1660 (= mapRes!1660 (and tp!4620 e!20085))))

(declare-fun mapValue!1660 () ValueCell!511)

(declare-fun mapKey!1660 () (_ BitVec 32))

(declare-fun mapRest!1660 () (Array (_ BitVec 32) ValueCell!511))

(assert (=> mapNonEmpty!1660 (= (arr!979 _values!1501) (store mapRest!1660 mapKey!1660 mapValue!1660))))

(declare-fun b!31428 () Bool)

(declare-fun res!19016 () Bool)

(assert (=> b!31428 (=> (not res!19016) (not e!20086))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!31428 (= res!19016 (validKeyInArray!0 k!1304))))

(declare-fun mapIsEmpty!1660 () Bool)

(assert (=> mapIsEmpty!1660 mapRes!1660))

(declare-fun b!31429 () Bool)

(declare-fun res!19015 () Bool)

(assert (=> b!31429 (=> (not res!19015) (not e!20086))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!31429 (= res!19015 (and (= (size!1080 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1079 _keys!1833) (size!1080 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!31430 () Bool)

(declare-fun e!20083 () Bool)

(assert (=> b!31430 (= e!20083 tp_is_empty!1421)))

(declare-fun b!31431 () Bool)

(assert (=> b!31431 (= e!20084 (and e!20083 mapRes!1660))))

(declare-fun condMapEmpty!1660 () Bool)

(declare-fun mapDefault!1660 () ValueCell!511)

