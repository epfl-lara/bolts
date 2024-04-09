; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33662 () Bool)

(assert start!33662)

(declare-fun b_free!6889 () Bool)

(declare-fun b_next!6889 () Bool)

(assert (=> start!33662 (= b_free!6889 (not b_next!6889))))

(declare-fun tp!24170 () Bool)

(declare-fun b_and!14087 () Bool)

(assert (=> start!33662 (= tp!24170 b_and!14087)))

(declare-fun b!333970 () Bool)

(declare-fun res!184142 () Bool)

(declare-fun e!205039 () Bool)

(assert (=> b!333970 (=> (not res!184142) (not e!205039))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10099 0))(
  ( (V!10100 (val!3465 Int)) )
))
(declare-datatypes ((ValueCell!3077 0))(
  ( (ValueCellFull!3077 (v!5623 V!10099)) (EmptyCell!3077) )
))
(declare-datatypes ((array!17273 0))(
  ( (array!17274 (arr!8164 (Array (_ BitVec 32) ValueCell!3077)) (size!8516 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17273)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-datatypes ((array!17275 0))(
  ( (array!17276 (arr!8165 (Array (_ BitVec 32) (_ BitVec 64))) (size!8517 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17275)

(assert (=> b!333970 (= res!184142 (and (= (size!8516 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8517 _keys!1895) (size!8516 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!333971 () Bool)

(declare-fun e!205040 () Bool)

(declare-fun tp_is_empty!6841 () Bool)

(assert (=> b!333971 (= e!205040 tp_is_empty!6841)))

(declare-fun b!333972 () Bool)

(declare-fun res!184135 () Bool)

(assert (=> b!333972 (=> (not res!184135) (not e!205039))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10099)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10099)

(declare-datatypes ((tuple2!5036 0))(
  ( (tuple2!5037 (_1!2528 (_ BitVec 64)) (_2!2528 V!10099)) )
))
(declare-datatypes ((List!4677 0))(
  ( (Nil!4674) (Cons!4673 (h!5529 tuple2!5036) (t!9773 List!4677)) )
))
(declare-datatypes ((ListLongMap!3963 0))(
  ( (ListLongMap!3964 (toList!1997 List!4677)) )
))
(declare-fun contains!2037 (ListLongMap!3963 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1520 (array!17275 array!17273 (_ BitVec 32) (_ BitVec 32) V!10099 V!10099 (_ BitVec 32) Int) ListLongMap!3963)

(assert (=> b!333972 (= res!184135 (not (contains!2037 (getCurrentListMap!1520 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun mapNonEmpty!11658 () Bool)

(declare-fun mapRes!11658 () Bool)

(declare-fun tp!24171 () Bool)

(assert (=> mapNonEmpty!11658 (= mapRes!11658 (and tp!24171 e!205040))))

(declare-fun mapValue!11658 () ValueCell!3077)

(declare-fun mapKey!11658 () (_ BitVec 32))

(declare-fun mapRest!11658 () (Array (_ BitVec 32) ValueCell!3077))

(assert (=> mapNonEmpty!11658 (= (arr!8164 _values!1525) (store mapRest!11658 mapKey!11658 mapValue!11658))))

(declare-fun b!333973 () Bool)

(declare-fun res!184136 () Bool)

(assert (=> b!333973 (=> (not res!184136) (not e!205039))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17275 (_ BitVec 32)) Bool)

(assert (=> b!333973 (= res!184136 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!333975 () Bool)

(declare-fun e!205044 () Bool)

(assert (=> b!333975 (= e!205039 e!205044)))

(declare-fun res!184139 () Bool)

(assert (=> b!333975 (=> (not res!184139) (not e!205044))))

(declare-datatypes ((SeekEntryResult!3167 0))(
  ( (MissingZero!3167 (index!14847 (_ BitVec 32))) (Found!3167 (index!14848 (_ BitVec 32))) (Intermediate!3167 (undefined!3979 Bool) (index!14849 (_ BitVec 32)) (x!33304 (_ BitVec 32))) (Undefined!3167) (MissingVacant!3167 (index!14850 (_ BitVec 32))) )
))
(declare-fun lt!159435 () SeekEntryResult!3167)

(assert (=> b!333975 (= res!184139 (and (is-Found!3167 lt!159435) (= (select (arr!8165 _keys!1895) (index!14848 lt!159435)) k!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17275 (_ BitVec 32)) SeekEntryResult!3167)

(assert (=> b!333975 (= lt!159435 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!11658 () Bool)

(assert (=> mapIsEmpty!11658 mapRes!11658))

(declare-fun b!333976 () Bool)

(declare-fun res!184141 () Bool)

(assert (=> b!333976 (=> (not res!184141) (not e!205044))))

(declare-fun arrayContainsKey!0 (array!17275 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!333976 (= res!184141 (arrayContainsKey!0 _keys!1895 k!1348 (index!14848 lt!159435)))))

(declare-fun b!333974 () Bool)

(declare-fun res!184138 () Bool)

(assert (=> b!333974 (=> (not res!184138) (not e!205039))))

(declare-datatypes ((List!4678 0))(
  ( (Nil!4675) (Cons!4674 (h!5530 (_ BitVec 64)) (t!9774 List!4678)) )
))
(declare-fun arrayNoDuplicates!0 (array!17275 (_ BitVec 32) List!4678) Bool)

(assert (=> b!333974 (= res!184138 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4675))))

(declare-fun res!184137 () Bool)

(assert (=> start!33662 (=> (not res!184137) (not e!205039))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33662 (= res!184137 (validMask!0 mask!2385))))

(assert (=> start!33662 e!205039))

(assert (=> start!33662 true))

(assert (=> start!33662 tp_is_empty!6841))

(assert (=> start!33662 tp!24170))

(declare-fun e!205042 () Bool)

(declare-fun array_inv!6062 (array!17273) Bool)

(assert (=> start!33662 (and (array_inv!6062 _values!1525) e!205042)))

(declare-fun array_inv!6063 (array!17275) Bool)

(assert (=> start!33662 (array_inv!6063 _keys!1895)))

(declare-fun b!333977 () Bool)

(declare-fun res!184140 () Bool)

(assert (=> b!333977 (=> (not res!184140) (not e!205039))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!333977 (= res!184140 (validKeyInArray!0 k!1348))))

(declare-fun b!333978 () Bool)

(assert (=> b!333978 (= e!205044 (not true))))

(assert (=> b!333978 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!10388 0))(
  ( (Unit!10389) )
))
(declare-fun lt!159434 () Unit!10388)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17275 (_ BitVec 64) (_ BitVec 32)) Unit!10388)

(assert (=> b!333978 (= lt!159434 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k!1348 (index!14848 lt!159435)))))

(declare-fun b!333979 () Bool)

(declare-fun e!205041 () Bool)

(assert (=> b!333979 (= e!205042 (and e!205041 mapRes!11658))))

(declare-fun condMapEmpty!11658 () Bool)

(declare-fun mapDefault!11658 () ValueCell!3077)

