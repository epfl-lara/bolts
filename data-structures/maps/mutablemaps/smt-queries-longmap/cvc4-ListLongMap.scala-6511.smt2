; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82938 () Bool)

(assert start!82938)

(declare-fun b_free!19037 () Bool)

(declare-fun b_next!19037 () Bool)

(assert (=> start!82938 (= b_free!19037 (not b_next!19037))))

(declare-fun tp!66241 () Bool)

(declare-fun b_and!30543 () Bool)

(assert (=> start!82938 (= tp!66241 b_and!30543)))

(declare-fun b!967299 () Bool)

(declare-fun res!647637 () Bool)

(declare-fun e!545236 () Bool)

(assert (=> b!967299 (=> (not res!647637) (not e!545236))))

(declare-datatypes ((array!59745 0))(
  ( (array!59746 (arr!28737 (Array (_ BitVec 32) (_ BitVec 64))) (size!29217 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59745)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!967299 (= res!647637 (validKeyInArray!0 (select (arr!28737 _keys!1686) i!803)))))

(declare-fun b!967300 () Bool)

(declare-fun res!647634 () Bool)

(assert (=> b!967300 (=> (not res!647634) (not e!545236))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34109 0))(
  ( (V!34110 (val!10973 Int)) )
))
(declare-datatypes ((ValueCell!10441 0))(
  ( (ValueCellFull!10441 (v!13531 V!34109)) (EmptyCell!10441) )
))
(declare-datatypes ((array!59747 0))(
  ( (array!59748 (arr!28738 (Array (_ BitVec 32) ValueCell!10441)) (size!29218 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59747)

(declare-fun minValue!1342 () V!34109)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!34109)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14202 0))(
  ( (tuple2!14203 (_1!7111 (_ BitVec 64)) (_2!7111 V!34109)) )
))
(declare-datatypes ((List!20075 0))(
  ( (Nil!20072) (Cons!20071 (h!21233 tuple2!14202) (t!28446 List!20075)) )
))
(declare-datatypes ((ListLongMap!12913 0))(
  ( (ListLongMap!12914 (toList!6472 List!20075)) )
))
(declare-fun contains!5523 (ListLongMap!12913 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3657 (array!59745 array!59747 (_ BitVec 32) (_ BitVec 32) V!34109 V!34109 (_ BitVec 32) Int) ListLongMap!12913)

(assert (=> b!967300 (= res!647634 (contains!5523 (getCurrentListMap!3657 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28737 _keys!1686) i!803)))))

(declare-fun b!967301 () Bool)

(declare-fun res!647633 () Bool)

(assert (=> b!967301 (=> (not res!647633) (not e!545236))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!967301 (= res!647633 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29217 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29217 _keys!1686))))))

(declare-fun b!967302 () Bool)

(declare-fun e!545239 () Bool)

(declare-fun tp_is_empty!21845 () Bool)

(assert (=> b!967302 (= e!545239 tp_is_empty!21845)))

(declare-fun b!967303 () Bool)

(declare-fun res!647635 () Bool)

(assert (=> b!967303 (=> (not res!647635) (not e!545236))))

(declare-datatypes ((List!20076 0))(
  ( (Nil!20073) (Cons!20072 (h!21234 (_ BitVec 64)) (t!28447 List!20076)) )
))
(declare-fun arrayNoDuplicates!0 (array!59745 (_ BitVec 32) List!20076) Bool)

(assert (=> b!967303 (= res!647635 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20073))))

(declare-fun mapNonEmpty!34762 () Bool)

(declare-fun mapRes!34762 () Bool)

(declare-fun tp!66240 () Bool)

(declare-fun e!545238 () Bool)

(assert (=> mapNonEmpty!34762 (= mapRes!34762 (and tp!66240 e!545238))))

(declare-fun mapRest!34762 () (Array (_ BitVec 32) ValueCell!10441))

(declare-fun mapValue!34762 () ValueCell!10441)

(declare-fun mapKey!34762 () (_ BitVec 32))

(assert (=> mapNonEmpty!34762 (= (arr!28738 _values!1400) (store mapRest!34762 mapKey!34762 mapValue!34762))))

(declare-fun b!967304 () Bool)

(assert (=> b!967304 (= e!545236 (not true))))

(assert (=> b!967304 (contains!5523 (getCurrentListMap!3657 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28737 _keys!1686) i!803))))

(declare-datatypes ((Unit!32295 0))(
  ( (Unit!32296) )
))
(declare-fun lt!431367 () Unit!32295)

(declare-fun lemmaInListMapFromThenInFromMinusOne!54 (array!59745 array!59747 (_ BitVec 32) (_ BitVec 32) V!34109 V!34109 (_ BitVec 32) (_ BitVec 32) Int) Unit!32295)

(assert (=> b!967304 (= lt!431367 (lemmaInListMapFromThenInFromMinusOne!54 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun res!647636 () Bool)

(assert (=> start!82938 (=> (not res!647636) (not e!545236))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82938 (= res!647636 (validMask!0 mask!2110))))

(assert (=> start!82938 e!545236))

(assert (=> start!82938 true))

(declare-fun e!545237 () Bool)

(declare-fun array_inv!22143 (array!59747) Bool)

(assert (=> start!82938 (and (array_inv!22143 _values!1400) e!545237)))

(declare-fun array_inv!22144 (array!59745) Bool)

(assert (=> start!82938 (array_inv!22144 _keys!1686)))

(assert (=> start!82938 tp!66241))

(assert (=> start!82938 tp_is_empty!21845))

(declare-fun b!967305 () Bool)

(assert (=> b!967305 (= e!545237 (and e!545239 mapRes!34762))))

(declare-fun condMapEmpty!34762 () Bool)

(declare-fun mapDefault!34762 () ValueCell!10441)

