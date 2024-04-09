; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108174 () Bool)

(assert start!108174)

(declare-fun b_free!27851 () Bool)

(declare-fun b_next!27851 () Bool)

(assert (=> start!108174 (= b_free!27851 (not b_next!27851))))

(declare-fun tp!98508 () Bool)

(declare-fun b_and!45917 () Bool)

(assert (=> start!108174 (= tp!98508 b_and!45917)))

(declare-fun b!1277012 () Bool)

(declare-fun res!848681 () Bool)

(declare-fun e!729293 () Bool)

(assert (=> b!1277012 (=> (not res!848681) (not e!729293))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-datatypes ((V!49637 0))(
  ( (V!49638 (val!16775 Int)) )
))
(declare-fun minValue!1129 () V!49637)

(declare-fun k!1053 () (_ BitVec 64))

(declare-datatypes ((ValueCell!15802 0))(
  ( (ValueCellFull!15802 (v!19370 V!49637)) (EmptyCell!15802) )
))
(declare-datatypes ((array!83843 0))(
  ( (array!83844 (arr!40428 (Array (_ BitVec 32) ValueCell!15802)) (size!40979 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83843)

(declare-fun zeroValue!1129 () V!49637)

(declare-datatypes ((array!83845 0))(
  ( (array!83846 (arr!40429 (Array (_ BitVec 32) (_ BitVec 64))) (size!40980 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83845)

(declare-fun defaultEntry!1195 () Int)

(declare-datatypes ((tuple2!21664 0))(
  ( (tuple2!21665 (_1!10842 (_ BitVec 64)) (_2!10842 V!49637)) )
))
(declare-datatypes ((List!28850 0))(
  ( (Nil!28847) (Cons!28846 (h!30055 tuple2!21664) (t!42393 List!28850)) )
))
(declare-datatypes ((ListLongMap!19333 0))(
  ( (ListLongMap!19334 (toList!9682 List!28850)) )
))
(declare-fun contains!7729 (ListLongMap!19333 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4702 (array!83845 array!83843 (_ BitVec 32) (_ BitVec 32) V!49637 V!49637 (_ BitVec 32) Int) ListLongMap!19333)

(assert (=> b!1277012 (= res!848681 (contains!7729 (getCurrentListMap!4702 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k!1053))))

(declare-fun res!848682 () Bool)

(assert (=> start!108174 (=> (not res!848682) (not e!729293))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108174 (= res!848682 (validMask!0 mask!1805))))

(assert (=> start!108174 e!729293))

(assert (=> start!108174 true))

(assert (=> start!108174 tp!98508))

(declare-fun tp_is_empty!33401 () Bool)

(assert (=> start!108174 tp_is_empty!33401))

(declare-fun e!729290 () Bool)

(declare-fun array_inv!30683 (array!83843) Bool)

(assert (=> start!108174 (and (array_inv!30683 _values!1187) e!729290)))

(declare-fun array_inv!30684 (array!83845) Bool)

(assert (=> start!108174 (array_inv!30684 _keys!1427)))

(declare-fun b!1277013 () Bool)

(declare-fun res!848683 () Bool)

(assert (=> b!1277013 (=> (not res!848683) (not e!729293))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83845 (_ BitVec 32)) Bool)

(assert (=> b!1277013 (= res!848683 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1277014 () Bool)

(declare-fun e!729289 () Bool)

(assert (=> b!1277014 (= e!729289 tp_is_empty!33401)))

(declare-fun b!1277015 () Bool)

(declare-fun e!729288 () Bool)

(declare-fun arrayContainsKey!0 (array!83845 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1277015 (= e!729288 (arrayContainsKey!0 _keys!1427 k!1053 #b00000000000000000000000000000000))))

(declare-fun b!1277016 () Bool)

(declare-fun mapRes!51632 () Bool)

(assert (=> b!1277016 (= e!729290 (and e!729289 mapRes!51632))))

(declare-fun condMapEmpty!51632 () Bool)

(declare-fun mapDefault!51632 () ValueCell!15802)

