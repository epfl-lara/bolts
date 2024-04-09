; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82656 () Bool)

(assert start!82656)

(declare-fun b_free!18761 () Bool)

(declare-fun b_next!18761 () Bool)

(assert (=> start!82656 (= b_free!18761 (not b_next!18761))))

(declare-fun tp!65404 () Bool)

(declare-fun b_and!30267 () Bool)

(assert (=> start!82656 (= tp!65404 b_and!30267)))

(declare-fun b!962979 () Bool)

(declare-fun e!543042 () Bool)

(assert (=> b!962979 (= e!543042 (not true))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33733 0))(
  ( (V!33734 (val!10832 Int)) )
))
(declare-datatypes ((ValueCell!10300 0))(
  ( (ValueCellFull!10300 (v!13390 V!33733)) (EmptyCell!10300) )
))
(declare-datatypes ((array!59203 0))(
  ( (array!59204 (arr!28466 (Array (_ BitVec 32) ValueCell!10300)) (size!28946 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59203)

(declare-datatypes ((array!59205 0))(
  ( (array!59206 (arr!28467 (Array (_ BitVec 32) (_ BitVec 64))) (size!28947 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59205)

(declare-fun minValue!1342 () V!33733)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33733)

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-datatypes ((tuple2!13996 0))(
  ( (tuple2!13997 (_1!7008 (_ BitVec 64)) (_2!7008 V!33733)) )
))
(declare-datatypes ((List!19879 0))(
  ( (Nil!19876) (Cons!19875 (h!21037 tuple2!13996) (t!28250 List!19879)) )
))
(declare-datatypes ((ListLongMap!12707 0))(
  ( (ListLongMap!12708 (toList!6369 List!19879)) )
))
(declare-fun contains!5423 (ListLongMap!12707 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3554 (array!59205 array!59203 (_ BitVec 32) (_ BitVec 32) V!33733 V!33733 (_ BitVec 32) Int) ListLongMap!12707)

(assert (=> b!962979 (contains!5423 (getCurrentListMap!3554 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28467 _keys!1686) i!803))))

(declare-datatypes ((Unit!32203 0))(
  ( (Unit!32204) )
))
(declare-fun lt!430890 () Unit!32203)

(declare-fun lemmaInListMapFromThenInFromMinusOne!10 (array!59205 array!59203 (_ BitVec 32) (_ BitVec 32) V!33733 V!33733 (_ BitVec 32) (_ BitVec 32) Int) Unit!32203)

(assert (=> b!962979 (= lt!430890 (lemmaInListMapFromThenInFromMinusOne!10 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!962980 () Bool)

(declare-fun res!644586 () Bool)

(assert (=> b!962980 (=> (not res!644586) (not e!543042))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!962980 (= res!644586 (bvsgt from!2084 newFrom!159))))

(declare-fun b!962982 () Bool)

(declare-fun res!644587 () Bool)

(assert (=> b!962982 (=> (not res!644587) (not e!543042))))

(assert (=> b!962982 (= res!644587 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28947 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28947 _keys!1686))))))

(declare-fun b!962983 () Bool)

(declare-fun e!543040 () Bool)

(declare-fun tp_is_empty!21563 () Bool)

(assert (=> b!962983 (= e!543040 tp_is_empty!21563)))

(declare-fun b!962984 () Bool)

(declare-fun res!644584 () Bool)

(assert (=> b!962984 (=> (not res!644584) (not e!543042))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!962984 (= res!644584 (validKeyInArray!0 (select (arr!28467 _keys!1686) i!803)))))

(declare-fun b!962985 () Bool)

(declare-fun res!644581 () Bool)

(assert (=> b!962985 (=> (not res!644581) (not e!543042))))

(declare-datatypes ((List!19880 0))(
  ( (Nil!19877) (Cons!19876 (h!21038 (_ BitVec 64)) (t!28251 List!19880)) )
))
(declare-fun arrayNoDuplicates!0 (array!59205 (_ BitVec 32) List!19880) Bool)

(assert (=> b!962985 (= res!644581 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19877))))

(declare-fun b!962986 () Bool)

(declare-fun e!543041 () Bool)

(declare-fun e!543039 () Bool)

(declare-fun mapRes!34339 () Bool)

(assert (=> b!962986 (= e!543041 (and e!543039 mapRes!34339))))

(declare-fun condMapEmpty!34339 () Bool)

(declare-fun mapDefault!34339 () ValueCell!10300)

