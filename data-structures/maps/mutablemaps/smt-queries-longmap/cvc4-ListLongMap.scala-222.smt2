; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4016 () Bool)

(assert start!4016)

(declare-fun b_free!923 () Bool)

(declare-fun b_next!923 () Bool)

(assert (=> start!4016 (= b_free!923 (not b_next!923))))

(declare-fun tp!4189 () Bool)

(declare-fun b_and!1735 () Bool)

(assert (=> start!4016 (= tp!4189 b_and!1735)))

(declare-fun b!29300 () Bool)

(declare-fun res!17540 () Bool)

(declare-fun e!18924 () Bool)

(assert (=> b!29300 (=> (not res!17540) (not e!18924))))

(declare-datatypes ((V!1527 0))(
  ( (V!1528 (val!665 Int)) )
))
(declare-datatypes ((ValueCell!439 0))(
  ( (ValueCellFull!439 (v!1754 V!1527)) (EmptyCell!439) )
))
(declare-datatypes ((array!1775 0))(
  ( (array!1776 (arr!841 (Array (_ BitVec 32) ValueCell!439)) (size!942 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1775)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1777 0))(
  ( (array!1778 (arr!842 (Array (_ BitVec 32) (_ BitVec 64))) (size!943 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1777)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!29300 (= res!17540 (and (= (size!942 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!943 _keys!1833) (size!942 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!1444 () Bool)

(declare-fun mapRes!1444 () Bool)

(declare-fun tp!4188 () Bool)

(declare-fun e!18921 () Bool)

(assert (=> mapNonEmpty!1444 (= mapRes!1444 (and tp!4188 e!18921))))

(declare-fun mapRest!1444 () (Array (_ BitVec 32) ValueCell!439))

(declare-fun mapValue!1444 () ValueCell!439)

(declare-fun mapKey!1444 () (_ BitVec 32))

(assert (=> mapNonEmpty!1444 (= (arr!841 _values!1501) (store mapRest!1444 mapKey!1444 mapValue!1444))))

(declare-fun b!29301 () Bool)

(declare-fun e!18923 () Bool)

(assert (=> b!29301 (= e!18923 (not true))))

(declare-datatypes ((SeekEntryResult!89 0))(
  ( (MissingZero!89 (index!2478 (_ BitVec 32))) (Found!89 (index!2479 (_ BitVec 32))) (Intermediate!89 (undefined!901 Bool) (index!2480 (_ BitVec 32)) (x!6407 (_ BitVec 32))) (Undefined!89) (MissingVacant!89 (index!2481 (_ BitVec 32))) )
))
(declare-fun lt!11180 () SeekEntryResult!89)

(declare-fun lt!11182 () (_ BitVec 32))

(assert (=> b!29301 (and (is-Found!89 lt!11180) (= (index!2479 lt!11180) lt!11182))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!1777 (_ BitVec 32)) SeekEntryResult!89)

(assert (=> b!29301 (= lt!11180 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-datatypes ((Unit!679 0))(
  ( (Unit!680) )
))
(declare-fun lt!11181 () Unit!679)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!1777 (_ BitVec 32)) Unit!679)

(assert (=> b!29301 (= lt!11181 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k!1304 lt!11182 _keys!1833 mask!2294))))

(declare-datatypes ((tuple2!1090 0))(
  ( (tuple2!1091 (_1!555 (_ BitVec 64)) (_2!555 V!1527)) )
))
(declare-datatypes ((List!699 0))(
  ( (Nil!696) (Cons!695 (h!1262 tuple2!1090) (t!3394 List!699)) )
))
(declare-datatypes ((ListLongMap!671 0))(
  ( (ListLongMap!672 (toList!351 List!699)) )
))
(declare-fun lt!11184 () ListLongMap!671)

(declare-fun contains!288 (ListLongMap!671 (_ BitVec 64)) Bool)

(assert (=> b!29301 (contains!288 lt!11184 (select (arr!842 _keys!1833) lt!11182))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun lt!11183 () Unit!679)

(declare-fun zeroValue!1443 () V!1527)

(declare-fun minValue!1443 () V!1527)

(declare-fun lemmaValidKeyInArrayIsInListMap!31 (array!1777 array!1775 (_ BitVec 32) (_ BitVec 32) V!1527 V!1527 (_ BitVec 32) Int) Unit!679)

(assert (=> b!29301 (= lt!11183 (lemmaValidKeyInArrayIsInListMap!31 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!11182 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!1777 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!29301 (= lt!11182 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun res!17536 () Bool)

(assert (=> start!4016 (=> (not res!17536) (not e!18924))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4016 (= res!17536 (validMask!0 mask!2294))))

(assert (=> start!4016 e!18924))

(assert (=> start!4016 true))

(assert (=> start!4016 tp!4189))

(declare-fun e!18925 () Bool)

(declare-fun array_inv!571 (array!1775) Bool)

(assert (=> start!4016 (and (array_inv!571 _values!1501) e!18925)))

(declare-fun array_inv!572 (array!1777) Bool)

(assert (=> start!4016 (array_inv!572 _keys!1833)))

(declare-fun tp_is_empty!1277 () Bool)

(assert (=> start!4016 tp_is_empty!1277))

(declare-fun b!29302 () Bool)

(assert (=> b!29302 (= e!18921 tp_is_empty!1277)))

(declare-fun b!29303 () Bool)

(declare-fun res!17538 () Bool)

(assert (=> b!29303 (=> (not res!17538) (not e!18924))))

(declare-datatypes ((List!700 0))(
  ( (Nil!697) (Cons!696 (h!1263 (_ BitVec 64)) (t!3395 List!700)) )
))
(declare-fun arrayNoDuplicates!0 (array!1777 (_ BitVec 32) List!700) Bool)

(assert (=> b!29303 (= res!17538 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!697))))

(declare-fun b!29304 () Bool)

(declare-fun res!17537 () Bool)

(assert (=> b!29304 (=> (not res!17537) (not e!18924))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1777 (_ BitVec 32)) Bool)

(assert (=> b!29304 (= res!17537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!29305 () Bool)

(assert (=> b!29305 (= e!18924 e!18923)))

(declare-fun res!17539 () Bool)

(assert (=> b!29305 (=> (not res!17539) (not e!18923))))

(assert (=> b!29305 (= res!17539 (not (contains!288 lt!11184 k!1304)))))

(declare-fun getCurrentListMap!178 (array!1777 array!1775 (_ BitVec 32) (_ BitVec 32) V!1527 V!1527 (_ BitVec 32) Int) ListLongMap!671)

(assert (=> b!29305 (= lt!11184 (getCurrentListMap!178 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun mapIsEmpty!1444 () Bool)

(assert (=> mapIsEmpty!1444 mapRes!1444))

(declare-fun b!29306 () Bool)

(declare-fun res!17542 () Bool)

(assert (=> b!29306 (=> (not res!17542) (not e!18924))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!29306 (= res!17542 (validKeyInArray!0 k!1304))))

(declare-fun b!29307 () Bool)

(declare-fun res!17541 () Bool)

(assert (=> b!29307 (=> (not res!17541) (not e!18923))))

(declare-fun arrayContainsKey!0 (array!1777 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!29307 (= res!17541 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!29308 () Bool)

(declare-fun e!18922 () Bool)

(assert (=> b!29308 (= e!18922 tp_is_empty!1277)))

(declare-fun b!29309 () Bool)

(assert (=> b!29309 (= e!18925 (and e!18922 mapRes!1444))))

(declare-fun condMapEmpty!1444 () Bool)

(declare-fun mapDefault!1444 () ValueCell!439)

