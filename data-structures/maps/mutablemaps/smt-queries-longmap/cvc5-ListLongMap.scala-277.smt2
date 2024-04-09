; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4486 () Bool)

(assert start!4486)

(declare-fun b_free!1249 () Bool)

(declare-fun b_next!1249 () Bool)

(assert (=> start!4486 (= b_free!1249 (not b_next!1249))))

(declare-fun tp!5185 () Bool)

(declare-fun b_and!2073 () Bool)

(assert (=> start!4486 (= tp!5185 b_and!2073)))

(declare-fun mapNonEmpty!1951 () Bool)

(declare-fun mapRes!1951 () Bool)

(declare-fun tp!5184 () Bool)

(declare-fun e!22122 () Bool)

(assert (=> mapNonEmpty!1951 (= mapRes!1951 (and tp!5184 e!22122))))

(declare-datatypes ((V!1963 0))(
  ( (V!1964 (val!828 Int)) )
))
(declare-datatypes ((ValueCell!602 0))(
  ( (ValueCellFull!602 (v!1923 V!1963)) (EmptyCell!602) )
))
(declare-datatypes ((array!2411 0))(
  ( (array!2412 (arr!1153 (Array (_ BitVec 32) ValueCell!602)) (size!1254 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2411)

(declare-fun mapRest!1951 () (Array (_ BitVec 32) ValueCell!602))

(declare-fun mapKey!1951 () (_ BitVec 32))

(declare-fun mapValue!1951 () ValueCell!602)

(assert (=> mapNonEmpty!1951 (= (arr!1153 _values!1501) (store mapRest!1951 mapKey!1951 mapValue!1951))))

(declare-fun b!34980 () Bool)

(declare-fun res!21249 () Bool)

(declare-fun e!22121 () Bool)

(assert (=> b!34980 (=> (not res!21249) (not e!22121))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!2413 0))(
  ( (array!2414 (arr!1154 (Array (_ BitVec 32) (_ BitVec 64))) (size!1255 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2413)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!34980 (= res!21249 (and (= (size!1254 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1255 _keys!1833) (size!1254 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!34981 () Bool)

(declare-fun res!21251 () Bool)

(assert (=> b!34981 (=> (not res!21251) (not e!22121))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!2413 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!34981 (= res!21251 (not (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000)))))

(declare-fun b!34982 () Bool)

(declare-fun res!21250 () Bool)

(assert (=> b!34982 (=> (not res!21250) (not e!22121))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2413 (_ BitVec 32)) Bool)

(assert (=> b!34982 (= res!21250 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun res!21252 () Bool)

(assert (=> start!4486 (=> (not res!21252) (not e!22121))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4486 (= res!21252 (validMask!0 mask!2294))))

(assert (=> start!4486 e!22121))

(assert (=> start!4486 true))

(assert (=> start!4486 tp!5185))

(declare-fun e!22119 () Bool)

(declare-fun array_inv!763 (array!2411) Bool)

(assert (=> start!4486 (and (array_inv!763 _values!1501) e!22119)))

(declare-fun array_inv!764 (array!2413) Bool)

(assert (=> start!4486 (array_inv!764 _keys!1833)))

(declare-fun tp_is_empty!1603 () Bool)

(assert (=> start!4486 tp_is_empty!1603))

(declare-fun b!34983 () Bool)

(assert (=> b!34983 (= e!22122 tp_is_empty!1603)))

(declare-fun b!34984 () Bool)

(declare-fun res!21247 () Bool)

(assert (=> b!34984 (=> (not res!21247) (not e!22121))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1963)

(declare-fun minValue!1443 () V!1963)

(declare-datatypes ((tuple2!1328 0))(
  ( (tuple2!1329 (_1!674 (_ BitVec 64)) (_2!674 V!1963)) )
))
(declare-datatypes ((List!935 0))(
  ( (Nil!932) (Cons!931 (h!1498 tuple2!1328) (t!3642 List!935)) )
))
(declare-datatypes ((ListLongMap!909 0))(
  ( (ListLongMap!910 (toList!470 List!935)) )
))
(declare-fun contains!413 (ListLongMap!909 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!291 (array!2413 array!2411 (_ BitVec 32) (_ BitVec 32) V!1963 V!1963 (_ BitVec 32) Int) ListLongMap!909)

(assert (=> b!34984 (= res!21247 (not (contains!413 (getCurrentListMap!291 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!34985 () Bool)

(declare-fun res!21253 () Bool)

(assert (=> b!34985 (=> (not res!21253) (not e!22121))))

(declare-datatypes ((List!936 0))(
  ( (Nil!933) (Cons!932 (h!1499 (_ BitVec 64)) (t!3643 List!936)) )
))
(declare-fun arrayNoDuplicates!0 (array!2413 (_ BitVec 32) List!936) Bool)

(assert (=> b!34985 (= res!21253 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!933))))

(declare-fun mapIsEmpty!1951 () Bool)

(assert (=> mapIsEmpty!1951 mapRes!1951))

(declare-fun b!34986 () Bool)

(assert (=> b!34986 (= e!22121 false)))

(declare-datatypes ((SeekEntryResult!161 0))(
  ( (MissingZero!161 (index!2766 (_ BitVec 32))) (Found!161 (index!2767 (_ BitVec 32))) (Intermediate!161 (undefined!973 Bool) (index!2768 (_ BitVec 32)) (x!6979 (_ BitVec 32))) (Undefined!161) (MissingVacant!161 (index!2769 (_ BitVec 32))) )
))
(declare-fun lt!12841 () SeekEntryResult!161)

(declare-fun seekEntry!0 ((_ BitVec 64) array!2413 (_ BitVec 32)) SeekEntryResult!161)

(assert (=> b!34986 (= lt!12841 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!34987 () Bool)

(declare-fun e!22120 () Bool)

(assert (=> b!34987 (= e!22119 (and e!22120 mapRes!1951))))

(declare-fun condMapEmpty!1951 () Bool)

(declare-fun mapDefault!1951 () ValueCell!602)

