; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82976 () Bool)

(assert start!82976)

(declare-fun b_free!19075 () Bool)

(declare-fun b_next!19075 () Bool)

(assert (=> start!82976 (= b_free!19075 (not b_next!19075))))

(declare-fun tp!66354 () Bool)

(declare-fun b_and!30581 () Bool)

(assert (=> start!82976 (= tp!66354 b_and!30581)))

(declare-fun mapIsEmpty!34819 () Bool)

(declare-fun mapRes!34819 () Bool)

(assert (=> mapIsEmpty!34819 mapRes!34819))

(declare-fun b!967928 () Bool)

(declare-fun e!545524 () Bool)

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!967928 (= e!545524 (bvsge i!803 #b00000000000000000000000000000000))))

(declare-datatypes ((V!34161 0))(
  ( (V!34162 (val!10992 Int)) )
))
(declare-datatypes ((ValueCell!10460 0))(
  ( (ValueCellFull!10460 (v!13550 V!34161)) (EmptyCell!10460) )
))
(declare-datatypes ((array!59817 0))(
  ( (array!59818 (arr!28773 (Array (_ BitVec 32) ValueCell!10460)) (size!29253 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59817)

(declare-datatypes ((array!59819 0))(
  ( (array!59820 (arr!28774 (Array (_ BitVec 32) (_ BitVec 64))) (size!29254 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59819)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!34161)

(declare-fun defaultEntry!1403 () Int)

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun minValue!1342 () V!34161)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-datatypes ((tuple2!14230 0))(
  ( (tuple2!14231 (_1!7125 (_ BitVec 64)) (_2!7125 V!34161)) )
))
(declare-datatypes ((List!20103 0))(
  ( (Nil!20100) (Cons!20099 (h!21261 tuple2!14230) (t!28474 List!20103)) )
))
(declare-datatypes ((ListLongMap!12941 0))(
  ( (ListLongMap!12942 (toList!6486 List!20103)) )
))
(declare-fun contains!5537 (ListLongMap!12941 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3671 (array!59819 array!59817 (_ BitVec 32) (_ BitVec 32) V!34161 V!34161 (_ BitVec 32) Int) ListLongMap!12941)

(assert (=> b!967928 (contains!5537 (getCurrentListMap!3671 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 newFrom!159 defaultEntry!1403) (select (arr!28774 _keys!1686) i!803))))

(declare-datatypes ((Unit!32321 0))(
  ( (Unit!32322) )
))
(declare-fun lt!431427 () Unit!32321)

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun lemmaInListMapFromThenInFromSmaller!32 (array!59819 array!59817 (_ BitVec 32) (_ BitVec 32) V!34161 V!34161 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32321)

(assert (=> b!967928 (= lt!431427 (lemmaInListMapFromThenInFromSmaller!32 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) newFrom!159 i!803 defaultEntry!1403))))

(declare-fun b!967929 () Bool)

(declare-fun e!545526 () Bool)

(assert (=> b!967929 (= e!545526 (not e!545524))))

(declare-fun res!648093 () Bool)

(assert (=> b!967929 (=> res!648093 e!545524)))

(assert (=> b!967929 (= res!648093 (or (bvslt (bvsub from!2084 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub from!2084 #b00000000000000000000000000000001) (size!29254 _keys!1686)) (bvslt i!803 (bvsub from!2084 #b00000000000000000000000000000001))))))

(assert (=> b!967929 (contains!5537 (getCurrentListMap!3671 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28774 _keys!1686) i!803))))

(declare-fun lt!431426 () Unit!32321)

(declare-fun lemmaInListMapFromThenInFromMinusOne!67 (array!59819 array!59817 (_ BitVec 32) (_ BitVec 32) V!34161 V!34161 (_ BitVec 32) (_ BitVec 32) Int) Unit!32321)

(assert (=> b!967929 (= lt!431426 (lemmaInListMapFromThenInFromMinusOne!67 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!967930 () Bool)

(declare-fun res!648095 () Bool)

(assert (=> b!967930 (=> (not res!648095) (not e!545526))))

(assert (=> b!967930 (= res!648095 (and (= (size!29253 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29254 _keys!1686) (size!29253 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun res!648091 () Bool)

(assert (=> start!82976 (=> (not res!648091) (not e!545526))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82976 (= res!648091 (validMask!0 mask!2110))))

(assert (=> start!82976 e!545526))

(assert (=> start!82976 true))

(declare-fun e!545527 () Bool)

(declare-fun array_inv!22171 (array!59817) Bool)

(assert (=> start!82976 (and (array_inv!22171 _values!1400) e!545527)))

(declare-fun array_inv!22172 (array!59819) Bool)

(assert (=> start!82976 (array_inv!22172 _keys!1686)))

(assert (=> start!82976 tp!66354))

(declare-fun tp_is_empty!21883 () Bool)

(assert (=> start!82976 tp_is_empty!21883))

(declare-fun b!967931 () Bool)

(declare-fun res!648090 () Bool)

(assert (=> b!967931 (=> (not res!648090) (not e!545526))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59819 (_ BitVec 32)) Bool)

(assert (=> b!967931 (= res!648090 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!967932 () Bool)

(declare-fun res!648098 () Bool)

(assert (=> b!967932 (=> (not res!648098) (not e!545526))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!967932 (= res!648098 (validKeyInArray!0 (select (arr!28774 _keys!1686) i!803)))))

(declare-fun b!967933 () Bool)

(declare-fun e!545523 () Bool)

(assert (=> b!967933 (= e!545527 (and e!545523 mapRes!34819))))

(declare-fun condMapEmpty!34819 () Bool)

(declare-fun mapDefault!34819 () ValueCell!10460)

