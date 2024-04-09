; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4142 () Bool)

(assert start!4142)

(declare-fun b_free!1049 () Bool)

(declare-fun b_next!1049 () Bool)

(assert (=> start!4142 (= b_free!1049 (not b_next!1049))))

(declare-fun tp!4566 () Bool)

(declare-fun b_and!1861 () Bool)

(assert (=> start!4142 (= tp!4566 b_and!1861)))

(declare-fun b!31189 () Bool)

(declare-fun res!18862 () Bool)

(declare-fun e!19947 () Bool)

(assert (=> b!31189 (=> (not res!18862) (not e!19947))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-datatypes ((V!1695 0))(
  ( (V!1696 (val!728 Int)) )
))
(declare-datatypes ((ValueCell!502 0))(
  ( (ValueCellFull!502 (v!1817 V!1695)) (EmptyCell!502) )
))
(declare-datatypes ((array!2013 0))(
  ( (array!2014 (arr!960 (Array (_ BitVec 32) ValueCell!502)) (size!1061 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2013)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!2015 0))(
  ( (array!2016 (arr!961 (Array (_ BitVec 32) (_ BitVec 64))) (size!1062 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2015)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1695)

(declare-fun minValue!1443 () V!1695)

(declare-datatypes ((tuple2!1184 0))(
  ( (tuple2!1185 (_1!602 (_ BitVec 64)) (_2!602 V!1695)) )
))
(declare-datatypes ((List!786 0))(
  ( (Nil!783) (Cons!782 (h!1349 tuple2!1184) (t!3481 List!786)) )
))
(declare-datatypes ((ListLongMap!765 0))(
  ( (ListLongMap!766 (toList!398 List!786)) )
))
(declare-fun contains!335 (ListLongMap!765 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!223 (array!2015 array!2013 (_ BitVec 32) (_ BitVec 32) V!1695 V!1695 (_ BitVec 32) Int) ListLongMap!765)

(assert (=> b!31189 (= res!18862 (not (contains!335 (getCurrentListMap!223 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!31190 () Bool)

(declare-fun res!18865 () Bool)

(assert (=> b!31190 (=> (not res!18865) (not e!19947))))

(declare-datatypes ((SeekEntryResult!125 0))(
  ( (MissingZero!125 (index!2622 (_ BitVec 32))) (Found!125 (index!2623 (_ BitVec 32))) (Intermediate!125 (undefined!937 Bool) (index!2624 (_ BitVec 32)) (x!6611 (_ BitVec 32))) (Undefined!125) (MissingVacant!125 (index!2625 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!2015 (_ BitVec 32)) SeekEntryResult!125)

(assert (=> b!31190 (= res!18865 (not (is-Found!125 (seekEntry!0 k!1304 _keys!1833 mask!2294))))))

(declare-fun b!31191 () Bool)

(declare-fun res!18859 () Bool)

(assert (=> b!31191 (=> (not res!18859) (not e!19947))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!31191 (= res!18859 (validKeyInArray!0 k!1304))))

(declare-fun mapNonEmpty!1633 () Bool)

(declare-fun mapRes!1633 () Bool)

(declare-fun tp!4567 () Bool)

(declare-fun e!19950 () Bool)

(assert (=> mapNonEmpty!1633 (= mapRes!1633 (and tp!4567 e!19950))))

(declare-fun mapKey!1633 () (_ BitVec 32))

(declare-fun mapValue!1633 () ValueCell!502)

(declare-fun mapRest!1633 () (Array (_ BitVec 32) ValueCell!502))

(assert (=> mapNonEmpty!1633 (= (arr!960 _values!1501) (store mapRest!1633 mapKey!1633 mapValue!1633))))

(declare-fun b!31192 () Bool)

(declare-fun e!19949 () Bool)

(declare-fun tp_is_empty!1403 () Bool)

(assert (=> b!31192 (= e!19949 tp_is_empty!1403)))

(declare-fun b!31193 () Bool)

(assert (=> b!31193 (= e!19947 (not (= (size!1062 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294))))))

(declare-fun b!31194 () Bool)

(declare-fun res!18860 () Bool)

(assert (=> b!31194 (=> (not res!18860) (not e!19947))))

(assert (=> b!31194 (= res!18860 (and (= (size!1061 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1062 _keys!1833) (size!1061 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!31195 () Bool)

(assert (=> b!31195 (= e!19950 tp_is_empty!1403)))

(declare-fun res!18858 () Bool)

(assert (=> start!4142 (=> (not res!18858) (not e!19947))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4142 (= res!18858 (validMask!0 mask!2294))))

(assert (=> start!4142 e!19947))

(assert (=> start!4142 true))

(assert (=> start!4142 tp!4566))

(declare-fun e!19948 () Bool)

(declare-fun array_inv!639 (array!2013) Bool)

(assert (=> start!4142 (and (array_inv!639 _values!1501) e!19948)))

(declare-fun array_inv!640 (array!2015) Bool)

(assert (=> start!4142 (array_inv!640 _keys!1833)))

(assert (=> start!4142 tp_is_empty!1403))

(declare-fun b!31196 () Bool)

(declare-fun res!18863 () Bool)

(assert (=> b!31196 (=> (not res!18863) (not e!19947))))

(declare-fun arrayContainsKey!0 (array!2015 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!31196 (= res!18863 (not (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000)))))

(declare-fun b!31197 () Bool)

(declare-fun res!18864 () Bool)

(assert (=> b!31197 (=> (not res!18864) (not e!19947))))

(declare-datatypes ((List!787 0))(
  ( (Nil!784) (Cons!783 (h!1350 (_ BitVec 64)) (t!3482 List!787)) )
))
(declare-fun arrayNoDuplicates!0 (array!2015 (_ BitVec 32) List!787) Bool)

(assert (=> b!31197 (= res!18864 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!784))))

(declare-fun b!31198 () Bool)

(declare-fun res!18861 () Bool)

(assert (=> b!31198 (=> (not res!18861) (not e!19947))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2015 (_ BitVec 32)) Bool)

(assert (=> b!31198 (= res!18861 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!31199 () Bool)

(assert (=> b!31199 (= e!19948 (and e!19949 mapRes!1633))))

(declare-fun condMapEmpty!1633 () Bool)

(declare-fun mapDefault!1633 () ValueCell!502)

