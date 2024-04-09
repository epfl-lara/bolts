; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4454 () Bool)

(assert start!4454)

(declare-fun b_free!1217 () Bool)

(declare-fun b_next!1217 () Bool)

(assert (=> start!4454 (= b_free!1217 (not b_next!1217))))

(declare-fun tp!5089 () Bool)

(declare-fun b_and!2041 () Bool)

(assert (=> start!4454 (= tp!5089 b_and!2041)))

(declare-fun b!34500 () Bool)

(declare-fun res!20913 () Bool)

(declare-fun e!21881 () Bool)

(assert (=> b!34500 (=> (not res!20913) (not e!21881))))

(declare-datatypes ((array!2347 0))(
  ( (array!2348 (arr!1121 (Array (_ BitVec 32) (_ BitVec 64))) (size!1222 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2347)

(declare-datatypes ((List!910 0))(
  ( (Nil!907) (Cons!906 (h!1473 (_ BitVec 64)) (t!3617 List!910)) )
))
(declare-fun arrayNoDuplicates!0 (array!2347 (_ BitVec 32) List!910) Bool)

(assert (=> b!34500 (= res!20913 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!907))))

(declare-fun b!34501 () Bool)

(declare-fun e!21882 () Bool)

(declare-fun tp_is_empty!1571 () Bool)

(assert (=> b!34501 (= e!21882 tp_is_empty!1571)))

(declare-fun b!34502 () Bool)

(declare-fun res!20914 () Bool)

(assert (=> b!34502 (=> (not res!20914) (not e!21881))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1919 0))(
  ( (V!1920 (val!812 Int)) )
))
(declare-datatypes ((ValueCell!586 0))(
  ( (ValueCellFull!586 (v!1907 V!1919)) (EmptyCell!586) )
))
(declare-datatypes ((array!2349 0))(
  ( (array!2350 (arr!1122 (Array (_ BitVec 32) ValueCell!586)) (size!1223 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2349)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1919)

(declare-fun minValue!1443 () V!1919)

(declare-datatypes ((tuple2!1306 0))(
  ( (tuple2!1307 (_1!663 (_ BitVec 64)) (_2!663 V!1919)) )
))
(declare-datatypes ((List!911 0))(
  ( (Nil!908) (Cons!907 (h!1474 tuple2!1306) (t!3618 List!911)) )
))
(declare-datatypes ((ListLongMap!887 0))(
  ( (ListLongMap!888 (toList!459 List!911)) )
))
(declare-fun contains!402 (ListLongMap!887 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!280 (array!2347 array!2349 (_ BitVec 32) (_ BitVec 32) V!1919 V!1919 (_ BitVec 32) Int) ListLongMap!887)

(assert (=> b!34502 (= res!20914 (not (contains!402 (getCurrentListMap!280 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!34503 () Bool)

(declare-fun res!20917 () Bool)

(assert (=> b!34503 (=> (not res!20917) (not e!21881))))

(declare-fun arrayContainsKey!0 (array!2347 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!34503 (= res!20917 (not (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000)))))

(declare-fun b!34504 () Bool)

(declare-fun res!20912 () Bool)

(assert (=> b!34504 (=> (not res!20912) (not e!21881))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2347 (_ BitVec 32)) Bool)

(assert (=> b!34504 (= res!20912 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!34505 () Bool)

(assert (=> b!34505 (= e!21881 false)))

(declare-datatypes ((SeekEntryResult!150 0))(
  ( (MissingZero!150 (index!2722 (_ BitVec 32))) (Found!150 (index!2723 (_ BitVec 32))) (Intermediate!150 (undefined!962 Bool) (index!2724 (_ BitVec 32)) (x!6920 (_ BitVec 32))) (Undefined!150) (MissingVacant!150 (index!2725 (_ BitVec 32))) )
))
(declare-fun lt!12793 () SeekEntryResult!150)

(declare-fun seekEntry!0 ((_ BitVec 64) array!2347 (_ BitVec 32)) SeekEntryResult!150)

(assert (=> b!34505 (= lt!12793 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!34506 () Bool)

(declare-fun e!21879 () Bool)

(declare-fun mapRes!1903 () Bool)

(assert (=> b!34506 (= e!21879 (and e!21882 mapRes!1903))))

(declare-fun condMapEmpty!1903 () Bool)

(declare-fun mapDefault!1903 () ValueCell!586)

