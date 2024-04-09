; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4402 () Bool)

(assert start!4402)

(declare-fun b_free!1193 () Bool)

(declare-fun b_next!1193 () Bool)

(assert (=> start!4402 (= b_free!1193 (not b_next!1193))))

(declare-fun tp!5014 () Bool)

(declare-fun b_and!2015 () Bool)

(assert (=> start!4402 (= tp!5014 b_and!2015)))

(declare-fun b!33991 () Bool)

(declare-fun res!20602 () Bool)

(declare-fun e!21581 () Bool)

(assert (=> b!33991 (=> (not res!20602) (not e!21581))))

(declare-datatypes ((V!1887 0))(
  ( (V!1888 (val!800 Int)) )
))
(declare-datatypes ((ValueCell!574 0))(
  ( (ValueCellFull!574 (v!1894 V!1887)) (EmptyCell!574) )
))
(declare-datatypes ((array!2303 0))(
  ( (array!2304 (arr!1100 (Array (_ BitVec 32) ValueCell!574)) (size!1201 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2303)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!2305 0))(
  ( (array!2306 (arr!1101 (Array (_ BitVec 32) (_ BitVec 64))) (size!1202 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2305)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!33991 (= res!20602 (and (= (size!1201 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1202 _keys!1833) (size!1201 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!1864 () Bool)

(declare-fun mapRes!1864 () Bool)

(assert (=> mapIsEmpty!1864 mapRes!1864))

(declare-fun b!33992 () Bool)

(declare-fun e!21584 () Bool)

(assert (=> b!33992 (= e!21581 e!21584)))

(declare-fun res!20604 () Bool)

(assert (=> b!33992 (=> (not res!20604) (not e!21584))))

(declare-datatypes ((tuple2!1290 0))(
  ( (tuple2!1291 (_1!655 (_ BitVec 64)) (_2!655 V!1887)) )
))
(declare-datatypes ((List!895 0))(
  ( (Nil!892) (Cons!891 (h!1458 tuple2!1290) (t!3600 List!895)) )
))
(declare-datatypes ((ListLongMap!871 0))(
  ( (ListLongMap!872 (toList!451 List!895)) )
))
(declare-fun lt!12542 () ListLongMap!871)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun contains!393 (ListLongMap!871 (_ BitVec 64)) Bool)

(assert (=> b!33992 (= res!20604 (not (contains!393 lt!12542 k!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1887)

(declare-fun minValue!1443 () V!1887)

(declare-fun getCurrentListMap!272 (array!2305 array!2303 (_ BitVec 32) (_ BitVec 32) V!1887 V!1887 (_ BitVec 32) Int) ListLongMap!871)

(assert (=> b!33992 (= lt!12542 (getCurrentListMap!272 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!33993 () Bool)

(assert (=> b!33993 (= e!21584 (not true))))

(declare-datatypes ((SeekEntryResult!143 0))(
  ( (MissingZero!143 (index!2694 (_ BitVec 32))) (Found!143 (index!2695 (_ BitVec 32))) (Intermediate!143 (undefined!955 Bool) (index!2696 (_ BitVec 32)) (x!6871 (_ BitVec 32))) (Undefined!143) (MissingVacant!143 (index!2697 (_ BitVec 32))) )
))
(declare-fun lt!12545 () SeekEntryResult!143)

(declare-fun lt!12543 () (_ BitVec 32))

(assert (=> b!33993 (and (is-Found!143 lt!12545) (= (index!2695 lt!12545) lt!12543))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2305 (_ BitVec 32)) SeekEntryResult!143)

(assert (=> b!33993 (= lt!12545 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-datatypes ((Unit!764 0))(
  ( (Unit!765) )
))
(declare-fun lt!12546 () Unit!764)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!2305 (_ BitVec 32)) Unit!764)

(assert (=> b!33993 (= lt!12546 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k!1304 lt!12543 _keys!1833 mask!2294))))

(assert (=> b!33993 (contains!393 lt!12542 (select (arr!1101 _keys!1833) lt!12543))))

(declare-fun lt!12544 () Unit!764)

(declare-fun lemmaValidKeyInArrayIsInListMap!65 (array!2305 array!2303 (_ BitVec 32) (_ BitVec 32) V!1887 V!1887 (_ BitVec 32) Int) Unit!764)

(assert (=> b!33993 (= lt!12544 (lemmaValidKeyInArrayIsInListMap!65 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!12543 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!2305 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!33993 (= lt!12543 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!33994 () Bool)

(declare-fun e!21582 () Bool)

(declare-fun tp_is_empty!1547 () Bool)

(assert (=> b!33994 (= e!21582 tp_is_empty!1547)))

(declare-fun b!33995 () Bool)

(declare-fun e!21586 () Bool)

(assert (=> b!33995 (= e!21586 (and e!21582 mapRes!1864))))

(declare-fun condMapEmpty!1864 () Bool)

(declare-fun mapDefault!1864 () ValueCell!574)

