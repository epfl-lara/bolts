; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4136 () Bool)

(assert start!4136)

(declare-fun b_free!1043 () Bool)

(declare-fun b_next!1043 () Bool)

(assert (=> start!4136 (= b_free!1043 (not b_next!1043))))

(declare-fun tp!4549 () Bool)

(declare-fun b_and!1855 () Bool)

(assert (=> start!4136 (= tp!4549 b_and!1855)))

(declare-fun mapIsEmpty!1624 () Bool)

(declare-fun mapRes!1624 () Bool)

(assert (=> mapIsEmpty!1624 mapRes!1624))

(declare-fun b!31091 () Bool)

(declare-fun e!19904 () Bool)

(assert (=> b!31091 (= e!19904 false)))

(declare-fun k!1304 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!123 0))(
  ( (MissingZero!123 (index!2614 (_ BitVec 32))) (Found!123 (index!2615 (_ BitVec 32))) (Intermediate!123 (undefined!935 Bool) (index!2616 (_ BitVec 32)) (x!6601 (_ BitVec 32))) (Undefined!123) (MissingVacant!123 (index!2617 (_ BitVec 32))) )
))
(declare-fun lt!11544 () SeekEntryResult!123)

(declare-datatypes ((array!2001 0))(
  ( (array!2002 (arr!954 (Array (_ BitVec 32) (_ BitVec 64))) (size!1055 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2001)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2001 (_ BitVec 32)) SeekEntryResult!123)

(assert (=> b!31091 (= lt!11544 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!31092 () Bool)

(declare-fun res!18790 () Bool)

(assert (=> b!31092 (=> (not res!18790) (not e!19904))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((V!1687 0))(
  ( (V!1688 (val!725 Int)) )
))
(declare-datatypes ((ValueCell!499 0))(
  ( (ValueCellFull!499 (v!1814 V!1687)) (EmptyCell!499) )
))
(declare-datatypes ((array!2003 0))(
  ( (array!2004 (arr!955 (Array (_ BitVec 32) ValueCell!499)) (size!1056 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2003)

(declare-fun zeroValue!1443 () V!1687)

(declare-fun minValue!1443 () V!1687)

(declare-datatypes ((tuple2!1178 0))(
  ( (tuple2!1179 (_1!599 (_ BitVec 64)) (_2!599 V!1687)) )
))
(declare-datatypes ((List!781 0))(
  ( (Nil!778) (Cons!777 (h!1344 tuple2!1178) (t!3476 List!781)) )
))
(declare-datatypes ((ListLongMap!759 0))(
  ( (ListLongMap!760 (toList!395 List!781)) )
))
(declare-fun contains!332 (ListLongMap!759 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!220 (array!2001 array!2003 (_ BitVec 32) (_ BitVec 32) V!1687 V!1687 (_ BitVec 32) Int) ListLongMap!759)

(assert (=> b!31092 (= res!18790 (not (contains!332 (getCurrentListMap!220 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!31093 () Bool)

(declare-fun res!18793 () Bool)

(assert (=> b!31093 (=> (not res!18793) (not e!19904))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2001 (_ BitVec 32)) Bool)

(assert (=> b!31093 (= res!18793 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!31095 () Bool)

(declare-fun res!18787 () Bool)

(assert (=> b!31095 (=> (not res!18787) (not e!19904))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!31095 (= res!18787 (validKeyInArray!0 k!1304))))

(declare-fun b!31096 () Bool)

(declare-fun e!19903 () Bool)

(declare-fun e!19902 () Bool)

(assert (=> b!31096 (= e!19903 (and e!19902 mapRes!1624))))

(declare-fun condMapEmpty!1624 () Bool)

(declare-fun mapDefault!1624 () ValueCell!499)

