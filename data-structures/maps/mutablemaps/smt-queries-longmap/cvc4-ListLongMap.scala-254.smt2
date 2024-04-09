; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4208 () Bool)

(assert start!4208)

(declare-fun b_free!1115 () Bool)

(declare-fun b_next!1115 () Bool)

(assert (=> start!4208 (= b_free!1115 (not b_next!1115))))

(declare-fun tp!4765 () Bool)

(declare-fun b_and!1927 () Bool)

(assert (=> start!4208 (= tp!4765 b_and!1927)))

(declare-fun b!32126 () Bool)

(declare-fun res!19504 () Bool)

(declare-fun e!20443 () Bool)

(assert (=> b!32126 (=> (not res!19504) (not e!20443))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1783 0))(
  ( (V!1784 (val!761 Int)) )
))
(declare-datatypes ((ValueCell!535 0))(
  ( (ValueCellFull!535 (v!1850 V!1783)) (EmptyCell!535) )
))
(declare-datatypes ((array!2145 0))(
  ( (array!2146 (arr!1026 (Array (_ BitVec 32) ValueCell!535)) (size!1127 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2145)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!2147 0))(
  ( (array!2148 (arr!1027 (Array (_ BitVec 32) (_ BitVec 64))) (size!1128 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2147)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1783)

(declare-fun minValue!1443 () V!1783)

(declare-datatypes ((tuple2!1232 0))(
  ( (tuple2!1233 (_1!626 (_ BitVec 64)) (_2!626 V!1783)) )
))
(declare-datatypes ((List!835 0))(
  ( (Nil!832) (Cons!831 (h!1398 tuple2!1232) (t!3530 List!835)) )
))
(declare-datatypes ((ListLongMap!813 0))(
  ( (ListLongMap!814 (toList!422 List!835)) )
))
(declare-fun contains!359 (ListLongMap!813 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!247 (array!2147 array!2145 (_ BitVec 32) (_ BitVec 32) V!1783 V!1783 (_ BitVec 32) Int) ListLongMap!813)

(assert (=> b!32126 (= res!19504 (not (contains!359 (getCurrentListMap!247 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!32127 () Bool)

(declare-fun res!19498 () Bool)

(assert (=> b!32127 (=> (not res!19498) (not e!20443))))

(declare-fun arrayContainsKey!0 (array!2147 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!32127 (= res!19498 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun res!19501 () Bool)

(assert (=> start!4208 (=> (not res!19501) (not e!20443))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4208 (= res!19501 (validMask!0 mask!2294))))

(assert (=> start!4208 e!20443))

(assert (=> start!4208 true))

(assert (=> start!4208 tp!4765))

(declare-fun e!20446 () Bool)

(declare-fun array_inv!681 (array!2145) Bool)

(assert (=> start!4208 (and (array_inv!681 _values!1501) e!20446)))

(declare-fun array_inv!682 (array!2147) Bool)

(assert (=> start!4208 (array_inv!682 _keys!1833)))

(declare-fun tp_is_empty!1469 () Bool)

(assert (=> start!4208 tp_is_empty!1469))

(declare-fun b!32128 () Bool)

(declare-fun e!20442 () Bool)

(assert (=> b!32128 (= e!20442 tp_is_empty!1469)))

(declare-fun b!32129 () Bool)

(assert (=> b!32129 (= e!20443 false)))

(declare-fun lt!11643 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!2147 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!32129 (= lt!11643 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!32130 () Bool)

(declare-fun res!19502 () Bool)

(assert (=> b!32130 (=> (not res!19502) (not e!20443))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2147 (_ BitVec 32)) Bool)

(assert (=> b!32130 (= res!19502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapNonEmpty!1732 () Bool)

(declare-fun mapRes!1732 () Bool)

(declare-fun tp!4764 () Bool)

(declare-fun e!20444 () Bool)

(assert (=> mapNonEmpty!1732 (= mapRes!1732 (and tp!4764 e!20444))))

(declare-fun mapRest!1732 () (Array (_ BitVec 32) ValueCell!535))

(declare-fun mapValue!1732 () ValueCell!535)

(declare-fun mapKey!1732 () (_ BitVec 32))

(assert (=> mapNonEmpty!1732 (= (arr!1026 _values!1501) (store mapRest!1732 mapKey!1732 mapValue!1732))))

(declare-fun b!32131 () Bool)

(declare-fun res!19503 () Bool)

(assert (=> b!32131 (=> (not res!19503) (not e!20443))))

(declare-datatypes ((List!836 0))(
  ( (Nil!833) (Cons!832 (h!1399 (_ BitVec 64)) (t!3531 List!836)) )
))
(declare-fun arrayNoDuplicates!0 (array!2147 (_ BitVec 32) List!836) Bool)

(assert (=> b!32131 (= res!19503 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!833))))

(declare-fun b!32132 () Bool)

(assert (=> b!32132 (= e!20444 tp_is_empty!1469)))

(declare-fun b!32133 () Bool)

(declare-fun res!19500 () Bool)

(assert (=> b!32133 (=> (not res!19500) (not e!20443))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!32133 (= res!19500 (validKeyInArray!0 k!1304))))

(declare-fun mapIsEmpty!1732 () Bool)

(assert (=> mapIsEmpty!1732 mapRes!1732))

(declare-fun b!32134 () Bool)

(assert (=> b!32134 (= e!20446 (and e!20442 mapRes!1732))))

(declare-fun condMapEmpty!1732 () Bool)

(declare-fun mapDefault!1732 () ValueCell!535)

