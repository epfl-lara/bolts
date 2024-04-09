; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4578 () Bool)

(assert start!4578)

(declare-fun b_free!1279 () Bool)

(declare-fun b_next!1279 () Bool)

(assert (=> start!4578 (= b_free!1279 (not b_next!1279))))

(declare-fun tp!5283 () Bool)

(declare-fun b_and!2109 () Bool)

(assert (=> start!4578 (= tp!5283 b_and!2109)))

(declare-fun b!35862 () Bool)

(declare-fun e!22654 () Bool)

(declare-fun tp_is_empty!1633 () Bool)

(assert (=> b!35862 (= e!22654 tp_is_empty!1633)))

(declare-fun b!35863 () Bool)

(declare-fun res!21750 () Bool)

(declare-fun e!22655 () Bool)

(assert (=> b!35863 (=> (not res!21750) (not e!22655))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!35863 (= res!21750 (validKeyInArray!0 k!1304))))

(declare-fun b!35864 () Bool)

(declare-fun res!21752 () Bool)

(assert (=> b!35864 (=> (not res!21752) (not e!22655))))

(declare-datatypes ((array!2477 0))(
  ( (array!2478 (arr!1183 (Array (_ BitVec 32) (_ BitVec 64))) (size!1284 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2477)

(declare-datatypes ((List!959 0))(
  ( (Nil!956) (Cons!955 (h!1522 (_ BitVec 64)) (t!3672 List!959)) )
))
(declare-fun arrayNoDuplicates!0 (array!2477 (_ BitVec 32) List!959) Bool)

(assert (=> b!35864 (= res!21752 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!956))))

(declare-fun b!35865 () Bool)

(declare-datatypes ((SeekEntryResult!174 0))(
  ( (MissingZero!174 (index!2818 (_ BitVec 32))) (Found!174 (index!2819 (_ BitVec 32))) (Intermediate!174 (undefined!986 Bool) (index!2820 (_ BitVec 32)) (x!7062 (_ BitVec 32))) (Undefined!174) (MissingVacant!174 (index!2821 (_ BitVec 32))) )
))
(declare-fun lt!13226 () SeekEntryResult!174)

(assert (=> b!35865 (= e!22655 (and (not (is-Found!174 lt!13226)) (not (is-MissingZero!174 lt!13226)) (not (is-Undefined!174 lt!13226))))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2477 (_ BitVec 32)) SeekEntryResult!174)

(assert (=> b!35865 (= lt!13226 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!35866 () Bool)

(declare-fun res!21748 () Bool)

(assert (=> b!35866 (=> (not res!21748) (not e!22655))))

(declare-datatypes ((V!2003 0))(
  ( (V!2004 (val!843 Int)) )
))
(declare-datatypes ((ValueCell!617 0))(
  ( (ValueCellFull!617 (v!1941 V!2003)) (EmptyCell!617) )
))
(declare-datatypes ((array!2479 0))(
  ( (array!2480 (arr!1184 (Array (_ BitVec 32) ValueCell!617)) (size!1285 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2479)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!35866 (= res!21748 (and (= (size!1285 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1284 _keys!1833) (size!1285 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!2005 () Bool)

(declare-fun mapRes!2005 () Bool)

(declare-fun tp!5284 () Bool)

(declare-fun e!22656 () Bool)

(assert (=> mapNonEmpty!2005 (= mapRes!2005 (and tp!5284 e!22656))))

(declare-fun mapKey!2005 () (_ BitVec 32))

(declare-fun mapRest!2005 () (Array (_ BitVec 32) ValueCell!617))

(declare-fun mapValue!2005 () ValueCell!617)

(assert (=> mapNonEmpty!2005 (= (arr!1184 _values!1501) (store mapRest!2005 mapKey!2005 mapValue!2005))))

(declare-fun b!35867 () Bool)

(declare-fun res!21747 () Bool)

(assert (=> b!35867 (=> (not res!21747) (not e!22655))))

(declare-fun arrayContainsKey!0 (array!2477 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!35867 (= res!21747 (not (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000)))))

(declare-fun b!35868 () Bool)

(declare-fun res!21746 () Bool)

(assert (=> b!35868 (=> (not res!21746) (not e!22655))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!2003)

(declare-fun minValue!1443 () V!2003)

(declare-datatypes ((tuple2!1352 0))(
  ( (tuple2!1353 (_1!686 (_ BitVec 64)) (_2!686 V!2003)) )
))
(declare-datatypes ((List!960 0))(
  ( (Nil!957) (Cons!956 (h!1523 tuple2!1352) (t!3673 List!960)) )
))
(declare-datatypes ((ListLongMap!933 0))(
  ( (ListLongMap!934 (toList!482 List!960)) )
))
(declare-fun contains!428 (ListLongMap!933 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!303 (array!2477 array!2479 (_ BitVec 32) (_ BitVec 32) V!2003 V!2003 (_ BitVec 32) Int) ListLongMap!933)

(assert (=> b!35868 (= res!21746 (not (contains!428 (getCurrentListMap!303 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun res!21751 () Bool)

(assert (=> start!4578 (=> (not res!21751) (not e!22655))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4578 (= res!21751 (validMask!0 mask!2294))))

(assert (=> start!4578 e!22655))

(assert (=> start!4578 true))

(assert (=> start!4578 tp!5283))

(declare-fun e!22658 () Bool)

(declare-fun array_inv!781 (array!2479) Bool)

(assert (=> start!4578 (and (array_inv!781 _values!1501) e!22658)))

(declare-fun array_inv!782 (array!2477) Bool)

(assert (=> start!4578 (array_inv!782 _keys!1833)))

(assert (=> start!4578 tp_is_empty!1633))

(declare-fun b!35869 () Bool)

(declare-fun res!21749 () Bool)

(assert (=> b!35869 (=> (not res!21749) (not e!22655))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2477 (_ BitVec 32)) Bool)

(assert (=> b!35869 (= res!21749 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapIsEmpty!2005 () Bool)

(assert (=> mapIsEmpty!2005 mapRes!2005))

(declare-fun b!35870 () Bool)

(assert (=> b!35870 (= e!22658 (and e!22654 mapRes!2005))))

(declare-fun condMapEmpty!2005 () Bool)

(declare-fun mapDefault!2005 () ValueCell!617)

