; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82718 () Bool)

(assert start!82718)

(declare-fun b_free!18823 () Bool)

(declare-fun b_next!18823 () Bool)

(assert (=> start!82718 (= b_free!18823 (not b_next!18823))))

(declare-fun tp!65590 () Bool)

(declare-fun b_and!30329 () Bool)

(assert (=> start!82718 (= tp!65590 b_and!30329)))

(declare-fun b!964022 () Bool)

(declare-fun e!543527 () Bool)

(declare-fun e!543528 () Bool)

(assert (=> b!964022 (= e!543527 (not e!543528))))

(declare-fun res!645351 () Bool)

(assert (=> b!964022 (=> res!645351 e!543528)))

(declare-datatypes ((array!59325 0))(
  ( (array!59326 (arr!28527 (Array (_ BitVec 32) (_ BitVec 64))) (size!29007 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59325)

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!964022 (= res!645351 (or (bvslt (bvsub from!2084 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub from!2084 #b00000000000000000000000000000001) (size!29007 _keys!1686)) (bvslt i!803 (bvsub from!2084 #b00000000000000000000000000000001))))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33817 0))(
  ( (V!33818 (val!10863 Int)) )
))
(declare-datatypes ((ValueCell!10331 0))(
  ( (ValueCellFull!10331 (v!13421 V!33817)) (EmptyCell!10331) )
))
(declare-datatypes ((array!59327 0))(
  ( (array!59328 (arr!28528 (Array (_ BitVec 32) ValueCell!10331)) (size!29008 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59327)

(declare-fun minValue!1342 () V!33817)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33817)

(declare-datatypes ((tuple2!14044 0))(
  ( (tuple2!14045 (_1!7032 (_ BitVec 64)) (_2!7032 V!33817)) )
))
(declare-datatypes ((List!19922 0))(
  ( (Nil!19919) (Cons!19918 (h!21080 tuple2!14044) (t!28293 List!19922)) )
))
(declare-datatypes ((ListLongMap!12755 0))(
  ( (ListLongMap!12756 (toList!6393 List!19922)) )
))
(declare-fun contains!5447 (ListLongMap!12755 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3578 (array!59325 array!59327 (_ BitVec 32) (_ BitVec 32) V!33817 V!33817 (_ BitVec 32) Int) ListLongMap!12755)

(assert (=> b!964022 (contains!5447 (getCurrentListMap!3578 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28527 _keys!1686) i!803))))

(declare-datatypes ((Unit!32241 0))(
  ( (Unit!32242) )
))
(declare-fun lt!431003 () Unit!32241)

(declare-fun lemmaInListMapFromThenInFromMinusOne!29 (array!59325 array!59327 (_ BitVec 32) (_ BitVec 32) V!33817 V!33817 (_ BitVec 32) (_ BitVec 32) Int) Unit!32241)

(assert (=> b!964022 (= lt!431003 (lemmaInListMapFromThenInFromMinusOne!29 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!964023 () Bool)

(assert (=> b!964023 (= e!543528 true)))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!964023 (contains!5447 (getCurrentListMap!3578 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 newFrom!159 defaultEntry!1403) (select (arr!28527 _keys!1686) i!803))))

(declare-fun lt!431004 () Unit!32241)

(declare-fun lemmaInListMapFromThenInFromSmaller!21 (array!59325 array!59327 (_ BitVec 32) (_ BitVec 32) V!33817 V!33817 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32241)

(assert (=> b!964023 (= lt!431004 (lemmaInListMapFromThenInFromSmaller!21 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) newFrom!159 i!803 defaultEntry!1403))))

(declare-fun b!964024 () Bool)

(declare-fun res!645349 () Bool)

(assert (=> b!964024 (=> (not res!645349) (not e!543527))))

(assert (=> b!964024 (= res!645349 (bvsgt from!2084 newFrom!159))))

(declare-fun res!645350 () Bool)

(assert (=> start!82718 (=> (not res!645350) (not e!543527))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82718 (= res!645350 (validMask!0 mask!2110))))

(assert (=> start!82718 e!543527))

(assert (=> start!82718 true))

(declare-fun e!543525 () Bool)

(declare-fun array_inv!22009 (array!59327) Bool)

(assert (=> start!82718 (and (array_inv!22009 _values!1400) e!543525)))

(declare-fun array_inv!22010 (array!59325) Bool)

(assert (=> start!82718 (array_inv!22010 _keys!1686)))

(assert (=> start!82718 tp!65590))

(declare-fun tp_is_empty!21625 () Bool)

(assert (=> start!82718 tp_is_empty!21625))

(declare-fun b!964025 () Bool)

(declare-fun res!645348 () Bool)

(assert (=> b!964025 (=> (not res!645348) (not e!543527))))

(assert (=> b!964025 (= res!645348 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29007 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29007 _keys!1686))))))

(declare-fun b!964026 () Bool)

(declare-fun res!645353 () Bool)

(assert (=> b!964026 (=> (not res!645353) (not e!543527))))

(declare-datatypes ((List!19923 0))(
  ( (Nil!19920) (Cons!19919 (h!21081 (_ BitVec 64)) (t!28294 List!19923)) )
))
(declare-fun arrayNoDuplicates!0 (array!59325 (_ BitVec 32) List!19923) Bool)

(assert (=> b!964026 (= res!645353 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19920))))

(declare-fun b!964027 () Bool)

(declare-fun res!645352 () Bool)

(assert (=> b!964027 (=> (not res!645352) (not e!543527))))

(assert (=> b!964027 (= res!645352 (and (= (size!29008 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29007 _keys!1686) (size!29008 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!964028 () Bool)

(declare-fun e!543524 () Bool)

(declare-fun mapRes!34432 () Bool)

(assert (=> b!964028 (= e!543525 (and e!543524 mapRes!34432))))

(declare-fun condMapEmpty!34432 () Bool)

(declare-fun mapDefault!34432 () ValueCell!10331)

