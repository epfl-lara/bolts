; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82944 () Bool)

(assert start!82944)

(declare-fun b_free!19043 () Bool)

(declare-fun b_next!19043 () Bool)

(assert (=> start!82944 (= b_free!19043 (not b_next!19043))))

(declare-fun tp!66258 () Bool)

(declare-fun b_and!30549 () Bool)

(assert (=> start!82944 (= tp!66258 b_and!30549)))

(declare-fun b!967398 () Bool)

(declare-fun res!647707 () Bool)

(declare-fun e!545284 () Bool)

(assert (=> b!967398 (=> (not res!647707) (not e!545284))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34117 0))(
  ( (V!34118 (val!10976 Int)) )
))
(declare-datatypes ((ValueCell!10444 0))(
  ( (ValueCellFull!10444 (v!13534 V!34117)) (EmptyCell!10444) )
))
(declare-datatypes ((array!59757 0))(
  ( (array!59758 (arr!28743 (Array (_ BitVec 32) ValueCell!10444)) (size!29223 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59757)

(declare-datatypes ((array!59759 0))(
  ( (array!59760 (arr!28744 (Array (_ BitVec 32) (_ BitVec 64))) (size!29224 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59759)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun minValue!1342 () V!34117)

(declare-fun zeroValue!1342 () V!34117)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14208 0))(
  ( (tuple2!14209 (_1!7114 (_ BitVec 64)) (_2!7114 V!34117)) )
))
(declare-datatypes ((List!20080 0))(
  ( (Nil!20077) (Cons!20076 (h!21238 tuple2!14208) (t!28451 List!20080)) )
))
(declare-datatypes ((ListLongMap!12919 0))(
  ( (ListLongMap!12920 (toList!6475 List!20080)) )
))
(declare-fun contains!5526 (ListLongMap!12919 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3660 (array!59759 array!59757 (_ BitVec 32) (_ BitVec 32) V!34117 V!34117 (_ BitVec 32) Int) ListLongMap!12919)

(assert (=> b!967398 (= res!647707 (contains!5526 (getCurrentListMap!3660 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28744 _keys!1686) i!803)))))

(declare-fun b!967399 () Bool)

(declare-fun e!545282 () Bool)

(declare-fun tp_is_empty!21851 () Bool)

(assert (=> b!967399 (= e!545282 tp_is_empty!21851)))

(declare-fun b!967400 () Bool)

(declare-fun res!647709 () Bool)

(assert (=> b!967400 (=> (not res!647709) (not e!545284))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!967400 (= res!647709 (validKeyInArray!0 (select (arr!28744 _keys!1686) i!803)))))

(declare-fun b!967401 () Bool)

(declare-fun res!647708 () Bool)

(assert (=> b!967401 (=> (not res!647708) (not e!545284))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!967401 (= res!647708 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29224 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29224 _keys!1686))))))

(declare-fun b!967402 () Bool)

(declare-fun res!647710 () Bool)

(assert (=> b!967402 (=> (not res!647710) (not e!545284))))

(assert (=> b!967402 (= res!647710 (bvsgt from!2084 newFrom!159))))

(declare-fun res!647711 () Bool)

(assert (=> start!82944 (=> (not res!647711) (not e!545284))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82944 (= res!647711 (validMask!0 mask!2110))))

(assert (=> start!82944 e!545284))

(assert (=> start!82944 true))

(declare-fun e!545283 () Bool)

(declare-fun array_inv!22147 (array!59757) Bool)

(assert (=> start!82944 (and (array_inv!22147 _values!1400) e!545283)))

(declare-fun array_inv!22148 (array!59759) Bool)

(assert (=> start!82944 (array_inv!22148 _keys!1686)))

(assert (=> start!82944 tp!66258))

(assert (=> start!82944 tp_is_empty!21851))

(declare-fun b!967403 () Bool)

(declare-fun res!647705 () Bool)

(assert (=> b!967403 (=> (not res!647705) (not e!545284))))

(declare-datatypes ((List!20081 0))(
  ( (Nil!20078) (Cons!20077 (h!21239 (_ BitVec 64)) (t!28452 List!20081)) )
))
(declare-fun arrayNoDuplicates!0 (array!59759 (_ BitVec 32) List!20081) Bool)

(assert (=> b!967403 (= res!647705 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20078))))

(declare-fun b!967404 () Bool)

(declare-fun res!647704 () Bool)

(assert (=> b!967404 (=> (not res!647704) (not e!545284))))

(assert (=> b!967404 (= res!647704 (and (= (size!29223 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29224 _keys!1686) (size!29223 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!967405 () Bool)

(assert (=> b!967405 (= e!545284 (not true))))

(assert (=> b!967405 (contains!5526 (getCurrentListMap!3660 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28744 _keys!1686) i!803))))

(declare-datatypes ((Unit!32301 0))(
  ( (Unit!32302) )
))
(declare-fun lt!431376 () Unit!32301)

(declare-fun lemmaInListMapFromThenInFromMinusOne!57 (array!59759 array!59757 (_ BitVec 32) (_ BitVec 32) V!34117 V!34117 (_ BitVec 32) (_ BitVec 32) Int) Unit!32301)

(assert (=> b!967405 (= lt!431376 (lemmaInListMapFromThenInFromMinusOne!57 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!967406 () Bool)

(declare-fun e!545281 () Bool)

(assert (=> b!967406 (= e!545281 tp_is_empty!21851)))

(declare-fun b!967407 () Bool)

(declare-fun mapRes!34771 () Bool)

(assert (=> b!967407 (= e!545283 (and e!545281 mapRes!34771))))

(declare-fun condMapEmpty!34771 () Bool)

(declare-fun mapDefault!34771 () ValueCell!10444)

