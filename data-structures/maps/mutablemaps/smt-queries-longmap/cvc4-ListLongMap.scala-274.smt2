; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4472 () Bool)

(assert start!4472)

(declare-fun b_free!1235 () Bool)

(declare-fun b_next!1235 () Bool)

(assert (=> start!4472 (= b_free!1235 (not b_next!1235))))

(declare-fun tp!5142 () Bool)

(declare-fun b_and!2059 () Bool)

(assert (=> start!4472 (= tp!5142 b_and!2059)))

(declare-fun b!34770 () Bool)

(declare-fun e!22014 () Bool)

(declare-fun tp_is_empty!1589 () Bool)

(assert (=> b!34770 (= e!22014 tp_is_empty!1589)))

(declare-fun b!34771 () Bool)

(declare-fun res!21103 () Bool)

(declare-fun e!22015 () Bool)

(assert (=> b!34771 (=> (not res!21103) (not e!22015))))

(declare-datatypes ((array!2383 0))(
  ( (array!2384 (arr!1139 (Array (_ BitVec 32) (_ BitVec 64))) (size!1240 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2383)

(declare-datatypes ((List!923 0))(
  ( (Nil!920) (Cons!919 (h!1486 (_ BitVec 64)) (t!3630 List!923)) )
))
(declare-fun arrayNoDuplicates!0 (array!2383 (_ BitVec 32) List!923) Bool)

(assert (=> b!34771 (= res!21103 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!920))))

(declare-fun b!34772 () Bool)

(declare-fun res!21106 () Bool)

(assert (=> b!34772 (=> (not res!21106) (not e!22015))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!34772 (= res!21106 (validKeyInArray!0 k!1304))))

(declare-fun b!34773 () Bool)

(declare-fun res!21104 () Bool)

(assert (=> b!34773 (=> (not res!21104) (not e!22015))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2383 (_ BitVec 32)) Bool)

(assert (=> b!34773 (= res!21104 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!34774 () Bool)

(declare-fun res!21101 () Bool)

(assert (=> b!34774 (=> (not res!21101) (not e!22015))))

(declare-datatypes ((V!1943 0))(
  ( (V!1944 (val!821 Int)) )
))
(declare-datatypes ((ValueCell!595 0))(
  ( (ValueCellFull!595 (v!1916 V!1943)) (EmptyCell!595) )
))
(declare-datatypes ((array!2385 0))(
  ( (array!2386 (arr!1140 (Array (_ BitVec 32) ValueCell!595)) (size!1241 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2385)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!34774 (= res!21101 (and (= (size!1241 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1240 _keys!1833) (size!1241 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!1930 () Bool)

(declare-fun mapRes!1930 () Bool)

(assert (=> mapIsEmpty!1930 mapRes!1930))

(declare-fun b!34775 () Bool)

(declare-fun res!21105 () Bool)

(assert (=> b!34775 (=> (not res!21105) (not e!22015))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1943)

(declare-fun minValue!1443 () V!1943)

(declare-datatypes ((tuple2!1318 0))(
  ( (tuple2!1319 (_1!669 (_ BitVec 64)) (_2!669 V!1943)) )
))
(declare-datatypes ((List!924 0))(
  ( (Nil!921) (Cons!920 (h!1487 tuple2!1318) (t!3631 List!924)) )
))
(declare-datatypes ((ListLongMap!899 0))(
  ( (ListLongMap!900 (toList!465 List!924)) )
))
(declare-fun contains!408 (ListLongMap!899 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!286 (array!2383 array!2385 (_ BitVec 32) (_ BitVec 32) V!1943 V!1943 (_ BitVec 32) Int) ListLongMap!899)

(assert (=> b!34775 (= res!21105 (not (contains!408 (getCurrentListMap!286 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!34776 () Bool)

(declare-fun e!22013 () Bool)

(assert (=> b!34776 (= e!22013 tp_is_empty!1589)))

(declare-fun b!34777 () Bool)

(declare-fun e!22016 () Bool)

(assert (=> b!34777 (= e!22016 (and e!22014 mapRes!1930))))

(declare-fun condMapEmpty!1930 () Bool)

(declare-fun mapDefault!1930 () ValueCell!595)

