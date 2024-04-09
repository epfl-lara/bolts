; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4242 () Bool)

(assert start!4242)

(declare-fun b_free!1129 () Bool)

(declare-fun b_next!1129 () Bool)

(assert (=> start!4242 (= b_free!1129 (not b_next!1129))))

(declare-fun tp!4810 () Bool)

(declare-fun b_and!1943 () Bool)

(assert (=> start!4242 (= tp!4810 b_and!1943)))

(declare-fun res!19698 () Bool)

(declare-fun e!20633 () Bool)

(assert (=> start!4242 (=> (not res!19698) (not e!20633))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4242 (= res!19698 (validMask!0 mask!2294))))

(assert (=> start!4242 e!20633))

(assert (=> start!4242 true))

(assert (=> start!4242 tp!4810))

(declare-datatypes ((V!1803 0))(
  ( (V!1804 (val!768 Int)) )
))
(declare-datatypes ((ValueCell!542 0))(
  ( (ValueCellFull!542 (v!1858 V!1803)) (EmptyCell!542) )
))
(declare-datatypes ((array!2173 0))(
  ( (array!2174 (arr!1039 (Array (_ BitVec 32) ValueCell!542)) (size!1140 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2173)

(declare-fun e!20634 () Bool)

(declare-fun array_inv!689 (array!2173) Bool)

(assert (=> start!4242 (and (array_inv!689 _values!1501) e!20634)))

(declare-datatypes ((array!2175 0))(
  ( (array!2176 (arr!1040 (Array (_ BitVec 32) (_ BitVec 64))) (size!1141 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2175)

(declare-fun array_inv!690 (array!2175) Bool)

(assert (=> start!4242 (array_inv!690 _keys!1833)))

(declare-fun tp_is_empty!1483 () Bool)

(assert (=> start!4242 tp_is_empty!1483))

(declare-fun mapIsEmpty!1756 () Bool)

(declare-fun mapRes!1756 () Bool)

(assert (=> mapIsEmpty!1756 mapRes!1756))

(declare-fun b!32459 () Bool)

(declare-fun e!20632 () Bool)

(assert (=> b!32459 (= e!20633 e!20632)))

(declare-fun res!19704 () Bool)

(assert (=> b!32459 (=> (not res!19704) (not e!20632))))

(declare-fun lt!11754 () (_ BitVec 32))

(assert (=> b!32459 (= res!19704 (and (bvsge lt!11754 #b00000000000000000000000000000000) (bvslt lt!11754 (size!1141 _keys!1833))))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!2175 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!32459 (= lt!11754 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!32460 () Bool)

(declare-fun res!19701 () Bool)

(assert (=> b!32460 (=> (not res!19701) (not e!20633))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1803)

(declare-fun minValue!1443 () V!1803)

(declare-datatypes ((tuple2!1240 0))(
  ( (tuple2!1241 (_1!630 (_ BitVec 64)) (_2!630 V!1803)) )
))
(declare-datatypes ((List!843 0))(
  ( (Nil!840) (Cons!839 (h!1406 tuple2!1240) (t!3540 List!843)) )
))
(declare-datatypes ((ListLongMap!821 0))(
  ( (ListLongMap!822 (toList!426 List!843)) )
))
(declare-fun contains!364 (ListLongMap!821 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!251 (array!2175 array!2173 (_ BitVec 32) (_ BitVec 32) V!1803 V!1803 (_ BitVec 32) Int) ListLongMap!821)

(assert (=> b!32460 (= res!19701 (not (contains!364 (getCurrentListMap!251 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!32461 () Bool)

(declare-fun res!19705 () Bool)

(assert (=> b!32461 (=> (not res!19705) (not e!20633))))

(declare-fun arrayContainsKey!0 (array!2175 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!32461 (= res!19705 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!32462 () Bool)

(declare-fun res!19700 () Bool)

(assert (=> b!32462 (=> (not res!19700) (not e!20633))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2175 (_ BitVec 32)) Bool)

(assert (=> b!32462 (= res!19700 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!32463 () Bool)

(declare-fun res!19703 () Bool)

(assert (=> b!32463 (=> (not res!19703) (not e!20633))))

(declare-datatypes ((List!844 0))(
  ( (Nil!841) (Cons!840 (h!1407 (_ BitVec 64)) (t!3541 List!844)) )
))
(declare-fun arrayNoDuplicates!0 (array!2175 (_ BitVec 32) List!844) Bool)

(assert (=> b!32463 (= res!19703 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!841))))

(declare-fun mapNonEmpty!1756 () Bool)

(declare-fun tp!4809 () Bool)

(declare-fun e!20631 () Bool)

(assert (=> mapNonEmpty!1756 (= mapRes!1756 (and tp!4809 e!20631))))

(declare-fun mapRest!1756 () (Array (_ BitVec 32) ValueCell!542))

(declare-fun mapKey!1756 () (_ BitVec 32))

(declare-fun mapValue!1756 () ValueCell!542)

(assert (=> mapNonEmpty!1756 (= (arr!1039 _values!1501) (store mapRest!1756 mapKey!1756 mapValue!1756))))

(declare-fun b!32464 () Bool)

(declare-fun e!20635 () Bool)

(assert (=> b!32464 (= e!20634 (and e!20635 mapRes!1756))))

(declare-fun condMapEmpty!1756 () Bool)

(declare-fun mapDefault!1756 () ValueCell!542)

