; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4284 () Bool)

(assert start!4284)

(declare-fun b_free!1151 () Bool)

(declare-fun b_next!1151 () Bool)

(assert (=> start!4284 (= b_free!1151 (not b_next!1151))))

(declare-fun tp!4878 () Bool)

(declare-fun b_and!1967 () Bool)

(assert (=> start!4284 (= tp!4878 b_and!1967)))

(declare-fun b!32917 () Bool)

(declare-fun res!19992 () Bool)

(declare-fun e!20911 () Bool)

(assert (=> b!32917 (=> (not res!19992) (not e!20911))))

(declare-datatypes ((V!1831 0))(
  ( (V!1832 (val!779 Int)) )
))
(declare-datatypes ((ValueCell!553 0))(
  ( (ValueCellFull!553 (v!1870 V!1831)) (EmptyCell!553) )
))
(declare-datatypes ((array!2219 0))(
  ( (array!2220 (arr!1061 (Array (_ BitVec 32) ValueCell!553)) (size!1162 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2219)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!2221 0))(
  ( (array!2222 (arr!1062 (Array (_ BitVec 32) (_ BitVec 64))) (size!1163 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2221)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!32917 (= res!19992 (and (= (size!1162 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1163 _keys!1833) (size!1162 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!32918 () Bool)

(declare-fun res!19987 () Bool)

(assert (=> b!32918 (=> (not res!19987) (not e!20911))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2221 (_ BitVec 32)) Bool)

(assert (=> b!32918 (= res!19987 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!32919 () Bool)

(declare-fun e!20914 () Bool)

(assert (=> b!32919 (= e!20911 e!20914)))

(declare-fun res!19993 () Bool)

(assert (=> b!32919 (=> (not res!19993) (not e!20914))))

(declare-datatypes ((tuple2!1260 0))(
  ( (tuple2!1261 (_1!640 (_ BitVec 64)) (_2!640 V!1831)) )
))
(declare-datatypes ((List!863 0))(
  ( (Nil!860) (Cons!859 (h!1426 tuple2!1260) (t!3562 List!863)) )
))
(declare-datatypes ((ListLongMap!841 0))(
  ( (ListLongMap!842 (toList!436 List!863)) )
))
(declare-fun lt!11930 () ListLongMap!841)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun contains!375 (ListLongMap!841 (_ BitVec 64)) Bool)

(assert (=> b!32919 (= res!19993 (not (contains!375 lt!11930 k!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1831)

(declare-fun minValue!1443 () V!1831)

(declare-fun getCurrentListMap!261 (array!2221 array!2219 (_ BitVec 32) (_ BitVec 32) V!1831 V!1831 (_ BitVec 32) Int) ListLongMap!841)

(assert (=> b!32919 (= lt!11930 (getCurrentListMap!261 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!32920 () Bool)

(declare-fun res!19988 () Bool)

(assert (=> b!32920 (=> (not res!19988) (not e!20911))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!32920 (= res!19988 (validKeyInArray!0 k!1304))))

(declare-fun b!32921 () Bool)

(declare-fun res!19989 () Bool)

(assert (=> b!32921 (=> (not res!19989) (not e!20914))))

(declare-fun arrayContainsKey!0 (array!2221 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!32921 (= res!19989 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!32922 () Bool)

(declare-fun res!19990 () Bool)

(assert (=> b!32922 (=> (not res!19990) (not e!20911))))

(declare-datatypes ((List!864 0))(
  ( (Nil!861) (Cons!860 (h!1427 (_ BitVec 64)) (t!3563 List!864)) )
))
(declare-fun arrayNoDuplicates!0 (array!2221 (_ BitVec 32) List!864) Bool)

(assert (=> b!32922 (= res!19990 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!861))))

(declare-fun mapIsEmpty!1792 () Bool)

(declare-fun mapRes!1792 () Bool)

(assert (=> mapIsEmpty!1792 mapRes!1792))

(declare-fun b!32923 () Bool)

(assert (=> b!32923 (= e!20914 (not true))))

(declare-fun lt!11931 () (_ BitVec 32))

(assert (=> b!32923 (contains!375 lt!11930 (select (arr!1062 _keys!1833) lt!11931))))

(declare-datatypes ((Unit!725 0))(
  ( (Unit!726) )
))
(declare-fun lt!11929 () Unit!725)

(declare-fun lemmaValidKeyInArrayIsInListMap!50 (array!2221 array!2219 (_ BitVec 32) (_ BitVec 32) V!1831 V!1831 (_ BitVec 32) Int) Unit!725)

(assert (=> b!32923 (= lt!11929 (lemmaValidKeyInArrayIsInListMap!50 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!11931 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!2221 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!32923 (= lt!11931 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun res!19991 () Bool)

(assert (=> start!4284 (=> (not res!19991) (not e!20911))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4284 (= res!19991 (validMask!0 mask!2294))))

(assert (=> start!4284 e!20911))

(assert (=> start!4284 true))

(assert (=> start!4284 tp!4878))

(declare-fun e!20913 () Bool)

(declare-fun array_inv!707 (array!2219) Bool)

(assert (=> start!4284 (and (array_inv!707 _values!1501) e!20913)))

(declare-fun array_inv!708 (array!2221) Bool)

(assert (=> start!4284 (array_inv!708 _keys!1833)))

(declare-fun tp_is_empty!1505 () Bool)

(assert (=> start!4284 tp_is_empty!1505))

(declare-fun b!32924 () Bool)

(declare-fun e!20910 () Bool)

(assert (=> b!32924 (= e!20913 (and e!20910 mapRes!1792))))

(declare-fun condMapEmpty!1792 () Bool)

(declare-fun mapDefault!1792 () ValueCell!553)

