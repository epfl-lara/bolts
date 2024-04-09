; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82686 () Bool)

(assert start!82686)

(declare-fun b_free!18791 () Bool)

(declare-fun b_next!18791 () Bool)

(assert (=> start!82686 (= b_free!18791 (not b_next!18791))))

(declare-fun tp!65493 () Bool)

(declare-fun b_and!30297 () Bool)

(assert (=> start!82686 (= tp!65493 b_and!30297)))

(declare-fun b!963474 () Bool)

(declare-fun res!644943 () Bool)

(declare-fun e!543265 () Bool)

(assert (=> b!963474 (=> (not res!644943) (not e!543265))))

(declare-datatypes ((array!59261 0))(
  ( (array!59262 (arr!28495 (Array (_ BitVec 32) (_ BitVec 64))) (size!28975 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59261)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!963474 (= res!644943 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28975 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28975 _keys!1686))))))

(declare-fun b!963475 () Bool)

(declare-fun res!644948 () Bool)

(assert (=> b!963475 (=> (not res!644948) (not e!543265))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33773 0))(
  ( (V!33774 (val!10847 Int)) )
))
(declare-datatypes ((ValueCell!10315 0))(
  ( (ValueCellFull!10315 (v!13405 V!33773)) (EmptyCell!10315) )
))
(declare-datatypes ((array!59263 0))(
  ( (array!59264 (arr!28496 (Array (_ BitVec 32) ValueCell!10315)) (size!28976 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59263)

(declare-fun minValue!1342 () V!33773)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33773)

(declare-fun defaultEntry!1403 () Int)

(declare-datatypes ((tuple2!14018 0))(
  ( (tuple2!14019 (_1!7019 (_ BitVec 64)) (_2!7019 V!33773)) )
))
(declare-datatypes ((List!19900 0))(
  ( (Nil!19897) (Cons!19896 (h!21058 tuple2!14018) (t!28271 List!19900)) )
))
(declare-datatypes ((ListLongMap!12729 0))(
  ( (ListLongMap!12730 (toList!6380 List!19900)) )
))
(declare-fun contains!5434 (ListLongMap!12729 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3565 (array!59261 array!59263 (_ BitVec 32) (_ BitVec 32) V!33773 V!33773 (_ BitVec 32) Int) ListLongMap!12729)

(assert (=> b!963475 (= res!644948 (contains!5434 (getCurrentListMap!3565 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28495 _keys!1686) i!803)))))

(declare-fun b!963476 () Bool)

(declare-fun res!644945 () Bool)

(assert (=> b!963476 (=> (not res!644945) (not e!543265))))

(declare-datatypes ((List!19901 0))(
  ( (Nil!19898) (Cons!19897 (h!21059 (_ BitVec 64)) (t!28272 List!19901)) )
))
(declare-fun arrayNoDuplicates!0 (array!59261 (_ BitVec 32) List!19901) Bool)

(assert (=> b!963476 (= res!644945 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19898))))

(declare-fun b!963477 () Bool)

(declare-fun e!543267 () Bool)

(declare-fun e!543266 () Bool)

(declare-fun mapRes!34384 () Bool)

(assert (=> b!963477 (= e!543267 (and e!543266 mapRes!34384))))

(declare-fun condMapEmpty!34384 () Bool)

(declare-fun mapDefault!34384 () ValueCell!10315)

