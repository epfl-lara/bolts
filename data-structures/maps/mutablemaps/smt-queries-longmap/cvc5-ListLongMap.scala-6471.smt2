; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82694 () Bool)

(assert start!82694)

(declare-fun b_free!18799 () Bool)

(declare-fun b_next!18799 () Bool)

(assert (=> start!82694 (= b_free!18799 (not b_next!18799))))

(declare-fun tp!65517 () Bool)

(declare-fun b_and!30305 () Bool)

(assert (=> start!82694 (= tp!65517 b_and!30305)))

(declare-fun b!963607 () Bool)

(declare-fun res!645044 () Bool)

(declare-fun e!543327 () Bool)

(assert (=> b!963607 (=> (not res!645044) (not e!543327))))

(declare-datatypes ((array!59277 0))(
  ( (array!59278 (arr!28503 (Array (_ BitVec 32) (_ BitVec 64))) (size!28983 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59277)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!963607 (= res!645044 (validKeyInArray!0 (select (arr!28503 _keys!1686) i!803)))))

(declare-fun b!963608 () Bool)

(declare-fun res!645042 () Bool)

(assert (=> b!963608 (=> (not res!645042) (not e!543327))))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!963608 (= res!645042 (bvsgt from!2084 newFrom!159))))

(declare-fun b!963609 () Bool)

(assert (=> b!963609 (= e!543327 (not true))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33785 0))(
  ( (V!33786 (val!10851 Int)) )
))
(declare-datatypes ((ValueCell!10319 0))(
  ( (ValueCellFull!10319 (v!13409 V!33785)) (EmptyCell!10319) )
))
(declare-datatypes ((array!59279 0))(
  ( (array!59280 (arr!28504 (Array (_ BitVec 32) ValueCell!10319)) (size!28984 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59279)

(declare-fun minValue!1342 () V!33785)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33785)

(declare-datatypes ((tuple2!14024 0))(
  ( (tuple2!14025 (_1!7022 (_ BitVec 64)) (_2!7022 V!33785)) )
))
(declare-datatypes ((List!19906 0))(
  ( (Nil!19903) (Cons!19902 (h!21064 tuple2!14024) (t!28277 List!19906)) )
))
(declare-datatypes ((ListLongMap!12735 0))(
  ( (ListLongMap!12736 (toList!6383 List!19906)) )
))
(declare-fun contains!5437 (ListLongMap!12735 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3568 (array!59277 array!59279 (_ BitVec 32) (_ BitVec 32) V!33785 V!33785 (_ BitVec 32) Int) ListLongMap!12735)

(assert (=> b!963609 (contains!5437 (getCurrentListMap!3568 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28503 _keys!1686) i!803))))

(declare-datatypes ((Unit!32223 0))(
  ( (Unit!32224) )
))
(declare-fun lt!430947 () Unit!32223)

(declare-fun lemmaInListMapFromThenInFromMinusOne!20 (array!59277 array!59279 (_ BitVec 32) (_ BitVec 32) V!33785 V!33785 (_ BitVec 32) (_ BitVec 32) Int) Unit!32223)

(assert (=> b!963609 (= lt!430947 (lemmaInListMapFromThenInFromMinusOne!20 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!963610 () Bool)

(declare-fun res!645043 () Bool)

(assert (=> b!963610 (=> (not res!645043) (not e!543327))))

(assert (=> b!963610 (= res!645043 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28983 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28983 _keys!1686))))))

(declare-fun b!963611 () Bool)

(declare-fun res!645039 () Bool)

(assert (=> b!963611 (=> (not res!645039) (not e!543327))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59277 (_ BitVec 32)) Bool)

(assert (=> b!963611 (= res!645039 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!963612 () Bool)

(declare-fun e!543326 () Bool)

(declare-fun tp_is_empty!21601 () Bool)

(assert (=> b!963612 (= e!543326 tp_is_empty!21601)))

(declare-fun mapIsEmpty!34396 () Bool)

(declare-fun mapRes!34396 () Bool)

(assert (=> mapIsEmpty!34396 mapRes!34396))

(declare-fun b!963613 () Bool)

(declare-fun e!543325 () Bool)

(assert (=> b!963613 (= e!543325 (and e!543326 mapRes!34396))))

(declare-fun condMapEmpty!34396 () Bool)

(declare-fun mapDefault!34396 () ValueCell!10319)

