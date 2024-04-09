; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82982 () Bool)

(assert start!82982)

(declare-fun b_free!19081 () Bool)

(declare-fun b_next!19081 () Bool)

(assert (=> start!82982 (= b_free!19081 (not b_next!19081))))

(declare-fun tp!66372 () Bool)

(declare-fun b_and!30587 () Bool)

(assert (=> start!82982 (= tp!66372 b_and!30587)))

(declare-fun b!968036 () Bool)

(declare-fun res!648178 () Bool)

(declare-fun e!545579 () Bool)

(assert (=> b!968036 (=> (not res!648178) (not e!545579))))

(declare-datatypes ((array!59829 0))(
  ( (array!59830 (arr!28779 (Array (_ BitVec 32) (_ BitVec 64))) (size!29259 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59829)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!968036 (= res!648178 (validKeyInArray!0 (select (arr!28779 _keys!1686) i!803)))))

(declare-fun mapNonEmpty!34828 () Bool)

(declare-fun mapRes!34828 () Bool)

(declare-fun tp!66373 () Bool)

(declare-fun e!545577 () Bool)

(assert (=> mapNonEmpty!34828 (= mapRes!34828 (and tp!66373 e!545577))))

(declare-datatypes ((V!34169 0))(
  ( (V!34170 (val!10995 Int)) )
))
(declare-datatypes ((ValueCell!10463 0))(
  ( (ValueCellFull!10463 (v!13553 V!34169)) (EmptyCell!10463) )
))
(declare-fun mapValue!34828 () ValueCell!10463)

(declare-fun mapKey!34828 () (_ BitVec 32))

(declare-datatypes ((array!59831 0))(
  ( (array!59832 (arr!28780 (Array (_ BitVec 32) ValueCell!10463)) (size!29260 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59831)

(declare-fun mapRest!34828 () (Array (_ BitVec 32) ValueCell!10463))

(assert (=> mapNonEmpty!34828 (= (arr!28780 _values!1400) (store mapRest!34828 mapKey!34828 mapValue!34828))))

(declare-fun b!968037 () Bool)

(declare-fun e!545578 () Bool)

(assert (=> b!968037 (= e!545579 (not e!545578))))

(declare-fun res!648179 () Bool)

(assert (=> b!968037 (=> res!648179 e!545578)))

(declare-fun from!2084 () (_ BitVec 32))

(assert (=> b!968037 (= res!648179 (or (bvslt (bvsub from!2084 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub from!2084 #b00000000000000000000000000000001) (size!29259 _keys!1686)) (bvslt i!803 (bvsub from!2084 #b00000000000000000000000000000001))))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun minValue!1342 () V!34169)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!34169)

(declare-datatypes ((tuple2!14236 0))(
  ( (tuple2!14237 (_1!7128 (_ BitVec 64)) (_2!7128 V!34169)) )
))
(declare-datatypes ((List!20107 0))(
  ( (Nil!20104) (Cons!20103 (h!21265 tuple2!14236) (t!28478 List!20107)) )
))
(declare-datatypes ((ListLongMap!12947 0))(
  ( (ListLongMap!12948 (toList!6489 List!20107)) )
))
(declare-fun contains!5540 (ListLongMap!12947 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3674 (array!59829 array!59831 (_ BitVec 32) (_ BitVec 32) V!34169 V!34169 (_ BitVec 32) Int) ListLongMap!12947)

(assert (=> b!968037 (contains!5540 (getCurrentListMap!3674 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28779 _keys!1686) i!803))))

(declare-datatypes ((Unit!32327 0))(
  ( (Unit!32328) )
))
(declare-fun lt!431444 () Unit!32327)

(declare-fun lemmaInListMapFromThenInFromMinusOne!70 (array!59829 array!59831 (_ BitVec 32) (_ BitVec 32) V!34169 V!34169 (_ BitVec 32) (_ BitVec 32) Int) Unit!32327)

(assert (=> b!968037 (= lt!431444 (lemmaInListMapFromThenInFromMinusOne!70 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!968038 () Bool)

(declare-fun res!648176 () Bool)

(assert (=> b!968038 (=> (not res!648176) (not e!545579))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!968038 (= res!648176 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29259 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29259 _keys!1686))))))

(declare-fun mapIsEmpty!34828 () Bool)

(assert (=> mapIsEmpty!34828 mapRes!34828))

(declare-fun b!968039 () Bool)

(declare-fun res!648173 () Bool)

(assert (=> b!968039 (=> (not res!648173) (not e!545579))))

(declare-datatypes ((List!20108 0))(
  ( (Nil!20105) (Cons!20104 (h!21266 (_ BitVec 64)) (t!28479 List!20108)) )
))
(declare-fun arrayNoDuplicates!0 (array!59829 (_ BitVec 32) List!20108) Bool)

(assert (=> b!968039 (= res!648173 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20105))))

(declare-fun res!648171 () Bool)

(assert (=> start!82982 (=> (not res!648171) (not e!545579))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82982 (= res!648171 (validMask!0 mask!2110))))

(assert (=> start!82982 e!545579))

(assert (=> start!82982 true))

(declare-fun e!545576 () Bool)

(declare-fun array_inv!22177 (array!59831) Bool)

(assert (=> start!82982 (and (array_inv!22177 _values!1400) e!545576)))

(declare-fun array_inv!22178 (array!59829) Bool)

(assert (=> start!82982 (array_inv!22178 _keys!1686)))

(assert (=> start!82982 tp!66372))

(declare-fun tp_is_empty!21889 () Bool)

(assert (=> start!82982 tp_is_empty!21889))

(declare-fun b!968040 () Bool)

(declare-fun res!648175 () Bool)

(assert (=> b!968040 (=> (not res!648175) (not e!545579))))

(assert (=> b!968040 (= res!648175 (contains!5540 (getCurrentListMap!3674 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28779 _keys!1686) i!803)))))

(declare-fun b!968041 () Bool)

(declare-fun e!545581 () Bool)

(assert (=> b!968041 (= e!545581 tp_is_empty!21889)))

(declare-fun b!968042 () Bool)

(assert (=> b!968042 (= e!545577 tp_is_empty!21889)))

(declare-fun b!968043 () Bool)

(declare-fun res!648172 () Bool)

(assert (=> b!968043 (=> (not res!648172) (not e!545579))))

(assert (=> b!968043 (= res!648172 (and (= (size!29260 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29259 _keys!1686) (size!29260 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!968044 () Bool)

(assert (=> b!968044 (= e!545578 true)))

(assert (=> b!968044 (contains!5540 (getCurrentListMap!3674 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 newFrom!159 defaultEntry!1403) (select (arr!28779 _keys!1686) i!803))))

(declare-fun lt!431445 () Unit!32327)

(declare-fun lemmaInListMapFromThenInFromSmaller!35 (array!59829 array!59831 (_ BitVec 32) (_ BitVec 32) V!34169 V!34169 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32327)

(assert (=> b!968044 (= lt!431445 (lemmaInListMapFromThenInFromSmaller!35 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) newFrom!159 i!803 defaultEntry!1403))))

(declare-fun b!968045 () Bool)

(assert (=> b!968045 (= e!545576 (and e!545581 mapRes!34828))))

(declare-fun condMapEmpty!34828 () Bool)

(declare-fun mapDefault!34828 () ValueCell!10463)

