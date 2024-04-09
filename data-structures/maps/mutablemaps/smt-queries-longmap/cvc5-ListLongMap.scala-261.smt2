; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4286 () Bool)

(assert start!4286)

(declare-fun b_free!1153 () Bool)

(declare-fun b_next!1153 () Bool)

(assert (=> start!4286 (= b_free!1153 (not b_next!1153))))

(declare-fun tp!4884 () Bool)

(declare-fun b_and!1969 () Bool)

(assert (=> start!4286 (= tp!4884 b_and!1969)))

(declare-fun b!32947 () Bool)

(declare-fun e!20931 () Bool)

(declare-fun tp_is_empty!1507 () Bool)

(assert (=> b!32947 (= e!20931 tp_is_empty!1507)))

(declare-fun b!32949 () Bool)

(declare-fun e!20929 () Bool)

(assert (=> b!32949 (= e!20929 (not true))))

(declare-datatypes ((V!1835 0))(
  ( (V!1836 (val!780 Int)) )
))
(declare-datatypes ((tuple2!1262 0))(
  ( (tuple2!1263 (_1!641 (_ BitVec 64)) (_2!641 V!1835)) )
))
(declare-datatypes ((List!865 0))(
  ( (Nil!862) (Cons!861 (h!1428 tuple2!1262) (t!3564 List!865)) )
))
(declare-datatypes ((ListLongMap!843 0))(
  ( (ListLongMap!844 (toList!437 List!865)) )
))
(declare-fun lt!11939 () ListLongMap!843)

(declare-datatypes ((array!2223 0))(
  ( (array!2224 (arr!1063 (Array (_ BitVec 32) (_ BitVec 64))) (size!1164 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2223)

(declare-fun lt!11938 () (_ BitVec 32))

(declare-fun contains!376 (ListLongMap!843 (_ BitVec 64)) Bool)

(assert (=> b!32949 (contains!376 lt!11939 (select (arr!1063 _keys!1833) lt!11938))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((ValueCell!554 0))(
  ( (ValueCellFull!554 (v!1871 V!1835)) (EmptyCell!554) )
))
(declare-datatypes ((array!2225 0))(
  ( (array!2226 (arr!1064 (Array (_ BitVec 32) ValueCell!554)) (size!1165 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2225)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((Unit!727 0))(
  ( (Unit!728) )
))
(declare-fun lt!11940 () Unit!727)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1835)

(declare-fun minValue!1443 () V!1835)

(declare-fun lemmaValidKeyInArrayIsInListMap!51 (array!2223 array!2225 (_ BitVec 32) (_ BitVec 32) V!1835 V!1835 (_ BitVec 32) Int) Unit!727)

(assert (=> b!32949 (= lt!11940 (lemmaValidKeyInArrayIsInListMap!51 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!11938 defaultEntry!1504))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!2223 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!32949 (= lt!11938 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!32950 () Bool)

(declare-fun res!20011 () Bool)

(declare-fun e!20927 () Bool)

(assert (=> b!32950 (=> (not res!20011) (not e!20927))))

(declare-datatypes ((List!866 0))(
  ( (Nil!863) (Cons!862 (h!1429 (_ BitVec 64)) (t!3565 List!866)) )
))
(declare-fun arrayNoDuplicates!0 (array!2223 (_ BitVec 32) List!866) Bool)

(assert (=> b!32950 (= res!20011 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!863))))

(declare-fun mapNonEmpty!1795 () Bool)

(declare-fun mapRes!1795 () Bool)

(declare-fun tp!4885 () Bool)

(assert (=> mapNonEmpty!1795 (= mapRes!1795 (and tp!4885 e!20931))))

(declare-fun mapKey!1795 () (_ BitVec 32))

(declare-fun mapRest!1795 () (Array (_ BitVec 32) ValueCell!554))

(declare-fun mapValue!1795 () ValueCell!554)

(assert (=> mapNonEmpty!1795 (= (arr!1064 _values!1501) (store mapRest!1795 mapKey!1795 mapValue!1795))))

(declare-fun mapIsEmpty!1795 () Bool)

(assert (=> mapIsEmpty!1795 mapRes!1795))

(declare-fun b!32951 () Bool)

(declare-fun res!20009 () Bool)

(assert (=> b!32951 (=> (not res!20009) (not e!20927))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2223 (_ BitVec 32)) Bool)

(assert (=> b!32951 (= res!20009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!32952 () Bool)

(declare-fun res!20013 () Bool)

(assert (=> b!32952 (=> (not res!20013) (not e!20927))))

(assert (=> b!32952 (= res!20013 (and (= (size!1165 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1164 _keys!1833) (size!1165 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!32953 () Bool)

(declare-fun res!20012 () Bool)

(assert (=> b!32953 (=> (not res!20012) (not e!20929))))

(declare-fun arrayContainsKey!0 (array!2223 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!32953 (= res!20012 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!32954 () Bool)

(declare-fun res!20014 () Bool)

(assert (=> b!32954 (=> (not res!20014) (not e!20927))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!32954 (= res!20014 (validKeyInArray!0 k!1304))))

(declare-fun b!32955 () Bool)

(assert (=> b!32955 (= e!20927 e!20929)))

(declare-fun res!20010 () Bool)

(assert (=> b!32955 (=> (not res!20010) (not e!20929))))

(assert (=> b!32955 (= res!20010 (not (contains!376 lt!11939 k!1304)))))

(declare-fun getCurrentListMap!262 (array!2223 array!2225 (_ BitVec 32) (_ BitVec 32) V!1835 V!1835 (_ BitVec 32) Int) ListLongMap!843)

(assert (=> b!32955 (= lt!11939 (getCurrentListMap!262 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!32956 () Bool)

(declare-fun e!20928 () Bool)

(declare-fun e!20932 () Bool)

(assert (=> b!32956 (= e!20928 (and e!20932 mapRes!1795))))

(declare-fun condMapEmpty!1795 () Bool)

(declare-fun mapDefault!1795 () ValueCell!554)

