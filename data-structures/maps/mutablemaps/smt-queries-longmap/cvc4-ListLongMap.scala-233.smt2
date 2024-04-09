; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4082 () Bool)

(assert start!4082)

(declare-fun b_free!989 () Bool)

(declare-fun b_next!989 () Bool)

(assert (=> start!4082 (= b_free!989 (not b_next!989))))

(declare-fun tp!4387 () Bool)

(declare-fun b_and!1801 () Bool)

(assert (=> start!4082 (= tp!4387 b_and!1801)))

(declare-fun mapIsEmpty!1543 () Bool)

(declare-fun mapRes!1543 () Bool)

(assert (=> mapIsEmpty!1543 mapRes!1543))

(declare-fun res!18194 () Bool)

(declare-fun e!19445 () Bool)

(assert (=> start!4082 (=> (not res!18194) (not e!19445))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4082 (= res!18194 (validMask!0 mask!2294))))

(assert (=> start!4082 e!19445))

(assert (=> start!4082 true))

(assert (=> start!4082 tp!4387))

(declare-datatypes ((V!1615 0))(
  ( (V!1616 (val!698 Int)) )
))
(declare-datatypes ((ValueCell!472 0))(
  ( (ValueCellFull!472 (v!1787 V!1615)) (EmptyCell!472) )
))
(declare-datatypes ((array!1903 0))(
  ( (array!1904 (arr!905 (Array (_ BitVec 32) ValueCell!472)) (size!1006 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1903)

(declare-fun e!19444 () Bool)

(declare-fun array_inv!607 (array!1903) Bool)

(assert (=> start!4082 (and (array_inv!607 _values!1501) e!19444)))

(declare-datatypes ((array!1905 0))(
  ( (array!1906 (arr!906 (Array (_ BitVec 32) (_ BitVec 64))) (size!1007 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1905)

(declare-fun array_inv!608 (array!1905) Bool)

(assert (=> start!4082 (array_inv!608 _keys!1833)))

(declare-fun tp_is_empty!1343 () Bool)

(assert (=> start!4082 tp_is_empty!1343))

(declare-fun b!30254 () Bool)

(declare-fun e!19447 () Bool)

(assert (=> b!30254 (= e!19447 tp_is_empty!1343)))

(declare-fun b!30255 () Bool)

(declare-fun res!18197 () Bool)

(assert (=> b!30255 (=> (not res!18197) (not e!19445))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1615)

(declare-fun minValue!1443 () V!1615)

(declare-datatypes ((tuple2!1140 0))(
  ( (tuple2!1141 (_1!580 (_ BitVec 64)) (_2!580 V!1615)) )
))
(declare-datatypes ((List!743 0))(
  ( (Nil!740) (Cons!739 (h!1306 tuple2!1140) (t!3438 List!743)) )
))
(declare-datatypes ((ListLongMap!721 0))(
  ( (ListLongMap!722 (toList!376 List!743)) )
))
(declare-fun contains!313 (ListLongMap!721 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!203 (array!1905 array!1903 (_ BitVec 32) (_ BitVec 32) V!1615 V!1615 (_ BitVec 32) Int) ListLongMap!721)

(assert (=> b!30255 (= res!18197 (not (contains!313 (getCurrentListMap!203 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!30256 () Bool)

(assert (=> b!30256 (= e!19445 false)))

(declare-datatypes ((SeekEntryResult!104 0))(
  ( (MissingZero!104 (index!2538 (_ BitVec 32))) (Found!104 (index!2539 (_ BitVec 32))) (Intermediate!104 (undefined!916 Bool) (index!2540 (_ BitVec 32)) (x!6510 (_ BitVec 32))) (Undefined!104) (MissingVacant!104 (index!2541 (_ BitVec 32))) )
))
(declare-fun lt!11409 () SeekEntryResult!104)

(declare-fun seekEntry!0 ((_ BitVec 64) array!1905 (_ BitVec 32)) SeekEntryResult!104)

(assert (=> b!30256 (= lt!11409 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!30257 () Bool)

(declare-fun res!18199 () Bool)

(assert (=> b!30257 (=> (not res!18199) (not e!19445))))

(declare-fun arrayContainsKey!0 (array!1905 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!30257 (= res!18199 (not (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000)))))

(declare-fun b!30258 () Bool)

(declare-fun res!18196 () Bool)

(assert (=> b!30258 (=> (not res!18196) (not e!19445))))

(declare-datatypes ((List!744 0))(
  ( (Nil!741) (Cons!740 (h!1307 (_ BitVec 64)) (t!3439 List!744)) )
))
(declare-fun arrayNoDuplicates!0 (array!1905 (_ BitVec 32) List!744) Bool)

(assert (=> b!30258 (= res!18196 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!741))))

(declare-fun b!30259 () Bool)

(assert (=> b!30259 (= e!19444 (and e!19447 mapRes!1543))))

(declare-fun condMapEmpty!1543 () Bool)

(declare-fun mapDefault!1543 () ValueCell!472)

