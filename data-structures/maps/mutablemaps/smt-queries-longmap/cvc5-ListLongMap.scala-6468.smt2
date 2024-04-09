; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82676 () Bool)

(assert start!82676)

(declare-fun b_free!18781 () Bool)

(declare-fun b_next!18781 () Bool)

(assert (=> start!82676 (= b_free!18781 (not b_next!18781))))

(declare-fun tp!65463 () Bool)

(declare-fun b_and!30287 () Bool)

(assert (=> start!82676 (= tp!65463 b_and!30287)))

(declare-fun b!963309 () Bool)

(declare-fun res!644821 () Bool)

(declare-fun e!543191 () Bool)

(assert (=> b!963309 (=> (not res!644821) (not e!543191))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((array!59243 0))(
  ( (array!59244 (arr!28486 (Array (_ BitVec 32) (_ BitVec 64))) (size!28966 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59243)

(declare-datatypes ((V!33761 0))(
  ( (V!33762 (val!10842 Int)) )
))
(declare-fun minValue!1342 () V!33761)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-datatypes ((ValueCell!10310 0))(
  ( (ValueCellFull!10310 (v!13400 V!33761)) (EmptyCell!10310) )
))
(declare-datatypes ((array!59245 0))(
  ( (array!59246 (arr!28487 (Array (_ BitVec 32) ValueCell!10310)) (size!28967 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59245)

(declare-fun zeroValue!1342 () V!33761)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14010 0))(
  ( (tuple2!14011 (_1!7015 (_ BitVec 64)) (_2!7015 V!33761)) )
))
(declare-datatypes ((List!19893 0))(
  ( (Nil!19890) (Cons!19889 (h!21051 tuple2!14010) (t!28264 List!19893)) )
))
(declare-datatypes ((ListLongMap!12721 0))(
  ( (ListLongMap!12722 (toList!6376 List!19893)) )
))
(declare-fun contains!5430 (ListLongMap!12721 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3561 (array!59243 array!59245 (_ BitVec 32) (_ BitVec 32) V!33761 V!33761 (_ BitVec 32) Int) ListLongMap!12721)

(assert (=> b!963309 (= res!644821 (contains!5430 (getCurrentListMap!3561 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28486 _keys!1686) i!803)))))

(declare-fun b!963310 () Bool)

(declare-fun res!644826 () Bool)

(assert (=> b!963310 (=> (not res!644826) (not e!543191))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!963310 (= res!644826 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28966 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28966 _keys!1686))))))

(declare-fun b!963311 () Bool)

(declare-fun res!644824 () Bool)

(assert (=> b!963311 (=> (not res!644824) (not e!543191))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59243 (_ BitVec 32)) Bool)

(assert (=> b!963311 (= res!644824 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!963312 () Bool)

(declare-fun res!644828 () Bool)

(assert (=> b!963312 (=> (not res!644828) (not e!543191))))

(assert (=> b!963312 (= res!644828 (bvsgt from!2084 newFrom!159))))

(declare-fun b!963313 () Bool)

(declare-fun e!543193 () Bool)

(declare-fun e!543189 () Bool)

(declare-fun mapRes!34369 () Bool)

(assert (=> b!963313 (= e!543193 (and e!543189 mapRes!34369))))

(declare-fun condMapEmpty!34369 () Bool)

(declare-fun mapDefault!34369 () ValueCell!10310)

