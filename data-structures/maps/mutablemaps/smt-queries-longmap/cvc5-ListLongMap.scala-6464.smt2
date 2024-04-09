; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82652 () Bool)

(assert start!82652)

(declare-fun b_free!18757 () Bool)

(declare-fun b_next!18757 () Bool)

(assert (=> start!82652 (= b_free!18757 (not b_next!18757))))

(declare-fun tp!65392 () Bool)

(declare-fun b_and!30263 () Bool)

(assert (=> start!82652 (= tp!65392 b_and!30263)))

(declare-fun b!962913 () Bool)

(declare-fun e!543011 () Bool)

(assert (=> b!962913 (= e!543011 (not true))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33729 0))(
  ( (V!33730 (val!10830 Int)) )
))
(declare-datatypes ((ValueCell!10298 0))(
  ( (ValueCellFull!10298 (v!13388 V!33729)) (EmptyCell!10298) )
))
(declare-datatypes ((array!59195 0))(
  ( (array!59196 (arr!28462 (Array (_ BitVec 32) ValueCell!10298)) (size!28942 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59195)

(declare-datatypes ((array!59197 0))(
  ( (array!59198 (arr!28463 (Array (_ BitVec 32) (_ BitVec 64))) (size!28943 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59197)

(declare-fun minValue!1342 () V!33729)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33729)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!13992 0))(
  ( (tuple2!13993 (_1!7006 (_ BitVec 64)) (_2!7006 V!33729)) )
))
(declare-datatypes ((List!19875 0))(
  ( (Nil!19872) (Cons!19871 (h!21033 tuple2!13992) (t!28246 List!19875)) )
))
(declare-datatypes ((ListLongMap!12703 0))(
  ( (ListLongMap!12704 (toList!6367 List!19875)) )
))
(declare-fun contains!5421 (ListLongMap!12703 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3552 (array!59197 array!59195 (_ BitVec 32) (_ BitVec 32) V!33729 V!33729 (_ BitVec 32) Int) ListLongMap!12703)

(assert (=> b!962913 (contains!5421 (getCurrentListMap!3552 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28463 _keys!1686) i!803))))

(declare-datatypes ((Unit!32199 0))(
  ( (Unit!32200) )
))
(declare-fun lt!430884 () Unit!32199)

(declare-fun lemmaInListMapFromThenInFromMinusOne!8 (array!59197 array!59195 (_ BitVec 32) (_ BitVec 32) V!33729 V!33729 (_ BitVec 32) (_ BitVec 32) Int) Unit!32199)

(assert (=> b!962913 (= lt!430884 (lemmaInListMapFromThenInFromMinusOne!8 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!962915 () Bool)

(declare-fun res!644535 () Bool)

(assert (=> b!962915 (=> (not res!644535) (not e!543011))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!962915 (= res!644535 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28943 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28943 _keys!1686))))))

(declare-fun b!962916 () Bool)

(declare-fun e!543012 () Bool)

(declare-fun tp_is_empty!21559 () Bool)

(assert (=> b!962916 (= e!543012 tp_is_empty!21559)))

(declare-fun b!962917 () Bool)

(declare-fun res!644540 () Bool)

(assert (=> b!962917 (=> (not res!644540) (not e!543011))))

(assert (=> b!962917 (= res!644540 (contains!5421 (getCurrentListMap!3552 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28463 _keys!1686) i!803)))))

(declare-fun b!962918 () Bool)

(declare-fun res!644536 () Bool)

(assert (=> b!962918 (=> (not res!644536) (not e!543011))))

(declare-datatypes ((List!19876 0))(
  ( (Nil!19873) (Cons!19872 (h!21034 (_ BitVec 64)) (t!28247 List!19876)) )
))
(declare-fun arrayNoDuplicates!0 (array!59197 (_ BitVec 32) List!19876) Bool)

(assert (=> b!962918 (= res!644536 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19873))))

(declare-fun res!644534 () Bool)

(assert (=> start!82652 (=> (not res!644534) (not e!543011))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82652 (= res!644534 (validMask!0 mask!2110))))

(assert (=> start!82652 e!543011))

(assert (=> start!82652 true))

(declare-fun e!543010 () Bool)

(declare-fun array_inv!21977 (array!59195) Bool)

(assert (=> start!82652 (and (array_inv!21977 _values!1400) e!543010)))

(declare-fun array_inv!21978 (array!59197) Bool)

(assert (=> start!82652 (array_inv!21978 _keys!1686)))

(assert (=> start!82652 tp!65392))

(assert (=> start!82652 tp_is_empty!21559))

(declare-fun b!962914 () Bool)

(declare-fun res!644533 () Bool)

(assert (=> b!962914 (=> (not res!644533) (not e!543011))))

(assert (=> b!962914 (= res!644533 (bvsgt from!2084 newFrom!159))))

(declare-fun b!962919 () Bool)

(declare-fun mapRes!34333 () Bool)

(assert (=> b!962919 (= e!543010 (and e!543012 mapRes!34333))))

(declare-fun condMapEmpty!34333 () Bool)

(declare-fun mapDefault!34333 () ValueCell!10298)

